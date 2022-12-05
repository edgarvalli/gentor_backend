
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9c9b-bd441449eb56')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-27','FACHYD','46','fa163e9c-18a5-1eed-9c9b-bd441449eb56','IMA960906DW2','fa163e9c-18a5-1eed-9c9b-bd441449eb56.xml','')
                END
            END
        