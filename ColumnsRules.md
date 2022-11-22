## Convention de nommage des colonnes

Les règles de nommages des colonnes doivent respecter les **[Règles Globales](GlobalRules.md)** et

### CNC1 : Colonne de clef technique (si existante)
syntaxe de nommage :
<br/>
**id__\<racine_nom_table\>**

|colonne                 | description                                                                  | commentaire           |
|:--                     |:--                                                                           |:---                   |
|id__table_elementaire   | identifiant technique de la table "ent__table_elementaire"                   |                       |
|id__natinf              | identifiant technique de la table "ent__natinf"                              |                       |

Nota: Cette norme interdit l'utilisation de clef technique pour les tables historiques ou les tables de liens (à valider)

### CNC2 : Préfixe de colonne suivant leur typologie
syntaxe de nommage :
<br/>
**\<prefixe>__\<detail_colonne>**

| préfixe                | description                     | exemples                               |
| :--                    |:--                              | :---                                   |
| code                   | Code                            | code__table_elementaire, code__element     |
| date                   | Date                            | date__evenement                          |
| est                    | Flag/Booléen                    | est__externe                            |
| libelle                | Libellé                         | libelle, libelle__reduit, libelle__long                             |
| valeur                 | Valeur                          | valeur__salaire, va__element               |
| texte                  | Texte                           | texte__commentaire; texte__description; texte__observation                             |
 
### CNC3 : Colonnes de méta-données
les colonnes de méta données sont préfixées par **meta__**

Colonnes de méta-données dans chaque table ==> 

|colonne                    | description                                                                   | commentaire/exemple   |
|:--                        |:--                                                                            |:---                   |
|meta__date_maj             | date de dernière mise à jour (ou insertion)                                   | 2022-11-22T10:47.53   |
|meta__id_service_maj       | identifiant technique du service de l'utilisateur ayant fait la dernière mise à jour     | 128                   |


### CNC4 : Colonnes pour la gestion des versions

syntaxe de nommage :
<br/>
**version__\<detail_colonne>**

|colonne                    | description                                                           | commentaire/exemple   |
|:--                        |:--                                                                    |:---                   |
|version__numero             | Numéro de version                                                     |                       |
|version__date_debut              | Date de début de validité                               |                       |
|version__date_fin              | Date de fin de validité                                 |                       |
|version__est_courant             | Flag permettant de déterminer la version courrante (true/false)       |                       |
