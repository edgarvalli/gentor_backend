
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1eed-8cf3-b79ff1f5ab14')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-07-27','FAGS','187','fa163e9a-b260-1eed-8cf3-b79ff1f5ab14','GSE9212163I9','fa163e9a-b260-1eed-8cf3-b79ff1f5ab14.xml','')
                END
            END
        