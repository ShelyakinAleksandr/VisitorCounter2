-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shoppingcenter
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `timevisitor`
--

DROP TABLE IF EXISTS `timevisitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timevisitor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DateTimeVisitor` datetime DEFAULT NULL,
  `Entrance` int DEFAULT '0',
  `Output` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timevisitor`
--

LOCK TABLES `timevisitor` WRITE;
/*!40000 ALTER TABLE `timevisitor` DISABLE KEYS */;
INSERT INTO `timevisitor` VALUES (15,'2021-12-05 20:31:42',1,0),(16,'2021-12-05 20:32:17',1,0),(17,'2021-12-05 20:32:21',1,0),(18,'2021-12-05 20:32:23',1,0),(19,'2021-12-05 20:32:23',1,0),(20,'2021-12-05 20:32:23',1,0),(21,'2021-12-05 20:32:24',1,0),(22,'2021-12-05 20:32:24',1,0),(23,'2021-12-05 20:32:24',1,0),(24,'2021-12-05 20:32:24',1,0),(25,'2021-12-05 20:32:24',1,0),(26,'2021-12-05 20:32:25',1,0),(27,'2021-12-05 20:32:25',1,0),(28,'2021-12-05 20:32:25',1,0),(29,'2021-12-05 20:32:25',1,0),(30,'2021-12-05 20:32:30',1,0),(31,'2021-12-05 20:32:30',1,0),(32,'2021-12-05 20:32:30',1,0),(33,'2021-12-05 20:32:30',1,0),(34,'2021-12-05 20:32:31',1,0),(35,'2021-12-05 20:32:31',1,0),(36,'2021-12-05 20:32:31',1,0),(37,'2021-12-05 20:32:31',1,0),(38,'2021-12-05 20:32:31',1,0),(39,'2021-12-05 20:32:31',1,0),(40,'2021-12-05 20:32:32',1,0),(41,'2021-12-05 20:33:00',0,1),(42,'2021-12-05 20:33:01',0,1),(43,'2021-12-05 20:33:01',0,1),(44,'2021-12-05 20:33:01',0,1),(45,'2021-12-05 20:33:01',0,1),(46,'2021-12-05 20:33:02',0,1),(47,'2021-12-05 20:33:02',0,1),(48,'2021-12-05 20:33:03',0,1),(49,'2021-12-05 20:33:03',0,1),(50,'2021-12-05 20:33:03',0,1),(51,'2021-12-05 20:33:04',0,1),(52,'2021-12-05 20:33:04',0,1),(53,'2021-12-05 20:33:05',0,1),(54,'2021-12-05 20:33:05',0,1),(55,'2021-12-05 20:33:05',0,1),(56,'2021-12-05 20:33:14',1,0),(57,'2021-12-05 20:33:15',1,0),(58,'2021-12-05 20:33:15',1,0),(59,'2021-12-05 20:33:15',1,0),(60,'2021-12-05 20:33:15',1,0),(61,'2021-12-05 20:33:16',1,0),(62,'2021-12-05 20:33:17',1,0),(63,'2021-12-05 20:33:17',1,0),(64,'2021-12-05 20:33:17',1,0),(65,'2021-12-05 20:33:18',1,0),(66,'2021-12-05 20:33:18',1,0),(67,'2021-12-05 20:33:18',1,0),(68,'2021-12-05 20:33:18',1,0),(69,'2021-12-05 20:33:19',1,0),(70,'2021-12-05 20:33:19',1,0),(71,'2021-05-12 12:00:00',1,0),(72,'2021-05-12 12:00:00',1,0),(73,'2021-05-12 12:00:00',1,0),(74,'2021-05-12 12:00:00',1,0),(75,'2021-05-12 12:00:00',1,0),(76,'2021-05-12 12:00:00',1,0),(77,'2021-05-12 12:00:00',1,0),(78,'2021-05-12 12:00:00',1,0),(79,'2021-05-12 12:00:00',1,0),(80,'2021-05-12 12:00:00',1,0),(81,'2021-05-12 12:00:00',1,0),(82,'2021-05-12 12:00:00',1,0),(83,'2021-05-12 12:00:00',1,0),(84,'2021-05-12 12:00:00',1,0),(85,'2021-05-12 12:00:00',1,0),(86,'2021-05-12 12:00:00',1,0),(87,'2021-05-12 12:00:00',1,0),(88,'2021-05-12 12:00:00',1,0),(89,'2021-05-12 12:00:00',1,0),(90,'2021-05-12 12:00:00',1,0),(91,'2021-05-12 12:00:00',1,0),(92,'2021-05-12 12:00:00',1,0),(93,'2021-05-12 12:00:00',1,0),(94,'2021-05-12 12:00:00',1,0),(95,'2021-05-12 12:00:00',1,0),(96,'2021-05-12 12:00:00',1,0),(97,'2021-05-12 12:00:00',1,0),(98,'2021-12-05 12:00:00',1,0),(99,'2021-12-05 12:00:00',1,0),(100,'2021-12-05 12:00:00',1,0),(101,'2021-12-05 12:00:00',1,0),(102,'2021-12-05 12:00:00',1,0),(103,'2021-12-05 12:00:00',1,0),(104,'2021-12-05 12:00:00',1,0),(105,'2021-12-05 12:00:00',1,0),(106,'2021-12-05 12:00:00',1,0),(107,'2021-12-05 12:00:00',1,0),(108,'2021-12-05 12:00:00',1,0),(109,'2021-12-05 12:00:00',1,0),(110,'2021-12-05 12:00:00',1,0),(111,'2021-12-05 12:00:00',1,0),(112,'2021-12-05 12:00:00',1,0);
/*!40000 ALTER TABLE `timevisitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shoppingcenter'
--
/*!50003 DROP PROCEDURE IF EXISTS `SaveVisitorEntrance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Admin`@`%` PROCEDURE `SaveVisitorEntrance`(_DateTime DateTime)
BEGIN

	insert into timevisitor
	 (DateTimeVisitor, 
       Entrance)
	values
	 (_DateTime,
	  1
      );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SaveVisitorOutput` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Admin`@`%` PROCEDURE `SaveVisitorOutput`(_DateTime DateTime)
BEGIN

insert into timevisitor
	 (DateTimeVisitor, 
       Output)
	values
	 (_DateTime,
	  1
      );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `StatisticVisitor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Admin`@`%` PROCEDURE `StatisticVisitor`(_DateStart date,
								     _DateEnd date)
BEGIN

select DATE_FORMAT(DateTimeVisitor, '%Y-%m-%d') Date,
	 DATE_FORMAT(DateTimeVisitor, '%H:00') Time ,
	   sum(Entrance) as VisitorCount
from timevisitor
where if( _DateEnd is not null,
		Cast( DateTimeVisitor AS Date)	BETWEEN  _DateStart and _DateEnd,
          Cast( DateTimeVisitor AS Date) = _DateStart
        )
GROUP BY Date, Time
  ORDER BY Date, Time
        ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-05 20:39:55
