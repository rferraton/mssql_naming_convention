DROP FUNCTION IF EXISTS adm.UDF_CHK_NamingAll
GO

CREATE FUNCTION adm.UDF_CHK_NamingAll ()
RETURNS TABLE
AS
RETURN
SELECT * from adm.UDF_CHK_NamingFunction()
UNION ALL
SELECT * from adm.UDF_CHK_NamingProcedure()
UNION ALL
SELECT * from adm.UDF_CHK_NamingTableAndView()
;

-- Usage
-- SELECT * FROM adm.UDF_CHK_NamingAll ()

