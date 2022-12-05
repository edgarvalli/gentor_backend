
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'FA7D321D-47F6-6341-A1B1-4CA69B6DDE06')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-11T14:21:38','FABN','594','FA7D321D-47F6-6341-A1B1-4CA69B6DDE06','BNL020412HB8','FA7D321D-47F6-6341-A1B1-4CA69B6DDE06.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FABN" Folio="594" Fecha="2022-10-11T14:16:34" FormaPago="99" CondicionesDePago="10 d�as de Cr�dito" SubTotal="3566421.57" Descuento="748948.53" Moneda="MXN" Total="3268268.73" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504293681" Certificado="MIIGDzCCA/egAwIBAgIUMDAwMDEwMDAwMDA1MDQyOTM2ODEwDQYJKoZIhvcNAQELBQAwggGEMSAwHgYDVQQDDBdBVVRPUklEQUQgQ0VSVElGSUNBRE9SQTEuMCwGA1UECgwlU0VSVklDSU8gREUgQURNSU5JU1RSQUNJT04gVFJJQlVUQVJJQTEaMBgGA1UECwwRU0FULUlFUyBBdXRob3JpdHkxKjAoBgkqhkiG9w0BCQEWG2NvbnRhY3RvLnRlY25pY29Ac2F0LmdvYi5teDEmMCQGA1UECQwdQVYuIEhJREFMR08gNzcsIENPTC4gR1VFUlJFUk8xDjAMBgNVBBEMBTA2MzAwMQswCQYDVQQGEwJNWDEZMBcGA1UECAwQQ0lVREFEIERFIE1FWElDTzETMBEGA1UEBwwKQ1VBVUhURU1PQzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMVwwWgYJKoZIhvcNAQkCE01yZXNwb25zYWJsZTogQURNSU5JU1RSQUNJT04gQ0VOVFJBTCBERSBTRVJWSUNJT1MgVFJJQlVUQVJJT1MgQUwgQ09OVFJJQlVZRU5URTAeFw0yMDA2MjUwMzA2MzJaFw0yNDA2MjUwMzA2MzJaMIHdMSowKAYDVQQDEyFCSU9FTkVSR0lBIERFIE5VRVZPIExFT04gU0EgREUgQ1YxKjAoBgNVBCkTIUJJT0VORVJHSUEgREUgTlVFVk8gTEVPTiBTQSBERSBDVjEqMCgGA1UEChMhQklPRU5FUkdJQSBERSBOVUVWTyBMRU9OIFNBIERFIENWMSUwIwYDVQQtExxCTkwwMjA0MTJIQjggLyBST1NSNDYxMjE3RzEzMR4wHAYDVQQFExUgLyBST1NSNDYxMjE3SE5MRE5GMDExEDAOBgNVBAsTB0JFTkxFU0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCWmEQEO2MkD8QrCFatthCGSUAB2uSAYbE4F0drmHMo8m6QDiEeAWXU4a5yH+cGpkJEZgwXg4nOQ6qx3BTOpbXJ9h1I63QE4/wq2tFBUaVEaHi9ZJWf6TSczPhc7mz7wAxcw/tREoOVqfzfsSy1ytZr7Vs5dUVFlI54tEK7HSNjdgWfoldRZdV3qp50JfiFUqAuC5h4AjbsbfhqIT7uFwqh6HwTmNgH+1WcTmCX0XxrEHfAsAF2Z6GdQrla2V4uaKO0cXeLSvWVPBC0ZYgP6/94HRoj4rQqby9O11HJwKKmMEBSKVqQSik8U5jmzlzND0NyMqNQVrsDUJmbH7uqFaihAgMBAAGjHTAbMAwGA1UdEwEB/wQCMAAwCwYDVR0PBAQDAgbAMA0GCSqGSIb3DQEBCwUAA4ICAQAMLZLAb90dkW2aSHXYdoXf1J/MC6cbBfU50cDfLks/LQfdNvNzc6mblXpmCY76I04OBRx05Imthu7jqJY0hkcG6iAxHuQ3yN6np/o10GhitoOCi/zzGUxvkuXQvDC2Fow9evU/bpJ31IdDEMvGGQeFr/P1DWG2lpbRNyRovqqx7uH8Q8J3yoXm9sA7/EcG79hX6U1sjmd8U2VBPam+kJqgIuWeQEITG2W198KZazMX9J+8SGOlo35Ywmi9EEPqOb5vT/efuhUfjkojKJemCosITnMReGq6NOAqFoPddwJ96B6ti+JCj/xgnhJOQHaaeDE6nQTZOmaHFWQ8VDBh90gkeIVG741rip7TZ0++0OEJYljFGQKVOonhdifLjKxC1/5AreUnxas4QN5sTFkMCVI25ve0e71sxBzrpTqVF0fmRcR0VBy4NClKFxDEoYTpxNEKmIHZthMDqiNgeTaGmv7HrtUFO62qPaATj5uGV6ZR++SlZCpw0yw6yYeJ/McBeNGmyJr/hCXlWPtIOdTTenIhPVIlTEDn+mIQqk9VL+0QKopvQmKn8Q6FSH3wO7SkhnPf2qncAx5rpS/QiWiZN56dHgiAheVE85UgDWc1vQFFCYNKqnA79Gi0JXIGpT+N680TESRJgdRNrAEjsxpIqk6zEeC8iBQ/CspCFH28zYjIcg==" Sello="XjgzXz5iJ28mxUKWBTbb77Cq3/1VB/f0qTBeETVBgWiFf8xijLoMkgCOKIsYN3/JKSDEtSGEtaaCZ9k5L6dIkkh3p7P01etsl07WSnH1bT65Iw4cr1xVkDayfJkitv0QbikTYRq3ttfJ1XjtV+Mq0hyQTwgZCMfXHo4Sf3/In3azIP3J1E2uJf8+8by98bcnkUA6jEYZ3lfVGg1x2cN2Mp5AHUMZuatKAmjaLXQX/qbkfU3oalVkQAf6guTioWYCtWZAjI7atx0O2IXl91Z7qxeGHrF7m95q7Ay/F69ILTkrZEbK3y+XJPteX1UKbthXQwHyCgnjpioKX922NogNeQ==">  <cfdi:Emisor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="MCM610101PT2" Nombre="MUNICIPIO DE LA CIUDAD DE MONTERREY" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="APBT" Cantidad="65054" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA EN BAJA TENSION" ValorUnitario="3.6690" Importe="238683.13" Descuento="50123.46">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="188559.67" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="30169.55" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="APMT" Cantidad="1323898" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA EN MEDIA TENSION" ValorUnitario="2.1730" Importe="2876830.35" Descuento="604134.37">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2272695.98" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="363631.36" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CFAPBT" Cantidad="42" ClaveUnidad="E48" Unidad="Servicio" Descripcion="CARGO FIJO APBT" ValorUnitario="37.2200" Importe="1563.24" Descuento="328.28">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1234.96" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="197.59" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CFAPMT" Cantidad="581" ClaveUnidad="E48" Unidad="Servicio" Descripcion="CARGO FIJO APMT" ValorUnitario="372.2200" Importe="216259.82" Descuento="45414.56">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="170845.26" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="27335.24" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CDAPMT" Cantidad="3677" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="DISTRIBUCION" ValorUnitario="63.3900" Importe="233085.03" Descuento="48947.86">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="184137.17" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="29461.95" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="450795.69">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="450795.69" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="FA7D321D-47F6-6341-A1B1-4CA69B6DDE06" FechaTimbrado="2022-10-11T14:21:38" RfcProvCertif="SCD110105654" SelloCFD="XjgzXz5iJ28mxUKWBTbb77Cq3/1VB/f0qTBeETVBgWiFf8xijLoMkgCOKIsYN3/JKSDEtSGEtaaCZ9k5L6dIkkh3p7P01etsl07WSnH1bT65Iw4cr1xVkDayfJkitv0QbikTYRq3ttfJ1XjtV+Mq0hyQTwgZCMfXHo4Sf3/In3azIP3J1E2uJf8+8by98bcnkUA6jEYZ3lfVGg1x2cN2Mp5AHUMZuatKAmjaLXQX/qbkfU3oalVkQAf6guTioWYCtWZAjI7atx0O2IXl91Z7qxeGHrF7m95q7Ay/F69ILTkrZEbK3y+XJPteX1UKbthXQwHyCgnjpioKX922NogNeQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="a84FezA8AW/WrsHxkD8u6cSZ+4YHVVFkEhoDmFHjA6oabiMP5qa0dG4jPZLVHOUru7YQ81YaTdZR05I8Lb5Uq96jjN2nGkaBUR6k/GN3qdH/gPkXpF2GOi9fjNA1ULiHQwgMCCOJIcceGh9EcFzaeiRpsfZyArskSzGm0QlNFQuyrnanwyR1U911rFhA3lHICwAnUwzA1h6VkkgAocZqhhZPlDMPKefiLpC5byOjGHVDcKUZbRZLRqH6pQHgN+0Xc407x+ehHxJX8UlEgHxU/JpULyu0exJk3IGfBFnD49V8yDfXrM0Pw9p2Del7k5jpZmW4Q15dc39mynUziZIB9g==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        