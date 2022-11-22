## Convention de nommage des tables et des vues :

- **[Règles Globales](GlobalRules.md)** et

### CNTV1 : Pattern de nommage des Tables t des Vues
\<prefixe\>\__\<racine_nom_table\>

### CNTV2 : Tables et Vues prefixes :

#### préfixes avec des tables ou des vues :  

| Type d'objet    |	Préfixe    |	Description |
| :---            |    :----  | :---        |
| Tables et Vues  |	ent          |	table ou vue de référence / entité |
| Tables et Vues  |	his          |	table ou vue d'historique sur une référence /entité |
| Tables et Vues  |	ano          |	table ou vue anomalies ou rejets  |
| Tables et Vues  |	rel          |	table ou vue de relations m-n |
| Tables et Vues  |	reh          |	table ou vue de relations historique |
| Tables et Vues  |	tra          |	table de transformation (YTD,12RM…) |
| Tables et Vues  |	ssc          |	tables ou vues de soubscription  |
| Tables et Vues  |	zzz          |	tables temporaires ou de travail |
| Tables et Vues  |	prm          |	tables ou vues de paramètres  |
| Tables et Vues  |	mta          |	tables ou vues de metadonnées  |
| Tables et Vues  |	not          |	tables ou vues de Logging, Notifications ou Traces |

Les préfixes sont parfois redondant avec le schéma mais il est possible que certaines vues soient créés pour faire des liens interschéma et le prefixe permettra de mieux comprendre

### CNTV3 : nommage des tables de liens
Les tables de liens devront être de la forme suivante :<br/>
Example: rel\__\<racine_nom_table1\>\__\<racine_nom_table1\>


### Exemples

|	Type            |	description de l'objet cible	                    |	exemple	                    |	Schéma	|
|	:---	        |	:---	                                            |	:---	                    |	:---    |
|	Tables et vues	|	Calendrier d'evènements	                            |	ent__calendrier	            |	met_evt |
|	Tables et vues	|	Table de tables élémentaires	                    |	ent__table_elementaire	    |	met_tem |
|	Tables et vues	|	Table de type de tables élémentaires	            |	ent__type_table_elementaire	|	met_tem |
|	Tables et vues	|	Table historique des tables élémentaires	        |	his__table_elementaire	    |	met_tem |
|	Tables et vues	|	journaux/Notifications des alertes	                |	not__alerte_controle_qualite|	tec_qua |
|	Tables et vues	|	journaux/Notifications des changements	            |	not__journal_changement	    |	tec_not |
|	Tables et vues	|	Metadata pour les nature d'infraction	            |	mta__natinf	                |	met_nin |
|	Tables et vues	|	table temporaire d'import de données élémentaires	|	zzz__table_elementaire	    |	tec_tmp |



