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
INSERT INTO `c_music` VALUES (1,'愛情你比我想的閣較偉大',2,'https://www.youtube.com/embed/0rp3pP2Xwhs'),(2,'彼個所在',1,'https://www.youtube.com/embed/86wypSCXK9M'),(3,'刻在我心底的名字',4,'https://www.youtube.com/watch?v=m78lJuzftcc'),(4,'在這座城市遺失了你',3,'https://www.youtube.com/watch?v=PlCbgZxonJs'),(5,'體面',5,'https://www.youtube.com/watch?v=sg_WE0ToJjM'),(6,'Without You',6,'https://www.youtube.com/watch?v=HQDDlgGy2hg'),(7,'你啊你啊',1,'https://www.youtube.com/watch?v=M1tmYdeh6ZM'),(8,'唯一',3,'https://www.youtube.com/watch?v=vxucCfcMFCk'),(9,'四季予你',7,'https://www.youtube.com/watch?v=vxucCfcMFCk'),(10,'浪子回頭',2,'https://www.youtube.com/watch?v=x3bDhtuC5yk');
/*!40000 ALTER TABLE `c_music` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20  1:33:03
