from .sql_server import SqlConnector

db = SqlConnector()

def empresas():
    db.key = "guardata"
    empresas = db.fetchall("select * from Empresas")
    return empresas.data


def comprobantes(database, rfc):

    db.key = 'contpaq'
    dsldb = uuid(database)
    dsldb = f"document_{dsldb}_metadata"
    db.setdb(dsldb)

    query = f"""
        select Version,
        CASE
            WHEN TipoComprobante='I' THEN 'ingreso'
            WHEN TipoComprobante='E' THEN 'egreso'
            WHEN TipoComprobante='P' THEN 'pago'
            ELSE TipoComprobante
        END TipoComprobante,
        CASE
            WHEN RFCEmisor='{rfc}' THEN 'Cliente'
            ELSE 'Proveedor'
        END Origen,
        Folio,Serie,UUID,NombreEmisor RazonSocialEmisor,
        NombreReceptor RazonSocialReceptor,RFCEmisor,RFCReceptor,Fecha FechaFacturacion,
        FormaPago FormaDePago,MetodoPago MetodoDePago,
        Moneda,TipoCambio TipoDeCambio,Subtotal SubTotal,
        Total -SubTotal Iva ,Total,UsoCFDI
        from Comprobante where UUID is not null;
    """
    return db.fetchall(query).data


def query_cfdis(uuid):
    query = f"""
        select c.FechaTimbrado Fecha,c.Serie,c.Folio,c.UUID,
            c.RFCEmisor RFC,dc.FileName NombreXML,
            dc.Content XML
        from [document_{uuid}_metadata].dbo.Comprobante c
        inner join [document_{uuid}_content].dbo.DocumentContent dc
        on c.GuidDocument=dc.GuidDocument order by c.FechaTimbrado asc;
    """
    return query


def documents_newers(database, rfc):
    from datetime import datetime
    now = datetime.today().strftime("%Y-%m-%d %H:%M:%S")
    dsldb = uuid(database)

    query = f"select Fecha from {rfc} order by FechaFacturacion desc"
    db.key = 'guardata'
    r = db.fetchone(query)
    limite1 = r.get('Fecha', now)

    query = f"""
        select c.FechaTimbrado Fecha,c.Serie,c.Folio,c.UUID,
            c.RFCEmisor RFC,dc.FileName NombreXML,
            dc.Content XML
        from [document_{dsldb}_metadata].dbo.Comprobante c
        inner join [document_{dsldb}_content].dbo.DocumentContent dc
        on c.GuidDocument=dc.GuidDocument
        where c.FechaTimbrado between '{limite1}' and '{now}' and UUID is not null; 
        order by c.FechaTimbrado asc;
    """

    db.key = 'contpaq'
    return db.fetchall(query).data


def nuevos_comprobantes(database, rfc):
    from datetime import datetime
    now = datetime.today().strftime("%Y-%m-%d %H:%M:%S")

    query = f"select FechaFacturacion Fecha from {rfc} order by FechaFacturacion desc"
    db.key = 'guardata'
    r = db.fetchone(query).data

    limite1 = r.get('Fecha', now)

    db.key = 'contpaq'
    dsldb = uuid(database)
    dsldb = f"document_{dsldb}_metadata"
    db.setdb(dsldb)

    query = f"""
        select Version,
        CASE
            WHEN TipoComprobante='I' THEN 'ingreso'
            WHEN TipoComprobante='E' THEN 'egreso'
            WHEN TipoComprobante='P' THEN 'pago'
            ELSE TipoComprobante
        END TipoComprobante,
        CASE
            WHEN RFCEmisor='{rfc}' THEN 'Cliente'
            ELSE 'Proveedor'
        END Origen,
        Folio,Serie,UUID,NombreEmisor RazonSocialEmisor,
        NombreReceptor RazonSocialReceptor,RFCEmisor,RFCReceptor,Fecha FechaFacturacion,
        FormaPago FormaDePago,MetodoPago MetodoDePago,
        Moneda,TipoCambio TipoDeCambio,Subtotal SubTotal,
        Total -SubTotal Iva ,Total,UsoCFDI
        from Comprobante where Fecha between '{limite1}' and '{now}' and UUID is not null;
    """
    return db.fetchall(query).data


def uuid(database, module='comercial'):
    db.key = 'contpaq'
    db.setdb(database)
    if module == "comercial":
        query = "select CGUIDDSL from admParametros;"
        uuid = db.fetchone(query).data
        return uuid.get('CGUIDDSL', '')
    
    if module == "contabilidad":
        query = "select GuidDSL from Parametros;"
        uuid = db.fetchone(query).data
        return uuid.get('GuidDSL', '')

    if module == "nominas":
        query = "select GUIDDSL from nom10000;"
        uuid = db.fetchone(query).data
        return uuid.get('GUIDDSL', '')


def cancelado(uuid):
    query = f"""
        select CASE WHEN CESTADO=3 THEN 1 ELSE 0 END Cancelado
        from admFoliosDigitales where CUUID='{uuid}'
    """
    estatus = db.fetchone(query).data

    return estatus.get('Cancelado', 0)


def test(query):
    db.key = 'guardata'
    return db.fetchone(query)
