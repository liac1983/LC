.mode columns
.headers on
.nullvalue NULL

select nome as NOME, count(nvitorias) as VITORIAS
from(select clube.nome as nome, resultado as nvitorias
from resultado, clube, equipa
where clube.id_clube = equipa.id_clube
and equipa.id_equipa = resultado.id_equipa
and resultado.resultado = 3
and (clube.nome = 'FC PORTO' or clube.nome='SPORTING CP' or clube.nome ='SL BENFICA'))
group by 1;