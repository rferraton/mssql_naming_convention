WITH 
     CorrectNamedObjects
AS (SELECT 
		so.name
FROM sys.sysobjects so
	CROSS JOIN DBATOOLS.adm.A_CHK_NamingConventionElements DomainsList
	CROSS JOIN DBATOOLS.adm.A_CHK_NamingConventionElements PrefixList
	CROSS JOIN DBATOOLS.adm.A_CHK_NamingConventionElements ProcTypeList
    WHERE 
	DomainsList.ObjType='All' AND DomainsList.EltType='Domain' AND
	PrefixList.ObjType='TableAndView' AND PrefixList.EltType='Prefix' AND
	ProcTypeList.ObjType='Function' AND PrefixList.EltType='Type' AND
	so.xtype IN ( 'FS','FT','AF' ) AND
	so.name COLLATE Latin1_General_CS_AS LIKE PrefixList.EltValue + '\_' + DomainsList.EltValue + '\_'+ ProcTypeList.EltValue+'%' ESCAPE '\'
	)
SELECT 'FUNCTION' ObjType,so.xtype,
       so.name ObjName
FROM sys.sysobjects so
WHERE so.xtype IN ( 'FS','FT','AF' )
AND NOT EXISTS
(
    SELECT 1 FROM CorrectNamedObjects cno WHERE cno.name = so.name
);