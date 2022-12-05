
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8ac1-7e1265cbbc5d')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-29','FACECO','963','fa163e9a-b260-1eed-8ac1-7e1265cbbc5d','RDD101105Q91','fa163e9a-b260-1eed-8ac1-7e1265cbbc5d.xml','')
                END
            END
        