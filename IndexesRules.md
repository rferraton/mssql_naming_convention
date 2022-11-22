## Règles des indexes

Les règles de nommages des indexes doivent respecter les **[Règles Globales](GlobalRules.md)** et les règles suivantes :

### CNI1 : préfixes et patterns des Indexes

|	Btree/Column Store	|	Unique/Non Unique	|	Cluster	|	Non-Cluster	|
|	:---	|	:---	|	:---	|	:---	|
|	Column Store	|	Non Unique	|	cc	|	cx	|
|	Btree (Classique)	|	Unique	|	uc__\<nomtable\>\[_xx\] ou [nom de contrainte](ConstraintsRules.md)(pk, uk)	|	ux__\<nomtable\>\[_xx] ou [nom de contrainte](ConstraintsRules.md) (pk,uk)	|
|	Btree (Classique)	|	Non Unique	|	ic__\<nomtable>__\<details>	| 	ix__\<nomtable>__\<details> ou [nom de contrainte](ConstraintsRules.md)(fk)	|
|	FullText	|	N/A	|	N/A	| 	it__\<domaine>__\<details> 	|
|	Geographique	|	N/A	|	N/A	| 	ig__\<nomtable>__\<details> 	|



Pour la partie **details** dans les index, les objectif d'un index peuvent être décrit par : 

- chargement
- recherche
- restitution
- extraction


## Exemples :
- uk__ent_table_elementaire__clef_fonctionnelle
- ix__ent_table_elementaire__extraction_meta__dt_maj
- ix__ent_natinf_recherche__ls__natinf
- ix__ent_natinf_extraction__meta__dt_maj
- if__natinf__recherche_multicriteres

