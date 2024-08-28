-- CONSULTA 1:
SELECT
    Nome,
    Ano
FROM Filmes;

-- CONSULTA 2:
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
ORDER BY Ano ASC;

-- CONSULTA 3:
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- CONSULTA 4:
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano = '1997';

-- CONSULTA 5:
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano > '2000';

-- CONSULTA 6:
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150;

-- CONSULTA 7:
SELECT
    Ano,
    COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- CONSULTA 8:
SELECT
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'M';

-- CONSULTA 9:
SELECT
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- CONSULTA 10:
SELECT
    F.Nome,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN Generos G ON G.Id = FG.IdGenero;

-- CONSULTA 11:
SELECT
    F.Nome,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério';

-- CONSULTA 12:
SELECT
    F.Nome,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON EF.IdFilme = F.Id
INNER JOIN Atores A ON A.Id = EF.IdAtor;