
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8a9c-96b02f18e0c8')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-27','FACECO','919','fa163e9a-b260-1eed-8a9c-96b02f18e0c8','RDD101105Q91','fa163e9a-b260-1eed-8a9c-96b02f18e0c8.xml','')
                END
            END
        