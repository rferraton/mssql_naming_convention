## Règles de bases de données

- **[Règles Globales](GlobalRules.md)** et


### CNDB1 : Convention de nommage des bases de données pour les typologies de données :

<br>
La version est intégrée dans le nom de la base de données afin de permettre la gestion des développements/recettes d'une version X+1 alors que la version X est en maintenance.
<br><br>
L'environnement de production n'aura pas de version mais les environnements non-productif, eux, pourraient en avoir besoin.
<br>
<br>


|	Typologie | Convention	|
| :---       |    :---   |
|	Applicatif | \<application>\[\_\_\<version>]	|
|	Audit Applicatif | \<application>\_audit\[\_\_\<version>]	|
|	Traces Techniques | \<application>\_trace\[\_\_\<version>]	|


Exemples :

|	Typologie | Exemple	| Commentaire |
|    :---   | :---        |	:-
|	Applicatif	|	gaia__v1_0	| GAIA v1.0 (dev/int/rec)  |
|	Applicatif	|	gaia__v2_2	| GAIA v2.2 (dev/int/rec) |
|	Audit Applicatif	|	gaia_audit__v1_0 	| Données d'audit des accès sensible de GAIA v1.0 environnement non productif |
|	Traces Techniques	|	gaia_trace__v2_2	| Traces technique sur la base GAIA  v2.2 environnement non productif |
|	Applicatif	|	gaia	| Environnement de Production de la Base applicative GAIA  |
|	Audit Applicatif	|	gaia_audit__v1_0	| Données d'audit des accès sensible de GAIA en production |
|	Traces Techniques	|	gaia_trace__v2_2	| Traces technique sur la base GAIA en Production |


