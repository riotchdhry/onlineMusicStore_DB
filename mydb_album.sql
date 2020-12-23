-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `Album_id` int(11) NOT NULL AUTO_INCREMENT,
  `Album_price` double NOT NULL,
  `Album_title` varchar(45) NOT NULL,
  `Album_releasedate` datetime NOT NULL,
  `Artist_Artist_id` int(11) NOT NULL,
  PRIMARY KEY (`Album_id`),
  KEY `fk_Album_Artist1_idx` (`Artist_Artist_id`),
  CONSTRAINT `fk_Album_Artist1` FOREIGN KEY (`Artist_Artist_id`) REFERENCES `artist` (`Artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,2.5,'Starboy','2017-12-01 00:00:00',1),(2,0.99,'Purpose','2015-04-13 00:00:00',5),(3,0.99,'True','2014-01-15 00:00:00',14),(4,1.5,'Get Rich or die tryin','1996-11-10 00:00:00',16),(5,0.99,'The Days and Nights','2015-04-14 00:00:00',14),(6,0.99,'The Massacre','1999-08-12 00:00:00',16),(7,2.5,'Native','2013-03-22 00:00:00',15),(8,1.5,'Iowa','2001-01-26 00:00:00',17),(9,2.5,'Oh My My','2016-03-22 00:00:00',15),(10,2.5,'All hope is Gone','2014-09-26 00:00:00',17),(11,0.99,'Mate feed kill repeat','1996-04-23 00:00:00',17),(12,3,'Born here live here die here','2020-03-10 00:00:00',20),(13,2.5,'Radom Access memories','2013-06-24 00:00:00',18),(14,2.5,'Tailgates and tanlines','2011-09-28 00:00:00',20),(15,0.99,'Discovery','2000-02-19 00:00:00',18),(16,0.99,'before storm','1999-11-21 00:00:00',19),(17,1.5,'The best of mozart','2013-01-13 00:00:00',21),(18,0.99,'Jimmy','2000-03-12 00:00:00',19),(19,1.5,'Moments','2014-09-08 00:00:00',19),(20,3,'Divide','2017-01-23 00:00:00',25),(21,1.5,'Deathnote','2003-03-15 00:00:00',22),(22,1.5,'Voice of heart','1999-12-02 00:00:00',23),(23,2.5,'Courage','2017-04-26 00:00:00',23),(24,2.5,'X','2014-04-23 00:00:00',25),(25,2.5,'Adventures of Lifetime','2015-11-21 00:00:00',13),(26,3,'Astroworld','2018-07-29 00:00:00',11),(27,1.5,'Deamons','2004-07-08 00:00:00',12),(28,1.5,'Queen la Pop','2016-10-16 00:00:00',10),(29,0.99,'Criminal','1972-03-01 00:00:00',9),(30,0.99,'back in Black','1988-01-15 00:00:00',7),(31,2.5,'Scorpion','2019-05-15 00:00:00',8),(32,2.5,'Depression','2019-11-22 00:00:00',6),(33,0.99,'High voltage','1986-12-09 00:00:00',7),(34,1.5,'Believe','2006-09-19 00:00:00',5),(35,1.5,'Painkillers','2005-10-29 00:00:00',6),(36,0.99,'Sticky Fingers','1971-03-21 00:00:00',4),(37,0.99,'Come Fly with me','1958-01-12 00:00:00',3),(38,0.99,'Queen','1983-09-09 00:00:00',2),(39,3,'After Hours','2020-07-12 00:00:00',1);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 23:20:06
