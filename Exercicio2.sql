---2.1-------------------------------------------------------------
SELECT TOP 1 Vender.ISBN, ManuaisEscolares.Titulo, Vender.Data_Vendas, Paises.Nome_Paises
FROM Vender
JOIN ManuaisEscolares ON Vender.ISBN = ManuaisEscolares.ISBN
JOIN Paises ON Vender.ID_Paises = Paises.ID_Paises
ORDER BY Vender.Data_Vendas ASC;
---------------
--------------------------------------2.2---------------------------------------
SELECT Editoras.Nome_Editoras, Editoras.Cidade, COUNT(DISTINCT Produzir.ISBN) AS N_Manuais
FROM Produzir
JOIN Editoras ON Produzir.ID_Editoras = Editoras.ID_Editoras
GROUP BY Editoras.Nome_Editoras, Editoras.Cidade;
----------------------------------2.3--------------------------------------------
SELECT Pessoas.Nome_Pessoas, Pessoas.Telefone
FROM Formadores
JOIN Pessoas ON Formadores.CC_Formadores = Pessoas.CC
JOIN Viver ON Pessoas.CC = Viver.CC
JOIN Paises ON Viver.ID_Paises = Paises.ID_Paises
WHERE Paises.Criador = 'sim';
--------------------------------2.4---------------------------------------------
SELECT Pessoas.Nome_Pessoas, COUNT(Formacao.CC_Formandos) AS Total_Formacoes
FROM Formacao
JOIN Pessoas ON Formacao.CC_Formandos = Pessoas.CC
WHERE Formacao.Data_Formacao >= DATEADD(YEAR, -2, GETDATE())
GROUP BY Pessoas.Nome_Pessoas
ORDER BY Total_Formacoes DESC;
----------------------2.5---------------------------------------------
SELECT ManuaisEscolares.Titulo, Editoras.Nome_Editoras
FROM ManuaisEscolares
JOIN Produzir ON ManuaisEscolares.ISBN = Produzir.ISBN
JOIN Editoras ON Produzir.ID_Editoras = Editoras.ID_Editoras
LEFT JOIN Vender ON ManuaisEscolares.ISBN = Vender.ISBN
WHERE Vender.ISBN IS NULL
ORDER BY Editoras.Nome_Editoras, ManuaisEscolares.Titulo;
