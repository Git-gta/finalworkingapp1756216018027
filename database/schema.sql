CREATE TABLE project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255),
    description TEXT,
    category VARCHAR(255),
    target_audience VARCHAR(255),
    logo_prompt TEXT,
    color_scheme VARCHAR(255)
);

CREATE TABLE feature (
    feature_id INT PRIMARY KEY,
    feature_name VARCHAR(255),
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES project(project_id)
);

CREATE TABLE tech_stack (
    tech_stack_id INT PRIMARY KEY,
    tech_name VARCHAR(255)
);

CREATE TABLE project_tech (
    project_id INT,
    tech_stack_id INT,
    FOREIGN KEY (project_id) REFERENCES project(project_id),
    FOREIGN KEY (tech_stack_id) REFERENCES tech_stack(tech_stack_id)
);

INSERT INTO project (project_id, project_name, description, category, target_audience, logo_prompt, color_scheme)
VALUES (1, 'FinalWorkingApp1756216018027', 'Application complète de gestion de projets avec dashboard, authentification, API REST et déploiement sur Vercel', 'Outil de gestion de projets', 'Équipes de projet, chefs de projet, gestionnaires', 'Un logo moderne et épuré représentant une équipe travaillant sur un projet', '#007ACC,#00B2FF');

INSERT INTO feature (feature_id, feature_name, project_id)
VALUES (1, 'Tableau de bord personnalisable', 1),
       (2, 'Gestion des tâches et des projets', 1),
       (3, 'Authentification et gestion des utilisateurs', 1),
       (4, 'API REST pour l''intégration avec d''autres outils', 1);

INSERT INTO tech_stack (tech_stack_id, tech_name)
VALUES (1, 'React'),
       (2, 'Node.js'),
       (3, 'Express'),
       (4, 'PostgreSQL'),
       (5, 'Vercel');

INSERT INTO project_tech (project_id, tech_stack_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (1, 5);