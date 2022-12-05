
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'EC5E696F-08A2-455D-B858-7DB00F3227B0')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-05-16T16:16:47','A','2782','EC5E696F-08A2-455D-B858-7DB00F3227B0','','EC5E696F-08A2-455D-B858-7DB00F3227B0.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Certificado="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" Fecha="2022-05-16T16:16:29" Folio="2782" FormaPago="99" LugarExpedicion="64000" MetodoPago="PPD" Moneda="MXN" NoCertificado="00001000000507045060" Sello="RlkRGirf0NnnUIQtaHphLUDF9vRuByUQpqckEhq1Scfr6cSwMHLzk/9nCCd02HZ6Gv0PmL8ijI0WjXE4ElD0WoDAh7ZfgM3g8k1pYjdLeAkfmcWAlrLtGxr1T/Z5bmLgPorlRTJ/99AL0AWeKCENbj3ydjHmA5l4m5m7tSEP01HfftaMbLXWCDXMUA6ueg6nsdR9jtUchG6qwIBDfaMwM0xivzM9NutukjwmJM3PRYDOcvo8dJ8FS2SXqbUNqxhn+q9Gbg2KyTG13SIWaxJRgUjVmmME6tR3lY7toS/NH/9pp18IxQKrTjxti7U/a/wQxnjPzW6iAcVX9SB+mqV6gg==" Serie="A" SubTotal="5384.62" TipoDeComprobante="I" Total="6246.16" Version="3.3"><cfdi:Emisor Nombre="Domos Telecomunicaciones, S.A. de C.V." RegimenFiscal="601" Rfc="DTE940421L42"></cfdi:Emisor><cfdi:Receptor Nombre="UNICO LOGISTICS MEX, S DE R.L. DE C.V." Rfc="ULM1509029A1" UsoCFDI="P01"></cfdi:Receptor><cfdi:Conceptos><cfdi:Concepto Cantidad="1.00" ClaveProdServ="81112100" ClaveUnidad="E48" Descripcion="Servicios de Internet&#xA;Dedicado&#xD;&#xA;Periodo: Mayo 2022" Importe="5384.62" NoIdentificacion="81112100" ValorUnitario="5384.62"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="5384.62" Importe="861.54" Impuesto="002" TasaOCuota="0.160000" TipoFactor="Tasa"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="861.54"><cfdi:Traslados><cfdi:Traslado Importe="861.54" Impuesto="002" TasaOCuota="0.160000" TipoFactor="Tasa"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="EC5E696F-08A2-455D-B858-7DB00F3227B0" FechaTimbrado="2022-05-16T16:16:47" RfcProvCertif="MAS0810247C0" SelloCFD="RlkRGirf0NnnUIQtaHphLUDF9vRuByUQpqckEhq1Scfr6cSwMHLzk/9nCCd02HZ6Gv0PmL8ijI0WjXE4ElD0WoDAh7ZfgM3g8k1pYjdLeAkfmcWAlrLtGxr1T/Z5bmLgPorlRTJ/99AL0AWeKCENbj3ydjHmA5l4m5m7tSEP01HfftaMbLXWCDXMUA6ueg6nsdR9jtUchG6qwIBDfaMwM0xivzM9NutukjwmJM3PRYDOcvo8dJ8FS2SXqbUNqxhn+q9Gbg2KyTG13SIWaxJRgUjVmmME6tR3lY7toS/NH/9pp18IxQKrTjxti7U/a/wQxnjPzW6iAcVX9SB+mqV6gg==" NoCertificadoSAT="00001000000505142236" SelloSAT="fFKMFxUdEIET3rSgzZarDfCC5Qq+gIBZr+7cpPasTHdFj8b5JuML9Wv/SiJvsdq84y4BI6VHCR5x3j/t0MXxw9xACP0XzpAUIhrrD20CWz/F4zoSxeAjntATtZOjsD0y0npYQ/+BvEANxfucrbkdkRmzYPatIJj3tQYgmmBDKxk3c4bub1dLMHX10azMcKmDaI36saSrYE9jgL9gWEbN09ZQjRdI114MZbV1FfiIaok+o22L/vtgGpEfuflLTQoK4p0++O7imKaFA5VFvqAYyxIPca20azCM4qpK0kdvg8Bz5iSlPaCOE/z+CQ+wbcXVnnpm9S0VVyckn3d6gGXQEQ==" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        