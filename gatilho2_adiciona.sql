.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER adicionaJogadorPessoa
AFTER INSERT ON Jogador
for each row
begin 
    INSERT INTO Pessoa values (NEW.numero_bi, '', '', '');
end;


CREATE TRIGGER adicionaArbitroPessoa
AFTER INSERT ON Arbitro
for each row
begin 
    INSERT INTO Pessoa values (NEW.numero_bi, '', '', '');
end;