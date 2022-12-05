
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-94ad-a6b2236cedff')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-11-08','FACECO','1107','fa163e3d-eed7-1eed-94ad-a6b2236cedff','RDD101105Q91','fa163e3d-eed7-1eed-94ad-a6b2236cedff.xml','')
                END
            END
        