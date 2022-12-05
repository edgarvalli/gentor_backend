
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'BE8FA591-3418-1C40-AAC4-739FCA1359B1')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-26T18:48:48','FDT','517','BE8FA591-3418-1C40-AAC4-739FCA1359B1','DTE940421L42','BE8FA591-3418-1C40-AAC4-739FCA1359B1.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FDT" Folio="517" Fecha="2022-09-26T18:43:46" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="1310.00" Moneda="MXN" Total="1519.60" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000507045060" Certificado="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" Sello="Srs51bDhNdKfQktESHBDyaFuOV2eV4O9VtGPGtVuADBCCAHjJIoXlB60veQIiGA+qLG9WEkgV9CxD4hUDGl1ohEIfWDWTvoSS8tZTqaBlyPJbBiv42B8HJSAQrVa1AcxTKcG7fig7J/oJMmjV6q8R16nFdRP2Y1sL4S+cwf/ey+9wMSGJ92J3hzPKIxpWQet9FWIvtsN7WGffsk4El2MaP11tKqBHng5bE7t0womPGZN17Xo12RXD66iGz407uKRsn//Gj9Vx5Jw0DSudg+V1z+gG7A5029GAArnmm2Ppi4lYHLNTl8QllAyetnNh+RF20OsZDKO2eNKlCnHL4PQfw==">  <cfdi:Emisor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="MCO0011173W6" Nombre="MARCATEL COM SA DE CV" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="81161700" NoIdentificacion="SERVFREC" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="Servicio Frecuencia" ValorUnitario="1310.00" Importe="1310.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1310.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="209.60" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="209.60">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="209.60" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="BE8FA591-3418-1C40-AAC4-739FCA1359B1" FechaTimbrado="2022-09-26T18:48:48" RfcProvCertif="SCD110105654" SelloCFD="Srs51bDhNdKfQktESHBDyaFuOV2eV4O9VtGPGtVuADBCCAHjJIoXlB60veQIiGA+qLG9WEkgV9CxD4hUDGl1ohEIfWDWTvoSS8tZTqaBlyPJbBiv42B8HJSAQrVa1AcxTKcG7fig7J/oJMmjV6q8R16nFdRP2Y1sL4S+cwf/ey+9wMSGJ92J3hzPKIxpWQet9FWIvtsN7WGffsk4El2MaP11tKqBHng5bE7t0womPGZN17Xo12RXD66iGz407uKRsn//Gj9Vx5Jw0DSudg+V1z+gG7A5029GAArnmm2Ppi4lYHLNTl8QllAyetnNh+RF20OsZDKO2eNKlCnHL4PQfw==" NoCertificadoSAT="00001000000502000436" SelloSAT="I9VGpa/ggTpPlIV5Gs2wck0Cc6DfveI64jGLCg6J19D1JKymLsDKoU+ufAgPTaIBm9kUFz4RpFnutIWTMPcBK3eKHmYB6SOBdlyVOimBtQTol/SG4mdYnVDLl/BO/Aaf27+vFXP3spfsAIgf3qmsHIF24XzGgNp6IsDDk8Ayxt2kmko5oS5Y61Rj5GfVvsJ6e1aTQCpb2AG5DW5QukP0olDoRG0yaqjaWVOLaGnSbOd87i0+yqE+pl/7hiU3UC0KkWLuFYxfFdw8lxKbztBs4myH87tP9bAbZuTSPAHdZhB2j12lJrP2K2evptXL1e02NPzeCnMrVsKo/xrs1HFyeg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        