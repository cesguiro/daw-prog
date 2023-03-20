/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para cine
DROP DATABASE IF EXISTS `imdb`;
CREATE DATABASE `imdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci */;
USE `imdb`;

-- imdb.movies definition
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(57) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `image` varchar(161) DEFAULT NULL,
  `id_director` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb3;

ALTER TABLE `movies` AUTO_INCREMENT = 1;

INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Cadena perpetua','1994',9.2,'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',1),
	 ('El padrino','1972',9.2,'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR1,0,45,67_AL_.jpg',4),
	 ('El caballero oscuro','2008',9.0,'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UY67_CR0,0,45,67_AL_.jpg',7),
	 ('El padrino: Parte II','1974',9.0,'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR1,0,45,67_AL_.jpg',10),
	 ('12 hombres sin piedad','1957',8.9,'https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',13),
	 ('La lista de Schindler','1993',8.9,'https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',16),
	 ('El señor de los anillos: El retorno del rey','2003',8.9,'https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',19),
	 ('Pulp Fiction','1994',8.9,'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',22),
	 ('El señor de los anillos: La comunidad del anillo','2001',8.8,'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY67_CR0,0,45,67_AL_.jpg',25),
	 (' El bueno, el feo y el malo','1966',8.8,'https://m.media-amazon.com/images/M/MV5BNjJlYmNkZGItM2NhYy00MjlmLTk5NmQtNjg1NmM2ODU4OTMwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',28);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Forrest Gump','1994',8.8,'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg',31),
	 ('El club de la lucha','1999',8.8,'https://m.media-amazon.com/images/M/MV5BNDIzNDU0YzEtYzE5Ni00ZjlkLTk5ZjgtNjM3NWE4YzA3Nzk3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UY67_CR0,0,45,67_AL_.jpg',34),
	 ('Origen','2010',8.7,'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UY67_CR0,0,45,67_AL_.jpg',37),
	 ('El señor de los anillos: Las dos torres','2002',8.7,'https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',40),
	 ('El Imperio contraataca','1980',8.7,'https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',43),
	 ('Matrix','1999',8.7,'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',46),
	 ('Uno de los nuestros','1990',8.7,'https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',49),
	 ('Alguien voló sobre el nido del cuco','1975',8.6,'https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg',52),
	 ('Seven','1995',8.6,'https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',55),
	 ('Los siete samuráis','1954',8.6,'https://m.media-amazon.com/images/M/MV5BNWQ3OTM4ZGItMWEwZi00MjI5LWI3YzgtNTYwNWRkNmIzMGI5XkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UY67_CR1,0,45,67_AL_.jpg',58);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('¡Qué bello es vivir!','1946',8.6,'https://m.media-amazon.com/images/M/MV5BZjc4NDZhZWMtNGEzYS00ZWU2LThlM2ItNTA0YzQ0OTExMTE2XkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_UY67_CR0,0,45,67_AL_.jpg',61),
	 ('El silencio de los corderos','1991',8.6,'https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',64),
	 ('Ciudad de Dios','2002',8.6,'https://m.media-amazon.com/images/M/MV5BOTMwYjc5ZmItYTFjZC00ZGQ3LTlkNTMtMjZiNTZlMWQzNzI5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',67),
	 ('Salvar al soldado Ryan','1998',8.6,'https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY67_CR0,0,45,67_AL_.jpg',70),
	 ('La vida es bella','1997',8.6,'https://m.media-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX45_CR0,0,45,67_AL_.jpg',73),
	 ('La milla verde','1999',8.6,'https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_UY67_CR0,0,45,67_AL_.jpg',76),
	 ('Interstellar','2014',8.6,'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',79),
	 ('La guerra de las galaxias','1977',8.6,'https://m.media-amazon.com/images/M/MV5BNzg4MjQxNTQtZmI5My00YjMwLWJlMjUtMmJlY2U2ZWFlNzY1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UX45_CR0,0,45,67_AL_.jpg',82),
	 ('Terminator 2: El juicio final','1991',8.5,'https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',85),
	 ('Regreso al futuro','1985',8.5,'https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX45_CR0,0,45,67_AL_.jpg',88);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('El viaje de Chihiro','2001',8.5,'https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',91),
	 ('Psicosis','1960',8.5,'https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',94),
	 ('El pianista','2002',8.5,'https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR2,0,45,67_AL_.jpg',97),
	 ('El profesional (Léon)','Léon',8.5,'https://m.media-amazon.com/images/M/MV5BODllNWE0MmEtYjUwZi00ZjY3LThmNmQtZjZlMjI2YTZjYmQ0XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX45_CR0,0,45,67_AL_.jpg',100),
	 ('Parásitos','2019',8.5,'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UY67_CR0,0,45,67_AL_.jpg',103),
	 ('El rey león','1994',8.5,'https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_UY67_CR0,0,45,67_AL_.jpg',106),
	 ('Gladiator (El gladiador)','El gladiador',8.5,'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',109),
	 ('American History X','1998',8.5,'https://m.media-amazon.com/images/M/MV5BZTJhN2FkYWEtMGI0My00YWM4LWI2MjAtM2UwNjY4MTI2ZTQyXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_UY67_CR0,0,45,67_AL_.jpg',112),
	 ('Sospechosos habituales','1995',8.5,'https://m.media-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',115),
	 ('Infiltrados','2006',8.5,'https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_UY67_CR0,0,45,67_AL_.jpg',118);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('El truco final (El prestigio)','El prestigio',8.5,'https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_UY67_CR0,0,45,67_AL_.jpg',121),
	 ('Casablanca','1942',8.5,'https://m.media-amazon.com/images/M/MV5BY2IzZGY2YmEtYzljNS00NTM5LTgwMzUtMzM1NjQ4NGI0OTk0XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX45_CR0,0,45,67_AL_.jpg',124),
	 ('Whiplash','2014',8.5,'https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',127),
	 ('Intocable','2011',8.5,'https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_UY67_CR0,0,45,67_AL_.jpg',130),
	 ('Tiempos modernos','1936',8.4,'https://m.media-amazon.com/images/M/MV5BYjJiZjMzYzktNjU0NS00OTkxLWEwYzItYzdhYWJjN2QzMTRlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',133),
	 ('Harakiri','1962',8.4,'https://m.media-amazon.com/images/M/MV5BYjBmYTQ1NjItZWU5MS00YjI0LTg2OTYtYmFkN2JkMmNiNWVkXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UY67_CR2,0,45,67_AL_.jpg',136),
	 ('Hasta que llegó su hora','1968',8.4,'https://m.media-amazon.com/images/M/MV5BODQ3NDExOGYtMzI3Mi00NWRlLTkwNjAtNjc4MDgzZGJiZTA1XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',139),
	 ('La tumba de las luciérnagas','1988',8.4,'https://m.media-amazon.com/images/M/MV5BZmY2NjUzNDQtNTgxNC00M2Q4LTljOWQtMjNjNDBjNWUxNmJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX45_CR0,0,45,67_AL_.jpg',142),
	 ('Top Gun: Maverick','2022',8.4,'https://m.media-amazon.com/images/M/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY67_CR0,0,45,67_AL_.jpg',145),
	 ('La ventana indiscreta','1954',8.4,'https://m.media-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg',148);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Alien, el octavo pasajero','1979',8.4,'https://m.media-amazon.com/images/M/MV5BOGQzZTBjMjQtOTVmMS00NGE5LWEyYmMtOGQ1ZGZjNmRkYjFhXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',151),
	 ('Luces de la ciudad','1931',8.4,'https://m.media-amazon.com/images/M/MV5BY2I4MmM1N2EtM2YzOS00OWUzLTkzYzctNDc5NDg2N2IyODJmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',154),
	 ('Cinema Paradiso','1988',8.4,'https://m.media-amazon.com/images/M/MV5BM2FhYjEyYmYtMDI1Yy00YTdlLWI2NWQtYmEzNzAxOGY1NjY2XkEyXkFqcGdeQXVyNTA3NTIyNDg@._V1_UY67_CR0,0,45,67_AL_.jpg',157),
	 ('Memento','2000',8.4,'https://m.media-amazon.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',160),
	 ('Apocalypse Now','1979',8.4,'https://m.media-amazon.com/images/M/MV5BMDdhODg0MjYtYzBiOS00ZmI5LWEwZGYtZDEyNDU4MmQyNzFkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',163),
	 ('En busca del arca perdida','1981',8.4,'https://m.media-amazon.com/images/M/MV5BNTU2ODkyY2MtMjU1NC00NjE1LWEzYjgtMWQ3MzRhMTE0NDc0XkEyXkFqcGdeQXVyMjM4MzQ4OTQ@._V1_UY67_CR0,0,45,67_AL_.jpg',166),
	 ('Django desencadenado','2012',8.4,'https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_UY67_CR0,0,45,67_AL_.jpg',169),
	 ('WALL·E','2008',8.4,'https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_UY67_CR0,0,45,67_AL_.jpg',172),
	 ('La vida de los otros','2006',8.4,'https://m.media-amazon.com/images/M/MV5BNmQyNmJjM2ItNTQzYi00ZjMxLWFjMDYtZjUyN2YwZDk5YWQ2XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',175),
	 ('El crepúsculo de los dioses','1950',8.4,'https://m.media-amazon.com/images/M/MV5BMTU0NTkyNzYwMF5BMl5BanBnXkFtZTgwMDU0NDk5MTI@._V1_UX45_CR0,0,45,67_AL_.jpg',178);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Senderos de gloria','1957',8.4,'https://m.media-amazon.com/images/M/MV5BOTI5Nzc0OTMtYzBkMS00NjkxLThmM2UtNjM2ODgxN2M5NjNkXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',181),
	 ('El resplandor','1980',8.4,'https://m.media-amazon.com/images/M/MV5BZWFlYmY2MGEtZjVkYS00YzU4LTg0YjQtYzY1ZGE3NTA5NGQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX45_CR0,0,45,67_AL_.jpg',184),
	 ('El gran dictador','1940',8.4,'https://m.media-amazon.com/images/M/MV5BMmExYWJjNTktNGUyZS00ODhmLTkxYzAtNWIzOGEyMGNiMmUwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',187),
	 ('Testigo de cargo','1957',8.4,'https://m.media-amazon.com/images/M/MV5BNDQwODU5OWYtNDcyNi00MDQ1LThiOGMtZDkwNWJiM2Y3MDg0XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX45_CR0,0,45,67_AL_.jpg',190),
	 ('Vengadores: Infinity War','2018',8.4,'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_UY67_CR0,0,45,67_AL_.jpg',193),
	 ('Aliens: El regreso','1986',8.3,'https://m.media-amazon.com/images/M/MV5BZGU2OGY5ZTYtMWNhYy00NjZiLWI0NjUtZmNhY2JhNDRmODU3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',196),
	 ('American Beauty','1999',8.3,'https://m.media-amazon.com/images/M/MV5BNTBmZWJkNjctNDhiNC00MGE2LWEwOTctZTk5OGVhMWMyNmVhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',199),
	 ('¿Teléfono rojo? Volamos hacia Moscú','1964',8.3,'https://m.media-amazon.com/images/M/MV5BZWI3ZTMxNjctMjdlNS00NmUwLWFiM2YtZDUyY2I3N2MxYTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',202),
	 ('El caballero oscuro: La leyenda renace','2012',8.3,'https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_UY67_CR0,0,45,67_AL_.jpg',205),
	 ('Spider-Man: Un nuevo universo','2018',8.3,'https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_UY67_CR0,0,45,67_AL_.jpg',208);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Joker','2019',8.3,'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',211),
	 ('Old Boy','2003',8.3,'https://m.media-amazon.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',214),
	 ('Braveheart','1995',8.3,'https://m.media-amazon.com/images/M/MV5BMzkzMmU0YTYtOWM3My00YzBmLWI0YzctOGYyNTkwMWE5MTJkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',217),
	 ('Amadeus','1984',8.3,'https://m.media-amazon.com/images/M/MV5BNWJlNzUzNGMtYTAwMS00ZjI2LWFmNWQtODcxNWUxODA5YmU1XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX45_CR0,0,45,67_AL_.jpg',220),
	 ('Toy Story','1995',8.3,'https://m.media-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_UX45_CR0,0,45,67_AL_.jpg',223),
	 ('Coco','2017',8.3,'https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_UY67_CR1,0,45,67_AL_.jpg',226),
	 ('El submarino (Das Boot)','Das Boot',8.3,'https://m.media-amazon.com/images/M/MV5BOGZhZDIzNWMtNjkxMS00MDQ1LThkMTYtZWQzYWU3MWMxMGU5XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',229),
	 ('Malditos bastardos','2009',8.3,'https://m.media-amazon.com/images/M/MV5BOTJiNDEzOWYtMTVjOC00ZjlmLWE0NGMtZmE1OWVmZDQ2OWJhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UY67_CR0,0,45,67_AL_.jpg',232),
	 ('La princesa Mononoke','1997',8.3,'https://m.media-amazon.com/images/M/MV5BNGIzY2IzODQtNThmMi00ZDE4LWI5YzAtNzNlZTM1ZjYyYjUyXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_UX45_CR0,0,45,67_AL_.jpg',235),
	 ('Érase una vez en América','1984',8.3,'https://m.media-amazon.com/images/M/MV5BMGFkNWI4MTMtNGQ0OC00MWVmLTk3MTktOGYxN2Y2YWVkZWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',238);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Vengadores: Endgame','2019',8.3,'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',241),
	 ('El indomable Will Hunting','1997',8.3,'https://m.media-amazon.com/images/M/MV5BOTI0MzcxMTYtZDVkMy00NjY1LTgyMTYtZmUxN2M3NmQ2NWJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX45_CR0,0,45,67_AL_.jpg',244),
	 ('Réquiem por un sueño','2000',8.3,'https://m.media-amazon.com/images/M/MV5BOTdiNzJlOWUtNWMwNS00NmFlLWI0YTEtZmI3YjIzZWUyY2Y3XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',247),
	 ('Toy Story 3','2010',8.3,'https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_UY67_CR1,0,45,67_AL_.jpg',250),
	 ('Cantando bajo la lluvia','1952',8.3,'https://m.media-amazon.com/images/M/MV5BZDRjNGViMjQtOThlMi00MTA3LThkYzQtNzJkYjBkMGE0YzE1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY67_CR0,0,45,67_AL_.jpg',253),
	 ('Your Name','2016',8.3,'https://m.media-amazon.com/images/M/MV5BODRmZDVmNzUtZDA4ZC00NjhkLWI2M2UtN2M0ZDIzNDcxYThjL2ltYWdlXkEyXkFqcGdeQXVyNTk0MzMzODA@._V1_UY67_CR0,0,45,67_AL_.jpg',256),
	 ('3 Idiots','2009',8.3,'https://m.media-amazon.com/images/M/MV5BNTkyOGVjMGEtNmQzZi00NzFlLTlhOWQtODYyMDc2ZGJmYzFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR1,0,45,67_AL_.jpg',259),
	 ('El retorno del jedi','1983',8.3,'https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX45_CR0,0,45,67_AL_.jpg',262),
	 ('2001: Una odisea del espacio','1968',8.3,'https://m.media-amazon.com/images/M/MV5BMmNlYzRiNDctZWNhMi00MzI4LThkZTctMTUzMmZkMmFmNThmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',265),
	 ('Reservoir Dogs','1992',8.3,'https://m.media-amazon.com/images/M/MV5BZmExNmEwYWItYmQzOS00YjA5LTk2MjktZjEyZDE1Y2QxNjA1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX45_CR0,0,45,67_AL_.jpg',268);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('¡Olvídate de mí!','2004',8.3,'https://m.media-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_UY67_CR0,0,45,67_AL_.jpg',271),
	 ('El infierno del odio','1963',8.3,'https://m.media-amazon.com/images/M/MV5BOTI4NTNhZDMtMWNkZi00MTRmLWJmZDQtMmJkMGVmZTEzODlhXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',274),
	 ('Ciudadano Kane','1941',8.3,'https://m.media-amazon.com/images/M/MV5BYjBiOTYxZWItMzdiZi00NjlkLWIzZTYtYmFhZjhiMTljOTdkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',277),
	 ('Cafarnaúm','2018',8.3,'https://m.media-amazon.com/images/M/MV5BY2Y3OWNkMTctYzNjYS00NWVkLTg4OWEtY2YxN2I3NDhlYzE0XkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_UY67_CR1,0,45,67_AL_.jpg',280),
	 ('Lawrence de Arabia','1962',8.3,'https://m.media-amazon.com/images/M/MV5BYWY5ZjhjNGYtZmI2Ny00ODM0LWFkNzgtZmI1YzA2N2MxMzA0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UY67_CR0,0,45,67_AL_.jpg',283),
	 ('La caza','2012',8.3,'https://m.media-amazon.com/images/M/MV5BMTg2NDg3ODg4NF5BMl5BanBnXkFtZTcwNzk3NTc3Nw@@._V1_UY67_CR1,0,45,67_AL_.jpg',286),
	 ('M, el vampiro de Düsseldorf','1931',8.3,'https://m.media-amazon.com/images/M/MV5BODA4ODk3OTEzMF5BMl5BanBnXkFtZTgwMTQ2ODMwMzE@._V1_UX45_CR0,0,45,67_AL_.jpg',289),
	 ('Con la muerte en los talones','1959',8.3,'https://m.media-amazon.com/images/M/MV5BZDA3NDExMTUtMDlhOC00MmQ5LWExZGUtYmI1NGVlZWI4OWNiXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',292),
	 ('Todo a la vez en todas partes','2022',8.2,'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_UY67_CR0,0,45,67_AL_.jpg',295),
	 (' Vértigo (De entre los muertos)','De entre los muertos',8.2,'https://m.media-amazon.com/images/M/MV5BYTE4ODEwZDUtNDFjOC00NjAxLWEzYTQtYTI1NGVmZmFlNjdiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',298);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Amelie','2001',8.2,'https://m.media-amazon.com/images/M/MV5BNDg4NjM1YjMtYmNhZC00MjM0LWFiZmYtNGY1YjA3MzZmODc5XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX45_CR0,0,45,67_AL_.jpg',301),
	 ('La naranja mecánica','1971',8.2,'https://m.media-amazon.com/images/M/MV5BMTY3MjM1Mzc4N15BMl5BanBnXkFtZTgwODM0NzAxMDE@._V1_UY67_CR0,0,45,67_AL_.jpg',304),
	 ('Masacre (Ven y mira)','Ven y mira',8.2,'https://m.media-amazon.com/images/M/MV5BODM4Njg0NTAtYjI5Ny00ZjAxLTkwNmItZTMxMWU5M2U3M2RjXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',307),
	 ('La chaqueta metálica','1987',8.2,'https://m.media-amazon.com/images/M/MV5BNzkxODk0NjEtYjc4Mi00ZDI0LTgyYjEtYzc1NDkxY2YzYTgyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',310),
	 ('Perdición','1944',8.2,'https://m.media-amazon.com/images/M/MV5BOTdlNjgyZGUtOTczYi00MDdhLTljZmMtYTEwZmRiOWFkYjRhXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX45_CR0,0,45,67_AL_.jpg',313),
	 ('El apartamento','1960',8.2,'https://m.media-amazon.com/images/M/MV5BNzkwODFjNzItMmMwNi00MTU5LWE2MzktM2M4ZDczZGM1MmViXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX45_CR0,0,45,67_AL_.jpg',316),
	 ('El precio del poder','1983',8.2,'https://m.media-amazon.com/images/M/MV5BNjdjNGQ4NDEtNTEwYS00MTgxLTliYzQtYzE2ZDRiZjFhZmNlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',319),
	 ('Ikiru (Vivir)','Vivir',8.2,'https://m.media-amazon.com/images/M/MV5BZTdkN2E5OTYtN2FiMi00YWUwLWEzMGMtZTMzNjY0NjgzYzFiXkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_UY67_CR1,0,45,67_AL_.jpg',322),
	 ('Matar a un ruiseñor','1962',8.2,'https://m.media-amazon.com/images/M/MV5BNmVmYzcwNzMtMWM1NS00MWIyLThlMDEtYzUwZDgzODE1NmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',325),
	 ('El golpe','1973',8.2,'https://m.media-amazon.com/images/M/MV5BNGU3NjQ4YTMtZGJjOS00YTQ3LThmNmItMTI5MDE2ODI3NzY3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',328);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Taxi Driver','1976',8.2,'https://m.media-amazon.com/images/M/MV5BM2M1MmVhNDgtNmI0YS00ZDNmLTkyNjctNTJiYTQ2N2NmYzc2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',331),
	 ('LA Confidential','1997',8.2,'https://m.media-amazon.com/images/M/MV5BMDQ2YzEyZGItYWRhOS00MjBmLTkzMDUtMTdjYzkyMmQxZTJlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',334),
	 ('Up','2009',8.2,'https://m.media-amazon.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_UX45_CR0,0,45,67_AL_.jpg',337),
	 ('Hamilton','2020',8.2,'https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_UY67_CR0,0,45,67_AL_.jpg',340),
	 ('Heat','1995',8.2,'https://m.media-amazon.com/images/M/MV5BYjZjNTJlZGUtZTE1Ny00ZDc4LTgwYjUtMzk0NDgwYzZjYTk1XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR1,0,45,67_AL_.jpg',343),
	 ('Spider-Man: No Way Home','2021',8.2,'https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_UY67_CR0,0,45,67_AL_.jpg',346),
	 ('Metrópolis','1927',8.2,'https://m.media-amazon.com/images/M/MV5BMTg5YWIyMWUtZDY5My00Zjc1LTljOTctYmI0MWRmY2M2NmRkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',349),
	 ('Snatch, cerdos y diamantes','2000',8.2,'https://m.media-amazon.com/images/M/MV5BMTA2NDYxOGYtYjU1Mi00Y2QzLTgxMTQtMWI1MGI0ZGQ5MmU4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UY67_CR0,0,45,67_AL_.jpg',352),
	 ('Nader y Simin, una separación','2011',8.2,'https://m.media-amazon.com/images/M/MV5BN2JmMjViMjMtZTM5Mi00ZGZkLTk5YzctZDg5MjFjZDE4NjNkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',355),
	 ('Jungla de cristal','1988',8.2,'https://m.media-amazon.com/images/M/MV5BZjRlNDUxZjAtOGQ4OC00OTNlLTgxNmQtYTBmMDgwZmNmNjkxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',358);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Incendios','2010',8.2,'https://m.media-amazon.com/images/M/MV5BMWE3MGYzZjktY2Q5Mi00Y2NiLWIyYWUtMmIyNzA3YmZlMGFhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX45_CR0,0,45,67_AL_.jpg',361),
	 ('Indiana Jones y la última cruzada','1989',8.2,'https://m.media-amazon.com/images/M/MV5BY2Q0ODg4ZmItNDZiYi00ZWY5LTg2NzctNmYwZjA5OThmNzE1XkEyXkFqcGdeQXVyMjM4MzQ4OTQ@._V1_UY67_CR0,0,45,67_AL_.jpg',364),
	 ('Ladrón de bicicletas','1948',8.2,'https://m.media-amazon.com/images/M/MV5BNmI1ODdjODctMDlmMC00ZWViLWI5MzYtYzRhNDdjYmM3MzFjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',367),
	 ('1917','2019',8.2,'https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_UX45_CR0,0,45,67_AL_.jpg',370),
	 ('Taare Zameen Par','2007',8.2,'https://m.media-amazon.com/images/M/MV5BMDhjZWViN2MtNzgxOS00NmI4LThiZDQtZDI3MzM4MDE4NTc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR1,0,45,67_AL_.jpg',373),
	 ('El hundimiento','2004',8.2,'https://m.media-amazon.com/images/M/MV5BMTU0NTU5NTAyMl5BMl5BanBnXkFtZTYwNzYwMDg2._V1_UY67_CR0,0,45,67_AL_.jpg',376),
	 ('La muerte tenía un precio','1965',8.2,'https://m.media-amazon.com/images/M/MV5BMTQzMjIzOTEzMF5BMl5BanBnXkFtZTcwMTUzNTk3NA@@._V1_UX45_CR0,0,45,67_AL_.jpg',379),
	 ('Batman Begins','2005',8.2,'https://m.media-amazon.com/images/M/MV5BOTY4YjI2N2MtYmFlMC00ZjcyLTg3YjEtMDQyM2ZjYzQ5YWFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg',382),
	 ('Dangal','2016',8.2,'https://m.media-amazon.com/images/M/MV5BMTQ4MzQzMzM2Nl5BMl5BanBnXkFtZTgwMTQ1NzU3MDI@._V1_UY67_CR1,0,45,67_AL_.jpg',385),
	 ('El chico','1921',8.2,'https://m.media-amazon.com/images/M/MV5BZjhhMThhNDItNTY2MC00MmU1LTliNDEtNDdhZjdlNTY5ZDQ1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',388);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Con faldas y a lo loco','1959',8.2,'https://m.media-amazon.com/images/M/MV5BNzAyOGIxYjAtMGY2NC00ZTgyLWIwMWEtYzY0OWQ4NDFjOTc5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',391),
	 ('El padre','2020',8.2,'https://m.media-amazon.com/images/M/MV5BZGJhNWRiOWQtMjI4OS00ZjcxLTgwMTAtMzQ2ODkxY2JkOTVlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',394),
	 ('Eva al desnudo','1950',8.2,'https://m.media-amazon.com/images/M/MV5BMTY2MTAzODI5NV5BMl5BanBnXkFtZTgwMjM4NzQ0MjE@._V1_UX45_CR0,0,45,67_AL_.jpg',397),
	 ('Green Book','2018',8.2,'https://m.media-amazon.com/images/M/MV5BYzIzYmJlYTYtNGNiYy00N2EwLTk4ZjItMGYyZTJiOTVkM2RlXkEyXkFqcGdeQXVyODY1NDk1NjE@._V1_UX45_CR0,0,45,67_AL_.jpg',400),
	 ('El lobo de Wall Street','2013',8.2,'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_UY67_CR0,0,45,67_AL_.jpg',403),
	 ('Vencedores o vencidos','1961',8.2,'https://m.media-amazon.com/images/M/MV5BNDc2ODQ5NTE2MV5BMl5BanBnXkFtZTcwODExMjUyNA@@._V1_UX45_CR0,0,45,67_AL_.jpg',406),
	 ('Sin perdón','1992',8.2,'https://m.media-amazon.com/images/M/MV5BODM3YWY4NmQtN2Y3Ni00OTg0LWFhZGQtZWE3ZWY4MTJlOWU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',409),
	 ('Casino','1995',8.2,'https://m.media-amazon.com/images/M/MV5BMTcxOWYzNDYtYmM4YS00N2NkLTk0NTAtNjg1ODgwZjAxYzI3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX45_CR0,0,45,67_AL_.jpg',412),
	 ('El laberinto del fauno','2006',8.2,'https://m.media-amazon.com/images/M/MV5BYzFjMThiMGItOWRlMC00MDI4LThmOGUtYTNlZGZiYWI1YjMyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',415),
	 ('Ran','1985',8.2,'https://m.media-amazon.com/images/M/MV5BMmU1NGYwZWYtOWExNi00ZTEyLTgwMmUtM2ZlMDVjNWM4YjVlXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',418);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Pozos de ambición','2007',8.2,'https://m.media-amazon.com/images/M/MV5BMjAxODQ4MDU5NV5BMl5BanBnXkFtZTcwMDU4MjU1MQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',421),
	 ('El sexto sentido','1999',8.2,'https://m.media-amazon.com/images/M/MV5BMWM4NTFhYjctNzUyNi00NGMwLTk3NTYtMDIyNTZmMzRlYmQyXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UY67_CR0,0,45,67_AL_.jpg',424),
	 ('Una mente maravillosa','2001',8.2,'https://m.media-amazon.com/images/M/MV5BMzcwYWFkYzktZjAzNC00OGY1LWI4YTgtNzc5MzVjMDVmNjY0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg',427),
	 ('Los caballeros de la mesa cuadrada y sus locos seguidores','1975',8.2,'https://m.media-amazon.com/images/M/MV5BN2IyNTE4YzUtZWU0Mi00MGIwLTgyMmQtMzQ4YzQxYWNlYWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',430),
	 ('El show de Truman','1998',8.2,'https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UY67_CR0,0,45,67_AL_.jpg',433),
	 ('Yojimbo','1961',8.1,'https://m.media-amazon.com/images/M/MV5BZThiZjAzZjgtNDU3MC00YThhLThjYWUtZGRkYjc2ZWZlOTVjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX45_CR0,0,45,67_AL_.jpg',436),
	 ('El tesoro de Sierra Madre','1948',8.1,'https://m.media-amazon.com/images/M/MV5BOTJlZWMxYzEtMjlkMS00ODE0LThlM2ItMDI3NGQ2YjhmMzkxXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX45_CR0,0,45,67_AL_.jpg',439),
	 ('Rashomon','1950',8.1,'https://m.media-amazon.com/images/M/MV5BMjEzMzA4NDE2OF5BMl5BanBnXkFtZTcwNTc5MDI2NQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',442),
	 ('La gran evasión','1963',8.1,'https://m.media-amazon.com/images/M/MV5BNzA2NmYxMWUtNzBlMC00MWM2LTkwNmQtYTFlZjQwODNhOWE0XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX45_CR0,0,45,67_AL_.jpg',445),
	 ('Shutter Island','2010',8.1,'https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',448);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Jurassic Park (Parque Jurásico)','Parque Jurásico',8.1,'https://m.media-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_UX45_CR0,0,45,67_AL_.jpg',451),
	 ('Kill Bill: Volumen 1','2003',8.1,'https://m.media-amazon.com/images/M/MV5BNzM3NDFhYTAtYmU5Mi00NGRmLTljYjgtMDkyODQ4MjNkMGY2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',454),
	 ('No es país para viejos','2007',8.1,'https://m.media-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',457),
	 ('El hombre elefante','1980',8.1,'https://m.media-amazon.com/images/M/MV5BMDVjNjIwOGItNDE3Ny00OThjLWE0NzQtZTU3YjMzZTZjMzhkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX45_CR0,0,45,67_AL_.jpg',460),
	 ('Buscando a Nemo','2003',8.1,'https://m.media-amazon.com/images/M/MV5BZTAzNWZlNmUtZDEzYi00ZjA5LWIwYjEtZGM1NWE1MjE4YWRhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',463),
	 ('Toro salvaje','1980',8.1,'https://m.media-amazon.com/images/M/MV5BYjRmODkzNDItMTNhNi00YjJlLTg0ZjAtODlhZTM0YzgzYThlXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UY67_CR0,0,45,67_AL_.jpg',466),
	 ('Chinatown','1974',8.1,'https://m.media-amazon.com/images/M/MV5BMjJkMDZhYzItZTFhMi00ZGI4LThlNTAtZDNlYmEwNjFkNDYzXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',469),
	 ('Lo que el viento se llevó','1939',8.1,'https://m.media-amazon.com/images/M/MV5BYjUyZWZkM2UtMzYxYy00ZmQ3LWFmZTQtOGE2YjBkNjA3YWZlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',472),
	 ('V de Vendetta','2005',8.1,'https://m.media-amazon.com/images/M/MV5BOTI5ODc3NzExNV5BMl5BanBnXkFtZTcwNzYxNzQzMw@@._V1_UY67_CR0,0,45,67_AL_.jpg',475),
	 ('Del revés (Inside Out)','Inside Out',8.1,'https://m.media-amazon.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_UY67_CR0,0,45,67_AL_.jpg',478);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('La cosa (El enigma de otro mundo)','El enigma de otro mundo',8.1,'https://m.media-amazon.com/images/M/MV5BNGViZWZmM2EtNGYzZi00ZDAyLTk3ODMtNzIyZTBjN2Y1NmM1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX45_CR0,0,45,67_AL_.jpg',481),
	 ('Lock & Stock','1998',8.1,'https://m.media-amazon.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX45_CR0,0,45,67_AL_.jpg',484),
	 ('Crimen perfecto','1954',8.1,'https://m.media-amazon.com/images/M/MV5BOWIwODIxYWItZDI4MS00YzhhLWE3MmYtMzlhZDIwOTMzZmE5L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',487),
	 ('El secreto de sus ojos','2009',8.1,'https://m.media-amazon.com/images/M/MV5BY2FhZGI5M2QtZWFiZS00NjkwLWE4NWQtMzg3ZDZjNjdkYTJiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',490),
	 ('El puente sobre el río Kwai','1957',8.1,'https://m.media-amazon.com/images/M/MV5BOGY5NmNlMmQtYzRlYy00NGQ5LWFkYjYtNzExZmQyMTg0ZDA0XkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_UX45_CR0,0,45,67_AL_.jpg',493),
	 ('El castillo ambulante','2004',8.1,'https://m.media-amazon.com/images/M/MV5BNmM4YTFmMmItMGE3Yy00MmRkLTlmZGEtMzZlOTQzYjk3MzA2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX45_CR0,0,45,67_AL_.jpg',496),
	 ('Tres anuncios en las afueras','2017',8.1,'https://m.media-amazon.com/images/M/MV5BMjI0ODcxNzM1N15BMl5BanBnXkFtZTgwMzIwMTEwNDI@._V1_UY67_CR0,0,45,67_AL_.jpg',499),
	 ('Trainspotting','1996',8.1,'https://m.media-amazon.com/images/M/MV5BMzA5Zjc3ZTMtMmU5YS00YTMwLWI4MWUtYTU0YTVmNjVmODZhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',502),
	 ('Gran Torino','2008',8.1,'https://m.media-amazon.com/images/M/MV5BMTc5NTk2OTU1Nl5BMl5BanBnXkFtZTcwMDc3NjAwMg@@._V1_UY67_CR0,0,45,67_AL_.jpg',505),
	 ('Warrior','2011',8.1,'https://m.media-amazon.com/images/M/MV5BMTk4ODk5MTMyNV5BMl5BanBnXkFtZTcwMDMyNTg0Ng@@._V1_UX45_CR0,0,45,67_AL_.jpg',508);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Fargo','1996',8.1,'https://m.media-amazon.com/images/M/MV5BNDJiZDgyZjctYmRjMS00ZjdkLTkwMTEtNGU1NDg3NDQ0Yzk1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',511),
	 ('Mi vecino Totoro','1988',8.1,'https://m.media-amazon.com/images/M/MV5BYzJjMTYyMjQtZDI0My00ZjE2LTkyNGYtOTllNGQxNDMyZjE0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR1,0,45,67_AL_.jpg',514),
	 ('Prisioneros','2013',8.1,'https://m.media-amazon.com/images/M/MV5BMTg0NTIzMjQ1NV5BMl5BanBnXkFtZTcwNDc3MzM5OQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',517),
	 ('Million Dollar Baby','2004',8.1,'https://m.media-amazon.com/images/M/MV5BMTkxNzA1NDQxOV5BMl5BanBnXkFtZTcwNTkyMTIzMw@@._V1_UY67_CR0,0,45,67_AL_.jpg',520),
	 ('La quimera del oro','1925',8.1,'https://m.media-amazon.com/images/M/MV5BZjEyOTE4MzMtNmMzMy00Mzc3LWJlOTQtOGJiNDE0ZmJiOTU4L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY67_CR2,0,45,67_AL_.jpg',523),
	 ('Blade Runner','1982',8.1,'https://m.media-amazon.com/images/M/MV5BNzQzMzJhZTEtOWM4NS00MTdhLTg0YjgtMjM4MDRkZjUwZDBlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',526),
	 ('Atrápame si puedes','2002',8.1,'https://m.media-amazon.com/images/M/MV5BMTY5MzYzNjc5NV5BMl5BanBnXkFtZTYwNTUyNTc2._V1_UY67_CR0,0,45,67_AL_.jpg',529),
	 ('La ley del silencio','1954',8.1,'https://m.media-amazon.com/images/M/MV5BY2I0MWFiZDMtNWQyYy00Njk5LTk3MDktZjZjNTNmZmVkYjkxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',532),
	 ('El tercer hombre','1949',8.1,'https://m.media-amazon.com/images/M/MV5BYjE2OTdhMWUtOGJlMy00ZDViLWIzZjgtYjZkZGZmMDZjYmEyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',535),
	 ('Children of Heaven','1997',8.1,'https://m.media-amazon.com/images/M/MV5BZTYwZWQ4ZTQtZWU0MS00N2YwLWEzMDItZWFkZWY0MWVjODVhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',538);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Ben-Hur','1959',8.1,'https://m.media-amazon.com/images/M/MV5BNjgxY2JiZDYtZmMwOC00ZmJjLWJmODUtMTNmNWNmYWI5ODkwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',541),
	 ('El maquinista de La General','1926',8.1,'https://m.media-amazon.com/images/M/MV5BYmRiMDFlYjYtOTMwYy00OGY2LWE0Y2QtYzQxOGNhZmUwNTIxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',544),
	 ('12 años de esclavitud','2013',8.1,'https://m.media-amazon.com/images/M/MV5BMjExMTEzODkyN15BMl5BanBnXkFtZTcwNTU4NTc4OQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',547),
	 ('Fresas salvajes','1957',8.1,'https://m.media-amazon.com/images/M/MV5BZjJhNTBmNTgtMDViOC00NDY2LWE4N2ItMDJiM2ZiYmQzYzliXkEyXkFqcGdeQXVyMzg1ODEwNQ@@._V1_UY67_CR1,0,45,67_AL_.jpg',550),
	 ('Perdida','2014',8.1,'https://m.media-amazon.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_UY67_CR0,0,45,67_AL_.jpg',553),
	 ('Antes de amanecer','1995',8.1,'https://m.media-amazon.com/images/M/MV5BZDdiZTAwYzAtMDI3Ni00OTRjLTkzN2UtMGE3MDMyZmU4NTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',556),
	 ('El cazador','1978',8.1,'https://m.media-amazon.com/images/M/MV5BNDhmNTA0ZDMtYjhkNS00NzEzLWIzYTItOGNkMTVmYjE2YmI3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',559),
	 ('Harry Potter y las Reliquias de la Muerte - Parte 2','2011',8.1,'https://m.media-amazon.com/images/M/MV5BMGVmMWNiMDktYjQ0Mi00MWIxLTk0N2UtN2ZlYTdkN2IzNDNlXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX45_CR0,0,45,67_AL_.jpg',562),
	 ('En el nombre del padre','1993',8.1,'https://m.media-amazon.com/images/M/MV5BMmYyOTgwYWItYmU3Ny00M2E2LTk0NWMtMDVlNmQ0MWZiMTMxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',565),
	 ('El gran hotel Budapest','2014',8.1,'https://m.media-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_UY67_CR0,0,45,67_AL_.jpg',568);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Caballero sin espada','1939',8.1,'https://m.media-amazon.com/images/M/MV5BZTYwYjYxYzgtMDE1Ni00NzU4LWJlMTEtODQ5YmJmMGJhZjI5L2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX45_CR0,0,45,67_AL_.jpg',571),
	 ('El salario del miedo','1953',8.1,'https://m.media-amazon.com/images/M/MV5BZDdkNzMwZmUtY2Q5MS00ZmM2LWJhYjItYTBjMWY0MGM4MDRjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY67_CR0,0,45,67_AL_.jpg',574),
	 ('El moderno Sherlock Holmes','1924',8.1,'https://m.media-amazon.com/images/M/MV5BZWFhOGU5NDctY2Q3YS00Y2VlLWI1NzEtZmIwY2ZiZjY4OTA2XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX45_CR0,0,45,67_AL_.jpg',577),
	 ('Barry Lyndon','1975',8.1,'https://m.media-amazon.com/images/M/MV5BNmY0MWY2NDctZDdmMi00MjA1LTk0ZTQtZDMyZTQ1NTNlYzVjXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',580),
	 ('Memories of Murder (Crónica de un asesino en serie)','Crónica de un asesino en serie',8.1,'https://m.media-amazon.com/images/M/MV5BOGViNTg4YTktYTQ2Ni00MTU0LTk2NWUtMTI4OTc1YTM0NzQ2XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',583),
	 ('La habitación','2015',8.1,'https://m.media-amazon.com/images/M/MV5BMjE4NzgzNzEwMl5BMl5BanBnXkFtZTgwMTMzMDE0NjE@._V1_UY67_CR0,0,45,67_AL_.jpg',586),
	 ('Hasta el último hombre','2016',8.1,'https://m.media-amazon.com/images/M/MV5BMjQ1NjM3MTUxNV5BMl5BanBnXkFtZTgwMDc5MTY5OTE@._V1_UX45_CR0,0,45,67_AL_.jpg',589),
	 ('Klaus','2019',8.1,'https://m.media-amazon.com/images/M/MV5BMWYwOThjM2ItZGYxNy00NTQwLWFlZWEtM2MzM2Q5MmY3NDU5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',592),
	 ('El séptimo sello','1957',8.1,'https://m.media-amazon.com/images/M/MV5BOWM3MmE0OGYtOGVlNC00OWE1LTk5ZTAtYmUwMDIwM2ZlNWJiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UY67_CR0,0,45,67_AL_.jpg',595),
	 ('Relatos salvajes','2014',8.1,'https://m.media-amazon.com/images/M/MV5BNGQzY2Y0MTgtMDA4OC00NjM3LWI0ZGQtNTJlM2UxZDQxZjI0XkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY67_CR1,0,45,67_AL_.jpg',598);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('El gran Lebowski','1998',8.1,'https://m.media-amazon.com/images/M/MV5BMTQ0NjUzMDMyOF5BMl5BanBnXkFtZTgwODA1OTU0MDE@._V1_UX45_CR0,0,45,67_AL_.jpg',601),
	 ('Cómo entrenar a tu dragón','2010',8.1,'https://m.media-amazon.com/images/M/MV5BMjA5NDQyMjc2NF5BMl5BanBnXkFtZTcwMjg5ODcyMw@@._V1_UY67_CR0,0,45,67_AL_.jpg',604),
	 ('Mad Max: Furia en la carretera','2015',8.1,'https://m.media-amazon.com/images/M/MV5BN2EwM2I5OWMtMGQyMi00Zjg1LWJkNTctZTdjYTA4OGUwZjMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',607),
	 ('Mary and Max','2009',8.1,'https://m.media-amazon.com/images/M/MV5BMDgzYjQwMDMtNGUzYi00MTRmLWIyMGMtNjE1OGZkNzY2YWIzL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR1,0,45,67_AL_.jpg',610),
	 ('Monstruos, SA','2001',8.1,'https://m.media-amazon.com/images/M/MV5BMTY1NTI0ODUyOF5BMl5BanBnXkFtZTgwNTEyNjQ0MDE@._V1_UY67_CR0,0,45,67_AL_.jpg',613),
	 ('Tiburón','1975',8.1,'https://m.media-amazon.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX45_CR0,0,45,67_AL_.jpg',616),
	 ('La pasión de Juana de Arco','1928',8.1,'https://m.media-amazon.com/images/M/MV5BNjBjNDJiYTUtOWY0OS00OGVmLTg2YzctMTE0NzVhODM1ZWJmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',619),
	 ('Pather Panchali (La canción del camino)','La canción del camino',8.1,'https://m.media-amazon.com/images/M/MV5BMmFkNDY5OTktNzY3Yy00OTFlLThhNjktOTRhMmZjZmIxYjAxXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_UX45_CR0,0,45,67_AL_.jpg',622),
	 ('Hotel Rwanda','2004',8.1,'https://m.media-amazon.com/images/M/MV5BZGJjYmIzZmQtNWE4Yy00ZGVmLWJkZGEtMzUzNmQ4ZWFlMjRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg',625),
	 ('El club de los poetas muertos','1989',8.1,'https://m.media-amazon.com/images/M/MV5BOGYwYWNjMzgtNGU4ZC00NWQ2LWEwZjUtMzE1Zjc3NjY3YTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg',628);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Cuentos de Tokio','1953',8.1,'https://m.media-amazon.com/images/M/MV5BYWQ4ZTRiODktNjAzZC00Nzg1LTk1YWQtNDFmNDI0NmZiNGIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg',631),
	 ('Platoon','1986',8.0,'https://m.media-amazon.com/images/M/MV5BMzRjZjdlMjQtODVkYS00N2YzLWJlYWYtMGVlN2E5MWEwMWQzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX45_CR0,0,45,67_AL_.jpg',634),
	 ('Rocky','1976',8.0,'https://m.media-amazon.com/images/M/MV5BNTBkMjg2MjYtYTZjOS00ODQ0LTg0MDEtM2FiNmJmOGU1NGEwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',637),
	 ('Le Mans ''66','2019',8.0,'https://m.media-amazon.com/images/M/MV5BM2UwMDVmMDItM2I2Yi00NGZmLTk4ZTUtY2JjNTQ3OGQ5ZjM2XkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_UY67_CR0,0,45,67_AL_.jpg',640),
	 ('Cuenta conmigo','1986',8.0,'https://m.media-amazon.com/images/M/MV5BODJmY2Y2OGQtMDg2My00N2Q3LWJmZTUtYTc2ODBjZDVlNDlhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX45_CR0,0,45,67_AL_.jpg',643),
	 ('Terminator','1984',8.0,'https://m.media-amazon.com/images/M/MV5BYTViNzMxZjEtZGEwNy00MDNiLWIzNGQtZDY2MjQ1OWViZjFmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg',646),
	 ('Rush','2013',8.0,'https://m.media-amazon.com/images/M/MV5BOWEwODJmZDItYTNmZC00OGM4LThlNDktOTQzZjIzMGQxODA4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',649),
	 ('Spotlight','2015',8.0,'https://m.media-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_UY67_CR0,0,45,67_AL_.jpg',652),
	 ('Hacia rutas salvajes','2007',8.0,'https://m.media-amazon.com/images/M/MV5BMTAwNDEyODU1MjheQTJeQWpwZ15BbWU2MDc3NDQwNw@@._V1_UY67_CR0,0,45,67_AL_.jpg',655),
	 ('Network, un mundo implacable','1976',8.0,'https://m.media-amazon.com/images/M/MV5BZGNjYjM2MzItZGQzZi00NmY3LTgxOGUtMTQ2MWQxNWQ2MmMwXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_UX45_CR0,0,45,67_AL_.jpg',658);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('El mago de Oz','1939',8.0,'https://m.media-amazon.com/images/M/MV5BNjUyMTc4MDExMV5BMl5BanBnXkFtZTgwNDg0NDIwMjE@._V1_UX45_CR0,0,45,67_AL_.jpg',661),
	 ('Logan','2017',8.0,'https://m.media-amazon.com/images/M/MV5BYzc5MTU4N2EtYTkyMi00NjdhLTg3NWEtMTY4OTEyMzJhZTAzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',664),
	 ('Atrapado en el tiempo','1993',8.0,'https://m.media-amazon.com/images/M/MV5BZWIxNzM5YzQtY2FmMS00Yjc3LWI1ZjUtNGVjMjMzZTIxZTIxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',667),
	 ('Ratatouille','2007',8.0,'https://m.media-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_UY67_CR0,0,45,67_AL_.jpg',670),
	 ('El exorcista','1973',8.0,'https://m.media-amazon.com/images/M/MV5BYWFlZGY2NDktY2ZjOS00ZWNkLTg0ZDAtZDY4MTM1ODU4ZjljXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',673),
	 ('Antes del atardecer','2004',8.0,'https://m.media-amazon.com/images/M/MV5BMTQ1MjAwNTM5Ml5BMl5BanBnXkFtZTYwNDM0MTc3._V1_UY67_CR0,0,45,67_AL_.jpg',676),
	 ('Los mejores años de nuestra vida','1946',8.0,'https://m.media-amazon.com/images/M/MV5BY2RmNTRjYzctODI4Ni00MzQyLWEyNTAtNjU0N2JkMTNhNjJkXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',679),
	 ('Los Increíbles','2004',8.0,'https://m.media-amazon.com/images/M/MV5BMTY5OTU0OTc2NV5BMl5BanBnXkFtZTcwMzU4MDcyMQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',682),
	 ('Ser o no ser','1942',8.0,'https://m.media-amazon.com/images/M/MV5BODZlOGI5ZjYtN2UwNy00OGY0LTgxY2UtNDZhMzBkN2EyZmIyXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_UX45_CR0,0,45,67_AL_.jpg',685),
	 ('La batalla de Argel','1966',8.0,'https://m.media-amazon.com/images/M/MV5BN2M4YTA4ZTEtN2EyNy00YTlmLWE4YzYtYjYyYjRkMWM4ZDM0XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',688);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Rebeca','1940',8.0,'https://m.media-amazon.com/images/M/MV5BYTcxYWExOTMtMWFmYy00ZjgzLWI0YjktNWEzYzJkZTg0NDdmL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY67_CR1,0,45,67_AL_.jpg',691),
	 ('Las uvas de la ira','1940',8.0,'https://m.media-amazon.com/images/M/MV5BNzJiOGI2MjctYjUyMS00ZjkzLWE2ZmUtOTg4NTZkOTNhZDc1L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY67_CR0,0,45,67_AL_.jpg',694),
	 ('Siempre a tu lado (Hachiko)','Hachiko',8.0,'https://m.media-amazon.com/images/M/MV5BNzE4NDg5OWMtMzg3NC00ZDRjLTllMDMtZTRjNWZmNjBmMGZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR1,0,45,67_AL_.jpg',697),
	 ('La leyenda del indomable','1967',8.0,'https://m.media-amazon.com/images/M/MV5BNjcwNTQ3Y2EtMjdmZi00ODBhLWFhNzQtOTc3MWU5NTZlMDViXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',700),
	 ('Amores perros','2000',8.0,'https://m.media-amazon.com/images/M/MV5BZjUxNmEwOGItMTBmYi00MWQ1LWExY2MtNDUxMjI0OWM4M2NiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',703),
	 ('Piratas del Caribe: La maldición de la Perla Negra','2003',8.0,'https://m.media-amazon.com/images/M/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX45_CR0,0,45,67_AL_.jpg',706),
	 ('Los cuatrocientos golpes','1959',8.0,'https://m.media-amazon.com/images/M/MV5BYTQ4MjA4NmYtYjRhNi00MTEwLTg0NjgtNjk3ODJlZGU4NjRkL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR2,0,45,67_AL_.jpg',709),
	 ('Dersu Uzala (El cazador)','El cazador',8.0,'https://m.media-amazon.com/images/M/MV5BYWY0OWJlZTgtMWUzNy00MGJhLTk5YzQtNmY5MDEwOTIxNjMyXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',712),
	 ('El odio','1995',8.0,'https://m.media-amazon.com/images/M/MV5BOTQxOGU0OWUtMzExYy00ZjIxLWJmMzAtNTI1Y2YxYTMxN2RkXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UY67_CR0,0,45,67_AL_.jpg',715),
	 ('Persona','1966',8.0,'https://m.media-amazon.com/images/M/MV5BNzlmYWRjMmQtZjdmZS00ZGU4LWJjN2YtM2IwZjFiNmRkYmNkXkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_UY67_CR1,0,45,67_AL_.jpg',718);
INSERT INTO imdb.movies (title,`year`,rating,image,id_director) VALUES
	 ('Mi padre y mi hijo','2005',8.0,'https://m.media-amazon.com/images/M/MV5BNjAzMzEwYzctNjc1MC00Nzg5LWFmMGItMTgzYmMyNTY2OTQ4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg',721),
	 ('La vida de Brian','1979',8.0,'https://m.media-amazon.com/images/M/MV5BMDA1ZWI4ZDItOTRlYi00OTUxLWFlNWQtMzM5NDI0YjA4ZGI2XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg',724),
	 ('Sonrisas y lágrimas','1965',8.0,'https://m.media-amazon.com/images/M/MV5BODIxNjhkYjEtYzUyMi00YTNjLWE1YjktNjAyY2I2MWNkNmNmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR1,0,45,67_AL_.jpg',727),
	 ('Sucedió una noche','1934',8.0,'https://m.media-amazon.com/images/M/MV5BYzJmMWE5NjAtNWMyZS00NmFiLWIwMDgtZDE2NzczYWFhNzIzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg',730),
	 ('La doncella','2016',8.0,'https://m.media-amazon.com/images/M/MV5BNDJhYTk2MTctZmVmOS00OTViLTgxNjQtMzQxOTRiMDdmNGRjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR1,0,45,67_AL_.jpg',733),
	 ('Aladdín','1992',8.0,'https://m.media-amazon.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UY67_CR0,0,45,67_AL_.jpg',736),
	 ('Gandhi','1982',8.0,'https://m.media-amazon.com/images/M/MV5BMzJiZDRmOWUtYjE2MS00Mjc1LTg1ZDYtNTQxYWJkZTg1OTM4XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX45_CR0,0,45,67_AL_.jpg',739),
	 ('Criadas y señoras','2011',8.0,'https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_UY67_CR0,0,45,67_AL_.jpg',742),
	 ('La bella y la bestia','1991',8.0,'https://m.media-amazon.com/images/M/MV5BMzE5MDM1NDktY2I0OC00YWI5LTk2NzUtYjczNDczOWQxYjM0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg',745),
	 ('Bailando con lobos','1990',8.0,'https://m.media-amazon.com/images/M/MV5BMTY3OTI5NDczN15BMl5BanBnXkFtZTcwNDA0NDY3Mw@@._V1_UX45_CR0,0,45,67_AL_.jpg',748);

-- imdb.crew definition

CREATE TABLE `crew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8mb3;

