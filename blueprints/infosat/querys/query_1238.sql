
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9c-18a5-1eed-9c9f-b14865bca887')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-04-28','FACECO','1238','fa163e9c-18a5-1eed-9c9f-b14865bca887','RDD101105Q91','fa163e9c-18a5-1eed-9c9f-b14865bca887.xml','')
                END
            END
        