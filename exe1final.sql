USE Pessoas
GO

--Mostrar Tabelas
SELECT * FROM Pessoas
SELECT * FROM Endereco
SELECT * FROM Formandos
SELECT * FROM Formadores
SELECT * FROM ManuaisEscolares
SELECT * FROM Produzir
SELECT * FROM Viver
SELECT * FROM Vender
SELECT * FROM Erratas
SELECT * FROM ManuaisEscolares_Erratas
SELECT * FROM Formacao
SELECT * FROM Editoras
SELECT * FROM tipo_fabricacao
SELECT * FROM Classificar
SELECT * FROM Paises
-----------------------------------------------EXERCICIO 1--------------------------------------------------------------------------------------------
-- Inserir, PELO MENOS, 3 elementos em cada tabela da base de dados
--Inserçao de dados na tabela endereço
INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('5000-000', 'Vila Real')
INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('4520-000', 'Santa Maria da Feira')
INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('3700-000', 'SJ Madeira')


--Inserção de dados na tabela Pessoas
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (14111111149, 'Leonor Pinto',  '04 March 2004', 910000000,  '5000-000', 'Rua das 4 casas')-- FORMADORA
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (34850311149, 'Maria Andrade',  '08 October 2004', 920000000,  '4520-000', 'Rua das 5 casas') --FORMADORA
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (90097140172, 'Raquel Tavares',  '14 January 2004', 933333333,  '3700-000', 'Rua das flores') --FORMANDO
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (14412315809, 'Matilde Coelho',  '28 February 2004', 944444444,  '5000-000', 'Avenida Liberdade') --FORMANDO
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (65894290193, 'David Fidalgo',  '10 February 2004', 966666666,  '3700-000', 'Avenida Dr Renato Araujo') --FORMADOR
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (43894120385, 'Lara Esteves',  '25 May 2004', 988888888,  '5000-000', 'Rua das Rosas') --FORMANDO

--Inserçao de dados na tabela Formandos
INSERT INTO Formandos(CC_Formandos, formacao, idade)
VALUES(90097140172, 'Esteticista', 5)
INSERT INTO Formandos(CC_Formandos, formacao, idade)
VALUES(14412315809, 'Engenharia Informatica', 3)
INSERT INTO Formandos(CC_Formandos, formacao, idade)
VALUES(43894120385, 'Enfermagem', 4)



--Inserção de dados na tabela Formadores
INSERT INTO Formadores(CC_Formadores, Nivel)
VALUES(14111111149, 5)
INSERT INTO Formadores(CC_Formadores, Nivel)
VALUES(34850311149, 2)
INSERT INTO Formadores(CC_Formadores, Nivel)
VALUES(65894290193, 8)

--Inserção de dados na tabela ManuaisEscolares
INSERT INTO ManuaisEscolares(ISBN,Titulo,AnoEscolar,Edicao)
VALUES(0942893058025, 'As 3 Marias', 7, 2)
INSERT INTO ManuaisEscolares(ISBN,Titulo,AnoEscolar,Edicao)
VALUES(0942893061047, 'Alfa: Livro Portugues', 1, 5)		---
INSERT INTO ManuaisEscolares(ISBN,Titulo,AnoEscolar,Edicao)
VALUES(3491270634913, 'Alfa: Livro Matemática', 1, 8)		---
INSERT INTO ManuaisEscolares(ISBN,Titulo,AnoEscolar,Edicao)
VALUES(8947238984120, 'Alfa: Livro Estudo do Meio', 2, 3)	---
INSERT INTO ManuaisEscolares(ISBN,Titulo,AnoEscolar,Edicao)
VALUES(4239590252892, 'Expressões 11: Matemática A', 11, 1) --
INSERT INTO ManuaisEscolares(ISBN,Titulo,AnoEscolar,Edicao)
VALUES(9014809183184, 'Biologia Geologia 10', 10, 4) --
INSERT INTO ManuaisEscolares(ISBN,Titulo,AnoEscolar,Edicao)
VALUES(3129798457239, 'Novo 10F: Fisica & Quimica', 10, 3)

--Inserção de dados na tabela Editoras
INSERT INTO Editoras(ID_Editoras, Nome_Editoras, Cidade, Total_Vendas)
VALUES(31, 'Porto Editora', 'Porto', 423.43) ---
INSERT INTO Editoras(ID_Editoras, Nome_Editoras, Cidade, Total_Vendas)
VALUES(86, 'ASA Editora', 'Porto', 1028.55) --
INSERT INTO Editoras(ID_Editoras, Nome_Editoras, Cidade, Total_Vendas)
VALUES(93, 'Editorial Planeta', 'Lisboa', 199.10)
INSERT INTO Editoras(ID_Editoras, Nome_Editoras, Cidade, Total_Vendas)
VALUES(15, 'Planeta Tangerina', 'Viseu', 735.91)

--Inserção de dados na tabela Produzir
INSERT INTO Produzir(Data_Producao, ISBN, ID_Editoras, Custo_Unitario, Quantidade)
VALUES('10 May 2020', 0942893061047, 31, 19.99, 100)
INSERT INTO Produzir(Data_Producao, ISBN, ID_Editoras, Custo_Unitario, Quantidade)
VALUES('5 April 2021', 3491270634913, 31, 24.99, 120)
INSERT INTO Produzir(Data_Producao, ISBN, ID_Editoras, Custo_Unitario, Quantidade)
VALUES('19 July 2019', 8947238984120, 31, 22.99, 90)
INSERT INTO Produzir(Data_Producao, ISBN, ID_Editoras, Custo_Unitario, Quantidade)
VALUES('22 July 2022', 4239590252892, 86, 27.99, 150)
INSERT INTO Produzir(Data_Producao, ISBN, ID_Editoras, Custo_Unitario, Quantidade)
VALUES('1 August 2018', 9014809183184, 93, 29.99, 100)
INSERT INTO Produzir(Data_Producao, ISBN, ID_Editoras, Custo_Unitario, Quantidade)
VALUES('15 January 2018', 0942893058025, 15, 20.99, 20)
INSERT INTO Produzir(Data_Producao, ISBN, ID_Editoras, Custo_Unitario, Quantidade)
VALUES('22 March 2023', 3129798457239, 15, 29.99, 150)


