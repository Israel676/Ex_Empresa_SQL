use  locadora

select * from filme
select * from dvd
select * from locacao
select * from filme_estrela
select * from estrela
select * from cliente

select cli.num_cadastro, cli.nome, fil.titulo, d.data_fabricacao, loc.valor
from filme fil, dvd d, locacao loc, filme_estrela files, estrela es, cliente cli
where fil.id = d.filmeid
	and d.num = loc.dvdnum
	and cli.num_cadastro = loc.cliente_num_cadastro
	and es.id = files.estrelaid
	and fil.id = files.filmeid


select convert(char(10),loc.data_locacao, 103), cli.nome, cli.num_cadastro, COUNT(d.filmeid) as qtd
from filme fil, dvd d, locacao loc, filme_estrela files, estrela es, cliente cli
where fil.id = d.filmeid
	and d.num = loc.dvdnum
	and cli.num_cadastro = loc.cliente_num_cadastro
	and es.id = files.estrelaid
	and fil.id = files.filmeid
order by loc.data_locacao

select cli.num_cadastro, cli.nome, COUNT(loc.valor) as valor_total
from filme fil, dvd d, locacao loc, filme_estrela files, estrela es, cliente cli
where fil.id = d.filmeid
	and d.num = loc.dvdnum
	and cli.num_cadastro = loc.cliente_num_cadastro
	and es.id = files.estrelaid
	and fil.id = files.filmeid
order by loc.data_locacao

select cli.num_cadastro, cli.nome
from filme fil, dvd d, locacao loc, filme_estrela files, estrela es, cliente cli
where fil.id = d.filmeid
	and d.num = loc.dvdnum
	and cli.num_cadastro = loc.cliente_num_cadastro
	and es.id = files.estrelaid
	and fil.id = files.filmeid