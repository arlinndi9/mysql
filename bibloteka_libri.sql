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
-- Table structure for table `libri`
--

DROP TABLE IF EXISTS `libri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libri` (
  `libriID` int NOT NULL AUTO_INCREMENT,
  `emri` varchar(45) NOT NULL,
  `shbotuese` int NOT NULL,
  `databotimit` date NOT NULL,
  `disponueshmeria` int DEFAULT NULL,
  `isbn` int DEFAULT NULL,
  `numrifaqeve` int NOT NULL,
  `qmimi` float NOT NULL,
  PRIMARY KEY (`libriID`),
  KEY `shbotuese_idx` (`shbotuese`),
  CONSTRAINT `shbotuese` FOREIGN KEY (`shbotuese`) REFERENCES `shtepiabotuese` (`ShtepiabotueseID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libri`
--

LOCK TABLES `libri` WRITE;
/*!40000 ALTER TABLE `libri` DISABLE KEYS */;
INSERT INTO `libri` VALUES (1,'cicerima e nates',1,'2003-12-12',0,12,235,23.3),(2,'rruget e heshtura',2,'2015-08-04',23,965,345,45),(3,'ushtari i vetmuar',2,'2001-03-31',7,1236,652,36.12),(4,'shkretetra',3,'2011-09-03',11,12,100,15),(5,'clean code',1,'2000-01-09',98,133,123,64.23),(6,'algorithm',3,'1999-05-04',111,1000,98,101.12);
/*!40000 ALTER TABLE `libri` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-25  0:33:15
