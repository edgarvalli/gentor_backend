
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'FFF425A3-11C9-E74E-A58D-A3400C68F005')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-10T19:51:08','FABNMAN','17','FFF425A3-11C9-E74E-A58D-A3400C68F005','BNL020412HB8','FFF425A3-11C9-E74E-A58D-A3400C68F005.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FABNMAN" Folio="17" Fecha="2022-11-10T19:50:08" FormaPago="99" CondicionesDePago="30 DIAS" SubTotal="1050052.00" Moneda="MXN" Total="1218060.32" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504293681" Certificado="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" Sello="g4rFY2ls/zp9CgD/aL3l7WA/TwPME3gCe0yWhhbkebXVk7wmCk90KPsYcoShIl6Vsqhgj6To7zNt3zCht4EIl8F5P/lCEIzOIWXYlTwHE+neLMJ5kTqo4I6hTY/S2wSATejsyAFMXE0gyu9K/WNYXHFsDw6e1BgVn7g4ehLmHh9pnzEjEa9xdQz4dhXaUTNiCleaSJPmP8aiX/1NazuSDr8YMNk1Y5gfmt0Ye6FQG25SPOJaZWa8Q5jVN4set3J0xqu5DXV5cUQVgTyE4bhFYWixdgoNuNRMrYsWjg1kzNE3yDuLhAr11RIl8XIkz0YSAwOQpHJjYCdctuGHffxRog==">  <cfdi:Emisor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S DE R. L. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="GEN620601DTA" Nombre="GOBIERNO DEL ESTADO DE NUEVO LEON" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="72151600" NoIdentificacion="SSNLSERV0001" Cantidad="1" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERV. DE TELEFONIA TRADICIONAL" ValorUnitario="1050052.00" Importe="1050052.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1050052.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="168008.32" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="168008.32">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="168008.32" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="FFF425A3-11C9-E74E-A58D-A3400C68F005" FechaTimbrado="2022-11-10T19:51:08" RfcProvCertif="SCD110105654" SelloCFD="g4rFY2ls/zp9CgD/aL3l7WA/TwPME3gCe0yWhhbkebXVk7wmCk90KPsYcoShIl6Vsqhgj6To7zNt3zCht4EIl8F5P/lCEIzOIWXYlTwHE+neLMJ5kTqo4I6hTY/S2wSATejsyAFMXE0gyu9K/WNYXHFsDw6e1BgVn7g4ehLmHh9pnzEjEa9xdQz4dhXaUTNiCleaSJPmP8aiX/1NazuSDr8YMNk1Y5gfmt0Ye6FQG25SPOJaZWa8Q5jVN4set3J0xqu5DXV5cUQVgTyE4bhFYWixdgoNuNRMrYsWjg1kzNE3yDuLhAr11RIl8XIkz0YSAwOQpHJjYCdctuGHffxRog==" NoCertificadoSAT="00001000000502000436" SelloSAT="XRWlcfwZZmfKMlWbCXJRgysNzfSYvD+h6/YFTXa574arfcustexjcTRkseR1Sm3cpjR87OmH3E6fy37UWTZh9DFYHqiMLmwKWursGvL8M5VOpgDRV4s1lyLbzYKD6ZKfPF+v7NYaKxmRIKw9ZivOHb4mUeWWwg1jtk4X2zLu24L8DLc9IJ6kKUelif/tg7TFf/cob4ZKuvEG42C0AZ5LbEkxXkhLPs/BqozCLZP8R/uKUlwTfeS0WnGn6XuFKUIHCmgQMXLisDUebznMvDeIBrD6si46VQEpoQciIvZtXFw1rsv3qLNbzAfFlTatflIL1HO4dB+I+82wTr33OO6Gqw==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        