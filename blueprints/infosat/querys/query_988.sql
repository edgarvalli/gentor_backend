
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-8f87-aefc9f1aaa28')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-21','FACECO','988','fa163e3d-eed7-1eed-8f87-aefc9f1aaa28','RDD101105Q91','fa163e3d-eed7-1eed-8f87-aefc9f1aaa28.xml','')
                END
            END
        