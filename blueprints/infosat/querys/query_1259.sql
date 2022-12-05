
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'FBA46FD1-97BB-714E-9355-2172919C84AA')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-30T22:55:43','FACECO','1259','FBA46FD1-97BB-714E-9355-2172919C84AA','RDD101105Q91','FBA46FD1-97BB-714E-9355-2172919C84AA.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd" Version="4.0" Serie="FACECO" Folio="1259" Fecha="2022-11-30T22:50:41" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="600.00" Moneda="MXN" Total="696.00" MetodoPago="PPD" Exportacion="01" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="W1VPgOlBeWJgbeS4pKhluj00cbbsxha4GS9BYbtE5ep9ijgDg4qw9sQ737TrP+2/lVVcbO2ajNMbnZuFx1/wCnyyKtNdgCUe6B/BTw47CzDIhQ2KsOaPENK6qdG8//4ZaTLPEG0M4z2IqWybi5b0QHfTOO9hw9GomSIqqvwTiu7tWOqaruk5ois2AiDFIqWn0Yg2vpNqdR1rpoRp8SJLUQstNivjymVzYgBsQC75IRn4M+Fo/aWo4DXGIbX4nGavuGD+1c01IpDz1UXvX2KFDJTH2hKGPl+7oLCYl1giuTh/BIM59NiVYmxbe/i+1ihP/RPlKl3DyirNoe3T7QJ71w==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES" RegimenFiscal="601" />  <cfdi:Receptor Rfc="RLV010720452" Nombre="RIVERO LINDA VISTA" DomicilioFiscalReceptor="67126" RegimenFiscalReceptor="601" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="600.00" Importe="600.00" ObjetoImp="02">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="600.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="96.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="96.00">    <cfdi:Traslados>      <cfdi:Traslado Base="600.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="96.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="FBA46FD1-97BB-714E-9355-2172919C84AA" FechaTimbrado="2022-11-30T22:55:43" RfcProvCertif="SCD110105654" SelloCFD="W1VPgOlBeWJgbeS4pKhluj00cbbsxha4GS9BYbtE5ep9ijgDg4qw9sQ737TrP+2/lVVcbO2ajNMbnZuFx1/wCnyyKtNdgCUe6B/BTw47CzDIhQ2KsOaPENK6qdG8//4ZaTLPEG0M4z2IqWybi5b0QHfTOO9hw9GomSIqqvwTiu7tWOqaruk5ois2AiDFIqWn0Yg2vpNqdR1rpoRp8SJLUQstNivjymVzYgBsQC75IRn4M+Fo/aWo4DXGIbX4nGavuGD+1c01IpDz1UXvX2KFDJTH2hKGPl+7oLCYl1giuTh/BIM59NiVYmxbe/i+1ihP/RPlKl3DyirNoe3T7QJ71w==" NoCertificadoSAT="00001000000502000436" SelloSAT="o9mpk2YZKmsIW7QC/3xD9d7kHU0Cby4TeH7PGuvLPBYiapo21VYEw6y4U92ycZyW7LZNn9QIdDbFD5kN6SMqid1/VKRILSk8xVfAqcpQPvZwOVnBui6mdpvESW9CtwtuYdKAg/WS6xrDJjz5ptGoM+Wjht69RoTibefOcFrmt88b5BfKxInaryhZ7NTZ5eYVxp8JnZ2I1E+cVz98RqynD1LqiL8XuiaVO2aEYTQ4uyfdVJPjmk+7nosgzfeda2YwL8JhVvGlHUkHlU6RawZBUWwPt2bYZC9QlprTLMo2M1VqvMjjUxFPLQkUDFjTmubmOEOBrny5/Mhx7QK0AfKdLg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        