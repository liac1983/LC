.mode columns
.headers on
.nullvalue NULL

select jogo.id_jogo, jogo.data, jogo.local, sum(ngolos_equipa1)+sum(ngolos_equipa2) as golos
from jogo
group by 1
order by 4 desc
limit 1;