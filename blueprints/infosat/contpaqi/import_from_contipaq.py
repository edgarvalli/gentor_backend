from datetime import datetime
from utils import helpers
from utils.sql_server import SqlConnector
from utils.monitor_status_import import MonitorStatusImport

class Empresa(object):

    def __init__(self,data) -> None:
        for key in data:
            setattr(self, key, data[key])

class ImportFromContpaqi:

    startdate: str
    enddate: str
    processid:str

    monitor = MonitorStatusImport()
    divider = "====================================================================================================="

    def __init__(self):
        self.db = SqlConnector("guardata")
        self.log = ""
        
    def query_cfdis(self, uuid):
        query = f"""
            select GuidDocument Id,FechaTimbrado Fecha,Serie,Folio,UUID,RFCEmisor RFC
            from [document_{uuid}_metadata].dbo.Comprobante
            where Fecha between '{self.startdate}' and '{self.enddate}'
            order by Fecha asc;
        """
        return query
    
    def _query_xml_data(self,uuid, id):
        query = f"""
            select FileName NombreXML, Content XML
            from [document_{uuid}_content].dbo.DocumentContent
            where GuidDocument = '{id}' 
        """
        return query
    
    def insert_into_db(self,uuid, _cfdis: list, rfc):
            i = 1

            for cfdi in _cfdis:

                query_xml = self._query_xml_data(uuid, cfdi['Id'])
                self.db.key = 'contpaq'
                xml = self.db.fetchone(query_xml).data

                cfdi['NombreXML'] = xml.get('NombreXML', '')
                cfdi['XML'] = xml.get('XML', '')

                if cfdi['XML'] is not None:
                    cfdi['XML'] = cfdi['XML'].replace("'", "''")

                self.db.key = 'guardata'

                if cfdi['UUID'] is None:
                    cfdi['UUID'] = ""

                fuuid = cfdi.get('UUID', '')

                folio = cfdi.get('Folio', 0)

                if folio == '':
                    folio = 0

                cfdi['Folio'] = folio

                if fuuid != '':
                    q = self.db.insert_query_builder(rfc, cfdi)
                    q = f"""
                        BEGIN
                            IF NOT EXISTS (SELECT * FROM {rfc} WHERE UUID like '{fuuid}')
                            BEGIN
                                {q}
                            END
                        END
                    """
                    r = self.db.commit(q)

                    if r.error:

                        self.log += (f"UUID ERROR: {fuuid} \n")
                        self.log += (f"Message: {r.get('message')}\n")
                        self.log += (q + '\n')
                        self.log += (self.divider + '\n')

                        if r.errorcode == '23000':
                            print(f"El UUID {fuuid} ya existe")
                            self.log += (f"El UUID {fuuid} ya existe\n")
                        else:
                            print(f"[{fuuid}]=={r.get('message')}")
                            self.log += (f"[{fuuid}]=={r.get('message')}\n")
                    else:
                        print(f"[{cfdi.get('Fecha','NoFecha')}]:{cfdi['RFC']} ha guardado el uuid {fuuid}\n")
                        i = i + 1
                        # print(f"[{cfdi.get('Fecha','NoFecha')}]:{cfdi['RFC']} ha guardado el uuid {fuuid}")
                        self.log += f"[{cfdi.get('Fecha','NoFecha')}]:{cfdi['RFC']} ha guardado el uuid {fuuid}\n"

    def run(self):
        empresas = helpers.empresas()
        
        for e in empresas:

            adDB = e['ComercialDB']
            nmDB = e['NominasDB']
            ctDB = e['ContabilidadDB']
            rfc = e.get('RFC', '')

            self.db.key = 'guardata'

            line = f"Trabajando en la empresa {e.get('RazonSocial','No Existe')}"
            self.monitor.update(uuid=self.processid, code=2, message=line)
            print(line)
            print(f"RFC={rfc}")
            print('Obteniendos los cfdis')

            self.log += (f"[{self.startdate}] {line}\n")
            self.log += (f"RFC={rfc}\n")
            self.log += ('Obteniendos los cfdis\n')

            cfdis = {}

            if self.startdate is None:
                lastdate = self.db.fetchone(f"SELECT TOP 1 Fecha FROM [{rfc}] ORDER BY Fecha DESC").data
                self.startdate = lastdate.get("Fecha", self.enddate)
            
            if self.enddate is  None:
                self.enddate = datetime.today().strftime("%Y-%m-%d %H:%M:%S")

            self.db.key = 'contpaq'

            if adDB is not None:
                dsl = helpers.uuid(adDB)
                query = self.query_cfdis(dsl)
                cfdis[dsl] = self.db.fetchall(query).data

            if ctDB is not None:
                dsl = helpers.uuid(ctDB, 'contabilidad')
                if dsl in cfdis:
                    print('Comercial y Contabilidad son el mismo DSL')
                else:
                    query = self.query_cfdis(dsl)
                    cfdis[dsl] = self.db.fetchall(query).data

            if nmDB is not None:

                dsl = helpers.uuid(nmDB, module='nominas')
                query = self.query_cfdis(dsl)
                cfdis[dsl] = self.db.fetchall(query).data

                if nmDB == "ctRDDA_Q":
                    nmdbs = ['nmRDDAAllende', 'nmRDDASalvatierra',
                            'nmRDDATopo', 'nmRDDAAcambaro']
                    for n in nmdbs:
                        uuid2 = helpers.uuid(n, 'nominas')
                        query = self.query_cfdis(uuid2)
                        cfdis[uuid2] = self.db.fetchall(query).data

                if nmDB == "nmSCDMS":
                    nmdbs = ['nmSCDMSComercial', 'nmSCDMSOperacion']
                    for n in nmdbs:
                        uuid2 = helpers.uuid(n, 'nominas')
                        query = self.query_cfdis(uuid2)
                        cfdis[uuid2] = self.db.fetchall(query).data

                if nmDB == "ctIMASA":
                    nmdbs = ['ctIMASA_OPE', 'ctIMASA_Comercial']
                    for n in nmdbs:
                        uuid2 = helpers.uuid(n, 'nominas')
                        query = self.query_cfdis(uuid2)
                        cfdis[uuid2] = self.db.fetchall(query).data
            
            _cfdis = []

            for key in cfdis:
                _cfdis += cfdis[key]

            self.insert_into_db(dsl,_cfdis,rfc)
            
        return self.log
        
        