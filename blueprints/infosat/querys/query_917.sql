
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-8a9c-83a740f13f61')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-28','FACECO','917','fa163e9a-b260-1edd-8a9c-83a740f13f61','RDD101105Q91','fa163e9a-b260-1edd-8a9c-83a740f13f61.xml','')
                END
            END
        