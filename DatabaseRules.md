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
|	Applicatif | \<application>	|
|	Audit Applicatif | \<application>\_audit|
|	Traces Techniques | \<application>\_trace	|


Exemples :

|	Typologie | Exemple	| Commentaire |
|    :---   | :---        |	:-
|	Applicatif	|	gaia	| GAIA  | Application GAIA |
|	Audit Applicatif	|	gaia_audit	| Données d'audit des accès sensible de GAIA |
|	Traces Techniques	|	gaia_trace	| Traces techniques sur la base GAIA  |


