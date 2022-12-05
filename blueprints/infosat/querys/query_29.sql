
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1edd-9b88-a4a64b83ecb6')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-10-27','FACHYD','29','fa163e9c-18a5-1edd-9b88-a4a64b83ecb6','IMA960906DW2','fa163e9c-18a5-1edd-9b88-a4a64b83ecb6.xml','')
                END
            END
        