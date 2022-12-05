
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1eed-8ac0-960982e83632')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-26','FACECO','962','fa163e9a-b260-1eed-8ac0-960982e83632','RDD101105Q91','fa163e9a-b260-1eed-8ac0-960982e83632.xml','')
                END
            END
        