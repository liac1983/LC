.mode columns
.headers on
.nullvalue NULL


select pessoa.nome, numero
from jogador, pessoa, campeonato, equipa, clube
where jogador.numero_bi = pessoa.numero_bi
and jogador.id_equipa = equipa.id_equipa
and equipa.id_clube = clube.id_clube
and clube.id_campeonato = campeonato.id_campeonato
and campeonato.ano = 2021;