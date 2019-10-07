-- MySQL dump 10.13  Distrib 5.5.34, for Linux (x86_64)
--
-- Host: localhost    Database: o2o
-- ------------------------------------------------------
-- Server version	5.5.34-log

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
-- Table structure for table `tb_area`
--

DROP TABLE IF EXISTS `tb_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_area` (
  `area_id` int(2) NOT NULL AUTO_INCREMENT commont '',
  `area_name` varchar(200) NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  UNIQUE KEY `UK_AREA` (`area_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_area`
--

LOCK TABLES `tb_area` WRITE;
/*!40000 ALTER TABLE `tb_area` DISABLE KEYS */;
INSERT INTO `tb_area` VALUES (2,'涓滆嫅',1,NULL,NULL),(3,'瑗胯嫅',2,NULL,NULL);
/*!40000 ALTER TABLE `tb_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_head_line`
--

DROP TABLE IF EXISTS `tb_head_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_head_line` (
  `line_id` int(100) NOT NULL AUTO_INCREMENT,
  `line_name` varchar(1000) DEFAULT NULL,
  `line_link` varchar(2000) NOT NULL,
  `line_img` varchar(2000) NOT NULL,
  `priority` int(2) DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_head_line`
--

LOCK TABLES `tb_head_line` WRITE;
/*!40000 ALTER TABLE `tb_head_line` DISABLE KEYS */;
INSERT INTO `tb_head_line` VALUES (11,'1','http://115.28.159.6/myo2o/frontend/shopdetail?shopId=20','/upload/images/item/headtitle/2017061320315746624.jpg',1,1,'2017-06-13 20:31:57','2017-06-13 20:31:57'),(12,'2','http://115.28.159.6/myo2o/frontend/shopdetail?shopId=20','/upload/images/item/headtitle/2017061320371786788.jpg',2,1,'2017-06-13 20:37:17','2017-06-13 20:37:17'),(14,'3','http://115.28.159.6/myo2o/frontend/shopdetail?shopId=20','/upload/images/item/headtitle/2017061320393452772.jpg',3,1,'2017-06-13 20:39:34','2017-06-13 20:39:34'),(15,'4','http://115.28.159.6/myo2o/frontend/shopdetail?shopId=20','/upload/images/item/headtitle/2017061320400198256.jpg',4,1,'2017-06-13 20:40:01','2017-06-13 20:40:01');
/*!40000 ALTER TABLE `tb_head_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_local_auth`
--

DROP TABLE IF EXISTS `tb_local_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_local_auth` (
  `local_auth_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`local_auth_id`),
  UNIQUE KEY `uk_local_profile` (`username`),
  KEY `fk_localauth_profile` (`user_id`),
  CONSTRAINT `fk_localauth_profile` FOREIGN KEY (`user_id`) REFERENCES `tb_person_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_local_auth`
--

LOCK TABLES `tb_local_auth` WRITE;
/*!40000 ALTER TABLE `tb_local_auth` DISABLE KEYS */;
INSERT INTO `tb_local_auth` VALUES (13,1,'testbind','59s99bs556bb255by262e26s206e52bs','2017-10-16 03:52:54','2017-10-16 04:22:06');
/*!40000 ALTER TABLE `tb_local_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_person_info`
--

DROP TABLE IF EXISTS `tb_person_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_person_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `profile_img` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0' COMMENT '0:绂佹浣跨敤鏈晢鍩庯紝1:鍏佽浣跨敤鏈晢鍩�',
  `user_type` int(2) NOT NULL DEFAULT '1' COMMENT '1:椤惧锛�2:搴楀锛�3:瓒呯骇绠＄悊鍛�',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_person_info`
--

LOCK TABLES `tb_person_info` WRITE;
/*!40000 ALTER TABLE `tb_person_info` DISABLE KEYS */;
INSERT INTO `tb_person_info` VALUES (1,'娴嬭瘯','test','test','1',1,2,NULL,NULL),(8,'鏉庣繑','http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJmNzyG67YKicCIOXYUKHEC32ZJANTfoaRGVB1MvkW8KagcYfDOic9IicZO5Gibp5QBsLC3p2tLq22quQ/0',NULL,'1',1,1,'2017-10-11 04:28:41',NULL);
/*!40000 ALTER TABLE `tb_person_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(2000) DEFAULT NULL,
  `img_addr` varchar(2000) DEFAULT '',
  `normal_price` varchar(100) DEFAULT NULL,
  `promotion_price` varchar(100) DEFAULT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  `product_category_id` int(11) DEFAULT NULL,
  `shop_id` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `fk_product_procate` (`product_category_id`),
  KEY `fk_product_shop` (`shop_id`),
  CONSTRAINT `fk_product_procate` FOREIGN KEY (`product_category_id`) REFERENCES `tb_product_category` (`product_category_id`),
  CONSTRAINT `fk_product_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` VALUES (1,'澶ч粍浜�','鎴戞槸澶ч粍浜�','upload/images/item/shop/29/2017092601204036435.jpg','2','1',100,'2017-09-26 01:20:40','2017-09-26 01:20:40',1,3,29),(2,'灏忛粍浜�','鎴戞槸灏忛粍浜�','upload/images/item/shop/29/2017092601212211185.jpg','3','2',90,'2017-09-26 01:21:22','2017-09-26 01:21:22',1,2,29),(3,'鏆存极浜�','寮�蹇冧簡','upload/images/item/shop/29/2017092601220059819.jpg','3','2',80,'2017-09-26 01:22:00','2017-09-26 01:22:00',1,3,29),(4,'瀹囧畽绗竴','瀹囧畽鏃犳晫','upload/images/item/shop/29/2017092601224389939.jpg','5','2',70,'2017-09-26 01:22:43','2017-09-26 01:22:43',1,3,29),(5,'鐪煎嚫鍑�','瀹囧畽鏃犳晫','upload/images/item/shop/29/2017092601231570458.jpg','3','2',60,'2017-09-26 01:23:15','2017-09-26 01:23:15',1,3,29),(6,'绗戠湳鐪�','绗戠湳鐪� 鐢滆湝铚�','upload/images/item/shop/29/2017092601234922140.jpg','2','2',50,'2017-09-26 01:23:49','2017-09-26 01:23:49',1,3,29),(7,'浼樿川灏忛粍浜哄ザ鑼�','闈炲父濂藉枬鍝�','/upload/images/item/shop/28/2017100216554368403.jpg','6','3',100,'2017-10-02 16:55:43','2017-10-02 16:55:43',1,4,28),(8,'浼樿川鏆存极濂惰尪','闈炲父濂藉枬鍝�','/upload/images/item/shop/28/2017100216561443475.jpg','6','3',100,'2017-10-02 16:56:14','2017-10-02 16:56:14',1,4,28),(9,'浼樿川澶х櫧濂惰尪','闈炲父濂藉枬鍝�','/upload/images/item/shop/28/2017100216564398563.jpg','6','3',90,'2017-10-02 16:56:43','2017-10-02 16:56:43',1,4,28),(10,'浼樿川浜岀淮鐮佸ザ鑼�','闈炲父濂藉枬鍝�','/upload/images/item/shop/28/2017100216570762900.jpg','5','3',80,'2017-10-02 16:57:07','2017-10-02 16:57:07',1,4,28),(11,'浼樿川浜岀淮鐮佸挅鍟�','闈炲父濂藉枬鍝�','/upload/images/item/shop/28/2017100216573090557.jpg','8','3',60,'2017-10-02 16:57:30','2017-10-02 16:57:30',1,6,28),(12,'浼樿川澶х櫧鍜栧暋','闈炲父濂藉枬鍝�','/upload/images/item/shop/28/2017100216575922088.jpg','8','3',50,'2017-10-02 16:57:59','2017-10-02 16:57:59',1,6,28);
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_category`
--

DROP TABLE IF EXISTS `tb_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product_category` (
  `product_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_category_name` varchar(100) NOT NULL,
  `priority` int(2) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `shop_id` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_category_id`),
  KEY `fk_procate_shop` (`shop_id`),
  CONSTRAINT `fk_procate_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_category`
--

LOCK TABLES `tb_product_category` WRITE;
/*!40000 ALTER TABLE `tb_product_category` DISABLE KEYS */;
INSERT INTO `tb_product_category` VALUES (1,'鐪奸暅绫�',1,NULL,29),(2,'鏃犻暅绫�',2,NULL,29),(3,'寮�蹇冪被',3,NULL,29),(4,'浼樿川濂惰尪',6,NULL,28),(5,'鍔ｈ川濂惰尪',3,NULL,28),(6,'浼樿川鍜栧暋',5,NULL,28),(7,'鍔ｈ川鍜栧暋',2,NULL,28),(8,'鐢滃搧灏忓悆',4,NULL,28),(9,'鑻﹀搧鍑夎尪',4,NULL,28);
/*!40000 ALTER TABLE `tb_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_img`
--

DROP TABLE IF EXISTS `tb_product_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product_img` (
  `product_img_id` int(20) NOT NULL AUTO_INCREMENT,
  `img_addr` varchar(2000) NOT NULL,
  `img_desc` varchar(2000) DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `product_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`product_img_id`),
  KEY `fk_proimg_product` (`product_id`),
  CONSTRAINT `fk_proimg_product` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_img`
--

LOCK TABLES `tb_product_img` WRITE;
/*!40000 ALTER TABLE `tb_product_img` DISABLE KEYS */;
INSERT INTO `tb_product_img` VALUES (1,'upload/images/item/shop/29/2017092601204025128.jpg',NULL,NULL,'2017-09-26 01:20:40',1),(2,'upload/images/item/shop/29/2017092601204051262.jpg',NULL,NULL,'2017-09-26 01:20:40',1),(3,'upload/images/item/shop/29/2017092601212217105.jpg',NULL,NULL,'2017-09-26 01:21:22',2),(4,'upload/images/item/shop/29/2017092601212268219.jpg',NULL,NULL,'2017-09-26 01:21:22',2),(5,'upload/images/item/shop/29/2017092601220074062.jpg',NULL,NULL,'2017-09-26 01:22:00',3),(6,'upload/images/item/shop/29/2017092601220019993.jpg',NULL,NULL,'2017-09-26 01:22:00',3),(7,'upload/images/item/shop/29/2017092601224322685.jpg',NULL,NULL,'2017-09-26 01:22:43',4),(8,'upload/images/item/shop/29/2017092601224353777.jpg',NULL,NULL,'2017-09-26 01:22:43',4),(9,'upload/images/item/shop/29/2017092601231572675.jpg',NULL,NULL,'2017-09-26 01:23:15',5),(10,'upload/images/item/shop/29/2017092601231516853.jpg',NULL,NULL,'2017-09-26 01:23:15',5),(11,'upload/images/item/shop/29/2017092601234987131.jpg',NULL,NULL,'2017-09-26 01:23:49',6),(12,'upload/images/item/shop/29/2017092601234984991.jpg',NULL,NULL,'2017-09-26 01:23:49',6),(13,'/upload/images/item/shop/28/2017100216554379623.jpg',NULL,NULL,'2017-10-02 16:55:43',7),(14,'/upload/images/item/shop/28/2017100216554382464.jpg',NULL,NULL,'2017-10-02 16:55:43',7),(15,'/upload/images/item/shop/28/2017100216554324232.jpg',NULL,NULL,'2017-10-02 16:55:43',7),(16,'/upload/images/item/shop/28/2017100216561440352.jpg',NULL,NULL,'2017-10-02 16:56:14',8),(17,'/upload/images/item/shop/28/2017100216561435083.jpg',NULL,NULL,'2017-10-02 16:56:14',8),(18,'/upload/images/item/shop/28/2017100216561472866.jpg',NULL,NULL,'2017-10-02 16:56:14',8),(19,'/upload/images/item/shop/28/2017100216564440981.jpg',NULL,NULL,'2017-10-02 16:56:44',9),(20,'/upload/images/item/shop/28/2017100216564491563.jpg',NULL,NULL,'2017-10-02 16:56:44',9),(21,'/upload/images/item/shop/28/2017100216564437552.jpg',NULL,NULL,'2017-10-02 16:56:44',9),(22,'/upload/images/item/shop/28/2017100216570748189.jpg',NULL,NULL,'2017-10-02 16:57:07',10),(23,'/upload/images/item/shop/28/2017100216570710458.jpg',NULL,NULL,'2017-10-02 16:57:07',10),(24,'/upload/images/item/shop/28/2017100216570779065.jpg',NULL,NULL,'2017-10-02 16:57:07',10),(25,'/upload/images/item/shop/28/2017100216573094393.jpg',NULL,NULL,'2017-10-02 16:57:30',11),(26,'/upload/images/item/shop/28/2017100216573050300.jpg',NULL,NULL,'2017-10-02 16:57:30',11),(27,'/upload/images/item/shop/28/2017100216573037951.jpg',NULL,NULL,'2017-10-02 16:57:30',11),(28,'/upload/images/item/shop/28/2017100216580055004.jpg',NULL,NULL,'2017-10-02 16:58:00',12),(29,'/upload/images/item/shop/28/2017100216580081030.jpg',NULL,NULL,'2017-10-02 16:58:00',12),(30,'/upload/images/item/shop/28/2017100216580022626.jpg',NULL,NULL,'2017-10-02 16:58:00',12);
/*!40000 ALTER TABLE `tb_product_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_shop`
--

DROP TABLE IF EXISTS `tb_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shop` (
  `shop_id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) NOT NULL COMMENT '搴楅摵鍒涘缓浜�',
  `area_id` int(5) DEFAULT NULL,
  `shop_category_id` int(11) DEFAULT NULL,
  `shop_name` varchar(256) NOT NULL,
  `shop_desc` varchar(1024) DEFAULT NULL,
  `shop_addr` varchar(200) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `shop_img` varchar(1024) DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  `advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `fk_shop_area` (`area_id`),
  KEY `fk_shop_profile` (`owner_id`),
  KEY `fk_shop_shopcate` (`shop_category_id`),
  CONSTRAINT `fk_shop_area` FOREIGN KEY (`area_id`) REFERENCES `tb_area` (`area_id`),
  CONSTRAINT `fk_shop_profile` FOREIGN KEY (`owner_id`) REFERENCES `tb_person_info` (`user_id`),
  CONSTRAINT `fk_shop_shopcate` FOREIGN KEY (`shop_category_id`) REFERENCES `tb_shop_category` (`shop_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shop`
--

LOCK TABLES `tb_shop` WRITE;
/*!40000 ALTER TABLE `tb_shop` DISABLE KEYS */;
INSERT INTO `tb_shop` VALUES (1,1,3,14,'姝ｅ紡搴楅摵鍚嶇О','娴嬭瘯鎻忚堪','姝ｅ紡鍦板潃','13810524086','/upload/item/shop/1/2017091621545314507.jpg',10,'2017-08-03 00:08:32','2017-09-16 21:54:53',0,'瀹℃牳涓�'),(28,1,2,22,'灏忛粍浜轰富棰樺ザ鑼跺簵','涓嶆帴鍙楅璁紝璇风洿鎺ユ潵搴楅噷杩涜娑堣垂','浣嶄簬涓滆嫅2鍙�','13810524086','/upload/images/item/shop/28/2017092601041469991.png',50,'2017-09-26 01:04:13','2017-09-26 01:04:13',1,NULL),(29,1,3,22,'鏆存极濂惰尪搴�','杩囨潵鍠濆枬灏辩煡閬撳暒锛屼綘鏄垜鐨勫ザ鑼�','瑗胯嫅1鍙�','1211334565','/upload/images/item/shop/29/2017092601054939287.jpg',40,'2017-09-26 01:05:49','2017-09-26 01:05:49',1,NULL),(30,1,2,20,'褰摜澶ф帓妗�','鏁㈣涓嶅ソ鍚冨悧','涓滆嫅1鍙�','13628763625','/upload/images/item/shop/30/2017092601063878278.jpg',30,'2017-09-26 01:06:37','2017-09-26 01:06:37',1,NULL),(31,1,2,20,'濞佸摜澶ф帓妗�','骞叉帀褰摜澶ф帓妗�','涓滆嫅鍗楄矾','126554437261','/upload/images/item/shop/31/2017092601072177572.jpg',20,'2017-09-26 01:07:21','2017-09-26 01:07:21',1,NULL),(32,1,2,22,'浣犳槸鎴戠殑濂惰尪','濂惰尪搴楀啀娆℃潵琚�','涓滆嫅鍏矾','13652384615','/upload/images/item/shop/32/2017092601081463136.jpg',10,'2017-09-26 01:08:13','2017-09-26 01:08:13',1,NULL),(35,8,2,22,'濂惰尪鏉ヤ簡','濂惰尪鏉ヤ簡','瑗胯嫅7璺�',NULL,NULL,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `tb_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_shop_category`
--

DROP TABLE IF EXISTS `tb_shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shop_category` (
  `shop_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_category_name` varchar(100) NOT NULL DEFAULT '',
  `shop_category_desc` varchar(1000) DEFAULT '',
  `shop_category_img` varchar(2000) DEFAULT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_category_id`),
  KEY `fk_shop_category_self` (`parent_id`),
  CONSTRAINT `fk_shop_category_self` FOREIGN KEY (`parent_id`) REFERENCES `tb_shop_category` (`shop_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shop_category`
--

LOCK TABLES `tb_shop_category` WRITE;
/*!40000 ALTER TABLE `tb_shop_category` DISABLE KEYS */;
INSERT INTO `tb_shop_category` VALUES (10,'浜屾墜甯傚満','浜屾墜鍟嗗搧浜ゆ槗','/upload/images/item/shopcategory/2017061223272255687.png',100,'2017-06-04 20:10:58','2017-06-12 23:27:22',NULL),(11,'缇庡缇庡彂','缇庡缇庡彂','/upload/images/item/shopcategory/2017061223273314635.png',99,'2017-06-04 20:12:57','2017-06-12 23:27:33',NULL),(12,'缇庨楗搧','缇庨楗搧','/upload/images/item/shopcategory/2017061223274213433.png',98,'2017-06-04 20:15:21','2017-06-12 23:27:42',NULL),(13,'浼戦棽濞变箰','浼戦棽濞变箰','/upload/images/item/shopcategory/2017061223275121460.png',97,'2017-06-04 20:19:29','2017-06-12 23:27:51',NULL),(14,'鏃ц溅','鏃ц溅','/upload/images/item/shopcategory/2017060420315183203.png',80,'2017-06-04 20:31:51','2017-06-04 20:31:51',10),(15,'浜屾墜涔︾睄','浜屾墜涔︾睄','/upload/images/item/shopcategory/2017060420322333745.png',79,'2017-06-04 20:32:23','2017-06-04 20:32:23',10),(17,'鎶ょ悊','鎶ょ悊','/upload/images/item/shopcategory/2017060420372391702.png',76,'2017-06-04 20:37:23','2017-06-04 20:37:23',11),(18,'鐞嗗彂','鐞嗗彂','/upload/images/item/shopcategory/2017060420374775350.png',74,'2017-06-04 20:37:47','2017-06-04 20:37:47',11),(20,'澶ф帓妗�','澶ф帓妗�','/upload/images/item/shopcategory/2017060420460491494.png',59,'2017-06-04 20:46:04','2017-06-04 20:46:04',12),(22,'濂惰尪搴�','濂惰尪搴�','/upload/images/item/shopcategory/2017060420464594520.png',58,'2017-06-04 20:46:45','2017-06-04 20:46:45',12),(24,'瀵嗗閫冪敓','瀵嗗閫冪敓','/upload/images/item/shopcategory/2017060420500783376.png',56,'2017-06-04 20:50:07','2017-06-04 21:45:53',13),(25,'KTV','KTV','/upload/images/item/shopcategory/2017060420505834244.png',57,'2017-06-04 20:50:58','2017-06-04 20:51:14',13),(27,'鍩硅鏁欒偛','鍩硅鏁欒偛','/upload/images/item/shopcategory/2017061223280082147.png',96,'2017-06-04 21:51:36','2017-06-12 23:28:00',NULL),(28,'绉熻祦甯傚満','绉熻祦甯傚満','/upload/images/item/shopcategory/2017061223281361578.png',95,'2017-06-04 21:53:52','2017-06-12 23:28:13',NULL),(29,'绋嬪簭璁捐','绋嬪簭璁捐','/upload/images/item/shopcategory/2017060421593496807.png',50,'2017-06-04 21:59:34','2017-06-04 21:59:34',27),(30,'澹颁箰鑸炶箞','澹颁箰鑸炶箞','/upload/images/item/shopcategory/2017060421595843693.png',49,'2017-06-04 21:59:58','2017-06-04 21:59:58',27),(31,'婕斿嚭閬撳叿','婕斿嚭閬撳叿','/upload/images/item/shopcategory/2017060422114076152.png',45,'2017-06-04 22:11:40','2017-06-04 22:11:40',28),(32,'浜ら�氬伐鍏�','浜ら�氬伐鍏�','/upload/images/item/shopcategory/2017060422121144586.png',44,'2017-06-04 22:12:11','2017-06-04 22:12:11',28),(33,'test1','',NULL,0,NULL,NULL,12),(34,'test2','',NULL,0,NULL,NULL,12),(35,'test3','',NULL,0,NULL,NULL,12);
/*!40000 ALTER TABLE `tb_shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_wechat_auth`
--

DROP TABLE IF EXISTS `tb_wechat_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_wechat_auth` (
  `wechat_auth_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `open_id` varchar(80) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`wechat_auth_id`),
  UNIQUE KEY `open_id` (`open_id`),
  KEY `fk_wechatauth_profile` (`user_id`),
  CONSTRAINT `fk_wechatauth_profile` FOREIGN KEY (`user_id`) REFERENCES `tb_person_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_wechat_auth`
--

LOCK TABLES `tb_wechat_auth` WRITE;
/*!40000 ALTER TABLE `tb_wechat_auth` DISABLE KEYS */;
INSERT INTO `tb_wechat_auth` VALUES (6,8,'ovLbns-gxJHqC-UTPQKvgEuENl-E','2017-10-11 04:28:41');
/*!40000 ALTER TABLE `tb_wechat_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-16 22:22:01
