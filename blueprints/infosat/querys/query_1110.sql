
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-94c6-3c8291c7ac71')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-23','FACECO','1110','fa163e3d-eed7-1edd-94c6-3c8291c7ac71','RDD101105Q91','fa163e3d-eed7-1edd-94c6-3c8291c7ac71.xml','')
                END
            END
        