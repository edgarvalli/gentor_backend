
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'CSO200716G27')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [CSO200716G27] WHERE UUID like '26397F21-28CD-F94D-A881-F6FA44D90A1C')
                BEGIN
                    INSERT INTO [CSO200716G27] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-01T15:39:53','FACHP','15','26397F21-28CD-F94D-A881-F6FA44D90A1C','CSO200716G27','26397F21-28CD-F94D-A881-F6FA44D90A1C.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACHP" Folio="15" Fecha="2022-11-01T15:34:50" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="1167.48" TipoCambio="19.86" Moneda="USD" Total="1354.28" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000505470521" Certificado="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" Sello="LkPDlzX5D0DnS+nivaINqhErMymB3wZknl6j15WUxwzV2vM67lgSMZ4GYCDZ8wxsAidQg5X1SPRabQaRz6HwtrBNetxgLLeJmgUoe4gtW6Dl5bqE/gaI9ee8rzlf61tqMGKEYAzFjeXlUxB4JlhVDni9qsZWdgOyBvKkqI7fmpxRmERVJd6lCBoN6s7r8lMhX/YUB1uPLKg8gBk6c9Cp6MSRWbapWMMYK9kNhgN4IoFyGRRKnVNx12JItHfougNCFrRdUUpdJazTd1igQNYxhk/UvXG8yUlUW3OS5R18u3CoaxSQgzePkPk295YHu6hSHQLjE9cCbxwsEBqT9rxZYQ==">  <cfdi:Emisor Rfc="CSO200716G27" Nombre="CHP SOLUTIONS, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="IQI110610IU5" Nombre="IMPULSORA QUERETANA DE INMUEBLES S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="73152100" NoIdentificacion="S2G013" Cantidad="94.00" ClaveUnidad="E48" Unidad="Hora(s)" Descripcion="Oph - LTSA Gold" ValorUnitario="10.52" Importe="988.88">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="988.88" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="158.22" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="73152100" NoIdentificacion="S2G015" Cantidad="94.00" ClaveUnidad="E48" Unidad="Hora(s)" Descripcion="Oph - Suministro Aceite" ValorUnitario="1.90" Importe="178.60">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="178.60" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="28.58" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="186.80">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="186.80" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="26397F21-28CD-F94D-A881-F6FA44D90A1C" FechaTimbrado="2022-11-01T15:39:53" RfcProvCertif="SCD110105654" SelloCFD="LkPDlzX5D0DnS+nivaINqhErMymB3wZknl6j15WUxwzV2vM67lgSMZ4GYCDZ8wxsAidQg5X1SPRabQaRz6HwtrBNetxgLLeJmgUoe4gtW6Dl5bqE/gaI9ee8rzlf61tqMGKEYAzFjeXlUxB4JlhVDni9qsZWdgOyBvKkqI7fmpxRmERVJd6lCBoN6s7r8lMhX/YUB1uPLKg8gBk6c9Cp6MSRWbapWMMYK9kNhgN4IoFyGRRKnVNx12JItHfougNCFrRdUUpdJazTd1igQNYxhk/UvXG8yUlUW3OS5R18u3CoaxSQgzePkPk295YHu6hSHQLjE9cCbxwsEBqT9rxZYQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="WPoYQi5oQ1uU5WWJUceRTJzivxX7LmnLv7EOeOhRTNJNHgi47hdTWH5Fq+txETpfnczHgq0enIoA3wtjoe/l7tJYHifkr+GSFdcv6so1vaq0G1wUMO4w1RaCBTWQfJYx3IBf5FhKUy2A6camVj6CjS+Nb+ywJTipbfWGIDz+BvdjF+7CruJUA+h19WsgI5OUd3Ujun9t7A8euedqRv48xZCozwnsQiL/ldAiGb6SiDL+0xRV5O8WZjZUdnlnh5rMkGHgTetn7V1m0XrdYnBnyWZB9bRivkQ8R6npb41GIogQxxF2ihni/L+4zcx7FtIlQJGM3qfa/zNvlO8NpM4XrA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        