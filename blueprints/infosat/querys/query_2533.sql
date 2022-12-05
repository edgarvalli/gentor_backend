
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like '3E85C8BE-9E2E-EF46-A887-A2E0D2B6EDD8')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-25T12:09:16','FASE','2533','3E85C8BE-9E2E-EF46-A887-A2E0D2B6EDD8','SEI920618TC5','3E85C8BE-9E2E-EF46-A887-A2E0D2B6EDD8.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASE" Folio="2533" Fecha="2022-10-25T12:04:11" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="3162593.81" TipoCambio="20.08" Moneda="USD" Total="3668608.82" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504894993" Certificado="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" Sello="bCxrCD9MX5txvcNu98mGCnBcwbVWD1NaNbnTjNCFALIq41XVre8TbsyGcjYOEysglEaIECfjLhJpv+iYxmMEybcZk1h+0ekAc9wIbLwh/2a122AmAMXTvbN18DBSWWvHCaOQVg0LkTjQ0zDjII5K98SNnxYvEPDXtViLY8FE3e96BXgs9kH4K1ZMzJi0H6oF4rQA5veR+yjEoaW0ZxIBEOd7IzH2/zXqeTd9KXWKALactBPzVr/nvBEgAEABBgbWp8xZZVJCw8WYd/DEHHJaBn1KKL9nahhX/xhyAoe3Knn1rc7DH5KCLXBUDn6Jn77a0ITbsu9T0YPW99rg8ZvvSw==">  <cfdi:Emisor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="CGV160330JS5" Nombre="CFE GENERACI�N VI" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="26131500" NoIdentificacion="PROYECTREP" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="PROYECTO DE REPOTENCIACI�N" ValorUnitario="3162593.81" Importe="3162593.81">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="3162593.81" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="506015.01" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="506015.01">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="506015.01" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="3E85C8BE-9E2E-EF46-A887-A2E0D2B6EDD8" FechaTimbrado="2022-10-25T12:09:16" RfcProvCertif="SCD110105654" SelloCFD="bCxrCD9MX5txvcNu98mGCnBcwbVWD1NaNbnTjNCFALIq41XVre8TbsyGcjYOEysglEaIECfjLhJpv+iYxmMEybcZk1h+0ekAc9wIbLwh/2a122AmAMXTvbN18DBSWWvHCaOQVg0LkTjQ0zDjII5K98SNnxYvEPDXtViLY8FE3e96BXgs9kH4K1ZMzJi0H6oF4rQA5veR+yjEoaW0ZxIBEOd7IzH2/zXqeTd9KXWKALactBPzVr/nvBEgAEABBgbWp8xZZVJCw8WYd/DEHHJaBn1KKL9nahhX/xhyAoe3Knn1rc7DH5KCLXBUDn6Jn77a0ITbsu9T0YPW99rg8ZvvSw==" NoCertificadoSAT="00001000000502000436" SelloSAT="CovRf3yJXWYgkBQeGbHyhNeP0dOFMeiEYeBvdvs0qO4kw4yS/sxLBv6WtasPqPy5CYz9J46rjC8Abdjkjtzutwa9PiNJ1RtFAGbDF0OQ732E0RpQysSzliYX4kPWCZb1hpavd5Xk+tamLRWij5wOnQQaA6hZlTbmWp+xCPGxSHZsqkHIgIjEQq6jWvZrUgMGuK+7tt4yQaAYQLXov/kjEaRvTzTdDzLItTmyvB8YsQxTivnekvn7kj3bnX8BYE/mxpgWUmY7NXuBP/d2aujpn6EcSUnml9HFenml5pZDunlrdhQF8ddk1eoHe6wWUsnKPmYDSIIVeXCRc4zZWmRLkQ==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        