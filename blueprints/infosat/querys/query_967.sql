
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-8ace-7e6a2f443352')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-11','FACECO','967','fa163e9a-b260-1edd-8ace-7e6a2f443352','RDD101105Q91','fa163e9a-b260-1edd-8ace-7e6a2f443352.xml','')
                END
            END
        