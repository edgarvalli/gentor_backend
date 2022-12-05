
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GEN760712EM0')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GEN760712EM0] WHERE UUID like 'fa163e9c-18a5-1edd-9b91-21b2f493657a')
                BEGIN
                    INSERT INTO [GEN760712EM0] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-12-31','FAGE','606','fa163e9c-18a5-1edd-9b91-21b2f493657a','GEN760712EM0','fa163e9c-18a5-1edd-9b91-21b2f493657a.xml','')
                END
            END
        