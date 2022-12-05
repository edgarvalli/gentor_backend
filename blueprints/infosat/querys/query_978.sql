
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-8f87-14a5d72231ee')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-13','FACECO','978','fa163e3d-eed7-1edd-8f87-14a5d72231ee','RDD101105Q91','fa163e3d-eed7-1edd-8f87-14a5d72231ee.xml','')
                END
            END
        