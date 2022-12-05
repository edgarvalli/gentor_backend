
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-89e9-4a2e8631d0c5')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-27','FACECO','908','fa163e9a-b260-1edd-89e9-4a2e8631d0c5','RDD101105Q91','fa163e9a-b260-1edd-89e9-4a2e8631d0c5.xml','')
                END
            END
        