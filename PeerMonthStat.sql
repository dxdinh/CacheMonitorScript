select a.ID LabmontstatId,a.ControlLevel ControlLevelId,c.lot,e.name ProductName,a.Mean MonMean,a.SD MonSD,a.CV MonCV,a.NumPts,a.Sumdata,a.SumSquareData,
a.Cumulatives_Mean CumMean,a.Cumulatives_SD CumSD ,a.Cumulatives_CV CumCV,a.Cumulatives_NumPts CumNumPts,a.Cumulatives_SumData,a.Cumulatives_SumSquareData,
g.Mean PeerMonMean,g.SD PeerMonSD,g.CV PeerMonCV,g.NumPts PeerMonNumPts,g.NumLabs PeerMonNumLabs,
g.Cumulatives_Mean PeerCumMean,g.Cumulatives_SD PeerCumSD,g.Cumulatives_CV PeerCumCV,g.Cumulatives_NumPts PeerCumNumPts,
    	g.Cumulatives_NumLabs PeerCumNumLabs,i.Mean MethGrpMonMean,i.SD MethGrpMonSD,i.CV MethGrpMonCV,
    	i.NumPts MethGrpMonNumPts,i.NumLabs MethGrpMonNumLabs,i.Cumulatives_Mean MethGrpCumMean,i.Cumulatives_SD MethGrpCumSD, 
    	i.Cumulatives_CV MethGrpCumCV,i.Cumulatives_NumPts MethGrpCumNumPts,i.Cumulatives_NumLabs MethGrpCumNumLabs,a.LabUnitConversion,a.Excluded,h.Name UnitName,f.instgroup
into :LabMonthStat,:ControlLevel,:Lot,:ProductName,:MonMean,:MonSD,:MonCV,:MonNumPts,:SumData,:SumSqData,
:CumMean,:CumSD,:CumCV,:CumNumPts,:CumSumData,:CumSumSqData,:pmMean,:pmSD,:pmCV,:pmNumPts,:pmNumLabs,
:pcMean,:pcSD,:pcCV,:pcNumPts,:pcNumLabs,:mgmMean,:mgmSD,:mgmCV,:mgmNumPts,:mgmNumLabs,
:mgcMean,:mgcSD,:mgcCV,:mgcNumPts,:mgcNumLabs,:LabUnitConversion,:Excluded,:UnitName,:InstGroup
from stats.labmonthstats a,codelist.controllevel c,codelist.Lot d,codelist.productdescription e,
Stats.peermonthstats f,Stats.SPMSSnapshot g,Codelist.UnitDescription h,Stats.SMGMSSnapshot i 
where a.labanalyzer->Lab = :LabId 
and a.datamonth = :DataMonth
and a.controllevel = c.ID 
and c.Lot = d.ID 
and d.Product = e.Product 
and a.LabUnit = h.Unit 
and h.LanguageKey = e.Languagekey 
and e.Languagekey = :LangId
and a.peermonthstats = f.Id 
and f.staticpeermonthstats = g.SPMS 
and f.staticMethodGroupMonthStats = i.SMGMS
and g.Snapshot = :SnapshotId
and i.Snapshot = :SnapshotId
