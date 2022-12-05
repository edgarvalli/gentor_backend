
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1edd-8cf3-68b63f8cf87e')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-06-08','FAGS','170','fa163e9a-b260-1edd-8cf3-68b63f8cf87e','GSE9212163I9','fa163e9a-b260-1edd-8cf3-68b63f8cf87e.xml','')
                END
            END
        