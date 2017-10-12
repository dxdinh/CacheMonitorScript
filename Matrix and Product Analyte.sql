SELECT
DISTINCT	tb6.Name Matrix, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name AnalyteName, tb1.Unit, tb4.Name
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
JOIN CodeList.Product tb5 ON tb1.Product = tb5.ID
JOIN CodeList.MatrixDescription tb6 ON tb5.Matrix = tb6.Matrix and tb3.languageKey = 'en'
ORDER BY tb6.Name,  tb3.Name, tb2.Name, tb4.Name
GO 
SELECT
	tb1.EditOn,  tb6.Name Matrix, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name AnalyteName, tb1.Unit, tb4.Name
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
JOIN CodeList.Product tb5 ON tb1.Product = tb5.ID
JOIN CodeList.MatrixDescription tb6 ON tb5.Matrix = tb6.Matrix and tb6.languageKey = 'en'
ORDER BY tb6.Name,  tb3.Name, tb2.Name, tb4.Name
GO 
SELECT tb1.ID, tb1.Matrix, tb2.Name, tb3.Name as MatrixName
FROM CodeList.Product tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and languageKey = 'en'
JOIN CodeList.MatrixDescription tb3 ON tb1.Matrix = tb3.Matrix and tb3.languageKey = 'en'
ORDER BY tb2.Name , tb3.Name
GO 
SELECT
	tb1.EditOn, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name AnalyteName, tb1.Unit, tb4.Name, tb6.Name Matrix
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
JOIN CodeList.Product tb5 ON tb1.Product = tb5.ID
JOIN CodeList.MatrixDescription tb6 ON tb5.Matrix = tb6.Matrix and tb3.languageKey = 'en'
ORDER BY tb6.Name,  tb3.Name, tb2.Name, tb4.Name
GO 
SELECT
	tb1.EditOn, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name , tb1.Unit, tb4.Name, tb6.Name Matrix
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
JOIN CodeList.Product tb5 ON tb1.Product = tb5.ID
JOIN CodeList.MatrixDescription tb6 ON tb5.Matrix = tb6.Matrix and tb3.languageKey = 'en'
ORDER BY tb6.Name, tb2.Name, tb3.Name, tb4.Name
GO 
SELECT
	tb1.EditOn, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name , tb1.Unit, tb4.Name, tb6.Name Matrix
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
JOIN CodeList.Product tb5 ON tb1.Product = tb5.ID
JOIN CodeList.MatrixDescription tb6 ON tb5.Matrix = tb6.Matrix and tb3.languageKey = 'en'
ORDER BY tb2.Name, tb3.Name, tb4.Name
GO 
SELECT
	tb1.EditOn, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name , tb1.Unit, tb4.Name
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
ORDER BY tb2.Name, tb3.Name, tb4.Name
GO 
SELECT
	tb1.EditOn, tb1.Product, tb2.Name ProductName, tb1.Analyte,tb3.Name , tb1.Unit, tb4.Name
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
GO 
SELECT
	tb1.Analyte,tb1.EditOn, tb1.Product, tb2.Name ProductName,  tb1.Unit, tb3.Name 
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
GO 
SELECT
	tb1.Analyte,tb1.EditOn, tb1.Product, tb2.Name ProductName,  tb1.Unit, tb2.Name 
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
GO 
SELECT
	tb1.Analyte,tb1.EditOn, tb1.Product, tb1.Unit, tb2.Name
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and tb2.languageKey = 'en'
JOIN CodeList.AnalyteDescription tb3 ON tb1.Analyte = tb3.Analyte and tb3.languageKey = 'en'
JOIN CodeList.UnitDescription tb4 ON tb1.Unit = tb4.Unit and tb4.languageKey = 'en'
GO 
SELECT
	tb1.Analyte,tb1.EditOn, tb1.Product, tb1.Unit, tb2.Name
FROM CodeList.ValidAnalyteProduct tb1
JOIN CodeList.AnalyteDescription tb2 ON tb1.Analyte = tb2.Analyte and languageKey = 'en'
GO 
SELECT
	ID,Analyte,Detail,EditBy,EditOn,Product,Unit
FROM CodeList.ValidAnalyteProduct
GO 
SELECT 
	ID,Analyte,Detail,EditBy,EditOn,Lot
FROM CodeList.ValidAnalyteLot
GO 
SELECT
	ID,Code,ExpirationDate,NumLevel,CoLabel,Detail,EditBy,EditOn,Product
FROM CodeList.Lot
GO 
SELECT TOP 1000 
	ID,Code,ExpirationDate,NumLevel,CoLabel,Detail,EditBy,EditOn,Product
FROM CodeList.Lot
GO 
SELECT TOP 1000 
	ID,Analyte,Detail,EditBy,EditOn,Lot
FROM CodeList.ValidAnalyteLot
GO 
SELECT TOP 1000 
	ID,Analyte,Detail,EditBy,EditOn,Product,Unit
FROM CodeList.ValidAnalyteProduct
GO 
SELECT tb1.ID, tb1.Matrix, tb2.Name, tb3.Name as MatrixName
FROM CodeList.Product tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and languageKey = 'en'
JOIN CodeList.MatrixDescription tb3 ON tb1.Matrix = tb3.Matrix and tb3.languageKey = 'en'
GO 
SELECT tb1.ID, tb1.Matrix, tb2.Name, tb3.Name
FROM CodeList.Product tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and languageKey = 'en'
JOIN CodeList.MatrixDescription tb3 ON tb1.Matrix = tb3.Matrix and tb3.languageKey = 'en'
GO 
SELECT tb1.ID, tb1.Matrix, tb2.*
FROM CodeList.Product tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and languageKey = 'en'
JOIN CodeList.MatrixDescription tb3 ON tb1.Matrix = tb3.Matrix and tb3.languageKey = 'en'
GO 
SELECT tb1.ID, tb1.Matrix, tb2.*
FROM CodeList.Product tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product and languageKey = 'en'
GO 
SELECT tb1.ID, tb1.Matrix, tb2.*
FROM CodeList.Product tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product
GO 
SELECT tb1.*, tb2.*
FROM CodeList.Product tb1
JOIN CodeList.ProductDescription tb2 ON tb1.ID = tb2.Product
GO 
SELECT TOP 1000 
	ID,Code,Detail,EditBy,EditOn,LevelType,Manufacturer,Matrix,ProgramCode
FROM CodeList.Product