ALTER TABLE `crew` AUTO_INCREMENT = 1;

INSERT INTO imdb.crew (name) VALUES
	 ('Frank Darabont'),
	 ('Tim Robbins'),
	 ('Morgan Freeman'),
	 ('Francis Ford Coppola'),
	 ('Marlon Brando'),
	 ('Al Pacino'),
	 ('Christopher Nolan'),
	 ('Christian Bale'),
	 ('Heath Ledger'),
	 ('Francis Ford Coppola');
INSERT INTO imdb.crew (name) VALUES
	 ('Al Pacino'),
	 ('Robert De Niro'),
	 ('Sidney Lumet'),
	 ('Henry Fonda'),
	 ('Lee J. Cobb'),
	 ('Steven Spielberg'),
	 ('Liam Neeson'),
	 ('Ralph Fiennes'),
	 ('Peter Jackson'),
	 ('Elijah Wood');
INSERT INTO imdb.crew (name) VALUES
	 ('Viggo Mortensen'),
	 ('Quentin Tarantino'),
	 ('John Travolta'),
	 ('Uma Thurman'),
	 ('Peter Jackson'),
	 ('Elijah Wood'),
	 ('Ian McKellen'),
	 ('Sergio Leone'),
	 ('Clint Eastwood'),
	 ('Eli Wallach');
