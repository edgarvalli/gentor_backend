
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9c-18a5-1eed-99f1-0cf546b96390')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-09-07','FAGS','274','fa163e9c-18a5-1eed-99f1-0cf546b96390','GSE9212163I9','fa163e9c-18a5-1eed-99f1-0cf546b96390.xml','')
                END
            END
        