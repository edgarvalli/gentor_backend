
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9c-18a5-1edd-9aee-1998facc3c5d')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-30','FACECO','1214','fa163e9c-18a5-1edd-9aee-1998facc3c5d','RDD101105Q91','fa163e9c-18a5-1edd-9aee-1998facc3c5d.xml','')
                END
            END
        