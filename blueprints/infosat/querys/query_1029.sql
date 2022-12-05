
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-9182-e5905df0b90e')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-29','FACECO','1029','fa163e3d-eed7-1edd-9182-e5905df0b90e','RDD101105Q91','fa163e3d-eed7-1edd-9182-e5905df0b90e.xml','')
                END
            END
        