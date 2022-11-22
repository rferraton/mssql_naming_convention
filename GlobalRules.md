## Règles Globales

### CNG1 : caractères autorisés

| Syntaxe      | Description | 
| :---        |    :----   |
|[a-z][0-9]_  | Caractères alphanumeriques  (a à z et 0 à 9) et _ seulement. Pas d'accent. Pas de majuscule. |

### CNG2 : Casse
Toutes les objets en base de données doivent être nommée en **[snake_case](https://en.wikipedia.org/wiki/Snake_case)**

| Exemple      | Description | 
| :---     |    :----   |
|table_elementaire_id| Identifiant de la table élémentaire|
|d_type_table_elementaire| Table des types de tables élémentaires|

### CNG3 : Préfixes
Les préfixes sont en minuscule <b> et suivi d'un **double underscore** "__" </b>

### CNG4 : utilisation du singulier pour les objets
par exemple : utiliser element et pas elements

### CNG5 : Pas de nombre sur le premier caractère du nom de l'objet
par exemple interdiction pour *0_code*

### CNG6 : Eviter les mots réservés dans le SGBDR 
Pour le nommage des objets (colonnes, tables, vues....) éviter les mots réservés 

[mssql mots réservés](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/reserved-keywords-transact-sql?view=sql-server-ver15)

[pgsql mot réservés](https://www.postgresql.org/docs/current/sql-keywords-appendix.html)

Par exemple éviter de nommer une colonne ***date*** et préférer ***date_reference***

### CNG7 : Utiliser le Français
Tous les objets doivent être nommés en **Français**
*cree_par* et pas *created_by*
Cela s'applique au noms des objets et au commentaire dans le code. Les exceptions peuvent être le nommage de certains objets entrées dans le langage standard d'un domaine (exemple pk_ pour clef primaire plutôt que cp_) 

### CNG8 : Limiter le nombre de caractères
Le nom doit être aussi concit que possible tout en respectant toutes les règles de nommages.
