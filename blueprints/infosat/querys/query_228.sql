
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1edd-8df4-40c49cd46253')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-10-27','FAGS','228','fa163e9a-b260-1edd-8df4-40c49cd46253','GSE9212163I9','fa163e9a-b260-1edd-8df4-40c49cd46253.xml','')
                END
            END
        