
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-93ff-31b464b05c94')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-09-29','FACECO','1105','fa163e3d-eed7-1eed-93ff-31b464b05c94','RDD101105Q91','fa163e3d-eed7-1eed-93ff-31b464b05c94.xml','')
                END
            END
        