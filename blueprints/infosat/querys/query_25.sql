
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'SEI920618TC5')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [SEI920618TC5] WHERE UUID like 'fa163e9a-b260-1eed-8ae8-f3084e626a2b')
                BEGIN
                    INSERT INTO [SEI920618TC5] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-08-04','NCASE','25','fa163e9a-b260-1eed-8ae8-f3084e626a2b','SEI920618TC5','fa163e9a-b260-1eed-8ae8-f3084e626a2b.xml','')
                END
            END
        