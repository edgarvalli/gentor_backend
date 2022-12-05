
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'A7C1BC87-02FD-F64F-B865-A8CBAEC09552')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-15T17:07:29','CR','85067','A7C1BC87-02FD-F64F-B865-A8CBAEC09552','','A7C1BC87-02FD-F64F-B865-A8CBAEC09552.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/CartaPorte20 http://www.sat.gob.mx/sitio_internet/cfd/CartaPorte/CartaPorte20.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="4.0" Serie="CR" Folio="85067" Fecha="2022-09-15T17:03:27" Sello="Fx8blIfYZEvp991Wp/VuR4Lfg9nuqa0PvDfVJ+s5ZO0ni7DamIipruBOPfrnVE2Sr4/AJbXTtlN/iYwlpqcn3pPdxMV6mGPEglMBI7r39OVgfzfqCtzNqH2gJYDwivW+ZZmDzi9Y3bG6/UMzAyuaxXeRPgSB98a17iclLHzcBy9DaLPiez+Vbar/KJzoLH4erSlTvZh8T1goTUkEsvBX/BbHz2o6VvOdyQHvqaXDUEANu3l8QSn1usvRm9b8TyaL8xNr5BvnzWTPJB2ozHskWZ6FX1x/6VFp0m+Eh1bqfdnWXoJM9V/eA8R+4IGt2J+GAK2Y4MV9Tw7qaZDj+XMfpA==" FormaPago="99" NoCertificado="00001000000505069920" Certificado="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" TipoCambio="1" MetodoPago="PPD" Exportacion="01" TipoDeComprobante="I" LugarExpedicion="66052" xmlns:cartaporte20="http://www.sat.gob.mx/Cartaporte20" xmlns:cfdi="http://www.sat.gob.mx/cfd/4" SubTotal="3753.05" Total="4353.54" Moneda="MXN">  <cfdi:Emisor Nombre="ELECTROFISA" Rfc="ELE040513KJ2" RegimenFiscal="601" />  <cfdi:Receptor Nombre="SSNL SERVICIOS SUSTENTABLES NL" Rfc="BNL020412HB8" UsoCFDI="G03" DomicilioFiscalReceptor="64000" RegimenFiscalReceptor="601" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="3.0000" ClaveUnidad="H87" Descripcion="9500B JGO DE EXTRACTOR DE TORNILLO URREA" ValorUnitario="150.5000" Importe="451.5000" ObjetoImp="02" NoIdentificacion="4420">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="451.5000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="72.2400" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="27111900" Cantidad="5.0000" ClaveUnidad="H87" Descripcion="C-1/4X5 CINCEL DE CORTE FRIO TRUPER 1/4X 5" ValorUnitario="26.6100" Importe="133.0500" ObjetoImp="02" NoIdentificacion="11553">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="133.0500" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="21.2880" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="LL-2010M LLAVE COMBINADA EXTRALARGA 10M" ValorUnitario="48.9400" Importe="48.9400" ObjetoImp="02" NoIdentificacion="13333">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="48.9400" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="7.8304" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="LL-2011M LLAVE COMBINADA EXTRALARGA 11M TRUPER" ValorUnitario="56.9100" Importe="56.9100" ObjetoImp="02" NoIdentificacion="10408">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="56.9100" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="9.1056" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="PISCA-A2 PISTOLA DE CALOR PROFESIONAL 1500W TRUPER" ValorUnitario="571.2800" Importe="571.2800" ObjetoImp="02" NoIdentificacion="21143">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="571.2800" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="91.4048" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="7.0000" ClaveUnidad="H87" Descripcion="GABARDINA IMPERMEABLE DRY DROP SELLADA CORTA XL JYRSA" ValorUnitario="187.5100" Importe="1312.5700" ObjetoImp="02" NoIdentificacion="15678">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1312.5700" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="210.0112" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="7.0000" ClaveUnidad="H87" Descripcion="ST-6-600-728 BOTA JARDINERA NEGRA #28 WESTON" ValorUnitario="168.4000" Importe="1178.8000" ObjetoImp="02" NoIdentificacion="18883">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1178.8000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="188.6080" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="600.49">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Base="3753.05" Importe="600.49" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="1.1" UUID="A7C1BC87-02FD-F64F-B865-A8CBAEC09552" FechaTimbrado="2022-09-15T17:07:29" RfcProvCertif="SCD110105654" SelloCFD="Fx8blIfYZEvp991Wp/VuR4Lfg9nuqa0PvDfVJ+s5ZO0ni7DamIipruBOPfrnVE2Sr4/AJbXTtlN/iYwlpqcn3pPdxMV6mGPEglMBI7r39OVgfzfqCtzNqH2gJYDwivW+ZZmDzi9Y3bG6/UMzAyuaxXeRPgSB98a17iclLHzcBy9DaLPiez+Vbar/KJzoLH4erSlTvZh8T1goTUkEsvBX/BbHz2o6VvOdyQHvqaXDUEANu3l8QSn1usvRm9b8TyaL8xNr5BvnzWTPJB2ozHskWZ6FX1x/6VFp0m+Eh1bqfdnWXoJM9V/eA8R+4IGt2J+GAK2Y4MV9Tw7qaZDj+XMfpA==" NoCertificadoSAT="00001000000502000436" SelloSAT="BKUdDaM9gF/63qTqCyAe/7eDpyu8DLejvGG+k5cZTa6kagf2iwhMsZVFOLBXgkA0my+4cYpQWh4mSim/VBJ+PGuoHrEGgAqiH/LtncvW4/rXHMAupKejW7aLDsYtFpaHStEVBcm7w7ICrFR/UoFqf5Gwztm6JnUvHR0Iaf5/fVQZgM8lM/miKzX1IsFiXLw9DA6eIM8ZgooABSI85yAzH5I9ELBXh1fwrX9ky98dR8RKTxy+P63WsTAuRoQ6NvMHCY9JLbx69fMb+R4zgGU1R7RZZRGLTCoEYwLc1uNJ73DycUEIGzykPxXt/+6u12DnIXdP1aU0/Ek0zLoYlkaFxA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        