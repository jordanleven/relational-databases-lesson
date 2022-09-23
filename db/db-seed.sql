/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table genres
# ------------------------------------------------------------

DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The unique ID for a specific genre',
  `genre_name` varchar(45) DEFAULT NULL COMMENT 'The genre name',
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;

INSERT INTO `genres` (`genre_id`, `genre_name`)
VALUES
	(1,'Thriller'),
	(2,'Adventure'),
	(3,'Action'),
	(4,'Fantasy'),
	(5,'Family'),
	(6,'Science Fiction');

/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table movies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The unique ID for a specific movie',
  `title` varchar(45) DEFAULT NULL COMMENT 'The movie title',
  `duration` int(11) DEFAULT NULL COMMENT 'The duration of the movie in minutes',
  `studio` int(11) DEFAULT NULL COMMENT 'The primary key of the studio that produced a specific movie',
  `genre` int(11) DEFAULT NULL COMMENT 'The primary key of the genere associated with a specific movie',
  PRIMARY KEY (`movie_id`),
  KEY `id_idx` (`studio`),
  KEY `id_idx1` (`genre`),
  CONSTRAINT `genre_id` FOREIGN KEY (`genre`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `studio_id` FOREIGN KEY (`studio`) REFERENCES `studios` (`studio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;

INSERT INTO `movies` (`movie_id`, `title`, `duration`, `studio`, `genre`)
VALUES
	(1,'Backdraft',137,1,1),
	(2,'The Mummy',125,1,2),
	(3,'Terminator',108,2,3),
	(4,'Waterworld',176,1,3),
	(5,'Jurassic Park',128,1,2),
	(6,'Harry Potter and the Philosopher\'s Stone',152,3,4),
	(7,'Despicable Me',95,1,5),
	(8,'Transformers',143,4,3),
	(9,'Men in Black',98,5,6),
	(10,'E.T. the Extra-Terrestrial',114,1,5),
	(11,'Shrek',90,6,5),
	(12,'The Fast and the Furious',106,1,3),
	(13,'Jaws',124,1,2);

/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rides
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rides`;

CREATE TABLE `rides` (
  `movie_id` int(11) DEFAULT NULL COMMENT 'The primary key of a specific movie a ride is based on',
  `theme_park_id` int(11) DEFAULT NULL COMMENT 'The primary key of a theme park a is located in',
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT 'The name of a specific ride',
  UNIQUE KEY `movie_id` (`movie_id`,`theme_park_id`),
  KEY `theme_park_id` (`theme_park_id`),
  CONSTRAINT `movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `theme_park_id` FOREIGN KEY (`theme_park_id`) REFERENCES `theme_parks` (`theme_park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rides` WRITE;
/*!40000 ALTER TABLE `rides` DISABLE KEYS */;

INSERT INTO `rides` (`name`, `movie_id`, `theme_park_id`)
VALUES
	('Backdraft',1,3),
	('Revenge of the Mummy',2,2),
	('Waterworld: A Live Sea War Spectacular',4,1),
	('Despicable Me: Minion Mayhem',7,1),
	('Despicable Me: Minion Mayhem',7,2),
	('Despicable Me: Minion Mayhem',7,3),
	('Jurassic World: The Ride',5,1),
	('Jurassic Park River Adventure',5,2),
	('Transformers: The Ride 3D',8,1),
	('Revenge of the Mummy: The Ride',2,1),
	('Harry Potter and the Escape from Gringotts',6,2),
	('Harry Potter and the Forbidden Journey',6,1),
	('Men in Black: Alien Attack',9,2),
	('E.T. Adventure',10,2),
	('Fast & Furious: Supercharged',12,2),
	('Transformers: The Ride 3D',8,2),
	('Shrek: 4D',11,2),
	('Shrek: 4D',11,3),
	('Jurassic Park: The Ride',5,3),
	('T2-3D: Battle Across Time',3,3),
	('Jaws: The Ride',13,3);

/*!40000 ALTER TABLE `rides` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table studios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `studios`;

CREATE TABLE `studios` (
  `studio_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The primary key for a specific movie studio',
  `studio_name` varchar(45) DEFAULT NULL COMMENT 'The name of a specific movie studio',
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `studios` WRITE;
/*!40000 ALTER TABLE `studios` DISABLE KEYS */;

INSERT INTO `studios` (`studio_id`, `studio_name`)
VALUES
	(1,'Universal Studios'),
	(2,'TriStar'),
	(3,'Warner Brothers'),
	(4,'Paramount Pictures'),
	(5,'Columbia Pictures'),
	(6,'Dreamworks');

/*!40000 ALTER TABLE `studios` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table theme_parks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `theme_parks`;

CREATE TABLE `theme_parks` (
  `theme_park_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The unique ID of a specific theme park',
  `location` varchar(45) DEFAULT NULL COMMENT 'The location of a specific theme park',
  PRIMARY KEY (`theme_park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `theme_parks` WRITE;
/*!40000 ALTER TABLE `theme_parks` DISABLE KEYS */;

INSERT INTO `theme_parks` (`theme_park_id`, `location`)
VALUES
	(1,'Hollywood'),
	(2,'Orlando'),
	(3,'Japan');

/*!40000 ALTER TABLE `theme_parks` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
