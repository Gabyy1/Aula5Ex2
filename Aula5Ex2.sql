Use Aula2Ex2
Go

--Quantos projetos não tem usuários associados a ele. A coluna deve chamar qty_projects_no_users
Select Count (id) As qty_projects_no_users
From users Left Outer Join users_has_projects
On users.id = users_has_projects.users_id
Where projects_id Is Null

--Id do projeto, nome do projeto, qty_users_project (quantidade de usuários por projeto) em ordem alfabética crescente pelo nome do projeto
Select projects.id, projects.name, Count(users.id) As qty_users_project
From projects Inner Join users_has_projects
On projects.id = users_has_projects.projects_id
Inner Join users 
On users.id = users_has_projects.users_id
Where projects.id Is Not Null
Group By projects.id, projects.name
Order By projects.name




Select*From users
Select*From projects
Select*From users_has_projects