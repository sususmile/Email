-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: mailbox
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `addressbook`
--

DROP TABLE IF EXISTS `addressbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addressbook` (
  `sendUser` varchar(30) NOT NULL,
  `reciveUser` varchar(30) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addressbook`
--

LOCK TABLES `addressbook` WRITE;
/*!40000 ALTER TABLE `addressbook` DISABLE KEYS */;
INSERT INTO `addressbook` VALUES ('15877487773@xymail.com','12345678@xymail.com',21),('12345678@xymail.com','15877487773@xymail.com',22);
/*!40000 ALTER TABLE `addressbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delmail`
--

DROP TABLE IF EXISTS `delmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sendUser` varchar(30) NOT NULL,
  `reciveUser` varchar(30) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `textContent` text,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delmail`
--

LOCK TABLES `delmail` WRITE;
/*!40000 ALTER TABLE `delmail` DISABLE KEYS */;
INSERT INTO `delmail` VALUES (1,'15877487773@xymail.com','12345678@xymail.com','1','1','2018-12-11 16:54:29'),(18,'12345678@xymail.com','15877487773@xymail.com','辅导辅导辅导费  dfg','电饭锅','2019-01-13 16:21:47');
/*!40000 ALTER TABLE `delmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sendUser` varchar(30) NOT NULL,
  `reciveUser` varchar(30) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `textContent` text,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (2,'15877487773@xymail.com','1357928@xymail.com','2','2','2018-12-11 16:54:54'),(4,'15877487773@xymail.com','15877487773@163.com','ssssss','q','2018-12-11 16:59:33'),(5,'15877487773@xymail.com','12345678@xymail.com','ssssss','eeeeeeeeeeeeeeeeeeeee','2018-12-11 17:03:09'),(6,'15877487773@xymail.com','1357928@xymail.com','wwwwwwwwwwwwwwe','eeeeeeeeeeeeeeeee','2018-12-11 17:03:18'),(8,'15877487773@xymail.com','12345678@xymail.com','ssssss','ssssssssssssss','2018-12-12 20:52:10'),(9,'15877487773@xymail.com','12345678@xymail.com','1111111111111111111','111111111111111111111111','2018-12-12 20:53:53'),(10,'15877487773@xymail.com','12345678@xymail.com','666666666666666666','xxxxxxxxxxxxxxxxxxx','2018-12-12 20:55:19'),(11,'15877487773@xymail.com','12345678@xymail.com','77777777','ggggggggggg','2018-12-12 20:56:43'),(12,'15877487773@xymail.com','12345678@xymail.com','ssssss','vvvvvvvvvvvvvv','2018-12-12 20:58:11'),(13,'15877487773@xymail.com','1357928@xymail.com','wwwwwwww','bbbbbbbbbbbbbbbbbbbbb','2018-12-12 20:59:12'),(14,'15877487773@xymail.com','12345678@xymail.com','444444444','4222222222222','2018-12-13 12:00:45'),(15,'15877487773@xymail.com','12345678@xymail.com','ww','且','2018-12-18 15:58:42'),(16,'15877487773@xymail.com','12345678@xymail.com','wwwwwwwwwwwwww','诉讼费功夫','2018-12-18 16:08:06'),(17,'15877487773@xymail.com','12345678@xymail.com','ssssss','zzzz直播','2018-12-19 19:23:28');
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_name` varchar(30) NOT NULL,
  `user_pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('12345678@xymail.com','sunshine000'),('1357928@xymail.com','sunshine000'),('15877487773@xymail.com','sunshine000'),('suduoduo@xymail.com','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-11 18:00:30
