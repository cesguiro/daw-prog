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

-- directors definition

CREATE TABLE `directors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imdb_id` varchar(9) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthYear` int(4) DEFAULT NULL,
  `deathYear` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directors_imdb_id_IDX` (`imdb_id`) USING BTREE,
  UNIQUE KEY `directors_UN` (`imdb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8mb3;

ALTER TABLE `directors` AUTO_INCREMENT = 1;

INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0001104','Frank Darabont',1959,NULL),
	 ('nm0000338','Francis Ford Coppola',1939,NULL),
	 ('nm0634240','Christopher Nolan',1970,NULL),
	 ('nm0001486','Sidney Lumet',1924,2011),
	 ('nm0000229','Steven Spielberg',1946,NULL),
	 ('nm0001392','Peter Jackson',1961,NULL),
	 ('nm0000233','Quentin Tarantino',1963,NULL),
	 ('nm0001466','Sergio Leone',1929,1989),
	 ('nm0000709','Robert Zemeckis',1951,NULL),
	 ('nm0000399','David Fincher',1962,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0449984','Irvin Kershner',1923,2010),
	 ('nm0000217','Martin Scorsese',1942,NULL),
	 ('nm0001232','Milos Forman',1932,2018),
	 ('nm0000041','Akira Kurosawa',1910,1998),
	 ('nm0001008','Frank Capra',1897,1991),
	 ('nm0001129','Jonathan Demme',1944,2017),
	 ('nm0000905','Roberto Benigni',1952,NULL),
	 ('nm0000184','George Lucas',1944,NULL),
	 ('nm0000116','James Cameron',1954,NULL),
	 ('nm0594503','Hayao Miyazaki',1941,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0000591','Roman Polanski',1933,NULL),
	 ('nm0000033','Alfred Hitchcock',1899,1980),
	 ('nm0094435','Bong Joon Ho',1969,NULL),
	 ('nm0000108','Luc Besson',1959,NULL),
	 ('nm0000631','Ridley Scott',1937,NULL),
	 ('nm0443411','Tony Kaye',1952,NULL),
	 ('nm0001741','Bryan Singer',1965,NULL),
	 ('nm3227090','Damien Chazelle',1985,NULL),
	 ('nm0002031','Michael Curtiz',1886,1962),
	 ('nm0847223','Isao Takahata',1935,2018);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0462030','Masaki Kobayashi',1916,1996),
	 ('nm0000122','Charles Chaplin',1889,1977),
	 ('nm0868153','Giuseppe Tornatore',1956,NULL),
	 ('nm0004056','Andrew Stanton',1965,NULL),
	 ('nm0003697','Florian Henckel von Donnersmarck',1973,NULL),
	 ('nm0000697','Billy Wilder',1906,2002),
	 ('nm0000040','Stanley Kubrick',1928,1999),
	 ('nm0005222','Sam Mendes',1965,NULL),
	 ('nm0661791','Park Chan-wook',1963,NULL),
	 ('nm0005124','John Lasseter',1957,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0680846','Todd Phillips',1970,NULL),
	 ('nm0000154','Mel Gibson',1956,NULL),
	 ('nm0000583','Wolfgang Petersen',1941,NULL),
	 ('nm0001814','Gus Van Sant',1952,NULL),
	 ('nm1396121','Makoto Shinkai',1973,NULL),
	 ('nm0386246','Rajkumar Hirani',1962,NULL),
	 ('nm0004716','Darren Aronofsky',1969,NULL),
	 ('nm0881279','Lee Unkrich',1967,NULL),
	 ('nm1701024','Nadine Labaki',1974,NULL),
	 ('nm0549658','Richard Marquand',1937,1987);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0327273','Michel Gondry',1963,NULL),
	 ('nm0459552','Elem Klimov',1933,2003),
	 ('nm0899121','Thomas Vinterberg',1969,NULL),
	 ('nm0000080','Orson Welles',1915,1985),
	 ('nm0000485','Fritz Lang',1890,1976),
	 ('nm0000180','David Lean',1908,1991),
	 ('nm0000466','Jean-Pierre Jeunet',1953,NULL),
	 ('nm0000361','Brian De Palma',1940,NULL),
	 ('nm2371802','Thomas Kail',NULL,NULL),
	 ('nm0898288','Denis Villeneuve',1967,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0000520','Michael Mann',1943,NULL),
	 ('nm0612322','Robert Mulligan',1925,2008),
	 ('nm0001351','George Roy Hill',1921,2002),
	 ('nm1410815','Asghar Farhadi',1972,NULL),
	 ('nm0000436','Curtis Hanson',1945,2016),
	 ('nm0001532','John McTiernan',1951,NULL),
	 ('nm2676052','Joseph Kosinski',1974,NULL),
	 ('nm0005363','Guy Ritchie',1968,NULL),
	 ('nm0001120','Vittorio De Sica',1901,1974),
	 ('nm0386570','Oliver Hirschbiegel',1957,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm4318159','Nitesh Tiwari',NULL,NULL),
	 ('nm1725469','Florian Zeller',1979,NULL),
	 ('nm0000581','Joseph L. Mankiewicz',1909,1993),
	 ('nm0268380','Peter Farrelly',1956,NULL),
	 ('nm0006452','Stanley Kramer',1913,2001),
	 ('nm0001837','Peter Weir',1944,NULL),
	 ('nm0000759','Paul Thomas Anderson',1970,NULL),
	 ('nm0868219','Guillermo del Toro',1964,NULL),
	 ('nm0000142','Clint Eastwood',1930,NULL),
	 ('nm0796117','M. Night Shyamalan',1970,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0000165','Ron Howard',1954,NULL),
	 ('nm0001379','John Huston',1906,1987),
	 ('nm0836328','John Sturges',1910,1992),
	 ('nm1218281','Jon Watts',1981,NULL),
	 ('nm0000118','John Carpenter',1948,NULL),
	 ('nm0000186','David Lynch',1946,NULL),
	 ('nm0574625','James McTeigue',NULL,NULL),
	 ('nm0002728','Juan José Campanella',1959,NULL),
	 ('nm1732981','Martin McDonagh',1970,NULL),
	 ('nm0000965','Danny Boyle',1956,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0640334','Gavin O''Connor',1963,NULL),
	 ('nm0006498','Majid Majidi',1959,NULL),
	 ('nm0000500','Richard Linklater',1960,NULL),
	 ('nm0946734','David Yates',1963,NULL),
	 ('nm2588606','Steve McQueen',1969,NULL),
	 ('nm0001415','Elia Kazan',1909,2003),
	 ('nm0943758','William Wyler',1902,1981),
	 ('nm0027572','Wes Anderson',1969,NULL),
	 ('nm0000005','Ingmar Bergman',1918,2007),
	 ('nm0006487','Jim Sheridan',1949,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0715346','Carol Reed',1906,1976),
	 ('nm0001047','Michael Cimino',1939,2016),
	 ('nm0167241','Henri-Georges Clouzot',1907,1977),
	 ('nm0000036','Buster Keaton',1895,1966),
	 ('nm1167933','Damián Szifron',1975,NULL),
	 ('nm0004306','George Miller',1945,NULL),
	 ('nm0254178','Adam Elliot',1972,NULL),
	 ('nm1049433','Lenny Abrahamson',1966,NULL),
	 ('nm0654868','Yasujirô Ozu',1903,1963),
	 ('nm0003433','Carl Theodor Dreyer',1889,1968);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0003506','James Mangold',1963,NULL),
	 ('nm0313623','Terry George',1952,NULL),
	 ('nm0000814','John G. Avildsen',1935,2017),
	 ('nm0000231','Oliver Stone',1946,NULL),
	 ('nm0565336','Tom McCarthy',1966,NULL),
	 ('nm0001661','Rob Reiner',1947,NULL),
	 ('nm0000576','Sean Penn',1960,NULL),
	 ('nm0000601','Harold Ramis',1944,2014),
	 ('nm0001243','William Friedkin',1935,NULL),
	 ('nm0006249','Satyajit Ray',1921,1992);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0083348','Brad Bird',1957,NULL),
	 ('nm0523932','Ernst Lubitsch',1892,1947),
	 ('nm0440913','Mathieu Kassovitz',1967,NULL),
	 ('nm0893659','Gore Verbinski',1964,NULL),
	 ('nm0690597','Gillo Pontecorvo',1919,2006),
	 ('nm0000406','John Ford',1894,1973),
	 ('nm0002120','Lasse Hallström',1946,NULL),
	 ('nm4377096','T.J. Gnanavel',NULL,NULL),
	 ('nm1463981','Cagan Irmak',1970,NULL),
	 ('nm0327944','Alejandro G. Iñárritu',1963,NULL);
INSERT INTO directors (imdb_id,name,birthYear,deathYear) VALUES
	 ('nm0742341','Stuart Rosenberg',1927,2007),
	 ('nm0000076','François Truffaut',1932,1984),
	 ('nm0936404','Robert Wise',1914,2005),
	 ('nm0001402','Terry Jones',1942,2020),
	 ('nm0853238','Tate Taylor',1969,NULL),
	 ('nm0000126','Kevin Costner',1955,NULL),
	 ('nm0000277','Richard Attenborough',1923,2014);


-- movies definition

CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imdb_id` varchar(9) NOT NULL,
  `title` varchar(57) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `image` varchar(161) DEFAULT NULL,
  `runtime` int(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `director_id` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `movies_UN` (`imdb_id`),
  UNIQUE KEY `movies_imdb_id_IDX` (`imdb_id`) USING BTREE,
  KEY `movies_FK` (`director_id`),
  CONSTRAINT `movies_FK` FOREIGN KEY (`director_id`) REFERENCES `directors` (`imdb_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb3;

ALTER TABLE `movies` AUTO_INCREMENT = 1;

INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0111161','Cadena perpetua',1994,'',142,'','nm0001104'),
	 ('tt0068646','El padrino',1972,'',175,'','nm0000338'),
	 ('tt0468569','El caballero oscuro',2008,'',152,'','nm0634240'),
	 ('tt0071562','El padrino (parte II)',1974,'',202,'','nm0000338'),
	 ('tt0050083','12 hombres sin piedad',1957,'',96,'','nm0001486'),
	 ('tt0108052','La lista de Schindler',1993,'',195,'','nm0000229'),
	 ('tt0167260','El señor de los anillos: El retorno del rey',2003,'',201,'','nm0001392'),
	 ('tt0110912','Pulp Fiction',1994,'',154,'','nm0000233'),
	 ('tt0120737','El señor de los anillos: La comunidad del anillo',2001,'',178,'','nm0001392'),
	 ('tt0060196',' El bueno, el feo y el malo',1966,'',161,'','nm0001466');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0109830','Forrest Gump',1994,'',142,'','nm0000709'),
	 ('tt0137523','El club de la lucha',1999,'',139,'','nm0000399'),
	 ('tt0167261','El señor de los anillos: Las dos torres',2002,'',179,'','nm0001392'),
	 ('tt1375666','Origen',2010,'',148,'','nm0634240'),
	 ('tt0080684','El imperio contraataca',1980,'',124,'','nm0449984'),
	 ('tt0099685','Uno de los nuestros',1990,'',145,'','nm0000217'),
	 ('tt0073486','Alguien voló sobre el nido del cuco',1975,'',133,'','nm0001232'),
	 ('tt0114369','Seven',1995,'',127,'','nm0000399'),
	 ('tt0047478','Los siete samuráis',1954,'',207,'','nm0000041'),
	 ('tt0038650','¡Qué bello es vivir!',1946,'',130,'','nm0001008');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0102926','El silencio de los corderos',1991,'',118,'','nm0001129'),
	 ('tt0120815','Salvar al soldado Ryan',1998,'',169,'','nm0000229'),
	 ('tt0816692','Interstellar',2014,'',169,'','nm0634240'),
	 ('tt0118799','La vida es bella',1997,'',116,'','nm0000905'),
	 ('tt0120689','La milla verde',1999,'',189,'','nm0001104'),
	 ('tt0076759','La guerra de las galaxias',1977,'',121,'','nm0000184'),
	 ('tt0103064','Terminator 2: El juicio final',1991,'',137,'','nm0000116'),
	 ('tt0088763','Regreso al futuro',1985,'',116,'','nm0000709'),
	 ('tt0245429','El viaje de Chihiro',2001,'',125,'','nm0594503'),
	 ('tt0253474','El pianista',2002,'',150,'','nm0000591');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0054215','Psicosis',1960,'',109,'','nm0000033'),
	 ('tt6751668','Parásitos',2019,'',132,'','nm0094435'),
	 ('tt0110413','El profesional (Léon)',1994,'',110,'','nm0000108'),
	 ('tt0172495','Gladiator (El gladiador)',2000,'',155,'','nm0000631'),
	 ('tt0120586','American History X',1998,'',119,'','nm0443411'),
	 ('tt0407887','Infiltrados',2006,'',151,'','nm0000217'),
	 ('tt0482571','El truco final (El prestigio)',2006,'',130,'','nm0634240'),
	 ('tt0114814','Sospechosos habituales',1995,'',106,'','nm0001741'),
	 ('tt2582802','Whiplash',2014,'',106,'','nm3227090'),
	 ('tt0034583','Casablanca',1942,'',102,'','nm0002031');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0095327','La tumba de las luciérnagas',1988,'',89,'','nm0847223'),
	 ('tt0056058','Harakiri',1962,'',133,'','nm0462030'),
	 ('tt0027977','Tiempos modernos',1936,'',87,'','nm0000122'),
	 ('tt0064116','Hasta que llegó su hora',1968,'',165,'','nm0001466'),
	 ('tt0095765','Cinema Paradiso',1988,'',155,'','nm0868153'),
	 ('tt0047396','La ventana indiscreta',1954,'',112,'','nm0000033'),
	 ('tt0078748','Alien, el octavo pasajero',1979,'',117,'','nm0000631'),
	 ('tt0021749','Luces de la ciudad',1931,'',87,'','nm0000122'),
	 ('tt0078788','Apocalypse Now',1979,'',147,'','nm0000338'),
	 ('tt0209144','Memento',2000,'',113,'','nm0634240');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt1853728','Django desencadenado',2012,'',165,'','nm0000233'),
	 ('tt0082971','En busca del arca perdida',1981,'',115,'','nm0000229'),
	 ('tt0910970','WALL·E',2008,'',98,'','nm0004056'),
	 ('tt0405094','La vida de los otros',2006,'',137,'','nm0003697'),
	 ('tt0043014','El crepúsculo de los dioses',1950,'',110,'','nm0000697'),
	 ('tt0050825','Senderos de gloria',1957,'',88,'','nm0000040'),
	 ('tt0081505','El resplandor',1980,'',146,'','nm0000040'),
	 ('tt0032553','El gran dictador',1940,'',125,'','nm0000122'),
	 ('tt0051201','Testigo de cargo',1957,'',116,'','nm0000697'),
	 ('tt0090605','Aliens El regreso',1986,'',137,'','nm0000116');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0169547','American Beauty',1999,'',122,'','nm0005222'),
	 ('tt0057012','¿Teléfono rojo? Volamos hacia Moscú',1964,'',95,'','nm0000040'),
	 ('tt1345836','El caballero oscuro: La leyenda renace',2012,'',164,'','nm0634240'),
	 ('tt0364569','Old Boy',2003,'',120,'','nm0661791'),
	 ('tt0361748','Malditos bastardos',2009,'',153,'','nm0000233'),
	 ('tt0086879','Amadeus',1984,'',160,'','nm0001232'),
	 ('tt0114709','Toy Story',1995,'',81,'','nm0005124'),
	 ('tt7286456','Joker',2019,'',122,'','nm0680846'),
	 ('tt0112573','Braveheart',1995,'',178,'','nm0000154'),
	 ('tt0082096','El submarino (Das Boot)',1981,'',149,'','nm0000583');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0119698','La princesa Mononoke',1997,'',134,'','nm0594503'),
	 ('tt0087843','Érase una vez en América',1984,'',229,'','nm0001466'),
	 ('tt0119217','El indomable Will Hunting',1997,'',126,'','nm0001814'),
	 ('tt5311514','Your Name',2016,'',106,'','nm1396121'),
	 ('tt1187043','3 Idiots',2009,'',170,'','nm0386246'),
	 ('tt0180093','Réquiem por un sueño',2000,'',102,'','nm0004716'),
	 ('tt0057565','El infierno del odio',1963,'',143,'','nm0000041'),
	 ('tt0435761','Toy Story 3',2010,'',103,'','nm0881279'),
	 ('tt8267604','Cafarnaúm',2018,'',126,'','nm1701024'),
	 ('tt0086190','El retorno del jedi',1983,'',131,'','nm0549658');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0338013','¡Olvídate de mí!',2004,'',108,'','nm0327273'),
	 ('tt0062622','2001 Una odisea del espacio',1968,'',149,'','nm0000040'),
	 ('tt0091251','Masacre (Ven y mira)',1985,'',142,'','nm0459552'),
	 ('tt0105236','Reservoir Dogs',1992,'',99,'','nm0000233'),
	 ('tt2106476','La caza',2012,'',115,'','nm0899121'),
	 ('tt0033467','Ciudadano Kane',1941,'',119,'','nm0000080'),
	 ('tt0022100','M, el vampiro de Düsseldorf',1931,'',117,'','nm0000485'),
	 ('tt0056172','Lawrence de Arabia',1962,'',218,'','nm0000180'),
	 ('tt0053125','Con la muerte en los talones',1959,'',136,'','nm0000033'),
	 ('tt0044741','Ikiru (Vivir)',1952,'',143,'','nm0000041');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0052357',' Vértigo (De entre los muertos)',1958,'',128,'','nm0000033'),
	 ('tt0053604','El apartamento',1960,'',125,'','nm0000697'),
	 ('tt0211915','Amelie',2001,'',122,'','nm0000466'),
	 ('tt0066921','La naranja mecánica',1971,'',136,'','nm0000040'),
	 ('tt0036775','Perdición',1944,'',107,'','nm0000697'),
	 ('tt0093058','La chaqueta metálica',1987,'',116,'','nm0000040'),
	 ('tt0086250','El precio del poder',1983,'',170,'','nm0000361'),
	 ('tt8503618','Hamilton',2020,'',160,'','nm2371802'),
	 ('tt1255953','Incendios',2010,'',131,'','nm0898288'),
	 ('tt0113277','Heat',1995,'',170,'','nm0000520');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0056592','Matar a un ruiseñor',1962,'',129,'','nm0612322'),
	 ('tt0070735','El golpe',1973,'',129,'','nm0001351'),
	 ('tt1832382','Nader y Simin, una separación',2011,'',123,'','nm1410815'),
	 ('tt0017136','Metrópolis',1927,'',153,'','nm0000485'),
	 ('tt0075314','Taxi Driver',1976,'',114,'','nm0000217'),
	 ('tt0119488','LA Confidential',1997,'',138,'','nm0000436'),
	 ('tt0095016','Jungla de cristal',1988,'',132,'','nm0001532'),
	 ('tt1745960','Top Gun: Maverick',2022,'',130,'','nm2676052'),
	 ('tt0208092','Snatch Cerdos y diamantes',2000,'',104,'','nm0005363'),
	 ('tt0097576','Indiana Jones y la última cruzada',1989,'',127,'','nm0000229');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0040522','Ladrón de bicicletas',1948,'',89,'','nm0001120'),
	 ('tt8579674','1917',2019,'',119,'','nm0005222'),
	 ('tt0363163','El hundimiento',2004,'',156,'','nm0386570'),
	 ('tt5074352','Dangal',2016,'',161,'','nm4318159'),
	 ('tt0059578','La muerte tenía un precio',1965,'',132,'','nm0001466'),
	 ('tt0372784','Batman Begins',2005,'',140,'','nm0634240'),
	 ('tt0012349','El chico',1921,'',68,'','nm0000122'),
	 ('tt0053291','Con faldas y a lo loco',1959,'',121,'','nm0000697'),
	 ('tt0042192','Eva al desnudo',1950,'',138,'','nm0000581'),
	 ('tt0993846','El lobo de Wall Street',2013,'',180,'','nm0000217');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt6966692','Green Book',2018,'',130,'','nm0268380'),
	 ('tt0055031','Vencedores o vencidos',1961,'',179,'','nm0006452'),
	 ('tt0089881','Ran',1985,'',162,'','nm0000041'),
	 ('tt0112641','Casino',1995,'',178,'','nm0000217'),
	 ('tt0120382','El show de Truman',1998,'',103,'','nm0001837'),
	 ('tt0469494','Pozos de ambición',2007,'',158,'','nm0000759'),
	 ('tt0457430','El laberinto del fauno',2006,'',118,'','nm0868219'),
	 ('tt0105695','Sin perdón',1992,'',130,'','nm0000142'),
	 ('tt0167404','El sexto sentido',1999,'',107,'','nm0796117'),
	 ('tt1130884','Shutter Island',2010,'',138,'','nm0000217');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0268978','Una mente maravillosa',2001,'',135,'','nm0000165'),
	 ('tt0107290','Jurassic Park (Parque Jurásico)',1993,'',127,'','nm0000229'),
	 ('tt0055630','Yojimbo',1961,'',110,'','nm0000041'),
	 ('tt0040897','El tesoro de Sierra Madre',1948,'',126,'','nm0001379'),
	 ('tt0057115','La gran evasión',1963,'',172,'','nm0836328'),
	 ('tt0266697','Kill Bill: Volumen 1',2003,'',111,'','nm0000233'),
	 ('tt0042876','Rashomon',1950,'',88,'','nm0000041'),
	 ('tt0084787','La cosa (El enigma de otro mundo)',1982,'',109,'','nm0000118'),
	 ('tt0080678','El hombre elefante',1980,'',124,'','nm0000186'),
	 ('tt0071315','Chinatown',1974,'',130,'','nm0000591');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0081398','Toro salvaje',1980,'',129,'','nm0000217'),
	 ('tt0434409','V de vendetta',2005,'',132,'','nm0574625'),
	 ('tt0120735','Lock & Stock',1998,'',107,'','nm0005363'),
	 ('tt0046912','Crimen perfecto',1954,'',105,'','nm0000033'),
	 ('tt1305806','El secreto de sus ojos',2009,'',129,'','nm0002728'),
	 ('tt0347149','El castillo ambulante',2004,'',119,'','nm0594503'),
	 ('tt5027774','Tres anuncios en las afueras',2017,'',115,'','nm1732981'),
	 ('tt0117951','Trainspotting',1996,'',93,'','nm0000965'),
	 ('tt0050212','El puente sobre el río Kwai',1957,'',161,'','nm0000180'),
	 ('tt1392214','Prisioneros',2013,'',153,'','nm0898288');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt1291584','Warrior',2011,'',140,'','nm0640334'),
	 ('tt1205489','Gran Torino',2008,'',116,'','nm0000142'),
	 ('tt0096283','Mi vecino Totoro',1988,'',86,'','nm0594503'),
	 ('tt0264464','Atrápame si puedes',2002,'',141,'','nm0000229'),
	 ('tt0405159','Million Dollar Baby',2004,'',132,'','nm0000142'),
	 ('tt0118849','Children of Heaven',1997,'',89,'','nm0006498'),
	 ('tt0083658','Blade Runner',1982,'',117,'','nm0000631'),
	 ('tt0015864','La quimera del oro',1925,'',95,'','nm0000122'),
	 ('tt0112471','Antes de amanecer',1995,'',101,'','nm0000500'),
	 ('tt1201607','Harry Potter y las Reliquias de la Muerte: Parte 2',2011,'',130,'','nm0946734');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt2024544','12 Years a Slave',2013,'',134,'','nm2588606'),
	 ('tt0047296','La ley del silencio',1954,'',108,'','nm0001415'),
	 ('tt0052618','Ben-Hur',1959,'',212,'','nm0943758'),
	 ('tt2278388','El gran hotel Budapest',2014,'',99,'','nm0027572'),
	 ('tt2267998','Perdida',2014,'',149,'','nm0000399'),
	 ('tt0050986','Fresas salvajes',1957,'',91,'','nm0000005'),
	 ('tt0072684','Barry Lyndon',1975,'',185,'','nm0000040'),
	 ('tt0107207','En el nombre del padre',1993,'',133,'','nm0006487'),
	 ('tt0041959','El tercer hombre',1949,'',104,'','nm0715346'),
	 ('tt0077416','El cazador',1978,'',183,'','nm0001047');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt2119532','Hasta el último hombre',2016,'',139,'','nm0000154'),
	 ('tt0046268','El salario del miedo',1953,'',131,'','nm0167241'),
	 ('tt0353969','Memories of Murder (Crónica de un asesino en serie)',2003,'',131,'','nm0094435'),
	 ('tt0015324','El moderno Sherlock Holmes',1924,'',45,'','nm0000036'),
	 ('tt3011894','Relatos salvajes',2014,'',122,'','nm1167933'),
	 ('tt0031679','Caballero sin espada',1939,'',129,'','nm0001008'),
	 ('tt1392190','Mad Max: Furia en la carretera',2015,'',120,'','nm0004306'),
	 ('tt0978762','Mary and Max',2009,'',92,'','nm0254178'),
	 ('tt0050976','El séptimo sello',1957,'',96,'','nm0000005'),
	 ('tt0073195','Tiburón',1975,'',124,'','nm0000229');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt3170832','La habitación',2015,'',118,'','nm1049433'),
	 ('tt0097165','El club de los poetas muertos',1989,'',128,'','nm0001837'),
	 ('tt0046438','Cuentos de Tokio',1953,'',136,'','nm0654868'),
	 ('tt0019254','La pasión de Juana de Arco',1928,'',110,'','nm0003433'),
	 ('tt1950186','Le Mans ''66',2019,'',152,'','nm0003506'),
	 ('tt0395169','Hotel Rwanda',2004,'',121,'','nm0313623'),
	 ('tt0075148','Rocky',1976,'',120,'','nm0000814'),
	 ('tt0091763','Platoon',1986,'',120,'','nm0000231'),
	 ('tt1895587','Spotlight',2015,'',129,'','nm0565336'),
	 ('tt3315342','Logan',2017,'',137,'','nm0003506');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0088247','Terminator',1984,'',107,'','nm0000116'),
	 ('tt0092005','Cuenta conmigo',1986,'',89,'','nm0001661'),
	 ('tt1979320','Rush',2013,'',123,'','nm0000165'),
	 ('tt0074958','Network, un mundo implacable',1976,'',121,'','nm0001486'),
	 ('tt0381681','Antes del atardecer',2004,'',80,'','nm0000500'),
	 ('tt0758758','Hacia rutas salvajes',2007,'',148,'','nm0000576'),
	 ('tt0036868','Los mejores años de nuestra vida',1946,'',170,'','nm0943758'),
	 ('tt0107048','Atrapado en el tiempo',1993,'',101,'','nm0000601'),
	 ('tt0070047','El exorcista',1973,'',122,'','nm0001243'),
	 ('tt0048473','Pather Panchali (La canción del camino)',1955,'',125,'','nm0006249');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0317705','Los Increíbles',2004,'',115,'','nm0083348'),
	 ('tt0035446','Ser o no ser',1942,'',99,'','nm0523932'),
	 ('tt0113247','El odio',1995,'',98,'','nm0440913'),
	 ('tt0325980','Piratas del Caribe: La maldición de la Perla Negra',2003,'',143,'','nm0893659'),
	 ('tt0058946','La batalla de Argel',1966,'',121,'','nm0690597'),
	 ('tt0032551','Las uvas de la ira',1940,'',129,'','nm0000406'),
	 ('tt1028532','Siempre a tu lado (Hachiko)',2009,'',93,'','nm0002120'),
	 ('tt0476735','Mi padre y mi hijo',2005,'',112,'','nm1463981'),
	 ('tt0245712','Amores perros',2000,'',154,'','nm0327944'),
	 ('tt0032976','Rebeca',1940,'',130,'','nm0000033');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0061512','La leyenda del indomable',1967,'',127,'','nm0742341'),
	 ('tt4016934','La doncella',2016,'',145,'','nm0661791'),
	 ('tt0053198','Los cuatrocientos golpes',1959,'',99,'','nm0000076'),
	 ('tt0059742','Sonrisas y lágrimas',1965,'',172,'','nm0936404'),
	 ('tt0025316','Sucedió una noche',1934,'',105,'','nm0001008'),
	 ('tt0060827','Persona',1966,'',85,'','nm0000005'),
	 ('tt0079470','La vida de Brian',1979,'',94,'','nm0001402'),
	 ('tt0129167','El gigante de hierro',1999,'',86,'','nm0083348'),
	 ('tt1454029','Criadas y señoras',2011,'',146,'','nm0853238'),
	 ('tt0071411','Dersu Uzala (El cazador)',1975,'',142,'','nm0000041');
INSERT INTO movies (imdb_id,title,`year`,image,runtime,description,director_id) VALUES
	 ('tt0099348','Bailando con lobos',1990,'',181,'','nm0000126'),
	 ('tt0083987','Gandhi',1982,'',191,'','nm0000277');
