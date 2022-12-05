
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1edd-9b88-bbeb28e2f33b')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-10-27','FACHYD','30','fa163e9c-18a5-1edd-9b88-bbeb28e2f33b','IMA960906DW2','fa163e9c-18a5-1edd-9b88-bbeb28e2f33b.xml','')
                END
            END
        