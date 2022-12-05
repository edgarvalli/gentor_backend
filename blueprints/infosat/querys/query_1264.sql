
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9c-18a5-1edd-9cb2-328ba40876d3')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-04-28','FACECO','1264','fa163e9c-18a5-1edd-9cb2-328ba40876d3','RDD101105Q91','fa163e9c-18a5-1edd-9cb2-328ba40876d3.xml','')
                END
            END
        