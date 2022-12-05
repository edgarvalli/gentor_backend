
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1edd-8cef-ed9720f2a8ae')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-05-06','FAGS','156','fa163e9a-b260-1edd-8cef-ed9720f2a8ae','GSE9212163I9','fa163e9a-b260-1edd-8cef-ed9720f2a8ae.xml','')
                END
            END
        