
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'ECBD42F0-3E1B-5D43-86EE-FB866C67E301')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-17T17:02:57','FACECO','1209','ECBD42F0-3E1B-5D43-86EE-FB866C67E301','RDD101105Q91','ECBD42F0-3E1B-5D43-86EE-FB866C67E301.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd" Version="4.0" Serie="FACECO" Folio="1209" Fecha="2022-11-17T16:39:34" FormaPago="99" CondicionesDePago="30 d�as de Cr�dito" SubTotal="994432.79" Moneda="MXN" Total="1153542.04" MetodoPago="PPD" Exportacion="01" TipoDeComprobante="I" LugarExpedicion="64000" NoCertificado="00001000000501541496" Certificado="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" Sello="LNek7FK+8FcvjjMTVa7fDhcyyAkX6aCrocsXjO7FiPy0xCDaJQDw0TefOffQlS78q04NBH4bDONLWbpqnvG8O4LvMu4ckM3cJKlnrsqZl1s/BUbpmsq1XUCkGa4KZ7ETDukKiX4IReXTvphkKgR1Mw/rcVc66NqEqoWltj7ysG+Zqhs5XwMgokwbk4ivJIMoa71SCYHYeSuMzyIepUMGUVmTL2HRI9Ycnm4vpebAXGdtyUcr+PxQmwcUwwKAS1Is0uXjI1vc/aChnnFeGax/b25ZQL7DNl+7rctCoGZVX5Mgoll+RLZydrKBdhn1pqgfdaLhdAty/qrfgTfXaCVNpA==">  <cfdi:Emisor Rfc="RDD101105Q91" Nombre="RECOLECCION Y DISPOSICION DE DESECHOS AMBIENTALES" RegimenFiscal="601" />  <cfdi:Receptor Rfc="MAC850101RB7" Nombre="MUNICIPIO DE ACAMBARO GTO" DomicilioFiscalReceptor="38600" RegimenFiscalReceptor="603" UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="76121500" NoIdentificacion="ECO000065" Cantidad="1.00" ClaveUnidad="26" Unidad="Ton" Descripcion="DISPOSICION FINAL MUNICIPAL CUOTA FIJA" ValorUnitario="994432.79" Importe="994432.79" ObjetoImp="02">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="994432.79" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="159109.25" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="159109.25">    <cfdi:Traslados>      <cfdi:Traslado Base="994432.79" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="159109.25" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="ECBD42F0-3E1B-5D43-86EE-FB866C67E301" FechaTimbrado="2022-11-17T17:02:57" RfcProvCertif="SCD110105654" SelloCFD="LNek7FK+8FcvjjMTVa7fDhcyyAkX6aCrocsXjO7FiPy0xCDaJQDw0TefOffQlS78q04NBH4bDONLWbpqnvG8O4LvMu4ckM3cJKlnrsqZl1s/BUbpmsq1XUCkGa4KZ7ETDukKiX4IReXTvphkKgR1Mw/rcVc66NqEqoWltj7ysG+Zqhs5XwMgokwbk4ivJIMoa71SCYHYeSuMzyIepUMGUVmTL2HRI9Ycnm4vpebAXGdtyUcr+PxQmwcUwwKAS1Is0uXjI1vc/aChnnFeGax/b25ZQL7DNl+7rctCoGZVX5Mgoll+RLZydrKBdhn1pqgfdaLhdAty/qrfgTfXaCVNpA==" NoCertificadoSAT="00001000000502000436" SelloSAT="MYAKBql3kGM/9ZW9YhyJ0WTxMlG7/IytH/6EwISvoYKqMVj6ftYI8/9w1CwCz5yM4KEzeRXkJ32wIPPbMNvjX7CCsq0FRq10wBMMNnBlPJJV4cb1I0s+qpXs1zcQ0d8GDww6FnPOVloYPeaiAMgw7UVSoH1LHEFVHNAkLIjWlHmWtnq1/Ulugh9MY5U7AjZFn6ahnLjDo3YiNLjHIdO6l0/l/acKYKSh1pmD+O2/Gg5fRzK2y4q/9VjAdCuVvEVggxR2AZ6O0m9j9kWST4F6jvkwuPPOKE+cIfENUbq3eo0KfQgOCeKG7cvJhhWHMW1/dz7Fy9udbxbiz0VFTJWn0w==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        