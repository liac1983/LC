.mode columns
.headers on
.nullvalue NULL

select equipa.id_equipa, clube.nome, clube.localidade, clube.data_fundacao, count(resultado) as DERROTAS
from clube, resultado, equipa
where clube.id_clube = equipa.id_clube
and resultado.id_equipa = equipa.id_equipa
and resultado.resultado = 1
group by 1
order by 5 asc;