
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SCG931026LW1')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SCG931026LW1] WHERE UUID like 'A67354F3-5408-0D47-B01C-A3AA569BE37A')
                BEGIN
                    INSERT INTO [SCG931026LW1] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-10T13:25:42','FASCG','100','A67354F3-5408-0D47-B01C-A3AA569BE37A','SCG931026LW1','A67354F3-5408-0D47-B01C-A3AA569BE37A.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASCG" Folio="100" Fecha="2022-11-10T13:20:38" FormaPago="99" CondicionesDePago="0 d�as de Cr�dito" SubTotal="12116.58" Moneda="MXN" Total="14055.23" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000504332244" Certificado="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" Sello="PsZXE7V5Jj07wvajys6w20IWuhYsGrW5d3fdJjRiY7jPkkqljMdlmUA6NAKI9N/uijNw0BHNcGcfss6Gnmr2HaK4pNokcqMokkZGfjOb2otnw9BslefPIsc1ZAJ/3QYznPVi62IkDRAwU+E6kvfkqpkESvYGIDm56tST0ssJ28mrS8zwWeH+kGaHt6sk6poftwWkTK4zIuaVWbPIwSj7yuaI7fJq0e9YmgixUAAY5dDucbdN22CEZIHSVtTcDRChC+qY30cTBG6TJ0yl4wkTqi+p8jYnGQvRbv3cJDOQeAFttnsNXDyHIN1FhKap33aklJEgJgcFycYE+7Wq0f1uGA==">  <cfdi:Emisor Rfc="SCG931026LW1" Nombre="SERVICIOS CORPORATIVOS GENTOR, S.A. DE C.V." RegimenFiscal="623" />  <cfdi:Receptor Rfc="ODA200122KH6" Nombre="ODALTA, S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="80161504" NoIdentificacion="522438" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIOS CORPORATIVOS ESPECIALIZADOS" ValorUnitario="12116.58" Importe="12116.58">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="12116.58" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1938.65" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="1938.65">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="1938.65" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="A67354F3-5408-0D47-B01C-A3AA569BE37A" FechaTimbrado="2022-11-10T13:25:42" RfcProvCertif="SCD110105654" SelloCFD="PsZXE7V5Jj07wvajys6w20IWuhYsGrW5d3fdJjRiY7jPkkqljMdlmUA6NAKI9N/uijNw0BHNcGcfss6Gnmr2HaK4pNokcqMokkZGfjOb2otnw9BslefPIsc1ZAJ/3QYznPVi62IkDRAwU+E6kvfkqpkESvYGIDm56tST0ssJ28mrS8zwWeH+kGaHt6sk6poftwWkTK4zIuaVWbPIwSj7yuaI7fJq0e9YmgixUAAY5dDucbdN22CEZIHSVtTcDRChC+qY30cTBG6TJ0yl4wkTqi+p8jYnGQvRbv3cJDOQeAFttnsNXDyHIN1FhKap33aklJEgJgcFycYE+7Wq0f1uGA==" NoCertificadoSAT="00001000000502000436" SelloSAT="rWJMbsAosdUjHM+jALCOaP3OSudc8AVjZa/eSdTdUyjMVE9LGmrONBcIE6rIhxSqKbzOuvFQveabaUddXhUEbTxAa27VFCeyFLIOw1/gVGJ0VRzImG46i0jcbtXnHr5ET0eUo/bJj2EO4B3wKu7NzXvmf0X0G4drLbFiHoEWdQLaNpWFQjBOg2AXjUAn05rAR+XHPs1Su5Zhcdi68n5kGYsyRw95wBji1TMEKoT/Z5sNIGZwsSnPMmNSDNir06Ye8Bk2tb0wxlUY97KakaXzg4Nc+5G41bMCs+eqVxa9jzx6feM1WxZ2xsWr7lSWDi8QBN7LpnAvbSn9R6Cv8+E1ew==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        