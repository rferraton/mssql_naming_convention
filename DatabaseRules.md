## Database Rules

- **[Global Rules](GlobalRules.md)** and

### DB1 : Database naming regarding target area

Databases samples :

|	Object Type	|	Target Area	|	Sample	|
| :---       |    :---   | :---        |				
|	database	|	SLT from SAP	|	__SAP__\_SIGMA	|
|	database	|	SLT from SAP	|	__SAP__\_AGILE	|
|	database	|	SLT from SAP	|	__SAP__\_FBCIS	|
|	database	|	Other Sources for DWH SIGMA	|	__RAW__\_SIGMA	|
|	database	|	Other Sources for DWH AGILE	|	__RAW__\_AGILE	|
|	database	|	ODS from CRM	|	__CRM__\_AUREA	|
|	database	|	DWH from AUREA	|	__DWH__\_AUREA	|
|	database	|	DWH from SIGMA	|	__DWH__\_SIGMA	|
|	database	|	DWH from AGILE	|	__DWH__\_AGILE	|
|	database	|	DWH from FBCIS	|__DWH__\_FBCIS	|
|	database	|	DWH from severals sources	|	__DWH\_AGG__\_CPS	|

### DB2  : Allowed & replacement characters
If source system objects use other characters, they should be replaced with the nearest allowed character

é &rarr; e

Space &rarr; _
