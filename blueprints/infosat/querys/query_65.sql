
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like 'AB5CCE48-E4CD-E74C-A8D2-45F974CA237E')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-14T11:52:24','ANTSE','65','AB5CCE48-E4CD-E74C-A8D2-45F974CA237E','SEI920618TC5','AB5CCE48-E4CD-E74C-A8D2-45F974CA237E.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="ANTSE" Folio="65" Fecha="2022-10-14T11:47:21" FormaPago="99" CondicionesDePago="A pagar de inmediato sin deducci�n" SubTotal="500000.00" Moneda="MXN" Total="580000.00" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504894993" Certificado="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" Sello="Lz5fzLVGijVvqvlWE1o7ldH7VGJgPC12xfoHZCFRxScvmUWDMIy/0fSLmFq0JQVTXvZPWd6WgqVH08aXFY093p//4I/qSQMD6N5hzaXbx00r6oqyh0c+QhrZOod8bRiCkLXFxxuBAL+iToUGgY+PMmnRp4z1T1H9FYqfJAxQFXcZ9KSX77WQF9XhyCk1GLzPtNtcn1I7g9MN6sZ6DRYJVTKbgOHpqc8evS/5WIcvLgW4hCSFV5QQGs/C00CtjX/PvdrmQ1FRONDj+HCwwmztNce8as0I8JCULhnsjB9MDLKnD50sO3DV4q+g0LEIJs3yKas3EylS8ColCuY1kThf+g==">  <cfdi:Emisor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="TII0811186C0" Nombre="TRAZZO INVERSIONES INMOBILIARIAS, S.A. DE C.V." UsoCFDI="G01" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="84111506" NoIdentificacion="0000000010" Cantidad="1.00" ClaveUnidad="ACT" Unidad="Actividad" Descripcion="10% del segundo anticipo del Contrato SQ3-SIST.HSPC-C3822 licitaci�n N2R-C3822 para los Trabajos correspondientes a Dise�o, Suministro e Instalaci�n de sistema HSPC del Proyecto Saqqara, Departamentos, Factura 1/3." ValorUnitario="500000.00" Importe="500000.00">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="500000.00" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="80000.00" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="80000.00">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="80000.00" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="AB5CCE48-E4CD-E74C-A8D2-45F974CA237E" FechaTimbrado="2022-10-14T11:52:24" RfcProvCertif="SCD110105654" SelloCFD="Lz5fzLVGijVvqvlWE1o7ldH7VGJgPC12xfoHZCFRxScvmUWDMIy/0fSLmFq0JQVTXvZPWd6WgqVH08aXFY093p//4I/qSQMD6N5hzaXbx00r6oqyh0c+QhrZOod8bRiCkLXFxxuBAL+iToUGgY+PMmnRp4z1T1H9FYqfJAxQFXcZ9KSX77WQF9XhyCk1GLzPtNtcn1I7g9MN6sZ6DRYJVTKbgOHpqc8evS/5WIcvLgW4hCSFV5QQGs/C00CtjX/PvdrmQ1FRONDj+HCwwmztNce8as0I8JCULhnsjB9MDLKnD50sO3DV4q+g0LEIJs3yKas3EylS8ColCuY1kThf+g==" NoCertificadoSAT="00001000000502000436" SelloSAT="jRvn5gDGtWu7bDbBKDyugQojag+6ibAw6iTyWXX0NmEy0eOZrXbi6/4Mdzsj4mCkt9ZWvcweTZjDmDuraimz+9+3Qsnvcuig7vxcjDgIUY1g5RTgHwi063PYnJ1C28vFJABxj7TVhzunOZ7aDeJESngf1bOfamruuly8LQF2dVnKebMz30xdp+bfChLKJxno3+jCCzB0VrmZpJ/HlH0Q82d3JSY1BV2qLuYfarX7J5rwSuM9U+TptPwcasJ/EZvX5TZ1uX4FekWgVoeBMW8eivD7L/jsUHuvl4g51Q+B8M2Eio4ldTL7llbtpAGBlhojOx1sE7tWyM4WRlnMi+kRmA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        