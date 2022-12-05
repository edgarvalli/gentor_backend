
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-89e9-73498abc33ac')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-28','FACECO','911','fa163e9a-b260-1edd-89e9-73498abc33ac','RDD101105Q91','fa163e9a-b260-1edd-89e9-73498abc33ac.xml','')
                END
            END
        