
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8cf1-4199f097e971')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-04-29','FACECO','969','fa163e9a-b260-1eed-8cf1-4199f097e971','RDD101105Q91','fa163e9a-b260-1eed-8cf1-4199f097e971.xml','')
                END
            END
        