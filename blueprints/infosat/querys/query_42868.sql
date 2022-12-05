
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'A03DE7FE-598F-4DC8-AAFD-CD65199D5F28')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-17T16:33:37','F','42868','A03DE7FE-598F-4DC8-AAFD-CD65199D5F28','WTI090928TJ0','A03DE7FE-598F-4DC8-AAFD-CD65199D5F28.xml','<?xml version="1.0" encoding="UTF-8" ?><cfdi:Comprobante  Version="3.3" Serie="F" Folio="42868" Fecha="2022-08-17T16:16:37" Sello="OCnkRJUAF7nqNXwACFWw42E1XepsoGEDn5SBmVOx1K8oncWAPPdhEU70bTUsjBeSIQMbWc/t2W/MGdzKq2cWz0Yk7/ZFHaI2xoOPZOymHT8P64hdZ5hT032Fscyoau5Fk8/9Zu5lyTuadi1tpjn69/yq1+uyzajvguT632aae+XfhwbIfwq8Gn8eMLGozSzHgzlhgK8BEWoH3bfnafGyRHSlrnKtqERcapDaLUwjKVY6vMx8rvxfTvwpVpKECznth3MdpvX+8CI6XhmpBRagb5IFozhpqiw1FyRiFqoDzU1LBBdk3zCJFD2Xte/yLEPHjvvL7oWVrQpkU6POcOSszQ==" FormaPago="99" NoCertificado="00001000000509474124" Certificado="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" SubTotal="7261.20" Moneda="MXN"  TipoCambio="1"  Total="7644.80" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="66220" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><cfdi:Emisor Rfc="WTI090928TJ0" RegimenFiscal="601" Nombre="WORLD TIKETERS, SA DE CV"/><cfdi:Receptor Rfc="IMA960906DW2" Nombre="Ingenier�a y mejoramiento ambiental SA de CV" UsoCFDI="G03"/><cfdi:Conceptos><cfdi:Concepto Cantidad="1.0" Unidad="SERVICIO" ClaveUnidad="E48" NoIdentificacion="1" Descripcion="MEX/MTY/MEX 15-17 AGO" ClaveProdServ="90121502" ValorUnitario="2217.53" Importe="2217.53"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Importe="354.80" TasaOCuota="0.160000" TipoFactor="Tasa" Impuesto="002" Base="2217.53"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto><cfdi:Concepto Cantidad="1.0" Unidad="SERVICIO" ClaveUnidad="E48" NoIdentificacion="2" Descripcion="HAMPTON INN BY HILTON MONTERREY/GALER�AS-OBISPADO 15-17 AGO" ClaveProdServ="90121502" ValorUnitario="3494.00" Importe="3494.00"></cfdi:Concepto><cfdi:Concepto Cantidad="1.0" Unidad="SERVICIO" ClaveUnidad="E48" NoIdentificacion="3" Descripcion="CARGO POR SERVICIO" ClaveProdServ="90121502" ValorUnitario="180.00" Importe="180.00"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Importe="28.80" TasaOCuota="0.160000" TipoFactor="Tasa" Impuesto="002" Base="180.00"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto><cfdi:Concepto Cantidad="1.0" Unidad="SERVICIO" ClaveUnidad="E48" NoIdentificacion="4" Descripcion="TUA" ClaveProdServ="90121502" ValorUnitario="1369.67" Importe="1369.67"></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="383.60"><cfdi:Traslados><cfdi:Traslado Importe="383.60" TasaOCuota="0.160000" TipoFactor="Tasa" Impuesto="002"/></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital Version="1.1" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" UUID="A03DE7FE-598F-4DC8-AAFD-CD65199D5F28" SelloSAT="MqP9tPKALqURlWRIrILWX4Ib50hdFYt9J0jJiy4q+FebAK6Kf+r7lAncqldOV9hcwrCKlUCMqmQH41qTyExWt1wZ4yYmR9tudrPCCgR5SWIFSy8nypfBvxH15R4e1mBo2aHjCurOigsLtfufIn39fkaTMTWZ9U2zna5RT6bQPud8Zx256/OUhKP6ZRbpkH2u15OTSFkYp8qWqwmrQNI/FfWWWHR1T0nW9FBUhmMDwngmFDnXu6Exbw5Z3Tx91Zn81vRKDTlOtbm6GsDVmmpIsQR7uMZ29O7GHhJT5xSpDSXddwVYivZMNo9wzZHVwKslX4CUJBSo6puMqmLMuFOn3A==" SelloCFD="OCnkRJUAF7nqNXwACFWw42E1XepsoGEDn5SBmVOx1K8oncWAPPdhEU70bTUsjBeSIQMbWc/t2W/MGdzKq2cWz0Yk7/ZFHaI2xoOPZOymHT8P64hdZ5hT032Fscyoau5Fk8/9Zu5lyTuadi1tpjn69/yq1+uyzajvguT632aae+XfhwbIfwq8Gn8eMLGozSzHgzlhgK8BEWoH3bfnafGyRHSlrnKtqERcapDaLUwjKVY6vMx8rvxfTvwpVpKECznth3MdpvX+8CI6XhmpBRagb5IFozhpqiw1FyRiFqoDzU1LBBdk3zCJFD2Xte/yLEPHjvvL7oWVrQpkU6POcOSszQ==" RfcProvCertif="BUZ021107UG0" NoCertificadoSAT="00001000000505464943" FechaTimbrado="2022-08-17T16:33:37"/></cfdi:Complemento> </cfdi:Comprobante>')
                END
            END
        