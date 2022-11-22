# Règles de nommage des colonnes

Les règles de nommages des colonnes doivent respecter les **[Règles Globales](GlobalRules.md)** et

| code norme    | type de colonne                                       | norme                                 |
|:--            |:--                                                    |:---                                   |
| CNC1          | Colonnes de **clef technique ou identifiant**         | **id__\<racine_nom_table\>[__role]**  |
| CNC2          | Colonnes de **méta-données**                          | **meta__**(date_maj \| id_service_maj)|
| CNC3          | Colonnes pour la **gestion des versions**             | **version__\<detail_colonne>**        |
| CNC4          | Colonnes de **code fonctionnel ou mnemo-technique**   | **code__\<detail_colonne\>**          |
| CNC5          | Colonnes **booléennes**                               | **\<prefixe_booleen>__\<detail_colonne>** |
| CNC6          | Colonnes de **date**                                  | **date__\<detail_colonne>**           |
| CNC7          | Colonnes de **libellé**                               | **libelle[__\<detail_colonne>]**      |
| CNC8          | Colonnes de **valeur**                                | **valeur__\<detail_colonne>**         |
| CNC9          | Colonnes de **texte**                                 | **texte__\<detail_colonne>**          |
| CNC10         | Colonnes **XML**                                      | **xml__\<detail_colonne>**            |
| CNC11         | Colonnes **JSON**                                     | **json__\<detail_colonne>**           |



## CNC1 : Colonnes de **clef technique ou identifiant**
syntaxe de nommage :
<br/>
**id__\<racine_nom_table\>[__role]**

### exemples 
                                                   
- id__table_elementaire 
- id__natinf  
- id__mesure
- id__caracteristique
- id__structure        
- id__evenement
- id__type_caracteristique
- id__matiere__primaire
- id__matiere__secondaire


**Nota** : Cette norme interdit l'utilisation de clef technique pour les tables historiques ou les tables de liens (à valider). Ces tables utiliseront les identifiants des tables racines (entités).


## CNC2 : Colonnes de **méta-données**

syntaxe de nommage :
<br/>
**meta__**(date_maj \| id_service_maj)


|colonne                    | description                                                                   | commentaire/exemple   |
|:--                        |:--                                                                            |:---                   |
|meta__date_maj             | date de dernière mise à jour (ou insertion)                                   | 2022-11-22T10:47.53   |
|meta__id_service_maj       | identifiant technique du service de l'utilisateur ayant fait la dernière mise à jour     | 128                   |


## CNC3 : Colonnes pour la **gestion des versions**

syntaxe de nommage :
<br/>
**version__\<detail_colonne>**

|colonne                    | description                                                           | commentaire/exemple   |
|:--                        |:--                                                                    |:---                   |
|version__numero            | Numéro de version                                                     |                       |
|version__date_debut        | Date de début de validité                                             |                       |
|version__date_fin          | Date de fin de validité                                               |                       |
|version__est_courant       | Flag permettant de déterminer la version courrante (true/false)       |                       |

### CNC4 : Colonnes de **code fonctionnel ou mnemo-technique**
syntaxe de nommage :
<br/>
**code__\<detail_colonne\>**

#### exemples :
- code__table_elementaire
- code__element
- code__postal
- code__type
- code__origine
- code__siret
- code__siren
- code__structure
- code__mesure
- code__caracteristique
- code__parametre

## CNC5 : Colonnes **booléennes**
syntaxe de nommage :
<br/>
**\<prefixe_booleen>__\<detail_colonne>**

| préfixe booléen        | description                      | exemples                                                       |
| :--                    |:--                               | :---                                                           |
| est                    | être                             | est__externe; est__ferme; est__obligatoire; est_recidive       |
| a                      | avoir                            | a__mise_a_jour                                                 |

## CNC6 : Colonnes de **date**
syntaxe de nommage :
<br/>
**date__\<detail_colonne>**

### exemples
- date__evenement
- date__publication
- date__revision  
- date__fermeture
- date__fermeture_initiale


## CNC7 : Colonnes de **libellé**
syntaxe de nommage :
<br/>
**libelle[__\<detail_colonne>]**

### exemples :
- libelle
- libelle__reduit
- libelle__long
- libelle__adresse_1
- libelle__nature
- libelle__nom
- libelle__prenom
- libelle__texte
- libelle__requete

## CNC8 : Colonnes de **valeur**
syntaxe de nommage :
<br/>
**valeur__\<detail_colonne>**

### exemples :
- valeur__salaire
- valeur__element_structure 
- valeur__latitude
- valeur__longitude
- valeur__resultat


## CNC9 : Colonnes de **texte**
syntaxe de nommage :
<br/>
**texte__\<detail_colonne>**

### exemples
- texte__commentaire
- texte__description
- texte__observation

## CNC10 : Colonnes **XML**
syntaxe de nommage :
<br/>
**xml__\<detail_colonne>**

### exemples
- xml_texte
- xml_contenu

## CNC11 : Colonnes **JSON**
syntaxe de nommage :
<br/>
**json__\<detail_colonne>**

### exemples
- json_texte
- json_contenu
 
