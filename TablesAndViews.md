## Tables and Views naming conventions :

### TV1 : No prefix for object type
T_ or V_ are not allowed for object type designation. reporting tools sometimes use tables and sometimes use views (sometimes both), it is usefull to be able to switch from a table to a view. An object type prefix would dissallow this kind of switch.

### TV2 : Tables and Views prefixes :

| Object Type       |	Prefix      |	Description |
| :---              |    :----:   | ---:        |
| Tables and Views  |	F_          |	Fact tables or views|
| Tables and Views  |	D_          |	Dimension / referential tables or views |
| Tables and Views  |	A_          |	Anomalies or Rejects tables or views |
| Tables and Views  |	L_          |	Links tables or views |
| Tables and Views  |	T_          |	Transformation tables (YTD,12RM…) or views |
| Tables and Views  |	S_          |	Subscriptions tables or views |
| Tables and Views  |	Z_          |	Temp or work tables |
| Tables and Views  |	P_          |	Parameters tables or views |
| Tables and Views  |	M_          |	Metadata tables or views |
| Tables and Views  |	N_          |	Logging, Notifications, Traces tables or views |

### TV3 : Integrate hierarchy information after the prefix
<TV Prefix><Hierarchy Pattern><Data Store Entity Name>

### TV4 : Hierarchies Patterns List :

HierachyType	|	HierarchyPattern	|	Meaning	|
:---	|	:---:	|	:---	|
Master Data	|	TIM	|	Time / Calendar	|
Master Data	|	TIF	|	Time / Fiscal	|
Master Data	|	CUS	|	Customer or Client	|
Master Data	|	PRO	|	Product	|
Master Data	|	ORG	|	Organization	|
Master Data	|	GEO	|	Geographical	|
Master Data	|	FIN	|	Financial	|
Master Data	|	SUP	|	Supplier	|
Master Data	|	HUM	|	Human Ressources	|
|	|		|		|
Fact Data	|	FIN	|	Finance	|
Fact Data	|	SAL	|	Sales	|
Fact Data	|	INV	|	Inventory	|
Fact Data	|	ACT	|	Activity	|
Fact Data	|	MAN	|	Manufacturing	|
Fact Data	|	PUR	|	Purchasing	|
Fact Data	|	HUM	|	Human Ressources	|
Fact Data	|	PRO	|	Product	|

### TV5 : Cross tables names
should be named by concatenating the names of the tables that have a one to many relationships with the junction table.<br/>
Example: L\_\<HiercharchyPattern_Table1\>\_\<TableName1\>\_\<TableName2\>


<br/>

__Samples__

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
|	Tables and Views	|	Table or view with dimensionnal data relative to Product	|	D_PRO_Product	|	Level Product	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Product	|	D_PRO_ProductGroup	|	Level Product Group	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Product	|	D_PRO_ProductSubGroup	|	Level Product Sub-Group	|
|	Tables and Views	|	Table or view with dimensionnal data relative to Product	|	D_PRO_ProductType	|	Level Product Type	|
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
|	Tables and Views	|	Link table linking Product and Supplier	|	L_PRO_Product_Supplier	|		|
|	Tables and Views	|	Link table linking Employee and Manager	|	L_HUM_Employee_Manager	|		|
|	Tables and Views	|	Anomaly table for dimension product	|	A_D_PRO_Product	|	Level Product	|
|	Tables and Views	|	Anamaly table for fact financial COPA	|	A_F_FIN_COPA	|		|
|	Tables and Views	|	Anamaly table for fact Sales Invoices	|	A_F_SAL_Invoice	|		|
|	Tables and Views	|	Anamaly table for fact Sales Delivery	|	A_F_SAL_Delivery	|		|
|		|		|		|		|
|	Tables and Views	|	Logging table for schedules	|	N_LOG_Schedule	|		|
|	Tables and Views	|	Logging table for alerts	|	N_LOG_Alert	|		|
|	Tables and Views	|	Logging table for changes	|	N_LOG_Change	|		|
|		|		|		|		|
|	Tables and Views	|	Metadata table for Product	|	M_PRO_PRODUCT	|	Meta informations regarding product	|
|		|		|		|		|
|	Tables and Views	|	Temporary table relative to product	|	Z_PRO_PRODUCT1	|		|



