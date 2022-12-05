
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-89c8-a5b7d8f9c00e')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-25','FACECO','875','fa163e9a-b260-1eed-89c8-a5b7d8f9c00e','RDD101105Q91','fa163e9a-b260-1eed-89c8-a5b7d8f9c00e.xml','')
                END
            END
        