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
-- Table structure for table `Dim_Country`
--

DROP TABLE IF EXISTS `Dim_Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dim_Country` (
  `Country_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `Country_ID` bigint(20) DEFAULT NULL,
  `Country_Code` varchar(63) DEFAULT NULL,
  `Country_Name` varchar(63) DEFAULT NULL,
  `Country_Type` varchar(63) DEFAULT NULL,
  `Region_Name` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`Country_key`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dim_Country`
--

LOCK TABLES `Dim_Country` WRITE;
/*!40000 ALTER TABLE `Dim_Country` DISABLE KEYS */;
INSERT INTO `Dim_Country` VALUES (1,1,'AF','Afghanistan','Developing','SOUTH ASIA'),(2,2,'3A','Africa','Developing','AFRICA'),(3,3,'AL','Albania','Developing','EUROPE AND CENTRAL ASIA'),(4,4,'DZ','Algeria','Developing','MIDDLE EAST AND NORTH AFRICA'),(5,5,'AO','Angola','Developing','AFRICA'),(6,6,'AG','Antigua and Barbuda','Developing','LATIN AMERICA AND CARIBBEAN'),(7,7,'AR','Argentina','Developing','LATIN AMERICA AND CARIBBEAN'),(8,8,'AM','Armenia','Developing','EUROPE AND CENTRAL ASIA'),(9,9,'AU','Australia','Developed','EAST ASIA AND PACIFIC'),(10,10,'AT','Austria','Developed','EUROPE AND CENTRAL ASIA'),(11,11,'AZ','Azerbaijan','Developing','EUROPE AND CENTRAL ASIA'),(12,12,'BS','Bahamas, The','Developing','LATIN AMERICA AND CARIBBEAN'),(13,13,'BD','Bangladesh','Developing','SOUTH ASIA'),(14,14,'BB','Barbados','Developing','LATIN AMERICA AND CARIBBEAN'),(15,15,'BY','Belarus','Developing','EUROPE AND CENTRAL ASIA'),(16,16,'BE','Belgium','Developed','EUROPE AND CENTRAL ASIA'),(17,17,'BZ','Belize','Developing','LATIN AMERICA AND CARIBBEAN'),(18,18,'BJ','Benin','Developing','AFRICA'),(19,19,'BT','Bhutan','Developing','SOUTH ASIA'),(20,20,'BO','Bolivia','Developing','LATIN AMERICA AND CARIBBEAN'),(21,21,'BA','Bosnia and Herzegovina','Developing','EUROPE AND CENTRAL ASIA'),(22,22,'BW','Botswana','Developing','AFRICA'),(23,23,'BR','Brazil','Developing','LATIN AMERICA AND CARIBBEAN'),(24,24,'BG','Bulgaria','Developing','EUROPE AND CENTRAL ASIA'),(25,25,'BF','Burkina Faso','Developing','AFRICA'),(26,26,'BI','Burundi','Developing','AFRICA'),(27,27,'CV','Cabo Verde','Developing','AFRICA'),(28,28,'KH','Cambodia','Developing','EAST ASIA AND PACIFIC'),(29,29,'CM','Cameroon','Developing','AFRICA'),(30,30,'6R','Caribbean','Developing','LATIN AMERICA AND CARIBBEAN'),(31,31,'3T','Central Africa','Developing','AFRICA'),(32,32,'CF','Central African Republic','Developing','AFRICA'),(33,33,'6C','Central America','Developing','LATIN AMERICA AND CARIBBEAN'),(34,34,'7C','Central Asia','Developing','EUROPE AND CENTRAL ASIA'),(35,35,'TD','Chad','Developing','AFRICA'),(36,36,'CL','Chile','Developing','LATIN AMERICA AND CARIBBEAN'),(37,37,'CN','China','Developing','EAST ASIA AND PACIFIC'),(38,38,'CO','Colombia','Developing','LATIN AMERICA AND CARIBBEAN'),(39,39,'KM','Comoros','Developing','AFRICA'),(40,40,'ZR','Congo, Democratic Republic of','Developing','AFRICA'),(41,41,'CG','Congo, Republic of','Developing','AFRICA'),(42,42,'CR','Costa Rica','Developing','LATIN AMERICA AND CARIBBEAN'),(43,43,'CI','Cote d\'Ivoire','Developing','AFRICA'),(44,44,'HR','Croatia','Developing','EUROPE AND CENTRAL ASIA'),(45,45,'CY','Cyprus','Developing','EUROPE AND CENTRAL ASIA'),(46,46,'CZ','Czech Republic','Developed','EUROPE AND CENTRAL ASIA'),(47,47,'DK','Denmark','Developed','EUROPE AND CENTRAL ASIA'),(48,48,'DJ','Djibouti','Developing','MIDDLE EAST AND NORTH AFRICA'),(49,49,'DM','Dominica','Developing','LATIN AMERICA AND CARIBBEAN'),(50,50,'DO','Dominican Republic','Developing','LATIN AMERICA AND CARIBBEAN'),(51,51,'3E','Eastern Africa','Developing','AFRICA'),(52,52,'EC','Ecuador','Developing','LATIN AMERICA AND CARIBBEAN'),(53,53,'EG','Egypt, Arab Republic of','Developing','MIDDLE EAST AND NORTH AFRICA'),(54,54,'SV','El Salvador','Developing','LATIN AMERICA AND CARIBBEAN'),(55,55,'GQ','Equatorial Guinea','Developing','AFRICA'),(56,56,'ER','Eritrea','Developing','AFRICA'),(57,57,'EE','Estonia','Developing','EUROPE AND CENTRAL ASIA'),(58,58,'SZ','Eswatini','Developing','AFRICA'),(59,59,'ET','Ethiopia','Developing','AFRICA'),(60,60,'FJ','Fiji','Developing','EAST ASIA AND PACIFIC'),(61,61,'FI','Finland','Developed','EUROPE AND CENTRAL ASIA'),(62,62,'FR','France','Developed','EUROPE AND CENTRAL ASIA'),(63,63,'GA','Gabon','Developing','AFRICA'),(64,64,'GM','Gambia, The','Developing','AFRICA'),(65,65,'GE','Georgia','Developing','EUROPE AND CENTRAL ASIA'),(66,66,'GH','Ghana','Developing','AFRICA'),(67,67,'GR','Greece','Developing','EUROPE AND CENTRAL ASIA'),(68,68,'GD','Grenada','Developing','LATIN AMERICA AND CARIBBEAN'),(69,69,'GT','Guatemala','Developing','LATIN AMERICA AND CARIBBEAN'),(70,70,'GN','Guinea','Developing','AFRICA'),(71,71,'GW','Guinea-Bissau','Developing','AFRICA'),(72,72,'GY','Guyana','Developing','LATIN AMERICA AND CARIBBEAN'),(73,73,'HT','Haiti','Developing','LATIN AMERICA AND CARIBBEAN'),(74,74,'HN','Honduras','Developing','LATIN AMERICA AND CARIBBEAN'),(75,75,'HU','Hungary','Developing','EUROPE AND CENTRAL ASIA'),(76,76,'IS','Iceland','Developed','EUROPE AND CENTRAL ASIA'),(77,77,'IN','India','Developing','SOUTH ASIA'),(78,78,'ID','Indonesia','Developing','EAST ASIA AND PACIFIC'),(79,79,'IR','Iran, Islamic Republic of','Developing','MIDDLE EAST AND NORTH AFRICA'),(80,80,'IQ','Iraq','Developing','MIDDLE EAST AND NORTH AFRICA'),(81,81,'IE','Ireland','Developed','EUROPE AND CENTRAL ASIA'),(82,82,'IL','Israel','Developing','MIDDLE EAST AND NORTH AFRICA'),(83,83,'IT','Italy','Developed','EUROPE AND CENTRAL ASIA'),(84,84,'JM','Jamaica','Developing','LATIN AMERICA AND CARIBBEAN'),(85,85,'JP','Japan','Developed','EAST ASIA AND PACIFIC'),(86,86,'JO','Jordan','Developing','MIDDLE EAST AND NORTH AFRICA'),(87,87,'KZ','Kazakhstan','Developing','EUROPE AND CENTRAL ASIA'),(88,88,'KE','Kenya','Developing','AFRICA'),(89,89,'KI','Kiribati','Developing','EAST ASIA AND PACIFIC'),(90,90,'KR','Korea, Republic of','Developing','EAST ASIA AND PACIFIC'),(91,91,'XK','Kosovo','Developing','EUROPE AND CENTRAL ASIA'),(92,92,'KG','Kyrgyz Republic','Developing','EUROPE AND CENTRAL ASIA'),(93,93,'LA','Lao People\'s Democratic Republic','Developing','EAST ASIA AND PACIFIC'),(94,94,'LV','Latvia','Developing','EUROPE AND CENTRAL ASIA'),(95,95,'LB','Lebanon','Developing','MIDDLE EAST AND NORTH AFRICA'),(96,96,'LS','Lesotho','Developing','AFRICA'),(97,97,'LR','Liberia','Developing','AFRICA'),(98,98,'LT','Lithuania','Developing','EUROPE AND CENTRAL ASIA'),(99,99,'LU','Luxembourg','Developed','EUROPE AND CENTRAL ASIA'),(100,100,'MK','Macedonia, former Yugoslav Republic of','Developing','EUROPE AND CENTRAL ASIA'),(101,101,'MG','Madagascar','Developing','AFRICA'),(102,102,'MW','Malawi','Developing','AFRICA'),(103,103,'MY','Malaysia','Developing','EAST ASIA AND PACIFIC'),(104,104,'MV','Maldives','Developing','SOUTH ASIA'),(105,105,'ML','Mali','Developing','AFRICA'),(106,106,'MT','Malta','Developing','MIDDLE EAST AND NORTH AFRICA'),(107,107,'MH','Marshall Islands','Developing','EAST ASIA AND PACIFIC'),(108,108,'MR','Mauritania','Developing','AFRICA'),(109,109,'MU','Mauritius','Developing','AFRICA'),(110,110,'4M','Mekong','Developing','EAST ASIA AND PACIFIC'),(111,111,'MX','Mexico','Developing','LATIN AMERICA AND CARIBBEAN'),(112,112,'FM','Micronesia, Federated States of','Developing','EAST ASIA AND PACIFIC'),(113,113,'MD','Moldova','Developing','EUROPE AND CENTRAL ASIA'),(114,114,'MN','Mongolia','Developing','EAST ASIA AND PACIFIC'),(115,115,'ME','Montenegro','Developing','EUROPE AND CENTRAL ASIA'),(116,116,'MA','Morocco','Developing','MIDDLE EAST AND NORTH AFRICA'),(117,117,'MZ','Mozambique','Developing','AFRICA'),(118,118,'MM','Myanmar','Developing','EAST ASIA AND PACIFIC'),(119,119,NULL,'Namibia','Developing','AFRICA'),(120,120,'NP','Nepal','Developing','SOUTH ASIA'),(121,121,'NL','Netherlands','Developed','EUROPE AND CENTRAL ASIA'),(122,122,'NZ','New Zealand','Developed','EAST ASIA AND PACIFIC'),(123,123,'NI','Nicaragua','Developing','LATIN AMERICA AND CARIBBEAN'),(124,124,'NE','Niger','Developing','AFRICA'),(125,125,'NG','Nigeria','Developing','AFRICA'),(126,126,'NO','Norway','Developed','EUROPE AND CENTRAL ASIA'),(127,127,'OM','Oman','Developing','MIDDLE EAST AND NORTH AFRICA'),(128,128,'4P','Pacific Islands','Developing','EAST ASIA AND PACIFIC'),(129,129,'PK','Pakistan','Developing','SOUTH ASIA'),(130,130,'PA','Panama','Developing','LATIN AMERICA AND CARIBBEAN'),(131,131,'PG','Papua New Guinea','Developing','EAST ASIA AND PACIFIC'),(132,132,'PY','Paraguay','Developing','LATIN AMERICA AND CARIBBEAN'),(133,133,'PE','Peru','Developing','LATIN AMERICA AND CARIBBEAN'),(134,134,'PH','Philippines','Developing','EAST ASIA AND PACIFIC'),(135,135,'PL','Poland','Developing','EUROPE AND CENTRAL ASIA'),(136,136,'PT','Portugal','Developing','EUROPE AND CENTRAL ASIA'),(137,137,'RO','Romania','Developing','EUROPE AND CENTRAL ASIA'),(138,138,'RU','Russian Federation','Developing','EUROPE AND CENTRAL ASIA'),(139,139,'RW','Rwanda','Developing','AFRICA'),(140,140,'WS','Samoa','Developing','EAST ASIA AND PACIFIC'),(141,141,'ST','Sao Tome and Principe','Developing','AFRICA'),(142,142,'SN','Senegal','Developing','AFRICA'),(143,143,'YF','Serbia','Developing','EUROPE AND CENTRAL ASIA'),(144,144,'SC','Seychelles','Developing','AFRICA'),(145,145,'SL','Sierra Leone','Developing','AFRICA'),(146,146,'SG','Singapore','Developed','EAST ASIA AND PACIFIC'),(147,147,'SK','Slovak Republic','Developing','EUROPE AND CENTRAL ASIA'),(148,148,'SI','Slovenia','Developed','EUROPE AND CENTRAL ASIA'),(149,149,'SB','Solomon Islands','Developing','EAST ASIA AND PACIFIC'),(150,150,'SO','Somalia','Developing','AFRICA'),(151,151,'ZA','South Africa','Developing','AFRICA'),(152,152,'SS','South Sudan','Developing','AFRICA'),(153,153,'3S','Southern Africa','Developing','AFRICA'),(154,154,'ES','Spain','Developed','EUROPE AND CENTRAL ASIA'),(155,155,'LK','Sri Lanka','Developing','SOUTH ASIA'),(156,156,'KN','St. Kitts and Nevis','Developing','LATIN AMERICA AND CARIBBEAN'),(157,157,'LC','St. Lucia','Developing','LATIN AMERICA AND CARIBBEAN'),(158,158,'VC','St. Vincent and the Grenadines','Developing','LATIN AMERICA AND CARIBBEAN'),(159,159,'SD','Sudan','Developing','AFRICA'),(160,160,'SY','Syrian Arab Republic','Developing','MIDDLE EAST AND NORTH AFRICA'),(161,161,'TW','Taiwan, China','Developing','EAST ASIA AND PACIFIC'),(162,162,'TJ','Tajikistan','Developing','EUROPE AND CENTRAL ASIA'),(163,163,'TZ','Tanzania','Developing','AFRICA'),(164,164,'TH','Thailand','Developing','EAST ASIA AND PACIFIC'),(165,165,'TP','Timor-Leste','Developing','EAST ASIA AND PACIFIC'),(166,166,'TG','Togo','Developing','AFRICA'),(167,167,'TO','Tonga','Developing','EAST ASIA AND PACIFIC'),(168,168,'TT','Trinidad and Tobago','Developing','LATIN AMERICA AND CARIBBEAN'),(169,169,'TN','Tunisia','Developing','MIDDLE EAST AND NORTH AFRICA'),(170,170,'TR','Turkey','Developing','EUROPE AND CENTRAL ASIA'),(171,171,'TM','Turkmenistan','Developing','EUROPE AND CENTRAL ASIA'),(172,172,'TV','Tuvalu','Developing','EAST ASIA AND PACIFIC'),(173,173,'UG','Uganda','Developing','AFRICA'),(174,174,'UA','Ukraine','Developing','EUROPE AND CENTRAL ASIA'),(175,175,'UY','Uruguay','Developing','LATIN AMERICA AND CARIBBEAN'),(176,176,'UZ','Uzbekistan','Developing','EUROPE AND CENTRAL ASIA'),(177,177,'VU','Vanuatu','Developing','EAST ASIA AND PACIFIC'),(178,178,'VE','Venezuela, Republica Bolivariana de','Developing','LATIN AMERICA AND CARIBBEAN'),(179,179,'VN','Vietnam','Developing','EAST ASIA AND PACIFIC'),(180,180,'3W','Western Africa','Developing','AFRICA'),(181,181,'1W','World','Developing','OTHER'),(182,182,'RY','Yemen, Republic of','Developing','MIDDLE EAST AND NORTH AFRICA'),(183,183,'YU','Yugoslavia, former','Developing','EUROPE AND CENTRAL ASIA'),(184,184,'ZM','Zambia','Developing','AFRICA'),(185,185,'ZW','Zimbabwe','Developing','AFRICA'),(186,1,'AF','Afghanistan','Developing','SOUTH ASIA'),(187,2,'3A','Africa','Developing','AFRICA'),(188,3,'AL','Albania','Developing','EUROPE AND CENTRAL ASIA'),(189,4,'DZ','Algeria','Developing','MIDDLE EAST AND NORTH AFRICA'),(190,5,'AO','Angola','Developing','AFRICA'),(191,6,'AG','Antigua and Barbuda','Developing','LATIN AMERICA AND CARIBBEAN'),(192,7,'AR','Argentina','Developing','LATIN AMERICA AND CARIBBEAN'),(193,8,'AM','Armenia','Developing','EUROPE AND CENTRAL ASIA'),(194,9,'AU','Australia','Developed','EAST ASIA AND PACIFIC'),(195,10,'AT','Austria','Developed','EUROPE AND CENTRAL ASIA'),(196,11,'AZ','Azerbaijan','Developing','EUROPE AND CENTRAL ASIA'),(197,12,'BS','Bahamas, The','Developing','LATIN AMERICA AND CARIBBEAN'),(198,13,'BD','Bangladesh','Developing','SOUTH ASIA'),(199,14,'BB','Barbados','Developing','LATIN AMERICA AND CARIBBEAN'),(200,15,'BY','Belarus','Developing','EUROPE AND CENTRAL ASIA'),(201,16,'BE','Belgium','Developed','EUROPE AND CENTRAL ASIA'),(202,17,'BZ','Belize','Developing','LATIN AMERICA AND CARIBBEAN'),(203,18,'BJ','Benin','Developing','AFRICA'),(204,19,'BT','Bhutan','Developing','SOUTH ASIA'),(205,20,'BO','Bolivia','Developing','LATIN AMERICA AND CARIBBEAN'),(206,21,'BA','Bosnia and Herzegovina','Developing','EUROPE AND CENTRAL ASIA'),(207,22,'BW','Botswana','Developing','AFRICA'),(208,23,'BR','Brazil','Developing','LATIN AMERICA AND CARIBBEAN'),(209,24,'BG','Bulgaria','Developing','EUROPE AND CENTRAL ASIA'),(210,25,'BF','Burkina Faso','Developing','AFRICA'),(211,26,'BI','Burundi','Developing','AFRICA'),(212,27,'CV','Cabo Verde','Developing','AFRICA'),(213,28,'KH','Cambodia','Developing','EAST ASIA AND PACIFIC'),(214,29,'CM','Cameroon','Developing','AFRICA'),(215,30,'6R','Caribbean','Developing','LATIN AMERICA AND CARIBBEAN'),(216,31,'3T','Central Africa','Developing','AFRICA'),(217,32,'CF','Central African Republic','Developing','AFRICA'),(218,33,'6C','Central America','Developing','LATIN AMERICA AND CARIBBEAN'),(219,34,'7C','Central Asia','Developing','EUROPE AND CENTRAL ASIA'),(220,35,'TD','Chad','Developing','AFRICA'),(221,36,'CL','Chile','Developing','LATIN AMERICA AND CARIBBEAN'),(222,37,'CN','China','Developing','EAST ASIA AND PACIFIC'),(223,38,'CO','Colombia','Developing','LATIN AMERICA AND CARIBBEAN'),(224,39,'KM','Comoros','Developing','AFRICA'),(225,40,'ZR','Congo, Democratic Republic of','Developing','AFRICA'),(226,41,'CG','Congo, Republic of','Developing','AFRICA'),(227,42,'CR','Costa Rica','Developing','LATIN AMERICA AND CARIBBEAN'),(228,43,'CI','Cote d\'Ivoire','Developing','AFRICA'),(229,44,'HR','Croatia','Developing','EUROPE AND CENTRAL ASIA'),(230,45,'CY','Cyprus','Developing','EUROPE AND CENTRAL ASIA'),(231,46,'CZ','Czech Republic','Developed','EUROPE AND CENTRAL ASIA'),(232,47,'DK','Denmark','Developed','EUROPE AND CENTRAL ASIA'),(233,48,'DJ','Djibouti','Developing','MIDDLE EAST AND NORTH AFRICA'),(234,49,'DM','Dominica','Developing','LATIN AMERICA AND CARIBBEAN'),(235,50,'DO','Dominican Republic','Developing','LATIN AMERICA AND CARIBBEAN'),(236,51,'3E','Eastern Africa','Developing','AFRICA'),(237,52,'EC','Ecuador','Developing','LATIN AMERICA AND CARIBBEAN'),(238,53,'EG','Egypt, Arab Republic of','Developing','MIDDLE EAST AND NORTH AFRICA'),(239,54,'SV','El Salvador','Developing','LATIN AMERICA AND CARIBBEAN'),(240,55,'GQ','Equatorial Guinea','Developing','AFRICA'),(241,56,'ER','Eritrea','Developing','AFRICA'),(242,57,'EE','Estonia','Developing','EUROPE AND CENTRAL ASIA'),(243,58,'SZ','Eswatini','Developing','AFRICA'),(244,59,'ET','Ethiopia','Developing','AFRICA'),(245,60,'FJ','Fiji','Developing','EAST ASIA AND PACIFIC'),(246,61,'FI','Finland','Developed','EUROPE AND CENTRAL ASIA'),(247,62,'FR','France','Developed','EUROPE AND CENTRAL ASIA'),(248,63,'GA','Gabon','Developing','AFRICA'),(249,64,'GM','Gambia, The','Developing','AFRICA'),(250,65,'GE','Georgia','Developing','EUROPE AND CENTRAL ASIA'),(251,66,'GH','Ghana','Developing','AFRICA'),(252,67,'GR','Greece','Developing','EUROPE AND CENTRAL ASIA'),(253,68,'GD','Grenada','Developing','LATIN AMERICA AND CARIBBEAN'),(254,69,'GT','Guatemala','Developing','LATIN AMERICA AND CARIBBEAN'),(255,70,'GN','Guinea','Developing','AFRICA'),(256,71,'GW','Guinea-Bissau','Developing','AFRICA'),(257,72,'GY','Guyana','Developing','LATIN AMERICA AND CARIBBEAN'),(258,73,'HT','Haiti','Developing','LATIN AMERICA AND CARIBBEAN'),(259,74,'HN','Honduras','Developing','LATIN AMERICA AND CARIBBEAN'),(260,75,'HU','Hungary','Developing','EUROPE AND CENTRAL ASIA'),(261,76,'IS','Iceland','Developed','EUROPE AND CENTRAL ASIA'),(262,77,'IN','India','Developing','SOUTH ASIA'),(263,78,'ID','Indonesia','Developing','EAST ASIA AND PACIFIC'),(264,79,'IR','Iran, Islamic Republic of','Developing','MIDDLE EAST AND NORTH AFRICA'),(265,80,'IQ','Iraq','Developing','MIDDLE EAST AND NORTH AFRICA'),(266,81,'IE','Ireland','Developed','EUROPE AND CENTRAL ASIA'),(267,82,'IL','Israel','Developing','MIDDLE EAST AND NORTH AFRICA'),(268,83,'IT','Italy','Developed','EUROPE AND CENTRAL ASIA'),(269,84,'JM','Jamaica','Developing','LATIN AMERICA AND CARIBBEAN'),(270,85,'JP','Japan','Developed','EAST ASIA AND PACIFIC'),(271,86,'JO','Jordan','Developing','MIDDLE EAST AND NORTH AFRICA'),(272,87,'KZ','Kazakhstan','Developing','EUROPE AND CENTRAL ASIA'),(273,88,'KE','Kenya','Developing','AFRICA'),(274,89,'KI','Kiribati','Developing','EAST ASIA AND PACIFIC'),(275,90,'KR','Korea, Republic of','Developing','EAST ASIA AND PACIFIC'),(276,91,'XK','Kosovo','Developing','EUROPE AND CENTRAL ASIA'),(277,92,'KG','Kyrgyz Republic','Developing','EUROPE AND CENTRAL ASIA'),(278,93,'LA','Lao People\'s Democratic Republic','Developing','EAST ASIA AND PACIFIC'),(279,94,'LV','Latvia','Developing','EUROPE AND CENTRAL ASIA'),(280,95,'LB','Lebanon','Developing','MIDDLE EAST AND NORTH AFRICA'),(281,96,'LS','Lesotho','Developing','AFRICA'),(282,97,'LR','Liberia','Developing','AFRICA'),(283,98,'LT','Lithuania','Developing','EUROPE AND CENTRAL ASIA'),(284,99,'LU','Luxembourg','Developed','EUROPE AND CENTRAL ASIA'),(285,100,'MK','Macedonia, former Yugoslav Republic of','Developing','EUROPE AND CENTRAL ASIA'),(286,101,'MG','Madagascar','Developing','AFRICA'),(287,102,'MW','Malawi','Developing','AFRICA'),(288,103,'MY','Malaysia','Developing','EAST ASIA AND PACIFIC'),(289,104,'MV','Maldives','Developing','SOUTH ASIA'),(290,105,'ML','Mali','Developing','AFRICA'),(291,106,'MT','Malta','Developing','MIDDLE EAST AND NORTH AFRICA'),(292,107,'MH','Marshall Islands','Developing','EAST ASIA AND PACIFIC'),(293,108,'MR','Mauritania','Developing','AFRICA'),(294,109,'MU','Mauritius','Developing','AFRICA'),(295,110,'4M','Mekong','Developing','EAST ASIA AND PACIFIC'),(296,111,'MX','Mexico','Developing','LATIN AMERICA AND CARIBBEAN'),(297,112,'FM','Micronesia, Federated States of','Developing','EAST ASIA AND PACIFIC'),(298,113,'MD','Moldova','Developing','EUROPE AND CENTRAL ASIA'),(299,114,'MN','Mongolia','Developing','EAST ASIA AND PACIFIC'),(300,115,'ME','Montenegro','Developing','EUROPE AND CENTRAL ASIA'),(301,116,'MA','Morocco','Developing','MIDDLE EAST AND NORTH AFRICA'),(302,117,'MZ','Mozambique','Developing','AFRICA'),(303,118,'MM','Myanmar','Developing','EAST ASIA AND PACIFIC'),(304,119,NULL,'Namibia','Developing','AFRICA'),(305,120,'NP','Nepal','Developing','SOUTH ASIA'),(306,121,'NL','Netherlands','Developed','EUROPE AND CENTRAL ASIA'),(307,122,'NZ','New Zealand','Developed','EAST ASIA AND PACIFIC'),(308,123,'NI','Nicaragua','Developing','LATIN AMERICA AND CARIBBEAN'),(309,124,'NE','Niger','Developing','AFRICA'),(310,125,'NG','Nigeria','Developing','AFRICA'),(311,126,'NO','Norway','Developed','EUROPE AND CENTRAL ASIA'),(312,127,'OM','Oman','Developing','MIDDLE EAST AND NORTH AFRICA'),(313,128,'4P','Pacific Islands','Developing','EAST ASIA AND PACIFIC'),(314,129,'PK','Pakistan','Developing','SOUTH ASIA'),(315,130,'PA','Panama','Developing','LATIN AMERICA AND CARIBBEAN'),(316,131,'PG','Papua New Guinea','Developing','EAST ASIA AND PACIFIC'),(317,132,'PY','Paraguay','Developing','LATIN AMERICA AND CARIBBEAN'),(318,133,'PE','Peru','Developing','LATIN AMERICA AND CARIBBEAN'),(319,134,'PH','Philippines','Developing','EAST ASIA AND PACIFIC'),(320,135,'PL','Poland','Developing','EUROPE AND CENTRAL ASIA'),(321,136,'PT','Portugal','Developing','EUROPE AND CENTRAL ASIA'),(322,137,'RO','Romania','Developing','EUROPE AND CENTRAL ASIA'),(323,138,'RU','Russian Federation','Developing','EUROPE AND CENTRAL ASIA'),(324,139,'RW','Rwanda','Developing','AFRICA'),(325,140,'WS','Samoa','Developing','EAST ASIA AND PACIFIC'),(326,141,'ST','Sao Tome and Principe','Developing','AFRICA'),(327,142,'SN','Senegal','Developing','AFRICA'),(328,143,'YF','Serbia','Developing','EUROPE AND CENTRAL ASIA'),(329,144,'SC','Seychelles','Developing','AFRICA'),(330,145,'SL','Sierra Leone','Developing','AFRICA'),(331,146,'SG','Singapore','Developed','EAST ASIA AND PACIFIC'),(332,147,'SK','Slovak Republic','Developing','EUROPE AND CENTRAL ASIA'),(333,148,'SI','Slovenia','Developed','EUROPE AND CENTRAL ASIA'),(334,149,'SB','Solomon Islands','Developing','EAST ASIA AND PACIFIC'),(335,150,'SO','Somalia','Developing','AFRICA'),(336,151,'ZA','South Africa','Developing','AFRICA'),(337,152,'SS','South Sudan','Developing','AFRICA'),(338,153,'3S','Southern Africa','Developing','AFRICA'),(339,154,'ES','Spain','Developed','EUROPE AND CENTRAL ASIA'),(340,155,'LK','Sri Lanka','Developing','SOUTH ASIA'),(341,156,'KN','St. Kitts and Nevis','Developing','LATIN AMERICA AND CARIBBEAN'),(342,157,'LC','St. Lucia','Developing','LATIN AMERICA AND CARIBBEAN'),(343,158,'VC','St. Vincent and the Grenadines','Developing','LATIN AMERICA AND CARIBBEAN'),(344,159,'SD','Sudan','Developing','AFRICA'),(345,160,'SY','Syrian Arab Republic','Developing','MIDDLE EAST AND NORTH AFRICA'),(346,161,'TW','Taiwan, China','Developing','EAST ASIA AND PACIFIC'),(347,162,'TJ','Tajikistan','Developing','EUROPE AND CENTRAL ASIA'),(348,163,'TZ','Tanzania','Developing','AFRICA'),(349,164,'TH','Thailand','Developing','EAST ASIA AND PACIFIC'),(350,165,'TP','Timor-Leste','Developing','EAST ASIA AND PACIFIC'),(351,166,'TG','Togo','Developing','AFRICA'),(352,167,'TO','Tonga','Developing','EAST ASIA AND PACIFIC'),(353,168,'TT','Trinidad and Tobago','Developing','LATIN AMERICA AND CARIBBEAN'),(354,169,'TN','Tunisia','Developing','MIDDLE EAST AND NORTH AFRICA'),(355,170,'TR','Turkey','Developing','EUROPE AND CENTRAL ASIA'),(356,171,'TM','Turkmenistan','Developing','EUROPE AND CENTRAL ASIA'),(357,172,'TV','Tuvalu','Developing','EAST ASIA AND PACIFIC'),(358,173,'UG','Uganda','Developing','AFRICA'),(359,174,'UA','Ukraine','Developing','EUROPE AND CENTRAL ASIA'),(360,175,'UY','Uruguay','Developing','LATIN AMERICA AND CARIBBEAN'),(361,176,'UZ','Uzbekistan','Developing','EUROPE AND CENTRAL ASIA'),(362,177,'VU','Vanuatu','Developing','EAST ASIA AND PACIFIC'),(363,178,'VE','Venezuela, Republica Bolivariana de','Developing','LATIN AMERICA AND CARIBBEAN'),(364,179,'VN','Vietnam','Developing','EAST ASIA AND PACIFIC'),(365,180,'3W','Western Africa','Developing','AFRICA'),(366,181,'1W','World','Developing','OTHER'),(367,182,'RY','Yemen, Republic of','Developing','MIDDLE EAST AND NORTH AFRICA'),(368,183,'YU','Yugoslavia, former','Developing','EUROPE AND CENTRAL ASIA'),(369,184,'ZM','Zambia','Developing','AFRICA'),(370,185,'ZW','Zimbabwe','Developing','AFRICA');
/*!40000 ALTER TABLE `Dim_Country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-16 12:13:08
