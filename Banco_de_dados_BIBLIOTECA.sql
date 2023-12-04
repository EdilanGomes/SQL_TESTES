
-- 	O banco de dados da biblioteca guarda informações sobre os livros de maneira organizada, 
-- facilitando o acesso e a compreensão das informações.



create database Biblioteca;
use Biblioteca;

CREATE TABLE tbl_autor
( 
	id_autor INT PRIMARY KEY,
	nome_autor VARCHAR(50)  NOT NULL,
	sobrenome_autor VARCHAR(50) NOT NULL
);


--  Cria a tabela de editoras

CREATE TABLE tbl_editora
(
	id_editora INT PRIMARY KEY,
    	nome_editora VARCHAR(30) NOT NULL
); 


-- Cria a tabela livro

CREATE TABLE tbl_livro 
(
	id_livro INT PRIMARY KEY,
    nome_livro VARCHAR(100) NOT NULL,
   	id_autor INT NOT NULL,
  	id_editora INT NOT NULL,
    data_pub DATE,
    	FOREIGN KEY (id_autor) REFERENCES tbl_autor(id_autor),
    	FOREIGN KEY (id_editora) REFERENCES tbl_editora(id_editora)
);


-- Inserindo dados na tabela autor

INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (1, 'Machado', 'de Assis');

INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (2, 'Guimaraes', 'Rosa');
       
INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (3, 'Jose', 'de Alencar');
       
INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (4, 'Graciliano', 'Ramos');

INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (5, 'Clarice', 'Lispector');

INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (6, 'Jorge', 'Amado');

INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (7, 'Cecilia', 'Meireles');

INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (8, 'Mario', 'de Andrade');

INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (9, 'Ariano', 'Suassuna');

INSERT INTO tbl_autor(id_autor, nome_autor, sobrenome_autor)
VALUES (10, 'Manoel', 'Bandeira');


-- Inserindo dados na tabela editora

INSERT INTO tbl_editora(id_editora, nome_editora)
VALUES (1, 'Arqueiro');

INSERT INTO tbl_editora(id_editora, nome_editora)
VALUES (2, 'Companhia das Letras');

INSERT INTO tbl_editora(id_editora, nome_editora)
VALUES (3, 'Aleph');

INSERT INTO tbl_editora(id_editora, nome_editora)
VALUES (4, 'Intrinseca');

INSERT INTO tbl_editora(id_editora, nome_editora)
VALUES (5, 'Leya');

INSERT INTO tbl_editora(id_editora, nome_editora)
VALUES (6, 'Saraiva');

INSERT INTO tbl_editora(id_editora, nome_editora)
VALUES (7, 'Sextante');


-- Inserindo dados na tabela livro

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (1, 'Dom Casmurro', 1, 1, '1899-02-10');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (2, 'O Alienista', 1, 2, '1882-03-15');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (3, 'Quincas Borba', 1, 1, '1891-05-22');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (4, 'O Espelho', 1, 3, '1882-03-01');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (5, 'A Cartomante', 1, 4, '1884-04-18');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (6, 'Grande Sertão: Veredas', 2, 5, '1956-01-01');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (7, 'Sagarana', 2, 6, '1946-05-02');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (8, 'Campo Geral', 2, 7, '1964-10-12');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (9, 'A terceira margem do rio', 2, 1, '1962-07-04');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (10, 'Corpo de Baile', 2, 2, '1956-11-12');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (11, 'Iracema', 3, 3, '1865-04-04');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (12, 'Senhora', 3, 4, '1875-08-16');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (13, 'O Guarani', 3, 2, '1857-03-15');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (14, 'Luciola', 3, 3, '1862-05-03');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (15, 'Cinco Minutos', 3, 7, '1856-01-25');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (16, 'Vidas Secas', 4, 7, '1938-01-16');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (17, 'Angustia', 4, 6, '1936-03-04');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (18, 'Infancia', 4, 6, '1945-07-16');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (19, 'Memorias do Carcere', 4, 5, '1953-10-10');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (20, 'A Terra dos Meninos Pelados', 4, 5, '1939-05-04');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (21, 'A Hora da Estrela', 5, 2, '1977-08-01');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (22, 'Todos os Contos', 5, 3, '2015-02-02');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (23, 'Felicidade Clandestina', 5, 4, '1971-11-15');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (24, 'Agua Viva', 5, 1, '1973-06-07');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (25, 'Lacos de  Familia', 5, 5, '1960-04-27');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (26, 'Capitaes da Areia', 6, 4, '1937-05-05');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (27, 'Gabriela Cravo e Canela', 6, 4, '1958-12-04');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (28, 'Dona Flor e Seus Dois Maridos', 6, 2, '1966-07-07');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (29, 'Cacau', 6, 5, '1933-02-14');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (30, 'Tenda dos Milagres', 6, 5, '1969-12-15');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (31, 'Ou isto ou aquilo', 7, 6, '1964-02-01');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (32, 'Romanceiro da Inconfidencia', 7, 6, '1953-06-14');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (33, 'O Menino Azul', 7, 7, '2004-11-18');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (34, 'Espectros', 7, 1, '1919-10-20');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (35, 'As palavras voam', 7, 2, '2005-01-16');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (36, 'Macunaima', 8, 3, '1928-08-28');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (37, 'Pauliceia Desvairada', 8, 3, '1922-03-03');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (38, 'Amar, Verbo Intransitivo', 8, 2, '1927-08-05');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (39, 'Contos Novos', 8, 1, '1947-11-12');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (40, 'Remate de Males', 8, 4, '1930-11-05');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (41, 'Uma mulher vestida de sol', 9, 7, '1964-03-18');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (42, 'A farsa da boa preguiça', 9, 7, '1961-05-31');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (43, 'A pena e a lei', 9, 6, '1971-04-16');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (44, 'O castigo da soberba', 9, 6, '1952-02-05');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (45, 'O casamento suspeitoso', 9, 5, '1961-05-17');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (46, 'Estrela da Vida Inteira', 10, 4, '1966-01-04');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (47, 'A cinza das Horas', 10, 3, '1917-04-15');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (48, 'Belo Belo', 10, 2, '1948-09-03');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (49, 'Antologia Poetica', 10, 2, '1984-06-16');

INSERT INTO tbl_livro(id_livro, nome_livro, id_autor, id_editora, data_pub)
VALUES (50, 'Itinerario de Pasargada', 10, 1, '1954-02-14');



-- Comando para acessar a tabela:

use Biblioteca;
select * from tbl_livro;

																	
                             
