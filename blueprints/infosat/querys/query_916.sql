
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-8a9b-b60ca9eaf093')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-30','FACECO','916','fa163e9a-b260-1edd-8a9b-b60ca9eaf093','RDD101105Q91','fa163e9a-b260-1edd-8a9b-b60ca9eaf093.xml','')
                END
            END
        