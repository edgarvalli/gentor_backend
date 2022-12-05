
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GEN760712EM0')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GEN760712EM0] WHERE UUID like 'fa163e3d-eed7-1eed-90ec-7c8adde3dedd')
                BEGIN
                    INSERT INTO [GEN760712EM0] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-04-16','NCANE','23','fa163e3d-eed7-1eed-90ec-7c8adde3dedd','GEN760712EM0','fa163e3d-eed7-1eed-90ec-7c8adde3dedd.xml','')
                END
            END
        