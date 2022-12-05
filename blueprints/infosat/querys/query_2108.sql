
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'LOP191204CD6')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [LOP191204CD6] WHERE UUID like '68261E1C-EAB7-4E01-9B00-9AD06A3A47A7')
                BEGIN
                    INSERT INTO [LOP191204CD6] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-09T16:56:23','','2108','68261E1C-EAB7-4E01-9B00-9AD06A3A47A7','','68261E1C-EAB7-4E01-9B00-9AD06A3A47A7.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Folio="2108" Fecha="2022-11-09T16:56:07" Sello="elsBKbSyELm4jb37drDVqWwoiTD0jLyiPOnM89KaJ3k6wqErc2hGgf9OOiRt15Uwv0fKf/Zp+Hc0Hfe1dWbFrsj1ZyuJ0+O1wpYPAQfDYPQs4aTXPyhYeD6IsaWEz6brbUOSqKRynwDK5rgV66Y//sZkbhCMnRSjQQEeX/8KrfiYNLtJcTWkNOB0MVT9YVggVkO89KgFagWLoFNuidKiDXeLlfAzPiElDdkXOpeHR9jJi3ZtQMpcRr1f5mC4Nv23lDGvA6Mt6kcJNRzd/1EONNHVmFFO7mbSrlfcL3Ie1SIkgyUqA3jgfcwXQZkuMKjz2/oaxa9t2ypKedpcUDCJ/A==" FormaPago="99" NoCertificado="00001000000508945544" Certificado="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" SubTotal="11624.27" Moneda="MXN" Total="13484.15" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="11550">	<cfdi:Emisor RegimenFiscal="601" Rfc="CFR030128L72" Nombre="CONSORCIO FRACER SA DE CV"></cfdi:Emisor><cfdi:Receptor Rfc="LOP191204CD6" Nombre="LAND OPERATION SA DE CV" UsoCFDI="G03"></cfdi:Receptor><cfdi:Conceptos>		<cfdi:Concepto ClaveProdServ="80101500" ClaveUnidad="E48" Cantidad="1.00" Unidad="SRV" NoIdentificacion="EAS001" Descripcion="SERVICIOS DE ADMINISTRACION DE NEGOCIOS" ValorUnitario="11624.27" Importe="11624.27"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="11624.27" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1859.88"/></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="1859.88"><cfdi:Traslados><cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1859.88"/></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="1.1" UUID="68261E1C-EAB7-4E01-9B00-9AD06A3A47A7" FechaTimbrado="2022-11-09T16:56:23" RfcProvCertif="MAS0810247C0" SelloCFD="elsBKbSyELm4jb37drDVqWwoiTD0jLyiPOnM89KaJ3k6wqErc2hGgf9OOiRt15Uwv0fKf/Zp+Hc0Hfe1dWbFrsj1ZyuJ0+O1wpYPAQfDYPQs4aTXPyhYeD6IsaWEz6brbUOSqKRynwDK5rgV66Y//sZkbhCMnRSjQQEeX/8KrfiYNLtJcTWkNOB0MVT9YVggVkO89KgFagWLoFNuidKiDXeLlfAzPiElDdkXOpeHR9jJi3ZtQMpcRr1f5mC4Nv23lDGvA6Mt6kcJNRzd/1EONNHVmFFO7mbSrlfcL3Ie1SIkgyUqA3jgfcwXQZkuMKjz2/oaxa9t2ypKedpcUDCJ/A==" NoCertificadoSAT="00001000000505142236" SelloSAT="Qz18vxiuOMKY53ch5ZSWp8dZ4b1ft/WM1eeumNlHXeCUOv+ZBq5MdGhhYPt9RHIm844YYS+FEzOt03RygA5NAEvJxF4DShvQckczGEsyjqdzeZD1XiyNaMnaGZQl2h8D+ffZ7Pt3bn3iMPiQPm65vGxSwSclwL602L77MgUF7B+RR0DqqCE03bR+w+O/sjaBYurnQvrD6jo2/Up0Q9+AbNbMzHAkywcd346w6iypEj6roiIsLJ34uQaoby1HtpoazW4BV2laXVlkNjN9cz6CvkJq3SuszIi97Ue/ASuPdj+RSsmDS1qRStjFluagfDfzsyZ2FOztGrjzP7dNDv85sA=="/></cfdi:Complemento></cfdi:Comprobante> ')
                END
            END
        