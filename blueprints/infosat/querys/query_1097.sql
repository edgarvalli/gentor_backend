
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-93ca-b7f05edbe9a1')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-07','FACECO','1097','fa163e3d-eed7-1eed-93ca-b7f05edbe9a1','RDD101105Q91','fa163e3d-eed7-1eed-93ca-b7f05edbe9a1.xml','')
                END
            END
        