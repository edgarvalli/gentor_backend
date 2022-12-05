
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9c9b-a2136b53e5e7')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-30','NCHYD','2','fa163e9c-18a5-1eed-9c9b-a2136b53e5e7','IMA960906DW2','fa163e9c-18a5-1eed-9c9b-a2136b53e5e7.xml','')
                END
            END
        