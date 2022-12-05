
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e9a-b260-1edd-8cee-90cad985fe91')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-03-30','FACECO','968','fa163e9a-b260-1edd-8cee-90cad985fe91','RDD101105Q91','fa163e9a-b260-1edd-8cee-90cad985fe91.xml','')
                END
            END
        