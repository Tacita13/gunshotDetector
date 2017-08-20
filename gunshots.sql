-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: gunshots
-- ------------------------------------------------------
-- Server version	5.5.55-0+deb8u1

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
-- Table structure for table `coordinates`
--

DROP TABLE IF EXISTS `coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinates` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` decimal(8,6) DEFAULT NULL,
  `latitude` decimal(8,6) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinates`
--

LOCK TABLES `coordinates` WRITE;
/*!40000 ALTER TABLE `coordinates` DISABLE KEYS */;
INSERT INTO `coordinates` VALUES (1,18.395391,-66.152751);
/*!40000 ALTER TABLE `coordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_coordinates`
--

DROP TABLE IF EXISTS `device_coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_coordinates` (
  `did` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`,`did`),
  KEY `did` (`did`),
  CONSTRAINT `device_coordinates_ibfk_1` FOREIGN KEY (`did`) REFERENCES `devices` (`did`),
  CONSTRAINT `device_coordinates_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `coordinates` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_coordinates`
--

LOCK TABLES `device_coordinates` WRITE;
/*!40000 ALTER TABLE `device_coordinates` DISABLE KEYS */;
INSERT INTO `device_coordinates` VALUES (1,1);
/*!40000 ALTER TABLE `device_coordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `serial` tinytext,
  `address` tinytext,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'0000000002b8e9ff','Complejo Onofre Carballeira Esq. PR-2 con Int. PR-5, Bayamon, 00959');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_firearms`
--

DROP TABLE IF EXISTS `event_firearms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_firearms` (
  `eid` int(11) NOT NULL DEFAULT '0',
  `fid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`,`fid`),
  KEY `fid` (`fid`),
  CONSTRAINT `event_firearms_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `events` (`eid`),
  CONSTRAINT `event_firearms_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `firearms` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_firearms`
--

LOCK TABLES `event_firearms` WRITE;
/*!40000 ALTER TABLE `event_firearms` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_firearms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `soundlevel` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'2017-08-19 17:37:09',130.00),(2,'2017-08-19 17:44:56',130.00),(3,'2017-08-19 17:45:04',130.00),(4,'2017-08-19 17:45:04',130.00),(5,'2017-08-19 17:45:05',130.00),(6,'2017-08-19 17:45:05',130.00),(7,'2017-08-19 17:45:05',130.00),(8,'2017-08-19 17:45:05',130.00),(9,'2017-08-19 17:45:06',130.00),(10,'2017-08-19 17:45:06',130.00),(11,'2017-08-19 17:45:06',130.00),(12,'2017-08-19 17:45:07',130.00),(13,'2017-08-19 17:45:20',130.00),(14,'2017-08-19 17:45:20',130.00),(15,'2017-08-19 17:45:20',130.00),(16,'2017-08-20 01:33:41',130.00),(17,'2017-08-20 15:17:24',130.00),(18,'2017-08-20 15:48:37',130.00),(19,'2017-08-20 15:52:36',130.00),(20,'2017-08-20 15:54:53',130.00),(21,'2017-08-20 15:55:32',130.00),(22,'2017-08-20 16:00:10',130.00),(23,'2017-08-20 16:00:10',130.00),(24,'2017-08-20 16:00:11',130.00);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_coordinates`
--

DROP TABLE IF EXISTS `events_coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_coordinates` (
  `eid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`,`cid`),
  KEY `cid` (`cid`),
  CONSTRAINT `events_coordinates_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `events` (`eid`),
  CONSTRAINT `events_coordinates_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `coordinates` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_coordinates`
--

LOCK TABLES `events_coordinates` WRITE;
/*!40000 ALTER TABLE `events_coordinates` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_coordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_device`
--

DROP TABLE IF EXISTS `events_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_device` (
  `eid` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`,`did`),
  KEY `did` (`did`),
  CONSTRAINT `events_device_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `events` (`eid`),
  CONSTRAINT `events_device_ibfk_2` FOREIGN KEY (`did`) REFERENCES `devices` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_device`
--

LOCK TABLES `events_device` WRITE;
/*!40000 ALTER TABLE `events_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firearms`
--

DROP TABLE IF EXISTS `firearms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firearms` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `caliber` decimal(5,2) DEFAULT NULL,
  `soundlevel` decimal(5,2) DEFAULT NULL,
  `barrelsize` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firearms`
--

LOCK TABLES `firearms` WRITE;
/*!40000 ALTER TABLE `firearms` DISABLE KEYS */;
INSERT INTO `firearms` VALUES (1,'rifle',0.22,130.00,NULL);
/*!40000 ALTER TABLE `firearms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-20 12:55:47