INSERT INTO imdb.crew (name) VALUES
	 ('Robert Zemeckis'),
	 ('Tom Hanks'),
	 ('Robin Wright'),
	 ('David Finche'),
	 ('Brad Pitt'),
	 ('Edward Norton'),
	 ('Christopher Nolan'),
	 ('Leonardo DiCaprio'),
	 ('Joseph Gordon-Levitt'),
	 ('Peter Jackson');
INSERT INTO imdb.crew (name) VALUES
	 ('Elijah Wood'),
	 ('Ian McKellen'),
	 ('Irvin Kershne'),
	 ('Mark Hamill'),
	 ('Harrison Ford'),
	 ('Lana Wachowsk'),
	 ('Keanu Reeves'),
	 ('Laurence Fishburne'),
	 ('Martin Scorsese'),
	 ('Robert De Niro');
INSERT INTO imdb.crew (name) VALUES
	 ('Ray Liotta'),
	 ('Milos Forman'),
	 ('Jack Nicholson'),
	 ('Louise Fletcher'),
	 ('David Finche'),
	 ('Morgan Freeman'),
	 ('Brad Pitt'),
	 ('Akira Kurosawa'),
	 ('Toshirô Mifune'),
	 ('Takashi Shimura');
INSERT INTO imdb.crew (name) VALUES
	 ('Frank Capra'),
	 ('James Stewart'),
	 ('Donna Reed'),
	 ('Jonathan Demme'),
	 ('Jodie Foster'),
	 ('Anthony Hopkins'),
	 ('Fernando Meirelles'),
	 ('Alexandre Rodrigues'),
	 ('Leandro Firmino'),
	 ('Steven Spielberg');
