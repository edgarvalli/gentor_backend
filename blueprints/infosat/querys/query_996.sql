
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-8fa9-d4c99f2276dd')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-21','FACECO','996','fa163e3d-eed7-1edd-8fa9-d4c99f2276dd','RDD101105Q91','fa163e3d-eed7-1edd-8fa9-d4c99f2276dd.xml','')
                END
            END
        