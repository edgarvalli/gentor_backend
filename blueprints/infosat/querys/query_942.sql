
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-8aae-f451eaee3c4f')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-07-30','FACECO','942','fa163e9a-b260-1edd-8aae-f451eaee3c4f','RDD101105Q91','fa163e9a-b260-1edd-8aae-f451eaee3c4f.xml','')
                END
            END
        