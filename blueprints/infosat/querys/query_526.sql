
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like '12237EDC-72E7-2646-BF2D-ACC13866CAD3')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-27T10:40:43','FDT','526','12237EDC-72E7-2646-BF2D-ACC13866CAD3','DTE940421L42','12237EDC-72E7-2646-BF2D-ACC13866CAD3.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FDT" Folio="526" Fecha="2022-09-27T10:35:41" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="4900.00" Moneda="MXN" Total="5854.52" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000507045060" Certificado="MIIGDTCCA/WgAwIBAgIUMDAwMDEwMDAwMDA1MDcwNDUwNjAwDQYJKoZIhvcNAQELBQAwggGEMSAwHgYDVQQDDBdBVVRPUklEQUQgQ0VSVElGSUNBRE9SQTEuMCwGA1UECgwlU0VSVklDSU8gREUgQURNSU5JU1RSQUNJT04gVFJJQlVUQVJJQTEaMBgGA1UECwwRU0FULUlFUyBBdXRob3JpdHkxKjAoBgkqhkiG9w0BCQEWG2NvbnRhY3RvLnRlY25pY29Ac2F0LmdvYi5teDEmMCQGA1UECQwdQVYuIEhJREFMR08gNzcsIENPTC4gR1VFUlJFUk8xDjAMBgNVBBEMBTA2MzAwMQswCQYDVQQGEwJNWDEZMBcGA1UECAwQQ0lVREFEIERFIE1FWElDTzETMBEGA1UEBwwKQ1VBVUhURU1PQzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMVwwWgYJKoZIhvcNAQkCE01yZXNwb25zYWJsZTogQURNSU5JU1RSQUNJT04gQ0VOVFJBTCBERSBTRVJWSUNJT1MgVFJJQlVUQVJJT1MgQUwgQ09OVFJJQlVZRU5URTAeFw0yMTA0MTAwMDMzMjJaFw0yNTA0MTAwMDMzMjJaMIHbMSowKAYDVQQDEyFET01PUyBURUxFQ09NVU5JQ0FDSU9ORVMgU0EgREUgQ1YxKjAoBgNVBCkTIURPTU9TIFRFTEVDT01VTklDQUNJT05FUyBTQSBERSBDVjEqMCgGA1UEChMhRE9NT1MgVEVMRUNPTVVOSUNBQ0lPTkVTIFNBIERFIENWMSUwIwYDVQQtExxEVEU5NDA0MjFMNDIgLyBSRUNSMjkxMjA4MzQ5MR4wHAYDVQQFExUgLyBSRUNSMjkxMjA4SFNQWVNZMDQxDjAMBgNVBAsTBURPVEVMMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhaUPfPInlKa3iLSu6ASw3OUCUb4cOtT16UsjptsPs6xzWGvz5qfqQWkYRKfgTcfX/IRJIhQq3wih0HIKLuz4CGfERg1iGFHhRnP+15kYv5ptp6lh7ZMm0OnTPAW5N0JfJIUH0kZBy88LLVyrX1LK//8Kb4FCmTkOmdSugdwe2Bp/vFQt9zJxK0z+jUltRYYGYdsYRCAZb1NA24HcB6E4vETtcWJmo9BW8Gh1T+eHHMInTe+AXakupL97OfTFNLyTEc4iI5SBAi+vKIAMs5A3tGHp+pk8hAvsNuEEiXVNqv9ICeXPJjm/m3NN8/OOpyUNQ5TPLKQ0eWQx+68x5cRdFQIDAQABox0wGzAMBgNVHRMBAf8EAjAAMAsGA1UdDwQEAwIGwDANBgkqhkiG9w0BAQsFAAOCAgEAU0HzwzZr2UK8GR3v+sBCs8bUfemZtKtkJKet/0MNgINmjJYuYuNslHjZ2GO6z0/sEQSejh4q2CSf22EnQFKU1iQ7g3zxUULV4rpCxpk5Rppn1NsRukHhGjjcFxwT/Xql1UHCpZIYqtoCmgW9wYMH+gLZr5Bl69g8EnuHyUgZJGJ5XLBAHCxyscLqqzD4Nqh0xpL7XYgHdxgTzkyWQ3jO1BfPZ9DuvFaSRT4holrrQ1+rld2ZaBTryY7upSA+PnHJDy3hcJntCXpdn6u7lbAKgsPUQFumQ/s17/u7O3zMO681w9+2rfV/toZMDADKeE2VY5Ttd/pt+CHvlA0nOgnW2XNcVnQVpKSuGz4BNi2DGArBhMos0jMQhPL7CFxoI63mVww1MKdhJgA0JJwpOHnDeuQLZfIjXFJl0HkZxg5u/w6bZsEma3ZpH8SfGuIgCyjISiRSCSjoozkxhTMwG5clQkVYy/GurhkvHQurN4gumbhImlUx0+/LX7ndnzMYus3Kwpu3QFPNad7PiOQIad+yBVcDhX1bVfz4YYRLwePtZPhdU3Q8WZGrrh21UGBWplDHVThjh9W5XoIdeO9vuyuPzioUk453B5JpVoEqlPikRaqN2PIr9sPGkRF8yZdLWykS1LeUUd6MeMa+hJh1ETlsQ7uoQ6j0h+nVnRy5LLl+h1M=" Sello="SzFByUXSv5pafm4DWvtIFO/HtHYfZ+MzSCNF+OfTO7/7MAUsfTFlEA5RXn8NcjKPD2gHm5bH1zmwnFgEkmy6jAOXIsMXumMs7vPOda03DQEcBsi7BX6t9yGOrCeG+6tzpIUMiyJAQDIUZ08IU4t0VDrpgibrQZaxRo630glaBjj03/NZgnI2MBcy2Z8K0v2DyWAktMqZBpAkNmnmkbLcGZvgfeEnIz5wwExoIMX3E2ysIobHY5gr8Vpw6YHqLL1OGAepufitzF8+22P7+JFXEpPtbFfz3vXzobbP0jLri2GB0MjPvts62y23r7WxMVbMMpc8r3Y+cy4QI4sV12Q2Tw==">  <cfdi:Emisor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="REAC850422UW3" Nombre="CESAR ANTONIO REYES ALMODOVAR" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="81112100" NoIdentificacion="SERVINT" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="Servicio de Internet" ValorUnitario="4900.00" Importe="4900.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="5047.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="807.52" />          <cfdi:Traslado Base="4900.00" Impuesto="003" TipoFactor="Tasa" TasaOCuota="0.030000" Importe="147.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="954.52">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="807.52" />      <cfdi:Traslado Impuesto="003" TipoFactor="Tasa" TasaOCuota="0.030000" Importe="147.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="12237EDC-72E7-2646-BF2D-ACC13866CAD3" FechaTimbrado="2022-09-27T10:40:43" RfcProvCertif="SCD110105654" SelloCFD="SzFByUXSv5pafm4DWvtIFO/HtHYfZ+MzSCNF+OfTO7/7MAUsfTFlEA5RXn8NcjKPD2gHm5bH1zmwnFgEkmy6jAOXIsMXumMs7vPOda03DQEcBsi7BX6t9yGOrCeG+6tzpIUMiyJAQDIUZ08IU4t0VDrpgibrQZaxRo630glaBjj03/NZgnI2MBcy2Z8K0v2DyWAktMqZBpAkNmnmkbLcGZvgfeEnIz5wwExoIMX3E2ysIobHY5gr8Vpw6YHqLL1OGAepufitzF8+22P7+JFXEpPtbFfz3vXzobbP0jLri2GB0MjPvts62y23r7WxMVbMMpc8r3Y+cy4QI4sV12Q2Tw==" NoCertificadoSAT="00001000000502000436" SelloSAT="CNj1ALTvS1VSHp1+A8hPcZmRRQLNzlKrnu0FoN5flebPOoZczZboaJj1rYtlsiASE23yu9eKjrlQM8ZCrL+Gx0yeePM8dqTzpSPtqLQL9CD3lSGYppUVNThBlScOLdh2pqVscuHOnwqWb8oVBY2s7vgB04GfqRLSCtIT7x46JwlitetEVzfKxEg3SafX4as4YDgFnJPfgM7/rHoPSdnJsiTtN6K9yCDzNTSXeFh+pi2095frpT/XkyAf8OTh9z0wix30NbMAPBiF+nY+h7wBxENNN4Iz8GAHEHPOEQV4KK56I1bD9adHcSSVcw7sy17RlaDYU53ub2/OtXoxAxBQMw==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        