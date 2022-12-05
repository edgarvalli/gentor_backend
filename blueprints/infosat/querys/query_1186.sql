
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'A196ADBA-575C-C747-8D3F-1DEC3ACBE71D')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-09T12:09:10','FACECO','1186','A196ADBA-575C-C747-8D3F-1DEC3ACBE71D','RDD101105Q91','A196ADBA-575C-C747-8D3F-1DEC3ACBE71D.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FACECO" Folio="1186" Fecha="2022-11-09T10:54:11" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="962030.31" Moneda="MXN" Total="1115955.16" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="DuuOsgGKe3a/HXpiECNyBrzS1NKndSeqoLL+rWdMODmAICX8vVdM3D/0ia5bNECCNALd/quCgYyi9oQLiSjT9x7HaDkEFjk2X6KqzbA2kTcmJI/vb+RUWIc04zijn6nva+I/poIlJCMaJtfz1ll+3pdEvNCszfA8eSIaCV95R0xvPWt8GAcAtTcjDllvLqS1Q+gQSiVqo51zvpmTMY9iQkpPcdefyi0rwoOeYHSEif/xLGSUQ1KQyqP7FyjmBNNKQls7nsRGY2R2AU9GP78aHaoo/B0SHN8vEOo5TNrq6+V/dqboXHG1JYEdTS4wxddCG+/8GVi1fvMQcMlnynhYLg==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES, S.A DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="MSA850101RH4" Nombre="MUNICIPIO DE SALVATIERRA GTO" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121501" NoIdentificacion="ECO000002" Cantidad="1701.84" ClaveUnidad="26" Unidad="Tonelada real" Descripcion="RECOLECCION MUNICIPAL TARIFA TON" ValorUnitario="565.29" Importe="962030.31">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="962030.31" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="153924.85" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="153924.85">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="153924.85" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="A196ADBA-575C-C747-8D3F-1DEC3ACBE71D" FechaTimbrado="2022-11-09T12:09:10" RfcProvCertif="SCD110105654" SelloCFD="DuuOsgGKe3a/HXpiECNyBrzS1NKndSeqoLL+rWdMODmAICX8vVdM3D/0ia5bNECCNALd/quCgYyi9oQLiSjT9x7HaDkEFjk2X6KqzbA2kTcmJI/vb+RUWIc04zijn6nva+I/poIlJCMaJtfz1ll+3pdEvNCszfA8eSIaCV95R0xvPWt8GAcAtTcjDllvLqS1Q+gQSiVqo51zvpmTMY9iQkpPcdefyi0rwoOeYHSEif/xLGSUQ1KQyqP7FyjmBNNKQls7nsRGY2R2AU9GP78aHaoo/B0SHN8vEOo5TNrq6+V/dqboXHG1JYEdTS4wxddCG+/8GVi1fvMQcMlnynhYLg==" NoCertificadoSAT="00001000000502000436" SelloSAT="nKLWEdIprpbyGTqOntBEtDvz7TZ6TJzatfpIqock/sbjWi/+kXSUYmxHKLPOm3a4P8SgT6AyP6yI7gSJgOA4+I+WPV+GOFXV+ds+9+y/JJc0jQ9+XDUxI326HHNBpmm0mXO4jrVG0du8qgoc2xXgWM3zf11tiPvHR0afdxHSR6/fdL5s0yv5Q8V87b9dHrN+eNZaqHg6nC0R8+5G0h+Bznpaz73mhFx3wwjI9nwYHZXj2xecvmbdt3QEJ6tqVSOatiU1aNULJzLzvXg/fLqUs1WvQ7WpO8YbEDEZPRi2079c2BUetNEAueuDFhEfUY6ABCm+KGz3hmmAPoNLsNEicA==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        