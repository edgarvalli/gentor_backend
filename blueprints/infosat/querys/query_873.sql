
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-89b1-8d9c345a6205')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-03-30','FACECO','873','fa163e9a-b260-1edd-89b1-8d9c345a6205','RDD101105Q91','fa163e9a-b260-1edd-89b1-8d9c345a6205.xml','')
                END
            END
        