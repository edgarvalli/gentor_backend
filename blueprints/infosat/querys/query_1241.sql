
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9c-18a5-1edd-9ca1-54ec36372340')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-30','FACECO','1241','fa163e9c-18a5-1edd-9ca1-54ec36372340','RDD101105Q91','fa163e9c-18a5-1edd-9ca1-54ec36372340.xml','')
                END
            END
        