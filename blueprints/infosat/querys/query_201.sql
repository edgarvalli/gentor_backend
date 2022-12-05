
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'E85B1E2D-6744-4D6A-8614-1A29B9C74EB0')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-08T11:11:15','','201','E85B1E2D-6744-4D6A-8614-1A29B9C74EB0','SUJA460209NV8','E85B1E2D-6744-4D6A-8614-1A29B9C74EB0.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" LugarExpedicion="32328" MetodoPago="PPD" TipoDeComprobante="I" Total="14300.01" Moneda="MXN" Certificado="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" SubTotal="15000.00" NoCertificado="00001000000500291864" FormaPago="99" Sello="ow88eKmzw4gDI/DUjSIFWek4IyETMUSvbOZCi44IdlF2Rl5tF13fNycQiS6hzW6DXQ5LvS2rd2EJI+vgoj9LkkkBZzAXd+bIvnsVFo6y71HPSLKNLupmo3W6F4EIRAg+IlH1VdUikgluhU7sxWBhk13CXiYtsvayB+ylnaO1tOJyQohSnEDSN192zUt5XkGiLBzsSEZJFKLajGpkr6pht2UWfvqGXPJn3b8FCEU8DDaub5Qz5n9Nd12wSCmtahy2wnCsghdmFHpUpbLCMR9Rns8epkPP0QdLrJygH2RJeZFmzh99EcSye8Ckkdlh+AmR/EbuN/eAZZ4bSt6qYOYL8Q==" Fecha="2022-11-08T11:07:53" Folio="201" Version="3.3" xmlns:cfdi="http://www.sat.gob.mx/cfd/3"><cfdi:Emisor Rfc="SUJA460209NV8" Nombre="JAMES MACNAIR STUART" RegimenFiscal="606"></cfdi:Emisor><cfdi:Receptor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES SA DE CV" UsoCFDI="G03"></cfdi:Receptor><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="80131502" Cantidad="1" ClaveUnidad="ACT" Descripcion="Arrendamiento del mes de Noviembre 2022 del inmueble con numero de catastro 01-050-033-007-0" ValorUnitario="15000.00" Importe="15000.00"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="15000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2400.00"></cfdi:Traslado></cfdi:Traslados><cfdi:Retenciones><cfdi:Retencion Base="15000.00" Impuesto="001" TipoFactor="Tasa" TasaOCuota="0.100000" Importe="1500.00"></cfdi:Retencion><cfdi:Retencion Base="15000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.106666" Importe="1599.99"></cfdi:Retencion></cfdi:Retenciones></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosRetenidos="3099.99" TotalImpuestosTrasladados="2400.00"><cfdi:Retenciones><cfdi:Retencion Impuesto="001" Importe="1500.00"></cfdi:Retencion><cfdi:Retencion Impuesto="002" Importe="1599.99"></cfdi:Retencion></cfdi:Retenciones><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2400.00"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="E85B1E2D-6744-4D6A-8614-1A29B9C74EB0" FechaTimbrado="2022-11-08T11:11:15" RfcProvCertif="SAT970701NN3" SelloCFD="ow88eKmzw4gDI/DUjSIFWek4IyETMUSvbOZCi44IdlF2Rl5tF13fNycQiS6hzW6DXQ5LvS2rd2EJI+vgoj9LkkkBZzAXd+bIvnsVFo6y71HPSLKNLupmo3W6F4EIRAg+IlH1VdUikgluhU7sxWBhk13CXiYtsvayB+ylnaO1tOJyQohSnEDSN192zUt5XkGiLBzsSEZJFKLajGpkr6pht2UWfvqGXPJn3b8FCEU8DDaub5Qz5n9Nd12wSCmtahy2wnCsghdmFHpUpbLCMR9Rns8epkPP0QdLrJygH2RJeZFmzh99EcSye8Ckkdlh+AmR/EbuN/eAZZ4bSt6qYOYL8Q==" NoCertificadoSAT="00001000000504465028" SelloSAT="dbMDK+GPDD5IeYc7d2bm3WLN9Ym+wxib3kNQVl/vNUE63+wDqtonBkjJnZfkVxeK1fDXfTzcRZYaRO9TFZ/jG6IjeR+T0jXerNvLXBMrVpL44fzBDhjcRIETsim+k+t93zO3tEXjsimMTiUPrlqSG+GY0mGtk7DHvQ69zF5e/e8P+HNHcbLa9yZeEI72stCUgleQB8BWwQM1h6zQQY1Jj6iqMftkyj4r1iYa3/8JbV+R7W8mSlyUbN1yv7nIsyxvX+wB+rb+m0pYFsb5fM7utSemIlM2CLtWcWa7Vl7xj2XrsOxzlcJjYP8DHYLGGvQUj+VhJjOXnRLBM8imJHbc/A==" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        