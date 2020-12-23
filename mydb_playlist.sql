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
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `Track_Track_id` int(11) NOT NULL,
  `Customers_Customers_id` int(11) NOT NULL,
  `playlist_name` varchar(45) NOT NULL,
  `playlist_CreatedOn` datetime NOT NULL,
  `playlist_ModifiedOn` datetime NOT NULL,
  `playlist_NumberOfTracks` int(11) NOT NULL,
  PRIMARY KEY (`Track_Track_id`,`Customers_Customers_id`),
  KEY `fk_Track_has_Customers_Customers1_idx` (`Customers_Customers_id`),
  KEY `fk_Track_has_Customers_Track1_idx` (`Track_Track_id`),
  CONSTRAINT `fk_Track_has_Customers_Customers1` FOREIGN KEY (`Customers_Customers_id`) REFERENCES `customers` (`Customers_id`),
  CONSTRAINT `fk_Track_has_Customers_Track1` FOREIGN KEY (`Track_Track_id`) REFERENCES `track` (`Track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(2,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(3,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(4,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(5,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(5,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(6,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(6,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(7,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(7,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(8,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(8,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(9,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(9,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(10,1,'Delara\'s Playlist','2009-01-02 00:00:00','2014-02-12 00:00:00',10),(10,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(10,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(11,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(11,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(12,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(12,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(13,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(13,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(14,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(14,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(15,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 23:40:45',12),(15,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(15,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(16,2,'Amir Hip Hop jungle','2018-09-05 10:45:00','2019-05-05 10:45:00',12),(16,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(16,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(17,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(17,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(18,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(18,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(19,3,'Rohits Gym mix','2001-05-17 14:20:44','2004-12-12 19:20:02',10),(19,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(20,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(20,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(21,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(21,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(22,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(22,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(23,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(23,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(24,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(24,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(25,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(25,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(25,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(26,4,'Ruchis Chill mix','2009-01-01 13:05:05','2019-01-01 20:29:33',12),(26,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(26,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(27,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(27,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(28,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(28,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(29,5,'Dana\'s Road to life','2010-12-01 07:55:09','2011-05-04 11:30:30',10),(29,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(30,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(30,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(31,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(31,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(32,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(32,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(33,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(33,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(34,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(34,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(35,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(35,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(35,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(36,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(36,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(36,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(37,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(37,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(37,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(38,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(38,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(38,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(39,6,'David Playlist1','2018-10-01 10:40:12','2017-07-07 15:05:22',15),(39,7,'Sherry\'s Go to groove','2000-01-01 03:15:18','2000-08-13 10:44:23',10),(39,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(40,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(41,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(42,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(43,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(44,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(45,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(46,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(47,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(48,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(49,8,'Angels Player1','2017-04-10 12:30:44','2020-02-20 23:19:54',15),(50,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(51,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(52,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(53,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(54,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(55,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(56,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(57,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(58,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(59,1,'Delara\'s Playlist 2','2009-01-02 00:00:00','2013-02-12 00:00:00',10),(60,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9),(61,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9),(62,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9),(63,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9),(64,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9),(65,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9),(66,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9),(67,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9),(68,2,'Amir POP culture','2018-09-05 10:45:00','2019-05-05 23:40:45',9);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 23:20:08
