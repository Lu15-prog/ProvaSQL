CREATE TABLE Atores(
IdAtor INT PRIMARY KEY,
PrimeiroNome VARCHAR(20),
UltimoNome VARCHAR(20),
Genero VARCHAR(1)
);

CREATE TABLE Filmes(
IdFilme INT PRIMARY KEY,
Nome VARCHAR(50),
Ano INT,
Duracao INT
);

CREATE TABLE Generos(
IdGenero INT PRIMARY KEY,
Genero VARCHAR(20)
);

CREATE TABLE FilmesGenero(
Id INT PRIMARY KEY,
IdGenero INT,
FOREIGN KEY (IdGenero) REFERENCES Generos(IdGenero),
IdFilme INT,
FOREIGN KEY (IdFilme) REFERENCES Filmes(IdFilme)
);

CREATE TABLE ElencoFilme(
Id INT PRIMARY KEY,
IdAtor INT,
FOREIGN KEY (IdAtor) REFERENCES Atores(IdAtor),
IdFilme INT,
FOREIGN KEY (IdFilme) REFERENCES Filmes(IdFilme),
Papel VARCHAR(30)
);

