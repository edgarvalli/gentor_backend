
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-8ac3-2fddd5a6f7cc')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-03-30','FACECO','964','fa163e9a-b260-1edd-8ac3-2fddd5a6f7cc','RDD101105Q91','fa163e9a-b260-1edd-8ac3-2fddd5a6f7cc.xml','')
                END
            END
        