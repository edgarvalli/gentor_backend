
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-8fa9-ab4e07cbd0ff')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-09-25','FCACECO','39','fa163e3d-eed7-1edd-8fa9-ab4e07cbd0ff','RDD101105Q91','fa163e3d-eed7-1edd-8fa9-ab4e07cbd0ff.xml','')
                END
            END
        