## Database Rules

- **[Global Rules](GlobalRules.md)** and

### DB1 : Naming convention for each layer:

|	Layer | Convention	|
| :---       |    :---   |
|	Raw Layer | RAW_<SoftwareName>_<systemShortName>_<discriminent(pays, BU, Company) if needed>	|
|	DWH Layer | DWH_<SoftwareName>_<systemShortName>_<discriminent(pays, BU, Company) if needed>	|
|	DMT Layer | DMT_<Business>_<Scope>	|
|	Referential Layer | REF_DATA	|
|	Business Unit Layer | BU_<Business>_<Scope>	|

Examples :

|	Layer | Sample	| Comment |
|    :---   | :---        |	:---  |		
|	Raw layer	|	RAW_SAP_SIGMA	| Raw copy of SAP SIGMA |
|	Raw layer	|	RAW_SAP_IBIS	| Raw copy of SAP SIGMA |
|	Raw layer	|	RAW_QAD_ABRASIVES	| Raw copy of QAD of Abrasives |
|	Raw layer	|	RAW_SALESFORCE_CPS	| Raw copy of Salesforce of CPS businesses |
|	Raw layer	|	RAW_MES_IN40RM	| Raw copy of MES IN4.0RM |
|	Raw layer	|	RAW_SCADA_ASPEN	| Raw copy of SCADA ASPEN |
|	Raw layer	|	RAW_FILE_GI_FR	| Raw layer for files used by Gypsum & Insulation France |
|	DWH Layer	|	DWH_SAP_SIGMA	| DWH for SAP SIGMA data |
|	DWH Layer| DWH_FILE_GI_FR	| DWH for files used by Gypsum & Insulation France  |
|	DWH Layer	|	DWH_CORP	| DWH for Nazaré project |
|	DMT Layer	|	DMT_PAYMENTTERMS	| DMT dedicated to payment terms |
|	DMT Layer	|	DMT_GI_FR	| DMT for Gypsum & Insulation France |
|	BU Layer	|	BU_ABRASIVES	| BU owned database for Abrasives |

### DB2  : Allowed & replacement characters
If source system objects use other characters, they should be replaced with the nearest allowed character

é &rarr; e

Space &rarr; _
