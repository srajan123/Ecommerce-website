-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_product','Can add product'),(26,7,'change_product','Can change product'),(27,7,'delete_product','Can delete product'),(28,7,'view_product','Can view product'),(29,8,'add_address','Can add address'),(30,8,'change_address','Can change address'),(31,8,'delete_address','Can delete address'),(32,8,'view_address','Can view address'),(33,9,'add_orderitem','Can add order item'),(34,9,'change_orderitem','Can change order item'),(35,9,'delete_orderitem','Can delete order item'),(36,9,'view_orderitem','Can view order item'),(37,10,'add_order','Can add order'),(38,10,'change_order','Can change order'),(39,10,'delete_order','Can delete order'),(40,10,'view_order','Can view order');
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
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(24) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(24) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$YK9IMip8jHnRmnYTykAzGo$goKy9KhKZyPkdoOCw79XX+ViZz8IPA623+mVlY98sJQ=','2022-05-08',1,'jaimsrajan@gmail.com','','jaimsrajan@gmail.com',1,1,'','srajan'),(3,'pbkdf2_sha256$320000$HJXtszltjWOlmlq1zJ39xY$cC90MUViKUY1Ck0jRW3jCjy2voU5f1n5vAh7PpRyS9I=','',0,'jogeshkushwah3@gmail.com','','jogeshkushwah3@gmail.com',0,1,'2022-05-08','srajan');
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
-- Table structure for table `base_app_address`
--

