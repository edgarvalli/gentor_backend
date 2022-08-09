import json
import re
import requests
import pathlib
import xmltodict
from requests.auth import HTTPBasicAuth


class SapWS:
    endpoint: dict = {
        "customer": {
            "dev": "https://my351064.sapbydesign.com/sap/bc/srt/scs/sap/yya1619h3y_z_custinvoice?sap-vhost=my351064.sapbydesign.com",
            "prod": ""
        }
    }

    username: str = "_GENTORINV"
    password: str = "Inicio01"
    working_path: str = pathlib.Path(__file__).parent

    def __init__(self, mode: str = "dev") -> None:
        self.mode = mode

    def render_xml_request(self, xml_name, data: dict):
        xml_path: str = pathlib.Path.joinpath(
            self.working_path, "request_xml", f"{xml_name}.xml")
        xml = open(xml_path, "r")
        xml_content = xml.read()
        xml.close()
        keys = re.findall("{{(.*?)}}", xml_content)

        for key in keys:
            if key in data:
                xml_content = xml_content.replace("{{" + key + "}}", data[key])

        return xml_content

    def fetch(self, module: str, body: str):
        headers = {
            "Content-Type": "text/xml; charset=utf-8"
        }
        base_auth: HTTPBasicAuth = HTTPBasicAuth(username=self.username, password=self.password)
        r = requests.post(self.endpoint[module][self.mode],data=body, headers=headers, auth=base_auth)

        if r.status_code == 200:
            try:
                resp_json = xmltodict.parse(
                    r.text, namespace_separator="@", encoding="utf-8")
                resp_json['error'] = False
                f = open("response.json", "w")
                f.write(json.dumps(resp_json))
                f.close()
                return resp_json
            except:
                message = re.search("<h1>(.*?)</h1>", r.text).group()
                return {
                    "error": True,
                    "message": message
                }
        else:
            return {
                "error": True,
                "message": r.text,
                "status_code": r.status_code
            }

    def get_customer_invoice_by_id(self, invoiceID: str):

        xml_content = self.render_xml_request(
            "sap_invoices_customer_by_id", {"invoiceID": invoiceID})
        r = self.fetch(xml_content)
        return r

    def get_customer_invoice_by_date(self, startdate: str, enddate: str):
        data = {
            "startDate": startdate,
            "endDate": enddate
        }
        xml_content = self.render_xml_request(
            "sap_invoices_customer_by_date", data=data)
        # print(xml_content)
        r = self.fetch("customer",xml_content)
        return r
