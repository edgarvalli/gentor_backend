
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '6af214f4-683c-4353-a7bb-41846f443344')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-23T11:19:53','A','2842','6af214f4-683c-4353-a7bb-41846f443344','SATR430302HG0','6af214f4-683c-4353-a7bb-41846f443344.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="A" Folio="2842" Fecha="2022-09-23T11:19:53" Sello="UmSlLS46bQciFIm2APO1TVJV7iAaxyPeXEe7uC5WQcWojQXOfGblHbJfF9EWCZnYe2K4oFnHktr4uctesSjNPtq/bAjAkVubW8qzzjOgq/W0fq/c+C7aKJL95cLC03p+nSqGI1e8h9cDVTd3mUkTcYA703K7gtTsax9a7GSGV8lTzKt5u5keOE7odLTUVekSXbg/N4OIwb2YSN2F0vKX9EkuIPiQMBmj0NZETFLMKv9bTKHleyn0tvn4P9xHOv1EUZyJsbUI5LK6pk8meGfxtDiGQQ795oefTylkeZFiiVvtLcuERQCc/WwRgqmjjRn5etf7/KU6/Y0wzhU3dXpvLg==" FormaPago="99" NoCertificado="00001000000412949575" Certificado="MIIGBjCCA+6gAwIBAgIUMDAwMDEwMDAwMDA0MTI5NDk1NzUwDQYJKoZIhvcNAQELBQAwggGyMTgwNgYDVQQDDC9BLkMuIGRlbCBTZXJ2aWNpbyBkZSBBZG1pbmlzdHJhY2nDs24gVHJpYnV0YXJpYTEvMC0GA1UECgwmU2VydmljaW8gZGUgQWRtaW5pc3RyYWNpw7NuIFRyaWJ1dGFyaWExODA2BgNVBAsML0FkbWluaXN0cmFjacOzbiBkZSBTZWd1cmlkYWQgZGUgbGEgSW5mb3JtYWNpw7NuMR8wHQYJKoZIhvcNAQkBFhBhY29kc0BzYXQuZ29iLm14MSYwJAYDVQQJDB1Bdi4gSGlkYWxnbyA3NywgQ29sLiBHdWVycmVybzEOMAwGA1UEEQwFMDYzMDAxCzAJBgNVBAYTAk1YMRkwFwYDVQQIDBBEaXN0cml0byBGZWRlcmFsMRQwEgYDVQQHDAtDdWF1aHTDqW1vYzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMV0wWwYJKoZIhvcNAQkCDE5SZXNwb25zYWJsZTogQWRtaW5pc3RyYWNpw7NuIENlbnRyYWwgZGUgU2VydmljaW9zIFRyaWJ1dGFyaW9zIGFsIENvbnRyaWJ1eWVudGUwHhcNMTgxMjEyMDAzMjU4WhcNMjIxMjEyMDAzMjU4WjCBpjEeMBwGA1UEAxMVUk9HRUxJTyBTQUxBWkFSIFRBTUVaMR4wHAYDVQQpExVST0dFTElPIFNBTEFaQVIgVEFNRVoxHjAcBgNVBAoTFVJPR0VMSU8gU0FMQVpBUiBUQU1FWjEWMBQGA1UELRMNU0FUUjQzMDMwMkhHMDEbMBkGA1UEBRMSU0FUUjQzMDMwMkhOTExNRzA4MQ8wDQYDVQQLEwZVbmlkYWQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCs+qcc0FyiOQgF1jyUzmJX64jkBqBANXlL3W88bU3PfP6G7H2tTdUe0LbUbKUEPnEICZtnG6qB1ZIOdA0azYUrIWWEohT9PpRx1rDwpY1EkMGZRazuc6RMatLm88eyw9u4YuMFm8vlXVzF9FDWbeTgHDTPhGIuPr/gwpXu7oHtZ57BQJgmfYKNTNmGFQHN/AOCVFLXmA9aRofjIIVJrvfL55M6DtmGB8yFUnd2grIPY2Ckrb08ejuK5LVCR8DtC2ExNRPWxxG9VZjfcuNgwDBgIQR2XNWr9A3Wdy0tLEobwuxf3X30ln05qDfib1SfzK8WLI/mO2Mu/2djdt4bPcUlAgMBAAGjHTAbMAwGA1UdEwEB/wQCMAAwCwYDVR0PBAQDAgbAMA0GCSqGSIb3DQEBCwUAA4ICAQA2EkEGDhOEpQBZHlZXrG3zllNd/UTljDzZfO+GTOJAPwHoA/9J7DbO11rqRvuWAx1Zwj2bJJfGv6a6R8VFAGZzdrLu7u6gzBr4RsfXsSliib7ZDiPdREbGF/pzic+eV6tOCczKjZ75KrOEMa+Cxfuc/qwhs2YMAGQwlad2C8YGWE/xlOMZKMJ5rpXjs10PkudoLCaPM2f0KBc+xqkMD084MT61WD+pUSVPk6MavV4cxXvCTsBMs0D6lXuyEoQiIdiB5xX1cCqxWoxTPZ13PPApXLDpN00t+huWjBlGX/jy8Xov/ERvK7qmA/EENa4aX0PIZmtGMG5Pv+YMIHDh4zM+qwSAaMvadPAcjEOCN3OVz8j4bu6IMD2KB0hWNFEzRjG+y6EJVG6QRgBq61Idblp5CvYv1aAUnqXtff9+w9+i/LayvR99LmkdZ/v0jWiD/jhLs8Kvt+KxLXhBsYNSbJl/Hn1urkxQhWF6zAFQIYHRbmXmKLsWI4arYIeiGWkzih2+8wPfIGwCn2I2bSOF9aq9hKDsnzZVRr+tBdDqapJ61Wlzz8K4qmpyoO82el0G6MDFVAAg1/etJOEumYR6GFLOOk+Mtyk0STuSdlwOm09/HwtpSXVisjuEZJjWVqo2rMlMxrMw1SQTXAgF9ZgNhXS5JJ+i/ZzLhaEfi/62pQW7IA==" SubTotal="2570.00" Moneda="MXN" TipoCambio="1" Total="2981.20" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="66490">  <cfdi:Emisor Rfc="SATR430302HG0" Nombre="ROGELIO SALAZAR TAMEZ" RegimenFiscal="621" />  <cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL SA DE CV" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="78181507" Cantidad="1.000000" ClaveUnidad="E48" Unidad="Unidad de servicio" Descripcion="afinacion de motor con aceite sintetico ACURA MDX --" ValorUnitario="2100.00" Importe="2100.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2100.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="336.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="78181507" Cantidad="1.000000" ClaveUnidad="E48" Unidad="Unidad de servicio" Descripcion="cambio de anticongelante--" ValorUnitario="470.00" Importe="470.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="470.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="75.20" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="411.20">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="411.20" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="6af214f4-683c-4353-a7bb-41846f443344" FechaTimbrado="2022-09-23T11:19:53" RfcProvCertif="LSO1306189R5" SelloCFD="UmSlLS46bQciFIm2APO1TVJV7iAaxyPeXEe7uC5WQcWojQXOfGblHbJfF9EWCZnYe2K4oFnHktr4uctesSjNPtq/bAjAkVubW8qzzjOgq/W0fq/c+C7aKJL95cLC03p+nSqGI1e8h9cDVTd3mUkTcYA703K7gtTsax9a7GSGV8lTzKt5u5keOE7odLTUVekSXbg/N4OIwb2YSN2F0vKX9EkuIPiQMBmj0NZETFLMKv9bTKHleyn0tvn4P9xHOv1EUZyJsbUI5LK6pk8meGfxtDiGQQ795oefTylkeZFiiVvtLcuERQCc/WwRgqmjjRn5etf7/KU6/Y0wzhU3dXpvLg==" NoCertificadoSAT="00001000000509846663" SelloSAT="DCKe8Vx2pKnQryqbwV/5Qyi4khOxoswzGWaBZD/8KDWXh2tnODvE9rshX3p8CRdM+5geIzC87yhOyhFVLtez+1hlkrbTnPMHqwoXt1jSJ8sHVVvW9Xp4ic0EEHfVIaeERIi0y8Uq6K7KpHJj6XK8yOI153OOIwXIy82Rts/Cq5LJpF/pOQza1r+d/7x02IJsnAIj8S33RYXbaNGNmYvQlUJORSvpVXM1o6bEZloMUwtpQupOaRxe3MGlBAoNN/ivSj3N7CJWBDuzTvNSMJJtAQd6e1uPNT2WoL7IKW1Ba/T5a4w8yRoC3Mc3iBKDXgDPUBQXa53eLvSEnP1na40PvQ==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        