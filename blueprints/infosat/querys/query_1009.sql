
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-9080-41b3456077ee')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-05-31','FACECO','1009','fa163e3d-eed7-1edd-9080-41b3456077ee','RDD101105Q91','fa163e3d-eed7-1edd-9080-41b3456077ee.xml','')
                END
            END
        