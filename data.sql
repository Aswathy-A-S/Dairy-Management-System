-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(24) DEFAULT NULL,
  `name` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_distributor','Can add distributor'),(26,7,'change_distributor','Can change distributor'),(27,7,'delete_distributor','Can delete distributor'),(28,7,'view_distributor','Can view distributor'),(29,8,'add_customer','Can add customer'),(30,8,'change_customer','Can change customer'),(31,8,'delete_customer','Can delete customer'),(32,8,'view_customer','Can view customer'),(33,9,'add_distributionarea','Can add distributionarea'),(34,9,'change_distributionarea','Can change distributionarea'),(35,9,'delete_distributionarea','Can delete distributionarea'),(36,9,'view_distributionarea','Can view distributionarea'),(37,10,'add_farmeraddcategory','Can add farmeraddcategory'),(38,10,'change_farmeraddcategory','Can change farmeraddcategory'),(39,10,'delete_farmeraddcategory','Can delete farmeraddcategory'),(40,10,'view_farmeraddcategory','Can view farmeraddcategory'),(41,11,'add_farmeraddproduct','Can add farmeraddproduct'),(42,11,'change_farmeraddproduct','Can change farmeraddproduct'),(43,11,'delete_farmeraddproduct','Can delete farmeraddproduct'),(44,11,'view_farmeraddproduct','Can view farmeraddproduct'),(45,12,'add_login','Can add login'),(46,12,'change_login','Can change login'),(47,12,'delete_login','Can delete login'),(48,12,'view_login','Can view login'),(49,13,'add_paymentform','Can add paymentform'),(50,13,'change_paymentform','Can change paymentform'),(51,13,'delete_paymentform','Can delete paymentform'),(52,13,'view_paymentform','Can view paymentform'),(53,14,'add_sendcomplaints','Can add sendcomplaints'),(54,14,'change_sendcomplaints','Can change sendcomplaints'),(55,14,'delete_sendcomplaints','Can delete sendcomplaints'),(56,14,'view_sendcomplaints','Can view sendcomplaints'),(57,15,'add_subscriptionplan','Can add subscriptionplan'),(58,15,'change_subscriptionplan','Can change subscriptionplan'),(59,15,'delete_subscriptionplan','Can delete subscriptionplan'),(60,15,'view_subscriptionplan','Can view subscriptionplan'),(61,16,'add_farmer','Can add farmer'),(62,16,'change_farmer','Can change farmer'),(63,16,'delete_farmer','Can delete farmer'),(64,16,'view_farmer','Can view farmer'),(65,17,'add_sendreply','Can add send reply'),(66,17,'change_sendreply','Can change send reply'),(67,17,'delete_sendreply','Can delete send reply'),(68,17,'view_sendreply','Can view send reply'),(69,18,'add_booksubcription','Can add booksubcription'),(70,18,'change_booksubcription','Can change booksubcription'),(71,18,'delete_booksubcription','Can delete booksubcription'),(72,18,'view_booksubcription','Can view booksubcription'),(73,19,'add_productorder','Can add productorder'),(74,19,'change_productorder','Can change productorder'),(75,19,'delete_productorder','Can delete productorder'),(76,19,'view_productorder','Can view productorder'),(77,20,'add_adminaddproduct','Can add adminaddproduct'),(78,20,'change_adminaddproduct','Can change adminaddproduct'),(79,20,'delete_adminaddproduct','Can delete adminaddproduct'),(80,20,'view_adminaddproduct','Can view adminaddproduct');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(0) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(8) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(18) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$nBXlcNySpA83HGo1bYeV5z$LA60WZzxiries+bhFfoC1tSvvcDZFH7k/yNOkpXBWSU=','',1,'admin','','',1,1,'2023-02-23',''),(2,'pbkdf2_sha256$390000$pumIcgcC5kP8VyEDrL0Rri$mu7HtWLUy7WSEUwjb+rOU1pH81uTgt5ryxtmBK75LOw=','',1,'admin123','','admin123@gmail.com',1,1,'2023-02-27',''),(3,'pbkdf2_sha256$390000$STlZCLTDqdUuLJasOpp91i$V4+FTBdZnfzEYHue1kA7uPuSU6wNNxd52ajrMHE7YzA=','',1,'adm','','',1,1,'2023-02-27','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_adminaddproduct`
--

DROP TABLE IF EXISTS `diaryapp_adminaddproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_adminaddproduct` (
  `id` tinyint(4) DEFAULT NULL,
  `fpdtname` varchar(24) DEFAULT NULL,
  `fpdtdesc` varchar(32) DEFAULT NULL,
  `productprice` varchar(6) DEFAULT NULL,
  `fpdtqty` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_adminaddproduct`
--

LOCK TABLES `diaryapp_adminaddproduct` WRITE;
/*!40000 ALTER TABLE `diaryapp_adminaddproduct` DISABLE KEYS */;
INSERT INTO `diaryapp_adminaddproduct` VALUES (1,'Cocomama Coconut Milk','Diary Free, For Cooking & Baking','76.98','250'),(2,'Pasteurized Table Butter','Creamy and delicious','244.00','500'),(3,'','','','');
/*!40000 ALTER TABLE `diaryapp_adminaddproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_booksubcription`
--

DROP TABLE IF EXISTS `diaryapp_booksubcription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_booksubcription` (
  `id` tinyint(4) DEFAULT NULL,
  `Customerid` tinyint(4) DEFAULT NULL,
  `subplan` varchar(17) DEFAULT NULL,
  `duration` tinyint(4) DEFAULT NULL,
  `amount` smallint(6) DEFAULT NULL,
  `planid` tinyint(4) DEFAULT NULL,
  `payment` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_booksubcription`
--

LOCK TABLES `diaryapp_booksubcription` WRITE;
/*!40000 ALTER TABLE `diaryapp_booksubcription` DISABLE KEYS */;
INSERT INTO `diaryapp_booksubcription` VALUES (45,5,'Milk Subscription',14,700,5,'paid'),(46,5,'Milk Subscription',14,700,5,'paid'),(47,5,'Milk Subscription',14,700,5,'paid'),(48,5,'Milk Subscription',14,700,5,'paid'),(93,5,'Milk Subscription',14,700,5,'paid');
/*!40000 ALTER TABLE `diaryapp_booksubcription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_customer`
--

DROP TABLE IF EXISTS `diaryapp_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_customer` (
  `id` tinyint(4) DEFAULT NULL,
  `cname` varchar(7) DEFAULT NULL,
  `cphone` bigint(20) DEFAULT NULL,
  `cemail` varchar(27) DEFAULT NULL,
  `caddress` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_customer`
--

LOCK TABLES `diaryapp_customer` WRITE;
/*!40000 ALTER TABLE `diaryapp_customer` DISABLE KEYS */;
INSERT INTO `diaryapp_customer` VALUES (1,'arjun',1157633933,'arjun@gmail.com','arjuns villa'),(3,'Meenu',1157633933,'meenupro@gmail.com','Vytila'),(4,'Arya',-1079817600,'arya@gmail.com',''),(5,'vineeth',-681951105,'vineethrytnix1218@gmail.com','JNL Stadium'),(6,'test',-1742251944,'test@gmail.com','kaloor'),(7,'test1',1251600543,'test1@gmail.com','kaloor');
/*!40000 ALTER TABLE `diaryapp_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_distributionarea`
--

DROP TABLE IF EXISTS `diaryapp_distributionarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_distributionarea` (
  `id` tinyint(4) DEFAULT NULL,
  `darea` varchar(9) DEFAULT NULL,
  `dshopno` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_distributionarea`
--

LOCK TABLES `diaryapp_distributionarea` WRITE;
/*!40000 ALTER TABLE `diaryapp_distributionarea` DISABLE KEYS */;
INSERT INTO `diaryapp_distributionarea` VALUES (1,'Kaloor',20),(2,'ernakulam',722);
/*!40000 ALTER TABLE `diaryapp_distributionarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_distributor`
--

DROP TABLE IF EXISTS `diaryapp_distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_distributor` (
  `id` tinyint(4) DEFAULT NULL,
  `daddress` varchar(12) DEFAULT NULL,
  `demail` varchar(17) DEFAULT NULL,
  `dname` varchar(7) DEFAULT NULL,
  `dphone` bigint(20) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_distributor`
--

LOCK TABLES `diaryapp_distributor` WRITE;
/*!40000 ALTER TABLE `diaryapp_distributor` DISABLE KEYS */;
INSERT INTO `diaryapp_distributor` VALUES (5,'Aswin Villa','aswin@gmail.com','Aswin',1398854364,'approved'),(6,'Athul Villa','athul@gmail.com','Athul',1155697560,'approved'),(7,'Biju\'s Villa','biju@gmail.com','Biju',94657412,'approved'),(8,'Manu\'s Villa','manu@gmail.com','Manu',1155697560,'rejected'),(9,'Aji Villa','aji@gmail.com','Aji',1149876827,'requested'),(10,'Golden Hills','sumayya@gmail.com','Sumayya',-1132971353,'approved');
/*!40000 ALTER TABLE `diaryapp_distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_farmer`
--

DROP TABLE IF EXISTS `diaryapp_farmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_farmer` (
  `id` tinyint(4) DEFAULT NULL,
  `fname` varchar(4) DEFAULT NULL,
  `fphone` bigint(20) DEFAULT NULL,
  `femail` varchar(14) DEFAULT NULL,
  `faddress` varchar(12) DEFAULT NULL,
  `status` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_farmer`
--

LOCK TABLES `diaryapp_farmer` WRITE;
/*!40000 ALTER TABLE `diaryapp_farmer` DISABLE KEYS */;
INSERT INTO `diaryapp_farmer` VALUES (3,'Manu',1234567890,'manu@gmail.com','Manu\'s Villa','');
/*!40000 ALTER TABLE `diaryapp_farmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_farmeraddcategory`
--

DROP TABLE IF EXISTS `diaryapp_farmeraddcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_farmeraddcategory` (
  `id` tinyint(4) DEFAULT NULL,
  `fcategoryname` varchar(6) DEFAULT NULL,
  `image` varchar(18) DEFAULT NULL,
  `stock` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_farmeraddcategory`
--

LOCK TABLES `diaryapp_farmeraddcategory` WRITE;
/*!40000 ALTER TABLE `diaryapp_farmeraddcategory` DISABLE KEYS */;
INSERT INTO `diaryapp_farmeraddcategory` VALUES (5,'yogurt','yogurt.webp',35),(7,'Cheese','cheese_W94nNgF.jpg',35);
/*!40000 ALTER TABLE `diaryapp_farmeraddcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_login`
--

DROP TABLE IF EXISTS `diaryapp_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_login` (
  `id` tinyint(4) DEFAULT NULL,
  `uname` varchar(27) DEFAULT NULL,
  `password` varchar(9) DEFAULT NULL,
  `usertype` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_login`
--

LOCK TABLES `diaryapp_login` WRITE;
/*!40000 ALTER TABLE `diaryapp_login` DISABLE KEYS */;
INSERT INTO `diaryapp_login` VALUES (1,'admin@gmail.com','admin','admin'),(2,'arjun@gmail.com','arjun123','customer'),(3,'meenupro@gmail.com','meenu123','customer'),(7,'manu@gmail.com','manu123','farmer'),(9,'midhun@gmail.com','midhun123','distributor'),(10,'aswin@gmail.com','aswin123','distributor'),(11,'athul@gmail.com','athul123','distributor'),(12,'biju@gmail.com','biju123','distributor'),(13,'manu@gmail.com','manu234','distributor'),(14,'aji@gmail.com','aji123','distributor'),(15,'arya@gmail.com','','customer'),(16,'sumayya@gmail.com','sum123','distributor'),(17,'vineethrytnix1218@gmail.com','123','customer'),(18,'test@gmail.com','123','customer'),(19,'test1@gmail.com','123','customer');
/*!40000 ALTER TABLE `diaryapp_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_paymentform`
--

DROP TABLE IF EXISTS `diaryapp_paymentform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_paymentform` (
  `id` tinyint(4) DEFAULT NULL,
  `pname` varchar(6) DEFAULT NULL,
  `pcardnumber` bigint(20) DEFAULT NULL,
  `pbillingaddress` varchar(6) DEFAULT NULL,
  `pcvv` smallint(6) DEFAULT NULL,
  `pmonth` tinyint(4) DEFAULT NULL,
  `pyear` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_paymentform`
--

LOCK TABLES `diaryapp_paymentform` WRITE;
/*!40000 ALTER TABLE `diaryapp_paymentform` DISABLE KEYS */;
INSERT INTO `diaryapp_paymentform` VALUES (1,'Midhun',1463055577,'kaloor',321,12,2022);
/*!40000 ALTER TABLE `diaryapp_paymentform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_productorder`
--

DROP TABLE IF EXISTS `diaryapp_productorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_productorder` (
  `id` tinyint(4) DEFAULT NULL,
  `pname` varchar(21) DEFAULT NULL,
  `username` varchar(7) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `amount` decimal(5,2) DEFAULT NULL,
  `payment` varchar(7) DEFAULT NULL,
  `pid` tinyint(4) DEFAULT NULL,
  `uid` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_productorder`
--

LOCK TABLES `diaryapp_productorder` WRITE;
/*!40000 ALTER TABLE `diaryapp_productorder` DISABLE KEYS */;
INSERT INTO `diaryapp_productorder` VALUES (23,'Cocomama Coconut Milk','vineeth',12,923.76,'pending',1,5);
/*!40000 ALTER TABLE `diaryapp_productorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_sendcomplaints`
--

DROP TABLE IF EXISTS `diaryapp_sendcomplaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_sendcomplaints` (
  `id` tinyint(4) DEFAULT NULL,
  `subject` varchar(12) DEFAULT NULL,
  `message` varchar(7) DEFAULT NULL,
  `reply` varchar(21) DEFAULT NULL,
  `uid_id` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_sendcomplaints`
--

LOCK TABLES `diaryapp_sendcomplaints` WRITE;
/*!40000 ALTER TABLE `diaryapp_sendcomplaints` DISABLE KEYS */;
INSERT INTO `diaryapp_sendcomplaints` VALUES (1,'error','hdh','Let you know\r\n',''),(2,'error','Error','Will Contact you soon','1'),(3,'Syntax Error','Error\r\n','Code nokki adikkeda\r\n','1');
/*!40000 ALTER TABLE `diaryapp_sendcomplaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaryapp_subscriptionplan`
--

DROP TABLE IF EXISTS `diaryapp_subscriptionplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaryapp_subscriptionplan` (
  `id` tinyint(4) DEFAULT NULL,
  `subname` varchar(17) DEFAULT NULL,
  `planprice` smallint(6) DEFAULT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `time` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaryapp_subscriptionplan`
--

LOCK TABLES `diaryapp_subscriptionplan` WRITE;
/*!40000 ALTER TABLE `diaryapp_subscriptionplan` DISABLE KEYS */;
INSERT INTO `diaryapp_subscriptionplan` VALUES (4,'Milk Subscription',1500,750,30),(5,'Milk Subscription',700,750,14),(6,'Milk Subscription',420,750,7);
/*!40000 ALTER TABLE `diaryapp_subscriptionplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` varchar(0) DEFAULT NULL,
  `action_time` varchar(0) DEFAULT NULL,
  `object_id` varchar(0) DEFAULT NULL,
  `object_repr` varchar(0) DEFAULT NULL,
  `change_message` varchar(0) DEFAULT NULL,
  `content_type_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `action_flag` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(20,'diaryapp','adminaddproduct'),(18,'diaryapp','booksubcription'),(8,'diaryapp','customer'),(9,'diaryapp','distributionarea'),(7,'diaryapp','distributor'),(16,'diaryapp','farmer'),(10,'diaryapp','farmeraddcategory'),(11,'diaryapp','farmeraddproduct'),(12,'diaryapp','login'),(13,'diaryapp','paymentform'),(19,'diaryapp','productorder'),(14,'diaryapp','sendcomplaints'),(17,'diaryapp','sendreply'),(15,'diaryapp','subscriptionplan'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(57) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-07-13'),(2,'auth','0001_initial','2022-07-13'),(3,'admin','0001_initial','2022-07-13'),(4,'admin','0002_logentry_remove_auto_add','2022-07-13'),(5,'admin','0003_logentry_add_action_flag_choices','2022-07-13'),(6,'contenttypes','0002_remove_content_type_name','2022-07-13'),(7,'auth','0002_alter_permission_name_max_length','2022-07-13'),(8,'auth','0003_alter_user_email_max_length','2022-07-13'),(9,'auth','0004_alter_user_username_opts','2022-07-13'),(10,'auth','0005_alter_user_last_login_null','2022-07-13'),(11,'auth','0006_require_contenttypes_0002','2022-07-13'),(12,'auth','0007_alter_validators_add_error_messages','2022-07-13'),(13,'auth','0008_alter_user_username_max_length','2022-07-13'),(14,'auth','0009_alter_user_last_name_max_length','2022-07-13'),(15,'auth','0010_alter_group_name_max_length','2022-07-13'),(16,'auth','0011_update_proxy_permissions','2022-07-13'),(17,'auth','0012_alter_user_first_name_max_length','2022-07-13'),(18,'sessions','0001_initial','2022-07-13'),(19,'diaryapp','0001_initial','2022-07-14'),(20,'diaryapp','0002_rename_address_distributor_daddress_and_more','2022-07-14'),(21,'diaryapp','0003_customer_distributionarea_farmeraddcategory_and_more','2022-07-14'),(22,'diaryapp','0004_subscriptionplan_farmeraddproduct_fpdtcode_and_more','2022-07-14'),(23,'diaryapp','0005_alter_farmeraddproduct_fpdtqty','2022-07-15'),(24,'diaryapp','0006_farmer_alter_farmeraddproduct_fpdtcode','2022-07-18'),(25,'diaryapp','0007_distributor_status','2022-07-18'),(26,'diaryapp','0008_farmer_status','2022-07-18'),(27,'diaryapp','0009_farmeraddproduct_fid','2022-07-21'),(28,'diaryapp','0010_sendreply','2022-07-23'),(29,'diaryapp','0011_delete_sendreply_sendcomplaints_reply_and_more','2022-07-26'),(30,'diaryapp','0012_subscriptionplan_quantity_subscriptionplan_time','2023-02-21'),(31,'diaryapp','0013_farmeraddcategory_image','2023-02-23'),(32,'diaryapp','0014_booksubcription','2023-02-24'),(33,'diaryapp','0015_booksubcription_planid','2023-02-25'),(34,'diaryapp','0016_productorder_alter_booksubcription_payment','2023-02-27'),(35,'diaryapp','0017_adminaddproduct_delete_farmeraddproduct','2023-02-27'),(36,'diaryapp','0018_remove_adminaddproduct_fid','2023-02-27'),(37,'diaryapp','0019_adminaddproduct_fid','2023-02-27'),(38,'diaryapp','0020_rename_adminaddproduct_farmeraddproduct','2023-02-27'),(39,'diaryapp','0021_rename_farmeraddproduct_adminaddproduct','2023-02-27'),(40,'diaryapp','0022_remove_adminaddproduct_fid','2023-02-27'),(41,'diaryapp','0023_alter_productorder_payment','2023-02-27'),(42,'diaryapp','0024_productorder_pid','2023-02-27'),(43,'diaryapp','0025_productorder_uid','2023-02-28'),(44,'diaryapp','0026_farmeraddcategory_stock','2023-02-28');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(74) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('rjvewtr8oaoo9xht35dskp4ra7smp6qr','eyJmaWQiOjMsInVpZCI6MX0:1oH4PM:UAdkLwdKPkdMYrlg9tHlT1vaWHpwcRNZaiBHB-KFeYQ','2022-08-11'),('ez92caf0ptc2tc0jboand60rkr9t6w4o','eyJ1aWQiOjF9:1oIOpN:U9aPa-OJLR3FYNMjoyRchD_NZxbayncNm0jQr8WfuS4','2022-08-15'),('pkoncnzhbg8kzpzt7739gadw668v2vr4','eyJ1aWQiOjEsImZpZCI6M30:1pTzBC:xlDg2K9CM5WQChuOVLO77ShqIMoxCX4aM0GhMBQ4EuE','2023-03-06'),('ufwh2cd5ommlsnkg5q1p8sbw3xyrlha3','eyJ1aWQiOjV9:1pV3U9:j5YzFAeyYm5MhMv5UwmRQ7UqilpQJmBpLVN9hZELwtA','2023-03-09'),('tr1hapv1lcvnemgggzs5mzmtkpb2ohn3','eyJ1aWQiOjV9:1pWYRR:VLolNWdMBnwropCELeTGUw4T8YVX9dgTISABcnm7LnM','2023-03-13'),('abgl3e1pbegxw0iy00ntu1duf2vnfhdm','eyJ1aWQiOjV9:1pWdNH:xHjHG-89k0DWamCcow5gwiUvsPi4gQtJpWd7cIi-rKE','2023-03-13'),('sbi7ddsm03e33jme10vkswauukgagcbh','eyJ1aWQiOjV9:1pXDV5:PDX33Cv8duJJObksnPC-XUda-N0QB8ONJk6UQCk2eNE','2023-03-15');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(26) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',44),('django_admin_log',0),('django_content_type',20),('auth_permission',80),('auth_group',0),('auth_user',3),('diaryapp_customer',7),('diaryapp_farmeraddcategory',7),('diaryapp_distributionarea',2),('diaryapp_subscriptionplan',6),('diaryapp_paymentform',1),('diaryapp_login',19),('diaryapp_distributor',10),('diaryapp_farmer',3),('diaryapp_sendcomplaints',3),('diaryapp_booksubcription',93),('diaryapp_adminaddproduct',3),('diaryapp_productorder',23);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27 22:44:55
