
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9b88-efae6cef20c1')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-12-23','FACHYD','31','fa163e9c-18a5-1eed-9b88-efae6cef20c1','IMA960906DW2','fa163e9c-18a5-1eed-9b88-efae6cef20c1.xml','')
                END
            END
        