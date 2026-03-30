CREATE DATABASE DB_T2_VITOR_PIRES; 
USE DB_T2_VITOR_PIRES;
CREATE TABLE NOVELA (
ID INT AUTO_INCREMENT PRIMARY KEY,
`NAME` VARCHAR(100),
`YEAR` INT,
GENRE VARCHAR(100),
AUDIENCE VARCHAR(100)
);
CREATE TABLE ACTOR (
ID INT AUTO_INCREMENT PRIMARY KEY,
`NAME` VARCHAR(100),
AGE INT,
CHARACTER_NAME VARCHAR(100),
SALARY INT
);
CREATE TABLE BROADCASTER (
ID INT AUTO_INCREMENT PRIMARY KEY,
`NAME` VARCHAR(100),
COUNTRY VARCHAR(100),
FOUNDATION_YEAR INT
);
INSERT INTO NOVELA (`NAME`,`YEAR`,GENRE, AUDIENCE)
VALUES ('Avenida Brasil', '2012', 'DRAMA', 'ALTA'),
('O Clone', '2001', 'Romance', 'ALTA'),
('CHIQUITITAS', '1997', 'Infantil', 'ALTA'),
('Salve Jorge', '2012', 'Ação', 'MÉDIA'),
('Senhora do Destino', '2004', 'Drama', 'ALTA');
INSERT INTO ACTOR (`NAME`, AGE, CHARACTER_NAME, SALARY)
VALUES 
('Marcos Palmeira', 52, 'José Leôncio', 50000),
('Tony Ramos', 74, 'Tieta', 80000),
('Regina Duarte', 76, 'Helena', 90000),
('Giovanna Antonelli', 47, 'Clara', 70000),
('Murilo Benício', 51, 'Petruchio', 60000);
UPDATE ACTOR SET `NAME` = 'Adriana Esteves', AGE = 54, CHARACTER_NAME = 'Carminha', SALARY = 80000 WHERE ID = 1;
UPDATE ACTOR SET `NAME` = 'Murilo Benicio', AGE = 74, CHARACTER_NAME = 'Diogo', SALARY = 70000 WHERE ID = 2;
UPDATE ACTOR SET `NAME` = 'Giovanna Antonelli', AGE = 47, CHARACTER_NAME = 'Jade', SALARY = 90000 WHERE ID = 3;
UPDATE ACTOR SET `NAME` = 'Dira Paes', AGE = 57, CHARACTER_NAME = 'Perséfone', SALARY = 50000 WHERE ID = 4;
UPDATE ACTOR SET `NAME` = 'Susava Vieira', AGE = 49, CHARACTER_NAME = 'Maria do Carmo', SALARY = 75000 WHERE ID = 5;
INSERT INTO BROADCASTER (`NAME`, COUNTRY, FOUNDATION_YEAR)
VALUES ('Globo', 'Brasil', '1965'),
('SBT', 'Brasil', '1981'),
('Record', 'Brasil', '1953'),
('Band', 'Brasil', '1960'),
('RedeTV', 'Brasil', 1999);
INSERT INTO NOVELA 
VALUES (null,'Mulheres Apaixonadas', 2003, 'Drama', 'Alta'),
(null,'América', 2005, 'Romance', 'Alta'),
(null,'Paraíso Tropical', 2007, 'Drama', 'Média'),
(null,'Caminho das Índias', 2009, 'Romance', 'Alta'),
(null,'Fina Estampa', 2011, 'Comédia', 'Alta');
INSERT INTO ACTOR
VALUES (NULL, 'Tony Ramos', 74, 'Marcos', 80000),
(NULL, 'Glória Pires', 60, 'Luana', 90000),
(NULL, 'Taís Araújo', 45, 'Camila', 75000),
(NULL, 'Rodrigo Lombardi', 47, 'Tarantino', 85000),
(NULL, 'Lília Cabral', 60, 'Griselda', 80000);
INSERT INTO BROADCASTER
VALUES (NULL, 'TV Cultura', 'Brasil', 1960),
(NULL, 'TV Brasil', 'Brasil', 2007),
(NULL, 'Multishow', 'Brasil', 1991),
(NULL, 'GNT', 'Brasil', 1991),
(NULL, 'Canal Brasil', 'Brasil', 1998);
SELECT AGE FROM ACTOR;
SELECT `YEAR` FROM NOVELA ORDER BY YEAR ASC









