
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SST951003FL8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SST951003FL8] WHERE UUID like 'E2F1D4C4-9A02-3347-8444-E127EF58F8FF')
                BEGIN
                    INSERT INTO [SST951003FL8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-01T00:03:08','FASS','584','E2F1D4C4-9A02-3347-8444-E127EF58F8FF','SST951003FL8','E2F1D4C4-9A02-3347-8444-E127EF58F8FF.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASS" Folio="584" Fecha="2022-10-31T23:58:05" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="75000.00" Moneda="MXN" Total="87000.00" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504293867" Certificado="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" Sello="X6INNKkISDerw5NCvSseG09e/wah+aJqK4FzBTTa46STw5RF0O79kfYBAy3DGcEtF64BmvSuwOPeTuwzoMJEQ2wj3IfwG4Xig0fh0KqFi0rpRLuxsITaMXgJSjnDZM6aFWdHK/mF3awBU2EQjIaj2OXFz4GXs2V/GpKXocASrnIztFxatjV5hKtenNquEJIGK3RybjfKQ29tpBMvRLm/MIEHI/sASUhe0vGJTAwj50esOxkSpj9u9yxd2Mi00Q+7IJFKmOoiANEUSntc9vVWH5JJvcACEkkaKOBmbRAYgEYSrFZ2C3tFfYJWEJzfSJmoGaMh7pIThP2NLyvGiRrnIw==">  <cfdi:Emisor Rfc="SST951003FL8" Nombre="SEISA SERVICIOS Y TECNOLOGIA, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V." UsoCFDI="I03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="25101500" NoIdentificacion="0000000010" Cantidad="1.00" ClaveUnidad="E48" Unidad="Unidad" Descripcion="AUTO COROLA NO. SERIE 9BRBA42E895051440" ValorUnitario="75000.00" Importe="75000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="75000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="12000.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="12000.00">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="12000.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="E2F1D4C4-9A02-3347-8444-E127EF58F8FF" FechaTimbrado="2022-11-01T00:03:08" RfcProvCertif="SCD110105654" SelloCFD="X6INNKkISDerw5NCvSseG09e/wah+aJqK4FzBTTa46STw5RF0O79kfYBAy3DGcEtF64BmvSuwOPeTuwzoMJEQ2wj3IfwG4Xig0fh0KqFi0rpRLuxsITaMXgJSjnDZM6aFWdHK/mF3awBU2EQjIaj2OXFz4GXs2V/GpKXocASrnIztFxatjV5hKtenNquEJIGK3RybjfKQ29tpBMvRLm/MIEHI/sASUhe0vGJTAwj50esOxkSpj9u9yxd2Mi00Q+7IJFKmOoiANEUSntc9vVWH5JJvcACEkkaKOBmbRAYgEYSrFZ2C3tFfYJWEJzfSJmoGaMh7pIThP2NLyvGiRrnIw==" NoCertificadoSAT="00001000000502000436" SelloSAT="b8Kbdlp4Np2PQS1hlbKNRvLwUE0OzWcCMGVl1IrIrvFGxoizr/wFu/D360qW13OH3Dx4IAdKGI/nVHTJADberJhjjD4t6PT7DuIqpwF0IcYonjUK0yiwTpNvt2SCY5E9zeIFgJgvNzJd95JYKtGA7p5PEK/02MnlO5ICOx/3+ZBLEBFameVtsiUz+LCuF2Cq4WWWIO3pdNpUO0FN1IbkYUiIiT9ihy6CQIHkGrAOJb7pUfaUJ/deTwuqNhwyZ3oYwlffk3I8tQjffpvBkDACLGMlxdVBIze7DgHMa5uAjw/ojy0JAgPjuQc7EJijxXXlvc/n45AcgyjsqUF0z+rEsg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        