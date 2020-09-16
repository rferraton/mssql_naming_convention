DROP FUNCTION IF EXISTS adm.UDF_CHK_NamingTableAndView
GO

CREATE FUNCTION adm.UDF_CHK_NamingTableAndView ()
RETURNS TABLE
AS
RETURN
WITH 
     CorrectNamedObjects
AS (SELECT 
       so.id,
	   so.name
FROM sys.sysobjects so
        CROSS JOIN DBATOOLS.adm.A_CHK_NamingConventionElements DomainsList
        CROSS JOIN DBATOOLS.adm.A_CHK_NamingConventionElements PrefixList
    WHERE 
	DomainsList.ObjType='All' AND DomainsList.EltType='Domain' AND
	PrefixList.ObjType='TableAndView' AND PrefixList.EltType='Prefix' AND
	so.xtype IN ( 'U', 'V' ) AND
	so.name COLLATE Latin1_General_CS_AS LIKE PrefixList.EltValue + '\_' + DomainsList.EltValue + '\_%' ESCAPE '\'
	)
SELECT CASE so.xtype
           WHEN 'U' THEN
               'TABLE'
           WHEN 'V' THEN
               'VIEW'
       END ObjType, 
	   so.xtype,
	   so.id, 
	   SCHEMA_NAME(so.uid) SchName,
       so.name ObjName, 
	   CASE WHEN (cno.id IS NULL) THEN 'No' ELSE 'Yes' END NamingConventionRespect
FROM sys.sysobjects so
LEFT OUTER JOIN CorrectNamedObjects cno ON (cno.id = so.id)
WHERE so.xtype IN ( 'U', 'V' )
;