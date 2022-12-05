
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'CA658F52-600A-A444-8E05-EA6CED717BF0')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-30T12:53:29','FDT','540','CA658F52-600A-A444-8E05-EA6CED717BF0','DTE940421L42','CA658F52-600A-A444-8E05-EA6CED717BF0.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FDT" Folio="540" Fecha="2022-09-30T12:48:26" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="749.00" Moneda="MXN" Total="868.84" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000507045060" Certificado="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" Sello="QmqMn//FPvYH5PI1BklSptfCZz4GnXVXQ5c07AbtsxTJZJNFyrptuhWvHYUUn4f44FB/as8nbjWk/BwRTPDlrAd7Pp1k5kvv8ZwJnP0nuPkVurPoHJTyUHwaunsxf028GsacM+39NdxTEXlv+lu4wf4uqfNkxcfa/L1K9pBTLH+8vMKwbpamsJ8DdWQ+CdKzMiDKPWGsXQ6ECnx9xEcHy6Y1t1OPYV3KAgfWdK1QvVgq8A0nXnxIbyRsqyhgDECTk3nj2nldoEeNbxS4sKa1HzP7b5fLmWcUs2UiPOWsj60FzsouGxFyzWrqfZ5FTuYql8CPXdTedi3KNJ9ttD6sCA==">  <cfdi:Emisor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="UAN691126MK2" Nombre="UNIVERSIDAD AUT�NOMA DE NUEVO LE�N ( C.U.S )" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="83111500" NoIdentificacion="SERVTEL" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="Servicio de Telefon�a" ValorUnitario="749.00" Importe="749.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="749.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="119.84" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="119.84">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="119.84" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="CA658F52-600A-A444-8E05-EA6CED717BF0" FechaTimbrado="2022-09-30T12:53:29" RfcProvCertif="SCD110105654" SelloCFD="QmqMn//FPvYH5PI1BklSptfCZz4GnXVXQ5c07AbtsxTJZJNFyrptuhWvHYUUn4f44FB/as8nbjWk/BwRTPDlrAd7Pp1k5kvv8ZwJnP0nuPkVurPoHJTyUHwaunsxf028GsacM+39NdxTEXlv+lu4wf4uqfNkxcfa/L1K9pBTLH+8vMKwbpamsJ8DdWQ+CdKzMiDKPWGsXQ6ECnx9xEcHy6Y1t1OPYV3KAgfWdK1QvVgq8A0nXnxIbyRsqyhgDECTk3nj2nldoEeNbxS4sKa1HzP7b5fLmWcUs2UiPOWsj60FzsouGxFyzWrqfZ5FTuYql8CPXdTedi3KNJ9ttD6sCA==" NoCertificadoSAT="00001000000502000436" SelloSAT="np/26wwQTOqBLv4YPZJA7vCJJG2DnT5YkDjBT8In48AOaTZCfp+es6cHYs7P/F3yw7WfqrynyhGeWShLBhATlfowmUIoYool+Wzi/f9Qw1812mPhVc2Vn73332F0xsuvl8/8yOl3zGtM2CcOsi/LryksUh4nqxB6o3X4iA7bp7nofRuSODEWwfl6cG9iUKeNOTs0uSzF3hMmKBt92ZDcITTWjl55pNd6F42mY1rh3B2p6gCxfXExiOcmNx501B5OZ//PjeX4W0UVSorDBXAhxlmhU01PDadx/J6uuBl+CoyBMbdUTR9F0p2klpInxk5kmGlOhG/cEV2qJZ58fcRWoA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        