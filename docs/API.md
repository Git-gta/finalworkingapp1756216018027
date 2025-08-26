# Documentation API - FinalWorkingApp1756216018027

## Vue d'ensemble

API REST pour FinalWorkingApp1756216018027

**Base URL**: `https://api.example.com`
**Version**: v1
**Format**: JSON

## Authentification

L'API utilise JWT pour l'authentification.

```http
Authorization: Bearer <token>
```

### Obtenir un token

```http
POST /api/auth/login
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "password123"
}
```

**Réponse**:
```json
{
  "token": "eyJhbGciOiJIUzI1NiIs...",
  "user": {
    "id": "123",
    "email": "user@example.com",
    "name": "John Doe"
  }
}
```

## Endpoints

### Projects

#### Lister les projets
```http
GET /api/projects
```

**Paramètres**:
- `page` (number): Page number (default: 1)
- `limit` (number): Items per page (default: 10)
- `status` (string): Filter by status

**Réponse**:
```json
{
  "data": [
    {
      "id": "abc123",
      "name": "Project Name",
      "status": "active",
      "createdAt": "2024-01-01T00:00:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 10,
    "total": 100
  }
}
```

#### Créer un projet
```http
POST /api/projects
Content-Type: application/json

{
  "name": "New Project",
  "description": "Project description",
  "type": "fullstack"
}
```

#### Obtenir un projet
```http
GET /api/projects/:id
```

#### Mettre à jour un projet
```http
PUT /api/projects/:id
Content-Type: application/json

{
  "name": "Updated Name",
  "status": "completed"
}
```

#### Supprimer un projet
```http
DELETE /api/projects/:id
```

### Users

#### Profile utilisateur
```http
GET /api/users/me
```

#### Mettre à jour le profile
```http
PUT /api/users/me
Content-Type: application/json

{
  "name": "New Name",
  "email": "newemail@example.com"
}
```

### Analytics

#### Dashboard stats
```http
GET /api/analytics/dashboard
```

**Réponse**:
```json
{
  "totalProjects": 42,
  "activeProjects": 10,
  "totalRevenue": 15000,
  "monthlyGrowth": 12.5
}
```

## Codes d'erreur

| Code | Description |
|------|-------------|
| 200 | Success |
| 201 | Created |
| 400 | Bad Request |
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |
| 429 | Too Many Requests |
| 500 | Internal Server Error |

## Rate Limiting

- 100 requêtes par minute pour les utilisateurs authentifiés
- 20 requêtes par minute pour les utilisateurs anonymes

## Webhooks

### Configuration
```http
POST /api/webhooks/configure
Content-Type: application/json

{
  "url": "https://your-server.com/webhook",
  "events": ["project.created", "project.completed"]
}
```

### Événements disponibles
- `project.created`
- `project.updated`
- `project.completed`
- `project.failed`

## SDKs

### JavaScript/TypeScript
```bash
npm install @finalworkingapp1756216018027/sdk
```

```javascript
import { ProjectAPI } from '@finalworkingapp1756216018027/sdk'

const api = new ProjectAPI({
  apiKey: 'your-api-key'
})

const projects = await api.projects.list()
```

---
*Documentation API générée par Go To Factory*