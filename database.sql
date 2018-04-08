CREATE DATABASE  IF NOT EXISTS `jennyb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci */;
USE `jennyb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jennyb
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `idActor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `lname` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `yearOfBirth` year(4) NOT NULL,
  PRIMARY KEY (`idActor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Robert','DeNiro',1943),(2,'Jack','Nicholson',1937),(3,'Johnny','Depp',1963),(4,'Brad','Pitt',1963),(5,'Meryl','Streep',1949),(6,'Jennifer','Lawrence',1990),(7,'Kate','Winslet',1975),(8,'Cate','Blanchett',1969),(9,'Nicole','Kidman',1967),(10,'Natalie','Portman',1981);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `idCustomer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `lname` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `adress` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `city` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `postalCode` varchar(8) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `phoneNumber` varchar(12) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Johannes','Jord','Vattengatan 30','Stockholm','997483','johannes@telia.com','073123456'),(2,'Ninni','Norberg','Kullerstenen 2','Stockholm','997483','ninni@gmail.com','073123457'),(3,'Fredrik','Filur','Gryt 1','Linköping','58225','fredrik@hotmail.com','073123789'),(4,'Therese','Tur','Gryt 1','Linköping','58225','tur@gmail.com','073123789'),(5,'Ylva','Yrväder','Grottorp 56','Sundsvall','14896','ylva@hotmail.com','070156973'),(6,'Bo','Boberg','Bergsvägen 4','Hedemora','45678','bo@gmail.com','070512985'),(7,'Ritva','Rikardsson','Ryd 4','Linköping','58224','ritva@telia.com','073678123'),(8,'George','Grön','Lidingö 3','Stocholm 997435','993487','george@hotmail.com','0850056734'),(9,'Nora','Nyqvist','Nygatan 56','Norrköping','45678','nora@gmail.com','076123456'),(10,'Carl','Cederlund','Gryt 2','Linköping','58225','carl@telia.com','0134567892');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `idDirector` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `lname` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `yearOfBirth` year(4) NOT NULL,
  PRIMARY KEY (`idDirector`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Steven','Speilberg',1946),(2,'David','Fincher',1967),(3,'Quentin','Tarantino',1981),(4,'James','Cameron',1954),(5,'Christopher','Nolan',1970),(6,'Ridley','Scott',1937),(7,'Rian','Johnsson',1975),(8,'Matt','Reeves',1966),(9,'Alex','Garland',1981),(10,'Sofia','Coppola',1975);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `idEmployee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `lname` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `phoneNumber` varchar(12) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`idEmployee`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Håkan','Håkansson','Säljare','073123456','hakan.hakansson@max.se'),(2,'Berit','Bengtsson','Administratör','073123567','berit@max.se'),(3,'Johan','Juline','Säljare','073123566','johan@max.se'),(4,'Pedro','Perez','Säljare','073123678','pedro@max.se'),(5,'Lina','Lauren','Säljare','070123456','lina@max.se'),(6,'Henrik','Hulk','Säljare','070123567','henrik@max.se'),(7,'Julia','Jakobsson','Webbmaster','074123456','julia@max.se'),(8,'Sanna','Sari','Chef','070456789','sanna@max.se'),(9,'Linus','Linslus','Säljare','070345123','linus@max.se'),(10,'Moa','Martinsson','Ekonomiansvarig','070987123','moa@max.se');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employee_trackrecord`
--

DROP TABLE IF EXISTS `employee_trackrecord`;
/*!50001 DROP VIEW IF EXISTS `employee_trackrecord`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employee_trackrecord` AS SELECT 
 1 AS `Employee`,
 1 AS `title`,
 1 AS `FilmsRentedOut`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `idFilm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `publicationYear` year(4) DEFAULT NULL,
  PRIMARY KEY (`idFilm`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Thor: Ragnarök','Thor is imprisoned on the planet Sakaar, and must race against time to return to Asgard and stop Ragnarök, the destruction of his world, which is at the hands of the powerful and ruthless villain Hela.',2017),(2,'Star Wars: The Last Jedi','Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order.',2017),(3,'Justice League','Fueled by his restored faith in humanity and inspired by Superman\'s selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy.',2017),(4,'Deadpool','A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.',2016),(5,'Suicide Squad','A secret government agency recruits some of the most dangerous incarcerated super-villains to form a defensive task force. Their first mission: save the world from the apocalypse.',2016),(6,'Avengers: Age of Ultron','When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan.',2015),(7,'Star Wars: The Force Awakens','Three decades after the Empire\'s defeat, a new threat arises in the militant First Order. Stormtrooper defector Finn and the scavenger Rey are caught up in the Resistance\'s search for the missing Luke Skywalker.',2015),(8,'The Man from U.N.C.L.E.','In the early 1960s, CIA agent Napoleon Solo and KGB operative Illya Kuryakin participate in a joint mission against a mysterious criminal organization, which is working to proliferate nuclear weapons.',2015),(9,'Guardians of the Galaxy','A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.',2014),(10,'Gone Girl','With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.',2014),(11,'Divergent','In a world divided by factions based on virtues, Tris learns she\'s Divergent and won\'t fit in. When she discovers a plot to destroy Divergents, Tris and the mysterious Four must find out what makes Divergents dangerous before it\'s too late.',2014),(12,'Lego-filmen','An ordinary LEGO construction worker, thought to be the prophesied as \"special\", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.',2014),(13,'Zootropolis','In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.',2016);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_has_actor`