--Inserção de dados na tabela Paises
INSERT INTO Paises(ID_Paises, Nome_Paises, Criador)
VALUES(1, 'Espanha', 'sim')
INSERT INTO Paises(ID_Paises, Nome_Paises, Criador)
VALUES(2, 'Portugal', 'nao')
INSERT INTO Paises(ID_Paises, Nome_Paises, Criador)
VALUES(3, 'França', 'sim')


--Inserção de dados na tabela Vender
INSERT INTO Vender(ID_Paises,ID_Editoras, ISBN, Data_Vendas, Quantidade, Preco_Unitario)
VALUES (1,31, 0942893061047, '2023-05-10', 10, 35.99) --
INSERT INTO Vender(ID_Paises,ID_Editoras, ISBN, Data_Vendas, Quantidade, Preco_Unitario)
VALUES (3,86, 4239590252892, '2023-06-30', 49, 31.79) --
INSERT INTO Vender(ID_Paises,ID_Editoras, ISBN, Data_Vendas, Quantidade, Preco_Unitario)
VALUES (2,15, 0942893058025, '2023-08-1', 20, 33.49) --
INSERT INTO Vender(ID_Paises,ID_Editoras, ISBN, Data_Vendas, Quantidade, Preco_Unitario)
VALUES (1, 93, 9014809183184, '2023-08-26', 30, 34.89) --

--Inserção de dados na tabela Viver
INSERT INTO Viver(CC, ID_Paises, Data_Inicio)
VALUES (14111111149, 1, '4 March 2004') --
INSERT INTO Viver(CC, ID_Paises, Data_Inicio, Data_Fim)
VALUES (34850311149, 2, '8 October 2004', '3 April 2015') --
INSERT INTO Viver(CC, ID_Paises, Data_Inicio)
VALUES (90097140172, 3, '14 January 2004')
INSERT INTO Viver(CC, ID_Paises, Data_Inicio)
VALUES (14412315809, 1, '28 February 2004') --
INSERT INTO Viver(CC, ID_Paises, Data_Inicio)
VALUES (65894290193, 2, '10 February 2004')
INSERT INTO Viver(CC, ID_Paises, Data_Inicio)
VALUES (43894120385, 3, '25 May 2004')




--Inserção de dados na tabela tipo_fabricacao
INSERT INTO tipo_fabricacao(ID_fabricacao, Nome_Fabricacao)
VALUES(15, 'Fabricação em lote')
INSERT INTO tipo_fabricacao(ID_fabricacao, Nome_Fabricacao, Descricao)
VALUES(2, 'Fabricação por encomenda', 'Exclusivo Clientes especiais')
INSERT INTO tipo_fabricacao(ID_fabricacao, Nome_Fabricacao)
VALUES(10, 'Fabricação flexível')




--Inserção de dados na tabela Classificar
INSERT INTO Classificar(ISBN, CC, ID_fabricacao)
VALUES(0942893058025, 43894120385, 15)
INSERT INTO Classificar(ISBN, CC, ID_fabricacao)
VALUES(0942893061047, 14412315809, 15)
INSERT INTO Classificar(ISBN, CC, ID_fabricacao)
VALUES(3491270634913, 90097140172, 10)
INSERT INTO Classificar(ISBN, CC, ID_fabricacao)
VALUES(8947238984120, 65894290193, 2)
INSERT INTO Classificar(ISBN, CC, ID_fabricacao)
VALUES(4239590252892, 65894290193, 15)
INSERT INTO Classificar(ISBN, CC, ID_fabricacao)
VALUES(9014809183184, 65894290193, 15)
INSERT INTO Classificar(ISBN, CC, ID_fabricacao)
VALUES(3129798457239, 65894290193, 15)



--Inserção de dados na tabela Erratas
INSERT INTO Erratas(ID_Erratas, Texto)
VALUES(1, 'Pergunta 5 da pagina 59')
INSERT INTO Erratas(ID_Erratas, Texto)
VALUES(2, 'Exclusão da pergunta 10 da pagina 15')
INSERT INTO Erratas(ID_Erratas, Texto)
VALUES(3, 'Erros Ortográficos')




--Inserção de dados na tabela ManuaisEscolares_Erratas
INSERT INTO ManuaisEscolares_Erratas(ISBN, ID_Erratas)
VALUES(0942893061047, 1)
INSERT INTO ManuaisEscolares_Erratas(ISBN, ID_Erratas)
VALUES(9014809183184, 2)
INSERT INTO ManuaisEscolares_Erratas(ISBN, ID_Erratas)
VALUES(3491270634913, 3)


--Inserção de dados na tabela Formacao
INSERT INTO Formacao(Data_Formacao, ISBN, CC_Formadores, CC_Formandos, preco)
VALUES('12 May 2024', 3491270634913, 14111111149, 43894120385, 100.60)
INSERT INTO Formacao(Data_Formacao, ISBN, CC_Formadores, CC_Formandos, preco)
VALUES('15 May 2024', 3491270634913, 34850311149, 90097140172, 100.79)
INSERT INTO Formacao(Data_Formacao, ISBN, CC_Formadores, CC_Formandos, preco)
VALUES('13 May 2024', 9014809183184, 65894290193, 14412315809, 100.90)

