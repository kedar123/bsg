-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: messanger
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

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
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES (1,1,NULL,'Inbox','2011-04-08 15:26:53','2011-04-08 15:26:53'),(2,2,NULL,'Inbox','2011-04-08 16:08:35','2011-04-08 16:08:35'),(3,3,NULL,'Inbox','2011-04-08 18:55:41','2011-04-08 18:55:41');
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_copies`
--

DROP TABLE IF EXISTS `message_copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_copies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_copies`
--

LOCK TABLES `message_copies` WRITE;
/*!40000 ALTER TABLE `message_copies` DISABLE KEYS */;
INSERT INTO `message_copies` VALUES (1,1,1,1,NULL,'2011-04-08 16:04:19',NULL),(2,1,2,1,NULL,'2011-04-08 16:07:03',NULL),(3,1,3,1,NULL,'2011-04-08 16:09:11',NULL),(4,2,3,2,NULL,'2011-04-08 16:09:11',NULL),(5,1,4,1,NULL,'2011-04-08 16:10:31',NULL),(6,2,4,2,NULL,'2011-04-08 16:10:31',NULL),(7,1,5,1,NULL,'2011-04-09 11:51:43',NULL),(8,1,6,1,NULL,'2011-04-09 11:52:09',NULL),(9,1,7,1,NULL,'2011-04-09 11:52:27',NULL),(10,1,8,1,NULL,'2011-04-09 11:55:20',NULL),(11,1,9,1,NULL,'2011-04-09 12:08:10',NULL),(12,2,9,2,NULL,'2011-04-09 12:08:10',NULL),(13,1,10,1,NULL,'2011-04-09 15:24:33',1),(14,1,11,1,NULL,'2011-04-09 15:24:29',1),(15,1,12,1,NULL,'2011-04-15 12:32:15',NULL),(16,1,13,1,NULL,'2011-04-15 12:33:16',NULL),(17,1,14,1,NULL,'2011-04-15 12:33:45',NULL),(18,2,14,2,NULL,'2011-04-15 12:33:45',NULL),(19,3,14,3,NULL,'2011-04-15 12:33:45',NULL),(20,1,15,1,NULL,'2011-04-15 12:35:04',NULL),(21,1,16,1,NULL,'2011-04-15 14:19:11',NULL);
/*!40000 ALTER TABLE `message_copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,'sub1','body1','2011-04-08 16:04:19','2011-04-08 16:04:19'),(2,1,'Re: sub1','> body1','2011-04-08 16:07:02','2011-04-08 16:07:02'),(3,2,'new message','new body composing a new mail','2011-04-08 16:09:11','2011-04-08 16:09:11'),(4,1,'sub2`','bodyyyy2','2011-04-08 16:10:31','2011-04-08 16:10:31'),(5,1,'Re: sub2`','> bodyyyy2\r\nreplay','2011-04-09 11:51:43','2011-04-09 11:51:43'),(6,1,'Re: sub2`','> > bodyyyy2\r\n> replay\r\nkjljl','2011-04-09 11:52:09','2011-04-09 11:52:09'),(7,1,'Re: sub2`','> > > bodyyyy2\r\n> > replay\r\n> kjljl\r\njkljljl','2011-04-09 11:52:27','2011-04-09 11:52:27'),(8,1,'Re: sub2`','> > > > bodyyyy2\r\n> > > replay\r\n> > kjljl\r\n> jkljljl\r\noioipoip','2011-04-09 11:55:20','2011-04-09 11:55:20'),(9,1,'Re: new message','> new body composing a new mail\r\nthis is my replay','2011-04-09 12:08:10','2011-04-09 12:08:10'),(10,1,'Re: new message','> > new body composing a new mail\r\n> this is my replay\r\ndfgdg','2011-04-09 12:20:50','2011-04-09 12:20:50'),(11,1,'Re: new message','> > > new body composing a new mail\r\n> > this is my replay\r\n> dfgdg','2011-04-09 12:55:06','2011-04-09 12:55:06'),(12,1,'sdfsf','sdfsdf','2011-04-15 12:32:15','2011-04-15 12:32:15'),(13,1,'this is just for testq','this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents','2011-04-15 12:33:16','2011-04-15 12:33:16'),(14,1,'this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents','this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents','2011-04-15 12:33:45','2011-04-15 12:33:45'),(15,1,'Re: this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents','> this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents\r\n\r\nand this is my reply','2011-04-15 12:35:04','2011-04-15 12:35:04'),(16,1,'Re: this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents','> > this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents this is my test and checking the second line also and this is new for all the world ok thanks to all the seniors and there assistents\r\n> \r\n> and this is my reply','2011-04-15 14:19:11','2011-04-15 14:19:11');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_info`
--

DROP TABLE IF EXISTS `schema_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_info` (
  `version` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_info`
--

LOCK TABLES `schema_info` WRITE;
/*!40000 ALTER TABLE `schema_info` DISABLE KEYS */;
INSERT INTO `schema_info` VALUES (5);
/*!40000 ALTER TABLE `schema_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `crypted_password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kedar','kedar.pathak@pragtech.co.in','447467db45d62e7b87f3fc02bedbaf964d8c894b','4e9705ef179e18afee8e0ac5ce45866bfd004a09','2011-04-08 15:26:53','2011-04-08 18:55:25',NULL,NULL),(2,'suresh','suresh@gmaill.com','5412a8164dbdc48e92bdf1281e5f86cc1e93937a','9d68696f87d07df347f208fed87ef44fcf62a95c','2011-04-08 16:08:35','2011-04-08 16:08:35',NULL,NULL),(3,'anand','anandcontact@test.com','a0a695dc9d638483586f439e9015cad7b530614d','6610e2dcb6c547534fe26c3058188e0b76f56b43','2011-04-08 18:55:41','2011-04-08 19:50:43',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-05-20 17:24:18
