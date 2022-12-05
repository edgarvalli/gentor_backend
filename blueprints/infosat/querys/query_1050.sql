
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-97dd-59a0d8ef628c')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-06','FACECO','1050','fa163e3d-eed7-1edd-97dd-59a0d8ef628c','RDD101105Q91','fa163e3d-eed7-1edd-97dd-59a0d8ef628c.xml','')
                END
            END
        