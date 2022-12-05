
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-8e8c-4a329476e391')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-07-30','FACECO','970','fa163e9a-b260-1edd-8e8c-4a329476e391','RDD101105Q91','fa163e9a-b260-1edd-8e8c-4a329476e391.xml','')
                END
            END
        