DROP TABLE IF EXISTS `base_app_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_app_address` (
  `country` varchar(0) DEFAULT NULL,
  `city` varchar(0) DEFAULT NULL,
  `address` varchar(0) DEFAULT NULL,
  `_id` varchar(0) DEFAULT NULL,
  `order_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_app_address`
--

LOCK TABLES `base_app_address` WRITE;
/*!40000 ALTER TABLE `base_app_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_app_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_app_order`
--

DROP TABLE IF EXISTS `base_app_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_app_order` (
  `deliveryCharge` varchar(0) DEFAULT NULL,
  `total` varchar(0) DEFAULT NULL,
  `isPaid` varchar(0) DEFAULT NULL,
  `paidAt` varchar(0) DEFAULT NULL,
  `_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_app_order`
--

LOCK TABLES `base_app_order` WRITE;
/*!40000 ALTER TABLE `base_app_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_app_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_app_orderitem`
--

DROP TABLE IF EXISTS `base_app_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_app_orderitem` (
  `price` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `image` varchar(0) DEFAULT NULL,
  `quantity` varchar(0) DEFAULT NULL,
  `_id` varchar(0) DEFAULT NULL,
  `order_id` varchar(0) DEFAULT NULL,
  `product_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_app_orderitem`
--

LOCK TABLES `base_app_orderitem` WRITE;
/*!40000 ALTER TABLE `base_app_orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_app_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_app_product`
--

DROP TABLE IF EXISTS `base_app_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_app_product` (
  `name` varchar(33) DEFAULT NULL,
  `description` text,
  `rating` decimal(2,1) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `countInStock` tinyint(4) DEFAULT NULL,
  `_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `image` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_app_product`
--

LOCK TABLES `base_app_product` WRITE;
/*!40000 ALTER TABLE `base_app_product` DISABLE KEYS */;
INSERT INTO `base_app_product` VALUES ('Airpods Wireless Bluetooth','Bluetooth technology lets you connect it with compatible devices wirelessly High-quality AAC audio offers immersive listening experience Built-in microphone allows you to take calls while working',4.5,100.00,10,1,1,'71zny7BTRlL._SX679_.jpg'),('Smart Pixel LED Backpack','S‑shaped adjustable shoulder strap, shoulder strap designed and padded shoulder strap can effectively share weight and travel easily.\r\nWaterproof material, using water‑repellent film to protect your LED screen can work even in rain.',4.5,49.99,0,4,1,'Webp.net-resizeimage_1.jpg'),('Lenovo Ideapad Gaming 3','The IdeaPad gaming is designed for gaming on the go, its thin and light design ensures that no matter where you go you can take your powerful game machine with you.',4.6,1699.99,50,5,1,'laptop.jpg'),('Round Hoodie Sweatshirt for Girls','Adjustable hood protects your ears and neck when you step outdoors.\r\nKangaroo Pockets which is enough of cover your palm, when you feel cold.\r\nThe inside layer is made of fleece feel warm perfect for winter.',4.0,50.00,10,6,1,'51YQ9BhqHTL._UX679_.jpg'),('Echo Dot (3rd Gen)','Echo Dot is our best selling smart speaker that can be operated by voice - even from a distance. Alexa can speak both English & Hindi, and new features are added automatically',4.9,499.00,19,7,1,'61EXU8BuGZL._SX679_.jpg'),('Borosil Cooltouch Electric Kettle','The double walled electric kettle is extremely safe to handle as the exterior does not heat up and remains cool to the touch. The shiny exterior is also aesthetically pleasing.',4.8,524.00,11,8,1,'31WDOhVyO1L._SX300_SY300_QL70_FMwebp_.webp'),('Mamaearth Anti Dandruff Shampoo','The natural ingredients present in the shampoo ensure that dandruff and excess oil is gently worked on & removed.',4.5,50.00,5,9,1,'614IFBA1D4L._SX679_.jpg'),('Apple iPhone 13 (128GB) - Green','15 cm (6.1-inch) Super Retina XDR display\r\nCinematic mode adds shallow depth of field and shifts focus automatically in your videos\r\nAdvanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording\r\n12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\nA15 Bionic chip for lightning-fast performance\r\nUp to 19 hours of video playback\r\nDurable design with Ceramic Shield',4.8,1022.00,10,10,1,'61-r9zOKBCL._SX679_.jpg');
/*!40000 ALTER TABLE `base_app_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(40) DEFAULT NULL,
  `change_message` varchar(59) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-05-07',1,'Product object (1)','[{\"added\": {}}]',7,1,1),(2,'2022-05-07',2,'cswaaw','[{\"added\": {}}]',7,1,1),(3,'2022-05-07',2,'cswaaw','',7,1,3),(4,'2022-05-07',3,'sad','[{\"added\": {}}]',7,1,1),(5,'2022-05-07',3,'sad','',7,1,3),(6,'2022-05-07',1,'Airpods Wireless Bluetooth','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(7,'2022-05-07',1,'Airpods Wireless Bluetooth','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(8,'2022-05-07',1,'Airpods Wireless Bluetooth','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(9,'2022-05-07',1,'Airpods Wireless Bluetooth','[{\"changed\": {\"fields\": [\"Price\"]}}]',7,1,2),(10,'2022-05-07',1,'Wireless Bluetooth','[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1,2),(11,'2022-05-07',4,'SAFARI 15 Ltrs Denim Blue','[{\"added\": {}}]',7,1,1),(12,'2022-05-07',5,'Lenovo Ideapad Gaming 3','[{\"added\": {}}]',7,1,1),(13,'2022-05-07',4,'SAFARI 15 Ltrs Denim Blue','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(14,'2022-05-07',4,'SAFARI 15 Ltrs Denim Blue','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(15,'2022-05-07',4,'SAFARI 15 Ltrs Denim Blue','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(16,'2022-05-07',4,'SAFARI 15 Ltrs Denim Blue','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(17,'2022-05-07',5,'Lenovo Ideapad Gaming 3','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(18,'2022-05-07',1,'Wireless Bluetooth','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(19,'2022-05-07',6,'Round Hoodie Swatshirt','[{\"added\": {}}]',7,1,1),(20,'2022-05-07',6,'Round Hoodie Swatshirt','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(21,'2022-05-07',6,'Round Hoodie Sweatshirt','[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1,2),(22,'2022-05-07',7,'Echo Dot (3rd Gen)','[{\"added\": {}}]',7,1,1),(23,'2022-05-07',4,'Smart Pixel LED Backpack','[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',7,1,2),(24,'2022-05-07',8,'Borosil Cooltouch Electric Kettle','[{\"added\": {}}]',7,1,1),(25,'2022-05-07',9,'safari','[{\"added\": {}}]',7,1,1),(26,'2022-05-07',9,'safari','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(27,'2022-05-07',9,'Mamaearth Tea Tree Anti Dandruff Shampoo','[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Price\"]}}]',7,1,2),(28,'2022-05-07',10,'Apple iPhone 13 (128GB) - Green','[{\"added\": {}}]',7,1,1),(29,'2022-05-07',10,'Apple iPhone 13 (128GB) - Green','[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1,2),(30,'2022-05-07',9,'Mamaearth Anti Dandruff Shampoo','[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1,2),(31,'2022-05-07',4,'Smart Pixel LED Backpack','[{\"changed\": {\"fields\": [\"CountInStock\"]}}]',7,1,2),(32,'2022-05-07',10,'Apple iPhone 13 (128GB) - Green','[{\"changed\": {\"fields\": [\"Price\"]}}]',7,1,2),(33,'2022-05-07',1,'Airpods Wireless Bluetooth','[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1,2),(34,'2022-05-07',6,'Round Hoodie Sweatshirt for Girls','[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1,2),(35,'2022-05-07',1,'srajan','[{\"changed\": {\"fields\": [\"First name\"]}}]',4,1,2),(36,'2022-05-08',1,'srajan','[{\"changed\": {\"fields\": [\"password\"]}}]',4,1,2),(37,'2022-05-08',1,'jaimsrajan@gmail.com','[{\"changed\": {\"fields\": [\"Username\"]}}]',4,1,2),(38,'2022-05-08',1,'jaimsrajan@gmail.com','[{\"changed\": {\"fields\": [\"Active\"]}}]',4,1,2);
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
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'base_app','address'),(10,'base_app','order'),(9,'base_app','orderitem'),(7,'base_app','product'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-05-07'),(2,'auth','0001_initial','2022-05-07'),(3,'admin','0001_initial','2022-05-07'),(4,'admin','0002_logentry_remove_auto_add','2022-05-07'),(5,'admin','0003_logentry_add_action_flag_choices','2022-05-07'),(6,'contenttypes','0002_remove_content_type_name','2022-05-07'),(7,'auth','0002_alter_permission_name_max_length','2022-05-07'),(8,'auth','0003_alter_user_email_max_length','2022-05-07'),(9,'auth','0004_alter_user_username_opts','2022-05-07'),(10,'auth','0005_alter_user_last_login_null','2022-05-07'),(11,'auth','0006_require_contenttypes_0002','2022-05-07'),(12,'auth','0007_alter_validators_add_error_messages','2022-05-07'),(13,'auth','0008_alter_user_username_max_length','2022-05-07'),(14,'auth','0009_alter_user_last_name_max_length','2022-05-07'),(15,'auth','0010_alter_group_name_max_length','2022-05-07'),(16,'auth','0011_update_proxy_permissions','2022-05-07'),(17,'auth','0012_alter_user_first_name_max_length','2022-05-07'),(18,'sessions','0001_initial','2022-05-07'),(19,'base_app','0001_initial','2022-05-07'),(20,'base_app','0002_orderitem_order_address','2022-05-07'),(21,'base_app','0003_product_image','2022-05-07');
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
  `session_data` varchar(226) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('44o0o6umhtervr4hn2l6sp0bbbwn7np5','.eJxVjEEOwiAQRe_C2pAOdFJw6d4zkBkYpGogKe3KeHdt0oVu_3vvv1SgbS1h67KEOamzAnX63ZjiQ-oO0p3qrenY6rrMrHdFH7Tra0vyvBzu30GhXr41WyNpSsmjZSB2BDhkYGej8wLG2ykiMACPeXSSUUjQW8MDZoMkXr0_8MI4Kw:1nnf7b:P1RLyCE0Mryl_si4gz18ViLzno-IiNYHMMWJBmHhKIU','2022-05-22'),('4u45ixt6c5aooc9nuh4tryzd2dt0x6qh','.eJxVjEEOwiAQRe_C2pAOdFJw6d4zkBkYpGogKe3KeHdt0oVu_3vvv1SgbS1h67KEOamzAnX63ZjiQ-oO0p3qrenY6rrMrHdFH7Tra0vyvBzu30GhXr41WyNpSsmjZSB2BDhkYGej8wLG2ykiMACPeXSSUUjQW8MDZoMkXr0_8MI4Kw:1nnfju:G0xeyJnFNaasizrY4lpf32AkeFw4EL352iigNq8GnQQ','2022-05-22');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',21),('django_admin_log',41),('django_content_type',10),('auth_permission',40),('auth_group',0),('auth_user',3),('base_app_product',10);
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

-- Dump completed on 2019-08-22 15:20:28
