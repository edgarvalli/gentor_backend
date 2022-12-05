
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like 'BEFC4278-E4E4-4541-BA56-7611BC55202E')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-11T09:54:37','FASE','2550','BEFC4278-E4E4-4541-BA56-7611BC55202E','SEI920618TC5','BEFC4278-E4E4-4541-BA56-7611BC55202E.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASE" Folio="2550" Fecha="2022-11-10T09:49:31" FormaPago="99" CondicionesDePago="15 d�as de Cr�dito" SubTotal="12840000.00" Moneda="MXN" Total="14894400.00" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504894993" Certificado="MIIGKDCCBBCgAwIBAgIUMDAwMDEwMDAwMDA1MDQ4OTQ5OTMwDQYJKoZIhvcNAQELBQAwggGEMSAwHgYDVQQDDBdBVVRPUklEQUQgQ0VSVElGSUNBRE9SQTEuMCwGA1UECgwlU0VSVklDSU8gREUgQURNSU5JU1RSQUNJT04gVFJJQlVUQVJJQTEaMBgGA1UECwwRU0FULUlFUyBBdXRob3JpdHkxKjAoBgkqhkiG9w0BCQEWG2NvbnRhY3RvLnRlY25pY29Ac2F0LmdvYi5teDEmMCQGA1UECQwdQVYuIEhJREFMR08gNzcsIENPTC4gR1VFUlJFUk8xDjAMBgNVBBEMBTA2MzAwMQswCQYDVQQGEwJNWDEZMBcGA1UECAwQQ0lVREFEIERFIE1FWElDTzETMBEGA1UEBwwKQ1VBVUhURU1PQzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMVwwWgYJKoZIhvcNAQkCE01yZXNwb25zYWJsZTogQURNSU5JU1RSQUNJT04gQ0VOVFJBTCBERSBTRVJWSUNJT1MgVFJJQlVUQVJJT1MgQUwgQ09OVFJJQlVZRU5URTAeFw0yMDA4MzAyMTMzNDFaFw0yNDA4MzAyMTMzNDFaMIH2MTMwMQYDVQQDEypTSVNURU1BUyBERSBFTkVSR0lBIElOVEVSTkFDSU9OQUwgU0EgREUgQ1YxMzAxBgNVBCkTKlNJU1RFTUFTIERFIEVORVJHSUEgSU5URVJOQUNJT05BTCBTQSBERSBDVjEzMDEGA1UEChMqU0lTVEVNQVMgREUgRU5FUkdJQSBJTlRFUk5BQ0lPTkFMIFNBIERFIENWMSUwIwYDVQQtExxTRUk5MjA2MThUQzUgLyBHQUhMNzMwNjI3MlQ1MR4wHAYDVQQFExUgLyBHQUhMNzMwNjI3SE5MUlJSMDAxDjAMBgNVBAsTBVNFSVNBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApDPujflJg/bV3wV6DIbK4ElcJa7XUo0XE7Le1sPKsjOqEY92hQnVWG/QqUDsH6c2lVK1lcQD+EpAw/j3kfctlWBOxkcykT4dUdSTnHaw0i3pLMyKHmhYSzq2usEr7ha1KNLgZ233dIVIUSkl6Mc6BnrXhCN8FCjkIrUsVQQ6oI6AeKEbtfYwhYFZm/JL1ulWYKPVsT81EyZ+kD5xA5DrlTNfzzxcHWx74D4DSsH3aYtR6CjIKCPG5RUlpnGhJq+8oAfYVYNfDhkNv4mECB5ktj/M0SUWXiMyAh90qYHLxdT8aWRJCtXTFJHQeGAW+R+sQG3J2sPN/lseOQrtBGoOdwIDAQABox0wGzAMBgNVHRMBAf8EAjAAMAsGA1UdDwQEAwIGwDANBgkqhkiG9w0BAQsFAAOCAgEABC2NC2pMLCFyCJ5oKfAQOgJ+rlFD8Fl8cOZE5E2UgvTTdPHiGKHWUPr+wCentYKB7xA0eVjVpDy3FFiBI20puJSRo4GD7a17CO3OgY0heNRYPMmbTwow37JPGgScHIoB57wNIO36On9djPqcEu7kXS2v54MbW0bQcozZQmq5OhC74VeLmUH/IvIaaw/MLAkur06ewu3mFX3cCvbRMuOFuPgWprBMlKKX0QEkWb3qlNqUvQay9JTICeH9UYJrn1yelnW6NCRzKfGkJA7rX8MgffUSy9uSLq2HYelf3GGxc/nZnAFxgzyqEhx8KXg9PamGM7EcEDfEPsx9YiGNxJlJMeMuQeiNegSX6+XPzxkT7HXOfP32lTz+WTGDIdoj9glK8G4oUgFDQQptlhX4QnY0pW1e7wFTBggXoECSUdCcQITiiFMKLZz/OQTN1c/MBF3pewZQ6aoX5fSBTGQ61CsT/iQvdM8pKpc88fowq7A1GucwNyJsZqWIUIRNK/ICRGP7H43PogoaT363nbx9HkCQDORnCn3rTxYdhViXx6JAJLDdH8spK6TULa3SojLG3+gczaDPhmXDxTogpk+PmZpt5t8EJJjqDUnUzitFUw6u+KeJUe2R/Qsw/4RsPsFCcwbRsIdfmtOa0/Exq+JeMgk5aMC+8ZDzrekEE4KqaQXkkIU=" Sello="JC2aJfwnHrJNuTiJQT0nrjiqsshBNq7lmumKlNYPJIFj3TsKLE2zYrdSRg4Xsqd70FWU4aEhL6kbR/pMmtGsiHMtI6RlUy6ehDxfF+4Owe68kmSsW5jJX/vbIj4R8aNpVmN/3UTuIiz7//CbtX1kIB1QAgEiTyQnkyFh5PdwmBgFfryrUQABBnjsG4cqR/kI+PF/2meMgXkN5ULGGNvQG7tW6Y+09rN9Yzftxo1U5WiVoDDY5DpqhNwDb5U5hbXj9Vw/ptAr2U+OhR8Mo2LmHWvF/kpGfv3D8nOGd1GPhU+ZRm9OFTY41xbbzMeHpqRNNkBKO7eI8lcO2fLhhLCu7g==">  <cfdi:Emisor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="PPA4310222S3" Nombre="PRODUCTORA DE PAPEL, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="1350000.00" Importe="1350000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1350000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="216000.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="1800000.00" Importe="1800000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1800000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="288000.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="900000.00" Importe="900000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="900000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="144000.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="1680000.00" Importe="1680000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1680000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="268800.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="1260000.00" Importe="1260000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1260000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="201600.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="630000.00" Importe="630000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="630000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="100800.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="840000.00" Importe="840000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="840000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="134400.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="1410000.00" Importe="1410000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1410000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="225600.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="1380000.00" Importe="1380000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1380000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="220800.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROS_SERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="OTROS SERVICIOS" ValorUnitario="1590000.00" Importe="1590000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1590000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="254400.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="2054400.00">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2054400.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="BEFC4278-E4E4-4541-BA56-7611BC55202E" FechaTimbrado="2022-11-11T09:54:37" RfcProvCertif="SCD110105654" SelloCFD="JC2aJfwnHrJNuTiJQT0nrjiqsshBNq7lmumKlNYPJIFj3TsKLE2zYrdSRg4Xsqd70FWU4aEhL6kbR/pMmtGsiHMtI6RlUy6ehDxfF+4Owe68kmSsW5jJX/vbIj4R8aNpVmN/3UTuIiz7//CbtX1kIB1QAgEiTyQnkyFh5PdwmBgFfryrUQABBnjsG4cqR/kI+PF/2meMgXkN5ULGGNvQG7tW6Y+09rN9Yzftxo1U5WiVoDDY5DpqhNwDb5U5hbXj9Vw/ptAr2U+OhR8Mo2LmHWvF/kpGfv3D8nOGd1GPhU+ZRm9OFTY41xbbzMeHpqRNNkBKO7eI8lcO2fLhhLCu7g==" NoCertificadoSAT="00001000000502000436" SelloSAT="Qdh1eTYhKbeYXfClMhhD42pkx3zee7OsP3aW1kJRDhGbUAbl/ALRm8wVv1hJrj+hM5jcgy4aZnqIKvspcebXzjevI1EgiDyLhfM3YZ8AEORX6bOB1Avz1Z6qSZjxNGttQdVUySYYmeA8TgeYcZ/1LEQZVE87RbI/0AdjMfBMcs5pH9mdvxvVPsjM7q6tU0Ox6TwaYukHgL+QDlRpOA+LKle5FChcClk+PI7NXUtE3v50PufjC9laM7C8ggdwuyZlExHtHqiI8SaNTMHaXSDx8O4Ewb5NSNUqhiOz7AgGtcqE8BQ2RryV0KbQjXUA58f1dVl6ovTiYsiW3vL8rAYqvA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        