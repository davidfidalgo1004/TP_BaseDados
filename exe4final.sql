Use Pessoas
GO

-----------------EXERCICIO 4--------------------------------------------------
CREATE TRIGGER VERIFICAFORMANDO
ON formacao
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO Formacao
    SELECT *
    FROM inserted
    WHERE inserted.CC_Formandos NOT IN (
        SELECT F.CC_Formandos
        FROM Formacao F
        WHERE F.CC_Formandos = inserted.CC_Formandos AND
              F.Data_Formacao BETWEEN DATEADD(DAY, -7, inserted.Data_Formacao) AND DATEADD(DAY, 7, inserted.Data_Formacao)
    )
END;

--Prova que nao entra na base de dados, executar o seguinte codigo
INSERT INTO Formacao(Data_Formacao, ISBN, CC_Formadores, CC_Formandos, preco)
VALUES('15 May 2024', 3491270634913, 34850311149, 43894120385, 100.80)

--Este faz insert
INSERT INTO Formacao(Data_Formacao, ISBN, CC_Formadores, CC_Formandos, preco)
VALUES('20 May 2024', 3491270634913, 34850311149, 43894120385, 100.80)

select * from Formacao
