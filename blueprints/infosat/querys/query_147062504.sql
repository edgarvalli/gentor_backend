
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '4514ED04-7B8B-41D4-9994-9873C43D7294')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-26T14:55:44','_','147062504','4514ED04-7B8B-41D4-9994-9873C43D7294','BST8201028Y2','4514ED04-7B8B-41D4-9994-9873C43D7294.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" Version="3.3" Serie="_" Folio="147062504" Fecha="2022-09-26T14:55:44" Sello="EE6lObX0h7bjXF1pfuQtQbPkcLgDg4Sl/TYVs6mbFVPKqaAEhOKvmeQMLudi0I2b2arrSyWARdYdPd+bwLmOT9BIy2f5vZqVee1OqmS6r38ehQCkyDI9n9ChvXvK8TTEi24PisV0PKbCKXWerGHwWAW6voD/f0YpaucLn7nhtC71kE7jiArU6XffCtPLMLyoemgNoxOaYvn7wG+m+OlJ4kriPLs/eO6fVJHID+v1bC+HIvxBQDWNCR3J4nedekTumYjnyqc4qEoVTDeWt3lmXrlOxT3Oe4hESemYkKUsaT3BjYYvFZsmNxQLjKDfKk9QmcWFY0Q905I66qF1E2J5aw==" FormaPago="99" NoCertificado="00001000000513081404" Certificado="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" SubTotal="7055.00" Moneda="MXN" Total="8183.80" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="05120" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd"><cfdi:Emisor Rfc="BST8201028Y2" Nombre="HOGAN LOVELLS BSTL, S.C." RegimenFiscal="601" /><cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL, S.A. DE C.V." UsoCFDI="P01" /><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="80121600" Cantidad="1" ClaveUnidad="E48" Unidad="Servicio" Descripcion="Servicios de derecho comercial/Commercial law services" ValorUnitario="7055.00" Importe="7055.00"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="7055.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1128.80" /></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="1128.80"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1128.80" /></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="4514ED04-7B8B-41D4-9994-9873C43D7294" FechaTimbrado="2022-09-26T14:55:44" RfcProvCertif="ASE0201179X0" SelloCFD="EE6lObX0h7bjXF1pfuQtQbPkcLgDg4Sl/TYVs6mbFVPKqaAEhOKvmeQMLudi0I2b2arrSyWARdYdPd+bwLmOT9BIy2f5vZqVee1OqmS6r38ehQCkyDI9n9ChvXvK8TTEi24PisV0PKbCKXWerGHwWAW6voD/f0YpaucLn7nhtC71kE7jiArU6XffCtPLMLyoemgNoxOaYvn7wG+m+OlJ4kriPLs/eO6fVJHID+v1bC+HIvxBQDWNCR3J4nedekTumYjnyqc4qEoVTDeWt3lmXrlOxT3Oe4hESemYkKUsaT3BjYYvFZsmNxQLjKDfKk9QmcWFY0Q905I66qF1E2J5aw==" NoCertificadoSAT="00001000000414715731" SelloSAT="Y8R0o6SRBXMvC2gNTI8RSO//CQRgZ0upHwG3GMQD3wnRWibeuWuLAqp4gv5ToFZPX+bSRbJcqaLPjU/RKV/n9Whyq3ydFDo096f7ao/aowA3rP950olrSEX/XycO+CDTs8i4m53EVt+4WTUwAJg2czw0X2ReCniswLZrRFIQXxqLf+nMIP0ad8kcFOCI1YnccfY42jTZHvXQfvvUXNcNTZDZaE7aEAfNQVhnDlpKldifCUzQo+64zXG4C8+VzyQbj5ShtNlH8I8BepBDrsz4st2h0qdUhzCOOWin+DiDTwjeMjOA1tp2wrywpPAEyWOe/l92hOEiuqkYm4pPhWhVfA==" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        