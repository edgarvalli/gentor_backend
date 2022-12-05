
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-91c9-88b9fad3604a')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-04','FACECO','1059','fa163e3d-eed7-1edd-91c9-88b9fad3604a','RDD101105Q91','fa163e3d-eed7-1edd-91c9-88b9fad3604a.xml','')
                END
            END
        