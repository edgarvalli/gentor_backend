
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'IMA960906DW2')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [IMA960906DW2] WHERE UUID like 'fa163e9a-b260-1edd-90ce-d258b9f090b4')
                BEGIN
                    INSERT INTO [IMA960906DW2] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-12','FACHYD','16','fa163e9a-b260-1edd-90ce-d258b9f090b4','IMA960906DW2','fa163e9a-b260-1edd-90ce-d258b9f090b4.xml','')
                END
            END
        