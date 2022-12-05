
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'C9FDBC5A-9168-BD49-8FCB-29EED609D34A')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-08T08:46:53','FABN','639','C9FDBC5A-9168-BD49-8FCB-29EED609D34A','BNL020412HB8','C9FDBC5A-9168-BD49-8FCB-29EED609D34A.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FABN" Folio="639" Fecha="2022-11-08T08:41:48" FormaPago="03" CondicionesDePago="10 d�as de Cr�dito" SubTotal="314312.80" Descuento="31431.28" Moneda="MXN" Total="328142.57" MetodoPago="PUE" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504293681" Certificado="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" Sello="DBcZr7sEaZejXavrPdesb1bTA62VXe7TgurUAzsARDZCY4mZcLrTxzLBBkl3OfTuXJJ5PUAF8+Dm0cSnmJ4BTCw7pZnBRB+y++UFXhlfMr+pcjbcsKDUOgIZqK/TOpy3Sj1dLBU/CUFqnHKNu2aes/AqOTn5ZJkmouyMmrA58QMryBKWFQTrxqcn/ciB+lSg5iCFpuOynla55JVT9W1O+2h3Ilb+a5PzKsO+oGwrOXqyP87YKQUXLef7nUPMWwOq++E/v4C0P4oPfURKiHOO7uOV12iyI0AzrRXvbnAUnimVgcvybjEFCmefL/SjF5tqhmu3rIQ822pkb5mARlCNww==">  <cfdi:Emisor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="PFU0607109M7" Nombre="PARQUE FUNDIDORA" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHP" Cantidad="6132" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA DE PUNTA" ValorUnitario="1.6479" Importe="10104.92" Descuento="1010.49">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="9094.43" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1455.11" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHI" Cantidad="84144" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA INTERMEDIA" ValorUnitario="1.5187" Importe="127789.49" Descuento="12778.95">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="115010.54" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="18401.69" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHB" Cantidad="38316" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA DE  BASE" ValorUnitario="0.9795" Importe="37530.52" Descuento="3753.05">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="33777.47" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="5404.40" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CTL" Cantidad="1" ClaveUnidad="E48" Unidad="Servicio" Descripcion="COMUNICACION / TOMA DE LECTURA" ValorUnitario="2969.4700" Importe="2969.47" Descuento="296.95">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2672.52" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="427.60" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CDGDMTH" Cantidad="304" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="DISTRIBUCION" ValorUnitario="63.3900" Importe="19270.56" Descuento="1927.06">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="17343.50" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="2774.96" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CCGDMTH" Cantidad="304" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="CAPACIDAD" ValorUnitario="383.7100" Importe="116647.84" Descuento="11664.78">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="104983.06" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="16797.29" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="45261.05">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="45261.05" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="C9FDBC5A-9168-BD49-8FCB-29EED609D34A" FechaTimbrado="2022-11-08T08:46:53" RfcProvCertif="SCD110105654" SelloCFD="DBcZr7sEaZejXavrPdesb1bTA62VXe7TgurUAzsARDZCY4mZcLrTxzLBBkl3OfTuXJJ5PUAF8+Dm0cSnmJ4BTCw7pZnBRB+y++UFXhlfMr+pcjbcsKDUOgIZqK/TOpy3Sj1dLBU/CUFqnHKNu2aes/AqOTn5ZJkmouyMmrA58QMryBKWFQTrxqcn/ciB+lSg5iCFpuOynla55JVT9W1O+2h3Ilb+a5PzKsO+oGwrOXqyP87YKQUXLef7nUPMWwOq++E/v4C0P4oPfURKiHOO7uOV12iyI0AzrRXvbnAUnimVgcvybjEFCmefL/SjF5tqhmu3rIQ822pkb5mARlCNww==" NoCertificadoSAT="00001000000502000436" SelloSAT="YcojLdrkHtTj/bIqggMWHjhLCUd0x8LcPu5pjDJCTiIf9vENUMVzzBR6BfOyfXQzfGrr3iuD3vYperXgW+VAJYzHTxfsipJ9j65OOvbuW741CKECvWmqHB6sAG+WtEG1OiN1y5wfqIr/t7jolzOD8lbUq7SNGkZ2RMhW9szkvnTWqIupgVIusl5aztyVPytehSPeTgXDK1f7mqB+vX9nSn/PI3Kzh0e+P/H5vAZkxb+5RLiLg4N7gBqMMTHfVMSbWgq7ZrQ61Z2nXMKeADM9Ldc9S+PyRN5x1Xzm7qEFRWztaq8AaIUmWdofpM+CqqkTTlpOQ+gLJIhi49w0gVdiog==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        