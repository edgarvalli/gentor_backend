
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like '3474C00A-5485-7E40-99ED-E7AC06FFC249')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-08T14:04:28','FACECO','1184','3474C00A-5485-7E40-99ED-E7AC06FFC249','RDD101105Q91','3474C00A-5485-7E40-99ED-E7AC06FFC249.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACECO" Folio="1184" Fecha="2022-11-08T13:59:24" FormaPago="99" SubTotal="5000.00" Moneda="MXN" Total="5800.00" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="N6IvpBU6WjaLxScxwHKigd5rh40PA5fc0nIIm3aycJDa6XW5V0nC2duCeOprmB5T4pL3/BMF1bvjS8FwBQjgSVnd1idWiyN4IH68M4TeETRklvMeTlYfEh2gynRqOHri13viXKIh3EJmVOnKAgD/RnW0+JOaDPQOTDDEHNloMZrmcOHOkeONj1dnivHD5fI2rbSZ8fPtBMyVEr5+6aGhLWFWhsbdYwp7rDxxvLp9662iLryIOH8b00b3dtkUGG9+ThgXVRW4eWVetJAPAJohDESN+LMQbhFFkp5wX3gWZkD91nOIszXazWccP0lchHu0RPJBecrYdX0KoOF7W/MfhA==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES, S.A DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="ADC210603CB5" Nombre="ALIMENTOS DON CHUCHO, S.A.P.I. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="5000.00" Importe="5000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="5000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="800.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="800.00">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="800.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="3474C00A-5485-7E40-99ED-E7AC06FFC249" FechaTimbrado="2022-11-08T14:04:28" RfcProvCertif="SCD110105654" SelloCFD="N6IvpBU6WjaLxScxwHKigd5rh40PA5fc0nIIm3aycJDa6XW5V0nC2duCeOprmB5T4pL3/BMF1bvjS8FwBQjgSVnd1idWiyN4IH68M4TeETRklvMeTlYfEh2gynRqOHri13viXKIh3EJmVOnKAgD/RnW0+JOaDPQOTDDEHNloMZrmcOHOkeONj1dnivHD5fI2rbSZ8fPtBMyVEr5+6aGhLWFWhsbdYwp7rDxxvLp9662iLryIOH8b00b3dtkUGG9+ThgXVRW4eWVetJAPAJohDESN+LMQbhFFkp5wX3gWZkD91nOIszXazWccP0lchHu0RPJBecrYdX0KoOF7W/MfhA==" NoCertificadoSAT="00001000000502000436" SelloSAT="djRrb7xSIvaA5+4Ox5OOxSOtV/QNPayhAk+VRHhHIuoxnbeLUzYKXenSunXhvFz78UBS3exfQQIWyCZnNbs3Pfe8OCYrQYEpnK9TLsx9edzDyhqiOeGxq223NxDisbqKF5YXCn67d+TgIEcCb2fuuMl1R8DV9ctmp0DzkgV4KJZDnYbI4NfawMnl9Aw7gnPkxYUwf0Jw46nCq3AM+39qEUhw0tC/2fiJSqP3B6+G8CxoiSiLd9Y8WofrurD7I9WXrKxytZVJpkgtozzc++6Fgzf2z0OikfYVdUymEgcrZnsyEkW0dvjMGQzDhj+n7DWW0sv9FVW2KW2y8usl1sEOjw==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        