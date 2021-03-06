-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: unl
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Match unique id',
  `local_team` int NOT NULL COMMENT 'Local team',
  `away_team` int NOT NULL COMMENT 'Away team',
  `local_score` tinyint unsigned DEFAULT NULL COMMENT 'Local team score',
  `away_score` tinyint unsigned DEFAULT NULL COMMENT 'Away team score',
  `start_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkey_localteam` (`local_team`),
  KEY `fkey_awayteam` (`away_team`),
  CONSTRAINT `fkey_awayteam` FOREIGN KEY (`away_team`) REFERENCES `team` (`id`),
  CONSTRAINT `fkey_localteam` FOREIGN KEY (`local_team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Matchs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,1,40,2,1,'2022-06-01 16:00:00'),(2,2,27,2,0,'2022-06-02 16:00:00'),(3,3,42,1,1,'2022-06-02 16:00:00'),(4,4,29,0,2,'2022-06-02 16:00:00'),(5,5,28,4,0,'2022-06-02 16:00:00'),(6,6,30,1,1,'2022-06-02 18:45:00'),(7,7,44,2,1,'2022-06-02 18:45:00'),(8,8,33,2,2,'2022-06-02 18:45:00'),(9,9,41,0,1,'2022-06-02 18:45:00'),(10,10,31,0,2,'2022-06-02 18:45:00'),(11,11,45,0,1,'2022-06-02 18:45:00'),(12,12,46,2,0,'2022-06-03 14:00:00'),(13,13,32,3,0,'2022-06-03 16:00:00'),(14,14,47,0,2,'2022-06-03 18:45:00'),(15,15,34,0,3,'2022-06-03 18:45:00'),(16,16,51,1,4,'2022-06-03 18:45:00'),(17,17,49,1,2,'2022-06-03 18:45:00'),(18,18,19,0,1,'2022-06-03 18:45:00'),(20,20,39,1,0,'2022-06-04 13:00:00'),(21,21,53,0,2,'2022-06-04 16:00:00'),(22,22,52,1,0,'2022-06-04 16:00:00'),(23,23,35,1,1,'2022-06-04 16:00:00'),(24,24,54,2,0,'2022-06-04 18:45:00'),(25,25,37,1,1,'2022-06-04 18:45:00'),(26,26,36,4,0,'2022-06-04 18:45:00'),(27,27,43,0,2,'2022-06-05 13:00:00'),(28,4,9,0,0,'2022-06-05 16:00:00'),(29,28,42,0,2,'2022-06-05 16:00:00'),(30,29,41,0,1,'2022-06-05 18:45:00'),(31,30,44,4,0,'2022-06-05 18:45:00'),(32,7,6,2,2,'2022-06-05 18:45:00'),(33,3,5,2,5,'2022-06-05 18:45:00'),(34,31,45,1,2,'2022-06-05 18:45:00'),(35,11,10,4,1,'2022-06-05 18:45:00'),(36,13,14,1,0,'2022-06-06 16:00:00'),(37,32,47,0,0,'2022-06-06 18:45:00'),(38,19,12,0,1,'2022-06-06 18:45:00'),(39,33,48,1,1,'2022-06-06 18:45:00'),(40,15,17,1,1,'2022-06-06 18:45:00'),(41,18,46,0,0,'2022-06-06 18:45:00'),(42,34,49,1,2,'2022-06-06 20:15:00'),(43,23,24,2,0,'2022-06-07 16:00:00'),(44,35,54,1,0,'2022-06-07 18:45:00'),(45,25,22,2,1,'2022-06-07 18:45:00'),(46,21,26,0,6,'2022-06-07 18:45:00'),(47,36,53,0,1,'2022-06-07 18:45:00'),(48,37,52,1,1,'2022-06-07 18:45:00'),(49,38,20,2,0,'2022-06-08 18:45:00'),(50,39,50,0,1,'2022-06-08 18:45:00'),(51,16,1,6,1,'2022-06-08 18:45:00'),(52,40,51,1,2,'2022-06-08 18:45:00'),(53,28,3,1,1,'2022-06-09 18:45:00'),(54,29,9,3,2,'2022-06-09 18:45:00'),(55,30,7,2,0,'2022-06-09 18:45:00'),(56,41,4,3,0,'2022-06-09 18:45:00'),(57,42,5,0,3,'2022-06-09 18:45:00'),(58,43,2,1,2,'2022-06-09 18:45:00'),(59,31,11,0,1,'2022-06-09 18:45:00'),(60,44,6,0,1,'2022-06-09 18:45:00'),(61,45,10,0,0,'2022-06-09 18:45:00'),(62,46,19,0,1,'2022-06-10 16:00:00'),(63,47,13,2,4,'2022-06-10 16:00:00'),(64,48,8,1,2,'2022-06-10 18:45:00'),(65,34,17,1,1,'2022-06-10 18:45:00'),(66,32,14,2,1,'2022-06-10 18:45:00'),(67,18,12,1,1,'2022-06-10 18:45:00'),(68,49,15,0,1,'2022-06-10 18:45:00'),(69,50,20,3,0,'2022-06-11 13:00:00'),(70,36,21,2,1,'2022-06-11 16:00:00'),(71,39,38,3,0,'2022-06-11 16:00:00'),(72,22,37,1,1,'2022-06-11 18:45:00'),(73,51,1,2,2,'2022-06-11 18:45:00'),(74,52,25,0,0,'2022-06-11 18:45:00'),(75,40,16,1,1,'2022-06-11 18:45:00'),(76,53,26,0,2,'2022-06-11 18:45:00'),(77,54,23,1,0,'2022-06-11 18:45:00'),(78,24,35,1,1,'2022-06-11 18:45:00'),(79,9,4,2,2,'2022-06-12 13:00:00'),(80,45,31,3,2,'2022-06-12 16:00:00'),(81,5,3,0,0,'2022-06-12 16:00:00'),(82,42,28,4,0,'2022-06-12 16:00:00'),(83,10,11,2,2,'2022-06-12 18:45:00'),(84,43,27,1,0,'2022-06-12 18:45:00'),(85,44,30,1,0,'2022-06-12 18:45:00'),(86,6,7,2,0,'2022-06-12 18:45:00'),(87,41,29,2,0,'2022-06-12 18:45:00'),(88,12,19,2,1,'2022-06-13 14:00:00'),(89,46,18,2,0,'2022-06-13 16:00:00'),(90,17,15,0,1,'2022-06-13 18:45:00'),(91,33,8,2,2,'2022-06-13 18:45:00'),(92,49,34,2,0,'2022-06-13 18:45:00'),(93,20,38,1,4,'2022-06-14 16:00:00'),(94,47,32,2,1,'2022-06-14 16:00:00'),(95,26,21,2,0,'2022-06-14 18:45:00'),(96,52,22,0,1,'2022-06-14 18:45:00'),(97,35,23,3,2,'2022-06-14 18:45:00'),(98,54,24,0,2,'2022-06-14 18:45:00'),(99,37,25,3,0,'2022-06-14 18:45:00'),(100,50,39,1,1,'2022-06-14 18:45:00'),(101,14,13,0,2,'2022-06-14 18:45:00'),(102,51,40,2,1,'2022-06-14 18:45:00'),(103,53,36,2,2,'2022-06-14 18:45:00'),(104,1,16,0,1,'2022-06-14 18:45:00'),(105,38,50,NULL,NULL,'2022-09-21 18:45:00'),(106,12,18,NULL,NULL,'2022-09-22 14:00:00'),(107,13,47,NULL,NULL,'2022-09-22 16:00:00'),(108,17,34,NULL,NULL,'2022-09-22 18:45:00'),(109,19,46,NULL,NULL,'2022-09-22 18:45:00'),(110,14,32,NULL,NULL,'2022-09-22 18:45:00'),(111,15,49,NULL,NULL,'2022-09-22 18:45:00'),(112,16,40,NULL,NULL,'2022-09-22 18:45:00'),(113,1,51,NULL,NULL,'2022-09-22 18:45:00'),(114,21,36,NULL,NULL,'2022-09-22 18:45:00'),(115,26,53,NULL,NULL,'2022-09-22 18:45:00'),(116,2,43,NULL,NULL,'2022-09-23 16:00:00'),(117,5,42,NULL,NULL,'2022-09-23 16:00:00'),(118,23,54,NULL,NULL,'2022-09-23 18:45:00'),(119,3,28,NULL,NULL,'2022-09-23 18:45:00'),(120,35,24,NULL,NULL,'2022-09-23 18:45:00'),(121,25,52,NULL,NULL,'2022-09-23 18:45:00'),(122,37,22,NULL,NULL,'2022-09-23 18:45:00'),(123,20,50,NULL,NULL,'2022-09-23 22:39:00'),(124,38,39,NULL,NULL,'2022-09-23 22:39:00'),(125,20,50,NULL,NULL,'2022-09-24 13:00:00'),(126,9,29,NULL,NULL,'2022-09-24 16:00:00'),(127,10,45,NULL,NULL,'2022-09-24 16:00:00'),(128,4,41,NULL,NULL,'2022-09-24 18:45:00'),(129,11,31,NULL,NULL,'2022-09-24 18:45:00'),(130,8,48,NULL,NULL,'2022-09-24 18:45:00'),(131,38,39,NULL,NULL,'2022-09-24 18:45:00'),(132,6,44,NULL,NULL,'2022-09-24 18:45:00'),(133,7,30,NULL,NULL,'2022-09-24 18:45:00'),(134,32,13,NULL,NULL,'2022-09-25 13:00:00'),(135,47,14,NULL,NULL,'2022-09-25 13:00:00'),(136,46,12,NULL,NULL,'2022-09-25 16:00:00'),(137,19,18,NULL,NULL,'2022-09-25 16:00:00'),(138,49,17,NULL,NULL,'2022-09-25 18:45:00'),(139,40,1,NULL,NULL,'2022-09-25 18:45:00'),(140,53,21,NULL,NULL,'2022-09-25 18:45:00'),(141,51,16,NULL,NULL,'2022-09-25 18:45:00'),(142,36,26,NULL,NULL,'2022-09-25 18:45:00'),(143,34,15,NULL,NULL,'2022-09-25 18:45:00'),(144,52,37,NULL,NULL,'2022-09-26 18:45:00'),(145,28,5,NULL,NULL,'2022-09-26 18:45:00'),(146,42,3,NULL,NULL,'2022-09-26 18:45:00'),(147,27,2,NULL,NULL,'2022-09-26 18:45:00'),(148,54,35,NULL,NULL,'2022-09-26 18:45:00'),(149,24,23,NULL,NULL,'2022-09-26 18:45:00'),(150,22,25,NULL,NULL,'2022-09-26 18:45:00'),(151,39,20,NULL,NULL,'2022-09-26 22:39:00'),(152,50,38,NULL,NULL,'2022-09-26 22:39:00'),(153,50,38,NULL,NULL,'2022-09-27 18:45:00'),(154,41,9,NULL,NULL,'2022-09-27 18:45:00'),(155,39,20,NULL,NULL,'2022-09-27 18:45:00'),(156,45,11,NULL,NULL,'2022-09-27 18:45:00'),(157,31,10,NULL,NULL,'2022-09-27 18:45:00'),(158,44,7,NULL,NULL,'2022-09-27 18:45:00'),(159,30,6,NULL,NULL,'2022-09-27 18:45:00'),(160,29,4,NULL,NULL,'2022-09-27 18:45:00'),(161,48,33,NULL,NULL,'2022-09-27 18:45:00');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Team unique id',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Nationals team';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Pologne'),(2,'Estonie'),(3,'Bulgarie'),(4,'Chypre'),(5,'G??orgie'),(6,'Espagne'),(7,'R??publique Tch??que'),(8,'Isra??l'),(9,'Irlande du Nord'),(10,'Slov??nie'),(11,'Serbie'),(12,'Kazakhstan'),(13,'Lettonie'),(14,'Liechtenstein'),(15,'Croatie'),(16,'Belgique'),(17,'France'),(18,'Bi??lorussie'),(19,'Slovaquie'),(20,'Arm??nie'),(21,'Lituanie'),(22,'Hongrie'),(23,'Finlande'),(24,'Mont??n??gro'),(25,'Italie'),(26,'Turquie'),(27,'Saint-Marin'),(28,'Gibraltar'),(29,'Kosovo'),(30,'Portugal'),(31,'Su??de'),(32,'Andorre'),(33,'Islande'),(34,'Autriche'),(35,'Bosnie-Herz??govine'),(36,'??les F??ro??'),(37,'Allemagne'),(38,'Ecosse'),(39,'Irlande'),(40,'Pays de Galles'),(41,'Gr??ce'),(42,'Mac??doine du Nord'),(43,'Malte'),(44,'Suisse'),(45,'Norv??ge'),(46,'Azerba??djan'),(47,'Moldavie'),(48,'Albanie'),(49,'Danemark'),(50,'Ukraine'),(51,'Pays-Bas'),(52,'Angleterre'),(53,'Luxembourg'),(54,'Roumanie');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 20:38:50
