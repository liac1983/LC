BEGIN TRANSACTION;
DROP TABLE IF EXISTS Campeonato;
CREATE TABLE Campeonato (
	id_campeonato	varchar,
	ano	INTEGER NOT NULL,
	divisao	varchar NOT NULL CHECK(divisao > 0),
	PRIMARY KEY(id_campeonato)
);
DROP TABLE IF EXISTS EquipaArbitragem;
CREATE TABLE EquipaArbitragem (
	id_equipa_arbitragem	varchar,
	PRIMARY KEY(id_equipa_arbitragem)
);
DROP TABLE IF EXISTS Arbitro;
CREATE TABLE Arbitro (
	id_arbitro	varchar,
	numero_bi	INTEGER,
	estatuto	varchar NOT NULL,
	id_equipa_arbitragem	varchar,
	FOREIGN KEY(numero_bi) REFERENCES Pessoa(numero_bi),
	FOREIGN KEY(id_equipa_arbitragem) REFERENCES EquipaArbitragem(id_equipa_arbitragem),
	PRIMARY KEY(id_arbitro)
);
DROP TABLE IF EXISTS Pessoa;
CREATE TABLE Pessoa (
	numero_bi	INTEGER,
	nome	varchar NOT NULL,
	morada	varchar NOT NULL,
	data_de_nascimento	varchar NOT NULL,
	PRIMARY KEY(numero_bi)
);
DROP TABLE IF EXISTS Clube;
CREATE TABLE Clube (
	id_clube	varchar,
	nome	varchar UNIQUE,
	localidade	varchar NOT NULL,
	data_fundacao	varchar NOT NULL,
    id_campeonato VARCHAR,
    FOREIGN KEY(id_campeonato) REFERENCES Campeonato(id_campeonato),
	PRIMARY KEY(id_clube)
);
DROP TABLE IF EXISTS Equipa;
CREATE TABLE Equipa (
	id_equipa	varchar,
	npontos	INTEGER NOT NULL CHECK(npontos >= 0),
	ngolos_marcados	INTEGER NOT NULL CHECK(ngolos_marcados >= 0),
	ngolos_sofridos	INTEGER NOT NULL CHECK(ngolos_sofridos >= 0),
	id_clube	varchar,
	FOREIGN KEY(id_clube) REFERENCES Clube(id_clube),
	PRIMARY KEY(id_equipa)
);
DROP TABLE IF EXISTS Golo;
CREATE TABLE Golo (
	id_jogador	varchar,
	id_jogo	varchar,
	minuto	INTEGER NOT NULL,
	FOREIGN KEY(id_jogador) REFERENCES Jogador(id_jogador),
	FOREIGN KEY(id_jogo) REFERENCES Jogo(id_jogo)
);
DROP TABLE IF EXISTS Jogador;
CREATE TABLE Jogador (
	id_jogador	varchar,
	numero	INTEGER NOT NULL CHECK(numero > 0 AND numero <= 99),
	numero_bi	INTEGER,
	id_equipa	varchar,
	FOREIGN KEY(numero_bi) REFERENCES Pessoa(numero_bi),
	FOREIGN KEY(id_equipa) REFERENCES Equipa(id_equipa),
	PRIMARY KEY(id_jogador)
);
DROP TABLE IF EXISTS Jogo;
CREATE TABLE Jogo (
	id_jogo	varchar,
	ngolos_equipa1	INTEGER NOT NULL CHECK(ngolos_equipa1 >= 0),
	ngolos_equipa2	INTEGER NOT NULL CHECK(ngolos_equipa2 >= 0),
	data	varchar NOT NULL,
	local	varchar NOT NULL,
	id_jornada	varchar,
	id_equipa_arbitragem	varchar,
	FOREIGN KEY(id_equipa_arbitragem) REFERENCES EquipaArbitragem(id_equipa_arbitragem),
	FOREIGN KEY(id_jornada) REFERENCES Jornada(id_jornada),
	PRIMARY KEY(id_jogo)
);
DROP TABLE IF EXISTS Jornada;
CREATE TABLE Jornada (
	id_jornada	varchar,
	numero	INTEGER NOT NULL CHECK(numero > 0 AND numero <= 30) UNIQUE,
	data_inicial	varchar NOT NULL,
	data_final	varchar NOT NULL,
	id_campeonato	varchar,
	FOREIGN KEY(id_campeonato) REFERENCES Campeonato(id_campeonato),
	PRIMARY KEY(id_jornada)
);
DROP TABLE IF EXISTS Resultado;
CREATE TABLE Resultado (
	id_equipa	varchar,
	id_jogo	varchar,
	resultado	INTEGER NOT NULL,
	visitante_visitada	INTEGER NOT NULL,
	FOREIGN KEY(id_jogo) REFERENCES Jogo(id_jogo),
	FOREIGN KEY(id_equipa) REFERENCES Equipa(id_equipa)
);
DROP TABLE IF EXISTS campeonatoClube;
CREATE TABLE campeonatoClube (
	id_campeonato	varchar,
	id_clube	varchar,
	FOREIGN KEY(id_clube) REFERENCES Clube(id_clube),
	FOREIGN KEY(id_campeonato) REFERENCES Campeonato(id_campeonato)
);
DROP TABLE IF EXISTS equipaCampeonato;
CREATE TABLE equipaCampeonato (
	id_equipa	varchar,
	id_campeonato	varchar,
	FOREIGN KEY(id_equipa) REFERENCES Equipa(id_equipa),
	FOREIGN KEY(id_campeonato) REFERENCES Campeonato(id_campeonato)
);

COMMIT;