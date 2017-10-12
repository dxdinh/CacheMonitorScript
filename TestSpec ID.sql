SELECT TOP 1000 
	ID,Analyte,AnalyteStorageUnit,Instrument,Method,Reagent,StorageUnit,Temperature
FROM Stats.TestSpec
GO
Select distinct analyteStorageUnit, storageUnit from stats.testspec where instrument = 940
go
Select  distinct tb1.analyte, tb3.Name, Instrument , storageUnit, tb2.name  from stats.testspec tb1
join codelist.UnitDescription tb2 ON  tb1.StorageUnit = tb2.Unit and tb2.languageKey = 'en'
join codelist.AnalyteDescription tb3 ON  tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
where Instrument = 940
order by analyte, Instrument, storageUnit
go
Select  distinct  tb1.ID, tb1.analyte, tb3.Name, Instrument , method, reagent, AnalyteStorageUnit, storageUnit, tb2.name, tb1.Temperature  from stats.testspec tb1
join codelist.UnitDescription tb2 ON  tb1.StorageUnit = tb2.Unit and tb2.languageKey = 'en'
join codelist.AnalyteDescription tb3 ON  tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
--where Instrument = 940
where tb1. analyte = 69 and tb1.Method =  69 and tb1.Instrument =  940 and tb1.Reagent = 6 and StorageUnit = 56
order by analyte, Instrument, method, reagent,  storageUnit
GO

Select  distinct 'INSERT INTO CodeList.TestSpec ([TestSpecId] ,[AnalyteCode], [MethodCode] ,[InstrumentCode], [ReagentCode], [StorageUnitCode], [EditBy]) VALUES (' ||  tb1.ID || ' , ' 
										|| tb1.analyte || ' , ' ||  tb1.Method || ' , ' 
										|| tb1.Instrument || ' , ' || tb1.reagent || ' , ' || storageUnit || ' , ' || '''Import Script'')'  from stats.testspec tb1

where Instrument = 940 AND temperature = 6
order by tb1.analyte, tb1.Instrument, tb1.method, tb1.reagent,  tb1.storageUnit

GO

  select  'INSERT INTO CodeList.ReagentTranslation ([ReagentCode] ,[LanguageTag] ,[Name], [EditBy]) VALUES (' || Code || ', ''zh-cn'', ' || '''' || Name || ''', ''''Import Script'')'')' from Codelist.Reagent
  JOIN Codelist.ReagentDescription ON Reagent.Code = ReagentDescription.Reagent and LanguageKey = 'zh-cn'

select * from codelist.temperaturedescription where temperature = 6
SELECT
DISTINCT	tb6.Name Matrix, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name AnalyteName, tb1.Unit, tb4.Name
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
JOIN CodeList.Product tb5 ON tb1.Product = tb5.ID
JOIN CodeList.MatrixDescription tb6 ON tb5.Matrix = tb6.Matrix and tb3.languageKey = 'en'
ORDER BY tb6.Name,  tb3.Name, tb2.Name, tb4.Name