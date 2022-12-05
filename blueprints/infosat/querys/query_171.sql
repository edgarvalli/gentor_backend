
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1edd-8cf3-6d319b5bf9fa')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-06-17','FAGS','171','fa163e9a-b260-1edd-8cf3-6d319b5bf9fa','GSE9212163I9','fa163e9a-b260-1edd-8cf3-6d319b5bf9fa.xml','')
                END
            END
        