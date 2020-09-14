## Tables and Views naming conventions :

- **[Global Rules](GlobalRules.md)** and

### TV1 : Tables and Views naming parts
\<PREFIX\>\_\<DOMAIN\>\_\<Detail\>


### TV2 : Tables and Views prefixes :

| Object Type       |	Prefix     |	Description |
| :---              | :----:     | ---:        |
| Tables and Views  |	F          |	Fact tables or views|
| Tables and Views  |	D          |	Dimension / referential tables or views |
| Tables and Views  |	A          |	Anomalies or Rejects tables or views |
| Tables and Views  |	L          |	Links tables or views |
| Tables and Views  |	T          |	Transformation tables (YTD,12RM…) or views |
| Tables and Views  |	S          |	Subscriptions tables or views |
| Tables and Views  |	Z          |	Temp or work tables |
| Tables and Views  |	P          |	Parameters tables or views |
| Tables and Views  |	M          |	Metadata tables or views |
| Tables and Views  |	N          |	Logging, Notifications, Traces tables or views |

NB : T_ or V_ are not allowed for object type (Table or View) designation. reporting tools sometimes use tables and sometimes use views (sometimes both), it is usefull to be able to switch from a table to a view. An object type prefix would dissallow this kind of switch.


### TV3 : DOMAIN - Hierarchies Patterns List :

| Domain TriGram	|	Meaning		|
| :---:			|	:---		|
| TIM			|	Time / Calendar	|
| TIF			|	Time / Fiscal	|
| CUS			|	Customer or Client	|
| MAT			|	Material & Product	|
| ORG			|	Organization	|
| GEO			|	Geographical	|
| FIN			|	Financial	|
| SUP			|	Supplier	|
| HUM			|	Human Ressources	|
| SAL			|	Sales		|
| INV			|	Inventory and Stock |
| ACT			|	Activity	|
| MAN			|	Manufacturing	|
| PUR			|	Purchasing	|
| PRO			|	Production	|
| MKT 			| 	Marketing 	|
| IOT 			| 	IOT 		|


  

### TV4 : Cross tables names
should be named by concatenating the names of the tables that have a one to many relationships with the junction table.<br/>
Example: L\_\<DOMAIN_Table1\>\_\<TableName1\>\_\<TableName2\>


### Samples

|	Object Type	|	Target Area	|	Sample	|	Comment	|
|	:---	|	:---	|	:---	|	:---	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Time	|	D_TIM_Calendar	|	Level Calendar (date)	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Time	|	D_TIM_Month	|	Level Month (YYYYMM)	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Time	|	D_TIM_Year	|	Level Year (YYYY)	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Time	|	D_TIM_Week	|	Level Week (YYYYWW)	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Time Fiscal	|	D_TIF_Month	|	Level Fiscal Month	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Time Fiscal	|	D_TIF_Year	|	Level Fiscal Year	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Customer	|	D_CUS_Customer	|	Level Customer	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Customer	|	D_CUS_CustomerGroup	|	Level Customer Group	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Customer	|	D_CUS_CustomerSubGroup	|	Level Customer Sub-Group	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Customer	|	D_CUS_CustomerType	|	Level Customer Type	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Material	|	D_MAT_Material	|	Level Material	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Material	|	D_MAT_MaterialGroup	|	Level Material Group	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Material	|	D_MAT_MaterialSubGroup	|	Level Material Sub-Group	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Material	|	D_MAT_MaterialType	|	Level Material Type	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Organization	|	D_ORG_Organization	|	Level Organization	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Geography	|	D_GEO_Country	|	Level Country	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Geography	|	D_GEO_Area	|	Level Area	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Finance	|	D_FIN_Account	|	Level Account	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Supplier	|	D_SUP_Supplier	|	Level Supplier	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Supplier	|	D_SUP_SupplierGroup	|		|
|	Tables and Views	|	Table or view with dimensionnal data relative to HR	|	D_HUM_Employee	|	Level Employee	|
|	Tables and Views	|	Table or view with dimensionnal data relative to HR	|	D_HUM_Company	|	Level Company	|
|	Tables and Views	|	Table or view with transactionnal data relative to Finance	|	F_FIN_COPA	|	Level COPA	|
|	Tables and Views	|	Table or view with transactionnal data relative to Finance	|	F_FIN_Invoice	|	Level Invoice	|
|	Tables and Views	|	Table or view with transactionnal data relative to Sales	|	F_SAL_Order	|	Level Order	|
|	Tables and Views	|	Table or view with transactionnal data relative to Sales	|	F_SAL_Invoice	|	Level Invoice	|
|	Tables and Views	|	Table or view with transactionnal data relative to Manufacturing	|	F_MAN_Yield	|	Level Yield	|
|	Tables and Views	|	Table or view with transactionnal data relative to Purchase	|	F_PUR_Invoice	|	Level Invoice	|
|	Tables and Views	|	Table or view with transactionnal data relative to Finance	|	F_FIN_Invoice	|	Level Invoice	|
|	Tables and Views	|	Table or view with transactionnal data relative to Inventory	|	F_INV_Backlog	|	Level Backlog	|
|	Tables and Views	|	Table or view with transactionnal data relative to Sales	|	F_SAL_Delivery	|	Level Delivery	|
|	Tables and Views	|	Transformation table for Year To Date cumulative calculation	|	T_TIM_YTD_Month	|	Level Month (YYYYMM)	|
|	Tables and Views	|	Transformation table for Year To Date cumulative calculation	|	T_TIM_YTD_Day	|	Level Date	|
|	Tables and Views	|	Transformation table for Year To Fiscal Date cumulative calculation	|	T_TIF_YTD_Month	|	Level Month (YYYYMM)	|
|		|		|		|		|
|	Tables and Views	|	Link table linking Product and Supplier	|	L_MAT_Material_Supplier	|		|
|	Tables and Views	|	Link table linking Employee and Manager	|	L_HUM_Employee_Manager	|		|
|	Tables and Views	|	Anomaly table for dimension product	|	A_D_PRO_Product	|	Level Product	|
|	Tables and Views	|	Anomaly table for fact financial COPA	|	A_F_FIN_COPA	|		|
|	Tables and Views	|	Anomaly table for fact Sales Invoices	|	A_F_SAL_Invoice	|		|
|	Tables and Views	|	Anomaly table for fact Sales Delivery	|	A_F_SAL_Delivery	|		|
|		|		|		|		|
|	Tables and Views	|	Logging table for schedules	|	N_LOG_Schedule	|		|
|	Tables and Views	|	Logging table for alerts	|	N_LOG_Alert	|		|
|	Tables and Views	|	Logging table for changes	|	N_LOG_Change	|		|
|		|		|		|		|
|	Tables and Views	|	Metadata table for Product	|	M_MAT_Material	|	Meta informations regarding product	|
|		|		|		|		|
|	Tables and Views	|	Temporary table relative to product	|	Z_MAT_Material	|		|



