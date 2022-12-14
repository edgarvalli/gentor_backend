import requests, xmltodict, datetime, json, re, base64
import xml.etree.ElementTree as elementTree
from requests.auth import HTTPBasicAuth
from utils import mailer
from utils.sql_server import SqlConnector


##################################################################################################################
# Custom Object's #
##################################################################################################################

class Cfdi:
    xml:str = ""
    serie:str = ""
    folio:str = ""
    rfcemisor:str = ""
    rfcreceptor:str = ""
    uuid:str = ""
    fecha:str = ""

    def toJSON(self):
        return {
            'serie': self.serie,
            'folio': self.folio,
            'rfcemisor': self.rfcemisor,
            'rfcreceptor': self.rfcreceptor,
            'uuid': self.uuid,
            'fecha': self.fecha,
            'xml': self.xml
        }


##################################################################################################################
# Functions #
##################################################################################################################

def fetch(xml=""):
    endpoint = "https://my353505.sapbydesign.com/sap/bc/srt/scs/sap/yya1619h3y_z_custinvoice?sap-vhost=my353505.sapbydesign.com"
    auth = HTTPBasicAuth(username='_GENTOR_INT', password='G3nt0r01')
    headers = { "Content-Type": "text/xml; charset=utf-8" }
    r = requests.post(endpoint, data=xml, headers=headers, auth=auth)
    return r

def fetchsupplier(xml=""):
    endpoint = "https://my353505.sapbydesign.com/sap/bc/srt/scs/sap/yya1619h3y_z_suppinvoice?sap-vhost=my353505.sapbydesign.com"
    auth = HTTPBasicAuth(username='_GENTOR_INT', password='G3nt0r01')
    headers = { "Content-Type": "text/xml; charset=utf-8" }
    r = requests.post(endpoint, data=xml, headers=headers, auth=auth)
    return r

def get_invoices_from_sap(startdate="", enddate="") -> dict:

    xml = open("xml/querycustomerinvoice.xml","r")
    body = xml.read()
    xml.close()

    body = body.replace("{{startdate}}",startdate)
    body = body.replace("{{enddate}}",enddate)

    r = fetch(body)
    data = xmltodict.parse(r.text)

    return data

def read_invoice_by_id(id=""):
    xml = open('xml/sap_invoices_customer_read_by_id.xml','r')
    body = xml.read()
    xml.close()
    body = body.replace("{{invoiceID}}",id)
    r = fetch(body)
    data = xmltodict.parse(r.text)

    return data

def read_invoice_supplier_by_id(id=""):
    xml = open('xml/querysupplierinvoicebyid.xml','r')
    body = xml.read()
    xml.close()
    body = body.replace("{{invoiceID}}",id)
    r = fetchsupplier(body)
    data = xmltodict.parse(r.text)

    return data


def last_day_of_month(any_day):
    # The day 28 exists in every month. 4 days later, it's always next month
    next_month = any_day.replace(day=28) + datetime.timedelta(days=4)
    # subtracting the number of the current day brings us back one month
    return next_month - datetime.timedelta(days=next_month.day)

def parse_data_from_sap(data: dict):
    if "soap-env:Envelope" in data:
        data = data["soap-env:Envelope"]
        if "soap-env:Body" in data:
            data = data["soap-env:Body"]
            if "n0:Z_CustInvoiceReadByIDResponse_sync" in data:
                data = data["n0:Z_CustInvoiceReadByIDResponse_sync"]
                if "Z_CustInvoice" in data:
                    return data["Z_CustInvoice"]
                else:
                    return None
            else:
                return None
        else:
            return None
    else:
        return None

def parse_data_supplier_from_sap(invoice: dict) -> dict:

    if "soap-env:Envelope" in invoice:
        invoice = invoice["soap-env:Envelope"]
        if "soap-env:Body" in invoice:
            invoice = invoice["soap-env:Body"]
            if "n0:Z_SuppInvoiceReadByIDResponse_sync" in invoice:
                invoice = invoice["n0:Z_SuppInvoiceReadByIDResponse_sync"]
                if "Z_SuppInvoice" in invoice:
                    invoice = invoice["Z_SuppInvoice"]
                    return invoice
                else:
                    return None
            else:
                return None
        else:
            return None
    else:
        return None

def get_base64String(b64s: str):
    if "Text" in b64s:
        b64s = b64s["Text"]
        if "TextContent" in b64s:
            b64s = b64s["TextContent"]
            if "Text" in b64s:
                b64s = b64s["Text"]
                return b64s
        else:
            return None
    else:
        return None
    return ""

def isXml(value):
    try:
        elementTree.fromstring(value)
    except elementTree.ParseError:
        return False
    return True
def parse_value_xml(val: list):
        if len(val) > 0:
            val = val[0]
        else:
            val = ""
        
        return val

