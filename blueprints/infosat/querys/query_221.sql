
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1eed-8df4-09f8111d7e2b')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-09-23','FAGS','221','fa163e9a-b260-1eed-8df4-09f8111d7e2b','GSE9212163I9','fa163e9a-b260-1eed-8df4-09f8111d7e2b.xml','')
                END
            END
        