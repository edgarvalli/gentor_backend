
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e3d-eed7-1edd-8fb4-6dd019d57e82')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-12-29','FAGS','242','fa163e3d-eed7-1edd-8fb4-6dd019d57e82','GSE9212163I9','fa163e3d-eed7-1edd-8fb4-6dd019d57e82.xml','')
                END
            END
        