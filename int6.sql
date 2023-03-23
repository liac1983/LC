.mode columns
.headers on
.nullvalue NULL

select nome as NOME
from clube
where localidade not in (select localidade from clube where localidade = "Lisboa" or localidade = "Porto");