
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '950200fe-afce-4e05-acf5-8867eb026929')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-24T11:52:33','A','24153','950200fe-afce-4e05-acf5-8867eb026929','','950200fe-afce-4e05-acf5-8867eb026929.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="3.3" Serie="A" Folio="24153" Fecha="2022-08-24T11:50:21" FormaPago="03" NoCertificado="00001000000413723802" CondicionesDePago="contado" SubTotal="7917.00" Moneda="MXN" Total="9183.72" TipoDeComprobante="I" MetodoPago="PUE" LugarExpedicion="66610" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Certificado="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" Sello="R3/Jg8M73xq9iB9+eV2a71scQ0giAs3BhWk0j+/YzKNDUsCjGPS9Bfl3NhAIJV1kZzRm67J0MHhYPzCl4PwCHwfBcPbxFC8HYOUzMSiGKl5yx+DXEjbIb0XnQSIN8swhxekjeVCUidamoBOmgaD6TpWdDoVailAWZ8bMQnOkw44gAn/Pb3qhzey3oYdhpT1vS1auw3HFJLkdbWd4we4TtWD48+lnwWtxFslS/81Rmw3C/92EDqoydxwnki0P+MYerguFX01ax829i1FUaLCz/4hDV01HYqPOkupf4r3CFus1PuHuXqtpJDYAYqrHXdqjpT4pBLfkkyuexNEAHHK+Vg=="><cfdi:Emisor Nombre="H�ctor Arnulfo Jacobo Nuncio" Rfc="JANH710517GD3" RegimenFiscal="612"/><cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL SA DE CV" UsoCFDI="G03"/><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="40142000" NoIdentificacion="MANGUERA" Cantidad="1.00" ClaveUnidad="MTR" Descripcion="MANGUERA METALICA DE 4 &quot; X 1.10 MTS DE LARGO CON BRIDAS EN LOS EXTREMOS" ValorUnitario="6717.00" Importe="6717.00"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="6717.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1074.72"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto><cfdi:Concepto ClaveProdServ="40142000" NoIdentificacion="MANGUERA" Cantidad="2.00" ClaveUnidad="MTR" Descripcion="MANGUERA METALICA DE 1/4 X .94 CM DE LARGO CON HEMBRAS METALICAS EN LOS EXTREMOS" ValorUnitario="600.00" Importe="1200.00"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="1200.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="192.00"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="1266.72"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1266.72"/></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="950200fe-afce-4e05-acf5-8867eb026929" FechaTimbrado="2022-08-24T11:52:33" RfcProvCertif="LSO1306189R5" SelloCFD="R3/Jg8M73xq9iB9+eV2a71scQ0giAs3BhWk0j+/YzKNDUsCjGPS9Bfl3NhAIJV1kZzRm67J0MHhYPzCl4PwCHwfBcPbxFC8HYOUzMSiGKl5yx+DXEjbIb0XnQSIN8swhxekjeVCUidamoBOmgaD6TpWdDoVailAWZ8bMQnOkw44gAn/Pb3qhzey3oYdhpT1vS1auw3HFJLkdbWd4we4TtWD48+lnwWtxFslS/81Rmw3C/92EDqoydxwnki0P+MYerguFX01ax829i1FUaLCz/4hDV01HYqPOkupf4r3CFus1PuHuXqtpJDYAYqrHXdqjpT4pBLfkkyuexNEAHHK+Vg==" NoCertificadoSAT="00001000000509846663" SelloSAT="TYrPM33seboVzkjsp5cKETy9l7mj+k9OK12RmlKT2w9JqSsQMPSMr29+yaQZHj7CWWd011DuLc2eFPH8NBmc1U+qyQq/BlQzydcwlOPhGeuRi8N91hkPosBCYYzCJTQB0bBm/0foFNsUj2PLzflKjHwdOrez8m/eVPK8n/M0lWbtSA/w3tTmPHCMDUHWTAf4/hweeBGjH00BYu3AGHbQF727dDmTJyF4YFGs8J/z377WEvOBphg4iV6cgbXYudBcC2hHErszYK4IyBnJ0dfVy37PAtRgCboOM2VkutJtVX3u6l+ykt2iYTbbujhovPkRc1bH6U9k1s3apDutypdFCQ=="/></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        