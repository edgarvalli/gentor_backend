
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9c99-d830ca524336')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-05-19','FACHYD','40','fa163e9c-18a5-1eed-9c99-d830ca524336','IMA960906DW2','fa163e9c-18a5-1eed-9c99-d830ca524336.xml','')
                END
            END
        