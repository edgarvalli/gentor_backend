
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8abf-aa587c92ae2f')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-30','FACECO','951','fa163e9a-b260-1eed-8abf-aa587c92ae2f','RDD101105Q91','fa163e9a-b260-1eed-8abf-aa587c92ae2f.xml','')
                END
            END
        