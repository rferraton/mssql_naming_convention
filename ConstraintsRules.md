## Règles de nommages des contraintes de base de données

- **[Règles Globales](GlobalRules.md)** et


### CNCS1 : Constraints prefixes
2 lettre en minuscules qui dépendent du type de contrainte.

Liste des types de contraintes :

Type de contrainte	|	Préfixe	|
:---	|	:---:	|	
Clef Primaire (Primary key)	|	pk	|	
Clef Etrangère (Foreign key)	|	fk	|	
Clef Unique (Unique key)	|	uk	|	
Contrainte de vérification (Check)	|	ck	|	
Contrainte de défault	|	df	|	
### CNCS2 : Patterns de nommage des contraintes suivant leur type

Type de Contrainte	|	Préfixe	|Pattern|		exemple	|
:---	|	:---:	|	:---	|:---	|
Clef Primaire (Primary key)	|	pk	|	pk__\<nom_de_la_table>	|pk__ent__type_table_elementaire	|
Clef Etrangère (Foreign key)	|	fk	|	fk__\<nom_de_la_table>\__\<nom_de_la_table_parente>[_role]	|fk__ent__table_elementaire__ent__type_table_elementaire	|
Clef Unique (Unique key)	|	uk	|	uk__\<nom_de_la_table>__\<description>	|uk__ent__table_elementaire__clef_fonctionnelle	|
Contrainte de vérification (Check)	|	ck	|	ck__\<nom_de_la_table\>__\<column\>[_xx]	|ck__ent__evenement__dt_evenement	|
Default	|	df	|	df__\<nom_de_la_table>__\<column\>	|df__ent__type_table_elementaire__meta_dt_maj	|




