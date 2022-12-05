
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-8f87-496aa66fb922')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-19','FACECO','982','fa163e3d-eed7-1edd-8f87-496aa66fb922','RDD101105Q91','fa163e3d-eed7-1edd-8f87-496aa66fb922.xml','')
                END
            END
        