.mode columns
.headers on
.nullvalue NULL

select npontos as PONTOS, nome as NOME
from equipa, clube
where clube.id_clube = equipa.id_clube
order by 1 desc;