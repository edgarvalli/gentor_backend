
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8abf-b2b04e38f020')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-30','FACECO','952','fa163e9a-b260-1eed-8abf-b2b04e38f020','RDD101105Q91','fa163e9a-b260-1eed-8abf-b2b04e38f020.xml','')
                END
            END
        