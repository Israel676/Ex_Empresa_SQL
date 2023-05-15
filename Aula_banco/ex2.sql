INSERT INTO users VALUES ('Joao', 'Ti_joao', '123mudar', 'joao@empresa.com')

INSERT INTO projects VALUES ('Atualização de Sistemas', 'Modificação de Sistemas Operacionais nos PC´s','2014-09-12')

SELECT users.id, users.nome, users.email,projects.nome, projects.descr,projects.data_proj FROM users, 
projects, users_has_projects 
WHERE users.id = users_has_projects.users_id AND projects.id = users_has_projects.projects_id AND projects.nome = 'Re-folha'

SELECT projects.nome, users_has_projects.users_id FROM projects LEFT OUTER JOIN 
users_has_projects ON projects.id = users_has_projects.projects_id WHERE users_has_projects.users_id IS NULL

SELECT users.nome, users_has_projects.projects_id FROM users LEFT OUTER JOIN 
users_has_projects ON users.id = users_has_projects.users_id WHERE users_has_projects.projects_id IS NULL
