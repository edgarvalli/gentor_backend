
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1eed-8df3-49f6a7710fcb')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-08-31','FAGS','203','fa163e9a-b260-1eed-8df3-49f6a7710fcb','GSE9212163I9','fa163e9a-b260-1eed-8df3-49f6a7710fcb.xml','')
                END
            END
        