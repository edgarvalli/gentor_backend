
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like '6489E5B8-28B4-F54B-9CF2-E1C04152E8C5')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-31T22:43:24','FACECO','1151','6489E5B8-28B4-F54B-9CF2-E1C04152E8C5','RDD101105Q91','6489E5B8-28B4-F54B-9CF2-E1C04152E8C5.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACECO" Folio="1151" Fecha="2022-10-31T22:38:18" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="17416.49" Moneda="MXN" Total="20203.12" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="A3BIakbBbf25riDaZ0qujyGuiX79WqPRKiWz3EueqGZt4NtHEJokpxxX5iaSbWlw7V01+dad18CpC4WXy1PajpYUwK5zWPtxirTL6+bf3egqFG3pwKFQE1RatstORT8CAtHELJ/GHVKBVNP+t5AUREmXJhNEFFej7oAWdvc5jxopsv1AhnAnuPYaXUs/I/tDQkS5HuUjXco9jhdoR6ggODnLrYzyvs+x27LEO8JOAfEslwgfX/54/mxjpdDnBp0XkjuIV1nmD/8Q+85vpv2eEYs6teta07vnFwq0jOkaWvs4sqfrDXEEHRu5LBV0vm97Yf9vsuj5UavbvjHtIHC20A==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES, S.A DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="MAS121116E51" Nombre="MASCOTAS Y COMPA�IA SAPI DE CV" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2177.07" Importe="2177.07">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2177.07" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="348.33" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2177.00" Importe="2177.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2177.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="348.32" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2177.07" Importe="2177.07">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2177.07" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="348.33" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2177.07" Importe="2177.07">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2177.07" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="348.33" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2177.07" Importe="2177.07">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2177.07" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="348.33" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2177.07" Importe="2177.07">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2177.07" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="348.33" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2177.07" Importe="2177.07">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2177.07" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="348.33" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="2177.07" Importe="2177.07">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2177.07" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="348.33" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="2786.63">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2786.63" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="6489E5B8-28B4-F54B-9CF2-E1C04152E8C5" FechaTimbrado="2022-10-31T22:43:24" RfcProvCertif="SCD110105654" SelloCFD="A3BIakbBbf25riDaZ0qujyGuiX79WqPRKiWz3EueqGZt4NtHEJokpxxX5iaSbWlw7V01+dad18CpC4WXy1PajpYUwK5zWPtxirTL6+bf3egqFG3pwKFQE1RatstORT8CAtHELJ/GHVKBVNP+t5AUREmXJhNEFFej7oAWdvc5jxopsv1AhnAnuPYaXUs/I/tDQkS5HuUjXco9jhdoR6ggODnLrYzyvs+x27LEO8JOAfEslwgfX/54/mxjpdDnBp0XkjuIV1nmD/8Q+85vpv2eEYs6teta07vnFwq0jOkaWvs4sqfrDXEEHRu5LBV0vm97Yf9vsuj5UavbvjHtIHC20A==" NoCertificadoSAT="00001000000502000436" SelloSAT="RCRECUbGW/HRIv/t0GWWdRIesV6ZzmRzl3GfMNG5WQlEoTfl0rfe5BzCsLo1XKpLh9Ro+fT6tNzclR/GIIQZBG0//V7fAZPTwPoRRA6lTSaIWx0YdAWjUah8R1z3EtEK0r+b61f2wX2VkPsipeg2xB1PjEiif92ax8qA3rTnGg7mhO+YuH2aTFbwpA1an1kgxahaVnlM9AQOMEnWsnLMqqgfPMIP2uS5htuxDw98qUnRGR1GkGQEVINQLxpFULJPYze3Zjy+PpVxP6rXDCTFzKBSsHl7UoRTxvmJ1eEXmLuGPvAvTs0ySIQIXbWWW6UBkQWHwC+dbC8hcGcbsYNUZw==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        