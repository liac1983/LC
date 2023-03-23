.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

select numero_bi
from pessoa
where pessoa.numero_bi = 10000275;

insert into Jogador values('10000271',78,10000275,3);

select numero_bi
from pessoa
where pessoa.numero_bi = 10000275;



select numero_bi
from pessoa
where pessoa.numero_bi = 10000276;

insert into Arbitro values('5',10000275,'categoria1',3);

select numero_bi
from pessoa
where pessoa.numero_bi = 10000276;