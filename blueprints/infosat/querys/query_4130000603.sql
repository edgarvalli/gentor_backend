
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like 'A5D068A4-FBE1-4B2A-A491-45CF0F8F6EC7')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-26T12:05:58','','4130000603','A5D068A4-FBE1-4B2A-A491-45CF0F8F6EC7','JEN1807186P5','A5D068A4-FBE1-4B2A-A491-45CF0F8F6EC7.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd " Version="3.3" Folio="4130000603" Fecha="2022-08-25T14:40:43" Sello="T/kRvF4rpUWiwJ2C+nBgLVv2qpEx/qkWJQ1Ie8uAizZNzT854aqIIST+tL9fiZjAt+6akFiEdp23fQCb6UtBuPs+Y91Jqct/Vy27vZJBy6sJM6je7ixDP/XVNZlo4PFHVt6wUYYJa3Ty6foYOCul7bhaJa3Qm671uICeuBz6OdmO1LYJppNHrvCAS7rkL8eiDNxo02CgME4ibVn81BsJyaI9eQXvPcyTxObKujuRxt2AhEpOpgu+T74/vC+aQiyNRMK2/LgDBcc1nPfAVnaDVUFJcviCnWG4vxjtZv0UhmGkOstTbOq9tywoidooiKmLaQVyt860JFJp6bC6r4FCiw==" FormaPago="99" NoCertificado="00001000000503720326" Certificado="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" SubTotal="1699.00" Moneda="USD" TipoCambio="19.9982" Total="1970.84" TipoDeComprobante="I" MetodoPago="PPD" LugarExpedicion="45690" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">  <cfdi:Emisor Rfc="JEN1807186P5" Nombre="Jenbacher, S. de R.L. de C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="26101400" NoIdentificacion="FS_MX_LABOR_ROUTINE_STD" Cantidad="8.00" ClaveUnidad="HUR" Unidad="HR" Descripcion="FS_MX_LABOR_ROUTINE_STD Standard Labor - Hourly Base Rate" ValorUnitario="74.00" Importe="592.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="592.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="94.72" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="26101400" NoIdentificacion="FS_MX_TRAVEL_FEE" Cantidad="1.00" ClaveUnidad="H87" Unidad="EA" Descripcion="FS_MX_TRAVEL_FEE Flat fee for Travel" ValorUnitario="1107.00" Importe="1107.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1107.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="177.12" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="271.84">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="271.84" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento><tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="1.1" UUID="A5D068A4-FBE1-4B2A-A491-45CF0F8F6EC7" FechaTimbrado="2022-08-26T12:05:58" SelloCFD="T/kRvF4rpUWiwJ2C+nBgLVv2qpEx/qkWJQ1Ie8uAizZNzT854aqIIST+tL9fiZjAt+6akFiEdp23fQCb6UtBuPs+Y91Jqct/Vy27vZJBy6sJM6je7ixDP/XVNZlo4PFHVt6wUYYJa3Ty6foYOCul7bhaJa3Qm671uICeuBz6OdmO1LYJppNHrvCAS7rkL8eiDNxo02CgME4ibVn81BsJyaI9eQXvPcyTxObKujuRxt2AhEpOpgu+T74/vC+aQiyNRMK2/LgDBcc1nPfAVnaDVUFJcviCnWG4vxjtZv0UhmGkOstTbOq9tywoidooiKmLaQVyt860JFJp6bC6r4FCiw==" NoCertificadoSAT="00001000000508769381" SelloSAT="ni1S2EKHusAERR2rNgmeFuLiTu1N7vWO/eLr9GfDy66rM9yO3n5eb2sRisW+NKw/UBJGyuq+1KR7C7ufSr3z/669kqw7ON8Y2WVm9aaDHV3u3vzrXAlsXIGsLLhpx4sDY7Y/1JeCJDaO0RJalPDTcA+7uJuAE3slZgJqw+dN2MHhXb/VcQoJJa1vVRnDhiUEiLGJA0iBXM7WkBKYBdwwMpIG0NQ0h0QEajGmbDsUIujqxSdFHuuvSoTDgdyowxbY94nPPHYUEI+2qNGOuFgpieyzIscJOy+LjZSZoCZnc9jIIT6MlYSuQH/m012iRnqZlJMJpjfBDDwxAHDn0/bmnw==" RfcProvCertif="GYS1010015I2" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" /></cfdi:Complemento>  <cfdi:Addenda>    <ecfd:ECFD version="1.0" xmlns:ecfd="http://www.southconsulting.com/schemas" xsi:schemaLocation="http://www.southconsulting.com/schemas http://www.southconsulting.com/schemas/ecfd.xsd">      <ecfd:Documento ID="T330">        <ecfd:Encabezado>          <ecfd:IdDoc>            <ecfd:NroAprob>1</ecfd:NroAprob>            <ecfd:AnoAprob>1900</ecfd:AnoAprob>            <ecfd:Tipo>33</ecfd:Tipo>            <ecfd:Folio>4130000603</ecfd:Folio>            <ecfd:Estado>ORIGINAL</ecfd:Estado>            <ecfd:FechaEmis>2022-08-25T14:40:43</ecfd:FechaEmis>            <ecfd:FormaPago>99</ecfd:FormaPago>            <ecfd:MedioPago>PPD</ecfd:MedioPago>          </ecfd:IdDoc>          <ecfd:ExEmisor>            <ecfd:RFCEmisor>JEN1807186P5</ecfd:RFCEmisor>            <ecfd:NmbEmisor>Jenbacher, S. de R.L. de C.V.</ecfd:NmbEmisor>            <ecfd:DomFiscal />          </ecfd:ExEmisor>          <ecfd:ExReceptor>            <ecfd:RFCRecep>BNL020412HB8</ecfd:RFCRecep>            <ecfd:NmbRecep>SSNL SERVICIOS SUSTENTABLES NL</ecfd:NmbRecep>            <ecfd:CdgSucursal>NO</ecfd:CdgSucursal>            <ecfd:DomFiscalRcp />          </ecfd:ExReceptor>          <ecfd:Totales>            <ecfd:Moneda>USD</ecfd:Moneda>            <ecfd:FctConv>19.9982</ecfd:FctConv>            <ecfd:SubTotal>1699.00</ecfd:SubTotal>            <ecfd:MntImp>271.84</ecfd:MntImp>            <ecfd:VlrPagar>1970.84</ecfd:VlrPagar>          </ecfd:Totales>          <ecfd:ExImpuestos>            <ecfd:TipoImp>002</ecfd:TipoImp>            <ecfd:TasaImp>0.160000</ecfd:TasaImp>            <ecfd:MontoImp>271.84</ecfd:MontoImp>          </ecfd:ExImpuestos>        </ecfd:Encabezado>        <ecfd:Detalle>          <ecfd:NroLinDet>1</ecfd:NroLinDet>          <ecfd:CdgItem>            <ecfd:TpoCodigo>EAN</ecfd:TpoCodigo>            <ecfd:VlrCodigo>FS_MX_LABOR_ROUTINE_STD</ecfd:VlrCodigo>          </ecfd:CdgItem>          <ecfd:DscLang>ES</ecfd:DscLang>          <ecfd:DscItem>FS_MX_LABOR_ROUTINE_STD Standard Labor - Hourly Base Rate</ecfd:DscItem>          <ecfd:QtyItem>8.00</ecfd:QtyItem>          <ecfd:UnmdItem>HR</ecfd:UnmdItem>          <ecfd:PrcNetoItem>74.00</ecfd:PrcNetoItem>          <ecfd:ImpuestosDet>            <ecfd:TipoImp>IVA</ecfd:TipoImp>            <ecfd:TasaImp>16.00</ecfd:TasaImp>            <ecfd:MontoImp>94.72</ecfd:MontoImp>          </ecfd:ImpuestosDet>          <ecfd:MontoNetoItem>592.00</ecfd:MontoNetoItem>        </ecfd:Detalle>        <ecfd:Detalle>          <ecfd:NroLinDet>2</ecfd:NroLinDet>          <ecfd:CdgItem>            <ecfd:TpoCodigo>EAN</ecfd:TpoCodigo>            <ecfd:VlrCodigo>FS_MX_TRAVEL_FEE</ecfd:VlrCodigo>          </ecfd:CdgItem>          <ecfd:DscLang>ES</ecfd:DscLang>          <ecfd:DscItem>FS_MX_TRAVEL_FEE Flat fee for Travel</ecfd:DscItem>          <ecfd:QtyItem>1.00</ecfd:QtyItem>          <ecfd:UnmdItem>EA</ecfd:UnmdItem>          <ecfd:PrcNetoItem>1107.00</ecfd:PrcNetoItem>          <ecfd:ImpuestosDet>            <ecfd:TipoImp>IVA</ecfd:TipoImp>            <ecfd:TasaImp>16.00</ecfd:TasaImp>            <ecfd:MontoImp>177.12</ecfd:MontoImp>          </ecfd:ImpuestosDet>          <ecfd:MontoNetoItem>1107.00</ecfd:MontoNetoItem>        </ecfd:Detalle>        <ecfd:TimeStamp>2022-08-26T12:05:55</ecfd:TimeStamp>      </ecfd:Documento>      <ecfd:Personalizados>        <ecfd:campoString name="email">invoices.americas@innio.com</ecfd:campoString>        <ecfd:campoString name="bumid">22082536-1a93-422a-9e6b-09b01b365ad9</ecfd:campoString>        <ecfd:campoString name="salida" />        <ecfd:campoString name="llegada" />        <ecfd:campoString name="folio" />        <ecfd:campoString name="huesped" />        <ecfd:campoString name="P7" />        <ecfd:campoString name="P8" />        <ecfd:campoString name="P9" />        <ecfd:campoString name="P10">PPD</ecfd:campoString>        <ecfd:campoString name="TipoDoc" />        <ecfd:campoString name="DoctoFiscal" />        <ecfd:campoString name="VerAddenda" />        <ecfd:campoString name="RefProv" />        <ecfd:campoString name="ProvCodigo" />        <ecfd:campoString name="ProvNombre" />        <ecfd:campoString name="ProvSufijo" />        <ecfd:campoString name="DestCodigo" />        <ecfd:campoString name="DestNombre" />        <ecfd:campoString name="DestSufijo" />        <ecfd:campoString name="NotaCabecera" />        <ecfd:campoString name="OtrosCargos" />        <ecfd:campoString name="OtrosMonto" />        <ecfd:campoString name="OrderNumber" />        <ecfd:campoString name="Contrato" />        <ecfd:campoString name="Contacto" />        <ecfd:campoString name="Correo" />        <ecfd:campoString name="Remision" />        <ecfd:campoString name="FolioInt" />        <ecfd:campoString name="MonedaADD" />        <ecfd:campoString name="Material" />        <ecfd:campoString name="FechaRecibo">//20</ecfd:campoString>        <ecfd:campoString name="RefJenbacher">7096640</ecfd:campoString>        <ecfd:campoString name="AdditionalInf">Requision de Servicio: 1367127</ecfd:campoString>        <ecfd:campoNumero name="MtoTotal">1699.00</ecfd:campoNumero>      <ecfd:campoString name="acknowled">b62c5774-0ae9-4da7-9d38-d07c71d175eb</ecfd:campoString></ecfd:Personalizados>    </ecfd:ECFD>  </cfdi:Addenda></cfdi:Comprobante>')
                END
            END
        