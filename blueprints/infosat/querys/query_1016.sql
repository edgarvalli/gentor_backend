
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-9089-141dccdf1d6c')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-01','FACECO','1016','fa163e3d-eed7-1eed-9089-141dccdf1d6c','RDD101105Q91','fa163e3d-eed7-1eed-9089-141dccdf1d6c.xml','')
                END
            END
        