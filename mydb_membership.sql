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
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership` (
  `Membership_id` int(11) NOT NULL AUTO_INCREMENT,
  `Membership_type` varchar(45) NOT NULL,
  `Membership_startDate` datetime NOT NULL,
  `Membership_endDate` datetime NOT NULL,
  `Membership_Category_Membership_Category_id` int(11) NOT NULL,
  `Customers_Customers_id` int(11) NOT NULL,
  PRIMARY KEY (`Membership_id`),
  KEY `fk_Membership_Membership_Category1_idx` (`Membership_Category_Membership_Category_id`),
  KEY `fk_Membership_Customers1_idx` (`Customers_Customers_id`),
  CONSTRAINT `fk_Membership_Customers1` FOREIGN KEY (`Customers_Customers_id`) REFERENCES `customers` (`Customers_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Membership_Membership_Category1` FOREIGN KEY (`Membership_Category_Membership_Category_id`) REFERENCES `membership_category` (`Membership_Category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (100,'Regular','2000-02-20 09:40:28','2015-02-20 15:32:51',3,1),(101,'Gold','2020-04-15 23:30:44','2024-09-05 23:40:45',1,2),(102,'Gold','2020-04-18 23:30:44','2025-01-12 19:20:02',1,3),(103,'Primium','2020-04-17 21:30:42','2026-01-01 20:29:33',2,4),(104,'Gold','2010-12-01 07:55:09','2012-05-04 11:30:30',1,5),(105,'Regular','2018-10-01 10:40:12','2019-07-07 15:05:22',3,6),(106,'Primium','2020-01-01 03:15:18','2020-08-13 10:44:23',2,7),(107,'Gold','0000-00-00 00:00:00','2020-02-20 23:19:54',1,8),(108,'Gold','2017-07-10 23:30:44','2020-07-20 23:30:54',1,9);
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
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
