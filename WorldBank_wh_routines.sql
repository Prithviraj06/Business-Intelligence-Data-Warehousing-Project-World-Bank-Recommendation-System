CREATE DATABASE  IF NOT EXISTS `WorldBank_wh` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `WorldBank_wh`;
-- MySQL dump 10.13  Distrib 5.7.20, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: WorldBank_wh
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Temporary table structure for view `vw_dimeffectivedate`
--

DROP TABLE IF EXISTS `vw_dimeffectivedate`;
/*!50001 DROP VIEW IF EXISTS `vw_dimeffectivedate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_dimeffectivedate` AS SELECT 
 1 AS `EffectiveDateKey`,
 1 AS `monthnumber`,
 1 AS `monthname`,
 1 AS `year`,
 1 AS `quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_dimrepaymentdate`
--

DROP TABLE IF EXISTS `vw_dimrepaymentdate`;
/*!50001 DROP VIEW IF EXISTS `vw_dimrepaymentdate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_dimrepaymentdate` AS SELECT 
 1 AS `RepaymentDateKey`,
 1 AS `monthnumber`,
 1 AS `monthname`,
 1 AS `year`,
 1 AS `quarter`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_dimeffectivedate`
--

/*!50001 DROP VIEW IF EXISTS `vw_dimeffectivedate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dimeffectivedate` AS select `dim_date`.`date_id` AS `EffectiveDateKey`,`dim_date`.`monthnumber` AS `monthnumber`,`dim_date`.`monthname` AS `monthname`,`dim_date`.`year` AS `year`,`dim_date`.`quarter` AS `quarter` from `dim_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dimrepaymentdate`
--

/*!50001 DROP VIEW IF EXISTS `vw_dimrepaymentdate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dimrepaymentdate` AS select `dim_date`.`date_id` AS `RepaymentDateKey`,`dim_date`.`monthnumber` AS `monthnumber`,`dim_date`.`monthname` AS `monthname`,`dim_date`.`year` AS `year`,`dim_date`.`quarter` AS `quarter` from `dim_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-16 12:13:08
