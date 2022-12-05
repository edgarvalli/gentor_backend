
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '6717C075-85E0-BF49-B387-A71567D815CA')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-08T08:43:44','FABN','638','6717C075-85E0-BF49-B387-A71567D815CA','BNL020412HB8','6717C075-85E0-BF49-B387-A71567D815CA.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FABN" Folio="638" Fecha="2022-11-08T08:38:38" FormaPago="03" CondicionesDePago="10 d�as de Cr�dito" SubTotal="57594.03" Descuento="5759.41" Moneda="MXN" Total="60128.16" MetodoPago="PUE" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504293681" Certificado="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" Sello="k+6//mh0ue4VXw39XEbru/5SNcq9/wr0Q/0Pnoqncn1tbhYL0zFwoPRGxUysFLYzt1igNmfLGdZ6lEIP2e7ncWt352T7p+7Pe/KFUBPeSDFkW+su7K1dC5NT8iy0o+2dYrcNgtneBQPin2qGojdocIojWiJgoaNoH2W/XFFAR4Bzbq2XGhYGF6DngqTKuz3nHs+LGc2twjeVfPRt3xIdgcmaNTvzYgVfHhsrX4xmuJjb08CKkbhkhY5V7t+MDnWHug8zimtw3CEVG8IhpZEVEpaBhCfIoK8RJ2LsUOtQLSyudvElQk4ysDupN58JMdl8fl0INuN7YTnnEsfpVmiEpg==">  <cfdi:Emisor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="PFU0607109M7" Nombre="PARQUE FUNDIDORA" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHP" Cantidad="2091" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA DE PUNTA" ValorUnitario="1.6479" Importe="3445.76" Descuento="344.58">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="3101.18" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="496.19" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHI" Cantidad="12731" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA INTERMEDIA" ValorUnitario="1.5187" Importe="19334.57" Descuento="1933.46">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="17401.11" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2784.18" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHB" Cantidad="7862" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA DE  BASE" ValorUnitario="0.9795" Importe="7700.83" Descuento="770.08">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="6930.75" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1108.92" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CTL" Cantidad="1" ClaveUnidad="E48" Unidad="Servicio" Descripcion="COMUNICACION / TOMA DE LECTURA" ValorUnitario="2969.4700" Importe="2969.47" Descuento="296.95">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2672.52" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="427.60" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CDGDMTH" Cantidad="54" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="DISTRIBUCION" ValorUnitario="63.3900" Importe="3423.06" Descuento="342.31">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="3080.75" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="492.92" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CCGDMTH" Cantidad="54" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="CAPACIDAD" ValorUnitario="383.7100" Importe="20720.34" Descuento="2072.03">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="18648.31" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2983.73" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="8293.54">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="8293.54" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="6717C075-85E0-BF49-B387-A71567D815CA" FechaTimbrado="2022-11-08T08:43:44" RfcProvCertif="SCD110105654" SelloCFD="k+6//mh0ue4VXw39XEbru/5SNcq9/wr0Q/0Pnoqncn1tbhYL0zFwoPRGxUysFLYzt1igNmfLGdZ6lEIP2e7ncWt352T7p+7Pe/KFUBPeSDFkW+su7K1dC5NT8iy0o+2dYrcNgtneBQPin2qGojdocIojWiJgoaNoH2W/XFFAR4Bzbq2XGhYGF6DngqTKuz3nHs+LGc2twjeVfPRt3xIdgcmaNTvzYgVfHhsrX4xmuJjb08CKkbhkhY5V7t+MDnWHug8zimtw3CEVG8IhpZEVEpaBhCfIoK8RJ2LsUOtQLSyudvElQk4ysDupN58JMdl8fl0INuN7YTnnEsfpVmiEpg==" NoCertificadoSAT="00001000000502000436" SelloSAT="W7mri+Lpzn0O2pDLYKxtcBkoLwLZgCrbu3vQUb/WfDfDxupDzjp2QhDsxqVcmOyukdaI96f2qm9l0GgL0VS+kfAQEraEAas7fHxQMJVkO1KxRmQ3eYLASqM1L+RsTbh0ttgSls092B9sbhXYxqqtmb0uCpws6EnY0DR9/MMRqywxLX+zhMBMJWtUShhODxDZ7Jb5Xl7L+8w7khwpslSX3cvrz12JspTNCmFADP+QqnCRV8AePb1uoy7hvWUpjESJ+Xm5hqt3rVR5KJuo0EWJrstyk1ksevsLpryHzQhQvXHnIJEFG93Cm1YoSbPQwHG/G+kivzG4qBl1XvfYDQ/I0A==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        