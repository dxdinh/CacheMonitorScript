select  'INSERT INTO CodeList.ReagentTranslation ([ReagentCode] ,[LanguageTag] ,[Name], [EditBy]) VALUES (' || Code || ', ''zh-cn'', ' || '''' || Name || ''', ''Import Script'')' from Codelist.Reagent
  JOIN Codelist.ReagentDescription ON Reagent.Code = ReagentDescription.Reagent and LanguageKey = 'zh-cn'

GO

  select  'INSERT INTO CodeList.Reagent ([Code] ,[Name], [EditBy]) VALUES (' || Code || ', ' || '''' || Name || ''', ''Import Script'')' from Codelist.Reagent
  JOIN Codelist.ReagentDescription ON Reagent.Code = ReagentDescription.Reagent and LanguageKey = 'en'
GO

  SELECT  'INSERT INTO CodeList.Analyte ([Code] ,[Name], [EditBy]) VALUES (' || Code || ', ' || '''' || Name || ''', ''Import Script'')' from Codelist.Analyte
  JOIN Codelist.AnalyteDescription ON Analyte.Code = AnalyteDescription.Analyte and LanguageKey = 'en'
GO

  SELECT  'INSERT INTO CodeList.Instrument ([Code] ,[Name], [EditBy]) VALUES (' || Code || ', ' || '''' || Name || ''', ''Import Script'')' from Codelist.Instrument
  JOIN Codelist.InstrumentDescription ON Instrument.Code = InstrumentDescription.Instrument and LanguageKey = 'en'
  GO
    SELECT  'INSERT INTO CodeList.Method ([Code] ,[Name], [EditBy]) VALUES (' || Code || ', ' || '''' || Name || ''', ''Import Script'')' from Codelist.Method
  JOIN Codelist.MethodDescription ON Method.Code = MethodDescription.Method and LanguageKey = 'en'
  GO
    select  'INSERT INTO CodeList.MethodTranslation ([MethodCode] ,[LanguageTag] ,[Name], [EditBy]) VALUES (' || Code || ', ''zh-cn'', ' || 'N''' || Name || ''', ''Import Script'')' from Codelist.Method
  JOIN Codelist.MethodDescription ON Method.Code = MethodDescription.Method and LanguageKey = 'zh-cn'
  GO

  select  'INSERT INTO CodeList.AnalyteTranslation ([AnalyteCode] ,[LanguageTag] ,[Name], [EditBy]) VALUES (' || Code || ', ''zh-cn'', ' || '''' || Name || ''', ''Import Script'')' from Codelist.Analyte
  JOIN Codelist.AnalyteDescription ON Analyte.Code = AnalyteDescription.Analyte and LanguageKey = 'zh-cn'
  GO

  SELECT  'INSERT INTO CodeList.InstrumentTranslation ([InstrumentCode] ,[LanguageTag] ,[Name], [EditBy]) VALUES (' || Code || ', ''zh-cn'', ' || '''' ||  REPLACE(NAME, '''', '''''')  || ''', ''Import Script'')' from Codelist.Instrument
  JOIN Codelist.InstrumentDescription ON Instrument.Code = InstrumentDescription.Instrument and LanguageKey = 'zh-cn'
  
GO
  select REPLACE(NAME, '''', '''''')  FROM  Codelist.InstrumentDescription  WHERE  Instrument = 2819 and LanguageKey = 'zh-cn'
  GO

  select  'INSERT INTO CodeList.AnalyteTranslation ([AnalyteCode] ,[LanguageTag] ,[Name], [EditBy]) VALUES (' || Code || ', ''zh-cn'', ' || 'N''' || Name || ''', ''Import Script'')' from Codelist.Analyte
  JOIN Codelist.AnalyteDescription ON Analyte.Code = AnalyteDescription.Analyte and LanguageKey = 'zh-cn'
GO

  SELECT  'INSERT INTO CodeList.Unit ([Code] ,[Name], [EditBy]) VALUES (' || Code || ', ' || 'N''' || Name || ''', ''Import Script'')' from Codelist.Unit
  JOIN Codelist.UnitDescription ON Unit.Code = UnitDescription.Unit and LanguageKey = 'en'

  GO
SELECT  'INSERT INTO CodeList.Matrix ([ID] ,[Name], [EditBy]) VALUES (' || Matrix || ', ' || 'N''' || Name || ''', ''Import Script'')' from Codelist.MatrixDescription
  WHERE LanguageKey = 'en'
GO
  select * from codelist.MatrixDescription where languageKey = 'en' order by name
GO
  