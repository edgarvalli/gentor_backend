
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9c99-e9814783a94a')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-24','FACHYD','41','fa163e9c-18a5-1eed-9c99-e9814783a94a','IMA960906DW2','fa163e9c-18a5-1eed-9c99-e9814783a94a.xml','')
                END
            END
        