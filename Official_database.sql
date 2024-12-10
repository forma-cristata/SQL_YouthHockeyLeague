CREATE DATABASE  IF NOT EXISTS `ICE_HOCKEY_LEAGUE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ICE_HOCKEY_LEAGUE`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ICE_HOCKEY_LEAGUE
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `COACH`
--

DROP TABLE IF EXISTS `COACH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COACH` (
  `COACH_ID` int unsigned NOT NULL,
  `TEAM_ID` int unsigned DEFAULT NULL,
  `COACH_FNAME` varchar(36) NOT NULL,
  `COACH_LNAME` varchar(36) NOT NULL,
  `COACH_AREACODE` char(3) NOT NULL,
  `COACH_PHONE` char(8) NOT NULL,
  PRIMARY KEY (`COACH_ID`),
  KEY `TEAM_ID` (`TEAM_ID`),
  CONSTRAINT `COACH_ibfk_1` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COACH`
--

LOCK TABLES `COACH` WRITE;
/*!40000 ALTER TABLE `COACH` DISABLE KEYS */;
INSERT INTO `COACH` VALUES (11,316,'OLIVIA','ADAMS','213','251-8419'),(12,315,'LIAM','BENNETT','212','665-1932'),(13,312,'EMMA','CARTER','713','624-5025'),(14,316,'NOAH','DAVIS','305','459-3242'),(15,313,'AVA','EDWARDS','312','131-0243'),(16,313,'ETHAN','FOSTER','702','001-6828'),(17,315,'SOPHIA','GRAY','665','539-2369'),(18,311,'JACKSON','HARRIS','303','547-4539'),(19,317,'ISABELLA','INGRAM','720','406-8256'),(20,319,'LUCAS','JOHNSON','660','373-4240'),(21,316,'MIA','KING','213','222-3333'),(22,319,'AIDEN','LEE','212','637-9304'),(23,310,'OLIVER','MITCHELL','713','129-4786'),(24,317,'AMELIA','NELSON','305','739-0048'),(25,319,'CADEN','OWENS','312','763-9477'),(26,318,'CHARLOTTE','PARKER','702','665-4444'),(27,311,'GRAYSON','QUINN','665','783-6766'),(28,314,'HARPER','ROSS','303','926-0128'),(29,317,'ELIJAH','SIMMONS','303','003-6728'),(30,312,'ABIGAIL','TURNER','120','134-5749'),(31,318,'MUHAMMAD','WALKER','727','765-0098'),(32,315,'EMILY','YOUNG','720','123-4567'),(33,318,'JAMES','ZIMMERMAN','212','765-4321'),(34,314,'ELLA','ADAMS','814','112-1239'),(35,310,'BENJAMIN','BAKER','768','010-0205');
/*!40000 ALTER TABLE `COACH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAME`
--

DROP TABLE IF EXISTS `GAME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GAME` (
  `GAME_ID` int unsigned NOT NULL,
  `RINK_ID` int unsigned NOT NULL,
  PRIMARY KEY (`GAME_ID`),
  KEY `RINK_ID` (`RINK_ID`),
  CONSTRAINT `GAME_ibfk_1` FOREIGN KEY (`RINK_ID`) REFERENCES `RINK` (`RINK_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAME`
--

LOCK TABLES `GAME` WRITE;
/*!40000 ALTER TABLE `GAME` DISABLE KEYS */;
INSERT INTO `GAME` VALUES (210,101),(250,103),(220,104),(230,107),(260,108),(240,110);
/*!40000 ALTER TABLE `GAME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAMESTAT`
--

DROP TABLE IF EXISTS `GAMESTAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GAMESTAT` (
  `GAMESTAT_ID` int unsigned NOT NULL,
  `GAMESTAT_SCORE` int unsigned DEFAULT NULL,
  `TEAM_ID` int unsigned NOT NULL,
  `GAME_ID` int unsigned NOT NULL,
  PRIMARY KEY (`GAMESTAT_ID`),
  KEY `TEAM_ID` (`TEAM_ID`),
  KEY `GAME_ID` (`GAME_ID`),
  CONSTRAINT `GAMESTAT_ibfk_1` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `GAMESTAT_ibfk_2` FOREIGN KEY (`GAME_ID`) REFERENCES `GAME` (`GAME_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAMESTAT`
--

LOCK TABLES `GAMESTAT` WRITE;
/*!40000 ALTER TABLE `GAMESTAT` DISABLE KEYS */;
INSERT INTO `GAMESTAT` VALUES (4100,NULL,310,210),(4101,NULL,311,210),(4102,NULL,312,220),(4103,NULL,313,220),(4104,NULL,314,230),(4105,NULL,315,230),(4106,NULL,316,240),(4107,NULL,317,240),(4108,NULL,318,250),(4109,NULL,319,250),(4110,NULL,314,260),(4111,NULL,316,260);
/*!40000 ALTER TABLE `GAMESTAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `GAMES_PLAYED_AWAY`
--

DROP TABLE IF EXISTS `GAMES_PLAYED_AWAY`;
/*!50001 DROP VIEW IF EXISTS `GAMES_PLAYED_AWAY`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `GAMES_PLAYED_AWAY` AS SELECT 
 1 AS `Team Name`,
 1 AS `Games Away From Homerink`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `OFFICIATE`
--

DROP TABLE IF EXISTS `OFFICIATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFICIATE` (
  `GAME_ID` int unsigned NOT NULL,
  `REF_ID` int unsigned NOT NULL,
  PRIMARY KEY (`GAME_ID`,`REF_ID`),
  KEY `REF_ID` (`REF_ID`),
  CONSTRAINT `OFFICIATE_ibfk_1` FOREIGN KEY (`GAME_ID`) REFERENCES `GAME` (`GAME_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `OFFICIATE_ibfk_2` FOREIGN KEY (`REF_ID`) REFERENCES `REF` (`REF_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFICIATE`
--

LOCK TABLES `OFFICIATE` WRITE;
/*!40000 ALTER TABLE `OFFICIATE` DISABLE KEYS */;
INSERT INTO `OFFICIATE` VALUES (210,1),(240,1),(210,2),(240,2),(210,3),(250,3),(220,4),(250,4),(220,5),(250,5),(220,6),(260,6),(230,7),(260,7),(230,8),(260,8),(230,9),(240,10);
/*!40000 ALTER TABLE `OFFICIATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARENT`
--

DROP TABLE IF EXISTS `PARENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PARENT` (
  `PARENT_ID` int unsigned NOT NULL,
  `PARENT_FNAME` varchar(36) NOT NULL,
  `PARENT_LNAME` varchar(36) NOT NULL,
  `PARENT_AREACODE` char(3) NOT NULL,
  `PARENT_PHONE` char(8) NOT NULL,
  `PARTNER_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`PARENT_ID`),
  KEY `PARTNER_ID` (`PARTNER_ID`),
  CONSTRAINT `PARENT_ibfk_1` FOREIGN KEY (`PARTNER_ID`) REFERENCES `PARENT` (`PARENT_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARENT`
--

LOCK TABLES `PARENT` WRITE;
/*!40000 ALTER TABLE `PARENT` DISABLE KEYS */;
INSERT INTO `PARENT` VALUES (1001,'OLIVIA','VETTEL','205','619-6238',1027),(1002,'LIAM','YARTROLD','907','009-0909',1006),(1003,'EMMA','SCHUMAKER','319','610-5131',1015),(1004,'NOAH','MCCLANNAH','812','109-1298',1030),(1005,'AVA','EMILIE','475','698-3332',1007),(1006,'ETHAN','NATHAN','907','502-5903',1002),(1007,'SOPHIA','JACKSON','808','878-7217',1005),(1008,'JACKSON','SHITNER','212','019-3210',1029),(1009,'ISABELLA','LAUGHTNER','303','665-3101',1017),(1010,'LUCAS','CRAIG','404','776-8332',1019),(1011,'MIA','HUMAHHAD','302','502-5987',1021),(1012,'AIDEN','WOODS','720','665-3101',1024),(1013,'OLIVIER','THOMPSON','786','311-9112',1018),(1014,'AMELIA','JO-HAM-MAN','902','012-2867',1026),(1015,'CADEN','CRAYSMITH','319','212-4296',1003),(1016,'CHARLOTTE','DEWITTE','911','361-4700',1023),(1017,'GRAYSON','TRENDSTER','212','367-3541',1009),(1018,'HARPER','HAMPER','814','298-0331',1013),(1019,'ELIJAH','CRAIG','720','115-2642',1010),(1020,'ABIGAIL','HARTMAN','','720',1025),(1021,'MUHAMMAD','HUMAHHAD','814','861-7260',1011),(1022,'EMILY','PLENILUNIUM','303','191-2023',1028),(1023,'JAMES','DUPONT','861','661-5143',1016),(1024,'ELLA','WOODS','960','885-5460',1012),(1025,'BANJAMIN','HARTMAN','226','617-8090',1020),(1026,'SCARLETT','JO-HAM-MAN','619','404-4567',1014),(1027,'SEBASTIAN','VETTEL','','205',1001),(1028,'LUNA','PLENILUNIUM','808','900-8641',1022),(1029,'WILLIAM','SHITNER','209','619-9260',1008),(1030,'GRACE','MCCLANNAH','812','404-5694',1004),(1031,'MICHAEL','MOLTRE','520','619-6240',NULL),(1032,'CHLOE','NORETZ','928','112-6665',NULL),(1033,'ALEXANDER','THETHIRD','470','004-3649',NULL),(1034,'LAYLA','HALTEZ','812','121-2563',NULL),(1035,'DANIEL','DELASANTRE','515','666-1234',NULL),(1036,'ZOE','DESCHANEL','641','081-6004',NULL),(1037,'HENRY','NEJAK','610','311-6710',NULL),(1038,'LILY','ARMSTRONG','256','671-7801',NULL),(1039,'MATTHEW','MCCONIHAY','303','689-7486',NULL),(1040,'ARIA','STARK','303','123-4567',NULL);
/*!40000 ALTER TABLE `PARENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `PARENTS_ALLOWED_TO_PICK_UP`
--

DROP TABLE IF EXISTS `PARENTS_ALLOWED_TO_PICK_UP`;
/*!50001 DROP VIEW IF EXISTS `PARENTS_ALLOWED_TO_PICK_UP`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PARENTS_ALLOWED_TO_PICK_UP` AS SELECT 
 1 AS `Player`,
 1 AS `Parent`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PLAYER`
--

DROP TABLE IF EXISTS `PLAYER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLAYER` (
  `PLAYER_ID` int unsigned NOT NULL,
  `TEAM_ID` int unsigned DEFAULT NULL,
  `POSITION_ID` int unsigned NOT NULL,
  `PLAYER_FNAME` varchar(36) NOT NULL,
  `PLAYER_LNAME` varchar(36) NOT NULL,
  `PLAYER_DOB` date NOT NULL,
  PRIMARY KEY (`PLAYER_ID`),
  KEY `TEAM_ID` (`TEAM_ID`),
  KEY `POSITION_ID` (`POSITION_ID`),
  CONSTRAINT `PLAYER_ibfk_1` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `PLAYER_ibfk_2` FOREIGN KEY (`POSITION_ID`) REFERENCES `POSITION` (`POSITION_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAYER`
--

LOCK TABLES `PLAYER` WRITE;
/*!40000 ALTER TABLE `PLAYER` DISABLE KEYS */;
INSERT INTO `PLAYER` VALUES (1,310,25,'JESUS','STARK','2009-01-05'),(2,310,26,'NAPOLEON','MOLTRE','2009-10-17'),(3,310,27,'MUHAMMAD','DEWITTE','2008-05-06'),(4,310,27,'WILLIAM','CRAIG','2010-06-02'),(5,310,28,'ABRAHAM','YARTROLD','2009-09-07'),(6,310,29,'GEORGE','WOODS','2009-02-15'),(7,311,28,'WARREN','DESCHANEL','2009-11-08'),(8,311,27,'BILL','YARTROLD','2008-07-02'),(9,311,25,'MICHAEL','DEWITTE','2009-04-09'),(10,311,29,'MELINDA','THETHIRD','2010-03-16'),(11,311,27,'GEORGE','HUMAHHAD','2009-08-10'),(12,311,26,'MARK','VETTEL','2009-08-24'),(13,312,26,'PRISCILLA','JO-HAM-MAN','2009-09-19'),(14,312,27,'CHARLI','MCCLANNAH','2009-12-11'),(15,312,27,'MILLIE','MCCONIHAY','2010-10-01'),(16,312,29,'SUNDAY','ARMSTRONG','2009-07-13'),(17,312,25,'TATE','HARTMAN','2009-04-12'),(18,312,28,'CHRISTOPHER','LAUGHTNER','2008-03-29'),(19,313,28,'JACK','SCHUMAKER','2008-01-21'),(20,313,27,'MATTHEW','PLENILUNIUM','2009-11-15'),(21,313,26,'JENNA','SHITNER','2010-06-09'),(22,313,25,'TOMMY','SCHUMAKER','2009-05-13'),(23,313,29,'ALASKA','THOMPSON','2009-02-11'),(24,313,27,'LOUIS','DELASANTRE','2009-12-14'),(25,314,27,'NICOLAS','SHITNER','2009-01-16'),(26,314,27,'YANNI','WOODS','2010-05-15'),(27,314,29,'XAVI','MCCLANNAH','2009-02-02'),(28,314,25,'LALA','NORETZ','2008-01-09'),(29,314,26,'KLAILEA','HALTEZ','2009-06-16'),(30,314,28,'LANDON','NEJAK','2009-02-18'),(31,315,28,'PAYTON','MCCLANNAH','2009-03-07'),(32,315,27,'RICA','THETHIRD','2009-12-17'),(33,315,25,'BARACK','STARK','2009-04-30'),(34,315,29,'MAHATMA','DESCHANEL','2008-07-05'),(35,315,27,'ALEXANDER','THOMPSON','2010-04-30'),(36,315,26,'MARTIN','EMILIE','2009-03-31'),(37,316,25,'NELSON','JO-HAM-MAN','2010-05-03'),(38,316,27,'WINSTON','EMILIE','2009-11-01'),(39,316,29,'ANGELA','CRAIG','2009-08-31'),(40,316,27,'VLADIMIR','HUMAHHAD','2009-04-16'),(41,316,26,'MARGARET','LAUGHTNER','2009-03-18'),(42,316,28,'FRANKLIN','HARTMAN','2008-06-03'),(43,317,26,'JACINDA','PLENILUNIUM','2009-07-09'),(44,317,28,'EMMANUEL','VETTEL','2008-05-29'),(45,317,25,'BENJAMIN','ARMSTRONG','2009-08-05'),(46,317,27,'JAWAHARLAL','ARMSTRONG','2010-10-19'),(47,317,29,'DWIGHT','WOODS','2009-02-21'),(48,317,27,'JOHN','YARTROLD','2009-09-24'),(49,318,29,'INDIRA','THOMPSON','2010-06-27'),(50,318,27,'MAO','SCHUMAKER','2009-09-26'),(51,318,27,'GOLDA','SCHUMAKER','2009-10-02'),(52,318,26,'FATBOY','SHITNER','2008-10-20'),(53,318,28,'GUILLAME','THOMPSON','2009-09-07'),(54,318,25,'HECTOR','MOLTRE','2009-01-25'),(55,319,26,'SAMA','DEWITTE','2008-12-10'),(56,319,27,'INDIRA','PLENILUNIUM','2009-11-20'),(57,319,28,'FATIMA','HALTEZ','2009-12-21'),(58,319,29,'DELANO','DESCHANEL','2010-11-30'),(59,319,25,'CURTIS','YARTROLD','2009-07-30'),(60,319,27,'RICHIE','YARTROLD','2009-08-23');
/*!40000 ALTER TABLE `PLAYER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `PLAYERS_PARENTS_NUMBERS`
--

DROP TABLE IF EXISTS `PLAYERS_PARENTS_NUMBERS`;
/*!50001 DROP VIEW IF EXISTS `PLAYERS_PARENTS_NUMBERS`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PLAYERS_PARENTS_NUMBERS` AS SELECT 
 1 AS `Player`,
 1 AS `Guardian's Contact`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `PLAYERS_WITH_TWO_PARENTS`
--

DROP TABLE IF EXISTS `PLAYERS_WITH_TWO_PARENTS`;
/*!50001 DROP VIEW IF EXISTS `PLAYERS_WITH_TWO_PARENTS`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PLAYERS_WITH_TWO_PARENTS` AS SELECT 
 1 AS `PLAYER_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `POSITION`
--

DROP TABLE IF EXISTS `POSITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `POSITION` (
  `POSITION_ID` int unsigned NOT NULL,
  `POSITION_NAME` varchar(10) NOT NULL,
  PRIMARY KEY (`POSITION_ID`),
  CONSTRAINT `POSITION_chk_1` CHECK ((upper(`POSITION_NAME`) in (_utf8mb4'DEFENSEMAN',_utf8mb4'LEFT WING',_utf8mb4'RIGHT WING',_utf8mb4'CENTER',_utf8mb4'GOALIE')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POSITION`
--

LOCK TABLES `POSITION` WRITE;
/*!40000 ALTER TABLE `POSITION` DISABLE KEYS */;
INSERT INTO `POSITION` VALUES (25,'GOALIE'),(26,'RIGHT WING'),(27,'CENTER'),(28,'LEFT WING'),(29,'DEFENSEMAN');
/*!40000 ALTER TABLE `POSITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REF`
--

DROP TABLE IF EXISTS `REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REF` (
  `REF_ID` int unsigned NOT NULL,
  `REF_FNAME` varchar(36) NOT NULL,
  `REF_LNAME` varchar(36) NOT NULL,
  `REF_AREACODE` char(3) NOT NULL,
  `REF_PHONE` char(8) NOT NULL,
  `REF_WHISTLEEXCESSIVENESS` varchar(6) NOT NULL,
  PRIMARY KEY (`REF_ID`),
  CONSTRAINT `REF_chk_1` CHECK ((upper(`REF_WHISTLEEXCESSIVENESS`) in (_utf8mb4'HIGH',_utf8mb4'MEDIUM',_utf8mb4'LOW')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REF`
--

LOCK TABLES `REF` WRITE;
/*!40000 ALTER TABLE `REF` DISABLE KEYS */;
INSERT INTO `REF` VALUES (1,'Joseph','Capaletti','303','112-3456','HIGH'),(2,'Bigsby','Dufault','212','903-5647','MEDIUM'),(3,'Juniper','Weaver','720','847-6738','HIGH'),(4,'Charlot','Harlot','814','888-8891','HIGH'),(5,'Robyn','Boby','814','729-7284','LOW'),(6,'Nikolai','Fitzpatrik','760','893-2883','HIGH'),(7,'Harry','Potter','220','269-9621','MEDIUM'),(8,'Hela','Dafish','771','208-3902','MEDIUM'),(9,'Felix','Brynn','814','303-3030','LOW'),(10,'Chartreuse','Liqueur','303','1777','HIGH');
/*!40000 ALTER TABLE `REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RELATION`
--

DROP TABLE IF EXISTS `RELATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RELATION` (
  `PLAYER_ID` int unsigned NOT NULL,
  `PARENT_ID` int unsigned NOT NULL,
  `RELATION_PICKUPPERMISSION` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`PLAYER_ID`,`PARENT_ID`),
  KEY `PARENT_ID` (`PARENT_ID`),
  CONSTRAINT `RELATION_ibfk_1` FOREIGN KEY (`PLAYER_ID`) REFERENCES `PLAYER` (`PLAYER_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `RELATION_ibfk_2` FOREIGN KEY (`PARENT_ID`) REFERENCES `PARENT` (`PARENT_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `RELATION_chk_1` CHECK ((`RELATION_PICKUPPERMISSION` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RELATION`
--

LOCK TABLES `RELATION` WRITE;
/*!40000 ALTER TABLE `RELATION` DISABLE KEYS */;
INSERT INTO `RELATION` VALUES (1,1040,'Y'),(2,1031,'Y'),(3,1016,'Y'),(3,1023,'Y'),(4,1010,'Y'),(4,1019,'Y'),(5,1002,'Y'),(5,1006,'Y'),(6,1012,'Y'),(6,1024,'Y'),(7,1036,'Y'),(8,1002,'Y'),(8,1006,'Y'),(9,1016,'Y'),(9,1023,'Y'),(10,1033,'Y'),(11,1011,'Y'),(11,1021,'Y'),(12,1001,'Y'),(12,1027,'Y'),(13,1014,'Y'),(13,1026,'Y'),(14,1004,'Y'),(14,1030,'Y'),(15,1039,'Y'),(16,1038,'Y'),(17,1020,'Y'),(17,1025,'Y'),(18,1009,'Y'),(18,1017,'Y'),(19,1003,'Y'),(19,1015,'Y'),(20,1022,'Y'),(20,1028,'Y'),(21,1008,'Y'),(21,1029,'Y'),(22,1003,'Y'),(22,1015,'Y'),(23,1013,'Y'),(23,1018,'Y'),(24,1035,'Y'),(25,1008,'Y'),(25,1029,'Y'),(26,1012,'Y'),(26,1024,'Y'),(27,1004,'Y'),(27,1030,'Y'),(28,1032,'Y'),(29,1034,'N'),(30,1037,'Y'),(31,1004,'Y'),(31,1030,'Y'),(32,1033,'Y'),(33,1040,'Y'),(34,1036,'Y'),(35,1013,'Y'),(35,1018,'Y'),(36,1005,'Y'),(36,1007,'Y'),(37,1014,'Y'),(37,1026,'Y'),(38,1005,'Y'),(38,1007,'Y'),(39,1010,'Y'),(39,1019,'Y'),(40,1011,'Y'),(40,1021,'Y'),(41,1009,'N'),(41,1017,'Y'),(42,1020,'Y'),(42,1025,'Y'),(43,1022,'Y'),(43,1028,'Y'),(44,1001,'Y'),(44,1027,'Y'),(45,1038,'Y'),(46,1038,'Y'),(47,1012,'Y'),(47,1024,'N'),(48,1002,'Y'),(48,1006,'N'),(49,1013,'Y'),(49,1018,'Y'),(50,1003,'Y'),(50,1015,'Y'),(51,1003,'Y'),(51,1015,'Y'),(52,1008,'Y'),(52,1029,'Y'),(53,1013,'Y'),(53,1018,'Y'),(54,1031,'Y'),(55,1016,'Y'),(55,1023,'Y'),(56,1022,'Y'),(56,1028,'Y'),(57,1034,'Y'),(58,1036,'Y'),(59,1002,'Y'),(59,1006,'Y'),(60,1002,'N'),(60,1006,'Y');
/*!40000 ALTER TABLE `RELATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RINK`
--

DROP TABLE IF EXISTS `RINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RINK` (
  `RINK_ID` int unsigned NOT NULL,
  `RINK_STREETADDRESS` varchar(60) NOT NULL,
  `RINK_CITY` varchar(40) NOT NULL,
  `RINK_STATE` char(2) NOT NULL DEFAULT 'PA',
  `RINK_ZIP` char(5) NOT NULL,
  PRIMARY KEY (`RINK_ID`),
  CONSTRAINT `RINK_chk_1` CHECK ((`RINK_STATE` in (_utf8mb4'AL',_utf8mb4'AK',_utf8mb4'AZ',_utf8mb4'AR',_utf8mb4'AS',_utf8mb4'CA',_utf8mb4'CO',_utf8mb4'CT',_utf8mb4'DE',_utf8mb4'DC',_utf8mb4'FL',_utf8mb4'GA',_utf8mb4'GU',_utf8mb4'HI',_utf8mb4'ID',_utf8mb4'IL',_utf8mb4'IN',_utf8mb4'IA',_utf8mb4'KS',_utf8mb4'KY',_utf8mb4'LA',_utf8mb4'ME',_utf8mb4'MD',_utf8mb4'MA',_utf8mb4'MI',_utf8mb4'MN',_utf8mb4'MS',_utf8mb4'MO',_utf8mb4'MT',_utf8mb4'NE',_utf8mb4'NV',_utf8mb4'NH',_utf8mb4'NJ',_utf8mb4'NM',_utf8mb4'NY',_utf8mb4'NC',_utf8mb4'ND',_utf8mb4'MP',_utf8mb4'OH',_utf8mb4'OK',_utf8mb4'OR',_utf8mb4'PA',_utf8mb4'PR',_utf8mb4'RI',_utf8mb4'SC',_utf8mb4'SD',_utf8mb4'TN',_utf8mb4'TX',_utf8mb4'TT',_utf8mb4'UT',_utf8mb4'VT',_utf8mb4'VA',_utf8mb4'VI',_utf8mb4'WA',_utf8mb4'WV',_utf8mb4'WI',_utf8mb4'WY')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RINK`
--

LOCK TABLES `RINK` WRITE;
/*!40000 ALTER TABLE `RINK` DISABLE KEYS */;
INSERT INTO `RINK` VALUES (101,'123 Street St.','Lakewood','PA','16801'),(102,'8765 W Yale Pl.','Morrison','CO','80228'),(103,'11878 W Yukon Ave','Du Bois','PA','16421'),(104,'875 Hubler Ridge Rd.','State College','PA','16803'),(105,'74872 Weaver Dr.','Denver','CO','80128'),(106,'89 Stateside Pl.','Evergreen','CO','80226'),(107,'69 Forking Ave.','Columbia','DC','20212'),(108,'790 65th St. W.','Detroit','MI','61438'),(109,'143 LaLa Rd.','Dupont','DC','14692'),(110,'303 Stonem St.','Logan','DC','14561');
/*!40000 ALTER TABLE `RINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEAM`
--

DROP TABLE IF EXISTS `TEAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TEAM` (
  `TEAM_ID` int unsigned NOT NULL,
  `HOMERINK_ID` int unsigned DEFAULT NULL,
  `TEAM_NAME` char(20) NOT NULL,
  `HEADCOACH_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`TEAM_ID`),
  UNIQUE KEY `HEADCOACH_ID` (`HEADCOACH_ID`),
  KEY `HOMERINK_ID` (`HOMERINK_ID`),
  CONSTRAINT `TEAM_ibfk_1` FOREIGN KEY (`HOMERINK_ID`) REFERENCES `RINK` (`RINK_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `TEAM_ibfk_2` FOREIGN KEY (`HEADCOACH_ID`) REFERENCES `COACH` (`COACH_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEAM`
--

LOCK TABLES `TEAM` WRITE;
/*!40000 ALTER TABLE `TEAM` DISABLE KEYS */;
INSERT INTO `TEAM` VALUES (310,105,'WILDCATS',35),(311,103,'BLUES',27),(312,109,'COCKATOOS',13),(313,107,'DEGENS',16),(314,101,'NERDS',28),(315,110,'FRIENDS',32),(316,104,'MOUNTAINS',14),(317,103,'MIRRORS',19),(318,106,'PRICKLY PEARS',33),(319,102,'VAPES',20);
/*!40000 ALTER TABLE `TEAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `TEAMS_HEAD_COACHES`
--

DROP TABLE IF EXISTS `TEAMS_HEAD_COACHES`;
/*!50001 DROP VIEW IF EXISTS `TEAMS_HEAD_COACHES`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `TEAMS_HEAD_COACHES` AS SELECT 
 1 AS `Team Name`,
 1 AS `Head Coach`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `GAMES_PLAYED_AWAY`
--

/*!50001 DROP VIEW IF EXISTS `GAMES_PLAYED_AWAY`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kaaucri`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `GAMES_PLAYED_AWAY` AS select concat('THE ',`T`.`TEAM_NAME`) AS `Team Name`,count(`T`.`TEAM_ID`) AS `Games Away From Homerink` from ((`GAME` join `GAMESTAT` `GS` on((`GS`.`GAME_ID` = `GAME`.`GAME_ID`))) join `TEAM` `T` on((`GS`.`TEAM_ID` = `T`.`TEAM_ID`))) where (`T`.`HOMERINK_ID` <> `GAME`.`RINK_ID`) group by `T`.`TEAM_ID` order by `T`.`TEAM_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PARENTS_ALLOWED_TO_PICK_UP`
--

/*!50001 DROP VIEW IF EXISTS `PARENTS_ALLOWED_TO_PICK_UP`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kaaucri`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PARENTS_ALLOWED_TO_PICK_UP` AS select concat(`PL`.`PLAYER_FNAME`,' ',`PL`.`PLAYER_LNAME`) AS `Player`,concat(`P`.`PARENT_FNAME`,' ',`P`.`PARENT_LNAME`) AS `Parent` from ((`RELATION` `R` join `PARENT` `P` on((`R`.`PARENT_ID` = `P`.`PARENT_ID`))) join `PLAYER` `PL` on((`R`.`PLAYER_ID` = `PL`.`PLAYER_ID`))) where (`R`.`RELATION_PICKUPPERMISSION` = 'Y') order by `PL`.`PLAYER_LNAME`,`P`.`PARENT_FNAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PLAYERS_PARENTS_NUMBERS`
--

/*!50001 DROP VIEW IF EXISTS `PLAYERS_PARENTS_NUMBERS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kaaucri`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PLAYERS_PARENTS_NUMBERS` AS select concat(`P`.`PLAYER_FNAME`,' ',`P`.`PLAYER_LNAME`) AS `Player`,concat(`U`.`PARENT_AREACODE`,' ',`U`.`PARENT_PHONE`) AS `Guardian's Contact` from ((`PLAYER` `P` join `RELATION` `R` on((`P`.`PLAYER_ID` = `R`.`PLAYER_ID`))) join `PARENT` `U` on((`R`.`PARENT_ID` = `U`.`PARENT_ID`))) order by `P`.`PLAYER_LNAME`,`P`.`PLAYER_FNAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PLAYERS_WITH_TWO_PARENTS`
--

/*!50001 DROP VIEW IF EXISTS `PLAYERS_WITH_TWO_PARENTS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kaaucri`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PLAYERS_WITH_TWO_PARENTS` AS select `P`.`PLAYER_ID` AS `PLAYER_ID` from (`PLAYER` `P` join `RELATION` `R` on((`P`.`PLAYER_ID` = `R`.`PLAYER_ID`))) group by `P`.`PLAYER_ID` having (count(`P`.`PLAYER_ID`) = 2) order by `P`.`PLAYER_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `TEAMS_HEAD_COACHES`
--

/*!50001 DROP VIEW IF EXISTS `TEAMS_HEAD_COACHES`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kaaucri`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `TEAMS_HEAD_COACHES` AS select concat('THE ',`TEAM`.`TEAM_NAME`) AS `Team Name`,concat(`COACH`.`COACH_FNAME`,' ',`COACH`.`COACH_LNAME`) AS `Head Coach` from (`TEAM` join `COACH` on((`TEAM`.`TEAM_ID` = `COACH`.`TEAM_ID`))) where (`TEAM`.`HEADCOACH_ID` = `COACH`.`COACH_ID`) order by `TEAM`.`TEAM_NAME` */;
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

-- Dump completed on 2024-06-05 12:36:57
