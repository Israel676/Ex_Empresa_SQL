create database empresa
go
use empresa
go
create table users(
	id			int		not null identity(1, 1),
	nome		varchar(45)		not null,
	username	varchar(45)		not null unique,
	senha		varchar(45)		null default('123mudar'),
	email		varchar(45)		null
	primary key(id)
)
go
create table projects(
	id		int		not null identity(10001, 1),
	nome	varchar(45)		not null,
	description_	varchar(45) null,
	data_	date	check(data_ > '2014-09-01')	
	primary key(id)
)
go
create table users_has_projects(
	id_users		int		not null,
	id_projects		int		not null
	primary key(id_users, id_projects)
	foreign key(id_users) references users(id),
	foreign key(id_projects) references projects(id)
)

select * from users
select * from projects
select * from users_has_projects

alter table users alter column username varchar(10)

alter table users alter column senha varchar(8)

insert into users (id, nome, username, senha, email) values
(1, 'maria', 'Rh_maria', '123mudar', 'maria@empresa.com'),
(2, 'Paulo', 'Ti_paulo', '123@456', 'paulo@empresa.com'),
(3, 'Ana', 'Rh_ana', '123mudar', 'ana@empresa.com'),
(4, 'clara', 'Ti_clara', '123mudar', 'clara@empresa.com'),
(5, 'aparecido', 'Rh_apareci', '55@!cido', 'aparecido@empresa.com')

insert into projects(id, nome, description_ , data_)values
(10001, 'Re-folha', 'refatoração das folhas', '2014-09-05'),
(10002, 'Manutencao Pcs', 'manutencao Pcs', '2014-09-06'),
(10003, 'auditoria', null, '2014-09-07')

insert into users_has_projects(id_users, id_projects) values
(1, 10001),
(5, 10001),
(3, 10003),
(4, 10002),
(2, 10002)

update projects set data_ = '2014-09-12'
where nome = 'manutencao Pcs'

update users set nome = 'Rh_cido'
where username = 'aparecido'