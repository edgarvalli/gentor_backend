
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-89de-a5a394fba2c9')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-26','FACECO','891','fa163e9a-b260-1edd-89de-a5a394fba2c9','RDD101105Q91','fa163e9a-b260-1edd-89de-a5a394fba2c9.xml','')
                END
            END
        