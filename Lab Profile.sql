SELECT 
   tb1.ID as SiteID, tb1.SiteName
   , tb2.Address1, tb2.Address2, tb2.City,  tb2.ZipCode
   , tb3.CountryCode,  tb3.CountryInitial, tb3.CountryName
   , tb4.*
   FROM  LabProfile.Site tb1
   JOIN LabProfile.Location tb2 ON tb1.SiteAddress = tb2.ID
   JOIN LabProfile.Country  tb3 ON tb2.Country  = tb3.ID
   JOIN LabProfile.Lab tb4      ON tb1.ID = tb4.Site
   JOIN LabProfile.LabAnalyzer tb5 ON tb4.ID = tb5.Lab

 GO
 
select * from labprofile.location
go
select * from LabProfile.Lab
go
select * from labprofile.site
GO
SELECT  	
   tb1.ID as SiteID, tb1.SiteName
   , SiteAddress->Address1, SiteAddress->Address2, SiteAddress->City, SiteAddress->State, SiteAddress->ZipCode
   , SiteAddress->Country->CountryCode
   , SiteAddress->Country->CountryInitial
   , SiteAddress->Country->CountryName   
   , LabProfile.Lab.CLientVersion
      
   FROM  LabProfile.Site tb1
   JOIN LabProfile.Lab ON tb1.ID = LabProfile.Lab.Site
   WHERE LabProfile.Lab.LabNo = 
   

GO



   
