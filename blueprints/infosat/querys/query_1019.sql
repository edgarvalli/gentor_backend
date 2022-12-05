
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-908c-a5f1b878e9a6')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-04-28','FACECO','1019','fa163e3d-eed7-1eed-908c-a5f1b878e9a6','RDD101105Q91','fa163e3d-eed7-1eed-908c-a5f1b878e9a6.xml','')
                END
            END
        