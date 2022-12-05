
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-9893-485b79a73439')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-04-29','FACECO','1188','fa163e3d-eed7-1edd-9893-485b79a73439','RDD101105Q91','fa163e3d-eed7-1edd-9893-485b79a73439.xml','')
                END
            END
        