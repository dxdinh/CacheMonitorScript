SELECT 
	 tb1.ID, tb1.StorageUnit, tb1.Analyte, tb4.Name AnalyteName, tb3.StorageUnit, tb22.Name,  ConversionFactor,tb1.Unit, tb2.Name, Validated
	
FROM CodeList.UnitConversion tb1 
JOIN Codelist.UnitDescription tb2 ON tb1.Unit = tb2.Unit and tb2.LanguageKey = 'en'
JOIN Codelist.AnalyteStorageUnit tb3 ON tb1.StorageUnit = tb3.ID
JOIN Codelist.UnitDescription tb22 ON tb3.StorageUnit = tb22.Unit and tb22.LanguageKey = 'en'
JOIN Codelist.AnalyteDescription tb4 ON tb1.Analyte = tb4.Analyte and tb4.LanguageKey = 'en'

WHERE tb3.StorageUnit = 56


GO

