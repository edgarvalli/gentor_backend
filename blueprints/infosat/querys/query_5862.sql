
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '2332e0c6-d20a-437a-b46b-c48e62b3f3d3')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-07-13T17:09:13','A','5862','2332e0c6-d20a-437a-b46b-c48e62b3f3d3','TES1602126M1','2332e0c6-d20a-437a-b46b-c48e62b3f3d3.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" Version="3.3" Serie="A" Folio="5862" Fecha="2022-07-13T17:07:17" FormaPago="99" MetodoPago="PPD" SubTotal="1575.00" Total="1827.00" Moneda="MXN" TipoCambio="1" TipoDeComprobante="I" LugarExpedicion="66050" NoCertificado="00001000000504116893" Certificado="MIIGMDCCBBigAwIBAgIUMDAwMDEwMDAwMDA1MDQxMTY4OTMwDQYJKoZIhvcNAQELBQAwggGEMSAwHgYDVQQDDBdBVVRPUklEQUQgQ0VSVElGSUNBRE9SQTEuMCwGA1UECgwlU0VSVklDSU8gREUgQURNSU5JU1RSQUNJT04gVFJJQlVUQVJJQTEaMBgGA1UECwwRU0FULUlFUyBBdXRob3JpdHkxKjAoBgkqhkiG9w0BCQEWG2NvbnRhY3RvLnRlY25pY29Ac2F0LmdvYi5teDEmMCQGA1UECQwdQVYuIEhJREFMR08gNzcsIENPTC4gR1VFUlJFUk8xDjAMBgNVBBEMBTA2MzAwMQswCQYDVQQGEwJNWDEZMBcGA1UECAwQQ0lVREFEIERFIE1FWElDTzETMBEGA1UEBwwKQ1VBVUhURU1PQzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMVwwWgYJKoZIhvcNAQkCE01yZXNwb25zYWJsZTogQURNSU5JU1RSQUNJT04gQ0VOVFJBTCBERSBTRVJWSUNJT1MgVFJJQlVUQVJJT1MgQUwgQ09OVFJJQlVZRU5URTAeFw0yMDA2MDMyMjI2MjNaFw0yNDA2MDMyMjI2MjNaMIH+MS4wLAYDVQQDEyVUQUxMRVIgRVNQRUNJQUxJU1RBIFNJTVNBTUVYIFNBIERFIENWMS4wLAYDVQQpEyVUQUxMRVIgRVNQRUNJQUxJU1RBIFNJTVNBTUVYIFNBIERFIENWMS4wLAYDVQQKEyVUQUxMRVIgRVNQRUNJQUxJU1RBIFNJTVNBTUVYIFNBIERFIENWMSUwIwYDVQQtExxURVMxNjAyMTI2TTEgLyBQSU1MNTcwMzA2OUY0MR4wHAYDVQQFExUgLyBQSU1MNTcwMzA2TUNITlJaMDQxJTAjBgNVBAsTHFRBTExFUiBFU1BFQ0lBTElTVEEgU0lNU0FNRVgwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCzL1nIuD3rk24KaZxjl0jn0xxC6Wrk8CMkFs8N5sWshLXe9PRB5JA2mZICJ7+bkR+vKI/XYKECLu5ef8UX+3ZqOCOF2nebF0e9FNA85v9tMkXKZ+07qHQ/t/tTttC5Nk1WG8i8L9AUN8OJwGzvdmOcWy72WEoGzVg3aGmSZM9Z7lPElO1HGjCHTdtQ67BIhwdXPjevtEbJpuU5bRkSFhPp52Fz5636s01qA++yMH+tna4QhQP2Ca/12X6gxB8DT4yL1HP/P2P4vv9ZtvFl3rLRu6jWr/8rPRKqqdKz2/4suIsXjSPzIAZ4yOwCCNMS4GjkCrIMMIQIoZNP1IjMazw3AgMBAAGjHTAbMAwGA1UdEwEB/wQCMAAwCwYDVR0PBAQDAgbAMA0GCSqGSIb3DQEBCwUAA4ICAQC+U+nVguthHrmIXz8nnsNRJLTjaZuSMC2no7cvFKxirUubxRv1KSI/OxBfU/TWt+ic64cgKIFa18uhAdwZ0Jyad1YCTwuuEYIV8OJw0iMyABXHIx4a/XwRw/OHi392eZvVhVp7kG2D5Maa+uULSbzbMTYwAyPVsIKX0eHn74FAE7RI5ju3i/oMvSm+IGRqmndkT+JzBxcOxbk9rvwhcbNpiSqP1Z89zPgoVj/pB8cDNbUbZiKRSa2EN/5B6cQW46m/xgrbDJGUhnsgnA8o55FcKnq60/5634oI25LUT5PTBN/njr+c5pVRWfWmx72UEICwV2Ui+FddW3Zg7h+objX1y+H1VEExDmoCpGeQ73xcMWkUll8yJ2WRQthyY53msDzQRLQIuxODrzC4zGseuS3QI98AoszXxPbRvkZ/gPz9KyesV6LCcCDbXKU2SpMEZ1atavNO37tPqiAUSwVOwQw6iHEazyzjeYJrruJ2xKb5aVy2ul4p9hy88y7b3RLSw4M9NtamOl4LwT7KAszeIewvRl+IbHAg9vSDPqR6WTSm/bQgHbIqnxdWl1K1BW6Y2bmzvEPbGGN1+SNJggaegVpA1ii7/0fYrwuUPA5LcgB63XgMBRUkN/0UCJtmaju7pCxM33SQTEHCoZi4BXFWnTQlg61SWMPxXJKGBNuv3wUOSw==" Sello="RBZyDeOhkFB0taTn+CVl75p1C/YjMmZE7VrcxgtsXeFuECxvvdZZyie0Po176AZKJSzXPMvt/YZMP0G3AeKi+rwASLj1c8ShpPoDZSb5n03WQ5cXKL8d6V3efG+Dio5COVv/5NHZ4yaiNDNN0QEpVld+fMKRfVsFEmDEbFLnuHi1P4FsdCjNtEMjicjBgsNSPzc+9VvOOPQLCTgB//taRTPN0eS2fBSlm4QKdzMJCB1QixF/xed+hsPIoGOTpEyM/oCejJ8yRdEUHU+wlTRZqmAfZ3VvzxWnzycgahJUvwq+BVcHUri4I2G7MCMhZwE5nQ55BXdm3Euy0qKbndwBLQ==">  <cfdi:Emisor Rfc="TES1602126M1" Nombre="TALLER ESPECIALISTA SIMSAMEX SA DE CV" RegimenFiscal="601"/>  <cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL SA DE CV" UsoCFDI="G03"/>  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="25101500" NoIdentificacion="919307" Cantidad="1.00" ClaveUnidad="H87" Unidad="Piezas" Descripcion="EMPAQUE DE MULTIPLE ADM-FORD ARGENTINO HH." ValorUnitario="90.00" Importe="90.00">    <cfdi:Impuestos>      <cfdi:Traslados>        <cfdi:Traslado Base="90.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="14.40" />      </cfdi:Traslados>    </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="25101500" NoIdentificacion="918452" Cantidad="1.00" ClaveUnidad="H87" Unidad="Piezas" Descripcion="SENSOR MAPFF HH." ValorUnitario="1485.00" Importe="1485.00">    <cfdi:Impuestos>      <cfdi:Traslados>        <cfdi:Traslado Base="1485.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="237.60" />      </cfdi:Traslados>    </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="252.00">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="252.00"/>    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="2332e0c6-d20a-437a-b46b-c48e62b3f3d3" RfcProvCertif="SNF171020F3A" FechaTimbrado="2022-07-13T17:09:13" SelloCFD="RBZyDeOhkFB0taTn+CVl75p1C/YjMmZE7VrcxgtsXeFuECxvvdZZyie0Po176AZKJSzXPMvt/YZMP0G3AeKi+rwASLj1c8ShpPoDZSb5n03WQ5cXKL8d6V3efG+Dio5COVv/5NHZ4yaiNDNN0QEpVld+fMKRfVsFEmDEbFLnuHi1P4FsdCjNtEMjicjBgsNSPzc+9VvOOPQLCTgB//taRTPN0eS2fBSlm4QKdzMJCB1QixF/xed+hsPIoGOTpEyM/oCejJ8yRdEUHU+wlTRZqmAfZ3VvzxWnzycgahJUvwq+BVcHUri4I2G7MCMhZwE5nQ55BXdm3Euy0qKbndwBLQ==" NoCertificadoSAT="00001000000414211380" SelloSAT="p6xvx869uwsym8x06+o0KJMcpp3qQEl2gKMKV5+ByIokKSVDyDEqAgsihJ0U1XpqYy/AcUvFdMaw9tKwdLiLVmB1Oj4RWQ4IB9K0vZuxyMc+Yr1tWS7yYtuMXNhWslV5OSFAk1qS4JS3L2MpB6OMvHzDLl/n/CpTSz6i1whtOedZ16zxhha/93JB4ddKWzPeCD141dpjoSMxu4Y7zWNnTGi5fLLnedhIrT6ieb/mFdDB/Tk8KGYQECBzvUIUXgZrLZOmAZQ7OpdpnHZicl+ilyzCoA8Ve9nn1jALTH08+K3pKuG7QTtWR8n4KezTeK7hn/FHtj+XmXr81vyFsIAo5Q=="/>  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        