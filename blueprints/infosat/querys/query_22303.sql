
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'F8E49F3D-F4DA-4652-B5A9-D9B9262AF1E8')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-14T18:34:51','IN01','22303','F8E49F3D-F4DA-4652-B5A9-D9B9262AF1E8','CIC160329550','F8E49F3D-F4DA-4652-B5A9-D9B9262AF1E8.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="IN01" Folio="22303" Fecha="2022-11-14T18:35:35" Sello="N8uet4D5kYIDF4CdHwW0Ct2OL4Iojf1WfPdw0oQHOVF8zF2Dz4U4kyUrpPMWHV8T8TyyDDbjX5sps1X4ebxUl9qBqWbHzh2EHZ7D024JPI7RFz4hlnRUTa4MwgK+m2Py5opqOEYmBPVeSOmdfM9pPbUQPXkY84jXBFsmJkpXyXStpLlgqUljBmB2MksRzAHTpWkpfTlCU8cyC86APnM53qDxAlK8YqdD7w9bP8JhRE/DK9lk+Xrdhb74nw/ueHnSkzLKqVnqnM6aKuQSKw7/qX+Q8mRe/BJ4mmqFySE5fEn1mpeTqlrr5QiGq+ZtQUYotGi5I4cjKkEm+Ba82c13sQ==" FormaPago="03" NoCertificado="00001000000515295896" Certificado="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" CondicionesDePago="Pago inmediato sin deducci�n" SubTotal="45678.57" Moneda="MXN" Total="52987.14" TipoDeComprobante="I" MetodoPago="PUE" LugarExpedicion="06500"><cfdi:Emisor Rfc="CIC160329550" Nombre="CFE INTERMEDIACION DE CONTRATOS LEGADOS" RegimenFiscal="601"/><cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S.A. DE C.V." UsoCFDI="G03"/><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="83101800" NoIdentificacion="I00204X-DD" Cantidad="1.000" ClaveUnidad="E48" Unidad="Unidad de Servicio" Descripcion="Energ�a en Emergencia" ValorUnitario="45678.57" Importe="45678.57"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="45678.57" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="7308.57"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="7308.57"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="7308.57"/></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="F8E49F3D-F4DA-4652-B5A9-D9B9262AF1E8" FechaTimbrado="2022-11-14T18:34:51" RfcProvCertif="EFA100217SU5" SelloCFD="N8uet4D5kYIDF4CdHwW0Ct2OL4Iojf1WfPdw0oQHOVF8zF2Dz4U4kyUrpPMWHV8T8TyyDDbjX5sps1X4ebxUl9qBqWbHzh2EHZ7D024JPI7RFz4hlnRUTa4MwgK+m2Py5opqOEYmBPVeSOmdfM9pPbUQPXkY84jXBFsmJkpXyXStpLlgqUljBmB2MksRzAHTpWkpfTlCU8cyC86APnM53qDxAlK8YqdD7w9bP8JhRE/DK9lk+Xrdhb74nw/ueHnSkzLKqVnqnM6aKuQSKw7/qX+Q8mRe/BJ4mmqFySE5fEn1mpeTqlrr5QiGq+ZtQUYotGi5I4cjKkEm+Ba82c13sQ==" NoCertificadoSAT="00001000000504041684" SelloSAT="DkuYi03kVwi3VDiNFCQeZjv4c2s8XwMmY0+Ppqbfm00JiMt6QpGIbT8zvYFtAec5Ct5P4/PAhiSuY4pavbs63NTjVVk+Ngd5IRvKKK4uaSaODs8GE8s1Tozx9g5t6ecOlEEdopVdS44iVRU44U/LdFjo8ERJkD6tCp0C0eEQGWxVlF/pcrhzlEoxEGuv1J1r31T/Bkf45q36pB0aC1/1WwOgKtzE5WjRctg1i1yVz4SJPxuDmyAPSlku3xlXSEroY4eGYk1xbUc68lpf13H2CL3R3AQofaI06eVHXvnaZo6/lq/4SRoQQjbz7mWOlwXVHSJ1Kp9QsJFc6nwuqA8iXg=="/></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        