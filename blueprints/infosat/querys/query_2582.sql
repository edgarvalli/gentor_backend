
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like '72BEC77D-A88C-EA45-B845-FF5FA6EDDFA5')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-30T12:20:15','FASE','2582','72BEC77D-A88C-EA45-B845-FF5FA6EDDFA5','SEI920618TC5','72BEC77D-A88C-EA45-B845-FF5FA6EDDFA5.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd" Version="4.0" Serie="FASE" Folio="2582" Fecha="2022-11-30T12:15:13" FormaPago="99" CondicionesDePago="10 d�as de Cr�dito" SubTotal="3642024.01" Moneda="MXN" Total="4224747.85" MetodoPago="PPD" Exportacion="01" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504894993" Certificado="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" Sello="Wjtm/D6j8kjjCJ8U5/6fBRPuRINmJ4hp9XQfKy1lxQjZUbMP6wAJzVO4n6H2GcwvCvtnJGyBEeXO4i4iV3Hx3/xP21QWnmpU3OosTFzRPxCUzcb7twxNuSodXs4ZDMCi1wMo3q/IAmEWyyaPBCc4q0WsoLrhJmv/E7cEn4f4G0JSDTXbdB7CaaGPYY9bJRnS7s3urpPPbxetaokTAHKpMEcgF3CTAMOL2S4FJEuluFWb2ZrmYbuLO9GRYwS2h724eNZqX32P638AdEFvXFFUyUtgoHTgg6W6Ghl6vWPHyKAL1rI6P8eHfACQDGpPIvH6uP17PCPGEzuYA/zBY3RS3g==">  <cfdi:Emisor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL" RegimenFiscal="601" />  <cfdi:Receptor Rfc="EMS810717R34" Nombre="EMPAQUES MODERNOS SAN PABLO" DomicilioFiscalReceptor="54090" RegimenFiscalReceptor="601" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="83101800" NoIdentificacion="SP110000003" Cantidad="1.00" ClaveUnidad="E48" Unidad="Hora(s)" Descripcion="RENTA DE EQUIPO DE COGENERACION" ValorUnitario="3642024.01" Importe="3642024.01" ObjetoImp="02">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="3642024.01" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="582723.84" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="582723.84">    <cfdi:Traslados>      <cfdi:Traslado Base="3642024.01" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="582723.84" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="72BEC77D-A88C-EA45-B845-FF5FA6EDDFA5" FechaTimbrado="2022-11-30T12:20:15" RfcProvCertif="SCD110105654" SelloCFD="Wjtm/D6j8kjjCJ8U5/6fBRPuRINmJ4hp9XQfKy1lxQjZUbMP6wAJzVO4n6H2GcwvCvtnJGyBEeXO4i4iV3Hx3/xP21QWnmpU3OosTFzRPxCUzcb7twxNuSodXs4ZDMCi1wMo3q/IAmEWyyaPBCc4q0WsoLrhJmv/E7cEn4f4G0JSDTXbdB7CaaGPYY9bJRnS7s3urpPPbxetaokTAHKpMEcgF3CTAMOL2S4FJEuluFWb2ZrmYbuLO9GRYwS2h724eNZqX32P638AdEFvXFFUyUtgoHTgg6W6Ghl6vWPHyKAL1rI6P8eHfACQDGpPIvH6uP17PCPGEzuYA/zBY3RS3g==" NoCertificadoSAT="00001000000502000436" SelloSAT="ZBwrVkcd2wzHpRKRJEMuOPhtlRFCpeZwTWKb2WZeCSw0VkX6v1h7BFi4EcsRiL8T8+QHsWBZe/p/laPNPzYTz7aBo6aTGN4nmzI1tnEA9xRlahugabVGjNwEa/QXgdyGpGIfS9n90mG3A/QclbOT9s37b4gtElUOlTXst/8/zVk9EqsVUsgT/kL7dktQLeThBEDN9OYsElYbBzIfIMa+UtNFRhGdPzjMC06wXkqpcNcGA8o/kjlthuEKzgH3QzAuPNvhsVUp4K2mM+YquFmkTzbY5vB66JZx1vI742MpdDdP32r02x2RtdLZ38Bz89/e8I/jx9ZO/p+rV0Z54Kk7bA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        