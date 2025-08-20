--- CONSULTAS:
--1)Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes


--2)Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;


--3) Buscar pelo filme de volta 
--para o futuro, trazendo o nome, ano e a duração
INSERT INTO Filmes (IdFilme, Nome, Ano, Duracao) VALUES
(6, 'De Volta Para o Futuro', 1985, 156);

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome LIKE '%Volta%';


--4) Buscar os filmes lançados em 1997
INSERT INTO Filmes (IdFilme, Nome, Ano, Duracao) VALUES 
(7, 'Titanic', 1997, 195),
(8, 'Homens de Preto', 1997, 98);

SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;


--5) Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;


--6) Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;


--7) Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano,
COUNT(*) AS QntdFilmes,
MAX(Duracao) AS MaiorDuracao
FROM Filmes 
GROUP BY Ano
ORDER BY MaiorDuracao DESC;


--8) Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';


--9) Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;


--10) Buscar o nome do filme e o gênero
SELECT F.Nome AS Filme, 
G.Genero
FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.IdFilme = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.IdGenero;


--11) Buscar o nome do filme e o gênero do tipo "Suspense"
SELECT F.Nome AS Filme,
G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.IdFilme = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.IdGenero
WHERE G.Genero = 'Suspense';


--12) Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome AS Filme,
A.PrimeiroNome,
A.UltimoNome,
E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.IdFilme = E.IdFilme
INNER JOIN Atores A ON A.IdAtor = E.IdAtor;
