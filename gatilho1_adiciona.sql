.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER adicionaPontos
AFTER INSERT ON resultado
for each row
begin 
    update equipa set npontos = npontos + NEW.resultado;
end;