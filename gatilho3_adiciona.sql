.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER pessoaUpdateBi
BEFORE UPDATE OF numero_bi ON Pessoa
for each row
WHEN exists(select * from Pessoa where numero_bi = NEW.numero_bi)
begin 
    Select raise(ignore);
end;


CREATE TRIGGER pessoaInsert
BEFORE INSERT ON Pessoa
for each row
WHEN exists(select * from Pessoa where numero_bi = NEW.numero_bi)
begin 
    Select raise(ignore);
end;