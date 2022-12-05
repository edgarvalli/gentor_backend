
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9aea-75aea8e86976')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-10-25','FACHYD','28','fa163e9c-18a5-1eed-9aea-75aea8e86976','IMA960906DW2','fa163e9c-18a5-1eed-9aea-75aea8e86976.xml','')
                END
            END
        