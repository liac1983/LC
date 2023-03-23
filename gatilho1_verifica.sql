.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

select npontos
from equipa
where equipa.id_equipa = 1;

insert into Resultado values(1,247,1,0);

select npontos
from equipa
where equipa.id_equipa = 1;