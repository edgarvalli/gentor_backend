
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SCG931026LW1')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SCG931026LW1] WHERE UUID like '5DAA0181-D791-F34C-B0D5-D5C0F602B087')
                BEGIN
                    INSERT INTO [SCG931026LW1] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-28T13:50:22','FASCG','79','5DAA0181-D791-F34C-B0D5-D5C0F602B087','SCG931026LW1','5DAA0181-D791-F34C-B0D5-D5C0F602B087.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASCG" Folio="79" Fecha="2022-09-28T13:45:20" FormaPago="03" CondicionesDePago="0 d�as de Cr�dito" SubTotal="62300.68" Moneda="MXN" Total="72268.79" MetodoPago="PUE" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504332244" Certificado="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" Sello="dt6yRIACnznj8nOR1PwrJ6pbeL//ZrpgmSetAFD5jUrGjT/08wFMztLJ/DHxQVeIVUUjA0el9FzhsF7nCSCOwlp1nneakjFB1KIyuQLTI3q9oHdiHFTF7uE2zv7VbXXy5Cam39shrIpWRyqDOubJ7mL1b+6p9s5bM4NQGs6/EgE5QoYr7LhUmh+Pr2pNcaybwHL8N6wmf+SDf5aglcub6y8VZV2WZspRhPZDzYCNq+ryC6iAh0A6nNlg0QEN/9/GLdzJukJZ1jm5/3Kpv8Nxedg6NQ4J/EhIsUDyfGgBVXlnlZkvtise/gOUuQcM+G8CgLQarkpmM/+V1pCMouOWoQ==">  <cfdi:Emisor Rfc="SCG931026LW1" Nombre="SERVICIOS CORPORATIVOS GENTOR, S.A. DE C.V." RegimenFiscal="623" />  <cfdi:Receptor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="80161504" NoIdentificacion="522438" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIOS CORPORATIVOS ESPECIALIZADOS" ValorUnitario="62300.68" Importe="62300.68">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="62300.68" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="9968.11" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="9968.11">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="9968.11" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="5DAA0181-D791-F34C-B0D5-D5C0F602B087" FechaTimbrado="2022-09-28T13:50:22" RfcProvCertif="SCD110105654" SelloCFD="dt6yRIACnznj8nOR1PwrJ6pbeL//ZrpgmSetAFD5jUrGjT/08wFMztLJ/DHxQVeIVUUjA0el9FzhsF7nCSCOwlp1nneakjFB1KIyuQLTI3q9oHdiHFTF7uE2zv7VbXXy5Cam39shrIpWRyqDOubJ7mL1b+6p9s5bM4NQGs6/EgE5QoYr7LhUmh+Pr2pNcaybwHL8N6wmf+SDf5aglcub6y8VZV2WZspRhPZDzYCNq+ryC6iAh0A6nNlg0QEN/9/GLdzJukJZ1jm5/3Kpv8Nxedg6NQ4J/EhIsUDyfGgBVXlnlZkvtise/gOUuQcM+G8CgLQarkpmM/+V1pCMouOWoQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="GzhVpjKUaBfFG9skuWSywl+n82hidnUglRXOQeif7QUbuYNikE+m9IfId+CnD0E2APVrrAa9+sGdnAZRf10WnQ11xa1Lr2Ug4OSxt+0iVbL0Ji1ODhly28GBDQ5VD4dKqLjZfwkDR+zh640+DtIDP+rNO0zVkib8BEZ7cICN2XoOCcK664UQYrQC1VAUg2vJpOzLxY4XtLu47xDEEjfLxM7nXhKxDGtbmDJEMWn7+Wj/sW7j73m54yDFs7zPt6M5VRwX/OGsCDPG/+M7Gya327sxq1jY5rgGcEdX0krh174oHFyK3aD+JvpDouu27+ORCeFA2qLSlIot+Sjrcb9JBA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        