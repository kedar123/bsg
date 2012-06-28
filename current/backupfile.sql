-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: gallery_development
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
-- Table structure for table `app_homes`
--

DROP TABLE IF EXISTS `app_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houres` varchar(255) DEFAULT NULL,
  `openings` text,
  `staff` text,
  `costs` text,
  `gallery_planlink` varchar(255) DEFAULT NULL,
  `bookings` text,
  `bsgproposallink` varchar(255) DEFAULT NULL,
  `opening_night` text,
  `staffed` varchar(255) DEFAULT NULL,
  `mailing_list_number` text,
  `mailing_list_desc` varchar(255) DEFAULT NULL,
  `invitation` varchar(255) DEFAULT NULL,
  `advertising` text,
  `sales` text,
  `your_obligations` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_homes`
--

LOCK TABLES `app_homes` WRITE;
/*!40000 ALTER TABLE `app_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_homes` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,2,'Qui Aut Quam','ex accusantium ex',NULL,'Autem voluptas sunt consectetur harum et. molestias voluptas sunt aut ipsa quisquam. consectetur sit ipsum et ut ex quaerat quia velit. voluptatem laudantium inventore ut laudantium adipisci in minus atque recusandae dicta. et excepturi omnis dolorem iure nulla molestias eius quae odio commodi qui non sit. molestiae omnis aut ad pariatur repellendus maxime corrupti quae eius explicabo quo eaque unde numquam voluptatum ipsum sed alias\n\nAt a voluptatem temporibus ipsam molestiae harum ut rem nemo ea magnam et velit facilis aperiam laborum ratione minus tempore. ullam qui quae et pariatur qui mollitia fugiat. non aut doloribus tempora rem nisi inventore aut sapiente nemo qui quos. eos odit amet nisi sit asperiores sit consectetur molestiae repellendus non aut et',34,25,0,'2011-08-12 12:58:51','2011-11-21 20:06:50',NULL,NULL),(2,2,'Vitae Quis','quis recusandae pariatur sapiente et',NULL,'Placeat repellat ullam ut commodi dicta aut aut. asperiores debitis eius ut delectus est laboriosam ipsum omnis dolores non distinctio enim. distinctio sit velit in eos voluptatem voluptatem quis molestias sit ut eaque dolorum qui velit rerum voluptatibus',8,29,4,'2011-11-07 23:40:07','2011-11-21 20:06:50',NULL,NULL),(3,1,'Neque Eos Corporis','impedit officiis illo est doloribus',NULL,'Porro similique incidunt dicta ea officia similique beatae occaecati a cupiditate vitae quas qui. modi ea aut quas hic velit placeat ipsum dolorum voluptas soluta voluptatibus sequi aspernatur fugiat cumque ut. aut similique saepe adipisci ratione sint laudantium voluptates deserunt placeat omnis molestias ducimus',81,24,3,'2010-01-25 06:26:48','2011-11-21 20:06:50',NULL,NULL),(4,2,'Autem','ut voluptatem ipsam earum dolor',NULL,'Pariatur libero quis nihil porro qui qui voluptatem eos ad delectus et natus ad qui et quia quia. temporibus et et voluptatibus voluptatibus eligendi delectus omnis facilis est consequatur ullam quae reiciendis repellat qui nihil et fugiat ut. similique illo voluptatem officia consequuntur possimus officiis qui veniam tenetur dolores in corrupti molestiae sint qui expedita ut ut. iste sequi voluptatem amet dolores qui veniam inventore quasi in eveniet recusandae asperiores libero quas sit maxime. et voluptatem veniam doloremque occaecati esse assumenda ut. voluptas voluptatem voluptas nihil est rerum qui eius quae ut voluptate quam dolorem earum quibusdam. itaque dignissimos minus quo velit dolorem odit\n\nA quos et nihil blanditiis aut nesciunt est a sed est asperiores modi sequi consequatur optio nisi nisi. consequatur voluptatem rerum beatae nesciunt quo dolores est fugit totam ducimus sed animi. debitis pariatur maiores cum recusandae sint ipsam delectus repellendus molestiae rerum quidem nobis ut totam adipisci facilis. praesentium similique optio perspiciatis sunt amet. porro et natus explicabo quo dolores iure dolores sint nihil excepturi aut illum. dolorum qui quo quia asperiores nam quia est enim necessitatibus',0,1,0,'2010-12-31 13:32:41','2011-11-21 20:06:50',NULL,NULL),(5,2,'Necessitatibus','aut dolor delectus quos',NULL,'Cupiditate fugiat enim occaecati et ea eos illum. beatae voluptatem facere illum in modi dolorum. doloremque voluptas possimus pariatur repudiandae odio ipsa aspernatur non deleniti facilis tenetur dolorem est eum nihil. ut fugit maxime nihil velit facere ipsum optio qui aliquid blanditiis\n\nEst autem atque sunt quam rerum enim harum laborum et eaque quod perferendis. consequuntur tenetur autem ipsam nobis fuga libero nihil autem veniam aut nihil et omnis officiis voluptatum pariatur repudiandae dolorem quis. repellat repellat fugit ut alias dolorem quam eaque dolore quis. qui illo quae tempora illo consequatur blanditiis illum architecto aut esse repudiandae omnis aliquid quaerat quae enim inventore enim. dolores optio suscipit laboriosam qui provident illum sit est voluptate ipsam. nesciunt illum repudiandae minus quia voluptatibus quisquam. sit et beatae ut quo nihil non deleniti mollitia et voluptatem nesciunt ut sapiente rerum fugit non nostrum repellat\n\nDeleniti nulla quod omnis qui deserunt consequatur rerum beatae perferendis illo cumque nemo doloribus debitis eos dolor quod sit. recusandae quia tenetur laboriosam eius suscipit aut dignissimos. rerum mollitia expedita sint tempora provident omnis pariatur sit sit consectetur consectetur provident repudiandae adipisci velit exercitationem fuga. expedita inventore aut qui est perspiciatis tenetur sint',54,96,3,'2011-08-09 09:54:35','2011-11-21 20:06:50',NULL,NULL),(6,1,'Ut Quo Quae','quod libero facilis',NULL,'Rem ipsam officia sequi omnis minima qui fugit consequatur nemo cupiditate beatae dolorum. harum ut alias dolorum qui quae minima aut molestias exercitationem laudantium unde atque tempore sunt a in eveniet. ipsum tempora reiciendis mollitia autem ut sit repellendus ab facere eum velit labore eos. facere quis dolores labore occaecati incidunt et fugiat optio. qui praesentium ratione ipsa modi\n\nItaque laborum dolores facere ipsa vel repellendus tempore a vel dolores ipsam labore qui velit distinctio consequuntur debitis tenetur. eos et eaque voluptates maxime sed libero occaecati omnis accusamus accusantium. et distinctio recusandae consectetur ut amet hic quasi qui aut harum. nobis qui sapiente porro quos sit et autem sequi voluptas expedita dolores error deserunt deleniti et harum et sit. explicabo consequatur hic qui nemo pariatur qui commodi sint quam dolores est iure totam magni. molestiae velit molestias voluptatibus est expedita veritatis explicabo',67,49,2,'2011-10-27 08:18:33','2011-11-21 20:06:50',NULL,NULL),(7,1,'Aut Sed In','eum quod optio voluptatibus',NULL,'Voluptates et nihil facilis nam veniam assumenda velit omnis est architecto perferendis delectus quis odit. eaque quaerat perspiciatis quasi rerum facilis voluptatem et quae voluptates aut asperiores laboriosam et at eum pariatur aliquid perspiciatis totam. rerum quisquam sed laboriosam enim nemo mollitia. corrupti vel omnis error laudantium atque sapiente aut delectus ullam corrupti aut autem commodi totam voluptas tenetur. est dolores ab adipisci omnis iure quia quis natus minima magni perferendis neque. beatae autem ut veniam nihil iusto. autem ullam velit et est possimus ratione laboriosam optio consequuntur iste minima veniam ut omnis porro aut vero. vel quaerat odio ea qui quaerat quam consequatur\n\nEt doloribus et veritatis sed porro dolores illum. quo cupiditate similique quas velit eos soluta dignissimos dolorum non voluptatibus et quam rerum exercitationem in quia. voluptas et odio odit mollitia eum quo corporis rem tenetur voluptatum vero eos optio ipsam cupiditate sit et atque ad. doloribus pariatur sit voluptatem blanditiis illum sit voluptatem aut cupiditate\n\nMinima eligendi distinctio velit quo velit reiciendis illo a similique dicta amet. molestias ea iste quo vel at veritatis. dolorum quidem nostrum possimus qui voluptas laudantium voluptatem error quis eligendi quia rerum. ea aliquid aspernatur ut consequatur odit officia saepe ut porro pariatur tempore molestiae. veritatis consequuntur molestiae exercitationem quo vitae. tempora voluptates quam eligendi neque voluptatum ipsa deleniti et voluptatem explicabo dolore. necessitatibus et ut nesciunt autem adipisci nobis quibusdam eum natus in. eum nihil possimus cum dolorem dolorem optio minus qui explicabo temporibus et ratione',29,60,0,'2010-01-07 22:19:37','2011-11-21 20:06:50',NULL,NULL),(8,2,'Id Id','et quia in id quisquam',NULL,'Vitae asperiores dolor velit voluptate expedita nesciunt vitae voluptas nisi tempore accusamus animi nesciunt. eos dolorem iusto accusamus perferendis amet impedit porro id ipsum. laborum temporibus accusantium architecto sunt illo laboriosam animi consequatur vitae corporis odio. aut minus ex fugiat et aut delectus esse amet et numquam. tenetur consequatur repellat recusandae aut laudantium non vero. eveniet blanditiis ut repellat ut ad recusandae aut in quae. et expedita commodi veritatis eos rem aliquam dolor et odit pariatur hic rerum voluptatum voluptates ut. libero ut quasi quis natus aut labore natus\n\nAt natus porro et molestias quasi dicta aliquid ullam. aliquid recusandae rem et repellat omnis cum beatae rerum vero molestiae praesentium totam est veritatis et sed. est quae ut esse officia facere provident alias autem eaque sint modi et maiores minus velit rerum eum',34,21,3,'2010-12-27 08:38:51','2011-11-21 20:06:50',NULL,NULL),(9,2,'Distinctio Ut Qui','nihil dolor deleniti',NULL,'Doloribus voluptatem facere delectus neque maiores quis explicabo rerum eum voluptatem atque atque eum dolorum et voluptas. a expedita et sed incidunt consequatur commodi. dolor totam id voluptatum accusantium facilis et distinctio qui ut itaque. et aut sit porro est sed vel ea amet ut tenetur dolorum. aut consequatur illum quaerat debitis\n\nVel laborum at est officiis delectus sit quasi qui maxime quod et ut et blanditiis eligendi et quos. et recusandae hic mollitia vel vel et et quis ducimus pariatur eveniet doloremque temporibus molestiae voluptatem. beatae excepturi quisquam et excepturi similique aperiam ut maiores similique excepturi nostrum. voluptatem omnis autem ex voluptas voluptate. quisquam aut iste sunt impedit laboriosam. omnis esse quia sint repudiandae. nemo culpa esse sunt quo voluptas. deleniti eum tempore atque et dignissimos iste sit sit nesciunt fuga',73,94,0,'2009-11-29 22:13:44','2011-11-21 20:06:50',NULL,NULL),(10,2,'Nihil Nulla In','voluptatem sequi impedit excepturi',NULL,'Perferendis error enim architecto dolore impedit nihil corporis nostrum laudantium delectus non. quia magni omnis commodi consequatur magnam et repellendus delectus quaerat veritatis autem alias quasi ullam et occaecati voluptatum minus. ab et quia eveniet suscipit quisquam nihil sit qui mollitia in iure et. doloremque molestiae nam qui sequi mollitia non sunt dolor quas alias dignissimos occaecati sed illum provident ab eos. voluptates aut impedit tempora cum amet ea itaque\n\nEnim in quam assumenda sapiente at itaque possimus quia accusamus impedit quia cumque nihil ut recusandae quaerat exercitationem expedita. inventore molestiae architecto necessitatibus doloremque sequi velit in est tempore neque temporibus velit. libero non ut perspiciatis accusamus quaerat tempore in adipisci est vitae aliquid aliquid dolorem ullam omnis quis. vero veniam omnis sit sint hic asperiores est ut aut et. consequatur voluptatem dolore est tempora qui magnam iste ut sequi quisquam facere corrupti cupiditate architecto sit asperiores ipsam occaecati. consequuntur labore aut sit libero qui in nam beatae enim deserunt expedita laudantium harum nulla sit sapiente dicta quibusdam\n\nSed porro sint est sed soluta distinctio. et et temporibus ipsum maxime est necessitatibus consectetur sapiente similique sunt laborum quisquam amet ut sed dolor qui pariatur. aut deleniti et voluptas quae ut voluptas quibusdam eum. eaque enim et unde deserunt sequi soluta aut ab sit. explicabo provident praesentium quidem autem est ut neque mollitia at accusantium sint odit voluptatem sed a occaecati',24,17,0,'2010-11-09 01:12:22','2011-11-21 20:06:50',NULL,NULL),(11,1,'Ea','laudantium quia dolor ab eum',NULL,'Inventore dolorum sint consequatur suscipit sit omnis et accusamus. architecto vero vitae atque quaerat est maxime neque ut ut cum qui asperiores. iusto et ea voluptas nisi deserunt a voluptate amet facilis voluptas cumque consequuntur iure voluptas laudantium. quo ea animi illo quis est excepturi molestias cupiditate corporis non iste qui vitae voluptatem ea. neque occaecati molestiae nisi est vero. aspernatur itaque quis aperiam laudantium quo. qui qui provident sequi aut est provident consequatur expedita unde ipsum et ipsam in ducimus qui perspiciatis recusandae\n\nQuaerat quod inventore explicabo eveniet animi tempore et et culpa assumenda in ipsam qui qui quod. beatae itaque est quia perferendis velit. id assumenda enim dicta et facilis reprehenderit. non hic quia et laboriosam iusto voluptatem vero assumenda dolores illo quod saepe voluptas commodi aliquam ut ab animi\n\nNeque minima sit quod dolores ea corrupti fugiat. facere soluta voluptatem a aut commodi est sed. ut inventore voluptatem repellat velit laborum error',44,16,2,'2010-06-30 18:57:06','2011-11-21 20:06:50',NULL,NULL),(12,1,'Occaecati','cupiditate hic architecto aliquam officia',NULL,'Ipsam culpa et sunt ea inventore saepe tempora ut consequatur culpa vel eaque eligendi. eveniet labore ab nesciunt enim earum vel eos laborum molestiae quia totam quia eaque similique necessitatibus asperiores sit qui veniam. id accusantium doloribus perspiciatis ut et saepe et officiis velit voluptas distinctio voluptas eaque\n\nSed natus optio vitae consequatur at et aut et doloribus sunt maxime ut consequatur ducimus sapiente deleniti ipsam hic. fugiat nihil est mollitia voluptatum est sed soluta ut. quis nisi sit libero impedit tenetur sed voluptate libero quo omnis. a corrupti vel dicta consequatur cumque\n\nEt quos velit incidunt similique et assumenda cupiditate. porro est quia quisquam quas doloremque nihil. itaque esse labore culpa ipsum explicabo voluptatem perspiciatis aut sit tempore enim quidem fugit amet amet autem dolor nihil aspernatur. omnis placeat ab dolorum nemo. tenetur accusantium et delectus voluptas aut ut suscipit exercitationem praesentium dolorem optio et nobis rem nemo. nobis praesentium esse non nulla consequuntur quis perspiciatis ipsum sunt veritatis error aut aut aut',7,9,4,'2011-06-03 14:49:49','2011-11-21 20:06:50',NULL,NULL),(13,2,'Temporibus Voluptatibus In','quia atque esse exercitationem non',NULL,'Repellat est itaque est distinctio nam minima sunt corrupti. dolores et perspiciatis rerum quo soluta et atque eveniet minima corrupti doloremque accusantium et temporibus et. ut ducimus error totam sequi qui necessitatibus repudiandae voluptatibus quos saepe eaque magni molestias dignissimos dicta deserunt eos qui consequatur. inventore repellendus distinctio voluptatum incidunt voluptas qui voluptas ex alias natus sint molestiae in voluptatum iure est',45,6,1,'2011-03-09 02:06:01','2011-11-21 20:06:50',NULL,NULL),(14,2,'Error','consequatur ipsa pariatur voluptatem',NULL,'Exercitationem cum sint temporibus placeat minima voluptatum vel nisi esse ut ullam natus accusantium officia. enim corrupti id inventore numquam nemo. tempora non quo atque neque dolor enim. omnis quis qui eveniet vel numquam architecto quasi dolorem ut. nobis ut cumque mollitia beatae nostrum sapiente eius culpa nam ipsam impedit nemo voluptas aut libero amet sed non. explicabo harum modi neque adipisci ut molestiae id\n\nVoluptatem aut optio vel et velit vel tempora quia quasi voluptas molestiae veritatis consequuntur voluptas praesentium reiciendis assumenda. autem debitis rem sed rerum neque. maxime est quae ut officia aut nesciunt aut iusto consequuntur non doloremque consequuntur. quibusdam voluptas magni incidunt aut laboriosam eveniet commodi explicabo placeat aut et atque et vel. harum modi commodi ab modi incidunt id explicabo rerum. ut repudiandae ad unde illo et. ut incidunt et eaque ad dignissimos officiis voluptas voluptatem porro rerum sed occaecati quasi est deserunt',49,24,0,'2011-10-18 10:47:55','2011-11-21 20:06:50',NULL,NULL),(15,2,'Et Quod','enim doloremque praesentium ducimus',NULL,'Earum laboriosam suscipit consequatur excepturi non voluptas magni pariatur consectetur assumenda et laborum consequatur. blanditiis praesentium nihil repudiandae vero sit esse molestias consectetur et necessitatibus maiores repellendus. laboriosam accusamus perferendis eius sapiente explicabo non qui nam voluptatum velit sequi repellendus quod. aut rem ipsum pariatur omnis quasi esse reiciendis voluptas voluptate voluptatem aut repellat. illum rem tempore laudantium assumenda dolorem corporis et adipisci natus sed debitis\n\nNesciunt voluptatibus nesciunt laborum eos qui qui magnam doloribus maxime vel consequatur. ipsum sequi animi reprehenderit magni. autem perspiciatis sint in consequuntur totam totam autem ab. doloribus deserunt et ut id quo maxime accusantium voluptates ut',60,14,1,'2011-06-22 04:54:55','2011-11-21 20:06:50',NULL,NULL),(16,2,'Soluta Alias Omnis','quisquam possimus sint',NULL,'Qui et eum praesentium quod qui qui repellendus dolor fuga. libero et laboriosam aliquid ullam id consequuntur facere cum dolores ut dolorum sapiente quia expedita nihil. tenetur eaque praesentium corrupti ut nihil in est error nemo. est aut autem fuga illum ratione animi natus sed dolor dolores aut. fugit eos tenetur ratione quis pariatur fuga dolore ducimus perferendis laborum possimus quam. alias voluptas et nulla sed ipsam fugit fuga doloremque aperiam aut nihil itaque',32,53,4,'2010-06-29 21:51:20','2011-11-21 20:06:50',NULL,NULL),(17,1,'Voluptate Nisi Et','voluptatum exercitationem voluptatem quasi dignissimos',NULL,'Facilis qui natus officiis dignissimos eius quod necessitatibus illo dolor id odio ipsam. cumque assumenda aliquam modi et ut sint voluptatem et sunt blanditiis rerum ut ea enim amet quod accusantium. illo autem consequatur et rem corrupti neque. maiores autem aut ad aut non',49,57,0,'2010-02-20 13:43:59','2011-11-21 20:06:50',NULL,NULL),(18,1,'Ea Sit','ullam consequatur ut similique aut',NULL,'Voluptatem maxime voluptatem tempora rerum esse voluptatum nulla enim fugit. sit praesentium exercitationem voluptas nam velit omnis et rerum fugiat nisi. numquam omnis ut illo dolor et enim eligendi pariatur rerum possimus officia qui numquam maiores rerum. tempore accusantium et non laboriosam. temporibus ut nihil quas veritatis molestias dolor voluptatem ut quod ex sed sapiente impedit nisi enim aut tempora aut. ut ea qui consequatur harum\n\nCorrupti autem eius voluptatum quia ut voluptas exercitationem nulla deleniti voluptatem. eos velit debitis quo ea et officiis omnis id enim quia laudantium omnis quia sunt amet sapiente quos autem magnam. laborum rerum quos veritatis aut adipisci consequatur soluta pariatur commodi. vero numquam ratione mollitia asperiores aliquam impedit quis quibusdam dolorem est',7,16,4,'2011-01-30 05:05:49','2011-11-21 20:06:50',NULL,NULL),(19,2,'Ea','illo et voluptatem',NULL,'Non qui dignissimos itaque ab omnis minima vel iste nam voluptatem quia optio blanditiis sit. accusamus iure dolorum id dicta illo veritatis mollitia ut. atque impedit amet et voluptas ut quia et et maiores possimus nostrum beatae inventore est aspernatur. dolorum ea eveniet ex itaque reprehenderit praesentium corrupti id asperiores ut et repellat ut non. vero blanditiis corporis et reprehenderit ducimus quibusdam est ut temporibus et repellendus vero. magni quia neque veritatis quam voluptate voluptates molestiae ratione qui deleniti a neque ab exercitationem corporis laboriosam unde. explicabo nulla non nostrum laboriosam non cumque quis dolor aut aut\n\nNulla omnis et cupiditate quidem totam explicabo culpa itaque blanditiis eos voluptas pariatur. numquam est hic est voluptatem totam quia velit recusandae possimus magnam aut ut non expedita et nulla consequatur sapiente eveniet. non ad est animi quo consequatur magnam\n\nTemporibus deserunt corrupti blanditiis occaecati praesentium. dolores voluptates voluptas aliquid dolorem nobis dolore dicta nihil ea iusto. aut molestiae ut quia sed aperiam qui perferendis voluptas assumenda enim enim commodi adipisci nobis repudiandae eligendi. quasi vel non est maiores laudantium deserunt odit eos id quidem et ut sapiente. atque eveniet illum ut recusandae possimus quas a neque vel sit omnis esse voluptas ut et laboriosam est. dolorem ut voluptatem ipsa voluptatum',3,59,2,'2011-03-11 14:16:58','2011-11-21 20:06:50',NULL,NULL),(20,1,'Autem','corrupti quia at ad',NULL,'Necessitatibus facilis non et eos deserunt quaerat iure dolores magni. et debitis facilis alias iusto sit quo dolor officia est consequatur. dolorem et sit autem ut quas aliquid quidem\n\nFugiat nesciunt animi rerum in voluptatum excepturi libero ex. quo quasi doloremque reprehenderit dolores et qui laboriosam aut delectus dicta dignissimos exercitationem non eaque eveniet optio totam aliquam dolore. rerum aliquid eum nam ut quia est. consequatur quia quia nisi dignissimos aut cupiditate et aliquam molestias veritatis praesentium. qui dolor eaque officia saepe maxime voluptatem quidem non a et numquam repellendus officiis consequatur\n\nIure et omnis ut aspernatur deserunt ut fuga dignissimos suscipit et. quaerat unde magni similique rerum est. illum iusto corrupti ut et inventore sit odio consequuntur est cumque consectetur consequatur voluptatum voluptatem omnis iure non minima. error quo corporis natus non excepturi deserunt dolorem non sit aut distinctio vel incidunt enim alias voluptatem. sit blanditiis aut rerum rerum culpa vel et ipsum cum ab. aut libero blanditiis voluptatem quaerat excepturi impedit voluptate et dolor sed quibusdam excepturi qui consequatur accusamus laudantium perferendis ratione. officia et alias provident fugiat eos ut',3,97,0,'2011-01-19 07:23:03','2011-11-21 20:06:50',NULL,NULL);
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
  `exhibition_id` int(11) DEFAULT NULL,
  `sold` tinyint(1) DEFAULT NULL,
  `sold_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_artworks_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks`
--

LOCK TABLES `artworks` WRITE;
/*!40000 ALTER TABLE `artworks` DISABLE KEYS */;
INSERT INTO `artworks` VALUES (1,11,'exhb1','','paper',8,8,8,'8',9,8,1,'images16.jpeg','image/jpeg',9036,'2011-11-25 11:51:02',NULL,0,0,0,0,NULL,'2011-11-25 06:21:03','2011-11-25 06:21:03',1,NULL,NULL),(2,11,'chair','','glass',7,7,7,'7',9,7,1,'images17.jpeg','image/jpeg',3802,'2011-11-25 11:51:31',NULL,0,0,0,0,NULL,'2011-11-25 06:21:31','2011-11-25 06:21:31',2,NULL,NULL),(3,11,'bsg1','','paper',5,5,5,'5',6,5,1,'images18.jpeg','image/jpeg',4235,'2011-11-25 12:20:27',NULL,0,0,0,0,NULL,'2011-11-25 06:50:27','2011-11-25 06:50:27',2,NULL,NULL),(4,11,'bsg2','','glass',7,7,7,'7',9,7,1,'images19.jpeg','image/jpeg',8366,'2011-11-25 12:20:55',NULL,0,0,0,0,NULL,'2011-11-25 06:50:56','2011-11-25 06:50:56',2,NULL,NULL);
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
  `image_name` varchar(255) DEFAULT NULL,
  `competitions_users_id` int(11) DEFAULT NULL,
  `sold` tinyint(1) DEFAULT NULL,
  `avatar_file_name` varchar(255) DEFAULT NULL,
  `avatar_content_type` varchar(255) DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  `artworkurl_file_name` varchar(255) DEFAULT NULL,
  `artworkurl_content_type` varchar(255) DEFAULT NULL,
  `artworkurl_file_size` int(11) DEFAULT NULL,
  `artworkurl_updated_at` datetime DEFAULT NULL,
  `prize_detail` varchar(255) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_artworks_competitions_on_competition_id` (`competition_id`),
  KEY `index_artworks_competitions_on_artwork_id` (`artwork_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks_competitions`
--

LOCK TABLES `artworks_competitions` WRITE;
/*!40000 ALTER TABLE `artworks_competitions` DISABLE KEYS */;
INSERT INTO `artworks_competitions` VALUES (1,NULL,1,'selected',NULL,'2011-11-24 06:08:30','2012-06-05 12:39:36','fworkimage',1,NULL,'images1.jpeg','image/jpeg',6849,'2011-11-24 11:38:30',NULL,NULL,NULL,NULL,NULL,0,NULL),(2,NULL,1,'selected',NULL,'2011-11-24 06:09:08','2012-06-05 12:40:08','sworkimage',1,NULL,'images2.jpeg','image/jpeg',13655,'2011-11-24 11:39:08',NULL,NULL,NULL,NULL,NULL,0,NULL),(3,NULL,1,'selected',NULL,'2011-11-24 06:09:39','2011-11-24 11:16:41','tworkimage',1,NULL,'images3.jpeg','image/jpeg',10698,'2011-11-24 11:39:39',NULL,NULL,NULL,NULL,NULL,1,NULL),(4,NULL,1,'selected',NULL,'2011-11-24 06:10:10','2012-06-05 12:40:31','foworkimage',1,NULL,'images5.jpeg','image/jpeg',11527,'2011-11-24 11:41:07',NULL,NULL,NULL,NULL,NULL,1,NULL),(5,NULL,2,NULL,NULL,'2011-11-24 07:47:19','2011-11-24 07:47:19','fworkimage',2,NULL,'images6.jpeg','image/jpeg',15805,'2011-11-24 13:17:19',NULL,NULL,NULL,NULL,NULL,0,NULL),(6,NULL,3,'selected',NULL,'2011-11-24 10:38:34','2012-06-05 12:46:17','fworkimage',3,NULL,'images8.jpeg','image/jpeg',8043,'2011-11-24 16:08:33',NULL,NULL,NULL,NULL,NULL,0,NULL),(7,NULL,4,NULL,NULL,'2011-11-24 10:39:27','2011-11-24 10:39:27','fworkimage',7,NULL,'images9.jpeg','image/jpeg',8943,'2011-11-24 16:09:27',NULL,NULL,NULL,NULL,NULL,0,NULL),(8,NULL,2,'unselected',NULL,'2011-11-24 10:40:10','2011-11-24 10:40:10','sworkimage',2,NULL,'images10.jpeg','image/jpeg',4276,'2011-11-24 16:10:10',NULL,NULL,NULL,NULL,NULL,0,NULL),(9,NULL,1,NULL,NULL,'2011-11-24 10:45:42','2011-11-24 10:45:42','fworkimage',8,NULL,'images11.jpeg','image/jpeg',8625,'2011-11-24 16:15:41',NULL,NULL,NULL,NULL,NULL,0,NULL),(10,NULL,1,'unselected',NULL,'2011-11-24 10:46:48','2011-11-24 10:46:48','sworkimage',8,NULL,'images12.jpeg','image/jpeg',5079,'2011-11-24 16:16:48',NULL,NULL,NULL,NULL,NULL,0,NULL),(11,NULL,4,'selected',NULL,'2011-11-24 10:56:05','2011-11-24 11:24:04','fworkimage',9,NULL,'images13.jpeg','image/jpeg',7096,'2011-11-24 16:26:05',NULL,NULL,NULL,NULL,NULL,1,NULL),(12,NULL,4,'selected',NULL,'2011-11-24 10:56:35','2011-11-24 11:24:17','sworkimage',9,NULL,'images14.jpeg','image/jpeg',5204,'2011-11-24 16:26:35',NULL,NULL,NULL,NULL,NULL,1,NULL),(13,NULL,6,'selected',NULL,'2012-06-09 09:15:37','2012-06-09 09:18:37','fworkimage',11,NULL,'shiva.jpeg','image/jpeg',8406,'2012-06-09 14:45:36',NULL,NULL,NULL,NULL,NULL,1,NULL),(14,NULL,7,NULL,NULL,'2012-06-22 09:36:26','2012-06-22 09:36:26','fworkimage',16,NULL,'shiva.jpeg','image/jpeg',8406,'2012-06-22 15:06:26',NULL,NULL,NULL,NULL,NULL,0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks_exhibitions`
--

LOCK TABLES `artworks_exhibitions` WRITE;
/*!40000 ALTER TABLE `artworks_exhibitions` DISABLE KEYS */;
INSERT INTO `artworks_exhibitions` VALUES (1,1,1,NULL,NULL,'2011-11-25 06:58:08','2011-11-25 06:58:08'),(2,3,2,NULL,NULL,'2012-06-14 07:09:59','2012-06-14 07:09:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audios`
--

LOCK TABLES `audios` WRITE;
/*!40000 ALTER TABLE `audios` DISABLE KEYS */;
INSERT INTO `audios` VALUES (1,1,'Iusto Sunt','voluptate eaque accusantium aut',NULL,NULL,NULL,NULL,NULL,90,87,0,'2010-07-17 20:03:51','2011-11-21 20:06:51',NULL,NULL),(2,2,'Quaerat Id Sit','voluptatem tempora id',NULL,NULL,NULL,NULL,NULL,28,44,1,'2011-03-20 04:00:14','2011-11-21 20:06:51',NULL,NULL),(3,1,'Quia Repellendus','atque quam consequatur officiis',NULL,NULL,NULL,NULL,NULL,36,9,3,'2010-01-29 17:49:29','2011-11-21 20:06:51',NULL,NULL),(4,2,'Ipsam A Ullam','reiciendis repudiandae explicabo ut',NULL,NULL,NULL,NULL,NULL,24,30,2,'2011-11-06 20:50:58','2011-11-21 20:06:51',NULL,NULL),(5,2,'Iure Aut Eveniet','nemo ut neque',NULL,NULL,NULL,NULL,NULL,12,94,3,'2010-09-25 19:16:39','2011-11-21 20:06:51',NULL,NULL),(6,2,'Commodi','ab excepturi ipsum',NULL,NULL,NULL,NULL,NULL,3,90,2,'2011-06-25 08:03:04','2011-11-21 20:06:51',NULL,NULL),(7,2,'Quod','sit eaque dolorem',NULL,NULL,NULL,NULL,NULL,6,19,2,'2011-02-03 06:07:20','2011-11-21 20:06:51',NULL,NULL),(8,1,'Quis Aperiam Doloremque','qui qui earum quas',NULL,NULL,NULL,NULL,NULL,51,14,2,'2011-03-17 20:24:01','2011-11-21 20:06:51',NULL,NULL),(9,2,'Ad Et Optio','sunt sed officia qui placeat',NULL,NULL,NULL,NULL,NULL,36,61,2,'2011-01-01 22:30:52','2011-11-21 20:06:51',NULL,NULL),(10,2,'Non Blanditiis','velit saepe omnis',NULL,NULL,NULL,NULL,NULL,70,60,0,'2010-06-10 16:58:26','2011-11-21 20:06:51',NULL,NULL),(11,1,'Ab','cupiditate unde voluptates atque id',NULL,NULL,NULL,NULL,NULL,73,30,1,'2011-09-26 18:39:19','2011-11-21 20:06:51',NULL,NULL),(12,1,'Nesciunt Pariatur','cumque facilis facere',NULL,NULL,NULL,NULL,NULL,43,20,4,'2011-05-12 05:07:37','2011-11-21 20:06:51',NULL,NULL),(13,1,'Numquam Illo In','magnam vitae ut quia at',NULL,NULL,NULL,NULL,NULL,31,47,0,'2010-07-14 05:14:11','2011-11-21 20:06:51',NULL,NULL),(14,2,'Debitis Quis','labore ut quidem ducimus',NULL,NULL,NULL,NULL,NULL,8,13,1,'2010-09-08 11:45:06','2011-11-21 20:06:51',NULL,NULL),(15,2,'Ut Reprehenderit','at asperiores ad minima',NULL,NULL,NULL,NULL,NULL,97,83,2,'2010-08-05 00:05:17','2011-11-21 20:06:51',NULL,NULL),(16,1,'Quibusdam','expedita et omnis blanditiis',NULL,NULL,NULL,NULL,NULL,77,88,1,'2011-08-17 07:13:53','2011-11-21 20:06:51',NULL,NULL),(17,2,'Dolores Est Aliquid','quia corporis quis',NULL,NULL,NULL,NULL,NULL,87,97,0,'2010-03-29 17:56:18','2011-11-21 20:06:51',NULL,NULL),(18,2,'Sint','rerum dignissimos assumenda dolor',NULL,NULL,NULL,NULL,NULL,50,45,4,'2009-11-29 06:17:07','2011-11-21 20:06:51',NULL,NULL),(19,2,'Magni Eveniet Veniam','laboriosam et rerum quisquam veritatis',NULL,NULL,NULL,NULL,NULL,94,17,4,'2010-10-22 14:53:54','2011-11-21 20:06:51',NULL,NULL),(20,2,'Animi','perferendis earum enim repellendus',NULL,NULL,NULL,NULL,NULL,57,47,4,'2010-02-19 17:57:33','2011-11-21 20:06:51',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
INSERT INTO `bookmarks` VALUES (1,2,NULL,'Aliquam','ea ut non',NULL,NULL,NULL,NULL,NULL,NULL,2,20,1,NULL,NULL,'2010-02-16 12:45:04','2011-11-21 20:06:51',NULL,NULL),(2,2,NULL,'Earum Qui','deleniti esse eos fugit voluptatem',NULL,NULL,NULL,NULL,NULL,NULL,79,69,1,NULL,NULL,'2011-08-27 17:21:26','2011-11-21 20:06:51',NULL,NULL),(3,2,NULL,'Quo Itaque Et','aut cumque voluptas laudantium id',NULL,NULL,NULL,NULL,NULL,NULL,30,2,3,NULL,NULL,'2010-11-24 05:51:18','2011-11-21 20:06:51',NULL,NULL),(4,2,NULL,'Omnis Excepturi','aut distinctio enim',NULL,NULL,NULL,NULL,NULL,NULL,6,47,4,NULL,NULL,'2010-02-13 06:05:22','2011-11-21 20:06:51',NULL,NULL),(5,2,NULL,'Deleniti','fugit odit quae',NULL,NULL,NULL,NULL,NULL,NULL,94,60,0,NULL,NULL,'2011-07-23 21:10:36','2011-11-21 20:06:51',NULL,NULL),(6,1,NULL,'Laborum Ab Nulla','ut voluptas error incidunt et',NULL,NULL,NULL,NULL,NULL,NULL,12,12,2,NULL,NULL,'2011-08-19 21:59:37','2011-11-21 20:06:51',NULL,NULL),(7,2,NULL,'Dicta Sit','nostrum omnis a quas animi',NULL,NULL,NULL,NULL,NULL,NULL,86,93,1,NULL,NULL,'2011-06-19 16:59:21','2011-11-21 20:06:51',NULL,NULL),(8,1,NULL,'Qui Consequatur Ea','ducimus fugit qui',NULL,NULL,NULL,NULL,NULL,NULL,75,25,1,NULL,NULL,'2010-09-23 06:49:01','2011-11-21 20:06:51',NULL,NULL),(9,2,NULL,'Suscipit Rerum','excepturi quis atque magni recusandae',NULL,NULL,NULL,NULL,NULL,NULL,9,48,3,NULL,NULL,'2010-06-30 06:35:17','2011-11-21 20:06:51',NULL,NULL),(10,1,NULL,'Asperiores','qui sed ad',NULL,NULL,NULL,NULL,NULL,NULL,92,29,2,NULL,NULL,'2011-07-30 05:56:43','2011-11-21 20:06:51',NULL,NULL),(11,2,NULL,'Aut','officiis error vitae',NULL,NULL,NULL,NULL,NULL,NULL,78,75,4,NULL,NULL,'2011-08-12 05:17:24','2011-11-21 20:06:51',NULL,NULL),(12,2,NULL,'Veritatis Consequuntur','sequi enim non',NULL,NULL,NULL,NULL,NULL,NULL,27,39,1,NULL,NULL,'2010-06-23 00:11:45','2011-11-21 20:06:51',NULL,NULL),(13,1,NULL,'Perferendis','natus quaerat sint laudantium',NULL,NULL,NULL,NULL,NULL,NULL,8,16,0,NULL,NULL,'2010-08-24 19:29:45','2011-11-21 20:06:51',NULL,NULL),(14,2,NULL,'Ut','aut commodi eligendi rem',NULL,NULL,NULL,NULL,NULL,NULL,68,30,2,NULL,NULL,'2010-08-21 06:44:26','2011-11-21 20:06:51',NULL,NULL),(15,1,NULL,'Dolorem Recusandae Aut','consequuntur enim voluptas ea',NULL,NULL,NULL,NULL,NULL,NULL,30,9,4,NULL,NULL,'2011-09-24 12:33:28','2011-11-21 20:06:51',NULL,NULL),(16,2,NULL,'Ea','qui voluptatem quaerat',NULL,NULL,NULL,NULL,NULL,NULL,87,90,1,NULL,NULL,'2010-07-09 21:49:33','2011-11-21 20:06:51',NULL,NULL),(17,1,NULL,'Cumque','temporibus aut accusamus sit',NULL,NULL,NULL,NULL,NULL,NULL,33,94,2,NULL,NULL,'2010-09-01 04:41:07','2011-11-21 20:06:51',NULL,NULL),(18,2,NULL,'Labore','assumenda consectetur aliquid dolore',NULL,NULL,NULL,NULL,NULL,NULL,43,8,1,NULL,NULL,'2010-08-22 08:18:01','2011-11-21 20:06:51',NULL,NULL),(19,2,NULL,'Ea Natus Et','deleniti voluptas error at incidunt',NULL,NULL,NULL,NULL,NULL,NULL,42,14,4,NULL,NULL,'2011-02-24 21:52:43','2011-11-21 20:06:51',NULL,NULL),(20,2,NULL,'Dolore Velit Fugit','eligendi aut exercitationem debitis',NULL,NULL,NULL,NULL,NULL,NULL,60,49,2,NULL,NULL,'2010-07-11 02:08:50','2011-11-21 20:06:51',NULL,NULL);
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booksshops`
--

DROP TABLE IF EXISTS `booksshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booksshops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookshopdetails` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booksshops`
--

LOCK TABLES `booksshops` WRITE;
/*!40000 ALTER TABLE `booksshops` DISABLE KEYS */;
INSERT INTO `booksshops` VALUES (1,'Crossword\r\n\r\nM.G Road, Pune, Maharashtra','2012-06-07 11:25:10','2012-06-07 11:25:10');
/*!40000 ALTER TABLE `booksshops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottomlines`
--

DROP TABLE IF EXISTS `bottomlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottomlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bottomline` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottomlines`
--

LOCK TABLES `bottomlines` WRITE;
/*!40000 ALTER TABLE `bottomlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `bottomlines` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Newsletter subscribers',NULL,'2011-11-21 14:37:14','2011-11-21 14:37:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_files`
--

LOCK TABLES `cms_files` WRITE;
/*!40000 ALTER TABLE `cms_files` DISABLE KEYS */;
INSERT INTO `cms_files` VALUES (1,1,'Fugit Facilis Explicabo','sit consequatur consequatur ut distinctio',NULL,NULL,NULL,NULL,NULL,93,62,2,'2010-02-25 03:26:21','2011-11-21 20:06:51',NULL,NULL),(2,1,'Voluptas Aliquid Consequatur','inventore ipsum rerum aspernatur',NULL,NULL,NULL,NULL,NULL,28,87,1,'2009-12-17 07:06:46','2011-11-21 20:06:51',NULL,NULL),(3,2,'Vitae Sint Voluptatem','deserunt veritatis et velit non',NULL,NULL,NULL,NULL,NULL,96,82,3,'2010-01-07 20:47:35','2011-11-21 20:06:51',NULL,NULL),(4,2,'Corrupti Laboriosam','dolorem maxime et sed non',NULL,NULL,NULL,NULL,NULL,59,61,2,'2010-05-08 01:16:28','2011-11-21 20:06:51',NULL,NULL),(5,1,'Ut Magni Voluptas','fugiat animi quas itaque itaque',NULL,NULL,NULL,NULL,NULL,45,51,4,'2011-03-20 14:35:38','2011-11-21 20:06:51',NULL,NULL),(6,2,'Laboriosam Libero','voluptas labore ducimus',NULL,NULL,NULL,NULL,NULL,70,99,1,'2010-09-21 20:51:14','2011-11-21 20:06:51',NULL,NULL),(7,2,'Voluptatum Consequatur','qui ut ullam nostrum',NULL,NULL,NULL,NULL,NULL,56,24,4,'2011-06-10 16:28:43','2011-11-21 20:06:51',NULL,NULL),(8,2,'Nemo','impedit dolores voluptatibus in',NULL,NULL,NULL,NULL,NULL,69,90,4,'2010-11-13 15:48:43','2011-11-21 20:06:51',NULL,NULL),(9,1,'Ut','quia hic maxime eos',NULL,NULL,NULL,NULL,NULL,53,40,0,'2011-09-21 05:56:23','2011-11-21 20:06:51',NULL,NULL),(10,1,'Modi Et','ea perferendis eligendi sunt eaque',NULL,NULL,NULL,NULL,NULL,36,47,4,'2010-02-22 03:16:42','2011-11-21 20:06:51',NULL,NULL),(11,2,'Vel Veritatis Vel','dolorem rerum voluptatem dolor rerum',NULL,NULL,NULL,NULL,NULL,42,57,0,'2011-02-03 12:39:46','2011-11-21 20:06:51',NULL,NULL),(12,2,'Doloremque Et','impedit expedita et',NULL,NULL,NULL,NULL,NULL,52,3,0,'2010-11-03 12:06:05','2011-11-21 20:06:51',NULL,NULL),(13,2,'Ad','accusantium qui aut',NULL,NULL,NULL,NULL,NULL,4,5,3,'2010-09-20 17:23:30','2011-11-21 20:06:51',NULL,NULL),(14,2,'Commodi','ut debitis aperiam aut',NULL,NULL,NULL,NULL,NULL,64,93,0,'2010-04-22 06:20:27','2011-11-21 20:06:51',NULL,NULL),(15,2,'Ratione Sunt','nihil nihil ut',NULL,NULL,NULL,NULL,NULL,98,6,4,'2010-03-20 11:20:32','2011-11-21 20:06:51',NULL,NULL),(16,2,'Facilis','quia consectetur quam doloribus autem',NULL,NULL,NULL,NULL,NULL,92,73,3,'2009-12-10 19:35:01','2011-11-21 20:06:51',NULL,NULL),(17,2,'Non','quas sit impedit assumenda',NULL,NULL,NULL,NULL,NULL,44,2,1,'2011-09-04 02:47:02','2011-11-21 20:06:51',NULL,NULL),(18,2,'Cumque Quas','magni quia voluptatem',NULL,NULL,NULL,NULL,NULL,34,93,2,'2010-05-12 01:19:27','2011-11-21 20:06:51',NULL,NULL),(19,1,'Blanditiis','possimus quasi reprehenderit in',NULL,NULL,NULL,NULL,NULL,90,26,2,'2010-06-25 22:29:42','2011-11-21 20:06:51',NULL,NULL),(20,1,'Explicabo Sunt Rerum','cumque corporis ullam doloremque',NULL,NULL,NULL,NULL,NULL,14,55,1,'2011-05-28 12:42:53','2011-11-21 20:06:51',NULL,NULL);
/*!40000 ALTER TABLE `cms_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columnnameandheaders`
--

DROP TABLE IF EXISTS `columnnameandheaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnnameandheaders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_header` varchar(255) DEFAULT NULL,
  `column_name` varchar(255) DEFAULT NULL,
  `idoffieldwithtablename` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columnnameandheaders`
--

LOCK TABLES `columnnameandheaders` WRITE;
/*!40000 ALTER TABLE `columnnameandheaders` DISABLE KEYS */;
INSERT INTO `columnnameandheaders` VALUES (1,'Entry Fee Format','entry_fees','1competition','2011-11-22 09:01:10','2011-11-22 09:01:10'),(2,'Collection','collection','1competition','2011-11-22 09:01:10','2011-11-22 09:01:10'),(3,'Insurance','insurance','1competition','2011-11-22 09:01:10','2011-11-22 09:01:10'),(4,'Delivery','delivery','1competition','2011-11-22 09:01:10','2011-11-22 09:01:10'),(5,'Location','location','1competition','2011-11-22 09:01:10','2011-11-22 09:01:10'),(6,'Description','description','1competition','2011-11-22 09:01:10','2011-11-22 09:01:10'),(7,'Format','format','1competition','2011-11-22 09:01:10','2011-11-22 09:01:10'),(8,'Commission','commission','1competition','2011-11-22 09:01:11','2011-11-22 09:01:11'),(9,'Prizes total amount','prizes_total_amount','1competition','2011-11-22 09:01:11','2011-11-22 09:01:11'),(10,'Prize Details','prizes_detail','1competition','2011-11-22 09:01:11','2011-11-22 09:01:11'),(11,'No of Entries','no_of_entry','1competition','2011-11-22 09:01:11','2011-11-22 09:01:11'),(12,'Judges','cjudges','1competition','2011-11-22 09:01:11','2011-11-22 09:01:11'),(13,'Message for subscribers','message_for_subscribers','1competition','2011-11-22 09:01:11','2011-11-22 09:01:11'),(14,'Deadline Of  Entries','submission_deadline','1competition','2011-11-22 09:01:11','2011-11-22 09:01:11'),(15,'Entry Fee Format','entry_fees','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(16,'Collection','collection','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(17,'Insurance','insurance','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(18,'Delivery','delivery','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(19,'Location','location','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(20,'Description','description','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(21,'Format','format','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(22,'Commission','commission','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(23,'Prizes total amount','prizes_total_amount','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(24,'Prize Details','prizes_detail','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(25,'No of Entries','no_of_entry','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(26,'Judges','cjudges','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(27,'Message for subscribers','message_for_subscribers','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(28,'Deadline Of  Entries','submission_deadline','2competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(29,'Entry Fee Format','entry_fees','3competition','2011-11-24 09:00:37','2011-11-24 09:00:37'),(30,'Collection','collection','3competition','2011-11-24 09:00:37','2011-11-24 09:00:37'),(31,'Insurance','insurance','3competition','2011-11-24 09:00:37','2011-11-24 09:00:37'),(32,'Delivery','delivery','3competition','2011-11-24 09:00:37','2011-11-24 09:00:37'),(33,'Location','location','3competition','2011-11-24 09:00:37','2011-11-24 09:00:37'),(34,'Description','description','3competition','2011-11-24 09:00:37','2011-11-24 09:00:37'),(35,'Format','format','3competition','2011-11-24 09:00:37','2011-11-24 09:00:37'),(36,'Commission','commission','3competition','2011-11-24 09:00:38','2011-11-24 09:00:38'),(37,'Prizes total amount','prizes_total_amount','3competition','2011-11-24 09:00:38','2011-11-24 09:00:38'),(38,'Prize Details','prizes_detail','3competition','2011-11-24 09:00:38','2011-11-24 09:00:38'),(39,'No of Entries','no_of_entry','3competition','2011-11-24 09:00:38','2011-11-24 09:00:38'),(40,'Judges','cjudges','3competition','2011-11-24 09:00:38','2011-11-24 09:00:38'),(41,'Message for subscribers','message_for_subscribers','3competition','2011-11-24 09:00:38','2011-11-24 09:00:38'),(42,'Deadline Of  Entries','submission_deadline','3competition','2011-11-24 09:00:38','2011-11-24 09:00:38'),(43,'Entry Fee Format','entry_fees','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(44,'Collection','collection','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(45,'Insurance','insurance','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(46,'Delivery','delivery','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(47,'Location','location','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(48,'Description','description','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(49,'Format','format','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(50,'Commission','commission','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(51,'Prizes total amount','prizes_total_amount','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(52,'Prize Details','prizes_detail','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(53,'No of Entries','no_of_entry','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(54,'Judges','cjudges','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(55,'Message for subscribers','message_for_subscribers','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(56,'Deadline Of  Entries','submission_deadline','4competition','2011-11-24 09:22:54','2011-11-24 09:22:54'),(57,'Entry Fee Format','entry_fees','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(58,'Collection','collection','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(59,'Insurance','insurance','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(60,'Delivery','delivery','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(61,'Location','location','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(62,'Description','description','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(63,'Format','format','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(64,'Commission','commission','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(65,'Prizes total amount','prizes_total_amount','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(66,'Prize Details','prizes_detail','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(67,'No of Entries','no_of_entry','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(68,'Judges','cjudges','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(69,'Message for subscribers','message_for_subscribers','5competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(70,'Deadline Of  Entries','submission_deadline','5competition','2012-06-01 08:26:23','2012-06-01 08:26:23'),(113,'Entry Fee Format','entry_fees','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(114,'Collection','collection','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(115,'Insurance','insurance','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(116,'Delivery','delivery','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(117,'Location','location','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(118,'Description','description','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(119,'Format','format','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(120,'Commission','commission','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(121,'Prizes total amount','prizes_total_amount','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(122,'Prize Details','prizes_detail','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(123,'No of Entries','no_of_entry','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(124,'Judges','cjudges','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(125,'Message for subscribers','message_for_subscribers','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(126,'Deadline Of  Entries','submission_deadline','6competition','2012-06-12 11:12:42','2012-06-12 11:12:42'),(127,'','entry_fees','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(128,'Collection','collection','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(129,'Insurance','insurance','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(130,'Delivery','delivery','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(131,'Location','location','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(132,'Description','description','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(133,'Format','format','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(134,'Commission','commission','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(135,'Prizes total amount','prizes_total_amount','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(136,'Prize Details','prizes_detail','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(137,'No of Entries','no_of_entry','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(138,'Judges','cjudges','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(139,'Message for subscribers','message_for_subscribers','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37'),(140,'Deadline Of  Entries','submission_deadline','7competition','2012-06-21 13:16:37','2012-06-21 13:16:37');
/*!40000 ALTER TABLE `columnnameandheaders` ENABLE KEYS */;
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
  `submission_deadline` date DEFAULT NULL,
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
  `entry_fees` text,
  `format` varchar(255) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL,
  `collection` varchar(255) DEFAULT NULL,
  `insurance` varchar(255) DEFAULT NULL,
  `return_of_artwork` text,
  `exhibition_date` varchar(255) DEFAULT NULL,
  `cjudges` varchar(255) DEFAULT NULL,
  `how_did_you_here` text,
  `notes` text,
  `openstatemsg` text,
  `publishfinalmsg` text,
  `resultmsg` text,
  PRIMARY KEY (`id`),
  KEY `index_competitions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,1,NULL,'first competition name','and some description of competition',NULL,'2011-11-19',1000,'1st prize $40\r\n2nd prize $80\r\n3rd prize $81\r\n4th prize $82\r\nand some other prizes will be dclaired at that time only',NULL,'5 % commission on object sold',NULL,NULL,'hi hello how are u im fine ok','final_published',10,0,0,0,NULL,'2011-11-22 09:01:10','2012-06-05 12:40:37','pune to borvali',10,NULL,'1 works $50\r\n2 works $60\r\n3 works $70\r\n4 works $80\r\n5 works $81\r\n6 works $82\r\n7 works $83\r\n8 works $84\r\n9 works $85\r\n10 works $86','and some formats','and some delivery','some collection','10% insurance of each photo price',NULL,NULL,'mark jeminson',NULL,'and some notes','open state message','publish final artwork message','publish result message'),(2,1,NULL,'fresh comp for test1','and description for competition',NULL,'2011-11-28',1000,'1st prize $40\r\nand some extra prizes will be delivered.after competition is over.',NULL,'5 % commission on object sold',NULL,NULL,'good luck','open',2,0,0,0,NULL,'2011-11-24 07:37:26','2011-11-24 11:00:08','pune to borvali',10,NULL,'1 works $50\r\n2 works $60\r\n3 works $61\r\n4 works $62\r\n5 works $63\r\n6 works $64\r\n7 works $65\r\n8 works $66\r\n9 works $67\r\n10 works $68','and some formats','and some delivery','some collection','10% insurance of each photo price',NULL,NULL,'mark jeminson',NULL,'and some notes','open state message','publish final artwork message','publish result message'),(3,1,NULL,'first competition name1','and description for competition',NULL,'2011-11-25',1000,'1st prize $40\r\nand some prizes',NULL,'5 % commission on object sold',NULL,NULL,'message for subscriber','final_published',4,0,0,0,NULL,'2011-11-24 09:00:37','2012-06-05 12:46:31','pune to borvali',10,NULL,'1 works $50\r\n2 works $60','and some formats','and some delivery','some collection','10% insurance of each photo price',NULL,NULL,'mark jeminson',NULL,'notes','open state message','publish final artwork message','publish result message'),(4,1,NULL,'first competition name2','and description for competition',NULL,'2011-11-27',1000,'1st prize $40\r\n2nd prize $80\r\nand some latest prizes',NULL,'5 % commission on object sold',NULL,NULL,'message for subscribers','open',6,0,0,0,NULL,'2011-11-24 09:22:53','2011-11-25 08:19:31','pune to borvali',10,NULL,'1 works $50\r\n2 works $52\r\n3 works $53\r\n4 works $54','and some formats','and some delivery','some collection','10% insurance of each photo price',NULL,NULL,'mark jeminson',NULL,'and the last notes','open state message','publish final artwork message','publish result message'),(5,2,NULL,'2012 competition','some description',NULL,'2012-06-13',100,'1st prize $40\r\n2nd prize $80\r\n3rd prize $85',NULL,'commission get 5%',NULL,NULL,'best of luck','final_published',3,0,0,0,NULL,'2012-06-01 08:26:22','2012-06-05 12:38:26','paris',12,NULL,'1 works $10\r\n2 works $20\r\n3 works $30','some format','and some delivery','some collectio','insurance secured',NULL,NULL,'mark ',NULL,'some notes','open state message','publish final artwork','publish result message'),(6,2,NULL,'Morya Art & Cultural Competetions','Painting Competition',NULL,'2012-06-30',0,'1st prize $80\r\n\r\n2nd prize $60\r\n\r\n3rd prize $40\r\n',NULL,'$200',NULL,NULL,'All Painters are invited','open',9,0,0,0,NULL,'2012-06-08 15:01:02','2012-06-15 11:27:21','Pune',20,NULL,'1 works $500\r\n2 works $1000','Painting','M.G. Road Pune, Maharashtra','M.G. Road Pune, Maharashtra','$20,000',NULL,NULL,'Shabbir Merchant, Mannan Badshah',NULL,'Application amount is non refundable','All the best','2012-07-05','2012-07-25'),(7,2,NULL,'Ajintha','Painting Competition',NULL,'2012-06-30',1000,'1st prize $40\r\n2nd prize $80\r\n3rd prize $100',NULL,'50',NULL,NULL,'gdgdgdgdgd','open',1,0,0,0,NULL,'2012-06-21 13:16:37','2012-06-21 13:16:41','Pune',30,NULL,'1 works $50\r\n2 works $50\r\n3 works $50\r\n4 works $50\r\n5 works $50\r\n6 works $50\r\n7 works $50\r\n8 works $50\r\n9 works $50\r\n10 works $50\r\n11 works $50\r\n12 works $50\r\n13 works $50\r\n14 works $50\r\n15 works $50\r\n16 works $50\r\n17 works $50\r\n18 works $50\r\n19 works $50\r\n20 works $50\r\n21 works $50\r\n22 works $50\r\n23 works $50\r\n24 works $50\r\n25 works $50\r\n26 works $50\r\n27 works $50\r\n28 works $50\r\n29 works $50\r\n30 works $50','fdshskffsfs','sfsfsfsfsf','sfsfsfsfsfs','2000',NULL,NULL,'MF Hussain',NULL,'gdgtwtwtwtw','ttwwwtw','twtwet3','twtwtwt');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions_subscriptions`
--

LOCK TABLES `competitions_subscriptions` WRITE;
/*!40000 ALTER TABLE `competitions_subscriptions` DISABLE KEYS */;
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
  `address` varchar(255) DEFAULT NULL,
  `bsb_no` varchar(255) DEFAULT NULL,
  `at_end_work` varchar(255) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `varification_code` varchar(255) DEFAULT NULL,
  `fsold` tinyint(1) DEFAULT NULL,
  `ssold` tinyint(1) DEFAULT NULL,
  `tsold` tinyint(1) DEFAULT NULL,
  `fosold` tinyint(1) DEFAULT NULL,
  `fisold` tinyint(1) DEFAULT NULL,
  `sisold` tinyint(1) DEFAULT NULL,
  `sesold` tinyint(1) DEFAULT NULL,
  `eisold` tinyint(1) DEFAULT NULL,
  `nsold` tinyint(1) DEFAULT NULL,
  `tesold` tinyint(1) DEFAULT NULL,
  `fworkedname` int(11) DEFAULT NULL,
  `sworkedname` int(11) DEFAULT NULL,
  `tworkedname` int(11) DEFAULT NULL,
  `foworkedname` int(11) DEFAULT NULL,
  `fiworkedname` int(11) DEFAULT NULL,
  `siworkedname` int(11) DEFAULT NULL,
  `seworkedname` int(11) DEFAULT NULL,
  `eiworkedname` int(11) DEFAULT NULL,
  `niworkedname` int(11) DEFAULT NULL,
  `teworkedname` int(11) DEFAULT NULL,
  `fworkednumber` int(11) DEFAULT NULL,
  `sworkednumber` int(11) DEFAULT NULL,
  `tworkednumber` int(11) DEFAULT NULL,
  `foworkednumber` int(11) DEFAULT NULL,
  `fiworkednumber` int(11) DEFAULT NULL,
  `siworkednumber` int(11) DEFAULT NULL,
  `seworkednumber` int(11) DEFAULT NULL,
  `eiworkednumber` int(11) DEFAULT NULL,
  `niworkednumber` int(11) DEFAULT NULL,
  `teworkednumber` int(11) DEFAULT NULL,
  `paidentry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_competitions_users_on_user_id` (`user_id`),
  KEY `index_competitions_users_on_competition_id` (`competition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions_users`
--

LOCK TABLES `competitions_users` WRITE;
/*!40000 ALTER TABLE `competitions_users` DISABLE KEYS */;
INSERT INTO `competitions_users` VALUES (1,3,NULL,1,'validated',0,'2011-11-22 10:03:13','2011-11-24 12:30:29','kedar pathak','kedar.pathak@pragtech.co.in','suburb',411038,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'faveroute','paper','5x5x5','5','1images1.jpeg','women','paper','5x5x5','5','1images2.jpeg','green','glass','7x7x7','7','1images3.jpeg','bike','paper','9x9x9','9','1images5.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'address',NULL,NULL,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,10,9,NULL,NULL,NULL,NULL,NULL,NULL,8,9,8,10,NULL,NULL,NULL,NULL,NULL,NULL,'3,4,'),(2,3,NULL,2,'accepted',0,'2011-11-24 07:40:15','2011-11-24 10:40:11','kedar pathak','kedar.pathak@pragtech.co.in','suburb',411038,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bike2','paper','7x7x7','74','2images6.jpeg','father','paper','5x5x5','5','2images10.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'address',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,NULL,3,'accepted',0,'2011-11-24 09:02:12','2011-11-24 10:38:34','kedar pathak','kedar.pathak@pragtech.co.in','suburb',411038,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'travel','paper','8x8x8','8','3images8.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'address',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,3,NULL,4,'accepted',0,'2011-11-24 10:08:48','2011-11-24 10:39:27','kedar pathak','kedar.pathak@pragtech.co.in','suburb',411038,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'study','glass','7x7x7','7','7images9.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'address',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,4,NULL,1,'accepted',0,'2011-11-24 10:43:46','2011-11-24 10:46:48','kedarr pathakk','pathakorama1@gmail.com','suburb1',4110381,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'son','paper','8x8x8','8','8images11.jpeg','bench','paper','6x6x6','6','8images12.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'address123',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,4,NULL,4,'validated',0,'2011-11-24 10:54:05','2011-11-24 10:56:36','kedarr pathakk','pathakorama1@gmail.com','suburb1',4110381,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fetch','paper','9x9x9','9','9images13.jpeg','flower','gold','7x7x7','7','9images14.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'address123',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1,2,'),(10,3,NULL,5,'accepted',0,'2012-06-01 08:27:28','2012-06-01 08:27:29','kedar pathak','kedar.pathak@pragtech.co.in','suburb',411038,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'address',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,11,NULL,6,'validated',0,'2012-06-08 15:22:08','2012-06-09 09:15:37','Vishal Bharti','vishalbharti.log@gmail.com','Ganeshnagar',933,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Naga Triology','Oil painting','80x50x7.5','70','11shiva.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Dange Chowk',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0,1,'),(12,12,NULL,6,'validated',0,'2012-06-09 11:14:33','2012-06-09 13:03:47','Joe Badger','joe@test.com','michee',834001,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Louise Street, Sydney',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1,'),(13,11,NULL,5,'accepted',0,'2012-06-21 12:54:40','2012-06-21 12:56:25','Vishal Kumar','vishalbharti.log@gmail.com','Ganeshnagar',2147483647,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Dange Chowk',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,11,NULL,7,'accepted',0,'2012-06-21 13:19:24','2012-06-22 06:38:32','Vishal Kumar','vishalbharti.log@gmail.com','Ganeshnagar',2147483647,NULL,NULL,'30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Dange Chowk',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,14,NULL,7,'accepted',0,'2012-06-22 06:45:58','2012-06-22 09:23:36','Vijender Kumar','vishu.nick@gmail.com','MG Road',834001,NULL,NULL,'30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fgsjhgfjsgjfs',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,15,NULL,7,'accepted',0,'2012-06-22 09:35:28','2012-06-22 10:26:43','hkhkhkhkh hkhkhkhlh','amitkumar@gmail.com','ggjgg',12131,NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsfsfs','fsfsfs','212x121x3','12','16shiva.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gjggjkjgkg',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,212,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,321,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `competitions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comptartworks`
--

DROP TABLE IF EXISTS `comptartworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comptartworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comptartworks`
--

LOCK TABLES `comptartworks` WRITE;
/*!40000 ALTER TABLE `comptartworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `comptartworks` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_workspaces`
--

LOCK TABLES `contacts_workspaces` WRITE;
/*!40000 ALTER TABLE `contacts_workspaces` DISABLE KEYS */;
INSERT INTO `contacts_workspaces` VALUES (1,2,3,'Profile',NULL,'9deeaa683c2bb016923038d84349444ae41d16a3','2011-11-21 14:50:14','2011-11-21 14:50:14'),(2,2,4,'Profile',NULL,'3de85f9310b664754f36b09f14a0bfc9d59cbe2f','2011-11-22 08:13:24','2011-11-22 08:13:24'),(3,2,7,'Profile',NULL,'cf17df0d2930def78e8eab34845f8c3eee349148','2011-11-24 12:23:16','2011-11-24 12:23:16'),(4,2,8,'Profile',NULL,'16b66a52f5a2ce9d36453cf9abc4d923c95a2145','2012-06-01 07:44:53','2012-06-01 07:44:53'),(5,2,9,'Profile',NULL,'0eda178e7c5186b6f7ee734b42ecac1b12c302d6','2012-06-01 07:52:14','2012-06-01 07:52:14'),(6,2,10,'Profile',NULL,'86cf11c121cc8fe066ee7f6c1fb11cfae732b3d3','2012-06-01 07:53:49','2012-06-01 07:53:49'),(7,2,11,'Profile',NULL,'f37c1841c91406ce2f5f6cdfab070dd8a9889253','2012-06-06 14:54:59','2012-06-06 14:54:59'),(8,2,12,'Profile',NULL,'d2694182b306254a924a7ff6c7fe77eeba1ae79f','2012-06-09 11:12:34','2012-06-09 11:12:34'),(9,2,13,'Profile',NULL,'0f9eeeaf9d839dbe48a7c953d6f36122c48ebc65','2012-06-13 14:09:32','2012-06-13 14:09:32'),(10,2,14,'Profile',NULL,'1039fc34b0d94953ff9c407d7b42a14532e27db6','2012-06-22 06:45:23','2012-06-22 06:45:23'),(11,2,15,'Profile',NULL,'9b1f9cddb81650e911543e41cb435d0190746a5d','2012-06-22 09:34:49','2012-06-22 09:34:49');
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
  `number` bigint(20) DEFAULT NULL,
  `expiring_date` date DEFAULT NULL,
  `verification_value` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_credit_cards_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
INSERT INTO `credit_cards` VALUES (1,3,NULL,'kedar','pathak',4987654321098769,'2001-05-01',123,'2011-11-23 10:39:53','2012-06-01 09:25:33'),(2,4,NULL,'','',4987654321098769,'2001-05-13',123,'2011-11-24 10:54:16','2011-11-24 10:54:16'),(3,11,NULL,'','',4987654321098769,'2001-05-01',123,'2012-06-08 15:22:21','2012-06-22 05:47:07'),(4,2,NULL,'','',4987654321098769,'2001-05-01',123,'2012-06-09 09:55:40','2012-06-09 09:55:40'),(5,12,NULL,'','',4987654321098769,'2001-05-01',123,'2012-06-09 11:15:06','2012-06-09 11:55:43');
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
-- Table structure for table `drawings`
--

DROP TABLE IF EXISTS `drawings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drawings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drawingdetails` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drawings`
--

LOCK TABLES `drawings` WRITE;
/*!40000 ALTER TABLE `drawings` DISABLE KEYS */;
/*!40000 ALTER TABLE `drawings` ENABLE KEYS */;
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
-- Table structure for table `emaillabels`
--

DROP TABLE IF EXISTS `emaillabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emaillabels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labelname` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emaillabels`
--

LOCK TABLES `emaillabels` WRITE;
/*!40000 ALTER TABLE `emaillabels` DISABLE KEYS */;
/*!40000 ALTER TABLE `emaillabels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhi_artworks`
--

DROP TABLE IF EXISTS `exhi_artworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhi_artworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhi_artworks`
--

LOCK TABLES `exhi_artworks` WRITE;
/*!40000 ALTER TABLE `exhi_artworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exhi_artworks` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibitions`
--

LOCK TABLES `exhibitions` WRITE;
/*!40000 ALTER TABLE `exhibitions` DISABLE KEYS */;
INSERT INTO `exhibitions` VALUES (1,1,'new exhibition','and some descriptin',NULL,19,0,0,0,NULL,'2011-11-23 12:53:02','2011-11-25 08:20:24'),(2,2,'new exhibition','and some descriptin',NULL,9,0,0,0,NULL,'2011-11-24 13:16:46','2012-06-14 07:21:21'),(3,1,'Morya','Exhibition',NULL,7,0,0,0,NULL,'2012-06-15 11:28:56','2012-06-16 10:28:30'),(4,2,'gf','fghgfh',NULL,1,0,0,0,NULL,'2012-06-15 13:22:22','2012-06-15 13:22:27'),(5,1,'fgfh','ffgh',NULL,0,0,0,0,NULL,'2012-06-15 14:50:46','2012-06-15 14:50:46'),(6,1,'fgfh','ffgh',NULL,0,0,0,0,NULL,'2012-06-15 14:51:19','2012-06-15 14:51:19'),(7,1,'Global','fghgfh',NULL,1,0,0,0,NULL,'2012-06-15 15:08:34','2012-06-15 15:08:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibitions_users`
--

LOCK TABLES `exhibitions_users` WRITE;
/*!40000 ALTER TABLE `exhibitions_users` DISABLE KEYS */;
INSERT INTO `exhibitions_users` VALUES (4,3,1,'2011-11-23 20:09:23','published',50,'2011-11-23 14:31:57','2011-11-25 06:58:27'),(6,11,2,NULL,'created',50,'2012-06-07 13:53:03','2012-06-07 13:53:05'),(7,3,2,'2011-11-24 18:47:57','invited',50,'2011-11-24 13:16:46','2011-11-24 13:17:57'),(8,11,3,NULL,'published',NULL,'2012-06-15 11:28:56','2012-06-15 11:58:47'),(9,7,4,NULL,'created',50,'2012-06-15 13:22:23','2012-06-15 13:22:23'),(10,7,5,NULL,'created',50,'2012-06-15 14:50:47','2012-06-15 14:50:47'),(11,7,6,NULL,'created',50,'2012-06-15 14:51:19','2012-06-15 14:51:20'),(12,11,7,NULL,'created',0,'2012-06-15 15:08:34','2012-06-15 15:08:35');
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
-- Table structure for table `frommails`
--

DROP TABLE IF EXISTS `frommails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frommails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frommail` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frommails`
--

LOCK TABLES `frommails` WRITE;
/*!40000 ALTER TABLE `frommails` DISABLE KEYS */;
/*!40000 ALTER TABLE `frommails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontendpics`
--

DROP TABLE IF EXISTS `frontendpics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frontendpics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `front_end_pics_file_name` varchar(255) DEFAULT NULL,
  `front_end_pics_content_type` varchar(255) DEFAULT NULL,
  `front_end_pics_file_size` int(11) DEFAULT NULL,
  `front_end_pics_updated_at` datetime DEFAULT NULL,
  `selectpic` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontendpics`
--

LOCK TABLES `frontendpics` WRITE;
/*!40000 ALTER TABLE `frontendpics` DISABLE KEYS */;
INSERT INTO `frontendpics` VALUES (3,'2012-06-07 07:04:54','2012-06-07 07:04:54','NATURE-Spring2_1024x768.jpg','image/jpeg',337087,'2012-06-07 12:34:51',1),(4,'2012-06-07 07:05:52','2012-06-07 07:05:52','Other-GreenMeadow.jpg','image/jpeg',182582,'2012-06-07 12:35:50',1),(5,'2012-06-07 07:06:54','2012-06-07 07:06:54','GNOME-AnotherGrass_1024x768.jpg','image/jpeg',287952,'2012-06-07 12:36:52',0),(6,'2012-06-07 07:06:59','2012-06-07 07:06:59','GNOME-AnotherGrass_1024x768.jpg','image/jpeg',287952,'2012-06-07 12:36:57',1),(7,'2012-06-07 07:08:32','2012-06-07 07:08:32','NATURE-GiantIceberg_1024x768.jpg','image/jpeg',119437,'2012-06-07 12:38:31',1),(8,'2012-06-07 07:09:16','2012-06-07 07:09:16','NATURE-AcadiaRockyBeach_1920x1200.png','image/png',4113974,'2012-06-07 12:39:12',1);
/*!40000 ALTER TABLE `frontendpics` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,1,'first gallery','and some description',50,NULL,1,0,0,0,NULL,'2011-11-23 14:20:49','2011-11-23 14:20:50');
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
-- Table structure for table `groupshowartworks`
--

DROP TABLE IF EXISTS `groupshowartworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupshowartworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupshow_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `artworkurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `size1` int(11) DEFAULT NULL,
  `size2` int(11) DEFAULT NULL,
  `size3` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sold` tinyint(1) DEFAULT NULL,
  `editionname` int(11) DEFAULT NULL,
  `editionumber` int(11) DEFAULT NULL,
  `artworkurl_file_name` varchar(255) DEFAULT NULL,
  `artworkurl_content_type` varchar(255) DEFAULT NULL,
  `artworkurl_file_size` int(11) DEFAULT NULL,
  `artworkurl_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupshowartworks`
--

LOCK TABLES `groupshowartworks` WRITE;
/*!40000 ALTER TABLE `groupshowartworks` DISABLE KEYS */;
INSERT INTO `groupshowartworks` VALUES (1,2,11,NULL,'Monalisa','Painting',110,80,5,450,'2012-06-07 11:40:15','2012-06-14 07:05:45',NULL,21,122,'shiva.jpeg','image/jpeg',8406,'2012-06-14 12:35:45'),(2,2,11,NULL,'The Nagas','Painting',200,100,4,400,'2012-06-14 07:17:35','2012-06-14 07:17:35',NULL,120,300,'shiva.jpeg','image/jpeg',8406,'2012-06-14 12:47:35');
/*!40000 ALTER TABLE `groupshowartworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupshows`
--

DROP TABLE IF EXISTS `groupshows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupshows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `note` text,
  `gallery_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_groupshows_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupshows`
--

LOCK TABLES `groupshows` WRITE;
/*!40000 ALTER TABLE `groupshows` DISABLE KEYS */;
INSERT INTO `groupshows` VALUES (1,NULL,'new groupshow1','and some description','2011-11-25','2011-11-30','and some notes','1','2011-11-25 07:28:26','2011-11-25 07:28:26'),(2,NULL,'Monalisa','Monalisa Painting','2011-11-25','2011-11-30','You are invited for the exhibition, kindly follow the instructions','1','2012-06-07 05:51:22','2012-06-07 05:51:22');
/*!40000 ALTER TABLE `groupshows` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'Veniam Doloremque Autem','ullam voluptas nesciunt dolore',NULL,NULL,NULL,NULL,NULL,55,68,0,'2011-01-04 01:28:31','2011-11-21 20:06:51',NULL,NULL),(2,1,'Temporibus Perspiciatis','veniam ut sint molestiae dolor',NULL,NULL,NULL,NULL,NULL,8,14,0,'2011-11-07 19:09:09','2011-11-21 20:06:51',NULL,NULL),(3,2,'Occaecati','est impedit explicabo',NULL,NULL,NULL,NULL,NULL,24,92,2,'2010-07-20 05:16:25','2011-11-21 20:06:51',NULL,NULL),(4,1,'Sequi Totam','voluptatum nobis magni est cum',NULL,NULL,NULL,NULL,NULL,9,46,2,'2011-03-20 09:08:02','2011-11-21 20:06:51',NULL,NULL),(5,2,'Asperiores Fuga Aut','iste iure ut',NULL,NULL,NULL,NULL,NULL,98,4,0,'2011-04-12 20:55:46','2011-11-21 20:06:51',NULL,NULL),(6,1,'Eum','praesentium nostrum quis quia et',NULL,NULL,NULL,NULL,NULL,41,96,0,'2011-11-14 05:22:08','2011-11-21 20:06:51',NULL,NULL),(7,1,'Illo In','distinctio autem magnam reiciendis ipsum',NULL,NULL,NULL,NULL,NULL,68,75,3,'2010-10-10 16:56:45','2011-11-21 20:06:51',NULL,NULL),(8,2,'Optio','blanditiis impedit consequatur et quo',NULL,NULL,NULL,NULL,NULL,89,7,4,'2011-09-29 03:58:50','2011-11-21 20:06:51',NULL,NULL),(9,1,'Et','placeat quia voluptatem doloremque',NULL,NULL,NULL,NULL,NULL,44,64,1,'2010-08-28 00:32:21','2011-11-21 20:06:51',NULL,NULL),(10,2,'Molestias Nisi','eum tenetur et',NULL,NULL,NULL,NULL,NULL,24,35,4,'2011-10-23 19:29:11','2011-11-21 20:06:51',NULL,NULL),(11,2,'Dolore Quia','qui qui qui alias',NULL,NULL,NULL,NULL,NULL,18,56,1,'2011-08-01 10:00:16','2011-11-21 20:06:51',NULL,NULL),(12,2,'Qui A Repellat','accusantium incidunt suscipit veritatis',NULL,NULL,NULL,NULL,NULL,26,5,4,'2010-07-29 17:18:52','2011-11-21 20:06:51',NULL,NULL),(13,1,'In Accusamus Voluptas','occaecati distinctio voluptas dolor',NULL,NULL,NULL,NULL,NULL,39,39,4,'2010-10-15 00:01:06','2011-11-21 20:06:51',NULL,NULL),(14,2,'Quidem','tempore iusto voluptatem sed',NULL,NULL,NULL,NULL,NULL,42,24,4,'2011-05-31 00:12:33','2011-11-21 20:06:51',NULL,NULL),(15,2,'Pariatur Est Nihil','ad dolore quis',NULL,NULL,NULL,NULL,NULL,37,76,1,'2009-12-24 23:40:14','2011-11-21 20:06:51',NULL,NULL),(16,2,'Recusandae Iste Alias','ea nisi quos sint',NULL,NULL,NULL,NULL,NULL,20,9,3,'2010-12-08 18:15:21','2011-11-21 20:06:51',NULL,NULL),(17,1,'Rem','dolor est aut',NULL,NULL,NULL,NULL,NULL,59,38,1,'2011-05-15 03:00:18','2011-11-21 20:06:51',NULL,NULL),(18,2,'Aut Deserunt','pariatur consequatur cum voluptatem',NULL,NULL,NULL,NULL,NULL,98,87,3,'2011-08-19 07:38:19','2011-11-21 20:06:51',NULL,NULL),(19,2,'Quo Accusantium Nulla','id voluptatem animi est',NULL,NULL,NULL,NULL,NULL,1,61,2,'2010-07-17 20:33:20','2011-11-21 20:06:51',NULL,NULL),(20,2,'Illo','fuga earum odio non',NULL,NULL,NULL,NULL,NULL,80,57,0,'2011-03-14 20:00:54','2011-11-21 20:06:51',NULL,NULL);
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
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoices_on_client_id` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,NULL,3,'CompetitionsUser',1,'I350467673','Invoice I350467673','Invoice for the subscription to the competition \'first competition name\'','validated','paypal','address india ','address india ','2011-11-30',110,110,'2011-11-23 16:11:02','2011-11-23 16:11:02','2011-11-23 10:41:02','2011-11-23 10:41:02',NULL),(2,NULL,3,'CompetitionsUser',1,'I127882836','Invoice I127882836','Invoice for the subscription to the competition \'first competition name\'','validated','paypal','address india ','address india ','2011-11-30',0,0,'2011-11-23 16:13:04','2011-11-23 16:13:04','2011-11-23 10:43:04','2011-11-23 10:43:04',NULL),(3,NULL,3,'CompetitionsUser',1,'I553323433','Invoice I553323433','Invoice for the subscription to the competition \'first competition name\'','validated','cash','address india ','address india ','2011-11-30',70,70,'2011-11-23 16:14:45',NULL,'2011-11-23 10:44:45','2011-11-23 10:46:03',NULL),(4,NULL,3,'CompetitionsUser',1,'I134633850','Invoice I134633850','Invoice for the subscription to the competition \'first competition name\'','validated','paypal','address india ','address india ','2011-11-30',80,80,'2011-11-23 16:16:03','2011-11-23 16:16:03','2011-11-23 10:46:03','2011-11-23 10:46:03',NULL),(7,NULL,4,'ExhibitionsUser',2,'I153126160','Invoice I153126160','First invoice for the subscription to the exhibition \'new exhibition\' (30% of the total amount)','created',NULL,NULL,NULL,'2011-11-30',0,0,NULL,NULL,'2011-11-23 14:24:16','2011-11-23 14:24:16',NULL),(8,NULL,4,'ExhibitionsUser',2,'I010845888','Invoice I010845888','Second invoice for the subscription to the competition \'new exhibition\' (70% of the total amount)','created',NULL,NULL,NULL,'2011-12-07',0,0,NULL,NULL,'2011-11-23 14:24:16','2011-11-23 14:24:16',NULL),(9,NULL,3,'ExhibitionsUser',4,'I210452812','Invoice I210452812','First invoice for the subscription to the exhibition \'new exhibition\' (30% of the total amount)','validated','online_validated',NULL,NULL,'2011-11-30',15,15,NULL,'2011-11-24 11:22:53','2011-11-23 14:39:14','2011-11-24 05:52:53',NULL),(10,NULL,3,'ExhibitionsUser',4,'I256165443','Invoice I256165443','Second invoice for the subscription to the competition \'new exhibition\' (70% of the total amount)','validated','online_validated',NULL,NULL,'2011-12-07',35,35,NULL,'2011-11-24 11:23:24','2011-11-23 14:39:14','2011-11-24 05:53:24',NULL),(11,NULL,3,'CompetitionsUser',2,'I643371824','Invoice I643371824','Invoice for the subscription to the competition \'fresh comp for test1\'','created','cash','address india ','address india ','2011-12-01',50,50,'2011-11-24 13:13:11',NULL,'2011-11-24 07:43:11','2011-11-24 07:43:11',NULL),(12,NULL,3,'CompetitionsUser',2,'I763574802','Invoice I763574802','Invoice for the subscription to the competition \'fresh comp for test1\'','created','cash','address india ','address india ','2011-12-01',60,60,'2011-11-24 14:19:26',NULL,'2011-11-24 08:49:26','2011-11-24 08:49:26',NULL),(13,NULL,3,'CompetitionsUser',3,'I460255822','Invoice I460255822','Invoice for the subscription to the competition \'first competition name1\'','created','cash','address india ','address india ','2011-12-01',50,50,'2011-11-24 14:32:23',NULL,'2011-11-24 09:02:23','2011-11-24 09:02:23',NULL),(14,NULL,3,'CompetitionsUser',4,'I653175006','Invoice I653175006','Invoice for the subscription to the competition \'first competition name2\'','validated','cash','address india ','address india ','2011-12-01',50,50,'2011-11-24 14:56:36',NULL,'2011-11-24 09:26:36','2011-11-24 09:32:07',NULL),(15,NULL,3,'CompetitionsUser',4,'I107416828','Invoice I107416828','Invoice for the subscription to the competition \'first competition name2\'','validated','paypal','address india ','address india ','2011-12-01',52,52,'2011-11-24 15:02:07','2011-11-24 15:02:07','2011-11-24 09:32:07','2011-11-24 09:32:07',NULL),(16,NULL,3,'CompetitionsUser',4,'I117628211','Invoice I117628211','Invoice for the subscription to the competition \'first competition name2\'','validated','paypal','address india ','address india ','2011-12-01',53,53,'2011-11-24 15:07:46','2011-11-24 15:07:46','2011-11-24 09:37:46','2011-11-24 09:37:46',NULL),(17,NULL,3,'CompetitionsUser',4,'I465506788','Invoice I465506788','Invoice for the subscription to the competition \'first competition name2\'','validated','online_validated','address india ','address india ','2011-12-01',54,54,'2011-11-24 15:09:34','2011-11-24 15:09:34','2011-11-24 09:39:34','2011-11-24 09:39:34',NULL),(18,NULL,3,'CompetitionsUser',6,'I413801782','Invoice I413801782','Invoice for the subscription to the competition \'first competition name2\'','created','cash','address india ','address india ','2011-12-01',50,50,'2011-11-24 15:26:53',NULL,'2011-11-24 09:56:53','2011-11-24 09:56:53',NULL),(19,NULL,3,'CompetitionsUser',7,'I417472607','Invoice I417472607','Invoice for the subscription to the competition \'first competition name2\'','created','cash','address india ','address india ','2011-12-01',50,50,'2011-11-24 15:40:19',NULL,'2011-11-24 10:10:19','2011-11-24 10:10:19',NULL),(20,NULL,4,'CompetitionsUser',8,'I675212616','Invoice I675212616','Invoice for the subscription to the competition \'first competition name\'','created','cheque','address123 india1 ','address123 india1 ','2011-12-01',110,110,'2011-11-24 16:14:41',NULL,'2011-11-24 10:44:41','2011-11-24 10:44:41',NULL),(21,NULL,4,'CompetitionsUser',9,'I233710364','Invoice I233710364','Invoice for the subscription to the competition \'first competition name2\'','validated','online_validated','address123 india1 ','address123 india1 ','2011-12-01',102,102,'2011-11-24 16:24:38','2011-11-24 16:24:38','2011-11-24 10:54:38','2011-11-24 10:54:38',NULL),(22,NULL,4,'Order',1,'I027687108','Invoice I027687108','Invoice generated after the validation of your cart the November 24, 2011 17:24','created','paypal',NULL,NULL,'2011-12-01',7,7,'2011-11-24 17:24:02',NULL,'2011-11-24 11:54:02','2011-11-24 11:54:02',NULL),(23,NULL,7,'Order',3,'I111420545','Invoice I111420545','Invoice generated after the validation of your cart the November 24, 2011 17:59','created','visa',NULL,NULL,'2011-12-01',7,7,'2011-11-24 17:59:56',NULL,'2011-11-24 12:29:56','2011-11-24 12:29:56',NULL),(24,NULL,4,'Order',5,'I544100634','Invoice I544100634','Invoice generated after the validation of your cart the November 24, 2011 18:00','created','visa',NULL,NULL,'2011-12-01',7,7,'2011-11-24 18:00:29',NULL,'2011-11-24 12:30:29','2011-11-24 12:30:29',NULL),(25,NULL,3,'ExhibitionsUser',7,'I668105053','Invoice I668105053','First invoice for the subscription to the exhibition \'new exhibition\' (30% of the total amount)','created','cash',NULL,NULL,'2011-12-01',15,15,NULL,NULL,'2011-11-24 13:17:48','2012-06-07 13:53:05',NULL),(26,NULL,3,'ExhibitionsUser',7,'I020273526','Invoice I020273526','Second invoice for the subscription to the competition \'new exhibition\' (70% of the total amount)','created',NULL,NULL,NULL,'2011-12-07',35,35,NULL,NULL,'2011-11-24 13:17:48','2012-06-07 13:53:05',NULL),(27,NULL,11,'CompetitionsUser',11,'I846106281','Invoice I846106281','Invoice for the subscription to the competition \'Morya Art & Cultural Competetion\'','validated','paypal','Dange Chowk India ','Dange Chowk India ','2012-06-16',500,500,'2012-06-09 12:06:14','2012-06-09 12:06:14','2012-06-09 06:36:14','2012-06-09 06:36:15',NULL),(28,NULL,12,'CompetitionsUser',12,'I036404766','Invoice I036404766','Invoice for the subscription to the competition \'Morya Art & Cultural Competetion\'','validated','paypal','Louise Street, Sydney Australia ','Louise Street, Sydney Australia ','2012-06-16',500,500,'2012-06-09 17:27:12','2012-06-09 17:27:12','2012-06-09 11:57:12','2012-06-09 11:57:12',NULL),(29,NULL,12,'CompetitionsUser',12,'I184681528','Invoice I184681528','Invoice for the subscription to the competition \'Morya Art & Cultural Competetion\'','validated','paypal','Louise Street, Sydney Australia ','Louise Street, Sydney Australia ','2012-06-16',0,0,'2012-06-09 18:27:36','2012-06-09 18:27:36','2012-06-09 12:57:36','2012-06-09 12:57:37',NULL),(30,NULL,12,'CompetitionsUser',12,'I373862738','Invoice I373862738','Invoice for the subscription to the competition \'Morya Art & Cultural Competetion\'','validated','paypal','Louise Street, Sydney Australia ','Louise Street, Sydney Australia ','2012-06-16',0,0,'2012-06-09 18:33:47','2012-06-09 18:33:47','2012-06-09 13:03:47','2012-06-09 13:03:47',NULL),(31,NULL,11,'ExhibitionsUser',8,'I682521888','Invoice I682521888','First invoice for the subscription to the exhibition \'Morya\' (30% of the total amount)','created','cash',NULL,NULL,'2012-06-22',0,0,NULL,NULL,'2012-06-15 11:58:23','2012-06-21 12:13:15',NULL),(32,NULL,11,'ExhibitionsUser',8,'I721205015','Invoice I721205015','Second invoice for the subscription to the competition \'Morya\' (70% of the total amount)','created',NULL,NULL,NULL,'2011-12-07',0,0,NULL,NULL,'2012-06-15 11:58:23','2012-06-15 11:58:23',NULL),(33,NULL,11,'Usergroupshow',2,'I138386840','Invoice I138386840','Invoice for the subscription to the GroupShow \'Monalisa\'','created','paypal','Dange Chowk India ','Dange Chowk India ','2012-06-27',50,50,'2012-06-20 19:53:27',NULL,'2012-06-20 14:23:25','2012-06-20 14:23:27',NULL),(34,NULL,11,'Usergroupshow',2,'I814480645','Invoice I814480645','Invoice for the subscription to the GroupShow \'Monalisa\'','created','paypal','Dange Chowk India ','Dange Chowk India ','2012-06-27',50,50,'2012-06-20 19:59:02',NULL,'2012-06-20 14:29:01','2012-06-20 14:29:02',NULL),(35,NULL,11,'Usergroupshow',3,'I121446710','Invoice I121446710','Invoice for the subscription to the GroupShow \'new groupshow1\'','created','paypal','Dange Chowk India ','Dange Chowk India ','2012-06-27',50,50,'2012-06-20 20:45:41',NULL,'2012-06-20 15:15:39','2012-06-20 15:15:41',NULL),(36,NULL,11,'CompetitionsUser',13,'I745002030','Invoice I745002030','Invoice for the subscription to the competition \'2012 competition\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',10,10,'2012-06-21 18:24:53',NULL,'2012-06-21 12:54:53','2012-06-21 12:54:53',NULL),(37,NULL,11,'CompetitionsUser',13,'I885044153','Invoice I885044153','Invoice for the subscription to the competition \'2012 competition\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',20,20,'2012-06-21 18:25:43',NULL,'2012-06-21 12:55:43','2012-06-21 12:55:43',NULL),(38,NULL,11,'CompetitionsUser',13,'I640637078','Invoice I640637078','Invoice for the subscription to the competition \'2012 competition\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',30,30,'2012-06-21 18:26:25',NULL,'2012-06-21 12:56:25','2012-06-21 12:56:25',NULL),(39,NULL,11,'CompetitionsUser',14,'I350241572','Invoice I350241572','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 18:49:38',NULL,'2012-06-21 13:19:38','2012-06-21 13:19:38',NULL),(40,NULL,11,'CompetitionsUser',14,'I570237368','Invoice I570237368','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 18:57:40',NULL,'2012-06-21 13:27:40','2012-06-21 13:27:40',NULL),(41,NULL,11,'CompetitionsUser',14,'I243665688','Invoice I243665688','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 19:34:20',NULL,'2012-06-21 14:04:20','2012-06-21 14:04:20',NULL),(42,NULL,11,'CompetitionsUser',14,'I078111712','Invoice I078111712','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 19:37:02',NULL,'2012-06-21 14:07:02','2012-06-21 14:07:02',NULL),(43,NULL,11,'CompetitionsUser',14,'I702308256','Invoice I702308256','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 19:42:42',NULL,'2012-06-21 14:12:42','2012-06-21 14:12:42',NULL),(44,NULL,11,'CompetitionsUser',14,'I662288085','Invoice I662288085','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 19:46:47',NULL,'2012-06-21 14:16:47','2012-06-21 14:16:47',NULL),(45,NULL,11,'CompetitionsUser',14,'I522366050','Invoice I522366050','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 19:48:50',NULL,'2012-06-21 14:18:50','2012-06-21 14:18:50',NULL),(46,NULL,11,'CompetitionsUser',14,'I615165486','Invoice I615165486','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 19:50:11',NULL,'2012-06-21 14:20:11','2012-06-21 14:20:11',NULL),(47,NULL,11,'CompetitionsUser',14,'I162628501','Invoice I162628501','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 19:53:11',NULL,'2012-06-21 14:23:11','2012-06-21 14:23:11',NULL),(48,NULL,11,'CompetitionsUser',14,'I510150886','Invoice I510150886','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 19:56:43',NULL,'2012-06-21 14:26:43','2012-06-21 14:26:43',NULL),(49,NULL,11,'CompetitionsUser',14,'I286681233','Invoice I286681233','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 20:00:05',NULL,'2012-06-21 14:30:05','2012-06-21 14:30:05',NULL),(50,NULL,11,'CompetitionsUser',14,'I657253137','Invoice I657253137','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 20:09:23',NULL,'2012-06-21 14:39:23','2012-06-21 14:39:23',NULL),(51,NULL,11,'CompetitionsUser',14,'I885547737','Invoice I885547737','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-28',50,50,'2012-06-21 20:42:21',NULL,'2012-06-21 15:12:21','2012-06-21 15:12:21',NULL),(52,NULL,11,'CompetitionsUser',14,'I638027383','Invoice I638027383','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',100,100,'2012-06-22 11:18:07',NULL,'2012-06-22 05:48:07','2012-06-22 05:48:07',NULL),(53,NULL,11,'CompetitionsUser',14,'I340688183','Invoice I340688183','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:24:18',NULL,'2012-06-22 05:54:18','2012-06-22 05:54:18',NULL),(54,NULL,11,'CompetitionsUser',14,'I505160327','Invoice I505160327','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:29:23',NULL,'2012-06-22 05:59:23','2012-06-22 05:59:23',NULL),(55,NULL,11,'CompetitionsUser',14,'I386367778','Invoice I386367778','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:32:52',NULL,'2012-06-22 06:02:52','2012-06-22 06:02:52',NULL),(56,NULL,11,'CompetitionsUser',14,'I451187671','Invoice I451187671','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:35:21',NULL,'2012-06-22 06:05:21','2012-06-22 06:05:21',NULL),(57,NULL,11,'CompetitionsUser',14,'I136427734','Invoice I136427734','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:39:00',NULL,'2012-06-22 06:09:00','2012-06-22 06:09:00',NULL),(58,NULL,11,'CompetitionsUser',14,'I332401343','Invoice I332401343','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:42:16',NULL,'2012-06-22 06:12:16','2012-06-22 06:12:16',NULL),(59,NULL,11,'CompetitionsUser',14,'I445078872','Invoice I445078872','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:44:50',NULL,'2012-06-22 06:14:50','2012-06-22 06:14:50',NULL),(60,NULL,11,'CompetitionsUser',14,'I608407788','Invoice I608407788','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:45:11',NULL,'2012-06-22 06:15:11','2012-06-22 06:15:11',NULL),(61,NULL,11,'CompetitionsUser',14,'I456641717','Invoice I456641717','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',100,100,'2012-06-22 11:46:39',NULL,'2012-06-22 06:16:39','2012-06-22 06:16:39',NULL),(62,NULL,11,'CompetitionsUser',14,'I535848840','Invoice I535848840','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:49:48',NULL,'2012-06-22 06:19:48','2012-06-22 06:19:48',NULL),(63,NULL,11,'CompetitionsUser',14,'I848684025','Invoice I848684025','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:51:59',NULL,'2012-06-22 06:21:59','2012-06-22 06:21:59',NULL),(64,NULL,11,'CompetitionsUser',14,'I381040021','Invoice I381040021','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:55:29',NULL,'2012-06-22 06:25:29','2012-06-22 06:25:29',NULL),(65,NULL,11,'CompetitionsUser',14,'I760068204','Invoice I760068204','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 11:58:11',NULL,'2012-06-22 06:28:11','2012-06-22 06:28:11',NULL),(66,NULL,11,'CompetitionsUser',14,'I073643413','Invoice I073643413','Invoice for the subscription to the competition \'Ajintha\'','created','cash','Dange Chowk India ','Dange Chowk India ','2012-06-29',50,50,'2012-06-22 12:08:33',NULL,'2012-06-22 06:38:33','2012-06-22 06:38:33',NULL),(67,NULL,14,'CompetitionsUser',15,'I575165106','Invoice I575165106','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:16:18',NULL,'2012-06-22 06:46:18','2012-06-22 06:46:18',NULL),(68,NULL,14,'CompetitionsUser',15,'I545612851','Invoice I545612851','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:20:58',NULL,'2012-06-22 06:50:58','2012-06-22 06:50:58',NULL),(69,NULL,14,'CompetitionsUser',15,'I338570236','Invoice I338570236','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:23:53',NULL,'2012-06-22 06:53:53','2012-06-22 06:53:53',NULL),(70,NULL,14,'CompetitionsUser',15,'I834316384','Invoice I834316384','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:27:59',NULL,'2012-06-22 06:57:59','2012-06-22 06:57:59',NULL),(71,NULL,14,'CompetitionsUser',15,'I487634345','Invoice I487634345','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:32:11',NULL,'2012-06-22 07:02:11','2012-06-22 07:02:11',NULL),(72,NULL,14,'CompetitionsUser',15,'I035754674','Invoice I035754674','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:35:07',NULL,'2012-06-22 07:05:07','2012-06-22 07:05:07',NULL),(73,NULL,14,'CompetitionsUser',15,'I386735420','Invoice I386735420','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:38:19',NULL,'2012-06-22 07:08:19','2012-06-22 07:08:19',NULL),(74,NULL,14,'CompetitionsUser',15,'I178222440','Invoice I178222440','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:40:22',NULL,'2012-06-22 07:10:22','2012-06-22 07:10:22',NULL),(75,NULL,14,'CompetitionsUser',15,'I385163166','Invoice I385163166','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:44:33',NULL,'2012-06-22 07:14:33','2012-06-22 07:14:33',NULL),(76,NULL,14,'CompetitionsUser',15,'I658802047','Invoice I658802047','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:52:33',NULL,'2012-06-22 07:22:33','2012-06-22 07:22:33',NULL),(77,NULL,14,'CompetitionsUser',15,'I102781750','Invoice I102781750','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:55:45',NULL,'2012-06-22 07:25:45','2012-06-22 07:25:45',NULL),(78,NULL,14,'CompetitionsUser',15,'I212603613','Invoice I212603613','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 12:58:55',NULL,'2012-06-22 07:28:55','2012-06-22 07:28:55',NULL),(79,NULL,14,'CompetitionsUser',15,'I540770478','Invoice I540770478','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 13:04:46',NULL,'2012-06-22 07:34:46','2012-06-22 07:34:46',NULL),(80,NULL,14,'CompetitionsUser',15,'I228327448','Invoice I228327448','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 13:05:54',NULL,'2012-06-22 07:35:54','2012-06-22 07:35:54',NULL),(81,NULL,14,'CompetitionsUser',15,'I056128357','Invoice I056128357','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 13:06:44',NULL,'2012-06-22 07:36:44','2012-06-22 07:36:44',NULL),(82,NULL,14,'CompetitionsUser',15,'I616006515','Invoice I616006515','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 13:09:40',NULL,'2012-06-22 07:39:40','2012-06-22 07:39:40',NULL),(83,NULL,14,'CompetitionsUser',15,'I774254327','Invoice I774254327','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:14:27',NULL,'2012-06-22 08:44:27','2012-06-22 08:44:27',NULL),(84,NULL,14,'CompetitionsUser',15,'I414161157','Invoice I414161157','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:16:49',NULL,'2012-06-22 08:46:49','2012-06-22 08:46:49',NULL),(85,NULL,14,'CompetitionsUser',15,'I141823811','Invoice I141823811','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:19:25',NULL,'2012-06-22 08:49:25','2012-06-22 08:49:25',NULL),(86,NULL,14,'CompetitionsUser',15,'I245068754','Invoice I245068754','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:22:29',NULL,'2012-06-22 08:52:29','2012-06-22 08:52:29',NULL),(87,NULL,14,'CompetitionsUser',15,'I873581630','Invoice I873581630','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:23:44',NULL,'2012-06-22 08:53:44','2012-06-22 08:53:44',NULL),(88,NULL,14,'CompetitionsUser',15,'I407580320','Invoice I407580320','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:27:28',NULL,'2012-06-22 08:57:28','2012-06-22 08:57:29',NULL),(89,NULL,14,'CompetitionsUser',15,'I738744478','Invoice I738744478','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:29:25',NULL,'2012-06-22 08:59:25','2012-06-22 08:59:25',NULL),(90,NULL,14,'CompetitionsUser',15,'I135363072','Invoice I135363072','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:33:53',NULL,'2012-06-22 09:03:53','2012-06-22 09:03:53',NULL),(91,NULL,14,'CompetitionsUser',15,'I554645887','Invoice I554645887','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:35:09',NULL,'2012-06-22 09:05:09','2012-06-22 09:05:09',NULL),(92,NULL,14,'CompetitionsUser',15,'I613317662','Invoice I613317662','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:38:50',NULL,'2012-06-22 09:08:50','2012-06-22 09:08:50',NULL),(93,NULL,14,'CompetitionsUser',15,'I853785373','Invoice I853785373','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:48:04',NULL,'2012-06-22 09:18:04','2012-06-22 09:18:04',NULL),(94,NULL,14,'CompetitionsUser',15,'I001523253','Invoice I001523253','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:50:20',NULL,'2012-06-22 09:20:20','2012-06-22 09:20:20',NULL),(95,NULL,14,'CompetitionsUser',15,'I754483540','Invoice I754483540','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:52:09',NULL,'2012-06-22 09:22:09','2012-06-22 09:22:09',NULL),(96,NULL,14,'CompetitionsUser',15,'I483275521','Invoice I483275521','Invoice for the subscription to the competition \'Ajintha\'','created','cash','fgsjhgfjsgjfs India ','fgsjhgfjsgjfs India ','2012-06-29',50,50,'2012-06-22 14:53:37',NULL,'2012-06-22 09:23:37','2012-06-22 09:23:37',NULL),(97,NULL,15,'CompetitionsUser',16,'I227030620','Invoice I227030620','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:05:37',NULL,'2012-06-22 09:35:37','2012-06-22 09:35:37',NULL),(98,NULL,15,'CompetitionsUser',16,'I130215703','Invoice I130215703','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:07:08',NULL,'2012-06-22 09:37:08','2012-06-22 09:37:08',NULL),(99,NULL,15,'CompetitionsUser',16,'I257377318','Invoice I257377318','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:17:56',NULL,'2012-06-22 09:47:56','2012-06-22 09:47:56',NULL),(100,NULL,15,'CompetitionsUser',16,'I321374345','Invoice I321374345','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:22:57',NULL,'2012-06-22 09:52:57','2012-06-22 09:52:57',NULL),(101,NULL,15,'CompetitionsUser',16,'I015372601','Invoice I015372601','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:24:55',NULL,'2012-06-22 09:54:55','2012-06-22 09:54:55',NULL),(102,NULL,15,'CompetitionsUser',16,'I612332861','Invoice I612332861','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:29:05',NULL,'2012-06-22 09:59:05','2012-06-22 09:59:05',NULL),(103,NULL,15,'CompetitionsUser',16,'I513777411','Invoice I513777411','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:32:08',NULL,'2012-06-22 10:02:08','2012-06-22 10:02:08',NULL),(104,NULL,15,'CompetitionsUser',16,'I860024404','Invoice I860024404','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:41:15',NULL,'2012-06-22 10:11:15','2012-06-22 10:11:15',NULL),(105,NULL,15,'CompetitionsUser',16,'I342367578','Invoice I342367578','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:43:01',NULL,'2012-06-22 10:13:01','2012-06-22 10:13:01',NULL),(106,NULL,15,'CompetitionsUser',16,'I716512867','Invoice I716512867','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:52:43',NULL,'2012-06-22 10:22:43','2012-06-22 10:22:43',NULL),(107,NULL,15,'CompetitionsUser',16,'I772412646','Invoice I772412646','Invoice for the subscription to the competition \'Ajintha\'','created','cash','gjggjkjgkg ggjgkjghj ','gjggjkjgkg ggjgkjghj ','2012-06-29',50,50,'2012-06-22 15:56:43',NULL,'2012-06-22 10:26:43','2012-06-22 10:26:43',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_workspaces`
--

LOCK TABLES `items_workspaces` WRITE;
/*!40000 ALTER TABLE `items_workspaces` DISABLE KEYS */;
INSERT INTO `items_workspaces` VALUES (1,1,1,'Competition','2011-11-22 09:01:10','2011-11-22 09:01:10'),(3,1,1,'Gallery','2011-11-23 14:20:50','2011-11-23 14:20:50'),(6,3,1,'Exhibition','2011-11-23 14:31:57','2011-11-23 14:31:57'),(7,1,2,'Competition','2011-11-24 07:37:26','2011-11-24 07:37:26'),(8,1,3,'Competition','2011-11-24 09:00:37','2011-11-24 09:00:37'),(9,1,4,'Competition','2011-11-24 09:22:53','2011-11-24 09:22:53'),(11,5,1,'Artwork','2011-11-25 06:21:03','2011-11-25 06:21:03'),(12,5,2,'Artwork','2011-11-25 06:21:31','2011-11-25 06:21:31'),(13,5,3,'Artwork','2011-11-25 06:50:27','2011-11-25 06:50:27'),(14,5,4,'Artwork','2011-11-25 06:50:56','2011-11-25 06:50:56'),(15,2,5,'Competition','2012-06-01 08:26:22','2012-06-01 08:26:22'),(16,3,2,'Exhibition','2012-06-07 13:53:03','2012-06-07 13:53:03'),(17,2,6,'Competition','2012-06-08 15:01:02','2012-06-08 15:01:02'),(18,2,3,'Exhibition','2012-06-15 11:28:56','2012-06-15 11:28:56'),(19,2,4,'Exhibition','2012-06-15 13:22:22','2012-06-15 13:22:22'),(20,2,5,'Exhibition','2012-06-15 14:50:47','2012-06-15 14:50:47'),(21,2,6,'Exhibition','2012-06-15 14:51:19','2012-06-15 14:51:19'),(22,2,7,'Exhibition','2012-06-15 15:08:34','2012-06-15 15:08:34'),(23,2,7,'Competition','2012-06-21 13:16:37','2012-06-21 13:16:37');
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
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) DEFAULT NULL,
  `link_src` varchar(255) DEFAULT NULL,
  `approve` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailfolders`
--

DROP TABLE IF EXISTS `mailfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailfolders`
--

LOCK TABLES `mailfolders` WRITE;
/*!40000 ALTER TABLE `mailfolders` DISABLE KEYS */;
INSERT INTO `mailfolders` VALUES (1,3,NULL,'Inbox','2011-11-21 14:50:14','2011-11-21 14:50:14'),(2,4,NULL,'Inbox','2011-11-22 08:13:24','2011-11-22 08:13:24'),(3,1,NULL,'inbox','2011-11-24 07:28:04','2011-11-24 07:28:04'),(4,2,NULL,'inbox','2011-11-24 07:28:05','2011-11-24 07:28:05'),(7,7,NULL,'Inbox','2011-11-24 12:23:16','2011-11-24 12:23:16'),(8,8,NULL,'Inbox','2012-06-01 07:44:53','2012-06-01 07:44:53'),(9,9,NULL,'Inbox','2012-06-01 07:52:13','2012-06-01 07:52:13'),(10,10,NULL,'Inbox','2012-06-01 07:53:49','2012-06-01 07:53:49'),(11,11,NULL,'Inbox','2012-06-06 14:54:58','2012-06-06 14:54:58'),(12,12,NULL,'Inbox','2012-06-09 11:12:34','2012-06-09 11:12:34'),(13,13,NULL,'Inbox','2012-06-13 14:09:31','2012-06-13 14:09:31'),(14,14,NULL,'Inbox','2012-06-22 06:45:23','2012-06-22 06:45:23'),(15,15,NULL,'Inbox','2012-06-22 09:34:48','2012-06-22 09:34:48');
/*!40000 ALTER TABLE `mailfolders` ENABLE KEYS */;
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
-- Table structure for table `message_copies`
--

DROP TABLE IF EXISTS `message_copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_copies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `mailfolder_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `emaillabel_id` int(11) DEFAULT NULL,
  `labeled` tinyint(1) DEFAULT NULL,
  `flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_copies`
--

LOCK TABLES `message_copies` WRITE;
/*!40000 ALTER TABLE `message_copies` DISABLE KEYS */;
INSERT INTO `message_copies` VALUES (1,4,1,2,NULL,'2011-11-24 11:54:02',NULL,NULL,NULL,NULL),(2,7,2,7,NULL,'2011-11-24 12:29:56',NULL,NULL,NULL,NULL),(3,4,3,2,NULL,'2011-11-24 12:30:29',NULL,NULL,NULL,NULL),(4,11,4,11,NULL,'2012-06-09 09:37:33',NULL,NULL,NULL,NULL),(5,13,5,13,NULL,'2012-06-15 11:37:29',NULL,NULL,NULL,NULL),(6,11,6,11,NULL,'2012-06-20 14:23:25',NULL,NULL,NULL,NULL),(7,11,7,11,NULL,'2012-06-20 14:29:02',NULL,NULL,NULL,NULL),(8,11,8,11,NULL,'2012-06-20 15:15:39',NULL,NULL,NULL,NULL),(9,14,9,14,NULL,'2012-06-22 12:06:56',NULL,NULL,NULL,NULL),(10,14,10,14,NULL,'2012-06-22 12:13:12',NULL,NULL,NULL,NULL);
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
  `flag` tinyint(1) DEFAULT NULL,
  `deletedm` tinyint(1) DEFAULT NULL,
  `deletedmt` tinyint(1) DEFAULT NULL,
  `deletefrom` varchar(255) DEFAULT NULL,
  `deleteto` varchar(255) DEFAULT NULL,
  `deletefromt` varchar(255) DEFAULT NULL,
  `deletetot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,2,'Invoice I027687108','Hello, Please find attached your invoice For Your Payment For ','2011-11-24 11:54:02','2011-11-24 11:54:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Invoice I111420545','Hello, Please find attached your invoice For Your Payment For ','2011-11-24 12:29:56','2011-11-24 12:29:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,2,'Invoice I544100634','Hello, Please find attached your invoice For Your Payment For ','2011-11-24 12:30:29','2011-11-24 12:30:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,2,'BSG- Morya Art & culture','Dear Vishal,\r\n\r\nCongratullations your painting has been selected for next rounds.\r\n\r\nThankyou\r\n\r\nTeam BSG<br/><font color=\'#FF0080\'> \r\nTEAM BSG\r\n</font>','2012-06-09 09:37:33','2012-06-09 09:37:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,2,'ddd','sdsdsds<br/><font color=\'#FF0080\'> \r\ndsds\r\n</font>','2012-06-15 11:37:29','2012-06-15 11:37:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,2,'Invoice I138386840','Hello, Please find attached your invoice For Your Payment For ','2012-06-20 14:23:25','2012-06-20 14:23:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,2,'Invoice I814480645','Hello, Please find attached your invoice For Your Payment For ','2012-06-20 14:29:02','2012-06-20 14:29:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,2,'Invoice I121446710','Hello, Please find attached your invoice For Your Payment For ','2012-06-20 15:15:39','2012-06-20 15:15:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,2,'Just 4 trial','Hey uhsfsliukhhhhhhf,\r\n\r\n\r\ndygkdgwyugwebfvweftgwliglwegfg<br/><font color=\'#FF0080\'> \r\nefweefyiwyh,\r\n</font>','2012-06-22 12:06:56','2012-06-22 12:06:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,2,'Trial 2','Welcome Vishal,\r\n\r\njhgkuyhgkehgheg\r\n\r\nghegkhekghekhgle<br/><font color=\'#FF0080\'> \r\nTeam BSG\r\n</font>','2012-06-22 12:13:12','2012-06-22 12:13:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletteremails`
--

DROP TABLE IF EXISTS `newsletteremails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletteremails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `newsletter_id` int(11) DEFAULT NULL,
  `emailsend` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletteremails`
--

LOCK TABLES `newsletteremails` WRITE;
/*!40000 ALTER TABLE `newsletteremails` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletteremails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `news_letter_content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
INSERT INTO `newsletters` VALUES (1,'','<div style=\"text-align: left; border: 1px solid rgb(119, 125, 133); background-color: rgb(255, 255, 255);\">\r\n<table cellspacing=\"15\" cellpadding=\"0\" align=\"center\">\r\n    <tbody>\r\n        <tr valign=\"top\">\r\n            <td colspan=\"4\">&nbsp;</td>\r\n        </tr>\r\n        <tr valign=\"top\">\r\n            <td width=\"20px\" rowspan=\"12\">&nbsp;</td>\r\n            <td colspan=\"1\">\r\n            <p style=\"color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 24px; margin-top: 0pt; margin-bottom: 0px;\">NEW SHOWS AT BSG</p>\r\n            <p style=\"color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 14px; margin-top: 0pt; margin-bottom: 5px;\">Please come and join us for drinks with the artists at BSG this Friday 1 July at 6pm. All welcome</p>\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 12px; margin-top: 0pt; margin-bottom: 0.1px;\">322 Brunswick Street, Fitzroy. Cnr Argyle St. Free event.</p>\r\n            </td>\r\n            <td rowspan=\"8\">\r\n            <p style=\"color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 14px; margin-top: 0pt; margin-bottom: 0.1px;\"><span style=\"color: rgb(0, 0, 0);\">$10,000 BSG ART PRIZE</span></p>\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 11px; margin-top: 0pt; margin-bottom: 0.1px;\">Entries are now open for the 2011 BSG Art Prize and Exhibition. Entries can be any medium, any theme, framed or unframed. 50 finalists selected. Deadline for entries Sun 31 July 2011. Show runs 12-25 Aug 2011. Details and enter online at <a href=\"http://www.bsgart.com.au/bsgap11details.html\" target=\"_blank\">www.bsgart.com.au</a></p>\r\n            <br />\r\n            <p style=\"color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 14px; margin-top: 0pt; margin-bottom: 0.1px;\"><span style=\"color: rgb(0, 0, 0);\">LIFE DRAWING <br />\r\n            ON AGAIN</span></p>\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 11px; margin-top: 0pt; margin-bottom: 0.1px;\">We are pleased to announce that Life Drawing is now up and running again. <br />\r\n            Tuesdays 6.30-8.30pm Tutor Sean Smith.<br />\r\n            Thursdays 6.30-8.30pm. Thursdays Class will be suspended from the 4-18 July while tutor Amanda Schunker of Roar Drawing is on holiday. Thursday classes will resume on the 21 July.<br />\r\n            The classes are relaxed and open to everyone with tuition for those who want it. For more information call Sean on 0488 567 883 or Amanda on 0425 735 266 or <a href=\"http://www.roardrawing.com.au\" target=\"_blank\">www.roardrawing.com.au</a></p>\r\n            <br />\r\n            <p style=\"color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 14px; margin-top: 0pt; margin-bottom: 0.1px;\"><span style=\"color: rgb(0, 0, 0);\">CALLING FOR ENTRIES</span></p>\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 11px; margin-top: 0pt; margin-bottom: 0.1px;\">Two new group shows curated by curatorial interns at BSG this year: Folk Art/Fine Art curated by Pan Gong will be an exhibition  of contemporary interpretations of traditional asian folk art. Fashion as Art, curated by Jasmin McNeill will explore the ways fashion can embody the essence of the artist through a variety of mediums including fashion photography, costume design, illustration and textiles. All mediums are welcome. For more information or to apply email  <a href=\"mailto:info@bsgart.com.au\" target=\"_blank\"> info@bsgart.com.au</a></p>\r\n            <br />\r\n            <p style=\"color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 14px; margin-top: 0pt; margin-bottom: 0.1px;\"><span style=\"color: rgb(0, 0, 0);\">CALLING FOR VOLUNTEERS</span></p>\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 11px; margin-top: 0pt; margin-bottom: 0.1px;\">If you would like to gain experience working in a gallery installing exhibitions, dealing with clients, organising shows and a have a few hours to spare each week contact  <a href=\"mailto:tessa@bsgart.com.au\" target=\"_blank\">tessa@bsgart.com.au</a></p>\r\n            <br />\r\n            <p style=\"color: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 14px; margin-top: 0pt; margin-bottom: 0.1px;\"><span style=\"color: rgb(0, 0, 0);\">JOINT SHOWS</span></p>\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 11px; margin-top: 0pt; margin-bottom: 0.1px;\">We recognise that it is difficult for many artists to afford putting on their own show so we are inviting artists who are interested in showing with one, two or three others to email samples of your work to <a href=\"mailto:tessa@bsgart.com.au\" target=\"_blank\">tessa@bsgart.com.au</a> and we will pair you up with other appropriate artists to have a joint show. In this way you can have a show of your work for as little as $225 including invites, advertising and opening night expenses.</p>\r\n            <br />\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 14px; margin-top: 0pt; margin-bottom: 0.1px;\"><span style=\"color: rgb(0, 0, 0);\">FREE VIDEO SPACE</span></p>\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 11px; margin-top: 0pt; margin-bottom: 0.1px;\">We are now accepting applications for our video space for 2011. The space is free. Send your work or a weblink to your work to apply.</p>\r\n            </td>\r\n            <td width=\"20px\" rowspan=\"1\">&nbsp;</td>\r\n        </tr>\r\n        <tr valign=\"top\">\r\n            <td colspan=\"1\"><img border=\"0\" width=\"363px\" height=\"434px\" src=\"http://bsgart.com.au/Resources/sean.jpg\" alt=\"1\" /><br />\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 14px;\">Ritalin&reg;, Sean O\'Carroll</p>\r\n            </td>\r\n        </tr>\r\n        <tr valign=\"top\">\r\n            <td><img border=\"0\" width=\"363px\" hspace=\"2\" height=\"420px\" src=\"http://bsgart.com.au/Resources/jess.jpg\" alt=\"2\" style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 14px;\" />Days of Zodiac, Jessica Andrews</td>\r\n        </tr>\r\n        <tr valign=\"top\">\r\n            <td><img border=\"0\" width=\"363px\" height=\"424px\" src=\"http://bsgart.com.au/Resources/uta.jpg\" alt=\"3\" /><br />\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 14px;\">Beyond Text, Uta Mooney</p>\r\n            </td>\r\n        </tr>\r\n        <tr valign=\"top\">\r\n            <td><img border=\"0\" width=\"363px\" height=\"389px\" src=\"http://bsgart.com.au/Resources/amy.jpg\" alt=\"3\" /><br />\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 14px;\">In the Flesh - An Exhibition of the Female Form, Amy Herrmann</p>\r\n            </td>\r\n        </tr>\r\n        <tr valign=\"top\">\r\n            <td><img border=\"0\" width=\"363px\" height=\"316px\" src=\"http://bsgart.com.au/Resources/jeremy.jpg\" alt=\"3\" /><br />\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 14px;\">{Bracketing Mao}, Jeremy McKenna</p>\r\n            </td>\r\n        </tr>\r\n        <tr valign=\"top\">\r\n            <td><img border=\"0\" width=\"363px\" height=\"500px\" src=\"http://bsgart.com.au/Resources/hannah.jpg\" alt=\"3\" /><br />\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 14px;\">Transform, Hannah Mueller</p>\r\n            </td>\r\n        </tr>\r\n        <tr valign=\"top\">\r\n            <td><img border=\"0\" width=\"363px\" height=\"499px\" src=\"http://bsgart.com.au/Resources/corban.jpg\" alt=\"3\" /><br />\r\n            <p style=\"color: rgb(119, 125, 133); font-family: Arial,Helvetica,sans-serif; font-size: 14px;\">What is and What Should Never Be, Corban Renouf</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>','2011-12-23 11:28:29','2011-12-23 11:28:29');
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
INSERT INTO `notification_filters` VALUES (1,'article','model','2011-11-21 14:31:26','2011-11-21 14:31:26'),(2,'image','model','2011-11-21 14:31:26','2011-11-21 14:31:26'),(3,'cms_file','model','2011-11-21 14:31:26','2011-11-21 14:31:26'),(4,'video','model','2011-11-21 14:31:26','2011-11-21 14:31:26'),(5,'audio','model','2011-11-21 14:31:26','2011-11-21 14:31:26'),(6,'bookmark','model','2011-11-21 14:31:26','2011-11-21 14:31:26'),(7,'newsletter','model','2011-11-21 14:31:26','2011-11-21 14:31:26'),(8,'group','model','2011-11-21 14:31:26','2011-11-21 14:31:26'),(9,'destroy','action','2011-11-21 14:31:26','2011-11-21 14:31:26'),(10,'create','action','2011-11-21 14:31:26','2011-11-21 14:31:26'),(11,'update','action','2011-11-21 14:31:26','2011-11-21 14:31:26'),(12,'artwork','model','2011-11-21 14:31:41','2011-11-21 14:31:41'),(13,'exhibition','model','2011-11-21 14:31:44','2011-11-21 14:31:44'),(14,'competition','model','2011-11-21 14:31:44','2011-11-21 14:31:44'),(15,'gallery','model','2011-11-21 14:31:46','2011-11-21 14:31:46'),(16,'invoice','model','2011-11-21 14:31:49','2011-11-21 14:31:49'),(17,'user_groups','model','2011-11-21 14:31:49','2011-11-21 14:31:49'),(18,'payments','model','2011-11-21 14:31:50','2011-11-21 14:31:50'),(19,'order','model','2011-11-21 14:31:52','2011-11-21 14:31:52');
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
  `imagename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_lines_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lines`
--

LOCK TABLES `order_lines` WRITE;
/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
INSERT INTO `order_lines` VALUES (1,1,'CompetitionsUser',1,1,'2011-11-24 11:54:02','2011-11-24 11:54:02','tworkimage'),(2,2,'CompetitionsUser',1,1,'2011-11-24 12:29:53','2011-11-24 12:29:53','tworkimage'),(3,3,'CompetitionsUser',1,1,'2011-11-24 12:29:56','2011-11-24 12:29:56','tworkimage'),(4,4,'CompetitionsUser',1,1,'2011-11-24 12:30:26','2011-11-24 12:30:26','tworkimage'),(5,5,'CompetitionsUser',1,1,'2011-11-24 12:30:29','2011-11-24 12:30:29','tworkimage'),(6,6,'CompetitionsUser',1,1,'2012-06-05 12:43:13','2012-06-05 12:43:13','fworkimage'),(7,6,'CompetitionsUser',1,1,'2012-06-05 12:43:13','2012-06-05 12:43:13','sworkimage');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,NULL,4,'O854813406','Order ',7,'completed','2011-11-24 17:24:02','2011-11-24 11:54:02','2011-11-24 11:54:02'),(2,NULL,7,'O581056486','Order ',7,'completed','2011-11-24 17:59:53','2011-11-24 12:29:53','2011-11-24 12:29:53'),(3,NULL,7,'O514837586','Order ',7,'completed','2011-11-24 17:59:56','2011-11-24 12:29:56','2011-11-24 12:29:56'),(4,NULL,4,'O675663377','Order ',7,'completed','2011-11-24 18:00:26','2011-11-24 12:30:26','2011-11-24 12:30:26'),(5,NULL,4,'O411043216','Order ',7,'completed','2011-11-24 18:00:29','2011-11-24 12:30:29','2011-11-24 12:30:29'),(6,NULL,7,'O112506085','Order ',10,'completed','2012-06-05 18:13:13','2012-06-05 12:43:13','2012-06-05 12:43:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,3,1,NULL,'paypal',NULL,11000,NULL,'2011-11-23 10:41:02','2011-11-23 10:41:02'),(2,3,2,NULL,'online_validated',NULL,11000,NULL,'2011-11-23 10:41:09','2011-11-23 10:43:10'),(3,3,2,NULL,'paypal',NULL,0,NULL,'2011-11-23 10:43:04','2011-11-23 10:43:04'),(4,3,3,NULL,NULL,NULL,7000,NULL,'2011-11-23 10:44:46','2011-11-23 10:44:46'),(5,3,4,NULL,'paypal',NULL,8000,NULL,'2011-11-23 10:46:03','2011-11-23 10:46:03'),(6,3,4,NULL,'online_validated',NULL,8000,NULL,'2011-11-23 10:46:09','2011-11-23 10:46:09'),(7,3,9,NULL,'online_validated',NULL,1500,NULL,'2011-11-24 05:52:53','2011-11-24 05:52:53'),(8,3,10,NULL,'online_validated',NULL,3500,NULL,'2011-11-24 05:53:24','2011-11-24 05:53:24'),(9,3,11,NULL,NULL,NULL,5000,NULL,'2011-11-24 07:43:11','2011-11-24 07:43:11'),(10,3,12,NULL,NULL,NULL,6000,NULL,'2011-11-24 08:49:27','2011-11-24 08:49:27'),(11,3,13,NULL,NULL,NULL,5000,NULL,'2011-11-24 09:02:23','2011-11-24 09:02:23'),(12,3,14,NULL,NULL,NULL,5000,NULL,'2011-11-24 09:26:36','2011-11-24 09:26:36'),(13,3,15,NULL,'paypal',NULL,5200,NULL,'2011-11-24 09:32:07','2011-11-24 09:32:07'),(14,3,15,NULL,'online_validated',NULL,5200,NULL,'2011-11-24 09:32:25','2011-11-24 09:32:25'),(15,3,16,NULL,'paypal',NULL,5300,NULL,'2011-11-24 09:37:46','2011-11-24 09:37:46'),(16,3,16,NULL,'online_validated',NULL,5300,NULL,'2011-11-24 09:37:52','2011-11-24 09:37:52'),(17,3,17,NULL,'online_validated',NULL,5400,NULL,'2011-11-24 09:39:34','2011-11-24 09:39:34'),(18,3,17,NULL,'online_validated',NULL,5400,NULL,'2011-11-24 09:40:00','2011-11-24 09:40:00'),(19,3,18,NULL,NULL,NULL,5000,NULL,'2011-11-24 09:56:54','2011-11-24 09:56:54'),(20,3,19,NULL,NULL,NULL,5000,NULL,'2011-11-24 10:10:19','2011-11-24 10:10:19'),(21,4,20,NULL,NULL,NULL,11000,NULL,'2011-11-24 10:44:41','2011-11-24 10:44:41'),(22,4,21,NULL,'online_validated',NULL,10200,NULL,'2011-11-24 10:54:39','2011-11-24 10:54:39'),(23,4,21,NULL,'online_validated',NULL,10200,NULL,'2011-11-24 10:55:05','2011-11-24 10:55:05'),(24,4,22,NULL,'online_validated',NULL,700,NULL,'2011-11-24 11:54:02','2011-11-24 11:54:02'),(25,7,23,NULL,'online_validated',NULL,700,NULL,'2011-11-24 12:29:56','2011-11-24 12:29:56'),(26,4,24,NULL,'online_validated',NULL,700,NULL,'2011-11-24 12:30:29','2011-11-24 12:30:29'),(27,11,27,NULL,'paypal',NULL,50000,NULL,'2012-06-09 06:36:15','2012-06-09 06:36:15'),(28,11,27,NULL,'online_validated',NULL,50000,NULL,'2012-06-09 06:36:18','2012-06-09 06:36:18'),(29,12,28,NULL,'paypal',NULL,50000,NULL,'2012-06-09 11:57:12','2012-06-09 11:57:12'),(30,12,30,NULL,'online_validated',NULL,50000,NULL,'2012-06-09 11:57:20','2012-06-09 13:03:54'),(31,12,29,NULL,'paypal',NULL,0,NULL,'2012-06-09 12:57:37','2012-06-09 12:57:37'),(32,12,30,NULL,'paypal',NULL,0,NULL,'2012-06-09 13:03:47','2012-06-09 13:03:47'),(33,11,36,NULL,NULL,NULL,1000,NULL,'2012-06-21 12:54:53','2012-06-21 12:54:53'),(34,11,37,NULL,NULL,NULL,2000,NULL,'2012-06-21 12:55:43','2012-06-21 12:55:43'),(35,11,38,NULL,NULL,NULL,3000,NULL,'2012-06-21 12:56:26','2012-06-21 12:56:26'),(36,11,39,NULL,NULL,NULL,5000,NULL,'2012-06-21 13:19:38','2012-06-21 13:19:38'),(37,11,40,NULL,NULL,NULL,5000,NULL,'2012-06-21 13:27:40','2012-06-21 13:27:40'),(38,11,41,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:04:21','2012-06-21 14:04:21'),(39,11,42,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:07:02','2012-06-21 14:07:02'),(40,11,43,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:12:42','2012-06-21 14:12:42'),(41,11,44,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:16:47','2012-06-21 14:16:47'),(42,11,45,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:18:50','2012-06-21 14:18:50'),(43,11,46,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:20:11','2012-06-21 14:20:11'),(44,11,47,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:23:11','2012-06-21 14:23:11'),(45,11,48,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:26:43','2012-06-21 14:26:43'),(46,11,49,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:30:05','2012-06-21 14:30:05'),(47,11,50,NULL,NULL,NULL,5000,NULL,'2012-06-21 14:39:24','2012-06-21 14:39:24'),(48,11,51,NULL,NULL,NULL,5000,NULL,'2012-06-21 15:12:21','2012-06-21 15:12:21'),(49,11,52,NULL,NULL,NULL,10000,NULL,'2012-06-22 05:48:07','2012-06-22 05:48:07'),(50,11,53,NULL,NULL,NULL,5000,NULL,'2012-06-22 05:54:18','2012-06-22 05:54:18'),(51,11,54,NULL,NULL,NULL,5000,NULL,'2012-06-22 05:59:23','2012-06-22 05:59:23'),(52,11,55,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:02:53','2012-06-22 06:02:53'),(53,11,56,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:05:21','2012-06-22 06:05:21'),(54,11,57,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:09:01','2012-06-22 06:09:01'),(55,11,58,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:12:16','2012-06-22 06:12:16'),(56,11,59,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:14:50','2012-06-22 06:14:50'),(57,11,60,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:15:11','2012-06-22 06:15:11'),(58,11,61,NULL,NULL,NULL,10000,NULL,'2012-06-22 06:16:39','2012-06-22 06:16:39'),(59,11,62,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:19:48','2012-06-22 06:19:48'),(60,11,63,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:21:59','2012-06-22 06:21:59'),(61,11,64,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:25:29','2012-06-22 06:25:29'),(62,11,65,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:28:11','2012-06-22 06:28:11'),(63,11,66,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:38:33','2012-06-22 06:38:33'),(64,14,67,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:46:18','2012-06-22 06:46:18'),(65,14,68,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:50:58','2012-06-22 06:50:58'),(66,14,69,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:53:53','2012-06-22 06:53:53'),(67,14,70,NULL,NULL,NULL,5000,NULL,'2012-06-22 06:57:59','2012-06-22 06:57:59'),(68,14,71,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:02:11','2012-06-22 07:02:11'),(69,14,72,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:05:08','2012-06-22 07:05:08'),(70,14,73,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:08:19','2012-06-22 07:08:19'),(71,14,74,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:10:22','2012-06-22 07:10:22'),(72,14,75,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:14:33','2012-06-22 07:14:33'),(73,14,76,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:22:33','2012-06-22 07:22:33'),(74,14,77,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:25:45','2012-06-22 07:25:45'),(75,14,78,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:28:56','2012-06-22 07:28:56'),(76,14,79,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:34:47','2012-06-22 07:34:47'),(77,14,80,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:35:54','2012-06-22 07:35:54'),(78,14,81,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:36:44','2012-06-22 07:36:44'),(79,14,82,NULL,NULL,NULL,5000,NULL,'2012-06-22 07:39:40','2012-06-22 07:39:40'),(80,14,83,NULL,NULL,NULL,5000,NULL,'2012-06-22 08:44:27','2012-06-22 08:44:27'),(81,14,84,NULL,NULL,NULL,5000,NULL,'2012-06-22 08:46:50','2012-06-22 08:46:50'),(82,14,85,NULL,NULL,NULL,5000,NULL,'2012-06-22 08:49:25','2012-06-22 08:49:25'),(83,14,86,NULL,NULL,NULL,5000,NULL,'2012-06-22 08:52:29','2012-06-22 08:52:29'),(84,14,87,NULL,NULL,NULL,5000,NULL,'2012-06-22 08:53:44','2012-06-22 08:53:44'),(85,14,88,NULL,NULL,NULL,5000,NULL,'2012-06-22 08:57:29','2012-06-22 08:57:29'),(86,14,89,NULL,NULL,NULL,5000,NULL,'2012-06-22 08:59:25','2012-06-22 08:59:25'),(87,14,90,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:03:53','2012-06-22 09:03:53'),(88,14,91,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:05:09','2012-06-22 09:05:09'),(89,14,92,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:08:50','2012-06-22 09:08:50'),(90,14,93,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:18:05','2012-06-22 09:18:05'),(91,14,94,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:20:20','2012-06-22 09:20:20'),(92,14,95,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:22:09','2012-06-22 09:22:09'),(93,14,96,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:23:37','2012-06-22 09:23:37'),(94,15,97,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:35:37','2012-06-22 09:35:37'),(95,15,98,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:37:08','2012-06-22 09:37:08'),(96,15,99,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:47:56','2012-06-22 09:47:56'),(97,15,100,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:52:57','2012-06-22 09:52:57'),(98,15,101,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:54:55','2012-06-22 09:54:55'),(99,15,102,NULL,NULL,NULL,5000,NULL,'2012-06-22 09:59:05','2012-06-22 09:59:05'),(100,15,103,NULL,NULL,NULL,5000,NULL,'2012-06-22 10:02:08','2012-06-22 10:02:08'),(101,15,104,NULL,NULL,NULL,5000,NULL,'2012-06-22 10:11:15','2012-06-22 10:11:15'),(102,15,105,NULL,NULL,NULL,5000,NULL,'2012-06-22 10:13:01','2012-06-22 10:13:01'),(103,15,106,NULL,NULL,NULL,5000,NULL,'2012-06-22 10:22:43','2012-06-22 10:22:43'),(104,15,107,NULL,NULL,NULL,5000,NULL,'2012-06-22 10:26:43','2012-06-22 10:26:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periods`
--

LOCK TABLES `periods` WRITE;
/*!40000 ALTER TABLE `periods` DISABLE KEYS */;
INSERT INTO `periods` VALUES (1,'2011-11-25','2011-11-30',NULL,'2011-11-23 12:49:19','2011-11-23 12:49:19');
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
INSERT INTO `permissions` VALUES (1,'user_new',NULL,'system','2011-11-21 14:34:59','2011-11-21 14:34:59'),(2,'user_edit',NULL,'system','2011-11-21 14:34:59','2011-11-21 14:34:59'),(3,'user_show',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(4,'user_destroy',NULL,'system','2011-11-21 14:34:59','2011-11-21 14:34:59'),(5,'article_new',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(6,'article_edit',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(7,'article_show',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(8,'article_destroy',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(9,'image_new',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(10,'image_edit',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(11,'image_show',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(12,'image_destroy',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(13,'cms_file_new',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(14,'cms_file_edit',NULL,'container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(15,'cms_file_show',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(16,'cms_file_destroy',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(17,'video_new',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(18,'video_edit',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(19,'video_show',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(20,'video_destroy',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(21,'audio_new',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(22,'audio_edit',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(23,'audio_show',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(24,'audio_destroy',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(25,'bookmark_new',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(26,'bookmark_edit',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(27,'bookmark_show',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(28,'bookmark_destroy',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(29,'newsletter_new',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(30,'newsletter_edit',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(31,'newsletter_show',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(32,'newsletter_destroy',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(33,'group_new',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(34,'group_edit',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(35,'group_show',NULL,'container','2011-11-21 14:35:00','2011-11-21 14:35:00'),(36,'group_destroy',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(37,'page_new',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(38,'page_edit',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(39,'page_show',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(40,'page_destroy',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(41,'artwork_new',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(42,'artwork_edit',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(43,'artwork_show',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(44,'artwork_destroy',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(45,'competition_new',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(46,'competition_edit',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(47,'competition_show',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(48,'competition_destroy',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(49,'exhibition_new',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(50,'exhibition_edit',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(51,'exhibition_show',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(52,'exhibition_destroy',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(53,'gallery_new',NULL,'container','2011-11-21 14:35:01','2011-11-21 14:35:01'),(54,'gallery_edit',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(55,'gallery_show',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(56,'gallery_destroy',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(57,'user_group_new',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(58,'user_group_edit',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(59,'user_group_show',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(60,'user_group_destroy',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(61,'workspace_new',NULL,'system','2011-11-21 14:35:02','2011-11-21 14:35:02'),(62,'workspace_edit',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(63,'workspace_show',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(64,'workspace_destroy',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(65,'website_new',NULL,'system','2011-11-21 14:35:02','2011-11-21 14:35:02'),(66,'website_edit',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(67,'website_show',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(68,'website_destroy',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(69,'folder_new',NULL,'system','2011-11-21 14:35:02','2011-11-21 14:35:02'),(70,'folder_edit',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(71,'folder_show',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(72,'folder_destroy',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(73,'article_comment',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(74,'article_rate',NULL,'container','2011-11-21 14:35:02','2011-11-21 14:35:02'),(75,'article_tag',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(76,'image_comment',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(77,'image_rate',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(78,'image_tag',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(79,'cms_file_comment',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(80,'cms_file_rate',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(81,'cms_file_tag',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(82,'video_comment',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(83,'video_rate',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(84,'video_tag',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(85,'audio_comment',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(86,'audio_rate',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(87,'audio_tag',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(88,'bookmark_comment',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(89,'bookmark_rate',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(90,'bookmark_tag',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(91,'newsletter_comment',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(92,'newsletter_rate',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(93,'newsletter_tag',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(94,'group_comment',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(95,'group_rate',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(96,'group_tag',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(97,'page_comment',NULL,'container','2011-11-21 14:35:03','2011-11-21 14:35:03'),(98,'page_rate',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(99,'page_tag',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(100,'artwork_comment',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(101,'artwork_rate',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(102,'artwork_tag',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(103,'competition_comment',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(104,'competition_rate',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(105,'competition_tag',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(106,'exhibition_comment',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(107,'exhibition_rate',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(108,'exhibition_tag',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(109,'gallery_comment',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(110,'gallery_rate',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(111,'gallery_tag',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(112,'user_group_comment',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(113,'user_group_rate',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(114,'user_group_tag',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(115,'workspace_administrate',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(116,'website_administrate',NULL,'container','2011-11-21 14:35:04','2011-11-21 14:35:04'),(117,'folder_administrate',NULL,'container','2011-11-21 14:35:05','2011-11-21 14:35:05'),(118,'user_configure',NULL,'system','2011-11-21 14:35:05','2011-11-21 14:35:05'),(119,'workspace_contacts_management',NULL,'container','2011-11-21 14:35:05','2011-11-21 14:35:05'),(120,'competition_subscribe','Permission to subscribe to a comptetition','container','2011-11-21 14:37:13','2011-11-21 14:37:13'),(121,'artwork_evaluate','Permission to evaluate an artwork','container','2011-11-21 14:37:13','2011-11-21 14:37:13');
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
  `studios` tinyint(1) DEFAULT NULL,
  `notices` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_profiles_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,NULL,'Boss',NULL,'Dupond',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-11-21 20:05:26','2011-11-21 20:05:26',NULL,NULL),(2,2,NULL,'Admin',NULL,'Admin',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-11-21 20:05:27','2011-11-21 20:05:27',NULL,NULL),(3,3,NULL,'kedar',NULL,'pathak',NULL,NULL,NULL,0,NULL,'kedar.pathak@prag.com','address','suburb','411038','city','maharashtra','india','9763370419','www.pragtech.com',NULL,'2011-11-21 14:50:14','2012-06-06 07:08:57',NULL,NULL),(4,4,NULL,'kedarr',NULL,'pathakk',NULL,NULL,NULL,0,NULL,'pathakorama1@gmail.com1','address123','suburb1','4110381',NULL,'maharashtra1','india1','9763370419','http://www.pragtech.co.inn','and beutiful biography        \n     ','2011-11-22 08:13:24','2011-11-24 10:56:51',NULL,NULL),(7,7,NULL,'smith',NULL,'pathak',NULL,NULL,NULL,0,NULL,'smith@gmail.com','address12','Dange Chowk','411038',NULL,'Maharashtra','India','9835770924','http://www.pragtech.co.in',NULL,'2011-11-24 12:23:16','2012-06-21 11:57:29',NULL,NULL),(8,8,NULL,'superfast',NULL,'superman',NULL,NULL,NULL,0,NULL,'pathakorama1@gmail.com','address for use','sub1','411038',NULL,'maharashtra','india','9763370419','www.pragtech.co.in',NULL,'2012-06-01 07:44:53','2012-06-01 07:44:53',NULL,NULL),(9,9,NULL,'karan',NULL,'johar',NULL,NULL,NULL,0,NULL,'karan@gmaill.com','address123','sub','411038','piune','maha','Aland Islands','25420753','www.pragmatic.com',NULL,'2012-06-01 07:52:13','2012-06-01 07:52:13',NULL,NULL),(10,10,NULL,'karan',NULL,'johar',NULL,NULL,NULL,0,NULL,'karan1@gmaill.com','address123','sub','411038','piune','maha','Aland Islands','25420753','www.pragmatic.com',NULL,'2012-06-01 07:53:49','2012-06-01 07:53:49',NULL,NULL),(11,11,NULL,'Vishal','','Kumar',NULL,NULL,NULL,0,NULL,'vishalbharti.log@gmail.com','Dange Chowk','Ganeshnagar','6787687611',NULL,'Maharashtra','India','1234567891','www.pragtech.co.in',NULL,'2012-06-06 14:54:58','2012-06-22 11:48:17',NULL,NULL),(12,12,NULL,'Joe',NULL,'Badger',NULL,NULL,NULL,0,NULL,'joe@test.com','Louise Street, Sydney','michee','834001',NULL,'Sydney','Australia','7709238184','',NULL,'2012-06-09 11:12:34','2012-06-09 11:12:34',NULL,NULL),(13,13,NULL,'Vishal',NULL,'Barti',NULL,NULL,NULL,0,NULL,'vishal.bharti.log@gmail.com','Ranchi','Lalpur','834001',NULL,'Jharkhand','India','7709248184','www.pragtech.co.in',NULL,'2012-06-13 14:09:31','2012-06-19 08:35:23',NULL,NULL),(14,14,NULL,'Vijender',NULL,'Kumar',NULL,NULL,NULL,0,NULL,'vishu.nick@gmail.com','fgsjhgfjsgjfs','MG Road','834001',NULL,'Delhi','India','5648245625','www.vijender.com',NULL,'2012-06-22 06:45:23','2012-06-22 06:45:23',NULL,NULL),(15,15,NULL,'hkhkhkhkh',NULL,'hkhkhkhlh',NULL,NULL,NULL,0,NULL,'amitkumar@gmail.com','gjggjkjgkg','ggjgg','12131',NULL,'ggjhgjg','ggjgkjghj','2564325646','www.amit.com',NULL,'2012-06-22 09:34:48','2012-06-22 09:36:59',NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_categories`
--

LOCK TABLES `profiles_categories` WRITE;
/*!40000 ALTER TABLE `profiles_categories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_containers`
--

LOCK TABLES `profiles_containers` WRITE;
/*!40000 ALTER TABLE `profiles_containers` DISABLE KEYS */;
INSERT INTO `profiles_containers` VALUES (1,3,'Workspace',11,'2012-06-06 07:07:04','2012-06-06 07:07:04'),(2,11,'Workspace',15,'2012-06-18 14:11:55','2012-06-18 14:11:55'),(3,13,'Workspace',16,'2012-06-19 05:38:02','2012-06-19 05:38:02');
/*!40000 ALTER TABLE `profiles_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promoting_stuffs`
--

DROP TABLE IF EXISTS `promoting_stuffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promoting_stuffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promoting_stuffs`
--

LOCK TABLES `promoting_stuffs` WRITE;
/*!40000 ALTER TABLE `promoting_stuffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `promoting_stuffs` ENABLE KEYS */;
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
  `frommail` varchar(255) DEFAULT NULL,
  `tomail` varchar(255) DEFAULT NULL,
  `replayto` int(11) DEFAULT NULL,
  `deletefrom` tinyint(1) DEFAULT NULL,
  `deleteto` tinyint(1) DEFAULT NULL,
  `toread` tinyint(1) DEFAULT NULL,
  `fromread` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queued_mails`
--

LOCK TABLES `queued_mails` WRITE;
/*!40000 ALTER TABLE `queued_mails` DISABLE KEYS */;
INSERT INTO `queued_mails` VALUES (1,'UserMailer','login_notification','--- \n- kedar.pathak@pragtech.co.in\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :validations: &id003 \n          - - :content_type\n            - :unless: \n              :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n              :message: \n              :if: \n          - - :size\n            - :unless: \n              :message: file size must be between :min and :max bytes.\n              :if: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :default_style: :original\n        :default_url: /images/default_avatar.png\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n        :styles: &id002 \n          :thumb: \n            :convert_options: \"\"\n            :geometry: 100x100>\n            :processors: &id001 \n              - :thumbnail\n            :format: \n            :whiny: true\n        :whiny: true\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :storage: :filesystem\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n    u_layout: \n    last_connected_at: \n    created_at: 2011-11-21 14:50:14.185070 Z\n    activated_at: 2011-11-21 20:20:14.187409 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n    updated_at: 2011-11-21 14:50:14.193332 Z\n    password_reset_code: \n    activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n    u_language: \n    id: 3\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: k.pathakNN2\n    state: \n    email: kedar.pathak@pragtech.co.in\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2011-11-21 14:50:14\n      updated_at: 2011-11-21 14:50:14\n      id: \"1\"\n      user_id: \"3\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: kedar123\n  password_confirmation: kedar123\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: address\n      created_at: &id005 2011-11-21 14:50:14.199572 Z\n      country: india\n      zip_code: \"411038\"\n      updated_at: *id005\n      salutation: \n      id: 3\n      suburb: suburb\n      birth_date: \n      gender: \n      phone_number: \"9763370419\"\n      user_id: 3\n      notices: \n      website: http://www.pragtech.co.in\n      last_name: pathak\n      email_address: kedar.pathak@pragtech.co.in\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: maharashtra\n      state: \n      nationality: \n      middle_name: \n      first_name: kedar\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2011-11-21 14:50:14','test@pragtech.co.in','kedar.pathak@pragtech.co.in',NULL,NULL,NULL,NULL,NULL),(2,'UserMailer','login_notification','--- \n- pathakorama1@gmail.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :validations: &id003 \n          - - :content_type\n            - :unless: \n              :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n              :message: \n              :if: \n          - - :size\n            - :unless: \n              :message: file size must be between :min and :max bytes.\n              :if: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :default_style: :original\n        :default_url: /images/default_avatar.png\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n        :styles: &id002 \n          :thumb: \n            :convert_options: \"\"\n            :geometry: 100x100>\n            :processors: &id001 \n              - :thumbnail\n            :format: \n            :whiny: true\n        :whiny: true\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :storage: :filesystem\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: ee2d5499ecd0248f84ef8e59bdc8162798011759\n    u_layout: \n    last_connected_at: \n    created_at: 2011-11-22 08:13:24.011714 Z\n    activated_at: 2011-11-22 13:43:24.032262 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: 7151fa335edc9df257ce4d37cdbed44181d70552\n    updated_at: 2011-11-22 08:13:24.037981 Z\n    password_reset_code: \n    activation_code: af0d37aac44fe0a7775746d53cbce6e96daf28bf\n    u_language: \n    id: 4\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: k.pathakkRAg\n    state: \n    email: pathakorama1@gmail.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2011-11-22 08:13:24\n      updated_at: 2011-11-22 08:13:24\n      id: \"2\"\n      user_id: \"4\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: kedar123\n  password_confirmation: kedar123\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: address123\n      created_at: &id005 2011-11-22 08:13:24.044729 Z\n      country: india1\n      zip_code: \"4110381\"\n      updated_at: *id005\n      salutation: \n      id: 4\n      suburb: suburb1\n      birth_date: \n      gender: \n      phone_number: \"9763370419\"\n      user_id: 4\n      notices: \n      website: http://www.pragtech.co.inn\n      last_name: pathakk\n      email_address: pathakorama1@gmail.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: maharashtra1\n      state: \n      nationality: \n      middle_name: \n      first_name: kedarr\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2011-11-22 08:13:24','test@pragtech.co.in','pathakorama1@gmail.com',NULL,NULL,NULL,NULL,NULL),(3,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-23 10:41:02.960857 Z\n    updated_at: *id001\n    invoice_id: 1\n    id: 1\n    amount_in_cents: 11000.0\n    credit_card_id: \n    user_id: 3\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I350467673\n      created_at: 2011-11-23 10:41:02\n      title: Invoice I350467673\n      payment_medium: paypal\n      final_amount: \"110\"\n      updated_at: 2011-11-23 10:41:02\n      id: \"1\"\n      creator_id: \n      shipping_address: \"address india \"\n      client_id: \"3\"\n      purchasable_id: \"1\"\n      deadline: \"2011-11-30\"\n      sent_at: 2011-11-23 16:11:02\n      validated_at: 2011-11-23 16:11:02\n      billing_address: \"address india \"\n      note: \n      description: Invoice for the subscription to the competition \'first competition name\'\n      original_amount: \"110\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-23 12:23:22\n        u_layout: \n        salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-21 20:20:14\n        created_at: 2011-11-21 14:50:14\n        crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-23 06:53:22\n        u_language: \n        activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n        id: \"3\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakNN2\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: kedar.pathak@pragtech.co.in\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-23 10:41:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-23 10:43:04.504631 Z\n    updated_at: *id001\n    invoice_id: 2\n    id: 3\n    amount_in_cents: 0.0\n    credit_card_id: \n    user_id: 3\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I127882836\n      created_at: 2011-11-23 10:43:04\n      title: Invoice I127882836\n      payment_medium: paypal\n      final_amount: \"0\"\n      updated_at: 2011-11-23 10:43:04\n      id: \"2\"\n      creator_id: \n      shipping_address: \"address india \"\n      client_id: \"3\"\n      purchasable_id: \"1\"\n      deadline: \"2011-11-30\"\n      sent_at: 2011-11-23 16:13:04\n      validated_at: 2011-11-23 16:13:04\n      billing_address: \"address india \"\n      note: \n      description: Invoice for the subscription to the competition \'first competition name\'\n      original_amount: \"0\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-23 12:23:22\n        u_layout: \n        salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-21 20:20:14\n        created_at: 2011-11-21 14:50:14\n        crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-23 06:53:22\n        u_language: \n        activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n        id: \"3\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakNN2\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: kedar.pathak@pragtech.co.in\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-23 10:43:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-23 10:46:03.674649 Z\n    updated_at: *id001\n    invoice_id: 4\n    id: 5\n    amount_in_cents: 8000.0\n    credit_card_id: \n    user_id: 3\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I134633850\n      created_at: 2011-11-23 10:46:03\n      title: Invoice I134633850\n      payment_medium: paypal\n      final_amount: \"80\"\n      updated_at: 2011-11-23 10:46:03\n      id: \"4\"\n      creator_id: \n      shipping_address: \"address india \"\n      client_id: \"3\"\n      purchasable_id: \"1\"\n      deadline: \"2011-11-30\"\n      sent_at: 2011-11-23 16:16:03\n      validated_at: 2011-11-23 16:16:03\n      billing_address: \"address india \"\n      note: \n      description: Invoice for the subscription to the competition \'first competition name\'\n      original_amount: \"80\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-23 12:23:22\n        u_layout: \n        salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-21 20:20:14\n        created_at: 2011-11-21 14:50:14\n        crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-23 06:53:22\n        u_language: \n        activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n        id: \"3\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakNN2\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: kedar.pathak@pragtech.co.in\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-23 10:46:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'UserMailer','send_invoice_exhibition','--- \n- kedar.pathak@pragtech.co.in\n- invoice5\n- An Invoice Is Sent To Your Email. Please Make The Payment by Login To This Account.\n- !ruby/object:Invoice \n  attributes: \n    number: I152120386\n    created_at: 2011-11-23 12:54:52\n    title: Invoice I152120386\n    payment_medium: \n    final_amount: \"0\"\n    updated_at: 2011-11-23 12:54:52\n    id: \"5\"\n    creator_id: \n    shipping_address: \n    client_id: \"3\"\n    purchasable_id: \"1\"\n    deadline: \"2011-11-30\"\n    sent_at: \n    validated_at: \n    billing_address: \n    note: \n    description: First invoice for the subscription to the exhibition \'new exhibition\' (30% of the total amount)\n    original_amount: \"0\"\n    purchasable_type: ExhibitionsUser\n    state: created\n  attributes_cache: {}\n\n  client: !ruby/object:User \n    attributes: \n      last_connected_at: 2011-11-23 17:46:14\n      u_layout: \n      salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2011-11-21 20:20:14\n      created_at: 2011-11-21 14:50:14\n      crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2011-11-23 12:16:14\n      u_language: \n      activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n      id: \"3\"\n      avatar_content_type: \n      remember_token: \n      login: k.pathakNN2\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: kedar.pathak@pragtech.co.in\n      state: \n    attributes_cache: {}\n\n    profile: !ruby/object:Profile \n      attributes: \n        address: address\n        city: \n        created_at: 2011-11-21 14:50:14\n        zip_code: \"411038\"\n        country: india\n        updated_at: 2011-11-21 14:50:14\n        salutation: \n        id: \"3\"\n        gender: \n        birth_date: \n        suburb: suburb\n        user_id: \"3\"\n        phone_number: \"9763370419\"\n        last_name: pathak\n        website: http://www.pragtech.co.in\n        notices: \n        email_address: kedar.pathak@pragtech.co.in\n        getting_newsletter: \"0\"\n        studios: \n        first_name: kedar\n        middle_name: \n        nationality: \n        state: \n        country_state: maharashtra\n        biography: \n      attributes_cache: {}\n\n- !ruby/object:User \n  attributes: \n    last_connected_at: 2011-11-23 17:46:14\n    u_layout: \n    salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n    avatar_file_name: \n    avatar_file_size: \n    activated_at: 2011-11-21 20:20:14\n    created_at: 2011-11-21 14:50:14\n    crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n    remember_token_expires_at: \n    password_reset_code: \n    updated_at: 2011-11-23 12:16:14\n    u_language: \n    activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n    id: \"3\"\n    avatar_content_type: \n    remember_token: \n    login: k.pathakNN2\n    avatar_updated_at: \n    u_per_page: \n    system_role_id: \"8\"\n    email: kedar.pathak@pragtech.co.in\n    state: \n  attributes_cache: {}\n\n  profile: !ruby/object:Profile \n    attributes: \n      address: address\n      city: \n      created_at: 2011-11-21 14:50:14\n      zip_code: \"411038\"\n      country: india\n      updated_at: 2011-11-21 14:50:14\n      salutation: \n      id: \"3\"\n      gender: \n      birth_date: \n      suburb: suburb\n      user_id: \"3\"\n      phone_number: \"9763370419\"\n      last_name: pathak\n      website: http://www.pragtech.co.in\n      notices: \n      email_address: kedar.pathak@pragtech.co.in\n      getting_newsletter: \"0\"\n      studios: \n      first_name: kedar\n      middle_name: \n      nationality: \n      state: \n      country_state: maharashtra\n      biography: \n    attributes_cache: {}\n\n',0,0,'2011-11-23 12:54:53','test@pragtech.co.in','kedar.pathak@pragtech.co.in',NULL,NULL,NULL,NULL,NULL),(7,'UserMailer','send_invoice_exhibition','--- \n- pathakorama1@gmail.com\n- invoice7\n- An Invoice Is Sent To Your Email. Please Make The Payment by Login To This Account.\n- !ruby/object:Invoice \n  attributes: \n    number: I153126160\n    created_at: 2011-11-23 14:24:16\n    title: Invoice I153126160\n    payment_medium: \n    final_amount: \"0\"\n    updated_at: 2011-11-23 14:24:16\n    id: \"7\"\n    creator_id: \n    shipping_address: \n    client_id: \"4\"\n    purchasable_id: \"2\"\n    deadline: \"2011-11-30\"\n    sent_at: \n    validated_at: \n    billing_address: \n    note: \n    description: First invoice for the subscription to the exhibition \'new exhibition\' (30% of the total amount)\n    original_amount: \"0\"\n    purchasable_type: ExhibitionsUser\n    state: created\n  attributes_cache: {}\n\n  client: !ruby/object:User \n    attributes: \n      last_connected_at: 2011-11-23 14:03:11\n      u_layout: \n      salt: ee2d5499ecd0248f84ef8e59bdc8162798011759\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2011-11-22 13:43:24\n      created_at: 2011-11-22 08:13:24\n      crypted_password: 7151fa335edc9df257ce4d37cdbed44181d70552\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2011-11-23 08:33:11\n      u_language: \n      activation_code: af0d37aac44fe0a7775746d53cbce6e96daf28bf\n      id: \"4\"\n      avatar_content_type: \n      remember_token: \n      login: k.pathakkRAg\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: pathakorama1@gmail.com\n      state: \n    attributes_cache: {}\n\n    profile: !ruby/object:Profile \n      attributes: \n        address: address123\n        city: \n        created_at: 2011-11-22 08:13:24\n        zip_code: \"4110381\"\n        country: india1\n        updated_at: 2011-11-22 08:13:24\n        salutation: \n        id: \"4\"\n        gender: \n        birth_date: \n        suburb: suburb1\n        user_id: \"4\"\n        phone_number: \"9763370419\"\n        last_name: pathakk\n        website: http://www.pragtech.co.inn\n        notices: \n        email_address: pathakorama1@gmail.com\n        getting_newsletter: \"0\"\n        studios: \n        first_name: kedarr\n        middle_name: \n        nationality: \n        state: \n        country_state: maharashtra1\n        biography: \n      attributes_cache: {}\n\n- !ruby/object:User \n  attributes: \n    last_connected_at: 2011-11-23 14:03:11\n    u_layout: \n    salt: ee2d5499ecd0248f84ef8e59bdc8162798011759\n    avatar_file_name: \n    avatar_file_size: \n    activated_at: 2011-11-22 13:43:24\n    created_at: 2011-11-22 08:13:24\n    crypted_password: 7151fa335edc9df257ce4d37cdbed44181d70552\n    remember_token_expires_at: \n    password_reset_code: \n    updated_at: 2011-11-23 08:33:11\n    u_language: \n    activation_code: af0d37aac44fe0a7775746d53cbce6e96daf28bf\n    id: \"4\"\n    avatar_content_type: \n    remember_token: \n    login: k.pathakkRAg\n    avatar_updated_at: \n    u_per_page: \n    system_role_id: \"8\"\n    email: pathakorama1@gmail.com\n    state: \n  attributes_cache: {}\n\n  profile: !ruby/object:Profile \n    attributes: \n      address: address123\n      city: \n      created_at: 2011-11-22 08:13:24\n      zip_code: \"4110381\"\n      country: india1\n      updated_at: 2011-11-22 08:13:24\n      salutation: \n      id: \"4\"\n      gender: \n      birth_date: \n      suburb: suburb1\n      user_id: \"4\"\n      phone_number: \"9763370419\"\n      last_name: pathakk\n      website: http://www.pragtech.co.inn\n      notices: \n      email_address: pathakorama1@gmail.com\n      getting_newsletter: \"0\"\n      studios: \n      first_name: kedarr\n      middle_name: \n      nationality: \n      state: \n      country_state: maharashtra1\n      biography: \n    attributes_cache: {}\n\n',0,0,'2011-11-23 14:24:17','test@pragtech.co.in','pathakorama1@gmail.com',NULL,NULL,NULL,NULL,NULL),(8,'UserMailer','send_invoice_exhibition','--- \n- kedar.pathak@pragtech.co.in\n- invoice9\n- An Invoice Is Sent To Your Email. Please Make The Payment by Login To This Account.\n- !ruby/object:Invoice \n  attributes: \n    number: I210452812\n    created_at: 2011-11-23 14:39:14\n    title: Invoice I210452812\n    payment_medium: \n    final_amount: \"15\"\n    updated_at: 2011-11-23 14:39:14\n    id: \"9\"\n    creator_id: \n    shipping_address: \n    client_id: \"3\"\n    purchasable_id: \"4\"\n    deadline: \"2011-11-30\"\n    sent_at: \n    validated_at: \n    billing_address: \n    note: \n    description: First invoice for the subscription to the exhibition \'new exhibition\' (30% of the total amount)\n    original_amount: \"15\"\n    purchasable_type: ExhibitionsUser\n    state: created\n  attributes_cache: {}\n\n  client: !ruby/object:User \n    attributes: \n      last_connected_at: 2011-11-23 19:54:53\n      u_layout: \n      salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2011-11-21 20:20:14\n      created_at: 2011-11-21 14:50:14\n      crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2011-11-23 14:24:53\n      u_language: \n      activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n      id: \"3\"\n      avatar_content_type: \n      remember_token: \n      login: k.pathakNN2\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: kedar.pathak@pragtech.co.in\n      state: \n    attributes_cache: {}\n\n    profile: !ruby/object:Profile \n      attributes: \n        address: address\n        city: \n        created_at: 2011-11-21 14:50:14\n        zip_code: \"411038\"\n        country: india\n        updated_at: 2011-11-21 14:50:14\n        salutation: \n        id: \"3\"\n        gender: \n        birth_date: \n        suburb: suburb\n        user_id: \"3\"\n        phone_number: \"9763370419\"\n        last_name: pathak\n        website: http://www.pragtech.co.in\n        notices: \n        email_address: kedar.pathak@pragtech.co.in\n        getting_newsletter: \"0\"\n        studios: \n        first_name: kedar\n        middle_name: \n        nationality: \n        state: \n        country_state: maharashtra\n        biography: \n      attributes_cache: {}\n\n- !ruby/object:User \n  attributes: \n    last_connected_at: 2011-11-23 19:54:53\n    u_layout: \n    salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n    avatar_file_name: \n    avatar_file_size: \n    activated_at: 2011-11-21 20:20:14\n    created_at: 2011-11-21 14:50:14\n    crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n    remember_token_expires_at: \n    password_reset_code: \n    updated_at: 2011-11-23 14:24:53\n    u_language: \n    activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n    id: \"3\"\n    avatar_content_type: \n    remember_token: \n    login: k.pathakNN2\n    avatar_updated_at: \n    u_per_page: \n    system_role_id: \"8\"\n    email: kedar.pathak@pragtech.co.in\n    state: \n  attributes_cache: {}\n\n  profile: !ruby/object:Profile \n    attributes: \n      address: address\n      city: \n      created_at: 2011-11-21 14:50:14\n      zip_code: \"411038\"\n      country: india\n      updated_at: 2011-11-21 14:50:14\n      salutation: \n      id: \"3\"\n      gender: \n      birth_date: \n      suburb: suburb\n      user_id: \"3\"\n      phone_number: \"9763370419\"\n      last_name: pathak\n      website: http://www.pragtech.co.in\n      notices: \n      email_address: kedar.pathak@pragtech.co.in\n      getting_newsletter: \"0\"\n      studios: \n      first_name: kedar\n      middle_name: \n      nationality: \n      state: \n      country_state: maharashtra\n      biography: \n    attributes_cache: {}\n\n',0,0,'2011-11-23 14:39:16','test@pragtech.co.in','kedar.pathak@pragtech.co.in',NULL,NULL,NULL,NULL,NULL),(9,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-24 05:52:53.116040 Z\n    updated_at: *id001\n    invoice_id: 9\n    id: 7\n    amount_in_cents: 1500.0\n    credit_card_id: \n    user_id: 3\n    note: \n    currency: \n    state: online_validated\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I210452812\n      created_at: 2011-11-23 14:39:14\n      title: Invoice I210452812\n      payment_medium: online_validated\n      final_amount: \"15\"\n      updated_at: 2011-11-24 05:52:53\n      id: \"9\"\n      creator_id: \n      shipping_address: \n      client_id: \"3\"\n      purchasable_id: \"4\"\n      deadline: \"2011-11-30\"\n      sent_at: \n      validated_at: 2011-11-24 11:22:53\n      billing_address: \n      note: \n      description: First invoice for the subscription to the exhibition \'new exhibition\' (30% of the total amount)\n      original_amount: \"15\"\n      purchasable_type: ExhibitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-24 10:38:36\n        u_layout: \n        salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-21 20:20:14\n        created_at: 2011-11-21 14:50:14\n        crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-24 05:08:36\n        u_language: \n        activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n        id: \"3\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakNN2\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: kedar.pathak@pragtech.co.in\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-24 05:52:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'UserMailer','send_invoice_exhibition','--- \n- kedar.pathak@pragtech.co.in\n- invoice10\n- Your Exhibition Payment Is Done And An Invoice Is Sent to Your Email.\n- !ruby/object:Invoice \n  attributes: \n    number: I256165443\n    created_at: 2011-11-23 14:39:14\n    title: Invoice I256165443\n    payment_medium: \n    final_amount: \"35\"\n    updated_at: 2011-11-23 14:39:14\n    id: \"10\"\n    creator_id: \n    shipping_address: \n    client_id: \"3\"\n    purchasable_id: \"4\"\n    deadline: \"2011-12-07\"\n    sent_at: \n    validated_at: \n    billing_address: \n    note: \n    description: Second invoice for the subscription to the competition \'new exhibition\' (70% of the total amount)\n    original_amount: \"35\"\n    purchasable_type: ExhibitionsUser\n    state: created\n  attributes_cache: {}\n\n  client: !ruby/object:User \n    attributes: \n      last_connected_at: 2011-11-24 10:38:36\n      u_layout: \n      salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2011-11-21 20:20:14\n      created_at: 2011-11-21 14:50:14\n      crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2011-11-24 05:08:36\n      u_language: \n      activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n      id: \"3\"\n      avatar_content_type: \n      remember_token: \n      login: k.pathakNN2\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: kedar.pathak@pragtech.co.in\n      state: \n    attributes_cache: {}\n\n    profile: !ruby/object:Profile \n      attributes: \n        address: address\n        city: \n        created_at: 2011-11-21 14:50:14\n        zip_code: \"411038\"\n        country: india\n        updated_at: 2011-11-21 14:50:14\n        salutation: \n        id: \"3\"\n        gender: \n        birth_date: \n        suburb: suburb\n        user_id: \"3\"\n        phone_number: \"9763370419\"\n        last_name: pathak\n        website: http://www.pragtech.co.in\n        notices: \n        email_address: kedar.pathak@pragtech.co.in\n        getting_newsletter: \"0\"\n        studios: \n        first_name: kedar\n        middle_name: \n        nationality: \n        state: \n        country_state: maharashtra\n        biography: \n      attributes_cache: {}\n\n- !ruby/object:User \n  attributes: \n    last_connected_at: 2011-11-24 10:38:36\n    u_layout: \n    salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n    avatar_file_name: \n    avatar_file_size: \n    activated_at: 2011-11-21 20:20:14\n    created_at: 2011-11-21 14:50:14\n    crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n    remember_token_expires_at: \n    password_reset_code: \n    updated_at: 2011-11-24 05:08:36\n    u_language: \n    activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n    id: \"3\"\n    avatar_content_type: \n    remember_token: \n    login: k.pathakNN2\n    avatar_updated_at: \n    u_per_page: \n    system_role_id: \"8\"\n    email: kedar.pathak@pragtech.co.in\n    state: \n  attributes_cache: {}\n\n  profile: &id001 !ruby/object:Profile \n    attributes: \n      address: address\n      city: \n      created_at: 2011-11-21 14:50:14\n      zip_code: \"411038\"\n      country: india\n      updated_at: 2011-11-21 14:50:14\n      salutation: \n      id: \"3\"\n      gender: \n      birth_date: \n      suburb: suburb\n      user_id: \"3\"\n      phone_number: \"9763370419\"\n      last_name: pathak\n      website: http://www.pragtech.co.in\n      notices: \n      email_address: kedar.pathak@pragtech.co.in\n      getting_newsletter: \"0\"\n      studios: \n      first_name: kedar\n      middle_name: \n      nationality: \n      state: \n      country_state: maharashtra\n      biography: \n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id001\n      errors: !omap []\n\n    new_record_before_save: false\n',0,0,'2011-11-24 05:53:01','test@pragtech.co.in','kedar.pathak@pragtech.co.in',NULL,NULL,NULL,NULL,NULL),(11,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-24 05:53:24.792029 Z\n    updated_at: *id001\n    invoice_id: 10\n    id: 8\n    amount_in_cents: 3500.0\n    credit_card_id: \n    user_id: 3\n    note: \n    currency: \n    state: online_validated\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I256165443\n      created_at: 2011-11-23 14:39:14\n      title: Invoice I256165443\n      payment_medium: online_validated\n      final_amount: \"35\"\n      updated_at: 2011-11-24 05:53:24\n      id: \"10\"\n      creator_id: \n      shipping_address: \n      client_id: \"3\"\n      purchasable_id: \"4\"\n      deadline: \"2011-12-07\"\n      sent_at: \n      validated_at: 2011-11-24 11:23:24\n      billing_address: \n      note: \n      description: Second invoice for the subscription to the competition \'new exhibition\' (70% of the total amount)\n      original_amount: \"35\"\n      purchasable_type: ExhibitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-24 10:38:36\n        u_layout: \n        salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-21 20:20:14\n        created_at: 2011-11-21 14:50:14\n        crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-24 05:08:36\n        u_language: \n        activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n        id: \"3\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakNN2\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: kedar.pathak@pragtech.co.in\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-24 05:53:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-24 09:32:07.798843 Z\n    updated_at: *id001\n    invoice_id: 15\n    id: 13\n    amount_in_cents: 5200.0\n    credit_card_id: \n    user_id: 3\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I107416828\n      created_at: 2011-11-24 09:32:07\n      title: Invoice I107416828\n      payment_medium: paypal\n      final_amount: \"52\"\n      updated_at: 2011-11-24 09:32:07\n      id: \"15\"\n      creator_id: \n      shipping_address: \"address india \"\n      client_id: \"3\"\n      purchasable_id: \"4\"\n      deadline: \"2011-12-01\"\n      sent_at: 2011-11-24 15:02:07\n      validated_at: 2011-11-24 15:02:07\n      billing_address: \"address india \"\n      note: \n      description: Invoice for the subscription to the competition \'first competition name2\'\n      original_amount: \"52\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-24 11:45:14\n        u_layout: \n        salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-21 20:20:14\n        created_at: 2011-11-21 14:50:14\n        crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-24 06:15:14\n        u_language: \n        activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n        id: \"3\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakNN2\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: kedar.pathak@pragtech.co.in\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-24 09:32:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-24 09:37:46.879624 Z\n    updated_at: *id001\n    invoice_id: 16\n    id: 15\n    amount_in_cents: 5300.0\n    credit_card_id: \n    user_id: 3\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I117628211\n      created_at: 2011-11-24 09:37:46\n      title: Invoice I117628211\n      payment_medium: paypal\n      final_amount: \"53\"\n      updated_at: 2011-11-24 09:37:46\n      id: \"16\"\n      creator_id: \n      shipping_address: \"address india \"\n      client_id: \"3\"\n      purchasable_id: \"4\"\n      deadline: \"2011-12-01\"\n      sent_at: 2011-11-24 15:07:46\n      validated_at: 2011-11-24 15:07:46\n      billing_address: \"address india \"\n      note: \n      description: Invoice for the subscription to the competition \'first competition name2\'\n      original_amount: \"53\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-24 11:45:14\n        u_layout: \n        salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-21 20:20:14\n        created_at: 2011-11-21 14:50:14\n        crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-24 06:15:14\n        u_language: \n        activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n        id: \"3\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakNN2\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: kedar.pathak@pragtech.co.in\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-24 09:37:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-24 09:39:34.968623 Z\n    updated_at: *id001\n    invoice_id: 17\n    id: 17\n    amount_in_cents: 5400.0\n    credit_card_id: \n    user_id: 3\n    note: \n    currency: \n    state: online_validated\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I465506788\n      created_at: 2011-11-24 09:39:34\n      title: Invoice I465506788\n      payment_medium: online_validated\n      final_amount: \"54\"\n      updated_at: 2011-11-24 09:39:34\n      id: \"17\"\n      creator_id: \n      shipping_address: \"address india \"\n      client_id: \"3\"\n      purchasable_id: \"4\"\n      deadline: \"2011-12-01\"\n      sent_at: 2011-11-24 15:09:34\n      validated_at: 2011-11-24 15:09:34\n      billing_address: \"address india \"\n      note: \n      description: Invoice for the subscription to the competition \'first competition name2\'\n      original_amount: \"54\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-24 11:45:14\n        u_layout: \n        salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-21 20:20:14\n        created_at: 2011-11-21 14:50:14\n        crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-24 06:15:14\n        u_language: \n        activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n        id: \"3\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakNN2\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: kedar.pathak@pragtech.co.in\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-24 09:39:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2011-11-24 10:54:39.063565 Z\n    updated_at: *id001\n    invoice_id: 21\n    id: 22\n    amount_in_cents: 10200.0\n    credit_card_id: \n    user_id: 4\n    note: \n    currency: \n    state: online_validated\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I233710364\n      created_at: 2011-11-24 10:54:38\n      title: Invoice I233710364\n      payment_medium: online_validated\n      final_amount: \"102\"\n      updated_at: 2011-11-24 10:54:38\n      id: \"21\"\n      creator_id: \n      shipping_address: \"address123 india1 \"\n      client_id: \"4\"\n      purchasable_id: \"9\"\n      deadline: \"2011-12-01\"\n      sent_at: 2011-11-24 16:24:38\n      validated_at: 2011-11-24 16:24:38\n      billing_address: \"address123 india1 \"\n      note: \n      description: Invoice for the subscription to the competition \'first competition name2\'\n      original_amount: \"102\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2011-11-23 20:09:48\n        u_layout: \n        salt: ee2d5499ecd0248f84ef8e59bdc8162798011759\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2011-11-22 13:43:24\n        created_at: 2011-11-22 08:13:24\n        crypted_password: 7151fa335edc9df257ce4d37cdbed44181d70552\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2011-11-23 14:39:48\n        u_language: \n        activation_code: af0d37aac44fe0a7775746d53cbce6e96daf28bf\n        id: \"4\"\n        avatar_content_type: \n        remember_token: \n        login: k.pathakkRAg\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: pathakorama1@gmail.com\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2011-11-24 10:54:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'UserMailer','send_invoice','--- \n- &id005 !ruby/object:Invoice \n  attributes: \n    number: I027687108\n    created_at: &id001 2011-11-24 11:54:02.226131 Z\n    title: Invoice I027687108\n    updated_at: *id001\n    final_amount: 7.0\n    payment_medium: paypal\n    id: 22\n    shipping_address: \n    creator_id: \n    validated_at: \n    sent_at: \n    deadline: 2011-12-01\n    purchasable_id: 1\n    client_id: 4\n    note: \n    billing_address: \n    original_amount: 7.0\n    description: Invoice generated after the validation of your cart the November 24, 2011 17:24\n    purchasable_type: Order\n    state: created\n  attributes_cache: {}\n\n  changed_attributes: \n    number: \n    created_at: \n    title: \n    updated_at: \n    payment_medium: \n    final_amount: \n    id: \n    purchasable_id: \n    deadline: \n    client_id: \n    description: \"\"\n    original_amount: \n    purchasable_type: \n    state: \n  client: &id006 !ruby/object:User \n    attributes: \n      last_connected_at: 2011-11-24 16:46:14\n      u_layout: \n      salt: ee2d5499ecd0248f84ef8e59bdc8162798011759\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2011-11-22 13:43:24\n      created_at: 2011-11-22 08:13:24\n      crypted_password: 7151fa335edc9df257ce4d37cdbed44181d70552\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2011-11-24 11:16:14\n      u_language: \n      activation_code: af0d37aac44fe0a7775746d53cbce6e96daf28bf\n      id: \"4\"\n      avatar_content_type: \n      remember_token: \n      login: k.pathakkRAg\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: pathakorama1@gmail.com\n      state: \n    attributes_cache: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id005\n    errors: !omap []\n\n  message: &id004 !ruby/object:Message \n    attributes: \n      deletedmt: \n      deletedm: \n      deletefrom: \n      created_at: &id002 2011-11-24 11:54:02.465081 Z\n      body: \"Hello, Please find attached your invoice For Your Payment For \"\n      flag: \n      updated_at: *id002\n      id: 1\n      deletetot: \n      subject: Invoice I027687108\n      deleteto: \n      author_id: 2\n      deletefromt: \n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id004\n      errors: !omap []\n\n    message_copies: \n    - &id003 !ruby/object:MessageCopy \n      attributes: \n        created_at: \n        mailfolder_id: 2\n        flag: \n        updated_at: 2011-11-24 11:54:02.494039 Z\n        id: 1\n        deleted: \n        recipient_id: 4\n        emaillabel_id: \n        labeled: \n        message_id: 1\n      attributes_cache: {}\n\n      changed_attributes: {}\n\n      errors: !ruby/object:ActiveRecord::Errors \n        base: *id003\n        errors: !omap []\n\n      message: !ruby/object:Message \n        attributes: \n          deletedm: \n          deletedmt: \n          created_at: 2011-11-24 11:54:02\n          deletefrom: \n          body: \"Hello, Please find attached your invoice For Your Payment For \"\n          updated_at: 2011-11-24 11:54:02\n          flag: \n          id: \"1\"\n          subject: Invoice I027687108\n          deletetot: \n          author_id: \"2\"\n          deleteto: \n          deletefromt: \n        attributes_cache: \n          created_at: 2011-11-24 11:54:02 Z\n      new_record: false\n    new_record: false\n    new_record_before_save: true\n  new_record: false\n- *id006\n',0,0,'2011-11-24 11:54:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'UserMailer','login_notification','--- \n- smith@gmaill.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :validations: &id003 \n          - - :content_type\n            - :unless: \n              :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n              :message: \n              :if: \n          - - :size\n            - :unless: \n              :message: file size must be between :min and :max bytes.\n              :if: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :default_style: :original\n        :default_url: /images/default_avatar.png\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n        :styles: &id002 \n          :thumb: \n            :convert_options: \"\"\n            :geometry: 100x100>\n            :processors: &id001 \n              - :thumbnail\n            :format: \n            :whiny: true\n        :whiny: true\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :storage: :filesystem\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: 36a8910e452d55a58191472391ec6e42fc2491a1\n    u_layout: \n    last_connected_at: \n    created_at: 2011-11-24 12:23:16.371201 Z\n    activated_at: 2011-11-24 17:53:16.373429 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: 44506f7c6056a2de34fac61768d3c8bb560b2ef9\n    updated_at: 2011-11-24 12:23:16.378994 Z\n    password_reset_code: \n    activation_code: b43e31a9939b8381db2e58aa7ab3108539d079f6\n    u_language: \n    id: 7\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: s.pathakRyX\n    state: \n    email: smith@gmaill.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2011-11-24 12:23:16\n      updated_at: 2011-11-24 12:23:16\n      id: \"7\"\n      user_id: \"7\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: kedar123\n  password_confirmation: kedar123\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: address12\n      created_at: &id005 2011-11-24 12:23:16.385032 Z\n      country: india\n      zip_code: \"411038\"\n      updated_at: *id005\n      salutation: \n      id: 7\n      suburb: asa\n      birth_date: \n      gender: \n      phone_number: \"9763370429\"\n      user_id: 7\n      notices: \n      website: http://www.pragtech.co.in\n      last_name: pathak\n      email_address: smith@gmaill.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: maharashtra\n      state: \n      nationality: \n      middle_name: \n      first_name: smith\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2011-11-24 12:23:16','test@pragtech.co.in','smith@gmaill.com',NULL,NULL,NULL,NULL,NULL),(18,'UserMailer','send_invoice','--- \n- &id005 !ruby/object:Invoice \n  attributes: \n    number: I111420545\n    created_at: &id001 2011-11-24 12:29:56.254946 Z\n    title: Invoice I111420545\n    updated_at: *id001\n    final_amount: 7.0\n    payment_medium: visa\n    id: 23\n    shipping_address: \n    creator_id: \n    validated_at: \n    sent_at: \n    deadline: 2011-12-01\n    purchasable_id: 3\n    client_id: 7\n    note: \n    billing_address: \n    original_amount: 7.0\n    description: Invoice generated after the validation of your cart the November 24, 2011 17:59\n    purchasable_type: Order\n    state: created\n  attributes_cache: {}\n\n  changed_attributes: \n    number: \n    created_at: \n    title: \n    updated_at: \n    payment_medium: \n    final_amount: \n    id: \n    purchasable_id: \n    deadline: \n    client_id: \n    description: \"\"\n    original_amount: \n    purchasable_type: \n    state: \n  client: &id006 !ruby/object:User \n    attributes: \n      last_connected_at: \n      u_layout: \n      salt: 36a8910e452d55a58191472391ec6e42fc2491a1\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2011-11-24 17:53:16\n      created_at: 2011-11-24 12:23:16\n      crypted_password: 44506f7c6056a2de34fac61768d3c8bb560b2ef9\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2011-11-24 12:23:16\n      u_language: \n      activation_code: b43e31a9939b8381db2e58aa7ab3108539d079f6\n      id: \"7\"\n      avatar_content_type: \n      remember_token: \n      login: s.pathakRyX\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: smith@gmaill.com\n      state: \n    attributes_cache: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id005\n    errors: !omap []\n\n  message: &id004 !ruby/object:Message \n    attributes: \n      deletedmt: \n      deletedm: \n      deletefrom: \n      created_at: &id002 2011-11-24 12:29:56.298262 Z\n      body: \"Hello, Please find attached your invoice For Your Payment For \"\n      flag: \n      updated_at: *id002\n      id: 2\n      deletetot: \n      subject: Invoice I111420545\n      deleteto: \n      author_id: 2\n      deletefromt: \n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id004\n      errors: !omap []\n\n    message_copies: \n    - &id003 !ruby/object:MessageCopy \n      attributes: \n        created_at: \n        mailfolder_id: 7\n        flag: \n        updated_at: 2011-11-24 12:29:56.300500 Z\n        id: 2\n        deleted: \n        recipient_id: 7\n        emaillabel_id: \n        labeled: \n        message_id: 2\n      attributes_cache: {}\n\n      changed_attributes: {}\n\n      errors: !ruby/object:ActiveRecord::Errors \n        base: *id003\n        errors: !omap []\n\n      message: !ruby/object:Message \n        attributes: \n          deletedm: \n          deletedmt: \n          created_at: 2011-11-24 12:29:56\n          deletefrom: \n          body: \"Hello, Please find attached your invoice For Your Payment For \"\n          updated_at: 2011-11-24 12:29:56\n          flag: \n          id: \"2\"\n          subject: Invoice I111420545\n          deletetot: \n          author_id: \"2\"\n          deleteto: \n          deletefromt: \n        attributes_cache: \n          created_at: 2011-11-24 12:29:56 Z\n      new_record: false\n    new_record: false\n    new_record_before_save: true\n  new_record: false\n- *id006\n',0,0,'2011-11-24 12:29:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'UserMailer','send_invoice','--- \n- &id005 !ruby/object:Invoice \n  attributes: \n    number: I544100634\n    created_at: &id001 2011-11-24 12:30:29.140269 Z\n    title: Invoice I544100634\n    updated_at: *id001\n    final_amount: 7.0\n    payment_medium: visa\n    id: 24\n    shipping_address: \n    creator_id: \n    validated_at: \n    sent_at: \n    deadline: 2011-12-01\n    purchasable_id: 5\n    client_id: 4\n    note: \n    billing_address: \n    original_amount: 7.0\n    description: Invoice generated after the validation of your cart the November 24, 2011 18:00\n    purchasable_type: Order\n    state: created\n  attributes_cache: {}\n\n  changed_attributes: \n    number: \n    created_at: \n    title: \n    updated_at: \n    payment_medium: \n    final_amount: \n    id: \n    purchasable_id: \n    deadline: \n    client_id: \n    description: \"\"\n    original_amount: \n    purchasable_type: \n    state: \n  client: &id006 !ruby/object:User \n    attributes: \n      last_connected_at: 2011-11-24 17:33:56\n      u_layout: \n      salt: ee2d5499ecd0248f84ef8e59bdc8162798011759\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2011-11-22 13:43:24\n      created_at: 2011-11-22 08:13:24\n      crypted_password: 7151fa335edc9df257ce4d37cdbed44181d70552\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2011-11-24 12:03:56\n      u_language: \n      activation_code: af0d37aac44fe0a7775746d53cbce6e96daf28bf\n      id: \"4\"\n      avatar_content_type: \n      remember_token: \n      login: k.pathakkRAg\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: pathakorama1@gmail.com\n      state: \n    attributes_cache: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id005\n    errors: !omap []\n\n  message: &id004 !ruby/object:Message \n    attributes: \n      deletedmt: \n      deletedm: \n      deletefrom: \n      created_at: &id002 2011-11-24 12:30:29.177780 Z\n      body: \"Hello, Please find attached your invoice For Your Payment For \"\n      flag: \n      updated_at: *id002\n      id: 3\n      deletetot: \n      subject: Invoice I544100634\n      deleteto: \n      author_id: 2\n      deletefromt: \n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id004\n      errors: !omap []\n\n    message_copies: \n    - &id003 !ruby/object:MessageCopy \n      attributes: \n        created_at: \n        mailfolder_id: 2\n        flag: \n        updated_at: 2011-11-24 12:30:29.179804 Z\n        id: 3\n        deleted: \n        recipient_id: 4\n        emaillabel_id: \n        labeled: \n        message_id: 3\n      attributes_cache: {}\n\n      changed_attributes: {}\n\n      errors: !ruby/object:ActiveRecord::Errors \n        base: *id003\n        errors: !omap []\n\n      message: !ruby/object:Message \n        attributes: \n          deletedm: \n          deletedmt: \n          created_at: 2011-11-24 12:30:29\n          deletefrom: \n          body: \"Hello, Please find attached your invoice For Your Payment For \"\n          updated_at: 2011-11-24 12:30:29\n          flag: \n          id: \"3\"\n          subject: Invoice I544100634\n          deletetot: \n          author_id: \"2\"\n          deleteto: \n          deletefromt: \n        attributes_cache: \n          created_at: 2011-11-24 12:30:29 Z\n      new_record: false\n    new_record: false\n    new_record_before_save: true\n  new_record: false\n- *id006\n',0,0,'2011-11-24 12:30:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'UserMailer','send_invoice_exhibition','--- \n- kedar.pathak@pragtech.co.in\n- invoice25\n- An Invoice Is Sent To Your Email. Please Make The Payment by Login To This Account.\n- !ruby/object:Invoice \n  attributes: \n    number: I668105053\n    created_at: 2011-11-24 13:17:48\n    title: Invoice I668105053\n    payment_medium: \n    final_amount: \"15\"\n    updated_at: 2011-11-24 13:17:48\n    id: \"25\"\n    creator_id: \n    shipping_address: \n    client_id: \"3\"\n    purchasable_id: \"5\"\n    deadline: \"2011-12-01\"\n    sent_at: \n    validated_at: \n    billing_address: \n    note: \n    description: First invoice for the subscription to the exhibition \'new exhibition\' (30% of the total amount)\n    original_amount: \"15\"\n    purchasable_type: ExhibitionsUser\n    state: created\n  attributes_cache: {}\n\n  client: !ruby/object:User \n    attributes: \n      last_connected_at: 2011-11-24 17:31:58\n      u_layout: \n      salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2011-11-21 20:20:14\n      created_at: 2011-11-21 14:50:14\n      crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2011-11-24 12:01:58\n      u_language: \n      activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n      id: \"3\"\n      avatar_content_type: \n      remember_token: \n      login: k.pathakNN2\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: kedar.pathak@pragtech.co.in\n      state: \n    attributes_cache: {}\n\n    profile: !ruby/object:Profile \n      attributes: \n        address: address\n        city: \n        created_at: 2011-11-21 14:50:14\n        zip_code: \"411038\"\n        country: india\n        updated_at: 2011-11-24 08:49:26\n        salutation: \n        id: \"3\"\n        gender: \n        birth_date: \n        suburb: suburb\n        user_id: \"3\"\n        phone_number: \"9763370419\"\n        last_name: pathak\n        website: http://www.pragtech.co.in\n        notices: \n        email_address: kedar.pathak@pragtech.co.in\n        getting_newsletter: \"0\"\n        studios: \n        first_name: kedar\n        middle_name: \n        nationality: \n        state: \n        country_state: maharashtra\n        biography: \n      attributes_cache: {}\n\n- !ruby/object:User \n  attributes: \n    last_connected_at: 2011-11-24 17:31:58\n    u_layout: \n    salt: d3766a93b1be57a82429faea2e752998c6a2f9fc\n    avatar_file_name: \n    avatar_file_size: \n    activated_at: 2011-11-21 20:20:14\n    created_at: 2011-11-21 14:50:14\n    crypted_password: 93fabb170070ba3f2d7182411ea90ab53157b561\n    remember_token_expires_at: \n    password_reset_code: \n    updated_at: 2011-11-24 12:01:58\n    u_language: \n    activation_code: c9434ae5d5266dcccbdc335e29cd9e55ad502aa2\n    id: \"3\"\n    avatar_content_type: \n    remember_token: \n    login: k.pathakNN2\n    avatar_updated_at: \n    u_per_page: \n    system_role_id: \"8\"\n    email: kedar.pathak@pragtech.co.in\n    state: \n  attributes_cache: {}\n\n  profile: !ruby/object:Profile \n    attributes: \n      address: address\n      city: \n      created_at: 2011-11-21 14:50:14\n      zip_code: \"411038\"\n      country: india\n      updated_at: 2011-11-24 08:49:26\n      salutation: \n      id: \"3\"\n      gender: \n      birth_date: \n      suburb: suburb\n      user_id: \"3\"\n      phone_number: \"9763370419\"\n      last_name: pathak\n      website: http://www.pragtech.co.in\n      notices: \n      email_address: kedar.pathak@pragtech.co.in\n      getting_newsletter: \"0\"\n      studios: \n      first_name: kedar\n      middle_name: \n      nationality: \n      state: \n      country_state: maharashtra\n      biography: \n    attributes_cache: {}\n\n',0,0,'2011-11-24 13:17:49','test@pragtech.co.in','kedar.pathak@pragtech.co.in',NULL,NULL,NULL,NULL,NULL),(21,'UserMailer','studio_notification','--- \n- pathakorama1@gmail.com\n- kedar pathak\n',0,0,'2012-06-01 07:26:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'UserMailer','login_notification','--- \n- pathakorama1@gmail.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :default_url: /images/default_avatar.png\n        :styles: &id002 \n          :thumb: \n            :whiny: true\n            :convert_options: \"\"\n            :format: \n            :geometry: 100x100>\n            :processors: &id001 \n              - :thumbnail\n        :default_style: :original\n        :whiny: true\n        :storage: :filesystem\n        :validations: &id003 \n          - - :content_type\n            - :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n              :message: \n              :if: \n              :unless: \n          - - :size\n            - :message: file size must be between :min and :max bytes.\n              :if: \n              :unless: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: 90a27b718381d095877b7f5c984cb342f0b74878\n    u_layout: \n    last_connected_at: \n    created_at: 2012-06-01 07:44:53.123236 Z\n    activated_at: 2012-06-01 13:14:53.127527 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: 17c8260e06b5df8ede5a0ef05c22e65ba459b401\n    updated_at: 2012-06-01 07:44:53.137518 Z\n    password_reset_code: \n    activation_code: 831e71711e7a002df9c3b85095fba58f82dc1288\n    u_language: \n    id: 8\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: s.supermanzn2\n    state: \n    email: pathakorama1@gmail.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2012-06-01 07:44:53\n      updated_at: 2012-06-01 07:44:53\n      id: \"8\"\n      user_id: \"8\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: shriganesh\n  password_confirmation: shriganesh\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: address for use\n      created_at: &id005 2012-06-01 07:44:53.181401 Z\n      country: india\n      zip_code: \"411038\"\n      updated_at: *id005\n      salutation: \n      id: 8\n      suburb: sub1\n      birth_date: \n      gender: \n      phone_number: \"9763370419\"\n      user_id: 8\n      notices: \n      website: www.pragtech.co.in\n      last_name: superman\n      email_address: pathakorama1@gmail.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: maharashtra\n      state: \n      nationality: \n      middle_name: \n      first_name: superfast\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2012-06-01 07:44:53','test@pragtech.co.in','pathakorama1@gmail.com',NULL,NULL,NULL,NULL,NULL),(23,'UserMailer','login_notification','--- \n- karan@gmaill.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :default_url: /images/default_avatar.png\n        :styles: &id002 \n          :thumb: \n            :whiny: true\n            :convert_options: \"\"\n            :format: \n            :geometry: 100x100>\n            :processors: &id001 \n              - :thumbnail\n        :default_style: :original\n        :whiny: true\n        :storage: :filesystem\n        :validations: &id003 \n          - - :content_type\n            - :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n              :message: \n              :if: \n              :unless: \n          - - :size\n            - :message: file size must be between :min and :max bytes.\n              :if: \n              :unless: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: 90c99f15352f3bac7f9d7d018754bbc235ebcb64\n    u_layout: \n    last_connected_at: \n    created_at: 2012-06-01 07:52:13.899262 Z\n    activated_at: 2012-06-01 13:22:13.901449 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: 0c5664e8bd2a88f36e8c7e6f71dc35f323db041e\n    updated_at: 2012-06-01 07:52:13.906435 Z\n    password_reset_code: \n    activation_code: efad420f7945c7bb696b060f49612d2e57f13195\n    u_language: \n    id: 9\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: k.joharhRp\n    state: \n    email: karan@gmaill.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2012-06-01 07:52:13\n      updated_at: 2012-06-01 07:52:13\n      id: \"9\"\n      user_id: \"9\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: kedar123\n  password_confirmation: kedar123\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: piune\n      address: address123\n      created_at: &id005 2012-06-01 07:52:13.911975 Z\n      country: Aland Islands\n      zip_code: \"411038\"\n      updated_at: *id005\n      salutation: \n      id: 9\n      suburb: sub\n      birth_date: \n      gender: \n      phone_number: \"25420753\"\n      user_id: 9\n      notices: \n      website: www.pragmatic.com\n      last_name: johar\n      email_address: karan@gmaill.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: maha\n      state: \n      nationality: \n      middle_name: \n      first_name: karan\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2012-06-01 07:52:14','test@pragtech.co.in','karan@gmaill.com',NULL,NULL,NULL,NULL,NULL),(24,'UserMailer','login_notification','--- \n- karan1@gmaill.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :default_url: /images/default_avatar.png\n        :styles: &id002 \n          :thumb: \n            :whiny: true\n            :convert_options: \"\"\n            :format: \n            :geometry: 100x100>\n            :processors: &id001 \n              - :thumbnail\n        :default_style: :original\n        :whiny: true\n        :storage: :filesystem\n        :validations: &id003 \n          - - :content_type\n            - :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n              :message: \n              :if: \n              :unless: \n          - - :size\n            - :message: file size must be between :min and :max bytes.\n              :if: \n              :unless: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: 759745f02180631835301028d370dd7fc9e1df97\n    u_layout: \n    last_connected_at: \n    created_at: 2012-06-01 07:53:49.148378 Z\n    activated_at: 2012-06-01 13:23:49.169515 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: ebacd24d461d8abea78276835574af39458f6f3e\n    updated_at: 2012-06-01 07:53:49.176693 Z\n    password_reset_code: \n    activation_code: 255c811055ea2f9f49531ff9f173658adf06825a\n    u_language: \n    id: 10\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: k.joharmsb\n    state: \n    email: karan1@gmaill.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2012-06-01 07:53:49\n      updated_at: 2012-06-01 07:53:49\n      id: \"10\"\n      user_id: \"10\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: kedar123\n  password_confirmation: kedar123\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: piune\n      address: address123\n      created_at: &id005 2012-06-01 07:53:49.182002 Z\n      country: Aland Islands\n      zip_code: \"411038\"\n      updated_at: *id005\n      salutation: \n      id: 10\n      suburb: sub\n      birth_date: \n      gender: \n      phone_number: \"25420753\"\n      user_id: 10\n      notices: \n      website: www.pragmatic.com\n      last_name: johar\n      email_address: karan1@gmaill.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: maha\n      state: \n      nationality: \n      middle_name: \n      first_name: karan\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2012-06-01 07:53:49','test@pragtech.co.in','karan1@gmaill.com',NULL,NULL,NULL,NULL,NULL),(25,'UserMailer','login_notification','--- \n- vishalbharti.log@gmail.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :default_url: /images/default_avatar.png\n        :styles: &id002 \n          :thumb: \n            :processors: &id001 \n              - :thumbnail\n            :whiny: true\n            :geometry: 100x100>\n            :format: \n            :convert_options: \"\"\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :whiny: true\n        :storage: :filesystem\n        :validations: &id003 \n          - - :content_type\n            - :unless: \n              :if: \n              :message: \n              :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n          - - :size\n            - :unless: \n              :if: \n              :message: file size must be between :min and :max bytes.\n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n        :default_style: :original\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: 8d20c50ee0f3d779daccf784a3d7d33d7440850e\n    u_layout: \n    last_connected_at: \n    created_at: 2012-06-06 14:54:58.312497 Z\n    activated_at: 2012-06-06 20:24:58.322871 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: 312fa4d2b646f1c6e67397396b70fa1e3f59f132\n    updated_at: 2012-06-06 14:54:58.650799 Z\n    password_reset_code: \n    activation_code: fda98381c7259e38a7bc0a07e68cda3b87511f29\n    u_language: \n    id: 11\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: v.bhartizTh\n    state: \n    email: vishalbharti.log@gmail.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2012-06-06 14:54:58\n      updated_at: 2012-06-06 14:54:58\n      id: \"11\"\n      user_id: \"11\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: 4friends\n  password_confirmation: 4friends\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: Dange Chowk\n      created_at: &id005 2012-06-06 14:54:58.679545 Z\n      country: India\n      zip_code: 0933\n      updated_at: *id005\n      salutation: \n      id: 11\n      suburb: Ganeshnagar\n      birth_date: \n      gender: \n      phone_number: \"1234567891\"\n      user_id: 11\n      notices: \n      website: www.pragtech.co.in\n      last_name: Bharti\n      email_address: vishalbharti.log@gmail.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: Maharashtra\n      state: \n      nationality: \n      middle_name: \n      first_name: Vishal\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2012-06-06 14:54:59','test@pragtech.co.in','vishalbharti.log@gmail.com',NULL,NULL,NULL,NULL,NULL),(26,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2012-06-09 06:36:15.194921 Z\n    updated_at: *id001\n    invoice_id: 27\n    id: 27\n    amount_in_cents: 50000.0\n    credit_card_id: \n    user_id: 11\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I846106281\n      created_at: 2012-06-09 06:36:14\n      title: Invoice I846106281\n      payment_medium: paypal\n      final_amount: \"500\"\n      updated_at: 2012-06-09 06:36:15\n      id: \"27\"\n      creator_id: \n      shipping_address: \"Dange Chowk India \"\n      client_id: \"11\"\n      purchasable_id: \"11\"\n      deadline: \"2012-06-16\"\n      sent_at: 2012-06-09 12:06:14\n      validated_at: 2012-06-09 12:06:14\n      billing_address: \"Dange Chowk India \"\n      note: \n      description: Invoice for the subscription to the competition \'Morya Art & Cultural Competetion\'\n      original_amount: \"500\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: 2012-06-08 20:59:20\n        u_layout: \n        salt: 8d20c50ee0f3d779daccf784a3d7d33d7440850e\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2012-06-06 20:24:58\n        created_at: 2012-06-06 14:54:58\n        crypted_password: 312fa4d2b646f1c6e67397396b70fa1e3f59f132\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2012-06-08 15:29:20\n        u_language: \n        activation_code: fda98381c7259e38a7bc0a07e68cda3b87511f29\n        id: \"11\"\n        avatar_content_type: \n        remember_token: \n        login: v.bhartizTh\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: vishalbharti.log@gmail.com\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2012-06-09 06:36:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'UserMailer','login_notification','--- \n- joe@test.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :default_url: /images/default_avatar.png\n        :styles: &id002 \n          :thumb: \n            :processors: &id001 \n              - :thumbnail\n            :format: \n            :geometry: 100x100>\n            :whiny: true\n            :convert_options: \"\"\n        :default_style: :original\n        :whiny: true\n        :storage: :filesystem\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n        :validations: &id003 \n          - - :content_type\n            - :unless: \n              :if: \n              :message: \n              :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n          - - :size\n            - :unless: \n              :if: \n              :message: file size must be between :min and :max bytes.\n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: 25630613e3aa64f9a62ed80a26ec4d205fe4069d\n    u_layout: \n    last_connected_at: \n    created_at: 2012-06-09 11:12:34.077110 Z\n    activated_at: 2012-06-09 16:42:34.088113 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: d247ea8d30b13d57b4ac0620d3efe8a183aa0034\n    updated_at: 2012-06-09 11:12:34.117397 Z\n    password_reset_code: \n    activation_code: 1ea57c446b568522cfde35807de00fb492b1a8d0\n    u_language: \n    id: 12\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: j.badgerjLY\n    state: \n    email: joe@test.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2012-06-09 11:12:34\n      updated_at: 2012-06-09 11:12:34\n      id: \"12\"\n      user_id: \"12\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: badger\n  password_confirmation: badger\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: Louise Street, Sydney\n      created_at: &id005 2012-06-09 11:12:34.145331 Z\n      country: Australia\n      zip_code: \"834001\"\n      updated_at: *id005\n      salutation: \n      id: 12\n      suburb: michee\n      birth_date: \n      gender: \n      phone_number: \"7709238184\"\n      user_id: 12\n      notices: \n      website: \"\"\n      last_name: Badger\n      email_address: joe@test.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: Sydney\n      state: \n      nationality: \n      middle_name: \n      first_name: Joe\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2012-06-09 11:12:34','test@pragtech.co.in','joe@test.com',NULL,NULL,NULL,NULL,NULL),(28,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2012-06-09 11:57:12.613723 Z\n    updated_at: *id001\n    invoice_id: 28\n    id: 29\n    amount_in_cents: 50000.0\n    credit_card_id: \n    user_id: 12\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I036404766\n      created_at: 2012-06-09 11:57:12\n      title: Invoice I036404766\n      payment_medium: paypal\n      final_amount: \"500\"\n      updated_at: 2012-06-09 11:57:12\n      id: \"28\"\n      creator_id: \n      shipping_address: \"Louise Street, Sydney Australia \"\n      client_id: \"12\"\n      purchasable_id: \"12\"\n      deadline: \"2012-06-16\"\n      sent_at: 2012-06-09 17:27:12\n      validated_at: 2012-06-09 17:27:12\n      billing_address: \"Louise Street, Sydney Australia \"\n      note: \n      description: Invoice for the subscription to the competition \'Morya Art & Cultural Competetion\'\n      original_amount: \"500\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: \n        u_layout: \n        salt: 25630613e3aa64f9a62ed80a26ec4d205fe4069d\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2012-06-09 16:42:34\n        created_at: 2012-06-09 11:12:34\n        crypted_password: d247ea8d30b13d57b4ac0620d3efe8a183aa0034\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2012-06-09 11:12:34\n        u_language: \n        activation_code: 1ea57c446b568522cfde35807de00fb492b1a8d0\n        id: \"12\"\n        avatar_content_type: \n        remember_token: \n        login: j.badgerjLY\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: joe@test.com\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2012-06-09 11:57:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2012-06-09 12:57:37.410687 Z\n    updated_at: *id001\n    invoice_id: 29\n    id: 31\n    amount_in_cents: 0.0\n    credit_card_id: \n    user_id: 12\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I184681528\n      created_at: 2012-06-09 12:57:36\n      title: Invoice I184681528\n      payment_medium: paypal\n      final_amount: \"0\"\n      updated_at: 2012-06-09 12:57:37\n      id: \"29\"\n      creator_id: \n      shipping_address: \"Louise Street, Sydney Australia \"\n      client_id: \"12\"\n      purchasable_id: \"12\"\n      deadline: \"2012-06-16\"\n      sent_at: 2012-06-09 18:27:36\n      validated_at: 2012-06-09 18:27:36\n      billing_address: \"Louise Street, Sydney Australia \"\n      note: \n      description: Invoice for the subscription to the competition \'Morya Art & Cultural Competetion\'\n      original_amount: \"0\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: \n        u_layout: \n        salt: 25630613e3aa64f9a62ed80a26ec4d205fe4069d\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2012-06-09 16:42:34\n        created_at: 2012-06-09 11:12:34\n        crypted_password: d247ea8d30b13d57b4ac0620d3efe8a183aa0034\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2012-06-09 11:12:34\n        u_language: \n        activation_code: 1ea57c446b568522cfde35807de00fb492b1a8d0\n        id: \"12\"\n        avatar_content_type: \n        remember_token: \n        login: j.badgerjLY\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: joe@test.com\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2012-06-09 12:57:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'UserMailer','payment_confirmation','--- \n- &id002 !ruby/object:Payment \n  attributes: \n    created_at: &id001 2012-06-09 13:03:47.845598 Z\n    updated_at: *id001\n    invoice_id: 30\n    id: 32\n    amount_in_cents: 0.0\n    credit_card_id: \n    user_id: 12\n    note: \n    currency: \n    state: paypal\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id002\n    errors: !omap []\n\n  invoice: !ruby/object:Invoice \n    attributes: \n      number: I373862738\n      created_at: 2012-06-09 13:03:47\n      title: Invoice I373862738\n      payment_medium: paypal\n      final_amount: \"0\"\n      updated_at: 2012-06-09 13:03:47\n      id: \"30\"\n      creator_id: \n      shipping_address: \"Louise Street, Sydney Australia \"\n      client_id: \"12\"\n      purchasable_id: \"12\"\n      deadline: \"2012-06-16\"\n      sent_at: 2012-06-09 18:33:47\n      validated_at: 2012-06-09 18:33:47\n      billing_address: \"Louise Street, Sydney Australia \"\n      note: \n      description: Invoice for the subscription to the competition \'Morya Art & Cultural Competetion\'\n      original_amount: \"0\"\n      purchasable_type: CompetitionsUser\n      state: validated\n    attributes_cache: {}\n\n    client: &id003 !ruby/object:User \n      attributes: \n        last_connected_at: \n        u_layout: \n        salt: 25630613e3aa64f9a62ed80a26ec4d205fe4069d\n        avatar_file_name: \n        avatar_file_size: \n        activated_at: 2012-06-09 16:42:34\n        created_at: 2012-06-09 11:12:34\n        crypted_password: d247ea8d30b13d57b4ac0620d3efe8a183aa0034\n        remember_token_expires_at: \n        password_reset_code: \n        updated_at: 2012-06-09 11:12:34\n        u_language: \n        activation_code: 1ea57c446b568522cfde35807de00fb492b1a8d0\n        id: \"12\"\n        avatar_content_type: \n        remember_token: \n        login: j.badgerjLY\n        avatar_updated_at: \n        u_per_page: \n        system_role_id: \"8\"\n        email: joe@test.com\n        state: \n      attributes_cache: {}\n\n  new_record: false\n- *id003\n',0,0,'2012-06-09 13:03:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'UserMailer','login_notification','--- \n- vishal.bharti.log@gmail.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :whiny: true\n        :storage: :filesystem\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :validations: &id003 \n          - - :content_type\n            - :if: \n              :message: \n              :unless: \n              :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n          - - :size\n            - :if: \n              :message: file size must be between :min and :max bytes.\n              :unless: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :default_url: /images/default_avatar.png\n        :styles: &id002 \n          :thumb: \n            :whiny: true\n            :convert_options: \"\"\n            :format: \n            :processors: &id001 \n              - :thumbnail\n            :geometry: 100x100>\n        :default_style: :original\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: fce3083b2abc5e0a5cf2853548aa6286e52715e8\n    u_layout: \n    last_connected_at: \n    created_at: 2012-06-13 14:09:31.893924 Z\n    activated_at: 2012-06-13 19:39:31.903200 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: a722ff291e8f5c578a1b341274b6e5f5785797a2\n    updated_at: 2012-06-13 14:09:31.923720 Z\n    password_reset_code: \n    activation_code: a17d7616e83556da21dd11105fb1ed38c88a3327\n    u_language: \n    id: 13\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: v.bartiSJT\n    state: \n    email: vishal.bharti.log@gmail.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2012-06-13 14:09:31\n      updated_at: 2012-06-13 14:09:31\n      id: \"13\"\n      user_id: \"13\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: 4friends\n  password_confirmation: 4friends\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: Ranchi\n      created_at: &id005 2012-06-13 14:09:31.958915 Z\n      country: India\n      zip_code: \"834001\"\n      updated_at: *id005\n      salutation: \n      id: 13\n      suburb: Lalpur\n      birth_date: \n      gender: \n      phone_number: \"7709248184\"\n      user_id: 13\n      notices: \n      website: www.pragtech.co.in\n      last_name: Barti\n      email_address: vishal.bharti.log@gmail.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: Jharkhand\n      state: \n      nationality: \n      middle_name: \n      first_name: Vishal\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2012-06-13 14:09:32','test@pragtech.co.in','vishal.bharti.log@gmail.com',NULL,NULL,NULL,NULL,NULL),(32,'UserMailer','send_invoice','--- \n- &id005 !ruby/object:Invoice \n  attributes: \n    number: I138386840\n    created_at: &id001 2012-06-20 14:23:25.405037 Z\n    title: Invoice I138386840\n    updated_at: *id001\n    final_amount: 50\n    payment_medium: paypal\n    id: 33\n    shipping_address: \"Dange Chowk India \"\n    creator_id: \n    validated_at: \n    sent_at: \n    deadline: 2012-06-27\n    purchasable_id: 2\n    client_id: 11\n    note: \n    billing_address: \"Dange Chowk India \"\n    original_amount: 50\n    description: Invoice for the subscription to the GroupShow \'Monalisa\'\n    purchasable_type: Usergroupshow\n    state: created\n  attributes_cache: {}\n\n  changed_attributes: \n    number: \n    created_at: \n    title: \n    updated_at: \n    payment_medium: \n    final_amount: \n    id: \n    shipping_address: \n    purchasable_id: \n    deadline: \n    client_id: \n    billing_address: \n    description: \"\"\n    original_amount: \n    purchasable_type: \n    state: \n  client: &id006 !ruby/object:User \n    attributes: \n      last_connected_at: 2012-06-20 19:40:49\n      u_layout: \n      salt: 8d20c50ee0f3d779daccf784a3d7d33d7440850e\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2012-06-06 20:24:58\n      created_at: 2012-06-06 14:54:58\n      crypted_password: 312fa4d2b646f1c6e67397396b70fa1e3f59f132\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2012-06-20 14:10:49\n      u_language: \n      activation_code: fda98381c7259e38a7bc0a07e68cda3b87511f29\n      id: \"11\"\n      avatar_content_type: \n      remember_token: \n      login: v.bhartizTh\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: vishalbharti.log@gmail.com\n      state: \n    attributes_cache: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id005\n    errors: !omap []\n\n  message: &id004 !ruby/object:Message \n    attributes: \n      deletedmt: \n      deletedm: \n      deletefrom: \n      created_at: &id002 2012-06-20 14:23:25.658915 Z\n      body: \"Hello, Please find attached your invoice For Your Payment For \"\n      flag: \n      updated_at: *id002\n      id: 6\n      deletetot: \n      subject: Invoice I138386840\n      deleteto: \n      author_id: 2\n      deletefromt: \n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id004\n      errors: !omap []\n\n    message_copies: \n    - &id003 !ruby/object:MessageCopy \n      attributes: \n        created_at: \n        mailfolder_id: 11\n        flag: \n        updated_at: 2012-06-20 14:23:25.667936 Z\n        id: 6\n        deleted: \n        recipient_id: 11\n        emaillabel_id: \n        labeled: \n        message_id: 6\n      attributes_cache: {}\n\n      changed_attributes: {}\n\n      errors: !ruby/object:ActiveRecord::Errors \n        base: *id003\n        errors: !omap []\n\n      message: !ruby/object:Message \n        attributes: \n          deletedm: \n          deletedmt: \n          created_at: 2012-06-20 14:23:25\n          deletefrom: \n          body: \"Hello, Please find attached your invoice For Your Payment For \"\n          updated_at: 2012-06-20 14:23:25\n          flag: \n          id: \"6\"\n          subject: Invoice I138386840\n          deletetot: \n          author_id: \"2\"\n          deleteto: \n          deletefromt: \n        attributes_cache: \n          created_at: 2012-06-20 14:23:25 Z\n      new_record: false\n    new_record: false\n    new_record_before_save: true\n  new_record: false\n- *id006\n',0,0,'2012-06-20 14:23:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'UserMailer','send_invoice','--- \n- &id005 !ruby/object:Invoice \n  attributes: \n    number: I814480645\n    created_at: &id001 2012-06-20 14:29:01.624387 Z\n    title: Invoice I814480645\n    updated_at: *id001\n    final_amount: 50\n    payment_medium: paypal\n    id: 34\n    shipping_address: \"Dange Chowk India \"\n    creator_id: \n    validated_at: \n    sent_at: \n    deadline: 2012-06-27\n    purchasable_id: 2\n    client_id: 11\n    note: \n    billing_address: \"Dange Chowk India \"\n    original_amount: 50\n    description: Invoice for the subscription to the GroupShow \'Monalisa\'\n    purchasable_type: Usergroupshow\n    state: created\n  attributes_cache: {}\n\n  changed_attributes: \n    number: \n    created_at: \n    title: \n    updated_at: \n    payment_medium: \n    final_amount: \n    id: \n    shipping_address: \n    purchasable_id: \n    deadline: \n    client_id: \n    billing_address: \n    description: \"\"\n    original_amount: \n    purchasable_type: \n    state: \n  client: &id006 !ruby/object:User \n    attributes: \n      last_connected_at: 2012-06-20 19:40:49\n      u_layout: \n      salt: 8d20c50ee0f3d779daccf784a3d7d33d7440850e\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2012-06-06 20:24:58\n      created_at: 2012-06-06 14:54:58\n      crypted_password: 312fa4d2b646f1c6e67397396b70fa1e3f59f132\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2012-06-20 14:10:49\n      u_language: \n      activation_code: fda98381c7259e38a7bc0a07e68cda3b87511f29\n      id: \"11\"\n      avatar_content_type: \n      remember_token: \n      login: v.bhartizTh\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: vishalbharti.log@gmail.com\n      state: \n    attributes_cache: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id005\n    errors: !omap []\n\n  message: &id004 !ruby/object:Message \n    attributes: \n      deletedmt: \n      deletedm: \n      deletefrom: \n      created_at: &id002 2012-06-20 14:29:02.039008 Z\n      body: \"Hello, Please find attached your invoice For Your Payment For \"\n      flag: \n      updated_at: *id002\n      id: 7\n      deletetot: \n      subject: Invoice I814480645\n      deleteto: \n      author_id: 2\n      deletefromt: \n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id004\n      errors: !omap []\n\n    message_copies: \n    - &id003 !ruby/object:MessageCopy \n      attributes: \n        created_at: \n        mailfolder_id: 11\n        flag: \n        updated_at: 2012-06-20 14:29:02.046229 Z\n        id: 7\n        deleted: \n        recipient_id: 11\n        emaillabel_id: \n        labeled: \n        message_id: 7\n      attributes_cache: {}\n\n      changed_attributes: {}\n\n      errors: !ruby/object:ActiveRecord::Errors \n        base: *id003\n        errors: !omap []\n\n      message: !ruby/object:Message \n        attributes: \n          deletedm: \n          deletedmt: \n          created_at: 2012-06-20 14:29:02\n          deletefrom: \n          body: \"Hello, Please find attached your invoice For Your Payment For \"\n          updated_at: 2012-06-20 14:29:02\n          flag: \n          id: \"7\"\n          subject: Invoice I814480645\n          deletetot: \n          author_id: \"2\"\n          deleteto: \n          deletefromt: \n        attributes_cache: \n          created_at: 2012-06-20 14:29:02 Z\n      new_record: false\n    new_record: false\n    new_record_before_save: true\n  new_record: false\n- *id006\n',0,0,'2012-06-20 14:29:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'UserMailer','send_invoice','--- \n- &id005 !ruby/object:Invoice \n  attributes: \n    number: I121446710\n    created_at: &id001 2012-06-20 15:15:39.734920 Z\n    title: Invoice I121446710\n    updated_at: *id001\n    final_amount: 50\n    payment_medium: paypal\n    id: 35\n    shipping_address: \"Dange Chowk India \"\n    creator_id: \n    validated_at: \n    sent_at: \n    deadline: 2012-06-27\n    purchasable_id: 3\n    client_id: 11\n    note: \n    billing_address: \"Dange Chowk India \"\n    original_amount: 50\n    description: Invoice for the subscription to the GroupShow \'new groupshow1\'\n    purchasable_type: Usergroupshow\n    state: created\n  attributes_cache: {}\n\n  changed_attributes: \n    number: \n    created_at: \n    title: \n    updated_at: \n    payment_medium: \n    final_amount: \n    id: \n    shipping_address: \n    deadline: \n    client_id: \n    purchasable_id: \n    billing_address: \n    description: \"\"\n    original_amount: \n    purchasable_type: \n    state: \n  client: &id006 !ruby/object:User \n    attributes: \n      last_connected_at: 2012-06-20 20:27:53\n      u_layout: \n      salt: 8d20c50ee0f3d779daccf784a3d7d33d7440850e\n      avatar_file_name: \n      avatar_file_size: \n      activated_at: 2012-06-06 20:24:58\n      created_at: 2012-06-06 14:54:58\n      crypted_password: 312fa4d2b646f1c6e67397396b70fa1e3f59f132\n      remember_token_expires_at: \n      password_reset_code: \n      updated_at: 2012-06-20 14:57:53\n      u_language: \n      activation_code: fda98381c7259e38a7bc0a07e68cda3b87511f29\n      id: \"11\"\n      avatar_content_type: \n      remember_token: \n      login: v.bhartizTh\n      avatar_updated_at: \n      u_per_page: \n      system_role_id: \"8\"\n      email: vishalbharti.log@gmail.com\n      state: \n    attributes_cache: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id005\n    errors: !omap []\n\n  message: &id004 !ruby/object:Message \n    attributes: \n      deletedmt: \n      deletedm: \n      deletefrom: \n      created_at: &id002 2012-06-20 15:15:39.945501 Z\n      body: \"Hello, Please find attached your invoice For Your Payment For \"\n      flag: \n      updated_at: *id002\n      id: 8\n      deletetot: \n      subject: Invoice I121446710\n      deleteto: \n      author_id: 2\n      deletefromt: \n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id004\n      errors: !omap []\n\n    message_copies: \n    - &id003 !ruby/object:MessageCopy \n      attributes: \n        created_at: \n        mailfolder_id: 11\n        flag: \n        updated_at: 2012-06-20 15:15:39.955037 Z\n        id: 8\n        deleted: \n        recipient_id: 11\n        emaillabel_id: \n        labeled: \n        message_id: 8\n      attributes_cache: {}\n\n      changed_attributes: {}\n\n      errors: !ruby/object:ActiveRecord::Errors \n        base: *id003\n        errors: !omap []\n\n      message: !ruby/object:Message \n        attributes: \n          deletedm: \n          deletedmt: \n          created_at: 2012-06-20 15:15:39\n          deletefrom: \n          body: \"Hello, Please find attached your invoice For Your Payment For \"\n          updated_at: 2012-06-20 15:15:39\n          flag: \n          id: \"8\"\n          subject: Invoice I121446710\n          deletetot: \n          author_id: \"2\"\n          deleteto: \n          deletefromt: \n        attributes_cache: \n          created_at: 2012-06-20 15:15:39 Z\n      new_record: false\n    new_record: false\n    new_record_before_save: true\n  new_record: false\n- *id006\n',0,0,'2012-06-20 15:15:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'UserMailer','login_notification','--- \n- vishu.nick@gmail.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :validations: &id003 \n          - - :content_type\n            - :unless: \n              :message: \n              :if: \n              :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n          - - :size\n            - :unless: \n              :message: file size must be between :min and :max bytes.\n              :if: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :default_url: /images/default_avatar.png\n        :styles: &id002 \n          :thumb: \n            :format: \n            :geometry: 100x100>\n            :processors: &id001 \n              - :thumbnail\n            :whiny: true\n            :convert_options: \"\"\n        :default_style: :original\n        :whiny: true\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n        :storage: :filesystem\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: 282b89995250ae7ee49d31fc46588d7a0739a01c\n    u_layout: \n    last_connected_at: \n    created_at: 2012-06-22 06:45:23.010776 Z\n    activated_at: 2012-06-22 12:15:23.022753 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: 5dc6b72ce7830ac988b75d89a5610864517e14a7\n    updated_at: 2012-06-22 06:45:23.054026 Z\n    password_reset_code: \n    activation_code: 67513c61e3e7a7975be1e4ed9d5bb14d237ff091\n    u_language: \n    id: 14\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: v.kumarmLa\n    state: \n    email: vishu.nick@gmail.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2012-06-22 06:45:23\n      updated_at: 2012-06-22 06:45:23\n      id: \"14\"\n      user_id: \"14\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: 4friends\n  password_confirmation: 4friends\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: fgsjhgfjsgjfs\n      created_at: &id005 2012-06-22 06:45:23.384283 Z\n      country: India\n      zip_code: \"834001\"\n      updated_at: *id005\n      salutation: \n      id: 14\n      suburb: MG Road\n      birth_date: \n      gender: \n      phone_number: \"5648245625\"\n      user_id: 14\n      notices: \n      website: www.vijender.com\n      last_name: Kumar\n      email_address: vishu.nick@gmail.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: Delhi\n      state: \n      nationality: \n      middle_name: \n      first_name: Vijender\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2012-06-22 06:45:24','test@pragtech.co.in','vishu.nick@gmail.com',NULL,NULL,NULL,NULL,NULL),(36,'UserMailer','login_notification','--- \n- amitkumar@gmail.com\n- Login Notification\n- The Email Is Just For Login Introduction\n- &id004 !ruby/object:User \n  _paperclip_attachments: \n    :avatar: !ruby/object:Paperclip::Attachment \n      convert_options: {}\n\n      default_style: :original\n      default_url: /images/default_avatar.png\n      dirty: false\n      errors: {}\n\n      instance: *id004\n      name: :avatar\n      options: \n        :validations: &id003 \n          - - :content_type\n            - :unless: \n              :message: \n              :if: \n              :content_type: \n              - image/jpeg\n              - image/jpg\n              - image/png\n              - image/gif\n              - image/bmp\n          - - :size\n            - :unless: \n              :message: file size must be between :min and :max bytes.\n              :if: \n              :range: !ruby/range \n                begin: 0\n                end: 5242880\n                excl: false\n        :default_url: /images/default_avatar.png\n        :styles: &id002 \n          :thumb: \n            :format: \n            :geometry: 100x100>\n            :processors: &id001 \n              - :thumbnail\n            :whiny: true\n            :convert_options: \"\"\n        :default_style: :original\n        :whiny: true\n        :url: /uploaded_files/user/:id/:style/:basename.:extension\n        :path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n        :storage: :filesystem\n      path: \":rails_root/public/uploaded_files/user/:id/:style/:basename.:extension\"\n      processors: *id001\n      queued_for_delete: []\n\n      queued_for_write: {}\n\n      storage: :filesystem\n      storage_module: !ruby/object:Module {}\n\n      styles: *id002\n      url: /uploaded_files/user/:id/:style/:basename.:extension\n      validation_errors: {}\n\n      validations: *id003\n      whiny: true\n  attributes: \n    salt: eb5af79ef3891180251cbb42eca84a3d4cc8fdd4\n    u_layout: \n    last_connected_at: \n    created_at: 2012-06-22 09:34:48.439664 Z\n    activated_at: 2012-06-22 15:04:48.447943 +05:30\n    avatar_file_size: \n    avatar_file_name: \n    remember_token_expires_at: \n    crypted_password: 4cc6c67923e6ea0e855c931d4cfb3733b8d93cf8\n    updated_at: 2012-06-22 09:34:48.468325 Z\n    password_reset_code: \n    activation_code: 205f7d37b20a711b39c556e817f145bc38d6db32\n    u_language: \n    id: 15\n    avatar_content_type: \n    remember_token: \n    system_role_id: 8\n    u_per_page: \n    avatar_updated_at: \n    login: h.hkhkhkhlh72q\n    state: \n    email: amitkumar@gmail.com\n  attributes_cache: {}\n\n  changed_attributes: {}\n\n  errors: !ruby/object:ActiveRecord::Errors \n    base: *id004\n    errors: !omap []\n\n  mailfolders: \n  - !ruby/object:Mailfolder \n    attributes: \n      name: Inbox\n      created_at: 2012-06-22 09:34:48\n      updated_at: 2012-06-22 09:34:48\n      id: \"15\"\n      user_id: \"15\"\n      parent_id: \n    attributes_cache: {}\n\n  new_record: false\n  new_record_before_save: false\n  password: 4friends\n  password_confirmation: 4friends\n  profile: &id006 !ruby/object:Profile \n    attributes: \n      city: \n      address: gjggjkjgkg\n      created_at: &id005 2012-06-22 09:34:48.772724 Z\n      country: ggjgkjghj\n      zip_code: \"12131\"\n      updated_at: *id005\n      salutation: \n      id: 15\n      suburb: ggjgg\n      birth_date: \n      gender: \n      phone_number: \"2564325646\"\n      user_id: 15\n      notices: \n      website: www.amit.com\n      last_name: hkhkhkhlh\n      email_address: amitkumar@gmail.com\n      studios: \n      getting_newsletter: false\n      biography: \n      country_state: ggjhgjg\n      state: \n      nationality: \n      middle_name: \n      first_name: hkhkhkhkh\n    attributes_cache: {}\n\n    changed_attributes: {}\n\n    errors: !ruby/object:ActiveRecord::Errors \n      base: *id006\n      errors: !omap []\n\n    new_record: false\n    new_record_before_save: true\n',0,0,'2012-06-22 09:34:49','test@pragtech.co.in','amitkumar@gmail.com',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `roles` VALUES (1,'superadmin','SuperAdministration','system','2011-11-21 14:34:58','2011-11-21 14:34:58'),(2,'admin','Administration','system','2011-11-21 14:34:59','2011-11-21 14:34:59'),(3,'user','User','system','2011-11-21 14:34:59','2011-11-21 14:34:59'),(4,'co_admin','Container Administrator','container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(5,'moderator','Container Moderator','container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(6,'writer','Container Writer','container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(7,'reader','Container Reader','container','2011-11-21 14:34:59','2011-11-21 14:34:59'),(8,'artist','Permissions for an artist.','system','2011-11-21 14:37:13','2011-11-21 14:37:13'),(9,'judge','Permissions for an judge.','system','2011-11-21 14:37:13','2011-11-21 14:37:13'),(10,'competitor','Permissions for a competitior.','system','2011-11-21 14:37:13','2011-11-21 14:37:13'),(11,'private_user','Permissions for an private user.','workspace','2011-11-21 14:37:13','2011-11-21 14:37:13');
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
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('20091023095237'),('20091027095299'),('20091210083425'),('20091210090309'),('20091210090438'),('20091222063424'),('20091222071728'),('20091222100626'),('20100105102431'),('20100105111359'),('20100105113331'),('20100107112426'),('20100108135406'),('20100111103136'),('20100112110753'),('20100125102330'),('20100203100544'),('20100205060247'),('20100208093159'),('20100323111111'),('20100323222222'),('20100323333333'),('20100323555555'),('20100324111111'),('20100410111111'),('20100410264219'),('20100421080119'),('20100422080119'),('20100427080119'),('20100501080119'),('20100519080119'),('20100928045807'),('20100928052006'),('20100928142843'),('20100929052103'),('20100929061948'),('20100929062746'),('20100929135834'),('20100930073709'),('20101005102945'),('20101006153032'),('20101007081219'),('20101007110624'),('20101008064307'),('20101013135402'),('20101014071257'),('20101014074309'),('20101014121406'),('20101021071034'),('20101023052928'),('20101030075900'),('20101112115530'),('20101115131027'),('20101116052902'),('20101116064819'),('20101118134921'),('20101206082413'),('20101210134344'),('20101211112122'),('20101214130503'),('20101215102728'),('20101215133926'),('20110408114252'),('20110408114314'),('20110408114326'),('20110408114346'),('20110410055837'),('20110410060847'),('20110410094232'),('20110410094301'),('20110411080407'),('20110411104812'),('20110411110726'),('20110413102651'),('20110414151551'),('20110415152734'),('20110418100721'),('20110420095003'),('20110420095055'),('20110428075203'),('20110428100037'),('20110512134637'),('20110513152410'),('20110516115141'),('20110525071738'),('20110525104454'),('20110530130534'),('20110531080404'),('20110602095554'),('20110607102647'),('20110607105235'),('20110607120719'),('20110607123353'),('20110611092448'),('20110613081055'),('20110613154122'),('20110616070828'),('20110616101039'),('20110621134449'),('20110622093304'),('20110623093505'),('20110627110516'),('20110629110744'),('20110723104337'),('20110804061850'),('20110810074151'),('20110818131339'),('20110915130751'),('20110916062510'),('20110919070533'),('20110928080910'),('20110928083552'),('21'),('3'),('4'),('5'),('6'),('7'),('8'),('9');
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'b39420dc647aeb520d2f505ae081285a','BAh7CToJY2FydHsAOgtsb2NhbGU6CmVuLVVTOg5yZXR1cm5fdG8iFC9hZG1p\nbi9wcm9maWxlczoMdXNlcl9pZGkG\n','2011-11-21 14:38:51','2011-11-21 14:45:17'),(2,'ae679450893114b891f05b0423332ae4','BAh7CjoUbGF0ZXN0X3JlZ2lzdGVyVDoLbG9jYWxlOgplbi1VUzoMdXNlcl9p\nZGkIIgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVyOjpGbGFzaDo6Rmxhc2hI\nYXNoewY6C25vdGljZSIfVXNlciBTdWNjZXNzZnVsbHkgQ3JlYXRlZC4GOgpA\ndXNlZHsGOwpUOg5yZXR1cm5fdG8iCy9hZG1pbg==\n','2011-11-21 14:48:22','2011-11-21 14:50:15'),(3,'4927acbf3ea049ae34f18555553ff008','BAh7CToLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQgiCmZsYXNo\nSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7AAY6CkB1\nc2VkewA=\n','2011-11-22 04:59:58','2011-11-22 05:46:05'),(4,'fca1400945b0ee7574dc9df9c7581dac','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQY=\n','2011-11-22 07:44:26','2011-11-22 07:44:48'),(5,'3796525869086fd0a3d529410bf3365a','BAh7CToUbGF0ZXN0X3JlZ2lzdGVyVDoLbG9jYWxlOgplbi1VUyIKZmxhc2hJ\nQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVz\nZWR7ADoMdXNlcl9pZGkJ\n','2011-11-22 08:11:23','2011-11-22 08:41:21'),(6,'8299d3453855b158642fde80c897e166','BAh7CToJY2FydHsAOgtsb2NhbGU6CmVuLVVTIgpmbGFzaElDOidBY3Rpb25D\nb250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewY6C25vdGljZSIlQ29tcGV0\naXRpb24gQ3JlYXRlZCBTdWNjZXNzZnVsbHkGOgpAdXNlZHsGOwlUOgx1c2Vy\nX2lkaQY=\n','2011-11-22 08:41:31','2011-11-22 09:01:13'),(7,'af589467ecf4daa88d0d0be56e8bac09','BAh7AA==\n','2011-11-22 09:07:00','2011-11-22 09:07:00'),(8,'4e4560a455482a0bce04306e33707e38','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQY=\n','2011-11-22 09:18:56','2011-11-22 09:21:49'),(9,'e83f24b0f094b7290a2285439868886a','BAh7CToJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQg6EHB1cmNo\nYXNhYmxlbzoVQ29tcGV0aXRpb25zVXNlcgs6EEBuZXdfcmVjb3JkRjoYQGNo\nYW5nZWRfYXR0cmlidXRlc3sAOgxAZXJyb3JzbzoZQWN0aXZlUmVjb3JkOjpF\ncnJvcnMHOw1JQzofQWN0aXZlU3VwcG9ydDo6T3JkZXJlZEhhc2h7AAY6CkBr\nZXlzWwA6CkBiYXNlQAc6FkBhdHRyaWJ1dGVzX2NhY2hlewA6HEBuZXdfcmVj\nb3JkX2JlZm9yZV9zYXZlRjoQQGF0dHJpYnV0ZXN7cSITc2l3b3JrZWRudW1i\nZXIwIg9zaXdvcmtzaXplMCIMdXNlcl9pZGkIIg9mb3dvcmtzaXplMCIOcG9z\ndF9jb2RlIgs0MTEwMzgiEG53b3JrbWVkaXVtMCIPY3JlYXRlZF9hdEl1OglU\naW1lDcrqG8B1StEMBjofQG1hcnNoYWxfd2l0aF91dGNfY29lcmNpb25UIhBm\naXdvcmtpbWFnZTAiEnN3b3JrZWRudW1iZXIwIhB0d29ya2VkbmFtZTAiEHRl\nd29ya2ltYWdlMCIRYmFua19hY2NvdW50MCIQc2l3b3JrdGl0bGUwIg9ud29y\na2ltYWdlMCIPaGVyZV9wcml6ZTAiD3N3b3JrcHJpY2UwIhFmaXdvcmttZWRp\ndW0wIhBzaXdvcmtwcmljZTAiEHNld29ya3ByaWNlMCILb3RoZXJzMCIQc2V3\nb3JrdGl0bGUwIhBld29ya21lZGl1bTAiC2Zvc29sZDAiEXBheW1lbnRfdHlw\nZTAiDWV4cF9kYXRlMCIQc3dvcmttZWRpdW0wIg9ud29ya3RpdGxlMCIRZm93\nb3JrbWVkaXVtMCIObndvcmtzaXplMCIPbndvcmtwcmljZTAiE2Vpd29ya2Vk\nbnVtYmVyMCILZWlzb2xkMCIPdHdvcmtpbWFnZTAiCnByaWNlaQAiE3Rld29y\na2VkbnVtYmVyMCIRdGV3b3JrZWRuYW1lMCIRZWl3b3JrZWRuYW1lMCILYnNi\nX25vMCIKZW1haWwiIGtlZGFyLnBhdGhha0BwcmFndGVjaC5jby5pbiIPZXdv\ncmtwcmljZTAiD3N3b3JraW1hZ2UwIhB0b3RhbF9lbnRyeTAiDmZ3b3Jrc2l6\nZTAiEW5pd29ya2VkbmFtZTAiC2Zpc29sZDAiEGF0X2VuZF93b3JrMCIPdHdv\ncmtwcmljZTAiC3N1YnVyYiILc3VidXJiIg9ld29ya3RpdGxlMCIPdHdvcmt0\naXRsZTAiC3Npc29sZDAiDGNvbmZpcm1UIg5ld29ya3NpemUwIhNuaXdvcmtl\nZG51bWJlcjAiCnNzb2xkMCIWdmFyaWZpY2F0aW9uX2NvZGUwIhBzZXdvcmtp\nbWFnZTAiDnBhaWRlbnRyeTAiEHN3b3JrZWRuYW1lMCIQZndvcmtlZG5hbWUw\nIhF0ZXdvcmttZWRpdW0wIg5iaW9ncmFwaHkwIhFzaXdvcmttZWRpdW0wIg91\ncGRhdGVkX2F0SXU7FQ3K6hvAaJTSDAY7FlQiCW5hbWUiEWtlZGFyIHBhdGhh\nayIKZnNvbGQwIhZyZXR1cm5fb2ZfYXJ0d29yazAiD2Z3b3JrdGl0bGUwIhNm\naXdvcmtlZG51bWJlcjAiEnR3b3JrZWRudW1iZXIwIhB0d29ya21lZGl1bTAi\nD2Zpd29ya3NpemUwIhFmb3dvcmtlZG5hbWUwIg90ZXdvcmtzaXplMCIhY29t\ncGV0aXRpb25zX3N1YnNjcmlwdGlvbl9pZDAiD2V3b3JraW1hZ2UwIhBmaXdv\ncmt0aXRsZTAiEGZpd29ya3ByaWNlMCISZndvcmtlZG51bWJlcjAiEXNld29y\na2VkbmFtZTAiEHRld29ya3RpdGxlMCIPc2V3b3Jrc2l6ZTAiE2NvbXBldGl0\naW9uX2lkIgYxIg9md29ya3ByaWNlMCILdGVzb2xkMCIQdGV3b3JrcHJpY2Uw\nIg50d29ya3NpemUwIhBmd29ya21lZGl1bTAiC3Nlc29sZDAiCnRzb2xkMCIO\nY2FyZF9uYW1lMCIRZml3b3JrZWRuYW1lMCIOc3dvcmtzaXplMCIQZm93b3Jr\naW1hZ2UwIhNzZXdvcmtlZG51bWJlcjAiE2Zvd29ya2VkbnVtYmVyMCIKbnNv\nbGQwIgxhZGRyZXNzIgxhZGRyZXNzIhBmb3dvcmt0aXRsZTAiD3N3b3JrdGl0\nbGUwIg9md29ya2ltYWdlMCIQY2FyZF9udW1iZXIwIhFzZXdvcmttZWRpdW0w\nIgdpZGkGIhFzaXdvcmtlZG5hbWUwIgpzdGF0ZSINYWNjZXB0ZWQiEHNpd29y\na2ltYWdlMCIQZm93b3JrcHJpY2Uw\n','2011-11-22 09:23:56','2011-11-22 10:03:13'),(10,'014dcf37f08f2f3329ae1b42556c8c4d','BAh7BzoLbG9jYWxlOgplbi1VUyIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxl\ncjo6Rmxhc2g6OkZsYXNoSGFzaHsGOgplcnJvciIBqlRoZXJlIHdhcyBQcm9i\nbGVtIFdoaWxlIENyZWF0aW5nIHRoZSBVc2VyLiAgZG9lc24ndCBtYXRjaCBj\nb25maXJtYXRpb24gaXMgdG9vIHNob3J0IChtaW5pbXVtIGlzIHt7Y291bnR9\nfSBjaGFyYWN0ZXJzKSBQbGVhc2UgRW50ZXIgUGFzc3dvcmQgQW5kIENvbmZp\ncm0gUGFzc3dvcmQgQ29ycmVjdGx5BjoKQHVzZWR7BjsIRg==\n','2011-11-22 12:23:47','2011-11-22 12:24:17'),(11,'615b1801dcac6bb602c0f6096f2d0d19','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQg=\n','2011-11-23 05:08:26','2011-11-23 06:53:03'),(12,'3fe82403de9b52ed2f81773904dd445f','BAh7BjoOcmV0dXJuX3RvMA==\n','2011-11-23 06:53:22','2011-11-23 06:53:22'),(13,'5ef1ffc0d18206cb311180ee8e356530','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQk=\n','2011-11-23 06:53:23','2011-11-23 06:53:36'),(14,'e59601640a11edfd867b4dd50ba6b45b','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQY=\n','2011-11-23 08:33:11','2011-11-23 08:33:25'),(15,'bdc6c33a970b405334b85afe62fa9eb1','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQY=\n','2011-11-23 08:33:33','2011-11-23 08:33:51'),(16,'0934c8d0bfc038227e1b12725f3c93c8','BAh7DToKdG9rZW4iGUVDLTFSTDk5MTE0SDg2NzI5MTNTOhNjdXJyZW50X29i\namVjdG86DFBheW1lbnQMOg1AaW52b2ljZW86NUFjdGl2ZVJlY29yZDo6QXNz\nb2NpYXRpb25zOjpCZWxvbmdzVG9Bc3NvY2lhdGlvbgo6DEB0YXJnZXRvOgxJ\nbnZvaWNlDDoQQG5ld19yZWNvcmRGOhhAY2hhbmdlZF9hdHRyaWJ1dGVzewA6\nDEBlcnJvcnNvOhlBY3RpdmVSZWNvcmQ6OkVycm9ycwc7DklDOh9BY3RpdmVT\ndXBwb3J0OjpPcmRlcmVkSGFzaHsABjoKQGtleXNbADoKQGJhc2VACToWQGF0\ndHJpYnV0ZXNfY2FjaGV7ADoNQHBheW1lbnRvOjJBY3RpdmVSZWNvcmQ6OkFz\nc29jaWF0aW9uczo6SGFzT25lQXNzb2NpYXRpb24KOwowOhBAcmVmbGVjdGlv\nbm86NEFjdGl2ZVJlY29yZDo6UmVmbGVjdGlvbjo6QXNzb2NpYXRpb25SZWZs\nZWN0aW9uDjoNQG9wdGlvbnN7ADoQQGNsYXNzX25hbWUiDFBheW1lbnQ6FkBw\ncmltYXJ5X2tleV9uYW1lIg9pbnZvaWNlX2lkOgtAa2xhc3NjDFBheW1lbnQ6\nEEBjb2xsZWN0aW9uRjoTQGFjdGl2ZV9yZWNvcmRjDEludm9pY2U6F0BxdW90\nZWRfdGFibGVfbmFtZSIPYHBheW1lbnRzYDoLQG1hY3JvOgxoYXNfb25lOgpA\nbmFtZToMcGF5bWVudDoQQGZpbmRlcl9zcWwiHmBwYXltZW50c2AuaW52b2lj\nZV9pZCA9IDQ6DEBsb2FkZWRUOgtAb3duZXJACToRQHB1cmNoYXNhYmxlbzpA\nQWN0aXZlUmVjb3JkOjpBc3NvY2lhdGlvbnM6OkJlbG9uZ3NUb1BvbHltb3Jw\naGljQXNzb2NpYXRpb24JOwpvOhVDb21wZXRpdGlvbnNVc2VyCjsNewA7Dm87\nDwc7DklDOxB7AAY7EVsAOxJAGTsTewA6HEBuZXdfcmVjb3JkX2JlZm9yZV9z\nYXZlRjoQQGF0dHJpYnV0ZXN7cSIPc2l3b3Jrc2l6ZTAiE3Npd29ya2VkbnVt\nYmVyMCIMdXNlcl9pZCIGMyIPZm93b3Jrc2l6ZTAiDnBvc3RfY29kZSILNDEx\nMDM4IhBud29ya21lZGl1bTAiD2NyZWF0ZWRfYXQiGDIwMTEtMTEtMjIgMTA6\nMDM6MTMiEGZpd29ya2ltYWdlMCIRYmFua19hY2NvdW50MCIPbndvcmtpbWFn\nZTAiEHNpd29ya3RpdGxlMCIQdGV3b3JraW1hZ2UwIg9oZXJlX3ByaXplMCIQ\ndHdvcmtlZG5hbWUwIhJzd29ya2VkbnVtYmVyMCIPc3dvcmtwcmljZTAiEWZp\nd29ya21lZGl1bTAiEHNpd29ya3ByaWNlMCIQc2V3b3JrcHJpY2UwIgtvdGhl\ncnMwIhBzZXdvcmt0aXRsZTAiEGV3b3JrbWVkaXVtMCIRcGF5bWVudF90eXBl\nMCILZm9zb2xkMCINZXhwX2RhdGUwIhBzd29ya21lZGl1bTAiD253b3JrdGl0\nbGUwIhFmb3dvcmttZWRpdW0wIg5ud29ya3NpemUwIg9ud29ya3ByaWNlMCIT\nZWl3b3JrZWRudW1iZXIwIgtlaXNvbGQwIg90d29ya2ltYWdlMCIKcHJpY2Ui\nBjAiCmVtYWlsIiBrZWRhci5wYXRoYWtAcHJhZ3RlY2guY28uaW4iC2JzYl9u\nbzAiD2V3b3JrcHJpY2UwIhF0ZXdvcmtlZG5hbWUwIg9zd29ya2ltYWdlMCIT\ndGV3b3JrZWRudW1iZXIwIhB0b3RhbF9lbnRyeSIGNCIRZWl3b3JrZWRuYW1l\nMCIOZndvcmtzaXplMCIPdHdvcmtwcmljZTAiC2Zpc29sZDAiC3N1YnVyYiIL\nc3VidXJiIg9ld29ya3RpdGxlMCIQYXRfZW5kX3dvcmswIhFuaXdvcmtlZG5h\nbWUwIg90d29ya3RpdGxlMCILc2lzb2xkMCIOZXdvcmtzaXplMCIMY29uZmly\nbSIGMSIWdmFyaWZpY2F0aW9uX2NvZGUwIgpzc29sZDAiEHNld29ya2ltYWdl\nMCITbml3b3JrZWRudW1iZXIwIg5iaW9ncmFwaHkwIg5wYWlkZW50cnkiCTMs\nNCwiEXNpd29ya21lZGl1bTAiEHN3b3JrZWRuYW1lMCIQZndvcmtlZG5hbWUw\nIg91cGRhdGVkX2F0IhgyMDExLTExLTIzIDEwOjQ2OjAyIhF0ZXdvcmttZWRp\ndW0wIgluYW1lIhFrZWRhciBwYXRoYWsiD2Z3b3JrdGl0bGUwIhZyZXR1cm5f\nb2ZfYXJ0d29yazAiCmZzb2xkMCIPZml3b3Jrc2l6ZTAiEHR3b3JrbWVkaXVt\nMCISdHdvcmtlZG51bWJlcjAiE2Zpd29ya2VkbnVtYmVyMCIQZml3b3JrcHJp\nY2UwIhBmaXdvcmt0aXRsZTAiD2V3b3JraW1hZ2UwIiFjb21wZXRpdGlvbnNf\nc3Vic2NyaXB0aW9uX2lkMCIPdGV3b3Jrc2l6ZTAiEWZvd29ya2VkbmFtZTAi\nD2Z3b3JrcHJpY2UwIhNjb21wZXRpdGlvbl9pZCIGMSIPc2V3b3Jrc2l6ZTAi\nEHRld29ya3RpdGxlMCIRc2V3b3JrZWRuYW1lMCISZndvcmtlZG51bWJlcjAi\nEGZ3b3JrbWVkaXVtMCIOdHdvcmtzaXplMCIQdGV3b3JrcHJpY2UwIgt0ZXNv\nbGQwIg5jYXJkX25hbWUwIgp0c29sZDAiC3Nlc29sZDAiEGZvd29ya2ltYWdl\nMCIOc3dvcmtzaXplMCIRZml3b3JrZWRuYW1lMCIRc2V3b3JrbWVkaXVtMCIQ\nY2FyZF9udW1iZXIwIg9md29ya2ltYWdlMCIPc3dvcmt0aXRsZTAiEGZvd29y\na3RpdGxlMCIMYWRkcmVzcyIMYWRkcmVzcyIKbnNvbGQwIhNmb3dvcmtlZG51\nbWJlcjAiE3Nld29ya2VkbnVtYmVyMCIHaWQiBjEiEGZvd29ya3ByaWNlMCIQ\nc2l3b3JraW1hZ2UwIgpzdGF0ZSIOdmFsaWRhdGVkIhFzaXdvcmtlZG5hbWUw\nOxZvOxcMOxh7BzoRZm9yZWlnbl90eXBlIhVwdXJjaGFzYWJsZV90eXBlOhBw\nb2x5bW9ycGhpY1Q7GSIQUHVyY2hhc2FibGU7GiITcHVyY2hhc2FibGVfaWQ7\nHEY7HUAVOx86D2JlbG9uZ3NfdG87IToQcHVyY2hhc2FibGU7JFQ7JUAJOyp7\nGSILbnVtYmVyIg9JMTM0NjMzODUwIg9jcmVhdGVkX2F0SXU6CVRpbWUN6uob\nwJw/M7gGOh9AbWFyc2hhbF93aXRoX3V0Y19jb2VyY2lvblQiCnRpdGxlIhdJ\nbnZvaWNlIEkxMzQ2MzM4NTAiD3VwZGF0ZWRfYXRJdTsvDerqG8BtWTi4Bjsw\nVCIRZmluYWxfYW1vdW50Zgc4MCITcGF5bWVudF9tZWRpdW0iC3BheXBhbCIH\naWRpCSIVc2hpcHBpbmdfYWRkcmVzcyITYWRkcmVzcyBpbmRpYSAiD2NyZWF0\nb3JfaWQwIhF2YWxpZGF0ZWRfYXRJdTsvDerqG4DkaTS4BjswRiIMc2VudF9h\ndEl1Oy8N6uobgOhIM7gGOzBGIg1kZWFkbGluZXU6CURhdGU9BAhbCG86DVJh\ndGlvbmFsBzoRQGRlbm9taW5hdG9yaQc6D0BudW1lcmF0b3JpA6/ySmkAaQMZ\nFSMiE3B1cmNoYXNhYmxlX2lkaQYiDmNsaWVudF9pZGkIIglub3RlMCIUYmls\nbGluZ19hZGRyZXNzIhNhZGRyZXNzIGluZGlhICIUb3JpZ2luYWxfYW1vdW50\nQAGlIhBkZXNjcmlwdGlvbiJNSW52b2ljZSBmb3IgdGhlIHN1YnNjcmlwdGlv\nbiB0byB0aGUgY29tcGV0aXRpb24gJ2ZpcnN0IGNvbXBldGl0aW9uIG5hbWUn\nIhVwdXJjaGFzYWJsZV90eXBlIhVDb21wZXRpdGlvbnNVc2VyIgpzdGF0ZSIO\ndmFsaWRhdGVkOxZvOxcNOxh7ADsZIgxJbnZvaWNlOxtAFTsaIg9pbnZvaWNl\nX2lkOxxGOx1AFDsfOy07IToMaW52b2ljZToNQHVwZGF0ZWRUOyRUOyVABzsM\nRjsNewA7Dm87Dwc7DklDOxB7AAY7EVsAOxJABzsTewA6CkB1c2VybzsJCjsW\nbzsXDTsYewA7GSIJVXNlcjsbYwlVc2VyOxoiDHVzZXJfaWQ7HEY7HUAUOx87\nLTshOgl1c2VyOwpvOglVc2VyCDsTewA6DUBwcm9maWxlbzsVCjsWbzsXDjsY\newc6DmRlcGVuZGVudDoMZGVzdHJveToNYXV0b3NhdmVUOxkiDFByb2ZpbGU7\nG2MMUHJvZmlsZTsaIgx1c2VyX2lkOxxGOx1AAcs7HzsgOx4iD2Bwcm9maWxl\nc2A7IToMcHJvZmlsZTsKbzoMUHJvZmlsZQo7DXsAOw5vOw8HOw5JQzsQewAG\nOxFbADsSQAHWOxN7ADspRjsqex4iCWNpdHkwIgxhZGRyZXNzIgxhZGRyZXNz\nIg9jcmVhdGVkX2F0IhgyMDExLTExLTIxIDE0OjUwOjE0Igxjb3VudHJ5Igpp\nbmRpYSINemlwX2NvZGUiCzQxMTAzOCIPdXBkYXRlZF9hdCIYMjAxMS0xMS0y\nMSAxNDo1MDoxNCIPc2FsdXRhdGlvbjAiC3N1YnVyYiILc3VidXJiIg9iaXJ0\naF9kYXRlMCILZ2VuZGVyMCIHaWQiBjMiEXBob25lX251bWJlciIPOTc2MzM3\nMDQxOSIMdXNlcl9pZCIGMyIMbm90aWNlczAiDHdlYnNpdGUiHmh0dHA6Ly93\nd3cucHJhZ3RlY2guY28uaW4iDmxhc3RfbmFtZSILcGF0aGFrIhJlbWFpbF9h\nZGRyZXNzIiBrZWRhci5wYXRoYWtAcHJhZ3RlY2guY28uaW4iDHN0dWRpb3Mw\nIhdnZXR0aW5nX25ld3NsZXR0ZXIiBjAiDmJpb2dyYXBoeTAiEmNvdW50cnlf\nc3RhdGUiEG1haGFyYXNodHJhIgpzdGF0ZTAiEG5hdGlvbmFsaXR5MCIQbWlk\nZGxlX25hbWUwIg9maXJzdF9uYW1lIgprZWRhcjsjIhtgcHJvZmlsZXNgLnVz\nZXJfaWQgPSAzOyVAAc07JFQ7KnsbIglzYWx0Ii1kMzc2NmE5M2IxYmU1N2E4\nMjQyOWZhZWEyZTc1Mjk5OGM2YTJmOWZjIg11X2xheW91dDAiFmxhc3RfY29u\nbmVjdGVkX2F0IhgyMDExLTExLTIzIDEyOjIzOjIyIg9jcmVhdGVkX2F0Ihgy\nMDExLTExLTIxIDE0OjUwOjE0IhFhY3RpdmF0ZWRfYXQiGDIwMTEtMTEtMjEg\nMjA6MjA6MTQiFWF2YXRhcl9maWxlX3NpemUwIhVhdmF0YXJfZmlsZV9uYW1l\nMCIecmVtZW1iZXJfdG9rZW5fZXhwaXJlc19hdDAiFWNyeXB0ZWRfcGFzc3dv\ncmQiLTkzZmFiYjE3MDA3MGJhM2YyZDcxODI0MTFlYTkwYWI1MzE1N2I1NjEi\nD3VwZGF0ZWRfYXQiGDIwMTEtMTEtMjMgMDY6NTM6MjIiGHBhc3N3b3JkX3Jl\nc2V0X2NvZGUwIhRhY3RpdmF0aW9uX2NvZGUiLWM5NDM0YWU1ZDUyNjZkY2Nj\nYmRjMzM1ZTI5Y2Q5ZTU1YWQ1MDJhYTIiD3VfbGFuZ3VhZ2UwIgdpZCIGMyIY\nYXZhdGFyX2NvbnRlbnRfdHlwZTAiE3JlbWVtYmVyX3Rva2VuMCITc3lzdGVt\nX3JvbGVfaWQiBjgiD3VfcGVyX3BhZ2UwIhZhdmF0YXJfdXBkYXRlZF9hdDAi\nCmxvZ2luIhBrLnBhdGhha05OMiIKc3RhdGUwIgplbWFpbCIga2VkYXIucGF0\naGFrQHByYWd0ZWNoLmNvLmluOzNUOyVABzskVDsqew8iD2NyZWF0ZWRfYXRJ\ndTsvDerqG8AH6pS4BjswVCIPdXBkYXRlZF9hdEACKgEiD2ludm9pY2VfaWRp\nCSIHaWRpCyIMdXNlcl9pZGkIIhNjcmVkaXRfY2FyZF9pZDAiFGFtb3VudF9p\nbl9jZW50c2YJODAwMCIJbm90ZTAiDWN1cnJlbmN5MCIKc3RhdGUiFW9ubGlu\nZV92YWxpZGF0ZWQ6EnBheXBhbF9hbW91bnRmCTgwMDA6C2xvY2FsZToKZW4t\nVVM6Cm9yZGVybzsoCToOQGludm9pY2VzbzozQWN0aXZlUmVjb3JkOjpBc3Nv\nY2lhdGlvbnM6Okhhc01hbnlBc3NvY2lhdGlvbgs7Fm87Fw07GHsIOgdhczsu\nOzg6D2RlbGV0ZV9hbGw6C2V4dGVuZFsAOxkiDEludm9pY2U7G0AVOxxUOx1j\nFUNvbXBldGl0aW9uc1VzZXI7HzoNaGFzX21hbnk7HiIPYGludm9pY2VzYDsh\nOg1pbnZvaWNlczsKWwhvOwsHOxN7ADsqexkiC251bWJlciIPSTM1MDQ2NzY3\nMyIPY3JlYXRlZF9hdCIYMjAxMS0xMS0yMyAxMDo0MTowMiIKdGl0bGUiF0lu\ndm9pY2UgSTM1MDQ2NzY3MyIPdXBkYXRlZF9hdCIYMjAxMS0xMS0yMyAxMDo0\nMTowMiIRZmluYWxfYW1vdW50IggxMTAiE3BheW1lbnRfbWVkaXVtIgtwYXlw\nYWwiFXNoaXBwaW5nX2FkZHJlc3MiE2FkZHJlc3MgaW5kaWEgIg9jcmVhdG9y\nX2lkMCIHaWQiBjEiEXZhbGlkYXRlZF9hdCIYMjAxMS0xMS0yMyAxNjoxMTow\nMiIMc2VudF9hdCIYMjAxMS0xMS0yMyAxNjoxMTowMiINZGVhZGxpbmUiDzIw\nMTEtMTEtMzAiE3B1cmNoYXNhYmxlX2lkIgYxIg5jbGllbnRfaWQiBjMiCW5v\ndGUwIhRiaWxsaW5nX2FkZHJlc3MiE2FkZHJlc3MgaW5kaWEgIhRvcmlnaW5h\nbF9hbW91bnQiCDExMCIQZGVzY3JpcHRpb24iTUludm9pY2UgZm9yIHRoZSBz\ndWJzY3JpcHRpb24gdG8gdGhlIGNvbXBldGl0aW9uICdmaXJzdCBjb21wZXRp\ndGlvbiBuYW1lJyIVcHVyY2hhc2FibGVfdHlwZSIVQ29tcGV0aXRpb25zVXNl\nciIKc3RhdGUiDnZhbGlkYXRlZG87Cwc7E3sAOyp7GUACQwEiD0kxMjc4ODI4\nMzZAAkUBIhgyMDExLTExLTIzIDEwOjQzOjA0QAJHASIXSW52b2ljZSBJMTI3\nODgyODM2QAJJASIYMjAxMS0xMS0yMyAxMDo0MzowNEACSwEiBjBAAk0BIgtw\nYXlwYWxAAk8BIhNhZGRyZXNzIGluZGlhIEACUQEwQAJSASIGMkACVAEiGDIw\nMTEtMTEtMjMgMTY6MTM6MDRAAlYBIhgyMDExLTExLTIzIDE2OjEzOjA0QAJY\nASIPMjAxMS0xMS0zMEACWgEiBjFAAlwBIgYzQAJeATBAAl8BIhNhZGRyZXNz\nIGluZGlhIEACYQEiBjBAAmMBIk1JbnZvaWNlIGZvciB0aGUgc3Vic2NyaXB0\naW9uIHRvIHRoZSBjb21wZXRpdGlvbiAnZmlyc3QgY29tcGV0aXRpb24gbmFt\nZSdAAmUBIhVDb21wZXRpdGlvbnNVc2VyQAJnASIOdmFsaWRhdGVkbzsLBzsT\newA7KnsZQAJDASIPSTU1MzMyMzQzM0ACRQEiGDIwMTEtMTEtMjMgMTA6NDQ6\nNDVAAkcBIhdJbnZvaWNlIEk1NTMzMjM0MzNAAkkBIhgyMDExLTExLTIzIDEw\nOjQ0OjQ1QAJLASIHNzBAAk0BIgljYXNoQAJPASITYWRkcmVzcyBpbmRpYSBA\nAlEBMEACUgEiBjNAAlQBMEACVgEiGDIwMTEtMTEtMjMgMTY6MTQ6NDVAAlgB\nIg8yMDExLTExLTMwQAJaASIGMUACXAEiBjNAAl4BMEACXwEiE2FkZHJlc3Mg\naW5kaWEgQAJhASIHNzBAAmMBIk1JbnZvaWNlIGZvciB0aGUgc3Vic2NyaXB0\naW9uIHRvIHRoZSBjb21wZXRpdGlvbiAnZmlyc3QgY29tcGV0aXRpb24gbmFt\nZSdAAmUBIhVDb21wZXRpdGlvbnNVc2VyQAJnASIMY3JlYXRlZDsjIldgaW52\nb2ljZXNgLnB1cmNoYXNhYmxlX2lkID0gMSBBTkQgYGludm9pY2VzYC5wdXJj\naGFzYWJsZV90eXBlID0gJ0NvbXBldGl0aW9uc1VzZXInOhFAY291bnRlcl9z\ncWxAApIBOyVAAjcBOyRUOxN7ADoRQGNvbXBldGl0aW9ubzsJCTsWbzsXDTsY\newA7GSIQQ29tcGV0aXRpb247GiITY29tcGV0aXRpb25faWQ7G2MQQ29tcGV0\naXRpb247HEY7HUACPQE7HzstOyE6EGNvbXBldGl0aW9uOwpvOhBDb21wZXRp\ndGlvbgc7E3sAOyp7KyIMY2p1ZGdlcyISbWFyayBqZW1pbnNvbiIcbWVzc2Fn\nZV9mb3Jfc3Vic2NyaWJlcnMiImhpIGhlbGxvIGhvdyBhcmUgdSBpbSBmaW5l\nIG9rIhhzdWJtaXNzaW9uX2RlYWRsaW5lIg8yMDExLTExLTE5Igtmb3JtYXQi\nFWFuZCBzb21lIGZvcm1hdHMiDWxvY2F0aW9uIhRwdW5lIHRvIGJvcnZhbGki\nD2NyZWF0ZWRfYXQiGDIwMTEtMTEtMjIgMDk6MDE6MTAiFmF1Y3Rpb25fYWN0\naXZhdGVkMCIVaG93X2RpZF95b3VfaGVyZTAiD2NvbW1pc3Npb24iIjUgJSBj\nb21taXNzaW9uIG9uIG9iamVjdCBzb2xkIgp0aXRsZSIbZmlyc3QgY29tcGV0\naXRpb24gbmFtZSIKbm90ZXMiE2FuZCBzb21lIG5vdGVzIgxmcmFtaW5nMCIP\ndXBkYXRlZF9hdCIYMjAxMS0xMS0yMiAwOTo0NDo1NCIOcHVibGlzaGVkIgYw\nIg5pbnN1cmFuY2UiJjEwJSBpbnN1cmFuY2Ugb2YgZWFjaCBwaG90byBwcmlj\nZSIWcmV0dXJuX29mX2FydHdvcmswIg9saW1pdF9zaXplMCIHaWQiBjEiDnJl\nc3VsdG1zZyIbcHVibGlzaCByZXN1bHQgbWVzc2FnZSIRb3BlbnN0YXRlbXNn\nIhdvcGVuIHN0YXRlIG1lc3NhZ2UiD2VudHJ5X2ZlZXMiAYExIHdvcmtzICQ1\nMA0KMiB3b3JrcyAkNjANCjMgd29ya3MgJDcwDQo0IHdvcmtzICQ4MA0KNSB3\nb3JrcyAkODENCjYgd29ya3MgJDgyDQo3IHdvcmtzICQ4Mw0KOCB3b3JrcyAk\nODQNCjkgd29ya3MgJDg1DQoxMCB3b3JrcyAkODYiEnZpZXdlZF9udW1iZXIi\nBjMiEnByaXplc19kZXRhaWwieTFzdCBwcml6ZSAkNDANCjJuZCBwcml6ZSAk\nODANCjNyZCBwcml6ZSAkODENCjR0aCBwcml6ZSAkODINCmFuZCBzb21lIG90\naGVyIHByaXplcyB3aWxsIGJlIGRjbGFpcmVkIGF0IHRoYXQgdGltZSBvbmx5\nIhhwcml6ZXNfdG90YWxfYW1vdW50IgkxMDAwIgl0eXBlMCIMdXNlcl9pZCIG\nMSINanVkZ2VfaWQwIhRwdWJsaXNoZmluYWxtc2ciInB1Ymxpc2ggZmluYWwg\nYXJ0d29yayBtZXNzYWdlIhBkZXNjcmlwdGlvbiIoYW5kIHNvbWUgZGVzY3Jp\ncHRpb24gb2YgY29tcGV0aXRpb24iDWRlbGl2ZXJ5IhZhbmQgc29tZSBkZWxp\ndmVyeSILc291cmNlMCIUY29tbWVudHNfbnVtYmVyIgYwIg50aW1pbmdfaWQw\nIhRleGhpYml0aW9uX2RhdGUwIg9jb2xsZWN0aW9uIhRzb21lIGNvbGxlY3Rp\nb24iEG5vX29mX2VudHJ5IgcxMCIScmF0ZXNfYXZlcmFnZSIGMCIKc3RhdGUi\nCW9wZW47JUACNwE7JFQ7KntxIg9zaXdvcmtzaXplMCITc2l3b3JrZWRudW1i\nZXIwIgx1c2VyX2lkIgYzIg9mb3dvcmtzaXplMCIOcG9zdF9jb2RlIgs0MTEw\nMzgiEG53b3JrbWVkaXVtMCIPY3JlYXRlZF9hdCIYMjAxMS0xMS0yMiAxMDow\nMzoxMyIQZml3b3JraW1hZ2UwIhFiYW5rX2FjY291bnQwIg9ud29ya2ltYWdl\nMCIQc2l3b3JrdGl0bGUwIhB0ZXdvcmtpbWFnZTAiD2hlcmVfcHJpemUwIhB0\nd29ya2VkbmFtZTAiEnN3b3JrZWRudW1iZXIwIg9zd29ya3ByaWNlMCIRZml3\nb3JrbWVkaXVtMCIQc2l3b3JrcHJpY2UwIhBzZXdvcmtwcmljZTAiC290aGVy\nczAiEHNld29ya3RpdGxlMCIQZXdvcmttZWRpdW0wIhFwYXltZW50X3R5cGUw\nIgtmb3NvbGQwIg1leHBfZGF0ZTAiEHN3b3JrbWVkaXVtMCIPbndvcmt0aXRs\nZTAiEWZvd29ya21lZGl1bTAiDm53b3Jrc2l6ZTAiD253b3JrcHJpY2UwIhNl\naXdvcmtlZG51bWJlcjAiC2Vpc29sZDAiD3R3b3JraW1hZ2UwIgpwcmljZSIG\nMCIKZW1haWwiIGtlZGFyLnBhdGhha0BwcmFndGVjaC5jby5pbiILYnNiX25v\nMCIPZXdvcmtwcmljZTAiEXRld29ya2VkbmFtZTAiD3N3b3JraW1hZ2UwIhN0\nZXdvcmtlZG51bWJlcjAiEHRvdGFsX2VudHJ5IgYzIhFlaXdvcmtlZG5hbWUw\nIg5md29ya3NpemUwIg90d29ya3ByaWNlMCILZmlzb2xkMCILc3VidXJiIgtz\ndWJ1cmIiD2V3b3JrdGl0bGUwIhBhdF9lbmRfd29yazAiEW5pd29ya2VkbmFt\nZTAiD3R3b3JrdGl0bGUwIgtzaXNvbGQwIg5ld29ya3NpemUwIgxjb25maXJt\nIgYxIhZ2YXJpZmljYXRpb25fY29kZTAiCnNzb2xkMCIQc2V3b3JraW1hZ2Uw\nIhNuaXdvcmtlZG51bWJlcjAiDmJpb2dyYXBoeTAiDnBhaWRlbnRyeSIHMiwi\nEXNpd29ya21lZGl1bTAiEHN3b3JrZWRuYW1lMCIQZndvcmtlZG5hbWUwIg91\ncGRhdGVkX2F0IhgyMDExLTExLTIzIDEwOjQ0OjQ1IhF0ZXdvcmttZWRpdW0w\nIgluYW1lIhFrZWRhciBwYXRoYWsiCmZzb2xkMCIWcmV0dXJuX29mX2FydHdv\ncmswIg9md29ya3RpdGxlMCITZml3b3JrZWRudW1iZXIwIhJ0d29ya2VkbnVt\nYmVyMCIQdHdvcmttZWRpdW0wIg9maXdvcmtzaXplMCIRZm93b3JrZWRuYW1l\nMCIPdGV3b3Jrc2l6ZTAiIWNvbXBldGl0aW9uc19zdWJzY3JpcHRpb25faWQw\nIg9ld29ya2ltYWdlMCIQZml3b3JrdGl0bGUwIhBmaXdvcmtwcmljZTAiEmZ3\nb3JrZWRudW1iZXIwIhFzZXdvcmtlZG5hbWUwIhB0ZXdvcmt0aXRsZTAiD3Nl\nd29ya3NpemUwIhNjb21wZXRpdGlvbl9pZCIGMSIPZndvcmtwcmljZTAiC3Rl\nc29sZDAiEHRld29ya3ByaWNlMCIOdHdvcmtzaXplMCIQZndvcmttZWRpdW0w\nIgtzZXNvbGQwIgp0c29sZDAiDmNhcmRfbmFtZTAiEWZpd29ya2VkbmFtZTAi\nDnN3b3Jrc2l6ZTAiEGZvd29ya2ltYWdlMCITc2V3b3JrZWRudW1iZXIwIhNm\nb3dvcmtlZG51bWJlcjAiCm5zb2xkMCIMYWRkcmVzcyIMYWRkcmVzcyIQZm93\nb3JrdGl0bGUwIg9zd29ya3RpdGxlMCIPZndvcmtpbWFnZTAiEGNhcmRfbnVt\nYmVyMCIRc2V3b3JrbWVkaXVtMCIRc2l3b3JrZWRuYW1lMCIKc3RhdGUiDnZh\nbGlkYXRlZCIQc2l3b3JraW1hZ2UwIhBmb3dvcmtwcmljZTAiB2lkIgYxOglj\nYXJ0ewAiCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFz\naEhhc2h7BjoLbm90aWNlIkxZb3VyIFBheW1lbnQgSXMgRG9uZS5QbGVhc2Ug\nQ2xpY2sgT24gQnJvd3MgSW1hZ2UgVG8gVXBsb2FkICBUaGUgQXJ0d29yawY6\nCkB1c2VkewY7TlQ6DHVzZXJfaWRpCA==\n','2011-11-23 08:48:28','2011-11-23 10:46:22'),(17,'a7d3ec4304a90d2efe1155c8a19bd160','BAh7CToLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQYiCmZsYXNo\nSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7BjoLbm90\naWNlIiRFeGhpYml0aW9uIFVwZGF0ZWQgU3VjY2Vzc2Z1bGx5BjoKQHVzZWR7\nBjsKVA==\n','2011-11-23 12:16:15','2011-11-23 12:55:58'),(18,'dc79fb78c9fa370a40522c3ec400212e','BAh7CDoLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQg=\n','2011-11-23 12:53:47','2011-11-23 12:54:13'),(19,'d5db1195b1a3163c7917edd822ad3b12','BAh7CToQcHVyY2hhc2FibGVvOhRFeGhpYml0aW9uc1VzZXIJOhZAYXR0cmli\ndXRlc19jYWNoZXsAOgpAdXNlcm86NUFjdGl2ZVJlY29yZDo6QXNzb2NpYXRp\nb25zOjpCZWxvbmdzVG9Bc3NvY2lhdGlvbgk6EEByZWZsZWN0aW9ubzo0QWN0\naXZlUmVjb3JkOjpSZWZsZWN0aW9uOjpBc3NvY2lhdGlvblJlZmxlY3Rpb24N\nOg1Ab3B0aW9uc3sAOhBAY2xhc3NfbmFtZSIJVXNlcjoWQHByaW1hcnlfa2V5\nX25hbWUiDHVzZXJfaWQ6C0BrbGFzc2MJVXNlcjoQQGNvbGxlY3Rpb25GOhNA\nYWN0aXZlX3JlY29yZGMURXhoaWJpdGlvbnNVc2VyOgtAbWFjcm86D2JlbG9u\nZ3NfdG86CkBuYW1lOgl1c2VyOgxAdGFyZ2V0bzoJVXNlcgc7B3sAOhBAYXR0\ncmlidXRlc3sbIglzYWx0Ii1kMzc2NmE5M2IxYmU1N2E4MjQyOWZhZWEyZTc1\nMjk5OGM2YTJmOWZjIg11X2xheW91dDAiFmxhc3RfY29ubmVjdGVkX2F0Ihgy\nMDExLTExLTIzIDE5OjE5OjM0Ig9jcmVhdGVkX2F0IhgyMDExLTExLTIxIDE0\nOjUwOjE0IhFhY3RpdmF0ZWRfYXQiGDIwMTEtMTEtMjEgMjA6MjA6MTQiFWF2\nYXRhcl9maWxlX3NpemUwIhVhdmF0YXJfZmlsZV9uYW1lMCIecmVtZW1iZXJf\ndG9rZW5fZXhwaXJlc19hdDAiFWNyeXB0ZWRfcGFzc3dvcmQiLTkzZmFiYjE3\nMDA3MGJhM2YyZDcxODI0MTFlYTkwYWI1MzE1N2I1NjEiD3VwZGF0ZWRfYXQi\nGDIwMTEtMTEtMjMgMTM6NDk6MzQiGHBhc3N3b3JkX3Jlc2V0X2NvZGUwIhRh\nY3RpdmF0aW9uX2NvZGUiLWM5NDM0YWU1ZDUyNjZkY2NjYmRjMzM1ZTI5Y2Q5\nZTU1YWQ1MDJhYTIiD3VfbGFuZ3VhZ2UwIgdpZCIGMyIYYXZhdGFyX2NvbnRl\nbnRfdHlwZTAiE3JlbWVtYmVyX3Rva2VuMCITc3lzdGVtX3JvbGVfaWQiBjgi\nD3VfcGVyX3BhZ2UwIhZhdmF0YXJfdXBkYXRlZF9hdDAiCmxvZ2luIhBrLnBh\ndGhha05OMiIKc3RhdGUwIgplbWFpbCIga2VkYXIucGF0aGFrQHByYWd0ZWNo\nLmNvLmluOgtAb3duZXJABjoMQGxvYWRlZFQ7GHsNIgpwcmljZSIGMCIPY3Jl\nYXRlZF9hdCIYMjAxMS0xMS0yMyAxMjo1MzowMiISZXhoaWJpdGlvbl9pZCIG\nMSIPdXBkYXRlZF9hdCIYMjAxMS0xMS0yMyAxMjo1NTowMSIPaW52aXRlZF9h\ndCIYMjAxMS0xMS0yMyAxODoyNTowMSIHaWQiBjMiDHVzZXJfaWQiBjMiCnN0\nYXRlIgxpbnZpdGVkOhBAZXhoaWJpdGlvbm87CQk7Cm87Cw07DHsAOw0iD0V4\naGliaXRpb247DiISZXhoaWJpdGlvbl9pZDsPYw9FeGhpYml0aW9uOxBGOxFA\nDjsSOxM7FDoPZXhoaWJpdGlvbjsWbzoPRXhoaWJpdGlvbgc7B3sAOxh7ESIP\nY3JlYXRlZF9hdCIYMjAxMS0xMS0yMyAxMjo1MzowMiIKdGl0bGUiE25ldyBl\neGhpYml0aW9uIg91cGRhdGVkX2F0IhgyMDExLTExLTIzIDE0OjIyOjMyIg5w\ndWJsaXNoZWQiBjAiB2lkIgYxIhJ2aWV3ZWRfbnVtYmVyIgY2Igx1c2VyX2lk\nIgYxIhBkZXNjcmlwdGlvbiIYYW5kIHNvbWUgZGVzY3JpcHRpbiILc291cmNl\nMCIUY29tbWVudHNfbnVtYmVyIgYwIhJyYXRlc19hdmVyYWdlIgYwIgpzdGF0\nZTA7GUAGOxpUOgtsb2NhbGU6CmVuLVVTOgljYXJ0ewA6DHVzZXJfaWRpCA==\n','2011-11-23 13:44:11','2011-11-23 14:24:38'),(20,'1e98d9041bdb745a8312de17a4e52fbb','BAh7CToLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQYiCmZsYXNo\nSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7BjoLbm90\naWNlIhRJbnZpdGF0aW9uIHNlbnQGOgpAdXNlZHsGOwpU\n','2011-11-23 13:49:35','2011-11-23 14:39:25'),(21,'24a0a71d06d38e82655a16b4c28f0881','BAh7CToQcHVyY2hhc2FibGVvOhRFeGhpYml0aW9uc1VzZXIJOhZAYXR0cmli\ndXRlc19jYWNoZXsAOgpAdXNlcm86NUFjdGl2ZVJlY29yZDo6QXNzb2NpYXRp\nb25zOjpCZWxvbmdzVG9Bc3NvY2lhdGlvbgk6EEByZWZsZWN0aW9ubzo0QWN0\naXZlUmVjb3JkOjpSZWZsZWN0aW9uOjpBc3NvY2lhdGlvblJlZmxlY3Rpb24N\nOg1Ab3B0aW9uc3sAOhBAY2xhc3NfbmFtZSIJVXNlcjoWQHByaW1hcnlfa2V5\nX25hbWUiDHVzZXJfaWQ6C0BrbGFzc2MJVXNlcjoQQGNvbGxlY3Rpb25GOhNA\nYWN0aXZlX3JlY29yZGMURXhoaWJpdGlvbnNVc2VyOgtAbWFjcm86D2JlbG9u\nZ3NfdG86CkBuYW1lOgl1c2VyOgxAdGFyZ2V0bzoJVXNlcgc7B3sAOhBAYXR0\ncmlidXRlc3sbIglzYWx0Ii1lZTJkNTQ5OWVjZDAyNDhmODRlZjhlNTliZGM4\nMTYyNzk4MDExNzU5Ig11X2xheW91dDAiFmxhc3RfY29ubmVjdGVkX2F0Ihgy\nMDExLTExLTIzIDE0OjAzOjExIg9jcmVhdGVkX2F0IhgyMDExLTExLTIyIDA4\nOjEzOjI0IhFhY3RpdmF0ZWRfYXQiGDIwMTEtMTEtMjIgMTM6NDM6MjQiFWF2\nYXRhcl9maWxlX3NpemUwIhVhdmF0YXJfZmlsZV9uYW1lMCIecmVtZW1iZXJf\ndG9rZW5fZXhwaXJlc19hdDAiFWNyeXB0ZWRfcGFzc3dvcmQiLTcxNTFmYTMz\nNWVkYzlkZjI1N2NlNGQzN2NkYmVkNDQxODFkNzA1NTIiD3VwZGF0ZWRfYXQi\nGDIwMTEtMTEtMjMgMDg6MzM6MTEiGHBhc3N3b3JkX3Jlc2V0X2NvZGUwIhRh\nY3RpdmF0aW9uX2NvZGUiLWFmMGQzN2FhYzQ0ZmUwYTc3NzU3NDZkNTNjYmNl\nNmU5NmRhZjI4YmYiD3VfbGFuZ3VhZ2UwIgdpZCIGNCIYYXZhdGFyX2NvbnRl\nbnRfdHlwZTAiE3JlbWVtYmVyX3Rva2VuMCITc3lzdGVtX3JvbGVfaWQiBjgi\nD3VfcGVyX3BhZ2UwIhZhdmF0YXJfdXBkYXRlZF9hdDAiCmxvZ2luIhFrLnBh\ndGhha2tSQWciCnN0YXRlMCIKZW1haWwiG3BhdGhha29yYW1hMUBnbWFpbC5j\nb206C0Bvd25lckAGOgxAbG9hZGVkVDsYew0iCnByaWNlIgYwIg9jcmVhdGVk\nX2F0IhgyMDExLTExLTIzIDEyOjU1OjU2IhJleGhpYml0aW9uX2lkIgYxIg91\ncGRhdGVkX2F0IhgyMDExLTExLTIzIDE0OjI0OjI2Ig9pbnZpdGVkX2F0Ihgy\nMDExLTExLTIzIDE5OjU0OjI2IgdpZCIGMiIMdXNlcl9pZCIGNCIKc3RhdGUi\nDGludml0ZWQ6EEBleGhpYml0aW9ubzsJCTsKbzsLDTsMewA7DSIPRXhoaWJp\ndGlvbjsOIhJleGhpYml0aW9uX2lkOw9jD0V4aGliaXRpb247EEY7EUAOOxI7\nEzsUOg9leGhpYml0aW9uOxZvOg9FeGhpYml0aW9uBzsHewA7GHsRIg9jcmVh\ndGVkX2F0IhgyMDExLTExLTIzIDEyOjUzOjAyIgp0aXRsZSITbmV3IGV4aGli\naXRpb24iD3VwZGF0ZWRfYXQiGDIwMTEtMTEtMjMgMTQ6MjQ6MjciDnB1Ymxp\nc2hlZCIGMCIHaWQiBjEiEnZpZXdlZF9udW1iZXIiBjgiDHVzZXJfaWQiBjEi\nEGRlc2NyaXB0aW9uIhhhbmQgc29tZSBkZXNjcmlwdGluIgtzb3VyY2UwIhRj\nb21tZW50c19udW1iZXIiBjAiEnJhdGVzX2F2ZXJhZ2UiBjAiCnN0YXRlMDsZ\nQAY7GlQ6C2xvY2FsZToKZW4tVVM6CWNhcnR7ADoMdXNlcl9pZGkJ\n','2011-11-23 14:24:53','2011-11-23 14:39:42'),(22,'2ca1ee6eb02100c8d303d4033d9bdd0f','BAh7CToQcHVyY2hhc2FibGVvOhRFeGhpYml0aW9uc1VzZXIJOhZAYXR0cmli\ndXRlc19jYWNoZXsAOhBAZXhoaWJpdGlvbm86NUFjdGl2ZVJlY29yZDo6QXNz\nb2NpYXRpb25zOjpCZWxvbmdzVG9Bc3NvY2lhdGlvbgk6EEByZWZsZWN0aW9u\nbzo0QWN0aXZlUmVjb3JkOjpSZWZsZWN0aW9uOjpBc3NvY2lhdGlvblJlZmxl\nY3Rpb24NOg1Ab3B0aW9uc3sAOhBAY2xhc3NfbmFtZSIPRXhoaWJpdGlvbjoW\nQHByaW1hcnlfa2V5X25hbWUiEmV4aGliaXRpb25faWQ6C0BrbGFzc2MPRXho\naWJpdGlvbjoQQGNvbGxlY3Rpb25GOhNAYWN0aXZlX3JlY29yZGMURXhoaWJp\ndGlvbnNVc2VyOgtAbWFjcm86D2JlbG9uZ3NfdG86CkBuYW1lOg9leGhpYml0\naW9uOgxAdGFyZ2V0bzoPRXhoaWJpdGlvbgc7B3sAOhBAYXR0cmlidXRlc3sR\nIg9jcmVhdGVkX2F0IhgyMDExLTExLTIzIDEyOjUzOjAyIgp0aXRsZSITbmV3\nIGV4aGliaXRpb24iD3VwZGF0ZWRfYXQiGDIwMTEtMTEtMjMgMTQ6Mzk6MjQi\nDnB1Ymxpc2hlZCIGMCIHaWQiBjEiEnZpZXdlZF9udW1iZXIiBzEzIgx1c2Vy\nX2lkIgYxIhBkZXNjcmlwdGlvbiIYYW5kIHNvbWUgZGVzY3JpcHRpbiILc291\ncmNlMCIUY29tbWVudHNfbnVtYmVyIgYwIhJyYXRlc19hdmVyYWdlIgYwIgpz\ndGF0ZTA6C0Bvd25lckAGOgxAbG9hZGVkVDoKQHVzZXJvOwkJOwpvOwsNOwx7\nADsNIglVc2VyOw4iDHVzZXJfaWQ7D2MJVXNlcjsQRjsRQA47EjsTOxQ6CXVz\nZXI7Fm86CVVzZXIHOwd7ADsYexsiCXNhbHQiLWQzNzY2YTkzYjFiZTU3YTgy\nNDI5ZmFlYTJlNzUyOTk4YzZhMmY5ZmMiDXVfbGF5b3V0MCIWbGFzdF9jb25u\nZWN0ZWRfYXQiGDIwMTEtMTEtMjMgMTk6NTQ6NTMiD2NyZWF0ZWRfYXQiGDIw\nMTEtMTEtMjEgMTQ6NTA6MTQiEWFjdGl2YXRlZF9hdCIYMjAxMS0xMS0yMSAy\nMDoyMDoxNCIVYXZhdGFyX2ZpbGVfc2l6ZTAiFWF2YXRhcl9maWxlX25hbWUw\nIh5yZW1lbWJlcl90b2tlbl9leHBpcmVzX2F0MCIVY3J5cHRlZF9wYXNzd29y\nZCItOTNmYWJiMTcwMDcwYmEzZjJkNzE4MjQxMWVhOTBhYjUzMTU3YjU2MSIP\ndXBkYXRlZF9hdCIYMjAxMS0xMS0yMyAxNDoyNDo1MyIYcGFzc3dvcmRfcmVz\nZXRfY29kZTAiFGFjdGl2YXRpb25fY29kZSItYzk0MzRhZTVkNTI2NmRjY2Ni\nZGMzMzVlMjljZDllNTVhZDUwMmFhMiIPdV9sYW5ndWFnZTAiB2lkIgYzIhhh\ndmF0YXJfY29udGVudF90eXBlMCITcmVtZW1iZXJfdG9rZW4wIhNzeXN0ZW1f\ncm9sZV9pZCIGOCIPdV9wZXJfcGFnZTAiFmF2YXRhcl91cGRhdGVkX2F0MCIK\nbG9naW4iEGsucGF0aGFrTk4yIgpzdGF0ZTAiCmVtYWlsIiBrZWRhci5wYXRo\nYWtAcHJhZ3RlY2guY28uaW47GUAGOxpUOxh7DSIKcHJpY2UiBzUwIg9jcmVh\ndGVkX2F0IhgyMDExLTExLTIzIDE0OjMxOjU3IhJleGhpYml0aW9uX2lkIgYx\nIg91cGRhdGVkX2F0IhgyMDExLTExLTIzIDE0OjM5OjIzIg9pbnZpdGVkX2F0\nIhgyMDExLTExLTIzIDIwOjA5OjIzIgdpZCIGNCIMdXNlcl9pZCIGMyIKc3Rh\ndGUiDGludml0ZWQ6CWNhcnR7ADoLbG9jYWxlOgplbi1VUzoMdXNlcl9pZGkI\n','2011-11-23 14:39:49','2011-11-24 05:04:27'),(23,'0c88f2890e76df9bfde76fd12fc3cc57','BAh7CToQcHVyY2hhc2FibGVvOhRFeGhpYml0aW9uc1VzZXIJOhZAYXR0cmli\ndXRlc19jYWNoZXsAOgpAdXNlcm86NUFjdGl2ZVJlY29yZDo6QXNzb2NpYXRp\nb25zOjpCZWxvbmdzVG9Bc3NvY2lhdGlvbgk6EEByZWZsZWN0aW9ubzo0QWN0\naXZlUmVjb3JkOjpSZWZsZWN0aW9uOjpBc3NvY2lhdGlvblJlZmxlY3Rpb24N\nOg1Ab3B0aW9uc3sAOhBAY2xhc3NfbmFtZSIJVXNlcjoWQHByaW1hcnlfa2V5\nX25hbWUiDHVzZXJfaWQ6C0BrbGFzc2MJVXNlcjoQQGNvbGxlY3Rpb25GOhNA\nYWN0aXZlX3JlY29yZGMURXhoaWJpdGlvbnNVc2VyOgtAbWFjcm86D2JlbG9u\nZ3NfdG86CkBuYW1lOgl1c2VyOgxAdGFyZ2V0bzoJVXNlcgc7B3sAOhBAYXR0\ncmlidXRlc3sbIglzYWx0Ii1kMzc2NmE5M2IxYmU1N2E4MjQyOWZhZWEyZTc1\nMjk5OGM2YTJmOWZjIg11X2xheW91dDAiFmxhc3RfY29ubmVjdGVkX2F0Ihgy\nMDExLTExLTI0IDEwOjM0OjM0Ig9jcmVhdGVkX2F0IhgyMDExLTExLTIxIDE0\nOjUwOjE0IhFhY3RpdmF0ZWRfYXQiGDIwMTEtMTEtMjEgMjA6MjA6MTQiFWF2\nYXRhcl9maWxlX3NpemUwIhVhdmF0YXJfZmlsZV9uYW1lMCIecmVtZW1iZXJf\ndG9rZW5fZXhwaXJlc19hdDAiFWNyeXB0ZWRfcGFzc3dvcmQiLTkzZmFiYjE3\nMDA3MGJhM2YyZDcxODI0MTFlYTkwYWI1MzE1N2I1NjEiD3VwZGF0ZWRfYXQi\nGDIwMTEtMTEtMjQgMDU6MDQ6MzQiGHBhc3N3b3JkX3Jlc2V0X2NvZGUwIhRh\nY3RpdmF0aW9uX2NvZGUiLWM5NDM0YWU1ZDUyNjZkY2NjYmRjMzM1ZTI5Y2Q5\nZTU1YWQ1MDJhYTIiD3VfbGFuZ3VhZ2UwIgdpZCIGMyIYYXZhdGFyX2NvbnRl\nbnRfdHlwZTAiE3JlbWVtYmVyX3Rva2VuMCITc3lzdGVtX3JvbGVfaWQiBjgi\nD3VfcGVyX3BhZ2UwIhZhdmF0YXJfdXBkYXRlZF9hdDAiCmxvZ2luIhBrLnBh\ndGhha05OMiIKc3RhdGUwIgplbWFpbCIga2VkYXIucGF0aGFrQHByYWd0ZWNo\nLmNvLmluOgtAb3duZXJABjoMQGxvYWRlZFQ6EEBleGhpYml0aW9ubzsJCTsK\nbzsLDTsMewA7DSIPRXhoaWJpdGlvbjsOIhJleGhpYml0aW9uX2lkOw9jD0V4\naGliaXRpb247EEY7EUAOOxI7EzsUOg9leGhpYml0aW9uOxZvOg9FeGhpYml0\naW9uBzsHewA7GHsRIg9jcmVhdGVkX2F0IhgyMDExLTExLTIzIDEyOjUzOjAy\nIgp0aXRsZSITbmV3IGV4aGliaXRpb24iD3VwZGF0ZWRfYXQiGDIwMTEtMTEt\nMjMgMTQ6Mzk6MjQiDnB1Ymxpc2hlZCIGMCIHaWQiBjEiEnZpZXdlZF9udW1i\nZXIiBzEzIgx1c2VyX2lkIgYxIhBkZXNjcmlwdGlvbiIYYW5kIHNvbWUgZGVz\nY3JpcHRpbiILc291cmNlMCIUY29tbWVudHNfbnVtYmVyIgYwIhJyYXRlc19h\ndmVyYWdlIgYwIgpzdGF0ZTA7GUAGOxpUOxh7DSIKcHJpY2UiBzUwIg9jcmVh\ndGVkX2F0IhgyMDExLTExLTIzIDE0OjMxOjU3IhJleGhpYml0aW9uX2lkIgYx\nIg91cGRhdGVkX2F0IhgyMDExLTExLTIzIDE0OjM5OjIzIg9pbnZpdGVkX2F0\nIhgyMDExLTExLTIzIDIwOjA5OjIzIgdpZCIGNCIMdXNlcl9pZCIGMyIKc3Rh\ndGUiDGludml0ZWQ6CWNhcnR7ADoLbG9jYWxlOgplbi1VUzoMdXNlcl9pZGkI\n','2011-11-24 05:04:34','2011-11-24 05:08:15'),(24,'40a5d9f6ddd958217b39ad8fe7be17e2','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQY=\n','2011-11-24 05:08:36','2011-11-24 05:08:47'),(25,'11085fbe861482e5aa1963a3db04371f','BAh7CDoLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQg=\n','2011-11-24 05:52:13','2011-11-24 05:53:31'),(26,'917e8511164e276d2697213e0a527db7','BAh7CToLbG9jYWxlOgplbi1VUzoJY2FydHsAIgpmbGFzaElDOidBY3Rpb25D\nb250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewY6C25vdGljZSIlQ29tcGV0\naXRpb24gQ3JlYXRlZCBTdWNjZXNzZnVsbHkGOgpAdXNlZHsGOwlUOgx1c2Vy\nX2lkaQY=\n','2011-11-24 06:03:33','2011-11-24 07:37:28'),(27,'87246603dcd277c94d114b28863ab1da','BAh7CDoLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQg=\n','2011-11-24 06:06:47','2011-11-24 06:07:04'),(28,'5565d39e72840ee9b594e2ca9a493e8c','BAh7CDoLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQY=\n','2011-11-24 06:15:14','2011-11-24 07:12:20'),(29,'50fde0fa726998dbc061d2cc41d48573','BAh7DjoKdG9rZW4iGUVDLTA0TjcyOTI2Qjg3OTU0MzI3OhNjdXJyZW50X29i\namVjdG86DFBheW1lbnQMOhBAbmV3X3JlY29yZEY6DUBpbnZvaWNlbzo1QWN0\naXZlUmVjb3JkOjpBc3NvY2lhdGlvbnM6OkJlbG9uZ3NUb0Fzc29jaWF0aW9u\nCjoMQHRhcmdldG86DEludm9pY2ULOwhGOhhAY2hhbmdlZF9hdHRyaWJ1dGVz\newA6EUBwdXJjaGFzYWJsZW86QEFjdGl2ZVJlY29yZDo6QXNzb2NpYXRpb25z\nOjpCZWxvbmdzVG9Qb2x5bW9ycGhpY0Fzc29jaWF0aW9uCTsLbzoVQ29tcGV0\naXRpb25zVXNlcgg7DXsAOhZAYXR0cmlidXRlc19jYWNoZXsAOhBAYXR0cmli\ndXRlc3txIg9zaXdvcmtzaXplMCITc2l3b3JrZWRudW1iZXIwIgx1c2VyX2lk\nIgYzIg9mb3dvcmtzaXplMCIOcG9zdF9jb2RlIgs0MTEwMzgiEG53b3JrbWVk\naXVtMCIPY3JlYXRlZF9hdCIYMjAxMS0xMS0yNCAxMDowODo0OCIQZml3b3Jr\naW1hZ2UwIhFiYW5rX2FjY291bnQwIg9ud29ya2ltYWdlMCIQc2l3b3JrdGl0\nbGUwIhB0ZXdvcmtpbWFnZTAiD2hlcmVfcHJpemUwIhB0d29ya2VkbmFtZTAi\nEnN3b3JrZWRudW1iZXIwIg9zd29ya3ByaWNlMCIRZml3b3JrbWVkaXVtMCIQ\nc2l3b3JrcHJpY2UwIhBzZXdvcmtwcmljZTAiC290aGVyczAiEHNld29ya3Rp\ndGxlMCIQZXdvcmttZWRpdW0wIhFwYXltZW50X3R5cGUwIgtmb3NvbGQwIg1l\neHBfZGF0ZTAiEHN3b3JrbWVkaXVtMCIPbndvcmt0aXRsZTAiEWZvd29ya21l\nZGl1bTAiDm53b3Jrc2l6ZTAiD253b3JrcHJpY2UwIhNlaXdvcmtlZG51bWJl\ncjAiC2Vpc29sZDAiD3R3b3JraW1hZ2UwIgpwcmljZSIGMCIKZW1haWwiIGtl\nZGFyLnBhdGhha0BwcmFndGVjaC5jby5pbiILYnNiX25vMCIPZXdvcmtwcmlj\nZTAiEXRld29ya2VkbmFtZTAiD3N3b3JraW1hZ2UwIhN0ZXdvcmtlZG51bWJl\ncjAiEHRvdGFsX2VudHJ5IgYxIhFlaXdvcmtlZG5hbWUwIg5md29ya3NpemUw\nIg90d29ya3ByaWNlMCILZmlzb2xkMCILc3VidXJiIgtzdWJ1cmIiD2V3b3Jr\ndGl0bGUwIhBhdF9lbmRfd29yazAiEW5pd29ya2VkbmFtZTAiD3R3b3JrdGl0\nbGUwIgtzaXNvbGQwIg5ld29ya3NpemUwIgxjb25maXJtIgYxIhZ2YXJpZmlj\nYXRpb25fY29kZTAiCnNzb2xkMCIQc2V3b3JraW1hZ2UwIhNuaXdvcmtlZG51\nbWJlcjAiDmJpb2dyYXBoeTAiDnBhaWRlbnRyeTAiEXNpd29ya21lZGl1bTAi\nEHN3b3JrZWRuYW1lMCIQZndvcmtlZG5hbWUwIg91cGRhdGVkX2F0IhgyMDEx\nLTExLTI0IDEwOjEwOjE5IhF0ZXdvcmttZWRpdW0wIgluYW1lIhFrZWRhciBw\nYXRoYWsiD2Z3b3JrdGl0bGUwIhZyZXR1cm5fb2ZfYXJ0d29yazAiCmZzb2xk\nMCIPZml3b3Jrc2l6ZTAiEHR3b3JrbWVkaXVtMCISdHdvcmtlZG51bWJlcjAi\nE2Zpd29ya2VkbnVtYmVyMCIQZml3b3JrcHJpY2UwIhBmaXdvcmt0aXRsZTAi\nD2V3b3JraW1hZ2UwIiFjb21wZXRpdGlvbnNfc3Vic2NyaXB0aW9uX2lkMCIP\ndGV3b3Jrc2l6ZTAiEWZvd29ya2VkbmFtZTAiD2Z3b3JrcHJpY2UwIhNjb21w\nZXRpdGlvbl9pZCIGNCIPc2V3b3Jrc2l6ZTAiEHRld29ya3RpdGxlMCIRc2V3\nb3JrZWRuYW1lMCISZndvcmtlZG51bWJlcjAiEGZ3b3JrbWVkaXVtMCIOdHdv\ncmtzaXplMCIQdGV3b3JrcHJpY2UwIgt0ZXNvbGQwIg5jYXJkX25hbWUwIgp0\nc29sZDAiC3Nlc29sZDAiEGZvd29ya2ltYWdlMCIOc3dvcmtzaXplMCIRZml3\nb3JrZWRuYW1lMCIRc2V3b3JrbWVkaXVtMCIQY2FyZF9udW1iZXIwIg9md29y\na2ltYWdlMCIPc3dvcmt0aXRsZTAiEGZvd29ya3RpdGxlMCIMYWRkcmVzcyIM\nYWRkcmVzcyIKbnNvbGQwIhNmb3dvcmtlZG51bWJlcjAiE3Nld29ya2VkbnVt\nYmVyMCIHaWQiBjciEGZvd29ya3ByaWNlMCIQc2l3b3JraW1hZ2UwIgpzdGF0\nZSINYWNjZXB0ZWQiEXNpd29ya2VkbmFtZTA6EEByZWZsZWN0aW9ubzo0QWN0\naXZlUmVjb3JkOjpSZWZsZWN0aW9uOjpBc3NvY2lhdGlvblJlZmxlY3Rpb24M\nOg1Ab3B0aW9uc3sHOhFmb3JlaWduX3R5cGUiFXB1cmNoYXNhYmxlX3R5cGU6\nEHBvbHltb3JwaGljVDoQQGNsYXNzX25hbWUiEFB1cmNoYXNhYmxlOhZAcHJp\nbWFyeV9rZXlfbmFtZSITcHVyY2hhc2FibGVfaWQ6EEBjb2xsZWN0aW9uRjoT\nQGFjdGl2ZV9yZWNvcmRjDEludm9pY2U6C0BtYWNybzoPYmVsb25nc190bzoK\nQG5hbWU6EHB1cmNoYXNhYmxlOgxAbG9hZGVkVDoLQG93bmVyQAk6DEBlcnJv\ncnNvOhlBY3RpdmVSZWNvcmQ6OkVycm9ycwc7IklDOh9BY3RpdmVTdXBwb3J0\nOjpPcmRlcmVkSGFzaHsABjoKQGtleXNbADoKQGJhc2VACTsRewA7EnsZIgtu\ndW1iZXIiD0k0MTc0NzI2MDciD2NyZWF0ZWRfYXRJdToJVGltZQ0K6xvAloc0\nKQY6H0BtYXJzaGFsX3dpdGhfdXRjX2NvZXJjaW9uVCIKdGl0bGUiF0ludm9p\nY2UgSTQxNzQ3MjYwNyIPdXBkYXRlZF9hdEl1OycNCusbwIucNCkGOyhUIhFm\naW5hbF9hbW91bnRpNyITcGF5bWVudF9tZWRpdW0iCWNhc2giB2lkaRgiFXNo\naXBwaW5nX2FkZHJlc3MiE2FkZHJlc3MgaW5kaWEgIg9jcmVhdG9yX2lkMCIR\ndmFsaWRhdGVkX2F0MCIMc2VudF9hdEl1OycNCusbgLmXNCkGOyhGIg1kZWFk\nbGluZXU6CURhdGU9BAhbCG86DVJhdGlvbmFsBzoRQGRlbm9taW5hdG9yaQc6\nD0BudW1lcmF0b3JpA7HySmkAaQMZFSMiE3B1cmNoYXNhYmxlX2lkaQwiDmNs\naWVudF9pZGkIIglub3RlMCIUYmlsbGluZ19hZGRyZXNzIhNhZGRyZXNzIGlu\nZGlhICIUb3JpZ2luYWxfYW1vdW50aTciEGRlc2NyaXB0aW9uIk5JbnZvaWNl\nIGZvciB0aGUgc3Vic2NyaXB0aW9uIHRvIHRoZSBjb21wZXRpdGlvbiAnZmly\nc3QgY29tcGV0aXRpb24gbmFtZTInIhVwdXJjaGFzYWJsZV90eXBlIhVDb21w\nZXRpdGlvbnNVc2VyIgpzdGF0ZSIMY3JlYXRlZDsTbzsUDTsVewA7GCIMSW52\nb2ljZTsZIg9pbnZvaWNlX2lkOgtAa2xhc3NAAYo7GkY7G2MMUGF5bWVudDsc\nOx07HjoMaW52b2ljZToNQHVwZGF0ZWRUOyBUOyFABzsNewA7Im87Iwc7IklD\nOyR7AAY7JVsAOyZABzsRewA6CkB1c2VybzsKCjsLbzoJVXNlcgg7EXsAOg1A\ncHJvZmlsZW86MkFjdGl2ZVJlY29yZDo6QXNzb2NpYXRpb25zOjpIYXNPbmVB\nc3NvY2lhdGlvbgo7C286DFByb2ZpbGUKOw17ADsibzsjBzsiSUM7JHsABjsl\nWwA7JkABvjsRewA6HEBuZXdfcmVjb3JkX2JlZm9yZV9zYXZlRjsSex4iDGFk\nZHJlc3MiDGFkZHJlc3MiCWNpdHkwIg9jcmVhdGVkX2F0IhgyMDExLTExLTIx\nIDE0OjUwOjE0Ig16aXBfY29kZSILNDExMDM4Igxjb3VudHJ5IgppbmRpYSIP\ndXBkYXRlZF9hdCIYMjAxMS0xMS0yNCAwODo0OToyNiIPc2FsdXRhdGlvbjAi\nB2lkIgYzIgtnZW5kZXIwIg9iaXJ0aF9kYXRlMCILc3VidXJiIgtzdWJ1cmIi\nDHVzZXJfaWQiBjMiEXBob25lX251bWJlciIPOTc2MzM3MDQxOSIObGFzdF9u\nYW1lIgtwYXRoYWsiDHdlYnNpdGUiHmh0dHA6Ly93d3cucHJhZ3RlY2guY28u\naW4iDG5vdGljZXMwIhJlbWFpbF9hZGRyZXNzIiBrZWRhci5wYXRoYWtAcHJh\nZ3RlY2guY28uaW4iF2dldHRpbmdfbmV3c2xldHRlciIGMCIMc3R1ZGlvczAi\nD2ZpcnN0X25hbWUiCmtlZGFyIhBtaWRkbGVfbmFtZTAiEG5hdGlvbmFsaXR5\nMCIKc3RhdGUwIhJjb3VudHJ5X3N0YXRlIhBtYWhhcmFzaHRyYSIOYmlvZ3Jh\ncGh5MDsTbzsUDjsVewc6DmRlcGVuZGVudDoMZGVzdHJveToNYXV0b3NhdmVU\nOxgiDFByb2ZpbGU7GSIMdXNlcl9pZDsqYwxQcm9maWxlOxpGOxtjCVVzZXI6\nF0BxdW90ZWRfdGFibGVfbmFtZSIPYHByb2ZpbGVzYDscOgxoYXNfb25lOx46\nDHByb2ZpbGU6EEBmaW5kZXJfc3FsIhtgcHJvZmlsZXNgLnVzZXJfaWQgPSAz\nOyBUOyFAAbs7EnsbIhZsYXN0X2Nvbm5lY3RlZF9hdCIYMjAxMS0xMS0yNCAx\nMTo0NToxNCINdV9sYXlvdXQwIglzYWx0Ii1kMzc2NmE5M2IxYmU1N2E4MjQy\nOWZhZWEyZTc1Mjk5OGM2YTJmOWZjIhVhdmF0YXJfZmlsZV9uYW1lMCIVYXZh\ndGFyX2ZpbGVfc2l6ZTAiEWFjdGl2YXRlZF9hdCIYMjAxMS0xMS0yMSAyMDoy\nMDoxNCIPY3JlYXRlZF9hdCIYMjAxMS0xMS0yMSAxNDo1MDoxNCIVY3J5cHRl\nZF9wYXNzd29yZCItOTNmYWJiMTcwMDcwYmEzZjJkNzE4MjQxMWVhOTBhYjUz\nMTU3YjU2MSIecmVtZW1iZXJfdG9rZW5fZXhwaXJlc19hdDAiGHBhc3N3b3Jk\nX3Jlc2V0X2NvZGUwIg91cGRhdGVkX2F0IhgyMDExLTExLTI0IDA2OjE1OjE0\nIg91X2xhbmd1YWdlMCIUYWN0aXZhdGlvbl9jb2RlIi1jOTQzNGFlNWQ1MjY2\nZGNjY2JkYzMzNWUyOWNkOWU1NWFkNTAyYWEyIgdpZCIGMyIYYXZhdGFyX2Nv\nbnRlbnRfdHlwZTAiE3JlbWVtYmVyX3Rva2VuMCIKbG9naW4iEGsucGF0aGFr\nTk4yIhZhdmF0YXJfdXBkYXRlZF9hdDAiD3VfcGVyX3BhZ2UwIhNzeXN0ZW1f\ncm9sZV9pZCIGOCIKZW1haWwiIGtlZGFyLnBhdGhha0BwcmFndGVjaC5jby5p\nbiIKc3RhdGUwOxNvOxQNOxV7ADsYIglVc2VyOxkiDHVzZXJfaWQ7KkAB8jsa\nRjsbQAG0Oxw7HTseOgl1c2VyOyxUOyBUOyFABzsSew8iD2NyZWF0ZWRfYXRJ\ndTsnDQrrG8Be9zUpBjsoVCIPdXBkYXRlZF9hdEACHQEiD2ludm9pY2VfaWRp\nGCIHaWRpGSIUYW1vdW50X2luX2NlbnRzaQKIEyITY3JlZGl0X2NhcmRfaWQw\nIgx1c2VyX2lkaQgiCW5vdGUwIg1jdXJyZW5jeTAiCnN0YXRlMDoScGF5cGFs\nX2Ftb3VudGYJNTMwMDoLbG9jYWxlOgplbi1VUzoJY2FydHsAOgpvcmRlcm87\nEA06EUBjb21wZXRpdGlvbm87Cgk7C286EENvbXBldGl0aW9uCDsRewA6DEB0\naW1pbmdvOzAKOwtvOgtUaW1pbmcHOxF7ByISc3RhcnRpbmdfZGF0ZXU7KT0E\nCFsIbzoNUmF0aW9uYWwHOhFAZGVub21pbmF0b3JpBzoPQG51bWVyYXRvcmkD\nqfJKaQBpAxkVIyIQZW5kaW5nX2RhdGV1Oyk9BAhbCG86DVJhdGlvbmFsBzoR\nQGRlbm9taW5hdG9yaQc6D0BudW1lcmF0b3JpA63ySmkAaQMZFSM7EnsSIg9j\ncmVhdGVkX2F0IhgyMDExLTExLTI0IDA5OjIyOjUzIhJzdGFydGluZ190aW1l\nMCIPdXBkYXRlZF9hdCIYMjAxMS0xMS0yNCAwOToyMjo1MyIUb2JqZWN0YWJs\nZV90eXBlIhBDb21wZXRpdGlvbiISc3RhcnRpbmdfZGF0ZSIPMjAxMS0xMS0y\nNyIHaWQiBjUiEm9iamVjdGFibGVfaWQiBjQiCW5vdGUiE2JldXRpZnVsIG5v\ndGVzIg5wZXJpb2RfaWQwIhBlbmRpbmdfdGltZTAiDnBsYWNlc19pZCIGMSIQ\nZW5kaW5nX2RhdGUiDzIwMTEtMTEtMjkiCnN0YXRlMDsTbzsUDTsVewg6B2Fz\nOg9vYmplY3RhYmxlOzM6C2RlbGV0ZTs1VDsYIgtUaW1pbmc7KmMLVGltaW5n\nOxpGOxtjEENvbXBldGl0aW9uOzYiDmB0aW1pbmdzYDscOzc7HjoLdGltaW5n\nOzkiTmB0aW1pbmdzYC5vYmplY3RhYmxlX2lkID0gNCBBTkQgYHRpbWluZ3Ng\nLm9iamVjdGFibGVfdHlwZSA9ICdDb21wZXRpdGlvbic7IFQ7IUACKwE7Ensr\nIhhzdWJtaXNzaW9uX2RlYWRsaW5lIg8yMDExLTExLTI3IhxtZXNzYWdlX2Zv\ncl9zdWJzY3JpYmVycyIcbWVzc2FnZSBmb3Igc3Vic2NyaWJlcnMiDGNqdWRn\nZXMiEm1hcmsgamVtaW5zb24iFmF1Y3Rpb25fYWN0aXZhdGVkMCIPY3JlYXRl\nZF9hdCIYMjAxMS0xMS0yNCAwOToyMjo1MyINbG9jYXRpb24iFHB1bmUgdG8g\nYm9ydmFsaSILZm9ybWF0IhVhbmQgc29tZSBmb3JtYXRzIgp0aXRsZSIcZmly\nc3QgY29tcGV0aXRpb24gbmFtZTIiD2NvbW1pc3Npb24iIjUgJSBjb21taXNz\naW9uIG9uIG9iamVjdCBzb2xkIhVob3dfZGlkX3lvdV9oZXJlMCIOcHVibGlz\naGVkIgYwIg91cGRhdGVkX2F0IhgyMDExLTExLTI0IDA5OjIyOjU1IgxmcmFt\naW5nMCIKbm90ZXMiF2FuZCB0aGUgbGFzdCBub3RlcyIOaW5zdXJhbmNlIiYx\nMCUgaW5zdXJhbmNlIG9mIGVhY2ggcGhvdG8gcHJpY2UiB2lkIgY0Ig9saW1p\ndF9zaXplMCIWcmV0dXJuX29mX2FydHdvcmswIgx1c2VyX2lkIgYxIgl0eXBl\nMCIYcHJpemVzX3RvdGFsX2Ftb3VudCIJMTAwMCIScHJpemVzX2RldGFpbCI5\nMXN0IHByaXplICQ0MA0KMm5kIHByaXplICQ4MA0KYW5kIHNvbWUgbGF0ZXN0\nIHByaXplcyISdmlld2VkX251bWJlciIGMSIPZW50cnlfZmVlcyI3MSB3b3Jr\ncyAkNTANCjIgd29ya3MgJDUyDQozIHdvcmtzICQ1Mw0KNCB3b3JrcyAkNTQi\nEW9wZW5zdGF0ZW1zZyIXb3BlbiBzdGF0ZSBtZXNzYWdlIg5yZXN1bHRtc2ci\nG3B1Ymxpc2ggcmVzdWx0IG1lc3NhZ2UiDWp1ZGdlX2lkMCIQZGVzY3JpcHRp\nb24iJGFuZCBkZXNjcmlwdGlvbiBmb3IgY29tcGV0aXRpb24iFHB1Ymxpc2hm\naW5hbG1zZyIicHVibGlzaCBmaW5hbCBhcnR3b3JrIG1lc3NhZ2UiDnRpbWlu\nZ19pZDAiFGNvbW1lbnRzX251bWJlciIGMCILc291cmNlMCINZGVsaXZlcnki\nFmFuZCBzb21lIGRlbGl2ZXJ5IgpzdGF0ZSIJb3BlbiIScmF0ZXNfYXZlcmFn\nZSIGMCIQbm9fb2ZfZW50cnkiBzEwIg9jb2xsZWN0aW9uIhRzb21lIGNvbGxl\nY3Rpb24iFGV4aGliaXRpb25fZGF0ZTA7E287FA07FXsAOxgiEENvbXBldGl0\naW9uOypAAk8BOxkiE2NvbXBldGl0aW9uX2lkOxpGOxtjFUNvbXBldGl0aW9u\nc1VzZXI7HDsdOx46EGNvbXBldGl0aW9uOyBUOyFAAikBOw17ADsibzsjBzsi\nSUM7JHsABjslWwA7JkACKQE6DkBpbnZvaWNlc286M0FjdGl2ZVJlY29yZDo6\nQXNzb2NpYXRpb25zOjpIYXNNYW55QXNzb2NpYXRpb24LOwtbBm87DAc7EXsA\nOxJ7GSILbnVtYmVyIg9JNDE3NDcyNjA3Ig9jcmVhdGVkX2F0IhgyMDExLTEx\nLTI0IDEwOjEwOjE5Igp0aXRsZSIXSW52b2ljZSBJNDE3NDcyNjA3IhNwYXlt\nZW50X21lZGl1bSIJY2FzaCIRZmluYWxfYW1vdW50Igc1MCIPdXBkYXRlZF9h\ndCIYMjAxMS0xMS0yNCAxMDoxMDoxOSIHaWQiBzE5Ig9jcmVhdG9yX2lkMCIV\nc2hpcHBpbmdfYWRkcmVzcyITYWRkcmVzcyBpbmRpYSAiDmNsaWVudF9pZCIG\nMyITcHVyY2hhc2FibGVfaWQiBjciDWRlYWRsaW5lIg8yMDExLTEyLTAxIgxz\nZW50X2F0IhgyMDExLTExLTI0IDE1OjQwOjE5IhF2YWxpZGF0ZWRfYXQwIhRi\naWxsaW5nX2FkZHJlc3MiE2FkZHJlc3MgaW5kaWEgIglub3RlMCIQZGVzY3Jp\ncHRpb24iTkludm9pY2UgZm9yIHRoZSBzdWJzY3JpcHRpb24gdG8gdGhlIGNv\nbXBldGl0aW9uICdmaXJzdCBjb21wZXRpdGlvbiBuYW1lMiciFG9yaWdpbmFs\nX2Ftb3VudCIHNTAiFXB1cmNoYXNhYmxlX3R5cGUiFUNvbXBldGl0aW9uc1Vz\nZXIiCnN0YXRlIgxjcmVhdGVkOxNvOxQNOxV7CDtEOx87MzoPZGVsZXRlX2Fs\nbDoLZXh0ZW5kWwA7GCIMSW52b2ljZTsqQAGKOxpUOxtAApkBOzYiD2BpbnZv\naWNlc2A7HDoNaGFzX21hbnk7HjoNaW52b2ljZXM7OSJXYGludm9pY2VzYC5w\ndXJjaGFzYWJsZV9pZCA9IDcgQU5EIGBpbnZvaWNlc2AucHVyY2hhc2FibGVf\ndHlwZSA9ICdDb21wZXRpdGlvbnNVc2VyJzoRQGNvdW50ZXJfc3FsQALNATsg\nVDshQAIpATsRewA7LW87Cgk7C287Lgg7EXsAOy9vOzAKOwtvOzEHOxF7ADsS\nex4iDGFkZHJlc3MiDGFkZHJlc3MiCWNpdHkwIg9jcmVhdGVkX2F0IhgyMDEx\nLTExLTIxIDE0OjUwOjE0Ig16aXBfY29kZSILNDExMDM4Igxjb3VudHJ5Igpp\nbmRpYSIPdXBkYXRlZF9hdCIYMjAxMS0xMS0yNCAwODo0OToyNiIPc2FsdXRh\ndGlvbjAiB2lkIgYzIgtnZW5kZXIwIg9iaXJ0aF9kYXRlMCILc3VidXJiIgtz\ndWJ1cmIiDHVzZXJfaWQiBjMiEXBob25lX251bWJlciIPOTc2MzM3MDQxOSIO\nbGFzdF9uYW1lIgtwYXRoYWsiDHdlYnNpdGUiHmh0dHA6Ly93d3cucHJhZ3Rl\nY2guY28uaW4iDG5vdGljZXMwIhJlbWFpbF9hZGRyZXNzIiBrZWRhci5wYXRo\nYWtAcHJhZ3RlY2guY28uaW4iF2dldHRpbmdfbmV3c2xldHRlciIGMCIMc3R1\nZGlvczAiD2ZpcnN0X25hbWUiCmtlZGFyIhBtaWRkbGVfbmFtZTAiEG5hdGlv\nbmFsaXR5MCIKc3RhdGUwIhJjb3VudHJ5X3N0YXRlIhBtYWhhcmFzaHRyYSIO\nYmlvZ3JhcGh5MDsTQAHtOzkiG2Bwcm9maWxlc2AudXNlcl9pZCA9IDM7IFQ7\nIUAC0AE7EnsbIhZsYXN0X2Nvbm5lY3RlZF9hdCIYMjAxMS0xMS0yNCAxMTo0\nNToxNCINdV9sYXlvdXQwIglzYWx0Ii1kMzc2NmE5M2IxYmU1N2E4MjQyOWZh\nZWEyZTc1Mjk5OGM2YTJmOWZjIhVhdmF0YXJfZmlsZV9uYW1lMCIVYXZhdGFy\nX2ZpbGVfc2l6ZTAiEWFjdGl2YXRlZF9hdCIYMjAxMS0xMS0yMSAyMDoyMDox\nNCIPY3JlYXRlZF9hdCIYMjAxMS0xMS0yMSAxNDo1MDoxNCIVY3J5cHRlZF9w\nYXNzd29yZCItOTNmYWJiMTcwMDcwYmEzZjJkNzE4MjQxMWVhOTBhYjUzMTU3\nYjU2MSIecmVtZW1iZXJfdG9rZW5fZXhwaXJlc19hdDAiGHBhc3N3b3JkX3Jl\nc2V0X2NvZGUwIg91cGRhdGVkX2F0IhgyMDExLTExLTI0IDA2OjE1OjE0Ig91\nX2xhbmd1YWdlMCIUYWN0aXZhdGlvbl9jb2RlIi1jOTQzNGFlNWQ1MjY2ZGNj\nY2JkYzMzNWUyOWNkOWU1NWFkNTAyYWEyIgdpZCIGMyIYYXZhdGFyX2NvbnRl\nbnRfdHlwZTAiE3JlbWVtYmVyX3Rva2VuMCIKbG9naW4iEGsucGF0aGFrTk4y\nIhZhdmF0YXJfdXBkYXRlZF9hdDAiD3VfcGVyX3BhZ2UwIhNzeXN0ZW1fcm9s\nZV9pZCIGOCIKZW1haWwiIGtlZGFyLnBhdGhha0BwcmFndGVjaC5jby5pbiIK\nc3RhdGUwOxNvOxQNOxV7ADsYIglVc2VyOypAAfI7GSIMdXNlcl9pZDsaRjsb\nQAKZATscOx07Hjs6OyBUOyFAAikBOzJGOxJ7cSIPc2l3b3Jrc2l6ZTAiE3Np\nd29ya2VkbnVtYmVyMCIMdXNlcl9pZCIGMyIPZm93b3Jrc2l6ZTAiDnBvc3Rf\nY29kZSILNDExMDM4IhBud29ya21lZGl1bTAiD2NyZWF0ZWRfYXQiGDIwMTEt\nMTEtMjQgMTA6MDg6NDgiEGZpd29ya2ltYWdlMCIRYmFua19hY2NvdW50MCIP\nbndvcmtpbWFnZTAiEHNpd29ya3RpdGxlMCIQdGV3b3JraW1hZ2UwIg9oZXJl\nX3ByaXplMCIQdHdvcmtlZG5hbWUwIhJzd29ya2VkbnVtYmVyMCIPc3dvcmtw\ncmljZTAiEWZpd29ya21lZGl1bTAiEHNpd29ya3ByaWNlMCIQc2V3b3JrcHJp\nY2UwIgtvdGhlcnMwIhBzZXdvcmt0aXRsZTAiEGV3b3JrbWVkaXVtMCIRcGF5\nbWVudF90eXBlMCILZm9zb2xkMCINZXhwX2RhdGUwIhBzd29ya21lZGl1bTAi\nD253b3JrdGl0bGUwIhFmb3dvcmttZWRpdW0wIg5ud29ya3NpemUwIg9ud29y\na3ByaWNlMCITZWl3b3JrZWRudW1iZXIwIgtlaXNvbGQwIg90d29ya2ltYWdl\nMCIKcHJpY2UiBjAiCmVtYWlsIiBrZWRhci5wYXRoYWtAcHJhZ3RlY2guY28u\naW4iC2JzYl9ubzAiD2V3b3JrcHJpY2UwIhF0ZXdvcmtlZG5hbWUwIg9zd29y\na2ltYWdlMCITdGV3b3JrZWRudW1iZXIwIhB0b3RhbF9lbnRyeSIGMSIRZWl3\nb3JrZWRuYW1lMCIOZndvcmtzaXplMCIPdHdvcmtwcmljZTAiC2Zpc29sZDAi\nC3N1YnVyYiILc3VidXJiIg9ld29ya3RpdGxlMCIQYXRfZW5kX3dvcmswIhFu\naXdvcmtlZG5hbWUwIg90d29ya3RpdGxlMCILc2lzb2xkMCIOZXdvcmtzaXpl\nMCIMY29uZmlybSIGMSIWdmFyaWZpY2F0aW9uX2NvZGUwIgpzc29sZDAiEHNl\nd29ya2ltYWdlMCITbml3b3JrZWRudW1iZXIwIg5iaW9ncmFwaHkwIg5wYWlk\nZW50cnkwIhFzaXdvcmttZWRpdW0wIhBzd29ya2VkbmFtZTAiEGZ3b3JrZWRu\nYW1lMCIPdXBkYXRlZF9hdEl1OycNCusbwP1KMykGOyhUIhF0ZXdvcmttZWRp\ndW0wIgluYW1lIhFrZWRhciBwYXRoYWsiD2Z3b3JrdGl0bGUwIhZyZXR1cm5f\nb2ZfYXJ0d29yazAiCmZzb2xkMCIPZml3b3Jrc2l6ZTAiEHR3b3JrbWVkaXVt\nMCISdHdvcmtlZG51bWJlcjAiE2Zpd29ya2VkbnVtYmVyMCIQZml3b3JrcHJp\nY2UwIhBmaXdvcmt0aXRsZTAiD2V3b3JraW1hZ2UwIiFjb21wZXRpdGlvbnNf\nc3Vic2NyaXB0aW9uX2lkMCIPdGV3b3Jrc2l6ZTAiEWZvd29ya2VkbmFtZTAi\nD2Z3b3JrcHJpY2UwIhNjb21wZXRpdGlvbl9pZCIGNCIPc2V3b3Jrc2l6ZTAi\nEHRld29ya3RpdGxlMCIRc2V3b3JrZWRuYW1lMCISZndvcmtlZG51bWJlcjAi\nEGZ3b3JrbWVkaXVtMCIOdHdvcmtzaXplMCIQdGV3b3JrcHJpY2UwIgt0ZXNv\nbGQwIg5jYXJkX25hbWUwIgp0c29sZDAiC3Nlc29sZDAiEGZvd29ya2ltYWdl\nMCIOc3dvcmtzaXplMCIRZml3b3JrZWRuYW1lMCIRc2V3b3JrbWVkaXVtMCIQ\nY2FyZF9udW1iZXIwIg9md29ya2ltYWdlMCIPc3dvcmt0aXRsZTAiEGZvd29y\na3RpdGxlMCIMYWRkcmVzcyIMYWRkcmVzcyIKbnNvbGQwIhNmb3dvcmtlZG51\nbWJlcjAiE3Nld29ya2VkbnVtYmVyMCIHaWQiBjciEGZvd29ya3ByaWNlMCIQ\nc2l3b3JraW1hZ2UwIgpzdGF0ZSINYWNjZXB0ZWQiEXNpd29ya2VkbmFtZTAi\nCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7\nAAY6CkB1c2VkewA6DHVzZXJfaWRpCDsfbzsQCjsNewA7Im87Iwc7IklDOyR7\nAAY7JVsAOyZAAqMCOxF7ADsyRjsSe3EiD3Npd29ya3NpemUwIhNzaXdvcmtl\nZG51bWJlcjAiDHVzZXJfaWQiBjMiD2Zvd29ya3NpemUwIg5wb3N0X2NvZGUi\nCzQxMTAzOCIQbndvcmttZWRpdW0wIg9jcmVhdGVkX2F0IhgyMDExLTExLTI0\nIDEwOjA4OjQ4IhBmaXdvcmtpbWFnZTAiEWJhbmtfYWNjb3VudDAiD253b3Jr\naW1hZ2UwIhBzaXdvcmt0aXRsZTAiEHRld29ya2ltYWdlMCIPaGVyZV9wcml6\nZTAiEHR3b3JrZWRuYW1lMCISc3dvcmtlZG51bWJlcjAiD3N3b3JrcHJpY2Uw\nIhFmaXdvcmttZWRpdW0wIhBzaXdvcmtwcmljZTAiEHNld29ya3ByaWNlMCIL\nb3RoZXJzMCIQc2V3b3JrdGl0bGUwIhBld29ya21lZGl1bTAiEXBheW1lbnRf\ndHlwZTAiC2Zvc29sZDAiDWV4cF9kYXRlMCIQc3dvcmttZWRpdW0wIg9ud29y\na3RpdGxlMCIRZm93b3JrbWVkaXVtMCIObndvcmtzaXplMCIPbndvcmtwcmlj\nZTAiE2Vpd29ya2VkbnVtYmVyMCILZWlzb2xkMCIPdHdvcmtpbWFnZTAiCnBy\naWNlIgYwIgplbWFpbCIga2VkYXIucGF0aGFrQHByYWd0ZWNoLmNvLmluIgti\nc2Jfbm8wIg9ld29ya3ByaWNlMCIRdGV3b3JrZWRuYW1lMCIPc3dvcmtpbWFn\nZTAiE3Rld29ya2VkbnVtYmVyMCIQdG90YWxfZW50cnkiBjEiEWVpd29ya2Vk\nbmFtZTAiDmZ3b3Jrc2l6ZTAiD3R3b3JrcHJpY2UwIgtmaXNvbGQwIgtzdWJ1\ncmIiC3N1YnVyYiIPZXdvcmt0aXRsZTAiEGF0X2VuZF93b3JrMCIRbml3b3Jr\nZWRuYW1lMCIPdHdvcmt0aXRsZTAiC3Npc29sZDAiDmV3b3Jrc2l6ZTAiDGNv\nbmZpcm1UIhZ2YXJpZmljYXRpb25fY29kZTAiCnNzb2xkMCIQc2V3b3JraW1h\nZ2UwIhNuaXdvcmtlZG51bWJlcjAiDmJpb2dyYXBoeTAiDnBhaWRlbnRyeTAi\nEXNpd29ya21lZGl1bTAiEHN3b3JrZWRuYW1lMCIQZndvcmtlZG5hbWUwIg91\ncGRhdGVkX2F0IhgyMDExLTExLTI0IDEwOjEwOjE5IhF0ZXdvcmttZWRpdW0w\nIgluYW1lIhFrZWRhciBwYXRoYWsiD2Z3b3JrdGl0bGUwIhZyZXR1cm5fb2Zf\nYXJ0d29yazAiCmZzb2xkMCIPZml3b3Jrc2l6ZTAiEHR3b3JrbWVkaXVtMCIS\ndHdvcmtlZG51bWJlcjAiE2Zpd29ya2VkbnVtYmVyMCIQZml3b3JrcHJpY2Uw\nIhBmaXdvcmt0aXRsZTAiD2V3b3JraW1hZ2UwIiFjb21wZXRpdGlvbnNfc3Vi\nc2NyaXB0aW9uX2lkMCIPdGV3b3Jrc2l6ZTAiEWZvd29ya2VkbmFtZTAiD2Z3\nb3JrcHJpY2UwIhNjb21wZXRpdGlvbl9pZCIGNCIPc2V3b3Jrc2l6ZTAiEHRl\nd29ya3RpdGxlMCIRc2V3b3JrZWRuYW1lMCISZndvcmtlZG51bWJlcjAiEGZ3\nb3JrbWVkaXVtMCIOdHdvcmtzaXplMCIQdGV3b3JrcHJpY2UwIgt0ZXNvbGQw\nIg5jYXJkX25hbWUwIgp0c29sZDAiC3Nlc29sZDAiEGZvd29ya2ltYWdlMCIO\nc3dvcmtzaXplMCIRZml3b3JrZWRuYW1lMCIRc2V3b3JrbWVkaXVtMCIQY2Fy\nZF9udW1iZXIwIg9md29ya2ltYWdlMCIPc3dvcmt0aXRsZTAiEGZvd29ya3Rp\ndGxlMCIMYWRkcmVzcyIMYWRkcmVzcyIKbnNvbGQwIhNmb3dvcmtlZG51bWJl\ncjAiE3Nld29ya2VkbnVtYmVyMCIHaWQiBjciEGZvd29ya3ByaWNlMCIQc2l3\nb3JraW1hZ2UwIgpzdGF0ZSINYWNjZXB0ZWQiEXNpd29ya2VkbmFtZTA=\n','2011-11-24 07:38:33','2011-11-24 10:40:11'),(30,'fa2a64b87e88ac27ab6049e7e3031143','BAh7CjoLbG9jYWxlOgplbi1VUzoJY2FydHsAOg11c2VyX2lkc1sAOgx1c2Vy\nX2lkaQYiCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFz\naEhhc2h7AAY6CkB1c2VkewA=\n','2011-11-24 08:58:12','2011-11-24 11:33:18'),(31,'7c204ae01f9954989643f293358bd71f','BAh7CjoTY3VycmVudF9vYmplY3RvOgxQYXltZW50DDoQQG5ld19yZWNvcmRG\nOhhAY2hhbmdlZF9hdHRyaWJ1dGVzewA6DUBpbnZvaWNlbzo1QWN0aXZlUmVj\nb3JkOjpBc3NvY2lhdGlvbnM6OkJlbG9uZ3NUb0Fzc29jaWF0aW9uCjoQQHJl\nZmxlY3Rpb25vOjRBY3RpdmVSZWNvcmQ6OlJlZmxlY3Rpb246OkFzc29jaWF0\naW9uUmVmbGVjdGlvbg06DUBvcHRpb25zewA6EEBjbGFzc19uYW1lIgxJbnZv\naWNlOhZAcHJpbWFyeV9rZXlfbmFtZSIPaW52b2ljZV9pZDoLQGtsYXNzYwxJ\nbnZvaWNlOhBAY29sbGVjdGlvbkY6E0BhY3RpdmVfcmVjb3JkYwxQYXltZW50\nOgtAbWFjcm86D2JlbG9uZ3NfdG86CkBuYW1lOgxpbnZvaWNlOgxAdGFyZ2V0\nbzoMSW52b2ljZQw7B0Y7CHsAOgxAZXJyb3JzbzoZQWN0aXZlUmVjb3JkOjpF\ncnJvcnMHOxlJQzofQWN0aXZlU3VwcG9ydDo6T3JkZXJlZEhhc2h7AAY6CkBr\nZXlzWwA6CkBiYXNlQA86EUBwdXJjaGFzYWJsZW86QEFjdGl2ZVJlY29yZDo6\nQXNzb2NpYXRpb25zOjpCZWxvbmdzVG9Qb2x5bW9ycGhpY0Fzc29jaWF0aW9u\nCTsLbzsMDDsNewc6EWZvcmVpZ25fdHlwZSIVcHVyY2hhc2FibGVfdHlwZToQ\ncG9seW1vcnBoaWNUOw4iEFB1cmNoYXNhYmxlOw8iE3B1cmNoYXNhYmxlX2lk\nOxFGOxJADTsTOxQ7FToQcHVyY2hhc2FibGU7F286FUNvbXBldGl0aW9uc1Vz\nZXIKOwh7ADsZbzsaBzsZSUM7G3sABjscWwA7HUAaOhZAYXR0cmlidXRlc19j\nYWNoZXsAOhxAbmV3X3JlY29yZF9iZWZvcmVfc2F2ZUY6EEBhdHRyaWJ1dGVz\ne3EiD3Npd29ya3NpemUwIhNzaXdvcmtlZG51bWJlcjAiDHVzZXJfaWQiBjQi\nD2Zvd29ya3NpemUwIg5wb3N0X2NvZGUiDDQxMTAzODEiEG53b3JrbWVkaXVt\nMCIPY3JlYXRlZF9hdCIYMjAxMS0xMS0yNCAxMDo1NDowNSIQZml3b3JraW1h\nZ2UwIhFiYW5rX2FjY291bnQwIg9ud29ya2ltYWdlMCIQc2l3b3JrdGl0bGUw\nIhB0ZXdvcmtpbWFnZTAiD2hlcmVfcHJpemUwIhB0d29ya2VkbmFtZTAiEnN3\nb3JrZWRudW1iZXIwIg9zd29ya3ByaWNlMCIRZml3b3JrbWVkaXVtMCIQc2l3\nb3JrcHJpY2UwIhBzZXdvcmtwcmljZTAiC290aGVyczAiEHNld29ya3RpdGxl\nMCIQZXdvcmttZWRpdW0wIhFwYXltZW50X3R5cGUwIgtmb3NvbGQwIg1leHBf\nZGF0ZTAiEHN3b3JrbWVkaXVtMCIPbndvcmt0aXRsZTAiEWZvd29ya21lZGl1\nbTAiDm53b3Jrc2l6ZTAiD253b3JrcHJpY2UwIhNlaXdvcmtlZG51bWJlcjAi\nC2Vpc29sZDAiD3R3b3JraW1hZ2UwIgpwcmljZSIGMCIKZW1haWwiG3BhdGhh\na29yYW1hMUBnbWFpbC5jb20iC2JzYl9ubzAiD2V3b3JrcHJpY2UwIhF0ZXdv\ncmtlZG5hbWUwIg9zd29ya2ltYWdlMCITdGV3b3JrZWRudW1iZXIwIhB0b3Rh\nbF9lbnRyeSIGMiIRZWl3b3JrZWRuYW1lMCIOZndvcmtzaXplMCIPdHdvcmtw\ncmljZTAiC2Zpc29sZDAiC3N1YnVyYiIMc3VidXJiMSIPZXdvcmt0aXRsZTAi\nEGF0X2VuZF93b3JrMCIRbml3b3JrZWRuYW1lMCIPdHdvcmt0aXRsZTAiC3Np\nc29sZDAiDmV3b3Jrc2l6ZTAiDGNvbmZpcm0iBjEiFnZhcmlmaWNhdGlvbl9j\nb2RlMCIKc3NvbGQwIhBzZXdvcmtpbWFnZTAiE25pd29ya2VkbnVtYmVyMCIO\nYmlvZ3JhcGh5MCIOcGFpZGVudHJ5IgkxLDIsIhFzaXdvcmttZWRpdW0wIhBz\nd29ya2VkbmFtZTAiEGZ3b3JrZWRuYW1lMCIPdXBkYXRlZF9hdEl1OglUaW1l\nDQrrG8AiEG/aBjofQG1hcnNoYWxfd2l0aF91dGNfY29lcmNpb25UIhF0ZXdv\ncmttZWRpdW0wIgluYW1lIhNrZWRhcnIgcGF0aGFrayIKZnNvbGQwIhZyZXR1\ncm5fb2ZfYXJ0d29yazAiD2Z3b3JrdGl0bGUwIhNmaXdvcmtlZG51bWJlcjAi\nEnR3b3JrZWRudW1iZXIwIhB0d29ya21lZGl1bTAiD2Zpd29ya3NpemUwIhFm\nb3dvcmtlZG5hbWUwIg90ZXdvcmtzaXplMCIhY29tcGV0aXRpb25zX3N1YnNj\ncmlwdGlvbl9pZDAiD2V3b3JraW1hZ2UwIhBmaXdvcmt0aXRsZTAiEGZpd29y\na3ByaWNlMCISZndvcmtlZG51bWJlcjAiEXNld29ya2VkbmFtZTAiEHRld29y\na3RpdGxlMCIPc2V3b3Jrc2l6ZTAiE2NvbXBldGl0aW9uX2lkIgY0Ig9md29y\na3ByaWNlMCILdGVzb2xkMCIQdGV3b3JrcHJpY2UwIg50d29ya3NpemUwIhBm\nd29ya21lZGl1bTAiC3Nlc29sZDAiCnRzb2xkMCIOY2FyZF9uYW1lMCIRZml3\nb3JrZWRuYW1lMCIOc3dvcmtzaXplMCIQZm93b3JraW1hZ2UwIhNzZXdvcmtl\nZG51bWJlcjAiE2Zvd29ya2VkbnVtYmVyMCIKbnNvbGQwIgxhZGRyZXNzIg9h\nZGRyZXNzMTIzIhBmb3dvcmt0aXRsZTAiD3N3b3JrdGl0bGUwIg9md29ya2lt\nYWdlMCIQY2FyZF9udW1iZXIwIhFzZXdvcmttZWRpdW0wIhFzaXdvcmtlZG5h\nbWUwIgpzdGF0ZSIOdmFsaWRhdGVkIhBzaXdvcmtpbWFnZTAiEGZvd29ya3By\naWNlMCIHaWQiBjk6C0Bvd25lckAPOgxAbG9hZGVkVDskewA6DUBwYXltZW50\nbzoyQWN0aXZlUmVjb3JkOjpBc3NvY2lhdGlvbnM6Okhhc09uZUFzc29jaWF0\naW9uCjsLbzsMDjsNewA7DiIMUGF5bWVudDsQQA47DyIPaW52b2ljZV9pZDsR\nRjsSQA07EzoMaGFzX29uZToXQHF1b3RlZF90YWJsZV9uYW1lIg9gcGF5bWVu\ndHNgOxU6DHBheW1lbnQ7FzA6EEBmaW5kZXJfc3FsIh9gcGF5bWVudHNgLmlu\ndm9pY2VfaWQgPSAyMTspQA87KlQ7JnsZIgtudW1iZXIiD0kyMzM3MTAzNjQi\nD2NyZWF0ZWRfYXRJdTsnDQrrG8CBZWvaBjsoVCIKdGl0bGUiF0ludm9pY2Ug\nSTIzMzcxMDM2NCITcGF5bWVudF9tZWRpdW0iFW9ubGluZV92YWxpZGF0ZWQi\nEWZpbmFsX2Ftb3VudGlrIg91cGRhdGVkX2F0SXU7Jw0K6xvARVRu2gY7KFQi\nD2NyZWF0b3JfaWQwIhVzaGlwcGluZ19hZGRyZXNzIhdhZGRyZXNzMTIzIGlu\nZGlhMSAiB2lkaRoiDmNsaWVudF9pZGkJIhNwdXJjaGFzYWJsZV9pZGkOIg1k\nZWFkbGluZXU6CURhdGU9BAhbCG86DVJhdGlvbmFsBzoRQGRlbm9taW5hdG9y\naQc6D0BudW1lcmF0b3JpA7HySmkAaQMZFSMiDHNlbnRfYXRJdTsnDQrrG4Bd\nbWvaBjsoRiIRdmFsaWRhdGVkX2F0SXU7Jw0K6xuA6XBt2gY7KEYiFGJpbGxp\nbmdfYWRkcmVzcyIXYWRkcmVzczEyMyBpbmRpYTEgIglub3RlMCIQZGVzY3Jp\ncHRpb24iTkludm9pY2UgZm9yIHRoZSBzdWJzY3JpcHRpb24gdG8gdGhlIGNv\nbXBldGl0aW9uICdmaXJzdCBjb21wZXRpdGlvbiBuYW1lMiciFG9yaWdpbmFs\nX2Ftb3VudGlrIhVwdXJjaGFzYWJsZV90eXBlIhVDb21wZXRpdGlvbnNVc2Vy\nIgpzdGF0ZSIOdmFsaWRhdGVkOg1AdXBkYXRlZFQ7KUAGOypUOxlvOxoHOxlJ\nQzsbewAGOxxbADsdQAY7JHsAOgpAdXNlcm87Cgo7C287DA07DXsAOw4iCVVz\nZXI7EGMJVXNlcjsPIgx1c2VyX2lkOxFGOxJADjsTOxQ7FToJdXNlcjsXbzoJ\nVXNlcgg7JHsAOg1AcHJvZmlsZW87LAo7C287DA47DXsHOg5kZXBlbmRlbnQ6\nDGRlc3Ryb3k6DWF1dG9zYXZlVDsOIgxQcm9maWxlOxBjDFByb2ZpbGU7DyIM\ndXNlcl9pZDsRRjsSQAHJOxM7LTsuIg9gcHJvZmlsZXNgOxU6DHByb2ZpbGU7\nF286DFByb2ZpbGUKOwh7ADsZbzsaBzsZSUM7G3sABjscWwA7HUAB1DskewA7\nJUY7JnseIgljaXR5MCIMYWRkcmVzcyIPYWRkcmVzczEyMyIPY3JlYXRlZF9h\ndCIYMjAxMS0xMS0yMiAwODoxMzoyNCIMY291bnRyeSILaW5kaWExIg16aXBf\nY29kZSIMNDExMDM4MSIPdXBkYXRlZF9hdEl1OycNCusbwEMJCdkGOyhUIg9z\nYWx1dGF0aW9uMCILc3VidXJiIgxzdWJ1cmIxIg9iaXJ0aF9kYXRlMCILZ2Vu\nZGVyMCIHaWQiBjQiEXBob25lX251bWJlciIPOTc2MzM3MDQxOSIMdXNlcl9p\nZCIGNCIMbm90aWNlczAiDHdlYnNpdGUiH2h0dHA6Ly93d3cucHJhZ3RlY2gu\nY28uaW5uIg5sYXN0X25hbWUiDHBhdGhha2siEmVtYWlsX2FkZHJlc3MiG3Bh\ndGhha29yYW1hMUBnbWFpbC5jb20iDHN0dWRpb3MwIhdnZXR0aW5nX25ld3Ns\nZXR0ZXIiBjAiDmJpb2dyYXBoeTAiEmNvdW50cnlfc3RhdGUiEW1haGFyYXNo\ndHJhMSIKc3RhdGUwIhBuYXRpb25hbGl0eTAiEG1pZGRsZV9uYW1lMCIPZmly\nc3RfbmFtZSILa2VkYXJyOzAiG2Bwcm9maWxlc2AudXNlcl9pZCA9IDQ7KUAB\nyzsqVDsmexsiCXNhbHQiLWVlMmQ1NDk5ZWNkMDI0OGY4NGVmOGU1OWJkYzgx\nNjI3OTgwMTE3NTkiDXVfbGF5b3V0MCIWbGFzdF9jb25uZWN0ZWRfYXQiGDIw\nMTEtMTEtMjMgMjA6MDk6NDgiD2NyZWF0ZWRfYXQiGDIwMTEtMTEtMjIgMDg6\nMTM6MjQiEWFjdGl2YXRlZF9hdCIYMjAxMS0xMS0yMiAxMzo0MzoyNCIVYXZh\ndGFyX2ZpbGVfc2l6ZTAiFWF2YXRhcl9maWxlX25hbWUwIh5yZW1lbWJlcl90\nb2tlbl9leHBpcmVzX2F0MCIVY3J5cHRlZF9wYXNzd29yZCItNzE1MWZhMzM1\nZWRjOWRmMjU3Y2U0ZDM3Y2RiZWQ0NDE4MWQ3MDU1MiIPdXBkYXRlZF9hdCIY\nMjAxMS0xMS0yMyAxNDozOTo0OCIYcGFzc3dvcmRfcmVzZXRfY29kZTAiFGFj\ndGl2YXRpb25fY29kZSItYWYwZDM3YWFjNDRmZTBhNzc3NTc0NmQ1M2NiY2U2\nZTk2ZGFmMjhiZiIPdV9sYW5ndWFnZTAiB2lkIgY0IhhhdmF0YXJfY29udGVu\ndF90eXBlMCITcmVtZW1iZXJfdG9rZW4wIhNzeXN0ZW1fcm9sZV9pZCIGOCIP\ndV9wZXJfcGFnZTAiFmF2YXRhcl91cGRhdGVkX2F0MCIKbG9naW4iEWsucGF0\naGFra1JBZyIKc3RhdGUwIgplbWFpbCIbcGF0aGFrb3JhbWExQGdtYWlsLmNv\nbTsyVDspQAY7KlQ7JnsPIg9jcmVhdGVkX2F0SXU7Jw0K6xvADCZd3AY7KFQi\nD3VwZGF0ZWRfYXRAAigBIg9pbnZvaWNlX2lkaRoiB2lkaRwiDHVzZXJfaWRp\nCSITY3JlZGl0X2NhcmRfaWQwIhRhbW91bnRfaW5fY2VudHNpAtgnIglub3Rl\nMCINY3VycmVuY3kwIgpzdGF0ZSIVb25saW5lX3ZhbGlkYXRlZDoLbG9jYWxl\nOgplbi1VUzoJY2FydHsAOgpvcmRlcm87Iw06EUBjb21wZXRpdGlvbm87Cgk7\nC287DA07DXsAOw4iEENvbXBldGl0aW9uOw8iE2NvbXBldGl0aW9uX2lkOxBj\nEENvbXBldGl0aW9uOxFGOxJjFUNvbXBldGl0aW9uc1VzZXI7EzsUOxU6EGNv\nbXBldGl0aW9uOxdvOhBDb21wZXRpdGlvbgg7JHsAOgxAdGltaW5nbzssCjsL\nbzsMDTsNewg6B2FzOg9vYmplY3RhYmxlOzc6C2RlbGV0ZTs5VDsOIgtUaW1p\nbmc7EGMLVGltaW5nOxFGOxJAAjoBOxM7LTsuIg5gdGltaW5nc2A7FToLdGlt\naW5nOxdvOgtUaW1pbmcHOyR7ByISc3RhcnRpbmdfZGF0ZXU7MT0ECFsIbzoN\nUmF0aW9uYWwHOhFAZGVub21pbmF0b3JpBzoPQG51bWVyYXRvcmkDqfJKaQBp\nAxkVIyIQZW5kaW5nX2RhdGV1OzE9BAhbCG86DVJhdGlvbmFsBzoRQGRlbm9t\naW5hdG9yaQc6D0BudW1lcmF0b3JpA63ySmkAaQMZFSM7JnsSIg9jcmVhdGVk\nX2F0IhgyMDExLTExLTI0IDA5OjIyOjUzIg91cGRhdGVkX2F0IhgyMDExLTEx\nLTI0IDA5OjIyOjUzIhJzdGFydGluZ190aW1lMCISc3RhcnRpbmdfZGF0ZSIP\nMjAxMS0xMS0yNyIUb2JqZWN0YWJsZV90eXBlIhBDb21wZXRpdGlvbiIHaWQi\nBjUiDnBsYWNlc19pZCIGMSIQZW5kaW5nX3RpbWUwIg5wZXJpb2RfaWQwIglu\nb3RlIhNiZXV0aWZ1bCBub3RlcyISb2JqZWN0YWJsZV9pZCIGNCIQZW5kaW5n\nX2RhdGUiDzIwMTEtMTEtMjkiCnN0YXRlMDswIk5gdGltaW5nc2Aub2JqZWN0\nYWJsZV9pZCA9IDQgQU5EIGB0aW1pbmdzYC5vYmplY3RhYmxlX3R5cGUgPSAn\nQ29tcGV0aXRpb24nOylAAjwBOypUOyZ7KyIMY2p1ZGdlcyISbWFyayBqZW1p\nbnNvbiIcbWVzc2FnZV9mb3Jfc3Vic2NyaWJlcnMiHG1lc3NhZ2UgZm9yIHN1\nYnNjcmliZXJzIhhzdWJtaXNzaW9uX2RlYWRsaW5lIg8yMDExLTExLTI3Igtm\nb3JtYXQiFWFuZCBzb21lIGZvcm1hdHMiDWxvY2F0aW9uIhRwdW5lIHRvIGJv\ncnZhbGkiD2NyZWF0ZWRfYXQiGDIwMTEtMTEtMjQgMDk6MjI6NTMiFmF1Y3Rp\nb25fYWN0aXZhdGVkMCIVaG93X2RpZF95b3VfaGVyZTAiD2NvbW1pc3Npb24i\nIjUgJSBjb21taXNzaW9uIG9uIG9iamVjdCBzb2xkIgp0aXRsZSIcZmlyc3Qg\nY29tcGV0aXRpb24gbmFtZTIiCm5vdGVzIhdhbmQgdGhlIGxhc3Qgbm90ZXMi\nDGZyYW1pbmcwIg91cGRhdGVkX2F0IhgyMDExLTExLTI0IDA5OjIyOjU1Ig5w\ndWJsaXNoZWQiBjAiDmluc3VyYW5jZSImMTAlIGluc3VyYW5jZSBvZiBlYWNo\nIHBob3RvIHByaWNlIhZyZXR1cm5fb2ZfYXJ0d29yazAiD2xpbWl0X3NpemUw\nIgdpZCIGNCIOcmVzdWx0bXNnIhtwdWJsaXNoIHJlc3VsdCBtZXNzYWdlIhFv\ncGVuc3RhdGVtc2ciF29wZW4gc3RhdGUgbWVzc2FnZSIPZW50cnlfZmVlcyI3\nMSB3b3JrcyAkNTANCjIgd29ya3MgJDUyDQozIHdvcmtzICQ1Mw0KNCB3b3Jr\ncyAkNTQiEnZpZXdlZF9udW1iZXIiBjEiEnByaXplc19kZXRhaWwiOTFzdCBw\ncml6ZSAkNDANCjJuZCBwcml6ZSAkODANCmFuZCBzb21lIGxhdGVzdCBwcml6\nZXMiGHByaXplc190b3RhbF9hbW91bnQiCTEwMDAiCXR5cGUwIgx1c2VyX2lk\nIgYxIg1qdWRnZV9pZDAiFHB1Ymxpc2hmaW5hbG1zZyIicHVibGlzaCBmaW5h\nbCBhcnR3b3JrIG1lc3NhZ2UiEGRlc2NyaXB0aW9uIiRhbmQgZGVzY3JpcHRp\nb24gZm9yIGNvbXBldGl0aW9uIg1kZWxpdmVyeSIWYW5kIHNvbWUgZGVsaXZl\ncnkiC3NvdXJjZTAiFGNvbW1lbnRzX251bWJlciIGMCIOdGltaW5nX2lkMCIU\nZXhoaWJpdGlvbl9kYXRlMCIPY29sbGVjdGlvbiIUc29tZSBjb2xsZWN0aW9u\nIhBub19vZl9lbnRyeSIHMTAiEnJhdGVzX2F2ZXJhZ2UiBjAiCnN0YXRlIglv\ncGVuOylAAjQBOypUOwh7ADsZbzsaBzsZSUM7G3sABjscWwA7HUACNAE7JHsA\nOg5AaW52b2ljZXNvOjNBY3RpdmVSZWNvcmQ6OkFzc29jaWF0aW9uczo6SGFz\nTWFueUFzc29jaWF0aW9uCzsLbzsMDTsNewg7RDsiOzc6D2RlbGV0ZV9hbGw6\nC2V4dGVuZFsAOw4iDEludm9pY2U7EEANOxFUOxJAAjsBOxM6DWhhc19tYW55\nOy4iD2BpbnZvaWNlc2A7FToNaW52b2ljZXM7F1sGbzsYBzskewA7JnsZIgtu\ndW1iZXIiD0kyMzM3MTAzNjQiD2NyZWF0ZWRfYXQiGDIwMTEtMTEtMjQgMTA6\nNTQ6MzgiCnRpdGxlIhdJbnZvaWNlIEkyMzM3MTAzNjQiD3VwZGF0ZWRfYXQi\nGDIwMTEtMTEtMjQgMTA6NTQ6MzgiEWZpbmFsX2Ftb3VudCIIMTAyIhNwYXlt\nZW50X21lZGl1bSIVb25saW5lX3ZhbGlkYXRlZCIVc2hpcHBpbmdfYWRkcmVz\ncyIXYWRkcmVzczEyMyBpbmRpYTEgIg9jcmVhdG9yX2lkMCIHaWQiBzIxIhF2\nYWxpZGF0ZWRfYXQiGDIwMTEtMTEtMjQgMTY6MjQ6MzgiDHNlbnRfYXQiGDIw\nMTEtMTEtMjQgMTY6MjQ6MzgiDWRlYWRsaW5lIg8yMDExLTEyLTAxIhNwdXJj\naGFzYWJsZV9pZCIGOSIOY2xpZW50X2lkIgY0Iglub3RlMCIUYmlsbGluZ19h\nZGRyZXNzIhdhZGRyZXNzMTIzIGluZGlhMSAiFG9yaWdpbmFsX2Ftb3VudCII\nMTAyIhBkZXNjcmlwdGlvbiJOSW52b2ljZSBmb3IgdGhlIHN1YnNjcmlwdGlv\nbiB0byB0aGUgY29tcGV0aXRpb24gJ2ZpcnN0IGNvbXBldGl0aW9uIG5hbWUy\nJyIVcHVyY2hhc2FibGVfdHlwZSIVQ29tcGV0aXRpb25zVXNlciIKc3RhdGUi\nDnZhbGlkYXRlZDswIldgaW52b2ljZXNgLnB1cmNoYXNhYmxlX2lkID0gOSBB\nTkQgYGludm9pY2VzYC5wdXJjaGFzYWJsZV90eXBlID0gJ0NvbXBldGl0aW9u\nc1VzZXInOhFAY291bnRlcl9zcWxAAtoBOylAAjQBOypUOyVGOzNvOwoJOwtv\nOwwNOw17ADsOIglVc2VyOw8iDHVzZXJfaWQ7EEAByTsRRjsSQAI7ATsTOxQ7\nFTs0OxdvOzUIOyR7ADs2bzssCjsLQAHOOxdvOzsHOyR7ADsmex4iCWNpdHkw\nIgxhZGRyZXNzIg9hZGRyZXNzMTIzIg9jcmVhdGVkX2F0IhgyMDExLTExLTIy\nIDA4OjEzOjI0Igxjb3VudHJ5IgtpbmRpYTEiDXppcF9jb2RlIgw0MTEwMzgx\nIg91cGRhdGVkX2F0IhgyMDExLTExLTI0IDEwOjU0OjE2Ig9zYWx1dGF0aW9u\nMCILc3VidXJiIgxzdWJ1cmIxIg9iaXJ0aF9kYXRlMCILZ2VuZGVyMCIHaWQi\nBjQiEXBob25lX251bWJlciIPOTc2MzM3MDQxOSIMdXNlcl9pZCIGNCIMbm90\naWNlczAiDHdlYnNpdGUiH2h0dHA6Ly93d3cucHJhZ3RlY2guY28uaW5uIg5s\nYXN0X25hbWUiDHBhdGhha2siEmVtYWlsX2FkZHJlc3MiG3BhdGhha29yYW1h\nMUBnbWFpbC5jb20iDHN0dWRpb3MwIhdnZXR0aW5nX25ld3NsZXR0ZXIiBjAi\nDmJpb2dyYXBoeTAiEmNvdW50cnlfc3RhdGUiEW1haGFyYXNodHJhMSIKc3Rh\ndGUwIhBuYXRpb25hbGl0eTAiEG1pZGRsZV9uYW1lMCIPZmlyc3RfbmFtZSIL\na2VkYXJyOzAiG2Bwcm9maWxlc2AudXNlcl9pZCA9IDQ7KUAC4AE7KlQ7Jnsb\nIglzYWx0Ii1lZTJkNTQ5OWVjZDAyNDhmODRlZjhlNTliZGM4MTYyNzk4MDEx\nNzU5Ig11X2xheW91dDAiFmxhc3RfY29ubmVjdGVkX2F0IhgyMDExLTExLTIz\nIDIwOjA5OjQ4Ig9jcmVhdGVkX2F0IhgyMDExLTExLTIyIDA4OjEzOjI0IhFh\nY3RpdmF0ZWRfYXQiGDIwMTEtMTEtMjIgMTM6NDM6MjQiFWF2YXRhcl9maWxl\nX3NpemUwIhVhdmF0YXJfZmlsZV9uYW1lMCIecmVtZW1iZXJfdG9rZW5fZXhw\naXJlc19hdDAiFWNyeXB0ZWRfcGFzc3dvcmQiLTcxNTFmYTMzNWVkYzlkZjI1\nN2NlNGQzN2NkYmVkNDQxODFkNzA1NTIiD3VwZGF0ZWRfYXQiGDIwMTEtMTEt\nMjMgMTQ6Mzk6NDgiGHBhc3N3b3JkX3Jlc2V0X2NvZGUwIhRhY3RpdmF0aW9u\nX2NvZGUiLWFmMGQzN2FhYzQ0ZmUwYTc3NzU3NDZkNTNjYmNlNmU5NmRhZjI4\nYmYiD3VfbGFuZ3VhZ2UwIgdpZCIGNCIYYXZhdGFyX2NvbnRlbnRfdHlwZTAi\nE3JlbWVtYmVyX3Rva2VuMCITc3lzdGVtX3JvbGVfaWQiBjgiD3VfcGVyX3Bh\nZ2UwIhZhdmF0YXJfdXBkYXRlZF9hdDAiCmxvZ2luIhFrLnBhdGhha2tSQWci\nCnN0YXRlMCIKZW1haWwiG3BhdGhha29yYW1hMUBnbWFpbC5jb207KUACNAE7\nKlQ7JntxIg9zaXdvcmtzaXplMCITc2l3b3JrZWRudW1iZXIwIgx1c2VyX2lk\nIgY0Ig9mb3dvcmtzaXplMCIOcG9zdF9jb2RlIgw0MTEwMzgxIhBud29ya21l\nZGl1bTAiD2NyZWF0ZWRfYXQiGDIwMTEtMTEtMjQgMTA6NTQ6MDUiEGZpd29y\na2ltYWdlMCIRYmFua19hY2NvdW50MCIPbndvcmtpbWFnZTAiEHNpd29ya3Rp\ndGxlMCIQdGV3b3JraW1hZ2UwIg9oZXJlX3ByaXplMCIQdHdvcmtlZG5hbWUw\nIhJzd29ya2VkbnVtYmVyMCIPc3dvcmtwcmljZTAiEWZpd29ya21lZGl1bTAi\nEHNpd29ya3ByaWNlMCIQc2V3b3JrcHJpY2UwIgtvdGhlcnMwIhBzZXdvcmt0\naXRsZTAiEGV3b3JrbWVkaXVtMCIRcGF5bWVudF90eXBlMCILZm9zb2xkMCIN\nZXhwX2RhdGUwIhBzd29ya21lZGl1bTAiD253b3JrdGl0bGUwIhFmb3dvcmtt\nZWRpdW0wIg5ud29ya3NpemUwIg9ud29ya3ByaWNlMCITZWl3b3JrZWRudW1i\nZXIwIgtlaXNvbGQwIg90d29ya2ltYWdlMCIKcHJpY2UiBjAiCmVtYWlsIhtw\nYXRoYWtvcmFtYTFAZ21haWwuY29tIgtic2Jfbm8wIg9ld29ya3ByaWNlMCIR\ndGV3b3JrZWRuYW1lMCIPc3dvcmtpbWFnZTAiE3Rld29ya2VkbnVtYmVyMCIQ\ndG90YWxfZW50cnkiBjIiEWVpd29ya2VkbmFtZTAiDmZ3b3Jrc2l6ZTAiD3R3\nb3JrcHJpY2UwIgtmaXNvbGQwIgtzdWJ1cmIiDHN1YnVyYjEiD2V3b3JrdGl0\nbGUwIhBhdF9lbmRfd29yazAiEW5pd29ya2VkbmFtZTAiD3R3b3JrdGl0bGUw\nIgtzaXNvbGQwIg5ld29ya3NpemUwIgxjb25maXJtIgYxIhZ2YXJpZmljYXRp\nb25fY29kZTAiCnNzb2xkMCIQc2V3b3JraW1hZ2UwIhNuaXdvcmtlZG51bWJl\ncjAiDmJpb2dyYXBoeTAiDnBhaWRlbnRyeSIJMSwyLCIRc2l3b3JrbWVkaXVt\nMCIQc3dvcmtlZG5hbWUwIhBmd29ya2VkbmFtZTAiD3VwZGF0ZWRfYXRJdTsn\nDQrrG8A/uWnaBjsoVCIRdGV3b3JrbWVkaXVtMCIJbmFtZSITa2VkYXJyIHBh\ndGhha2siCmZzb2xkMCIWcmV0dXJuX29mX2FydHdvcmswIg9md29ya3RpdGxl\nMCITZml3b3JrZWRudW1iZXIwIhJ0d29ya2VkbnVtYmVyMCIQdHdvcmttZWRp\ndW0wIg9maXdvcmtzaXplMCIRZm93b3JrZWRuYW1lMCIPdGV3b3Jrc2l6ZTAi\nIWNvbXBldGl0aW9uc19zdWJzY3JpcHRpb25faWQwIg9ld29ya2ltYWdlMCIQ\nZml3b3JrdGl0bGUwIhBmaXdvcmtwcmljZTAiEmZ3b3JrZWRudW1iZXIwIhFz\nZXdvcmtlZG5hbWUwIhB0ZXdvcmt0aXRsZTAiD3Nld29ya3NpemUwIhNjb21w\nZXRpdGlvbl9pZCIGNCIPZndvcmtwcmljZTAiC3Rlc29sZDAiEHRld29ya3By\naWNlMCIOdHdvcmtzaXplMCIQZndvcmttZWRpdW0wIgtzZXNvbGQwIgp0c29s\nZDAiDmNhcmRfbmFtZTAiEWZpd29ya2VkbmFtZTAiDnN3b3Jrc2l6ZTAiEGZv\nd29ya2ltYWdlMCITc2V3b3JrZWRudW1iZXIwIhNmb3dvcmtlZG51bWJlcjAi\nCm5zb2xkMCIMYWRkcmVzcyIPYWRkcmVzczEyMyIQZm93b3JrdGl0bGUwIg9z\nd29ya3RpdGxlMCIPZndvcmtpbWFnZTAiEGNhcmRfbnVtYmVyMCIRc2V3b3Jr\nbWVkaXVtMCIRc2l3b3JrZWRuYW1lMCIKc3RhdGUiDWFjY2VwdGVkIhBzaXdv\ncmtpbWFnZTAiEGZvd29ya3ByaWNlMCIHaWQiBjk6DHVzZXJfaWRpCQ==\n','2011-11-24 10:40:22','2011-11-24 10:56:51'),(32,'1024d4cd04c4a166cccc1792a11d82fc','BAh7DDoKdG9rZW4iGUVDLTNNQTA4ODIyTEQzOTkwMDBZOhJwYXlwYWxfYW1v\ndW50aQw6C2xvY2FsZToKZW4tVVM6FWN1cnJlbnRfcHVyY2hhc2V7ADoJY2Fy\ndHsAOgljb21wWwciEGNvbXBldGl0aW9uIgY0Ogx1c2VyX2lkaQk=\n','2011-11-24 11:16:14','2011-11-24 12:30:36'),(33,'b6d8b1d13ee3201b4396be411e34e7e6','BAh7CDoLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQg=\n','2011-11-24 12:00:17','2011-11-24 12:00:32'),(34,'b37f6d61d7af68872ecbd06b1dbe828a','BAh7CDoLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQk=\n','2011-11-24 12:01:58','2011-11-24 12:02:12'),(35,'5aa2c16a68686a1c337af67b84a7cf42','BAh7CzoUbGF0ZXN0X3JlZ2lzdGVyVDoLbG9jYWxlOgplbi1VUzoVY3VycmVu\ndF9wdXJjaGFzZXsAOgljYXJ0ewA6DHVzZXJfaWRpDCIKZmxhc2hJQzonQWN0\naW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVzZWR7AA==\n','2011-11-24 12:03:57','2011-11-24 12:30:03'),(36,'ab2f2a1daa6970cd531eaeff61980a59','BAh7CjoLbG9jYWxlOgplbi1VUzoJY2FydHsAIgpmbGFzaElDOidBY3Rpb25D\nb250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewY6C25vdGljZSIUSW52aXRh\ndGlvbiBzZW50BjoKQHVzZWR7BjsJVDoNdXNlcl9pZHNbADoMdXNlcl9pZGkH\n','2011-11-24 13:15:09','2011-11-24 13:17:59'),(37,'f44e0967c52fe3ba5f6b30cee9072fa0','BAh7CDoLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQg=\n','2011-11-24 13:17:08','2011-11-24 13:26:14'),(38,'7aac2c392ccdba3ea444b1f0d572b7ce','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQg=\n','2011-11-25 05:13:23','2011-11-25 05:14:01'),(39,'e9c82cc75902beb437592df2c6bb94cf','BAh7CjoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQc6DXVzZXJf\naWRzWwAiCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFz\naEhhc2h7AAY6CkB1c2VkewA=\n','2011-11-25 05:57:55','2011-11-25 08:30:46'),(40,'fe8d7302cc44eb32f77ba4652e912ea9','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQg=\n','2011-11-25 05:59:07','2011-11-25 05:59:21'),(41,'05b156daf2e1fb0d7cd7e3269c27faa9','BAh7CDoJY2FydHsHIiJDb21wZXRpdGlvbnNVc2VyXzlfZndvcmtpbWFnZSIG\nMSIiQ29tcGV0aXRpb25zVXNlcl85X3N3b3JraW1hZ2UiBjE6C2xvY2FsZToK\nZW4tVVM6DHVzZXJfaWRpCA==\n','2011-11-26 04:29:35','2011-11-26 05:16:11'),(42,'148e566eea4179cc369139cf5c828371','BAh7CjoJY2FydHsAOgtsb2NhbGU6CmVuLVVTIgpmbGFzaElDOidBY3Rpb25D\nb250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewY6C25vdGljZSInUGxlYXNl\nIFNlbGVjdCBBdCBMZWFzdCBPbmUgR2FsbGVyeQY6CkB1c2VkewY7CVQ6DXVz\nZXJfaWRzWwA6DHVzZXJfaWRpBw==\n','2011-11-26 04:59:14','2011-11-26 06:22:08'),(43,'a69f20e909640f53432beb9151e3d252','BAh7AA==\n','2011-11-26 06:06:30','2011-11-26 06:06:31'),(44,'3167cf2466ce48551c8775a67b4aa881','BAh7CjoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOg5yZXR1cm5fdG8iCy9hZG1p\nbiIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFz\naHsABjoKQHVzZWR7ADoMdXNlcl9pZGkH\n','2011-12-23 09:46:40','2011-12-23 11:53:00'),(47,'6019cfc954fc1147da351c47f0af1053','BAh7CToMdXNlcl9pZGkHOgljYXJ0ewAiCmZsYXNoSUM6J0FjdGlvbkNvbnRy\nb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7BjoLbm90aWNlIiVDb21wZXRpdGlv\nbiBDcmVhdGVkIFN1Y2Nlc3NmdWxseQY6CkB1c2VkewY7CFQ6C2xvY2FsZToK\nZW4tVVM=\n','2012-06-01 08:21:48','2012-06-01 08:26:24'),(48,'2d7dfcfc143864d270bb42ff5c063e8b','BAh7DDoMdXNlcl9pZGkIOhBwdXJjaGFzYWJsZW86FUNvbXBldGl0aW9uc1Vz\nZXILOgxAZXJyb3JzbzoZQWN0aXZlUmVjb3JkOjpFcnJvcnMHOgpAYmFzZUAG\nOwhJQzofQWN0aXZlU3VwcG9ydDo6T3JkZXJlZEhhc2h7AAY6CkBrZXlzWwA6\nEEBhdHRyaWJ1dGVze3EiD3Npd29ya3NpemUwIhNzaXdvcmtlZG51bWJlcjAi\nDHVzZXJfaWRpCCIPZm93b3Jrc2l6ZTAiDnBvc3RfY29kZSILNDExMDM4IhBu\nd29ya21lZGl1bTAiD2NyZWF0ZWRfYXRJdToJVGltZQ0oFBzAVynObQY6H0Bt\nYXJzaGFsX3dpdGhfdXRjX2NvZXJjaW9uVCIQZml3b3JraW1hZ2UwIhFiYW5r\nX2FjY291bnQwIhBzaXdvcmt0aXRsZTAiD253b3JraW1hZ2UwIhB0ZXdvcmtp\nbWFnZTAiD2hlcmVfcHJpemUwIhB0d29ya2VkbmFtZTAiEnN3b3JrZWRudW1i\nZXIwIg9zd29ya3ByaWNlMCIRZml3b3JrbWVkaXVtMCIQc2l3b3JrcHJpY2Uw\nIhBzZXdvcmtwcmljZTAiC290aGVyczAiEHNld29ya3RpdGxlMCIQZXdvcmtt\nZWRpdW0wIhFwYXltZW50X3R5cGUwIgtmb3NvbGQwIg1leHBfZGF0ZTAiEHN3\nb3JrbWVkaXVtMCIPbndvcmt0aXRsZTAiEWZvd29ya21lZGl1bTAiDm53b3Jr\nc2l6ZTAiD253b3JrcHJpY2UwIhNlaXdvcmtlZG51bWJlcjAiC2Vpc29sZDAi\nD3R3b3JraW1hZ2UwIgpwcmljZWkAIgplbWFpbCIga2VkYXIucGF0aGFrQHBy\nYWd0ZWNoLmNvLmluIgtic2Jfbm8wIg9ld29ya3ByaWNlMCIRdGV3b3JrZWRu\nYW1lMCIPc3dvcmtpbWFnZTAiE3Rld29ya2VkbnVtYmVyMCIQdG90YWxfZW50\ncnkwIhFlaXdvcmtlZG5hbWUwIg5md29ya3NpemUwIg90d29ya3ByaWNlMCIL\nZmlzb2xkMCILc3VidXJiIgtzdWJ1cmIiD2V3b3JrdGl0bGUwIhBhdF9lbmRf\nd29yazAiEW5pd29ya2VkbmFtZTAiD3R3b3JrdGl0bGUwIgtzaXNvbGQwIg5l\nd29ya3NpemUwIgxjb25maXJtVCIWdmFyaWZpY2F0aW9uX2NvZGUwIgpzc29s\nZDAiEHNld29ya2ltYWdlMCITbml3b3JrZWRudW1iZXIwIg5iaW9ncmFwaHkw\nIg5wYWlkZW50cnkwIhFzaXdvcmttZWRpdW0wIhBzd29ya2VkbmFtZTAiEGZ3\nb3JrZWRuYW1lMCIPdXBkYXRlZF9hdEl1Ow4NKBQcwAVh0G0GOw9UIhF0ZXdv\ncmttZWRpdW0wIgluYW1lIhFrZWRhciBwYXRoYWsiCmZzb2xkMCIWcmV0dXJu\nX29mX2FydHdvcmswIg9md29ya3RpdGxlMCITZml3b3JrZWRudW1iZXIwIhJ0\nd29ya2VkbnVtYmVyMCIQdHdvcmttZWRpdW0wIg9maXdvcmtzaXplMCIRZm93\nb3JrZWRuYW1lMCIPdGV3b3Jrc2l6ZTAiIWNvbXBldGl0aW9uc19zdWJzY3Jp\ncHRpb25faWQwIg9ld29ya2ltYWdlMCIQZml3b3JrdGl0bGUwIhBmaXdvcmtw\ncmljZTAiEmZ3b3JrZWRudW1iZXIwIhFzZXdvcmtlZG5hbWUwIhB0ZXdvcmt0\naXRsZTAiD3Nld29ya3NpemUwIhNjb21wZXRpdGlvbl9pZCIGNSIPZndvcmtw\ncmljZTAiC3Rlc29sZDAiEHRld29ya3ByaWNlMCIOdHdvcmtzaXplMCIQZndv\ncmttZWRpdW0wIgtzZXNvbGQwIgp0c29sZDAiDmNhcmRfbmFtZTAiEWZpd29y\na2VkbmFtZTAiDnN3b3Jrc2l6ZTAiEGZvd29ya2ltYWdlMCITc2V3b3JrZWRu\ndW1iZXIwIhNmb3dvcmtlZG51bWJlcjAiCm5zb2xkMCIMYWRkcmVzcyIMYWRk\ncmVzcyIQZm93b3JrdGl0bGUwIg9zd29ya3RpdGxlMCIPZndvcmtpbWFnZTAi\nEGNhcmRfbnVtYmVyMCIRc2V3b3JrbWVkaXVtMCIHaWRpDyIRc2l3b3JrZWRu\nYW1lMCIKc3RhdGUiDWFjY2VwdGVkIhBzaXdvcmtpbWFnZTAiEGZvd29ya3By\naWNlMDocQG5ld19yZWNvcmRfYmVmb3JlX3NhdmVGOhhAY2hhbmdlZF9hdHRy\naWJ1dGVzewA6EEBuZXdfcmVjb3JkRjoWQGF0dHJpYnV0ZXNfY2FjaGV7ADoQ\ndG90YWxfZW50cnkiBjE6CWNhcnR7ADoTY3VycmVudF9vYmplY3RvOgxQYXlt\nZW50CjsNew4iD2NyZWF0ZWRfYXQwIg91cGRhdGVkX2F0MCIPaW52b2ljZV9p\nZDAiFGFtb3VudF9pbl9jZW50c2kC6AMiE2NyZWRpdF9jYXJkX2lkMCIMdXNl\ncl9pZGkIIglub3RlMCINY3VycmVuY3kwIgpzdGF0ZTA7EXsHIgx1c2VyX2lk\nMCIUYW1vdW50X2luX2NlbnRzMDsSVDsTewA6CkB1c2Vybzo1QWN0aXZlUmVj\nb3JkOjpBc3NvY2lhdGlvbnM6OkJlbG9uZ3NUb0Fzc29jaWF0aW9uCjoLQG93\nbmVyQAF/Og1AdXBkYXRlZFQ6EEByZWZsZWN0aW9ubzo0QWN0aXZlUmVjb3Jk\nOjpSZWZsZWN0aW9uOjpBc3NvY2lhdGlvblJlZmxlY3Rpb24NOg1Ab3B0aW9u\nc3sAOhNAYWN0aXZlX3JlY29yZGMMUGF5bWVudDoLQG1hY3JvOg9iZWxvbmdz\nX3RvOhBAY29sbGVjdGlvbkY6EEBjbGFzc19uYW1lIglVc2VyOgpAbmFtZToJ\ndXNlcjoWQHByaW1hcnlfa2V5X25hbWUiDHVzZXJfaWQ6C0BrbGFzc2MJVXNl\ncjoMQHRhcmdldG86CVVzZXIIOw17GyIWbGFzdF9jb25uZWN0ZWRfYXQiGDIw\nMTEtMTEtMjYgMTE6MzY6MzAiDXVfbGF5b3V0MCIJc2FsdCItZDM3NjZhOTNi\nMWJlNTdhODI0MjlmYWVhMmU3NTI5OThjNmEyZjlmYyIVYXZhdGFyX2ZpbGVf\nbmFtZTAiFWF2YXRhcl9maWxlX3NpemUwIhFhY3RpdmF0ZWRfYXQiGDIwMTEt\nMTEtMjEgMjA6MjA6MTQiD2NyZWF0ZWRfYXQiGDIwMTEtMTEtMjEgMTQ6NTA6\nMTQiFWNyeXB0ZWRfcGFzc3dvcmQiLTkzZmFiYjE3MDA3MGJhM2YyZDcxODI0\nMTFlYTkwYWI1MzE1N2I1NjEiHnJlbWVtYmVyX3Rva2VuX2V4cGlyZXNfYXQw\nIhhwYXNzd29yZF9yZXNldF9jb2RlMCIPdXBkYXRlZF9hdCIYMjAxMS0xMS0y\nNiAwNjowNjozMCIPdV9sYW5ndWFnZTAiFGFjdGl2YXRpb25fY29kZSItYzk0\nMzRhZTVkNTI2NmRjY2NiZGMzMzVlMjljZDllNTVhZDUwMmFhMiIHaWQiBjMi\nGGF2YXRhcl9jb250ZW50X3R5cGUwIhNyZW1lbWJlcl90b2tlbjAiCmxvZ2lu\nIhBrLnBhdGhha05OMiIWYXZhdGFyX3VwZGF0ZWRfYXQwIg91X3Blcl9wYWdl\nMCITc3lzdGVtX3JvbGVfaWQiBjgiCmVtYWlsIiBrZWRhci5wYXRoYWtAcHJh\nZ3RlY2guY28uaW4iCnN0YXRlMDoNQHByb2ZpbGVvOjJBY3RpdmVSZWNvcmQ6\nOkFzc29jaWF0aW9uczo6SGFzT25lQXNzb2NpYXRpb24KOxpAAZU6EEBmaW5k\nZXJfc3FsIhtgcHJvZmlsZXNgLnVzZXJfaWQgPSAzOxxvOx0OOx57BzoOZGVw\nZW5kZW50OgxkZXN0cm95Og1hdXRvc2F2ZVQ6F0BxdW90ZWRfdGFibGVfbmFt\nZSIPYHByb2ZpbGVzYDsfQAGUOyA6DGhhc19vbmU7IkY7IyIMUHJvZmlsZTsk\nOgxwcm9maWxlOyYiDHVzZXJfaWQ7J2MMUHJvZmlsZTsobzoMUHJvZmlsZQk7\nCG87CQc7CElDOwt7BiIMd2Vic2l0ZVsGbzoYQWN0aXZlUmVjb3JkOjpFcnJv\ncgo7HnsHOgp2YWx1ZSIeaHR0cDovL3d3dy5wcmFndGVjaC5jby5pbjoMZGVm\nYXVsdCIfUGxlYXNlIEVudGVyIFZhbGlkIFdlYnNpdGU7CkABwDoKQHR5cGU6\nDGludmFsaWQ6D0BhdHRyaWJ1dGU6DHdlYnNpdGU6DUBtZXNzYWdlOzgGOwxb\nBiIMd2Vic2l0ZTsKQAHAOw17HiIMYWRkcmVzcyIMYWRkcmVzcyIJY2l0eTAi\nD2NyZWF0ZWRfYXQiGDIwMTEtMTEtMjEgMTQ6NTA6MTQiDXppcF9jb2RlIgs0\nMTEwMzgiDGNvdW50cnkiCmluZGlhIg91cGRhdGVkX2F0IhgyMDExLTExLTI0\nIDA4OjQ5OjI2Ig9zYWx1dGF0aW9uMCIHaWQiBjMiC2dlbmRlcjAiD2JpcnRo\nX2RhdGUwIgtzdWJ1cmIiC3N1YnVyYiIMdXNlcl9pZCIGMyIRcGhvbmVfbnVt\nYmVyIg85NzYzMzcwNDE5Ig5sYXN0X25hbWUiC3BhdGhhayIMd2Vic2l0ZUAB\nxyIMbm90aWNlczAiEmVtYWlsX2FkZHJlc3MiIGtlZGFyLnBhdGhha0BwcmFn\ndGVjaC5jby5pbiIXZ2V0dGluZ19uZXdzbGV0dGVyIgYwIgxzdHVkaW9zMCIP\nZmlyc3RfbmFtZSIKa2VkYXIiEG1pZGRsZV9uYW1lMCIQbmF0aW9uYWxpdHkw\nIgpzdGF0ZTAiEmNvdW50cnlfc3RhdGUiEG1haGFyYXNodHJhIg5iaW9ncmFw\naHkwOxF7ADsTewA6DEBsb2FkZWRUOxN7ADs8VDoKb3JkZXJvOwcJOhFAY29t\ncGV0aXRpb25vOxkJOxpAAfY7HG87HQ07HnsAOx9jFUNvbXBldGl0aW9uc1Vz\nZXI7IDshOyJGOyMiEENvbXBldGl0aW9uOyQ6EGNvbXBldGl0aW9uOydjEENv\nbXBldGl0aW9uOyYiE2NvbXBldGl0aW9uX2lkOyhvOhBDb21wZXRpdGlvbgc7\nDXsrIhhzdWJtaXNzaW9uX2RlYWRsaW5lIg8yMDEyLTA2LTEzIhxtZXNzYWdl\nX2Zvcl9zdWJzY3JpYmVycyIRYmVzdCBvZiBsdWNrIgxjanVkZ2VzIgptYXJr\nICIWYXVjdGlvbl9hY3RpdmF0ZWQwIg9jcmVhdGVkX2F0IhgyMDEyLTA2LTAx\nIDA4OjI2OjIyIg1sb2NhdGlvbiIKcGFyaXMiC2Zvcm1hdCIQc29tZSBmb3Jt\nYXQiCnRpdGxlIhUyMDEyIGNvbXBldGl0aW9uIg9jb21taXNzaW9uIhZjb21t\naXNzaW9uIGdldCA1JSIVaG93X2RpZF95b3VfaGVyZTAiDnB1Ymxpc2hlZCIG\nMCIPdXBkYXRlZF9hdCIYMjAxMi0wNi0wMSAwODoyNjoyNCIMZnJhbWluZzAi\nCm5vdGVzIg9zb21lIG5vdGVzIg5pbnN1cmFuY2UiFmluc3VyYW5jZSBzZWN1\ncmVkIgdpZCIGNSIPbGltaXRfc2l6ZTAiFnJldHVybl9vZl9hcnR3b3JrMCIM\ndXNlcl9pZCIGMiIJdHlwZTAiGHByaXplc190b3RhbF9hbW91bnQiCDEwMCIS\ncHJpemVzX2RldGFpbCIwMXN0IHByaXplICQ0MA0KMm5kIHByaXplICQ4MA0K\nM3JkIHByaXplICQ4NSISdmlld2VkX251bWJlciIGMSIPZW50cnlfZmVlcyIq\nMSB3b3JrcyAkMTANCjIgd29ya3MgJDIwDQozIHdvcmtzICQzMCIRb3BlbnN0\nYXRlbXNnIhdvcGVuIHN0YXRlIG1lc3NhZ2UiDnJlc3VsdG1zZyIbcHVibGlz\naCByZXN1bHQgbWVzc2FnZSINanVkZ2VfaWQwIhBkZXNjcmlwdGlvbiIVc29t\nZSBkZXNjcmlwdGlvbiIUcHVibGlzaGZpbmFsbXNnIhpwdWJsaXNoIGZpbmFs\nIGFydHdvcmsiDnRpbWluZ19pZDAiFGNvbW1lbnRzX251bWJlciIGMCILc291\ncmNlMCINZGVsaXZlcnkiFmFuZCBzb21lIGRlbGl2ZXJ5IgpzdGF0ZSIJb3Bl\nbiIScmF0ZXNfYXZlcmFnZSIGMCIQbm9fb2ZfZW50cnkiBzEyIg9jb2xsZWN0\naW9uIhNzb21lIGNvbGxlY3RpbyIUZXhoaWJpdGlvbl9kYXRlMDsTewA7PFQ7\nDXtxIg9zaXdvcmtzaXplMCITc2l3b3JrZWRudW1iZXIwIgx1c2VyX2lkIgYz\nIg9mb3dvcmtzaXplMCIOcG9zdF9jb2RlIgs0MTEwMzgiEG53b3JrbWVkaXVt\nMCIPY3JlYXRlZF9hdCIYMjAxMi0wNi0wMSAwODoyNzoyOCIQZml3b3JraW1h\nZ2UwIhFiYW5rX2FjY291bnQwIg9ud29ya2ltYWdlMCIQc2l3b3JrdGl0bGUw\nIhB0ZXdvcmtpbWFnZTAiD2hlcmVfcHJpemUwIhB0d29ya2VkbmFtZTAiEnN3\nb3JrZWRudW1iZXIwIg9zd29ya3ByaWNlMCIRZml3b3JrbWVkaXVtMCIQc2l3\nb3JrcHJpY2UwIhBzZXdvcmtwcmljZTAiC290aGVyczAiEHNld29ya3RpdGxl\nMCIQZXdvcmttZWRpdW0wIhFwYXltZW50X3R5cGUwIgtmb3NvbGQwIg1leHBf\nZGF0ZTAiEHN3b3JrbWVkaXVtMCIPbndvcmt0aXRsZTAiEWZvd29ya21lZGl1\nbTAiDm53b3Jrc2l6ZTAiD253b3JrcHJpY2UwIhNlaXdvcmtlZG51bWJlcjAi\nC2Vpc29sZDAiD3R3b3JraW1hZ2UwIgpwcmljZSIGMCIKZW1haWwiIGtlZGFy\nLnBhdGhha0BwcmFndGVjaC5jby5pbiILYnNiX25vMCIPZXdvcmtwcmljZTAi\nEXRld29ya2VkbmFtZTAiD3N3b3JraW1hZ2UwIhN0ZXdvcmtlZG51bWJlcjAi\nEHRvdGFsX2VudHJ5MCIRZWl3b3JrZWRuYW1lMCIOZndvcmtzaXplMCIPdHdv\ncmtwcmljZTAiC2Zpc29sZDAiC3N1YnVyYiILc3VidXJiIg9ld29ya3RpdGxl\nMCIQYXRfZW5kX3dvcmswIhFuaXdvcmtlZG5hbWUwIg90d29ya3RpdGxlMCIL\nc2lzb2xkMCIOZXdvcmtzaXplMCIMY29uZmlybSIGMSIWdmFyaWZpY2F0aW9u\nX2NvZGUwIgpzc29sZDAiEHNld29ya2ltYWdlMCITbml3b3JrZWRudW1iZXIw\nIg5iaW9ncmFwaHkwIg5wYWlkZW50cnkwIhFzaXdvcmttZWRpdW0wIhBzd29y\na2VkbmFtZTAiEGZ3b3JrZWRuYW1lMCIPdXBkYXRlZF9hdCIYMjAxMi0wNi0w\nMSAwODoyNzoyOSIRdGV3b3JrbWVkaXVtMCIJbmFtZSIRa2VkYXIgcGF0aGFr\nIg9md29ya3RpdGxlMCIWcmV0dXJuX29mX2FydHdvcmswIgpmc29sZDAiD2Zp\nd29ya3NpemUwIhB0d29ya21lZGl1bTAiEnR3b3JrZWRudW1iZXIwIhNmaXdv\ncmtlZG51bWJlcjAiEGZpd29ya3ByaWNlMCIQZml3b3JrdGl0bGUwIg9ld29y\na2ltYWdlMCIhY29tcGV0aXRpb25zX3N1YnNjcmlwdGlvbl9pZDAiD3Rld29y\na3NpemUwIhFmb3dvcmtlZG5hbWUwIg9md29ya3ByaWNlMCITY29tcGV0aXRp\nb25faWQiBjUiD3Nld29ya3NpemUwIhB0ZXdvcmt0aXRsZTAiEXNld29ya2Vk\nbmFtZTAiEmZ3b3JrZWRudW1iZXIwIhBmd29ya21lZGl1bTAiDnR3b3Jrc2l6\nZTAiEHRld29ya3ByaWNlMCILdGVzb2xkMCIOY2FyZF9uYW1lMCIKdHNvbGQw\nIgtzZXNvbGQwIhBmb3dvcmtpbWFnZTAiDnN3b3Jrc2l6ZTAiEWZpd29ya2Vk\nbmFtZTAiEXNld29ya21lZGl1bTAiEGNhcmRfbnVtYmVyMCIPZndvcmtpbWFn\nZTAiD3N3b3JrdGl0bGUwIhBmb3dvcmt0aXRsZTAiDGFkZHJlc3MiDGFkZHJl\nc3MiCm5zb2xkMCITZm93b3JrZWRudW1iZXIwIhNzZXdvcmtlZG51bWJlcjAi\nB2lkIgcxMCIQZm93b3JrcHJpY2UwIhBzaXdvcmtpbWFnZTAiCnN0YXRlIg1h\nY2NlcHRlZCIRc2l3b3JrZWRuYW1lMDoOQGludm9pY2VzbzozQWN0aXZlUmVj\nb3JkOjpBc3NvY2lhdGlvbnM6Okhhc01hbnlBc3NvY2lhdGlvbgs6EUBjb3Vu\ndGVyX3NxbCJYYGludm9pY2VzYC5wdXJjaGFzYWJsZV9pZCA9IDEwIEFORCBg\naW52b2ljZXNgLnB1cmNoYXNhYmxlX3R5cGUgPSAnQ29tcGV0aXRpb25zVXNl\ncic7GkAB9jssQAK+ATscbzsdDTseewg6B2FzOwY7LToPZGVsZXRlX2FsbDoL\nZXh0ZW5kWwA7MCIPYGludm9pY2VzYDsfQAH6OyA6DWhhc19tYW55OyJUOyMi\nDEludm9pY2U7JDoNaW52b2ljZXM7J2MMSW52b2ljZTsoWwA7PFQ7E3sAOgts\nb2NhbGU6CmVuLVVT\n','2012-06-01 08:26:45','2012-06-01 11:22:58'),(49,'32b09e9a5830057dc4ad179d7a8280db','BAh7CDoJY2FydHsAOgx1c2VyX2lkaQc6C2xvY2FsZToKZW4tVVM=\n','2012-06-05 11:01:28','2012-06-05 12:37:21'),(51,'59eda9b8bf841b899bbd6c3dfef48408','BAh7CToJY2FydHsHIiJDb21wZXRpdGlvbnNVc2VyXzFfZndvcmtpbWFnZSIG\nMSIiQ29tcGV0aXRpb25zVXNlcl8xX3N3b3JraW1hZ2UiBjE6DHVzZXJfaWRp\nDCIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFz\naHsABjoKQHVzZWR7ADoLbG9jYWxlOgplbi1VUw==\n','2012-06-05 12:41:42','2012-06-05 12:43:31'),(52,'a478e60777ddc8ae4720a3e16e870b2b','BAh7CToLbG9jYWxlOgplbi1VUzoJY2FydHsAOgx1c2VyX2lkaQciCmZsYXNo\nSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7AAY6CkB1\nc2VkewA=\n','2012-06-06 07:05:37','2012-06-06 09:37:56'),(55,'857218ea044de3aa6f637cec84ed4de5','BAh7AA==\n','2012-06-06 15:03:12','2012-06-06 15:03:13'),(57,'10eaf5405aa58eb861f8d21baa43755d','BAh7AA==\n','2012-06-06 15:20:21','2012-06-06 15:20:22'),(65,'4d3882c44bf4f3d397842e5fd4cdd587','BAh7CToJY2FydHsAOgx1c2VyX2lkaQc6C2xvY2FsZToKZW4tVVMiCmZsYXNo\nSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7BjoLbm90\naWNlIiRFeGhpYml0aW9uIFVwZGF0ZWQgU3VjY2Vzc2Z1bGx5BjoKQHVzZWR7\nBjsKVA==\n','2012-06-07 13:48:30','2012-06-07 13:53:14'),(66,'40b33470ce578916e89f0eb389f65e6b','BAh7AA==\n','2012-06-07 14:30:38','2012-06-07 14:30:39'),(71,'d93bb319de31ab105a114073bdde27d5','BAh7CToJY2FydHsAOgx1c2VyX2lkaQc6C2xvY2FsZToKZW4tVVMiCmZsYXNo\nSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7AAY6CkB1\nc2VkewA=\n','2012-06-08 14:29:51','2012-06-08 15:03:30'),(72,'189f8d5d125deb70cc31f525030ca5e0','BAh7AA==\n','2012-06-08 15:29:20','2012-06-08 15:29:21'),(78,'e5d1e0424250ea2f907cad5a873a122f','BAh7AA==\n','2012-06-09 14:04:35','2012-06-09 14:04:37'),(79,'6c23aa44a689340f112c72952d9f13c7','BAh7CDoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQc=\n','2012-06-11 05:47:53','2012-06-11 09:28:54'),(80,'ed8a0e6aeb469d582ec418c0facacf6c','BAh7CzoLbG9jYWxlOgplbi1VUzoMdXNlcl9pZGkHOgljYXJ0ewA6DnJldHVy\nbl90byIcL2FkbWluL2NvbXBldGl0aW9ucy9uZXc6EGZja19pdGVtX2lkaQs6\nEmZja19pdGVtX3R5cGUiEENvbXBldGl0aW9u\n','2012-06-11 09:37:25','2012-06-11 14:48:08'),(81,'fabb5174b233f976c2773784aa3b37ca','BAh7AA==\n','2012-06-11 15:11:26','2012-06-11 15:11:26'),(85,'4ba241c1e8f7dd8fe8dc1877a19dbcfa','BAh7CDoMdXNlcl9pZGkHOgtsb2NhbGU6CmVuLVVTOgljYXJ0ewA=\n','2012-06-12 07:05:23','2012-06-12 07:10:27'),(89,'aa63ffa9c26df6b4e702a8e189c64960','BAh7CToVZXhoX2Rpc3BsYXlfbGlzdCIHMTE6C2xvY2FsZToKZW4tVVM6CWNh\ncnR7ADoMdXNlcl9pZGkH\n','2012-06-13 08:56:29','2012-06-13 08:58:08'),(91,'bcc83c41d7268b94b7622d5b9bb6fbc4','BAh7CjoOcmV0dXJuX3RvIhQvYWRtaW4vcHJvZmlsZXM6C2xvY2FsZToKZW4t\nVVM6DHVzZXJfaWRpBzoVZXhoX2Rpc3BsYXlfbGlzdCIHMTE6CWNhcnR7AA==\n','2012-06-13 14:10:49','2012-06-13 14:17:09'),(102,'f0cd4d2084e5c8c2b5ec1e3de8265a71','BAh7CToJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaRAiCmZsYXNo\nSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7AAY6CkB1\nc2VkewA=\n','2012-06-14 08:24:10','2012-06-14 11:05:42'),(103,'0e2136aa1b7349eebfecf4e639afc5e6','BAh7CjoNdXNlcl9pZHNbADoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOhVleGhf\nZGlzcGxheV9saXN0IgcxMToMdXNlcl9pZGkH\n','2012-06-14 09:16:43','2012-06-14 15:21:32'),(104,'3472172c14e8676916a3602024282b37','BAh7CjoJY2FydHsAOhVleGhfZGlzcGxheV9saXN0IgcxMToMdXNlcl9pZGkH\nOgtsb2NhbGU6CmVuLVVTOg5yZXR1cm5fdG8iFy9hZG1pbi9wcm9maWxlcy8x\nMw==\n','2012-06-14 14:43:04','2012-06-14 14:52:09'),(105,'508fd4ce1fc6c554caa14871cb771138','BAh7CjoNdXNlcl9pZHNbADoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2Vy\nX2lkaQc6FWV4aF9kaXNwbGF5X2xpc3QiBzEx\n','2012-06-14 15:26:49','2012-06-14 15:44:11'),(108,'a908769d129957fcd627c754fc8e88ba','BAh7CzoVZXhoX2Rpc3BsYXlfbGlzdCIHMTE6CWNhcnR7ADoLbG9jYWxlOgpl\nbi1VUzoMdXNlcl9pZGkHOg5yZXR1cm5fdG8iCy9hZG1pbiIKZmxhc2hJQzon\nQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVzZWR7\nAA==\n','2012-06-15 14:34:59','2012-06-15 14:39:47'),(112,'3a962a32319c867b76f06b42b20b6ebe','BAh7CjoJY2FydHsAOhVleGhfZGlzcGxheV9saXN0IgcxMToLbG9jYWxlOgpl\nbi1VUzoMdXNlcl9pZGkHOg11c2VyX2lkc1sA\n','2012-06-16 10:23:16','2012-06-16 14:39:54'),(113,'a5c2c1cacea0aa06f16b0c41776719a9','BAh7CToJY2FydHsAOgtsb2NhbGU6CmVuLVVTOgx1c2VyX2lkaQc6FWV4aF9k\naXNwbGF5X2xpc3QiBzEx\n','2012-06-16 13:26:45','2012-06-16 14:29:29'),(114,'4350c5a04deb5e308676c5769202c170','BAh7DToNdXNlcl9pZHNbADoVZXhoX2Rpc3BsYXlfbGlzdCIHMTE6C2xvY2Fs\nZToKZW4tVVM6DHVzZXJfaWRpBzoQZmNrX2l0ZW1faWRpCyIKZmxhc2hJQzon\nQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVzZWR7\nADoSZmNrX2l0ZW1fdHlwZSIQQ29tcGV0aXRpb246CWNhcnR7AA==\n','2012-06-18 05:23:00','2012-06-18 15:43:25'),(117,'5a0d706af31726326a6faef867579d05','BAh7CToJY2FydHsAOgtsb2NhbGU6CmVuLVVTOhVleGhfZGlzcGxheV9saXN0\nIgcxMToMdXNlcl9pZGkH\n','2012-06-19 10:11:51','2012-06-19 15:57:51'),(119,'e9408745a1f577720537a0afeff4aa55','BAh7CzoJY2FydHsAOgtsb2NhbGU6CmVuLVVTOg5yZXR1cm5fdG8iCy9hZG1p\nbjoMdXNlcl9pZGkHOhVleGhfZGlzcGxheV9saXN0IgcxMSIKZmxhc2hJQzon\nQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVzZWR7\nAA==\n','2012-06-20 10:15:55','2012-06-20 12:01:49'),(123,'6f9cd5f973f25c681ec0edcfe78ba7d7','BAh7DDoLbG9jYWxlOgplbi1VUzoRZ3JvdXBzc2hvd2lkIgYxOgx1c2VyX2lk\naRA6EnBheXBhbF9hbW91bnRpAogTIgpmbGFzaElDOidBY3Rpb25Db250cm9s\nbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewY6C25vdGljZSIZWW91ciBQYXltZW50\nIElzIERvbmUGOgpAdXNlZHsGOwtUOgljYXJ0ewA6CnRva2VuIhlFQy01U0U3\nODc1NFRSNTgxNDYwQQ==\n','2012-06-20 15:13:39','2012-06-20 15:15:53'),(124,'58f2f556cc199d8db4ba27c9698b23b1','BAh7CToVZXhoX2Rpc3BsYXlfbGlzdCIHMTE6C2xvY2FsZToKZW4tVVM6CWNh\ncnR7ADoMdXNlcl9pZGkH\n','2012-06-21 05:22:17','2012-06-21 05:22:52'),(126,'254fb0ea1f7b68a6b5323b87f912dcb1','BAh7CjoVZXhoX2Rpc3BsYXlfbGlzdCIGNzoMdXNlcl9pZGkHOgtsb2NhbGU6\nCmVuLVVTOgljYXJ0ewA6DnJldHVybl90byIWL2FkbWluL3Byb2ZpbGVzLzc=\n','2012-06-21 05:56:03','2012-06-21 11:39:40'),(129,'167eb42e13d0face23acb17222108776','BAh7CjoJY2FydHsAOgx1c2VyX2lkaRA6Cm9yZGVybzoVQ29tcGV0aXRpb25z\nVXNlcg06CkB1c2Vybzo1QWN0aXZlUmVjb3JkOjpBc3NvY2lhdGlvbnM6OkJl\nbG9uZ3NUb0Fzc29jaWF0aW9uCToQQHJlZmxlY3Rpb25vOjRBY3RpdmVSZWNv\ncmQ6OlJlZmxlY3Rpb246OkFzc29jaWF0aW9uUmVmbGVjdGlvbg06C0BtYWNy\nbzoPYmVsb25nc190bzoKQG5hbWU6CXVzZXI6DUBvcHRpb25zewA6E0BhY3Rp\ndmVfcmVjb3JkYxVDb21wZXRpdGlvbnNVc2VyOhBAY2xhc3NfbmFtZSIJVXNl\ncjoLQGtsYXNzYwlVc2VyOhZAcHJpbWFyeV9rZXlfbmFtZSIMdXNlcl9pZDoQ\nQGNvbGxlY3Rpb25GOgxAdGFyZ2V0bzoJVXNlcgg6DUBwcm9maWxlbzoyQWN0\naXZlUmVjb3JkOjpBc3NvY2lhdGlvbnM6Okhhc09uZUFzc29jaWF0aW9uCjoQ\nQGZpbmRlcl9zcWwiHGBwcm9maWxlc2AudXNlcl9pZCA9IDExOwtvOwwOOhdA\ncXVvdGVkX3RhYmxlX25hbWUiD2Bwcm9maWxlc2A7DToMaGFzX29uZTsPOgxw\ncm9maWxlOxF7BzoNYXV0b3NhdmVUOg5kZXBlbmRlbnQ6DGRlc3Ryb3k7EkAN\nOxMiDFByb2ZpbGU7FSIMdXNlcl9pZDsUYwxQcm9maWxlOxZGOxdvOgxQcm9m\naWxlBzoQQGF0dHJpYnV0ZXN7HiIMYWRkcmVzcyIQRGFuZ2UgQ2hvd2siCWNp\ndHkwIg9jcmVhdGVkX2F0IhgyMDEyLTA2LTA2IDE0OjU0OjU4Ig16aXBfY29k\nZSIPNjc4NzY4NzYxMSIMY291bnRyeSIKSW5kaWEiD3VwZGF0ZWRfYXQiGDIw\nMTItMDYtMTkgMDU6MzU6NDAiD3NhbHV0YXRpb24wIgdpZCIHMTEiC2dlbmRl\ncjAiD2JpcnRoX2RhdGUwIgtzdWJ1cmIiEEdhbmVzaG5hZ2FyIgx1c2VyX2lk\nIgcxMSIRcGhvbmVfbnVtYmVyIg8xMjM0NTY3ODkxIg5sYXN0X25hbWUiCkt1\nbWFyIgx3ZWJzaXRlIhd3d3cucHJhZ3RlY2guY28uaW4iDG5vdGljZXMwIhJl\nbWFpbF9hZGRyZXNzIh92aXNoYWxiaGFydGkubG9nQGdtYWlsLmNvbSIXZ2V0\ndGluZ19uZXdzbGV0dGVyIgYwIgxzdHVkaW9zMCIPZmlyc3RfbmFtZSILVmlz\naGFsIhBtaWRkbGVfbmFtZTAiEG5hdGlvbmFsaXR5MCIKc3RhdGUwIhJjb3Vu\ndHJ5X3N0YXRlIhBNYWhhcmFzaHRyYSIOYmlvZ3JhcGh5MDoWQGF0dHJpYnV0\nZXNfY2FjaGV7ADoMQGxvYWRlZFQ6C0Bvd25lckAPOyN7GyIWbGFzdF9jb25u\nZWN0ZWRfYXQiGDIwMTItMDYtMjEgMTg6Mjg6MzMiDXVfbGF5b3V0MCIJc2Fs\ndCItOGQyMGM1MGVlMGYzZDc3OWRhY2NmNzg0YTNkN2QzM2Q3NDQwODUwZSIV\nYXZhdGFyX2ZpbGVfbmFtZTAiFWF2YXRhcl9maWxlX3NpemUwIhFhY3RpdmF0\nZWRfYXQiGDIwMTItMDYtMDYgMjA6MjQ6NTgiD2NyZWF0ZWRfYXQiGDIwMTIt\nMDYtMDYgMTQ6NTQ6NTgiFWNyeXB0ZWRfcGFzc3dvcmQiLTMxMmZhNGQyYjY0\nNmYxYzZlNjczOTczOTZiNzBmYTFlM2Y1OWYxMzIiHnJlbWVtYmVyX3Rva2Vu\nX2V4cGlyZXNfYXQwIhhwYXNzd29yZF9yZXNldF9jb2RlMCIPdXBkYXRlZF9h\ndCIYMjAxMi0wNi0yMSAxMjo1ODozMyIPdV9sYW5ndWFnZTAiFGFjdGl2YXRp\nb25fY29kZSItZmRhOTgzODFjNzI1OWUzOGE3YmMwYTA3ZTY4Y2RhM2I4NzUx\nMWYyOSIHaWQiBzExIhhhdmF0YXJfY29udGVudF90eXBlMCITcmVtZW1iZXJf\ndG9rZW4wIgpsb2dpbiIQdi5iaGFydGl6VGgiFmF2YXRhcl91cGRhdGVkX2F0\nMCIPdV9wZXJfcGFnZTAiE3N5c3RlbV9yb2xlX2lkIgY4IgplbWFpbCIfdmlz\naGFsYmhhcnRpLmxvZ0BnbWFpbC5jb20iCnN0YXRlMDskewA7JVQ7JkAHOhhA\nY2hhbmdlZF9hdHRyaWJ1dGVzewA7I3txIg9zaXdvcmtzaXplMCITc2l3b3Jr\nZWRudW1iZXIwIgx1c2VyX2lkIgcxMSIPZm93b3Jrc2l6ZTAiDnBvc3RfY29k\nZSIPMjE0NzQ4MzY0NyIQbndvcmttZWRpdW0wIg9jcmVhdGVkX2F0IhgyMDEy\nLTA2LTIxIDEzOjE5OjI0IhBmaXdvcmtpbWFnZTAiEWJhbmtfYWNjb3VudDAi\nD253b3JraW1hZ2UwIhBzaXdvcmt0aXRsZTAiEHRld29ya2ltYWdlMCIPaGVy\nZV9wcml6ZTAiEHR3b3JrZWRuYW1lMCISc3dvcmtlZG51bWJlcjAiD3N3b3Jr\ncHJpY2UwIhFmaXdvcmttZWRpdW0wIhBzaXdvcmtwcmljZTAiEHNld29ya3By\naWNlMCILb3RoZXJzMCIQc2V3b3JrdGl0bGUwIhBld29ya21lZGl1bTAiEXBh\neW1lbnRfdHlwZTAiC2Zvc29sZDAiDWV4cF9kYXRlMCIQc3dvcmttZWRpdW0w\nIg9ud29ya3RpdGxlMCIRZm93b3JrbWVkaXVtMCIObndvcmtzaXplMCIPbndv\ncmtwcmljZTAiE2Vpd29ya2VkbnVtYmVyMCILZWlzb2xkMCIPdHdvcmtpbWFn\nZTAiCnByaWNlIgYwIgplbWFpbCIfdmlzaGFsYmhhcnRpLmxvZ0BnbWFpbC5j\nb20iC2JzYl9ubzAiD2V3b3JrcHJpY2UwIhF0ZXdvcmtlZG5hbWUwIg9zd29y\na2ltYWdlMCITdGV3b3JrZWRudW1iZXIwIhB0b3RhbF9lbnRyeSIHMTMiEWVp\nd29ya2VkbmFtZTAiDmZ3b3Jrc2l6ZTAiD3R3b3JrcHJpY2UwIgtmaXNvbGQw\nIgtzdWJ1cmIiEEdhbmVzaG5hZ2FyIg9ld29ya3RpdGxlMCIQYXRfZW5kX3dv\ncmswIhFuaXdvcmtlZG5hbWUwIg90d29ya3RpdGxlMCILc2lzb2xkMCIOZXdv\ncmtzaXplMCIMY29uZmlybSIGMSIWdmFyaWZpY2F0aW9uX2NvZGUwIgpzc29s\nZDAiEHNld29ya2ltYWdlMCITbml3b3JrZWRudW1iZXIwIg5iaW9ncmFwaHkw\nIg5wYWlkZW50cnkwIhFzaXdvcmttZWRpdW0wIhBzd29ya2VkbmFtZTAiEGZ3\nb3JrZWRuYW1lMCIPdXBkYXRlZF9hdEl1OglUaW1lDa8WHMDtBVExBjofQG1h\ncnNoYWxfd2l0aF91dGNfY29lcmNpb25UIhF0ZXdvcmttZWRpdW0wIgluYW1l\nIhFWaXNoYWwgS3VtYXIiD2Z3b3JrdGl0bGUwIhZyZXR1cm5fb2ZfYXJ0d29y\nazAiCmZzb2xkMCIPZml3b3Jrc2l6ZTAiEHR3b3JrbWVkaXVtMCISdHdvcmtl\nZG51bWJlcjAiE2Zpd29ya2VkbnVtYmVyMCIQZml3b3JrcHJpY2UwIhBmaXdv\ncmt0aXRsZTAiD2V3b3JraW1hZ2UwIiFjb21wZXRpdGlvbnNfc3Vic2NyaXB0\naW9uX2lkMCIPdGV3b3Jrc2l6ZTAiEWZvd29ya2VkbmFtZTAiD2Z3b3JrcHJp\nY2UwIhNjb21wZXRpdGlvbl9pZCIGNyIPc2V3b3Jrc2l6ZTAiEHRld29ya3Rp\ndGxlMCIRc2V3b3JrZWRuYW1lMCISZndvcmtlZG51bWJlcjAiEGZ3b3JrbWVk\naXVtMCIOdHdvcmtzaXplMCIQdGV3b3JrcHJpY2UwIgt0ZXNvbGQwIg5jYXJk\nX25hbWUwIgp0c29sZDAiC3Nlc29sZDAiEGZvd29ya2ltYWdlMCIOc3dvcmtz\naXplMCIRZml3b3JrZWRuYW1lMCIRc2V3b3JrbWVkaXVtMCIQY2FyZF9udW1i\nZXIwIg9md29ya2ltYWdlMCIPc3dvcmt0aXRsZTAiEGZvd29ya3RpdGxlMCIM\nYWRkcmVzcyIQRGFuZ2UgQ2hvd2siCm5zb2xkMCITZm93b3JrZWRudW1iZXIw\nIhNzZXdvcmtlZG51bWJlcjAiB2lkIgcxNCIQZm93b3JrcHJpY2UwIhBzaXdv\ncmtpbWFnZTAiCnN0YXRlIg1hY2NlcHRlZCIRc2l3b3JrZWRuYW1lMDoOQGlu\ndm9pY2VzbzozQWN0aXZlUmVjb3JkOjpBc3NvY2lhdGlvbnM6Okhhc01hbnlB\nc3NvY2lhdGlvbgs6EUBjb3VudGVyX3NxbCJYYGludm9pY2VzYC5wdXJjaGFz\nYWJsZV9pZCA9IDE0IEFORCBgaW52b2ljZXNgLnB1cmNoYXNhYmxlX3R5cGUg\nPSAnQ29tcGV0aXRpb25zVXNlcic7G0AB3jsLbzsMDTscIg9gaW52b2ljZXNg\nOw06DWhhc19tYW55Ow86DWludm9pY2VzOxF7CDoHYXM6EHB1cmNoYXNhYmxl\nOyA6D2RlbGV0ZV9hbGw6C2V4dGVuZFsAOxJACzsTIgxJbnZvaWNlOxRjDElu\ndm9pY2U7FlQ7F1sRbzoMSW52b2ljZQc7I3sZIgtudW1iZXIiD0kzNTAyNDE1\nNzIiD2NyZWF0ZWRfYXQiGDIwMTItMDYtMjEgMTM6MTk6MzgiCnRpdGxlIhdJ\nbnZvaWNlIEkzNTAyNDE1NzIiE3BheW1lbnRfbWVkaXVtIgljYXNoIhFmaW5h\nbF9hbW91bnQiBzUwIg91cGRhdGVkX2F0IhgyMDEyLTA2LTIxIDEzOjE5OjM4\nIgdpZCIHMzkiD2NyZWF0b3JfaWQwIhVzaGlwcGluZ19hZGRyZXNzIhdEYW5n\nZSBDaG93ayBJbmRpYSAiDmNsaWVudF9pZCIHMTEiE3B1cmNoYXNhYmxlX2lk\nIgcxNCINZGVhZGxpbmUiDzIwMTItMDYtMjgiDHNlbnRfYXQiGDIwMTItMDYt\nMjEgMTg6NDk6MzgiEXZhbGlkYXRlZF9hdDAiFGJpbGxpbmdfYWRkcmVzcyIX\nRGFuZ2UgQ2hvd2sgSW5kaWEgIglub3RlMCIQZGVzY3JpcHRpb24iPkludm9p\nY2UgZm9yIHRoZSBzdWJzY3JpcHRpb24gdG8gdGhlIGNvbXBldGl0aW9uICdB\namludGhhJyIUb3JpZ2luYWxfYW1vdW50Igc1MCIVcHVyY2hhc2FibGVfdHlw\nZSIVQ29tcGV0aXRpb25zVXNlciIKc3RhdGUiDGNyZWF0ZWQ7JHsAbzszBzsj\nexlAAegiD0k1NzAyMzczNjhAAeoiGDIwMTItMDYtMjEgMTM6Mjc6NDBAAewi\nF0ludm9pY2UgSTU3MDIzNzM2OEAB7iIJY2FzaEAB8CIHNTBAAfIiGDIwMTIt\nMDYtMjEgMTM6Mjc6NDBAAfQiBzQwQAH2MEAB9yIXRGFuZ2UgQ2hvd2sgSW5k\naWEgQAH5IgcxMUAB+yIHMTRAAf0iDzIwMTItMDYtMjhAAf8iGDIwMTItMDYt\nMjEgMTg6NTc6NDBAAgEBMEACAgEiF0RhbmdlIENob3drIEluZGlhIEACBAEw\nQAIFASI+SW52b2ljZSBmb3IgdGhlIHN1YnNjcmlwdGlvbiB0byB0aGUgY29t\ncGV0aXRpb24gJ0FqaW50aGEnQAIHASIHNTBAAgkBIhVDb21wZXRpdGlvbnNV\nc2VyQAILASIMY3JlYXRlZDskewBvOzMHOyN7GUAB6CIPSTI0MzY2NTY4OEAB\n6iIYMjAxMi0wNi0yMSAxNDowNDoyMEAB7CIXSW52b2ljZSBJMjQzNjY1Njg4\nQAHuIgljYXNoQAHwIgc1MEAB8iIYMjAxMi0wNi0yMSAxNDowNDoyMEAB9CIH\nNDFAAfYwQAH3IhdEYW5nZSBDaG93ayBJbmRpYSBAAfkiBzExQAH7IgcxNEAB\n/SIPMjAxMi0wNi0yOEAB/yIYMjAxMi0wNi0yMSAxOTozNDoyMEACAQEwQAIC\nASIXRGFuZ2UgQ2hvd2sgSW5kaWEgQAIEATBAAgUBIj5JbnZvaWNlIGZvciB0\naGUgc3Vic2NyaXB0aW9uIHRvIHRoZSBjb21wZXRpdGlvbiAnQWppbnRoYSdA\nAgcBIgc1MEACCQEiFUNvbXBldGl0aW9uc1VzZXJAAgsBIgxjcmVhdGVkOyR7\nAG87Mwc7I3sZQAHoIg9JMDc4MTExNzEyQAHqIhgyMDEyLTA2LTIxIDE0OjA3\nOjAyQAHsIhdJbnZvaWNlIEkwNzgxMTE3MTJAAe4iCWNhc2hAAfAiBzUwQAHy\nIhgyMDEyLTA2LTIxIDE0OjA3OjAyQAH0Igc0MkAB9jBAAfciF0RhbmdlIENo\nb3drIEluZGlhIEAB+SIHMTFAAfsiBzE0QAH9Ig8yMDEyLTA2LTI4QAH/Ihgy\nMDEyLTA2LTIxIDE5OjM3OjAyQAIBATBAAgIBIhdEYW5nZSBDaG93ayBJbmRp\nYSBAAgQBMEACBQEiPkludm9pY2UgZm9yIHRoZSBzdWJzY3JpcHRpb24gdG8g\ndGhlIGNvbXBldGl0aW9uICdBamludGhhJ0ACBwEiBzUwQAIJASIVQ29tcGV0\naXRpb25zVXNlckACCwEiDGNyZWF0ZWQ7JHsAbzszBzsjexlAAegiD0k3MDIz\nMDgyNTZAAeoiGDIwMTItMDYtMjEgMTQ6MTI6NDJAAewiF0ludm9pY2UgSTcw\nMjMwODI1NkAB7iIJY2FzaEAB8CIHNTBAAfIiGDIwMTItMDYtMjEgMTQ6MTI6\nNDJAAfQiBzQzQAH2MEAB9yIXRGFuZ2UgQ2hvd2sgSW5kaWEgQAH5IgcxMUAB\n+yIHMTRAAf0iDzIwMTItMDYtMjhAAf8iGDIwMTItMDYtMjEgMTk6NDI6NDJA\nAgEBMEACAgEiF0RhbmdlIENob3drIEluZGlhIEACBAEwQAIFASI+SW52b2lj\nZSBmb3IgdGhlIHN1YnNjcmlwdGlvbiB0byB0aGUgY29tcGV0aXRpb24gJ0Fq\naW50aGEnQAIHASIHNTBAAgkBIhVDb21wZXRpdGlvbnNVc2VyQAILASIMY3Jl\nYXRlZDskewBvOzMHOyN7GUAB6CIPSTY2MjI4ODA4NUAB6iIYMjAxMi0wNi0y\nMSAxNDoxNjo0N0AB7CIXSW52b2ljZSBJNjYyMjg4MDg1QAHuIgljYXNoQAHw\nIgc1MEAB8iIYMjAxMi0wNi0yMSAxNDoxNjo0N0AB9CIHNDRAAfYwQAH3IhdE\nYW5nZSBDaG93ayBJbmRpYSBAAfkiBzExQAH7IgcxNEAB/SIPMjAxMi0wNi0y\nOEAB/yIYMjAxMi0wNi0yMSAxOTo0Njo0N0ACAQEwQAICASIXRGFuZ2UgQ2hv\nd2sgSW5kaWEgQAIEATBAAgUBIj5JbnZvaWNlIGZvciB0aGUgc3Vic2NyaXB0\naW9uIHRvIHRoZSBjb21wZXRpdGlvbiAnQWppbnRoYSdAAgcBIgc1MEACCQEi\nFUNvbXBldGl0aW9uc1VzZXJAAgsBIgxjcmVhdGVkOyR7AG87Mwc7I3sZQAHo\nIg9JNTIyMzY2MDUwQAHqIhgyMDEyLTA2LTIxIDE0OjE4OjUwQAHsIhdJbnZv\naWNlIEk1MjIzNjYwNTBAAe4iCWNhc2hAAfAiBzUwQAHyIhgyMDEyLTA2LTIx\nIDE0OjE4OjUwQAH0Igc0NUAB9jBAAfciF0RhbmdlIENob3drIEluZGlhIEAB\n+SIHMTFAAfsiBzE0QAH9Ig8yMDEyLTA2LTI4QAH/IhgyMDEyLTA2LTIxIDE5\nOjQ4OjUwQAIBATBAAgIBIhdEYW5nZSBDaG93ayBJbmRpYSBAAgQBMEACBQEi\nPkludm9pY2UgZm9yIHRoZSBzdWJzY3JpcHRpb24gdG8gdGhlIGNvbXBldGl0\naW9uICdBamludGhhJ0ACBwEiBzUwQAIJASIVQ29tcGV0aXRpb25zVXNlckAC\nCwEiDGNyZWF0ZWQ7JHsAbzszBzsjexlAAegiD0k2MTUxNjU0ODZAAeoiGDIw\nMTItMDYtMjEgMTQ6MjA6MTFAAewiF0ludm9pY2UgSTYxNTE2NTQ4NkAB7iIJ\nY2FzaEAB8CIHNTBAAfIiGDIwMTItMDYtMjEgMTQ6MjA6MTFAAfQiBzQ2QAH2\nMEAB9yIXRGFuZ2UgQ2hvd2sgSW5kaWEgQAH5IgcxMUAB+yIHMTRAAf0iDzIw\nMTItMDYtMjhAAf8iGDIwMTItMDYtMjEgMTk6NTA6MTFAAgEBMEACAgEiF0Rh\nbmdlIENob3drIEluZGlhIEACBAEwQAIFASI+SW52b2ljZSBmb3IgdGhlIHN1\nYnNjcmlwdGlvbiB0byB0aGUgY29tcGV0aXRpb24gJ0FqaW50aGEnQAIHASIH\nNTBAAgkBIhVDb21wZXRpdGlvbnNVc2VyQAILASIMY3JlYXRlZDskewBvOzMH\nOyN7GUAB6CIPSTE2MjYyODUwMUAB6iIYMjAxMi0wNi0yMSAxNDoyMzoxMUAB\n7CIXSW52b2ljZSBJMTYyNjI4NTAxQAHuIgljYXNoQAHwIgc1MEAB8iIYMjAx\nMi0wNi0yMSAxNDoyMzoxMUAB9CIHNDdAAfYwQAH3IhdEYW5nZSBDaG93ayBJ\nbmRpYSBAAfkiBzExQAH7IgcxNEAB/SIPMjAxMi0wNi0yOEAB/yIYMjAxMi0w\nNi0yMSAxOTo1MzoxMUACAQEwQAICASIXRGFuZ2UgQ2hvd2sgSW5kaWEgQAIE\nATBAAgUBIj5JbnZvaWNlIGZvciB0aGUgc3Vic2NyaXB0aW9uIHRvIHRoZSBj\nb21wZXRpdGlvbiAnQWppbnRoYSdAAgcBIgc1MEACCQEiFUNvbXBldGl0aW9u\nc1VzZXJAAgsBIgxjcmVhdGVkOyR7AG87Mwc7I3sZQAHoIg9JNTEwMTUwODg2\nQAHqIhgyMDEyLTA2LTIxIDE0OjI2OjQzQAHsIhdJbnZvaWNlIEk1MTAxNTA4\nODZAAe4iCWNhc2hAAfAiBzUwQAHyIhgyMDEyLTA2LTIxIDE0OjI2OjQzQAH0\nIgc0OEAB9jBAAfciF0RhbmdlIENob3drIEluZGlhIEAB+SIHMTFAAfsiBzE0\nQAH9Ig8yMDEyLTA2LTI4QAH/IhgyMDEyLTA2LTIxIDE5OjU2OjQzQAIBATBA\nAgIBIhdEYW5nZSBDaG93ayBJbmRpYSBAAgQBMEACBQEiPkludm9pY2UgZm9y\nIHRoZSBzdWJzY3JpcHRpb24gdG8gdGhlIGNvbXBldGl0aW9uICdBamludGhh\nJ0ACBwEiBzUwQAIJASIVQ29tcGV0aXRpb25zVXNlckACCwEiDGNyZWF0ZWQ7\nJHsAbzszBzsjexlAAegiD0kyODY2ODEyMzNAAeoiGDIwMTItMDYtMjEgMTQ6\nMzA6MDVAAewiF0ludm9pY2UgSTI4NjY4MTIzM0AB7iIJY2FzaEAB8CIHNTBA\nAfIiGDIwMTItMDYtMjEgMTQ6MzA6MDVAAfQiBzQ5QAH2MEAB9yIXRGFuZ2Ug\nQ2hvd2sgSW5kaWEgQAH5IgcxMUAB+yIHMTRAAf0iDzIwMTItMDYtMjhAAf8i\nGDIwMTItMDYtMjEgMjA6MDA6MDVAAgEBMEACAgEiF0RhbmdlIENob3drIElu\nZGlhIEACBAEwQAIFASI+SW52b2ljZSBmb3IgdGhlIHN1YnNjcmlwdGlvbiB0\nbyB0aGUgY29tcGV0aXRpb24gJ0FqaW50aGEnQAIHASIHNTBAAgkBIhVDb21w\nZXRpdGlvbnNVc2VyQAILASIMY3JlYXRlZDskewBvOzMHOyN7GUAB6CIPSTY1\nNzI1MzEzN0AB6iIYMjAxMi0wNi0yMSAxNDozOToyM0AB7CIXSW52b2ljZSBJ\nNjU3MjUzMTM3QAHuIgljYXNoQAHwIgc1MEAB8iIYMjAxMi0wNi0yMSAxNDoz\nOToyM0AB9CIHNTBAAfYwQAH3IhdEYW5nZSBDaG93ayBJbmRpYSBAAfkiBzEx\nQAH7IgcxNEAB/SIPMjAxMi0wNi0yOEAB/yIYMjAxMi0wNi0yMSAyMDowOToy\nM0ACAQEwQAICASIXRGFuZ2UgQ2hvd2sgSW5kaWEgQAIEATBAAgUBIj5JbnZv\naWNlIGZvciB0aGUgc3Vic2NyaXB0aW9uIHRvIHRoZSBjb21wZXRpdGlvbiAn\nQWppbnRoYSdAAgcBIgc1MEACCQEiFUNvbXBldGl0aW9uc1VzZXJAAgsBIgxj\ncmVhdGVkOyR7ADslVDsmQAc6HEBuZXdfcmVjb3JkX2JlZm9yZV9zYXZlRjsk\newA6DEBlcnJvcnNvOhlBY3RpdmVSZWNvcmQ6OkVycm9ycwc6CkBiYXNlQAc7\nNUlDOh9BY3RpdmVTdXBwb3J0OjpPcmRlcmVkSGFzaHsABjoKQGtleXNbADoR\nQGNvbXBldGl0aW9ubzsKCTsLbzsMDTsNOw47DzoQY29tcGV0aXRpb247EXsA\nOxJACzsTIhBDb21wZXRpdGlvbjsUYxBDb21wZXRpdGlvbjsVIhNjb21wZXRp\ndGlvbl9pZDsWRjsXbzoQQ29tcGV0aXRpb24IOyN7KyIYc3VibWlzc2lvbl9k\nZWFkbGluZSIPMjAxMi0wNi0zMCIcbWVzc2FnZV9mb3Jfc3Vic2NyaWJlcnMi\nD2dkZ2RnZGdkZ2QiDGNqdWRnZXMiD01GIEh1c3NhaW4iFmF1Y3Rpb25fYWN0\naXZhdGVkMCIPY3JlYXRlZF9hdCIYMjAxMi0wNi0yMSAxMzoxNjozNyINbG9j\nYXRpb24iCVB1bmUiC2Zvcm1hdCIQZmRzaHNrZmZzZnMiCnRpdGxlIgxBamlu\ndGhhIg9jb21taXNzaW9uIgc1MCIVaG93X2RpZF95b3VfaGVyZTAiDnB1Ymxp\nc2hlZCIGMCIPdXBkYXRlZF9hdCIYMjAxMi0wNi0yMSAxMzoxNjo0MSIMZnJh\nbWluZzAiCm5vdGVzIhBnZGd0d3R3dHd0dyIOaW5zdXJhbmNlIgkyMDAwIgdp\nZCIGNyIPbGltaXRfc2l6ZTAiFnJldHVybl9vZl9hcnR3b3JrMCIMdXNlcl9p\nZCIGMiIJdHlwZTAiGHByaXplc190b3RhbF9hbW91bnQiCTEwMDAiEnByaXpl\nc19kZXRhaWwiMTFzdCBwcml6ZSAkNDANCjJuZCBwcml6ZSAkODANCjNyZCBw\ncml6ZSAkMTAwIhJ2aWV3ZWRfbnVtYmVyIgYxIg9lbnRyeV9mZWVzIgKZATEg\nd29ya3MgJDUwDQoyIHdvcmtzICQ1MA0KMyB3b3JrcyAkNTANCjQgd29ya3Mg\nJDUwDQo1IHdvcmtzICQ1MA0KNiB3b3JrcyAkNTANCjcgd29ya3MgJDUwDQo4\nIHdvcmtzICQ1MA0KOSB3b3JrcyAkNTANCjEwIHdvcmtzICQ1MA0KMTEgd29y\na3MgJDUwDQoxMiB3b3JrcyAkNTANCjEzIHdvcmtzICQ1MA0KMTQgd29ya3Mg\nJDUwDQoxNSB3b3JrcyAkNTANCjE2IHdvcmtzICQ1MA0KMTcgd29ya3MgJDUw\nDQoxOCB3b3JrcyAkNTANCjE5IHdvcmtzICQ1MA0KMjAgd29ya3MgJDUwDQoy\nMSB3b3JrcyAkNTANCjIyIHdvcmtzICQ1MA0KMjMgd29ya3MgJDUwDQoyNCB3\nb3JrcyAkNTANCjI1IHdvcmtzICQ1MA0KMjYgd29ya3MgJDUwDQoyNyB3b3Jr\ncyAkNTANCjI4IHdvcmtzICQ1MA0KMjkgd29ya3MgJDUwDQozMCB3b3JrcyAk\nNTAiEW9wZW5zdGF0ZW1zZyIMdHR3d3d0dyIOcmVzdWx0bXNnIgx0d3R3dHd0\nIg1qdWRnZV9pZDAiEGRlc2NyaXB0aW9uIhlQYWludGluZyBDb21wZXRpdGlv\nbiIUcHVibGlzaGZpbmFsbXNnIgx0d3R3ZXQzIg50aW1pbmdfaWQwIhRjb21t\nZW50c19udW1iZXIiBjAiC3NvdXJjZTAiDWRlbGl2ZXJ5Ig9zZnNmc2ZzZnNm\nIgpzdGF0ZSIJb3BlbiIScmF0ZXNfYXZlcmFnZSIGMCIQbm9fb2ZfZW50cnki\nBzMwIg9jb2xsZWN0aW9uIhBzZnNmc2ZzZnNmcyIUZXhoaWJpdGlvbl9kYXRl\nMDskewA6DEB0aW1pbmdvOxoKOxsiTmB0aW1pbmdzYC5vYmplY3RhYmxlX2lk\nID0gNyBBTkQgYHRpbWluZ3NgLm9iamVjdGFibGVfdHlwZSA9ICdDb21wZXRp\ndGlvbic7C287DA07HCIOYHRpbWluZ3NgOw07HTsPOgt0aW1pbmc7EXsIOy86\nD29iamVjdGFibGU7H1Q7IDoLZGVsZXRlOxJAAvIBOxMiC1RpbWluZzsUYwtU\naW1pbmc7FkY7F286C1RpbWluZwc7I3sSIg9jcmVhdGVkX2F0IhgyMDEyLTA2\nLTIxIDEzOjE2OjM3IhJzdGFydGluZ190aW1lMCIPdXBkYXRlZF9hdCIYMjAx\nMi0wNi0yMSAxMzoxNjozNyIUb2JqZWN0YWJsZV90eXBlIhBDb21wZXRpdGlv\nbiISc3RhcnRpbmdfZGF0ZSIPMjAxMi0wNi0yMSIHaWQiBzE0IhJvYmplY3Rh\nYmxlX2lkIgY3Iglub3RlIhNldHd0d3R3dHd0d3R3dCIOcGVyaW9kX2lkMCIQ\nZW5kaW5nX3RpbWUwIg5wbGFjZXNfaWQiBjEiEGVuZGluZ19kYXRlIg8yMDEy\nLTA2LTMwIgpzdGF0ZTA7JHsHIhJzdGFydGluZ19kYXRldToJRGF0ZT0ECFsI\nbzoNUmF0aW9uYWwHOhFAZGVub21pbmF0b3JpBzoPQG51bWVyYXRvcmkDR/RK\naQBpAxkVIyIQZW5kaW5nX2RhdGV1O0I9BAhbCG86DVJhdGlvbmFsBzoRQGRl\nbm9taW5hdG9yaQc6D0BudW1lcmF0b3JpA1n0SmkAaQMZFSM7JVQ7JkAC9AE7\nJVQ7JkAHOgtsb2NhbGU6CmVuLVVTOhNjdXJyZW50X29iamVjdG86DFBheW1l\nbnQMOwlvOwoKOg1AdXBkYXRlZFQ7C287DA07DTsOOw87EDsRewA7EmMMUGF5\nbWVudDsTIglVc2VyOxUiDHVzZXJfaWQ7FEANOxZGOxdvOxgHOyN7GyIWbGFz\ndF9jb25uZWN0ZWRfYXQiGDIwMTItMDYtMjEgMTg6Mjg6MzMiDXVfbGF5b3V0\nMCIJc2FsdCItOGQyMGM1MGVlMGYzZDc3OWRhY2NmNzg0YTNkN2QzM2Q3NDQw\nODUwZSIVYXZhdGFyX2ZpbGVfbmFtZTAiFWF2YXRhcl9maWxlX3NpemUwIhFh\nY3RpdmF0ZWRfYXQiGDIwMTItMDYtMDYgMjA6MjQ6NTgiD2NyZWF0ZWRfYXQi\nGDIwMTItMDYtMDYgMTQ6NTQ6NTgiFWNyeXB0ZWRfcGFzc3dvcmQiLTMxMmZh\nNGQyYjY0NmYxYzZlNjczOTczOTZiNzBmYTFlM2Y1OWYxMzIiHnJlbWVtYmVy\nX3Rva2VuX2V4cGlyZXNfYXQwIhhwYXNzd29yZF9yZXNldF9jb2RlMCIPdXBk\nYXRlZF9hdCIYMjAxMi0wNi0yMSAxMjo1ODozMyIPdV9sYW5ndWFnZTAiFGFj\ndGl2YXRpb25fY29kZSItZmRhOTgzODFjNzI1OWUzOGE3YmMwYTA3ZTY4Y2Rh\nM2I4NzUxMWYyOSIHaWQiBzExIhhhdmF0YXJfY29udGVudF90eXBlMCITcmVt\nZW1iZXJfdG9rZW4wIgpsb2dpbiIQdi5iaGFydGl6VGgiFmF2YXRhcl91cGRh\ndGVkX2F0MCIPdV9wZXJfcGFnZTAiE3N5c3RlbV9yb2xlX2lkIgY4IgplbWFp\nbCIfdmlzaGFsYmhhcnRpLmxvZ0BnbWFpbC5jb20iCnN0YXRlMDskewA7JVQ7\nJkACXQI6DUBpbnZvaWNlbzsKCjtHVDsLbzsMDTsNOw47DzoMaW52b2ljZTsR\newA7EkACYQI7EyIMSW52b2ljZTsVIg9pbnZvaWNlX2lkOxRAAeQ7FkY7F287\nMws7J3sAOhBAbmV3X3JlY29yZEY7I3sZIgtudW1iZXIiD0k4ODU1NDc3Mzci\nD2NyZWF0ZWRfYXRJdTsoDa8WHMC+8VIxBjspVCIKdGl0bGUiF0ludm9pY2Ug\nSTg4NTU0NzczNyIPdXBkYXRlZF9hdEl1OygNrxYcwNIXUzEGOylUIhFmaW5h\nbF9hbW91bnRmBzUwIhNwYXltZW50X21lZGl1bSIJY2FzaCIHaWRpOCIVc2hp\ncHBpbmdfYWRkcmVzcyIXRGFuZ2UgQ2hvd2sgSW5kaWEgIg9jcmVhdG9yX2lk\nMCIRdmFsaWRhdGVkX2F0MCIMc2VudF9hdEl1OygNrxYcgC4MUzEGOylGIg1k\nZWFkbGluZXU7Qj0ECFsIbzoNUmF0aW9uYWwHOhFAZGVub21pbmF0b3JpBzoP\nQG51bWVyYXRvcmkDVfRKaQBpAxkVIyITcHVyY2hhc2FibGVfaWRpEyIOY2xp\nZW50X2lkaRAiCW5vdGUwIhRiaWxsaW5nX2FkZHJlc3MiF0RhbmdlIENob3dr\nIEluZGlhICIUb3JpZ2luYWxfYW1vdW50QAKZAiIQZGVzY3JpcHRpb24iPklu\ndm9pY2UgZm9yIHRoZSBzdWJzY3JpcHRpb24gdG8gdGhlIGNvbXBldGl0aW9u\nICdBamludGhhJyIVcHVyY2hhc2FibGVfdHlwZSIVQ29tcGV0aXRpb25zVXNl\nciIKc3RhdGUiDGNyZWF0ZWQ6EUBwdXJjaGFzYWJsZW86QEFjdGl2ZVJlY29y\nZDo6QXNzb2NpYXRpb25zOjpCZWxvbmdzVG9Qb2x5bW9ycGhpY0Fzc29jaWF0\naW9uCTsLbzsMDDsNOw47DzswOxF7BzoRZm9yZWlnbl90eXBlIhVwdXJjaGFz\nYWJsZV90eXBlOhBwb2x5bW9ycGhpY1Q7EkAB5DsTIhBQdXJjaGFzYWJsZTsV\nIhNwdXJjaGFzYWJsZV9pZDsWRjsXbzsICDsnewA7I3txIg9zaXdvcmtzaXpl\nMCITc2l3b3JrZWRudW1iZXIwIgx1c2VyX2lkIgcxMSIPZm93b3Jrc2l6ZTAi\nDnBvc3RfY29kZSIPMjE0NzQ4MzY0NyIQbndvcmttZWRpdW0wIg9jcmVhdGVk\nX2F0IhgyMDEyLTA2LTIxIDEzOjE5OjI0IhBmaXdvcmtpbWFnZTAiEWJhbmtf\nYWNjb3VudDAiD253b3JraW1hZ2UwIhBzaXdvcmt0aXRsZTAiEHRld29ya2lt\nYWdlMCIPaGVyZV9wcml6ZTAiEHR3b3JrZWRuYW1lMCISc3dvcmtlZG51bWJl\ncjAiD3N3b3JrcHJpY2UwIhFmaXdvcmttZWRpdW0wIhBzaXdvcmtwcmljZTAi\nEHNld29ya3ByaWNlMCILb3RoZXJzMCIQc2V3b3JrdGl0bGUwIhBld29ya21l\nZGl1bTAiEXBheW1lbnRfdHlwZTAiC2Zvc29sZDAiDWV4cF9kYXRlMCIQc3dv\ncmttZWRpdW0wIg9ud29ya3RpdGxlMCIRZm93b3JrbWVkaXVtMCIObndvcmtz\naXplMCIPbndvcmtwcmljZTAiE2Vpd29ya2VkbnVtYmVyMCILZWlzb2xkMCIP\ndHdvcmtpbWFnZTAiCnByaWNlIgYwIgplbWFpbCIfdmlzaGFsYmhhcnRpLmxv\nZ0BnbWFpbC5jb20iC2JzYl9ubzAiD2V3b3JrcHJpY2UwIhF0ZXdvcmtlZG5h\nbWUwIg9zd29ya2ltYWdlMCITdGV3b3JrZWRudW1iZXIwIhB0b3RhbF9lbnRy\neSIHMTMiEWVpd29ya2VkbmFtZTAiDmZ3b3Jrc2l6ZTAiD3R3b3JrcHJpY2Uw\nIgtmaXNvbGQwIgtzdWJ1cmIiEEdhbmVzaG5hZ2FyIg9ld29ya3RpdGxlMCIQ\nYXRfZW5kX3dvcmswIhFuaXdvcmtlZG5hbWUwIg90d29ya3RpdGxlMCILc2lz\nb2xkMCIOZXdvcmtzaXplMCIMY29uZmlybSIGMSIWdmFyaWZpY2F0aW9uX2Nv\nZGUwIgpzc29sZDAiEHNld29ya2ltYWdlMCITbml3b3JrZWRudW1iZXIwIg5i\naW9ncmFwaHkwIg5wYWlkZW50cnkwIhFzaXdvcmttZWRpdW0wIhBzd29ya2Vk\nbmFtZTAiEGZ3b3JrZWRuYW1lMCIPdXBkYXRlZF9hdCIYMjAxMi0wNi0yMSAx\nNToxMjoyMSIRdGV3b3JrbWVkaXVtMCIJbmFtZSIRVmlzaGFsIEt1bWFyIg9m\nd29ya3RpdGxlMCIWcmV0dXJuX29mX2FydHdvcmswIgpmc29sZDAiD2Zpd29y\na3NpemUwIhB0d29ya21lZGl1bTAiEnR3b3JrZWRudW1iZXIwIhNmaXdvcmtl\nZG51bWJlcjAiEGZpd29ya3ByaWNlMCIQZml3b3JrdGl0bGUwIg9ld29ya2lt\nYWdlMCIhY29tcGV0aXRpb25zX3N1YnNjcmlwdGlvbl9pZDAiD3Rld29ya3Np\nemUwIhFmb3dvcmtlZG5hbWUwIg9md29ya3ByaWNlMCITY29tcGV0aXRpb25f\naWQiBjciD3Nld29ya3NpemUwIhB0ZXdvcmt0aXRsZTAiEXNld29ya2VkbmFt\nZTAiEmZ3b3JrZWRudW1iZXIwIhBmd29ya21lZGl1bTAiDnR3b3Jrc2l6ZTAi\nEHRld29ya3ByaWNlMCILdGVzb2xkMCIOY2FyZF9uYW1lMCIKdHNvbGQwIgtz\nZXNvbGQwIhBmb3dvcmtpbWFnZTAiDnN3b3Jrc2l6ZTAiEWZpd29ya2VkbmFt\nZTAiEXNld29ya21lZGl1bTAiEGNhcmRfbnVtYmVyMCIPZndvcmtpbWFnZTAi\nD3N3b3JrdGl0bGUwIhBmb3dvcmt0aXRsZTAiDGFkZHJlc3MiEERhbmdlIENo\nb3drIgpuc29sZDAiE2Zvd29ya2VkbnVtYmVyMCITc2V3b3JrZWRudW1iZXIw\nIgdpZCIHMTQiEGZvd29ya3ByaWNlMCIQc2l3b3JraW1hZ2UwIgpzdGF0ZSIN\nYWNjZXB0ZWQiEXNpd29ya2VkbmFtZTA7JHsAOyVUOyZAAo0COyR7ADs1bzs2\nBzs3QAKNAjs1SUM7OHsABjs5WwA7JVQ7JkACXQI7J3sAO0pGOyN7DyIPY3Jl\nYXRlZF9hdEl1OygNrxYcwForVTEGOylUIg91cGRhdGVkX2F0QAI8AyIPaW52\nb2ljZV9pZGk4IgdpZGk1IhRhbW91bnRfaW5fY2VudHNmCTUwMDAiE2NyZWRp\ndF9jYXJkX2lkMCIMdXNlcl9pZGkQIglub3RlMCINY3VycmVuY3kwIgpzdGF0\nZTA7JHsAOzVvOzYHOzdAAl0COzVJQzs4ewAGOzlbAA==\n','2012-06-21 13:18:15','2012-06-21 15:12:28'),(133,'791172d1bf436d97eab583c3deff6b61','BAh7CjoMdXNlcl9pZGkHOgtsb2NhbGU6CmVuLVVTOhVleGhfZGlzcGxheV9s\naXN0IgcxNDoJY2FydHsAIgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVyOjpG\nbGFzaDo6Rmxhc2hIYXNoewY6C25vdGljZSISTWVzc2FnZSBzZW50LgY6CkB1\nc2VkewY7C0Y=\n','2012-06-22 10:28:10','2012-06-22 12:13:12');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signatures`
--

DROP TABLE IF EXISTS `signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signatures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frommail_id` int(11) DEFAULT NULL,
  `signlabel` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signatures`
--

LOCK TABLES `signatures` WRITE;
/*!40000 ALTER TABLE `signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio_and_mailing_lists`
--

DROP TABLE IF EXISTS `studio_and_mailing_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studio_and_mailing_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `suburb` varchar(70) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `studio` tinyint(1) DEFAULT NULL,
  `mailing_list` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio_and_mailing_lists`
--

LOCK TABLES `studio_and_mailing_lists` WRITE;
/*!40000 ALTER TABLE `studio_and_mailing_lists` DISABLE KEYS */;
INSERT INTO `studio_and_mailing_lists` VALUES (1,'kedar','pathak','pathakorama1@gmail.com','address12','suburb','411038','25420753',1,0,'2012-06-01 07:26:07','2012-06-01 07:26:07');
/*!40000 ALTER TABLE `studio_and_mailing_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempraryinboxes`
--

DROP TABLE IF EXISTS `tempraryinboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempraryinboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromemail` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempraryinboxes`
--

LOCK TABLES `tempraryinboxes` WRITE;
/*!40000 ALTER TABLE `tempraryinboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempraryinboxes` ENABLE KEYS */;
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
INSERT INTO `timings` VALUES (1,'Competition',1,'and some notes written in exhibition',NULL,'2011-11-22','2011-11-29',NULL,NULL,NULL,NULL,'2011-11-22 09:01:10','2011-11-22 09:01:10'),(2,'Exhibition',1,'and some notes for exhibition',1,'2011-11-25','2011-11-30',NULL,NULL,'1',NULL,'2011-11-23 12:53:03','2011-11-23 14:22:31'),(3,'Competition',2,'and exhibition runs notes',NULL,'2011-11-28','2011-11-29',NULL,NULL,'1',NULL,'2011-11-24 07:37:26','2011-11-24 07:37:26'),(4,'Competition',3,'notessddd',NULL,'2011-11-25','2011-11-29',NULL,NULL,'1',NULL,'2011-11-24 09:00:37','2011-11-24 09:00:37'),(5,'Competition',4,'beutiful notes',NULL,'2011-11-27','2011-11-29',NULL,NULL,'1',NULL,'2011-11-24 09:22:53','2011-11-24 09:22:53'),(6,'Exhibition',2,'and some notes',1,'2011-11-25','2011-11-30',NULL,NULL,'1',NULL,'2011-11-24 13:16:46','2011-11-24 13:16:46'),(7,'Competition',5,'notes available',NULL,'2012-06-14','2012-06-22',NULL,NULL,'1',NULL,'2012-06-01 08:26:22','2012-06-01 08:26:22'),(8,'Competition',6,'Offers limited till  June 30th',NULL,'2012-06-08','2012-06-30',NULL,NULL,'1',NULL,'2012-06-08 15:01:02','2012-06-08 15:01:02'),(9,'Exhibition',3,'Just for trial',1,'2011-11-25','2011-11-30',NULL,NULL,'1',NULL,'2012-06-15 11:28:56','2012-06-15 11:28:56'),(10,'Exhibition',4,'dfgfdg',1,'2011-11-25','2011-11-30',NULL,NULL,'1',NULL,'2012-06-15 13:22:23','2012-06-15 13:22:23'),(11,'Exhibition',5,'hhgh',1,'2011-11-25','2011-11-30',NULL,NULL,'1',NULL,'2012-06-15 14:50:47','2012-06-15 14:50:47'),(12,'Exhibition',6,'hhgh',1,'2011-11-25','2011-11-30',NULL,NULL,'1',NULL,'2012-06-15 14:51:19','2012-06-15 14:51:19'),(13,'Exhibition',7,'gfdgdgdgdgdgdfg',1,'2011-11-25','2011-11-30',NULL,NULL,NULL,NULL,'2012-06-15 15:08:34','2012-06-15 15:08:34'),(14,'Competition',7,'etwtwtwtwtwtwt',NULL,'2012-06-21','2012-06-30',NULL,NULL,'1',NULL,'2012-06-21 13:16:37','2012-06-21 13:16:37');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups_users`
--

LOCK TABLES `user_groups_users` WRITE;
/*!40000 ALTER TABLE `user_groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroupshows`
--

DROP TABLE IF EXISTS `usergroupshows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroupshows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `groupshow_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroupshows`
--

LOCK TABLES `usergroupshows` WRITE;
/*!40000 ALTER TABLE `usergroupshows` DISABLE KEYS */;
INSERT INTO `usergroupshows` VALUES (1,3,1,'created'),(2,11,2,'validated'),(3,11,1,'validated');
/*!40000 ALTER TABLE `usergroupshows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernamefortests`
--

DROP TABLE IF EXISTS `usernamefortests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernamefortests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernamefortests`
--

LOCK TABLES `usernamefortests` WRITE;
/*!40000 ALTER TABLE `usernamefortests` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernamefortests` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'superadmin','contact1@test.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2011-11-21 20:05:26',NULL,NULL,1,NULL,NULL,'2011-11-21 20:05:26','2011-11-21 20:05:26'),(2,'admin','contact@test.com',NULL,NULL,NULL,NULL,'2012-06-21 18:48:15',NULL,NULL,NULL,NULL,'a2c297302eb67e8f981a0f9bfae0e45e4d0e4317','356a192b7913b04c54574d18c28d46e6395428ab','2011-11-21 20:05:27',NULL,NULL,2,NULL,NULL,'2011-11-21 20:05:27','2012-06-21 13:18:15'),(3,'k.pathakNN2','kedar.pathak@prag.com',NULL,NULL,NULL,NULL,'2012-06-05 18:11:42',NULL,NULL,NULL,NULL,'93fabb170070ba3f2d7182411ea90ab53157b561','d3766a93b1be57a82429faea2e752998c6a2f9fc','2011-11-21 20:20:14','c9434ae5d5266dcccbdc335e29cd9e55ad502aa2',NULL,8,NULL,NULL,'2011-11-21 14:50:14','2012-06-06 07:08:57'),(4,'k.pathakkRAg','pathakorama1@gmail.com1',NULL,NULL,NULL,NULL,'2011-11-24 18:45:09',NULL,NULL,NULL,NULL,'7151fa335edc9df257ce4d37cdbed44181d70552','ee2d5499ecd0248f84ef8e59bdc8162798011759','2011-11-22 13:43:24','af0d37aac44fe0a7775746d53cbce6e96daf28bf',NULL,8,NULL,NULL,'2011-11-22 08:13:24','2011-11-24 13:15:09'),(7,'s.pathakRyX','smith@gmaill.com',NULL,NULL,NULL,NULL,'2011-11-24 18:47:07',NULL,NULL,NULL,NULL,'44506f7c6056a2de34fac61768d3c8bb560b2ef9','36a8910e452d55a58191472391ec6e42fc2491a1','2011-11-24 17:53:16','b43e31a9939b8381db2e58aa7ab3108539d079f6',NULL,8,NULL,NULL,'2011-11-24 12:23:16','2011-11-24 13:17:07'),(8,'s.supermanzn2','pathakorama1@gmail.com',NULL,NULL,NULL,NULL,'2012-06-01 13:56:44',NULL,NULL,NULL,NULL,'17c8260e06b5df8ede5a0ef05c22e65ba459b401','90a27b718381d095877b7f5c984cb342f0b74878','2012-06-01 13:14:53','831e71711e7a002df9c3b85095fba58f82dc1288',NULL,8,NULL,NULL,'2012-06-01 07:44:53','2012-06-01 08:26:44'),(9,'k.joharhRp','karan@gmaill.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0c5664e8bd2a88f36e8c7e6f71dc35f323db041e','90c99f15352f3bac7f9d7d018754bbc235ebcb64','2012-06-01 13:22:13','efad420f7945c7bb696b060f49612d2e57f13195',NULL,8,NULL,NULL,'2012-06-01 07:52:13','2012-06-01 07:52:13'),(10,'k.joharmsb','karan1@gmaill.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ebacd24d461d8abea78276835574af39458f6f3e','759745f02180631835301028d370dd7fc9e1df97','2012-06-01 13:23:49','255c811055ea2f9f49531ff9f173658adf06825a',NULL,8,NULL,NULL,'2012-06-01 07:53:49','2012-06-01 07:53:49'),(11,'v.bhartizTh','vishalbharti.log@gmail.com',NULL,NULL,NULL,NULL,'2012-06-22 12:12:20',NULL,NULL,NULL,NULL,'312fa4d2b646f1c6e67397396b70fa1e3f59f132','8d20c50ee0f3d779daccf784a3d7d33d7440850e','2012-06-06 20:24:58','fda98381c7259e38a7bc0a07e68cda3b87511f29',NULL,8,NULL,NULL,'2012-06-06 14:54:58','2012-06-22 06:42:20'),(12,'j.badgerjLY','joe@test.com',NULL,NULL,NULL,NULL,'2012-06-09 19:34:35',NULL,NULL,NULL,NULL,'d247ea8d30b13d57b4ac0620d3efe8a183aa0034','25630613e3aa64f9a62ed80a26ec4d205fe4069d','2012-06-09 16:42:34','1ea57c446b568522cfde35807de00fb492b1a8d0',NULL,8,NULL,NULL,'2012-06-09 11:12:34','2012-06-09 14:04:35'),(13,'v.bartiSJT','vishal.bharti.log@gmail.com',NULL,NULL,NULL,NULL,'2012-06-14 12:43:15',NULL,NULL,NULL,NULL,'a722ff291e8f5c578a1b341274b6e5f5785797a2','fce3083b2abc5e0a5cf2853548aa6286e52715e8','2012-06-13 19:39:31','a17d7616e83556da21dd11105fb1ed38c88a3327',NULL,8,NULL,NULL,'2012-06-13 14:09:31','2012-06-14 07:13:15'),(14,'v.kumarmLa','vishu.nick@gmail.com',NULL,NULL,NULL,NULL,'2012-06-22 15:00:21',NULL,NULL,NULL,NULL,'5dc6b72ce7830ac988b75d89a5610864517e14a7','282b89995250ae7ee49d31fc46588d7a0739a01c','2012-06-22 12:15:23','67513c61e3e7a7975be1e4ed9d5bb14d237ff091',NULL,8,NULL,NULL,'2012-06-22 06:45:23','2012-06-22 09:30:21'),(15,'h.hkhkhkhlh72q','amitkumar@gmail.com',NULL,NULL,NULL,NULL,'2012-06-22 15:58:10',NULL,NULL,NULL,NULL,'4cc6c67923e6ea0e855c931d4cfb3733b8d93cf8','eb5af79ef3891180251cbb42eca84a3d4cc8fdd4','2012-06-22 15:04:48','205f7d37b20a711b39c556e817f145bc38d6db32',NULL,8,NULL,NULL,'2012-06-22 09:34:48','2012-06-22 10:28:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_containers`
--

LOCK TABLES `users_containers` WRITE;
/*!40000 ALTER TABLE `users_containers` DISABLE KEYS */;
INSERT INTO `users_containers` VALUES (1,1,'Workspace',4,1,'2011-11-21 14:36:10','2011-11-21 14:36:10'),(2,2,'Workspace',4,2,'2011-11-21 14:36:10','2011-11-21 14:36:10'),(3,3,'Workspace',4,2,'2011-11-21 14:37:13','2011-11-21 14:37:13'),(4,4,'Workspace',4,2,'2011-11-21 14:37:25','2011-11-21 14:37:25'),(5,5,'Workspace',11,3,'2011-11-21 14:50:14','2011-11-21 14:50:14'),(6,3,'workspace',1,3,'2011-11-21 14:50:14','2011-11-21 14:50:14'),(7,4,'workspace',1,3,'2011-11-21 14:50:14','2011-11-21 14:50:14'),(8,6,'Workspace',11,4,'2011-11-22 08:13:24','2011-11-22 08:13:24'),(9,3,'workspace',1,4,'2011-11-22 08:13:24','2011-11-22 08:13:24'),(10,4,'workspace',1,4,'2011-11-22 08:13:24','2011-11-22 08:13:24'),(11,7,'Workspace',11,7,'2011-11-24 12:23:17','2011-11-24 12:23:17'),(12,3,'workspace',1,7,'2011-11-24 12:23:17','2011-11-24 12:23:17'),(13,4,'workspace',1,7,'2011-11-24 12:23:17','2011-11-24 12:23:17'),(14,8,'Workspace',11,8,'2012-06-01 07:44:54','2012-06-01 07:44:54'),(15,3,'workspace',1,8,'2012-06-01 07:44:54','2012-06-01 07:44:54'),(16,4,'workspace',1,8,'2012-06-01 07:44:54','2012-06-01 07:44:54'),(17,9,'Workspace',11,9,'2012-06-01 07:52:14','2012-06-01 07:52:14'),(18,3,'workspace',1,9,'2012-06-01 07:52:14','2012-06-01 07:52:14'),(19,4,'workspace',1,9,'2012-06-01 07:52:14','2012-06-01 07:52:14'),(20,10,'Workspace',11,10,'2012-06-01 07:53:49','2012-06-01 07:53:49'),(21,3,'workspace',1,10,'2012-06-01 07:53:49','2012-06-01 07:53:49'),(22,4,'workspace',1,10,'2012-06-01 07:53:49','2012-06-01 07:53:49'),(23,12,'Workspace',6,11,'2012-06-06 14:54:59','2012-06-12 11:46:23'),(24,3,'workspace',1,11,'2012-06-06 14:55:00','2012-06-06 14:55:00'),(25,4,'workspace',1,11,'2012-06-06 14:55:00','2012-06-06 14:55:00'),(26,13,'Workspace',11,12,'2012-06-09 11:12:35','2012-06-09 11:12:35'),(27,3,'workspace',1,12,'2012-06-09 11:12:35','2012-06-09 11:12:35'),(28,4,'workspace',1,12,'2012-06-09 11:12:35','2012-06-09 11:12:35'),(29,14,'Workspace',11,13,'2012-06-13 14:09:33','2012-06-13 14:09:33'),(30,3,'workspace',1,13,'2012-06-13 14:09:33','2012-06-13 14:09:33'),(31,4,'workspace',1,13,'2012-06-13 14:09:33','2012-06-13 14:09:33'),(32,17,'Workspace',11,14,'2012-06-22 06:45:24','2012-06-22 06:45:24'),(33,3,'workspace',1,14,'2012-06-22 06:45:24','2012-06-22 06:45:24'),(34,4,'workspace',1,14,'2012-06-22 06:45:24','2012-06-22 06:45:24'),(35,18,'Workspace',11,15,'2012-06-22 09:34:49','2012-06-22 09:34:49'),(36,3,'workspace',1,15,'2012-06-22 09:34:50','2012-06-22 09:34:50'),(37,4,'workspace',1,15,'2012-06-22 09:34:50','2012-06-22 09:34:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,2,'Consequuntur Facilis','reprehenderit enim consequatur architecto',NULL,NULL,NULL,NULL,NULL,24,76,1,'2010-11-19 15:37:43','2011-11-21 20:06:51',NULL,NULL),(2,2,'Accusantium','non qui mollitia tempora',NULL,NULL,NULL,NULL,NULL,5,68,0,'2011-01-28 04:34:45','2011-11-21 20:06:51',NULL,NULL),(3,1,'Vero','ullam neque voluptas',NULL,NULL,NULL,NULL,NULL,76,91,2,'2011-08-06 17:59:51','2011-11-21 20:06:51',NULL,NULL),(4,1,'Et Sapiente','sit rerum quia repellendus quam',NULL,NULL,NULL,NULL,NULL,90,10,3,'2011-08-25 23:07:47','2011-11-21 20:06:51',NULL,NULL),(5,1,'Aspernatur','iste omnis molestias molestiae',NULL,NULL,NULL,NULL,NULL,46,78,3,'2010-06-19 03:06:35','2011-11-21 20:06:51',NULL,NULL),(6,2,'Illo Autem','quos id consectetur adipisci voluptates',NULL,NULL,NULL,NULL,NULL,52,8,4,'2010-06-19 05:04:17','2011-11-21 20:06:51',NULL,NULL),(7,2,'Qui Voluptatem','suscipit voluptatibus nam et mollitia',NULL,NULL,NULL,NULL,NULL,55,25,4,'2011-11-15 09:12:51','2011-11-21 20:06:51',NULL,NULL),(8,1,'Praesentium Ab','eos sed itaque consectetur praesentium',NULL,NULL,NULL,NULL,NULL,58,39,4,'2011-10-16 20:21:37','2011-11-21 20:06:51',NULL,NULL),(9,1,'Non Consequatur','qui sequi maiores architecto',NULL,NULL,NULL,NULL,NULL,55,31,0,'2010-01-27 09:16:59','2011-11-21 20:06:51',NULL,NULL),(10,2,'Repudiandae Quia Enim','doloremque qui sit aliquid',NULL,NULL,NULL,NULL,NULL,36,87,0,'2010-01-18 15:37:09','2011-11-21 20:06:51',NULL,NULL),(11,2,'Repudiandae Omnis','est aperiam porro',NULL,NULL,NULL,NULL,NULL,68,57,4,'2010-07-28 01:38:06','2011-11-21 20:06:51',NULL,NULL),(12,1,'Enim','perspiciatis nam dolores voluptatum',NULL,NULL,NULL,NULL,NULL,18,58,4,'2011-06-25 09:44:54','2011-11-21 20:06:51',NULL,NULL),(13,2,'Est','non natus ex',NULL,NULL,NULL,NULL,NULL,31,71,0,'2010-04-07 04:06:00','2011-11-21 20:06:51',NULL,NULL),(14,2,'At','qui deleniti omnis impedit voluptas',NULL,NULL,NULL,NULL,NULL,20,25,3,'2011-05-25 17:00:26','2011-11-21 20:06:51',NULL,NULL),(15,1,'Dignissimos Debitis','qui a facilis quia nihil',NULL,NULL,NULL,NULL,NULL,24,29,0,'2010-05-14 05:09:28','2011-11-21 20:06:51',NULL,NULL),(16,2,'Eos','repudiandae deleniti nulla',NULL,NULL,NULL,NULL,NULL,45,9,4,'2010-01-27 18:04:31','2011-11-21 20:06:51',NULL,NULL),(17,2,'Veniam Accusamus Quis','dolorem veritatis blanditiis est aut',NULL,NULL,NULL,NULL,NULL,45,54,1,'2009-12-24 06:26:52','2011-11-21 20:06:51',NULL,NULL),(18,1,'Dolor','quis incidunt dolores maxime id',NULL,NULL,NULL,NULL,NULL,87,97,0,'2011-05-13 02:55:30','2011-11-21 20:06:51',NULL,NULL),(19,1,'Quia','et placeat illo',NULL,NULL,NULL,NULL,NULL,2,36,1,'2011-08-11 11:38:16','2011-11-21 20:06:51',NULL,NULL),(20,1,'Ut Est','ullam consequatur quo',NULL,NULL,NULL,NULL,NULL,97,20,3,'2011-04-30 12:54:09','2011-11-21 20:06:51',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workspaces`
--

LOCK TABLES `workspaces` WRITE;
/*!40000 ALTER TABLE `workspaces` DISABLE KEYS */;
INSERT INTO `workspaces` VALUES (1,1,'Archive for superadmin','Archive for superadmin','private','newsletter,artwork,competition,exhibition,gallery',NULL,NULL,NULL,NULL,'2011-11-21 14:36:09','2011-11-21 14:36:09',NULL),(2,2,'Archive for Devil','Archive for Admin','private','newsletter,artwork,competition,exhibition,gallery',NULL,NULL,NULL,NULL,'2011-11-21 14:36:10','2011-11-21 14:36:10',NULL),(3,2,'Public data','Here are all the data shared by the administrator, the competitions for example.','public','competition,exhibition,gallery,users_group',NULL,NULL,NULL,NULL,'2011-11-21 14:37:13','2011-11-21 14:37:13',NULL),(4,2,'Public data','Here are all the data shared by the administrator, the competitions for example.','public','competition,exhibition,gallery,users_group',NULL,NULL,NULL,NULL,'2011-11-21 14:37:25','2011-11-21 14:37:25',NULL),(5,3,'kedar pathak workspace','Workspace containing all the content created by the user k.pathakNN2','private','artworks',NULL,NULL,NULL,NULL,'2011-11-21 14:50:14','2011-11-21 14:50:14','It is the first workspace for kedar pathak, it is where all his content will always be stock.'),(6,4,'kedarr pathakk workspace','Workspace containing all the content created by the user k.pathakkRAg','private','artworks',NULL,NULL,NULL,NULL,'2011-11-22 08:13:24','2011-11-22 08:13:24','It is the first workspace for kedarr pathakk, it is where all his content will always be stock.'),(7,7,'smith pathak workspace','Workspace containing all the content created by the user s.pathakRyX','private','artworks',NULL,NULL,NULL,NULL,'2011-11-24 12:23:17','2011-11-24 12:23:17','It is the first workspace for smith pathak, it is where all his content will always be stock.'),(8,8,'superfast superman workspace','Workspace containing all the content created by the user s.supermanzn2','private','artworks',NULL,NULL,NULL,NULL,'2012-06-01 07:44:53','2012-06-01 07:44:53','It is the first workspace for superfast superman, it is where all his content will always be stock.'),(9,9,'karan johar workspace','Workspace containing all the content created by the user k.joharhRp','private','artworks',NULL,NULL,NULL,NULL,'2012-06-01 07:52:14','2012-06-01 07:52:14','It is the first workspace for karan johar, it is where all his content will always be stock.'),(10,10,'karan johar workspace','Workspace containing all the content created by the user k.joharmsb','private','artworks',NULL,NULL,NULL,NULL,'2012-06-01 07:53:49','2012-06-01 07:53:49','It is the first workspace for karan johar, it is where all his content will always be stock.'),(11,3,'Archive for kedar pathak','Archive for kedar pathak','profile','newsletter,artwork,competition,exhibition,gallery',NULL,NULL,NULL,NULL,'2012-06-06 07:07:04','2012-06-06 07:07:04','Worksapce containing all the content linked to the contact kedar pathak'),(12,11,'Vishal Bharti workspace','Workspace containing all the content created by the user v.bhartizTh','private','artwork',NULL,NULL,NULL,NULL,'2012-06-06 14:54:59','2012-06-12 11:46:23','<p>\r\n	<img alt=\":P\" src=\"http://localhost:3004/ckeditor/plugins/smiley/images/tounge_smile.gif\" title=\":P\" />It is the first workspace for Vishal Bharti, it is where all his content will always be stock.</p>\r\n'),(13,12,'Joe Badger workspace','Workspace containing all the content created by the user j.badgerjLY','private','artworks',NULL,NULL,NULL,NULL,'2012-06-09 11:12:35','2012-06-09 11:12:35','It is the first workspace for Joe Badger, it is where all his content will always be stock.'),(14,13,'Vishal Barti workspace','Workspace containing all the content created by the user v.bartiSJT','private','artworks',NULL,NULL,NULL,NULL,'2012-06-13 14:09:33','2012-06-13 14:09:33','It is the first workspace for Vishal Barti, it is where all his content will always be stock.'),(15,11,'Archive for Vishal Bharti','Archive for Vishal Bharti','profile','newsletter,artwork,competition,exhibition,gallery',NULL,NULL,NULL,NULL,'2012-06-18 14:11:55','2012-06-18 14:11:55','Worksapce containing all the content linked to the contact Vishal Bharti'),(16,13,'Archive for Vishal Barti','Archive for Vishal Barti','profile','newsletter,artwork,competition,exhibition,gallery',NULL,NULL,NULL,NULL,'2012-06-19 05:38:02','2012-06-19 05:38:02','Worksapce containing all the content linked to the contact Vishal Barti'),(17,14,'Vijender Kumar workspace','Workspace containing all the content created by the user v.kumarmLa','private','artworks',NULL,NULL,NULL,NULL,'2012-06-22 06:45:24','2012-06-22 06:45:24','It is the first workspace for Vijender Kumar, it is where all his content will always be stock.'),(18,15,'hkhkhkhkh hkhkhkhlh workspace','Workspace containing all the content created by the user h.hkhkhkhlh72q','private','artworks',NULL,NULL,NULL,NULL,'2012-06-22 09:34:49','2012-06-22 09:34:49','It is the first workspace for hkhkhkhkh hkhkhkhlh, it is where all his content will always be stock.');
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

-- Dump completed on 2012-06-22 18:09:45
