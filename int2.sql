.mode columns
.headers on
.nullvalue NULL

select clube.nome, ngolos_marcados, ngolos_sofridos, npontos
from equipa, clube
where equipa.id_clube = clube.id_clube
order by 4 asc
limit 1;
