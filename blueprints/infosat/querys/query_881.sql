
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'BNL020412HB8')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [BNL020412HB8] WHERE UUID like '401d8dbd-dfac-41fc-b560-ba181c8cc244')
                BEGIN
                    INSERT INTO [BNL020412HB8] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-07T18:22:23','A','881','401d8dbd-dfac-41fc-b560-ba181c8cc244','RPI020131E5A','401d8dbd-dfac-41fc-b560-ba181c8cc244.xml','<?xml version="1.0" encoding="utf-8" ?><cfdi:Comprobante xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd" Version="3.3" Fecha="2022-09-07T18:22:22" TipoDeComprobante="I" Sello="VQeVKo28K6KhUHD9XR63eg8HK1x/lLAXP1AMUV7GyZjcJXCfB27eSyuJs3anLFY0Rd+Swr9CF7a75bTMn2S4RuEB6DEggMho9GZQvRZmnJpL937DvQPnAHV7CnvXHr1IaVaQv3MPAcu689JBz/rrwws8m1juXEvjCSqisYMw0YP2RQotYn8My5JicB4T0CSPtH4J8/CXBh71zz95YbcA4krhLkHeHyeYJTiRkV/CEkrjSSv98TjlQm6qwRBraN+wqPdisn4MnHsmNBHMg5iaZxt+dTYRdUYqNym53SCajhvg1h1VRZQqIvEdR31IsxwGH5nnnmsZub5FI45KJ1p8dA==" Certificado="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" NoCertificado="00001000000503182587" SubTotal="774100.44" Descuento="232230.13" Total="628569.56" Moneda="MXN" LugarExpedicion="66362" FormaPago="03" CondicionesDePago="30 DIAS F.P.F." TipoCambio="1" MetodoPago="PPD" Serie="A" Folio="881">	<cfdi:Emisor Rfc="RPI020131E5A" Nombre="REPRESENTACIONES PLASTICAS INDUSTRIALES" RegimenFiscal="626"/>	<cfdi:Receptor Rfc="BNL020412HB8" UsoCFDI="P01" Nombre="SSNL SERVICIOS SUSTENTABLES NL, SA DE CV."/>	<cfdi:Conceptos>		<cfdi:Concepto ClaveProdServ="40171620" Cantidad="01" ClaveUnidad="E48" Descripcion="EST. 1 SUMINISTRO, FABRICACION E INSTALACION DE TUBERIA DE POLIETILENO ALTA DENSIDAD PARA 120 POZOS DE LA RED NECESARIAA PARA CONDUCIR EL BIOGAS DE LA ZONA 1 (CELDAS T31, 32, 33) DEL RELLENO EN SIMEPRODE A CABEZALES EXISTENTES 2 EN LADO OTE (A PLANTA 1) Y DOS CABEZALES EXISTENTES EN LADO PTE. (A PLANTA 2) O.C. 3532" ValorUnitario="774100.44" Importe="774100.44" Unidad="H87" Descuento="232230.13">			<cfdi:Impuestos>				<cfdi:Traslados>					<cfdi:Traslado Base="541870.31" Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="86699.25"/>				</cfdi:Traslados>			</cfdi:Impuestos>		</cfdi:Concepto>	</cfdi:Conceptos>	<cfdi:Impuestos TotalImpuestosTrasladados="86699.25">		<cfdi:Traslados>			<cfdi:Traslado Impuesto="002" TipoFactor="Tasa" TasaOCuota="0.160000" Importe="86699.25"/>		</cfdi:Traslados>	</cfdi:Impuestos>	<cfdi:Complemento>        <tfd:TimbreFiscalDigital xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xsi:schemaLocation="http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd" Version="1.1" UUID="401d8dbd-dfac-41fc-b560-ba181c8cc244" RfcProvCertif="SNF171020F3A" FechaTimbrado="2022-09-07T18:22:23" SelloCFD="VQeVKo28K6KhUHD9XR63eg8HK1x/lLAXP1AMUV7GyZjcJXCfB27eSyuJs3anLFY0Rd+Swr9CF7a75bTMn2S4RuEB6DEggMho9GZQvRZmnJpL937DvQPnAHV7CnvXHr1IaVaQv3MPAcu689JBz/rrwws8m1juXEvjCSqisYMw0YP2RQotYn8My5JicB4T0CSPtH4J8/CXBh71zz95YbcA4krhLkHeHyeYJTiRkV/CEkrjSSv98TjlQm6qwRBraN+wqPdisn4MnHsmNBHMg5iaZxt+dTYRdUYqNym53SCajhvg1h1VRZQqIvEdR31IsxwGH5nnnmsZub5FI45KJ1p8dA==" NoCertificadoSAT="00001000000414211380" SelloSAT="NoG8rxsfy6Wp7Vt3s4VvZ/Yn/IbXfBJ1sZDxhgXhQbE/Fqw/kJ/fLhyUcHBIoR2l27OMYohsM2xB433lnQ/Tc7BTgz0+Jhzlof/SGD6csXklkstlYbHNXgNEEh6l2t1kt94Z10jXFQdLW5pCjsEeFDfS+IirbBrsz5FENMoaE20AfPUNN0VbxihCmw7YfugLar1oaoLkrv7u3UBc6PdOCL30TcV2HqHnduTSklHjhFjqinVGUB76YbybpPw/Wx7e3om4pKQ6HuaeDUR80wy0bGGctKDCqhhglLURHhS6Z8tipJoNZ6I7xi6gfs09wLQ4Dbn7Xc+aaViOSsOaVPTqMA=="/>    </cfdi:Complemento><cfdi:Addenda>		<dvz:diverza version="1.1" xmlns:dvz="http://www.diverza.com/ns/addenda/diverza/1" xmlns:tdCFDI="http://www.sat.gob.mx/sitio_internet/cfd/tipoDatos/tdCFDI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.diverza.com/ns/addenda/diverza/1 http://www.diverza.com/schema/xsd/Addenda_Diverza_v1.1.xsd">			<dvz:generales numeroOrden="3532" observaciones="NOTA 1:DESCUENTO ES = A AMORTIZACION DE ANTICIPO,        NOTA 2: 5% FONDO DE GARANTIA = A 38,705.02                                                                                                                     " tipoDocumento="Factura" totalConLetra="SEISCIENTOS VEINTIOCHO MIL QUINIENTOS SESENTA Y NUEVE PESOS MEXICANOS 56/100 M.N."/>			<dvz:clavesDescripcion c_FormaPago="03" c_LugarExpedicion="66362" c_MetodoPago="PPD" c_Moneda="MXN" c_RegimenFiscal="626" c_TipoDeComprobante="I" c_UsoCFDI="P01"/>			<dvz:emisor>				<dvz:datosContactoE emailContacto="albertovillagomez@prodigy.net.mx"/>				<dvz:domicilioFiscalE calle="ADOLFO LOPEZ MATEOS" codigoPostal="66362" colonia="Pio XII" estado="Nuevo Le�n" municipio="Santa Catarina" numero="Int  Ext 214" pais="M�xico"/>			</dvz:emisor>			<dvz:receptor>				<dvz:domicilioFiscalR calle="PADRE MIER " codigoPostal="64000" colonia="CENTRO" estado="NUEVO LE�N" municipio="MONTERREY" numero="578" pais="M�xico"/>			</dvz:receptor>		</dvz:diverza>	</cfdi:Addenda></cfdi:Comprobante>')
                END
            END
        