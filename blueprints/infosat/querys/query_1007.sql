
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-8fb5-9796ee6d6d5c')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-23','FACECO','1007','fa163e3d-eed7-1edd-8fb5-9796ee6d6d5c','RDD101105Q91','fa163e3d-eed7-1edd-8fb5-9796ee6d6d5c.xml','')
                END
            END
        