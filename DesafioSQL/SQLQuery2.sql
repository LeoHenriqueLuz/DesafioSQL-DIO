-- 1 Buscar o Nome e Ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2 buscar o Nome e Ano dos filmes, ordenados por ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY(Ano)

-- 3 Buscar pelo filme de volta para futuro, trazendo o Nome, Ano e Dura��o
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE 'De volta para o Futuro'

-- Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = '1997'

-- 5 Buscar os filmes lancados ap�s o ano de 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > '2000'

-- 6 Buscar os filmes com a dura��o maior que 100 e menor que 150 , ordenando pela dura��o em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY(Duracao) ASC

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

--8 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 Buscar o nome do filme e o g�nero
SELECT FLM.Nome, GN.Genero 
FROM Filmes FLM
INNER JOIN FilmesGenero FG on FLM.Id = FG.IdFilme
INNER JOIN Generos GN on FG.IdGenero = GN.Id

-- 11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT FLM.Nome, GN.Genero 
FROM Filmes FLM
INNER JOIN  FilmesGenero FG on FLM.Id = FG.IdFilme
INNER JOIN  Generos GN on FG.IdGenero = GN.Id
WHERE Genero LIKE 'mist�rio'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT FLM.Nome, ATR.PrimeiroNome, ATR.UltimoNome, ELF.Papel 
FROM Filmes FLM
INNER JOIN ElencoFilme ELF on FLM.Id = ELF.IdFilme
INNER JOIN Atores ATR on ELf.IdAtor = ATR.Id






