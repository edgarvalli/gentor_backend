
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1edd-8cf3-8281bc277f1b')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-06-25','FAGS','176','fa163e9a-b260-1edd-8cf3-8281bc277f1b','GSE9212163I9','fa163e9a-b260-1edd-8cf3-8281bc277f1b.xml','')
                END
            END
        