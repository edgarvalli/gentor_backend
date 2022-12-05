
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8aaa-1820efdef6ee')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-29','FACECO','937','fa163e9a-b260-1eed-8aaa-1820efdef6ee','RDD101105Q91','fa163e9a-b260-1eed-8aaa-1820efdef6ee.xml','')
                END
            END
        