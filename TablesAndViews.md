## Convention de nommage des tables et des vues :

- **[Règles Globales](GlobalRules.md)** et

### CNTV1 : Pattern de nommage des Tables t des Vues
\<prefixe\>\__\<detail\>

### CNTV2 : Tables et Vues prefixes :

#### préfixes avec des tables ou des vues :  

| Type d'objet    |	Préfixe    |	Description |
| :---            |    :----:  | :---        |
| Tables et Vues  |	d          |	table ou vue de dimension / référence |
| Tables et Vues  |	h          |	table ou vue d'historique |
| Tables et Vues  |	a          |	table ou vue anomalies ou rejets  |
| Tables et Vues  |	l          |	table ou vue de liens m-n |
| Tables et Vues  |	t          |	table de transformation (YTD,12RM…) |
| Tables et Vues  |	s          |	tables ou vues de soubscription  |
| Tables et Vues  |	z          |	tables temporaires ou de travail |
| Tables et Vues  |	p          |	tables ou vues de paramètres  |
| Tables et Vues  |	m          |	tables ou vues de metadonnées  |
| Tables et Vues  |	n          |	tables ou vues de Logging, Notifications ou Traces |



### CNTV3 : nommage des tables de liens
Les tables de liens devront être de la forme suivante :<br/>
Example: l\__\<nomtable1\>\__\<nomtable2\>


### Exemples

|	Object Type	|	Target Area	|	Sample	|	Comment	|
|	:---	|	:---	|	:---	|	:---	|
|	Tables et vues	|	Calendrier d'evènements	|	d_calendrier	|	calendrier	|
|	Tables et vues	|	Table or view with dimensionnal data relative to Time	|	d_	|	Level Month (YYYYMM)	|
|	Tables et vues	|	Table or view with dimensionnal data relative to Time	|	D_TIM_Year	|	Level Year (YYYY)	|
|		|		|		|		|
|	Tables et vues	|	Link table linking Product and Supplier	|	L_MAT_Material_Supplier	|		|
|	Tables et vues	|	Link table linking Employee and Manager	|	L_HUM_Employee_Manager	|		|
|	Tables et vues	|	Anomaly table for dimension product	|	A_D_PRO_Product	|	Level Product	|
|	Tables et vues	|	Anomaly table for fact financial COPA	|	A_F_FIN_COPA	|		|
|	Tables et vues	|	Anomaly table for fact Sales Invoices	|	A_F_SAL_Invoice	|		|
|	Tables et vues	|	Anomaly table for fact Sales Delivery	|	A_F_SAL_Delivery	|		|
|		|		|		|		|
|	Tables et vues	|	Logging table for schedules	|	N_LOG_Schedule	|		|
|	Tables et vues	|	Logging table for alerts	|	N_LOG_Alert	|		|
|	Tables et vues	|	Logging table for changes	|	N_LOG_Change	|		|
|		|		|		|		|
|	Tables et vues	|	Metadata table for Product	|	M_MAT_Material	|	Meta informations regarding product	|
|		|		|		|		|
|	Tables et vues	|	Temporary table relative to product	|	Z_MAT_Material	|		|



