
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1eed-9c9b-89f792ed610d')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-28','FACHYD','44','fa163e9c-18a5-1eed-9c9b-89f792ed610d','IMA960906DW2','fa163e9c-18a5-1eed-9c9b-89f792ed610d.xml','')
                END
            END
        