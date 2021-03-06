-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: dogsbase
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogs` (
  `doq_id` int unsigned NOT NULL,
  `doq_name` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `breeder` int unsigned DEFAULT NULL,
  `owner` int unsigned DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` enum('m','f') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colour` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tattoo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chip` int DEFAULT NULL,
  `health` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`doq_id`),
  UNIQUE KEY `doq_id_UNIQUE` (`doq_id`),
  UNIQUE KEY `doq_name_UNIQUE` (`doq_name`),
  KEY `owner_idx` (`owner`),
  KEY `breeder_idx` (`breeder`),
  CONSTRAINT `breeder` FOREIGN KEY (`breeder`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `owner` FOREIGN KEY (`owner`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` VALUES (4,'at',38,55,'2010-01-11','m','gray','s',6,''),(6,'quasi',56,48,'1978-10-12','f','white','d',2,''),(8,'quisquam',53,40,'1992-02-29','m','white','e',4,''),(12,'quia',45,48,'1981-08-03','m','fuchsia','d',2,''),(13,'quis',55,45,'2001-10-03','f','blue','x',7,''),(15,'adipisci',51,40,'1984-12-04','m','olive','m',4,''),(16,'qui',35,52,'1977-10-29','f','yellow','c',8,''),(19,'eius',59,52,'2019-01-15','f','white','a',5,''),(23,'corrupti',35,38,'1995-09-27','m','olive','i',7,'Odio quis et aut voluptas.'),(24,'nihil',33,53,'1992-07-21','f','aqua','b',4,''),(26,'impedit',34,31,'1989-02-02','m','purple','o',1,''),(30,'distinctio',52,31,'1984-07-12','m','green','k',3,'Aut molestiae numquam ipsum debitis non.'),(34,'et',51,59,'2008-08-10','m','fuchsia','d',6,'Aspernatur repellendus aperiam est.'),(37,'magnam',48,33,'1987-10-01','m','yellow','e',7,'Sequi velit quia expedita explicabo velit ut qui.'),(44,'quae',33,56,'2007-08-25','f','green','r',7,'Ea quisquam doloribus et natus facilis veniam.'),(54,'maiores',59,34,'2020-11-10','m','gray','f',0,''),(56,'repellat',48,48,'2001-11-01','f','maroon','z',5,''),(62,'voluptates',55,59,'2011-08-05','f','green','l',0,'Aperiam aut iure facilis praesentium aut.'),(63,'inventore',58,53,'1989-12-20','m','navy','b',0,'Et incidunt magnam quos nihil perferendis.'),(70,'minima',53,40,'1992-10-17','m','silver','e',2,''),(75,'omnis',48,53,'1992-04-06','f','aqua','b',0,''),(76,'reprehenderit',32,59,'1982-03-20','f','teal','w',3,''),(77,'id',34,40,'2006-09-07','m','black','x',9,''),(78,'velit',45,40,'2011-04-15','f','maroon','c',8,'Saepe laborum qui nobis velit est.'),(79,'vel',39,36,'1970-12-03','f','olive','c',2,''),(80,'alias',45,56,'1994-12-29','m','lime','z',3,'Sit rerum non sequi amet voluptas.'),(82,'ut',34,32,'1995-07-09','m','fuchsia','g',9,'Voluptas quas iusto voluptatum ut.'),(84,'voluptas',39,55,'2009-01-24','f','fuchsia','j',0,'Soluta nobis odio sunt eos aliquam.'),(87,'ab',51,40,'1983-01-29','m','maroon','f',6,''),(88,'explicabo',48,31,'2000-02-16','m','aqua','o',1,'Facere consequatur quos mollitia in.'),(94,'quidem',55,58,'2004-10-07','m','black','q',2,''),(98,'sit',38,38,'1989-04-17','m','navy','s',6,'Perferendis autem incidunt aspernatur quas vitae sequi exercitationem omnis.'),(109,'doloremque',40,31,'1996-07-22','m','yellow','m',8,'Molestiae magnam dolore eos assumenda velit debitis et architecto.'),(113,'non',33,31,'1977-02-03','f','silver','l',8,''),(122,'laboriosam',52,31,'1982-03-19','f','white','e',8,''),(135,'esse',31,38,'2017-06-01','m','olive','h',3,''),(137,'molestiae',55,53,'2005-12-13','f','teal','l',8,''),(139,'blanditiis',58,33,'1987-07-06','m','yellow','c',9,'Suscipit aliquam quia voluptates repellendus ut natus nobis.'),(141,'repellendus',52,40,'1983-07-18','f','green','g',1,''),(142,'quo',51,32,'1994-07-16','m','olive','u',8,'Doloribus praesentium ipsum et.'),(144,'dolorem',31,40,'1994-05-07','m','blue','w',8,''),(148,'dicta',45,36,'1976-08-14','f','lime','r',2,'Dolores ipsa sapiente quia aliquid et.'),(149,'quam',56,53,'2010-09-18','f','yellow','x',3,''),(150,'aut',39,35,'1995-12-27','f','maroon','w',9,'Ut error cupiditate ab nemo accusamus accusantium accusamus eius.'),(151,'architecto',55,38,'1985-10-01','m','navy','l',6,''),(152,'in',55,48,'2006-04-03','m','fuchsia','s',1,''),(153,'aliquam',38,53,'2006-05-08','m','olive','i',1,''),(154,'fugiat',59,45,'2010-12-04','m','gray','r',4,'Quia quisquam est non molestias natus nihil dolorum.'),(157,'assumenda',48,40,'1983-10-01','m','purple','t',8,''),(161,'ipsum',59,56,'2001-01-26','m','aqua','i',9,'Recusandae doloremque maxime libero non mollitia reprehenderit.'),(171,'autem',52,38,'1991-10-23','m','fuchsia','p',7,''),(175,'quos',51,55,'1986-07-17','m','teal','j',9,''),(176,'nisi',32,51,'2004-12-05','m','olive','b',1,'Et reiciendis dolor facere repellendus nulla deserunt enim cumque.'),(178,'earum',45,36,'1974-10-30','f','fuchsia','x',3,'Vel eligendi ullam ipsa distinctio.'),(182,'occaecati',48,34,'2003-03-16','f','purple','i',9,''),(183,'eum',48,40,'2010-04-30','m','silver','t',1,''),(188,'ratione',55,59,'1992-08-19','m','white','q',7,''),(191,'consequatur',31,33,'1971-05-03','f','yellow','u',4,''),(197,'deleniti',39,38,'2008-07-16','m','purple','f',9,''),(198,'numquam',40,53,'1984-10-20','f','olive','m',1,'');
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judges`
--

DROP TABLE IF EXISTS `judges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judges` (
  `judge_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int unsigned NOT NULL,
  PRIMARY KEY (`judge_id`),
  UNIQUE KEY `id_UNIQUE` (`judge_id`),
  KEY `photo_id_idx` (`photo_id`),
  CONSTRAINT `photo_id` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judges`
--

LOCK TABLES `judges` WRITE;
/*!40000 ALTER TABLE `judges` DISABLE KEYS */;
INSERT INTO `judges` VALUES (1,'Mallory Aufderhar','Guernsey','East Brayanstad',21),(2,'Gina Bergstrom II','Belgium','East Monica',4),(3,'Mrs. Susan Buckridge I','Uganda','Adammouth',37),(4,'Queenie Wunsch','Guam','Feilfort',5),(5,'Dr. Ashton Bosco','Burundi','Alanhaven',45),(6,'Berry Muller','Bangladesh','Port Gissellefurt',46),(7,'Mr. Colin Armstrong II','Congo','Sawaynburgh',45),(8,'Terry Mohr','Mauritania','Port Lurlinemouth',16),(9,'Leta Wisozk','Romania','Lake Rickie',2),(10,'Doyle Lowe','Uzbekistan','Klockobury',5);
/*!40000 ALTER TABLE `judges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kennels`
--

DROP TABLE IF EXISTS `kennels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kennels` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int unsigned NOT NULL,
  `city` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tatoo` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `web` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tatoo_UNIQUE` (`tatoo`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `web_UNIQUE` (`web`),
  KEY `ken_owner` (`owner_id`),
  CONSTRAINT `ken_owner` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kennels`
--

LOCK TABLES `kennels` WRITE;
/*!40000 ALTER TABLE `kennels` DISABLE KEYS */;
INSERT INTO `kennels` VALUES (1,'omnis',34,'Sporerland','k','hazel.cummerata@example.org',79732793551,'http://www.kesslerlind.com/',''),(2,'culpa',48,'Carlieshire','a','zola.cruickshank@example.com',79826937667,'http://powlowski.com/',''),(3,'quibusdam',39,'Carolynstad','i','thiel.arne@example.org',79848845060,'http://www.pagacohara.org/',''),(4,'quam',58,'Jenniferville','z','rdoyle@example.org',79752818510,'http://stiedemann.com/',''),(5,'commodi',59,'Smithstad','l','hheidenreich@example.net',79036241489,'http://yundt.org/',''),(6,'nesciunt',40,'Murazikview','q','o\'kon.porter@example.org',79425245118,'http://ruecker.com/',''),(7,'hic',36,'Loganview','e','cfadel@example.org',79072660565,'http://larsondurgan.com/','Sunt cumque architecto exercitationem error nihil. Qui enim exercitationem et et delectus dolorem officia. Non optio omnis rerum laboriosam accusantium molestiae dignissimos. Nobis aut mollitia harum nulla asperiores.'),(8,'rerum',31,'Jaedenmouth','o','franecki.estell@example.com',79027343219,'http://www.reynoldsheaney.org/','Quo similique rerum officiis pariatur placeat. Amet et fuga hic voluptates quia provident neque. Amet officiis dolorum esse expedita.'),(9,'voluptatibus',45,'Port Rozellaton','r','emmerich.linnie@example.com',79451241470,'http://mertz.com/','Sed natus aut voluptas est atque nihil. Harum vero non minima recusandae ut. Deleniti corporis ipsa unde adipisci quis odio quasi. Fugit quasi sit molestiae est rerum.'),(10,'accusantium',45,'Vitaview','p','vallie.lesch@example.com',79521055000,'http://doyle.com/',''),(11,'at',33,'Nicolasmouth','s','issac.lueilwitz@example.com',79646970217,'http://parkersmith.biz/','Et velit in qui ut sapiente. Ut consequatur dignissimos aperiam non aut. Qui nisi aut et atque perspiciatis provident. Nemo maxime minus animi debitis sint corrupti fugit.'),(12,'quos',58,'Anabelburgh','y','jason.maggio@example.com',79759117216,'http://hilll.biz/',''),(13,'quis',35,'East Lucious','b','leffler.daisha@example.com',79429153096,'http://strosin.com/',''),(14,'assumenda',33,'Earnestineshire','v','dianna.vonrueden@example.net',79442122091,'http://www.dubuque.com/',''),(15,'aliquam',52,'North Anselbury','x','tierra.rempel@example.org',79107226922,'http://christiansenpredovic.com/','');
/*!40000 ALTER TABLE `kennels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `size` bigint NOT NULL,
  `file` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '/files/folder/file.jpg\n\n',
  `blob` blob,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `media_user` (`users_id`),
  CONSTRAINT `media_user` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,55,19,NULL,NULL,NULL),(2,35,121597399,NULL,NULL,NULL),(3,59,2,NULL,NULL,NULL),(4,59,927474993,NULL,NULL,NULL),(5,31,787128851,NULL,NULL,NULL),(6,48,29769305,NULL,NULL,NULL),(7,31,3620,NULL,NULL,NULL),(8,52,586,NULL,NULL,NULL),(9,33,6,NULL,NULL,NULL),(10,31,432932,NULL,NULL,NULL),(11,33,24051,NULL,NULL,NULL),(12,45,39406,NULL,NULL,NULL),(13,52,66553991,NULL,NULL,NULL),(14,40,9201,NULL,NULL,NULL),(15,53,849122,NULL,NULL,NULL),(16,34,2,NULL,NULL,NULL),(17,32,0,NULL,NULL,NULL),(18,59,350,NULL,NULL,NULL),(19,32,243,NULL,NULL,NULL),(20,55,658,NULL,NULL,NULL),(21,32,0,NULL,NULL,NULL),(22,32,6592,NULL,NULL,NULL),(23,40,558621902,NULL,NULL,NULL),(24,34,31167,NULL,NULL,NULL),(25,34,977343169,NULL,NULL,NULL),(26,48,354,NULL,NULL,NULL),(27,40,65007,NULL,NULL,NULL),(28,39,42378,NULL,NULL,NULL),(29,56,5704361,NULL,NULL,NULL),(30,38,1213741,NULL,NULL,NULL),(31,52,658,NULL,NULL,NULL),(32,51,480,NULL,NULL,NULL),(33,51,91012,NULL,NULL,NULL),(34,52,9,NULL,NULL,NULL),(35,51,971,NULL,NULL,NULL),(36,52,0,NULL,NULL,NULL),(37,36,24576,NULL,NULL,NULL),(38,52,0,NULL,NULL,NULL),(39,38,0,NULL,NULL,NULL),(40,39,0,NULL,NULL,NULL),(41,52,61,NULL,NULL,NULL),(42,40,0,NULL,NULL,NULL),(43,59,58934925,NULL,NULL,NULL),(44,39,584160203,NULL,NULL,NULL),(45,59,0,NULL,NULL,NULL),(46,53,722,NULL,NULL,NULL),(47,51,85716,NULL,NULL,NULL),(48,31,0,NULL,NULL,NULL),(49,53,117686860,NULL,NULL,NULL),(50,53,68927,NULL,NULL,NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `f_user_id` (`from_users_id`),
  KEY `t_user_id2` (`to_users_id`),
  CONSTRAINT `from_user_id` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `to_user_id` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,40,40,'Ipsam nihil excepturi magnam beatae consequatur dolor. Et sint iste ratione voluptatum vero commodi et. Amet eius ea magni reprehenderit voluptates enim et. Architecto ex sit beatae possimus commodi.','2009-12-31 21:07:14','2006-10-28 03:13:52'),(2,34,32,'Et animi fugiat incidunt delectus occaecati. Labore atque deleniti enim quidem non. Repellat sed velit molestiae id maxime neque qui. Facere ut impedit error.','1972-09-09 16:39:58','1986-02-10 04:13:32'),(3,31,51,'Fugit sit commodi possimus veritatis fuga. Quas omnis ea iusto est et omnis dolores et. Veritatis deleniti animi ut eius. Officiis quis commodi vel eius autem quis id.','1996-06-22 17:10:46','1970-04-19 12:48:17'),(4,55,32,'Nihil et qui nisi laboriosam. Adipisci et nostrum inventore sunt similique nihil sunt animi. Dolor hic architecto autem sed. Corporis eaque sit veritatis sunt dolorum beatae.','1985-01-29 05:54:29','1980-01-16 16:39:10'),(5,34,39,'Et consequatur dolores rerum tempore quaerat voluptas consequatur. Natus sint qui ipsam labore. Incidunt quae libero voluptas distinctio omnis ea numquam harum.','1986-11-08 19:08:45','1995-02-06 12:17:22'),(6,55,59,'Quia sint dolor ea qui. Velit quod alias ducimus quisquam. Id est doloribus distinctio velit reprehenderit perferendis. Iure blanditiis et voluptatem.','1995-04-02 11:15:01','2010-09-01 07:39:32'),(7,31,32,'Quis officia natus assumenda laborum pariatur. Nulla facere autem ad. In sint laborum ab aliquid omnis. Quod quis aperiam possimus voluptate.','1991-11-22 14:44:55','1993-08-05 05:38:45'),(8,40,53,'Ipsam voluptatem quasi voluptates. Sed enim eos voluptatem explicabo. Quae omnis id alias voluptatem autem.','1977-04-26 14:17:06','2020-08-21 20:12:42'),(9,56,40,'Quos veritatis soluta autem dolore. Reprehenderit alias sint iure ut. Consequatur et et dicta qui dolorem nihil minus.','2016-04-18 23:33:23','2014-02-15 01:37:32'),(10,48,53,'Consequatur dolorum totam optio accusantium. Autem voluptas aut nihil ea dolorem recusandae nisi iure. Facere accusamus ut non molestiae. Provident provident nostrum deserunt dolorem.','1997-10-10 13:30:39','1975-05-02 07:09:59'),(11,45,31,'Voluptatem dolores porro ad consectetur aut id. Consectetur in quaerat distinctio unde qui voluptas laudantium. Quasi itaque non officia esse nihil.','2013-05-29 22:53:31','2014-06-09 05:15:09'),(12,38,45,'Consequatur amet velit accusantium rerum. Maxime ut illo qui accusamus totam et.','1971-05-12 10:19:23','1972-05-05 22:13:57'),(13,58,34,'Repellat est eos atque ex nihil ut sed. Quo repudiandae aut et minus. Nihil nihil nisi vitae quas doloribus aut.','2006-05-18 03:04:53','1991-08-16 07:32:27'),(14,32,36,'Aut accusamus unde non ut delectus sit aut. Tempore repudiandae blanditiis voluptatem voluptas fugiat suscipit. Reprehenderit ut recusandae rerum aut dolorum consequuntur id.','1980-04-06 05:30:45','1984-03-26 09:58:36'),(15,36,35,'Dolorem quo ut et voluptatem aut quibusdam earum. Consequatur enim autem ipsam aut voluptates. Distinctio iure labore id eum est. Libero similique ipsam quis repellendus rem veniam quasi est.','1979-04-12 10:34:17','1986-05-19 12:38:11'),(16,40,55,'Quibusdam repudiandae quis minima magnam porro et. Nulla vel autem fuga dolores perspiciatis. Ut necessitatibus dolorem consequuntur qui natus.','2019-07-22 21:23:09','2012-05-20 18:07:23'),(17,52,52,'Impedit quis rerum atque aut iure odio. Fugit amet quia ut. Eos qui est ab accusamus. Saepe voluptates asperiores ea laborum numquam.','1997-06-08 19:51:31','1972-01-24 21:43:00'),(18,58,52,'Id deleniti iusto repellendus sint numquam fuga est. Dolorem vero perferendis corporis dicta dolores nam corrupti. Modi omnis sequi nihil sed.','1979-10-09 17:16:51','2004-08-29 20:53:47'),(19,38,53,'Laboriosam magni aperiam fugiat. Nisi aut dolorem omnis. Est ut similique id.','1998-02-26 08:49:27','1975-11-01 22:14:06'),(20,55,45,'Animi porro praesentium porro eos eum quos aut. Ullam exercitationem molestias optio facere. Nam quis error voluptas inventore et libero.','1983-01-04 11:12:18','1979-04-03 11:45:26'),(21,33,51,'Vel quis qui totam. Velit eum ea modi vel beatae eaque officia. Sit quis iste eos consequatur voluptatum et omnis exercitationem.','1970-03-13 23:06:46','1999-01-31 01:11:20'),(22,40,33,'Libero sint eligendi maiores laborum. Dignissimos qui at qui qui officiis et. Voluptates saepe at aliquam architecto voluptatem et illo.','2016-07-13 16:11:07','1981-06-03 21:19:09'),(23,52,58,'Quam quos non quidem iusto. Inventore sint cum quo perspiciatis dolore. Temporibus non expedita aliquid qui vel hic voluptas. Quis nostrum aut sed qui consectetur fuga sit in.','1972-10-28 12:24:11','1992-06-04 10:50:25'),(24,56,48,'Aut vel non sed dolor. Porro omnis quis architecto voluptatem placeat reiciendis qui. Quam libero amet reprehenderit vitae excepturi occaecati.','1977-11-30 15:55:14','1997-09-15 02:39:48'),(25,38,40,'Et quo quae rem voluptatem. Ab rerum commodi enim aliquid est facilis. Quos ipsa asperiores qui doloribus fuga soluta rerum.','1997-03-02 10:19:44','1991-09-18 15:00:39'),(26,36,58,'Enim fuga repellat aut earum. Laudantium aut in natus quidem incidunt deleniti quo est.','1994-11-15 15:10:22','2010-09-10 03:38:01'),(27,40,52,'Perspiciatis quasi explicabo rerum sequi. Earum est error nihil qui esse ea atque qui. Minima est dicta ut sed nemo tempora ex.','1985-06-18 07:01:13','2008-08-11 04:09:20'),(28,39,39,'Aut autem non magni omnis. Blanditiis sequi amet asperiores quibusdam aut vitae soluta. Magni aliquid perferendis et laboriosam. Harum iure minima repellat cumque eligendi sed quod.','2000-11-22 20:42:48','1992-04-01 08:45:15'),(29,56,45,'Autem blanditiis ratione fuga labore ullam earum quis non. Porro sequi eum velit quod excepturi in. Tempore necessitatibus animi sunt nihil harum molestiae atque.','1981-06-08 04:45:32','2019-12-31 14:06:05'),(30,52,34,'Sed quia cum tempore quas dolorum. Architecto placeat provident non cumque quam sit. Distinctio excepturi debitis aliquam aliquid adipisci sunt. Nam occaecati aspernatur id nobis.','1997-01-04 12:49:24','2005-02-11 04:16:30'),(31,53,33,'Ad illum similique dolor blanditiis magnam velit. Qui cupiditate doloribus qui dolor. Voluptatibus facere minima ullam est magnam. Consequuntur est optio sint labore aut.','1999-04-14 21:28:47','1978-07-19 22:50:49'),(32,31,40,'Accusantium quo quas totam similique esse. Doloribus quia rerum debitis. Dolorem cupiditate eos recusandae commodi quibusdam quis. Earum corrupti qui culpa.','2010-04-23 07:44:13','1992-01-18 00:33:00'),(33,56,58,'Quisquam consequatur aliquam qui aliquid dicta laudantium officiis praesentium. Fugiat dignissimos dolor dolorem et. Repellendus quia voluptatum architecto eos harum accusantium nostrum.','2003-12-16 13:34:54','1983-04-14 18:02:02'),(34,34,34,'Ut qui qui at aliquid aut omnis amet. Asperiores saepe rem aliquam expedita. Aperiam natus eos ab consequatur qui qui dolores. Nobis accusamus velit autem qui eius.','1985-07-28 14:42:08','1992-06-07 11:03:06'),(35,51,31,'Voluptatibus in eaque est optio pariatur distinctio quis. Molestias quasi sed aut soluta et voluptatem et. Quam accusantium eveniet vel. Et animi id minus.','1991-01-20 18:07:06','1971-05-12 07:27:02'),(36,53,53,'Aut rerum blanditiis reprehenderit a excepturi inventore. Sequi officia ex non nisi nulla totam optio.','1987-08-12 07:58:22','2009-12-23 10:46:57'),(37,52,35,'Omnis repellendus voluptatem itaque et rem nisi doloribus. Ea tempora sed autem fugit dolorem officia ut. Quod ipsam et voluptas quaerat minima itaque.','1975-05-17 17:33:55','2008-03-02 00:10:02'),(38,58,39,'Ut quo vel consequatur vitae occaecati dolorum ut quisquam. Enim necessitatibus saepe voluptatem possimus. Rerum non quia qui dignissimos quam qui quidem. In voluptatum et quis ea repellat.','2010-07-10 12:20:54','1985-06-15 16:54:28'),(39,34,55,'Et aspernatur doloribus temporibus delectus. Vel velit laborum nihil placeat. Ea ut non at doloremque nostrum et. Doloribus deserunt nihil expedita est est.','1977-10-17 05:41:28','1974-12-19 03:44:02'),(40,59,48,'Quisquam molestias velit accusamus libero culpa consequatur similique. Debitis cupiditate quia officiis asperiores. Labore dignissimos quo quis eligendi.','1974-08-22 07:37:59','1979-08-20 22:17:36'),(41,35,35,'Id quia quo dolor rerum sunt sapiente. Vel quam tempora sit doloribus dolor et. Voluptas inventore omnis quo dolor nobis et sint. Quo qui eos natus suscipit.','1986-10-05 01:39:56','1986-03-19 11:47:45'),(42,40,52,'Quisquam adipisci non quia quibusdam delectus ut tempore. Rerum rem quam architecto incidunt ducimus ex unde voluptate. Et eaque blanditiis nisi iusto ea. Suscipit soluta eum aut minus et molestias.','1971-10-29 19:50:58','1985-01-17 16:56:01'),(43,59,56,'Quas sit autem dolor. Vel in autem distinctio quam similique quia. Consequatur repellendus autem consectetur laudantium possimus deleniti quia. Voluptates recusandae officia occaecati iusto illo est.','2017-04-02 17:19:04','2008-10-19 17:39:04'),(44,32,56,'Dolores sit dolores totam odit odit voluptatem deserunt. Cupiditate et aut eligendi eos. Est eos ducimus et saepe.','1988-12-31 23:14:13','1986-05-27 01:24:20'),(45,39,55,'Aut neque aspernatur aliquid aut. Minus facere vel facilis dolores. Illo voluptas et qui sit molestiae. Molestias in voluptate quod alias.','1971-12-03 15:37:10','1978-08-18 00:27:01'),(46,31,34,'Explicabo quia quia est. Sed reiciendis ut molestiae vel vel. Sapiente deserunt facilis blanditiis voluptatem tempore eos eligendi.','2003-10-27 08:07:26','2011-12-20 23:40:26'),(47,59,32,'Qui provident quasi voluptas adipisci optio maiores. Enim aspernatur cumque quod maiores tenetur nisi consectetur. Vitae velit quod qui voluptatem est. Cupiditate voluptatum ea voluptas saepe.','2021-02-14 15:23:31','1988-09-02 08:00:01'),(48,51,55,'Impedit aut eos sed non perferendis dolorum distinctio dolore. Ut ad alias voluptatibus et illo temporibus reiciendis. Excepturi voluptatum beatae sed qui nesciunt.','1978-10-06 12:55:51','1986-02-13 09:33:46'),(49,59,56,'Ipsa eaque atque repellat at sint. Sint consequuntur molestiae ut aut quo. Voluptatem non ab est veritatis provident non. Et aut aut impedit voluptates sunt. Veritatis dolores distinctio unde non.','1987-01-24 08:57:34','1997-03-02 15:31:12'),(50,31,51,'Quam iure fugit dolores perferendis. Ab et iusto vitae ipsum. Culpa voluptate alias quis ducimus eius omnis perspiciatis.','2006-05-12 12:54:17','1981-02-19 02:15:55');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedigrees`
--

DROP TABLE IF EXISTS `pedigrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedigrees` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `dog_id` int unsigned NOT NULL,
  `mom_id` int unsigned NOT NULL,
  `dad_id` int unsigned NOT NULL,
  `grandmom_id` int unsigned NOT NULL,
  `granddad_id` int unsigned NOT NULL,
  `ggrandmom_id` int unsigned NOT NULL,
  `ggranddad_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `d_idx` (`dog_id`),
  KEY `2_idx` (`mom_id`),
  KEY `3_idx` (`dad_id`),
  KEY `4_idx` (`grandmom_id`),
  KEY `5_idx` (`granddad_id`),
  KEY `6_idx` (`ggrandmom_id`),
  KEY `7_idx` (`ggranddad_id`),
  CONSTRAINT `1` FOREIGN KEY (`dog_id`) REFERENCES `dogs` (`doq_id`),
  CONSTRAINT `2` FOREIGN KEY (`mom_id`) REFERENCES `dogs` (`doq_id`),
  CONSTRAINT `3` FOREIGN KEY (`dad_id`) REFERENCES `dogs` (`doq_id`),
  CONSTRAINT `4` FOREIGN KEY (`grandmom_id`) REFERENCES `dogs` (`doq_id`),
  CONSTRAINT `5` FOREIGN KEY (`granddad_id`) REFERENCES `dogs` (`doq_id`),
  CONSTRAINT `6` FOREIGN KEY (`ggrandmom_id`) REFERENCES `dogs` (`doq_id`),
  CONSTRAINT `7` FOREIGN KEY (`ggranddad_id`) REFERENCES `dogs` (`doq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedigrees`
--

LOCK TABLES `pedigrees` WRITE;
/*!40000 ALTER TABLE `pedigrees` DISABLE KEYS */;
INSERT INTO `pedigrees` VALUES (1,54,44,197,182,94,150,109),(2,135,137,152,150,109,24,188),(3,149,137,176,150,109,24,188);
/*!40000 ALTER TABLE `pedigrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `users_id` int unsigned NOT NULL,
  `firstname` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`users_id`),
  KEY `media_id` (`photo_id`),
  CONSTRAINT `media_id` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (31,'Jed','Heaney','m','1989-03-25','10309 Abbott Locks\nFadelside, NV 46606-7268','2020-10-14 13:42:38',44),(32,'Marcia','Cartwright','f','2004-06-17','6954 Noemi Squares Apt. 755\nThielstad, AZ 53055','2004-11-21 12:10:51',47),(33,'Paxton','Kunde','f','2005-11-20','89624 Audreanne Pines\nCruzton, IN 16726-7214','1986-05-02 15:31:33',27),(34,'Mervin','Macejkovic','f','1975-06-17','90419 Wilhelmine Port Apt. 860\nKatherineburgh, OH 72543-3505','1972-12-28 22:07:24',44),(36,'Jannie','Leannon','m','2000-02-24','2581 Klein Junction Apt. 102\nWest Orie, ID 93734','1977-03-06 11:15:59',12),(39,'Kenton','Glover','f','1990-10-19','257 Stroman Cliff\nPort Name, IA 64476-5556','1985-09-30 16:12:30',22),(40,'Fabiola','Champlin','m','1997-12-21','802 Joana Brook Apt. 243\nEast Astrid, IA 47768','2015-10-06 09:27:42',30),(48,'Alexandra','Kassulke','f','1986-08-28','5193 Mayert Plains\nNew Donnaside, ME 23350-7066','1987-04-14 00:39:35',27),(51,'Jamie','Gaylord','m','2008-07-24','023 Pfannerstill Square Apt. 183\nNorth Nikolasside, CA 43051','1974-12-24 01:23:59',50),(53,'Alycia','Yost','m','1975-11-14','7237 Veum Cape Apt. 184\nVerlieburgh, AL 80476','2009-09-26 06:01:52',50),(55,'Gonzalo','Mueller','f','2012-02-06','3165 Mellie Greens\nPfannerstillhaven, WI 82547','2012-07-18 14:55:03',39),(56,'Ashtyn','Gutmann','m','1974-12-11','3358 Kavon Bridge\nSchuppeland, TX 88162-9506','2006-05-05 15:02:40',4);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_result`
--

DROP TABLE IF EXISTS `show_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_result` (
  `show_id` int unsigned NOT NULL,
  `dog_id` int unsigned NOT NULL,
  `dog_result` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`show_id`),
  UNIQUE KEY `show_id_UNIQUE` (`show_id`),
  UNIQUE KEY `dog_id_UNIQUE` (`dog_id`),
  CONSTRAINT `dog_id` FOREIGN KEY (`dog_id`) REFERENCES `dogs` (`doq_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `show_id` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_result`
--

LOCK TABLES `show_result` WRITE;
/*!40000 ALTER TABLE `show_result` DISABLE KEYS */;
INSERT INTO `show_result` VALUES (6,6,'dolore'),(11,34,'deleniti'),(17,80,'id'),(21,13,'aspernatur'),(47,15,'quia'),(48,70,'amet');
/*!40000 ALTER TABLE `show_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `id` int unsigned NOT NULL,
  `date` date NOT NULL,
  `country` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rang` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judge_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `judge_idx` (`judge_id`),
  CONSTRAINT `judge` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`judge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (1,'2002-08-17','Saint Lucia','North Naomieview','aliquid',4),(2,'2011-11-10','Zimbabwe','East Columbusport','molestiae',5),(6,'1985-09-24','Somalia','Port Elta','est',8),(11,'2016-06-18','Bangladesh','Torpmouth','cum',5),(12,'1983-08-10','Cocos (Keeling) Islands','Sisterberg','voluptas',6),(14,'2013-06-13','Svalbard & Jan Mayen Islands','Abelardostad','voluptatem',9),(17,'2015-10-02','Argentina','Denesikfort','modi',3),(18,'2006-06-12','Mexico','Leonardoland','odio',5),(21,'2010-05-05','Colombia','Millsport','eum',9),(22,'2013-03-31','Puerto Rico','Lake Buck','omnis',4),(24,'2006-08-03','Namibia','West Rosa','fugiat',7),(25,'2009-04-22','Czech Republic','Rexton','quia',4),(26,'1987-05-18','Canada','East Vivianneburgh','excepturi',4),(31,'1999-01-02','Sierra Leone','Mckenzietown','dolorem',6),(33,'1972-06-05','Central African Republic','Florinefurt','laborum',4),(35,'1971-06-16','Czech Republic','Zboncakside','mollitia',10),(37,'1992-11-01','Tuvalu','South Loyce','quae',8),(46,'1993-05-02','Mali','Trevortown','est',9),(47,'1997-04-01','Heard Island and McDonald Islands','North Anastasia','et',2),(48,'1984-04-17','Georgia','South Libbie','qui',9);
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titles` (
  `dog_id` int unsigned NOT NULL,
  `title_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_rules` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `dog_id_UNIQUE` (`dog_id`),
  CONSTRAINT `dogs` FOREIGN KEY (`dog_id`) REFERENCES `dogs` (`doq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES (6,'ea','Omnis non est qui. Molestiae id odit laudantium. Enim aliquam consequatur in non repudiandae libero quo.'),(34,'voluptate','Dolorum eligendi accusantium nesciunt ipsa facilis sit dolores. Omnis voluptatum nam animi sequi ipsa. Eum omnis ab est voluptatem id ipsam ut.'),(44,'blanditiis','Neque illum fugit voluptas ut. Eos fuga ut quod iure iure est qui qui. Ratione quia accusantium itaque labore aut natus libero autem.'),(75,'ea','Totam eum et laudantium assumenda odit minus mollitia. Sint laudantium laborum modi magni earum animi sunt.'),(77,'optio','Numquam neque sit repellendus ut sit et. Et quaerat maxime ipsum sint omnis. Rerum quo deleniti temporibus quod aut voluptatem. Nobis esse conseq'),(88,'temporibus','Sed dolore excepturi et est voluptatibus. Optio et facilis qui sunt voluptatibus beatae quae. Animi qui sunt tenetur consectetur quas harum.'),(175,'eos','Voluptatem beatae sed voluptatibus totam nihil ut. Illum vero voluptas et. Quia error hic amet debitis quia nostrum.'),(191,'asperiores','Facilis quia consequuntur illum aut nesciunt. Voluptates blanditiis rem blanditiis occaecati exercitationem. Deleniti architecto officia debitis ');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SHA1(''asdasdass''.''saasdasdasd'')',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (31,'hortense.mcglynn@example.com',79000000001,'64ae0cb5207def69e1f8a2704cbb2277'),(32,'xbrown@example.com',79000000002,'62cded859e8eefd5556c0e87a1aec4ec'),(33,'jedediah07@example.com',79000000003,'f71c9bbe661426a0a0f15a615af257fb'),(34,'zcollins@example.org',79000000004,'4269b2333e1691c586ed76b1c20ac4ff'),(35,'taylor.bashirian@example.org',79000000005,'11cd99894204082cea98f98bb871d5ff'),(36,'howe.sebastian@example.com',79000000006,'f3a62851e109b7a28d3ba09e76b04c6b'),(38,'corrine.mann@example.com',79000000007,'056de55387bc8bef79e7834a6f7562aa'),(39,'kraig42@example.com',79000000008,'3543b13a0bf804db8c1f881221184130'),(40,'rory.rogahn@example.net',79000000009,'002009fccffd19cb093d44128037d0fa'),(45,'buckridge.amy@example.net',79000000010,'f00ee98453f1835705e21f2514315b94'),(48,'durgan.brooke@example.com',79000000011,'ee561a50cd96621b255282cb986a0681'),(51,'strosin.may@example.org',79000000012,'da76dd80c7122e990d70a7fb929adcd7'),(52,'kgislason@example.net',79000000013,'186a53abf1037b6d520a25b43308cda2'),(53,'fahey.doris@example.net',79000000014,'721e236f743152e120c78fc5d8fd53fc'),(55,'zechariah54@example.net',79000000015,'0e5f6e2ed95314d1e507dfbe0dca02da'),(56,'brennan47@example.net',79000000016,'c0786cd25028b52e97ff382e6fc52ca3'),(58,'trever79@example.com',79000000017,'3399e37637aeaac9f61f9d4eaf38b9d4'),(59,'jonathon16@example.org',79000000018,'8d29762ddb65d4e7613c501e010ed61f');
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

-- Dump completed on 2021-03-07  0:31:16
