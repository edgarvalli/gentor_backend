import base64,re
from .sapws import SapWS
from utils import sql_server as sqlserver
from datetime import datetime, timedelta
import xml.etree.ElementTree as elementTree
from utils.monitor_status_import import MonitorStatusImport


class Cfdi:
    xml:str
    serie:str
    folio:str
    rfcemisor:str
    rfcreceptor:str
    uuid:str
    fecha:str

sap = SapWS("prod")

class SapImport:

    startdate = "2017-01-01"
    enddate = "2022-12-30"
    sql = sqlserver.SqlConnector()
    monitor = MonitorStatusImport()
    processid = 0
    show=False

    def __init__(self, startdate:str = None, enddate:str = None) -> None:
        _enddate = datetime.now()

        if startdate is None:
            self.startdate = (_enddate - timedelta(days=40)).strftime("%Y-%m-%d")
        else:
            self.startdate = startdate
        
        if enddate is None:
            self.enddate = _enddate.strftime("%Y-%m-%d")
        else:
            self.enddate = enddate
        
        print(f"Trabajando en las facturas entre {self.startdate} y {self.enddate}")

    def isXml(self, value):
        try:
            elementTree.fromstring(value)
        except elementTree.ParseError:
            return False
        return True


    def parse_value_xml(self, val: list):
        if len(val) > 0:
            val = val[0]
        else:
            val = ""
        
        return val

    def parse_xml(self, xml: dict) -> Cfdi:
        cfdi = Cfdi()
        xml = xml["base64String"]["Text"]
                
        if type(xml) is list:
            xml = xml[0]
        
        try:
            xml = xml["TextContent"]["Text"]
            xml: str = base64.b64decode(xml).decode("utf-8")

            if self.isXml(xml):

                xml = xml.replace("\n","")
                xml = xml.replace("\r","")
                xml = xml.replace("\ufeff","")
                xml = xml.replace(r">(.*?)<","><")
            
            else:
                xml = ""

            rfcemisor = re.findall(r'<cfdi:Emisor[\sa-zA-Z0-9=",.]*Rfc="(.*?)"', xml)
            rfcemisor = self.parse_value_xml(rfcemisor)

            rfcreceptor = re.findall(r'<cfdi:Receptor[\sa-zA-Z0-9=",.]*Rfc="(.*?)"', xml)
            rfcreceptor = self.parse_value_xml(rfcreceptor)

            serie = re.findall(r'Serie="(.*?)"', xml)
            serie = self.parse_value_xml(serie)

            folio = re.findall(r'Folio="(.*?)"', xml)
            folio = self.parse_value_xml(folio)

            fecha = re.findall(r'FechaTimbrado="(.*?)"',xml)
            fecha = self.parse_value_xml(fecha)

            uuid = re.findall(r'UUID="(.*?)"', xml)
            uuid = self.parse_value_xml(uuid)

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


    def get_xml_from_customer_invoice(self, invoice) -> Cfdi:
        inv = invoice["soap-env:Envelope"]["soap-env:Body"]
        inv:dict = inv["n0:Z_CustInvoiceReadByIDResponse_sync"]

        if "Z_CustInvoice" in inv:
            inv = inv["Z_CustInvoice"]
            if "base64String" in inv:
                inv = self.parse_xml(inv)
                return inv
            else:                
                return None
        else:
            return None

    def get_xml_from_supplier_invoice(self,invoice: dict) -> Cfdi:
        inv = invoice["soap-env:Envelope"]["soap-env:Body"]
        inv = inv["n0:Z_SuppInvoiceReadByIDResponse_sync"]

        if "Z_SuppInvoice" in inv:
            inv = inv["Z_SuppInvoice"]
            if "base64String" in inv:
                invoice: Cfdi = self.parse_xml(inv)
                return invoice
            else:
                return None
        else:
            return None

    def build_query(self,RfcEmpresa:str, cfdi: Cfdi):
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

    def get_customer_invoices(self):
        logcontent = ""
        response = sap.get_invoice_by_date(module="customer",startdate=self.startdate, enddate=self.enddate)

        if response["error"]:
            return response["message"]
            
        else:
            customer_invoices = response["soap-env:Envelope"]["soap-env:Body"]
            customer_invoices = customer_invoices["n0:Z_CustInvoiceQueryByElementsSimpleByConfirmation_sync"]
            if "Z_CustInvoice" in customer_invoices:
                customer_invoices = customer_invoices["Z_CustInvoice"]
                if type(customer_invoices) == dict:
                    customer_invoices = [customer_invoices]
            else:
                customer_invoices = []

            total_invoice = len(customer_invoices)

            if total_invoice == 0:
                return f"No se encontraron facturas entre la fecha {self.startdate} y {self.enddate}"

            for i,inv in enumerate(customer_invoices):
                
                idsap = inv["facturaID"]
                xml = sap.read_invoice_by_id("customer", idsap)
                
                satuuid = xml.get("uuid",inv.get("uuid",""))
                empresaID = inv.get("empresaID","")
                facturaFecha = inv.get("facturaFecha","")
                contabilizacionFecha = inv.get("contabilizacionFecha","")
                rfcemisor = inv.get("rfcEmisor",empresaID)

                cfdi = self.get_xml_from_customer_invoice(xml)
                xmlfile = ""

                msg = ""
                insertedtime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

                status = ""
                uuid = ""

                if cfdi is not None:

                    rfcemisor = cfdi.rfcemisor
                    query = self.build_query(RfcEmpresa=rfcemisor, cfdi=cfdi)
                    #Continuar aqui para insertar en base de datos
                    
                    r = self.sql.commit(query=query)

                    if r.error:
                        print(r.message)
                        status = r.message

                    line = f"[{insertedtime}]: Empresa SAP - {empresaID} // Clientes//{cfdi.uuid} "
                    line += f"UUID - {satuuid} // {msg}"
                    self.monitor.update(self.processid, 2, line)
                    status = "Se guardo la factura de cliente correctamente"
                    uuid = cfdi.uuid
                    facturaFecha = cfdi.fecha
                    xmlfile =cfdi.xml

                else:
                    msg = f"[{insertedtime}]: {idsap} // {empresaID} // No tiene XML - no se guardo CFDI"
                    self.monitor.update(self.processid, 2, msg)
                    status = "La factura de cliente no cuenta con XML y no se guardo"
                
                if self.show:
                    print(f"Trabajando en {i + 1} de {total_invoice} // Clientes // {empresaID} // {satuuid} // {facturaFecha} // {idsap} // {status}", end="\r")
                

                logcontent += f'"{insertedtime}","SAP","{idsap}","{rfcemisor}","{facturaFecha}","{contabilizacionFecha}","{uuid}","{status}","{xmlfile}"\n'
                

            return logcontent

    def get_supplier_invoices(self):
        logcontent = ""
        response = sap.get_invoice_by_date(module="supplier",startdate=self.startdate, enddate=self.enddate)
        if response["error"]:
            return response["message"]
        else:
            invoices = response["soap-env:Envelope"]["soap-env:Body"]
            invoices = invoices["n0:Z_SuppInvoiceQueryByElementsSimpleByConfirmation_sync"]
            if "Z_SuppInvoice" in invoices:
                invoices = invoices["Z_SuppInvoice"]
                if type(invoices) == dict:
                    invoices = [invoices]
            else:
                invoices = []
            
            total_invoice = len(invoices)
            if total_invoice == 0:
                return f"No se encontraron facturas entre la fecha {self.startdate} y {self.enddate}"

            for i,inv in enumerate(invoices):
                
                idsap = inv.get("facturaID","")
                xml = sap.read_invoice_by_id(module="supplier", invoiceID=idsap)

                satuuid = xml.get("uuid",inv.get("uuid",""))
                empresaID = inv.get("empresaID","")
                facturaFecha = inv.get("facturaFecha","")
                contabilizacionFecha = inv.get("contabilizacionFecha","")
                rfcreceptor = inv.get("rfcReceptor", empresaID)
                xmlfile = ""
                
                cfdi: Cfdi = self.get_xml_from_supplier_invoice(xml)

                msg = ""
                insertedtime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                uuid = ""
                status = ""

                if cfdi is None:
                    msg = f"[{insertedtime}]: {idsap} // {empresaID} // No tiene XML - no se guardo CFDI"
                    self.monitor.update(self.processid, 2, msg)
                    status = "La factura de proveedor no cuenta con XML y no se guardo"
                
                else:
                    uuid = cfdi.uuid
                    rfcreceptor = cfdi.rfcreceptor
                    query = self.build_query(RfcEmpresa=rfcreceptor, cfdi=cfdi)
                    #Continuar aqui para insertar en base de datos

                    r = self.sql.commit(query=query)

                    if  r.error:
                        print(r.message)
                        status = r.message
                    
                    line = f"[{insertedtime}]: Empresa SAP - {empresaID} // Proveedores // "
                    line += f"UUID - {satuuid} // {msg}"

                    self.monitor.update(self.processid, 2, line)
                    status = "Se guardo la factura de proveedor correctamente"
                    xmlfile = cfdi.xml
                
                if self.show:
                    print(f"Trabajando en {i + 1} de {total_invoice} // {empresaID} // Proveedores // {satuuid} // {facturaFecha} // {idsap} // {status}", end="\r")
                logcontent += f'"{insertedtime}","SAP","{idsap}","{rfcreceptor}","{facturaFecha}","{contabilizacionFecha}","{uuid}","{status}","{xmlfile}"\n'

            return logcontent

    def run(self):
        self.monitor.update(self.processid, 2, "Obteniendo datos de factura de clientes")
        logs = self.get_customer_invoices()

        self.monitor.update(self.processid, 2, "Obteniendo datos de factura de proveedores")
        logs += self.get_supplier_invoices()

        return logs
        