
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like '18F31D5F-1468-49D3-BCD5-620F3F770C95')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-26T20:29:58','A','2889','18F31D5F-1468-49D3-BCD5-620F3F770C95','','18F31D5F-1468-49D3-BCD5-620F3F770C95.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Certificado="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" Fecha="2022-08-26T20:29:39" Folio="2889" FormaPago="99" LugarExpedicion="64000" MetodoPago="PPD" Moneda="MXN" NoCertificado="00001000000507045060" Sello="Q7KC5XJJj+0doYBiLfle8Kc4pmNkG1GRij8NrGdKUXE9aZl02uUwYbMX0+UIBXwngerx3hWZI4zG7tnqfciMdox4SKoymvioIjZg4KIAyE4NwE0NhyoJFfXKftHmI9ElJk9t7qhpZP1kYpQRW2T8Y4ifvx53xelooSQZPjAu3vpm5/3WHY8bo6AlqFsaZoQ6ALpqKZjUkAPXfysy5l63f7As4rXCaIL/zDeZOwkDTozsVNyVt4QP5OgSHzzAlNeyMtrRbHf0QK3aFuPwW6a3v6jEgSXMbkqWPJyGbehlSvuSl57YU+EcFTeJDkyS8Gneyjmhz9A0n5p/8cxlv6c/iA==" Serie="A" SubTotal="1069.00" TipoDeComprobante="I" Total="1240.04" Version="3.3"><cfdi:Emisor Nombre="Domos Telecomunicaciones, S.A. de C.V." RegimenFiscal="601" Rfc="DTE940421L42"></cfdi:Emisor><cfdi:Receptor Nombre="DEALCORP MX SA DE CV SOFOM ENR" Rfc="DMX160122RF5" UsoCFDI="P01"></cfdi:Receptor><cfdi:Conceptos><cfdi:Concepto Cantidad="1.00" ClaveProdServ="81112500" ClaveUnidad="E48" Descripcion="Servicios de renta de licencia SQL standard S.&#xA;Agosto 2022" Importe="1069.00" NoIdentificacion="81112500" ValorUnitario="1069.00"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="1069.00" Importe="171.04" Impuesto="002" TasaOCuota="0.160000" TipoFactor="Tasa"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="171.04"><cfdi:Traslados><cfdi:Traslado Importe="171.04" Impuesto="002" TasaOCuota="0.160000" TipoFactor="Tasa"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="18F31D5F-1468-49D3-BCD5-620F3F770C95" FechaTimbrado="2022-08-26T20:29:58" RfcProvCertif="MAS0810247C0" SelloCFD="Q7KC5XJJj+0doYBiLfle8Kc4pmNkG1GRij8NrGdKUXE9aZl02uUwYbMX0+UIBXwngerx3hWZI4zG7tnqfciMdox4SKoymvioIjZg4KIAyE4NwE0NhyoJFfXKftHmI9ElJk9t7qhpZP1kYpQRW2T8Y4ifvx53xelooSQZPjAu3vpm5/3WHY8bo6AlqFsaZoQ6ALpqKZjUkAPXfysy5l63f7As4rXCaIL/zDeZOwkDTozsVNyVt4QP5OgSHzzAlNeyMtrRbHf0QK3aFuPwW6a3v6jEgSXMbkqWPJyGbehlSvuSl57YU+EcFTeJDkyS8Gneyjmhz9A0n5p/8cxlv6c/iA==" NoCertificadoSAT="00001000000505142236" SelloSAT="ICL8tKDkyzt9LC8FkH6yn6CaeQ55LB72kVeZeYqrykVgB9yV3rWn5VLxuo0XsrbBdGXxlwzmUnilAcMucyJeEE2a52ZJcDo1BCyh2WoNTDW6mNRNC1QijpBXoJSE2rikn3JRakPH4IroNGAD6GuN1FksSjilFO6ZlqpM92TlvSbB7W2aXJP0qDxBdzwZtQsayq/tYZVqkcmHCy/rJiK4iX7LtHyLqkfXpWan91Fs1S6quoVf1Zy9/1R0TgHCED5AbDcLxr2x462j1HDq/kkWThvr5kEEm+W4ONkg8BM1wMvj13ihGhjwkjCnE8G2mS3++03+wiZK4TdJP/2thV/TDA==" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        