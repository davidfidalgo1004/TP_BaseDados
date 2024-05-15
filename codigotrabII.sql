USE TRABALHO
GO

INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('4800-000', 'Vila Real')
INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('4520-000', 'Santa Maria da Feira')
INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('3700-000', 'Oliveira Azemeis')
INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('4900-543', 'Vila Real')
INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('3700-512', 'SJ Madeira')
INSERT INTO Endereco (End_CodigoPostal, End_Localidade)
VALUES ('4800-102', 'Vila Real')

INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (14111111149, 'Leonor Pinto',  '04 March 2004', 910000000,  '4800-000', 'Rua das 4 casas')-- FORMADORA
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (34850311149, 'Maria Andrade',  '08 October 2004', 920000000,  '4520-000', 'Rua das 5 casas') --FORMADORA
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (90097140172, 'Raquel Tavares',  '14 January 2004', 933333333,  '3700-000', 'Rua das flores') --FORMANDO
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (14412315809, 'Matilde Coelho',  '28 February 2004', 944444444,  '4900-543', 'Avenida Liberdade') --FORMANDO
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (65894290193, 'David Fidalgo',  '10 February 2004', 966666666,  '3700-512', 'Avenida Dr Renato Araujo') --FORMADOR
INSERT INTO Pessoas (CC, Nome_Pessoas, Data_Nasc, Telefone, End_CodigoPostal, End_Morada)
VALUES (43894120385, 'Lara Esteves',  '25 May 2004', 988888888,  '4800-102', 'Rua das Rosas') --FORMANDO

INSERT INTO Formandos(CC, formacao, idade)
VALUES(90097140172, 'Esteticista', 5)
INSERT INTO Formandos(CC, formacao, idade)
VALUES(14412315809, 'Engenharia Informatica', 3)
INSERT INTO Formandos(CC, formacao, idade)
VALUES(43894120385, 'Enfermagem', 4)

INSERT INTO Formadores(CC, Nivel)
VALUES(14111111149, 5)
INSERT INTO Formadores(CC, Nivel)
VALUES(34850311149, 2)
INSERT INTO Formadores(CC, Nivel)
VALUES(65894290193, 8)


SELECT * FROM Pessoas
SELECT * FROM Endereco
SELECT * FROM Formandos
SELECT * FROM Formadores