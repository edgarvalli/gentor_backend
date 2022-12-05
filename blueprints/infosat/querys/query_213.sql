
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1eed-8df3-e84af24f7b60')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-09-23','FAGS','213','fa163e9a-b260-1eed-8df3-e84af24f7b60','GSE9212163I9','fa163e9a-b260-1eed-8df3-e84af24f7b60.xml','')
                END
            END
        