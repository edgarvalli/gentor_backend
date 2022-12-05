
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'B1B0999B-6291-514B-9DF3-4D9976B6A716')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-19T04:19:32','FACECO','1102','B1B0999B-6291-514B-9DF3-4D9976B6A716','RDD101105Q91','B1B0999B-6291-514B-9DF3-4D9976B6A716.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACECO" Folio="1102" Fecha="2022-10-19T04:14:28" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="3362.60" Moneda="MXN" Total="3900.62" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="OKLWMFOP5bEhVue2TwGqQDmEV99OYDO9tnV0vb698JcTPpETULGv2ZkHZPKNwqnSSEkfleUfNUhijCP2Y3BlXar1X0Mx4RuixA5/NT4+mV+nk+Mx7hE1WPw00uq/3WlzHWkVN6fPXIT62KjFWOdsnTmb7a5dG/z1wHKzEBPPB7lKfEzZbWZGARcONjJEKD6jJPIOvQmaRajDigl79SJeoQui+rBLECthTnYHVo95tYqEWvxCJC33JIz78XVkRjl4wpuhw4b+zYs2SOOC5OYiBJt0WmedSH/YVYETkjdRDC2+QTNHh/i/FCG1b5bwkYnRk+xnTX26hZRJl1Osh12fXg==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES, S.A DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="ASE001129LB6" Nombre="PANADERIA Y PASTELERIA GAMA SA DE CV" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="3362.60" Importe="3362.60">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="3362.60" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="538.02" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="538.02">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="538.02" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="B1B0999B-6291-514B-9DF3-4D9976B6A716" FechaTimbrado="2022-10-19T04:19:32" RfcProvCertif="SCD110105654" SelloCFD="OKLWMFOP5bEhVue2TwGqQDmEV99OYDO9tnV0vb698JcTPpETULGv2ZkHZPKNwqnSSEkfleUfNUhijCP2Y3BlXar1X0Mx4RuixA5/NT4+mV+nk+Mx7hE1WPw00uq/3WlzHWkVN6fPXIT62KjFWOdsnTmb7a5dG/z1wHKzEBPPB7lKfEzZbWZGARcONjJEKD6jJPIOvQmaRajDigl79SJeoQui+rBLECthTnYHVo95tYqEWvxCJC33JIz78XVkRjl4wpuhw4b+zYs2SOOC5OYiBJt0WmedSH/YVYETkjdRDC2+QTNHh/i/FCG1b5bwkYnRk+xnTX26hZRJl1Osh12fXg==" NoCertificadoSAT="00001000000502000436" SelloSAT="mCDwmQ5rMjqHQF9/l4889xXS/EMWkGW3RhrOKuDKb3QvwpGvsKAFJ3UW1wieH+yoTyqf9KiVOwOL7ol/h+qj072D403JtieMSkko8jRrZ+pq2x5MZzaitooR3qmGgrVZgFat/06DrVAdydv+nj45+s46IxcC7HaB1p09lXeu6Yby2MBGApM4uRGLuXaZbZ98gw2vtKsuoMJJsuYsa1ZtAk1qnox+bfkkhJiZjTP7LtAEQpnCoblz/uuW7347eiPL5UAbDAVMy1YLyvsNbwB6LA3hF9P22EzYRWPsny/v8pqY+EGcIQ8vtdbBmYI6oCqe5+xAC0dnSKcXlXKl57BVrA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        