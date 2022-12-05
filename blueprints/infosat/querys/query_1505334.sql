
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like 'FA026083-1FFD-11ED-8E66-47BF21DAE897')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-19T15:35:00','MALEM','1505334','FA026083-1FFD-11ED-8E66-47BF21DAE897','CDR9604236W2','FA026083-1FFD-11ED-8E66-47BF21DAE897.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="MALEM" Folio="1505334" Fecha="2022-08-19T15:32:00" FormaPago="03" Certificado="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" NoCertificado="00001000000505712671" Sello="cDwYLVP2h3Tuu+yGgHlqjZ+5/4hiIsRdg65yQpy7IbRIdYUjR1tn7BWQAXsOfxQ8AvkCGgeIFocMoFWjHpdC9t854v6us0yBHcFPAVk9IFNb3S4Dx1i1WImBNQS5BRAhOD0jz7QX+x3GO8iXFgUMz4uryvIyTdcHBdfr9UvlUc6xF0UrDvakAGvrojj0Zbn8W2LQTl4PIUI7/bscHgUsb51feuLWYokP/NZjHHgltIPJ4+fjzlQtFJBHFQ2x/csQ40BklXkQNIsuF47bzHkjZ+bhedGrUjkZ/zSk1EQB176JhfuVvOFROGGguwfIkIuedcADWF3hRr0PdoMTtwK8Mw==" CondicionesDePago="Contado" SubTotal="8265.53" Moneda="MXN" Total="9588.01" TipoDeComprobante="I" MetodoPago="PUE" LugarExpedicion="67129">  <cfdi:Emisor Rfc="CDR9604236W2" Nombre="CENTRO DE DISTRIBUCION RAGA S. A. DE C. V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL SA DE CV" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="25172502" NoIdentificacion="14961003" Cantidad="4.00" ClaveUnidad="H87" Unidad="NA" Descripcion="195R15C 106/104R TRANSFORCE CV FIRESTONE " ValorUnitario="1893.97" Importe="7575.88">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="7575.88" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1212.14" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="78181500" NoIdentificacion="UI-15-4" Cantidad="1.00" ClaveUnidad="E48" Unidad="NA" Descripcion="PAQUETE DE INSTALACION R15 4 LLANTAS" ValorUnitario="689.65" Importe="689.65">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="689.65" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="110.34" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="1322.48">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1322.48" />    </cfdi:Traslados>  </cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="FA026083-1FFD-11ED-8E66-47BF21DAE897" FechaTimbrado="2022-08-19T15:35:00" SelloCFD="cDwYLVP2h3Tuu+yGgHlqjZ+5/4hiIsRdg65yQpy7IbRIdYUjR1tn7BWQAXsOfxQ8AvkCGgeIFocMoFWjHpdC9t854v6us0yBHcFPAVk9IFNb3S4Dx1i1WImBNQS5BRAhOD0jz7QX+x3GO8iXFgUMz4uryvIyTdcHBdfr9UvlUc6xF0UrDvakAGvrojj0Zbn8W2LQTl4PIUI7/bscHgUsb51feuLWYokP/NZjHHgltIPJ4+fjzlQtFJBHFQ2x/csQ40BklXkQNIsuF47bzHkjZ+bhedGrUjkZ/zSk1EQB176JhfuVvOFROGGguwfIkIuedcADWF3hRr0PdoMTtwK8Mw==" NoCertificadoSAT="00001000000505600468" SelloSAT="ldq0IbzJZd4g+EFW5GSS8OpqsTdwavnRF38U7gyA76opEwxlEkK4yRFvKJ4HWNnoYpuqGM+saGoQauAL+eqbwHshStmjh/eGhmGvghveokHsz/o/elk8YSyYhNieYTqww24Dtk29oBf93vgSqCfGnnE0DOUEryCr/kZmxfSvIOT5alra3VOOwpYGzD8h70t9zmIgq7au5h3n1vhheiJqUl6rS5UmuN7mrr6Od1rTAU8cpx0aipOm9udL5MVqZjZbm2YxVeUpIlCpiq569BJfrBAq4GvNT6X8AoWPFB5SjlSEvs11JOWWXgZscF0nNTYDieVlH42uma4xDK4lDi9Y7w==" RfcProvCertif="EME000602QR9" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        