-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para cine
DROP DATABASE IF EXISTS `cine`;
CREATE DATABASE IF NOT EXISTS `cine` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cine`;

-- Volcando estructura para tabla cine.actores
DROP TABLE IF EXISTS `actores`;
CREATE TABLE IF NOT EXISTS `actores` (
  `codigo` char(10) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido1` varchar(80) NOT NULL,
  `apellido2` varchar(80) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `UQ_act_nom_ap` (`nombre`,`apellido1`,`apellido2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.actores: ~37 rows (aproximadamente)
DELETE FROM `actores`;
INSERT INTO `actores` (`codigo`, `nombre`, `apellido1`, `apellido2`, `fecha_nac`) VALUES
	('ACT_000001', 'Uma', 'Thurman', NULL, '1970-04-29'),
	('ACT_000002', 'Lucy', 'Liu', NULL, '1968-12-02'),
	('ACT_000003', 'Leonardo', 'DiCaprio', NULL, '1947-11-11'),
	('ACT_000004', 'Kate', 'Winslet', NULL, '1975-10-05'),
	('ACT_000005', 'Liam', 'Neeson', NULL, '1952-06-07'),
	('ACT_000006', 'Ben', 'Kingsley', NULL, '1943-12-31'),
	('ACT_000007', 'Brad', 'Pitt', NULL, '1963-12-18'),
	('ACT_000008', 'Morgan', 'Freeman', NULL, '1937-06-01'),
	('ACT_000009', 'Edward', 'Norton', NULL, '1969-08-18'),
	('ACT_000010', 'Al', 'Pacino', NULL, '1940-04-25'),
	('ACT_000011', 'Marlon', 'Brando', NULL, '1924-04-03'),
	('ACT_000012', 'Samuel', 'L.', 'Jackson', '1948-12-21'),
	('ACT_000013', 'John', 'Travolta', NULL, '1954-02-18'),
	('ACT_000014', 'Tom', 'Hanks', NULL, '1956-07-09'),
	('ACT_000015', 'Robin', 'Wright', NULL, '1966-04-08'),
	('ACT_000016', 'Keanu', 'Reves', NULL, '1964-09-02'),
	('ACT_000017', 'Laurence', 'Fishburne', NULL, '1961-07-30'),
	('ACT_000018', 'Roberto', 'Benigni', NULL, '1952-10-27'),
	('ACT_000019', 'Nicoletta', 'Braschi', NULL, '1960-04-19'),
	('ACT_000020', 'Millie', 'Bobby', NULL, '2004-02-19'),
	('ACT_000021', 'Finn', 'Wolhard', NULL, '1985-11-30'),
	('ACT_000022', 'Johnny', 'Galecki', NULL, '1975-04-30'),
	('ACT_000023', 'Kaley', 'Cuoco', NULL, '2002-12-23'),
	('ACT_000024', 'James', 'Gandolfini', NULL, '1961-09-18'),
	('ACT_000025', 'Edie', 'Falco', NULL, '1963-07-05'),
	('ACT_000026', 'Hugh', 'Laurie', NULL, '1959-06-11'),
	('ACT_000027', 'Lisa', 'Edelstein', NULL, '1966-05-21'),
	('ACT_000028', 'Sara', 'Jessica', 'Parker', '1965-03-25'),
	('ACT_000029', 'Kim', 'Cattrall', NULL, '1956-08-21'),
	('ACT_000030', 'Emilia', 'Clarke', NULL, '1986-10-23'),
	('ACT_000031', 'Kit', 'Harington', NULL, '1986-12-26'),
	('ACT_000032', 'Jennifer', 'Aniston', NULL, '1959-02-11'),
	('ACT_000033', 'Courteney', 'Cox', NULL, '1964-06-15'),
	('ACT_000034', 'Bryan', 'Cranston', NULL, '1956-03-07'),
	('ACT_000035', 'Aaron', 'Paul', NULL, '1979-08-27'),
	('ACT_000036', 'Taylor', 'Schilling', NULL, '1984-07-27'),
	('ACT_000037', 'Laura', 'Prepon', NULL, '1980-03-07');

-- Volcando estructura para tabla cine.direccion_peli
DROP TABLE IF EXISTS `direccion_peli`;
CREATE TABLE IF NOT EXISTS `direccion_peli` (
  `id_peli` int NOT NULL,
  `codigo_direc` char(10) NOT NULL,
  PRIMARY KEY (`id_peli`,`codigo_direc`),
  KEY `fk_dirpeli_direc` (`codigo_direc`),
  CONSTRAINT `fk_dirpeli_direc` FOREIGN KEY (`codigo_direc`) REFERENCES `directores` (`codigo`),
  CONSTRAINT `fk_dirpeli_peli` FOREIGN KEY (`id_peli`) REFERENCES `peliculas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.direccion_peli: ~11 rows (aproximadamente)
DELETE FROM `direccion_peli`;
INSERT INTO `direccion_peli` (`id_peli`, `codigo_direc`) VALUES
	(1, 'DIR_000001'),
	(7, 'DIR_000001'),
	(2, 'DIR_000002'),
	(3, 'DIR_000003'),
	(4, 'DIR_000004'),
	(5, 'DIR_000004'),
	(6, 'DIR_000005'),
	(8, 'DIR_000006'),
	(9, 'DIR_000007'),
	(9, 'DIR_000008'),
	(10, 'DIR_000009');

-- Volcando estructura para tabla cine.direccion_serie
DROP TABLE IF EXISTS `direccion_serie`;
CREATE TABLE IF NOT EXISTS `direccion_serie` (
  `id_serie` int NOT NULL,
  `codigo_direc` char(10) NOT NULL,
  PRIMARY KEY (`id_serie`,`codigo_direc`),
  KEY `fk_dirserie_direct` (`codigo_direc`),
  CONSTRAINT `fk_dirserie_direct` FOREIGN KEY (`codigo_direc`) REFERENCES `directores` (`codigo`),
  CONSTRAINT `fk_dirserie_serie` FOREIGN KEY (`id_serie`) REFERENCES `series` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.direccion_serie: ~26 rows (aproximadamente)
DELETE FROM `direccion_serie`;
INSERT INTO `direccion_serie` (`id_serie`, `codigo_direc`) VALUES
	(9, 'DIR_000009'),
	(1, 'DIR_000010'),
	(1, 'DIR_000011'),
	(2, 'DIR_000012'),
	(2, 'DIR_000013'),
	(3, 'DIR_000014'),
	(3, 'DIR_000015'),
	(6, 'DIR_000015'),
	(4, 'DIR_000016'),
	(4, 'DIR_000017'),
	(5, 'DIR_000018'),
	(5, 'DIR_000019'),
	(6, 'DIR_000020'),
	(6, 'DIR_000021'),
	(7, 'DIR_000022'),
	(8, 'DIR_000023'),
	(8, 'DIR_000024'),
	(9, 'DIR_000025'),
	(10, 'DIR_000026'),
	(10, 'DIR_000027'),
	(2, 'DIR_000028'),
	(3, 'DIR_000029'),
	(4, 'DIR_000030'),
	(8, 'DIR_000031'),
	(7, 'DIR_000032'),
	(7, 'DIR_000033');

-- Volcando estructura para tabla cine.directores
DROP TABLE IF EXISTS `directores`;
CREATE TABLE IF NOT EXISTS `directores` (
  `codigo` char(10) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido1` varchar(80) NOT NULL,
  `apellido2` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `UQ_act_nom_ap` (`nombre`,`apellido1`,`apellido2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.directores: ~33 rows (aproximadamente)
DELETE FROM `directores`;
INSERT INTO `directores` (`codigo`, `nombre`, `apellido1`, `apellido2`) VALUES
	('DIR_000031', 'Adam', 'Bernstein', NULL),
	('DIR_000030', 'Allen', 'Coulter', NULL),
	('DIR_000013', 'Bill', 'Prady', NULL),
	('DIR_000012', 'Cuck', 'Lorre', NULL),
	('DIR_000021', 'D.', 'B.', 'Waiss'),
	('DIR_000018', 'Darren', 'Star', NULL),
	('DIR_000020', 'David', 'Benioff', NULL),
	('DIR_000014', 'David', 'Chase', NULL),
	('DIR_000022', 'David', 'Crane', NULL),
	('DIR_000004', 'David', 'Fincher', NULL),
	('DIR_000016', 'David', 'Shore', NULL),
	('DIR_000005', 'Francis', 'Ford', 'Coppola'),
	('DIR_000033', 'Gary', 'Halvorson', NULL),
	('DIR_000017', 'Greg', 'Yaitanes', NULL),
	('DIR_000002', 'James', 'Cameron', NULL),
	('DIR_000026', 'Jenji', 'Kohan', NULL),
	('DIR_000029', 'John', 'Patterson', NULL),
	('DIR_000008', 'Lana', 'Wachowski', NULL),
	('DIR_000007', 'Lily', 'Wachowski', NULL),
	('DIR_000028', 'Mark', 'Cendrowski', NULL),
	('DIR_000032', 'Marta', 'Kauffman', NULL),
	('DIR_000010', 'Matt', 'Duffer', NULL),
	('DIR_000019', 'Michael', 'Patrick', 'King'),
	('DIR_000027', 'Michael', 'Trim', NULL),
	('DIR_000024', 'Michelle', 'MacLaren', NULL),
	('DIR_000025', 'Otto', 'Bathurst', NULL),
	('DIR_000001', 'Quentin', 'Tarantino', NULL),
	('DIR_000006', 'Robert', 'Zemeckis', NULL),
	('DIR_000009', 'Roberto', 'Benigni', NULL),
	('DIR_000011', 'Ross', 'Duffer', NULL),
	('DIR_000003', 'Steven', 'Spielberg', NULL),
	('DIR_000015', 'Timothy', 'Van', 'Patten'),
	('DIR_000023', 'Vince', 'Gilligan', NULL);

-- Volcando estructura para tabla cine.generos
DROP TABLE IF EXISTS `generos`;
CREATE TABLE IF NOT EXISTS `generos` (
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.generos: ~7 rows (aproximadamente)
DELETE FROM `generos`;
INSERT INTO `generos` (`nombre`, `descripcion`) VALUES
	('Acción', 'Género donde prima la espectacularidad de las imágenes por medio de efectos especiales.'),
	('Ciencia ficción', 'Sitúa la acción en unas coordenadas espacio-temporales imaginarias y diferentes a las nuestras. Trata normalmente avances científicos y sociales que tienen un impacto en la sociedad.'),
	('Comedia', 'Es el género que trata de hacer reir al público y que está relacionado casi siempre con historias con final feliz.'),
	('Drama', 'Trata situaciones generalmente no épicas en un contexto serio y triste.'),
	('Fantástico', 'Es un género que se caracteriza por contener algún elemento de fantasía. Frecuentemente se incluye magia, mundos de fantasía exótica y personajes o criaturas irreales que de ningún modo pertenecen a la realidad conocida de nuestro mundo.'),
	('Romance', 'Se caracteriza por retratar argumentos construidos de eventos y personajes relacionados con la expresión del amor y las relaciones románticas. '),
	('Thriller', 'Se caracteriza por los estado de ánimo que provoca, dando a los espectadores una mayor sensación de suspenso, emoción, sorpresa, anticipación y ansiedad.');

-- Volcando estructura para tabla cine.peliculas
DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE IF NOT EXISTS `peliculas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `anio_estreno` year DEFAULT NULL,
  `nota` tinyint unsigned DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `es_preferida` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pelis_genero` (`genero`),
  CONSTRAINT `fk_pelis_genero` FOREIGN KEY (`genero`) REFERENCES `generos` (`nombre`),
  CONSTRAINT `ch_peli_nota` CHECK (((`nota` >= 0) and (`nota` <= 10)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.peliculas: ~10 rows (aproximadamente)
DELETE FROM `peliculas`;
INSERT INTO `peliculas` (`id`, `nombre`, `anio_estreno`, `nota`, `genero`, `es_preferida`) VALUES
	(1, 'Kill Bill', '2003', 8, 'Acción', 0),
	(2, 'Titanic', '1997', 7, 'Romance', 0),
	(3, 'La lista de Schindler', '1993', 7, 'Drama', 0),
	(4, 'Seven', '1995', 9, 'Thriller', 0),
	(5, 'El club de la lucha', '1999', 8, 'Drama', 0),
	(6, 'El Padrino', '1972', 9, 'Drama', 1),
	(7, 'Pulp Fiction', '1994', 10, 'Thriller', 1),
	(8, 'Forest Gump', '1994', 9, 'Comedia', 1),
	(9, 'Matrix', '1999', 8, 'Ciencia ficción', 1),
	(10, 'La vida es bella', '1997', 9, 'Drama', 1);

-- Volcando estructura para tabla cine.protas_peli
DROP TABLE IF EXISTS `protas_peli`;
CREATE TABLE IF NOT EXISTS `protas_peli` (
  `id_peli` int NOT NULL,
  `codigo_actor` char(10) NOT NULL,
  PRIMARY KEY (`id_peli`,`codigo_actor`),
  KEY `fk_protaspeli_actor` (`codigo_actor`),
  CONSTRAINT `fk_protaspeli_actor` FOREIGN KEY (`codigo_actor`) REFERENCES `actores` (`codigo`),
  CONSTRAINT `fk_protaspeli_peli` FOREIGN KEY (`id_peli`) REFERENCES `peliculas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.protas_peli: ~20 rows (aproximadamente)
DELETE FROM `protas_peli`;
INSERT INTO `protas_peli` (`id_peli`, `codigo_actor`) VALUES
	(1, 'ACT_000001'),
	(1, 'ACT_000002'),
	(2, 'ACT_000003'),
	(2, 'ACT_000004'),
	(3, 'ACT_000005'),
	(3, 'ACT_000006'),
	(4, 'ACT_000007'),
	(5, 'ACT_000007'),
	(4, 'ACT_000008'),
	(5, 'ACT_000009'),
	(6, 'ACT_000010'),
	(6, 'ACT_000011'),
	(7, 'ACT_000012'),
	(7, 'ACT_000013'),
	(8, 'ACT_000014'),
	(8, 'ACT_000015'),
	(9, 'ACT_000016'),
	(9, 'ACT_000017'),
	(10, 'ACT_000018'),
	(10, 'ACT_000019');

-- Volcando estructura para tabla cine.protas_serie
DROP TABLE IF EXISTS `protas_serie`;
CREATE TABLE IF NOT EXISTS `protas_serie` (
  `id_serie` int NOT NULL,
  `codigo_actor` char(10) NOT NULL,
  PRIMARY KEY (`id_serie`,`codigo_actor`),
  KEY `fk_protasserie_actor` (`codigo_actor`),
  CONSTRAINT `fk_protasserie_actor` FOREIGN KEY (`codigo_actor`) REFERENCES `actores` (`codigo`),
  CONSTRAINT `fk_protasserie_serie` FOREIGN KEY (`id_serie`) REFERENCES `series` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.protas_serie: ~18 rows (aproximadamente)
DELETE FROM `protas_serie`;
INSERT INTO `protas_serie` (`id_serie`, `codigo_actor`) VALUES
	(1, 'ACT_000020'),
	(1, 'ACT_000021'),
	(2, 'ACT_000022'),
	(2, 'ACT_000023'),
	(3, 'ACT_000024'),
	(3, 'ACT_000025'),
	(4, 'ACT_000026'),
	(4, 'ACT_000027'),
	(5, 'ACT_000028'),
	(5, 'ACT_000029'),
	(6, 'ACT_000030'),
	(6, 'ACT_000031'),
	(7, 'ACT_000032'),
	(7, 'ACT_000033'),
	(8, 'ACT_000034'),
	(8, 'ACT_000035'),
	(10, 'ACT_000036'),
	(10, 'ACT_000037');

-- Volcando estructura para tabla cine.series
DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `num_temporadas` int unsigned DEFAULT NULL,
  `anio_estreno` year DEFAULT NULL,
  `nota` tinyint unsigned DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `es_preferida` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_serie_genero` (`genero`),
  CONSTRAINT `fk_serie_genero` FOREIGN KEY (`genero`) REFERENCES `generos` (`nombre`),
  CONSTRAINT `ch_serie_nota` CHECK (((`nota` >= 0) and (`nota` <= 10)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla cine.series: ~10 rows (aproximadamente)
DELETE FROM `series`;
INSERT INTO `series` (`id`, `nombre`, `num_temporadas`, `anio_estreno`, `nota`, `genero`, `es_preferida`) VALUES
	(1, 'Stranger Things', 4, '2016', 7, 'Fantástico', 0),
	(2, 'Big Bang Theory', 12, '2007', 8, 'Comedia', 0),
	(3, 'Los Soprano', 6, '1999', 7, 'Thriller', 0),
	(4, 'House', 8, '2004', 8, 'Drama', 0),
	(5, 'Sexo en Nueva York', 6, '1998', 9, 'Romance', 0),
	(6, 'Juego de Tronos', 8, '2011', 10, 'Fantástico', 1),
	(7, 'Friends', 10, '1994', 9, 'Comedia', 1),
	(8, 'Breaking Bad', 5, '2008', 9, 'Thriller', 1),
	(9, 'Black Mirror', 5, '2011', 9, 'Ciencia ficción', 1),
	(10, 'Orange is the new black', 7, '2013', 8, 'Drama', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
