-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: my
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `iddiscount` int NOT NULL AUTO_INCREMENT,
  `discountRate` int NOT NULL,
  `discountCode` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `packtype` varchar(45) NOT NULL,
  PRIMARY KEY (`iddiscount`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,10,'dis','2024-04-24','roundtour');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `idpackage` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `Duration` int NOT NULL,
  `details` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`idpackage`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (15,'Down South Tour',1499,7,'This Stunning Location Than Discovering Places To Visit Down South Sri Lanka The Main Tourist Cities In Southern Sri Lanka Are Galle, Weligama.','header4.jpg'),(16,'Up Country Tour',1499,14,'We ? UPCOUNTRY ADVENTURES - SRI LANKA ?are an adventure & outdoor company specializing in Trekking  Cycling  Abseiling & Camping. ','img9.jpg'),(17,'North Tour',2999,10,'Jaffna Is The One Of The Best South Asias Destinations To Visit. There Are Many Historical And Archaeological Places To See In Jaffna.','img10.jpg'),(18,'Honeymoon tour',1499,5,'If a honeymoon bursting with culture and adventure is what you and your partner have always imagined then look no further than Sri Lanka. ','img14.jpg'),(19,'Village tour',999,5,'Upon arrival to Village Tour Sri Lanka meeting point welcome by locals and treat with refreshing face towels & healthy detox juice herbal tea. Presentation about the Village Tour','img13.jpg'),(20,'Beach tour',1999,3,'Whether youre looking for a Beach package to relax and indulge special holidays in Sri Lanka with friends and family a trip to your favorite','header1.jpeg'),(21,'Kingdom tour',2499,14,'personal guide to show you around, visit the crumbled palace and Buddha tooth temple of 13th-century Dambadeniya and the rock fortress of Yapahuwa.','c6.jpg'),(22,'gddg',324,32,'fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds Fds ','footer.jpg');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_manager`
--

DROP TABLE IF EXISTS `package_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_manager` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_manager`
--

LOCK TABLES `package_manager` WRITE;
/*!40000 ALTER TABLE `package_manager` DISABLE KEYS */;
INSERT INTO `package_manager` VALUES (3,'test','123','madusha');
/*!40000 ALTER TABLE `package_manager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15 22:55:10
