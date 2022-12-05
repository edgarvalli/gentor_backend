
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-9080-9fe0460ee57d')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-02-27','FACECO','1010','fa163e3d-eed7-1edd-9080-9fe0460ee57d','RDD101105Q91','fa163e3d-eed7-1edd-9080-9fe0460ee57d.xml','')
                END
            END
        