
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'B278471C-4FD1-5941-B663-50A19BF3D923')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-11T14:03:22','FABN','590','B278471C-4FD1-5941-B663-50A19BF3D923','BNL020412HB8','B278471C-4FD1-5941-B663-50A19BF3D923.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FABN" Folio="590" Fecha="2022-10-11T13:58:18" FormaPago="03" CondicionesDePago="10 d�as de Cr�dito" SubTotal="169802.47" Descuento="16980.25" Moneda="MXN" Total="177273.78" MetodoPago="PUE" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504293681" Certificado="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" Sello="OcTNWu6GRprHmP2S2c7W+upbww1QAIpJHMQBDoUMr5vRk2ZgtZgQswzNLowvO0UfWZbP33XErAr3V4YoZRwyD1g7E4jOysm1NY0R/Zi/8/szn6t58OfIFiJxqQVGQFE2LNsWxDIK66WPwla65lBEC/QnFtFqM4e7SJ1yCxeVkjIznNVmVaSRnkYRw5rsmenZssLYsjV8UGxXUSxQ6IWyz6dMiMdpIeiGPEpIwxy9mqdp2CtrSCI26A+GEtRyQ+1vLMkkruND/DOn5UQgnESNanW+xBYLc7qVS1GXg6oa6hu3uOyPzQ9YJFNQ/7vtb2sypY2RyuA8fTZpHn3xpc6g1A==">  <cfdi:Emisor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="PFU0607109M7" Nombre="PARQUE FUNDIDORA" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHP" Cantidad="5533" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA DE PUNTA" ValorUnitario="1.6421" Importe="9085.74" Descuento="908.57">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="8177.17" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1308.35" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHI" Cantidad="43781" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA INTERMEDIA" ValorUnitario="1.5134" Importe="66258.17" Descuento="6625.82">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="59632.35" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="9541.18" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHB" Cantidad="25877" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA DE  BASE" ValorUnitario="0.9764" Importe="25266.30" Descuento="2526.63">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="22739.67" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="3638.35" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CTL" Cantidad="1" ClaveUnidad="E48" Unidad="Servicio" Descripcion="COMUNICACION / TOMA DE LECTURA" ValorUnitario="200.0000" Importe="200.00" Descuento="20.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="180.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="28.80" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CDGDMTH" Cantidad="184" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="DISTRIBUCION" ValorUnitario="63.3900" Importe="11663.76" Descuento="1166.38">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="10497.38" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1679.58" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CCGDMTH" Cantidad="150" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="CAPACIDAD" ValorUnitario="382.1900" Importe="57328.50" Descuento="5732.85">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="51595.65" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="8255.30" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="24451.56">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="24451.56" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="B278471C-4FD1-5941-B663-50A19BF3D923" FechaTimbrado="2022-10-11T14:03:22" RfcProvCertif="SCD110105654" SelloCFD="OcTNWu6GRprHmP2S2c7W+upbww1QAIpJHMQBDoUMr5vRk2ZgtZgQswzNLowvO0UfWZbP33XErAr3V4YoZRwyD1g7E4jOysm1NY0R/Zi/8/szn6t58OfIFiJxqQVGQFE2LNsWxDIK66WPwla65lBEC/QnFtFqM4e7SJ1yCxeVkjIznNVmVaSRnkYRw5rsmenZssLYsjV8UGxXUSxQ6IWyz6dMiMdpIeiGPEpIwxy9mqdp2CtrSCI26A+GEtRyQ+1vLMkkruND/DOn5UQgnESNanW+xBYLc7qVS1GXg6oa6hu3uOyPzQ9YJFNQ/7vtb2sypY2RyuA8fTZpHn3xpc6g1A==" NoCertificadoSAT="00001000000502000436" SelloSAT="rSJKE5tZ11rh3ZPbFvAImE+AQXXWK9upBvrJjvEUox9dyUnOz53X4k4ayyGZr5/nxS5GCCzIS/N3Sh9afiz7j/+kfnjACi7dFZuZ3dj9zcjUzu8t4dPMl8KMSFwNE7ey+6eTIQPXtJGjh9lW+vCk1b/l3KT2vUPQqMHtZWZRE7eUxupIJVoqt7kpAMWIxLcPSJap+eezZ+CHXYImVEFXQ2V//JZI2TKPtn456blBKra4Y4p50R2TWg5dcjiwVIk+szgf4A9BgBpUP8FuQq7qNXPkxQkQXd/RlixtBSkzHa1c4wro3pkmbihKDnWBQLpIEorKuZQX5Ib7I+mK5O4uIw==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        