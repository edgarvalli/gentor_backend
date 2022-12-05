
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-909c-744df702af5e')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-06-24','FACECO','1025','fa163e3d-eed7-1edd-909c-744df702af5e','RDD101105Q91','fa163e3d-eed7-1edd-909c-744df702af5e.xml','')
                END
            END
        