# Guide d'Installation - FinalWorkingApp1756216018027

## Prérequis

- Node.js 18+ 
- npm ou yarn
- PostgreSQL 14+ (ou votre base de données)
- Git

## Installation Locale

### 1. Cloner le projet

```bash
git clone https://github.com/username/project.git
cd finalworkingapp1756216018027
```

### 2. Installer les dépendances

```bash
npm install
# ou
yarn install
```

### 3. Configuration de l'environnement

Créer un fichier `.env.local` à la racine :

```env
# Base de données
DATABASE_URL="postgresql://user:password@localhost:5432/dbname"

# Authentification
NEXTAUTH_URL="http://localhost:3000"
NEXTAUTH_SECRET="your-secret-key-min-32-chars"

# API Keys
OPENAI_API_KEY="sk-..."
STRIPE_SECRET_KEY="sk_test_..."

# Email
SMTP_HOST="smtp.gmail.com"
SMTP_PORT="587"
SMTP_USER="your-email@gmail.com"
SMTP_PASS="your-app-password"

# Analytics (optionnel)
VERCEL_ANALYTICS_ID="..."
SENTRY_DSN="..."
```

### 4. Configuration de la base de données

```bash
# Créer la base de données
createdb finalworkingapp1756216018027

# Lancer les migrations
npm run db:migrate

# (Optionnel) Ajouter des données de test
npm run db:seed
```

### 5. Lancer le serveur de développement

```bash
npm run dev
```

L'application sera accessible sur [http://localhost:3000](http://localhost:3000)

## Déploiement Production

### Vercel (Recommandé)

1. Connecter le repo GitHub à Vercel
2. Configurer les variables d'environnement
3. Déployer

```bash
# Via CLI
vercel --prod
```

### Docker

```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
```

```bash
docker build -t finalworkingapp1756216018027 .
docker run -p 3000:3000 finalworkingapp1756216018027
```

### Manuel

```bash
# Build de production
npm run build

# Lancer le serveur
npm start
```

## Troubleshooting

### Erreurs courantes

#### Port 3000 déjà utilisé
```bash
# Changer le port
PORT=3001 npm run dev
```

#### Erreur de connexion à la base de données
- Vérifier que PostgreSQL est lancé
- Vérifier DATABASE_URL dans .env.local
- Vérifier les permissions de l'utilisateur

#### Erreur de build
```bash
# Nettoyer le cache
rm -rf .next node_modules
npm install
npm run build
```

## Support

Pour toute question : [Créer une issue](undefined/issues)

---
*Guide d'installation généré par Go To Factory*