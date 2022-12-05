
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1edd-8cef-f80598516b81')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-05-26','FAGS','158','fa163e9a-b260-1edd-8cef-f80598516b81','GSE9212163I9','fa163e9a-b260-1edd-8cef-f80598516b81.xml','')
                END
            END
        