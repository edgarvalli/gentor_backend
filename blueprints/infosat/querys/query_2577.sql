
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like '4F87579A-A3D8-3C42-B411-16CDFE2252A4')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-28T17:22:54','FASE','2577','4F87579A-A3D8-3C42-B411-16CDFE2252A4','SEI920618TC5','4F87579A-A3D8-3C42-B411-16CDFE2252A4.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd" Version="4.0" Serie="FASE" Folio="2577" Fecha="2022-11-28T17:17:52" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="1012030.02" TipoCambio="19.43" Moneda="USD" Total="1173954.82" MetodoPago="PPD" Exportacion="01" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504894993" Certificado="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" Sello="haheLj0ymlfj7kw15h8EfLRqDXZlc29ocgRS7weWBoA+U1ylVfNiADwI6MWwK9ddviGAlYjKCXmdt5kH60EZuAxO922Q8t+V5cnqDlJSsyN3LuToXFz6CGlXYD4kCh3lcMGstSehKTaPmlGh65+Dk8xDhZ+KQM9WVNv13DBHQSv8cNwVjRTjOlmkD6p2DSd2BkJh/DIv5WilvKbuxObEEpfHBhrkUeeJ0fUR63r7R7YngnJEWU+WeYF7FWPB6IsThwu6a7oK91uPViWvpREDzYlw6hXkLBH9HtIZ9H+WBWCyJNhoes8jzZ433kge0U2NKM2OQfq4Kl8+KcSWYQ1/dQ==">  <cfdi:Emisor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL" RegimenFiscal="601" />  <cfdi:Receptor Rfc="CGV160330JS5" Nombre="CFE GENERACION VI" DomicilioFiscalReceptor="06600" RegimenFiscalReceptor="601" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="26131500" NoIdentificacion="PROYECTREP" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="PROYECTO DE REPOTENCIACI�N" ValorUnitario="1012030.02" Importe="1012030.02" ObjetoImp="02">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1012030.02" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="161924.80" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="161924.80">    <cfdi:Traslados>      <cfdi:Traslado Base="1012030.02" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="161924.80" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="4F87579A-A3D8-3C42-B411-16CDFE2252A4" FechaTimbrado="2022-11-28T17:22:54" RfcProvCertif="SCD110105654" SelloCFD="haheLj0ymlfj7kw15h8EfLRqDXZlc29ocgRS7weWBoA+U1ylVfNiADwI6MWwK9ddviGAlYjKCXmdt5kH60EZuAxO922Q8t+V5cnqDlJSsyN3LuToXFz6CGlXYD4kCh3lcMGstSehKTaPmlGh65+Dk8xDhZ+KQM9WVNv13DBHQSv8cNwVjRTjOlmkD6p2DSd2BkJh/DIv5WilvKbuxObEEpfHBhrkUeeJ0fUR63r7R7YngnJEWU+WeYF7FWPB6IsThwu6a7oK91uPViWvpREDzYlw6hXkLBH9HtIZ9H+WBWCyJNhoes8jzZ433kge0U2NKM2OQfq4Kl8+KcSWYQ1/dQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="AhE0kQIVY5cM7fYdEJ4p67UDl+JymXhdTa+fWFfnIzYpQhHVYtomcQcKToXbjsby+r1TvpBgDVDI52kgjumg7DvYUskN/zV/UQkeR1CZqz1drORYPdiJsFfGYMarJ5TgthFQoZBW5LRXfeZ822IxBl4I9OpHuqBHVo3Zuusc9qX1n+Ver4gL1UjoZ3bj8bUHR0UcW5BxCGdPQ8PaML3lMKgpWKQUzaG1X3dMRrb8LQ0os08WxJ49wnGtaeLuSoFlJrU/ao8Njq6a15AYJ9NuURldm0VDNeJYmoPU1q08DSKD73OSdgJlsQx1SeRt0IKGIn5CklzngTDyEJNcmBx0jg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        