
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8a9c-8d11b1478057')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-28','FACECO','918','fa163e9a-b260-1eed-8a9c-8d11b1478057','RDD101105Q91','fa163e9a-b260-1eed-8a9c-8d11b1478057.xml','')
                END
            END
        