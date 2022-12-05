
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like '6CAD180E-F91C-C54F-AE1E-EB2BBC4E43AC')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-29T12:09:47','FAGS','152','6CAD180E-F91C-C54F-AE1E-EB2BBC4E43AC','GSE9212163I9','6CAD180E-F91C-C54F-AE1E-EB2BBC4E43AC.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FAGS" Folio="152" Fecha="2022-08-29T12:04:44" FormaPago="99" SubTotal="2373639.16" Moneda="MXN" Total="2753421.43" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000505838474" Certificado="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" Sello="LWMZ9Lwi4gTP9rIwLAaTmnuFvXsB5DBgt+Jw8fVVY2aPfcmd7yU6Tx7SfZef0/VGHPJ0PjhU5obRpRjggVz8mjUuJb2fc2W+GpZ1dbm/ABHQAiLXGGv2yJvgT1TH7Rd+aqyFW8fWQrQz8ZEU4e9z28mfKI3nW6Ites7e7fs7G8eXOwqh8+Ey9kR2d5KXqLFaYfpxfazVjGIKDfaz/sL+2UmTYVfdelK8vih1JM/xwp+IDfSZkXUWOOnm3LX2kDajW/LrpOo7CCbg2wPxPqrAkgoVrAAPE7rigDhkB2UBD/D+IkIkr9iiOHkoEcI62l1JiUKix9Gd/6d3syWEZP3NZQ==">  <cfdi:Emisor Rfc="GSE9212163I9" Nombre="GENTOR SERVICIOS, S.A. DE C.V." RegimenFiscal="623" />  <cfdi:Receptor Rfc="GEN760712EM0" Nombre="GENTOR, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="80161504" NoIdentificacion="SERVICIOSFIL" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERV ADMINISTRATIVOS ESPECIALIZADOS" ValorUnitario="2373639.16" Importe="2373639.16">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2373639.16" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="379782.27" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="379782.27">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="379782.27" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="6CAD180E-F91C-C54F-AE1E-EB2BBC4E43AC" FechaTimbrado="2022-08-29T12:09:47" RfcProvCertif="SCD110105654" SelloCFD="LWMZ9Lwi4gTP9rIwLAaTmnuFvXsB5DBgt+Jw8fVVY2aPfcmd7yU6Tx7SfZef0/VGHPJ0PjhU5obRpRjggVz8mjUuJb2fc2W+GpZ1dbm/ABHQAiLXGGv2yJvgT1TH7Rd+aqyFW8fWQrQz8ZEU4e9z28mfKI3nW6Ites7e7fs7G8eXOwqh8+Ey9kR2d5KXqLFaYfpxfazVjGIKDfaz/sL+2UmTYVfdelK8vih1JM/xwp+IDfSZkXUWOOnm3LX2kDajW/LrpOo7CCbg2wPxPqrAkgoVrAAPE7rigDhkB2UBD/D+IkIkr9iiOHkoEcI62l1JiUKix9Gd/6d3syWEZP3NZQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="q3fjN5XibpE7QsG82svQUDI2ooi6n95x2nNW7d7/HwjWfBZPZnW5VNiZLBWXOlSNQoNQc4ymZTPYrUYXZqQ/eecDJRzzXR2WcpD8nBMZwN4q7Ho4sQCiq5xkrG8b8HtfVGyI+C9tRwE+1b2oMwMeYe+2NltyVoAejA0oQK1U0sAgpDycuta8Am2OnxbUP0w90t2UQdsnq2OJT6YL1TNWwSdKPEHJ2EKgzBU8hXS9EiWAdfPCmNJXBAvG/HWkWdoEvyHCoc75gpOL7/ni0azN9qN0sYPa+l72jt+TDonV0ngDYWvD2kAXjjRufqVM6NjmVaQccraHO8J5xA5mMIuARw==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        