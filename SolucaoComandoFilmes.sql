-- 1 - Buscar o nome e ano dos filmes
SELECT 
	Nome,
	Ano
FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Nome LIKE '%De Volta para o futuro%';

-- 4 - Buscar os filmes lançados em 1997
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
    Ano,
    COUNT(Nome) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
    Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero LIKE 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
    Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero LIKE 'F'
ORDER BY PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero
SELECT 
    filmes.Nome,
    generos.Genero
FROM  
    Filmes AS filmes
INNER JOIN FilmesGenero AS filmeGenero
    ON filmes.Id = filmeGenero.IdFilme
INNER JOIN Generos AS generos
    ON generos.Id = filmeGenero.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
    filmes.Nome,
    generos.Genero
FROM  
    Filmes AS filmes
INNER JOIN FilmesGenero AS filmeGenero
    ON filmes.Id = filmeGenero.IdFilme
INNER JOIN Generos AS generos
    ON generos.Id = filmeGenero.IdGenero
WHERE generos.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
    filmes.Nome,
    atores.PrimeiroNome,
    atores.UltimoNome,
    elenco.Papel
FROM 
    Filmes AS filmes
INNER JOIN ElencoFilme AS elenco
    ON filmes.Id = elenco.IdFilme
INNER JOIN Atores AS atores
    ON atores.Id = elenco.IdAtor;