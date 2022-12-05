
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1eed-8df3-f96cf1823caa')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-09-23','FAGS','217','fa163e9a-b260-1eed-8df3-f96cf1823caa','GSE9212163I9','fa163e9a-b260-1eed-8df3-f96cf1823caa.xml','')
                END
            END
        