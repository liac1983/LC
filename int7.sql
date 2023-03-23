.mode columns
.headers on
.nullvalue NULL

select pessoa.nome as NOME
from pessoa, jogador, equipa, clube
where pessoa.numero_bi = jogador.numero_bi
and jogador.id_equipa = equipa.id_equipa
and clube.id_clube = equipa.id_clube
and clube.nome = "CF OS BELENENSES";