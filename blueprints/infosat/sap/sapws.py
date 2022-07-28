import re, requests, pathlib, xmltodict
from requests.auth import HTTPBasicAuth

endpoint: dict = {
    "dev": "https://my351064.sapbydesign.com/sap/bc/srt/scs/sap/yya1619h3y_z_custinvoice?sap-vhost=my351064.sapbydesign.com",
    "prod": ""
}

mode = "dev"

username: str = "_GENTORINV"
password: str = "Inicio01"
working_path: str = pathlib.Path(__file__).parent


def render_xml_request(xml_name,data: dict):
    xml_path: str = pathlib.Path.joinpath(working_path, "responses", f"{xml_name}.xml")
    xml = open(xml_path, "r")
    xml_content = xml.read()
    xml.close()
    keys = re.findall("{{(.*)}}", xml_content)

    for key in keys:
        if key in data:
            xml_content = xml_content.replace("{{" + key + "}}", data[key])
    
    return xml_content


def fetch(body: str):
    headers = {
        "Content-Type": "text/xml; charset=utf-8"
    }
    base_auth: HTTPBasicAuth = HTTPBasicAuth(username=username, password=password)
    r = requests.post(endpoint[mode], data=body, headers=headers, auth=base_auth)
    print(r.status_code)

    if r.status_code == 200:
        try:
            resp_json = xmltodict.parse(r.text, namespace_separator="@", encoding="utf-8")
            resp_json['error'] = False
            return resp_json
        except:
            message = re.search("<h1>(.*)</h1>", r.text).group()
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


def get_customer_invoice_by_id(invoiceID: str):

    xml_content = render_xml_request("sap_invoices_customer_by_id", {"invoiceID": invoiceID})
    r = fetch(xml_content)
    return r

def get_customer_invoice_by_date(startdate: str, enddate: str):
    data = {
        "startDate": startdate,
        "endDate": enddate
    }
    xml_content = render_xml_request("sap_invoices_customer_by_date", data=data)
    r = fetch(xml_content)
    return r
