
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-9081-f5457756b7fb')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-04-28','FACECO','1012','fa163e3d-eed7-1eed-9081-f5457756b7fb','RDD101105Q91','fa163e3d-eed7-1eed-9081-f5457756b7fb.xml','')
                END
            END
        