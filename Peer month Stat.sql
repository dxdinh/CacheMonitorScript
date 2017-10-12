SELECT TOP 1000 
	ID,BatchNum,DataMonth,Timestamp
FROM Stats.Snapshot 
ORDER BY DataMonth DESC


where datamonth = 448
GO

select * from labProfile.lab where labNo = '979642'

GO
SELECT SUM(a.NumPts), SUM(g.NumPts) from stats.labmonthstats a, Stats.SPMSSnapshot g
WHERE a.datamonth = 448 and g.Snapshot = 370

GO

select a.ID LabmontstatId,a.ControlLevel ControlLevelId,c.lot,e.name ProductName,a.Mean MonMean,a.SD MonSD,a.CV MonCV,a.NumPts,a.Sumdata,a.SumSquareData,
a.Cumulatives_Mean CumMean,a.Cumulatives_SD CumSD ,a.Cumulatives_CV CumCV,a.Cumulatives_NumPts CumNumPts,a.Cumulatives_SumData,a.Cumulatives_SumSquareData,
g.Mean PeerMonMean,g.SD PeerMonSD,g.CV PeerMonCV,g.NumPts PeerMonNumPts,g.NumLabs PeerMonNumLabs,
g.Cumulatives_Mean PeerCumMean,g.Cumulatives_SD PeerCumSD,g.Cumulatives_CV PeerCumCV,g.Cumulatives_NumPts PeerCumNumPts,
    	g.Cumulatives_NumLabs PeerCumNumLabs,i.Mean MethGrpMonMean,i.SD MethGrpMonSD,i.CV MethGrpMonCV,
    	i.NumPts MethGrpMonNumPts,i.NumLabs MethGrpMonNumLabs,i.Cumulatives_Mean MethGrpCumMean,i.Cumulatives_SD MethGrpCumSD, 
    	i.Cumulatives_CV MethGrpCumCV,i.Cumulatives_NumPts MethGrpCumNumPts,i.Cumulatives_NumLabs MethGrpCumNumLabs,a.LabUnitConversion,a.Excluded,h.Name UnitName,f.instgroup
from stats.labmonthstats a
,codelist.controllevel c
,codelist.Lot d
,codelist.productdescription e,
Stats.peermonthstats f
,Stats.SPMSSnapshot g
,Codelist.UnitDescription h
,Stats.SMGMSSnapshot i 
where a.labanalyzer->Lab = '101484||69648'
and a.datamonth = 448
and a.controllevel = c.ID 
and c.Lot = d.ID 
and d.Product = e.Product 
and a.LabUnit = h.Unit 
and h.LanguageKey = e.Languagekey 
and e.Languagekey = 'en'
and a.peermonthstats = f.Id 
and f.staticpeermonthstats = g.SPMS 
and f.staticMethodGroupMonthStats = i.SMGMS
and g.Snapshot = 370
and i.Snapshot = 370

GO
select JSON_OBJECT ('Analyte': Analyte , 'name_' || languageKey : Name) from codelist.AnalyteDescription where name like '%mi%' order by name
GO
select JSON_OBJECT ('MethodCode': Method , 'name_' || languageKey : Name) from codelist.methodDescription where Method = 43 and languagekey = 'en'
GO
select JSON_OBJECT ('InstrumentCode': Method , 'name_' || languageKey : Name) from codelist.instrumentDescription where Method = 43 and languagekey = 'en'
GO
select JSON_OBJECT ('InstrumentCode': Instrument , 'name_' || languageKey : Name) from codelist.instrumentDescription where name like 'Roche cobas%'
GO
select JSON_OBJECT ('Reagent': Reagent , 'name_' || languageKey : Name) from codelist.ReagentDescription where name like '%dedicated%' and languageKey = 'en'
GO

select JSON_OBJECT ('unit': unit , 'name_' || languageKey : Name) from codelist.UnitDescription where name like '%mg/L%' and languageKey = 'en'

select * from codelist.tiering where analyte = 106

go
select * from codelist.instrumentDescription where languageKey = 'en' and name like '%dimension%'
go

select * from codelist.instrument where ID = 940





