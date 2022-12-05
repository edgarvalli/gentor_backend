
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-909b-be5ab7d6b103')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-26','FACECO','1023','fa163e3d-eed7-1edd-909b-be5ab7d6b103','RDD101105Q91','fa163e3d-eed7-1edd-909b-be5ab7d6b103.xml','')
                END
            END
        