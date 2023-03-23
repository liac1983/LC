.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

select *
from pessoa
where pessoa.numero_bi = 10000001;

UPDATE Pessoa set numero_bi = 10000001
where nome ='JAKOB MIKKELSEN'
and morada = '179 Library Blvd'
and data_de_nascimento = '30/08/2001';

select *
from pessoa
where pessoa.numero_bi = 10000001;



select *
from pessoa
where pessoa.numero_bi = 10000001;

insert into Pessoa values(10000001,'JAKOB MIKKELSEN','179 Library Blvd','30/08/2001');

select *
from pessoa
where pessoa.numero_bi = 10000001;