
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like '68EE42E1-2126-774A-97E1-C0243D8BA09B')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-28T17:23:48','FAGS','247','68EE42E1-2126-774A-97E1-C0243D8BA09B','GSE9212163I9','68EE42E1-2126-774A-97E1-C0243D8BA09B.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FAGS" Folio="247" Fecha="2022-09-28T17:18:44" FormaPago="99" SubTotal="123970.23" Moneda="MXN" Total="143805.47" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000505838474" Certificado="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" Sello="U9PGhpGw8g1fcy9K9wSSVXQozhg94CyIDfiC7l1eUpWd7O0AIeE8IMp1llmRn9stezv/RQNh2mq3NuhIAfYJZL4aKcRvapn33hFMN8mWBCHubHPp9PjsyllbTE3UKataJ9f/0z31G9VHAFmQIjexs4fibch8ZtzBbeii2sr1vbXfVqS5ZsM/wrsENl4lKaH5IUdmj/vL9higEvrNhtFPW8WVLbEL13S73G3JaMMapmodSfig8Qw21XnoShpTVWNGvBG8pMmGE1FQYN/a2o6H7vGXD4rxyB4x6IQjnp57+g2Y6wQXjsexVQHyw2//wA2wzSbmateUxYzMq9i94SvLZg==">  <cfdi:Emisor Rfc="GSE9212163I9" Nombre="GENTOR SERVICIOS, S.A. DE C.V." RegimenFiscal="623" />  <cfdi:Receptor Rfc="LOP191204CD6" Nombre="LAND OPERATION, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="80161504" NoIdentificacion="SERVICIOSFIL" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERV ADMINISTRATIVOS ESPECIALIZADOS" ValorUnitario="123970.23" Importe="123970.23">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="123970.23" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="19835.24" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="19835.24">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="19835.24" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="68EE42E1-2126-774A-97E1-C0243D8BA09B" FechaTimbrado="2022-09-28T17:23:48" RfcProvCertif="SCD110105654" SelloCFD="U9PGhpGw8g1fcy9K9wSSVXQozhg94CyIDfiC7l1eUpWd7O0AIeE8IMp1llmRn9stezv/RQNh2mq3NuhIAfYJZL4aKcRvapn33hFMN8mWBCHubHPp9PjsyllbTE3UKataJ9f/0z31G9VHAFmQIjexs4fibch8ZtzBbeii2sr1vbXfVqS5ZsM/wrsENl4lKaH5IUdmj/vL9higEvrNhtFPW8WVLbEL13S73G3JaMMapmodSfig8Qw21XnoShpTVWNGvBG8pMmGE1FQYN/a2o6H7vGXD4rxyB4x6IQjnp57+g2Y6wQXjsexVQHyw2//wA2wzSbmateUxYzMq9i94SvLZg==" NoCertificadoSAT="00001000000502000436" SelloSAT="kn4tqzmqrvPEY0m6qMdeI0IS64QStkOF/9KIuyQ+ISr8KMlhOEV/8y797r/AViNZCTY2ugp0A2OsnYD5FH8O3u1RpYVlfrOJMtKbrZifoXDpFwB80LdbWQAppmTOXf9nFUUWAdPLtK5S7MloDo50o8MDdzNE/hlX5zur+PpX5KLQrSYob5of1IAeDQ8i21LdWe6+O2tE9woPjU0xOF8twk9ST+UlbrzaIvUoMoe21CD61sCQXfWqlTjo+LuDAI1CWjmpnLm/Wq+KdJCB7PPX8xMh8G+QTn7JI/c5UFCk1Yg5+8T9RHKAAXwMO40UWw2TEk19wIGCJtg+YYiI8O/tKQ==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        