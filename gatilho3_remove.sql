.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

DROP TRIGGER IF EXISTS pessoaUpdateBi;
DROP TRIGGER IF EXISTS pessoaInsert;