import requests, datetime, xmltodict, json
from requests.auth import HTTPBasicAuth
from requests import Response

f = open('sap/request_xml/sap_invoices_customer_by_date.xml','r')
xml = f.read().replace("{{startdate}}","2022-12-08")
xml = xml.replace("{{enddate}}","2022-12-08")

f.close()

def fetch(xml="") -> Response:
    endpoint = "https://my353505.sapbydesign.com/sap/bc/srt/scs/sap/querycustomerinvoicein"
    auth = HTTPBasicAuth(username='_GENTOR_INT', password='G3nt0r01')
    headers = { "Content-Type": "text/xml; charset=utf-8" }
    r = requests.post(endpoint, data=xml, headers=headers, auth=auth)
    return r

print(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
data = fetch(xml=xml)
print(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"))

jsondata = data.content.decode("utf-8")
jsondata = xmltodict.parse(jsondata)

if data.reason != "OK":
    print(data.reason)
    print(data.content.decode("utf-8"))


jsondata = jsondata["soap-env:Envelope"]["soap-env:Body"]
jsondata: list[dict] = jsondata["n0:CustomerInvoiceByElementsResponse_sync"]["CustomerInvoice"]

# with open("response.json","w") as f:
#     f.write(json.dumps(jsondata))
#     f.close()

xml = open("sap/request_xml/sap_invoices_customer_read_by_id.xml","r")
xml = xml.read()

xml = ""

for inv in jsondata:
    id = inv["ID"]
    with open("sap/request_xml/sap_invoices_customer_read_by_id.xml","r") as f:
        xml = f.read().replace("{{invoiceID}}", id)
        f.close
    
    r = fetch(xml=xml)
    print(r.content)

