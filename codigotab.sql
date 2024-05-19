USE MASTER
GO

CREATE DATABASE Pessoas
GO

USE Pessoas
GO


CREATE TABLE Endereco(
		End_CodigoPostal CHAR(8) NOT NULL,
		End_Localidade VARCHAR(50) NOT NULL,
		CHECK (End_codigoPostal LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9]'), --Um codigo postal é do genero, por exemplo, 3124-142
		PRIMARY KEY(End_CodigoPostal)
)
--CRIAÇÃO DA TABELA PESSOAS
CREATE TABLE Pessoas(
		CC BIGINT NOT NULL,
		Nome_Pessoas VARCHAR (50) NOT NULL,
		Data_Nasc DATE,
		Telefone VARCHAR(9) NOT NULL,
		End_CodigoPostal CHAR(8) NOT NULL,
		End_Morada VARCHAR(50) NOT NULL,
		CHECK(CC>0),	--O numero de CC é sempre maior que zero
		CHECK (End_codigoPostal LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9]'),
		PRIMARY KEY (CC),
		FOREIGN KEY (End_CodigoPostal) REFERENCES Endereco
		)


--CRIACAO DA TABELA TIPO_FABRICACAO
CREATE TABLE tipo_fabricacao(
		ID_fabricacao  INTEGER NOT NULL,
		Nome_Fabricacao VARCHAR(50) NOT NULL,
		Descricao VARCHAR(50) NOT NULL,
		CHECK(ID_fabricacao>0),	--Um determinado ID é sempre maior que zero
		PRIMARY KEY (ID_fabricacao) 
)

--CRIACAO DA TABELA PAISES
CREATE TABLE Paises(
	ID_Paises INTEGER NOT NULL,
	Nome_Paises VARCHAR(50),
	Criador BIT NOT NULL DEFAULT 0,
	---- Criador pode ser: Criador('1') ou não criador('0')
	CHECK(ID_Paises>0),
	PRIMARY KEY (ID_Paises)
)

--CRIACAO DA TABELA VIVER
CREATE TABLE Viver(
	  CC BIGINT NOT NULL,
	  ID_Paises INTEGER NOT NULL,
	  Data_Inicio DATE,
	  Data_Fim DATE,
	  CHECK(CC>0),
	  CHECK(ID_Paises>0),
	  CHECK(Data_Fim>Data_Inicio),
	  PRIMARY KEY (CC),
	  FOREIGN KEY (CC) REFERENCES Pessoas(CC),
	  FOREIGN KEY (ID_Paises) REFERENCES Paises(ID_Paises)

)

--CRIACAO DA TABELA MANUAISESCOLARES
CREATE TABLE ManuaisEscolares(
    ISBN			BIGINT				NOT NULL,
    Titulo          VARCHAR(50)			NOT NULL,
    AnoEscolar      Integer				NOT NULL,
	Edicao			Integer				NOT NULL,
	CHECK(ISBN>0),
	CHECK(Edicao>0),
    CHECK(AnoEscolar>0),
    PRIMARY KEY (ISBN),
)

--CRIACAO DA TABELA ERRATAS
CREATE TABLE Erratas(
    ID_Erratas		Integer				NOT NULL,
	Texto			VARCHAR(50)			NOT NULL,
	CHECK(ID_Erratas>0),
	PRIMARY KEY (ID_Erratas),
)

--CRIACAO DA TABELA MANUAISESCOLARES_ERRATAS
CREATE TABLE ManuaisEscolares_Erratas(
	ISBN			BIGINT				NOT NULL,
	ID_Erratas		Integer				NOT NULL,
	CHECK(ISBN>0),
	CHECK(ID_Erratas>0),
	PRIMARY KEY (ID_Erratas),
	FOREIGN KEY(ISBN) REFERENCES ManuaisEscolares,
	FOREIGN KEY(ID_Erratas) REFERENCES Erratas,
)