def parse_xml(xml: dict) -> Cfdi:
    cfdi = Cfdi()
    xml = xml["base64String"]["Text"]
            
    if type(xml) is list:
        xml = xml[0]
    
    try:
        xml = xml["TextContent"]["Text"]
        xml: str = base64.b64decode(xml).decode("utf-8")

        if isXml(xml):

            xml = xml.replace("\n","")
            xml = xml.replace("\r","")
            xml = xml.replace("\ufeff","")
            xml = xml.replace(r">(.*?)<","><")
        
        else:
            xml = ""

        rfcemisor = re.findall(r'cfdi:Emisor Rfc="(.*?)"', xml)
        rfcemisor = parse_value_xml(rfcemisor)

        rfcreceptor = re.findall(r'cfdi:Receptor Rfc="(.*?)"', xml)
        rfcreceptor = parse_value_xml(rfcreceptor)

        serie = re.findall(r'Serie="(.*?)"', xml)
        serie = parse_value_xml(serie)

        folio = re.findall(r'Folio="(.*?)"', xml)
        folio = parse_value_xml(folio)

        fecha = re.findall(r'FechaTimbrado="(.*?)"',xml)
        fecha = parse_value_xml(fecha)

        uuid = re.findall(r'UUID="(.*?)"', xml)
        uuid = parse_value_xml(uuid)

        cfdi.xml = xml
        cfdi.rfcemisor = rfcemisor
        cfdi.rfcreceptor = rfcreceptor
        cfdi.serie = serie
        cfdi.folio = folio
        cfdi.fecha = fecha
        cfdi.uuid = uuid

        return cfdi
    
    except:
        return None

def build_query(RfcEmpresa:str, cfdi: Cfdi):
    query = f"INSERT INTO [{RfcEmpresa}] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES "
    query += f"('{cfdi.fecha}','{cfdi.serie}','{cfdi.folio}','{cfdi.uuid}','{cfdi.rfcemisor}','{cfdi.uuid}.xml','{cfdi.xml}')"
    query = f"""
        IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'{RfcEmpresa}')
        BEGIN
            IF NOT EXISTS (SELECT * FROM [{RfcEmpresa}] WHERE UUID like '{cfdi.uuid}')
            BEGIN
                {query}
            END
        END
    """
    return query

def set_row_report(row=""):
    with open("report_invoices_guardata.csv","a") as report:
        report.write(row + "\n")
        report.close()

##################################################################################################################
# Script #
##################################################################################################################

jsonfile = open("facturas/invoices.json","r", encoding="utf-8")
invoices: list = json.load(jsonfile)
jsonfile.close()

sql = SqlConnector()

reportfile = open("report_invoices_guardata.csv","w")
reportfile.write("Empresa,Id,Tipo,XML\n")
reportfile.close()

for inv in invoices:
    print(f"Trabajando en {inv['Empresa']} - {inv['Id']}")

    cfdi = Cfdi()
    id = str(inv['Id'])
    empresa = inv["Empresa"]

    row = f"{empresa},{inv['Id']},{inv['Tipo']}"

    if inv["Tipo"] == "customer":
        data = read_invoice_by_id(id)
        data = parse_data_from_sap(data)

        if data is not None:
            if "base64String" in data:
                cfdi = parse_xml(data)

                if cfdi is not None:
                    row += "," + cfdi.xml
                    query = build_query(cfdi.rfcemisor, cfdi=cfdi)
                    sql.commit(query=query)

            else:
                print(f"La factura {id} no cuenta con XML")
                cfdi.xml = "No tiene XML"
                cfdi.rfcemisor = "rfcemisor"
                cfdi.rfcreceptor = "rfcreceptor"
                cfdi.serie = inv['Id']
                cfdi.folio = inv['Id']
                cfdi.fecha = 'fecha'
                cfdi.uuid = inv['Empresa']
    else:

        data = read_invoice_supplier_by_id(id)
        data = parse_data_supplier_from_sap(data)

        if data is not None:
            if "base64String" in data:
                cfdi: Cfdi = parse_xml(data)
                if cfdi is not None:
                    row += "," + cfdi.xml
                    query = build_query(cfdi.rfcreceptor, cfdi)
                    sql.commit(query=query)

            else:
                print(f"La factura {inv['Id']} no cuenta con XML")
                cfdi.xml = "No tiene XML"
                cfdi.rfcemisor = "rfcemisor"
                cfdi.rfcreceptor = "rfcreceptor"
                cfdi.serie = inv['Id']
                cfdi.folio = inv['Id']
                cfdi.fecha = 'fecha'
                cfdi.uuid = inv['Empresa']
    
    set_row_report(row=row)
    

mailer.send_email('Prueba', '<h1>Test</h1>', attachament='invoicesc.json')