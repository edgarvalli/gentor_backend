
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'DTE940421L42')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [DTE940421L42] WHERE UUID like 'fa163e9a-b260-1edd-8aad-79970052bf30')
                BEGIN
                    INSERT INTO [DTE940421L42] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-13','FDT','484','fa163e9a-b260-1edd-8aad-79970052bf30','DTE940421L42','fa163e9a-b260-1edd-8aad-79970052bf30.xml','')
                END
            END
        