
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-96c3-6a5efd5779c8')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-11-01','FACECO','1165','fa163e3d-eed7-1edd-96c3-6a5efd5779c8','RDD101105Q91','fa163e3d-eed7-1edd-96c3-6a5efd5779c8.xml','')
                END
            END
        