INSERT INTO imdb.crew (name) VALUES
	 ('Tom Hanks'),
	 ('Matt Damon'),
	 ('Roberto Benign'),
	 ('Roberto Benigni'),
	 ('Nicoletta Braschi'),
	 ('Frank Darabont'),
	 ('Tom Hanks'),
	 ('Michael Clarke Duncan'),
	 ('Christopher Nolan'),
	 ('Matthew McConaughey');
INSERT INTO imdb.crew (name) VALUES
	 ('Anne Hathaway'),
	 ('George Lucas'),
	 ('Mark Hamill'),
	 ('Harrison Ford'),
	 ('James Cameron'),
	 ('Arnold Schwarzenegger'),
	 ('Linda Hamilton'),
	 ('Robert Zemeckis'),
	 ('Michael J. Fox'),
	 ('Christopher Lloyd');
INSERT INTO imdb.crew (name) VALUES
	 ('Hayao Miyazak'),
	 ('Daveigh Chase'),
	 ('Suzanne Pleshette'),
	 ('Alfred Hitchcock'),
	 ('Anthony Perkins'),
	 ('Janet Leigh'),
	 ('Roman Polansk'),
	 ('Adrien Brody'),
	 ('Thomas Kretschmann'),
	 ('Luc Besson');
INSERT INTO imdb.crew (name) VALUES
	 ('Jean Reno'),
	 ('Gary Oldman'),
	 ('Bong Joon Ho'),
	 ('Song Kang-ho'),
	 ('Sun-kyun Lee'),
	 ('Roger Allers'),
	 ('Matthew Broderick'),
	 ('Jeremy Irons'),
	 ('Ridley Scott'),
	 ('Russell Crowe');
