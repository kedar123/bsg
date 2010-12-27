-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: graphica_gallery
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.3

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
-- Table structure for table `acts_as_xapian_jobs`
--

DROP TABLE IF EXISTS `acts_as_xapian_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acts_as_xapian_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `model_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_acts_as_xapian_jobs_on_model_and_model_id` (`model`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acts_as_xapian_jobs`
--

LOCK TABLES `acts_as_xapian_jobs` WRITE;
/*!40000 ALTER TABLE `acts_as_xapian_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `acts_as_xapian_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_files`
--

DROP TABLE IF EXISTS `article_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `articlefile_file_name` varchar(100) DEFAULT NULL,
  `articlefile_content_type` varchar(20) DEFAULT NULL,
  `articlefile_file_size` int(11) DEFAULT NULL,
  `articlefile_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_article_files_on_article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_files`
--

LOCK TABLES `article_files` WRITE;
/*!40000 ALTER TABLE `article_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` varchar(15) DEFAULT NULL,
  `body` text,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`),
  KEY `index_articles_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artworks`
--

DROP TABLE IF EXISTS `artworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `edition_name` varchar(255) DEFAULT NULL,
  `edition_number` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `is_purchasable` tinyint(1) DEFAULT NULL,
  `image_file_name` varchar(100) DEFAULT NULL,
  `image_content_type` varchar(20) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `published` int(11) DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_artworks_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks`
--

LOCK TABLES `artworks` WRITE;
/*!40000 ALTER TABLE `artworks` DISABLE KEYS */;
INSERT INTO `artworks` VALUES (1,3,'Eum exercitationem ut non non sit aperiam est.','Iusto voluptatum et quo ut nemo qui eos omnis veniam impedit atque eum quisquam quis.','asperiores',20,40,NULL,'est',2,150,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(2,3,'Repellendus cumque consequatur corporis temporibus.','Consectetur eius placeat omnis maiores quibusdam dolorum aut nemo quisquam quis ipsum veritatis sed reprehenderit nesciunt fugit eveniet.','sint',30,20,20,'ipsa',3,200,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(3,3,'Sint molestiae occaecati numquam ipsam sed error rerum.','Omnis accusantium et nam et vitae voluptatem iste quibusdam porro ea voluptatem repudiandae est et.','ratione',20,20,NULL,'sunt',3,550,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(4,3,'Molestiae minima qui ipsam sed.','Non at beatae distinctio maxime voluptas architecto molestiae reiciendis dicta est et quos non repudiandae.','dolor',40,20,30,'quis',2,850,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(5,3,'Perferendis dignissimos qui qui consectetur quas nulla consequuntur molestias omnis.','Est rerum aut similique aut itaque eos illo aut sed esse a omnis eligendi voluptas quam non ad.','vel',40,40,NULL,'excepturi',50,200,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(6,3,'Est doloremque voluptas voluptatem mollitia velit reprehenderit ex.','Qui delectus reprehenderit earum temporibus mollitia enim veritatis aut molestias officiis iste qui fugit et ut.','sequi',20,30,40,'rem',10,150,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(7,3,'Eos minus vitae voluptatum fugit voluptas ut sit atque nostrum.','Culpa quos aut suscipit sit sit voluptate officiis in esse provident cumque non cum neque consectetur alias a enim consequatur.','voluptatem',30,20,30,'possimus',3,1100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(8,3,'Nulla itaque autem illo iste fugit.','Modi repudiandae tempora rerum facilis commodi saepe numquam enim quas quis iusto qui consequatur sequi quisquam dolor.','dolor',30,20,NULL,'dolorem',10,600,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(9,3,'Ipsa aliquid ea dolorum aspernatur.','Et laborum atque nihil dolorum explicabo in tempora placeat nulla omnis maxime officiis distinctio eaque iusto soluta consectetur quis.','ipsa',40,30,NULL,'officiis',3,200,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(10,3,'Perspiciatis vel odio tempore eaque beatae impedit id et facere.','Quos cum et placeat sint distinctio corrupti doloremque ab cumque pariatur officiis eligendi atque et.','aspernatur',20,30,NULL,'excepturi',10,350,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(11,4,'Veniam quas eos repellendus culpa et.','Et quas beatae architecto ex ea officiis voluptatem commodi est quisquam et rerum dolorum praesentium eos.','ipsam',40,20,20,'non',2,350,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(12,4,'Consequatur aut molestiae dolor eum quo qui ratione saepe.','Reprehenderit quod fuga unde facilis nemo dicta repellendus doloribus qui temporibus harum consequatur eligendi sunt.','culpa',30,40,40,'eum',3,1100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(13,4,'Mollitia aperiam earum reiciendis cumque iusto.','Necessitatibus voluptas et ut et voluptate perspiciatis quia est numquam esse itaque enim aspernatur non rerum quaerat.','rem',40,30,20,'alias',3,250,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(14,4,'Accusantium ipsa omnis ullam provident voluptas voluptatibus amet.','Fugit tempore corporis at asperiores qui aliquam mollitia aut totam laudantium suscipit consequatur in delectus aut assumenda odit non temporibus.','officia',40,20,20,'saepe',3,200,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(15,4,'Et et qui dolorum dignissimos et labore veniam consequatur soluta.','Qui ad quisquam iusto alias minus aut eos sint ullam libero delectus recusandae eaque laudantium nisi sapiente nulla.','dolorem',30,30,NULL,'eveniet',3,250,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(16,4,'Aut provident minima et ut ullam ut rerum impedit.','Aut nihil eum ut et occaecati est et ut inventore reiciendis natus voluptates et quisquam eos necessitatibus recusandae magnam.','est',40,30,NULL,'dolorem',3,850,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(17,4,'Ut sed facere ex quia officiis accusantium occaecati animi.','Repellat quia est harum odit quasi ducimus dolore dolores distinctio esse non ut exercitationem nostrum quis fugiat excepturi placeat blanditiis.','eius',40,20,20,'quia',2,850,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(18,4,'Quod voluptatem dolorem vitae in rerum neque et temporibus.','Veritatis et soluta sed eum ratione a vero recusandae delectus dolorum quia provident incidunt et et nobis possimus consequatur.','ut',30,20,NULL,'dolor',1,100,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(19,5,'Nihil dolorem accusamus odit qui eum earum excepturi.','Quaerat qui quisquam eligendi rerum quae et ipsam et necessitatibus voluptatibus est sapiente et sit.','tempore',40,40,NULL,'ad',2,200,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:48'),(20,5,'Fugiat voluptatum dolore qui animi ullam.','Mollitia nihil occaecati aliquid repellat ea consequatur corrupti porro iusto et quas aut quia placeat assumenda dolores suscipit ut.','nihil',40,30,40,'ea',2,400,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(21,5,'Et numquam aut sed quod deserunt tempore omnis.','Reiciendis in quia enim et distinctio et vel minus ut amet et dolorum ut nulla.','consequatur',30,20,NULL,'quis',1,550,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(22,5,'Fugit quibusdam nesciunt alias voluptatem velit omnis.','Sit nulla omnis quidem non sunt nisi nesciunt minima exercitationem perferendis ut illum quam quia ad consequatur ducimus voluptas.','dolor',40,40,20,'ducimus',10,400,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(23,5,'Est consectetur quo temporibus quam molestiae similique ducimus modi sed.','Eum enim sunt qui asperiores aut et aliquam consequatur non optio autem placeat pariatur maxime qui.','quae',20,40,30,'cupiditate',1,1000,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(24,5,'Excepturi et odio aliquid quaerat doloremque numquam ea similique doloribus.','Exercitationem doloremque deleniti recusandae temporibus quo odio non reiciendis ullam quod magni maiores minima ipsum sed.','aspernatur',30,40,NULL,'eligendi',3,550,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(25,5,'Distinctio consequatur magni voluptatibus rerum corrupti sequi eos aut dignissimos.','Hic nobis exercitationem officiis doloribus explicabo dolores optio error et neque harum a ratione labore ullam placeat ut aut dicta.','voluptatem',20,40,NULL,'ut',50,150,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(26,5,'Eligendi vel nulla et optio culpa ut.','Architecto non expedita adipisci perferendis dolor vel nihil vero blanditiis recusandae eius voluptas delectus numquam impedit.','quia',20,30,20,'deserunt',50,250,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(27,5,'Nobis mollitia eveniet ratione dolorem unde sint.','Accusamus eaque nostrum quae distinctio repellat ducimus consectetur modi corrupti rerum voluptate ad ipsa placeat.','assumenda',20,20,30,'laborum',3,350,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(28,6,'Amet rerum laborum dolore nobis voluptatum minus.','Perspiciatis magni et enim commodi sint harum illo velit eum optio sit quis inventore blanditiis est et.','aliquid',20,40,NULL,'voluptatem',2,600,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(29,6,'Ratione laudantium minima quas harum.','Sit quia ipsa sequi necessitatibus est laboriosam aspernatur accusantium quod amet perferendis in qui voluptate nobis dolorum nostrum qui est.','error',20,20,20,'ea',2,100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(30,6,'Officia labore error sed veritatis dignissimos voluptatem itaque enim reprehenderit.','Non vitae labore voluptatem aut ipsum est sed natus ullam voluptatum velit quisquam nisi ea veritatis sed voluptatem eum.','commodi',40,40,20,'aperiam',50,850,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(31,6,'Voluptas dolores asperiores saepe molestias iure sed rerum ab.','Explicabo illo sed sed maxime ullam cumque voluptas numquam quia ea dolorem dolorum autem nulla ut aut.','eveniet',20,20,20,'est',1,100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(32,6,'Qui illo nihil quia exercitationem voluptatem ratione officiis nesciunt est.','Aliquam dignissimos sapiente consequatur iste sit pariatur voluptatem ut assumenda inventore deleniti velit aut voluptas nostrum.','id',40,20,20,'qui',1,400,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(33,7,'Necessitatibus occaecati sed in sunt officiis.','Occaecati temporibus blanditiis voluptas cumque et voluptatum vel vero ad facere repellendus aliquid a molestiae cupiditate architecto dolor impedit dicta.','perferendis',20,40,NULL,'iste',10,550,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(34,7,'Tenetur totam quo cum explicabo ipsam qui dolor.','Sapiente velit aliquam corporis vero animi et inventore distinctio numquam quia voluptatem at provident non adipisci ut qui blanditiis.','id',40,40,40,'facilis',10,850,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(35,7,'Enim pariatur provident ullam architecto cupiditate voluptatem et.','Minima qui omnis saepe necessitatibus ut qui est pariatur adipisci dicta sunt maxime officia velit eum enim occaecati quod.','omnis',40,30,NULL,'numquam',1,1000,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(36,7,'Nam itaque omnis non possimus dolore quasi.','Et eius ipsa nobis nisi qui nemo et temporibus molestiae rerum et velit veritatis libero ab recusandae.','sit',40,20,NULL,'recusandae',1,350,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(37,7,'Cumque ipsa omnis suscipit error impedit facere a voluptates.','Pariatur consequatur maiores impedit consectetur commodi occaecati et unde ea mollitia doloribus voluptates aperiam officiis in minus quia saepe possimus.','aut',20,20,40,'sunt',2,850,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(38,7,'Qui dicta vero aut iste voluptatem neque rem.','Aspernatur placeat molestias et voluptatem eos dolor corporis et qui ipsa omnis ut facere quo aperiam tempore culpa quasi id.','quo',30,30,NULL,'voluptate',1,550,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:49'),(39,8,'Beatae assumenda ut tempore enim aut voluptas vitae.','Rerum harum explicabo et asperiores dolorem nostrum libero dolore consequatur maiores minima non non facere non voluptas autem voluptate.','magnam',40,30,NULL,'unde',1,600,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(40,8,'Sed harum voluptatem distinctio esse illo alias impedit.','Amet nulla dicta aut quisquam quasi minus doloremque enim ullam non est aperiam voluptatem est.','vitae',40,30,40,'quidem',2,150,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(41,8,'Qui iste sed voluptas nemo accusamus.','Eum similique provident corrupti inventore non magnam sint doloremque eligendi molestiae id enim et ab consectetur totam modi cum.','quos',30,20,NULL,'excepturi',50,550,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(42,8,'Aspernatur perspiciatis sed doloremque aliquam repellendus.','Molestias nobis tempora officia eos facere ea tenetur aut illo magnam doloremque sequi aut eum.','qui',40,40,NULL,'perspiciatis',50,1000,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(43,8,'Cupiditate modi nemo est exercitationem officiis.','Cum eum ut rerum et corrupti aspernatur tempora provident consequatur distinctio beatae ratione doloribus ipsum est qui dolorum.','delectus',20,40,40,'quis',50,600,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(44,8,'Est esse modi recusandae dignissimos alias architecto id non.','Officiis quas mollitia odit et placeat et nisi aut qui ipsum ipsa consequuntur totam labore doloremque dicta.','porro',40,30,NULL,'dicta',10,200,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(45,8,'Doloribus impedit quod officiis id occaecati reprehenderit voluptas accusamus perferendis.','Aut ipsa id qui et quis corrupti quia delectus voluptates quia fugiat labore voluptas qui dignissimos totam tempora rem quos.','ipsum',30,20,30,'est',1,550,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(46,9,'Ad quibusdam libero ex dicta dolorem rem omnis accusamus.','Qui alias distinctio necessitatibus ipsum iusto in beatae accusantium veniam voluptatem sit omnis sed maxime accusamus.','est',40,30,NULL,'quisquam',2,150,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(47,9,'Possimus quia laudantium et ut alias sint exercitationem.','Qui hic et et maiores nemo labore corporis odio quia minima quis dolorem atque cum voluptatem aliquid est quos quis.','et',30,20,NULL,'error',50,400,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(48,9,'Nostrum numquam repellat ea quia quis vitae saepe recusandae et.','Excepturi ipsa aut optio aliquid porro esse enim nihil et unde ut assumenda fugiat harum quia.','iste',30,20,NULL,'omnis',3,250,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(49,9,'Dolor asperiores iusto velit praesentium.','Et veritatis commodi voluptas hic cupiditate repudiandae est sapiente sequi quis vel qui et nulla voluptas nihil sunt.','id',40,20,NULL,'quo',3,850,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(50,9,'Blanditiis quo porro sunt nulla.','Ea consequatur tenetur optio sapiente ut maxime aut quisquam et itaque placeat aut modi laudantium eaque nulla et.','et',30,20,NULL,'sed',10,150,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(51,9,'Dolores amet consequuntur facilis debitis aspernatur dolore.','Molestiae molestiae soluta autem dicta delectus maxime aut aut voluptatem repudiandae ullam adipisci nihil est.','consequatur',20,30,20,'rerum',10,350,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(52,9,'Modi hic eum ipsam nihil in voluptate et.','Ut molestias rerum omnis et nostrum delectus facere dolor ut quas et cum qui qui quis maxime.','et',40,20,NULL,'voluptatem',50,100,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(53,9,'Ratione exercitationem iusto dolor et qui omnis molestias.','Quidem illo et fuga dolores soluta mollitia nam ab itaque veritatis nulla reiciendis ut officia eius eos.','officia',30,30,40,'enim',3,400,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(54,10,'Velit hic distinctio vero nisi enim quasi.','Fugiat dolor sit ipsam blanditiis commodi minima omnis molestiae odio pariatur saepe adipisci vel dolorem ut doloremque eius velit qui.','eos',40,20,NULL,'expedita',2,350,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(55,10,'Nesciunt omnis omnis sapiente quos aut sint vel aspernatur.','Dolorum possimus doloribus a corrupti qui similique omnis sed odio dignissimos aut nulla voluptatem harum labore aut ut quibusdam ut.','iusto',20,30,NULL,'ea',2,350,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(56,10,'Odit reiciendis at velit qui ut facere et autem nemo.','Ea qui aut cum voluptatem nisi voluptatem ut minus in odio velit harum iure ut facere voluptatem dolores.','ratione',40,30,30,'voluptatibus',1,200,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(57,10,'Minima animi illum aliquam sint.','Pariatur nobis molestiae esse non quos et commodi velit optio assumenda architecto consequuntur nihil et dolorum ipsum.','veritatis',30,40,40,'iure',2,400,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(58,10,'Eligendi sapiente alias nisi culpa.','Consectetur nisi ut quod omnis error quia omnis molestias laudantium enim iusto doloremque ut voluptate voluptatum consequuntur aut vitae.','esse',40,30,NULL,'quisquam',1,1000,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(59,11,'Iure consequuntur vel corrupti iste magnam.','Voluptatum non aperiam veniam in dolorem corporis maxime non eaque accusantium occaecati est deserunt qui sit ipsa.','iure',20,30,NULL,'est',1,350,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(60,11,'Aliquid sunt totam sequi voluptatem tempora sed.','Tenetur qui et facere et vel in rerum sed ullam quos odit expedita iste quaerat dolorem et.','molestias',30,40,40,'ex',1,550,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(61,11,'Sit delectus expedita ut laboriosam non dolorem ab.','Aut adipisci est reiciendis omnis porro assumenda excepturi nemo officiis dolorem consequuntur ipsum modi sint placeat sit non deserunt fuga.','voluptas',20,30,NULL,'quidem',1,600,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(62,11,'Dolores itaque aut illo qui maxime aspernatur.','Incidunt commodi sapiente quisquam mollitia eos ab nesciunt cumque aperiam tenetur accusamus nihil saepe fugit et illo.','corrupti',20,30,20,'nam',3,1100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(63,11,'Officiis ullam quisquam aperiam minus.','Aut qui minima provident expedita et ipsam magni quod possimus nisi fugit est a dignissimos et laborum consequuntur architecto voluptatem.','fugiat',40,20,40,'voluptatem',50,550,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(64,11,'Quos quia ex et aut velit iusto.','Non aspernatur sunt quae voluptas et tenetur et ut quam facere est excepturi eius veritatis.','hic',40,30,NULL,'sit',2,850,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(65,11,'Maiores pariatur earum voluptatum velit repudiandae.','Maxime excepturi reprehenderit odio eos qui repudiandae ex minima eum et nihil veniam animi sint.','amet',30,20,40,'ullam',2,600,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:49'),(66,11,'Animi voluptas tempore rerum nisi atque eligendi.','Qui aut ea illum aliquam repellat non beatae magni praesentium sed culpa dolore in dolorum et consequatur.','quo',40,40,NULL,'incidunt',3,550,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(67,12,'Possimus ut voluptatem nam at quia veniam id.','Aperiam voluptas voluptatem sint eum atque similique eum veritatis hic exercitationem itaque sit enim nam cumque fugit aut adipisci impedit.','sapiente',40,20,NULL,'neque',1,400,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(68,12,'Assumenda ut est deleniti excepturi ipsam.','Cum explicabo suscipit nam maiores porro expedita rerum sit alias omnis dolores est odit sunt dolorem ipsum eligendi.','impedit',20,30,30,'in',2,200,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(69,12,'In qui quo aperiam aut tempore natus mollitia sed omnis.','Quod voluptates error laborum nisi nulla quas dolorum ut molestias voluptate iure qui ut saepe qui.','dolores',40,30,40,'iste',10,1100,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(70,12,'Neque saepe ut dolor non quia.','Accusantium odio dolor est quod sapiente cumque incidunt et nihil qui quam quidem perferendis occaecati expedita placeat.','fugit',40,20,NULL,'ut',10,1100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(71,12,'Aut ad ut ut voluptatem est soluta.','Repellendus assumenda praesentium veritatis architecto rerum asperiores velit recusandae dolore nulla voluptas nobis molestiae rerum perferendis eos quia.','itaque',20,30,NULL,'consequatur',2,150,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(72,12,'Quod aspernatur nulla repudiandae vero omnis et illum.','Voluptatem at iure quos aut error accusantium voluptatum et enim voluptatem distinctio veniam occaecati eius alias dignissimos.','est',20,30,30,'cum',10,850,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(73,12,'Ad voluptates laborum quia aut blanditiis eum voluptatem qui.','Iste nulla ipsum quis praesentium maxime reiciendis et incidunt est inventore a quo ut modi sequi dolorum ipsa quae dolorem.','voluptas',40,40,NULL,'ut',50,250,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(74,12,'Nisi voluptas saepe repellendus libero dolores.','Aliquam omnis quos odio rerum magnam facilis quae temporibus dolor blanditiis minus mollitia hic aspernatur est.','est',20,30,NULL,'ipsa',10,1000,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(75,13,'Est aliquam debitis pariatur quia ullam.','Mollitia quam expedita et et ut aut tempore sed dolorem ut porro quia doloremque rem hic ut.','officia',40,30,NULL,'quis',3,850,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(76,13,'Eum harum ea quia enim.','Voluptatem laudantium delectus maiores quam et qui omnis ducimus asperiores vel veniam laboriosam voluptas laborum quibusdam quisquam neque a eius.','soluta',30,20,30,'soluta',50,1100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(77,13,'Beatae et commodi ratione et sequi adipisci aut ducimus ex.','Deleniti qui possimus expedita quod quia nihil maxime numquam ab ut placeat animi non totam.','et',30,30,20,'est',1,850,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(78,13,'Quasi ut a quis aperiam exercitationem.','Vel necessitatibus rerum deserunt et pariatur non et nesciunt nobis illum ut ipsum ratione omnis animi sed delectus odio.','quia',40,20,40,'sit',10,1100,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(79,13,'Quae minus qui consectetur aut ut.','Sunt illo est beatae alias possimus modi inventore ipsa molestiae quis officia animi recusandae accusantium et.','in',20,30,30,'numquam',2,150,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(80,13,'Atque odio et eos velit qui.','Quae qui est omnis rem quia exercitationem cum ipsam laudantium dolores corporis et aut quaerat quibusdam pariatur non voluptate.','illum',40,40,40,'doloremque',2,400,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(81,13,'Nam aut dolorem voluptates error natus.','Porro dolores at nulla ullam eum sunt nihil temporibus quia qui est est id alias vel.','nesciunt',40,20,NULL,'dolor',2,350,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(82,13,'Consequatur commodi suscipit laboriosam perspiciatis.','Et sapiente sunt quisquam consequatur et possimus ea tempore nesciunt qui nihil aut quod voluptatem recusandae ad beatae.','aliquam',30,20,20,'explicabo',1,150,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(83,13,'Quas eum autem magnam dolore.','Vitae quis consectetur cupiditate repellendus aut sequi totam voluptatem ut accusamus laudantium sunt sit aliquid aut consequatur.','in',40,20,NULL,'inventore',50,100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(84,13,'Cumque voluptatem inventore vel porro consectetur facilis quis.','Qui eius ea aut veniam tenetur perspiciatis reprehenderit et autem repellendus ut mollitia officiis quisquam provident eaque amet consequatur.','mollitia',20,30,NULL,'quam',1,850,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(85,13,'Id fugit odio facilis accusamus sed doloremque.','Earum sint minus molestiae beatae voluptatem quisquam aut doloribus iusto blanditiis in quidem rerum eum error qui laudantium quia.','voluptatum',40,30,40,'enim',1,600,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(86,13,'Repellat alias praesentium nam occaecati et in eius.','Nihil et ipsam modi dolor rerum distinctio nulla adipisci possimus et laudantium non sunt culpa laborum.','et',20,40,NULL,'rem',1,250,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(87,14,'Et quae iusto aut molestias rerum molestiae laborum.','Et est non provident aliquid quasi odio nesciunt et voluptatum molestiae aut sit et cum similique tenetur vel.','praesentium',20,40,20,'perspiciatis',10,100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(88,14,'Eum et eum voluptatibus dolor officiis.','Dolores praesentium voluptas consequatur illum adipisci quae consequuntur nesciunt illo qui animi doloremque nihil placeat molestias.','qui',40,20,30,'totam',3,550,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(89,14,'Nihil ipsam aut explicabo qui facere eaque.','Tempora aperiam magni quibusdam velit ut error officiis qui voluptas repellendus et vel est debitis cupiditate aut.','qui',20,20,30,'odit',50,250,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(90,14,'Odio voluptatem id eos qui eligendi adipisci iure harum voluptatem.','Totam ipsa qui incidunt sunt consequatur rerum blanditiis voluptas voluptatem quod laudantium qui aut saepe et.','aut',30,40,NULL,'ea',10,600,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(91,14,'Distinctio est dolore voluptatem praesentium odio.','At officia repudiandae in id accusamus qui animi asperiores in inventore dolor velit reiciendis et.','labore',30,40,20,'sed',2,1100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(92,14,'Veniam et est esse laudantium sit voluptatem repellat doloremque enim.','Aut consequuntur at aperiam asperiores ducimus libero officiis blanditiis delectus perferendis esse nobis et similique explicabo soluta autem.','inventore',40,20,30,'qui',3,100,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(93,14,'Dolores eaque voluptatem commodi mollitia unde accusantium cum voluptas.','Vel qui velit dolor rerum commodi dolorum sed voluptas atque maiores quam id aut reiciendis quae aliquam adipisci.','dignissimos',40,40,20,'rerum',50,600,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(94,14,'Alias suscipit et nemo voluptas incidunt laborum.','Porro deserunt totam in possimus quam ea sunt eveniet rem et deleniti dolore eos autem tenetur occaecati voluptatum.','vel',20,20,NULL,'incidunt',1,600,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(95,14,'Quo et repellendus voluptatem reiciendis in.','Tenetur accusantium sed occaecati quo labore et illum aliquid at assumenda eveniet quia aliquam aut nihil impedit minus.','culpa',40,30,NULL,'nulla',10,1100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(96,15,'Id quibusdam officiis nesciunt eligendi et fuga laudantium.','Aut molestiae ratione et vel fugit dolorum temporibus blanditiis tenetur dolorem nihil aliquam iste pariatur omnis repellendus ipsa.','quia',30,30,40,'odit',10,1000,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(97,15,'Quis dicta inventore placeat eos neque voluptas.','Explicabo veritatis distinctio tempora praesentium laudantium consequuntur qui enim reprehenderit amet sit voluptatem neque fugiat.','voluptates',40,30,NULL,'provident',50,150,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(98,15,'Magni ut ea error non.','Amet voluptatem possimus vel voluptas dolores temporibus assumenda nemo occaecati eos nihil exercitationem sed iste dolore.','harum',20,30,30,'aut',1,250,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(99,15,'Autem eum quia ipsam molestiae corrupti qui qui quibusdam est.','Distinctio quos voluptatem qui et harum necessitatibus omnis dolorem et placeat dolorum est minus alias sed cum quia magnam.','ut',40,40,NULL,'enim',2,250,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(100,15,'Eum voluptatem ex voluptatem aperiam odit doloremque ut architecto.','Non dignissimos aut ut ea consequatur laboriosam consequatur incidunt quam rem ut veniam pariatur sit earum nam delectus aliquid.','delectus',20,40,20,'fugiat',50,1000,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(101,15,'Laudantium impedit nemo iste sint ad.','Voluptatem molestiae earum rem cumque dicta itaque et ea officia aut consequatur ipsum officiis in blanditiis laudantium repudiandae quia.','animi',20,30,30,'magnam',10,150,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(102,15,'Quo eos delectus repudiandae ducimus.','Fuga consequatur aliquam reiciendis exercitationem ab quia maiores placeat voluptatem dignissimos necessitatibus quia facere maxime qui sed suscipit quis consectetur.','et',40,30,30,'hic',3,150,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(103,15,'Ut aspernatur vitae asperiores sed et.','Odit culpa aliquam qui autem ipsam ut labore molestiae quas amet ut praesentium nihil numquam fugit.','sit',40,40,NULL,'iste',50,350,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(104,15,'Quod doloribus eos odit molestiae reprehenderit sit nisi et rerum.','Aut ut molestiae beatae autem quisquam velit ducimus et sed omnis suscipit sit omnis culpa consectetur dolore nihil at.','temporibus',30,20,40,'aut',10,1100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(105,15,'Dolorum incidunt in ipsa quisquam.','Quaerat dolor mollitia aperiam velit necessitatibus maiores quibusdam dicta laboriosam ipsam non quae cupiditate totam nulla ut.','neque',30,30,20,'quo',50,400,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(106,16,'Consequuntur excepturi natus amet eum at omnis sapiente quaerat dicta.','Officia dignissimos placeat incidunt provident dolorum qui maiores sint quidem fugiat modi ullam cumque in et earum architecto.','deleniti',40,30,20,'maxime',2,100,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(107,16,'Dolorum similique eum suscipit laboriosam ad.','Odit est perferendis tenetur aut voluptatem quam non quos quas ducimus vel cumque enim esse corporis suscipit porro.','iure',20,20,40,'perspiciatis',10,850,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(108,16,'Quis beatae ullam voluptate vero quaerat nulla molestiae officia dicta.','Eius voluptatum cum explicabo similique atque placeat dolorem iure ratione molestiae et vitae ipsum laudantium.','nihil',40,30,20,'facilis',1,400,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(109,16,'Debitis dolore error ea enim eos.','Voluptatem animi suscipit praesentium autem est vitae quo dolor quasi cum nihil aut doloremque vero veniam eveniet quae omnis.','aut',40,20,30,'debitis',3,200,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(110,16,'Voluptates voluptatem qui aut et.','Deleniti nulla reprehenderit laborum ullam dolore repellat et provident est aut quis voluptas nobis ad.','ipsum',40,40,20,'qui',10,1100,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(111,17,'Quia eos tempore quo minus.','Nihil vel quae excepturi et dicta culpa recusandae nulla quibusdam odit beatae eos rerum tempore repellendus voluptates qui voluptas.','doloribus',40,20,40,'assumenda',2,100,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(112,17,'Dolorum eos delectus sunt sunt nobis maiores.','Minima veritatis deleniti tempora alias esse deserunt corrupti facere consequatur ut ut odio exercitationem est voluptatum nesciunt.','corporis',30,20,NULL,'voluptas',10,850,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(113,17,'Cum consectetur quaerat magnam dolores qui excepturi eius.','Animi maxime quo accusamus nam ad non ut facilis nostrum atque esse quia excepturi possimus.','ut',40,30,NULL,'et',2,1100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(114,17,'Est delectus alias accusantium ipsum vero laudantium quasi.','Omnis est doloribus et dolor rerum rem distinctio ut porro totam aspernatur minima aut et ipsum.','minima',40,40,NULL,'aliquid',3,350,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(115,17,'Sunt dolorem est consequuntur laboriosam autem eos.','Tempore placeat recusandae ullam fugit rerum aliquid magni eos blanditiis assumenda autem et eveniet laboriosam minima.','rerum',20,40,20,'soluta',2,600,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(116,17,'Delectus nisi rerum ut et reprehenderit minima rerum.','Laborum aspernatur laudantium ut consequatur nihil cum dolores veniam sint doloremque quia quaerat porro ratione.','libero',40,20,NULL,'nam',1,850,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(117,17,'Quam fugit dolorem assumenda tempora labore quo.','Et quisquam illum repellat ipsam quos iste modi est aut eligendi nobis et consequatur at aut porro amet.','consequuntur',40,40,20,'cumque',50,850,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(118,17,'Autem molestias ex qui maiores aperiam aliquam.','Laborum magni eaque non inventore est illo totam error dolor a et neque ut accusamus voluptate veritatis.','vel',20,40,40,'laborum',10,550,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(119,17,'Suscipit rem non aut beatae quis dicta animi accusamus ea.','Voluptas ab accusamus veritatis ullam aut quis quas distinctio ut voluptatem inventore quia officia soluta delectus.','nulla',40,20,NULL,'ex',10,200,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(120,17,'Est facere eos et aut possimus quos nesciunt ea rerum.','Rem corporis impedit iure libero facere tenetur porro est deleniti omnis debitis sint sunt unde totam molestiae.','nihil',30,30,NULL,'incidunt',3,150,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(121,18,'Quidem consequatur molestias impedit ipsam vero blanditiis.','Distinctio in dolores vero nisi explicabo in molestiae illo ut deserunt aut enim laudantium cum voluptates deleniti.','corporis',30,40,30,'reprehenderit',50,1100,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(122,18,'Quaerat temporibus magni aut hic laboriosam.','Aliquam dolore tempore deleniti vel eius sapiente minus accusantium qui omnis a nulla aut et.','quibusdam',40,20,NULL,'quo',50,1100,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(123,18,'Quidem sunt omnis facere sed.','Placeat quaerat architecto non delectus velit quia repellat blanditiis voluptas et non magni at nobis voluptatem.','cum',40,30,NULL,'est',2,1000,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(124,18,'Porro quia et voluptas impedit.','Cum repellat itaque in ipsum error tempora beatae veniam non voluptatum vero dolorum aut et recusandae.','aut',30,30,NULL,'inventore',2,150,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(125,18,'Eveniet rerum fugit ipsa inventore.','Saepe ipsam et totam voluptatem veniam at dolorum consequatur rerum voluptas eos recusandae odit alias voluptas laboriosam.','vel',30,40,NULL,'voluptatum',1,1000,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(126,18,'Et dolores dignissimos voluptate dolor sit omnis.','Consequatur nobis explicabo ipsa voluptatum fuga autem aut id soluta consectetur id asperiores modi illo optio dicta.','vitae',40,40,20,'sunt',50,1100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(127,18,'At autem fugiat ad a blanditiis non aliquam sunt delectus.','Magni provident vel est ut ratione officiis earum omnis ipsum sunt ab iusto non reprehenderit mollitia est quod commodi enim.','dolorem',40,20,30,'autem',50,850,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(128,18,'Eos maiores est qui voluptas animi.','Nulla in quia et eaque expedita commodi excepturi dolores iusto officiis qui aut optio molestias.','et',30,30,NULL,'laborum',3,250,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(129,18,'At voluptatum et sit repellat enim quis qui officia.','Quae error modi inventore suscipit et ea sapiente quisquam quia ut odio rerum alias nihil et adipisci nobis.','minima',20,20,NULL,'modi',10,100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(130,18,'Enim ut laboriosam ut mollitia voluptatum.','Minima asperiores iure sunt ducimus eveniet harum atque consequatur optio magni et placeat dolorum impedit vel beatae.','dignissimos',20,40,20,'sed',10,1100,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:50'),(131,18,'Eaque illum assumenda omnis ut recusandae praesentium architecto.','Ipsum aut incidunt et perspiciatis est tempora non dolore voluptates dolores rem vel autem in quidem et provident rerum.','qui',20,30,NULL,'est',3,1100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(132,18,'Deleniti in iste eius nisi autem nihil ut et sint.','Fugiat qui sunt dolores omnis numquam sequi non est dignissimos consectetur a id quasi debitis quibusdam vero tempora.','consequuntur',20,30,30,'aspernatur',2,400,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(133,19,'Magni ut praesentium dolores dolor deserunt.','Et magnam debitis dolorum qui sit nulla non quis minus quis dolores vitae voluptatem veniam eos sequi.','praesentium',40,30,NULL,'repellendus',10,850,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(134,19,'Ex ut debitis suscipit voluptates et magni animi quia.','Maxime odit in nostrum aperiam quam minus doloribus id vel sint optio soluta laborum distinctio hic aut consequuntur est et.','sit',30,20,NULL,'voluptatem',2,600,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(135,19,'Voluptatibus laboriosam quia commodi natus quia asperiores hic et.','Mollitia expedita at molestiae facilis quas consequatur sed vitae omnis modi ipsa laboriosam distinctio eius voluptatem non reiciendis.','enim',30,30,20,'fuga',1,600,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(136,19,'Quia fuga aut perferendis dolor cumque inventore.','A quaerat repudiandae accusamus eos amet itaque aut nostrum atque neque necessitatibus qui illum qui voluptatibus sit.','magnam',30,20,30,'voluptatem',1,100,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(137,19,'Doloremque deserunt numquam quisquam odit voluptas ut veritatis.','Nostrum eos sed iusto esse nihil magni ut eligendi sed minus et laborum est sunt doloribus numquam.','quisquam',20,20,30,'esse',10,1000,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(138,19,'Qui id quam dicta at iste nesciunt.','Neque saepe veniam est tempore aperiam maxime exercitationem odio ut ut aut dicta quos qui.','sed',20,30,40,'et',10,550,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(139,19,'Dolor ad laboriosam placeat est et facilis.','Quidem ea officiis soluta quis qui incidunt eveniet aut aut voluptatem veniam natus doloribus iure quo quas.','explicabo',40,30,20,'officia',2,250,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(140,19,'Vitae dolor saepe perferendis natus reprehenderit deserunt doloremque aspernatur.','Qui rerum laborum harum ut libero sed quo et quae sunt nulla doloremque laudantium est soluta.','delectus',30,40,40,'qui',2,150,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(141,20,'In similique error nisi suscipit quam.','Corrupti sunt explicabo asperiores qui dolor esse voluptate omnis facere sit dolorem nesciunt nulla neque molestiae accusantium et assumenda reprehenderit.','quo',40,40,40,'quo',2,250,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(142,20,'Voluptas est corrupti rerum sequi.','Laudantium ut sed autem soluta in inventore aut quasi sed consequatur voluptatem aut commodi tenetur.','ut',40,40,NULL,'ipsa',3,550,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(143,20,'Consequatur ex consectetur nemo tempora id ut delectus non.','Harum ullam ipsa nostrum culpa eum aut iure explicabo maxime rerum non perferendis in dolorum.','facilis',30,20,20,'recusandae',2,1100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(144,20,'Molestias amet illum aut est harum facilis non.','Enim sapiente nisi laboriosam culpa voluptate perferendis dignissimos ut quas commodi et dolorum natus expedita ad.','sit',30,40,20,'suscipit',10,1100,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(145,20,'Deserunt quisquam similique laborum nisi assumenda quas.','Explicabo libero vel exercitationem nisi quo sequi deleniti officiis nobis eos dolorum autem fugiat deserunt sunt non dicta.','ratione',20,20,40,'tenetur',50,250,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(146,20,'Rem molestiae blanditiis recusandae quo.','Cupiditate nesciunt blanditiis qui earum dolorum eveniet quia vero incidunt ut aspernatur et aut voluptatem sapiente molestiae.','cum',20,30,NULL,'non',50,600,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(147,20,'Tempora eos impedit et est et aliquid fugiat.','Aperiam accusamus quis aut similique non asperiores pariatur dolor iste voluptatem doloremque aliquam deleniti vel molestiae ea error.','voluptatibus',40,30,20,'nulla',3,850,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(148,21,'Illum consequatur voluptas suscipit cumque non blanditiis.','Illum voluptatem laboriosam vel aliquam aut sed et facilis minima dicta hic quas id tempora possimus eos totam.','non',30,20,NULL,'minima',1,1100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(149,21,'Facilis ratione praesentium accusamus ea autem tempore est.','Et ad neque id at optio totam repellat qui est recusandae rerum dolor occaecati perspiciatis voluptatem error facilis consectetur.','reprehenderit',40,30,40,'id',10,200,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(150,21,'Asperiores et delectus aut eum excepturi praesentium sed.','Provident modi ut non nihil hic quasi qui enim molestias itaque temporibus quo officia voluptas ut.','et',40,40,40,'necessitatibus',2,400,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(151,21,'Odio neque asperiores ratione consectetur magni expedita id minus et.','Qui ut dignissimos quod assumenda quia facere ea vel quidem ipsam quos tenetur repudiandae doloremque ut quasi est inventore doloribus.','ut',20,20,20,'est',1,400,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(152,21,'Quidem omnis iure eum cupiditate officia aut quisquam rerum.','Maxime sapiente ea esse omnis atque iure qui doloremque non sit quo quaerat dignissimos accusantium officia.','exercitationem',20,20,30,'est',3,100,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(153,22,'Modi officia esse dolor ut qui.','Saepe et sed vitae sint repudiandae suscipit ipsam optio autem voluptas quaerat reprehenderit aperiam animi.','harum',20,30,NULL,'id',1,150,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(154,22,'Aut saepe voluptates ut fugiat eveniet ut deleniti dolor.','Voluptas ut velit numquam et eum occaecati veritatis nisi eligendi natus rerum a ut placeat.','sit',30,30,NULL,'ut',2,1100,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(155,22,'Repellendus laborum officia provident a quia aut ullam.','Rerum sequi qui aut deserunt ducimus est similique qui consequatur corporis quasi nihil error tenetur excepturi vitae non aperiam magni.','et',40,40,NULL,'perspiciatis',50,200,NULL,'ephemera04.jpeg','image/jpeg',34244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(156,22,'Alias architecto neque facere delectus unde quia provident aut voluptas.','Dolore et in dolor asperiores eligendi ducimus dolorem veritatis qui quod est esse est impedit ad ex rerum beatae.','debitis',40,20,NULL,'non',3,1000,NULL,'invisicsinvite.jpeg','image/jpeg',12825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(157,22,'Ipsam error deserunt harum reiciendis ut consequatur molestiae ad ut.','Reprehenderit quis tenetur rerum ipsa asperiores sed nihil porro dignissimos totam deleniti explicabo voluptatum enim accusantium harum.','iusto',40,20,NULL,'quas',3,600,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(158,22,'Delectus illum fugit voluptatem culpa aut suscipit beatae assumenda.','Repudiandae maxime aspernatur ab sit sequi et labore laborum hic quia temporibus eum enim aut aperiam eligendi provident.','nemo',30,20,NULL,'eos',10,400,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(159,22,'Dolor nemo repellendus aut est quis.','Quia necessitatibus quae culpa quia ipsam est ut repellendus dignissimos ea vel fugit voluptatum nostrum suscipit temporibus.','corporis',30,30,NULL,'amet',10,350,NULL,'dsc0251.jpeg','image/jpeg',9239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51'),(160,22,'Qui quidem enim a mollitia.','Ut voluptatem neque voluptas omnis id consequuntur id repellat laborum assumenda ut quas vel animi hic est.','nihil',30,20,30,'libero',1,1000,NULL,'faithengine.jpeg','image/jpeg',14488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:51');
/*!40000 ALTER TABLE `artworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artworks_competitions`
--

DROP TABLE IF EXISTS `artworks_competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artworks_competitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artwork_id` int(11) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_artworks_competitions_on_competition_id` (`competition_id`),
  KEY `index_artworks_competitions_on_artwork_id` (`artwork_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks_competitions`
--

LOCK TABLES `artworks_competitions` WRITE;
/*!40000 ALTER TABLE `artworks_competitions` DISABLE KEYS */;
INSERT INTO `artworks_competitions` VALUES (1,6,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(2,2,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(3,3,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(4,1,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(5,18,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(6,12,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(7,17,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(8,13,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(9,26,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(10,27,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(11,20,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(12,25,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(13,29,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(14,29,2,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(15,29,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(16,31,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(17,33,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(18,38,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(19,36,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(20,38,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(21,39,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(22,43,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(23,43,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(24,42,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(25,48,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(26,50,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(27,50,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(28,49,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(29,58,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(30,58,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(31,58,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(32,55,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(33,60,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(34,63,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(35,59,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(36,59,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(37,71,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(38,69,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(39,74,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(40,71,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(41,75,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(42,83,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(43,77,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(44,82,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(45,92,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(46,92,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(47,88,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(48,90,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(49,100,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(50,97,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(51,98,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(52,98,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(53,110,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(54,110,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(55,106,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(56,109,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(57,119,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(58,115,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(59,117,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(60,115,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(61,123,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(62,121,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(63,121,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(64,132,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(65,139,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(66,137,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(67,134,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(68,135,2,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(69,143,2,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(70,141,2,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(71,143,1,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(72,142,1,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(73,151,1,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(74,149,1,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(75,148,2,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(76,152,2,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(77,155,1,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(78,154,1,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(79,157,1,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(80,159,1,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48');
/*!40000 ALTER TABLE `artworks_competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artworks_exhibitions`
--

DROP TABLE IF EXISTS `artworks_exhibitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artworks_exhibitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artwork_id` int(11) DEFAULT NULL,
  `exhibition_id` int(11) DEFAULT NULL,
  `exhibitions_users` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_artworks_exhibitions_on_artwork_id` (`artwork_id`),
  KEY `index_artworks_exhibitions_on_exhibition_id` (`exhibition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks_exhibitions`
--

LOCK TABLES `artworks_exhibitions` WRITE;
/*!40000 ALTER TABLE `artworks_exhibitions` DISABLE KEYS */;
INSERT INTO `artworks_exhibitions` VALUES (1,9,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(2,4,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(3,5,3,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(4,2,3,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(5,6,7,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(6,3,7,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(7,3,12,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(8,2,12,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(9,17,8,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(10,17,8,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(11,11,8,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(12,12,8,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(13,16,12,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(14,14,12,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(15,14,6,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(16,12,6,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(17,19,8,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(18,20,8,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(19,23,7,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(20,23,7,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(21,25,9,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(22,26,9,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(23,26,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(24,23,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(25,28,5,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(26,30,5,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(27,30,10,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(28,28,10,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(29,30,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(30,28,1,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(31,29,11,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(32,29,11,NULL,NULL,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(33,35,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(34,38,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(35,36,10,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(36,37,10,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(37,38,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(38,38,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(39,33,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(40,36,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(41,43,10,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(42,40,10,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(43,43,8,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(44,40,8,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(45,41,3,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(46,43,3,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(47,41,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(48,40,2,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(49,51,4,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(50,47,4,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(51,50,4,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(52,48,4,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(53,51,11,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(54,53,11,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(55,46,10,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(56,48,10,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(57,54,9,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(58,57,9,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(59,58,3,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(60,54,3,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(61,55,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(62,54,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(63,57,8,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(64,55,8,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(65,59,10,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(66,66,10,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(67,61,8,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(68,66,8,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(69,59,11,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(70,66,11,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(71,62,6,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(72,62,6,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(73,69,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(74,73,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(75,73,5,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(76,73,5,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(77,67,8,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(78,69,8,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(79,72,4,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(80,72,4,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(81,82,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(82,76,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(83,81,5,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(84,85,5,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(85,79,5,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(86,84,5,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(87,78,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(88,83,1,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(89,92,9,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(90,95,9,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(91,87,7,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(92,94,7,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(93,87,9,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(94,89,9,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(95,87,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(96,92,12,NULL,NULL,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(97,105,7,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(98,103,7,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(99,98,10,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(100,104,10,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(101,104,3,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(102,98,3,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(103,105,11,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(104,102,11,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(105,108,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(106,110,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(107,109,8,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(108,108,8,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(109,109,6,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(110,110,6,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(111,108,5,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(112,107,5,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(113,112,5,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(114,113,5,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(115,117,9,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(116,118,9,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(117,118,7,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(118,116,7,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(119,113,5,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(120,120,5,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(121,126,4,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(122,131,4,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(123,130,9,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(124,128,9,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(125,130,5,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(126,131,5,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(127,131,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(128,122,1,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(129,134,11,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(130,136,11,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(131,138,12,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(132,138,12,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(133,135,3,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(134,140,3,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(135,134,4,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(136,133,4,NULL,NULL,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(137,143,7,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(138,146,7,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(139,142,11,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(140,143,11,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(141,142,8,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(142,143,8,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(143,144,2,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(144,144,2,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(145,152,2,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(146,151,2,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(147,150,5,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(148,149,5,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(149,152,4,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(150,152,4,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(151,152,5,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(152,151,5,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(153,160,8,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(154,154,8,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(155,156,12,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(156,156,12,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(157,158,5,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(158,158,5,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(159,158,11,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(160,154,11,NULL,NULL,'2010-09-30 06:21:48','2010-09-30 06:21:48');
/*!40000 ALTER TABLE `artworks_exhibitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audios`
--

DROP TABLE IF EXISTS `audios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `audio_file_name` varchar(100) DEFAULT NULL,
  `audio_content_type` varchar(20) DEFAULT NULL,
  `audio_file_size` int(11) DEFAULT NULL,
  `audio_updated_at` datetime DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`),
  KEY `index_audios_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audios`
--

LOCK TABLES `audios` WRITE;
/*!40000 ALTER TABLE `audios` DISABLE KEYS */;
/*!40000 ALTER TABLE `audios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditable_id` int(11) DEFAULT NULL,
  `auditable_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `changes` text,
  `version` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auditable_index` (`auditable_id`,`auditable_type`),
  KEY `user_index` (`user_id`,`user_type`),
  KEY `index_audits_on_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `feed_source_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` varchar(15) DEFAULT NULL,
  `link` varchar(1024) DEFAULT NULL,
  `enclosures` varchar(255) DEFAULT NULL,
  `authors` varchar(255) DEFAULT NULL,
  `copyright` varchar(10) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`),
  KEY `index_bookmarks_on_user_id` (`user_id`),
  KEY `index_bookmarks_on_feed_source_id` (`feed_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Newsletter subscribers',NULL,'2010-09-30 06:21:36','2010-09-30 06:21:36'),(2,'Photographer',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,'Painter',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,'Drawer',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_files`
--

DROP TABLE IF EXISTS `cms_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cmsfile_file_name` varchar(100) DEFAULT NULL,
  `cmsfile_content_type` varchar(20) DEFAULT NULL,
  `cmsfile_file_size` int(11) DEFAULT NULL,
  `cmsfile_updated_at` datetime DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`),
  KEY `index_cms_files_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_files`
--

LOCK TABLES `cms_files` WRITE;
/*!40000 ALTER TABLE `cms_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `state` varchar(15) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_user_id` (`user_id`),
  KEY `index_comments_on_commentable_id` (`commentable_id`),
  KEY `index_comments_on_commentable_type` (`commentable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `timing_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `submission_deadline` varchar(255) DEFAULT NULL,
  `prizes_total_amount` int(11) DEFAULT NULL,
  `prizes_detail` text,
  `judge_id` int(11) DEFAULT NULL,
  `commission` varchar(255) DEFAULT NULL,
  `limit_size` varchar(255) DEFAULT NULL,
  `auction_activated` tinyint(1) DEFAULT NULL,
  `message_for_subscribers` text,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `published` int(11) DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `no_of_entry` int(11) DEFAULT NULL,
  `framing` varchar(255) DEFAULT NULL,
  `entry_fees` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL,
  `collection` varchar(255) DEFAULT NULL,
  `insurance` varchar(255) DEFAULT NULL,
  `return_of_artwork` text,
  `exhibition_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_competitions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,2,NULL,'Occaecati voluptates dolore quasi cumque hic facilis iusto.','Illo alias voluptas doloremque iure cumque nihil non corrupti ut facere id et asperiores consequatur vitae nulla numquam.','Competition','2010-10-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'open',2,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:23:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,NULL,'Molestiae animi non quia laborum incidunt ex occaecati ipsum aut.','Suscipit voluptates odit aliquam ipsum et est ut sunt corporis assumenda ex similique commodi esse consequatur quam soluta omnis.','Competition','2010-10-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'open',NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions_subscriptions`
--

DROP TABLE IF EXISTS `competitions_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) DEFAULT NULL,
  `maximum_works_number` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_competitions_subscriptions_on_competition_id` (`competition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions_subscriptions`
--

LOCK TABLES `competitions_subscriptions` WRITE;
/*!40000 ALTER TABLE `competitions_subscriptions` DISABLE KEYS */;
INSERT INTO `competitions_subscriptions` VALUES (1,1,4,'Accusantium cumque sunt et corporis aperiam labore et nam.',50,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(2,1,4,'Nesciunt et ipsa magnam qui consequatur nam.',50,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,1,4,'Deserunt provident voluptas eligendi tenetur est et.',50,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,1,3,'Deleniti laboriosam voluptatum sit et deserunt ex officiis.',70,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,2,4,'Ipsum vel libero ducimus velit molestias et rerum debitis atque.',50,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,2,4,'Cum eos et quas voluptatem consequatur harum non.',50,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,2,4,'Delectus dolores adipisci totam doloribus aut nulla provident quia illo.',50,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,2,3,'Vitae laborum sint sint culpa.',70,'2010-09-30 06:21:43','2010-09-30 06:21:43');
/*!40000 ALTER TABLE `competitions_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions_users`
--

DROP TABLE IF EXISTS `competitions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `competitions_subscription_id` int(11) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `suburb` varchar(255) DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `here_prize` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `total_entry` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `card_name` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `biography` text,
  `return_of_artwork` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `fworktitle` varchar(255) DEFAULT NULL,
  `fworkmedium` varchar(255) DEFAULT NULL,
  `fworksize` varchar(255) DEFAULT NULL,
  `fworkprice` varchar(255) DEFAULT NULL,
  `fworkimage` varchar(255) DEFAULT NULL,
  `sworktitle` varchar(255) DEFAULT NULL,
  `sworkmedium` varchar(255) DEFAULT NULL,
  `sworksize` varchar(255) DEFAULT NULL,
  `sworkprice` varchar(255) DEFAULT NULL,
  `sworkimage` varchar(255) DEFAULT NULL,
  `tworktitle` varchar(255) DEFAULT NULL,
  `tworkmedium` varchar(255) DEFAULT NULL,
  `tworksize` varchar(255) DEFAULT NULL,
  `tworkprice` varchar(255) DEFAULT NULL,
  `tworkimage` varchar(255) DEFAULT NULL,
  `foworktitle` varchar(255) DEFAULT NULL,
  `foworkmedium` varchar(255) DEFAULT NULL,
  `foworksize` varchar(255) DEFAULT NULL,
  `foworkprice` varchar(255) DEFAULT NULL,
  `foworkimage` varchar(255) DEFAULT NULL,
  `fiworktitle` varchar(255) DEFAULT NULL,
  `fiworkmedium` varchar(255) DEFAULT NULL,
  `fiworksize` varchar(255) DEFAULT NULL,
  `fiworkprice` varchar(255) DEFAULT NULL,
  `fiworkimage` varchar(255) DEFAULT NULL,
  `siworktitle` varchar(255) DEFAULT NULL,
  `siworkmedium` varchar(255) DEFAULT NULL,
  `siworksize` varchar(255) DEFAULT NULL,
  `siworkprice` varchar(255) DEFAULT NULL,
  `siworkimage` varchar(255) DEFAULT NULL,
  `seworktitle` varchar(255) DEFAULT NULL,
  `seworkmedium` varchar(255) DEFAULT NULL,
  `seworksize` varchar(255) DEFAULT NULL,
  `seworkprice` varchar(255) DEFAULT NULL,
  `seworkimage` varchar(255) DEFAULT NULL,
  `eworktitle` varchar(255) DEFAULT NULL,
  `eworkmedium` varchar(255) DEFAULT NULL,
  `eworksize` varchar(255) DEFAULT NULL,
  `eworkprice` varchar(255) DEFAULT NULL,
  `eworkimage` varchar(255) DEFAULT NULL,
  `nworktitle` varchar(255) DEFAULT NULL,
  `nworkmedium` varchar(255) DEFAULT NULL,
  `nworksize` varchar(255) DEFAULT NULL,
  `nworkprice` varchar(255) DEFAULT NULL,
  `nworkimage` varchar(255) DEFAULT NULL,
  `teworktitle` varchar(255) DEFAULT NULL,
  `teworkmedium` varchar(255) DEFAULT NULL,
  `teworksize` varchar(255) DEFAULT NULL,
  `teworkprice` varchar(255) DEFAULT NULL,
  `teworkimage` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `bsb_no` varchar(255) DEFAULT NULL,
  `at_end_work` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_competitions_users_on_user_id` (`user_id`),
  KEY `index_competitions_users_on_competition_id` (`competition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions_users`
--

LOCK TABLES `competitions_users` WRITE;
/*!40000 ALTER TABLE `competitions_users` DISABLE KEYS */;
INSERT INTO `competitions_users` VALUES (1,3,6,2,'validated',50,'2010-09-30 06:21:45','2010-09-30 06:21:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,3,5,2,'validated',50,'2010-09-30 06:21:45','2010-09-30 06:21:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,4,2,1,'validated',70,'2010-09-30 06:21:45','2010-09-30 06:21:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,5,2,'validated',70,'2010-09-30 06:21:45','2010-09-30 06:21:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,7,2,'accepted',60,'2010-09-30 06:21:45','2010-09-30 06:21:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,5,4,1,'accepted',70,'2010-09-30 06:21:45','2010-09-30 06:21:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,6,8,2,'accepted',60,'2010-09-30 06:21:45','2010-09-30 06:21:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,6,3,1,'validated',70,'2010-09-30 06:21:45','2010-09-30 06:21:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,7,2,1,'accepted',60,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,7,6,2,'validated',50,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,8,6,2,'validated',80,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,8,1,1,'validated',70,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,9,5,2,'validated',60,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,9,4,1,'accepted',50,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,10,2,1,'accepted',80,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,10,8,2,'validated',60,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,11,3,1,'accepted',50,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,11,8,2,'validated',60,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,12,4,1,'validated',50,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,12,6,2,'accepted',70,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,13,8,2,'validated',70,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,13,6,2,'validated',50,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,14,3,1,'accepted',60,'2010-09-30 06:21:46','2010-09-30 06:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,14,7,2,'accepted',50,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,15,8,2,'validated',70,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,15,1,1,'validated',80,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,16,2,1,'validated',60,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,16,8,2,'validated',80,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,17,3,1,'accepted',50,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,17,4,1,'validated',60,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,18,5,2,'accepted',70,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,18,6,2,'validated',80,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,19,1,1,'validated',80,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,19,7,2,'validated',70,'2010-09-30 06:21:47','2010-09-30 06:21:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,20,8,2,'accepted',70,'2010-09-30 06:21:48','2010-09-30 06:21:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,20,2,1,'validated',60,'2010-09-30 06:21:48','2010-09-30 06:21:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,21,3,1,'validated',80,'2010-09-30 06:21:48','2010-09-30 06:21:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,21,8,2,'validated',50,'2010-09-30 06:21:48','2010-09-30 06:21:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,22,3,1,'validated',60,'2010-09-30 06:21:48','2010-09-30 06:21:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,22,4,1,'validated',50,'2010-09-30 06:21:48','2010-09-30 06:21:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `competitions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_workspaces`
--

DROP TABLE IF EXISTS `contacts_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_workspaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workspace_id` int(11) DEFAULT NULL,
  `contactable_id` int(11) DEFAULT NULL,
  `contactable_type` varchar(50) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `sha1_id` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contacts_workspaces_on_workspace_id` (`workspace_id`),
  KEY `index_contacts_workspaces_on_contactable_id` (`contactable_id`),
  KEY `index_contacts_workspaces_on_contactable_type` (`contactable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_workspaces`
--

LOCK TABLES `contacts_workspaces` WRITE;
/*!40000 ALTER TABLE `contacts_workspaces` DISABLE KEYS */;
INSERT INTO `contacts_workspaces` VALUES (1,2,3,'Profile',NULL,'9deeaa683c2bb016923038d84349444ae41d16a3','2010-09-30 06:21:48','2010-09-30 06:21:48'),(2,2,4,'Profile',NULL,'3de85f9310b664754f36b09f14a0bfc9d59cbe2f','2010-09-30 06:21:48','2010-09-30 06:21:48'),(3,2,5,'Profile',NULL,'d7cf2a8664f9586aedda651a3bf7ab885a3c9b5a','2010-09-30 06:21:48','2010-09-30 06:21:48'),(4,2,6,'Profile',NULL,'b67b19dc7bf08e0e7276e08b4955059956475b6c','2010-09-30 06:21:48','2010-09-30 06:21:48'),(5,2,7,'Profile',NULL,'cf17df0d2930def78e8eab34845f8c3eee349148','2010-09-30 06:21:48','2010-09-30 06:21:48'),(6,2,8,'Profile',NULL,'16b66a52f5a2ce9d36453cf9abc4d923c95a2145','2010-09-30 06:21:48','2010-09-30 06:21:48'),(7,2,9,'Profile',NULL,'0eda178e7c5186b6f7ee734b42ecac1b12c302d6','2010-09-30 06:21:48','2010-09-30 06:21:48'),(8,2,10,'Profile',NULL,'86cf11c121cc8fe066ee7f6c1fb11cfae732b3d3','2010-09-30 06:21:48','2010-09-30 06:21:48'),(9,2,11,'Profile',NULL,'f37c1841c91406ce2f5f6cdfab070dd8a9889253','2010-09-30 06:21:48','2010-09-30 06:21:48'),(10,2,12,'Profile',NULL,'d2694182b306254a924a7ff6c7fe77eeba1ae79f','2010-09-30 06:21:48','2010-09-30 06:21:48'),(11,2,13,'Profile',NULL,'0f9eeeaf9d839dbe48a7c953d6f36122c48ebc65','2010-09-30 06:21:48','2010-09-30 06:21:48'),(12,2,14,'Profile',NULL,'1039fc34b0d94953ff9c407d7b42a14532e27db6','2010-09-30 06:21:48','2010-09-30 06:21:48'),(13,2,15,'Profile',NULL,'9b1f9cddb81650e911543e41cb435d0190746a5d','2010-09-30 06:21:48','2010-09-30 06:21:48'),(14,2,16,'Profile',NULL,'a32f70f16bc888a720058b1c7f14cb1c09a0dd0f','2010-09-30 06:21:48','2010-09-30 06:21:48'),(15,2,17,'Profile',NULL,'909f4665e05609e7e3a63091c41a188e6778ac66','2010-09-30 06:21:48','2010-09-30 06:21:48'),(16,2,18,'Profile',NULL,'95009d6920d50c8b1da45244e53bf24bc9ccd2ab','2010-09-30 06:21:48','2010-09-30 06:21:48'),(17,2,19,'Profile',NULL,'f60bc5272c4a00cf3ff4093e6cc292afdc5be955','2010-09-30 06:21:48','2010-09-30 06:21:48'),(18,2,20,'Profile',NULL,'aa073b7ec0ba8727b74cd0c5412fb0a270c5a59c','2010-09-30 06:21:48','2010-09-30 06:21:48'),(19,2,21,'Profile',NULL,'f5b145b7c7e65746697c86a39f0555fa85ffeed5','2010-09-30 06:21:48','2010-09-30 06:21:48'),(20,2,22,'Profile',NULL,'b9a61b85d0321c501b80e452fc37c37b265a2d27','2010-09-30 06:21:48','2010-09-30 06:21:48'),(21,2,23,'Profile',NULL,'c0da25c53a5e5aef542357b119bcb74dee71604f','2010-09-30 06:23:18','2010-09-30 06:23:18'),(22,2,24,'Profile',NULL,'8b9ef105879f46aa694e3cd81196d5caad0b9a74','2010-09-30 06:23:30','2010-09-30 06:23:30');
/*!40000 ALTER TABLE `contacts_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type_of_card` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `expiring_date` date DEFAULT NULL,
  `verification_value` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_credit_cards_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_people`
--

DROP TABLE IF EXISTS `data_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `workspace_id` int(11) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `type_data` varchar(255) DEFAULT NULL,
  `data` text,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_people`
--

LOCK TABLES `data_people` WRITE;
/*!40000 ALTER TABLE `data_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) DEFAULT '0',
  `attempts` int(11) DEFAULT '0',
  `handler` text,
  `last_error` text,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `bgcolor` varchar(10) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibitions`
--

DROP TABLE IF EXISTS `exhibitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `published` int(11) DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exhibitions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibitions`
--

LOCK TABLES `exhibitions` WRITE;
/*!40000 ALTER TABLE `exhibitions` DISABLE KEYS */;
INSERT INTO `exhibitions` VALUES (1,2,'Eum quo nihil dicta neque veniam qui.','Laudantium amet ipsa iste illum libero qui sit quia facere asperiores repellendus rerum non maiores quasi temporibus ea ut mollitia.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(2,2,'Numquam delectus quisquam voluptatem tempora officiis deleniti dicta et nostrum.','Enim doloremque dignissimos sit sed quisquam quaerat voluptatem id accusamus dolor perferendis quo sequi velit aliquam.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,2,'Dolor amet omnis et eum quibusdam quas itaque odit nulla.','Facilis earum illo odit voluptate neque sapiente natus pariatur aperiam delectus tempora deserunt ea enim quasi labore deleniti eius.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,2,'Numquam laboriosam quo magnam neque rerum harum vitae fugit id.','Dolorem aut tempore laudantium facilis assumenda ut consequatur omnis ipsam consequuntur sed sint quidem suscipit sapiente.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,2,'Et perferendis blanditiis at voluptas et placeat sint ut.','Qui qui omnis a velit nihil et rerum eum dolores blanditiis itaque soluta quo suscipit.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,2,'Beatae consequuntur aliquam eveniet id quidem eos natus aut minus.','Sequi quia rerum harum possimus facilis dolore aut sed voluptatum aut debitis soluta quia et alias sed.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,2,'Provident eaque ratione consequatur aut sed.','Est tempora blanditiis reprehenderit facilis consequuntur non et nulla consequatur ut a voluptatem cupiditate impedit vero et.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,2,'Cumque id autem fugiat tempore sed at.','Aliquid et cupiditate voluptas commodi sed consequatur sunt culpa sunt sit fugiat excepturi beatae et.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(9,2,'Delectus quia accusamus rem libero aut consequuntur unde et.','Illum dicta ex assumenda non unde et recusandae labore quo accusantium expedita iste dolor veniam.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(10,2,'Illum reprehenderit nam velit enim et explicabo autem ut.','Ab sint dolor reiciendis laborum ut nulla tenetur pariatur mollitia consectetur maxime error iusto non omnis alias dicta nihil aliquid.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(11,2,'Sed vitae perferendis quod magnam non eaque dolorem in.','Quidem consectetur est eligendi id totam modi dolor in laborum quibusdam tempore asperiores eum et recusandae.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(12,2,'Non eum minima sed qui quis.','Sit unde et voluptas id repellat rerum occaecati dignissimos dolorem omnis vel adipisci in a quia ratione et qui.',NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43');
/*!40000 ALTER TABLE `exhibitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibitions_users`
--

DROP TABLE IF EXISTS `exhibitions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibitions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `exhibition_id` int(11) DEFAULT NULL,
  `invited_at` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exhibitions_users_on_user_id` (`user_id`),
  KEY `index_exhibitions_users_on_exhibition_id` (`exhibition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibitions_users`
--

LOCK TABLES `exhibitions_users` WRITE;
/*!40000 ALTER TABLE `exhibitions_users` DISABLE KEYS */;
INSERT INTO `exhibitions_users` VALUES (1,3,1,NULL,'published',80,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(2,3,3,NULL,'published',80,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(3,3,7,NULL,'invited',70,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(4,3,12,NULL,'accepted',60,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(5,4,8,NULL,'accepted',70,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(6,4,8,NULL,'published',70,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(7,4,12,NULL,'invited',50,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(8,4,6,NULL,'published',70,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(9,5,8,NULL,'published',70,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(10,5,7,NULL,'published',80,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(11,5,9,NULL,'accepted',50,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(12,5,1,NULL,'validated',80,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(13,6,5,NULL,'published',50,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(14,6,10,NULL,'published',60,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(15,6,1,NULL,'published',70,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(16,6,11,NULL,'published',70,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(17,7,1,NULL,'validated',60,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(18,7,10,NULL,'invited',70,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(19,7,1,NULL,'validated',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(20,7,12,NULL,'accepted',50,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(21,8,10,NULL,'published',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(22,8,8,NULL,'accepted',70,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(23,8,3,NULL,'invited',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(24,8,2,NULL,'published',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(25,9,4,NULL,'invited',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(26,9,4,NULL,'published',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(27,9,11,NULL,'validated',50,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(28,9,10,NULL,'published',70,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(29,10,9,NULL,'published',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(30,10,3,NULL,'invited',50,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(31,10,12,NULL,'invited',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(32,10,8,NULL,'accepted',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(33,11,10,NULL,'published',50,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(34,11,8,NULL,'accepted',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(35,11,11,NULL,'published',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(36,11,6,NULL,'validated',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(37,12,12,NULL,'invited',50,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(38,12,5,NULL,'invited',70,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(39,12,8,NULL,'validated',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(40,12,4,NULL,'published',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(41,13,12,NULL,'accepted',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(42,13,5,NULL,'accepted',50,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(43,13,5,NULL,'published',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(44,13,1,NULL,'validated',70,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(45,14,9,NULL,'validated',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(46,14,7,NULL,'invited',80,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(47,14,9,NULL,'invited',70,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(48,14,12,NULL,'published',60,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(49,15,7,NULL,'published',70,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(50,15,10,NULL,'invited',80,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(51,15,3,NULL,'accepted',60,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(52,15,11,NULL,'invited',50,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(53,16,1,NULL,'validated',60,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(54,16,8,NULL,'published',70,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(55,16,6,NULL,'invited',50,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(56,16,5,NULL,'invited',80,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(57,17,5,NULL,'validated',70,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(58,17,9,NULL,'published',50,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(59,17,7,NULL,'invited',50,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(60,17,5,NULL,'published',80,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(61,18,4,NULL,'validated',80,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(62,18,9,NULL,'accepted',80,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(63,18,5,NULL,'invited',50,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(64,18,1,NULL,'accepted',80,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(65,19,11,NULL,'published',60,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(66,19,12,NULL,'published',60,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(67,19,3,NULL,'validated',50,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(68,19,4,NULL,'invited',50,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(69,20,7,NULL,'accepted',80,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(70,20,11,NULL,'published',70,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(71,20,8,NULL,'accepted',50,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(72,20,2,NULL,'accepted',80,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(73,21,2,NULL,'published',60,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(74,21,5,NULL,'published',60,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(75,21,4,NULL,'invited',70,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(76,21,5,NULL,'invited',70,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(77,22,8,NULL,'invited',80,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(78,22,12,NULL,'accepted',60,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(79,22,5,NULL,'published',60,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(80,22,11,NULL,'published',80,'2010-09-30 06:21:48','2010-09-30 06:21:48');
/*!40000 ALTER TABLE `exhibitions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_items`
--

DROP TABLE IF EXISTS `feed_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_source_id` int(11) DEFAULT NULL,
  `guid` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `authors` varchar(255) DEFAULT NULL,
  `enclosures` varchar(255) DEFAULT NULL,
  `link` varchar(1024) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `copyright` varchar(10) DEFAULT NULL,
  `date_published` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feed_items_on_feed_source_id` (`feed_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_items`
--

LOCK TABLES `feed_items` WRITE;
/*!40000 ALTER TABLE `feed_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_sources`
--

DROP TABLE IF EXISTS `feed_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `encoding` varchar(20) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` varchar(10) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `link` varchar(1024) DEFAULT NULL,
  `authors` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `copyright` varchar(10) DEFAULT NULL,
  `ttl` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `last_updated` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feed_sources_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_sources`
--

LOCK TABLES `feed_sources` WRITE;
/*!40000 ALTER TABLE `feed_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(15) DEFAULT NULL,
  `available_items` varchar(255) DEFAULT NULL,
  `logo_file_name` varchar(100) DEFAULT NULL,
  `logo_content_type` varchar(50) DEFAULT NULL,
  `logo_file_size` int(11) DEFAULT NULL,
  `available_types` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_folders_on_creator_id` (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `published` int(11) DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_galleries_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,2,'Gallery 1 : Soluta voluptatum excepturi laborum consequatur.','Doloremque maxime esse iure mollitia cumque rerum sunt quia nesciunt eaque veritatis iusto necessitatibus et.',1000,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(2,2,'Gallery 2 : Excepturi quibusdam architecto ex sunt.','Eius ullam nostrum hic rerum iure commodi cumque et eum dolorum ratione consequatur sunt consequatur qui molestias eveniet autem.',1000,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,2,'Gallery 3 : Est sit enim quia fuga tenetur suscipit eum omnis commodi.','Quibusdam omnis rem dolores vitae dolore sed suscipit aspernatur aperiam deserunt nesciunt fuga iure repellat aliquam a expedita exercitationem.',1500,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,2,'Gallery 4 : Corporis enim quod veritatis voluptas ratione molestiae.','Non sit sunt eum odio asperiores quaerat et maiores numquam similique veniam deleniti doloremque nemo.',1100,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,2,'Gallery 5 : Non ea expedita consectetur nihil laboriosam corporis quia.','Minima accusamus rerum quidem labore nam iste ea sed doloremque unde dolore qui quos eveniet ducimus maxime autem.',1100,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,2,'Gallery 6 : Numquam et voluptas qui dolorum dicta.','Tempora molestias voluptatem alias voluptatem quis sint doloremque sunt et velit aut deserunt nihil nostrum delectus totam labore.',1100,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,2,'Gallery 7 : Repudiandae debitis velit consequatur voluptatem est ipsum.','Sit molestiae nihil consequatur minima quis est et velit sed ipsam dolor ut quo architecto autem nostrum voluptatem magni veniam.',1000,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,2,'Gallery 8 : Laboriosam minus ipsum aut unde voluptatum fugit.','Vero aut non aliquid a nulla reiciendis in beatae numquam nesciunt consequatur quia officiis excepturi optio nam dolor ea rerum.',750,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupings`
--

DROP TABLE IF EXISTS `groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupings` (
  `group_id` int(11) DEFAULT NULL,
  `groupable_id` int(11) DEFAULT NULL,
  `groupable_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contacts_workspace_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `index_groupings_on_group_id` (`group_id`),
  KEY `index_groupings_on_groupable_id` (`groupable_id`),
  KEY `index_groupings_on_groupable_type` (`groupable_type`),
  KEY `index_groupings_on_user_id` (`user_id`),
  KEY `index_groupings_on_contacts_workspace_id` (`contacts_workspace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupings`
--

LOCK TABLES `groupings` WRITE;
/*!40000 ALTER TABLE `groupings` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `state` varchar(15) DEFAULT NULL,
  `workspace_id` int(11) DEFAULT NULL,
  `comments_number` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rates_average` int(11) DEFAULT '0',
  `viewed_number` int(11) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`),
  KEY `index_groups_on_user_id` (`user_id`),
  KEY `index_groups_on_workspace_id` (`workspace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_newsletters`
--

DROP TABLE IF EXISTS `groups_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `sent_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_groups_newsletters_on_newsletter_id` (`newsletter_id`),
  KEY `index_groups_newsletters_on_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_newsletters`
--

LOCK TABLES `groups_newsletters` WRITE;
/*!40000 ALTER TABLE `groups_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_file_name` varchar(100) DEFAULT NULL,
  `image_content_type` varchar(20) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`),
  KEY `index_images_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `purchasable_type` varchar(255) DEFAULT NULL,
  `purchasable_id` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` varchar(15) DEFAULT NULL,
  `payment_medium` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `original_amount` float DEFAULT NULL,
  `final_amount` float DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `validated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoices_on_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_folders`
--

DROP TABLE IF EXISTS `items_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_id` int(11) NOT NULL,
  `itemable_id` int(11) NOT NULL,
  `itemable_type` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_items_folders_on_folder_id` (`folder_id`),
  KEY `index_items_folders_on_itemable_id` (`itemable_id`),
  KEY `index_items_folders_on_itemable_type` (`itemable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_folders`
--

LOCK TABLES `items_folders` WRITE;
/*!40000 ALTER TABLE `items_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_websites`
--

DROP TABLE IF EXISTS `items_websites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_websites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `website_id` int(11) NOT NULL,
  `itemable_id` int(11) NOT NULL,
  `itemable_type` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_items_websites_on_website_id` (`website_id`),
  KEY `index_items_websites_on_itemable_id` (`itemable_id`),
  KEY `index_items_websites_on_itemable_type` (`itemable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_websites`
--

LOCK TABLES `items_websites` WRITE;
/*!40000 ALTER TABLE `items_websites` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_websites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_workspaces`
--

DROP TABLE IF EXISTS `items_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_workspaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workspace_id` int(11) NOT NULL,
  `itemable_id` int(11) NOT NULL,
  `itemable_type` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_items_workspaces_on_workspace_id` (`workspace_id`),
  KEY `index_items_workspaces_on_itemable_id` (`itemable_id`),
  KEY `index_items_workspaces_on_itemable_type` (`itemable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_workspaces`
--

LOCK TABLES `items_workspaces` WRITE;
/*!40000 ALTER TABLE `items_workspaces` DISABLE KEYS */;
INSERT INTO `items_workspaces` VALUES (1,3,1,'UserGroup','2010-09-30 06:21:43','2010-09-30 06:21:43'),(2,2,1,'UserGroup','2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,3,2,'UserGroup','2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,2,2,'UserGroup','2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,3,3,'UserGroup','2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,2,3,'UserGroup','2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,3,1,'Gallery','2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,3,2,'Gallery','2010-09-30 06:21:43','2010-09-30 06:21:43'),(9,3,3,'Gallery','2010-09-30 06:21:43','2010-09-30 06:21:43'),(10,3,4,'Gallery','2010-09-30 06:21:43','2010-09-30 06:21:43'),(11,3,5,'Gallery','2010-09-30 06:21:43','2010-09-30 06:21:43'),(12,3,6,'Gallery','2010-09-30 06:21:43','2010-09-30 06:21:43'),(13,3,7,'Gallery','2010-09-30 06:21:43','2010-09-30 06:21:43'),(14,3,8,'Gallery','2010-09-30 06:21:43','2010-09-30 06:21:43'),(15,3,1,'Competition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(16,3,2,'Competition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(17,3,1,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(18,3,2,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(19,3,3,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(20,3,4,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(21,3,5,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(22,3,6,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(23,3,7,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(24,3,8,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(25,3,9,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(26,3,10,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(27,3,11,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(28,3,12,'Exhibition','2010-09-30 06:21:43','2010-09-30 06:21:43'),(29,4,1,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(30,4,2,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(31,4,3,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(32,4,4,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(33,4,5,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(34,4,6,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(35,4,7,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(36,4,8,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(37,4,9,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(38,4,10,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(39,5,11,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(40,5,12,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(41,5,13,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(42,5,14,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(43,5,15,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(44,5,16,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(45,5,17,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(46,5,18,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(47,6,19,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(48,6,20,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(49,6,21,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(50,6,22,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(51,6,23,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(52,6,24,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(53,6,25,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(54,6,26,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(55,6,27,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(56,7,28,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(57,7,29,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(58,7,30,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(59,7,31,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(60,7,32,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(61,8,33,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(62,8,34,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(63,8,35,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(64,8,36,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(65,8,37,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(66,8,38,'Artwork','2010-09-30 06:21:43','2010-09-30 06:21:43'),(67,9,39,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(68,9,40,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(69,9,41,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(70,9,42,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(71,9,43,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(72,9,44,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(73,9,45,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(74,10,46,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(75,10,47,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(76,10,48,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(77,10,49,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(78,10,50,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(79,10,51,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(80,10,52,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(81,10,53,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(82,11,54,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(83,11,55,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(84,11,56,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(85,11,57,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(86,11,58,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(87,12,59,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(88,12,60,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(89,12,61,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(90,12,62,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(91,12,63,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(92,12,64,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(93,12,65,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(94,12,66,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(95,13,67,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(96,13,68,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(97,13,69,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(98,13,70,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(99,13,71,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(100,13,72,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(101,13,73,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(102,13,74,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(103,14,75,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(104,14,76,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(105,14,77,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(106,14,78,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(107,14,79,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(108,14,80,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(109,14,81,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(110,14,82,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(111,14,83,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(112,14,84,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(113,14,85,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(114,14,86,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(115,15,87,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(116,15,88,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(117,15,89,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(118,15,90,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(119,15,91,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(120,15,92,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(121,15,93,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(122,15,94,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(123,15,95,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(124,16,96,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(125,16,97,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(126,16,98,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(127,16,99,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(128,16,100,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(129,16,101,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(130,16,102,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(131,16,103,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(132,16,104,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(133,16,105,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(134,17,106,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(135,17,107,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(136,17,108,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(137,17,109,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(138,17,110,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(139,18,111,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(140,18,112,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(141,18,113,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(142,18,114,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(143,18,115,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(144,18,116,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(145,18,117,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(146,18,118,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(147,18,119,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(148,18,120,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(149,19,121,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(150,19,122,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(151,19,123,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(152,19,124,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(153,19,125,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(154,19,126,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(155,19,127,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(156,19,128,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(157,19,129,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(158,19,130,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(159,19,131,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(160,19,132,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(161,20,133,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(162,20,134,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(163,20,135,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(164,20,136,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(165,20,137,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(166,20,138,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(167,20,139,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(168,20,140,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(169,21,141,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(170,21,142,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(171,21,143,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(172,21,144,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(173,21,145,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(174,21,146,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(175,21,147,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(176,22,148,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(177,22,149,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(178,22,150,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(179,22,151,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(180,22,152,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(181,23,153,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(182,23,154,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(183,23,155,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(184,23,156,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(185,23,157,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(186,23,158,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(187,23,159,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44'),(188,23,160,'Artwork','2010-09-30 06:21:44','2010-09-30 06:21:44');
/*!40000 ALTER TABLE `items_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywordings`
--

DROP TABLE IF EXISTS `keywordings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywordings` (
  `keywordable_id` int(11) DEFAULT NULL,
  `keywordable_type` varchar(40) DEFAULT NULL,
  `keyword_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `index_keywordings_on_keyword_id` (`keyword_id`),
  KEY `index_keywordings_on_keywordable_id` (`keywordable_id`),
  KEY `index_keywordings_on_keywordable_type` (`keywordable_type`),
  KEY `index_keywordings_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywordings`
--

LOCK TABLES `keywordings` WRITE;
/*!40000 ALTER TABLE `keywordings` DISABLE KEYS */;
/*!40000 ALTER TABLE `keywordings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_keywords_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `website_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `from_email` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `body` text,
  `viewed_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`),
  KEY `index_newsletters_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_filters`
--

DROP TABLE IF EXISTS `notification_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_filters`
--

LOCK TABLES `notification_filters` WRITE;
/*!40000 ALTER TABLE `notification_filters` DISABLE KEYS */;
INSERT INTO `notification_filters` VALUES (1,'article','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(2,'image','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(3,'cms_file','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(4,'video','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(5,'audio','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(6,'bookmark','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(7,'newsletter','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(8,'group','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(9,'destroy','action','2010-09-30 06:20:12','2010-09-30 06:20:12'),(10,'create','action','2010-09-30 06:20:12','2010-09-30 06:20:12'),(11,'update','action','2010-09-30 06:20:12','2010-09-30 06:20:12'),(12,'artwork','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(13,'exhibition','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(14,'competition','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(15,'gallery','model','2010-09-30 06:20:12','2010-09-30 06:20:12'),(16,'invoice','model','2010-09-30 06:20:13','2010-09-30 06:20:13'),(17,'user_groups','model','2010-09-30 06:20:13','2010-09-30 06:20:13'),(18,'payments','model','2010-09-30 06:20:13','2010-09-30 06:20:13'),(19,'order','model','2010-09-30 06:20:13','2010-09-30 06:20:13');
/*!40000 ALTER TABLE `notification_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_subscriptions`
--

DROP TABLE IF EXISTS `notification_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `notification_filter_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_subscriptions`
--

LOCK TABLES `notification_subscriptions` WRITE;
/*!40000 ALTER TABLE `notification_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_lines`
--

DROP TABLE IF EXISTS `order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `orderable_type` varchar(255) DEFAULT NULL,
  `orderable_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_lines_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lines`
--

LOCK TABLES `order_lines` WRITE;
/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` varchar(15) DEFAULT NULL,
  `body` text,
  `page_title` varchar(255) DEFAULT NULL,
  `page_type` varchar(50) DEFAULT NULL,
  `menu_title` varchar(50) DEFAULT NULL,
  `title_sanitized` varchar(255) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `credit_card_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `amount_in_cents` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_payments_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `web_page` varchar(100) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `notes` text,
  `email` varchar(50) NOT NULL,
  `primary_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `company` varchar(40) DEFAULT NULL,
  `job_title` varchar(40) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `salutation` varchar(5) DEFAULT NULL,
  `origin` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_people_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periods`
--

DROP TABLE IF EXISTS `periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periods`
--

LOCK TABLES `periods` WRITE;
/*!40000 ALTER TABLE `periods` DISABLE KEYS */;
INSERT INTO `periods` VALUES (1,'2010-06-30','2010-07-14',NULL,'2010-09-30 06:21:42','2010-09-30 06:21:42'),(2,'2010-07-15','2010-07-29',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,'2010-07-30','2010-08-13',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,'2010-08-14','2010-08-28',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,'2010-08-29','2010-09-12',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,'2010-09-13','2010-09-27',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,'2010-09-28','2010-10-12',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,'2010-10-13','2010-10-27',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(9,'2010-10-28','2010-11-11',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(10,'2010-11-12','2010-11-26',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(11,'2010-11-27','2010-12-11',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(12,'2010-12-12','2010-12-26',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(13,'2010-12-27','2011-01-10',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(14,'2011-01-11','2011-01-25',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(15,'2011-01-26','2011-02-09',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(16,'2011-02-10','2011-02-24',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(17,'2011-02-25','2011-03-11',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(18,'2011-03-12','2011-03-26',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(19,'2011-03-27','2011-04-10',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(20,'2011-04-11','2011-04-25',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43');
/*!40000 ALTER TABLE `periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `type_permission` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_permissions_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'user_new',NULL,'system','2010-09-30 06:20:14','2010-09-30 06:20:14'),(2,'user_edit',NULL,'system','2010-09-30 06:20:14','2010-09-30 06:20:14'),(3,'user_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(4,'user_destroy',NULL,'system','2010-09-30 06:20:14','2010-09-30 06:20:14'),(5,'article_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(6,'article_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(7,'article_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(8,'article_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(9,'image_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(10,'image_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(11,'image_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(12,'image_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(13,'cms_file_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(14,'cms_file_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(15,'cms_file_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(16,'cms_file_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(17,'video_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(18,'video_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(19,'video_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(20,'video_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(21,'audio_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(22,'audio_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(23,'audio_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(24,'audio_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(25,'bookmark_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(26,'bookmark_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(27,'bookmark_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(28,'bookmark_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(29,'newsletter_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(30,'newsletter_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(31,'newsletter_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(32,'newsletter_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(33,'group_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(34,'group_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(35,'group_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(36,'group_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(37,'page_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(38,'page_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(39,'page_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(40,'page_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(41,'artwork_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(42,'artwork_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(43,'artwork_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(44,'artwork_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(45,'competition_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(46,'competition_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(47,'competition_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(48,'competition_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(49,'exhibition_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(50,'exhibition_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(51,'exhibition_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(52,'exhibition_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(53,'gallery_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(54,'gallery_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(55,'gallery_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(56,'gallery_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(57,'user_group_new',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(58,'user_group_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(59,'user_group_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(60,'user_group_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(61,'workspace_new',NULL,'system','2010-09-30 06:20:14','2010-09-30 06:20:14'),(62,'workspace_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(63,'workspace_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(64,'workspace_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(65,'website_new',NULL,'system','2010-09-30 06:20:14','2010-09-30 06:20:14'),(66,'website_edit',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(67,'website_show',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(68,'website_destroy',NULL,'container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(69,'folder_new',NULL,'system','2010-09-30 06:20:15','2010-09-30 06:20:15'),(70,'folder_edit',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(71,'folder_show',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(72,'folder_destroy',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(73,'article_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(74,'article_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(75,'article_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(76,'image_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(77,'image_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(78,'image_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(79,'cms_file_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(80,'cms_file_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(81,'cms_file_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(82,'video_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(83,'video_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(84,'video_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(85,'audio_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(86,'audio_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(87,'audio_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(88,'bookmark_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(89,'bookmark_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(90,'bookmark_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(91,'newsletter_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(92,'newsletter_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(93,'newsletter_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(94,'group_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(95,'group_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(96,'group_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(97,'page_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(98,'page_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(99,'page_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(100,'artwork_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(101,'artwork_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(102,'artwork_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(103,'competition_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(104,'competition_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(105,'competition_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(106,'exhibition_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(107,'exhibition_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(108,'exhibition_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(109,'gallery_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(110,'gallery_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(111,'gallery_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(112,'user_group_comment',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(113,'user_group_rate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(114,'user_group_tag',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(115,'workspace_administrate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(116,'website_administrate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(117,'folder_administrate',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(118,'user_configure',NULL,'system','2010-09-30 06:20:15','2010-09-30 06:20:15'),(119,'workspace_contacts_management',NULL,'container','2010-09-30 06:20:15','2010-09-30 06:20:15'),(120,'competition_subscribe','Permission to subscribe to a comptetition','container','2010-09-30 06:21:36','2010-09-30 06:21:36'),(121,'artwork_evaluate','Permission to evaluate an artwork','container','2010-09-30 06:21:36','2010-09-30 06:21:36');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_roles`
--

DROP TABLE IF EXISTS `permissions_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions_roles` (
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_permissions_roles_on_permission_id` (`permission_id`),
  KEY `index_permissions_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_roles`
--

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;
INSERT INTO `permissions_roles` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(87,2),(88,2),(89,2),(90,2),(91,2),(92,2),(93,2),(94,2),(95,2),(96,2),(97,2),(98,2),(99,2),(100,2),(101,2),(102,2),(103,2),(104,2),(105,2),(106,2),(107,2),(108,2),(109,2),(110,2),(111,2),(112,2),(113,2),(114,2),(115,2),(116,2),(117,2),(118,2),(119,2),(61,3),(115,4),(115,5),(119,4),(119,5),(64,4),(62,4),(62,5),(63,4),(63,5),(63,7),(63,6),(115,4),(65,3),(116,4),(116,5),(68,4),(66,4),(66,5),(67,4),(67,5),(67,7),(67,6),(116,4),(69,3),(117,4),(117,5),(72,4),(70,4),(70,5),(71,4),(71,5),(71,7),(71,6),(117,4),(5,4),(5,5),(5,6),(6,4),(6,5),(6,6),(7,4),(7,5),(7,6),(7,7),(8,4),(8,5),(73,4),(73,5),(73,6),(73,7),(74,4),(74,5),(74,6),(74,7),(75,4),(75,5),(75,6),(75,7),(9,4),(9,5),(9,6),(10,4),(10,5),(10,6),(11,4),(11,5),(11,6),(11,7),(12,4),(12,5),(76,4),(76,5),(76,6),(76,7),(77,4),(77,5),(77,6),(77,7),(78,4),(78,5),(78,6),(78,7),(13,4),(13,5),(13,6),(14,4),(14,5),(14,6),(15,4),(15,5),(15,6),(15,7),(16,4),(16,5),(79,4),(79,5),(79,6),(79,7),(80,4),(80,5),(80,6),(80,7),(81,4),(81,5),(81,6),(81,7),(17,4),(17,5),(17,6),(18,4),(18,5),(18,6),(19,4),(19,5),(19,6),(19,7),(20,4),(20,5),(82,4),(82,5),(82,6),(82,7),(83,4),(83,5),(83,6),(83,7),(84,4),(84,5),(84,6),(84,7),(21,4),(21,5),(21,6),(22,4),(22,5),(22,6),(23,4),(23,5),(23,6),(23,7),(24,4),(24,5),(85,4),(85,5),(85,6),(85,7),(86,4),(86,5),(86,6),(86,7),(87,4),(87,5),(87,6),(87,7),(25,4),(25,5),(25,6),(26,4),(26,5),(26,6),(27,4),(27,5),(27,6),(27,7),(28,4),(28,5),(88,4),(88,5),(88,6),(88,7),(89,4),(89,5),(89,6),(89,7),(90,4),(90,5),(90,6),(90,7),(29,4),(29,5),(29,6),(30,4),(30,5),(30,6),(31,4),(31,5),(31,6),(31,7),(32,4),(32,5),(91,4),(91,5),(91,6),(91,7),(92,4),(92,5),(92,6),(92,7),(93,4),(93,5),(93,6),(93,7),(33,4),(33,5),(33,6),(34,4),(34,5),(34,6),(35,4),(35,5),(35,6),(35,7),(36,4),(36,5),(94,4),(94,5),(94,6),(94,7),(95,4),(95,5),(95,6),(95,7),(96,4),(96,5),(96,6),(96,7),(37,4),(37,5),(37,6),(38,4),(38,5),(38,6),(39,4),(39,5),(39,6),(39,7),(40,4),(40,5),(97,4),(97,5),(97,6),(97,7),(98,4),(98,5),(98,6),(98,7),(99,4),(99,5),(99,6),(99,7),(41,4),(41,5),(41,6),(42,4),(42,5),(42,6),(43,4),(43,5),(43,6),(43,7),(44,4),(44,5),(100,4),(100,5),(100,6),(100,7),(101,4),(101,5),(101,6),(101,7),(102,4),(102,5),(102,6),(102,7),(45,4),(45,5),(45,6),(46,4),(46,5),(46,6),(47,4),(47,5),(47,6),(47,7),(48,4),(48,5),(103,4),(103,5),(103,6),(103,7),(104,4),(104,5),(104,6),(104,7),(105,4),(105,5),(105,6),(105,7),(49,4),(49,5),(49,6),(50,4),(50,5),(50,6),(51,4),(51,5),(51,6),(51,7),(52,4),(52,5),(106,4),(106,5),(106,6),(106,7),(107,4),(107,5),(107,6),(107,7),(108,4),(108,5),(108,6),(108,7),(53,4),(53,5),(53,6),(54,4),(54,5),(54,6),(55,4),(55,5),(55,6),(55,7),(56,4),(56,5),(109,4),(109,5),(109,6),(109,7),(110,4),(110,5),(110,6),(110,7),(111,4),(111,5),(111,6),(111,7),(57,4),(57,5),(57,6),(58,4),(58,5),(58,6),(59,4),(59,5),(59,6),(59,7),(60,4),(60,5),(112,4),(112,5),(112,6),(112,7),(113,4),(113,5),(113,6),(113,7),(114,4),(114,5),(114,6),(114,7),(47,8),(51,8),(55,8),(59,8),(120,8),(47,10),(47,9),(43,9),(121,9),(63,11),(43,11),(41,11),(42,11),(44,11),(120,2),(121,2);
/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `salutation` varchar(5) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `getting_newsletter` tinyint(1) DEFAULT '0',
  `state` varchar(255) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `suburb` varchar(70) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country_state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `biography` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_profiles_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,NULL,'Boss',NULL,'Dupond',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:20:17','2010-09-30 06:20:17'),(2,2,NULL,'Admin',NULL,'Admin',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-09-30 06:20:17','2010-09-30 06:20:17'),(3,3,NULL,'Oren',NULL,'Wolff',NULL,NULL,NULL,0,NULL,'rocio@kuhlmanwiza.us','8549 Jennings Spurs',NULL,'54543-6895','Homenickshire',NULL,'France','+00 912323232399','http://www.aufderharrath.com','Fugiat corrupti debitis accusamus. Dignissimos ea tempore molestiae. Consequuntur omnis molestias perferendis et. Nihil placeat rerum non voluptatem perspiciatis. Qui corporis in sed est a harum veniam. Deserunt et omnis maxime. Tenetur delectus quae non magni et inventore. Repudiandae quia et placeat. Et voluptate voluptas id dolores. Iste amet numquam ratione voluptate sequi animi distinctio. Quo itaque quia voluptate. Molestiae nesciunt amet hic unde ducimus.','2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,4,NULL,'Orie',NULL,'Davis',NULL,NULL,NULL,1,NULL,'santos@goodwin.biz','48810 Blaze Row',NULL,'92217','East Dedrickchester',NULL,'France','+00 912323232399','http://www.schroedercummings.ca','Et minus voluptates quia ipsa molestias. Quibusdam totam dolorem debitis minus repellendus illo est dolorem. Voluptatum sunt quia unde quos. Eum quo doloribus incidunt libero ex. Natus et nihil illo officia earum. Sequi quis illo sit maxime corporis quisquam est laborum. Totam eaque error sint modi ullam dolores incidunt. Quasi vel ullam excepturi. Id architecto voluptatem laborum inventore. Et et impedit veniam est eum. Ea pariatur quod et nisi placeat in. Suscipit ut est laboriosam dolores.','2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,5,NULL,'Jacinthe',NULL,'Schuster',NULL,NULL,NULL,0,NULL,'rick@lueilwitz.co.uk','1478 Sipes Estates',NULL,'15603-7136','New Leon',NULL,'USA','+00 912323232399','http://www.purdy.co.uk','Sunt qui velit debitis enim. Velit in amet qui numquam est quisquam. Harum odio hic reiciendis iusto laborum. Aut sapiente necessitatibus totam similique ut. Tempora deserunt sapiente quo reiciendis consectetur. Accusantium qui quo molestias distinctio et est. Iusto est laborum temporibus neque. Sit quia nulla autem velit. Ea facere sequi voluptates repellat eos aut. Nam quibusdam alias iusto soluta asperiores vero fuga. Facilis aut cumque quia rerum est reprehenderit accusantium.','2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,6,NULL,'Angelo',NULL,'Olson',NULL,NULL,NULL,1,NULL,'bette_borer@jacobirolfson.com','88258 Mayer Creek',NULL,'30317-0156','Daveside',NULL,'USA','+00 912323232399','http://www.lebsack.uk','Harum est molestiae nihil necessitatibus voluptas quaerat quod. Repellendus et et dolores totam qui nihil debitis. Repellendus minima iste expedita illum. Neque impedit labore nostrum rerum et. Molestias id earum dolore amet placeat minus ut nemo. Officiis est quidem aperiam quas voluptatem blanditiis id. Veniam earum eaque quis explicabo consequatur repellendus non. Rerum accusamus aperiam voluptates autem. Optio autem tempore adipisci ut qui non hic. Sunt voluptatem atque adipisci fuga ex est. Porro magni est enim autem. Dolor quo laborum est.','2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,7,NULL,'Marta',NULL,'Walsh',NULL,NULL,NULL,0,NULL,'darrion.dickens@stark.com','954 Mireille Viaduct',NULL,'73421-3786','Sandraborough',NULL,'Australia','+00 912323232399','http://www.jakubowski.us','Et totam autem in magni esse optio. Quis tempora animi voluptate architecto dolor dolor. Consequatur corporis magnam enim ut qui cumque repellat ab. Voluptatem facere impedit laboriosam blanditiis et doloremque. Architecto sed nihil laudantium in excepturi earum autem. Eveniet enim rem odio. Debitis commodi nostrum recusandae et aperiam dignissimos autem. Repudiandae quasi repellendus iste nesciunt. Sed totam nihil a voluptatem aut earum. Ea soluta eum excepturi molestiae dolore occaecati. Minima nostrum veniam enim perferendis quis recusandae. Et accusamus rerum et et ducimus.','2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,8,NULL,'Jett',NULL,'Sanford',NULL,NULL,NULL,0,NULL,'maymie@hudson.uk','9493 Hermiston Road',NULL,'98339','Nealshire',NULL,'France','+00 912323232399','http://www.wintheiser.us','Consequatur sunt reiciendis vero fugiat cumque nemo at. Voluptas illo labore magni quia tempora nesciunt iure necessitatibus. Molestias laboriosam sed optio. Saepe voluptatum perspiciatis ullam culpa. Modi aut tenetur autem eos libero. Sit provident optio sunt. Quo doloribus est quam et illum et qui quis. Consequatur et reprehenderit deserunt vitae. Officiis et dolor est saepe officia inventore ullam. Ipsa eligendi dolor est enim dolorem porro. Sed sit dignissimos rerum praesentium quod nulla quos velit.','2010-09-30 06:21:43','2010-09-30 06:21:43'),(9,9,NULL,'Jayme',NULL,'Parker',NULL,NULL,NULL,1,NULL,'merritt@binshermiston.co.uk','73741 Considine Roads',NULL,'56276-9973','Williamsonview',NULL,'France','+00 912323232399','http://www.jacobs.com','Corrupti voluptas quisquam omnis tenetur et quis. Repellendus praesentium unde est consectetur tempore quos fugiat. Voluptas quas qui sunt sint dolorem. Explicabo sed et dolores. Nihil aliquam corrupti eveniet eos consequuntur. Quisquam itaque eum et dolores culpa officia repellat rerum. Cumque dignissimos aliquid corrupti unde. Ut deleniti officia dolores. Tempora iusto quia itaque aut. Velit nesciunt voluptatem delectus quia eum dolorem quia consequatur.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(10,10,NULL,'Ari',NULL,'Oberbrunner',NULL,NULL,NULL,0,NULL,'lauryn@gulgowskimclaughlin.name','446 Daisha Loop',NULL,'94465-3044','New Wilton',NULL,'France','+00 912323232399','http://www.wiza.us','Omnis similique officia quia et id totam quisquam reprehenderit. Accusantium a optio cupiditate omnis. Hic pariatur ea consequuntur nisi. Beatae velit totam et. Quos neque quo repellat ad recusandae consequatur. Doloribus reprehenderit totam sed et assumenda itaque sint quod. Nam voluptatem voluptas tempore. Reiciendis ullam voluptatum voluptatem. Eum ad amet nulla cum mollitia nihil dolorem. Magnam non et temporibus adipisci. Quos molestiae est rem qui alias harum consequuntur quas.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(11,11,NULL,'Bell',NULL,'Hudson',NULL,NULL,NULL,1,NULL,'carroll@manteschmidt.biz','4649 Triston Inlet',NULL,'40405-3353','West Annehaven',NULL,'France','+00 912323232399','http://www.wehnerfeest.com','Sed nulla quia ipsum delectus repellendus. Laboriosam culpa ratione sed dolores in. Earum repellendus deleniti nemo aliquam harum id. Et similique aut qui aut est. Sunt distinctio id sunt ipsa dolores quo non. Et reiciendis odit quod suscipit voluptatem fuga incidunt. Sit qui doloremque at aliquid totam reiciendis. Ut repellendus in incidunt unde. Reiciendis id aperiam natus occaecati eaque eum fuga sapiente. Quae iste nemo nisi asperiores blanditiis nesciunt.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(12,12,NULL,'Eldred',NULL,'Ryan',NULL,NULL,NULL,1,NULL,'adela_abshire@vonrueden.ca','07758 Brown Squares',NULL,'06866-0075','West Devin',NULL,'Australia','+00 912323232399','http://www.bartellkilback.uk','Quidem sit molestias et dolore. Rerum dolores aperiam minima omnis tempora odit ut. Cum modi eum eos sed laudantium. Earum culpa consectetur possimus dignissimos architecto et. Non illum amet quia qui. Et nihil corrupti alias assumenda dolorem maiores qui. Iusto dolores quidem quas nulla atque at quia. Ut at magni quisquam aut laboriosam error deserunt excepturi. Voluptates magnam omnis qui nam eos adipisci. Voluptas id voluptas inventore ipsum et repudiandae.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(13,13,NULL,'Nelson',NULL,'Crooks',NULL,NULL,NULL,0,NULL,'samantha.kerluke@muller.com','365 Fahey Locks',NULL,'06098','Johnsonfurt',NULL,'Australia','+00 912323232399','http://www.wuckert.uk','Voluptatem nam sit omnis placeat aliquam. Voluptatum harum aspernatur laudantium sit dolores similique iusto neque. Itaque laboriosam sunt ab totam qui veniam. Sint natus molestiae doloribus culpa id. Et vel veritatis quis alias accusantium accusamus. Est sed fugit porro qui illo voluptas dolorem commodi. Doloribus repudiandae iure officiis voluptas cupiditate cum. A alias et ea cum architecto. Ut temporibus in sapiente rerum nobis distinctio. Amet praesentium ut eum. Veritatis excepturi eum est. Deleniti id corporis iure distinctio et.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(14,14,NULL,'Nat',NULL,'Rogahn',NULL,NULL,NULL,1,NULL,'bradford@gulgowskisanford.com','5702 Frami Ford',NULL,'65226','New Christine',NULL,'India','+00 912323232399','http://www.quigley.com','In voluptatibus at tenetur nesciunt repellat est aliquid. Error modi minus sed odio dolores. Eveniet non cum voluptatem et in. Qui provident enim facere excepturi beatae blanditiis. Laboriosam neque dicta occaecati qui. A ut ipsam eos. Possimus iusto dolorem porro deleniti. Nesciunt consequatur quis dolorem est eos. Voluptas blanditiis delectus aut deleniti. Delectus laboriosam voluptas incidunt ut temporibus asperiores nam. Rem rerum et consequuntur blanditiis ducimus nostrum non enim.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(15,15,NULL,'Germaine',NULL,'West',NULL,NULL,NULL,1,NULL,'lonie@conroy.info','588 Leland Knoll',NULL,'44546','Dollystad',NULL,'Australia','+00 912323232399','http://www.upton.biz','Placeat modi minus sequi ea quaerat. Ut et aspernatur consequatur. Mollitia recusandae aut distinctio quasi autem officiis voluptas. Doloremque saepe rerum corporis molestias id et. Ut minima eaque non. Ducimus minima consequuntur dolores. Ut nesciunt rerum impedit quaerat consequuntur labore ducimus. Voluptas earum eius voluptates illo. Accusamus eveniet consequatur minus voluptates vel. Occaecati voluptatem eaque eos labore sed in. Dolorem non ab similique amet ullam omnis. Quod delectus atque doloremque qui reiciendis nihil velit pariatur.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(16,16,NULL,'Jeramie',NULL,'Lynch',NULL,NULL,NULL,0,NULL,'joshuah@pagac.co.uk','536 Kim Manor',NULL,'33296-2876','Port Leannborough',NULL,'France','+00 912323232399','http://www.boscomarvin.com','Quod quo omnis ad deleniti. Odit distinctio vitae sit quam natus quo rerum vero. Possimus eligendi ea quasi hic. Dolor doloremque eaque nam quo. Aut soluta doloribus odit impedit dicta libero. Quidem in et amet sed deleniti. Animi porro aut delectus ex adipisci ipsum qui exercitationem. Quas corporis consequatur numquam adipisci unde dolor. Voluptas ut possimus occaecati sint. Excepturi placeat velit non explicabo id tempore nam rerum. Et voluptas dicta id. Sit impedit minus facere.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(17,17,NULL,'Arden',NULL,'Jaskolski',NULL,NULL,NULL,0,NULL,'camryn@pfannerstillschulist.co.uk','93107 Mikayla Forest',NULL,'65832-0487','East Myleshaven',NULL,'USA','+00 912323232399','http://www.welchblock.name','Cupiditate rerum magni veritatis dolor labore autem et. Unde deserunt ab adipisci ratione. Nulla vel autem hic. Quis consequuntur qui architecto blanditiis inventore eaque cupiditate. Voluptatibus quis esse voluptas incidunt aut sed voluptas ab. Vel unde esse velit. Consequatur assumenda dolor tempora. Corporis quia culpa quod. Rem tempore repudiandae sapiente quasi cumque nobis. Optio id minus repellendus aut.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(18,18,NULL,'Saul',NULL,'Bradtke',NULL,NULL,NULL,1,NULL,'lorenz_schmidt@gleichner.co.uk','3891 Hagenes Crossroad',NULL,'74623','South Bruceview',NULL,'India','+00 912323232399','http://www.anderson.info','Consectetur dolores ipsam at qui. Accusantium veniam temporibus expedita illo ducimus ratione praesentium. Alias aut distinctio dignissimos fugiat. Labore occaecati in unde ut. Dolorem itaque officiis et rerum placeat. Excepturi debitis et dolore eos provident. Quia sunt qui a sed expedita nisi nulla. Atque voluptatem vel veritatis architecto officiis ut cumque. Reprehenderit perferendis placeat et. Velit culpa voluptatem earum id minima cumque est. Necessitatibus aliquam qui amet sapiente ipsa est. Inventore ea atque molestias iure at consectetur voluptatem.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(19,19,NULL,'Brendan',NULL,'Oberbrunner',NULL,NULL,NULL,0,NULL,'sigurd@wisoky.info','069 Verner Skyway',NULL,'35013-2028','Sanfordfurt',NULL,'Australia','+00 912323232399','http://www.shieldskunze.name','Veritatis illum debitis ex voluptas voluptas. Illo voluptatem quos est velit. Eligendi ad rem sequi id itaque dolorem. Soluta nam ipsum quasi error aut. Quibusdam veritatis voluptates iusto delectus fugit. Iusto id aperiam temporibus eaque et. Illo et ut accusantium non ea harum sit in. Est reprehenderit odio fugit ut mollitia ullam pariatur. Qui aspernatur pariatur ea. Est earum distinctio ipsum ullam necessitatibus similique aut quaerat. Eos qui dolores non. Quam porro non tenetur ut nam provident deserunt.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(20,20,NULL,'Irving',NULL,'Moen',NULL,NULL,NULL,0,NULL,'sydni_runte@renner.name','178 Vicente Isle',NULL,'21930-7876','Port Braedenfurt',NULL,'France','+00 912323232399','http://www.hand.ca','Vero quia sed dolorem possimus. Dolores molestiae iste odit magni autem vero. Quasi architecto reiciendis ea dolorum unde maiores earum ipsa. Ipsum aut qui est facere amet. Sunt veniam consectetur laborum. Voluptatem corrupti quo mollitia corporis consectetur qui reprehenderit. Saepe est officia recusandae. Vel repellat et sed dolor. Fugit qui non odio quia quis. Ad ipsum est totam. Delectus est ratione enim voluptas sit.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(21,21,NULL,'Luella',NULL,'Abbott',NULL,NULL,NULL,1,NULL,'dion@pagac.ca','1657 Quigley Branch',NULL,'12695-6957','New Cliffordland',NULL,'USA','+00 912323232399','http://www.bruen.name','Aut quisquam nulla quae temporibus veritatis. Ipsa perferendis non minus sit officiis et. Harum eos ullam quo occaecati. Qui ut odio sed ducimus qui reprehenderit omnis doloribus. Cumque sed quo est totam necessitatibus voluptatem. Dolor placeat quibusdam deserunt aut et dolorem saepe. Facilis quo placeat adipisci quidem non id. Aut excepturi molestiae ut veniam. Error tempora ab ut animi. Non rerum nostrum fugiat et accusamus id inventore.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(22,22,NULL,'Manley',NULL,'Cummerata',NULL,NULL,NULL,1,NULL,'nathen_champlin@sipes.biz','153 Melyssa Lodge',NULL,'60864','North Stanford',NULL,'France','+00 912323232399','http://www.rolfsonmarvin.com','Vero error esse est nihil enim libero. Architecto aliquid autem aspernatur voluptatibus. Eos iste tempora est nulla dolorum et cupiditate. Amet delectus dolorum sunt. Dicta sint fugiat sit enim accusamus et nesciunt architecto. Nihil voluptates voluptas ipsum at sapiente qui. Amet est qui quo sit dolores quasi aliquid. Rerum ullam voluptatem cum voluptas sit. Vitae quo voluptatem id nam. In necessitatibus incidunt quo vel ab. Dolor dolorem praesentium architecto sunt non qui ut animi. Aliquam sed sint dolor laborum officiis.','2010-09-30 06:21:44','2010-09-30 06:21:44'),(23,23,NULL,'Amit',NULL,'kumar',NULL,NULL,NULL,0,NULL,'amitbaraik@gmail.com','Pune','Maharashtra','411048',NULL,NULL,NULL,'9890654102',NULL,NULL,'2010-09-30 06:23:18','2010-09-30 06:23:18'),(24,24,NULL,'kedar',NULL,'pathak',NULL,NULL,NULL,0,NULL,'kedar.pathak@pragtech.co.in','pune','maharashtra','411038',NULL,NULL,NULL,'25420753',NULL,NULL,'2010-09-30 06:23:30','2010-09-30 06:23:30');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_categories`
--

DROP TABLE IF EXISTS `profiles_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_profiles_categories_on_profile_id` (`profile_id`),
  KEY `index_profiles_categories_on_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_categories`
--

LOCK TABLES `profiles_categories` WRITE;
/*!40000 ALTER TABLE `profiles_categories` DISABLE KEYS */;
INSERT INTO `profiles_categories` VALUES (1,3,'2','2010-09-30 06:21:43','2010-09-30 06:21:43'),(2,4,'1','2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,5,'2','2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,6,'2','2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,7,'4','2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,8,'2','2010-09-30 06:21:44','2010-09-30 06:21:44'),(7,9,'2','2010-09-30 06:21:44','2010-09-30 06:21:44'),(8,10,'1','2010-09-30 06:21:44','2010-09-30 06:21:44'),(9,11,'4','2010-09-30 06:21:44','2010-09-30 06:21:44'),(10,12,'3','2010-09-30 06:21:44','2010-09-30 06:21:44'),(11,13,'2','2010-09-30 06:21:44','2010-09-30 06:21:44'),(12,14,'1','2010-09-30 06:21:44','2010-09-30 06:21:44'),(13,15,'3','2010-09-30 06:21:44','2010-09-30 06:21:44'),(14,16,'1','2010-09-30 06:21:44','2010-09-30 06:21:44'),(15,17,'4','2010-09-30 06:21:44','2010-09-30 06:21:44'),(16,18,'2','2010-09-30 06:21:44','2010-09-30 06:21:44'),(17,19,'2','2010-09-30 06:21:44','2010-09-30 06:21:44'),(18,20,'4','2010-09-30 06:21:44','2010-09-30 06:21:44'),(19,21,'4','2010-09-30 06:21:44','2010-09-30 06:21:44'),(20,22,'2','2010-09-30 06:21:44','2010-09-30 06:21:44');
/*!40000 ALTER TABLE `profiles_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_containers`
--

DROP TABLE IF EXISTS `profiles_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) DEFAULT NULL,
  `container_type` varchar(255) DEFAULT NULL,
  `container_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_containers`
--

LOCK TABLES `profiles_containers` WRITE;
/*!40000 ALTER TABLE `profiles_containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queued_mails`
--

DROP TABLE IF EXISTS `queued_mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queued_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailer` varchar(255) DEFAULT NULL,
  `mailer_method` varchar(255) DEFAULT NULL,
  `args` text,
  `priority` int(11) DEFAULT '0',
  `sending_tries` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queued_mails`
--

LOCK TABLES `queued_mails` WRITE;
/*!40000 ALTER TABLE `queued_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rateable_id` int(11) DEFAULT NULL,
  `rateable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ratings_on_user_id` (`user_id`),
  KEY `index_ratings_on_rateable_id` (`rateable_id`),
  KEY `index_ratings_on_rateable_type` (`rateable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `type_role` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superadmin','SuperAdministration','system','2010-09-30 06:20:14','2010-09-30 06:20:14'),(2,'admin','Administration','system','2010-09-30 06:20:14','2010-09-30 06:20:14'),(3,'user','User','system','2010-09-30 06:20:14','2010-09-30 06:20:14'),(4,'co_admin','Container Administrator','container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(5,'moderator','Container Moderator','container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(6,'writer','Container Writer','container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(7,'reader','Container Reader','container','2010-09-30 06:20:14','2010-09-30 06:20:14'),(8,'artist','Permissions for an artist.','system','2010-09-30 06:21:36','2010-09-30 06:21:36'),(9,'judge','Permissions for an judge.','system','2010-09-30 06:21:36','2010-09-30 06:21:36'),(10,'competitor','Permissions for a competitior.','system','2010-09-30 06:21:36','2010-09-30 06:21:36'),(11,'private_user','Permissions for an private user.','workspace','2010-09-30 06:21:36','2010-09-30 06:21:36');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_searches`
--

DROP TABLE IF EXISTS `saved_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_searches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `q` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `containers` text,
  `items` varchar(255) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `created_at_after` datetime DEFAULT NULL,
  `created_at_before` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_saved_searches_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_searches`
--

LOCK TABLES `saved_searches` WRITE;
/*!40000 ALTER TABLE `saved_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('20091023095237'),('20091027095299'),('20091210083425'),('20091210090309'),('20091210090438'),('20091222063424'),('20091222071728'),('20091222100626'),('20100105102431'),('20100105111359'),('20100105113331'),('20100107112426'),('20100108135406'),('20100111103136'),('20100112110753'),('20100125102330'),('20100203100544'),('20100205060247'),('20100208093159'),('20100323111111'),('20100323222222'),('20100323333333'),('20100323555555'),('20100324111111'),('20100410111111'),('20100410264219'),('20100421080119'),('20100422080119'),('20100427080119'),('20100501080119'),('20100519080119'),('20100928045807'),('20100928052006'),('20100928142843'),('20100929052103'),('20100929061948'),('20100929062746'),('20100929135834'),('21'),('3'),('4'),('5'),('6'),('7'),('8'),('9');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'4b83f1adecfe957de1fd2de5eaf074cd','BAh7CToJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQYiCmZsYXNo\nSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7BjoLbm90\naWNlIhxMb2dnZWQgaW4gU3VjY2Vzc2Z1bGx5LgY6CkB1c2VkewY7ClQ=\n','2010-09-30 06:22:23','2010-09-30 06:22:42'),(2,'8f62f75bdceebd4a6e526f8644e2dcb6','BAh7CDoLbG9jYWxlOgplbi1VUzoMdXNlcl9pZGkdIgpmbGFzaElDOidBY3Rp\nb25Db250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpAdXNlZHsA\n','2010-09-30 06:22:23','2010-09-30 06:23:58'),(3,'a109bf4018e5e226f516229de82edc24','BAh7CDoLbG9jYWxlOgplbi1VUzoMdXNlcl9pZGkcIgpmbGFzaElDOidBY3Rp\nb25Db250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpAdXNlZHsA\n','2010-09-30 06:22:46','2010-09-30 06:23:43');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timings`
--

DROP TABLE IF EXISTS `timings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectable_type` varchar(255) DEFAULT NULL,
  `objectable_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `starting_time` time DEFAULT NULL,
  `ending_time` time DEFAULT NULL,
  `places_id` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timings`
--

LOCK TABLES `timings` WRITE;
/*!40000 ALTER TABLE `timings` DISABLE KEYS */;
INSERT INTO `timings` VALUES (1,'Competition',1,'Sed illo ipsum doloremque a perspiciatis quod consequatur magnam delectus sunt porro consequatur sit natus.',NULL,'2010-08-30','2010-09-30',NULL,NULL,'5',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(2,'Competition',2,'Commodi sit adipisci non ea accusamus vel quos sed illo soluta reiciendis eaque ipsam alias ex est cupiditate est.',NULL,'2010-08-30','2010-11-30',NULL,NULL,'1',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,'Exhibition',1,'In voluptatem cumque rerum quis eum qui autem consequatur odit corrupti officiis voluptatibus doloribus aliquid qui et ratione repellat.',10,'2010-11-12','2010-11-26',NULL,NULL,'5',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,'Exhibition',2,'Vitae est sapiente sed ipsa alias in mollitia voluptatem enim qui distinctio autem molestiae nesciunt eum.',17,'2011-02-25','2011-03-11',NULL,NULL,'1',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,'Exhibition',3,'Ut alias dolores ut deserunt reprehenderit labore accusamus recusandae voluptatibus iste sed odit quisquam quia voluptates.',1,'2010-06-30','2010-07-14',NULL,NULL,'3',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,'Exhibition',4,'Id ab iure vitae sit saepe cum ullam molestiae ut delectus id voluptates nesciunt aut quod voluptatem earum.',10,'2010-11-12','2010-11-26',NULL,NULL,'8',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,'Exhibition',5,'Id tempora omnis explicabo itaque quis ut consequatur nobis ex et deleniti perferendis reiciendis omnis labore.',2,'2010-07-15','2010-07-29',NULL,NULL,'7',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,'Exhibition',6,'Quae nihil alias inventore id reiciendis ad cum quo quam et tenetur est itaque voluptas.',14,'2011-01-11','2011-01-25',NULL,NULL,'4',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(9,'Exhibition',7,'Deserunt assumenda laudantium saepe non provident vitae et vel delectus aut cumque perferendis et modi distinctio quia.',15,'2011-01-26','2011-02-09',NULL,NULL,'5',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(10,'Exhibition',8,'Voluptatem corporis eum quis eius quam qui quasi maxime saepe non ea voluptates et autem sit sit quia.',7,'2010-09-28','2010-10-12',NULL,NULL,'2',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(11,'Exhibition',9,'Omnis cupiditate ea possimus et nihil debitis itaque et non quia quia mollitia sed reprehenderit at eum et velit.',10,'2010-11-12','2010-11-26',NULL,NULL,'3',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(12,'Exhibition',10,'Est aut sapiente adipisci et rerum laudantium et odio et ullam qui ex delectus id perferendis quod animi fuga.',14,'2011-01-11','2011-01-25',NULL,NULL,'8',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(13,'Exhibition',11,'Architecto veniam et aut voluptate iste dolorem corporis vitae et ducimus et soluta est qui officiis similique.',9,'2010-10-28','2010-11-11',NULL,NULL,'4',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(14,'Exhibition',12,'Repellat magnam odit eos aliquam totam ratione aut est eum perferendis id sit ipsum ut et sunt at sapiente.',16,'2011-02-10','2011-02-24',NULL,NULL,'4',NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43');
/*!40000 ALTER TABLE `timings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timings_places`
--

DROP TABLE IF EXISTS `timings_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timings_places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objekt_type` varchar(255) DEFAULT NULL,
  `objekt_id` int(11) DEFAULT NULL,
  `timing_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timings_places`
--

LOCK TABLES `timings_places` WRITE;
/*!40000 ALTER TABLE `timings_places` DISABLE KEYS */;
/*!40000 ALTER TABLE `timings_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `published` int(11) DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_groups_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,2,'Photographer 10a','',NULL,0,0,0,0,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(2,2,'Painter 10a','',NULL,0,0,0,0,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(3,2,'Drawer 10a','',NULL,0,0,0,0,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups_users`
--

DROP TABLE IF EXISTS `user_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups_users`
--

LOCK TABLES `user_groups_users` WRITE;
/*!40000 ALTER TABLE `user_groups_users` DISABLE KEYS */;
INSERT INTO `user_groups_users` VALUES (1,1,3,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(2,3,4,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(3,3,5,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(4,3,6,'2010-09-30 06:21:45','2010-09-30 06:21:45'),(5,3,7,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(6,1,8,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(7,1,9,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(8,2,10,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(9,2,11,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(10,1,12,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(11,2,13,'2010-09-30 06:21:46','2010-09-30 06:21:46'),(12,1,14,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(13,3,15,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(14,3,16,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(15,2,17,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(16,2,18,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(17,1,19,'2010-09-30 06:21:47','2010-09-30 06:21:47'),(18,2,20,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(19,2,21,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(20,1,22,'2010-09-30 06:21:48','2010-09-30 06:21:48');
/*!40000 ALTER TABLE `user_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar_file_name` varchar(100) DEFAULT NULL,
  `avatar_content_type` varchar(50) DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  `last_connected_at` datetime DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `u_layout` varchar(30) DEFAULT NULL,
  `u_per_page` int(11) DEFAULT NULL,
  `u_language` varchar(10) DEFAULT NULL,
  `crypted_password` varchar(40) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `password_reset_code` varchar(40) DEFAULT NULL,
  `system_role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(40) DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`),
  KEY `index_users_on_system_role_id` (`system_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'superadmin','contact@test.com',NULL,NULL,NULL,NULL,'2010-09-30 06:22:46',NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:20:17',NULL,NULL,1,NULL,NULL,'2010-09-30 06:20:17','2010-09-30 06:22:46'),(2,'admin','contact@test.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:20:17',NULL,NULL,2,NULL,NULL,'2010-09-30 06:20:17','2010-09-30 06:20:17'),(3,'jamison','rocio@kuhlmanwiza.us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:43',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(4,'madilyn_davis','santos@goodwin.biz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:43',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,'carmen_carroll','rick@lueilwitz.co.uk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:43',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,'arlie.boehm','bette_borer@jacobirolfson.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:43',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,'clark.cole','darrion.dickens@stark.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:43',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,'dino.murray','maymie@hudson.uk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:43',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(9,'sasha.toy','merritt@binshermiston.co.uk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(10,'geo_hermann','lauryn@gulgowskimclaughlin.name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(11,'elena.goldner','carroll@manteschmidt.biz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(12,'ryann','adela_abshire@vonrueden.ca',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(13,'tobin','samantha.kerluke@muller.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(14,'helen','bradford@gulgowskisanford.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(15,'brandy.funk','lonie@conroy.info',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(16,'savannah_howell','joshuah@pagac.co.uk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(17,'aric','camryn@pfannerstillschulist.co.uk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(18,'julie.auer','lorenz_schmidt@gleichner.co.uk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(19,'daphney','sigurd@wisoky.info',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(20,'lessie','sydni_runte@renner.name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(21,'hugh.lockman','dion@pagac.ca',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(22,'ryley','nathen_champlin@sipes.biz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2010-09-30 06:21:44',NULL,NULL,8,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(23,'a.kumar','amitbaraik@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'748b3b088c2acf96de227892b3b039e82f03afa2','ca68910e176a0e00fd6bff7a57580c03ef04324e','2010-09-30 06:23:18','87fa8ea452caf0ae7a927bd535d4cb9dfb9ccff4',NULL,10,NULL,NULL,'2010-09-30 06:23:18','2010-09-30 06:23:18'),(24,'k.pathak','kedar.pathak@pragtech.co.in',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43225099680122d8869e72ceaff6123f107c6f3c','4cb70dae298ea46264ebab0b88b810ef16da56f1','2010-09-30 06:23:30','b373073966b0aabde31a17dcf2f5c74c076a75bc',NULL,10,NULL,NULL,'2010-09-30 06:23:30','2010-09-30 06:23:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_containers`
--

DROP TABLE IF EXISTS `users_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `containerable_id` int(11) NOT NULL,
  `containerable_type` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_containers_on_containerable_id` (`containerable_id`),
  KEY `index_users_containers_on_containerable_type` (`containerable_type`),
  KEY `index_users_containers_on_user_id` (`user_id`),
  KEY `index_users_containers_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_containers`
--

LOCK TABLES `users_containers` WRITE;
/*!40000 ALTER TABLE `users_containers` DISABLE KEYS */;
INSERT INTO `users_containers` VALUES (1,1,'Workspace',4,1,'2010-09-30 06:20:27','2010-09-30 06:20:27'),(2,2,'Workspace',4,2,'2010-09-30 06:20:27','2010-09-30 06:20:27'),(3,3,'Workspace',4,2,'2010-09-30 06:21:36','2010-09-30 06:21:36'),(4,4,'Workspace',11,3,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(5,5,'Workspace',11,4,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(6,6,'Workspace',11,5,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(7,7,'Workspace',11,6,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(8,8,'Workspace',11,7,'2010-09-30 06:21:43','2010-09-30 06:21:43'),(9,9,'Workspace',11,8,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(10,10,'Workspace',11,9,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(11,11,'Workspace',11,10,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(12,12,'Workspace',11,11,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(13,13,'Workspace',11,12,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(14,14,'Workspace',11,13,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(15,15,'Workspace',11,14,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(16,16,'Workspace',11,15,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(17,17,'Workspace',11,16,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(18,18,'Workspace',11,17,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(19,19,'Workspace',11,18,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(20,20,'Workspace',11,19,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(21,21,'Workspace',11,20,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(22,22,'Workspace',11,21,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(23,23,'Workspace',11,22,'2010-09-30 06:21:44','2010-09-30 06:21:44'),(24,3,'Workspace',7,3,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(25,3,'Workspace',7,4,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(26,3,'Workspace',7,5,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(27,3,'Workspace',7,6,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(28,3,'Workspace',7,7,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(29,3,'Workspace',7,8,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(30,3,'Workspace',7,9,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(31,3,'Workspace',7,10,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(32,3,'Workspace',7,11,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(33,3,'Workspace',7,12,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(34,3,'Workspace',7,13,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(35,3,'Workspace',7,14,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(36,3,'Workspace',7,15,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(37,3,'Workspace',7,16,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(38,3,'Workspace',7,17,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(39,3,'Workspace',7,18,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(40,3,'Workspace',7,19,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(41,3,'Workspace',7,20,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(42,3,'Workspace',7,21,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(43,3,'Workspace',7,22,'2010-09-30 06:21:48','2010-09-30 06:21:48'),(44,24,'Workspace',11,23,'2010-09-30 06:23:23','2010-09-30 06:23:23'),(45,3,'workspace',1,23,'2010-09-30 06:23:23','2010-09-30 06:23:23'),(46,25,'Workspace',11,24,'2010-09-30 06:23:32','2010-09-30 06:23:32'),(47,3,'workspace',1,24,'2010-09-30 06:23:32','2010-09-30 06:23:32');
/*!40000 ALTER TABLE `users_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video_file_name` varchar(100) DEFAULT NULL,
  `video_content_type` varchar(20) DEFAULT NULL,
  `video_file_size` int(11) DEFAULT NULL,
  `video_updated_at` datetime DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT '0',
  `comments_number` int(11) DEFAULT '0',
  `rates_average` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT 'form',
  PRIMARY KEY (`id`),
  KEY `index_videos_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_urls`
--

DROP TABLE IF EXISTS `website_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `website_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_urls`
--

LOCK TABLES `website_urls` WRITE;
/*!40000 ALTER TABLE `website_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websites`
--

DROP TABLE IF EXISTS `websites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `websites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(15) DEFAULT NULL,
  `available_items` varchar(255) DEFAULT NULL,
  `logo_file_name` varchar(100) DEFAULT NULL,
  `logo_content_type` varchar(50) DEFAULT NULL,
  `logo_file_size` int(11) DEFAULT NULL,
  `available_types` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `home_page_id` int(11) DEFAULT NULL,
  `mail_page_id` int(11) DEFAULT NULL,
  `gallery_page_id` int(11) DEFAULT NULL,
  `intro_page_id` int(11) DEFAULT NULL,
  `favicon_file_name` varchar(255) DEFAULT NULL,
  `favicon_content_type` varchar(255) DEFAULT NULL,
  `favicon_file_size` varchar(255) DEFAULT NULL,
  `layout_file_name` varchar(255) DEFAULT NULL,
  `layout_content_type` varchar(255) DEFAULT NULL,
  `layout_file_size` varchar(255) DEFAULT NULL,
  `sitemap_file_name` varchar(255) DEFAULT NULL,
  `sitemap_content_type` varchar(255) DEFAULT NULL,
  `sitemap_file_size` varchar(255) DEFAULT NULL,
  `body_size` varchar(255) DEFAULT NULL,
  `website_state` varchar(255) DEFAULT 'under_construction',
  `template` varchar(255) DEFAULT 'default',
  PRIMARY KEY (`id`),
  KEY `index_websites_on_creator_id` (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websites`
--

LOCK TABLES `websites` WRITE;
/*!40000 ALTER TABLE `websites` DISABLE KEYS */;
/*!40000 ALTER TABLE `websites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workspaces`
--

DROP TABLE IF EXISTS `workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workspaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(15) DEFAULT NULL,
  `available_items` varchar(255) DEFAULT NULL,
  `logo_file_name` varchar(100) DEFAULT NULL,
  `logo_content_type` varchar(50) DEFAULT NULL,
  `logo_file_size` int(11) DEFAULT NULL,
  `available_types` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`id`),
  KEY `index_workspaces_on_creator_id` (`creator_id`),
  KEY `index_workspaces_on_state` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workspaces`
--

LOCK TABLES `workspaces` WRITE;
/*!40000 ALTER TABLE `workspaces` DISABLE KEYS */;
INSERT INTO `workspaces` VALUES (1,1,'Archive for superadmin','Archive for superadmin','private','newsletter,artwork,competition,exhibition,gallery',NULL,NULL,NULL,NULL,'2010-09-30 06:20:26','2010-09-30 06:20:26',NULL),(2,2,'Archive for Devil','Archive for Admin','private','newsletter,artwork,competition,exhibition,gallery',NULL,NULL,NULL,NULL,'2010-09-30 06:20:27','2010-09-30 06:20:27',NULL),(3,2,'Public data','Here are all the data shared by the administrator, the competitions for example.','public','competition,exhibition,gallery,users_group',NULL,NULL,NULL,NULL,'2010-09-30 06:21:36','2010-09-30 06:21:36',NULL),(4,3,'workspace','Dolor et corporis sed dolores sed consequatur consequuntur inventore qui sunt qui voluptates distinctio velit sit.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43',NULL),(5,4,'workspace','Numquam quas voluptatum necessitatibus omnis qui suscipit corporis quasi accusantium facere quod et molestias voluptatem cumque modi dolores.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43',NULL),(6,5,'workspace','Beatae et dolorem ipsa est nesciunt quasi sed consequuntur enim deleniti ea eos similique aspernatur omnis et.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43',NULL),(7,6,'workspace','Suscipit nulla omnis aut qui nesciunt doloribus eum dolore quidem id qui laborum cupiditate rem.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43',NULL),(8,7,'workspace','Aliquam sequi accusamus qui eos enim voluptas distinctio perferendis necessitatibus dolorem soluta tempore laudantium itaque et odio sed quos ipsum.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:43','2010-09-30 06:21:43',NULL),(9,8,'workspace','Tenetur delectus qui sequi accusantium fugiat sint voluptate qui odio et voluptates labore sunt facere tempora exercitationem.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(10,9,'workspace','At iste numquam necessitatibus velit harum ut sunt aut consequuntur vel architecto accusantium nobis expedita distinctio quia modi recusandae accusamus.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(11,10,'workspace','Dolorem saepe tempora id voluptas explicabo assumenda dolor non ullam vel voluptatem doloremque odit earum eaque.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(12,11,'workspace','Ut sunt aut aut provident excepturi laboriosam nam eum cum ut modi consequatur ullam non.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(13,12,'workspace','Eius harum est temporibus expedita quia rerum illo reiciendis consequatur commodi soluta est et sunt molestiae quam.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(14,13,'workspace','Sit autem ab consectetur esse quia iusto dolorem velit libero molestias odit officia temporibus hic nam nihil repudiandae.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(15,14,'workspace','Consequatur eveniet sit quae labore dolor sit qui laborum debitis hic ut ipsam qui recusandae voluptas deleniti quis inventore.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(16,15,'workspace','Velit vel repellendus dolorum ducimus aut molestiae necessitatibus perspiciatis exercitationem ex quia quos rerum officia omnis suscipit non deleniti officiis.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(17,16,'workspace','Eaque debitis sed beatae illo accusamus dolorem qui ut minima ut aut voluptatibus odit ut repellat incidunt vel consequuntur quia.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(18,17,'workspace','Placeat ab eum rerum esse dolore reiciendis vero illo molestiae et mollitia voluptate ex dicta qui.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(19,18,'workspace','Magnam labore quo aperiam hic nihil consequatur cum sit qui eius at inventore ipsa voluptas consectetur accusamus.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(20,19,'workspace','Nobis quae ea ut omnis dolore nulla maiores qui repudiandae praesentium dicta accusantium illum doloremque.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(21,20,'workspace','Non possimus pariatur deleniti deserunt dolores autem voluptas consequatur rerum molestiae eum accusamus ipsam dolorem enim sapiente et cumque.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(22,21,'workspace','Harum officiis vel reprehenderit enim voluptas amet dolor optio ipsa ea enim saepe quaerat architecto.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(23,22,'workspace','Dolor nesciunt dolore saepe hic doloribus assumenda omnis exercitationem odio vitae et laudantium qui quos aperiam quidem quia rerum et.','private','artwork,submited_work',NULL,NULL,NULL,NULL,'2010-09-30 06:21:44','2010-09-30 06:21:44',NULL),(24,23,'Amit kumar workspace','Workspace containing all the content created by the user a.kumar','private','artworks',NULL,NULL,NULL,NULL,'2010-09-30 06:23:23','2010-09-30 06:23:23','It is the first workspace for Amit kumar, it is where all his content will always be stock.'),(25,24,'kedar pathak workspace','Workspace containing all the content created by the user k.pathak','private','artworks',NULL,NULL,NULL,NULL,'2010-09-30 06:23:32','2010-09-30 06:23:32','It is the first workspace for kedar pathak, it is where all his content will always be stock.');
/*!40000 ALTER TABLE `workspaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-09-30  6:25:32
