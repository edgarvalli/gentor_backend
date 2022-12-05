
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'RDD101105Q91')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [RDD101105Q91] WHERE UUID like 'fa163e3d-eed7-1edd-91e8-21378fffa2e2')
                BEGIN
                    INSERT INTO [RDD101105Q91] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2022-10-03','FACECO','1064','fa163e3d-eed7-1edd-91e8-21378fffa2e2','RDD101105Q91','fa163e3d-eed7-1edd-91e8-21378fffa2e2.xml','')
                END
            END
        