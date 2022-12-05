
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'fa163e3d-eed7-1edd-90e9-d81b55562aad')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-29','FDT','543','fa163e3d-eed7-1edd-90e9-d81b55562aad','DTE940421L42','fa163e3d-eed7-1edd-90e9-d81b55562aad.xml','')
                END
            END
        