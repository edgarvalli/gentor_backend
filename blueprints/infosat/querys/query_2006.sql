
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like 'F841D63F-E2EC-48DD-92A6-4B8EB97847BC')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-06T01:52:35','A','2006','F841D63F-E2EC-48DD-92A6-4B8EB97847BC','SPT131217CH3','F841D63F-E2EC-48DD-92A6-4B8EB97847BC.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd" Version="4.0" Serie="A" Folio="2006" Fecha="2022-09-06T01:52:33" FormaPago="99" NoCertificado="00001000000511418010" Certificado="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" SubTotal="12000.00" Moneda="MXN" Total="13920.00" TipoDeComprobante="I" Exportacion="01" MetodoPago="PPD" LugarExpedicion="66240" xmlns:cfdi="http://www.sat.gob.mx/cfd/4" Sello="etddPjdDAUJbfG9Yn/65Ufi51IExI7v/7opvzJkB/URwAYuyKqGaE8UMWsaZ5Xz+U0XbubGIBbYb5n0tAhkPfNbkTzaGyyE3S5ASzIsC8vxJb3RgQ7VlDbGL8V9voOmmVWXPJ0KT7tjC95Cy0dMqWjouLdePEFU8SfmkhSYujk95VfXldp2L4ynLNArOiEn+lYvh3ZCy97GMhqRFVnUSj823KNtUqU3Kjm9/ch7+MrKkh99q/M5cD1c21p8N4cN8RMYVBDdNdmg+mUzInRM73ePobwKl33akmBqLE1N8NxuQXeHkcexLNxRhahQ8ieg7vNe6DgxF0Hihc5qPttqu5Q=="><cfdi:Emisor Rfc="SPT131217CH3" Nombre="SERVICIOS PROFESIONALES PARA EL TALENTO FEMENINO" RegimenFiscal="601" /><cfdi:Receptor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL" DomicilioFiscalReceptor="66600" RegimenFiscalReceptor="623" UsoCFDI="G03" /><cfdi:Conceptos><cfdi:Concepto ClaveProdServ="80111700" Cantidad="1" ClaveUnidad="E48" Unidad="E48" Descripcion="Servicio de Head Hunter - Ingeniera de Dise�o Civil" ValorUnitario="12000.00" Importe="12000.00" ObjetoImp="02"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base="12000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1920.00" /></cfdi:Traslados></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosTrasladados="1920.00"><cfdi:Traslados><cfdi:Traslado Base="12000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1920.00" /></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="F841D63F-E2EC-48DD-92A6-4B8EB97847BC" FechaTimbrado="2022-09-06T01:52:35" RfcProvCertif="NLC091211KC6" SelloCFD="etddPjdDAUJbfG9Yn/65Ufi51IExI7v/7opvzJkB/URwAYuyKqGaE8UMWsaZ5Xz+U0XbubGIBbYb5n0tAhkPfNbkTzaGyyE3S5ASzIsC8vxJb3RgQ7VlDbGL8V9voOmmVWXPJ0KT7tjC95Cy0dMqWjouLdePEFU8SfmkhSYujk95VfXldp2L4ynLNArOiEn+lYvh3ZCy97GMhqRFVnUSj823KNtUqU3Kjm9/ch7+MrKkh99q/M5cD1c21p8N4cN8RMYVBDdNdmg+mUzInRM73ePobwKl33akmBqLE1N8NxuQXeHkcexLNxRhahQ8ieg7vNe6DgxF0Hihc5qPttqu5Q==" NoCertificadoSAT="00001000000504447535" SelloSAT="eGcrkjuxgbtIlq71CmhkQshn/IlvK/Jwx9H9b6TkHRYD1tPExMiGKWKPQl9HEB1AmZu7ZUPWQxwT+yfCxFb/9TYSIQOel7hA3JNtHpCTew3MwEhSixaezd7VIgvVpcsp0rXkI2wBoprCDJEbgiGGvm/RSW7NzfIPYJDOBEFzCbWqYhLApvDrhWcqLCjJCsSof3uRrgvOcaWptylY+Ro3DZvE6XmDMBA3pHR1Biq9CUWb90iVtr8YHgLPpaiLU8FLhA/Tm+3+uYqTNqatjRAyDWTCIlmcGUCdhnMR9y4DU7wf2FOkJa1tngpO01c1mHptrFh/j5pkTEJBWUaA8zXMDQ==" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" /></cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        