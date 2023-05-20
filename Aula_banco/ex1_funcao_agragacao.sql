use empresa

select * from projects
select * from users
select * from users_has_projects

insert into users values
(6, 'Joao', 'Ti_joao', '123mudar', 'joao@empresa.com')

insert into projects(id, name, description) values
(10004, 'atualização de sistemas', 'modificação de sistemas operacionais nos PCs')


select COUNT(pj.id) as qty_projects_no_users
from projects pj, users us, users_has_projects uspj
where pj.id = uspj.projects
	and us.id = uspj.users

select pj.id, pj.name
from projects pj, users us, users_has_projects uspj
where pj.id = uspj.projects
	and us.id = uspj.users
order by name