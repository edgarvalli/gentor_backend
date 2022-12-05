
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8a9c-cb9fe86e63f2')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-05-11','FACECO','921','fa163e9a-b260-1eed-8a9c-cb9fe86e63f2','RDD101105Q91','fa163e9a-b260-1eed-8a9c-cb9fe86e63f2.xml','')
                END
            END
        