
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'B4DD2C2C-785E-CF4E-AB3A-C7ACA88A84E0')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-20T11:52:25','FDT','568','B4DD2C2C-785E-CF4E-AB3A-C7ACA88A84E0','DTE940421L42','B4DD2C2C-785E-CF4E-AB3A-C7ACA88A84E0.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FDT" Folio="568" Fecha="2022-10-20T11:47:21" FormaPago="99" SubTotal="9998.78" Moneda="MXN" Total="11598.58" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000507045060" Certificado="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" Sello="ezLNSk35dW+L4bfwgMeofocO4+5lu0YwOJ1f08cZr9d6j1ZsuiUKQ1X5YkK2MSTnYNr+ivSkjj3J2kozNScv1LPWnkqIeWI8HXF/jEdtBt1FiNegiLNcGlvlX8E1FPAPKuPy8Pcojdk/wMVxSj2DiXXi0xp550lXpYhYMU3Gb065R8Rv/orNGO1d4+Kxbf1PH0IZW/vmkIKE0nRhlwSfDvcjUUg0lSTT5S/Rx1yDv01U9eVODVeWbxi8vQNe1NCBhAJWGRJpWRSNmgTNiuAe+OEglETYXSv2BbD9YpALnsnPi7SBwyq+SaUqux19nl2jktlE28B1IvQHLRB60yPBJQ==">  <cfdi:Emisor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="SCD9609068X7" Nombre="SERVICIOS CORPORATIVOS DMS, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="81112100" NoIdentificacion="SERVINT" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="Servicio de Internet" ValorUnitario="9998.78" Importe="9998.78">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="9998.78" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1599.80" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="1599.80">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1599.80" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="B4DD2C2C-785E-CF4E-AB3A-C7ACA88A84E0" FechaTimbrado="2022-10-20T11:52:25" RfcProvCertif="SCD110105654" SelloCFD="ezLNSk35dW+L4bfwgMeofocO4+5lu0YwOJ1f08cZr9d6j1ZsuiUKQ1X5YkK2MSTnYNr+ivSkjj3J2kozNScv1LPWnkqIeWI8HXF/jEdtBt1FiNegiLNcGlvlX8E1FPAPKuPy8Pcojdk/wMVxSj2DiXXi0xp550lXpYhYMU3Gb065R8Rv/orNGO1d4+Kxbf1PH0IZW/vmkIKE0nRhlwSfDvcjUUg0lSTT5S/Rx1yDv01U9eVODVeWbxi8vQNe1NCBhAJWGRJpWRSNmgTNiuAe+OEglETYXSv2BbD9YpALnsnPi7SBwyq+SaUqux19nl2jktlE28B1IvQHLRB60yPBJQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="hCXytEsCDxoOnRQznyVaHcTKnZxqe6RsDO2sRkHoSHoepoUqpf6opf+PSvu4oDlhGa2TJEuBKgMLxKPJvWbdesQmcrGquk3xGUYGVvOi0PJw5uNQTRYjuhaBpi+QWm9nFRtdKyS3Xnwbh3tG28PhNGSno/6QRNLZ4WrLwArlcreazsI/IVoP/IiKNxu5wf4wuOpBm3TeGFZUG0O5yh9ghLvjJRD8mm7rBa4y8o0Wf1NxZImNY2cO3XHwE4LJvyvvLPD6+cbzIVwPK4B5+T8Xv9qC/CrJdcmzpIxL9VcFM2B8FdzaGitKQd8Nbw+/tWqemIULup90VqETcESwgoJHLg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        