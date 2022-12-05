
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like '5C164B4B-5FAC-7F43-82E7-6CF2765E8018')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-15T11:53:17','FASE','2506','5C164B4B-5FAC-7F43-82E7-6CF2765E8018','SEI920618TC5','5C164B4B-5FAC-7F43-82E7-6CF2765E8018.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASE" Folio="2506" Fecha="2022-09-15T11:48:15" FormaPago="99" CondicionesDePago="10 d�as de Cr�dito" SubTotal="1145099.64" Moneda="MXN" Total="1328315.58" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504894993" Certificado="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" Sello="Vr0SfJKyFaITsaoB9LtgzjL54kqViYW32Aul+RkiqWMRCDZgyrZdOaz/jKHT38Md0L2QQNifkuSb4JxSYcwd4AQNCnJogmnymhL3yiB+AQFGmsOvev4Hh+IcURiIIe+3Frs2C8K+I1pY1uttoYOTm4+qBqsil46R/02zbN6MI+8w9775OnsUE8hlnSX+9gLL0UA8Sdy32nZoEczBcZr6dJEISl1Xvo0hTZFrDnv0c2Hsp4fOyMajKy2en1x8Yk7aLC0b1680AxTNuIft3TDWXI5HhCkLcEirBXqEnn7XfJsTXzQLylvGk5DgvqQAnRE4aLGzTjqJFNiwFbginsWAYQ==">  <cfdi:Emisor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="PMA941003B92" Nombre="PASTEURIZADORA MAULEC S.A.PI. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="01010101" NoIdentificacion="SP110080001" Cantidad="1.00" ClaveUnidad="E48" Unidad="Hora(s)" Descripcion="USUFRUCTO TEMPORAL DE CENTRAL EL�CTRICA" ValorUnitario="1145099.64" Importe="1145099.64">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1145099.64" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="183215.94" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="183215.94">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="183215.94" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="5C164B4B-5FAC-7F43-82E7-6CF2765E8018" FechaTimbrado="2022-09-15T11:53:17" RfcProvCertif="SCD110105654" SelloCFD="Vr0SfJKyFaITsaoB9LtgzjL54kqViYW32Aul+RkiqWMRCDZgyrZdOaz/jKHT38Md0L2QQNifkuSb4JxSYcwd4AQNCnJogmnymhL3yiB+AQFGmsOvev4Hh+IcURiIIe+3Frs2C8K+I1pY1uttoYOTm4+qBqsil46R/02zbN6MI+8w9775OnsUE8hlnSX+9gLL0UA8Sdy32nZoEczBcZr6dJEISl1Xvo0hTZFrDnv0c2Hsp4fOyMajKy2en1x8Yk7aLC0b1680AxTNuIft3TDWXI5HhCkLcEirBXqEnn7XfJsTXzQLylvGk5DgvqQAnRE4aLGzTjqJFNiwFbginsWAYQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="tBVATQQRdTAn3ZAPgThK5GSs+Pokn9GdcwrP4h5HkaKbwk9w6qWnU74wmwqe2QA9N4rQM9xuQE+SmtB78EP0458fU/uy+RYZXt9FhwhbYz1NTnIeQO2U1iSfw5Rd4HdP/dYhkG3BB2bzMHm2exzCrJaEPntgI7PJohqv73a8gMAdSgFV76IA13A+hMKnAtezhavKZCuhC0vp9/tv0GS/nv9vp79Wf6VS2UBBIkAjdr0xxU5taffKl3NFswXZBhI4ClhMR02GYwr0iZDiSVo8Jw+3H7ekrHCQZTssqI/9d9zVPlGoV8eVcuqIl6tl2JKr+mlUJtQRN4MYXjSqSyibtA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        