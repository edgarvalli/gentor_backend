
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9b9c-4e7a9c8cafa2')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-11-16','FACHYD','32','fa163e9c-18a5-1eed-9b9c-4e7a9c8cafa2','IMA960906DW2','fa163e9c-18a5-1eed-9b9c-4e7a9c8cafa2.xml','')
                END
            END
        