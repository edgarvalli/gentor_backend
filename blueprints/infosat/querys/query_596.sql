
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'FEFC1219-8FD9-9949-8D23-9AFA1327423C')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-11T16:07:38','FABN','596','FEFC1219-8FD9-9949-8D23-9AFA1327423C','BNL020412HB8','FEFC1219-8FD9-9949-8D23-9AFA1327423C.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FABN" Folio="596" Fecha="2022-10-11T16:02:31" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="67058.07" Descuento="6705.81" Moneda="MXN" Total="70008.62" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504293681" Certificado="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" Sello="c8nx57MmedKD21sXdsnYT5EnWbhETV+jMa6pCg07hgPcAAZFliGgckML3MGI9sSGtP+uJtp6L7ekXPlfs5vtii66IYItKqI7ftUqHd1FFaM1w/yfXHcRvzF/aHB/lqCjBEE3x448+stXTcwr0gV9UG1V+B0ivUTQ6KFgbXJAgW67b/GOW6Kd9UJ1YejEa5zPaj2XsMkeQwPMNqq8K3LDn0oQcrc/hp0Cl8M07U2OCHkNR3u+T7xXhEhcUXq9+NDI01qYZKQHORfZyNfvnzvRbCDjZvnwQAGGRG2K09OFyAZ1wnAgJWX73cn9Z8ONZLZ49nZqrKxv7sS6m2zmGN32Xw==">  <cfdi:Emisor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="SIM870529CA0" Nombre="SIST. INTEGRAL PARA EL MANEJO ECOLOGICO Y PROCE. DE DESECHOS" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHP" Cantidad="2619" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA DE PUNTA" ValorUnitario="1.6421" Importe="4300.66" Descuento="430.07">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="3870.59" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="619.29" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHI" Cantidad="33174" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA INTERMEDIA" ValorUnitario="1.5134" Importe="50205.53" Descuento="5020.55">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="45184.98" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="7229.60" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="GDMTHB" Cantidad="7857" ClaveUnidad="KWH" Unidad="Kilovatio hora" Descripcion="ENERGIA DE  BASE" ValorUnitario="0.9764" Importe="7671.57" Descuento="767.16">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="6904.41" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1104.71" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CFGDMTH" Cantidad="1" ClaveUnidad="E48" Unidad="Servicio" Descripcion="CARGO FIJO" ValorUnitario="372.2200" Importe="372.22" Descuento="37.22">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="335.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="53.60" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CDGDMTH" Cantidad="47" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="DISTRIBUCION" ValorUnitario="63.3900" Importe="2979.33" Descuento="297.93">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2681.40" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="429.02" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="83101805" NoIdentificacion="CCGDMTH" Cantidad="4" ClaveUnidad="KWT" Unidad="kilovatio" Descripcion="CAPACIDAD" ValorUnitario="382.1900" Importe="1528.76" Descuento="152.88">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1375.88" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="220.14" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="9656.36">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="9656.36" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="FEFC1219-8FD9-9949-8D23-9AFA1327423C" FechaTimbrado="2022-10-11T16:07:38" RfcProvCertif="SCD110105654" SelloCFD="c8nx57MmedKD21sXdsnYT5EnWbhETV+jMa6pCg07hgPcAAZFliGgckML3MGI9sSGtP+uJtp6L7ekXPlfs5vtii66IYItKqI7ftUqHd1FFaM1w/yfXHcRvzF/aHB/lqCjBEE3x448+stXTcwr0gV9UG1V+B0ivUTQ6KFgbXJAgW67b/GOW6Kd9UJ1YejEa5zPaj2XsMkeQwPMNqq8K3LDn0oQcrc/hp0Cl8M07U2OCHkNR3u+T7xXhEhcUXq9+NDI01qYZKQHORfZyNfvnzvRbCDjZvnwQAGGRG2K09OFyAZ1wnAgJWX73cn9Z8ONZLZ49nZqrKxv7sS6m2zmGN32Xw==" NoCertificadoSAT="00001000000502000436" SelloSAT="fcDBHi0XlceYgM1+njAVe9rmI6CG3iGQ19vA9KFbA2Ec7tA6xFiWl/ftO3D0MKCjuwniAy6tsh0N/GAQES/GLh2Y2tOQ2I2GRSeq+Nbml1fAlNtPwfEgIcbbqLIxZrpIkvH/FZerGP9CbiYEns9yGHHVXe9tvDR9hcPYhTthjnx4freSsLK7pVLHGi4mzgwYAIkLjI/jtHaqaBOAQMDR0ApukpaUwhRtBfFgBkag1l1RT/JcNx7XC/fAAVL5edH0w7Qwx7RHec3IhdzNV/sJ8r6oHDsFgadMxwjtridwS67sttiYFEj9Foeeo0X8apLHZzM4VbBxh9n3wd/Y5n13bg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        