
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-97e3-62f2ece8a3cb')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-03','FACECO','1179','fa163e3d-eed7-1edd-97e3-62f2ece8a3cb','RDD101105Q91','fa163e3d-eed7-1edd-97e3-62f2ece8a3cb.xml','')
                END
            END
        