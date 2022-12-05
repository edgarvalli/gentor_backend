
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9c-18a5-1eed-99f2-092b892638d6')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-01-26','FAGS','275','fa163e9c-18a5-1eed-99f2-092b892638d6','GSE9212163I9','fa163e9c-18a5-1eed-99f2-092b892638d6.xml','')
                END
            END
        