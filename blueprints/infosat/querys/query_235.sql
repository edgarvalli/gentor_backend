
            IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GSE9212163I9')
            BEGIN
                IF NOT EXISTS (SELECT * FROM [GSE9212163I9] WHERE UUID like 'fa163e9a-b260-1edd-8df4-7e3a790b2814')
                BEGIN
                    INSERT INTO [GSE9212163I9] (Fecha,Serie,Folio,UUID,RFC,NombreXML,XML) VALUES ('2021-11-24','FAGS','235','fa163e9a-b260-1edd-8df4-7e3a790b2814','GSE9212163I9','fa163e9a-b260-1edd-8df4-7e3a790b2814.xml','')
                END
            END
        