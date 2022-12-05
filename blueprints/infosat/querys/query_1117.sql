
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like '82281797-7389-4E4B-AE58-9A9E51EAF163')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-26T13:05:02','FACECO','1117','82281797-7389-4E4B-AE58-9A9E51EAF163','RDD101105Q91','82281797-7389-4E4B-AE58-9A9E51EAF163.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACECO" Folio="1117" Fecha="2022-10-26T13:00:00" FormaPago="02" SubTotal="2800.00" Moneda="MXN" Total="3248.00" MetodoPago="PUE" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="O57Gc7dvdQdnbN5G14fe3NpHdp5F2CqCeLP9XqM2+tkiaKoNGm+5ZV4fM86ZqRNj7Wg1gB9VZn+PAphyoYBlzlIL5LMbcktL16sn4T00c+aVwk1PgDl9uEsBKxWeTinbRUxSF8qHXlEkcM7bhXpz6yKxnLf+o+ky15R5dpC1cIx15B/0vqFbq4SZmOGS5+EGvpXHuPBzqiC136akeTiJkDVlnR7oe1TNncuUKapbSRIFTozJYXT0/aUh7cLxcD09OHdMX1ZQQNxxjsI2TzNiPDbPu5gtXAPmDN8+uWx9X3qPETWi8iqthcvw/8LDPKISR10BSxOcB2zZST1J+Q7xQw==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES, S.A DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="RRE060612282" Nombre="RAMOS Y RAMOS EDIFICACIONES, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2800.00" Importe="2800.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2800.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="448.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="448.00">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="448.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="82281797-7389-4E4B-AE58-9A9E51EAF163" FechaTimbrado="2022-10-26T13:05:02" RfcProvCertif="SCD110105654" SelloCFD="O57Gc7dvdQdnbN5G14fe3NpHdp5F2CqCeLP9XqM2+tkiaKoNGm+5ZV4fM86ZqRNj7Wg1gB9VZn+PAphyoYBlzlIL5LMbcktL16sn4T00c+aVwk1PgDl9uEsBKxWeTinbRUxSF8qHXlEkcM7bhXpz6yKxnLf+o+ky15R5dpC1cIx15B/0vqFbq4SZmOGS5+EGvpXHuPBzqiC136akeTiJkDVlnR7oe1TNncuUKapbSRIFTozJYXT0/aUh7cLxcD09OHdMX1ZQQNxxjsI2TzNiPDbPu5gtXAPmDN8+uWx9X3qPETWi8iqthcvw/8LDPKISR10BSxOcB2zZST1J+Q7xQw==" NoCertificadoSAT="00001000000502000436" SelloSAT="XQQwthqf5iaROcDtik7CA/g8iwnmxgTIPv9RfzV40YL4AQgXMfZSSu+iHutxVtqalgkEcKosfEy4yF56wR5DP5HyFDztx6rv5ALxo7dWdF0/bDSTud6QuVlBXBehM0AtEZYQ25gx8hvXwL/CBK1GrEBihsNvkk1MAamv+EY04xMs1iGxzHPJoNiwhokUV9wLBtqGNwNH2//FeQPLd2RQA/DUL6Z2nbYENlh8qXnE3JXhqQ7BMRvfni8na+IMh9mho70Zi2Y2Tfr4/5LHu0ZnDFntx8RuB4lDY4sf0v7qnnJRXA3bsJRLuEjSuntHME40GBla1pmOOg4tfu0NkyeQ0w==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        