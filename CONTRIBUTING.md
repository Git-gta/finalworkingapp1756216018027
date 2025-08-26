# Guide de Contribution

Merci de votre intérêt pour contribuer à FinalWorkingApp1756216018027 ! 

## Code de Conduite

Ce projet adhère au [Code de Conduite](CODE_OF_CONDUCT.md). En participant, vous acceptez de respecter ce code.

## Comment Contribuer

### 1. Reporter un Bug

- Vérifier que le bug n'a pas déjà été reporté
- Créer une issue avec le template "Bug Report"
- Fournir un maximum de détails

### 2. Proposer une Fonctionnalité

- Créer une issue avec le template "Feature Request"
- Expliquer le cas d'usage
- Discuter avec la communauté

### 3. Soumettre du Code

#### Setup du Développement

```bash
# Fork le projet
git clone https://github.com/your-username/finalworkingapp1756216018027.git
cd finalworkingapp1756216018027

# Créer une branche
git checkout -b feature/ma-fonctionnalite

# Installer les dépendances
npm install

# Lancer les tests
npm test
```

#### Standards de Code

- TypeScript avec mode strict
- ESLint + Prettier configurés
- Tests pour toute nouvelle fonctionnalité
- Documentation JSDoc pour les fonctions publiques

#### Processus de Pull Request

1. Mettre à jour votre fork
2. Créer une branche descriptive
3. Faire des commits atomiques
4. Écrire des tests
5. Mettre à jour la documentation
6. Créer la Pull Request

### Conventional Commits

Nous utilisons [Conventional Commits](https://www.conventionalcommits.org/) :

- `feat:` Nouvelle fonctionnalité
- `fix:` Correction de bug
- `docs:` Documentation
- `style:` Formatage
- `refactor:` Refactoring
- `test:` Tests
- `chore:` Maintenance

Exemple :
```
feat(auth): add OAuth2 provider support
fix(api): handle null values in response
docs: update installation guide
```

## Review Process

1. CI/CD doit passer (tests, lint, build)
2. Review par au moins 1 mainteneur
3. Approbation requise avant merge
4. Squash and merge préféré

## Développement

### Structure du Projet

```
src/
├── app/        # Pages et routes
├── components/ # Composants React
├── lib/        # Logique métier
├── styles/     # Styles
└── tests/      # Tests
```

### Scripts Utiles

```bash
npm run dev        # Développement
npm run test       # Tests
npm run test:watch # Tests en continu
npm run lint       # Linter
npm run format     # Formatter
npm run build      # Build
```

### Tests

- Tests unitaires avec Jest
- Tests d'intégration avec Testing Library
- Tests E2E avec Playwright
- Coverage minimum : 80%

## Questions ?

- Discord : [Rejoindre](https://discord.gg/...)
- Discussions GitHub : [Participer](undefined/discussions)

## Remerciements

Merci à tous les contributeurs ! ❤️

---
*Guide de contribution généré par Go To Factory*