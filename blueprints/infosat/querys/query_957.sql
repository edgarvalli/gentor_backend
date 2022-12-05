
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8abf-d8b19a273daf')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-30','FACECO','957','fa163e9a-b260-1eed-8abf-d8b19a273daf','RDD101105Q91','fa163e9a-b260-1eed-8abf-d8b19a273daf.xml','')
                END
            END
        