INSERT INTO imdb.crew (name) VALUES
	 ('Joaquin Phoenix'),
	 ('Tony Kaye'),
	 ('Edward Norton'),
	 ('Edward Furlong'),
	 ('Bryan Singe'),
	 ('Kevin Spacey'),
	 ('Gabriel Byrne'),
	 ('Martin Scorsese'),
	 ('Leonardo DiCaprio'),
	 ('Matt Damon');
INSERT INTO imdb.crew (name) VALUES
	 ('Christopher Nolan'),
	 ('Christian Bale'),
	 ('Hugh Jackman'),
	 ('Michael Curtiz'),
	 ('Humphrey Bogart'),
	 ('Ingrid Bergman'),
	 ('Damien Chazelle'),
	 ('Miles Teller'),
	 ('J.K. Simmons'),
	 ('Olivier Nakache');
INSERT INTO imdb.crew (name) VALUES
	 ('François Cluzet'),
	 ('Omar Sy'),
	 ('Charles Chaplin'),
	 ('Charles Chaplin'),
	 ('Paulette Goddard'),
	 ('Masaki Kobayash'),
	 ('Tatsuya Nakadai'),
	 ('Akira Ishihama'),
	 ('Sergio Leone'),
	 ('Henry Fonda');
INSERT INTO imdb.crew (name) VALUES
	 ('Charles Bronson'),
	 ('Isao Takahata'),
	 ('Tsutomu Tatsumi'),
	 ('Ayano Shiraishi'),
	 ('Joseph Kosinsk'),
	 ('Tom Cruise'),
	 ('Jennifer Connelly'),
	 ('Alfred Hitchcock'),
	 ('James Stewart'),
	 ('Grace Kelly');
