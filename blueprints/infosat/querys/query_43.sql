
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9c-18a5-1edd-9c9b-51df1dab7346')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-28','FACHYD','43','fa163e9c-18a5-1edd-9c9b-51df1dab7346','IMA960906DW2','fa163e9c-18a5-1edd-9c9b-51df1dab7346.xml','')
                END
            END
        