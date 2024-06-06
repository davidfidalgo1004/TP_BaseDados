--exer 2.1
--Qual foi o 1º manual vendido? [ISBN, Título, Data, País (nome)]
SELECT TOP 1
ME.Titulo, ME.ISBN, V.Data_Vendas, P.Nome_Paises
FROM ManuaisEscolares ME, Vender V, Paises P
	WHERE ME.ISBN=V.ISBN
	AND
	P.ID_Paises= V.ID_Paises

	ORDER BY
	V.Data_Vendas ASC
--2ª SOLUCAO
SELECT ME.Titulo, ME.ISBN, V.Data_Vendas, P.Nome_Paises
FROM ManuaisEscolares ME, Vender V, Paises P
	WHERE ME.ISBN=V.ISBN
	AND
	P.ID_Paises= V.ID_Paises
	AND
	V.Data_Vendas=(SELECT MIN(Data_Vendas) FROM Vender)

--2.2. Quantos manuais já foram produzidos por cada editora? [Editora (nome, cidade), N_Manuais]

SELECT 
    E.Nome_Editoras,
    E.Cidade, 
    SUM(P.Quantidade) AS N_Manuais
FROM 
    Editoras E, Produzir P
WHERE
   E.ID_Editoras = P.ID_Editoras
GROUP BY 
    E.Nome_Editoras, 
    E.Cidade;

--2.3. Que formadores vivem em países criadores? [Pessoas (nome, telefone)]

SELECT P.Nome_Pessoas, P.Telefone

FROM Viver V, Pessoas P, Formadores F, Paises Pa
WHERE V.CC=P.CC AND
	  F.CC_Formadores=P.CC AND
	  V.ID_Paises=Pa.ID_Paises AND
	  Pa.Criador= 'sim';
		

--2.4. Que formandos participaram em mais formações nos últimos 2 anos? [nome, Total Formações] 

SELECT P.Nome_Pessoas, COUNT(F.formacao) AS Total_Formacoes
FROM Formandos F, Pessoas P, Formacao FR
WHERE P.CC=F.CC_Formandos
	AND FR.CC_Formandos=F.CC_Formandos
	AND FR.Data_formacao >= DATEADD(YEAR, -2, GETDATE())
	GROUP BY
	P.Nome_Pessoas
ORDER BY
		Total_Formacoes DESC;


--2.5. Que manuais nunca foram vendidos? [título, editora (nome)]. Apresente-os ordenados pela editora e pelo título. 
SELECT 
    ME.Titulo, 
    E.Nome_Editoras
FROM 
    Editoras E, 
    ManuaisEscolares ME, 
    Produzir P
WHERE 
    P.ISBN = ME.ISBN 
    AND P.ID_Editoras = E.ID_Editoras 
    AND ME.ISBN NOT IN (SELECT V.ISBN FROM Vender V)
ORDER BY 
    E.Nome_Editoras, 
    ME.Titulo;
