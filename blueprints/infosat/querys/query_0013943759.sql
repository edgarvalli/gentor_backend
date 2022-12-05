
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like '87BBD6B5-9C6E-4FAD-8E93-2495ADB934DD')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-03-11T14:38:30','KC','0013943759','87BBD6B5-9C6E-4FAD-8E93-2495ADB934DD','RDI841003QJ4','87BBD6B5-9C6E-4FAD-8E93-2495ADB934DD.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="3.3" Serie="KC" Folio="0013943759" Fecha="2022-03-10T17:43:09" Sello="pXCT1rzR4fGya2g1itf0ylai5u2LPMFogU2pVRqYuYMOPL2lCeWTSUjiRLY9mxmXe0gyd746a1Iw0wBl1ZhGGdSuU8NmR4GNcDQQ2zV2D8nwDJNy8OKLVxYW2r7+cCu3Gy3wQgF/kJy89+OQcz9YxGJ2JE9ZUIXgjQC3G9ve7avctsQPdxpr9DB0DP87CFQtvHiZ8OJSP23XFulNRFwQNkUiRgWy7GnHDX/xqHq7rJPpg8tSnMUwaxxcLDUhJtaUtTCDxUkQKxTcJOxhpVXL+CHSQv/XUaa1Cv+IBfKbmGzHsOcsDx1gR/pmqPaOLl3W2wprntLsU69LjQSouYPV8A==" FormaPago="99" NoCertificado="00001000000502326844" Certificado="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" SubTotal="569.54" Descuento="96.26" Moneda="MXN" Total="549.00" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="66266"><cfdi:Emisor Rfc="RDI841003QJ4" Nombre="Radiomóvil Dipsa, S.A. de C.V." RegimenFiscal="601"/><cfdi:Receptor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES SA DE CV" UsoCFDI="P01"/><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="83111603" Cantidad="1" ClaveUnidad="E48" Unidad="Unidad de Servicio" Descripcion="Servicios de Telecomunicaciones" ValorUnitario="473.28" Importe="473.28"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="473.28" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="75.72"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto><cfdi:Concepto ClaveProdServ="43191501" Cantidad="1" ClaveUnidad="H87" Unidad="Pieza" Descripcion="Cargo de equipo 10 de 24" ValorUnitario="96.26" Importe="96.26" Descuento="96.26"/></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="75.72"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="75.72"/></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" Version="1.1" UUID="87BBD6B5-9C6E-4FAD-8E93-2495ADB934DD" FechaTimbrado="2022-03-11T14:38:30" RfcProvCertif="PRO170621R87" SelloCFD="pXCT1rzR4fGya2g1itf0ylai5u2LPMFogU2pVRqYuYMOPL2lCeWTSUjiRLY9mxmXe0gyd746a1Iw0wBl1ZhGGdSuU8NmR4GNcDQQ2zV2D8nwDJNy8OKLVxYW2r7+cCu3Gy3wQgF/kJy89+OQcz9YxGJ2JE9ZUIXgjQC3G9ve7avctsQPdxpr9DB0DP87CFQtvHiZ8OJSP23XFulNRFwQNkUiRgWy7GnHDX/xqHq7rJPpg8tSnMUwaxxcLDUhJtaUtTCDxUkQKxTcJOxhpVXL+CHSQv/XUaa1Cv+IBfKbmGzHsOcsDx1gR/pmqPaOLl3W2wprntLsU69LjQSouYPV8A==" NoCertificadoSAT="00001000000414210809" SelloSAT="ElQbKcCUGISRKQ3prGuH0Tv03Q7r/iLnvXdRPS7I6/PAJaAXb4HC96JCgnNSXJQ0rEwCbJF7BBnq57+ctCzOvUW/TPlUPifGYkASh5nUgjfRTCjGTP1/pAuaj5hUGd9zTUKKQE6eeOdRhaHGfxQNDfQjf4KXUBlI5hVuCUH/DWo9ppokz0WzAZJNQuDXIqNH4o5z07Spc8hiDdsiUzc5cyrHz9GPhRDv0GzYpTGe8bDFaD0kNcAjH1JjKWKVGpHrvEsPBGQjU5+WOo4p1ro9sOSikz958K1kHK1+a2Qgu2/D5wZh1kyrYsg3JsjV40bdmn+AGunUI8BZB+vg9OZlPw=="/></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        