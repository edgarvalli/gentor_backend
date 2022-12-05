
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-91c9-8ed622aee2a8')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-04','FACECO','1060','fa163e3d-eed7-1edd-91c9-8ed622aee2a8','RDD101105Q91','fa163e3d-eed7-1edd-91c9-8ed622aee2a8.xml','')
                END
            END
        