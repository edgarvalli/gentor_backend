
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '8a1181f3-a2bd-4b2b-ad97-d0b1f52552d1')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-17T10:41:22','A','716','8a1181f3-a2bd-4b2b-ad97-d0b1f52552d1','','8a1181f3-a2bd-4b2b-ad97-d0b1f52552d1.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cfdi="http://www.sat.gob.mx/cfd/4" xmlns:implocal="http://www.sat.gob.mx/implocal" xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/implocal http://www.sat.gob.mx/sitio_internet/cfd/implocal/implocal.xsd" Version="4.0" NoCertificado="00001000000504115995" Exportacion="01" LugarExpedicion="64410" MetodoPago="PPD" Certificado="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" TipoDeComprobante="I" FormaPago="99" Folio="716" Moneda="MXN" Serie="A" Fecha="2022-08-17T05:41:20" Total="1229.6" SubTotal="1060" Sello="ScL15ttklgXg33hZ7jUPsfUtFm7Aql0RScGm9vrSS4YOT5TaSrzoAORzfVZcJ7Ce6pkzBS5ow+pcia8p2NDKWYp0q2wWJ380nRuY5J8p0yg8rU8CcT18XGrfitV4QJKxw1+QUTuKVR8jYtkgwvHuSTEQmj4ujc5fArSWha64LWOEzIWXYRdrlhwhTUjJO9JJB0CMiP3pIoFj6wFbzGMd+2vQX3ImiD3iUGedBh+9Dnvu50hlkaLepoYpiYtu2kl//ePZE7E3oSE+bpfmm3RfRrA9D6DkBr4ZDTLz6TU0GYqsqrXicFmugO6d8prEaJEP3v8Rmdp7SENtsA0GqxcDBA==">  <cfdi:Emisor RegimenFiscal="601" Nombre="ELECTRIC SHOCK" Rfc="ESH2002074Q3"/>  <cfdi:Receptor UsoCFDI="G03" Nombre="SSNL SERVICIOS SUSTENTABLES NL" Rfc="BNL020412HB8" RegimenFiscalReceptor="601" DomicilioFiscalReceptor="64000"/>  <cfdi:Conceptos>    <cfdi:Concepto NoIdentificacion="L-CTX14-BS" ClaveProdServ="26111707" Descripcion="L-CTX14-BS" ClaveUnidad="H87" ObjetoImp="02" ValorUnitario="1060" Cantidad="1" Importe="1060.000000">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado TipoFactor="Tasa" TasaOCuota="0.160000" Impuesto="002" Base="1060.000000" Importe="169.6"/>        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="169.6">    <cfdi:Traslados>      <cfdi:Traslado TipoFactor="Tasa" TasaOCuota="0.160000" Impuesto="002" Base="1060" Importe="169.60"/>    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="8a1181f3-a2bd-4b2b-ad97-d0b1f52552d1" FechaTimbrado="2022-08-17T10:41:22" RfcProvCertif="LSO1306189R5" SelloCFD="ScL15ttklgXg33hZ7jUPsfUtFm7Aql0RScGm9vrSS4YOT5TaSrzoAORzfVZcJ7Ce6pkzBS5ow+pcia8p2NDKWYp0q2wWJ380nRuY5J8p0yg8rU8CcT18XGrfitV4QJKxw1+QUTuKVR8jYtkgwvHuSTEQmj4ujc5fArSWha64LWOEzIWXYRdrlhwhTUjJO9JJB0CMiP3pIoFj6wFbzGMd+2vQX3ImiD3iUGedBh+9Dnvu50hlkaLepoYpiYtu2kl//ePZE7E3oSE+bpfmm3RfRrA9D6DkBr4ZDTLz6TU0GYqsqrXicFmugO6d8prEaJEP3v8Rmdp7SENtsA0GqxcDBA==" NoCertificadoSAT="00001000000509846663" SelloSAT="MqlkQDd/M9TDHgL0wb7rn3te9WdwfCRzmpl+pRx/p2TYKpTDEoRO61USd5nLwp2m+MjENt/b+MR/fTqYvx3PO0yLhMJmZX2K1jNNapBKdD/pJKG5usKZvduNWVgbs2TkY+vvGfFimowaF+VqhS3bDOtLeteCc9YA8aRCwiB6XSFm8En4/ywwm7GCB+k3kjNcnCWFV2vjCvTPNTuh/2VbmS1O5iiyv8V9SLhWnA631NwGvVDvwK3crDnZmZWmM9zLl67rpnV723ZJC1FcaWd7VsI5oTtInkRaimCN+vguqaVMXlcz+4CgjHz/hPfUEj+cG2UZp6c7o7sU+jBvNqSfwQ=="/>  </cfdi:Complemento>  <cfdi:Addenda>    <addenda xmlns:avz="https://app.avanttia.com/addendaschema">      <avz:avz>        <comment>ORDEN DE COMPRA 3795</comment>      </avz:avz>    </addenda>    <sp:satpdf xmlns:sp="https://satpdf.com/addenda">      <sp:blocks position="bottom">        <sp:text>**COMENTARIOS:** ORDEN DE COMPRA 3795</sp:text>      </sp:blocks>    </sp:satpdf>  </cfdi:Addenda></cfdi:Comprobante>')
                END
            END
        