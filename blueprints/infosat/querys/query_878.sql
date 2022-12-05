
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-89dc-36da81563b8f')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-25','FACECO','878','fa163e9a-b260-1edd-89dc-36da81563b8f','RDD101105Q91','fa163e9a-b260-1edd-89dc-36da81563b8f.xml','')
                END
            END
        