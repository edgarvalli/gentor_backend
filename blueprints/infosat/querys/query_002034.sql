
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'c2bb764d-4812-42d5-8f8d-fbbc3f8f7ed1')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-30T11:00:54','','002034','c2bb764d-4812-42d5-8f8d-fbbc3f8f7ed1','','c2bb764d-4812-42d5-8f8d-fbbc3f8f7ed1.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="3.3" Folio="002034" Fecha="2022-09-30T10:00:51" Sello="o0Asr+GOtzHIwcGjChIj+onBi6GzyLRuI23qlZ/S3V5TOletuXYbE0JmRL00bPZMZZFqjO00diGF3ZlntbqzkeH2ECwvnoAp55T9BpHAkc0tcI/cYf3hVn05TLgaCWqeBM+98mkLR0Cicj8hLur+d0rMAMJ7IAvHR72L5hEHd27osd+JbZbcmAOGD6r+S8gaztK9FhiE8P0G5vb3jBJ4NVRei6LpeFy/BspYW4L6pJUiGexY4CS1c+snqtRLFMtclb7KpcAedCEk4x4xs3Mcq4nzp9Ka1BKGPeBiaf4OVID37UERTflnX50WaoI+7W5O9zG2rkvknA66sOOznmeHbQ==" FormaPago="99" NoCertificado="00001000000511906324" Certificado="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" CondicionesDePago="0 D�as" SubTotal="750.00" Moneda="MXN" TipoCambio="1" Total="870.00" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="66050" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" xmlns:cfdi="http://www.sat.gob.mx/cfd/3"><cfdi:Emisor RegimenFiscal="601" Rfc="SGA170421LZA" Nombre="SERVICIOS Y GRUAS ALIANZA S.A. DE C.V." /><cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL SA DE CV" UsoCFDI="G03" /><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="20102302" Cantidad="1.000000" ClaveUnidad="E48" Unidad="E48" Descripcion="TRASLADO LOCAL" ValorUnitario="750.000000" Importe="750.000000"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="750.000000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="120.000000" /></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="120.00"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="120.00" /></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital SelloSAT="OC8Dqj8KQOhH2R7SulMKk409dVUeYyNPFVrR6n2U7GiQFej/DXh+e8KAwfK77Ou/yKZ3kla6LQwPmovYi+HJvloe9X+ImH0asUu0CLF4KanFboZGYnxFEdWaN2dpA72nMb5CAZma9cHLCIHIQ6yjtKABKPregQMUQepiNV3wnCl2PVVcAfv2XYbTpvjCJV07sRZvXNDZbjtyfKprDzp1SXDIiSIqnj55vWe5sAMICDjNUbCM8EpDiAeYwovntgZtRhej31EKixmOFchss154PEgblEShaXULc0IuaSNBIf5/ihzJ7BjxhGvT/9GmKe2REUN7Qn0DTkHnfytabZpPxQ==" NoCertificadoSAT="00001000000509846663" UUID="c2bb764d-4812-42d5-8f8d-fbbc3f8f7ed1" FechaTimbrado="2022-09-30T11:00:54" RfcProvCertif="LSO1306189R5" SelloCFD="o0Asr+GOtzHIwcGjChIj+onBi6GzyLRuI23qlZ/S3V5TOletuXYbE0JmRL00bPZMZZFqjO00diGF3ZlntbqzkeH2ECwvnoAp55T9BpHAkc0tcI/cYf3hVn05TLgaCWqeBM+98mkLR0Cicj8hLur+d0rMAMJ7IAvHR72L5hEHd27osd+JbZbcmAOGD6r+S8gaztK9FhiE8P0G5vb3jBJ4NVRei6LpeFy/BspYW4L6pJUiGexY4CS1c+snqtRLFMtclb7KpcAedCEk4x4xs3Mcq4nzp9Ka1BKGPeBiaf4OVID37UERTflnX50WaoI+7W5O9zG2rkvknA66sOOznmeHbQ==" Version="1.1" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        