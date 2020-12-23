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
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track` (
  `Track_id` int(11) NOT NULL AUTO_INCREMENT,
  `Track_name` varchar(45) NOT NULL,
  `Track_composer` varchar(45) NOT NULL,
  `Track_length` decimal(9,2) NOT NULL,
  `Album_Album_id` int(11) NOT NULL,
  `Genres_Genres_id` int(11) NOT NULL,
  PRIMARY KEY (`Track_id`),
  KEY `fk_Track_Album1_idx` (`Album_Album_id`),
  KEY `fk_Track_Genres1_idx` (`Genres_Genres_id`),
  CONSTRAINT `fk_Track_Album1` FOREIGN KEY (`Album_Album_id`) REFERENCES `album` (`Album_id`),
  CONSTRAINT `fk_Track_Genres1` FOREIGN KEY (`Genres_Genres_id`) REFERENCES `genres` (`Genres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES (1,'Starboy','Weekend Ft. Dr. Leroy',4.05,1,5),(2,'FastPace','Weekend Ft. TroiBoi',3.55,1,4),(3,'Die for you','Weekend',4.09,1,5),(4,'Baby','Justin Bieber',5.03,2,5),(5,'Sorry','Justin Bieber Ft.Scooter Braun',6.34,2,9),(6,'Broken Hearts','Justin Bieber Ft.  Sally McNally',4.09,2,5),(7,'Wake Me up','Avicii X Tim Bergling',3.56,3,13),(8,'Went to Heaven','Avicii Ft. Coldplay',4.05,3,13),(9,'If I Can\'t','Shoody Rich Ft. Fiddy',6.03,4,6),(10,'Candy Shop','Alicia Keys Ft. Fiddy',6.03,4,6),(11,'The Days','Avicii Ft. Shawn Halo',5.05,5,13),(12,'Hey Brother','Avicii Ft. John Legend',4.06,5,12),(13,'Hoodclat','Big Sean ft. Fiddy',5.32,6,6),(14,'Renegade','Eminem , 50, Ft. Jay-z',3.56,6,15),(15,'Counting Stars','One republic',4.36,7,3),(16,'Hellelujah','One Republic',5.32,7,3),(17,'Deathhhh','SlipKnot',6.07,8,17),(18,'My to heaven via 47','SlipKnot',7.00,8,17),(19,'Mercy o lord','One Republic',4.55,9,3),(20,'Shinings','One Republic',3.55,9,3),(21,'Death by Metal','SlipKnot',7.06,10,17),(22,'Monsterous','SlipKnot',6.56,10,17),(23,'Scream it','SlipKnot',6.54,11,18),(24,'Tailgate','Luke Bryan Ft. Soranos',4.32,12,8),(25,'Tanlines','Luke Bryan',4.22,12,12),(26,'Stronger','Daft punk',3.56,13,11),(27,'Horseback','Luke Brayn',5.05,14,8),(28,'let\'s run to the horizon','Tia Lory Ft. Luke Bryan',3.44,14,8),(29,'the Studio Draft','Daft Punk',4.04,15,10),(30,'Sanstorm','Darude',4.05,16,11),(31,'After Sandstorm','Darude Solo',4.00,16,11),(32,'Symphony of Tunes','Wolgang Amadeus Mozart',5.01,17,4),(33,'Revolution','Darude and tommy welsh',3.45,18,10),(34,'Rebellion','Darude',6.32,18,11),(35,'Disobey','Darude',6.34,19,11),(36,'Shape of you','Ed Sheeran',4.01,20,14),(37,'River','Ed Sheeran x Emnem',4.23,20,14),(38,'Feeling in my body','Ed Sheeran x jTran',4.33,20,14),(39,'Hellbound','Iron Maiden',6.07,21,18),(40,'my heart will go on','Celine Dion',5.45,22,9),(41,'La france','Celine Dion',5.43,22,9),(42,'Soundtrack from titanic','Celine Dion',4.33,23,9),(43,'Flawless','Celine Dion',5.44,23,5),(44,'Congratualtions','Ed Sheeran',6.32,24,14),(45,'Nobody be','Ed Sheeran',5.04,24,14),(46,'Viva la Vida','Coldplay',4.06,25,3),(47,'Yellow','Coldplay',5.12,25,3),(48,'Highest in the room','Travis Scott Ft. Post Malone',4.03,26,6),(49,'Motosports','Travis Scott Ft. Migos',5.04,26,6),(50,'Bad Romance','Lady gaga',4.55,27,12),(51,'Hail Ya\'ll','Madonna',5.43,28,5),(52,'Dangerous','Michael Jackson',7.01,29,5),(53,'Highway to hell','AC DC',6.43,30,3),(54,'TNT','AC DC',4.33,30,3),(55,'Forever','Drake, Jay-z, Trey Songz, Migos',3.22,31,15),(56,'Hotline Bling','Drake Solo',3.23,31,15),(57,'Slow Death','Billie Eilish',4.01,32,5),(58,'Grand Slam','AC DC',6.55,33,3),(59,'A ripper','AC DC',7.03,33,3),(60,'Call me maybe','Justin Bieber',4.32,34,5),(61,'Tough Guy','Billie Eilish',3.45,35,5),(62,'Brain Trainwreck','Billie Eilish',3.52,35,6),(63,'Over the rainbow','The Rolling Stones',6.45,36,2),(64,'Hold on we going home','Frank Sinatra and James Luke',6.34,37,1),(65,'Sliver lining','Frank Sinatra',6.54,37,1),(66,'We will rock you','Queen',2.30,38,3),(67,'Pray for me','The Weekend and Knowles',3.42,39,5),(68,'Honestly','The Weekend',3.53,39,6);
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
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
