
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9c9b-9f20f400a55d')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-02-09','FACHYD','45','fa163e9c-18a5-1eed-9c9b-9f20f400a55d','IMA960906DW2','fa163e9c-18a5-1eed-9c9b-9f20f400a55d.xml','')
                END
            END
        