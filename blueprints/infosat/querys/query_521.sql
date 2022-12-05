
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'A58A1F7C-14DB-C14F-BE4C-6451F4940F52')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-27T10:04:35','FDT','521','A58A1F7C-14DB-C14F-BE4C-6451F4940F52','DTE940421L42','A58A1F7C-14DB-C14F-BE4C-6451F4940F52.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FDT" Folio="521" Fecha="2022-09-27T09:59:32" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="2500.00" Moneda="MXN" Total="2987.00" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000507045060" Certificado="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" Sello="bvp11Ow59UrFcRsIumrR8zkkW63iFSkxf7xfH322cwhW1b2Aih0UYA7DP/Qcz4L816i1ZAy3CrTpYER05vP9+K6tgeyAutVcBSNUbLZtoBkvCgmgpG9U2u7sQbTsZOIPj1kEblcfMtyjried6HHbn5mzJRwhigvV3MymdoaemgRXM/tA5tViD2awvfCXb3EYYHvvBnBPDl9b1qMwPHsM0qVPWOrnyOUtlEMqTfauLayUT5XV1426DQX3vC7/vJX5/5NVTXK2AiLReQ/68MPEQD4Vi9Z5czEG5vgCjCqicYoj+4dhwdGLzwPsnyrdqu/+niLFWN6w/oSE2MMXmQ0Kfg==">  <cfdi:Emisor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="SGI051014T18" Nombre="SEGURIDAD GLOBAL INDUSTRIAL SA DE CV" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="81112100" NoIdentificacion="SERVINT" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="Servicio de Internet" ValorUnitario="2500.00" Importe="2500.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2575.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="412.00" />          <cfdi:Traslado Base="2500.00" Impuesto="003" TipoFactor="Tasa" TasaOCuota="0.030000" Importe="75.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="487.00">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="412.00" />      <cfdi:Traslado Impuesto="003" TipoFactor="Tasa" TasaOCuota="0.030000" Importe="75.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="A58A1F7C-14DB-C14F-BE4C-6451F4940F52" FechaTimbrado="2022-09-27T10:04:35" RfcProvCertif="SCD110105654" SelloCFD="bvp11Ow59UrFcRsIumrR8zkkW63iFSkxf7xfH322cwhW1b2Aih0UYA7DP/Qcz4L816i1ZAy3CrTpYER05vP9+K6tgeyAutVcBSNUbLZtoBkvCgmgpG9U2u7sQbTsZOIPj1kEblcfMtyjried6HHbn5mzJRwhigvV3MymdoaemgRXM/tA5tViD2awvfCXb3EYYHvvBnBPDl9b1qMwPHsM0qVPWOrnyOUtlEMqTfauLayUT5XV1426DQX3vC7/vJX5/5NVTXK2AiLReQ/68MPEQD4Vi9Z5czEG5vgCjCqicYoj+4dhwdGLzwPsnyrdqu/+niLFWN6w/oSE2MMXmQ0Kfg==" NoCertificadoSAT="00001000000502000436" SelloSAT="gC6RFvnkgp5+bnMP9mRi/plNJfyUT5yAyJnO2n3DN6jw7IaEqa2npRPVHsQDS3pCy4MfSImyPkNxFnuEG+hRl9yJGpTb80Mg7ZN6C4qOgokFIx4HOb1xZ67E0NOFFBIa7jmTQdFoyXk5ZbgLtmfynIaWoadFzMe+PV3zjFw0Ih7Y6QpyLBLrAXY9tKSi9alTNen04lPmwgF82M2R8suHWI2m3tTIEWIpZ6bqk7ghQXsQLcr4Hrl1k4it6sToePHMmjEFGg9ApX+o4NFk4x8F5ugEDyPLkRFvYK17nw+/NVSf2wv9KigM9KJrPsMG3Uhmq4ySuKGJZDX+QeREvGVOuw==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        