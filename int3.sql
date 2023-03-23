.mode columns
.headers on
.nullvalue NULL

select id_jogador, id_jogo, count(minuto)
from golo
group by 1,2
order by 3 desc
limit 1;