CREATE DATABASE  IF NOT EXISTS `voiceonline` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `voiceonline`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: voiceonline
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `attribute_master`
--

DROP TABLE IF EXISTS `attribute_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_master` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(150) NOT NULL,
  `is_acive` char(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_master`
--

LOCK TABLES `attribute_master` WRITE;
/*!40000 ALTER TABLE `attribute_master` DISABLE KEYS */;
INSERT INTO `attribute_master` VALUES (1,'Product Dimensions','1',1,'2016-08-24 07:18:40'),(2,'Shipping Weight','1',1,'2016-08-24 07:18:41'),(3,'ASIN','1',1,'2016-08-24 07:18:41'),(4,'Brand','1',1,'2016-08-24 07:18:41'),(5,'Price','1',1,'2016-08-24 07:18:41'),(6,'Size','1',1,'2016-08-24 07:20:19'),(7,'Color','1',1,'2016-08-24 07:20:19');
/*!40000 ALTER TABLE `attribute_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_attribute_map`
--

DROP TABLE IF EXISTS `category_attribute_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_attribute_map` (
  `category_attribute_map_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `is_active` char(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_attribute_map_id`),
  KEY `cat_attrib_cat_id_idx` (`category_id`),
  KEY `cat_attrib_attrib_id_idx` (`attribute_id`),
  CONSTRAINT `cat_attrib_attrib_id` FOREIGN KEY (`attribute_id`) REFERENCES `attribute_master` (`attribute_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cat_attrib_cat_id` FOREIGN KEY (`category_id`) REFERENCES `category_master` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_attribute_map`
--

LOCK TABLES `category_attribute_map` WRITE;
/*!40000 ALTER TABLE `category_attribute_map` DISABLE KEYS */;
INSERT INTO `category_attribute_map` VALUES (1,1,1,'1',1,'2016-08-24 09:59:30'),(2,1,2,'1',1,'2016-08-24 09:59:30'),(3,1,3,'1',1,'2016-08-24 09:59:30'),(4,1,4,'1',1,'2016-08-24 09:59:30'),(5,1,5,'1',1,'2016-08-24 09:59:30'),(6,2,3,'1',1,'2016-08-24 09:59:30'),(7,2,4,'1',1,'2016-08-24 09:59:30'),(8,2,5,'1',1,'2016-08-24 09:59:30'),(9,2,6,'1',1,'2016-08-24 09:59:30'),(10,2,7,'1',1,'2016-08-24 09:59:30');
/*!40000 ALTER TABLE `category_attribute_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_master`
--

DROP TABLE IF EXISTS `category_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_master` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(400) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_master`
--

LOCK TABLES `category_master` WRITE;
/*!40000 ALTER TABLE `category_master` DISABLE KEYS */;
INSERT INTO `category_master` VALUES (1,'Clothing','1',1,'2016-08-24 06:42:25'),(2,'Shoes','1',1,'2016-08-24 06:42:25'),(3,'Cell Phones','1',1,'2016-08-24 06:42:25'),(4,'Laptops','1',1,'2016-08-24 06:42:25');
/*!40000 ALTER TABLE `category_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product_attrib_map`
--

DROP TABLE IF EXISTS `category_product_attrib_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_product_attrib_map` (
  `category_product_attrib_map_id` int(11) NOT NULL,
  `category_product_map_id` int(11) NOT NULL,
  `category_attrib_map_id` int(11) NOT NULL,
  `attrib_value` varchar(2000) NOT NULL DEFAULT '',
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_product_attrib_map_id`),
  KEY `cat_prod_id_idx` (`category_product_map_id`),
  KEY `cat_attrib_id_idx` (`category_attrib_map_id`),
  CONSTRAINT `cat_attrib_id` FOREIGN KEY (`category_attrib_map_id`) REFERENCES `category_attribute_map` (`category_attribute_map_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cat_prod_id` FOREIGN KEY (`category_product_map_id`) REFERENCES `category_product_map` (`category_product_map_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product_attrib_map`
--

LOCK TABLES `category_product_attrib_map` WRITE;
/*!40000 ALTER TABLE `category_product_attrib_map` DISABLE KEYS */;
INSERT INTO `category_product_attrib_map` VALUES (1,1,1,'12 x 10 x 1 inches','1',1,'2016-08-24 10:35:58'),(2,1,2,'5 ounces','1',1,'2016-08-24 10:35:59'),(3,1,3,'B00E9E1CBY','1',1,'2016-08-24 10:35:59'),(4,1,4,'Bioworld','1',1,'2016-08-24 10:35:59'),(5,1,5,'250','1',1,'2016-08-24 10:35:59'),(6,2,1,'12 x 10 x 1 inches','1',1,'2016-08-24 10:38:12'),(7,2,2,'5 ounces','1',1,'2016-08-24 10:38:12'),(8,2,3,'B01G52A9AC','1',1,'2016-08-24 10:38:12'),(9,2,4,'Bioworld','1',1,'2016-08-24 10:38:12'),(10,2,5,'300','1',1,'2016-08-24 10:38:12'),(11,3,6,'B01D6R0OUE','1',1,'2016-08-24 10:45:57'),(12,3,7,'Hipster','1',1,'2016-08-24 10:45:57'),(13,3,8,'1245','1',1,'2016-08-24 10:45:57'),(14,3,9,'8 D','1',1,'2016-08-24 10:45:57'),(15,3,10,'Navy','1',1,'2016-08-24 10:45:57'),(16,4,6,'B010TQ65IA','1',1,'2016-08-24 10:45:57'),(17,4,7,'Saucony','1',1,'2016-08-24 10:45:57'),(18,4,8,'1100','1',1,'2016-08-24 10:45:57'),(19,4,9,'7 D','1',1,'2016-08-24 10:45:57'),(20,4,10,'Grey/Black/Royal','1',1,'2016-08-24 10:45:57');
/*!40000 ALTER TABLE `category_product_attrib_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product_map`
--

DROP TABLE IF EXISTS `category_product_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_product_map` (
  `category_product_map_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_active` char(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_product_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product_map`
--

LOCK TABLES `category_product_map` WRITE;
/*!40000 ALTER TABLE `category_product_map` DISABLE KEYS */;
INSERT INTO `category_product_map` VALUES (1,1,1,'1',1,'2016-08-24 09:55:31'),(2,1,2,'1',1,'2016-08-24 09:55:31'),(3,2,3,'1',1,'2016-08-24 09:55:31'),(4,2,4,'1',1,'2016-08-24 09:55:31');
/*!40000 ALTER TABLE `category_product_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_master`
--

DROP TABLE IF EXISTS `product_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_master` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(500) NOT NULL,
  `description` longtext,
  `is_active` char(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_master`
--

LOCK TABLES `product_master` WRITE;
/*!40000 ALTER TABLE `product_master` DISABLE KEYS */;
INSERT INTO `product_master` VALUES (1,'California Republic Palm Men\'s T-Shirt - Turquoise','Nowhere else on the internet can you find such a wide variety of t shirts at such an affordable price! We have the largest selection of California Republic clothing and funny shirts for you to choose from. All of our t-shirts are made with 100% cotton, extremely comfy to wear, and are guaranteed to last. Wear your shirt with pride!','1',1,'2016-08-24 07:04:18'),(2,'Superman Logo Shield Heathered Navy T-Shirt','Finch-C T-shirts Made Of 100 Percent Cotton With A Super Soft Hand Feel.','1',1,'2016-08-24 07:05:28'),(3,'Hipster Mens Solid Skate Shoe','The Hipster brand started out of a love for independent fashion, open attitudes and the appreciation for all things unique. The Hipster brand brings you a finely curated assortment of vintage-inspired clothing, shoes and backpacks right to your door! Come and get yours today, you wont be disappointed!','1',1,'2016-08-24 07:19:23'),(4,'Saucony Men\'s Cohesion 9 Running Shoe','The very popular cohesion keeps people on the move with excellent cushioning and flexibility for a solid, comfortable run.','1',1,'2016-08-24 07:21:03');
/*!40000 ALTER TABLE `product_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-24 16:52:19
