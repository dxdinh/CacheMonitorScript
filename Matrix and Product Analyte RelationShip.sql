 
 SELECT DISTINCT	%EXACT(tb6.Name) Matrix, tb1.Product, %EXACT(tb2.Name) ProductName, tb1.Analyte, %EXACT(tb3.Name) AnalyteName, tb1.Unit, %EXACT(tb4.Name) UnitName
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
JOIN CodeList.Product tb5 ON tb1.Product = tb5.ID
JOIN CodeList.MatrixDescription tb6 ON tb5.Matrix = tb6.Matrix and tb6.languageKey = 'en'
ORDER BY tb6.Name,  tb3.Name, tb2.Name, tb4.Name
 GO
 select DISTINCT 'INSERT INTO CodeList.InstrumentAnalyte ([InstrumentId], [AnalyteId], [EditBy]) VALUES (' || tb1.Instrument || ',' ||  tb1.Analyte || ', ''Import Script'')' from CodeList.MethodGuide tb1
   WHERE tb1.Instrument = 940 OR tb1.Instrument = 1151
   ORDER BY tb1.Instrument, tb1.Analyte


GO
SELECT DISTINCT tb1.Instrument,  tb1.Method  from CodeList.MethodGuide tb1 
WHERE instrument = 940 OR instrument = 1151
ORDER BY Instrument, Method
GO
SELECT DISTINCT tb1.Instrument, tb2.Name,  tb1.Method, tb3.Name  from CodeList.MethodGuide tb1 
  JOIN CodeList.InstrumentDescription tb2 ON tb1.Instrument = tb2.Instrument and tb2.languageKey = 'en' 
  JOIN CodeList.MethodDescription tb3 ON tb1.Method = tb3.Method and tb3.languageKey = 'en' 
  WHERE tb1.instrument = 940 OR tb1.instrument = 1151
ORDER BY tb1.Instrument, tb1.Method
GO


SELECT DISTINCT tb1.Instrument, tb2.Name from CodeList.MethodGuide tb1
  JOIN CodeList.InstrumentDescription tb2 ON tb1.Instrument = tb2.Instrument and languageKey = 'en'
  WHERE tb1.Instrument = 1151 
  ORDER BY tb2.Name

GO

select * from codelist.methodguide where instrument = 1151
GO
  select * from codelist.instrumentDescription where name like '%cobas 6000%' and languageKey = 'en'

GO
 
 select DISTINCT 'INSERT INTO CodeList.Instrument ([Id] ,[ManufacturerId], [Name], [EditBy]) VALUES (' || tb1.Instrument || ',  2, ' || 'N''' || Name || ''', ''Import Script'')' from CodeList.MethodGuide tb1
  JOIN CodeList.InstrumentDescription tb2 ON tb1.Instrument = tb2.Instrument and languageKey = 'en'
  WHERE tb2.Name LIKE '%Siemens%'

GO
 select DISTINCT 'INSERT INTO CodeList.Instrument ([Id] ,[ManufacturerId], [Name], [EditBy]) VALUES (' || tb1.Instrument || ',  3, ' || 'N''' || Name || ''', ''Import Script'')' from CodeList.MethodGuide tb1
  JOIN CodeList.InstrumentDescription tb2 ON tb1.Instrument = tb2.Instrument and languageKey = 'en'
  WHERE tb2.Name LIKE '%Roche%'

GO
SELECT tb1.ID, tb1.Matrix, tb2.Name, tb3.Name as MatrixName
FROM CodeList.Product tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and languageKey = 'en'
JOIN CodeList.MatrixDescription tb3 ON tb1.Matrix = tb3.Matrix and tb3.languageKey = 'en'
ORDER BY tb2.Name , tb3.Name
GO
SELECT
	ID,Code,ExpirationDate,NumLevel,CoLabel,Detail,EditBy,EditOn,Product
FROM CodeList.Lot
GO
SELECT 
	ID,Analyte,Detail,EditBy,EditOn,Lot
FROM CodeList.ValidAnalyteLot
GO
SELECT
DISTINCT	tb6.Name Matrix, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name AnalyteName, tb1.Unit, tb4.Name
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
JOIN CodeList.Product tb5 ON tb1.Product = tb5.ID
JOIN CodeList.MatrixDescription tb6 ON tb5.Matrix = tb6.Matrix and tb6.languageKey = 'en'
ORDER BY tb6.Name,  tb3.Name, tb2.Name, tb4.Name
GO

SELECT DISTINCT tb1.Analyte, %EXACT(tb2.Name) FROM CodeList.MethodGuide tb1
   JOIN CodeList.AnalyteDescription tb2 ON tb1.Analyte = tb2.Analyte and languageKey = 'en' ORDER BY tb2.Name

GO
SELECT DISTINCT 'INSERT INTO CodeList.Analyte ([Id] ,[Name], [EditBy]) VALUES (' || tb1.Analyte, || ', ' || '''' || %EXACT(tb2.Name)  || ''', ''Import Script'')' from CodeList.MethodGuide tb1
  JOIN CodeList.AnalyteDescription tb2 ON tb1.Analyte = tb2.Analyte and languageKey = 'en' ORDER BY tb2.Name


GO

 select DISTINCT 'INSERT INTO CodeList.Analyte ([Id] ,[Name], [EditBy]) VALUES (' || tb1.Analyte || ', ' || 'N''' || Name || ''', ''Import Script'')' from CodeList.MethodGuide tb1
  c
   
GO
 select DISTINCT 'INSERT INTO CodeList.Method ([Id] ,[Name], [EditBy]) VALUES (' || tb1.Method || ', ' || 'N''' || Name || ''', ''Import Script'')' from CodeList.MethodGuide tb1
  JOIN CodeList.MethodDescription tb2 ON tb1.Method = tb2.Method and languageKey = 'en' ORDER BY tb2.Name
 GO

 
 select tb1.*, tb2.Name AnalyteName, tb3.Name MethodName from codelist.MethodGuide tb1
  JOIN CodeList.AnalyteDescription tb2 ON tb1.Analyte = tb2.Analyte and tb2.languageKey = 'en' 
   JOIN CodeList.MethodDescription tb3 ON tb1.Method = tb3.Method and tb3.languageKey = 'en' where tb1. analyte = 683
where tb1.method = 1 
GO
 select * from codelist.analytedescription where  analyte = 2 and languageKey = 'en'
GO

select * from codelist.methodguide where analyte = 683

GO
   select * from codelist.unitDescription where languageKey = 'en'
  GO  


