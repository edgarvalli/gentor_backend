
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-94c6-a7503b8afb7a')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-28','FACECO','1111','fa163e3d-eed7-1edd-94c6-a7503b8afb7a','RDD101105Q91','fa163e3d-eed7-1edd-94c6-a7503b8afb7a.xml','')
                END
            END
        