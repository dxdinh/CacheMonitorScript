
select tb1.Flag, Description, count(*)  from Codelist.Analyte_Flag tb1
	JOIN Codelist.AnalyteFlagList tb2 On tb1.Flag = tb2.Flag
group by tb1.Flag
GO

select tb1.Flag, Description AS FlagDescription , tb3.Name AS AnalyteName from Codelist.Analyte_Flag tb1
	JOIN Codelist.AnalyteFlagList tb2 On tb1.Flag = tb2.Flag
	JOIN Codelist.AnalyteDescription tb3 On tb1.Analyte = tb3.Analyte and tb3.LanguageKey = 'en' where tb1.Flag <> 'Y'

GO


select tb1.Flag, Description, count(*) from Codelist.Instrument_Flag tb1
	JOIN Codelist.InstrumentFlagList tb2 On tb1.Flag = tb2.Flag
group by tb1.Flag
GO
	select tb1.Flag, Description AS FlagDescription , tb3.Name AS InstrumentName from Codelist.Instrument_Flag tb1
	JOIN Codelist.InstrumentFlagList tb2 On tb1.Flag = tb2.Flag
	JOIN Codelist.InstrumentDescription tb3 On tb1.Instrument = tb3.Instrument and tb3.LanguageKey = 'en' where tb1.Flag <> 'Y'
	ORDER BY Flag

	
GO	


select tb1.Flag, Description, count(*) from Codelist.Reagent_Flag tb1
	JOIN Codelist.ReagentFlagList tb2 On tb1.Flag = tb2.Flag
group by tb1.Flag
GO
	select tb1.Flag, Description AS FlagDescription , tb3.Name AS ReagentName from Codelist.Reagent_Flag tb1
	JOIN Codelist.ReagentFlagList tb2 On tb1.Flag = tb2.Flag
	JOIN Codelist.ReagentDescription tb3 On tb1.Reagent = tb3.Reagent and tb3.LanguageKey = 'en' where tb1.Flag <> 'Y'

GO
select tb1.Flag, Description, count(*) from Codelist.Method_Flag tb1
	JOIN Codelist.MethodFlagList tb2 On tb1.Flag = tb2.Flag
group by tb1.Flag
GO 
select tb1.Flag, Description AS FlagDescription , tb3.Name AS MethodName from Codelist.Method_Flag tb1
	JOIN Codelist.MethodFlagList tb2 On tb1.Flag = tb2.Flag
	JOIN Codelist.MethodDescription tb3 On tb1.Method = tb3.Method and tb3.LanguageKey = 'en' where tb1.Flag <> 'Y'






GO
select tb1.Flag, Description, count(*) from Codelist.Unit_Flag tb1
	JOIN Codelist.UnitFlagList tb2 On tb1.Flag = tb2.Flag
group by tb1.Flag ORDER BY FLag
GO

	select tb1.Flag, Description AS FlagDescription , tb3.Name AS UnitName from Codelist.Unit_Flag tb1
	JOIN Codelist.UnitFlagList tb2 On tb1.Flag = tb2.Flag
	JOIN Codelist.UnitDescription tb3 On tb1.Unit = tb3.Unit and tb3.LanguageKey = 'en' ORDER BY FLag

GO	


select * from codelist.MatrixDescription where languageKey = 'en' order by name


