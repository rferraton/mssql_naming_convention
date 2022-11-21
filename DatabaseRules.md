## Règles de bases de données

- **[Règles Globales](GlobalRules.md)** et


### CNDB1 : Convention de nommage des bases de données pour les typologies de données :

|	Typologie | Convention	|
| :---       |    :---   |
|	Applicatif | \<application>\_\<environnement>[_\<version>]	|
|	Audit Applicatif | \<application>\_audit_\<environnement>[_\<version>]	|
|	Traces Techniques | \<application>\_trace_\<environnement>[_\<version>]	|


Exemples :

|	Typologie | Exemple	| Commentaire |
|    :---   | :---        |	:---  |		
|	Applicatif	|	gaia_dev	| Environnement de Développement de la Base applicative GAIA  |
|	Applicatif	|	gaia_rec	| Environnement de Recette de la Base applicative GAIA  |
|	Applicatif	|	gaia_prd	| Environnement de Production de la Base applicative GAIA  |
|	Audit Applicatif	|	gaia_audit_prd	| Données d'audit des accès sensible de GAIA en production |
|	Traces Techniques	|	gaia_trace_prd	| Traces technique sur la base GAIA en Production |


