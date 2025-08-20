---PROVA LUANA CRUZ - DATA: 20/08/2025--

INSERT INTO Atores (IdAtor, PrimeiroNome, UltimoNome, Genero) VALUES
(1, 'João', 'Silva', 'M'),
(2, 'Maria', 'Oliveira', 'F'),
(3, 'Carlos', 'Santos', 'M'),
(4, 'Ana', 'Costa', 'F'),
(5, 'Pedro', 'Almeida', 'M');


INSERT INTO Filmes (IdFilme, Nome, Ano, Duracao) VALUES
(1, 'O Mistério da Serra', 2020, 120),
(2, 'A Grande Viagem', 2021, 140),
(3, 'Heróis do Futuro', 2019, 130),
(4, 'Amor em Paris', 2022, 115),
(5, 'Sombras da Noite', 2023, 125);


INSERT INTO Generos (IdGenero, Genero) VALUES
(1, 'Ação'),
(2, 'Drama'),
(3, 'Romance'),
(4, 'Comédia'),
(5, 'Suspense');

INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES
(1,5,1),
(2,2,1),
(3,1,2),
(4,2,2),
(5,1,3),
(6,3,4),
(7,4,4),
(8,5,5);

INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES
(1, 1, 1, 'Detetive'),
(2, 2, 1, 'Jornalista'),
(3, 3, 2, 'Explorador'),
(4, 4, 2, 'Guia'),
(5, 5, 3, 'Herói'),
(6, 2, 4, 'Protagonista'),
(7, 1, 5, 'Vilão'),
(8, 4, 5, 'Protagonista');

