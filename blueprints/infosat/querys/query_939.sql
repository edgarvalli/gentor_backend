
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8aac-bd9ac64e6788')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-05-31','FACECO','939','fa163e9a-b260-1eed-8aac-bd9ac64e6788','RDD101105Q91','fa163e9a-b260-1eed-8aac-bd9ac64e6788.xml','')
                END
            END
        