--

DROP TABLE IF EXISTS `film_has_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_has_actor` (
  `idFilm` int(10) unsigned NOT NULL,
  `idActor` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idFilm`,`idActor`),
  KEY `fk_Film_has_Actor_Actor1_idx` (`idActor`),
  KEY `fk_Film_has_Actor_Film1_idx` (`idFilm`),
  CONSTRAINT `fk_Film_has_Actor_Actor1` FOREIGN KEY (`idActor`) REFERENCES `actor` (`idActor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Film_has_Actor_Film1` FOREIGN KEY (`idFilm`) REFERENCES `film` (`idFilm`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_has_actor`
--

LOCK TABLES `film_has_actor` WRITE;
/*!40000 ALTER TABLE `film_has_actor` DISABLE KEYS */;
INSERT INTO `film_has_actor` VALUES (2,1),(1,2),(3,2),(1,3),(4,3),(5,4),(6,5),(7,6),(12,6),(8,7),(9,8),(10,9),(4,10),(11,10);
/*!40000 ALTER TABLE `film_has_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_has_director`
--

DROP TABLE IF EXISTS `film_has_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_has_director` (
  `idFilm` int(10) unsigned NOT NULL,
  `idDirector` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idFilm`,`idDirector`),
  KEY `fk_Film_has_Director_Director1_idx` (`idDirector`),
  KEY `fk_Film_has_Director_Film1_idx` (`idFilm`),
  CONSTRAINT `fk_Film_has_Director_Director1` FOREIGN KEY (`idDirector`) REFERENCES `director` (`idDirector`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Film_has_Director_Film1` FOREIGN KEY (`idFilm`) REFERENCES `film` (`idFilm`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_has_director`
--

LOCK TABLES `film_has_director` WRITE;
/*!40000 ALTER TABLE `film_has_director` DISABLE KEYS */;
INSERT INTO `film_has_director` VALUES (1,1),(2,1),(11,1),(1,2),(3,2),(4,3),(5,4),(6,5),(12,5),(13,5),(7,6),(8,7),(3,8),(9,8),(10,9),(11,10),(13,10);
/*!40000 ALTER TABLE `film_has_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_has_genre`
--

DROP TABLE IF EXISTS `film_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_has_genre` (
  `idFilm` int(10) unsigned NOT NULL,
  `idGenre` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idFilm`,`idGenre`),
  KEY `fk_Film_has_Genre_Genre1_idx` (`idGenre`),
  KEY `fk_Film_has_Genre_Film_idx` (`idFilm`),
  CONSTRAINT `fk_Film_has_Genre_Film` FOREIGN KEY (`idFilm`) REFERENCES `film` (`idFilm`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Film_has_Genre_Genre1` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_has_genre`
--

LOCK TABLES `film_has_genre` WRITE;
/*!40000 ALTER TABLE `film_has_genre` DISABLE KEYS */;
INSERT INTO `film_has_genre` VALUES (1,1),(2,1),(6,1),(3,2),(4,2),(5,2),(9,2),(11,2),(1,3),(2,3),(3,3),(11,3),(10,4),(12,5),(13,5),(6,6),(7,7),(4,8),(8,8);
/*!40000 ALTER TABLE `film_has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmcopy`
--

DROP TABLE IF EXISTS `filmcopy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmcopy` (
  `idFilmCopy` int(11) NOT NULL AUTO_INCREMENT,
  `inStock` tinyint(1) unsigned DEFAULT NULL,
  `idFilm` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idFilmCopy`),
  KEY `fk_filmCopy_Film1_idx` (`idFilm`),
  CONSTRAINT `fk_filmCopy_Film1` FOREIGN KEY (`idFilm`) REFERENCES `film` (`idFilm`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmcopy`
--

LOCK TABLES `filmcopy` WRITE;
/*!40000 ALTER TABLE `filmcopy` DISABLE KEYS */;
INSERT INTO `filmcopy` VALUES (161,0,1),(162,0,1),(163,0,2),(164,1,3),(165,0,3),(166,1,3),(167,1,4),(168,0,5),(169,1,6),(170,0,7),(171,0,8),(172,0,8),(173,1,9),(174,1,10),(175,1,11),(176,1,12),(177,1,12),(178,0,12),(179,0,13),(180,0,13),(181,0,13),(182,1,13);
/*!40000 ALTER TABLE `filmcopy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `films_in_genre`
--

DROP TABLE IF EXISTS `films_in_genre`;
/*!50001 DROP VIEW IF EXISTS `films_in_genre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `films_in_genre` AS SELECT 
 1 AS `Genre`,
 1 AS `Films`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `films_in_library`
--

DROP TABLE IF EXISTS `films_in_library`;
/*!50001 DROP VIEW IF EXISTS `films_in_library`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `films_in_library` AS SELECT 
 1 AS `title`,
 1 AS `description`,
 1 AS `publicationYear`,
 1 AS `Genre`,
 1 AS `Director`,
 1 AS `Actor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `films_overdue`
--

DROP TABLE IF EXISTS `films_overdue`;
/*!50001 DROP VIEW IF EXISTS `films_overdue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `films_overdue` AS SELECT 
 1 AS `Serialnumber`,
 1 AS `title`,
 1 AS `Customer`,
 1 AS `rentDate`,
 1 AS `dueDate`,
 1 AS `DaysOverdue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `films_rented`
--

DROP TABLE IF EXISTS `films_rented`;
/*!50001 DROP VIEW IF EXISTS `films_rented`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `films_rented` AS SELECT 
 1 AS `Serialnr`,
 1 AS `Film`,
 1 AS `Customer`,
 1 AS `Employee`,
 1 AS `dueDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `idGenre` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genreType` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`idGenre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Äventyr'),(2,'Action'),(3,'Sci-fi'),(4,'Drama'),(5,'Animerat'),(6,'Skräck'),(7,'Thriller'),(8,'Komedi');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental` (
  `idRental` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idCustomer` int(10) unsigned NOT NULL,
  `rentDate` date NOT NULL,
  `dueDate` date NOT NULL,
  `idEmployee` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idRental`),
  KEY `fk_Rental_Customer1_idx` (`idCustomer`),
  KEY `fk_Rental_Employee1_idx` (`idEmployee`),
  CONSTRAINT `fk_Rental_Customer1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Rental_Employee1` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,1,'2018-04-02','2018-04-06',9),(2,3,'2018-04-01','2018-04-05',9),(3,2,'2018-03-25','2018-03-29',1),(4,1,'2018-03-03','2018-03-07',9),(5,4,'2018-02-19','2018-02-23',4),(6,5,'2018-03-13','2018-03-17',9),(7,2,'2018-01-05','2018-01-09',3),(8,10,'2018-03-29','2018-03-02',3),(9,6,'2018-01-10','2018-01-14',1),(10,9,'2018-04-02','2018-04-06',5),(11,2,'2018-03-29','2018-04-01',1),(12,7,'2018-03-29','2018-04-01',9),(13,9,'2018-04-09','2018-04-13',4),(14,5,'2018-04-01','2018-04-05',1),(15,5,'2018-03-01','2018-03-05',3),(16,7,'2018-03-07','2018-03-11',9),(17,2,'2018-03-15','2018-03-20',1),(18,2,'2017-03-15','2017-03-20',1),(19,7,'2018-04-05','2018-04-09',9),(20,9,'2018-04-05','2018-04-09',4),(21,8,'2018-02-09','2018-02-13',3),(22,8,'2018-04-06','2018-04-10',3),(26,6,'2018-04-06','2018-04-10',9),(27,4,'2018-04-06','2018-04-10',4);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentaldetails`
--

DROP TABLE IF EXISTS `rentaldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rentaldetails` (
  `idrentalDetails` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idRental` int(10) unsigned NOT NULL,
  `returnDate` date DEFAULT NULL,
  `idFilmCopy` int(11) NOT NULL,
  PRIMARY KEY (`idrentalDetails`),
  KEY `fk_rentalDetails_Rental1_idx` (`idRental`),
  KEY `fk_rentalDetails_filmCopy1_idx1` (`idFilmCopy`),
  CONSTRAINT `fk_rentalDetails_Rental1` FOREIGN KEY (`idRental`) REFERENCES `rental` (`idRental`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rentalDetails_filmCopy1` FOREIGN KEY (`idFilmCopy`) REFERENCES `filmcopy` (`idFilmCopy`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentaldetails`
--

LOCK TABLES `rentaldetails` WRITE;
/*!40000 ALTER TABLE `rentaldetails` DISABLE KEYS */;
INSERT INTO `rentaldetails` VALUES (1,1,NULL,161),(2,11,NULL,162),(3,12,NULL,163),(4,10,'2018-04-06',164),(5,2,NULL,165),(6,3,'2018-03-29',166),(7,4,'2018-03-07',167),(8,5,'2018-02-23',168),(9,6,'2018-03-17',169),(10,7,'2018-01-11',170),(11,8,'2018-03-02',171),(12,9,'2018-01-16',170),(13,14,'2018-04-05',176),(14,14,NULL,180),(15,13,NULL,179),(16,13,NULL,171),(17,15,'2018-03-05',171),(18,16,NULL,170),(19,17,'2018-03-20',162),(20,18,'2017-03-20',162),(21,19,NULL,172),(22,20,NULL,168),(24,21,'2018-02-10',162),(26,22,NULL,181),(29,26,NULL,178),(30,27,'2018-04-06',174);
/*!40000 ALTER TABLE `rentaldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `toplist_last_month`
--

DROP TABLE IF EXISTS `toplist_last_month`;
/*!50001 DROP VIEW IF EXISTS `toplist_last_month`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `toplist_last_month` AS SELECT 
 1 AS `Top5_last_month`,
 1 AS `Times_rented`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'jennyb'
--

--
-- Dumping routines for database 'jennyb'
--
/*!50003 DROP FUNCTION IF EXISTS `f_check_if_past_due_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_check_if_past_due_date`(
p_filmnr INT
) RETURNS varchar(5) CHARSET utf8mb4
BEGIN
	DECLARE filminstock TINYINT(1);
    DECLARE var_status VARCHAR(10);
	
    SELECT COUNT(rd.idFilmCopy) INTO filminstock FROM rental r
		INNER JOIN rentaldetails rd ON rd.idRental = r.idRental
		INNER JOIN filmcopy fc ON fc.idFilmCopy = rd.idFilmCopy
		WHERE r.dueDate < current_date()
			AND rd.returnDate = rd.returnDate is null
            AND rd.idFilmCopy = p_filmnr;
	IF (filminstock = 1)
	THEN    
		SET var_status = "True";
	ELSE
		SET var_status = "False";
	END IF;
RETURN (var_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rent_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_rent_movie`(
IN var_idCustomer INT,
OUT var_rentDate DATE,
OUT var_dueDate DATE,
IN var_idEmployee INT,
OUT var_idRental INT,
OUT var_returnDate DATE,
IN var_idFilmCopy INT,
OUT var_message VARCHAR(45)
)
BEGIN
	DECLARE filminstock TINYINT(1);
	SELECT inStock INTO filminstock FROM filmcopy f WHERE var_idFilmCopy = f.idFilmCopy;
   IF (filminstock = 1)
    THEN    
        SET var_rentDate = CURRENT_DATE();
		SET var_dueDate = DATE(DATE_ADD(var_rentDate, INTERVAL 4 DAY));
    
		INSERT INTO rental (`idCustomer`, `rentDate`, `dueDate`, `idEmployee`)
		VALUES (var_idCustomer, var_rentDate, var_dueDate, var_idEmployee);
        
        SET var_idRental = LAST_INSERT_ID();
		SET var_returnDate =  NULL;
	
		INSERT INTO rentaldetails (`idRental`, `returnDate`, `idFilmCopy`)
		VALUES (var_idRental, var_returnDate, var_idFilmCopy);
		
		UPDATE filmcopy SET inStock = 0 
		WHERE var_idFilmCopy = idFilmCopy;
        
        SET var_message = "Film is now rented";
	ELSE SET var_message = "Film is not in stock";
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_return_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_return_movie`(
IN var_idFilmCopy INT,
OUT var_returnDate DATE,
OUT var_message VARCHAR(45)
)
BEGIN
	DECLARE filminstock TINYINT(1);
	SELECT inStock INTO filminstock FROM filmcopy f WHERE var_idFilmCopy = f.idFilmCopy;
	IF (filminstock = 0)
    THEN    
		SET var_returnDate = CURRENT_DATE();
	
		UPDATE rentaldetails SET returnDate = var_returndate
        WHERE var_idFilmCopy = idFilmCopy;
		
		UPDATE filmcopy SET inStock = 1 
		WHERE var_idFilmCopy = idFilmCopy;
        
		CASE
            WHEN f_check_if_past_due_date(var_idFilmCopy) = "True"
            THEN SET var_message = "Film returned past due date";
			ELSE SET var_message = "Film returned in time";
		END CASE;
            
	ELSE SET var_message = "Film is already returned";
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `employee_trackrecord`
--

/*!50001 DROP VIEW IF EXISTS `employee_trackrecord`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_trackrecord` AS select concat(`e`.`fname`,' ',`e`.`lname`) AS `Employee`,`e`.`title` AS `title`,count(`r`.`idEmployee`) AS `FilmsRentedOut` from (`employee` `e` left join `rental` `r` on((`e`.`idEmployee` = `r`.`idEmployee`))) group by `e`.`idEmployee` order by `FilmsRentedOut` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `films_in_genre`
--

/*!50001 DROP VIEW IF EXISTS `films_in_genre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `films_in_genre` AS select `g`.`genreType` AS `Genre`,group_concat(distinct `f`.`title` separator ', ') AS `Films` from ((`film_has_genre` `fg` left join `genre` `g` on((`g`.`idGenre` = `fg`.`idGenre`))) left join `film` `f` on((`f`.`idFilm` = `fg`.`idFilm`))) group by `g`.`genreType` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `films_in_library`
--

/*!50001 DROP VIEW IF EXISTS `films_in_library`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `films_in_library` AS select `f`.`title` AS `title`,`f`.`description` AS `description`,`f`.`publicationYear` AS `publicationYear`,group_concat(distinct `g`.`genreType` separator ', ') AS `Genre`,group_concat(distinct concat(`d`.`fname`,' ',`d`.`lname`) separator ', ') AS `Director`,group_concat(distinct concat(`a`.`fname`,' ',`a`.`lname`) separator ', ') AS `Actor` from ((((((`film` `f` left join `film_has_genre` `fg` on((`fg`.`idFilm` = `f`.`idFilm`))) left join `genre` `g` on((`g`.`idGenre` = `fg`.`idGenre`))) left join `film_has_director` `fd` on((`fd`.`idFilm` = `f`.`idFilm`))) left join `director` `d` on((`d`.`idDirector` = `fd`.`idDirector`))) left join `film_has_actor` `fa` on((`fa`.`idFilm` = `f`.`idFilm`))) left join `actor` `a` on((`a`.`idActor` = `fd`.`idDirector`))) group by `f`.`idFilm` order by `f`.`publicationYear` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `films_overdue`
--

/*!50001 DROP VIEW IF EXISTS `films_overdue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `films_overdue` AS select `rd`.`idFilmCopy` AS `Serialnumber`,`f`.`title` AS `title`,concat(`c`.`fname`,' ',`c`.`lname`) AS `Customer`,`r`.`rentDate` AS `rentDate`,`r`.`dueDate` AS `dueDate`,(to_days(curdate()) - to_days(`r`.`dueDate`)) AS `DaysOverdue` from ((((`rental` `r` join `rentaldetails` `rd` on((`rd`.`idRental` = `r`.`idRental`))) join `filmcopy` `fc` on((`fc`.`idFilmCopy` = `rd`.`idFilmCopy`))) join `film` `f` on((`f`.`idFilm` = `fc`.`idFilm`))) join `customer` `c` on((`c`.`idCustomer` = `r`.`idCustomer`))) where ((`r`.`dueDate` < curdate()) and isnull((`rd`.`returnDate` = `rd`.`returnDate`))) order by `r`.`dueDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `films_rented`
--

/*!50001 DROP VIEW IF EXISTS `films_rented`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `films_rented` AS select `fc`.`idFilmCopy` AS `Serialnr`,`f`.`title` AS `Film`,concat(`c`.`fname`,' ',`c`.`lname`) AS `Customer`,concat(`e`.`fname`,' ',`e`.`lname`) AS `Employee`,`r`.`dueDate` AS `dueDate` from (((((`rentaldetails` `rd` left join `rental` `r` on((`r`.`idRental` = `rd`.`idRental`))) join `filmcopy` `fc` on((`fc`.`idFilmCopy` = `rd`.`idFilmCopy`))) join `film` `f` on((`fc`.`idFilm` = `f`.`idFilm`))) join `customer` `c` on((`c`.`idCustomer` = `r`.`idCustomer`))) join `employee` `e` on((`e`.`idEmployee` = `r`.`idEmployee`))) where isnull((`rd`.`returnDate` = `rd`.`returnDate`)) order by `r`.`dueDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `toplist_last_month`
--

/*!50001 DROP VIEW IF EXISTS `toplist_last_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `toplist_last_month` AS select `f`.`title` AS `Top5_last_month`,count(`rd`.`idFilmCopy`) AS `Times_rented` from (((`rentaldetails` `rd` left join `rental` `r` on((`r`.`idRental` = `rd`.`idRental`))) join `filmcopy` `fc` on((`fc`.`idFilmCopy` = `rd`.`idFilmCopy`))) join `film` `f` on((`f`.`idFilm` = `fc`.`idFilm`))) where ((year(`r`.`rentDate`) = year((curdate() - interval 1 month))) and (month(`r`.`rentDate`) = month((curdate() - interval 1 month)))) group by `f`.`idFilm` order by `Times_rented` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 21:56:10
