CREATE DATABASE videojuegos;
USE videojuegos;

CREATE TABLE Genero (
    idGenero INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Desarrollador (
    idDesarrollador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Plataforma (
    idPlataforma INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Juego (
    idJuego INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    fechaLanzamiento DATE,
    idGenero INT,
    FOREIGN KEY (idGenero) REFERENCES Genero(idGenero)
);

CREATE TABLE JuegoPlataforma (
    idJuego INT,
    idPlataforma INT,
    PRIMARY KEY (idJuego, idPlataforma),
    FOREIGN KEY (idJuego) REFERENCES Juego(idJuego),
    FOREIGN KEY (idPlataforma) REFERENCES Plataforma(idPlataforma)
);

CREATE TABLE Resena (
    idResena INT AUTO_INCREMENT PRIMARY KEY,
    idJuego INT,
    calificacion INT,
    comentario TEXT,
    FOREIGN KEY (idJuego) REFERENCES Juego(idJuego)
);

INSERT INTO Genero (nombre) VALUES ('Acción'), ('Aventura'), ('RPG'), ('Estrategia'), ('Deportes');

INSERT INTO Desarrollador (nombre) VALUES ('Nintendo'), ('Ubisoft'), ('EA Sports'), ('Rockstar Games'), ('Activision');

INSERT INTO Plataforma (nombre) VALUES ('PC'), ('PlayStation'), ('Xbox'), ('Switch');

INSERT INTO Juego (titulo, fechaLanzamiento, idGenero) VALUES 
('FIFA 23', '2022-09-27', 5),
('Call of Duty: Modern Warfare II', '2022-10-28', 1),
('The Legend of Zelda: Breath of the Wild', '2017-03-03', 2),
('Grand Theft Auto V', '2013-09-17', 1),
('Fortnite', '2017-07-25', 1);

INSERT INTO JuegoPlataforma (idJuego, idPlataforma) VALUES 
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2), (2, 3),
(3, 4),
(4, 1), (4, 2), (4, 3),
(5, 1), (5, 2), (5, 3), (5, 4);

INSERT INTO Resena (idJuego, calificacion, comentario) VALUES 
(1, 9, 'Excelente simulador de fútbol.'),
(2, 8, 'Acción intensa y realista.'),
(3, 10, 'Una aventura épica y envolvente.'),
(4, 9, 'Un clásico del mundo abierto.'),
(5, 8, 'Muy divertido y adictivo.');
