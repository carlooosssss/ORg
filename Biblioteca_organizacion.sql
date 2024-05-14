DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca
CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
USE biblioteca;
CREATE TABLE libros(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR (50),
    Isbn VARCHAR(13),
    Año_publicacion DATE,
    Precio DOUBLE
);


CREATE TABLE Autores(
	id INT AUTO_INCREMENT PRIMARY KEY,
    Autor VARCHAR (50)
);

CREATE TABLE intertable(
	id_intertable INT AUTO_INCREMENT PRIMARY KEY,
    intertable_libro INT,
    intertable_autor INT,
	FOREIGN KEY (intertable_libro) REFERENCES libros(codigo),
    FOREIGN KEY (intertable_autor) REFERENCES Autores(id)
);