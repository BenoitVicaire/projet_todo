# Plan de tests

**Nom et prénom :** [À compléter]  
**Date :** [À compléter]

Complétez ce fichier avant de coder les tests, puis ajoutez les résultats après leur exécution.

## 1 Les neuf cas à tester

| ID | Page | Situation à vérifier |
| --- | --- | --- |
| INS-01 | /register | Inscription avec des données valides |
| INS-02 | /register | Inscription avec un champ obligatoire vide |
| INS-03 | /register | Inscription avec deux mots de passe différents |
| TACHE-01 | /task/new | Ajout d’une tâche valide avec une catégorie |
| TACHE-02 | /task/new | Ajout avec un champ obligatoire vide |
| TACHE-03 | /task/new | Accès à la page sans être connecté |
| LISTE-01 | /task/activeall | Les tâches actives du compte connecté sont affichées |
| LISTE-02 | /task/activeall | Ses tâches terminées ne sont pas affichées |
| LISTE-03 | /task/activeall | Les tâches d’un autre compte ne sont pas affichées |

## 2 Décrire chaque cas

Copiez la fiche ci-dessous neuf fois, une fois par cas. Reprenez son identifiant dans le titre du test Cypress correspondant.

### [ID] [Titre du cas]

- **Objectif :** [Ce que vous voulez vérifier]
- **Préparation :** [Compte connecté ou non, données nécessaires, page de départ]
- **Données utilisées :** [Valeurs saisies ou méthode pour les générer]
- **Actions :**
  1. [Première action]
  2. [Action suivante]
- **Résultat attendu :** [Ce qui doit se produire]
- **Résultat obtenu :** [À compléter après le test]
- **Statut :** non exécuté

Choisissez ensuite l’un des statuts suivants :

- **Réussi** : le résultat obtenu correspond au résultat attendu.
- **Échoué** : le résultat obtenu ne correspond pas au résultat attendu.
- **Bloqué** : un problème empêche d’effectuer la vérification.
- **Non exécuté** : le test n’a pas été lancé.

## 3 Expliquer vos priorités

**Quels cas sont les plus importants à vérifier en premier et pourquoi ?**

[Répondez en quelques lignes en expliquant les conséquences possibles pour l’utilisateur.]

## 4 Noter les résultats de la relance

Relancez les tests avec des données adaptées, puis complétez :

- **Les résultats sont-ils identiques à ceux du premier passage ?** [Oui ou non, puis explication]
- **Si un résultat change, quel cas est concerné et pourquoi ?** [À compléter ou aucun]
- **Preuves des deux passages :** [Liens vers les fichiers conservés dans resultats/]
