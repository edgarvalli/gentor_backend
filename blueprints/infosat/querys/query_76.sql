
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SCG931026LW1')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SCG931026LW1] WHERE UUID like '8C5E1B0C-C530-CF49-8830-27BADE93A124')
                BEGIN
                    INSERT INTO [SCG931026LW1] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-29T17:35:33','FASCG','76','8C5E1B0C-C530-CF49-8830-27BADE93A124','SCG931026LW1','8C5E1B0C-C530-CF49-8830-27BADE93A124.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASCG" Folio="76" Fecha="2022-08-29T17:30:28" FormaPago="99" CondicionesDePago="0 d�as de Cr�dito" SubTotal="133187.83" Moneda="MXN" Total="154497.88" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504332244" Certificado="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" Sello="dwOPYlTUveuQVc6UdVIKiEWco986nFqnErSlDpFopcWkMYzVClHwr/6IPag/uq2MIPhGsH+Crov/AkBoU81G/KrQj8woPBJgk1PqNo/GrHP7CEAiLuERA0qipA25VxYQ/i3zHkSacpZy6rcigsxPEd/iLox/UwpFh4zfpDvDNa4myD6KdSZD10PsIVXifXnWPWSvZseQkzCBHNcUVNQhWA0P/FnOLgxsHDJ3iVLi6uW1CF9s+ibzt9dPXfIjKdL8Kco0oVdP8Z6e71yiCKZ+OZmW+nhsv30bhVcmHaXKVhQo+2doK/Hqac9NfGragNDf+Odo761EER7ieSl7oCfNtQ==">  <cfdi:Emisor Rfc="SCG931026LW1" Nombre="SERVICIOS CORPORATIVOS GENTOR, S.A. DE C.V." RegimenFiscal="623" />  <cfdi:Receptor Rfc="EAS200814BU1" Nombre="ENVIRONMENT &amp; SOCIETY, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="80161504" NoIdentificacion="522438" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIOS CORPORATIVOS ESPECIALIZADOS" ValorUnitario="133187.83" Importe="133187.83">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="133187.83" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="21310.05" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="21310.05">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="21310.05" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="8C5E1B0C-C530-CF49-8830-27BADE93A124" FechaTimbrado="2022-08-29T17:35:33" RfcProvCertif="SCD110105654" SelloCFD="dwOPYlTUveuQVc6UdVIKiEWco986nFqnErSlDpFopcWkMYzVClHwr/6IPag/uq2MIPhGsH+Crov/AkBoU81G/KrQj8woPBJgk1PqNo/GrHP7CEAiLuERA0qipA25VxYQ/i3zHkSacpZy6rcigsxPEd/iLox/UwpFh4zfpDvDNa4myD6KdSZD10PsIVXifXnWPWSvZseQkzCBHNcUVNQhWA0P/FnOLgxsHDJ3iVLi6uW1CF9s+ibzt9dPXfIjKdL8Kco0oVdP8Z6e71yiCKZ+OZmW+nhsv30bhVcmHaXKVhQo+2doK/Hqac9NfGragNDf+Odo761EER7ieSl7oCfNtQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="DLK47nZ4UNBA9tI3UxAwWLYG3QvmF24460byvdZPZ8rFKntAceDSFg1YFzY65EH5ACvw7tk5EHqxWSzQwB2rzWxCawAtTFwpfQ7JusRYSaMssxMMw4SyeRMTrIzR2rPS/yKvwWKgwwjIZrN6bv5lyPPIYKsoAsH4eoGCYJP6NAmDo7Fz8X8kZRMT/xOQ5/Vv7ZwsWROLBT0aklYJQKyOPilq2hzlrJUAKkbPEqf9o296oKWmEZ0ucoRHCom/aKXYWgMiOMk/3lR2QvGfL79b+/iVWk+U8kBehrnlQDYDJNsOVteFJ3uAQURFzjb/La1yQW6MGrAgSdTnsGdk+CzJHg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        