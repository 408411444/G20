-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: musicchart
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `c_music`
--

DROP TABLE IF EXISTS `c_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_music` (
  `c_m_id` int NOT NULL,
  `c_m_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `c_singer_id` int DEFAULT NULL,
  `c_url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`c_m_id`),
  KEY `S_M_idx` (`c_singer_id`),
  CONSTRAINT `c_S_M` FOREIGN KEY (`c_singer_id`) REFERENCES `c_singer` (`c_s_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_music`
--

LOCK TABLES `c_music` WRITE;
/*!40000 ALTER TABLE `c_music` DISABLE KEYS */;
INSERT INTO `c_music` VALUES (1,'愛情你比我想的閣較偉大',2,''),(2,'彼個所在',1,'<iframe width=\"933\" height=\"397\" src=\"https://www.youtube.com/embed/86wypSCXK9M\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),(3,'刻在我心底的名字',4,NULL),(4,'在這座城市遺失了你',3,NULL),(5,'體面',5,NULL),(6,'Without You',6,NULL),(7,'你啊你啊',1,NULL),(8,'唯一',3,NULL),(9,'四季予你',7,NULL),(10,'浪子回頭',2,NULL);
/*!40000 ALTER TABLE `c_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_singer`
--

DROP TABLE IF EXISTS `c_singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_singer` (
  `c_s_id` int NOT NULL,
  `c_s_name` varchar(45) DEFAULT NULL,
  `c_age` int DEFAULT NULL,
  PRIMARY KEY (`c_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_singer`
--

LOCK TABLES `c_singer` WRITE;
/*!40000 ALTER TABLE `c_singer` DISABLE KEYS */;
INSERT INTO `c_singer` VALUES (1,'魏如萱',38),(2,'茄子蛋',30),(3,'告五人',27),(4,'盧廣仲',35),(5,'于文文',30),(6,'高爾宣',28),(7,'程響',32);
/*!40000 ALTER TABLE `c_singer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chart`
--

DROP TABLE IF EXISTS `chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chart` (
  `c_id` int NOT NULL,
  `c_musicid` int DEFAULT NULL,
  `eng_musicid` int DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `eng_idx` (`eng_musicid`),
  KEY `c` (`c_musicid`),
  CONSTRAINT `c` FOREIGN KEY (`c_musicid`) REFERENCES `c_music` (`c_m_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `eng` FOREIGN KEY (`eng_musicid`) REFERENCES `eng_music` (`eng_m_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chart`
--

LOCK TABLES `chart` WRITE;
/*!40000 ALTER TABLE `chart` DISABLE KEYS */;
INSERT INTO `chart` VALUES (1,7,NULL),(2,1,NULL),(3,5,NULL),(4,NULL,3),(5,NULL,4),(6,NULL,6);
/*!40000 ALTER TABLE `chart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eng_music`
--

DROP TABLE IF EXISTS `eng_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eng_music` (
  `eng_m_id` int NOT NULL,
  `eng_m_name` varchar(45) DEFAULT NULL,
  `eng_singer_id` int DEFAULT NULL,
  `eng_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eng_m_id`),
  KEY `S_M_idx` (`eng_singer_id`),
  CONSTRAINT `S_M` FOREIGN KEY (`eng_singer_id`) REFERENCES `eng_singer` (`eng_s_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eng_music`
--

LOCK TABLES `eng_music` WRITE;
/*!40000 ALTER TABLE `eng_music` DISABLE KEYS */;
INSERT INTO `eng_music` VALUES (1,'Stars Align',2,NULL),(2,'Butter',1,NULL),(3,'Peaches',3,NULL),(4,'Love Yourself',3,NULL),(5,'Sorry',3,NULL),(6,'Bedroom',4,NULL),(7,'Higher Power',5,NULL),(8,'DNA',1,NULL);
/*!40000 ALTER TABLE `eng_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eng_singer`
--

DROP TABLE IF EXISTS `eng_singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eng_singer` (
  `eng_s_id` int NOT NULL,
  `eng_s_name` varchar(45) DEFAULT NULL,
  `eng_age` int DEFAULT NULL,
  PRIMARY KEY (`eng_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eng_singer`
--

LOCK TABLES `eng_singer` WRITE;
/*!40000 ALTER TABLE `eng_singer` DISABLE KEYS */;
INSERT INTO `eng_singer` VALUES (1,'BTs',20),(2,'R3HAB',27),(3,'Justin Bieber',28),(4,'JJ LIN',25),(5,'Coldplay',26);
/*!40000 ALTER TABLE `eng_singer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-16 11:57:15
