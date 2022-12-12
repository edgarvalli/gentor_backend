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
            "prod": "https://my353505.sapbydesign.com/sap/bc/srt/scs/sap/yya1619h3y_z_custinvoice?sap-vhost=my353505.sapbydesign.com"
        },
        "supplier": {
            "dev": "https://my351064.sapbydesign.com/sap/bc/srt/scs/sap/yya1619h3y_z_suppinvoice?sap-vhost=my351064.sapbydesign.com",
            "prod": "https://my353505.sapbydesign.com/sap/bc/srt/scs/sap/yya1619h3y_z_suppinvoice?sap-vhost=my353505.sapbydesign.com"
        }
    }

    username: str = "_GENTORINV"
    password: str = "Inicio01"
    working_path: str = pathlib.Path(__file__).parent

    def __init__(self, mode: str = "dev") -> None:
        self.mode = mode
        if mode == "prod":
            self.username = "_GENTOR_INT"
            self.password = "G3nt0r01"

    def render_xml_request(self, xml_name, data: dict):
        xml_path: str = pathlib.Path.joinpath(self.working_path, "request_xml", f"{xml_name}.xml")
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


    def get_invoice_by_date(self, module: str = "customer", startdate: str ="", enddate: str =""):
        data = {
            "startDate": startdate,
            "endDate": enddate
        }
        xml_content = self.render_xml_request(f"sap_invoices_{module}_by_date", data=data)
        r = self.fetch(module,xml_content)
        return r
    
    def read_invoice_by_id(self, module:str = "customer", invoiceID:str = ""):
        xml_content = self.render_xml_request(f"sap_invoices_{module}_read_by_id", data={"invoiceID": invoiceID})
        r = self.fetch(module=module, body=xml_content)
        return r

