from set_root_path import set_root_path
set_root_path()
from db import sql_server as db

def query_cfdis(uuid):
    query = f"""
        select c.FechaTimbrado Fecha,c.Serie,c.Folio,c.UUID,
            c.RFCEmisor RFC,dc.FileName NombreXML,
            dc.Content XML
        from [document_{uuid}_metadata].dbo.Comprobante c
        inner join [document_{uuid}_content].dbo.DocumentContent dc
        on c.GuidDocument=dc.GuidDocument;
    """
    return query