
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-8f86-10f770512871')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-07','FACECO','973','fa163e3d-eed7-1eed-8f86-10f770512871','RDD101105Q91','fa163e3d-eed7-1eed-8f86-10f770512871.xml','')
                END
            END
        