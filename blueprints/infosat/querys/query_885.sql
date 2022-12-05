
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-89de-45a8469f3c7a')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-26','FACECO','885','fa163e9a-b260-1eed-89de-45a8469f3c7a','RDD101105Q91','fa163e9a-b260-1eed-89de-45a8469f3c7a.xml','')
                END
            END
        