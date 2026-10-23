# Exemple avec l’ajout d’une catégorie

Cet exemple montre comment passer du plan de tests au test Cypress, puis à l’audit. Il sert de guide et ne remplace pas les neuf cas de l’évaluation.

## 1 Exemple de cas dans plan_test.md

### CAT-01 Ajouter une catégorie

- **Objectif :** vérifier qu’une catégorie ajoutée est conservée.
- **Préparation :** application et BDD démarrées, Cypress configuré, compte fictif existant. Le test se connecte à ce compte.
- **Données utilisées :** un nom de catégorie unique, par exemple `Categorie-<date en millisecondes>`.
- **Actions :**
  1. Ouvrir `/category/new` en étant connecté.
  2. Saisir le nom et cliquer sur « Ajouter ».
- **Résultat attendu :** la catégorie apparaît dans `/category/all` et reste visible après rechargement.
- **Résultat obtenu :** à compléter après exécution.
- **Statut :** non exécuté.

## 2 Exemple de test Cypress en AAA

Avant de lancer ce test, créez un compte local via `/register` avec l’email `categorie@example.test` et le mot de passe `Test-Categorie-2026!`. Ces valeurs sont réservées à ce compte fictif de démonstration.

Configurez Cypress avec l’adresse de votre application dans `e2e.baseUrl`, par exemple `http://localhost:8080`.

Créez le fichier `cypress/e2e/categorie.cy.js` :

```js
describe('Ajout de catégorie', () => {
  it('CAT-01 ajoute une catégorie et la conserve', () => {
    // Arrange : préparer le nom, la connexion et la page.
    const nomCategorie = `Categorie-${Date.now()}`;

    cy.visit('/login');
    cy.get('input[name="email"]').type('categorie@example.test');
    cy.get('input[name="password"]')
      .type('Test-Categorie-2026!', { log: false });
    cy.get('input[type="submit"][name="submit"]').click();
    cy.location('pathname').should('eq', '/');

    cy.visit('/category/new');
    cy.location('pathname').should('eq', '/category/new');

    // Act : remplir et envoyer le formulaire.
    cy.get('input[name="name"]').type(nomCategorie);
    cy.get('input[type="submit"][name="submit"]').click();

    // Assert : vérifier la présence de la catégorie après rechargement.
    cy.visit('/category/all');
    cy.contains('main article h3', nomCategorie)
      .should('have.text', nomCategorie)
      .and('be.visible');

    cy.reload();
    cy.contains('main article h3', nomCategorie)
      .should('have.text', nomCategorie)
      .and('be.visible');
  });
});
```

Le nom change à chaque passage pour éviter de recréer une catégorie existante. Le test peut être lancé seul, à condition que le compte de démonstration ait été créé. Il ajoute une nouvelle catégorie à chaque exécution.

La connexion fait partie d’**Arrange** : elle prépare le parcours. Les assertions sur l’adresse vérifient cette préparation. Si la connexion échoue, cela ne prouve pas un défaut d’ajout de catégorie.

## 3 Exécuter et garder une preuve

Laissez l’application démarrée. Créez un dossier `resultats/` à la racine du projet, puis lancez :

```sh
npx cypress run --spec cypress/e2e/categorie.cy.js > resultats/categorie-1.txt 2>&1
npx cypress run --spec cypress/e2e/categorie.cy.js > resultats/categorie-2.txt 2>&1
```

Consultez les deux fichiers. Complétez le résultat obtenu et le statut dans votre plan de tests. Si votre base a été réinitialisée, recréez le compte avant de relancer.

## 4 Exemple de conclusion dans audit.md

**Le test ci-dessus n’a pas été exécuté pour rédiger ce document.** La formulation suivante est un exemple : utilisez-la seulement si vos preuves confirment ces résultats.

> Le cas CAT-01 a réussi lors des deux passages. La catégorie créée apparaît dans la liste et reste visible après rechargement. Les preuves sont dans `resultats/categorie-1.txt` et `resultats/categorie-2.txt`. Aucun problème n’a été constaté sur ce cas. Les noms vides, les doublons et l’accès sans connexion n’ont pas été vérifiés.

Si le test échoue, décrivez ce que vous avez réellement observé dans la fiche « Problèmes rencontrés » du modèle `audit.md`. Précisez l’attendu, l’obtenu, la preuve, l’impact et la correction proposée.
