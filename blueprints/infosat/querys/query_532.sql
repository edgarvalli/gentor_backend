
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'F0FB7289-726A-B147-BCB5-030074649045')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-27T11:15:21','FDT','532','F0FB7289-726A-B147-BCB5-030074649045','DTE940421L42','F0FB7289-726A-B147-BCB5-030074649045.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FDT" Folio="532" Fecha="2022-09-27T11:10:18" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="5384.62" Moneda="MXN" Total="6246.16" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000507045060" Certificado="MIIGDTCCA/WgAwIBAgIUMDAwMDEwMDAwMDA1MDcwNDUwNjAwDQYJKoZIhvcNAQELBQAwggGEMSAwHgYDVQQDDBdBVVRPUklEQUQgQ0VSVElGSUNBRE9SQTEuMCwGA1UECgwlU0VSVklDSU8gREUgQURNSU5JU1RSQUNJT04gVFJJQlVUQVJJQTEaMBgGA1UECwwRU0FULUlFUyBBdXRob3JpdHkxKjAoBgkqhkiG9w0BCQEWG2NvbnRhY3RvLnRlY25pY29Ac2F0LmdvYi5teDEmMCQGA1UECQwdQVYuIEhJREFMR08gNzcsIENPTC4gR1VFUlJFUk8xDjAMBgNVBBEMBTA2MzAwMQswCQYDVQQGEwJNWDEZMBcGA1UECAwQQ0lVREFEIERFIE1FWElDTzETMBEGA1UEBwwKQ1VBVUhURU1PQzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMVwwWgYJKoZIhvcNAQkCE01yZXNwb25zYWJsZTogQURNSU5JU1RSQUNJT04gQ0VOVFJBTCBERSBTRVJWSUNJT1MgVFJJQlVUQVJJT1MgQUwgQ09OVFJJQlVZRU5URTAeFw0yMTA0MTAwMDMzMjJaFw0yNTA0MTAwMDMzMjJaMIHbMSowKAYDVQQDEyFET01PUyBURUxFQ09NVU5JQ0FDSU9ORVMgU0EgREUgQ1YxKjAoBgNVBCkTIURPTU9TIFRFTEVDT01VTklDQUNJT05FUyBTQSBERSBDVjEqMCgGA1UEChMhRE9NT1MgVEVMRUNPTVVOSUNBQ0lPTkVTIFNBIERFIENWMSUwIwYDVQQtExxEVEU5NDA0MjFMNDIgLyBSRUNSMjkxMjA4MzQ5MR4wHAYDVQQFExUgLyBSRUNSMjkxMjA4SFNQWVNZMDQxDjAMBgNVBAsTBURPVEVMMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhaUPfPInlKa3iLSu6ASw3OUCUb4cOtT16UsjptsPs6xzWGvz5qfqQWkYRKfgTcfX/IRJIhQq3wih0HIKLuz4CGfERg1iGFHhRnP+15kYv5ptp6lh7ZMm0OnTPAW5N0JfJIUH0kZBy88LLVyrX1LK//8Kb4FCmTkOmdSugdwe2Bp/vFQt9zJxK0z+jUltRYYGYdsYRCAZb1NA24HcB6E4vETtcWJmo9BW8Gh1T+eHHMInTe+AXakupL97OfTFNLyTEc4iI5SBAi+vKIAMs5A3tGHp+pk8hAvsNuEEiXVNqv9ICeXPJjm/m3NN8/OOpyUNQ5TPLKQ0eWQx+68x5cRdFQIDAQABox0wGzAMBgNVHRMBAf8EAjAAMAsGA1UdDwQEAwIGwDANBgkqhkiG9w0BAQsFAAOCAgEAU0HzwzZr2UK8GR3v+sBCs8bUfemZtKtkJKet/0MNgINmjJYuYuNslHjZ2GO6z0/sEQSejh4q2CSf22EnQFKU1iQ7g3zxUULV4rpCxpk5Rppn1NsRukHhGjjcFxwT/Xql1UHCpZIYqtoCmgW9wYMH+gLZr5Bl69g8EnuHyUgZJGJ5XLBAHCxyscLqqzD4Nqh0xpL7XYgHdxgTzkyWQ3jO1BfPZ9DuvFaSRT4holrrQ1+rld2ZaBTryY7upSA+PnHJDy3hcJntCXpdn6u7lbAKgsPUQFumQ/s17/u7O3zMO681w9+2rfV/toZMDADKeE2VY5Ttd/pt+CHvlA0nOgnW2XNcVnQVpKSuGz4BNi2DGArBhMos0jMQhPL7CFxoI63mVww1MKdhJgA0JJwpOHnDeuQLZfIjXFJl0HkZxg5u/w6bZsEma3ZpH8SfGuIgCyjISiRSCSjoozkxhTMwG5clQkVYy/GurhkvHQurN4gumbhImlUx0+/LX7ndnzMYus3Kwpu3QFPNad7PiOQIad+yBVcDhX1bVfz4YYRLwePtZPhdU3Q8WZGrrh21UGBWplDHVThjh9W5XoIdeO9vuyuPzioUk453B5JpVoEqlPikRaqN2PIr9sPGkRF8yZdLWykS1LeUUd6MeMa+hJh1ETlsQ7uoQ6j0h+nVnRy5LLl+h1M=" Sello="STF/VKM+2A3Joor7EEUstGkaLMj3rAO+ozrbFhM8AvT4H3rBmIBKhVMoJyfO4KHhL8C5A60J8NC6pzedbuvHWUkB96OmRzrmH4jPIy4gavjAApnRJjqQeIA8fYML5R1G7Bdmfi2WAAsA815gQ/fkvof2K7AfiXLzuSSUChcE91Hxsu2M3GWMgHsacdzM02x5t03co+I4seppTO3HwBN61M0WHvgNANtlSlmN8gnOyvR1OLcdsu2zh9Oe7awtADUr/3aaVYl59S2ZyZUJ89kTQRAoU3mMVTkv8EhAw7y175Wi3884zbHlazNNiC7T98zrtjK8B+iZ7pk0zw/HahqtfA==">  <cfdi:Emisor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="ULM1509029A1" Nombre="UNICO LOGISTICS MEX S DE R.L. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="81112100" NoIdentificacion="SERVINT" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="Servicio de Internet" ValorUnitario="5384.62" Importe="5384.62">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="5384.62" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="861.54" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="861.54">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="861.54" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="F0FB7289-726A-B147-BCB5-030074649045" FechaTimbrado="2022-09-27T11:15:21" RfcProvCertif="SCD110105654" SelloCFD="STF/VKM+2A3Joor7EEUstGkaLMj3rAO+ozrbFhM8AvT4H3rBmIBKhVMoJyfO4KHhL8C5A60J8NC6pzedbuvHWUkB96OmRzrmH4jPIy4gavjAApnRJjqQeIA8fYML5R1G7Bdmfi2WAAsA815gQ/fkvof2K7AfiXLzuSSUChcE91Hxsu2M3GWMgHsacdzM02x5t03co+I4seppTO3HwBN61M0WHvgNANtlSlmN8gnOyvR1OLcdsu2zh9Oe7awtADUr/3aaVYl59S2ZyZUJ89kTQRAoU3mMVTkv8EhAw7y175Wi3884zbHlazNNiC7T98zrtjK8B+iZ7pk0zw/HahqtfA==" NoCertificadoSAT="00001000000502000436" SelloSAT="I9AivjU5QeFEAMy6cStNm6glAn3+ar14B9zXW5OOFUdTpx5jsatqebDOqCoTuoJP3gQx1oHuzcIXdX825ItRY8xhY0mswCcK8PXI8vyABP0Kt7T0xURj9T/OzsuhQV0xa/4vmLFvCcw0kDpn4ytzp9mUK/vYSYSjlzOpikSz+kMNRRYjYPP2IgV3HT5hjYeupSnVGvFlaRtwwMhstrHdnJA7wMNDN+yLLL8X0HKl3QKCJS/hNIhzymngxLNsdenh6WWX7Ei72q0JdOLVGRJ8eO5YAKlXNV2sKiEUq3M7pxL624FxGZfouI/DzOIsVElhTCWFKIfXQzGIpOF37vLt0w==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        