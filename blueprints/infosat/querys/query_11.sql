
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'CSO200716G27')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [CSO200716G27] WHERE UUID like 'E618FAC1-8316-E347-B9AA-245CB91FE487')
                BEGIN
                    INSERT INTO [CSO200716G27] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-05T20:05:42','FACHP','11','E618FAC1-8316-E347-B9AA-245CB91FE487','CSO200716G27','E618FAC1-8316-E347-B9AA-245CB91FE487.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACHP" Folio="11" Fecha="2022-09-05T20:00:39" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="18033.33" TipoCambio="20.10" Moneda="USD" Total="20918.66" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000505470521" Certificado="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" Sello="bIbpWkNwy1zIlROw5G+GaGSWjVnS+mkVFICQzVQVYZ7Uhx+nLoLsQX6c5X+ZQ/mUGgdhmKaKbXo0y8f2aS8gJjNzqar65msNJ8XP4J5g3OFTGvQaQ5eV+tybXyyaX//PyMjlGJUZumHPMEDJuWPNIDJjra1AKaCeh78m28/Apl6zdAUUb9PTGwC2jIDRCX1lCvSy3NW4qriBGpaw+7BsRMROnig+byR1MfqEpCq8ZP4fri/6dDBzy1ywlb9vEr6ki2CnIwDWfu6Z8TmMw5ak1tEMjDyFdsB+/bqdsaUf1VzErkTqwgljW9MfW7cKnGRObPUmCC7KPElVYmakXYNWDw==">  <cfdi:Emisor Rfc="CSO200716G27" Nombre="CHP SOLUTIONS, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="TUI990316493" Nombre="TRAZZO URBANO INTERNACIONAL, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="73152100" NoIdentificacion="S2G017" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="Comisionamiento y Puesta en Marcha" ValorUnitario="18033.33" Importe="18033.33">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="18033.33" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2885.33" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="2885.33">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2885.33" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="E618FAC1-8316-E347-B9AA-245CB91FE487" FechaTimbrado="2022-09-05T20:05:42" RfcProvCertif="SCD110105654" SelloCFD="bIbpWkNwy1zIlROw5G+GaGSWjVnS+mkVFICQzVQVYZ7Uhx+nLoLsQX6c5X+ZQ/mUGgdhmKaKbXo0y8f2aS8gJjNzqar65msNJ8XP4J5g3OFTGvQaQ5eV+tybXyyaX//PyMjlGJUZumHPMEDJuWPNIDJjra1AKaCeh78m28/Apl6zdAUUb9PTGwC2jIDRCX1lCvSy3NW4qriBGpaw+7BsRMROnig+byR1MfqEpCq8ZP4fri/6dDBzy1ywlb9vEr6ki2CnIwDWfu6Z8TmMw5ak1tEMjDyFdsB+/bqdsaUf1VzErkTqwgljW9MfW7cKnGRObPUmCC7KPElVYmakXYNWDw==" NoCertificadoSAT="00001000000502000436" SelloSAT="A9fMpK6vrh941BCDG5qkK6PYZfEbMxrvo8/uzZQ03xmrWtGsV+ivaX3IMzhGz73Uv9JOO+NTrM7h/+2gIufKb+mfjPiR1NMEdjfS+mOKDIMoDxZAnRxUZhLRSgiegkIBZi2DUzMqAZc6ks6FxYqh7lWC3HxDjPQLqzs+vF40zr0m+SZ2e266NPTz+0qMnzwqTECC+bVaQsd4h1YW/MATrQvoSblNbMjdEYlQi3MYi110khi3fYlLcOdOZzFlqtXiV4OBpbcSNEhNu1fgYAzGcQb0oLI6fXZNgppBTpasyLhQrAPeqagEDmqPJsfbI1X+Zs4Q9v7n807ZGrQ6rRM99Q==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        