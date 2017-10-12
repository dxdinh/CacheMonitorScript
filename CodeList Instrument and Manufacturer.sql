SELECT tb3.Name AS Manufacturer, tb2.Name
FROM Report.ManufactInstrument tb1
JOIN Codelist.InstrumentDescription tb2 ON  tb1.Instrument = tb2.Instrument AND tb2.LanguageKey = 'en'
JOIN Report.Manufacturer tb3 ON tb1.Manufacturer = tb3.Id
ORDER BY tb3.Name, tb2.Name

GO
SELECT DISTINCT tb3.Name AS Manufacturer
FROM Report.ManufactInstrument tb1
JOIN Codelist.InstrumentDescription tb2 ON  tb1.Instrument = tb2.Instrument AND tb2.LanguageKey = 'en'
JOIN Report.Manufacturer tb3 ON tb1.Manufacturer = tb3.Id ORDER BY tb3.Name 
GO
SELECT DISTINCT tb1.Id
FROM Report.Manufacturer tb1 

WHERE ID NOT IN (SELECT DISTINCT Manufacturer FROM Report.ManufactInstrument )


GO

SELECT * FROM Report.Manufacturer 
GO

select CodeList.InstrumentDescription.Instrument Code, 
				LanguageKey, REPLACE(Name,'µ','u') Name, 
				REPLACE(ISNULL(CodeList.Instrument_Flag.Flag,''), 'V','') Flag, 
				IFNULL(EditOn,'',EditOn) EditOn 
				from CodeList.InstrumentDescription 
				full outer join CodeList.Instrument_Flag 
					on (CodeList.InstrumentDescription.Instrument = CodeList.Instrument_Flag.Instrument)  
				where LanguageKey = 'en'
				and CodeList.InstrumentDescription.Instrument not in 
					(select Instrument from CodeList.Instrument_Flag where Flag = 'Y' and Instrument in 
					(select Instrument from CodeList.Instrument_Flag where Flag = 'K' or Flag = 'V')) 
				order by CodeList.InstrumentDescription.Name
GO				

select * from codelist.InstrumentflagList
GO

SELECT * FROM CodeList.MethodGuide
GO
SELECT DISTINCT tb1.Instrument, tb2.Name FROM CodeList.MethodGuide tb1 
  JOIN CodeList.InstrumentDescription tb2 ON tb1.Instrument = tb2.Instrument AND languageKey = 'en'
  ORDER BY tb2.Name
GO
SELECT DISTINCT tb1.Reagent, tb2.Name FROM CodeList.MethodGuide tb1 
  JOIN CodeList.ReagentDescription tb2 ON tb1.Reagent = tb2.Reagent AND languageKey = 'en'
  ORDER BY tb2.Name
GO  
SELECT DISTINCT tb1.Instrument, tb2.Name FROM CodeList.MethodGuide tb1 
  JOIN CodeList.InstrumentDescription tb2 ON tb1.Instrument = tb2.Instrument AND languageKey = 'en'
  WHERE tb1.Instrument NOT IN (SELECT DISTINCT Instrument FROM Report.ManufactInstrument)  
  ORDER BY tb2.Name

GO

SELECT 
	DISTINCT GroupInstrument, tb3.Name GroupInstrumentName, tb1.Instrument, tb2.Name Instrument
FROM CodeList.Tiering tb1 
JOIN CodeList.InstrumentDescription tb2 ON tb1.Instrument = tb2.Instrument AND tb2.languageKey = 'en'
JOIN CodeList.InstrumentDescription tb3 ON tb1.GroupInstrument = tb3.Instrument AND tb3.languageKey = 'en'
ORDER BY tb3.Name, tb2.Name
GO





