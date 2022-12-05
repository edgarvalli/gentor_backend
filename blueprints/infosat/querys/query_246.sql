
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like '2BE1F23D-B075-0B47-B26F-2ADE134EEEF5')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-28T13:31:44','FAGS','246','2BE1F23D-B075-0B47-B26F-2ADE134EEEF5','GSE9212163I9','2BE1F23D-B075-0B47-B26F-2ADE134EEEF5.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FAGS" Folio="246" Fecha="2022-09-28T13:26:41" FormaPago="03" CondicionesDePago="15 d�as de Cr�dito" SubTotal="108317.92" Moneda="MXN" Total="125648.79" MetodoPago="PUE" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000505838474" Certificado="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" Sello="HyqVmCkWtJA2Ic6Eu5A4TaUcCNzasScvmnnmuHX+Fn4pGL4sDnm6JjpvgPEkzff0RIjcKOrvtamRPGvvBzc/gzgDN2kGhDufcwlOjsukPmjongiZrZRDK8OIGZJ6uUYFj1bpAJyFLS2HlJ6zmN//ZF1GbJ11tkbFvjNcSnYADgvarF7oN8yiynHi+oYeJh0HDWQzEhCkylyzOit/Z6Sq/nkyOpFNAPhzqsgmxNzBd8lMx5DnLfZkLG4PxduDDyjMbsLxs1cV0xuzNfPvFAMgx6+aGFFUHBwaK5kOhWo+dHOe5wfqwojFqFL9/zLQAw2skyexafQgKjoUqTiDr6KbpQ==">  <cfdi:Emisor Rfc="GSE9212163I9" Nombre="GENTOR SERVICIOS, S.A. DE C.V." RegimenFiscal="623" />  <cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="80161504" NoIdentificacion="SERVICIOSFIL" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERV ADMINISTRATIVOS ESPECIALIZADOS" ValorUnitario="108317.92" Importe="108317.92">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="108317.92" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="17330.87" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="17330.87">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="17330.87" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="2BE1F23D-B075-0B47-B26F-2ADE134EEEF5" FechaTimbrado="2022-09-28T13:31:44" RfcProvCertif="SCD110105654" SelloCFD="HyqVmCkWtJA2Ic6Eu5A4TaUcCNzasScvmnnmuHX+Fn4pGL4sDnm6JjpvgPEkzff0RIjcKOrvtamRPGvvBzc/gzgDN2kGhDufcwlOjsukPmjongiZrZRDK8OIGZJ6uUYFj1bpAJyFLS2HlJ6zmN//ZF1GbJ11tkbFvjNcSnYADgvarF7oN8yiynHi+oYeJh0HDWQzEhCkylyzOit/Z6Sq/nkyOpFNAPhzqsgmxNzBd8lMx5DnLfZkLG4PxduDDyjMbsLxs1cV0xuzNfPvFAMgx6+aGFFUHBwaK5kOhWo+dHOe5wfqwojFqFL9/zLQAw2skyexafQgKjoUqTiDr6KbpQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="VKsReyDhn6QrKD7M5Tg9wO2oi1VQZ8igDeRfwuYjrGT02JcTTiN0zYk9df+VA55rrAbAWvlrKpr+XkNEr2j5UtM0WR3pacDF/1wUxpfGiT2iUX8Bs8eVJtG3mDm82jVyZ9xS1YSZb7CUEUbNIez/jO8v1WeBE+j6RfrTH3OSz9GSWp522G6uhLymgo4D4eAnAWhHh2Gu4OlAFiZbR20TyvUnFaXvmdJe+KPRCOia6PKcu8oyZYopwEXOY4L9UozAA+e72xcl1XOYaEKtO3itlxChBiMJChhglOtdCf1RkOqVvZYyWZ+IAEBQf8J8veU0OqfuevN9epPA2ouaGAxDwA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        