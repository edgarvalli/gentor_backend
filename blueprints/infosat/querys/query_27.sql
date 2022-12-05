
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9aea-60b6090e629c')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-10-19','FACHYD','27','fa163e9c-18a5-1eed-9aea-60b6090e629c','IMA960906DW2','fa163e9c-18a5-1eed-9aea-60b6090e629c.xml','')
                END
            END
        