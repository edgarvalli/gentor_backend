
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-9082-18934f436d08')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-05-31','FACECO','1013','fa163e3d-eed7-1edd-9082-18934f436d08','RDD101105Q91','fa163e3d-eed7-1edd-9082-18934f436d08.xml','')
                END
            END
        