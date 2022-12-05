
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-94b0-7ac2ac94a413')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-11-03','FACECO','1109','fa163e3d-eed7-1edd-94b0-7ac2ac94a413','RDD101105Q91','fa163e3d-eed7-1edd-94b0-7ac2ac94a413.xml','')
                END
            END
        