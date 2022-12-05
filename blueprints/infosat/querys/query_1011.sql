
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-9081-e579a49f2d6c')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-03-30','FACECO','1011','fa163e3d-eed7-1eed-9081-e579a49f2d6c','RDD101105Q91','fa163e3d-eed7-1eed-9081-e579a49f2d6c.xml','')
                END
            END
        