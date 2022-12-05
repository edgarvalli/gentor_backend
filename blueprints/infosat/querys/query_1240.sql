
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9c-18a5-1eed-9c9f-c67744896fcf')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-24','FACECO','1240','fa163e9c-18a5-1eed-9c9f-c67744896fcf','RDD101105Q91','fa163e9c-18a5-1eed-9c9f-c67744896fcf.xml','')
                END
            END
        