INSERT INTO imdb.crew (name) VALUES
	 ('Ridley Scott'),
	 ('Sigourney Weaver'),
	 ('Tom Skerritt'),
	 ('Charles Chaplin'),
	 ('Charles Chaplin'),
	 ('Virginia Cherrill'),
	 ('Giuseppe Tornatore'),
	 ('Philippe Noiret'),
	 ('Enzo Cannavale'),
	 ('Christopher Nolan');
INSERT INTO imdb.crew (name) VALUES
	 ('Guy Pearce'),
	 ('Carrie-Anne Moss'),
	 ('Francis Ford Coppola'),
	 ('Martin Sheen'),
	 ('Marlon Brando'),
	 ('Steven Spielberg'),
	 ('Harrison Ford'),
	 ('Karen Allen'),
	 ('Quentin Tarantino'),
	 ('Jamie Foxx');
INSERT INTO imdb.crew (name) VALUES
	 ('Christoph Waltz'),
	 ('Andrew Stanton'),
	 ('Ben Burtt'),
	 ('Elissa Knight'),
	 ('Florian Henckel von Donnersmarck'),
	 ('Ulrich Mühe'),
	 ('Martina Gedeck'),
	 ('Billy Wilde'),
	 ('William Holden'),
	 ('Gloria Swanson');
INSERT INTO imdb.crew (name) VALUES
	 ('Stanley Kubrick'),
	 ('Kirk Douglas'),
	 ('Ralph Meeker'),
	 ('Stanley Kubrick'),
	 ('Jack Nicholson'),
	 ('Shelley Duvall'),
	 ('Charles Chaplin'),
	 ('Charles Chaplin'),
	 ('Paulette Goddard'),
	 ('Billy Wilde');
INSERT INTO imdb.crew (name) VALUES
	 ('Tyrone Power'),
	 ('Marlene Dietrich'),
	 ('Anthony Russo'),
	 ('Robert Downey Jr.'),
	 ('Chris Hemsworth'),
	 ('James Cameron'),
	 ('Sigourney Weaver'),
	 ('Michael Biehn'),
	 ('Sam Mendes'),
	 ('Kevin Spacey');
INSERT INTO imdb.crew (name) VALUES
	 ('Annette Bening'),
	 ('Stanley Kubrick'),
	 ('Peter Sellers'),
	 ('George C. Scott'),
	 ('Christopher Nolan'),
	 ('Christian Bale'),
	 ('Tom Hardy'),
	 ('Bob Persichett'),
	 ('Shameik Moore'),
	 ('Jake Johnson');
INSERT INTO imdb.crew (name) VALUES
	 ('Todd Phillips'),
	 ('Joaquin Phoenix'),
	 ('Robert De Niro'),
	 ('Park Chan-wook'),
	 ('Choi Min-sik'),
	 ('Yoo Ji-Tae'),
	 ('Mel Gibson'),
	 ('Mel Gibson'),
	 ('Sophie Marceau'),
	 ('Milos Forman');
INSERT INTO imdb.crew (name) VALUES
	 ('F. Murray Abraham'),
	 ('Tom Hulce'),
	 ('John Lassete'),
	 ('Tom Hanks'),
	 ('Tim Allen'),
	 ('Lee Unkrich'),
	 ('Anthony Gonzalez'),
	 ('Gael García Bernal'),
	 ('Wolfgang Petersen'),
	 ('Jürgen Prochnow');
INSERT INTO imdb.crew (name) VALUES
	 ('Herbert Grönemeyer'),
	 ('Quentin Tarantino'),
	 ('Brad Pitt'),
	 ('Diane Kruger'),
	 ('Hayao Miyazak'),
	 ('Yôji Matsuda'),
	 ('Yuriko Ishida'),
	 ('Sergio Leone'),
	 ('Robert De Niro'),
	 ('James Woods');
INSERT INTO imdb.crew (name) VALUES
	 ('Anthony Russo'),
	 ('Robert Downey Jr.'),
	 ('Chris Evans'),
	 ('Gus Van Sant'),
	 ('Robin Williams'),
	 ('Matt Damon'),
	 ('Darren Aronofsky'),
	 ('Ellen Burstyn'),
	 ('Jared Leto'),
	 ('Lee Unkrich');
INSERT INTO imdb.crew (name) VALUES
	 ('Tom Hanks'),
	 ('Tim Allen'),
	 ('Stanley Donen'),
	 ('Gene Kelly'),
	 ('Donald O''Connor'),
	 ('Makoto Shinka'),
	 ('Ryûnosuke Kamiki'),
	 ('Mone Kamishiraishi'),
	 ('Rajkumar Hiran'),
	 ('Aamir Khan');
INSERT INTO imdb.crew (name) VALUES
	 ('Madhavan'),
	 ('Richard Marquan'),
	 ('Mark Hamill'),
	 ('Harrison Ford'),
	 ('Stanley Kubrick'),
	 ('Keir Dullea'),
	 ('Gary Lockwood'),
	 ('Quentin Tarantino'),
	 ('Harvey Keitel'),
	 ('Tim Roth');
INSERT INTO imdb.crew (name) VALUES
	 ('Michel Gondry'),
	 ('Jim Carrey'),
	 ('Kate Winslet'),
	 ('Akira Kurosawa'),
	 ('Toshirô Mifune'),
	 ('Yutaka Sada'),
	 ('Orson Welles'),
	 ('Orson Welles'),
	 ('Joseph Cotten'),
	 ('Nadine Labak');
INSERT INTO imdb.crew (name) VALUES
	 ('Zain Al Rafeea'),
	 ('Yordanos Shiferaw'),
	 ('David Lean'),
	 ('Peter O''Toole'),
	 ('Alec Guinness'),
	 ('Thomas Vinterberg'),
	 ('Mads Mikkelsen'),
	 ('Thomas Bo Larsen'),
	 ('Fritz Lang'),
	 ('Peter Lorre');
INSERT INTO imdb.crew (name) VALUES
	 ('Ellen Widmann'),
	 ('Alfred Hitchcock'),
	 ('Cary Grant'),
	 ('Eva Marie Saint'),
	 ('Dan Kwan'),
	 ('Michelle Yeoh'),
	 ('Stephanie Hsu'),
	 ('Alfred Hitchcock'),
	 ('James Stewart'),
	 ('Kim Novak');
INSERT INTO imdb.crew (name) VALUES
	 ('Jean-Pierre Jeunet'),
	 ('Audrey Tautou'),
	 ('Mathieu Kassovitz'),
	 ('Stanley Kubrick'),
	 ('Malcolm McDowell'),
	 ('Patrick Magee'),
	 ('Elem Klimov'),
	 ('Aleksey Kravchenko'),
	 ('Olga Mironova'),
	 ('Stanley Kubrick');
INSERT INTO imdb.crew (name) VALUES
	 ('Matthew Modine'),
	 ('R. Lee Ermey'),
	 ('Billy Wilde'),
	 ('Fred MacMurray'),
	 ('Barbara Stanwyck'),
	 ('Billy Wilde'),
	 ('Jack Lemmon'),
	 ('Shirley MacLaine'),
	 ('Brian De Palma'),
	 ('Al Pacino');
INSERT INTO imdb.crew (name) VALUES
	 ('Michelle Pfeiffer'),
	 ('Akira Kurosawa'),
	 ('Takashi Shimura'),
	 ('Nobuo Kaneko'),
	 ('Robert Mulligan'),
	 ('Gregory Peck'),
	 ('John Megna'),
	 ('George Roy Hill'),
	 ('Paul Newman'),
	 ('Robert Redford');
INSERT INTO imdb.crew (name) VALUES
	 ('Martin Scorsese'),
	 ('Robert De Niro'),
	 ('Jodie Foster'),
	 ('Curtis Hanson'),
	 ('Kevin Spacey'),
	 ('Russell Crowe'),
	 ('Pete Docte'),
	 ('Edward Asner'),
	 ('Jordan Nagai'),
	 ('Thomas Kail');
INSERT INTO imdb.crew (name) VALUES
	 ('Lin-Manuel Miranda'),
	 ('Phillipa Soo'),
	 ('Michael Mann'),
	 ('Al Pacino'),
	 ('Robert De Niro'),
	 ('Jon Watts'),
	 ('Tom Holland'),
	 ('Zendaya'),
	 ('Fritz Lang'),
	 ('Brigitte Helm');
INSERT INTO imdb.crew (name) VALUES
	 ('Alfred Abel'),
	 ('Guy Ritchie'),
	 ('Jason Statham'),
	 ('Brad Pitt'),
	 ('Asghar Farha'),
	 ('Payman Maadi'),
	 ('Leila Hatami'),
	 ('John McTiernan'),
	 ('Bruce Willis'),
	 ('Alan Rickman');
INSERT INTO imdb.crew (name) VALUES
	 ('Denis Villeneuve'),
	 ('Lubna Azabal'),
	 ('Mélissa Désormeaux-Poulin'),
	 ('Steven Spielberg'),
	 ('Harrison Ford'),
	 ('Sean Connery'),
	 ('Vittorio De Sica'),
	 ('Lamberto Maggiorani'),
	 ('Enzo Staiola'),
	 ('Sam Mendes');
INSERT INTO imdb.crew (name) VALUES
	 ('Dean-Charles Chapman'),
	 ('George MacKay'),
	 ('Aamir Khan'),
	 ('Darsheel Safary'),
	 ('Aamir Khan'),
	 ('Oliver Hirschbiegel'),
	 ('Bruno Ganz'),
	 ('Alexandra Maria Lara'),
	 ('Sergio Leone'),
	 ('Clint Eastwood');
INSERT INTO imdb.crew (name) VALUES
	 ('Lee Van Cleef'),
	 ('Christopher Nolan'),
	 ('Christian Bale'),
	 ('Michael Caine'),
	 ('Nitesh Tiwa'),
	 ('Aamir Khan'),
	 ('Sakshi Tanwar'),
	 ('Charles Chaplin'),
	 ('Charles Chaplin'),
	 ('Edna Purviance');
INSERT INTO imdb.crew (name) VALUES
	 ('Billy Wilde'),
	 ('Marilyn Monroe'),
	 ('Tony Curtis'),
	 ('Florian Zelle'),
	 ('Anthony Hopkins'),
	 ('Olivia Colman'),
	 ('Joseph L. Mankiewicz'),
	 ('Bette Davis'),
	 ('Anne Baxter'),
	 ('Peter Farrelly');
INSERT INTO imdb.crew (name) VALUES
	 ('Viggo Mortensen'),
	 ('Mahershala Ali'),
	 ('Martin Scorsese'),
	 ('Leonardo DiCaprio'),
	 ('Jonah Hill'),
	 ('Stanley Krame'),
	 ('Spencer Tracy'),
	 ('Burt Lancaster'),
	 ('Clint Eastwoo'),
	 ('Clint Eastwood');
