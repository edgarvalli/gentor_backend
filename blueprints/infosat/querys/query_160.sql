
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1edd-8cf0-01bc1e0eedd7')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-05-06','FAGS','160','fa163e9a-b260-1edd-8cf0-01bc1e0eedd7','GSE9212163I9','fa163e9a-b260-1edd-8cf0-01bc1e0eedd7.xml','')
                END
            END
        