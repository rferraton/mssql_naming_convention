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
Clef Primaire (Primary key)	|	pk	|	\<prefixe\>\_\_\<nom_de_la_table\>	|pk__d_type_table_elementaire	|
Clef Etrangère (Foreign key)	|	fk	|	\<prefixe\>\_\_\<nom_de_la_table\>\_\_\<nom_de_la_table_parente\>	|fk__d_table_elementaire__d_type_table_elementaire	|
Clef Unique (Unique key)	|	uk	|	\<prefixe\>\_\_\<nom_de_la_table\>\_\_\<description\>	|uk__d_table_elementaire__code_mnemonique	|
Contrainte de vérification (Check)	|	ck	|	\<prefixe\>\_\_\<nom_de_la_table\>\_\_\<column\>	|ck__d_type_table_elementaire__date_maj	|
Default	|	df	|	\<prefixe\>\_\_\<nom_de_la_table\>\__\<column\>	|df__d_type_table_elementaire__date_maj	|