INSERT INTO imdb.crew (name) VALUES
	 ('Gene Hackman'),
	 ('Martin Scorsese'),
	 ('Robert De Niro'),
	 ('Sharon Stone'),
	 ('Guillermo del Toro'),
	 ('Ivana Baquero'),
	 ('Ariadna Gil'),
	 ('Akira Kurosawa'),
	 ('Tatsuya Nakadai'),
	 ('Akira Terao');
INSERT INTO imdb.crew (name) VALUES
	 ('Paul Thomas Anderson'),
	 ('Daniel Day-Lewis'),
	 ('Paul Dano'),
	 ('M. Night Shyamalan'),
	 ('Bruce Willis'),
	 ('Haley Joel Osment'),
	 ('Ron Howa'),
	 ('Russell Crowe'),
	 ('Ed Harris'),
	 ('Terry Gilliam');
INSERT INTO imdb.crew (name) VALUES
	 ('Graham Chapman'),
	 ('John Cleese'),
	 ('Peter We'),
	 ('Jim Carrey'),
	 ('Ed Harris'),
	 ('Akira Kurosawa'),
	 ('Toshirô Mifune'),
	 ('Eijirô Tôno'),
	 ('John Huston'),
	 ('Humphrey Bogart');
INSERT INTO imdb.crew (name) VALUES
	 ('Walter Huston'),
	 ('Akira Kurosawa'),
	 ('Toshirô Mifune'),
	 ('Machiko Kyô'),
	 ('John Sturges'),
	 ('Steve McQueen'),
	 ('James Garner'),
	 ('Martin Scorsese'),
	 ('Leonardo DiCaprio'),
	 ('Emily Mortimer');
INSERT INTO imdb.crew (name) VALUES
	 ('Steven Spielberg'),
	 ('Sam Neill'),
	 ('Laura Dern'),
	 ('Quentin Tarantino'),
	 ('Uma Thurman'),
	 ('David Carradine'),
	 ('Ethan Coen'),
	 ('Tommy Lee Jones'),
	 ('Javier Bardem'),
	 ('David Lynch');
INSERT INTO imdb.crew (name) VALUES
	 ('Anthony Hopkins'),
	 ('John Hurt'),
	 ('Andrew Stanton'),
	 ('Albert Brooks'),
	 ('Ellen DeGeneres'),
	 ('Martin Scorsese'),
	 ('Robert De Niro'),
	 ('Cathy Moriarty'),
	 ('Roman Polansk'),
	 ('Jack Nicholson');
INSERT INTO imdb.crew (name) VALUES
	 ('Faye Dunaway'),
	 ('Victor Fleming'),
	 ('Clark Gable'),
	 ('Vivien Leigh'),
	 ('James McTeigue'),
	 ('Hugo Weaving'),
	 ('Natalie Portman'),
	 ('Pete Docte'),
	 ('Amy Poehler'),
	 ('Bill Hader');
INSERT INTO imdb.crew (name) VALUES
	 ('John Carpente'),
	 ('Kurt Russell'),
	 ('Wilford Brimley'),
	 ('Guy Ritchie'),
	 ('Jason Flemyng'),
	 ('Dexter Fletcher'),
	 ('Alfred Hitchcock'),
	 ('Ray Milland'),
	 ('Grace Kelly'),
	 ('Juan José Campanella');
INSERT INTO imdb.crew (name) VALUES
	 ('Ricardo Darín'),
	 ('Soledad Villamil'),
	 ('David Lean'),
	 ('William Holden'),
	 ('Alec Guinness'),
	 ('Hayao Miyazak'),
	 ('Chieko Baishô'),
	 ('Takuya Kimura'),
	 ('Martin McDonagh'),
	 ('Frances McDormand');
INSERT INTO imdb.crew (name) VALUES
	 ('Woody Harrelson'),
	 ('Danny Boyle'),
	 ('Ewan McGregor'),
	 ('Ewen Bremner'),
	 ('Clint Eastwoo'),
	 ('Clint Eastwood'),
	 ('Bee Vang'),
	 ('Gavin O''Conno'),
	 ('Tom Hardy'),
	 ('Nick Nolte');
INSERT INTO imdb.crew (name) VALUES
	 ('Joel Coen'),
	 ('William H. Macy'),
	 ('Frances McDormand'),
	 ('Hayao Miyazak'),
	 ('Hitoshi Takagi'),
	 ('Noriko Hidaka'),
	 ('Denis Villeneuve'),
	 ('Hugh Jackman'),
	 ('Jake Gyllenhaal'),
	 ('Clint Eastwoo');
INSERT INTO imdb.crew (name) VALUES
	 ('Hilary Swank'),
	 ('Clint Eastwood'),
	 ('Charles Chaplin'),
	 ('Charles Chaplin'),
	 ('Mack Swain'),
	 ('Ridley Scott'),
	 ('Harrison Ford'),
	 ('Rutger Hauer'),
	 ('Steven Spielberg'),
	 ('Leonardo DiCaprio');
INSERT INTO imdb.crew (name) VALUES
	 ('Tom Hanks'),
	 ('Elia Kazan'),
	 ('Marlon Brando'),
	 ('Karl Malden'),
	 ('Carol Ree'),
	 ('Orson Welles'),
	 ('Joseph Cotten'),
	 ('Majid Maj'),
	 ('Mohammad Amir Naji'),
	 ('Amir Farrokh Hashemian');
INSERT INTO imdb.crew (name) VALUES
	 ('William Wyle'),
	 ('Charlton Heston'),
	 ('Jack Hawkins'),
	 ('Clyde Bruckman'),
	 ('Buster Keaton'),
	 ('Marion Mack'),
	 ('Steve McQueen'),
	 ('Chiwetel Ejiofor'),
	 ('Michael Kenneth Williams'),
	 ('Ingmar Bergman');
INSERT INTO imdb.crew (name) VALUES
	 ('Victor Sjöström'),
	 ('Bibi Andersson'),
	 ('David Finche'),
	 ('Ben Affleck'),
	 ('Rosamund Pike'),
	 ('Richard Linklate'),
	 ('Ethan Hawke'),
	 ('Julie Delpy'),
	 ('Michael Cimino'),
	 ('Robert De Niro');
INSERT INTO imdb.crew (name) VALUES
	 ('Christopher Walken'),
	 ('David Yates'),
	 ('Daniel Radcliffe'),
	 ('Emma Watson'),
	 ('Jim Sheridan'),
	 ('Daniel Day-Lewis'),
	 ('Pete Postlethwaite'),
	 ('Wes Anderson'),
	 ('Ralph Fiennes'),
	 ('F. Murray Abraham');
INSERT INTO imdb.crew (name) VALUES
	 ('Frank Capra'),
	 ('James Stewart'),
	 ('Jean Arthur'),
	 ('Henri-Georges Clouzot'),
	 ('Yves Montand'),
	 ('Charles Vanel'),
	 ('Buster Keaton'),
	 ('Buster Keaton'),
	 ('Kathryn McGuire'),
	 ('Stanley Kubrick');
INSERT INTO imdb.crew (name) VALUES
	 ('Ryan O''Neal'),
	 ('Marisa Berenson'),
	 ('Bong Joon Ho'),
	 ('Song Kang-ho'),
	 ('Kim Sang-kyung'),
	 ('Lenny Abrahamson'),
	 ('Brie Larson'),
	 ('Jacob Tremblay'),
	 ('Mel Gibson'),
	 ('Andrew Garfield');
INSERT INTO imdb.crew (name) VALUES
	 ('Sam Worthington'),
	 ('Sergio Pablos'),
	 ('Jason Schwartzman'),
	 ('J.K. Simmons'),
	 ('Ingmar Bergman'),
	 ('Max von Sydow'),
	 ('Gunnar Björnstrand'),
	 ('Damián Szifron'),
	 ('Darío Grandinetti'),
	 ('María Marull');
INSERT INTO imdb.crew (name) VALUES
	 ('Joel Coen'),
	 ('Jeff Bridges'),
	 ('John Goodman'),
	 ('Dean DeBlois'),
	 ('Jay Baruchel'),
	 ('Gerard Butler'),
	 ('George Mille'),
	 ('Tom Hardy'),
	 ('Charlize Theron'),
	 ('Adam Elliot');
INSERT INTO imdb.crew (name) VALUES
	 ('Toni Collette'),
	 ('Philip Seymour Hoffman'),
	 ('Pete Docte'),
	 ('Billy Crystal'),
	 ('John Goodman'),
	 ('Steven Spielberg'),
	 ('Roy Scheider'),
	 ('Robert Shaw'),
	 ('Carl Theodor Dreye'),
	 ('Maria Falconetti');
INSERT INTO imdb.crew (name) VALUES
	 ('Eugene Silvain'),
	 ('Satyajit Ray'),
	 ('Kanu Bannerjee'),
	 ('Karuna Bannerjee'),
	 ('Terry George'),
	 ('Don Cheadle'),
	 ('Sophie Okonedo'),
	 ('Peter We'),
	 ('Robin Williams'),
	 ('Robert Sean Leonard');
INSERT INTO imdb.crew (name) VALUES
	 ('Yasujirô Ozu'),
	 ('Chishû Ryû'),
	 ('Chieko Higashiyama'),
	 ('Oliver Stone'),
	 ('Charlie Sheen'),
	 ('Tom Berenger'),
	 ('John G. Avildsen'),
	 ('Sylvester Stallone'),
	 ('Talia Shire'),
	 ('James Mangol');
INSERT INTO imdb.crew (name) VALUES
	 ('Matt Damon'),
	 ('Christian Bale'),
	 ('Rob Reine'),
	 ('Wil Wheaton'),
	 ('River Phoenix'),
	 ('James Cameron'),
	 ('Arnold Schwarzenegger'),
	 ('Linda Hamilton'),
	 ('Ron Howa'),
	 ('Daniel Brühl');
INSERT INTO imdb.crew (name) VALUES
	 ('Chris Hemsworth'),
	 ('Tom McCarthy'),
	 ('Mark Ruffalo'),
	 ('Michael Keaton'),
	 ('Sean Penn'),
	 ('Emile Hirsch'),
	 ('Vince Vaughn'),
	 ('Sidney Lumet'),
	 ('Faye Dunaway'),
	 ('William Holden');
INSERT INTO imdb.crew (name) VALUES
	 ('Victor Fleming'),
	 ('Judy Garland'),
	 ('Frank Morgan'),
	 ('James Mangol'),
	 ('Hugh Jackman'),
	 ('Patrick Stewart'),
	 ('Harold Ramis'),
	 ('Bill Murray'),
	 ('Andie MacDowell'),
	 ('Brad B');
INSERT INTO imdb.crew (name) VALUES
	 ('Brad Garrett'),
	 ('Lou Romano'),
	 ('William Friedkin'),
	 ('Ellen Burstyn'),
	 ('Max von Sydow'),
	 ('Richard Linklate'),
	 ('Ethan Hawke'),
	 ('Julie Delpy'),
	 ('William Wyle'),
	 ('Myrna Loy');
INSERT INTO imdb.crew (name) VALUES
	 ('Dana Andrews'),
	 ('Brad B'),
	 ('Craig T. Nelson'),
	 ('Samuel L. Jackson'),
	 ('Ernst Lubitsch'),
	 ('Carole Lombard'),
	 ('Jack Benny'),
	 ('Gillo Pontecorvo'),
	 ('Brahim Hadjadj'),
	 ('Jean Martin');
INSERT INTO imdb.crew (name) VALUES
	 ('Alfred Hitchcock'),
	 ('Laurence Olivier'),
	 ('Joan Fontaine'),
	 ('John Fo'),
	 ('Henry Fonda'),
	 ('Jane Darwell'),
	 ('Lasse Hallström'),
	 ('Richard Gere'),
	 ('Joan Allen'),
	 ('Stuart Rosenberg');
