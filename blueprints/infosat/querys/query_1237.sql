
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9c-18a5-1eed-9c9f-a53d34e78401')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-03-29','FACECO','1237','fa163e9c-18a5-1eed-9c9f-a53d34e78401','RDD101105Q91','fa163e9c-18a5-1eed-9c9f-a53d34e78401.xml','')
                END
            END
        