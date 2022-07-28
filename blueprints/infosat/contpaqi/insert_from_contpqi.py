from utils import helpers, sql_server as db
from datetime import datetime

now = datetime.today().strftime("%Y-%m-%d %H:%M:%S")


def _query_cfdis_bak(uuid, date=now):
    query = f"""
        select c.FechaTimbrado Fecha,c.Serie,c.Folio,c.UUID,
            c.RFCEmisor RFC,dc.FileName NombreXML,
            dc.Content XML
        from [document_{uuid}_metadata].dbo.Comprobante c
        inner join [document_{uuid}_content].dbo.DocumentContent dc
        on c.GuidDocument=dc.GuidDocument
        where Fecha between '{date}' and '{now}'
        order by c.FechaTimbrado asc;
    """
    return query


def _query_cfdis(uuid, date=now):
    query = f"""
        select GuidDocument Id,FechaTimbrado Fecha,Serie,Folio,UUID,RFCEmisor RFC
        from [document_{uuid}_metadata].dbo.Comprobante
        where Fecha between '{date}' and '{now}'
        order by Fecha asc;
    """
    return query


def _query_xml_data(uuid, id):
    query = f"""
        select FileName NombreXML, Content XML
        from [document_{uuid}_content].dbo.DocumentContent
        where GuidDocument = '{id}' 
    """
    return query


def run_query_contpaqi():
    empresas = helpers.empresas()

    content = ""
    divider = "====================================================================================================="

    for e in empresas:

        adDB = e['ComercialDB']
        nmDB = e['NominasDB']
        ctDB = e['ContabilidadDB']
        rfc = e.get('RFC', '')

        db.key = 'guardata'

        line = f"Trabajando en la empresa {e.get('RazonSocial','No Existe')}"
        print(line)
        print(f"RFC={rfc}")
        print('Obteniendos los cfdis')

        content += (f"[{now}] {line}\n")
        content += (f"RFC={rfc}\n")
        content += ('Obteniendos los cfdis\n')

        cfdis = {}

        lastdate = db.fetchone(f"SELECT TOP 1 Fecha FROM [{rfc}] ORDER BY Fecha DESC")

        db.key = 'contpaq'

        if adDB is not None:
            dsl = helpers.uuid(adDB)
            query = _query_cfdis(dsl, lastdate.get('Fecha', now))
            cfdis[dsl] = db.fetchall(query)

        if ctDB is not None:
            dsl = helpers.uuid(ctDB, 'contabilidad')
            if dsl in cfdis:
                print('Comercial y Contabilidad son el mismo DSL')
            else:
                query = _query_cfdis(dsl, lastdate.get('Fecha', now))
                cfdis[dsl] = db.fetchall(query)

        if nmDB is not None:

            dsl = helpers.uuid(nmDB, module='nominas')
            query = _query_cfdis(dsl, lastdate.get('Fecha', now))
            cfdis[dsl] = db.fetchall(query)

            if nmDB == "ctRDDA_Q":
                nmdbs = ['nmRDDAAllende', 'nmRDDASalvatierra',
                        'nmRDDATopo', 'nmRDDAAcambaro']
                for n in nmdbs:
                    uuid2 = helpers.uuid(n, 'nominas')
                    query = _query_cfdis(uuid2)
                    cfdis[uuid2] = db.fetchall(query)

            if nmDB == "nmSCDMS":
                nmdbs = ['nmSCDMSComercial', 'nmSCDMSOperacion']
                for n in nmdbs:
                    uuid2 = helpers.uuid(n, 'nominas')
                    query = _query_cfdis(uuid2)
                    cfdis[uuid2] = db.fetchall(query)

            if nmDB == "ctIMASA":
                nmdbs = ['ctIMASA_OPE', 'ctIMASA_Comercial']
                for n in nmdbs:
                    uuid2 = helpers.uuid(n, 'nominas')
                    query = _query_cfdis(uuid2)
                    cfdis[uuid2] = db.fetchall(query)

        def insert_into_db(uuid, _cfdis):
            i = 1
            total = len(_cfdis)

            logs = ""
            for cfdi in _cfdis:

                query_xml = _query_xml_data(uuid, cfdi['Id'])
                db.key = 'contpaq'
                xml = db.fetchone(query_xml)

                cfdi['NombreXML'] = xml.get('NombreXML', '')
                cfdi['XML'] = xml.get('XML', '')

                if cfdi['XML'] is not None:
                    cfdi['XML'] = cfdi['XML'].replace("'", "''")

                db.key = 'guardata'

                if cfdi['UUID'] is None:
                    cfdi['UUID'] = ""

                rfc = e.get('RFC', '')
                fuuid = cfdi.get('UUID', '')

                folio = cfdi.get('Folio', 0)

                if folio == '':
                    folio = 0

                cfdi['Folio'] = folio

                if fuuid != '':
                    q = db.insert_query_builder(rfc, cfdi)
                    q = f"""
                        BEGIN
                            IF NOT EXISTS (SELECT * FROM {rfc} WHERE UUID like '{fuuid}')
                            BEGIN
                                {q}
                            END
                        END
                    """
                    r = db.commit(q)

                    if r.get('error'):

                        logs += (f"UUID ERROR: {fuuid} \n")
                        logs += (f"Message: {r.get('message')}\n")
                        logs += (q + '\n')
                        logs += (divider + '\n')

                        if r.get('codeError') == '23000':
                            print(f"El UUID {fuuid} ya existe")
                            logs += (f"El UUID {fuuid} ya existe\n")
                        else:
                            print(f"[{fuuid}]=={r.get('message')}")
                            logs += (f"[{fuuid}]=={r.get('message')}\n")
                    else:
                        print(f"[{cfdi.get('Fecha','NoFecha')}]:{cfdi['RFC']} ha guardado el uuid {fuuid}\n")
                        i = i + 1
                        # print(f"[{cfdi.get('Fecha','NoFecha')}]:{cfdi['RFC']} ha guardado el uuid {fuuid}")
                        logs += f"[{cfdi.get('Fecha','NoFecha')}]:{cfdi['RFC']} ha guardado el uuid {fuuid}\n"
            return logs

        for key in cfdis:
            print(f"Trabajando en DSL {key}")
            logs = insert_into_db(key, cfdis[key])
            content += logs
        
        return content
