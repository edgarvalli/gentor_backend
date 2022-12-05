
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-89de-64a3f84bbe9f')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-26','FACECO','887','fa163e9a-b260-1eed-89de-64a3f84bbe9f','RDD101105Q91','fa163e9a-b260-1eed-89de-64a3f84bbe9f.xml','')
                END
            END
        