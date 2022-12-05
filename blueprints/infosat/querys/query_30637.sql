
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '31169809-48E2-4698-AA96-2F1892EE7D47')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-13T13:51:06','A','30637','31169809-48E2-4698-AA96-2F1892EE7D47','BIN140620ES4','31169809-48E2-4698-AA96-2F1892EE7D47.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd" Version="4.0" Sello="BaDONJnSvcX/CaNMiBe0FlRfsyLpPZxamxy202MyiQb4DTI7uxKCYqBcNcBpWDnQGd6h+c6VoLH3TavJBuABTeHahjnT/kJvUG2QIS0e0EK+tOS8g+eJmqt7ZJ+7ZAGVaDF2KoIhzRekUgEzzFdTK1RJdEXT2J5TCH4DGNcT/YV0NWJQhqB0j2EbWZWO1FdF5YB1GnXXiVoejsAFToqqU495tBaweqGpUuRvAKrhsw/l/dlxLr/uUbRzv3QXzreGQRPvcrLAnGkpeJPb9KV6yaOhBZGsRlm9KVJBxaQfmK7BdnGrCzvByrxH4EvZO4f8R2P2PowhqxVR/CK3K0MRUQ==" NoCertificado="00001000000412259631" Certificado="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" Exportacion="01" Serie="A" Folio="30637" Fecha="2022-09-13T13:51:04" FormaPago="99" CondicionesDePago="CREDITO" SubTotal="13150.00" Descuento="0.00" Moneda="MXN" TipoCambio="1" Total="15254.00" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="64517"><cfdi:Emisor Rfc="BIN140620ES4" Nombre="BASH INGENIERIA" RegimenFiscal="601" /><cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL" UsoCFDI="G03" DomicilioFiscalReceptor="64000" RegimenFiscalReceptor="601" /><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="72154503" NoIdentificacion="1" Cantidad="1.00" ClaveUnidad="E48" Unidad="Unidad de Servicio" Descripcion="SERVICIO DE MANIOBRAS" ValorUnitario="13150.00" Importe="13150.00" Descuento="0.00" ObjetoImp="02"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="13150.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2104.00" /></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="2104.00"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2104.00" Base="13150.00" /></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="31169809-48E2-4698-AA96-2F1892EE7D47" FechaTimbrado="2022-09-13T13:51:06" RfcProvCertif="SED1102088J7" SelloCFD="BaDONJnSvcX/CaNMiBe0FlRfsyLpPZxamxy202MyiQb4DTI7uxKCYqBcNcBpWDnQGd6h+c6VoLH3TavJBuABTeHahjnT/kJvUG2QIS0e0EK+tOS8g+eJmqt7ZJ+7ZAGVaDF2KoIhzRekUgEzzFdTK1RJdEXT2J5TCH4DGNcT/YV0NWJQhqB0j2EbWZWO1FdF5YB1GnXXiVoejsAFToqqU495tBaweqGpUuRvAKrhsw/l/dlxLr/uUbRzv3QXzreGQRPvcrLAnGkpeJPb9KV6yaOhBZGsRlm9KVJBxaQfmK7BdnGrCzvByrxH4EvZO4f8R2P2PowhqxVR/CK3K0MRUQ==" NoCertificadoSAT="00001000000503938001" SelloSAT="B9qTXONJi4VYIvs8aL01FQX2UaXebrDNyRcQynoXTgg77+ZalvRmeOj1uQwMt2bSaeOFfqmseFERp5Vu/UeSH7ZQ+LrjCgmoJoMEPOc91et6ySxw4Vb63yI06RRfAZhMRdGU/u/rQzd9tIzwjEXVVEf/K+cVriU90fAlAo2h+vx4/iKSOE2JbaCHWH+xtgHf2QtJXOTqUhGWXfO4Q13lyCeDEkJWE26pDbiTsEnkCt9765qw2v3UtpHrTue1b53xpapDMCIPBhmy3N0+2vQ85IRqBrVzUBpGH6D3PuXqS3Ey5LZQUPZ5Xdbz56EaBbNtTbiZKsy6UsEK+JE9DKVHrA==" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        