INSERT INTO imdb.crew (name) VALUES
	 ('Paul Newman'),
	 ('George Kennedy'),
	 ('Alejandro G. Iñárritu'),
	 ('Emilio Echevarría'),
	 ('Gael García Bernal'),
	 ('Gore Verbinsk'),
	 ('Johnny Depp'),
	 ('Geoffrey Rush'),
	 ('François Truffaut'),
	 ('Jean-Pierre Léaud');
INSERT INTO imdb.crew (name) VALUES
	 ('Albert Rémy'),
	 ('Akira Kurosawa'),
	 ('Maksim Munzuk'),
	 ('Yuriy Solomin'),
	 ('Mathieu Kassovitz'),
	 ('Vincent Cassel'),
	 ('Hubert Koundé'),
	 ('Ingmar Bergman'),
	 ('Bibi Andersson'),
	 ('Liv Ullmann');
INSERT INTO imdb.crew (name) VALUES
	 ('Cagan Irmak'),
	 ('Çetin Tekindor'),
	 ('Fikret Kuskan'),
	 ('Terry Jones'),
	 ('Graham Chapman'),
	 ('John Cleese'),
	 ('Robert Wise'),
	 ('Julie Andrews'),
	 ('Christopher Plummer'),
	 ('Frank Capra');
INSERT INTO imdb.crew (name) VALUES
	 ('Clark Gable'),
	 ('Claudette Colbert'),
	 ('Park Chan-wook'),
	 ('Kim Min-hee'),
	 ('Ha Jung-woo'),
	 ('Ron Clements'),
	 ('Scott Weinger'),
	 ('Robin Williams'),
	 ('Richard Attenborough'),
	 ('Ben Kingsley');
INSERT INTO imdb.crew (name) VALUES
	 ('John Gielgud'),
	 ('Tate Taylo'),
	 ('Emma Stone'),
	 ('Viola Davis'),
	 ('Gary Trousdale'),
	 ('Paige O''Hara'),
	 ('Robby Benson'),
	 ('Kevin Costne'),
	 ('Kevin Costner'),
	 ('Mary McDonnell');

-- imdb.`cast` definition

CREATE TABLE `cast` (
  `id_movie` int(3) DEFAULT NULL,
  `id_actor` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

ALTER TABLE `cast` AUTO_INCREMENT = 1;

INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (1,2),
	 (1,3),
	 (2,5),
	 (2,6),
	 (3,8),
	 (3,9),
	 (4,11),
	 (4,12),
	 (5,14),
	 (5,15);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (6,17),
	 (6,18),
	 (7,20),
	 (7,21),
	 (8,23),
	 (8,24),
	 (9,26),
	 (9,27),
	 (10,29),
	 (10,30);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (11,32),
	 (11,33),
	 (12,35),
	 (12,36),
	 (13,38),
	 (13,39),
	 (14,41),
	 (14,42),
	 (15,44),
	 (15,45);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (16,47),
	 (16,48),
	 (17,50),
	 (17,51),
	 (18,53),
	 (18,54),
	 (19,56),
	 (19,57),
	 (20,59),
	 (20,60);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (21,62),
	 (21,63),
	 (22,65),
	 (22,66),
	 (23,68),
	 (23,69),
	 (24,71),
	 (24,72),
	 (25,74),
	 (25,75);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (26,77),
	 (26,78),
	 (27,80),
	 (27,81),
	 (28,83),
	 (28,84),
	 (29,86),
	 (29,87),
	 (30,89),
	 (30,90);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (31,92),
	 (31,93),
	 (32,95),
	 (32,96),
	 (33,98),
	 (33,99),
	 (34,101),
	 (34,102),
	 (35,104),
	 (35,105);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (36,107),
	 (36,108),
	 (37,110),
	 (37,111),
	 (38,113),
	 (38,114),
	 (39,116),
	 (39,117),
	 (40,119),
	 (40,120);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (41,122),
	 (41,123),
	 (42,125),
	 (42,126),
	 (43,128),
	 (43,129),
	 (44,131),
	 (44,132),
	 (45,134),
	 (45,135);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (46,137),
	 (46,138),
	 (47,140),
	 (47,141),
	 (48,143),
	 (48,144),
	 (49,146),
	 (49,147),
	 (50,149),
	 (50,150);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (51,152),
	 (51,153),
	 (52,155),
	 (52,156),
	 (53,158),
	 (53,159),
	 (54,161),
	 (54,162),
	 (55,164),
	 (55,165);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (56,167),
	 (56,168),
	 (57,170),
	 (57,171),
	 (58,173),
	 (58,174),
	 (59,176),
	 (59,177),
	 (60,179),
	 (60,180);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (61,182),
	 (61,183),
	 (62,185),
	 (62,186),
	 (63,188),
	 (63,189),
	 (64,191),
	 (64,192),
	 (65,194),
	 (65,195);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (66,197),
	 (66,198),
	 (67,200),
	 (67,201),
	 (68,203),
	 (68,204),
	 (69,206),
	 (69,207),
	 (70,209),
	 (70,210);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (71,212),
	 (71,213),
	 (72,215),
	 (72,216),
	 (73,218),
	 (73,219),
	 (74,221),
	 (74,222),
	 (75,224),
	 (75,225);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (76,227),
	 (76,228),
	 (77,230),
	 (77,231),
	 (78,233),
	 (78,234),
	 (79,236),
	 (79,237),
	 (80,239),
	 (80,240);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (81,242),
	 (81,243),
	 (82,245),
	 (82,246),
	 (83,248),
	 (83,249),
	 (84,251),
	 (84,252),
	 (85,254),
	 (85,255);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (86,257),
	 (86,258),
	 (87,260),
	 (87,261),
	 (88,263),
	 (88,264),
	 (89,266),
	 (89,267),
	 (90,269),
	 (90,270);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (91,272),
	 (91,273),
	 (92,275),
	 (92,276),
	 (93,278),
	 (93,279),
	 (94,281),
	 (94,282),
	 (95,284),
	 (95,285);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (96,287),
	 (96,288),
	 (97,290),
	 (97,291),
	 (98,293),
	 (98,294),
	 (99,296),
	 (99,297),
	 (100,299),
	 (100,300);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (101,302),
	 (101,303),
	 (102,305),
	 (102,306),
	 (103,308),
	 (103,309),
	 (104,311),
	 (104,312),
	 (105,314),
	 (105,315);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (106,317),
	 (106,318),
	 (107,320),
	 (107,321),
	 (108,323),
	 (108,324),
	 (109,326),
	 (109,327),
	 (110,329),
	 (110,330);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (111,332),
	 (111,333),
	 (112,335),
	 (112,336),
	 (113,338),
	 (113,339),
	 (114,341),
	 (114,342),
	 (115,344),
	 (115,345);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (116,347),
	 (116,348),
	 (117,350),
	 (117,351),
	 (118,353),
	 (118,354),
	 (119,356),
	 (119,357),
	 (120,359),
	 (120,360);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (121,362),
	 (121,363),
	 (122,365),
	 (122,366),
	 (123,368),
	 (123,369),
	 (124,371),
	 (124,372),
	 (125,374),
	 (125,375);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (126,377),
	 (126,378),
	 (127,380),
	 (127,381),
	 (128,383),
	 (128,384),
	 (129,386),
	 (129,387),
	 (130,389),
	 (130,390);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (131,392),
	 (131,393),
	 (132,395),
	 (132,396),
	 (133,398),
	 (133,399),
	 (134,401),
	 (134,402),
	 (135,404),
	 (135,405);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (136,407),
	 (136,408),
	 (137,410),
	 (137,411),
	 (138,413),
	 (138,414),
	 (139,416),
	 (139,417),
	 (140,419),
	 (140,420);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (141,422),
	 (141,423),
	 (142,425),
	 (142,426),
	 (143,428),
	 (143,429),
	 (144,431),
	 (144,432),
	 (145,434),
	 (145,435);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (146,437),
	 (146,438),
	 (147,440),
	 (147,441),
	 (148,443),
	 (148,444),
	 (149,446),
	 (149,447),
	 (150,449),
	 (150,450);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (151,452),
	 (151,453),
	 (152,455),
	 (152,456),
	 (153,458),
	 (153,459),
	 (154,461),
	 (154,462),
	 (155,464),
	 (155,465);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (156,467),
	 (156,468),
	 (157,470),
	 (157,471),
	 (158,473),
	 (158,474),
	 (159,476),
	 (159,477),
	 (160,479),
	 (160,480);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (161,482),
	 (161,483),
	 (162,485),
	 (162,486),
	 (163,488),
	 (163,489),
	 (164,491),
	 (164,492),
	 (165,494),
	 (165,495);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (166,497),
	 (166,498),
	 (167,500),
	 (167,501),
	 (168,503),
	 (168,504),
	 (169,506),
	 (169,507),
	 (170,509),
	 (170,510);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (171,512),
	 (171,513),
	 (172,515),
	 (172,516),
	 (173,518),
	 (173,519),
	 (174,521),
	 (174,522),
	 (175,524),
	 (175,525);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (176,527),
	 (176,528),
	 (177,530),
	 (177,531),
	 (178,533),
	 (178,534),
	 (179,536),
	 (179,537),
	 (180,539),
	 (180,540);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (181,542),
	 (181,543),
	 (182,545),
	 (182,546),
	 (183,548),
	 (183,549),
	 (184,551),
	 (184,552),
	 (185,554),
	 (185,555);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (186,557),
	 (186,558),
	 (187,560),
	 (187,561),
	 (188,563),
	 (188,564),
	 (189,566),
	 (189,567),
	 (190,569),
	 (190,570);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (191,572),
	 (191,573),
	 (192,575),
	 (192,576),
	 (193,578),
	 (193,579),
	 (194,581),
	 (194,582),
	 (195,584),
	 (195,585);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (196,587),
	 (196,588),
	 (197,590),
	 (197,591),
	 (198,593),
	 (198,594),
	 (199,596),
	 (199,597),
	 (200,599),
	 (200,600);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (201,602),
	 (201,603),
	 (202,605),
	 (202,606),
	 (203,608),
	 (203,609),
	 (204,611),
	 (204,612),
	 (205,614),
	 (205,615);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (206,617),
	 (206,618),
	 (207,620),
	 (207,621),
	 (208,623),
	 (208,624),
	 (209,626),
	 (209,627),
	 (210,629),
	 (210,630);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (211,632),
	 (211,633),
	 (212,635),
	 (212,636),
	 (213,638),
	 (213,639),
	 (214,641),
	 (214,642),
	 (215,644),
	 (215,645);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (216,647),
	 (216,648),
	 (217,650),
	 (217,651),
	 (218,653),
	 (218,654),
	 (219,656),
	 (219,657),
	 (220,659),
	 (220,660);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (221,662),
	 (221,663),
	 (222,665),
	 (222,666),
	 (223,668),
	 (223,669),
	 (224,671),
	 (224,672),
	 (225,674),
	 (225,675);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (226,677),
	 (226,678),
	 (227,680),
	 (227,681),
	 (228,683),
	 (228,684),
	 (229,686),
	 (229,687),
	 (230,689),
	 (230,690);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (231,692),
	 (231,693),
	 (232,695),
	 (232,696),
	 (233,698),
	 (233,699),
	 (234,701),
	 (234,702),
	 (235,704),
	 (235,705);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (236,707),
	 (236,708),
	 (237,710),
	 (237,711),
	 (238,713),
	 (238,714),
	 (239,716),
	 (239,717),
	 (240,719),
	 (240,720);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (241,722),
	 (241,723),
	 (242,725),
	 (242,726),
	 (243,728),
	 (243,729),
	 (244,731),
	 (244,732),
	 (245,734),
	 (245,735);
INSERT INTO imdb.`cast` (id_movie,id_actor) VALUES
	 (246,737),
	 (246,738),
	 (247,740),
	 (247,741),
	 (248,743),
	 (248,744),
	 (249,746),
	 (249,747),
	 (250,749),
	 (250,750);

