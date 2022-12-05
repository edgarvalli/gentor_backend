
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-91c9-0af5a8f27a8d')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-29','FACECO','1054','fa163e3d-eed7-1edd-91c9-0af5a8f27a8d','RDD101105Q91','fa163e3d-eed7-1edd-91c9-0af5a8f27a8d.xml','')
                END
            END
        