
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-96c0-45b6cdd33538')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-01','FACECO','1164','fa163e3d-eed7-1eed-96c0-45b6cdd33538','RDD101105Q91','fa163e3d-eed7-1eed-96c0-45b6cdd33538.xml','')
                END
            END
        