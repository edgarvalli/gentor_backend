
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like '3AE6E1FB-1F33-472B-8997-1617E33F8147')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-11T20:13:56','A','2860','3AE6E1FB-1F33-472B-8997-1617E33F8147','','3AE6E1FB-1F33-472B-8997-1617E33F8147.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Certificado="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" Fecha="2022-08-11T20:13:43" Folio="2860" FormaPago="99" LugarExpedicion="64000" MetodoPago="PPD" Moneda="MXN" NoCertificado="00001000000507045060" Sello="WEqyGSW/D7MjIJJprIXG0j6SijVVvJDkSo6VXIKyt5j7GOT/HzWu+gI02+kphm/DpCFrzVXdd9mDRp06A6QY0RRjnqyVN/++4Z8vPPKN3keU9V4Mvqc46e0H723TIt9lPZF+jvVaLvTAJCJkW1YjETQcP/6jhhKlP8yj3o4s2KwOxMhd3X/QkKhzSn/BlpsZzNRgemKgob6GC7yCFEIwf57emXZdWvHkmUiYvVvbDiIOE4nrUpXUihAcB9cMNIH82KEFdHFJsCsmb0dBaziD7JXpTJIhTmLeVV3eFcTvK91BHQv1yNAZMPEw/IjD5JObgvtNDLinH3nWqlNJnvcdCw==" Serie="A" SubTotal="1310.00" TipoDeComprobante="I" Total="1519.60" Version="3.3"><cfdi:Emisor Nombre="Domos Telecomunicaciones, S.A. de C.V." RegimenFiscal="601" Rfc="DTE940421L42"></cfdi:Emisor><cfdi:Receptor Nombre="Marcatel COM SA de CV" Rfc="MCO0011173W6" UsoCFDI="P01"></cfdi:Receptor><cfdi:Conceptos><cfdi:Concepto Cantidad="1.00" ClaveProdServ="81161801" ClaveUnidad="E48" Descripcion="Servicio de arriendo o leasing&#xA;Renta Mensual de 1 enlace&#xD;&#xA;23GHz 28 MHz Marcatel&#xD;&#xA;CNI: 20386&#xD;&#xA;Periodo: Agosto 2022" Importe="1310.00" NoIdentificacion="81161801" ValorUnitario="1310.00"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="1310.00" Importe="209.60" Impuesto="002" TasaOCuota="0.160000" TipoFactor="Tasa"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="209.60"><cfdi:Traslados><cfdi:Traslado Importe="209.60" Impuesto="002" TasaOCuota="0.160000" TipoFactor="Tasa"></cfdi:Traslado></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="3AE6E1FB-1F33-472B-8997-1617E33F8147" FechaTimbrado="2022-08-11T20:13:56" RfcProvCertif="MAS0810247C0" SelloCFD="WEqyGSW/D7MjIJJprIXG0j6SijVVvJDkSo6VXIKyt5j7GOT/HzWu+gI02+kphm/DpCFrzVXdd9mDRp06A6QY0RRjnqyVN/++4Z8vPPKN3keU9V4Mvqc46e0H723TIt9lPZF+jvVaLvTAJCJkW1YjETQcP/6jhhKlP8yj3o4s2KwOxMhd3X/QkKhzSn/BlpsZzNRgemKgob6GC7yCFEIwf57emXZdWvHkmUiYvVvbDiIOE4nrUpXUihAcB9cMNIH82KEFdHFJsCsmb0dBaziD7JXpTJIhTmLeVV3eFcTvK91BHQv1yNAZMPEw/IjD5JObgvtNDLinH3nWqlNJnvcdCw==" NoCertificadoSAT="00001000000505142236" SelloSAT="HiuiRCNaejWxF7mKoRQgLFpyoZSyaywIEYO0KHie94C9r5n55+Z2+RIEkdK4yYrLONb7+sDMldycYuQQcRBl1iwI7jYJBE5bD9X+3Dz1P2Bfbve4CgqRfPa9GtKn3XfLhCNGCiaNCdP9TpmSSXiZxaCIGOV9OTzyXChUVN9TD4zkC837THJnYmYTX4PbX3690XH/O80IgrZSzSrDLuupJh3aiqkLmGADIzWAz/NxDUUsHU3lb5aogsco1GP3WFlGTDP4pnTQBGobSoHPa3um1XmZjhyDAjDrdN5OWgWn9A90dmqnle711w6i6aoZvFxZphRrsxBOm/gOQYQLlIFeNg==" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        