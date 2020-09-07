## Database Rules

### DB1 : Database naming regarding target area

Databases samples :

|	Object Type	|	Target Area	|	Sample	|
| :---       |    :---   | :---        |				
|	database	|	SLT from SAP	|	SAP_SIGMA	|
|	database	|	SLT from SAP	|	SAP_AGILE	|
|	database	|	SLT from SAP	|	SAP_FBCIS	|
|	database	|	ODS from CRM	|	CRM_AUREA	|
|	database	|	DWH from AUREA	|	DWH_AUREA	|
|	database	|	DWH from SIGMA	|	DWH_SIGMA	|
|	database	|	DWH from AGILE	|	DWH_AGILE	|
|	database	|	DWH from FBCIS	|	DWH_FBCIS	|
|	database	|	DWH from severals sources	|	DWH_AGG_CPS	|

### DB2  : Allowed & replacement characters
If source system objects use other characters, they should be replaced with the nearest allowed character

é &rarr; e

Space &rarr; _
