
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-9894-29f585923cc4')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-04-29','FACECO','1189','fa163e3d-eed7-1eed-9894-29f585923cc4','RDD101105Q91','fa163e3d-eed7-1eed-9894-29f585923cc4.xml','')
                END
            END
        