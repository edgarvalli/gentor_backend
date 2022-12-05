
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8aa9-e1710626a62a')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-29','FACECO','932','fa163e9a-b260-1eed-8aa9-e1710626a62a','RDD101105Q91','fa163e9a-b260-1eed-8aa9-e1710626a62a.xml','')
                END
            END
        