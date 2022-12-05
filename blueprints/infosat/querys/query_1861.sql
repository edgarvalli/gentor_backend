
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like '6E484DD7-EFDC-4443-898F-22385696B3C1')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-07-11T18:11:24','','1861','6E484DD7-EFDC-4443-898F-22385696B3C1','','6E484DD7-EFDC-4443-898F-22385696B3C1.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Folio="1861" Fecha="2022-07-11T18:11:19" Sello="Vboqk2capYJgvokqmdjNvl7E87qe1+Owf8c7VJsRERaIA1s/YyfUVvROUsATr18R1YcRSF5J4qPkp7Y/PQdC6twz7oPxts0pA9r14wrKCo3XsIwi5sjM0ggzMPNhEOvwJAvuwROYpB3d0EhWoLd2sHxP8qpc3NHTa5o7JqlIpoPL5Cva+0TMvwyTykh8mfvr6siW7d3L+JkHROlGTHMnaxOWnKG2gC0bwkuoqstxxOJTcd70/JljGqnfiXT9N8L6KsHjS9+zhG+dfep8rHk8PmqYiRtUa5d4NmtjgJQXEanKL/EeZNZuiYO60S+WyNVrM3NvECWAA2V0dGfD+bWDNA==" FormaPago="99" NoCertificado="00001000000508945544" Certificado="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" SubTotal="82666.64" Moneda="MXN" Total="95893.30" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="11550">	<cfdi:Emisor RegimenFiscal="601" Rfc="CFR030128L72" Nombre="CONSORCIO FRACER SA DE CV"></cfdi:Emisor><cfdi:Receptor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES SA DE CV" UsoCFDI="G03"></cfdi:Receptor><cfdi:Conceptos>		<cfdi:Concepto ClaveProdServ="80101500" ClaveUnidad="E48" Cantidad="1.00" Unidad="SRV" NoIdentificacion="EAS001" Descripcion="SERVICIOS DE ADMINISTRACION DE NEGOCIOS" ValorUnitario="82666.64" Importe="82666.64"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="82666.64" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="13226.66"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="13226.66"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="13226.66"/></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="1.1" UUID="6E484DD7-EFDC-4443-898F-22385696B3C1" FechaTimbrado="2022-07-11T18:11:24" RfcProvCertif="MAS0810247C0" SelloCFD="Vboqk2capYJgvokqmdjNvl7E87qe1+Owf8c7VJsRERaIA1s/YyfUVvROUsATr18R1YcRSF5J4qPkp7Y/PQdC6twz7oPxts0pA9r14wrKCo3XsIwi5sjM0ggzMPNhEOvwJAvuwROYpB3d0EhWoLd2sHxP8qpc3NHTa5o7JqlIpoPL5Cva+0TMvwyTykh8mfvr6siW7d3L+JkHROlGTHMnaxOWnKG2gC0bwkuoqstxxOJTcd70/JljGqnfiXT9N8L6KsHjS9+zhG+dfep8rHk8PmqYiRtUa5d4NmtjgJQXEanKL/EeZNZuiYO60S+WyNVrM3NvECWAA2V0dGfD+bWDNA==" NoCertificadoSAT="00001000000505142236" SelloSAT="VhOGGw6YGDQPjKSMWt2zPT2EGUWH5VuiYN+kV02kEjZSQrAS9tDknFkUlwWfvUrRflja0to3fZAQx4ajCyiXAc09AdcWY3zuicpMVXiNzsV+EBZRkMVtrfNgy71Fpg0CdFltdBqqQryy7mMw3WpRfMetrT3lAe3mVHBEBiyV8JijvRjOwCw0xqCQt3F4hcVl5YSlD9zJYss3oVSJfOPop1TvYHUZMxOszOtUrDOVCQ1s9M3emEhcxHhd/v/k31PkMvhAy0j9J2IIvj5H6eVNj1omYYk71Agj25+jb1C/PDPWMiNohFjOa/7Ob9N8+Rv+TsKURwYbfNiMO8j50RCXiQ=="/></cfdi:Complemento></cfdi:Comprobante> ')
                END
            END
        