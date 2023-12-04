-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bike_rentails
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `shop_details`
--

DROP TABLE IF EXISTS `shop_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_details` (
  `bike_id` int DEFAULT NULL,
  `shop_name` varchar(50) DEFAULT NULL,
  `owner_name` varchar(50) DEFAULT NULL,
  `shop_address` varchar(50) DEFAULT NULL,
  `Phone_Num` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_details`
--

LOCK TABLES `shop_details` WRITE;
/*!40000 ALTER TABLE `shop_details` DISABLE KEYS */;
INSERT INTO `shop_details` VALUES (1,'Swath Motors','Nageswara Rao','1-4-6, Gajjayapet, vijayawada',1604016040),(1,'Swath Motors','Nageswara Rao','1-4-6, Gajjayapet, vijayawada',1604016040),(1,'Swath Motors','Nageswara Rao','1-4-6, Gajjayapet, vijayawada',1604016040),(2,'Hot wheels','chakri','2-4-9, ramesh street, varangak',3003530035),(3,'ON Road wheelers','Prabha','228-4-86, malkova street, wayanda',1004010040),(4,'Darling Motors','Prasad','5-8-78, minimali street, Mumbai',1600505421),(5,'Iconic Motors','Gohan','4-6-8, vayanadu street, Andhra Pradesh',1602020016);
/*!40000 ALTER TABLE `shop_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04  7:43:17
