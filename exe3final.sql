USE Pessoas
Go

-----------------------------------EXERCICIO 3-----------------------------------------------------------------------------
-----------------------------------EXERCICIO 3-----------------------------------------------------------------------------
CREATE PROCEDURE formandoporformador @cc_formador BIGINT, @valortotal FLOAT OUTPUT
AS
	BEGIN
		DECLARE @data_hoje DATE
		DECLARE @data_ano_atras DATE
		SET @data_hoje = GETDATE()
		SET @data_ano_atras = DATEADD(YEAR, -1, @data_hoje)
		SET @valortotal = 0
		SELECT COUNT(DISTINCT ff.CC_Formandos) AS Quantidade_Alunos
		FROM Formadores F, Formacao ff
		WHERE f.CC_Formadores = @cc_formador AND
			  f.CC_Formadores= ff.CC_Formadores AND
			  ff.Data_formacao BETWEEN @data_ano_atras AND @data_hoje
		SELECT @valortotal=SUM(ff.preco)
		FROM Formadores f, Formacao ff
		WHERE f.CC_Formadores = @cc_formador AND
			  f.CC_Formadores= ff.CC_Formadores AND
			  ff.Data_formacao BETWEEN @data_ano_atras AND @data_hoje
	END

DECLARE @valor FLOAT
EXECUTE formandoporformador 14111111149, @valor OUTPUT
SELECT @valor AS ValorTotalPago

--

CREATE PROCEDURE formandoporformador2 @cc_formador BIGINT
AS
	BEGIN
		
		DECLARE @data_hoje DATE
		DECLARE @data_ano_atras DATE
		SET @data_hoje = GETDATE()
		SET @data_ano_atras = DATEADD(YEAR, -1, @data_hoje)

		SELECT COUNT(DISTINCT ff.CC_Formandos) AS Quantidade_Alunos
		FROM Formadores F, Formacao ff
		WHERE f.CC_Formadores = @cc_formador AND
			  f.CC_Formadores= ff.CC_Formadores AND
			  ff.Data_formacao BETWEEN @data_ano_atras AND @data_hoje
		return (SELECT SUM(ff.preco)
		FROM Formadores f, Formacao ff
		WHERE f.CC_Formadores = @cc_formador AND
			  f.CC_Formadores= ff.CC_Formadores AND
			  ff.Data_formacao BETWEEN @data_ano_atras AND @data_hoje)
		
	END

DECLARE @valor FLOAT
EXECUTE @valor=formandoporformador2 14111111149
SELECT @valor AS ValorTotalPago
