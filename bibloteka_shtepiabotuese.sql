-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: bibloteka
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `shtepiabotuese`
--

DROP TABLE IF EXISTS `shtepiabotuese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shtepiabotuese` (
  `ShtepiabotueseID` int NOT NULL AUTO_INCREMENT,
  `emri` varchar(50) NOT NULL,
  `datathemelimit` varchar(45) NOT NULL,
  `lokacioni` varchar(45) NOT NULL,
  `telefoni` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ShtepiabotueseID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shtepiabotuese`
--

LOCK TABLES `shtepiabotuese` WRITE;
/*!40000 ALTER TABLE `shtepiabotuese` DISABLE KEYS */;
INSERT INTO `shtepiabotuese` VALUES (1,'lorea','2014-03-04','prishtine',38233123,'lorea@gmail.com'),(2,'dukagjini','1994-03-14','prishtine',44258369,'dukagjini@hotmail.com'),(3,'lora','2000-04-15','gjilan',38123456,'lorea@outlook.com'),(4,'toena','1993-02-03','tirane',45987654,'toena@gmail.com'),(5,'onufri','2003-08-23','shkoder',44147258,'onufri@botuese.al'),(6,'dituria','2008-03-25','prizren',49654264,'dituria@libri.al');
/*!40000 ALTER TABLE `shtepiabotuese` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-25  0:33:14