--CRIACAO DA TABELA CLASSIFICAR
CREATE TABLE Classificar(
	 ISBN BIGINT  NOT NULL,
	 CC   BIGINT NOT NULL,
	 ID_fabricacao  INTEGER NOT NULL,
	 CHECK(CC>0),
	 CHECK(ISBN>0),
	 CHECK(ID_fabricacao>0),
	 PRIMARY KEY (ISBN,ID_fabricacao,CC),
	 FOREIGN KEY (ISBN) REFERENCES ManuaisEscolares,
	 FOREIGN KEY (CC) REFERENCES Pessoas,
	 FOREIGN KEY (ID_fabricacao) REFERENCES tipo_fabricacao,

) 

--CRIACAO DA TABELA EDITORAS
CREATE TABLE Editoras (
    ID_Editoras			INT			NOT NULL,
    Nome_Editoras		VARCHAR(255) NOT NULL,
    Cidade				VARCHAR(255)	NOT NULL,
    Total_Vendas		DECIMAL(10, 2)	NOT NULL,
	CHECK(ID_Editoras>0),
	CHECK(Total_Vendas>0),
	PRIMARY KEY(ID_Editoras),
)

--CRIACAO DA TABELA VENDER
CREATE TABLE Vender(
    ID_Paises            Integer            NOT NULL    IDENTITY(1,1), 
    ID_Editoras            Integer            NOT NULL,
    Data_Vendas					DATE,
    Quantidade            Integer     NOT NULL ,
    Preco_Unitario        FLOAT  NOT NULL,
	CHECK(ID_Editoras>0),
    CHECK(Preco_Unitario>0),
	CHECK(Quantidade>0),
    PRIMARY KEY(ID_Paises,ID_Editoras),
    FOREIGN KEY(ID_Paises) REFERENCES Paises,
    FOREIGN KEY(ID_Editoras) REFERENCES Editoras,
)

--CRIACAO DA TABELA FORMANDOS
CREATE TABLE Formandos(
    CC              BIGINT            NOT NULL,
    formacao        VARCHAR(50)        NOT NULL,
    idade            Integer            NOT NULL,
    CHECK(idade>0),
	CHECK(CC>0),
    PRIMARY KEY(CC),
    FOREIGN KEY(CC) REFERENCES Pessoas,
)

--CRIACAO DA TABELA FORMADORES
CREATE TABLE Formadores (

	CC BIGINT       NOT NULL,
    Nivel INTEGER	NOT NULL,
	CHECK(CC>0),
	CHECK(Nivel>0),
	PRIMARY KEY(CC) ,
	FOREIGN KEY (CC) REFERENCES Pessoas,
)

--CRIACAO DA TABELA FORMACAO
CREATE TABLE Formacao(
    Data_formacao        DATE,
    ISBN                BIGINT        NOT NULL,
    CC                   BIGINT       NOT NULL,
    preco                FLOAT        NOT NULL,
    CHECK(preco>0),
	CHECK(CC>0),
	CHECK(ISBN>0),
    PRIMARY KEY(ISBN, CC, Data_formacao),
    FOREIGN KEY(ISBN) REFERENCES ManuaisEscolares,
    FOREIGN KEY(CC) REFERENCES Pessoas,
)

--CRIACAO DA TABELA PRODUZIR
CREATE TABLE Produzir(
    Data_Producao        DATE,
    ISBN                BIGINT            NOT NULL,
    ID_Editoras            Integer            NOT NULL,
    Custo_Unitario        FLOAT            NOT NULL,
    Quantidade            Integer            NOT NULL,
    CHECK(Custo_Unitario>0),
    CHECK(Quantidade>0),
	CHECK(ISBN>0),
	CHECK(ID_EDITORAS>0),
    PRIMARY KEY (Data_Producao, ISBN, ID_Editoras),
    FOREIGN KEY (ISBN) REFERENCES ManuaisEscolares,
    FOREIGN KEY (ID_Editoras) REFERENCES Editoras,
)
