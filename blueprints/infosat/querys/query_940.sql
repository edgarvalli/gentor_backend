
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-8aae-a7ed18ae017f')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-07-30','FACECO','940','fa163e9a-b260-1edd-8aae-a7ed18ae017f','RDD101105Q91','fa163e9a-b260-1edd-8aae-a7ed18ae017f.xml','')
                END
            END
        