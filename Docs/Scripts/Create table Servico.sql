CREATE TABLE SERVICO (
    ID_SERVICO         INTEGER NOT NULL,
    NOME_SERVICO       VARCHAR(50),
    DESCRICAO_SERVICO  BLOB SUB_TYPE 0 SEGMENT SIZE 80
);

ALTER TABLE SERVICO ADD CONSTRAINT PK_SERVICO PRIMARY KEY (ID_SERVICO);
