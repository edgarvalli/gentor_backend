
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '5BBA9867-1C4A-F144-8796-CB090EB0DE76')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-15T17:06:45','CR','85066','5BBA9867-1C4A-F144-8796-CB090EB0DE76','','5BBA9867-1C4A-F144-8796-CB090EB0DE76.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/CartaPorte20 http://www.sat.gob.mx/sitio_internet/cfd/CartaPorte/CartaPorte20.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="4.0" Serie="CR" Folio="85066" Fecha="2022-09-15T17:02:44" Sello="JjMaKfE1Q1a6g7bAXAf5n8i/QhbqXRwyWQOjIvVrchoXE71ebACdffXJBRaZzs35kPBt/k8G/4Pk9OETkZjbKGnKobgN+qa8VfxLtMa1KdAAVgWCu9w8xXCRvDOCUc2CIktNh2eHESA+fLohueYNcKz/ywxhoW1cxldYQy0vZPx9bp2e6RIw8qdFVC7x3MaN/ELXpx25m+icKYeG2OM1cTzMlr3kf/YEy/ri3uyz6KJZIYy/9G6EAmoDmoRyyAet5FaAzpVBLzzNb0Uqc1H4W/zb1g89+VpsDXbsseksSoUbpmyd8iXURYOof+EL/I7mToCHKW3muaeZseVZ5Mm9fA==" FormaPago="99" NoCertificado="00001000000505069920" Certificado="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" TipoCambio="1" MetodoPago="PPD" Exportacion="01" TipoDeComprobante="I" LugarExpedicion="66052" xmlns:cartaporte20="http://www.sat.gob.mx/Cartaporte20" xmlns:cfdi="http://www.sat.gob.mx/cfd/4" SubTotal="2300.69" Total="2668.80" Moneda="MXN">  <cfdi:Emisor Nombre="ELECTROFISA" Rfc="ELE040513KJ2" RegimenFiscal="601" />  <cfdi:Receptor Nombre="SSNL SERVICIOS SUSTENTABLES NL" Rfc="BNL020412HB8" UsoCFDI="G03" DomicilioFiscalReceptor="64000" RegimenFiscalReceptor="601" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="27111701" Cantidad="3.0000" ClaveUnidad="H87" Descripcion="DP-1/8X8 DESARMADOR ESTRELLA TRUPER" ValorUnitario="33.6200" Importe="100.8600" ObjetoImp="02" NoIdentificacion="16108">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="100.8600" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="16.1376" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="27111701" Cantidad="3.0000" ClaveUnidad="H87" Descripcion="DG-3/16X8 DESARMADOR PLANO TRUPER" ValorUnitario="49.3000" Importe="147.9000" ObjetoImp="02" NoIdentificacion="23679">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="147.9000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="23.6640" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="27111701" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="DG-1/8X8 DESARMADOR CABINET TRUPER" ValorUnitario="29.1400" Importe="29.1400" ObjetoImp="02" NoIdentificacion="16371">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="29.1400" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="4.6624" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="12.0000" ClaveUnidad="H87" Descripcion="STM-096820 MARCADOR MARKAL VALVE ACTION BLANCO" ValorUnitario="50.4400" Importe="605.2800" ObjetoImp="02" NoIdentificacion="34803">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="605.2800" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="96.8448" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="12.0000" ClaveUnidad="H87" Descripcion="STM-096821 MARCADOR MARKAL AMARILLO" ValorUnitario="52.4600" Importe="629.5200" ObjetoImp="02" NoIdentificacion="9114">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="629.5200" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="100.7232" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="12.0000" ClaveUnidad="H87" Descripcion="STM-96822 MARCADOR MARKAL ROJO" ValorUnitario="52.4600" Importe="629.5200" ObjetoImp="02" NoIdentificacion="11098">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="629.5200" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="100.7232" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="DESENGRASANTE ROJO MULTIUSOS 5 LTS MEMBERS" ValorUnitario="158.4700" Importe="158.4700" ObjetoImp="02" NoIdentificacion="8342">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="158.4700" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="25.3552" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="368.11">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Base="2300.69" Importe="368.11" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="1.1" UUID="5BBA9867-1C4A-F144-8796-CB090EB0DE76" FechaTimbrado="2022-09-15T17:06:45" RfcProvCertif="SCD110105654" SelloCFD="JjMaKfE1Q1a6g7bAXAf5n8i/QhbqXRwyWQOjIvVrchoXE71ebACdffXJBRaZzs35kPBt/k8G/4Pk9OETkZjbKGnKobgN+qa8VfxLtMa1KdAAVgWCu9w8xXCRvDOCUc2CIktNh2eHESA+fLohueYNcKz/ywxhoW1cxldYQy0vZPx9bp2e6RIw8qdFVC7x3MaN/ELXpx25m+icKYeG2OM1cTzMlr3kf/YEy/ri3uyz6KJZIYy/9G6EAmoDmoRyyAet5FaAzpVBLzzNb0Uqc1H4W/zb1g89+VpsDXbsseksSoUbpmyd8iXURYOof+EL/I7mToCHKW3muaeZseVZ5Mm9fA==" NoCertificadoSAT="00001000000502000436" SelloSAT="hwS2dvwPsYSzP3DHr5bGGqe3iJAW8UztbEhreEk++E2xAumhnw3QdlK0Y1L4f00OCsGFhrBlBekAuv7E50DQ+RiWdKABai9DobBc8l95M0UVjjGNZDaMtPKQB9MzswpUaG+XahrB+2O6JGT/Wjf2iWhIbNJ6LIbFnpmJE53vNROiXL1/lOUdyyY1j/lNSL5vEHmsZlkiaBdvEdDjsEZjhUQJuc2Vl7Bh3jXE3wx27DzKOXaF5hw/7QmuVuup66A5raNh1ZSo1dRxe2818TO3dhEjsm/3bG9wo6l7AuwR848fVgUTnpCOBM1bLpV9OhsbgFxE7LY3I1xn4Yq3/kdi1g==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        