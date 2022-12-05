
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like '521E03BF-8DBD-DF44-914C-6FC98BAEB95B')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-12T13:30:21','FACECO','1078','521E03BF-8DBD-DF44-914C-6FC98BAEB95B','RDD101105Q91','521E03BF-8DBD-DF44-914C-6FC98BAEB95B.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACECO" Folio="1078" Fecha="2022-10-12T13:25:18" FormaPago="99" CondicionesDePago="60 d�as de Cr�dito" SubTotal="19592.64" Moneda="MXN" Total="22727.46" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="NlAE4p1RwHOOQZ0HNG1RSNniF1YZjc3D4ZIIbsACR42yoYQTQiTK2BbSLJfKX7f1+ZYEYRxDGfvsCCXl3meKy2BVls+hV7+YD1zfAh9MaXYDmL/fBzH3UIXUhDQAHLFiNyDDxjtsbU0YkPjLqaQMQglrWgCMhyEu1LC1/LglJidG+GEMq8Fq3Wz31UinxxX/sZj6CDeQNV76lwLL2rs8pJFpmeDg0P+hAt1i22Bs+FfU/BW7kyeLRx+wN/MxXqegmBQlf53/GmWbJECb1ZXKldPUQLdxjc5rH/ZLaLe+GGz0PNy8vdUp1YCNsCJNQp1moqYypgu2Q9tLftoNmI3iZw==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES, S.A DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="ARE031006AP2" Nombre="APPIA RESIDENCIAS S.A. de C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000005" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIO CARGA TRASERA" ValorUnitario="19592.64" Importe="19592.64">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="19592.64" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="3134.82" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="3134.82">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="3134.82" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="521E03BF-8DBD-DF44-914C-6FC98BAEB95B" FechaTimbrado="2022-10-12T13:30:21" RfcProvCertif="SCD110105654" SelloCFD="NlAE4p1RwHOOQZ0HNG1RSNniF1YZjc3D4ZIIbsACR42yoYQTQiTK2BbSLJfKX7f1+ZYEYRxDGfvsCCXl3meKy2BVls+hV7+YD1zfAh9MaXYDmL/fBzH3UIXUhDQAHLFiNyDDxjtsbU0YkPjLqaQMQglrWgCMhyEu1LC1/LglJidG+GEMq8Fq3Wz31UinxxX/sZj6CDeQNV76lwLL2rs8pJFpmeDg0P+hAt1i22Bs+FfU/BW7kyeLRx+wN/MxXqegmBQlf53/GmWbJECb1ZXKldPUQLdxjc5rH/ZLaLe+GGz0PNy8vdUp1YCNsCJNQp1moqYypgu2Q9tLftoNmI3iZw==" NoCertificadoSAT="00001000000502000436" SelloSAT="aeMTjjNnQHkSSnwQBfRzeDPARya0piAYyM4/ll2ynGK+Noj6zHWdvdkcnQt8th6V1LwBUpyCb3+6pu9eQA/eXy28Uu2cWXjU/Mno/O86x7MO5m4qHr1MDQu9QGeOMWO2Gcd1+qMm2RFF90/Rb2W70YlVyFyHhB0aYJM6Fi+6JSLWC8W5L+Vc6KoWbJZTatUGHTJVy7bZ38ein0CibdsN99z1UjIs/C5tfmsZW8CRdgPE4MBzKrYzX42KTsSKzNOrm3YsgIfAn64Y2UsCytS18Fm4h4i/nL47oQzhHDirxitTMKo/1n6aCITd2tDdyJNNwDMk9kNfRw+3MhFV4mTBtg==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        