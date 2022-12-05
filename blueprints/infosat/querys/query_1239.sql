
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9c-18a5-1eed-9c9f-bdd83d9b2c9f')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-05-30','FACECO','1239','fa163e9c-18a5-1eed-9c9f-bdd83d9b2c9f','RDD101105Q91','fa163e9c-18a5-1eed-9c9f-bdd83d9b2c9f.xml','')
                END
            END
        