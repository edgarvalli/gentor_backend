
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like 'EB4DB3CA-4379-B048-A81A-EB5CCFBB370B')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-30T20:34:25','FASE','2514','EB4DB3CA-4379-B048-A81A-EB5CCFBB370B','SEI920618TC5','EB4DB3CA-4379-B048-A81A-EB5CCFBB370B.xml','<?xml version="1.0" encoding="UTF-8"?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Serie="FASE" Folio="2514" Fecha="2022-09-30T20:29:22" FormaPago="99" SubTotal="1461691.94" Moneda="MXN" Total="1695562.65" MetodoPago="PPD" TipoDeComprobante="I" LugarExpedicion="66600" NoCertificado="00001000000504894993" Certificado="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" Sello="ML79hnwB5uzft1h/iLPuQkoNkgtxAzwIV9AsLWpf9BphV4RAJrXVJm1w+TxNMAhEOpkYYWS6W+zALY3MPm/EyNUHYtJhqX2Hj+etuHwVhJdSxCYG14cTYvcAO8z8ru89Zyv45/MUkUotqloY3PLygtyrEFgMb4qwkL2hXPqCFenmUkGf11teClmcRPZnc+nxR0wPKQtWEAEpJRQKavdj6KlNpnD83i0GeOkQy+Bo3n3/IXBFHF9fpWan4e+1vFWhRr96khq3bfOUI/CerNmE7WR91Trn/6a5YSy4sAQ+DefjLphllMgkZQKdL1su1KYWX44sAX6KXavrrwK0qQYhGA==">  <cfdi:Emisor Rfc="SEI920618TC5" Nombre="SISTEMAS DE ENERGIA INTERNACIONAL, S.A. DE C.V." RegimenFiscal="601" />  <cfdi:Receptor Rfc="BNL020412HB8" Nombre="SSNL SERVICIOS SUSTENTABLES NL S.A. DE C.V." UsoCFDI="G03" />  <cfdi:Conceptos>    <cfdi:Concepto ClaveProdServ="80161504" NoIdentificacion="SERVI" Cantidad="1.00" ClaveUnidad="E48" Unidad="Servicio" Descripcion="SERVICIOS Y GASTOS" ValorUnitario="1461691.94" Importe="1461691.94">      <cfdi:Impuestos>        <cfdi:Traslados>          <cfdi:Traslado Base="1461691.94" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="233870.71" />        </cfdi:Traslados>      </cfdi:Impuestos>    </cfdi:Concepto>  </cfdi:Conceptos>  <cfdi:Impuestos TotalImpuestosTrasladados="233870.71">    <cfdi:Traslados>      <cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="233870.71" />    </cfdi:Traslados>  </cfdi:Impuestos>  <cfdi:Complemento>    <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="EB4DB3CA-4379-B048-A81A-EB5CCFBB370B" FechaTimbrado="2022-09-30T20:34:25" RfcProvCertif="SCD110105654" SelloCFD="ML79hnwB5uzft1h/iLPuQkoNkgtxAzwIV9AsLWpf9BphV4RAJrXVJm1w+TxNMAhEOpkYYWS6W+zALY3MPm/EyNUHYtJhqX2Hj+etuHwVhJdSxCYG14cTYvcAO8z8ru89Zyv45/MUkUotqloY3PLygtyrEFgMb4qwkL2hXPqCFenmUkGf11teClmcRPZnc+nxR0wPKQtWEAEpJRQKavdj6KlNpnD83i0GeOkQy+Bo3n3/IXBFHF9fpWan4e+1vFWhRr96khq3bfOUI/CerNmE7WR91Trn/6a5YSy4sAQ+DefjLphllMgkZQKdL1su1KYWX44sAX6KXavrrwK0qQYhGA==" NoCertificadoSAT="00001000000502000436" SelloSAT="fRUoTw8bZfyp6lDGYn9lRuopbLVcOHGZ3s1XabB7YnxCCQsxipB/WSkyguZykeh4v4bZ/aJ+0BIkmjomNqAw0GIdWhRX5jYwe4HcMDOYU7Tw4jOGOXBnjk2mAHEeRhKqGH73rRS/7/Cn7hSrzAQ7On7irkkI+oJiRaTmeJkul5prmd5LH0nZvyFS99AbAjTjF+dCXe6Qhlp7Gi7bbZFh7tygjv3Tn6EAPqNMpzfr30sE/2Ma8tuXufu/svim8bcY1Mt5uHOkrk8u1Tz2G0U1h1pQJgLWz0pllLDAeytGBc+l85w7s81+IKF0IKLwSFl2AeA8V95t1uFaC3TtKw0Rqw==" />  </cfdi:Complemento></cfdi:Comprobante>')
                END
            END
        