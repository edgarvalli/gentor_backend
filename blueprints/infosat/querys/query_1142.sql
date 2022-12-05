
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like '3472C1B5-CB78-AE4E-AE15-1BF4A688EDBE')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-31T12:43:17','FACECO','1142','3472C1B5-CB78-AE4E-AE15-1BF4A688EDBE','RDD101105Q91','3472C1B5-CB78-AE4E-AE15-1BF4A688EDBE.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACECO" Folio="1142" Fecha="2022-10-31T12:38:13" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="5300.00" Moneda="MXN" Total="6148.00" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="RHHfmUA01Z9HYaz5ucJbf/2xu0DYGQKbmpgY2L7bm/arEK3FvtHQd3Fnx9vLqrxRTQ07FQQ7+TbFyQkS21pUrzPQXGKPOvtacIb4l6N9lb0k2FUyR6iSLomkqRwFS1yg1ZO1JcqNlSSlx9CS4+EJ/V9QIHKl97MCPZLuRZ1jvR+VhRFUGdpWd3+o/0qlhPGDiy299Q/V1jqPG5mfbhmaW+SxovxrOz/1loDYWKXLlfWyfnHWqr2aIhgK2+57xHwZf+guD7w1oislSJ+7PpzR8HzBoMy3+DjA5WRfhV5VgMyy6PGOWdtBh4FM+GlRNDneXC8JCENMImI/GRnz8oP3nQ==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES, S.A DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="GEN120307G60" Nombre="GENAPRO SA DE CV" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="5300.00" Importe="5300.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="5300.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="848.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="848.00">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="848.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="3472C1B5-CB78-AE4E-AE15-1BF4A688EDBE" FechaTimbrado="2022-10-31T12:43:17" RfcProvCertif="SCD110105654" SelloCFD="RHHfmUA01Z9HYaz5ucJbf/2xu0DYGQKbmpgY2L7bm/arEK3FvtHQd3Fnx9vLqrxRTQ07FQQ7+TbFyQkS21pUrzPQXGKPOvtacIb4l6N9lb0k2FUyR6iSLomkqRwFS1yg1ZO1JcqNlSSlx9CS4+EJ/V9QIHKl97MCPZLuRZ1jvR+VhRFUGdpWd3+o/0qlhPGDiy299Q/V1jqPG5mfbhmaW+SxovxrOz/1loDYWKXLlfWyfnHWqr2aIhgK2+57xHwZf+guD7w1oislSJ+7PpzR8HzBoMy3+DjA5WRfhV5VgMyy6PGOWdtBh4FM+GlRNDneXC8JCENMImI/GRnz8oP3nQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="UPClWr/OPHNKer4SanYfp8+iRlku5C7+H3DBh6//5LViwpfcEt0bSHsSRPL7twPPwf9DH4vq6LsDFILndBxUXtHUREiv2ZwYZeSwEkOJi1YeD1vg7tt/qzNUSvvbQUOFqa8iobDh+FG5ush1nPnOs2XG6H5zKgnQ3HA1xUhiBZX1q3IQInjYFmotMJuHYpyWIxY90UBvVaGtSgIss88p0cnokwvIv7U5nD2ZE5gZ8A6lDQaAJ6tFIhCr/wIMPR/mE7H5GdsPMoIaR+u6sBB3RpzYmzF8VhBvRV047qevpQpjp7luCoqITkcSA90SAi1oweAhd/TzfLCzQIIIDQTEhQ==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        