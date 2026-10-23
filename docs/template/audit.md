# Audit fonctionnel

Complétez ce rapport à partir de vos résultats réels. Des phrases courtes suffisent.

## 1 Présenter le travail

- **Nom et prénom :** [À compléter]
- **Date :** [À compléter]
- **Fork et branche :** [Lien et nom de la branche]
- **Version testée :** [Identifiant du commit testé]
- **Pages testées :** /register, /task/new et /task/activeall

**Comment lancer l’application et les tests ?**

[Indiquez les commandes à utiliser et l’adresse locale de l’application.]

**Quelles données faut-il préparer pour lancer et rejouer vos tests ?**

[Expliquez comment créer les deux comptes, les catégories et les tâches nécessaires.]

## 2 Présenter le bilan

Comptez les cas de votre plan, pas les assertions. Chaque ligne doit totaliser neuf cas.

| Passage | Réussis | Échoués | Bloqués | Non exécutés | Preuve |
| --- | --- | --- | --- | --- | --- |
| Premier lancement | [Nombre] | [Nombre] | [Nombre] | [Nombre] | [Lien dans resultats/] |
| Relance | [Nombre] | [Nombre] | [Nombre] | [Nombre] | [Lien dans resultats/] |

**Les résultats changent-ils entre les deux passages ?**

[Expliquez les différences, ou indiquez qu’ils sont identiques.]

## 3 Décrire les problèmes rencontrés

Copiez cette fiche pour chaque problème confirmé. Si aucun problème n’est confirmé, indiquez-le ; il n’est pas nécessaire d’en inventer.

### [Titre du problème]

- **Cas concerné :** [Identifiant du plan de tests]
- **Étapes pour le reproduire :**
  1. [Préparation et données nécessaires]
  2. [Actions à effectuer]
- **Résultat attendu :** [Ce qui devrait se produire]
- **Résultat obtenu :** [Ce que vous avez réellement constaté]
- **Preuve :** [Lien vers une capture ou une sortie de test]
- **Origine :** [Application, test Cypress ou environnement ; expliquez votre diagnostic]
- **Impact :** [Conséquence pour l’utilisateur ou pour l’exécution des tests]
- **Correction proposée :** [Ce que vous conseillez de modifier]

Un test qui révèle un défaut peut être valorisé. Ne modifiez pas le code métier pour masquer ce défaut.

## 4 Donner votre conclusion

- **Qu’est-ce qui fonctionne d’après vos tests ?** [À compléter]
- **Quels problèmes faut-il traiter en premier et pourquoi ?** [À compléter ou aucun problème confirmé]
- **Qu’est-ce qui n’a pas été vérifié ?** [Limites de votre travail]
- **Votre avis sur les trois fonctionnalités :** [Quelques lignes justifiées par vos résultats]
