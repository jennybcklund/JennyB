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
  `inStock` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idFilm`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Thor: Ragnarök','Thor is imprisoned on the planet Sakaar, and must race against time to return to Asgard and stop Ragnarök, the destruction of his world, which is at the hands of the powerful and ruthless villain Hela.',2017,0),(2,'Star Wars: The Last Jedi','Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order.',2017,0),(3,'Justice League','Fueled by his restored faith in humanity and inspired by Superman\'s selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy.',2017,0),(4,'Deadpool','A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.',2016,0),(5,'Suicide Squad','A secret government agency recruits some of the most dangerous incarcerated super-villains to form a defensive task force. Their first mission: save the world from the apocalypse.',2016,1),(6,'Avengers: Age of Ultron','When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan.',2015,0),(7,'Star Wars: The Force Awakens','Three decades after the Empire\'s defeat, a new threat arises in the militant First Order. Stormtrooper defector Finn and the scavenger Rey are caught up in the Resistance\'s search for the missing Luke Skywalker.',2015,1),(8,'The Man from U.N.C.L.E.','In the early 1960s, CIA agent Napoleon Solo and KGB operative Illya Kuryakin participate in a joint mission against a mysterious criminal organization, which is working to proliferate nuclear weapons.',2015,1),(9,'Guardians of the Galaxy','A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.',2014,1),(10,'Gone Girl','With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.',2014,1),(11,'Divergent','In a world divided by factions based on virtues, Tris learns she\'s Divergent and won\'t fit in. When she discovers a plot to destroy Divergents, Tris and the mysterious Four must find out what makes Divergents dangerous before it\'s too late.',2014,1),(12,'Lego-filmen','An ordinary LEGO construction worker, thought to be the prophesied as \"special\", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.',2014,1),(13,'Zootropolis','In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.',2016,1);
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
-- Temporary view structure for view `films_rented`
--

DROP TABLE IF EXISTS `films_rented`;
/*!50001 DROP VIEW IF EXISTS `films_rented`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `films_rented` AS SELECT 
 1 AS `FilmRented`,
 1 AS `Customer`,
 1 AS `Employee`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,1,'2018-04-02','2018-04-06',9),(2,3,'2018-04-01','2018-04-05',9),(3,2,'2018-03-25','2018-03-29',1),(4,1,'2018-03-03','2018-03-07',9),(5,4,'2018-02-19','2018-02-23',4),(6,5,'2018-03-13','2018-03-17',9),(7,2,'2018-01-05','2018-01-09',3),(8,10,'2018-03-29','2018-03-02',3),(9,6,'2018-01-10','2018-01-14',1),(10,9,'2018-04-02','2018-04-06',5),(11,2,'2018-03-29','2018-04-01',1),(12,7,'2018-03-29','2018-04-01',9);
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
  `idFilm` int(10) unsigned NOT NULL,
  `returnDate` date DEFAULT NULL,
  PRIMARY KEY (`idrentalDetails`),
  KEY `fk_rentalDetails_Rental1_idx` (`idRental`),
  KEY `fk_rentalDetails_Film1_idx` (`idFilm`),
  CONSTRAINT `fk_rentalDetails_Film1` FOREIGN KEY (`idFilm`) REFERENCES `film` (`idFilm`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rentalDetails_Rental1` FOREIGN KEY (`idRental`) REFERENCES `rental` (`idRental`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentaldetails`
--

LOCK TABLES `rentaldetails` WRITE;
/*!40000 ALTER TABLE `rentaldetails` DISABLE KEYS */;
INSERT INTO `rentaldetails` VALUES (1,1,2,NULL),(2,11,3,NULL),(3,12,4,NULL),(4,10,6,NULL),(5,2,1,NULL),(6,3,4,'2018-03-29'),(7,4,10,'2018-03-07'),(8,5,5,'2018-02-23'),(9,6,1,'2018-03-17'),(10,7,9,'2018-01-11'),(11,8,12,'2018-03-02'),(12,9,13,'2018-01-16');
/*!40000 ALTER TABLE `rentaldetails` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Final view structure for view `show_film_in_genre`
--

/*!50001 DROP VIEW IF EXISTS `show_film_in_genre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `show_film_in_genre` AS select `g`.`genreType` AS `Genre`,group_concat(distinct `f`.`title` separator ', ') AS `Film` from ((`film_has_genre` `fg` left join `genre` `g` on((`g`.`idGenre` = `fg`.`idGenre`))) left join `film` `f` on((`f`.`idFilm` = `fg`.`idFilm`))) group by `g`.`genreType` */;
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
/*!50001 VIEW `films_rented` AS select `f`.`title` AS `FilmRented`,concat(`c`.`fname`,' ',`c`.`lname`) AS `Customer`,concat(`e`.`fname`,' ',`e`.`lname`) AS `Employee` from ((((`rentaldetails` `rd` left join `rental` `r` on((`r`.`idRental` = `rd`.`idRental`))) join `film` `f` on((`f`.`idFilm` = `rd`.`idFilm`))) join `customer` `c` on((`c`.`idCustomer` = `r`.`idCustomer`))) join `employee` `e` on((`e`.`idEmployee` = `r`.`idEmployee`))) where isnull((`rd`.`returnDate` = `rd`.`returnDate`)) order by `f`.`title` */;
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

-- Dump completed on 2018-04-04 14:52:59
