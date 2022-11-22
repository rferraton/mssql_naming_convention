## Règles de bases de données

- **[Règles Globales](GlobalRules.md)** et


### CNDB1 : Convention de nommage des bases de données pour les typologies de données :

<br>
Les notion de version et d'environnement sont gérés via le provisionning des Pods.
<br>
<br>


|	Typologie | Convention	|
| :---       |    :---   |
|	Applicatif | \<application>	|
|	Audit Applicatif | \<application>\_audit|
|	Traces Techniques | \<application>\_trace	|


Exemples :

|	Typologie | Exemple	| Commentaire |
|    :---   | :---        |	:-
|	Applicatif	|	gaia	| GAIA  | Application GAIA |
|	Audit Applicatif	|	gaia_audit	| Données d'audit des accès sensible de GAIA |
|	Traces Techniques	|	gaia_trace	| Traces techniques sur la base GAIA  |


