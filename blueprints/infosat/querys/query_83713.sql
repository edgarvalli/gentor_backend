
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '7075E543-9EDC-AA42-8EA8-45F6047B7EBF')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-17T10:32:53','CR','83713','7075E543-9EDC-AA42-8EA8-45F6047B7EBF','','7075E543-9EDC-AA42-8EA8-45F6047B7EBF.xml','<?xml version="1.0" encoding="utf-8"?><cfdi:Comprobante xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/CartaPorte20 http://www.sat.gob.mx/sitio_internet/cfd/CartaPorte/CartaPorte20.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="4.0" Serie="CR" Folio="83713" Fecha="2022-08-17T10:28:50" Sello="SddU+m1dLJCr3VeEpL1VKKJrixKoiEqwcKvPpGY3vuF0kmw/FRivKlAmzYavC71eZ6iVinUMTdc0bpOTwr0uDvlTcWUNLbNlGYAa4uvgLfwoSsfLmgDyNl92qRZkLmVYRah3XI1r/qgaRWhpX40SldCfKMV7jNxZM+atmKSRcB33imwEGvTu7jvNPezbR/wYij3GJBmO53FOg79geMJQMKdJZHFKP+YebmtgWUfM93vkPg51UffLJO98oUtI8A1wso8vnAND5pgVICBJxK2Ni4usJB54Nwn8kn5f2fLgn3aDDzd44hKUrqVbT8WijvQrdoc2L1XhBi0vv4anA2gbbw==" FormaPago="99" NoCertificado="00001000000505069920" Certificado="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" TipoCambio="1" MetodoPago="PPD" Exportacion="01" TipoDeComprobante="I" LugarExpedicion="66052" xmlns:cartaporte20="http://www.sat.gob.mx/Cartaporte20" xmlns:cfdi="http://www.sat.gob.mx/cfd/4" SubTotal="12723.01" Total="14758.69" Moneda="MXN">  <cfdi:Emisor Nombre="ELECTROFISA" Rfc="ELE040513KJ2" RegimenFiscal="601" />  <cfdi:Receptor Nombre="SSNL SERVICIOS SUSTENTABLES NL" Rfc="BNL020412HB8" UsoCFDI="G03" DomicilioFiscalReceptor="64000" RegimenFiscalReceptor="601" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="80.0000" ClaveUnidad="H87" Descripcion="GUANTE ANTICORTE NIVEL 5 MOD. 925  T-8 GRENDIL #11" ValorUnitario="56.1400" Importe="4491.2000" ObjetoImp="02" NoIdentificacion="21418">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="4491.2000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="718.5920" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="20.0000" ClaveUnidad="H87" Descripcion="LENTE DEPORTIVO ECON CLARO (JYRSA-1414C) #E" ValorUnitario="13.0000" Importe="260.0000" ObjetoImp="02" NoIdentificacion="5068">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="260.0000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="41.6000" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="20.0000" ClaveUnidad="H87" Descripcion="LENTE DEPORTIVO ECON NEGRO (JYRSA 1414G) #F" ValorUnitario="12.3500" Importe="247.0000" ObjetoImp="02" NoIdentificacion="5069">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="247.0000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="39.5200" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="100.0000" ClaveUnidad="H87" Descripcion="TAPON AUDITIVO DESECHABLE NRR33 C/CORDON SINERCO" ValorUnitario="5.6000" Importe="560.0000" ObjetoImp="02" NoIdentificacion="1951">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="560.0000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="89.6000" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="10.0000" ClaveUnidad="H87" Descripcion="IX1012 GRASERA 45� D-345  1/4 NPT-18 DOGO" ValorUnitario="12.9200" Importe="129.2000" ObjetoImp="02" NoIdentificacion="3346">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="129.2000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="20.6720" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="10.0000" ClaveUnidad="H87" Descripcion="IX1002 GRASERA RECTA D-200  1/8 NPT -27 DOGO" ValorUnitario="4.7000" Importe="47.0000" ObjetoImp="02" NoIdentificacion="2986">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="47.0000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="7.5200" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="10.0000" ClaveUnidad="H87" Descripcion="HG3006 RODILLERA DESLIZABLE LISA (PAR) DOGO" ValorUnitario="227.1500" Importe="2271.5000" ObjetoImp="02" NoIdentificacion="3103">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="2271.5000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="363.4400" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="35.0000" ClaveUnidad="H87" Descripcion="86H-4 VALVULA ESFERA ROSCABLE CNX   1/4" ValorUnitario="36.1100" Importe="1263.8500" ObjetoImp="02" NoIdentificacion="15738">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1263.8500" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="202.2160" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="FOAM CLEANER ROSA PORRON 20LTS" ValorUnitario="931.8300" Importe="931.8300" ObjetoImp="02" NoIdentificacion="16430">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="931.8300" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="149.0928" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="ENVASE (BOTE) GARRAFA PLASTICO VACIO DE 20 LITROS" ValorUnitario="52.5000" Importe="52.5000" ObjetoImp="02" NoIdentificacion="5590">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="52.5000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="8.4000" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="3.0000" ClaveUnidad="H87" Descripcion="R1-56 PLASTIACERO DEVCON NORMAL EN PASTA 70GRS" ValorUnitario="54.6000" Importe="163.8000" ObjetoImp="02" NoIdentificacion="1697">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="163.8000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="26.2080" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="23131503" Cantidad="5.0000" ClaveUnidad="H87" Descripcion="CA-3 CARDA CIRCULAR 3 P/TALADRO TRUPER" ValorUnitario="32.6500" Importe="163.2500" ObjetoImp="02" NoIdentificacion="4309">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="163.2500" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="26.1200" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="5.0000" ClaveUnidad="H87" Descripcion="5-J SELLADOR CABEZA DE INDIO P/JUNTAS PERMATEX 56GRS" ValorUnitario="45.0400" Importe="225.2000" ObjetoImp="02" NoIdentificacion="4944">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="225.2000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="36.0320" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="75.0000" ClaveUnidad="H87" Descripcion="TRAPO INDUSTRIAL" ValorUnitario="22.5600" Importe="1692.0000" ObjetoImp="02" NoIdentificacion="9964">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1692.0000" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="270.7200" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="27112700" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="D-1219-ML DADO HEXA.1/2X 19MM TRUPER" ValorUnitario="53.9200" Importe="53.9200" ObjetoImp="02" NoIdentificacion="21018">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="53.9200" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="8.6272" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="31162800" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="LL-2013M LLAVE COMBINADA TRUPER 13M" ValorUnitario="60.9200" Importe="60.9200" ObjetoImp="02" NoIdentificacion="15927">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="60.9200" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="9.7472" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>    <cfdi:Concepto ClaveProdServ="27112700" Cantidad="1.0000" ClaveUnidad="H87" Descripcion="E-5462 EXTENSION PARA MATRACA 1/2X 8 TRUPER" ValorUnitario="109.8400" Importe="109.8400" ObjetoImp="02" NoIdentificacion="13986">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="109.8400" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="17.5744" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="2035.68">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Base="12723.01" Importe="2035.68" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Version="1.1" UUID="7075E543-9EDC-AA42-8EA8-45F6047B7EBF" FechaTimbrado="2022-08-17T10:32:53" RfcProvCertif="SCD110105654" SelloCFD="SddU+m1dLJCr3VeEpL1VKKJrixKoiEqwcKvPpGY3vuF0kmw/FRivKlAmzYavC71eZ6iVinUMTdc0bpOTwr0uDvlTcWUNLbNlGYAa4uvgLfwoSsfLmgDyNl92qRZkLmVYRah3XI1r/qgaRWhpX40SldCfKMV7jNxZM+atmKSRcB33imwEGvTu7jvNPezbR/wYij3GJBmO53FOg79geMJQMKdJZHFKP+YebmtgWUfM93vkPg51UffLJO98oUtI8A1wso8vnAND5pgVICBJxK2Ni4usJB54Nwn8kn5f2fLgn3aDDzd44hKUrqVbT8WijvQrdoc2L1XhBi0vv4anA2gbbw==" NoCertificadoSAT="00001000000502000436" SelloSAT="FbG1PoguFolX7yiL7SCBEuL2n9tS7RQEl5PZq4w7CrtqWYP+cOTD/fXdHj5cPpygGak/U9LzROvJIxB0es7Aw1UX8W0hrsXA4bKYd0g2PlFsXcpX6b7eyOwRpKc2O0xYYBh5O1LDsasa0w7DbmQA8e4KNXyNDng4cg+u5N3KlxSffLsHJuwu9Sc0Gk9tf/cwN0n6v26vSFU9W2czlH0O7MFE48akryVMgvIzxzDNSdUyCs+ykk9iM0CwCOp89vL55KQKRvbTtGpEIfqqgD5PIETZ9oWpTXZC9tNxXm7+STx1KXTy+CnDsq7E1qHhWQ9AC0gWvPSlxNNLUnboqTOTQg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        