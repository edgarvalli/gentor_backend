
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like 'F3F1199A-D820-CF4F-A1A6-C36125B2B958')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-07T16:16:03','FASE','2503','F3F1199A-D820-CF4F-A1A6-C36125B2B958','SEI920618TC5','F3F1199A-D820-CF4F-A1A6-C36125B2B958.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASE" Folio="2503" Fecha="2022-09-07T16:10:59" FormaPago="99" CondicionesDePago="No Identificado" SubTotal="12405.00" TipoCambio="20.10" Moneda="USD" Total="12405.00" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504894993" Certificado="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" Sello="gkS8YGWlaFmNO2WAioIUhxD7RuqN6HklHJyGLhPGrP9xY4qQjfDW+3cZPfEym/M6LCWSNE4vXFkdlofrsOEy33KbX9gb2yRazfAPlH3d1zAfHAj723FtPs9gkPsugQ02eoRji47fANUCTzsmM9JUmIUd3J+UZIMYHy7CKiEhtK3budDEpCySzGNZfuobjSNiScghCfFb800+jZp7iNVmGTT91CzstGzYo0sidF8Pv+/aKs0xYNHyanyfatgPaRaiGeOy4R6dbZfIgXvLfvOg1YRdikyUJ/YaKOAqQ+G5bDAB75RMGVZcvr/2NyFKMwaIDCnmdv2F8KlpmMKT4T8NrQ==">  <cfdi:Emisor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="XEXX010101000" Nombre="QUIMICA INTERNACIONAL, S.A." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="72154300" NoIdentificacion="OTROSSERV" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIOS DE MANTENIMIENTO A MAQUINARIA" ValorUnitario="12405.00" Importe="12405.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="12405.00" Impuesto="002" TipoFactor="Exento" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="F3F1199A-D820-CF4F-A1A6-C36125B2B958" FechaTimbrado="2022-09-07T16:16:03" RfcProvCertif="SCD110105654" SelloCFD="gkS8YGWlaFmNO2WAioIUhxD7RuqN6HklHJyGLhPGrP9xY4qQjfDW+3cZPfEym/M6LCWSNE4vXFkdlofrsOEy33KbX9gb2yRazfAPlH3d1zAfHAj723FtPs9gkPsugQ02eoRji47fANUCTzsmM9JUmIUd3J+UZIMYHy7CKiEhtK3budDEpCySzGNZfuobjSNiScghCfFb800+jZp7iNVmGTT91CzstGzYo0sidF8Pv+/aKs0xYNHyanyfatgPaRaiGeOy4R6dbZfIgXvLfvOg1YRdikyUJ/YaKOAqQ+G5bDAB75RMGVZcvr/2NyFKMwaIDCnmdv2F8KlpmMKT4T8NrQ==" NoCertificadoSAT="00001000000502000436" SelloSAT="AII3UMucOM2eL7xAcqZgl2f6KuBQ2f9WPPPUueKTaBzBUdpZHTjLzeZO7LWZIK1geLD3WCbyECvw/eO+WfBpOzbIcs8cC66S/ll6IiEsKdYKmeOZ6LBdWloVCjVThUfl3TrQmS0KgKMmarbMkkrUxF7IqLFTpFVY+c0GUlW/ZMTW/2rYawDMiTd+Gq5ztoh9nGUUBXNBkMKgGZ7rby0IezQa6gvQJujNwjzEe9JqSYImqbbwdXHXj1XJgRFVwhAY60Ys3QrUfEgE1rCu++91ARPX+YyE4WyyOpICa5I0ZwZBQnbB5vbcHIuGELbOTfmTqG10DAwsnHyoxA/6Dd8ZNg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        