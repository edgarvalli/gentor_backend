
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '98E33EC4-E12A-4C78-A07C-6474B696D380')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-08T19:47:35','D','0050','98E33EC4-E12A-4C78-A07C-6474B696D380','MAPR790908R18','98E33EC4-E12A-4C78-A07C-6474B696D380.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" LugarExpedicion="45405" MetodoPago="PUE" TipoDeComprobante="I" Total="42978.00" TipoCambio="20.0297" Moneda="USD" Certificado="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" SubTotal="37050.00" CondicionesDePago="CONTADO" NoCertificado="00001000000509052177" FormaPago="03" Sello="ZC0bFCShvz/6+aDVRMGssQlFlAcaYQJhHOuuq7GDZfPYtn+F+z/dBYSIqfF1VgNO2YshZ/3yAltDnerFHdKfhJUC3OfmJGNnNx52I3Y/Gf0hSqJ62Y6IAW0nV6X026YCsSUEthKtdfO0Uf+xGxfsTerA0jeUbEQb/FLS49wyRx+JGuaoQsXzuZnXEVZon2iI9W3w6LxkqWBDLSsyG/aEM1fCRo+kpXweUDt5Df8O9x4gI2/jqK5G0a4nQoYhqtBcC3+HR5VOPrvWBgpIlQC+QxN6UBgS0+swslm4IPt977hDLOnEbn09/KU1tCko8GCL+MlR5uDWQL6sk28rNaTrUA==" Fecha="2022-09-08T19:35:33" Folio="0050" Serie="D" Version="3.3" xmlns:cfdi="http://www.sat.gob.mx/cfd/3"><cfdi:Emisor Rfc="MAPR790908R18" Nombre="RICARDO MATEO PI�A" RegimenFiscal="612"></cfdi:Emisor><cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL" UsoCFDI="G03"></cfdi:Receptor><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="11101522" NoIdentificacion="CM-GC 4MM 1000" Cantidad="15000" ClaveUnidad="KGM" Unidad="KILOGRAMOS" Descripcion="CARBON ACTIVADO DE HULLA BITUMINOSA CALIDAD 1000 PELLET 4MM REF: ORDEN DE COMPRA: 3959 ID.PROVEEDOR: PN20000199, PAGO SE REALIZ A EN PESOS AL TIPO DE CAMBIO DESCRITO EN FACTURA QUE ES DEL DIARIO OFICIAL DE LA FEDERACION: $20.0297 PESOS POR DOLAR X $42,978 USD NETOS: $860,836.44 PESOS NETOS: BIG BAGS DE 500KGS C/U. LAB BENLESA MONTERREY, N.L." ValorUnitario="2.47" Importe="37050.00"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="37050.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="5928.00"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="5928.00"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="5928.00"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="98E33EC4-E12A-4C78-A07C-6474B696D380" FechaTimbrado="2022-09-08T19:47:35" RfcProvCertif="SAT970701NN3" SelloCFD="ZC0bFCShvz/6+aDVRMGssQlFlAcaYQJhHOuuq7GDZfPYtn+F+z/dBYSIqfF1VgNO2YshZ/3yAltDnerFHdKfhJUC3OfmJGNnNx52I3Y/Gf0hSqJ62Y6IAW0nV6X026YCsSUEthKtdfO0Uf+xGxfsTerA0jeUbEQb/FLS49wyRx+JGuaoQsXzuZnXEVZon2iI9W3w6LxkqWBDLSsyG/aEM1fCRo+kpXweUDt5Df8O9x4gI2/jqK5G0a4nQoYhqtBcC3+HR5VOPrvWBgpIlQC+QxN6UBgS0+swslm4IPt977hDLOnEbn09/KU1tCko8GCL+MlR5uDWQL6sk28rNaTrUA==" NoCertificadoSAT="00001000000504465028" SelloSAT="BfNh3hscLftMScszpf/EAUhHUi+SHb0zwlinClb1vUS1tXZ6UjuR0UKqasoZM/KYgnFX99Afs+A3B2jqhNMRAq0rKRWF58rxq60rZ9nlQAxv0ha9M1TCBhlyW44vJLPVZkLyxXB5/B34flwAve+xTWZbkKNuWCBcSSejX9WrtaI4oDdat3466aNegxoa1BnnJqddFM/1t8V2t+UJxZR18MlbnTCIuSAlaV3gGVyFaxmyANj37VZhpXSqC7wV7fK0oyAgttCwb7ie3W/CUQ84w07Cul6ZhLosgO9Lu65amAsD3Ih6cKZJ3qI57X9Uk6YulvWNhdGvFqEHaQhFtN+aBQ==" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        