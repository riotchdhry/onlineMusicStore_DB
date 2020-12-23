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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `Artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `Artist_name` varchar(45) NOT NULL,
  `Artist_about` varchar(250) NOT NULL,
  `Genres_Genres_id` int(11) NOT NULL,
  PRIMARY KEY (`Artist_id`),
  KEY `fk_Artist_Genres1_idx` (`Genres_Genres_id`),
  CONSTRAINT `fk_Artist_Genres1` FOREIGN KEY (`Genres_Genres_id`) REFERENCES `genres` (`Genres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'The Weekend','The dynamic artist with dark themed music, making it to the Billboard100 twice in a year',5),(2,'Queen','Who doesn\'t know queen, Freddie mercury led band gave us bangers which are heard from generations to generations',3),(3,'Frank Sinatra','Frank Sinatra was arguably the most important musical figure of the 20th century, his only real rivals for the title being Elvis Presley and the Beatles.',1),(4,'The Rolling Stones','By the time the Rolling Stones began calling themselves the World\'s Greatest Rock & Roll Band in the late \'60s, they had already staked out an impressive claim on the title.',2),(5,'Justin Bieber','Justin Drew Bieber is a Canadian singer, songwriter and actor. Discovered at 13 years old by talent manager Scooter Braun after he had watched his YouTube cover song videos,',5),(6,'Billie Eilish','Billie Eilish is an American singer-songwriter who first shot to prominence when she uploaded her breakout hit \"Ocean Eyes\" to SoundCloud in 2015.',5),(7,'AC DC','AC/DC are an Australian rock band formed in Sydney in 1973 by Scottish-born brothers Malcolm and Angus Young.',3),(8,'Drake','Born Aubrey Drake Graham on October 24, 1986, in Toronto, Canada, Drake grew up with music in his blood.',15),(9,'Michael Jackson','Dubbed the \"King of Pop\", he is regarded as one of the most significant cultural figures of the 20th century and one of the greatest entertainers in the history of music.',5),(10,'Madonna','Referred to as the \"Queen of Pop\" since the 1980s, Madonna is known for pushing the boundaries of songwriting in popular music and for the visuals she uses onstage and in music videos.',5),(11,'Travis Scott','acques Berman Webster II (born April 30, 1992), known professionally as Travis Scott (formerly stylized as Travi$ Scott), is an American rapper, singer, songwriter',6),(12,'Lady Gaga','She is known for reinventing herself throughout her career and for her versatility in numerous areas of the entertainment industry.',12),(13,'Coldplay','Coldplay, are an English alternative rock band, formed in London in 1996-1997.',3),(14,'Avicii','im Bergling, known professionally as Avicii, was a Swedish DJ, electronic musician, and songwriter',3),(15,'One Republic','OneRepublic is an American pop rock band formed in Colorado Springs, Colorado, in 2002.',3),(16,'50 Cent','Born in the South Jamaica neighborhood of the borough of Queens, Jackson',6),(17,'Slipknot','The band was founded in 1995 by percussionist Shawn Crahan, drummer Joey Jordison and bassist Paul Gray.',17),(18,'Daft Punk','After Bangalter and Homem-Christo\'s indie rock band Darlin\' disbanded, they began experimenting with drum machines',10),(19,'Darude','Ville Virtanen, better known by his stage name Darude, is one of the most successful Finnish artists of the modern era.',11),(20,'Luke Bryant','He began his music career writing songs for Travis Tritt and Billy Currington – before signing with Capitol Nashville',8),(21,'Mozart','Mozart, was a prolific and influential composer of the Classical period',4),(22,'Iron Maiden','Iron Maiden are an English heavy metal band formed in Leyton, East London,',7),(23,'Celine Dion','she emerged as a teen star in her homeland with a series of French-language albums',9),(25,'Ed Sheeran','Sheeran independently released the extended play, No. 5 Collaborations Project.',14);
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 23:20:07
