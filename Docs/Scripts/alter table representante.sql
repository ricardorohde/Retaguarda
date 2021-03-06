CREATE TABLE PRODUTOREPRESENTANTE (
    REPRICOD         INTEGER NOT NULL,
    PRODICOD         INTEGER NOT NULL,
    PRSEA60NROSERIE  CHAR(60) NOT NULL,
    NOFIA13ID        CHAR(13),
    NOCPA13ID        CHAR(13),
    FORNICOD         INTEGER,
    CLIEA13ID        CHAR(13),
    CLIEA60RAZAOSOC  CHAR(60),
    DATA_SAIDA       DATE,
    DATE_ENTRADA     DATE,
    EMPRICOD         INTEGER,
    STATUS           CHAR(1),
    ENTRADA_SAIDA    CHAR(1) NOT NULL,
    DATA_REGISTRO    DATE
);

ALTER TABLE PRODUTOREPRESENTANTE ADD CONSTRAINT PK_PRODUTOREPRESENTANTE PRIMARY KEY (REPRICOD, PRODICOD, PRSEA60NROSERIE, ENTRADA_SAIDA);


ALTER TABLE REPRESENTANTE ADD PERC_COMISSAO NUMERIC(15,2);