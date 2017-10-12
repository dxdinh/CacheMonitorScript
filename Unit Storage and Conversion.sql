--- List of all Analyet Storage Unit
SELECT tb1.Analyte, tb1.ConversionFactor, tb5.Name AnalyteName,  tb3.StorageUnit, tb4.Name StorageUnitName, tb1.Unit,  tb2.Name 
	, ' ' ||  tb4.Name || ' -> '  ||  tb2.Name || ' = ' || tb1.ConversionFactor  UnitConversion
	
	FROM CodeList.UnitConversion tb1
    JOIN Codelist.UnitDescription tb2 ON tb1.Unit = tb2.Unit And tb2.LanguageKey = 'en'
    JOIN CodeList.AnalyteStorageUnit tb3 ON tb1.StorageUnit = tb3.ID 
    JOIN Codelist.UnitDescription tb4 ON tb3.StorageUnit = tb4.Unit And tb4.LanguageKey = 'en'
    JOIN Codelist.AnalyteDescription tb5 ON tb1.Analyte = tb5.Analyte and tb5.languageKey = 'en'    
    ORDER BY tb5.Name, tb4.Name

GO
--- List of all Analyet Storage Unit filter on valid storage for AnalyteUnit
SELECT tb1.Analyte, tb1.ConversionFactor, tb5.Name AnalyteName,  tb3.StorageUnit, tb4.Name StorageUnitName, tb1.Unit,  tb2.Name 
	, ' ' ||  tb4.Name || ' -> '  ||  tb2.Name || ' = ' || tb1.ConversionFactor  UnitConversion	
	FROM CodeList.UnitConversion tb1
    JOIN Codelist.UnitDescription tb2 ON tb1.Unit = tb2.Unit And tb2.LanguageKey = 'en'
    JOIN CodeList.AnalyteStorageUnit tb3 ON tb1.StorageUnit = tb3.ID 
    JOIN Codelist.UnitDescription tb4 ON tb3.StorageUnit = tb4.Unit And tb4.LanguageKey = 'en'
    JOIN Codelist.AnalyteDescription tb5 ON tb1.Analyte = tb5.Analyte and tb5.languageKey = 'en'
    JOIN CodeList.ValidUnit tb6 ON tb1.Analyte = tb6.Analyte AND tb3.StorageUnit = tb6.Unit
    ORDER BY tb5.Name, tb4.Name

GO
SELECT * FROM CodeList.ValidUnit WHERE Analyte = 303
GO

SELECT * FROM CodeList.UnitConversion
GO
SELECT DISTINCT tb1.Analyte, tb2.Name  FROM CodeList.UnitConversion tb1
  JOIN CodeList.AnalyteDescription tb2 ON tb1.Analyte = tb2.Analyte where tb2.LanguageKey = 'en' 
  ORDER BY tb2.Name

GO
SELECT COUNT(*) from Codelist.Analyte
GO
SELECT * FROM CodeList.AnalyteStorageUnit
  JOIN CodeList.AnalyteDescription tb2 ON tb1.Analyte = tb2.Analyte where tb2.LanguageKey = 'en' 
--3165
GO
SELECT DISTINCT tb1.Analyte ,tb2.Name FROM CodeList.AnalyteStorageUnit tb1 
  JOIN CodeList.AnalyteDescription tb2 ON tb1.Analyte = tb2.Analyte where tb2.LanguageKey = 'en' 
  ORDER BY tb2.Name

GO

SELECT * FROM CodeList.AnalyteStorageUnit tb1
 JOIN Codelist.UnitDescription tb2 ON tb1.StorageUnit = tb2.Unit And LanguageKey = 'en'
where Analyte = 7

GO
SELECT * FROM CODELIST.ValidUnit tb1
 JOIN Codelist.UnitDescription tb2 ON tb1.Unit = tb2.Unit And LanguageKey = 'en'
 WHERE Analyte = 31
 GO
 SELECT * FROM CODELIST.ValidUnit tb1
 JOIN Codelist.UnitDescription tb2 ON tb1.Unit = tb2.Unit And LanguageKey = 'en'
 WHERE Analyte = 522

 GO
SELECT * FROM CodeList.AnalyteStorageUnit tb1
 JOIN Codelist.UnitDescription tb2 ON tb1.StorageUnit = tb2.Unit And LanguageKey = 'en'
where Analyte = 522
GO
 


