
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1eed-94b0-4c52ebeb7501')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-10-31','FACECO','1108','fa163e3d-eed7-1eed-94b0-4c52ebeb7501','RDD101105Q91','fa163e3d-eed7-1eed-94b0-4c52ebeb7501.xml','')
                END
            END
        