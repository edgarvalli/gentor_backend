
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-8f87-57fa16233b0c')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-19','FACECO','983','fa163e3d-eed7-1edd-8f87-57fa16233b0c','RDD101105Q91','fa163e3d-eed7-1edd-8f87-57fa16233b0c.xml','')
                END
            END
        