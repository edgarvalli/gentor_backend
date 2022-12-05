
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-8ef6-1aefc8d43f55')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-02','FACECO','971','fa163e3d-eed7-1eed-8ef6-1aefc8d43f55','RDD101105Q91','fa163e3d-eed7-1eed-8ef6-1aefc8d43f55.xml','')
                END
            END
        