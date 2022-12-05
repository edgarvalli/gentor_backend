
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'fa163e3d-eed7-1eed-9184-68b2da2d925c')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-01','NDT','5','fa163e3d-eed7-1eed-9184-68b2da2d925c','DTE940421L42','fa163e3d-eed7-1eed-9184-68b2da2d925c.xml','')
                END
            END
        