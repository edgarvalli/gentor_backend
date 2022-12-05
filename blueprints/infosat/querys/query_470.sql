
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'fa163e9a-b260-1eed-89ff-757becc13054')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-03-27','FDT','470','fa163e9a-b260-1eed-89ff-757becc13054','DTE940421L42','fa163e9a-b260-1eed-89ff-757becc13054.xml','')
                END
            END
        