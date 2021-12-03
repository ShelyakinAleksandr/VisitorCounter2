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
-- Dumping data for table `variables`
--

LOCK TABLES `variables` WRITE;
/*!40000 ALTER TABLE `variables` DISABLE KEYS */;
INSERT INTO `variables` VALUES (1,'Visitor',96);
/*!40000 ALTER TABLE `variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `visitorcounter`
--

LOCK TABLES `visitorcounter` WRITE;
/*!40000 ALTER TABLE `visitorcounter` DISABLE KEYS */;
INSERT INTO `visitorcounter` VALUES (1,'2021-11-30 12:00:00',25),(2,'2021-11-30 13:00:00',40),(3,'2021-11-30 14:00:00',60),(4,'2021-11-30 15:00:00',57),(5,'2021-11-30 16:00:00',43),(6,'2021-11-29 10:00:00',43),(7,'2021-11-29 11:00:00',48),(8,'2021-11-29 12:00:00',67),(9,'2021-11-29 13:00:00',80),(10,'2021-12-02 10:41:37',30),(11,'2021-12-02 10:52:35',30),(12,'2021-12-02 11:01:58',30),(13,'2021-12-02 11:12:00',59),(14,'2021-12-02 11:21:58',59),(15,'2021-12-02 11:31:58',59),(16,'2021-12-02 11:41:58',59),(17,'2021-12-02 11:51:58',59),(18,'2021-12-02 12:01:58',59),(19,'2021-12-02 12:11:58',59),(20,'2021-12-02 12:22:01',96),(21,'2021-12-02 12:31:58',96),(22,'2021-12-02 12:41:58',96),(23,'2021-12-02 12:51:58',96),(24,'2021-12-02 13:01:58',96),(25,'2021-12-02 13:11:58',96),(26,'2021-12-02 13:21:58',96),(27,'2021-12-02 13:31:58',96),(28,'2021-12-02 13:41:58',96),(29,'2021-12-02 13:51:58',96),(31,'2021-12-02 14:01:58',96),(32,'2021-12-02 14:13:26',9),(33,'2021-12-02 14:38:07',0),(34,'2021-12-02 14:39:29',0),(35,'2021-12-02 15:07:32',0),(37,'2021-12-02 15:08:33',22),(38,'2021-12-03 10:39:12',96);
/*!40000 ALTER TABLE `visitorcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shoppingcenter'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `SaveVisitorCounters` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`Admin`@`%`*/ /*!50106 EVENT `SaveVisitorCounters` ON SCHEDULE EVERY 1 HOUR STARTS '2021-12-03 10:39:12' ON COMPLETION NOT PRESERVE ENABLE DO call SaveVisitors() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'shoppingcenter'
--
/*!50003 DROP PROCEDURE IF EXISTS `SaveVisitor2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Admin`@`%` PROCEDURE `SaveVisitor2`(_visitor int)
BEGIN

	insert into visitorcounter
	 ( DateTimeVisitor, 
       VisitorCount)
	values
	 (NOW(),
	 _visitor);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SaveVisitors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Admin`@`%` PROCEDURE `SaveVisitors`()
BEGIN

Declare countVisitor int;

SET countVisitor = (select value from variables where id = 1);

	insert into visitorcounter
	 ( DateTimeVisitor, 
       VisitorCount)
	values
	 (NOW(),
	 countVisitor);

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
	   sum(VisitorCount) as VisitorCount
from visitorcounter
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
/*!50003 DROP PROCEDURE IF EXISTS `VisitorCounters` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Admin`@`%` PROCEDURE `VisitorCounters`(_operation int)
BEGIN

DECLARE Visitor INT;

SET Visitor = (select value from variables where id = 1);

if _operation =0 
	then set Visitor = Visitor + 1;
    
elseif _operation=1 and Visitor>0 
	then set Visitor = Visitor - 1;
end if;

update variables set value =Visitor  where id = 1;

Select Visitor;

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

-- Dump completed on 2021-12-03 11:18:35
