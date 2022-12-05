
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'B475500F-D47D-41C8-9465-8F6D50E73442')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-01T09:51:57','','2215095','B475500F-D47D-41C8-9465-8F6D50E73442','ASI2008043M8','B475500F-D47D-41C8-9465-8F6D50E73442.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:cce11="http://www.sat.gob.mx/ComercioExterior11" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd http://www.sat.gob.mx/ComercioExterior11 http://www.sat.gob.mx/sitio_internet/cfd/ComercioExterior11/ComercioExterior11.xsd http://www.sat.gob.mx/ine http://www.sat.gob.mx/sitio_internet/cfd/ine/ine11.xsd" Version="3.3" Sello="noyXYf2gzDtZ70rtWzJ2K2NbTfapXmEYqVZ07JLnIMkgP4B/pEuDMcITXJ92yAfioWR0RfQYGG++asi4U/PWeCDR5+8Pqos162AjlaN+TGfpfralZk9zFklpkNPXPQmrajLwBKfc3cuggMqsBWowtpNShv3HBSlsB14Fjuppbg/b9o/X2A185CVENXDVpnltfs818wc8GqBlhE9cZrZs7yZ2U5/Y21NwW9Y+nWCx+bA8LaLiTW51hs1++2sTqEcsrxRdek+9qtGCRCLRNwZmJAX3NZ3pcHY+JAIBFYRFB7gje01RbDxH9PXyLbhjb5XtMKeCVUmWig+94zMok+pGbw==" Fecha="2022-11-01T09:44:50" Folio="2215095" FormaPago="99" NoCertificado="00001000000506164447" Certificado="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" CondicionesDePago="10 d�as" SubTotal="8638.94" Moneda="MXN" Total="10021.17" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="25256"><cfdi:Emisor Rfc="ASI2008043M8" Nombre="ADMINISTRADORA DE SERVICIOS DE INTERNET SANDUR S.A. DE C.V." RegimenFiscal="601"/><cfdi:Receptor Rfc="DTE940421L42" Nombre="DOMOS TELECOMUNICACIONES S.A DE C.V." UsoCFDI="G03"/><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="81112100" NoIdentificacion="SID-20-24" Cantidad="1.000000" ClaveUnidad="E48" Unidad="Servicio" Descripcion="[SID-X-20-24] Internet Dedicado  (20 Mbps / 24 MRC), SITIO:  6239 - JAVIER GARZA 2." ValorUnitario="8638.93" Importe="8638.93"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="8638.93" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1382.23"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto><cfdi:Concepto ClaveProdServ="81112100" NoIdentificacion="SIHC-X" Cantidad="1.000000" ClaveUnidad="E48" Unidad="Servicio" Descripcion="[SIHC-X] Direccion IP Homologada Cortesia" ValorUnitario="0.01" Importe="0.01"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="0.01" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="0.00"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="1382.23"><cfdi:Traslados><cfdi:Traslado Importe="1382.23" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000"/></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" SelloCFD="noyXYf2gzDtZ70rtWzJ2K2NbTfapXmEYqVZ07JLnIMkgP4B/pEuDMcITXJ92yAfioWR0RfQYGG++asi4U/PWeCDR5+8Pqos162AjlaN+TGfpfralZk9zFklpkNPXPQmrajLwBKfc3cuggMqsBWowtpNShv3HBSlsB14Fjuppbg/b9o/X2A185CVENXDVpnltfs818wc8GqBlhE9cZrZs7yZ2U5/Y21NwW9Y+nWCx+bA8LaLiTW51hs1++2sTqEcsrxRdek+9qtGCRCLRNwZmJAX3NZ3pcHY+JAIBFYRFB7gje01RbDxH9PXyLbhjb5XtMKeCVUmWig+94zMok+pGbw==" NoCertificadoSAT="00001000000504204441" RfcProvCertif="CVD110412TF6" UUID="B475500F-D47D-41C8-9465-8F6D50E73442" FechaTimbrado="2022-11-01T09:51:57" SelloSAT="XNef/wKZY4fQjbK4PbV0W28i3d+CoEm0WH4I0Kq+dYe+U1hQajpASuZIjZm6OZ8J858iP9XZZub5nIKtdiDv03L+OuPBy64P5GvV7HvieFxOY25jKkt29CV82w8mUQkGylEJhiPolhG/cUHAE5Av3uHoLJBGvPjRreP++VlRdwV0K7HL4ITxylKBaaasjLWZXcTGggHH5ueUFhlu5n2C3Hp9ywsExYyH1AJZUcEhhl8hqUSOgHFwEDPq73olRbaKcQn+ImQJ59AW0DRFdSglVd09Sf7KmmdhdvYdh+6oPNIFdLovEbd8OjAiP4xRcltc3pFO32AOIiqmMkwDzFNzlA=="/></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        