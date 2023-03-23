.mode columns
.headers on
.nullvalue NULL

select pessoa.nome as NOME, pessoa.data_de_nascimento as DATANASC, clube.nome as CLUBE
from pessoa, clube, equipa, jogador
where pessoa.numero_bi = jogador.numero_bi
and jogador.id_equipa = equipa.id_equipa
and equipa.id_clube = clube.id_clube
and substr(pessoa.data_de_nascimento,-4) < '2000'
order by 1;