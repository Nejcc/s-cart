-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: s-cart
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2020_00_00_step1_create_tables_admin',1),(2,'2020_00_00_step2_create_tables_shop',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'SCart Personal Access Client','PHCuyQz0D5y5njG24z2tXa4Dd8IfKPRhjC01Tiei',NULL,'http://localhost',1,0,0,'2021-05-09 23:16:42','2021-05-09 23:16:42'),(2,NULL,'SCart Password Grant Client','8ZC52ywFOrOMobG20sNHeaDijXPCesoWksvRn4GZ','users','http://localhost',0,1,0,'2021-05-09 23:16:42','2021-05-09 23:16:42');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2021-05-09 23:16:42','2021-05-09 23:16:42');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_config`
--

DROP TABLE IF EXISTS `sc_admin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security` int(11) DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_admin_config_key_store_id_unique` (`key`,`store_id`),
  KEY `sc_admin_config_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_config`
--

LOCK TABLES `sc_admin_config` WRITE;
/*!40000 ALTER TABLE `sc_admin_config` DISABLE KEYS */;
INSERT INTO `sc_admin_config` VALUES (1,'Plugins','Payment','Cash','1',0,0,0,'Plugins/Payment/Cash::lang.title'),(2,'Plugins','Shipping','ShippingStandard','1',0,0,0,'Shipping Standard'),(3,'global','env_global','ADMIN_LOG','on',0,0,0,'admin.env.ADMIN_LOG'),(4,'global','env_global','ADMIN_FOOTER_OFF','0',0,0,0,'admin.env.ADMIN_FOOTER_OFF'),(5,'global','seo_config','url_seo_lang','0',0,0,1,'seo.url_seo_lang'),(6,'global','webhook_config','LOG_SLACK_WEBHOOK_URL','',0,0,0,'admin.config.LOG_SLACK_WEBHOOK_URL'),(7,'global','webhook_config','GOOGLE_CHAT_WEBHOOK_URL','',0,0,0,'admin.config.GOOGLE_CHAT_WEBHOOK_URL'),(8,'global','webhook_config','CHATWORK_CHAT_WEBHOOK_URL','',0,0,0,'admin.config.CHATWORK_CHAT_WEBHOOK_URL'),(9,'global','api_config','api_connection_required','1',0,0,1,'api_connection.api_connection_required'),(10,'global','cache','cache_status','0',0,0,0,'admin.cache.cache_status'),(11,'global','cache','cache_time','600',0,0,0,'admin.cache.cache_time'),(12,'global','cache','cache_category','0',0,0,3,'admin.cache.cache_category'),(13,'global','cache','cache_product','0',0,0,4,'admin.cache.cache_product'),(14,'global','cache','cache_news','0',0,0,5,'admin.cache.cache_news'),(15,'global','cache','cache_category_cms','0',0,0,6,'admin.cache.cache_category_cms'),(16,'global','cache','cache_content_cms','0',0,0,7,'admin.cache.cache_content_cms'),(17,'global','cache','cache_page','0',0,0,8,'admin.cache.cache_page'),(18,'global','cache','cache_country','0',0,0,10,'admin.cache.cache_country'),(19,'global','env_mail','smtp_mode','',0,0,0,'email.smtp_mode'),(20,'','product_config_attribute','product_brand','1',0,1,0,'product.config_manager.brand'),(21,'','product_config_attribute_required','product_brand_required','0',0,1,0,''),(22,'','product_config_attribute','product_supplier','1',0,1,0,'product.config_manager.supplier'),(23,'','product_config_attribute_required','product_supplier_required','0',0,1,0,''),(24,'','product_config_attribute','product_price','1',0,1,0,'product.config_manager.price'),(25,'','product_config_attribute_required','product_price_required','1',0,1,0,''),(26,'','product_config_attribute','product_cost','1',0,1,0,'product.config_manager.cost'),(27,'','product_config_attribute_required','product_cost_required','0',0,1,0,''),(28,'','product_config_attribute','product_promotion','1',0,1,0,'product.config_manager.promotion'),(29,'','product_config_attribute_required','product_promotion_required','0',0,1,0,''),(30,'','product_config_attribute','product_stock','1',0,1,0,'product.config_manager.stock'),(31,'','product_config_attribute_required','product_stock_required','0',0,1,0,''),(32,'','product_config_attribute','product_kind','1',0,1,0,'product.config_manager.kind'),(33,'','product_config_attribute','product_property','1',0,1,0,'product.config_manager.property'),(34,'','product_config_attribute_required','product_property_required','0',0,1,0,''),(35,'','product_config_attribute','product_attribute','1',0,1,0,'product.config_manager.attribute'),(36,'','product_config_attribute_required','product_attribute_required','0',0,1,0,''),(37,'','product_config_attribute','product_available','1',0,1,0,'product.config_manager.available'),(38,'','product_config_attribute_required','product_available_required','0',0,1,0,''),(39,'','product_config_attribute','product_weight','1',0,1,0,'product.config_manager.weight'),(40,'','product_config_attribute_required','product_weight_required','0',0,1,0,''),(41,'','product_config_attribute','product_length','1',0,1,0,'product.config_manager.length'),(42,'','product_config_attribute_required','product_length_required','0',0,1,0,''),(43,'','product_config','product_display_out_of_stock','1',0,1,19,'product.config_manager.product_display_out_of_stock'),(44,'','product_config','show_date_available','1',0,1,21,'product.config_manager.show_date_available'),(45,'','product_config','product_tax','1',0,1,0,'product.config_manager.tax'),(46,'','customer_config_attribute','customer_lastname','1',0,1,1,'customer.config_manager.lastname'),(47,'','customer_config_attribute_required','customer_lastname_required','1',0,1,1,''),(48,'','customer_config_attribute','customer_address1','1',0,1,2,'customer.config_manager.address1'),(49,'','customer_config_attribute_required','customer_address1_required','1',0,1,2,''),(50,'','customer_config_attribute','customer_address2','1',0,1,2,'customer.config_manager.address2'),(51,'','customer_config_attribute_required','customer_address2_required','1',0,1,2,''),(52,'','customer_config_attribute','customer_address3','0',0,1,2,'customer.config_manager.address3'),(53,'','customer_config_attribute_required','customer_address3_required','0',0,1,2,''),(54,'','customer_config_attribute','customer_company','0',0,1,0,'customer.config_manager.company'),(55,'','customer_config_attribute_required','customer_company_required','0',0,1,0,''),(56,'','customer_config_attribute','customer_postcode','0',0,1,0,'customer.config_manager.postcode'),(57,'','customer_config_attribute_required','customer_postcode_required','0',0,1,0,''),(58,'','customer_config_attribute','customer_country','1',0,1,0,'customer.config_manager.country'),(59,'','customer_config_attribute_required','customer_country_required','1',0,1,0,''),(60,'','customer_config_attribute','customer_group','0',0,1,0,'customer.config_manager.group'),(61,'','customer_config_attribute_required','customer_group_required','0',0,1,0,''),(62,'','customer_config_attribute','customer_birthday','0',0,1,0,'customer.config_manager.birthday'),(63,'','customer_config_attribute_required','customer_birthday_required','0',0,1,0,''),(64,'','customer_config_attribute','customer_sex','0',0,1,0,'customer.config_manager.sex'),(65,'','customer_config_attribute_required','customer_sex_required','0',0,1,0,''),(66,'','customer_config_attribute','customer_phone','1',0,1,0,'customer.config_manager.phone'),(67,'','customer_config_attribute_required','customer_phone_required','1',0,1,1,''),(68,'','customer_config_attribute','customer_name_kana','0',0,1,0,'customer.config_manager.name_kana'),(69,'','customer_config_attribute_required','customer_name_kana_required','0',0,1,1,''),(70,'','admin_config','ADMIN_NAME','S-Cart System',0,1,0,'env.ADMIN_NAME'),(71,'','admin_config','ADMIN_TITLE','S-Cart Admin',0,1,0,'env.ADMIN_TITLE'),(72,'','admin_config','ADMIN_LOGO','S-Cart <span class=\"brand-text font-weight-light\">Admin</span>',0,1,0,'env.ADMIN_LOGO'),(73,'','display_config','product_top','8',0,1,0,'store.display.product_top'),(74,'','display_config','product_list','12',0,1,0,'store.display.list_product'),(75,'','display_config','product_relation','4',0,1,0,'store.display.relation_product'),(76,'','display_config','product_viewed','4',0,1,0,'store.display.viewed_product'),(77,'','display_config','item_list','12',0,1,0,'store.display.item_list'),(78,'','display_config','item_top','8',0,1,0,'store.display.item_top'),(79,'','order_config','shop_allow_guest','1',0,1,11,'order.admin.shop_allow_guest'),(80,'','order_config','product_preorder','1',0,1,18,'order.admin.product_preorder'),(81,'','order_config','product_buy_out_of_stock','1',0,1,20,'order.admin.product_buy_out_of_stock'),(82,'','order_config','shipping_off','0',0,1,20,'order.admin.shipping_off'),(83,'','order_config','payment_off','0',0,1,20,'order.admin.payment_off'),(84,'','email_action','email_action_mode','0',0,1,0,'email.email_action.email_action_mode'),(85,'','email_action','email_action_queue','0',0,1,1,'email.email_action.email_action_queue'),(86,'','email_action','order_success_to_admin','0',0,1,1,'email.email_action.order_success_to_admin'),(87,'','email_action','order_success_to_customer','0',0,1,2,'email.email_action.order_success_to_cutomer'),(88,'','email_action','order_success_to_customer_pdf','0',0,1,3,'email.email_action.order_success_to_cutomer_pdf'),(89,'','email_action','customer_verify','0',0,1,4,'email.email_action.customer_verify'),(90,'','email_action','welcome_customer','0',0,1,4,'email.email_action.welcome_customer'),(91,'','email_action','contact_to_admin','1',0,1,6,'email.email_action.contact_to_admin'),(92,'','smtp_config','smtp_host','',0,1,1,'email.config_smtp.smtp_host'),(93,'','smtp_config','smtp_user','',0,1,2,'email.config_smtp.smtp_user'),(94,'','smtp_config','smtp_password','',0,1,3,'email.config_smtp.smtp_password'),(95,'','smtp_config','smtp_security','',0,1,4,'email.config_smtp.smtp_security'),(96,'','smtp_config','smtp_port','',0,1,5,'email.config_smtp.smtp_port'),(97,'','smtp_config','smtp_name','',0,1,6,'email.config_smtp.smtp_name'),(98,'','smtp_config','smtp_from','',0,1,7,'email.config_smtp.smtp_from'),(99,'','url_config','SUFFIX_URL','.html',0,1,0,'url.SUFFIX_URL'),(100,'','url_config','PREFIX_SHOP','shop',0,1,0,'env.PREFIX_SHOP'),(101,'','url_config','PREFIX_BRAND','brand',0,1,0,'env.PREFIX_BRAND'),(102,'','url_config','PREFIX_CATEGORY','category',0,1,0,'env.PREFIX_CATEGORY'),(103,'','url_config','PREFIX_SUB_CATEGORY','sub-category',0,1,0,'env.PREFIX_SUB_CATEGORY'),(104,'','url_config','PREFIX_PRODUCT','product',0,1,0,'env.PREFIX_PRODUCT'),(105,'','url_config','PREFIX_SEARCH','search',0,1,0,'env.PREFIX_SEARCH'),(106,'','url_config','PREFIX_CONTACT','contact',0,1,0,'env.PREFIX_CONTACT'),(107,'','url_config','PREFIX_NEWS','news',0,1,0,'env.PREFIX_NEWS'),(108,'','url_config','PREFIX_MEMBER','customer',0,1,0,'env.PREFIX_MEMBER'),(109,'','url_config','PREFIX_MEMBER_ORDER_LIST','order-list',0,1,0,'env.PREFIX_MEMBER_ORDER_LIST'),(110,'','url_config','PREFIX_MEMBER_CHANGE_PWD','change-password',0,1,0,'env.PREFIX_MEMBER_CHANGE_PWD'),(111,'','url_config','PREFIX_MEMBER_CHANGE_INFO','change-info',0,1,0,'env.PREFIX_MEMBER_CHANGE_INFO'),(112,'','url_config','PREFIX_CMS_CATEGORY','cms-category',0,1,0,'env.PREFIX_CMS_CATEGORY'),(113,'','url_config','PREFIX_CMS_ENTRY','entry',0,1,0,'env.PREFIX_CMS_ENTRY'),(114,'','url_config','PREFIX_CART_WISHLIST','wishlst',0,1,0,'env.PREFIX_CART_WISHLIST'),(115,'','url_config','PREFIX_CART_COMPARE','compare',0,1,0,'env.PREFIX_CART_COMPARE'),(116,'','url_config','PREFIX_CART_DEFAULT','cart',0,1,0,'env.PREFIX_CART_DEFAULT'),(117,'','url_config','PREFIX_CART_CHECKOUT','checkout',0,1,0,'env.PREFIX_CART_CHECKOUT'),(118,'','url_config','PREFIX_ORDER_SUCCESS','order-success',0,1,0,'env.PREFIX_ORDER_SUCCESS'),(119,'','captcha_config','captcha_mode','0',0,1,20,'admin.captcha.captcha_mode'),(120,'','captcha_config','captcha_page','[]',0,1,10,'captcha.captcha_page'),(121,'','captcha_config','captcha_method','',0,1,0,'admin.captcha.captcha_method');
/*!40000 ALTER TABLE `sc_admin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_log`
--

DROP TABLE IF EXISTS `sc_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_admin_log_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_log`
--

LOCK TABLES `sc_admin_log` WRITE;
/*!40000 ALTER TABLE `sc_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_menu`
--

DROP TABLE IF EXISTS `sc_admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_admin_menu_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_menu`
--

LOCK TABLES `sc_admin_menu` WRITE;
/*!40000 ALTER TABLE `sc_admin_menu` DISABLE KEYS */;
INSERT INTO `sc_admin_menu` VALUES (1,6,1,'admin.menu_titles.order_manager','fas fa-cart-arrow-down','',0,0,'ORDER_MANAGER',NULL,NULL),(2,6,2,'admin.menu_titles.catalog_mamager','fas fa-folder-open','',0,0,'CATALOG_MANAGER',NULL,NULL),(3,25,3,'admin.menu_titles.customer_manager','fas fa-users','',0,0,'CUSTOMER_MANAGER',NULL,NULL),(4,8,201,'admin.menu_titles.template_layout','fab fa-windows','',0,0,'TEMPLATE',NULL,NULL),(5,9,2,'admin.menu_titles.admin_global','fab fa-whmcs','',0,0,'CONFIG_SYSTEM',NULL,NULL),(6,0,10,'admin.menu_titles.ADMIN_SHOP','fab fa-shopify','',0,0,'ADMIN_SHOP',NULL,NULL),(7,0,100,'admin.menu_titles.ADMIN_CONTENT','fas fa-file-signature','',0,0,'ADMIN_CONTENT',NULL,NULL),(8,0,300,'admin.menu_titles.ADMIN_EXTENSION','fas fa-th','',0,0,'ADMIN_EXTENSION',NULL,NULL),(9,0,400,'admin.menu_titles.ADMIN_SYSTEM','fas fa-cogs','',0,0,'ADMIN_SYSTEM',NULL,NULL),(10,7,102,'admin.menu_titles.page_manager','fas fa-clone','admin::page',0,0,NULL,NULL,NULL),(11,27,2,'admin.menu_titles.shipping_status','fas fa-truck','admin::shipping_status',0,0,NULL,NULL,NULL),(12,1,3,'admin.menu_titles.order','fas fa-shopping-cart','admin::order',0,0,NULL,NULL,NULL),(13,27,1,'admin.menu_titles.order_status','fas fa-asterisk','admin::order_status',0,0,NULL,NULL,NULL),(14,27,3,'admin.menu_titles.payment_status','fas fa-recycle','admin::payment_status',0,0,NULL,NULL,NULL),(15,2,0,'admin.menu_titles.product','far fa-file-image','admin::product',0,0,NULL,NULL,NULL),(16,2,0,'admin.menu_titles.category','fas fa-folder-open','admin::category',0,0,NULL,NULL,NULL),(17,27,4,'admin.menu_titles.supplier','fas fa-user-secret','admin::supplier',0,0,NULL,NULL,NULL),(18,27,5,'admin.menu_titles.brand','fas fa-university','admin::brand',0,0,NULL,NULL,NULL),(19,27,8,'admin.menu_titles.attribute_group','fas fa-bars','admin::attribute_group',0,0,NULL,NULL,NULL),(20,3,0,'admin.menu_titles.customer','fas fa-user','admin::customer',0,0,NULL,NULL,NULL),(21,3,0,'admin.menu_titles.subscribe','fas fa-user-circle','admin::subscribe',0,0,NULL,NULL,NULL),(22,67,1,'admin.menu_titles.block_content','far fa-newspaper','admin::store_block',0,0,NULL,NULL,NULL),(23,67,2,'admin.menu_titles.block_link','fab fa-chrome','admin::store_link',0,0,NULL,NULL,NULL),(24,4,0,'admin.menu_titles.template','fas fa-columns','admin::template',0,0,NULL,NULL,NULL),(25,0,200,'admin.menu_titles.ADMIN_MARKETING','fas fa-sort-amount-up','',0,0,'MARKETING',NULL,NULL),(26,65,1,'admin.menu_titles.store_info','fas fa-h-square','admin::store_info',0,0,NULL,NULL,NULL),(27,9,3,'admin.menu_titles.setting_system','fas fa-tools','',0,0,'SETTING_SYSTEM',NULL,NULL),(28,9,4,'admin.menu_titles.error_log','far fa-clone','',0,0,'',NULL,NULL),(29,25,0,'admin.menu_titles.email_template','fas fa-bars','admin::email_template',0,0,NULL,NULL,NULL),(30,9,5,'admin.menu_titles.localisation','fab fa-shirtsinbulk','',0,0,NULL,NULL,NULL),(31,30,1,'admin.menu_titles.language','fas fa-language','admin::language',0,0,NULL,NULL,NULL),(32,30,3,'admin.menu_titles.currency','far fa-money-bill-alt','admin::currency',0,0,NULL,NULL,NULL),(33,7,101,'admin.menu_titles.banner','fas fa-image','admin::banner',0,0,NULL,NULL,NULL),(34,5,5,'admin.menu_titles.backup_restore','fas fa-save','admin::backup',0,0,NULL,NULL,NULL),(35,8,202,'admin.menu_titles.plugin','fas fa-puzzle-piece','',0,0,'PLUGIN',NULL,NULL),(36,28,2,'admin.menu_titles.webhook','fab fa-diaspora','admin::config/webhook',0,0,NULL,NULL,NULL),(37,25,5,'admin.menu_titles.report_manager','fas fa-chart-pie','',0,0,'REPORT_MANAGER',NULL,NULL),(38,9,1,'admin.menu_titles.user_permission','fas fa-users-cog','',0,0,'ADMIN',NULL,NULL),(39,35,0,'admin.menu_titles.plugin_payment','far fa-money-bill-alt','admin::plugin/payment',0,0,NULL,NULL,NULL),(40,35,0,'admin.menu_titles.plugin_shipping','fas fa-ambulance','admin::plugin/shipping',0,0,NULL,NULL,NULL),(41,35,0,'admin.menu_titles.plugin_total','fas fa-cog','admin::plugin/total',0,0,NULL,NULL,NULL),(42,35,100,'admin.menu_titles.plugin_other','far fa-circle','admin::plugin/other',0,0,NULL,NULL,NULL),(43,35,0,'admin.menu_titles.plugin_cms','fab fa-modx','admin::plugin/cms',0,0,NULL,NULL,NULL),(44,67,2,'admin.menu_titles.css','far fa-file-code','admin::store_css',0,0,NULL,NULL,NULL),(45,25,4,'admin.menu_titles.seo_manager','fab fa-battle-net','',0,0,'SEO_MANAGER',NULL,NULL),(46,38,0,'admin.menu_titles.users','fas fa-users','admin::user',0,0,NULL,NULL,NULL),(47,38,0,'admin.menu_titles.roles','fas fa-user-tag','admin::role',0,0,NULL,NULL,NULL),(48,38,0,'admin.menu_titles.permission','fas fa-ban','admin::permission',0,0,NULL,NULL,NULL),(49,5,0,'admin.menu_titles.menu','fas fa-bars','admin::menu',0,0,NULL,NULL,NULL),(50,28,0,'admin.menu_titles.operation_log','fas fa-history','admin::log',0,0,NULL,NULL,NULL),(51,45,0,'admin.menu_titles.seo_config','fas fa-bars','admin::seo/config',0,0,NULL,NULL,NULL),(52,7,103,'admin.menu_titles.news','far fa-file-powerpoint','admin::news',0,0,NULL,NULL,NULL),(53,5,0,'admin.menu_titles.env_config','fas fa-tasks','admin::env/config',0,0,NULL,NULL,NULL),(54,37,0,'admin.menu_titles.report_product','fas fa-bars','admin::report/product',0,0,NULL,NULL,NULL),(57,65,2,'admin.menu_titles.store_config','fas fa-cog','admin::store_config',0,0,NULL,NULL,NULL),(58,5,5,'admin.menu_titles.cache_manager','fab fa-tripadvisor','admin::cache_config',0,0,NULL,NULL,NULL),(59,9,7,'admin.menu_titles.api_manager','fas fa-plug','',0,0,'API_MANAGER',NULL,NULL),(60,65,3,'admin.menu_titles.store_maintain','fas fa-wrench','admin::store_maintain',0,0,NULL,NULL,NULL),(61,27,9,'admin.menu_titles.tax','far fa-calendar-minus','admin::tax',0,0,NULL,NULL,NULL),(62,27,6,'admin.menu_titles.weight','fas fa-balance-scale','admin::weight_unit',0,0,NULL,NULL,NULL),(63,27,7,'admin.menu_titles.length','fas fa-minus','admin::length_unit',0,0,NULL,NULL,NULL),(65,0,250,'admin.menu_titles.ADMIN_SHOP_SETTING','fas fa-store-alt','',0,0,'ADMIN_SHOP_SETTING',NULL,NULL),(66,59,1,'admin.menu_titles.api_config','fas fa fa-cog','admin::api_connection',0,0,NULL,NULL,NULL),(67,65,5,'admin.menu_titles.layout','far fa-object-group','',0,0,NULL,NULL,NULL),(68,27,5,'admin.menu_titles.custom_field','fa fa-american-sign-language-interpreting','admin::custom_field',0,0,NULL,NULL,NULL),(69,30,2,'admin.menu_titles.language_manager','fa fa-universal-access','admin::language_manager',0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sc_admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_permission`
--

DROP TABLE IF EXISTS `sc_admin_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_admin_permission_name_unique` (`name`),
  UNIQUE KEY `sc_admin_permission_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_permission`
--

LOCK TABLES `sc_admin_permission` WRITE;
/*!40000 ALTER TABLE `sc_admin_permission` DISABLE KEYS */;
INSERT INTO `sc_admin_permission` VALUES (1,'Auth manager','auth.full','ANY::sc_admin/auth/*','2021-05-09 23:16:41',NULL),(2,'Dashboard','dashboard','GET::sc_admin','2021-05-09 23:16:41',NULL),(3,'Base setting','base.setting','ANY::sc_admin/order_status/*,ANY::sc_admin/shipping_status/*,ANY::sc_admin/payment_status/*,ANY::sc_admin/supplier/*,ANY::sc_admin/brand/*,ANY::sc_admin/custom_field/*,ANY::sc_admin/weight_unit/*,ANY::sc_admin/length_unit/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/tax/*','2021-05-09 23:16:41',NULL),(4,'Store manager','store.full','ANY::sc_admin/store_info/*,ANY::sc_admin/store_maintain/*,ANY::sc_admin/store_config/*,ANY::sc_admin/store_css/*,ANY::sc_admin/store_block/*,ANY::sc_admin/store_link/*','2021-05-09 23:16:41',NULL),(5,'Product manager','product.full','ANY::sc_admin/product/*,ANY::sc_admin/product_property/*,ANY::sc_admin/product_tag/*','2021-05-09 23:16:41',NULL),(6,'Category manager','category.full','ANY::sc_admin/category/*','2021-05-09 23:16:41',NULL),(7,'Order manager','order.full','ANY::sc_admin/order/*','2021-05-09 23:16:41',NULL),(8,'Upload management','upload.full','ANY::sc_admin/uploads/*','2021-05-09 23:16:41',NULL),(9,'Extension manager','extension.full','ANY::sc_admin/template/*,ANY::sc_admin/plugin/*','2021-05-09 23:16:41',NULL),(10,'Marketing manager','marketing.full','ANY::sc_admin/shop_discount/*,ANY::sc_admin/email_template/*,ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*,ANY::sc_admin/seo/*','2021-05-09 23:16:41',NULL),(11,'Report manager','report.full','ANY::sc_admin/report/*','2021-05-09 23:16:41',NULL),(12,'CMS manager','cms.full','ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/banner_type/*, ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*','2021-05-09 23:16:41',NULL),(13,'Update config','change.config','POST::sc_admin/store_config/update','2021-05-09 23:16:41',NULL);
/*!40000 ALTER TABLE `sc_admin_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_role`
--

DROP TABLE IF EXISTS `sc_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_admin_role_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_role`
--

LOCK TABLES `sc_admin_role` WRITE;
/*!40000 ALTER TABLE `sc_admin_role` DISABLE KEYS */;
INSERT INTO `sc_admin_role` VALUES (1,'Administrator','administrator','2021-05-09 23:16:41',NULL),(2,'Group only View','view.all','2021-05-09 23:16:41',NULL),(3,'Manager','manager','2021-05-09 23:16:41',NULL),(4,'CMS','cms','2021-05-09 23:16:41',NULL),(5,'Accountant','accountant','2021-05-09 23:16:41',NULL),(6,'Marketing','maketing','2021-05-09 23:16:41',NULL);
/*!40000 ALTER TABLE `sc_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_role_permission`
--

DROP TABLE IF EXISTS `sc_admin_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `sc_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_role_permission`
--

LOCK TABLES `sc_admin_role_permission` WRITE;
/*!40000 ALTER TABLE `sc_admin_role_permission` DISABLE KEYS */;
INSERT INTO `sc_admin_role_permission` VALUES (3,1,'2021-05-09 23:16:41',NULL),(3,2,'2021-05-09 23:16:41',NULL),(3,3,'2021-05-09 23:16:41',NULL),(3,4,'2021-05-09 23:16:41',NULL),(3,5,'2021-05-09 23:16:41',NULL),(3,6,'2021-05-09 23:16:41',NULL),(3,7,'2021-05-09 23:16:41',NULL),(3,8,'2021-05-09 23:16:41',NULL),(3,9,'2021-05-09 23:16:41',NULL),(3,10,'2021-05-09 23:16:41',NULL),(3,11,'2021-05-09 23:16:41',NULL),(3,12,'2021-05-09 23:16:41',NULL),(3,13,'2021-05-09 23:16:41',NULL),(4,1,'2021-05-09 23:16:41',NULL),(4,12,'2021-05-09 23:16:41',NULL),(5,1,'2021-05-09 23:16:41',NULL),(5,2,'2021-05-09 23:16:41',NULL),(5,7,'2021-05-09 23:16:41',NULL),(5,11,'2021-05-09 23:16:41',NULL),(6,1,'2021-05-09 23:16:41',NULL),(6,2,'2021-05-09 23:16:41',NULL),(6,8,'2021-05-09 23:16:41',NULL),(6,10,'2021-05-09 23:16:41',NULL),(6,11,'2021-05-09 23:16:41',NULL),(6,12,'2021-05-09 23:16:41',NULL);
/*!40000 ALTER TABLE `sc_admin_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_role_user`
--

DROP TABLE IF EXISTS `sc_admin_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `sc_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_role_user`
--

LOCK TABLES `sc_admin_role_user` WRITE;
/*!40000 ALTER TABLE `sc_admin_role_user` DISABLE KEYS */;
INSERT INTO `sc_admin_role_user` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `sc_admin_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_store`
--

DROP TABLE IF EXISTS `sc_admin_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0:Lock, 1: unlock',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_admin_store_code_unique` (`code`),
  KEY `sc_admin_store_domain_index` (`domain`),
  KEY `sc_admin_store_partner_index` (`partner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_store`
--

LOCK TABLES `sc_admin_store` WRITE;
/*!40000 ALTER TABLE `sc_admin_store` DISABLE KEYS */;
INSERT INTO `sc_admin_store` VALUES (1,'data/logo/scart-mid.png',NULL,'0123456789','Support: 0987654321','demo@s-cart.org','','123st - abc - xyz',NULL,NULL,'s-cart-light','','0','root','localhost/','Asia/Ho_Chi_Minh','USD',1,1);
/*!40000 ALTER TABLE `sc_admin_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_store_description`
--

DROP TABLE IF EXISTS `sc_admin_store_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_store_description` (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_note` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`store_id`,`lang`),
  KEY `sc_admin_store_description_lang_index` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_store_description`
--

LOCK TABLES `sc_admin_store_description` WRITE;
/*!40000 ALTER TABLE `sc_admin_store_description` DISABLE KEYS */;
INSERT INTO `sc_admin_store_description` VALUES (1,'en','Demo S-Cart : Free Laravel eCommerce','Free website shopping cart for business','','<center><img src=\"/images/maintenance.png\" />\r\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\r\n</center>','Website is in maintenance mode!'),(1,'vi','Demo S-Cart: M├ú nguß╗ôn website th╞░╞íng mß║íi ─æiß╗çn tß╗¡ miß╗àn ph├¡','Laravel shopping cart for business','','<center><img src=\"/images/maintenance.png\" />\r\n<h3><span style=\"color:#e74c3c;\"><strong>Xin lß╗ùi! Hiß╗çn tß║íi website ─æang bß║úo tr├¼!</strong></span></h3>\r\n</center>','Website ─æang trong chß║┐ ─æß╗Ö bß║úo tr├¼!');
/*!40000 ALTER TABLE `sc_admin_store_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_user`
--

DROP TABLE IF EXISTS `sc_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_admin_user_username_unique` (`username`),
  UNIQUE KEY `sc_admin_user_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_user`
--

LOCK TABLES `sc_admin_user` WRITE;
/*!40000 ALTER TABLE `sc_admin_user` DISABLE KEYS */;
INSERT INTO `sc_admin_user` VALUES (1,'admin','$2y$10$/yLQbdd7fRF6NXjH6Mo89eYyBsLvPDXCo7U06Wjfg6DH6YWr56kNW','Administrator','demo@s-cart.org','/admin/avatar/user.jpg',NULL,NULL,'2021-05-09 23:16:41',NULL);
/*!40000 ALTER TABLE `sc_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_user_permission`
--

DROP TABLE IF EXISTS `sc_admin_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `sc_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_user_permission`
--

LOCK TABLES `sc_admin_user_permission` WRITE;
/*!40000 ALTER TABLE `sc_admin_user_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_admin_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin_user_store`
--

DROP TABLE IF EXISTS `sc_admin_user_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_admin_user_store` (
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin_user_store`
--

LOCK TABLES `sc_admin_user_store` WRITE;
/*!40000 ALTER TABLE `sc_admin_user_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_admin_user_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_api_connection`
--

DROP TABLE IF EXISTS `sc_api_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_api_connection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_api_connection_apiconnection_unique` (`apiconnection`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_api_connection`
--

LOCK TABLES `sc_api_connection` WRITE;
/*!40000 ALTER TABLE `sc_api_connection` DISABLE KEYS */;
INSERT INTO `sc_api_connection` VALUES (1,'Demo api connection','appmobile','9d289c48-b11c-11eb-a850-04d9f5d0007b',NULL,NULL,0);
/*!40000 ALTER TABLE `sc_api_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_languages`
--

DROP TABLE IF EXISTS `sc_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_languages_code_location_unique` (`code`,`location`),
  KEY `sc_languages_code_index` (`code`),
  KEY `sc_languages_position_index` (`position`),
  KEY `sc_languages_location_index` (`location`)
) ENGINE=InnoDB AUTO_INCREMENT=2403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_languages`
--

LOCK TABLES `sc_languages` WRITE;
/*!40000 ALTER TABLE `sc_languages` DISABLE KEYS */;
INSERT INTO `sc_languages` VALUES (1,'action.edit','Edit','action','en'),(2,'action.edit','Chß╗ënh sß╗¡a','action','vi'),(3,'action.update','Update','action','en'),(4,'action.update','Cß║¡p nhß║¡t','action','vi'),(5,'action.add','Th├¬m mß╗¢i','action','vi'),(6,'action.add','Add new','action','en'),(7,'action.create','Create new','action','en'),(8,'action.create','Tß║ío mß╗¢i','action','vi'),(9,'action.create_success','Tß║ío mß╗¢i th├ánh c├┤ng','action','vi'),(10,'action.create_success','Create success','action','en'),(11,'action.edit_success','Edit success','action','en'),(12,'action.edit_success','Tß║ío mß╗¢i th├ánh c├┤ng','action','vi'),(13,'action.update_success','Update success','action','en'),(14,'action.update_success','Cß║¡p nhß║¡t th├ánh c├┤ng','action','vi'),(15,'action.add_success','Add new success','action','en'),(16,'action.add_success','Th├¬m mß╗¢i th├ánh c├┤ng','action','vi'),(17,'action.remote_success','Remove success','action','en'),(18,'action.remote_success','Gß╗í bß╗Å th├ánh c├┤ng','action','vi'),(19,'action.delete_success','Delete success','action','en'),(20,'action.delete_success','X├│a th├ánh c├┤ng','action','vi'),(21,'action.remote','Gß╗í bß╗Å','action','vi'),(22,'action.remote','Remove','action','en'),(23,'action.delete','X├│a','action','vi'),(24,'action.delete','Delete','action','en'),(25,'action.uninstall','Delete','action','en'),(26,'action.uninstall','Gß╗í c├ái ─æß║╖t','action','vi'),(27,'action.install','C├ái ─æß║╖t','action','vi'),(28,'action.install','Install','action','en'),(29,'action.click','Click','action','en'),(30,'action.click','Bß║Ñm','action','vi'),(31,'action.click_here','Click here','action','en'),(32,'action.click_here','Bß║Ñm v├áo ─æ├óy','action','vi'),(33,'action.view','Xem','action','vi'),(34,'action.view','View','action','en'),(35,'action.view_more','View more','action','en'),(36,'action.view_more','Xem th├¬m','action','vi'),(37,'action.detail','Chi tiß║┐t','action','vi'),(38,'action.detail','Detail','action','en'),(39,'action.hidden','Hidden','action','en'),(40,'action.hidden','ß║¿n','action','vi'),(41,'action.show','Hiß╗ân thß╗ï','action','vi'),(42,'action.show','Show','action','en'),(43,'action.submit','Submit','action','en'),(44,'action.submit','Gß╗¡i','action','vi'),(45,'action.save','Save','action','en'),(46,'action.save','L╞░u lß║íi','action','vi'),(47,'action.reset','L├ám lß║íi','action','vi'),(48,'action.reset','Reset','action','en'),(49,'action.logout','─É─âng xuß║Ñt','action','vi'),(50,'action.logout','Logout','action','en'),(51,'action.login','─É─âng nhß║¡p','action','vi'),(52,'action.login','Login','action','en'),(53,'action.refresh','L├ám mß╗¢i','action','vi'),(54,'action.refresh','Refresh','action','en'),(55,'action.confirm','X├íc nhß║¡n','action','vi'),(56,'action.confirm','Confirmation','action','en'),(57,'action.add_to_cart','Add to cart','action','en'),(58,'action.add_to_cart','Th├¬m v├áo giß╗Å h├áng','action','vi'),(59,'action.add_to_wishlist','Th├¬m y├¬u th├¡ch','action','vi'),(60,'action.add_to_wishlist','Add to wishlist','action','en'),(61,'action.add_to_compare','Add to compare','action','en'),(62,'action.add_to_compare','Th├¬m so s├ính','action','vi'),(63,'action.buy_now','Mua ngay','action','vi'),(64,'action.buy_now','Buy now','action','en'),(65,'action.re_order','Re-order','action','en'),(66,'action.re_order','Mua lß║íi','action','vi'),(67,'action.order','─Éß║╖t h├áng','action','vi'),(68,'action.order','Order','action','en'),(69,'action.title','Action','action','en'),(70,'action.title','Thao t├íc','action','vi'),(71,'action.confirm_agree','Agree','action','en'),(72,'action.confirm_agree','─Éß╗ông ├╜','action','vi'),(73,'action.confirm_cancel','Hß╗ºy bß╗Å','action','vi'),(74,'action.confirm_cancel','Cancel','action','en'),(75,'action.confirm_yes','Yes','action','en'),(76,'action.confirm_yes','C├│','action','vi'),(77,'action.confirm_no','Kh├┤ng','action','vi'),(78,'action.confirm_no','No','action','en'),(79,'action.delete_confirm','Are you sure to delete it?','action','en'),(80,'action.delete_confirm','Bß║ín c├│ chß║»c chß║»n sß║╜ x├│a n├│?','action','vi'),(81,'action.delete_confirm_deleted','Deleted','action','en'),(82,'action.delete_confirm_deleted','─É├ú x├│a','action','vi'),(83,'action.delete_confirm_deleted_msg','Item has deleted','action','en'),(84,'action.delete_confirm_deleted_msg','Item n├áy ─æ├ú ─æ╞░ß╗úc x├│a.','action','vi'),(85,'action.remove_confirm','Are you sure to remove it?','action','en'),(86,'action.remove_confirm','Bß║ín c├│ chß║»c chß║»n gß╗í n├│?','action','vi'),(87,'action.action_confirm','Bß║ín c├│ chß║»c chß║»n thao t├íc n├áy?','action','vi'),(88,'action.action_confirm','Are you sure you do this?','action','en'),(89,'action.action_confirm_warning','H├ánh ─æß╗Öng n├áy sß║╜ kh├┤ng thß╗â phß╗Ñc hß╗ôi','action','vi'),(90,'action.action_confirm_warning','This action will not be restore','action','en'),(91,'action.warning','Warning','action','en'),(92,'action.warning','Cß║únh b├ío','action','vi'),(93,'action.notify','Th├┤ng b├ío','action','vi'),(94,'action.notify','Notify','action','en'),(95,'action.sort','Sort items','action','en'),(96,'action.sort','Sß║»p xß║┐p','action','vi'),(97,'action.search','T├¼m kiß║┐m','action','vi'),(98,'action.search','Search','action','en'),(99,'action.copy','Sao ch├⌐p','action','vi'),(100,'action.copy','Copy','action','en'),(101,'action.duplicate','Duplicate','action','en'),(102,'action.duplicate','Nh├ón bß║ún','action','vi'),(103,'front.home','Trang chß╗º','front','vi'),(104,'front.home','Home','front','en'),(105,'front.shop','Cß╗¡a h├áng','front','vi'),(106,'front.shop','Shop','front','en'),(107,'front.store','Cß╗¡a h├áng','front','vi'),(108,'front.store','store','front','en'),(109,'front.link_useful','Li├¬n kß║┐t hß╗»u ├¡ch','front','vi'),(110,'front.link_useful','Link useful','front','en'),(111,'front.brands','Nh├ún h├áng','front','vi'),(112,'front.brands','Brands','front','en'),(113,'front.categories','Danh mß╗Ñc','front','vi'),(114,'front.categories','Categries','front','en'),(115,'front.blog','Blog','front','vi'),(116,'front.blog','Blogs','front','en'),(117,'front.news','Tin tß╗⌐c','front','vi'),(118,'front.news','News','front','en'),(119,'front.about','About us','front','en'),(120,'front.about','Giß╗¢i thiß╗çu','front','vi'),(121,'front.contact','Contact us','front','en'),(122,'front.contact','Li├¬n hß╗ç','front','vi'),(123,'front.cms_category','Danh mß╗Ñc CMS','front','vi'),(124,'front.cms_category','CMS category','front','en'),(125,'front.my_profile','T├ái khoß║ún','front','vi'),(126,'front.my_profile','My profile','front','en'),(127,'front.my_account','T├ái khoß║ún','front','vi'),(128,'front.my_account','My account','front','en'),(129,'front.account','T├ái khoß║ún','front','vi'),(130,'front.account','customer','front','en'),(131,'front.currency','Tiß╗ün tß╗ç','front','vi'),(132,'front.currency','Currency','front','en'),(133,'front.language','Ng├┤n ngß╗»','front','vi'),(134,'front.language','Language','front','en'),(135,'front.cart','Giß╗Å h├áng','front','vi'),(136,'front.cart','Cart','front','en'),(137,'front.compare','So s├ính','front','vi'),(138,'front.compare','Compare','front','en'),(139,'front.compare_page','Sß║ún phß║⌐m so s├ính','front','vi'),(140,'front.compare_page','Product compare','front','en'),(141,'front.wishlist','Y├¬u th├¡ch','front','vi'),(142,'front.wishlist','Wishlist','front','en'),(143,'front.wishlist_page','Sß║ún phß║⌐m y├¬u thich','front','vi'),(144,'front.wishlist_page','Product Wishlist','front','en'),(145,'front.login','─É─âng nhß║¡p','front','vi'),(146,'front.login','Login','front','en'),(147,'front.logout','─É─âng xuß║Ñt','front','vi'),(148,'front.logout','Logout','front','en'),(149,'front.maintenace','Bß║úo tr├¼','front','vi'),(150,'front.maintenace','Maintenace','front','en'),(151,'front.products_hot','Hot Products','front','en'),(152,'front.products_hot','Sß║ún phß║⌐m nß╗òi bß║¡t','front','vi'),(153,'front.products_promotion','Promotion Products','front','en'),(154,'front.products_promotion','Sß║ún phß║⌐m khuyß║┐n m├úi','front','vi'),(155,'front.products_special','Special products','front','en'),(156,'front.products_special','Sß║ún phß║⌐m ─æß║╖c biß╗çt','front','vi'),(157,'front.products_last_view','Last view products','front','en'),(158,'front.products_last_view','Sß║ún phß║⌐m mß╗¢i xem','front','vi'),(159,'front.products_build','Product bundle','front','en'),(160,'front.products_build','Sß║ún phß║⌐m bß╗Ö','front','vi'),(161,'front.products_bundle','Product bundle','front','en'),(162,'front.products_bundle','Sß║ún phß║⌐m bß╗Ö','front','vi'),(163,'front.products_single','Product single','front','en'),(164,'front.products_single','Sß║ún phß║⌐m ─æ╞ín','front','vi'),(165,'front.products_group','Product group','front','en'),(166,'front.products_group','Sß║ún phß║⌐m nh├│m','front','vi'),(167,'front.products_new','New products','front','en'),(168,'front.products_new','Sß║ún phß║⌐m mß╗¢i','front','vi'),(169,'front.products_recommend','Recommend products','front','en'),(170,'front.products_recommend','Sß║ún phß║⌐m ─æß╗ü xuß║Ñt','front','vi'),(171,'front.product_detail','Product detail','front','en'),(172,'front.product_detail','Chi tiß║┐t sß║ún phß║⌐m','front','vi'),(173,'front.categories_store','Categories','front','en'),(174,'front.categories_store','Danh mß╗Ñc','front','vi'),(175,'front.result_item','Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>','front','en'),(176,'front.result_item','Hiß╗ân thß╗ï <b>:item_from</b>-<b>:item_to</b> cß╗ºa <b>:total</b> kß║┐t quß║ú</b>','front','vi'),(177,'front.all_product','Tß║Ñt cß║ú sß║ún phß║⌐m','front','vi'),(178,'front.all_product','All products','front','en'),(179,'front.data_notfound','Kh├┤ng t├¼m thß║Ñy dß╗» liß╗çu!','front','vi'),(180,'front.data_notfound','Data not found!','front','en'),(181,'front.data_not_found','Kh├┤ng t├¼m thß║Ñy dß╗» liß╗çu!','front','vi'),(182,'front.data_not_found','Data not found!','front','en'),(183,'front.page_notfound','Kh├┤ng t├¼m thß║Ñy trang!','front','vi'),(184,'front.page_notfound','Page not found!','front','en'),(185,'front.flash_stock','Available','front','en'),(186,'front.flash_sold','Already Sold','front','en'),(187,'front.flash_title','Flash sale','front','en'),(188,'front.flash_stock','C├▓n lß║íi','front','vi'),(189,'front.flash_sold','─É├ú b├ín','front','vi'),(190,'front.flash_title','Flash sale','front','vi'),(191,'front.products_best_seller','Sß║ún phß║⌐m thß╗ïnh h├ánh','front','vi'),(192,'front.products_best_seller','Trending products','front','en'),(193,'front.products_trending','Sß║ún phß║⌐m b├ín chß║íy nhß║Ñt','front','vi'),(194,'front.products_trending','Product best seller','front','en'),(195,'front.search_result','Kß║┐t quß║ú t├¼m kiß║┐m','front','vi'),(196,'front.search_result','Search result','front','en'),(197,'search.placeholder','Nhß║¡p tß╗½ kh├│a','search','vi'),(198,'search.placeholder','Input keyword','search','en'),(199,'store.deny_help_1','Sorry, this domain does not exist on the system!','store','en'),(200,'store.deny_help_1','Xin lß╗ùi, t├¬n miß╗ün n├áy kh├┤ng c├│ tr├¬n hß╗ç thß╗æng!','store','vi'),(201,'store.deny_help_2','Return to home page','store','en'),(202,'store.deny_help_2','Trß╗ƒ vß╗ü trang chß╗º','store','vi'),(203,'store.address','Address','store','en'),(204,'store.address','─Éß╗ïa chß╗ë','store','vi'),(205,'store.phone','Phone','store','en'),(206,'store.phone','Sß╗æ ─æiß╗çn thoß║íi','store','vi'),(207,'store.hotline','Hotline','store','en'),(208,'store.hotline','Sß╗æ ─æiß╗çn thoß║íi','store','vi'),(209,'store.email','Email','store','vi'),(210,'store.email','Email','store','en'),(211,'store.title','T├¬n cß╗¡a h├áng','store','vi'),(212,'store.title','Store title','store','en'),(213,'store.keyword','Tß╗½ kh├│a','store','vi'),(214,'store.keyword','Keyword','store','en'),(215,'store.description','M├┤ tß║ú','store','vi'),(216,'store.description','Description','store','en'),(217,'store.language','Ng├┤n ngß╗»','store','vi'),(218,'store.language','Language','store','en'),(219,'store.currency','Tiß╗ün tß╗ç','store','vi'),(220,'store.currency','Currency','store','en'),(221,'store.timezone','M├║i giß╗¥','store','vi'),(222,'store.timezone','Timezone','store','en'),(223,'store.admin.template','Giao diß╗çn','store.admin','vi'),(224,'store.admin.template','Template','store.admin','en'),(225,'store.admin.domain','T├¬n miß╗ün','store.admin','vi'),(226,'store.admin.domain','Domain','store.admin','en'),(227,'store.admin.domain_help','V├¡ dß╗Ñ: https://abc.com','store.admin','vi'),(228,'store.admin.domain_help','For example: https://abc.com','store.admin','en'),(229,'store.admin.domain_invalid','T├¬n miß╗ün kh├┤ng hß╗úp lß╗ç','store.admin','vi'),(230,'store.admin.domain_invalid','Domain invalid','store.admin','en'),(231,'store.warehouse','Nh├á kho','store','vi'),(232,'store.warehouse','Warehouse','store','en'),(233,'store.office','V─ân ph├▓ng','store','vi'),(234,'store.office','Office','store','en'),(235,'store.time_active','Thß╗¥i gian l├ám viß╗çc','store','vi'),(236,'store.time_active','Time active','store','en'),(237,'store.long_phone','Sß╗æ ─æiß╗çn thoß║íi','store','vi'),(238,'store.long_phone','Full phone','store','en'),(239,'store.logo','Logo','store','vi'),(240,'store.logo','Logo','store','en'),(241,'store.icon','Icon','store','vi'),(242,'store.icon','Icon','store','en'),(243,'store.maintenance','Bß║úo tr├¼','store','vi'),(244,'store.maintenance','Maintenance','store','en'),(245,'store.admin.code','Store code','store.admin','en'),(246,'store.admin.code','M├ú cß╗¡a h├áng','store.admin','vi'),(247,'store.admin.css','Edit CSS','store.admin','en'),(248,'store.admin.css','Chß╗ënh sß╗¡a CSS','store.admin','vi'),(249,'store.admin.title','Th├┤ng tin cß╗¡a h├áng','store.admin','vi'),(250,'store.admin.config_store','Cß║Ñu h├¼nh cß╗¡a h├áng #:id','store.admin','vi'),(251,'store.admin.config_store_detail','Cß║Ñu h├¼nh cß╗¡a h├áng','store.admin','vi'),(252,'store.admin.list','Danh s├ích cß╗¡a h├áng','store.admin','vi'),(253,'store.admin.field','C├íc tr╞░ß╗¥ng','store.admin','vi'),(254,'store.admin.value','Gi├í trß╗ï','store.admin','vi'),(255,'store.admin.config_mode','Cß║Ñu h├¼nh mode','store.admin','vi'),(256,'store.admin.config_display','Cß║Ñu h├¼nh hiß╗ân thß╗ï','store.admin','vi'),(257,'store.admin.config_customize','Cß║Ñu h├¼nh t├╣y chß╗ënh','store.admin','vi'),(258,'store.admin.status','Status','store.admin','vi'),(259,'store.admin.action','H├ánh ─æß╗Öng','store.admin','vi'),(260,'store.admin.add_new','Th├¬m mß╗¢i','store.admin','vi'),(261,'store.admin.sort','Sß║»p xß║┐p','store.admin','vi'),(262,'store.admin.search','T├¼m kiß║┐m','store.admin','vi'),(263,'store.admin.add_new_title','Tß║ío cß╗¡a h├áng','store.admin','vi'),(264,'store.admin.add_new_des','Tß║ío mß╗¢i mß╗Öt cß╗¡a h├áng','store.admin','vi'),(265,'store.admin.config_info','Th├┤ng tin','store.admin','vi'),(266,'store.admin.config_product','Sß║ún phß║⌐m','store.admin','vi'),(267,'store.admin.config_customer','Kh├ích h├áng','store.admin','vi'),(268,'store.admin.config_email','Email','store.admin','vi'),(269,'store.admin.config_url','URL','store.admin','vi'),(270,'store.admin.config_api','API','store.admin','vi'),(271,'store.admin.config_order','─É╞ín h├áng','store.admin','vi'),(272,'store.admin.config_other','Kh├íc','store.admin','vi'),(273,'store.admin.switch_store','Chuyß╗ân ─æß╗òi cß╗¡a h├áng','store.admin','vi'),(274,'store.admin.config_admin_other','Cß║Ñu h├¼nh admin','store.admin','vi'),(275,'store.admin.active_strict','K├¡ch hoß║ít chß║┐ ─æß╗Ö kiß╗âm tra t├¬n miß╗ün','store.admin','vi'),(276,'store.admin.active_domain','K├¡ch hoß║ít t├¬n miß╗ün','store.admin','vi'),(277,'store.admin.active_maintain','K├¡ch hoß║ít chß║┐ ─æß╗Ö bß║úo tr├¼','store.admin','vi'),(278,'store.admin.domain_exist',' T├¬n miß╗ün ─æ├ú c├│ rß╗ôi','store.admin','vi'),(279,'store.admin.value_cannot_change','Gi├í trß╗ï n├áy kh├┤ng thß╗â thay ─æß╗òi','store.admin','vi'),(280,'store.admin.title','Store infomation','store.admin','en'),(281,'store.admin.config_store','Config store #:id','store.admin','en'),(282,'store.admin.config_store_detail','Config store','store.admin','en'),(283,'store.admin.list','Store list','store.admin','en'),(284,'store.admin.field','Field','store.admin','en'),(285,'store.admin.value','Value','store.admin','en'),(286,'store.admin.config_mode','Store mode','store.admin','en'),(287,'store.admin.config_display','Store display','store.admin','en'),(288,'store.admin.config_customize','Config customize','store.admin','en'),(289,'store.admin.status','Status','store.admin','en'),(290,'store.admin.action','Action','store.admin','en'),(291,'store.admin.sort','Sort','store.admin','en'),(292,'store.admin.search','Search','store.admin','en'),(293,'store.admin.add_new','Add new','store.admin','en'),(294,'store.admin.add_new_title','Add new store','store.admin','en'),(295,'store.admin.add_new_des','Create a new store','store.admin','en'),(296,'store.admin.config_info','Infomation','store.admin','en'),(297,'store.admin.config_order','Order','store.admin','en'),(298,'store.admin.config_product','Product','store.admin','en'),(299,'store.admin.config_customer','Customer','store.admin','en'),(300,'store.admin.config_email','Email','store.admin','en'),(301,'store.admin.config_url','URL','store.admin','en'),(302,'store.admin.config_api','API','store.admin','en'),(303,'store.admin.config_other','Other','store.admin','en'),(304,'store.admin.switch_store','Switch store','store.admin','en'),(305,'store.admin.config_admin_other','Config admin','store.admin','en'),(306,'store.admin.active_strict','Activate domain check mode','store.admin','en'),(307,'store.admin.active_domain','Activate the domain name','store.admin','en'),(308,'store.admin.active_maintain','Activate maintenance mode','store.admin','en'),(309,'store.admin.domain_exist',' Domain exist already','store.admin','en'),(310,'store.admin.value_cannot_change','This value cannot be changed','store.admin','en'),(311,'store.display.product_top','Top product','store.admin','en'),(312,'store.display.product_top','Top sß║ún phß║⌐m','store.admin','vi'),(313,'store.display.list_product','List product','store.admin','en'),(314,'store.display.list_product','Danh s├ích sß║ún phß║⌐m','store.admin','vi'),(315,'store.display.relation_product','Relation product','store.admin','en'),(316,'store.display.relation_product','Sß║ún phß║⌐m li├¬n quan','store.admin','vi'),(317,'store.display.viewed_product','Product viewed','store.admin','en'),(318,'store.display.viewed_product','Sß║ún phß║⌐m ─æ├ú xem','store.admin','vi'),(319,'store.display.item_list','List item','store.admin','en'),(320,'store.display.item_list','Danh s├ích item','store.admin','vi'),(321,'store.display.item_top','Top item','store.admin','en'),(322,'store.display.item_top','Top item','store.admin','vi'),(323,'cart.checkout','Checkout','cart','en'),(324,'cart.checkout','Thanh to├ín','cart','vi'),(325,'cart.back_to_cart','Back to cart','cart','en'),(326,'cart.back_to_cart','Trß╗ƒ lß║íi giß╗Å h├áng','cart','vi'),(327,'cart.confirm','Confirm','cart','en'),(328,'cart.confirm','X├íc nhß║¡n','cart','vi'),(329,'cart.cart_title','Shopping cart','cart','en'),(330,'cart.cart_title','Trang giß╗Å h├áng','cart','vi'),(331,'cart.page_title','Shopping cart','cart','en'),(332,'cart.page_title','Trang giß╗Å h├áng','cart','vi'),(333,'cart.back_to_shop','Back to shop','cart','en'),(334,'cart.back_to_shop','Trß╗ƒ vß╗ü cß╗ºa h├áng','cart','vi'),(335,'cart.remove_all','Remove cart','cart','en'),(336,'cart.remove_all','X├│a giß╗Å h├áng','cart','vi'),(337,'cart.minimum_value','Minimum :value items','cart','en'),(338,'cart.minimum_value','Tß╗æi thiß╗âu :value item','cart','vi'),(339,'cart.note','Note','cart','en'),(340,'cart.note','Ghi ch├║','cart','vi'),(341,'cart.coupon','Coupon','cart','en'),(342,'cart.coupon','M├ú giß║úm gi├í','cart','vi'),(343,'cart.remove_coupon','Remove coupon','cart','en'),(344,'cart.remove_coupon','X├│a m├ú giß║úm gi├í','cart','vi'),(345,'cart.coupon_empty','Coupon empty','cart','en'),(346,'cart.coupon_empty','Kh├┤ng c├│ m├ú giß║úm gi├í','cart','vi'),(347,'cart.apply','Apply','cart','en'),(348,'cart.apply','├üp dß╗Ñng','cart','vi'),(349,'cart.change_address','Change address','cart','en'),(350,'cart.change_address','Thay ─æß╗òi ─æß╗ïa chß╗ë','cart','vi'),(351,'cart.add_new_address','Add new address','cart','en'),(352,'cart.add_new_address','Th├¬m ─æß╗ïa chß╗ë mß╗¢i','cart','vi'),(353,'cart.page_wishlist_title','Page wishlist','cart','en'),(354,'cart.page_wishlist_title','Trang sß║ún phß║⌐m y├¬u thich','cart','vi'),(355,'cart.page_compare_title','Page compare','cart','en'),(356,'cart.page_compare_title','Trang so s├ính sß║ún phß║⌐m','cart','vi'),(357,'cart.shipping_address','Shipping address','cart','en'),(358,'cart.shipping_address','─Éß╗ïa chß╗ë giao h├áng','cart','vi'),(359,'cart.payment_address','Payment address','cart','en'),(360,'cart.payment_address','─Éß╗ïa chß╗ë thanh to├ín','cart','vi'),(361,'cart.payment_method','Ph╞░╞íng thß╗⌐c thanh to├ín','cart','vi'),(362,'cart.payment_method','Payment method','cart','en'),(363,'cart.shipping_method','Ph╞░╞íng thß╗⌐c vß║¡n chuyß╗ân','cart','vi'),(364,'cart.shipping_method','Shipping method','cart','en'),(365,'cart.country','Country','cart','en'),(366,'cart.country','Quß╗æc gia','cart','vi'),(367,'cart.company','C├┤ng ty','cart','vi'),(368,'cart.company','Company','cart','en'),(369,'cart.address3','─Éß╗ïa chß╗ë nh├á','cart','vi'),(370,'cart.address3','Address 3','cart','en'),(371,'cart.address2','Quß║¡n/Huyß╗çn','cart','vi'),(372,'cart.address2','Address 2','cart','en'),(373,'cart.address1','Tß╗ënh/Th├ánh','cart','vi'),(374,'cart.address1','Address 1','cart','en'),(375,'cart.postcode','M├ú b╞░u ─æiß╗çn','cart','vi'),(376,'cart.postcode','Post code','cart','en'),(377,'cart.phone','Phone','cart','en'),(378,'cart.phone','─Éiß╗çn thoß║íi','cart','vi'),(379,'cart.last_name_kana','Hß╗ì kana','cart','vi'),(380,'cart.last_name_kana','Last name kana','cart','en'),(381,'cart.first_name_kana','First name kana','cart','en'),(382,'cart.first_name_kana','T├¬n Kana','cart','vi'),(383,'cart.full_name','Full name','cart','en'),(384,'cart.full_name','T├¬n ─æß║ºy ─æß╗º','cart','vi'),(385,'cart.name','Name','cart','en'),(386,'cart.name','T├¬n','cart','vi'),(387,'cart.midle_name','T├¬n ─æß╗çm','cart','vi'),(388,'cart.midle_name','Midle name','cart','en'),(389,'cart.last_name','Hß╗ì','cart','vi'),(390,'cart.last_name','Last name','cart','en'),(391,'cart.first_name','T├¬n','cart','vi'),(392,'cart.first_name','First name','cart','en'),(393,'cart.email','Email','cart','vi'),(394,'cart.email','Email','cart','en'),(395,'cart.sex','Giß╗¢i t├¡nh','cart','vi'),(396,'cart.sex','Sex','cart','en'),(397,'cart.birthday','Ng├áy sinh','cart','vi'),(398,'cart.birthday','Birthday','cart','en'),(399,'cart.validation.shippingMethod_required','Shipping method required','cart','en'),(400,'cart.validation.shippingMethod_required','Giao thß╗⌐c giao h├áng l├á bß║»t buß╗Öc','cart','vi'),(401,'cart.validation.paymentMethod_required','Payment method required','cart','en'),(402,'cart.validation.paymentMethod_required','Ph╞░╞íng thß╗⌐c thanh to├ín l├á bß║»t buß╗Öc','cart','vi'),(403,'cart.add_to_cart_success','Th├¬m v├áo :instance th├ánh c├┤ng','cart','vi'),(404,'cart.add_to_cart_success','Add to :instance success','cart','en'),(405,'cart.item_exist_in_cart','This item is already in stock in the :instance','cart','en'),(406,'cart.item_exist_in_cart','Item n├áy ─æ├ú c├│ trong :instance rß╗ôi','cart','vi'),(407,'cart.item_over_qty','The number of :sku must not exceed :qty','cart','en'),(408,'cart.item_over_qty','Sß╗æ l╞░ß╗úng cß╗ºa :sku kh├┤ng ─æ╞░ß╗úc v╞░ß╗út qu├í :qty','cart','vi'),(409,'checkout.title','Checkout','checkout','en'),(410,'checkout.title','X├íc nhß║¡n thanh to├ín','checkout','vi'),(411,'checkout.order_success_msg','Thank you for your purchase!','checkout','en'),(412,'checkout.order_success_msg','Cß║úm ╞ín v├¼ ─æ╞ín h├áng cß╗ºa bß║ín!','checkout','vi'),(413,'checkout.order_success_order_info','Your order #:order_id','checkout','en'),(414,'checkout.order_success_order_info','─É╞ín h├áng cß╗ºa bß║ín l├á #:order_id','checkout','vi'),(415,'checkout.page_title','Checkout page','checkout','en'),(416,'checkout.page_title','X├íc nhß║¡n thanh to├ín','checkout','vi'),(417,'checkout.success_title','Order success','checkout','en'),(418,'checkout.success_title','─Éß║╖t h├áng th├ánh c├┤ng','checkout','vi'),(419,'product.name','Name','product','en'),(420,'product.name','T├¬n','product','vi'),(421,'product.keyword','Keyword ','product','en'),(422,'product.keyword','Tß╗½ kh├│a','product','vi'),(423,'product.content','Main content','product','en'),(424,'product.content','Nß╗Öi dung ch├¡nh','product','vi'),(425,'product.sku','SKU code','product','en'),(426,'product.sku','M├ú SKU','product','vi'),(427,'product.stock','Stock','product','en'),(428,'product.stock','Sß╗æ l╞░ß╗úng trong kho','product','vi'),(429,'product.cost','Price cost','product','en'),(430,'product.cost','Gi├í cost','product','vi'),(431,'product.price','Price','product','en'),(432,'product.price','Gi├í','product','vi'),(433,'product.image','Image','product','en'),(434,'product.image','H├¼nh ß║únh','product','vi'),(435,'product.view','Viewed','product','en'),(436,'product.view','L╞░ß╗út xem','product','vi'),(437,'product.kind','Kind','product','en'),(438,'product.kind','Kiß╗âu','product','vi'),(439,'product.sold','Sold','product','en'),(440,'product.sold','─É├ú b├ín','product','vi'),(441,'product.minimum','Minimum','product','en'),(442,'product.minimum','Tß╗æi thiß╗âu','product','vi'),(443,'product.minimum_help','Minimum quantity to order','product','en'),(444,'product.minimum_help','Sß╗æ l╞░ß╗úng tß╗æi thiß╗âu ─æß╗ü ─æß║╖t h├áng','product','vi'),(445,'product.width','Width','product','en'),(446,'product.width','Chiß╗üu rß╗Öng','product','vi'),(447,'product.status','Status','product','en'),(448,'product.status','Trß║íng th├íi','product','vi'),(449,'product.quantity','Quantity','product','en'),(450,'product.quantity','Sß╗æ l╞░ß╗úng','product','vi'),(451,'product.weight','Weight','product','en'),(452,'product.weight','Khß╗æi l╞░ß╗úng','product','vi'),(453,'product.length','Length','product','en'),(454,'product.length','K├¡ch th╞░ß╗¢c','product','vi'),(455,'product.height','Height','product','en'),(456,'product.height','Chiß╗üu cao','product','vi'),(457,'product.property','Property','product','en'),(458,'product.property','─Éß║╖c t├¡nh','product','vi'),(459,'product.download_path','Url or path to file','product','en'),(460,'product.download_path','Li├¬n kß║┐t hoß║╖c ─æ╞░ß╗¥ng dß║½n tß╗¢i tß║¡p tin','product','vi'),(461,'product.attribute','Attribute','product','en'),(462,'product.attribute','Thuß╗Öc t├¡nh','product','vi'),(463,'product.tax','Tax','product','en'),(464,'product.tax','Thuß║┐','product','vi'),(465,'product.price_group','Click view price','product','en'),(466,'product.price_group','Bß║Ñm xem gi├í','product','vi'),(467,'product.subtotal','Subtotal','product','en'),(468,'product.subtotal','Gi├í sß║ún phß║⌐m','product','vi'),(469,'product.sub_total','Subtotal','product','en'),(470,'product.sub_total','Gi├í sß║ún phß║⌐m','product','vi'),(471,'product.total_price','Total price','product','en'),(472,'product.total_price','Tß╗òng tiß╗ün','product','vi'),(473,'product.stock_status','Stock status','product','en'),(474,'product.stock_status','Trß║íng th├íi tß╗ôn','product','vi'),(475,'product.out_stock','Out of stock','product','en'),(476,'product.out_stock','Hß║┐t h├áng','product','vi'),(477,'product.in_stock','In stock','product','en'),(478,'product.in_stock','C├▓n h├áng','product','vi'),(479,'product.date_available','Date available','product','en'),(480,'product.date_available','Ng├áy b├ín','product','vi'),(481,'product.category','Category','product','en'),(482,'product.category','Danh mß╗Ñc','product','vi'),(483,'product.category_store','Category store','product','en'),(484,'product.category_store','Danh mß╗Ñc ri├¬ng','product','vi'),(485,'product.brand','Brand','product','en'),(486,'product.brand','Nh├ún h├áng','product','vi'),(487,'product.supplier','Supplier','product','en'),(488,'product.supplier','Nh├á cung cß║Ñp','product','vi'),(489,'product.kind_group','Group','product','en'),(490,'product.kind_group','Sß║ún phß║⌐m nh├│m','product','vi'),(491,'product.kind_bundle','Bundle','product','en'),(492,'product.kind_bundle','Sß║ún phß║⌐m bß╗Ö','product','vi'),(493,'product.kind_single','Single','product','en'),(494,'product.kind_single','Sß║ún phß║⌐m ─æ╞ín','product','vi'),(495,'product.description','Description','product','en'),(496,'product.description','M├┤ tß║ú','product','vi'),(497,'product.product_detail','Product detail','product','en'),(498,'product.product_detail','Chi tiß║┐t sß║ún phß║⌐m','product','vi'),(499,'product.dont_allow_sale','Product :sku dont allow for sale','product','en'),(500,'product.dont_allow_sale','Sß║ún phß║⌐m :sku kh├┤ng b├ín','product','vi'),(501,'product.alias_validate','Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"','product','en'),(502,'product.alias_validate','Tß╗æi ─æa 100 k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"','product','vi'),(503,'product.sku_unique','SKU already exists','product','en'),(504,'product.sku_unique','SKU ─æ├ú c├│ rß╗ôi','product','vi'),(505,'product.product_specifications','Additional infomation','product','en'),(506,'product.product_specifications','Th├┤ng tin bß╗ò sung','product','vi'),(507,'product.alias','Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','product','en'),(508,'product.alias','URL t├╣y chß╗ënh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','product','vi'),(509,'product.sku_validate','Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"','product','en'),(510,'product.sku_validate','Chß╗ë sß╗¡ dß╗Ñng k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"','product','vi'),(511,'product.price_promotion','Price promotion','product','en'),(512,'product.price_promotion','Gi├í khuyß║┐n m├úi','product','vi'),(513,'product.price_promotion_start','Start date','product','en'),(514,'product.price_promotion_start','Ng├áy bß║»t ─æß║ºu','product','vi'),(515,'product.price_promotion_end','End date','product','en'),(516,'product.price_promotion_end','Ng├áy kß║┐t th├║c','product','vi'),(517,'product.edit_product','Edit product','product','en'),(518,'product.edit_product','Chß╗ënh sß╗¡a sß║ún phß║⌐m','product','vi'),(519,'product.admin.title','Quß║ún l├╜ sß║ún phß║⌐m','product.admin','vi'),(520,'product.admin.create_success','Tß║ío item th├ánh c├┤ng!','product.admin','vi'),(521,'product.admin.edit_success','chß╗ënh sß╗¡a item th├ánh c├┤ng!','product.admin','vi'),(522,'product.admin.list','Danh s├ích sß║ún phß║⌐m','product.admin','vi'),(523,'product.admin.action','H├ánh ─æß╗Öng','product.admin','vi'),(524,'product.admin.delete','X├│a','product.admin','vi'),(525,'product.admin.edit','Sß╗¡a','product.admin','vi'),(526,'product.admin.add_new','Th├¬m mß╗¢i','product.admin','vi'),(527,'product.admin.add_new_title','Tß║ío sß║ún phß║⌐m','product.admin','vi'),(528,'product.admin.add_new_title_build','Tß║ío sß║ún phß║⌐m bß╗Ö','product.admin','vi'),(529,'product.admin.add_new_title_group','Tß║ío sß║ún phß║⌐m nh├│m','product.admin','vi'),(530,'product.admin.add_new_des','Tß║ío mß╗¢i mß╗Öt sß║ún phß║⌐m','product.admin','vi'),(531,'product.admin.export','Xuß║Ñt','product.admin','vi'),(532,'product.admin.refresh','L├ám mß╗¢i','product.admin','vi'),(533,'product.admin.select_kind','Chß╗ìn loß║íi sß║ún phß║⌐m','product.admin','vi'),(534,'product.admin.select_supplier','Chß╗ìn nh├á cung cß║Ñp','product.admin','vi'),(535,'product.admin.sort','Thß╗⌐ tß╗▒','product.admin','vi'),(536,'product.admin.select_category','Chß╗ìn danh mß╗Ñc','product.admin','vi'),(537,'product.admin.select_store','Chß╗ìn cß╗¡a h├áng','product.admin','vi'),(538,'product.admin.select_product_in_group','Chß╗ìn sß║ún phß║⌐m trong nh├│m','product.admin','vi'),(539,'product.admin.select_product_in_build','Chß╗ìn sß║ún phß║⌐m trong bß╗Ö','product.admin','vi'),(540,'product.admin.add_product','Th├¬m sß║ún phß║⌐m','product.admin','vi'),(541,'product.admin.add_attribute','Th├¬m thuß╗Öc t├¡nh','product.admin','vi'),(542,'product.admin.add_attribute_place','Nhß║¡p mß╗Öt thuß╗Öc t├¡nh','product.admin','vi'),(543,'product.admin.add_sub_image','Th├¬m ß║únh','product.admin','vi'),(544,'product.admin.add_product_promotion','Th├¬m gi├í khuyß║┐n m├úi','product.admin','vi'),(545,'product.admin.choose_image','Chß╗ìn h├¼nh','product.admin','vi'),(546,'product.admin.add_price_place','Th├¬m tiß╗ün','product.admin','vi'),(547,'product.admin.setting_info','Thiß║┐t lß║¡p sß║ún phß║⌐m','product.admin','vi'),(548,'product.admin.config_info','Cß║Ñu h├¼nh th├┤ng tin','product.admin','vi'),(549,'product.admin.title','Product manager','product.admin','en'),(550,'product.admin.create_success','Create new item success!','product.admin','en'),(551,'product.admin.edit_success','Edit item success!','product.admin','en'),(552,'product.admin.list','Product list','product.admin','en'),(553,'product.admin.action','Action','product.admin','en'),(554,'product.admin.delete','Delete','product.admin','en'),(555,'product.admin.edit','Edit','product.admin','en'),(556,'product.admin.add_new','Add new','product.admin','en'),(557,'product.admin.add_new_title','Add new product','product.admin','en'),(558,'product.admin.add_new_title_build','Add new product build','product.admin','en'),(559,'product.admin.add_new_title_group','Add new product group','product.admin','en'),(560,'product.admin.add_new_des','Create a new product','product.admin','en'),(561,'product.admin.export','Export','product.admin','en'),(562,'product.admin.refresh','Refresh','product.admin','en'),(563,'product.admin.select_kind','Select product kind','product.admin','en'),(564,'product.admin.select_supplier','Select supplier','product.admin','en'),(565,'product.admin.result_item','Showing <b>:item_from</b> to <b>:item_to</b> of <b>:total</b> items</b>','product.admin','en'),(566,'product.admin.sort','Sort','product.admin','en'),(567,'product.admin.select_category','Select category','product.admin','en'),(568,'product.admin.select_store','Select store','product.admin','en'),(569,'product.admin.select_product_in_group','Select products in group','product.admin','en'),(570,'product.admin.select_product_in_build','Select products build','product.admin','en'),(571,'product.admin.select_weight','Select weight class','product.admin','en'),(572,'product.admin.select_weight','Chß╗ìn ─æ╞ín vß╗ï khß╗æi l╞░ß╗úng','product.admin','vi'),(573,'product.admin.select_length','Select length class','product.admin','en'),(574,'product.admin.select_length','Chß╗ìn ─æ╞ín vß╗ï k├¡ch th╞░ß╗¢c','product.admin','vi'),(575,'product.admin.add_product','Add product','product.admin','en'),(576,'product.admin.add_attribute','Add attribute','product.admin','en'),(577,'product.admin.add_attribute_place','Add an attribute value','product.admin','en'),(578,'product.admin.add_sub_image','Add more images','product.admin','en'),(579,'product.admin.add_product_promotion','Add promotion price','product.admin','en'),(580,'product.admin.choose_image','Choose','product.admin','en'),(581,'product.admin.add_price_place','Add price','product.admin','en'),(582,'product.admin.setting_info','Setting product','product.admin','en'),(583,'product.admin.config_info','Config info product','product.admin','en'),(584,'product.admin.search_place','Search Name, SKU','product.admin','en'),(585,'product.admin.search_place','T├¼m t├¬n v├á SKU','product.admin','vi'),(586,'product.admin.length_class','Length class','product.admin','en'),(587,'product.admin.length_class','─É╞ín vß╗ï k├¡ch th╞░ß╗¢c','product.admin','vi'),(588,'product.admin.weight_class','Weight class','product.admin','en'),(589,'product.admin.weight_class','─É╞ín vß╗ï khß╗æi l╞░ß╗úng','product.admin','vi'),(590,'product.config_manager.title','Config product','product.admin','en'),(591,'product.config_manager.field','Field config','product.admin','en'),(592,'product.config_manager.value','Value','product.admin','en'),(593,'product.config_manager.brand','Use BRAND','product.admin','en'),(594,'product.config_manager.supplier','Use SUPPLIER','product.admin','en'),(595,'product.config_manager.price','Use PRICE','product.admin','en'),(596,'product.config_manager.stock','Use STOCK','product.admin','en'),(597,'product.config_manager.cost','Use COST PRICE','product.admin','en'),(598,'product.config_manager.type','Use TYPE (new, hot,...)','product.admin','en'),(599,'product.config_manager.kind','Use STRUCTURE TYPE (single, group, bundle)','product.admin','en'),(600,'product.config_manager.property','Use Product Property: download, property, physical','product.admin','en'),(601,'product.config_manager.attribute','Use ATTRIBUTE (color, size,...)','product.admin','en'),(602,'product.config_manager.promotion','Use PROMOTION PRICE','product.admin','en'),(603,'product.config_manager.available','Use Time to start selling','product.admin','en'),(604,'product.config_manager.tax','Tax configuration','product.admin','en'),(605,'product.config_manager.product_display_price_include_tax','Display price include tax','product.admin','en'),(606,'product.config_manager.weight','Use Weight','product.admin','en'),(607,'product.config_manager.length','Use Length','product.admin','en'),(608,'product.config_manager.required','Required','product.admin','en'),(609,'product.config_manager.title',' Cß║Ñu h├¼nh sß║ún phß║⌐m','product.admin','vi'),(610,'product.config_manager.field','Tr╞░ß╗¥ng cß║Ñu h├¼nh','product.admin','vi'),(611,'product.config_manager.value','Gi├í trß╗ï','product.admin','vi'),(612,'product.config_manager.brand','Sß╗¡ dß╗Ñng NH├âN HIß╗åU','product.admin','vi'),(613,'product.config_manager.supplier','Sß╗¡ dß╗Ñng NH├Ç CUNG Cß║ñP','product.admin','vi'),(614,'product.config_manager.price','Sß╗¡ dß╗Ñng GI├ü','product.admin','vi'),(615,'product.config_manager.cost','Sß╗¡ dß╗Ñng GI├ü Gß╗ÉC','product.admin','vi'),(616,'product.config_manager.stock','Sß╗¡ dß╗Ñng Sß╗É L╞»ß╗óNG','product.admin','vi'),(617,'product.config_manager.type','Sß╗¡ dß╗Ñng PH├éN LOß║áI T├îNH TRß║áNG(mß╗¢i, hot,...)','product.admin','vi'),(618,'product.config_manager.kind','Sß╗¡ dß╗Ñng PH├éN LOß║áI THEO Cß║ñU TR├ÜC (sß║ún phß║⌐m ─æ╞ín, nh├│m, bß╗Ö)','product.admin','vi'),(619,'product.config_manager.property','Sß╗¡ dß╗Ñng PH├éN LOß║áI ─Éß║╢C T├ìNH: download, vß║¡t l├╜, dß╗ïch vß╗Ñ,..','product.admin','vi'),(620,'product.config_manager.attribute','Sß╗¡ dß╗Ñng THUß╗ÿC T├ìNH (m├áu sß║»c, k├¡ch th╞░ß╗¢c,...)','product.admin','vi'),(621,'product.config_manager.promotion','Sß╗¡ dß╗Ñng GI├ü KHUYß║╛N M├âI','product.admin','vi'),(622,'product.config_manager.available','Sß╗¡ dß╗Ñng THß╗£I GIAN Mß╗₧ B├üN','product.admin','vi'),(623,'product.config_manager.tax','Cß║Ñu h├¼nh thuß║┐','product.admin','vi'),(624,'product.config_manager.product_display_price_include_tax','Hiß╗ân thß╗ï gi├í bao gß╗ôm thuß║┐','product.admin','vi'),(625,'product.config_manager.weight','Sß╗¡ dß╗Ñng Khß╗æi l╞░ß╗úng','product.admin','vi'),(626,'product.config_manager.length','Sß╗¡ dß╗Ñng K├¡ch th╞░ß╗¢c','product.admin','vi'),(627,'product.config_manager.required','Bß║»t buß╗Öc','product.admin','vi'),(628,'product.config_manager.show_date_available','Hiß╗çn thß╗¥i gian b├ín h├áng','product.admin','vi'),(629,'product.config_manager.show_date_available','Display date available','product.admin','en'),(630,'product.config_manager.product_display_out_of_stock','Hiß╗çn sß║ún phß║⌐m hß║┐t h├áng','product.admin','vi'),(631,'product.config_manager.product_display_out_of_stock','Display product out of stock','product.admin','en'),(632,'customer.my_account','My page','customer','en'),(633,'customer.my_account','Trang c├í nh├ón','customer','vi'),(634,'customer.password','Password','customer','en'),(635,'customer.password','Mß║¡t khß║⌐u','customer','vi'),(636,'customer.password_new','New password','customer','en'),(637,'customer.password_new','Mß║¡t khß║⌐u mß╗¢i','customer','vi'),(638,'customer.password_old','Old password','customer','en'),(639,'customer.password_old','Mß║¡t khß║⌐u c┼⌐','customer','vi'),(640,'customer.password_old_required','Old password required','customer','en'),(641,'customer.password_old_required','Mß║¡t khß║⌐u c┼⌐ l├á bß║»t buß╗Öc','customer','vi'),(642,'customer.password_old_notcorrect','Old password incorrect','customer','en'),(643,'customer.password_old_notcorrect','Mß║¡t khß║⌐u c┼⌐ ch╞░a ─æ├║ng','customer','vi'),(644,'customer.remember_me','Remember','customer','en'),(645,'customer.remember_me','Ghi nhß╗¢','customer','vi'),(646,'customer.change_password','Change password','customer','en'),(647,'customer.change_password','─Éß╗òi mß║¡t khß║⌐u','customer','vi'),(648,'customer.update_success','Update success','customer','en'),(649,'customer.update_success','Cß║¡p nhß║¡t th├ánh c├┤ng','customer','vi'),(650,'customer.update_infomation','Update infomation','customer','en'),(651,'customer.update_infomation','Cß║¡p nhß║¡t th├┤ng tin','customer','vi'),(652,'customer.change_infomation','Change infomation','customer','en'),(653,'customer.change_infomation','Thay ─æß╗òi th├┤ng tin','customer','vi'),(654,'customer.order_history','Order history','customer','en'),(655,'customer.order_history','Lß╗ïch sß╗¡ mua h├áng','customer','vi'),(656,'customer.order_detail','Order detail','customer','en'),(657,'customer.order_detail','Chi tiß║┐t ─æ╞ín h├áng','customer','vi'),(658,'customer.address_list','Address list','customer','en'),(659,'customer.address_list','Danh s├ích ─æß╗ïa chß╗ë','customer','vi'),(660,'customer.address_detail','Address detail','customer','en'),(661,'customer.address_detail','Danh s├ích ─æß╗ïa chß╗ë','customer','vi'),(662,'customer.address_default','Address default','customer','en'),(663,'customer.address_default','─Éß╗ïa chß╗ë mß║╖c ─æß╗ïnh','customer','vi'),(664,'customer.address_set_default','Set address default','customer','en'),(665,'customer.address_set_default','─Éß║╖t ─æß╗ïa chß╗ë mß║╖c ─æß╗ïnh','customer','vi'),(666,'customer.delete_address_success','Delete address success','customer','en'),(667,'customer.delete_address_success','X├│a ─æß╗ïa chß╗ë th├ánh c├┤ng','customer','vi'),(668,'customer.verify_email.title_page','Email verification','customer','en'),(669,'customer.verify_email.title_page','X├íc thß╗▒c email','customer','vi'),(670,'customer.verify_email.link_invalid','Link invalid','customer','en'),(671,'customer.verify_email.link_invalid','Link kh├┤ng hß╗úp lß╗ç','customer','vi'),(672,'customer.verify_email.verify_success','Successful verification','customer','en'),(673,'customer.verify_email.verify_success','X├íc thß╗▒c th├ánh c├┤ng','customer','vi'),(674,'customer.verify_email.msg_sent','Verification link sent.','customer','en'),(675,'customer.verify_email.msg_sent','─É├ú gß╗¡i li├¬n kß║┐t x├íc minh!','customer','vi'),(676,'customer.verify_email.msg_page_2','click here to request another.','customer','en'),(677,'customer.verify_email.msg_page_2','h├úy nhß║Ñp v├áo ─æ├óy ─æß╗â y├¬u cß║ºu.','customer','vi'),(678,'customer.verify_email.msg_page_1','Before proceeding, please check your email for a verification link. If you did not receive the email,','customer','en'),(679,'customer.verify_email.msg_page_1','Tr╞░ß╗¢c khi tiß║┐p tß╗Ñc, vui l├▓ng kiß╗âm tra email cß╗ºa bß║ín ─æß╗â biß║┐t li├¬n kß║┐t x├íc minh. Nß║┐u bß║ín kh├┤ng nhß║¡n ─æ╞░ß╗úc email,','customer','vi'),(680,'customer.verify_email.title_header','Successful verification','customer','en'),(681,'customer.verify_email.title_header','X├íc thß╗▒c th├ánh c├┤ng','customer','vi'),(682,'customer.password_forgot','Forgot password','customer','en'),(683,'customer.password_forgot','Qu├¬n mß║¡t khß║⌐u','customer','vi'),(684,'customer.login_title','Login page','customer','en'),(685,'customer.login_title','Trang ─æ─âng nhß║¡p','customer','vi'),(686,'customer.register_success','Successful register','customer','en'),(687,'customer.register_success','─É─âng k├╜ th├ánh c├┤ng','customer','vi'),(688,'customer.signup','Signup','customer','en'),(689,'customer.signup','─É─âng k├╜','customer','vi'),(690,'customer.title_register','Account register','customer','en'),(691,'customer.title_register','─É─âng k├╜ t├ái khoß║ún','customer','vi'),(692,'customer.password_reset','Password reset','customer','en'),(693,'customer.password_reset','Reset mß║¡t khß║⌐u','customer','vi'),(694,'customer.password_confirm','Password confirm','customer','en'),(695,'customer.password_confirm','X├íc nhß║¡n mß║¡t khß║⌐u','customer','vi'),(696,'customer.phone_regex','The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.','customer','en'),(697,'customer.phone_regex','Sß╗æ ─æiß╗çn thoß║íi ─æß╗ïnh dß║íng kh├┤ng ─æ├║ng. Chiß╗üu d├ái 8-14, chß╗ë sß╗¡ dß╗Ñng sß╗æ 0-9 v├á \"-\"','customer','vi'),(698,'customer.country','Country','customer','en'),(699,'customer.country','Quß╗æc gia','customer','vi'),(700,'customer.company','C├┤ng ty','customer','vi'),(701,'customer.company','Company','customer','en'),(702,'customer.address3','─Éß╗ïa chß╗ë nh├á','customer','vi'),(703,'customer.address3','Address 3','customer','en'),(704,'customer.address2','Quß║¡n/Huyß╗çn','customer','vi'),(705,'customer.address2','Address 2','customer','en'),(706,'customer.address1','Tß╗ënh/Th├ánh','customer','vi'),(707,'customer.address1','Address 1','customer','en'),(708,'customer.postcode','M├ú b╞░u ─æiß╗çn','customer','vi'),(709,'customer.postcode','Post code','customer','en'),(710,'customer.phone','Phone','customer','en'),(711,'customer.phone','─Éiß╗çn thoß║íi','customer','vi'),(712,'customer.last_name_kana','Hß╗ì kana','customer','vi'),(713,'customer.last_name_kana','Last name kana','customer','en'),(714,'customer.first_name_kana','First name kana','customer','en'),(715,'customer.first_name_kana','T├¬n Kana','customer','vi'),(716,'customer.full_name','Full name','customer','en'),(717,'customer.full_name','T├¬n ─æß║ºy ─æß╗º','customer','vi'),(718,'customer.name','Name','customer','en'),(719,'customer.name','T├¬n','customer','vi'),(720,'customer.midle_name','T├¬n ─æß╗çm','customer','vi'),(721,'customer.midle_name','Midle name','customer','en'),(722,'customer.last_name','Hß╗ì','customer','vi'),(723,'customer.last_name','Last name','customer','en'),(724,'customer.first_name','T├¬n','customer','vi'),(725,'customer.first_name','First name','customer','en'),(726,'customer.email','Email','customer','vi'),(727,'customer.email','Email','customer','en'),(728,'customer.sex','Giß╗¢i t├¡nh','customer','vi'),(729,'customer.sex','Sex','customer','en'),(730,'customer.sex_women','Women','customer','en'),(731,'customer.sex_women','Nß╗»','customer','vi'),(732,'customer.sex_other','Other','customer','en'),(733,'customer.sex_other','Kh├íc','customer','vi'),(734,'customer.sex_men','Men','customer','en'),(735,'customer.sex_men','Nam','customer','vi'),(736,'customer.birthday','Ng├áy sinh','customer','vi'),(737,'customer.birthday','Birthday','customer','en'),(738,'customer.title_login','Login account','customer','en'),(739,'customer.title_login','─É─âng nhß║¡p','customer','vi'),(740,'customer.my_profile','T├ái khoß║ún','customer','en'),(741,'customer.my_profile','My profile','customer','vi'),(742,'customer.status','Trß║íng th├íi','customer','en'),(743,'customer.status','Status','customer','vi'),(744,'customer.group','Nh├│m','customer','en'),(745,'customer.group','Group','customer','vi'),(746,'customer.admin.add_new_title','Th├¬m mß╗¢i kh├ích h├áng','customer.admin','vi'),(747,'customer.admin.add_new_title','Add new customer','customer.admin','en'),(748,'customer.admin.add_new_des','Th├¬m mß╗¢i','customer.admin','vi'),(749,'customer.admin.add_new_des','Add new','customer.admin','en'),(750,'customer.admin.provider','Provider','customer.admin','vi'),(751,'customer.admin.provider','Provider','customer.admin','en'),(752,'customer.admin.field','Tr╞░ß╗¥ng dß╗» liß╗çu','customer.admin','vi'),(753,'customer.admin.field','Field data','customer.admin','en'),(754,'customer.admin.value','Gi├í trß╗ï','customer.admin','vi'),(755,'customer.admin.value','Value','customer.admin','en'),(756,'customer.admin.required','Bß║»t buß╗Öc','customer.admin','vi'),(757,'customer.admin.required','Required','customer.admin','en'),(758,'customer.admin.keep_password','Giß╗» mß║¡t khß║⌐u','customer.admin','vi'),(759,'customer.admin.keep_password','Keep password','customer.admin','en'),(760,'customer.admin.list','Danh s├ích kh├ích h├áng','customer.admin','vi'),(761,'customer.admin.list','Customer list','customer.admin','en'),(762,'customer.config_manager.title',' Config customer','customer.admin','en'),(763,'customer.config_manager.field','Field config','customer.admin','en'),(764,'customer.config_manager.value','Value','customer.admin','en'),(765,'customer.config_manager.lastname','Use last name','customer.admin','en'),(766,'customer.config_manager.name_kana','Use name KANA','customer.admin','en'),(767,'customer.config_manager.firstname_kana','Use first name KANA','customer.admin','en'),(768,'customer.config_manager.lastname_kana','Use last name KANA','customer.admin','en'),(769,'customer.config_manager.address1','Use ADDRESS 1','customer.admin','en'),(770,'customer.config_manager.address2','Use ADDRESS 2','customer.admin','en'),(771,'customer.config_manager.address3','Use ADDRESS 3','customer.admin','en'),(772,'customer.config_manager.company','Use COMPANY','customer.admin','en'),(773,'customer.config_manager.postcode','Use POSTCODE','customer.admin','en'),(774,'customer.config_manager.country','Use COUNTRY','customer.admin','en'),(775,'customer.config_manager.group','Use GROUP','customer.admin','en'),(776,'customer.config_manager.birthday','Use BIRTHDAY','customer.admin','en'),(777,'customer.config_manager.sex','Use SEX','customer.admin','en'),(778,'customer.config_manager.phone','Use PHONE','customer.admin','en'),(779,'customer.config_manager.reqired','Required','customer.admin','en'),(780,'customer.config_manager.title',' Cß║Ñu h├¼nh kh├ích h├áng','customer.admin','vi'),(781,'customer.config_manager.lastname','Sß╗¡ dß╗Ñng Hß╗î','customer.admin','vi'),(782,'customer.config_manager.name_kana','Sß╗¡ dß╗Ñng t├¬n KANA','customer.admin','vi'),(783,'customer.config_manager.firstname_kana','Sß╗¡ dß╗Ñng t├¬n KANA','customer.admin','vi'),(784,'customer.config_manager.lasttname_kana','Sß╗¡ dß╗Ñng hß╗ì KANA','customer.admin','vi'),(785,'customer.config_manager.address1','Sß╗¡ dß╗Ñng Tß╗ënh/Th├ánh','customer.admin','vi'),(786,'customer.config_manager.address2','Sß╗¡ dß╗Ñng Quß║¡n/Huyß╗çn','customer.admin','vi'),(787,'customer.config_manager.address3','─Éß╗ïa chß╗ë nh├á','customer.admin','vi'),(788,'customer.config_manager.company','Sß╗¡ dß╗Ñng C├┤ng Ty','customer.admin','vi'),(789,'customer.config_manager.postcode','Sß╗¡ dß╗Ñng M├ú b╞░u ch├¡nh','customer.admin','vi'),(790,'customer.config_manager.country','Sß╗¡ dß╗Ñng Quß╗æc Gia','customer.admin','vi'),(791,'customer.config_manager.group','Sß╗¡ dß╗Ñng Nh├│m','customer.admin','vi'),(792,'customer.config_manager.birthday','Sß╗¡ dß╗Ñng NG├ÇY SINH','customer.admin','vi'),(793,'customer.config_manager.sex','Sß╗¡ dß╗Ñng GIß╗ÜI T├ìNH','customer.admin','vi'),(794,'customer.config_manager.phone','Sß╗¡ dß╗Ñng Sß╗É ─ÉIß╗åN THOß║áI','customer.admin','vi'),(795,'customer.config_manager.required','Bß║»t buß╗Öc','customer.admin','vi'),(796,'order.order_status','Trß║íng th├íi ─æ╞ín h├áng','order','vi'),(797,'order.order_status','Order status','order','en'),(798,'order.shipping_status','Trß║íng th├íi vß║¡n chuyß╗ân','order','vi'),(799,'order.shipping_status','Shipping status','order','en'),(800,'order.payment_status','Trß║íng th├íi thanh to├ín','order','vi'),(801,'order.payment_status','Payment status','order','en'),(802,'order.payment_method','Ph╞░╞íng thß╗⌐c thanh to├ín','order','vi'),(803,'order.payment_method','Payment method','order','en'),(804,'order.shipping_method','Ph╞░╞íng thß╗⌐c vß║¡n chuyß╗ân','order','vi'),(805,'order.shipping_method','Shipping method','order','en'),(806,'order.currency','Tiß╗ün tß╗ç','order','vi'),(807,'order.currency','Currency','order','en'),(808,'order.exchange_rate','Tß╗ë gi├í','order','vi'),(809,'order.exchange_rate','Exchange rate','order','en'),(810,'order.balance','C├▓n lß║íi','order','vi'),(811,'order.balance','Balance','order','en'),(812,'order.total','Tß╗òng tiß╗ün','order','vi'),(813,'order.total','Total','order','en'),(814,'order.sub_total','Tiß╗ün h├áng','order','vi'),(815,'order.sub_total','SubTotal','order','en'),(816,'order.subtotal','Tiß╗ün h├áng','order','vi'),(817,'order.subtotal','SubTotal','order','en'),(818,'order.tax','Thuß║┐','order','vi'),(819,'order.tax','Tax','order','en'),(820,'order.shipping','Vß║¡n chuyß╗ân','order','vi'),(821,'order.shipping','Shipping','order','en'),(822,'order.received','─É├ú nhß║¡n','order','vi'),(823,'order.received','Received','order','en'),(824,'order.discount','Giß║úm gi├í','order','vi'),(825,'order.discount','Discount','order','en'),(826,'order.totals.total','Tß╗òng tiß╗ün','order','vi'),(827,'order.totals.total','Total','order','en'),(828,'order.totals.sub_total','Tiß╗ün h├áng','order','vi'),(829,'order.totals.sub_total','SubTotal','order','en'),(830,'order.totals.tax','Thuß║┐','order','vi'),(831,'order.totals.tax','Tax','order','en'),(832,'order.totals.discount','Giß║úm gi├í','order','vi'),(833,'order.totals.discount','Discount','order','en'),(834,'order.totals.shipping','Vß║¡n chuyß╗ân','order','vi'),(835,'order.totals.shipping','Shipping','order','en'),(836,'order.totals.received','─É├ú nhß║¡n','order','vi'),(837,'order.totals.received','Received','order','en'),(838,'order.detail','Chi tiß║┐t','order','vi'),(839,'order.detail','Order detail','order','en'),(840,'order.phone_regex','The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.','order','en'),(841,'order.phone_regex','Sß╗æ ─æiß╗çn thoß║íi ─æß╗ïnh dß║íng kh├┤ng ─æ├║ng. Chiß╗üu d├ái 8-14, chß╗ë sß╗¡ dß╗Ñng sß╗æ 0-9 v├á \"-\"','order','vi'),(842,'order.country','Country','order','en'),(843,'order.country','Quß╗æc gia','order','vi'),(844,'order.company','C├┤ng ty','order','vi'),(845,'order.company','Company','order','en'),(846,'order.address3','─Éß╗ïa chß╗ë nh├á','order','vi'),(847,'order.address3','Address 3','order','en'),(848,'order.address2','Quß║¡n/Huyß╗çn','order','vi'),(849,'order.address2','Address 2','order','en'),(850,'order.address1','Tß╗ënh/Th├ánh','order','vi'),(851,'order.address1','Address 1','order','en'),(852,'order.address','─Éß╗ïa chß╗ë','order','vi'),(853,'order.address','Address','order','en'),(854,'order.postcode','M├ú b╞░u ─æiß╗çn','order','vi'),(855,'order.postcode','Post code','order','en'),(856,'order.phone','Phone','order','en'),(857,'order.phone','─Éiß╗çn thoß║íi','order','vi'),(858,'order.last_name_kana','Hß╗ì kana','order','vi'),(859,'order.last_name_kana','Last name kana','order','en'),(860,'order.first_name_kana','First name kana','order','en'),(861,'order.first_name_kana','T├¬n Kana','order','vi'),(862,'order.full_name','Full name','order','en'),(863,'order.full_name','T├¬n ─æß║ºy ─æß╗º','order','vi'),(864,'order.name','Name','order','en'),(865,'order.name','T├¬n','order','vi'),(866,'order.midle_name','T├¬n ─æß╗çm','order','vi'),(867,'order.midle_name','Midle name','order','en'),(868,'order.last_name','Hß╗ì','order','vi'),(869,'order.last_name','Last name','order','en'),(870,'order.first_name','T├¬n','order','vi'),(871,'order.first_name','First name','order','en'),(872,'order.email','Email','order','vi'),(873,'order.email','Email','order','en'),(874,'order.sex','Giß╗¢i t├¡nh','order','vi'),(875,'order.sex','Sex','order','en'),(876,'order.sex_women','Women','order','en'),(877,'order.sex_women','Nß╗»','order','vi'),(878,'order.sex_other','Other','order','en'),(879,'order.sex_other','Kh├íc','order','vi'),(880,'order.sex_men','Men','order','en'),(881,'order.sex_men','Nam','order','vi'),(882,'order.birthday','Ng├áy sinh','order','vi'),(883,'order.birthday','Birthday','order','en'),(884,'order.status','Trß║íng th├íi ─æ╞ín h├áng','order','vi'),(885,'order.status','Order status','order','en'),(886,'order.order_detail','Chi tiß║┐t ─æ╞ín h├áng','order','vi'),(887,'order.order_detail','Order detail','order','en'),(888,'order.note','Note','order','en'),(889,'order.note','Ghi ch├║','order','vi'),(890,'order.order_note','Note','order','en'),(891,'order.order_note','Ghi ch├║','order','vi'),(892,'order.domain','Domain','order','en'),(893,'order.domain','T├¬n miß╗ün','order','vi'),(894,'order.admin.order_history','Order history','order.admin','en'),(895,'order.admin.history_staff','Staff','order.admin','en'),(896,'order.admin.history_content','Content','order.admin','en'),(897,'order.admin.history_time','Time','order.admin','en'),(898,'order.admin.order_history','Lß╗ïch sß╗¡ ─æ╞ín h├áng','order.admin','vi'),(899,'order.admin.history_staff','Nh├ón vi├¬n','order.admin','vi'),(900,'order.admin.history_content','Nß╗Öi dung','order.admin','vi'),(901,'order.admin.history_time','Thß╗¥i gian','order.admin','vi'),(902,'order.admin.title','Quß║ún l├╜ ─æ╞ín h├áng','order.admin','vi'),(903,'order.admin.config_title','Cß║Ñu h├¼nh ─æ╞ín h├áng','order.admin','vi'),(904,'order.admin.list','Danh s├ích ─æ╞ín h├áng','order.admin','vi'),(905,'order.admin.payment_method','Ph╞░╞íng thß╗⌐c thanh to├ín','order.admin','vi'),(906,'order.admin.payment_method_short','PM method','order.admin','vi'),(907,'order.admin.currency','Tiß╗ün tß╗ç','order.admin','vi'),(908,'order.admin.exchange_rate','Tß╗ë gi├í','order.admin','vi'),(909,'order.admin.order_new','Th├¬m mß╗¢i','order.admin','vi'),(910,'order.admin.add_new','Th├¬m mß╗¢i','order.admin','vi'),(911,'order.admin.add_new_title','Tß║ío ─æ╞ín h├áng','order.admin','vi'),(912,'order.admin.add_new_des','Tß║ío mß╗¢i mß╗Öt ─æ╞ín h├áng','order.admin','vi'),(913,'order.admin.export_batch','Xuß║Ñt','order.admin','vi'),(914,'order.admin.config_info','Cß║Ñu h├¼nh ─æ╞ín h├áng','order.admin','vi'),(915,'order.admin.store','Cß╗¡a h├áng','order.admin','vi'),(916,'order.admin.title','Order manager','order.admin','en'),(917,'order.admin.config_title','Config info order','order.admin','en'),(918,'order.admin.list','Order list','order.admin','en'),(919,'order.admin.payment_method','Payment method','order.admin','en'),(920,'order.admin.payment_method_short','PM method','order.admin','en'),(921,'order.admin.currency','Currency','order.admin','en'),(922,'order.admin.exchange_rate','Exchange rate','order.admin','en'),(923,'order.admin.status','Status','order.admin','en'),(924,'order.admin.created_at','Created at','order.admin','en'),(925,'order.admin.order_new','Add new','order.admin','en'),(926,'order.admin.add_new','Add new','order.admin','en'),(927,'order.admin.add_new_title','Add new order','order.admin','en'),(928,'order.admin.add_new_des','Create a new order','order.admin','en'),(929,'order.admin.export_batch','Export','order.admin','en'),(930,'order.admin.config_info','Config order','order.admin','en'),(931,'order.admin.store','Store','order.admin','en'),(932,'order.admin.search_order_status','Search order status','order.admin','en'),(933,'order.admin.search_order_status','T├¼m trß║íng th├íi ─æ╞ín h├áng','order.admin','vi'),(934,'order.admin.search_email','Search email','order.admin','en'),(935,'order.admin.search_email','T├¼m email','order.admin','vi'),(936,'order.admin.search_id','Search id','order.admin','en'),(937,'order.admin.search_id','T├¼m ID','order.admin','vi'),(938,'order.admin.select_product','Select product','order.admin','en'),(939,'order.admin.select_product','Chß╗ìn sß║ún phß║⌐m','order.admin','vi'),(940,'order.admin.product_buy_out_of_stock','Allow buy out of stock','order.admin','en'),(941,'order.admin.product_buy_out_of_stock','Cho ph├⌐p mua h├áng ─æ├ú hß║┐t','order.admin','vi'),(942,'order.admin.shipping_off','Dont use shipping method','order.admin','en'),(943,'order.admin.shipping_off','Kh├┤ng sß╗¡ dß╗Ñng ph╞░╞íng thß╗⌐c vß║¡n chuyß╗ân','order.admin','vi'),(944,'order.admin.payment_off','Dont use payment method','order.admin','en'),(945,'order.admin.payment_off','Kh├┤ng sß╗¡ dß╗Ñng ph╞░╞íng thß╗⌐c thanh to├ín','order.admin','vi'),(946,'order.admin.product_preorder','Allow pre-order','order.admin','en'),(947,'order.admin.product_preorder','Cho ph├⌐p ─æß║╖t h├áng tr╞░ß╗¢c','order.admin','vi'),(948,'order.admin.shop_allow_guest','Allow buy no need login','order.admin','en'),(949,'order.admin.shop_allow_guest','Cho ph├⌐p mua kh├┤ng cß║ºn ─æ─âng nhß║¡p','order.admin','vi'),(950,'contact.name','T├¬n','contact','vi'),(951,'contact.name','Name','contact','en'),(952,'contact.email','Email','contact','vi'),(953,'contact.email','Email','contact','en'),(954,'contact.phone','─Éiß╗çn thoß║íi','contact','vi'),(955,'contact.phone','Phone','contact','en'),(956,'contact.subject','Ti├¬u ─æß╗ü','contact','vi'),(957,'contact.subject','Subject','contact','en'),(958,'contact.content','Nß╗Öi dung','contact','vi'),(959,'contact.content','content','contact','en'),(960,'contact.page_title','Li├¬n hß╗ç','contact','vi'),(961,'contact.page_title','Contact page','contact','en'),(962,'contact.thank_contact','Cß║úm ╞ín v├¼ bß║ín ─æ├ú li├¬n hß╗ç','contact','vi'),(963,'contact.thank_contact','Thank you for your contact','contact','en'),(964,'filter_sort.sort','Thß╗⌐ tß╗▒','filter_sort','vi'),(965,'filter_sort.sort','Sort','filter_sort','en'),(966,'filter_sort.price_asc','Gi├í t─âng dß║ºn','filter_sort','vi'),(967,'filter_sort.price_asc','Price ascending','filter_sort','en'),(968,'filter_sort.price_desc','Gi├í giß║úm dß║ºn','filter_sort','vi'),(969,'filter_sort.price_desc','Price descending','filter_sort','en'),(970,'filter_sort.sort_asc','Sort t─âng dß║ºn','filter_sort','vi'),(971,'filter_sort.sort_asc','Sort ascending','filter_sort','en'),(972,'filter_sort.sort_desc','Sort giß║úm dß║ºn','filter_sort','vi'),(973,'filter_sort.sort_desc','Sort descending','filter_sort','en'),(974,'filter_sort.id_asc','ID t─âng dß║ºn','filter_sort','vi'),(975,'filter_sort.id_asc','ID ascending','filter_sort','en'),(976,'filter_sort.id_desc','ID giß║úm dß║ºn','filter_sort','vi'),(977,'filter_sort.id_desc','ID descending','filter_sort','en'),(978,'filter_sort.name_desc','T├¬n theo thß╗⌐ tß╗▒ z-a','filter_sort','vi'),(979,'filter_sort.name_desc','Name in z-a order','filter_sort','en'),(980,'filter_sort.name_asc','T├¬n theo thß╗⌐ tß╗▒ a-z','filter_sort','vi'),(981,'filter_sort.name_asc','Name in a-z order','filter_sort','en'),(982,'filter_sort.first_name_desc','T├¬n theo thß╗⌐ tß╗▒ z-a','filter_sort','vi'),(983,'filter_sort.first_name_desc','First name in z-a order','filter_sort','en'),(984,'filter_sort.first_name_asc','T├¬n theo thß╗⌐ tß╗▒ a-z','filter_sort','vi'),(985,'filter_sort.first_name_asc','First name in a-z order','filter_sort','en'),(986,'filter_sort.last_name_desc','Hß╗ì theo thß╗⌐ tß╗▒ z-a','filter_sort','vi'),(987,'filter_sort.last_name_desc','Last name in z-a order','filter_sort','en'),(988,'filter_sort.last_name_asc','Hß╗ì theo thß╗⌐ tß╗▒ a-z','filter_sort','vi'),(989,'filter_sort.last_name_asc','Last name in a-z order','filter_sort','en'),(990,'filter_sort.title_desc','Ti├¬u ─æß╗ü theo thß╗⌐ tß╗▒ z-a','filter_sort','vi'),(991,'filter_sort.title_desc','Title in z-a order','filter_sort','en'),(992,'filter_sort.title_asc','Ti├¬u ─æß╗ü theo thß╗⌐ tß╗▒ a-z','filter_sort','vi'),(993,'filter_sort.title_asc','Title in a-z order','filter_sort','en'),(994,'filter_sort.sold_asc','B├ín ra t─âng dß║ºn','filter_sort','vi'),(995,'filter_sort.sold_asc','Sold ascending','filter_sort','en'),(996,'filter_sort.sold_desc','B├ín ra giß║úm dß║ºn','filter_sort','vi'),(997,'filter_sort.sold_desc','Sold descending','filter_sort','en'),(998,'filter_sort.view_desc','L╞░ß╗út xem giß║úm dß║ºn','filter_sort','vi'),(999,'filter_sort.view_desc','View descending','filter_sort','en'),(1000,'filter_sort.view_asc','L╞░ß╗út xem t─âng dß║ºn','filter_sort','vi'),(1001,'filter_sort.view_asc','View ascending','filter_sort','en'),(1002,'filter_sort.alpha_desc',':alpha theo thß╗⌐ tß╗▒ z-a','filter_sort','vi'),(1003,'filter_sort.alpha_desc',':alpha in z-a order','filter_sort','en'),(1004,'filter_sort.alpha_asc',':alpha theo thß╗⌐ tß╗▒ a-z','filter_sort','vi'),(1005,'filter_sort.alpha_asc',':alpha in a-z order','filter_sort','en'),(1006,'filter_sort.value_asc',':value t─âng dß║ºn','filter_sort','vi'),(1007,'filter_sort.value_asc',':value ascending','filter_sort','en'),(1008,'filter_sort.value_desc',':value giß║úm dß║ºn','filter_sort','vi'),(1009,'filter_sort.value_desc',':value descending','filter_sort','en'),(1010,'subscribe.email','Email','subscribe','en'),(1011,'subscribe.action','Subscribe','subscribe','en'),(1012,'subscribe.title','Subscribe email','subscribe','en'),(1013,'subscribe.subscribe_des','Get the most recent updates from us','subscribe','en'),(1014,'subscribe.subscribe_email','Your email','subscribe','en'),(1015,'subscribe.subscribe_success','Subscribe email successful!','subscribe','en'),(1016,'subscribe.email','Email','subscribe','vi'),(1017,'subscribe.action','─É─âng k├╜','subscribe','vi'),(1018,'subscribe.title','─É─âng k├╜ email','subscribe','vi'),(1019,'subscribe.subscribe_des','Nhß║¡n cß║¡p nhß║¡t mß╗¢i nhß║Ñt','subscribe','vi'),(1020,'subscribe.subscribe_email','Email cß╗ºa bß║ín','subscribe','vi'),(1021,'subscribe.subscribe_success','─É─âng k├╜ email th├ánh c├┤ng!','subscribe','vi'),(1022,'subscribe.admin.email','Email','subscribe.admin','vi'),(1023,'subscribe.admin.email','Email','subscribe.admin','en'),(1024,'subscribe.admin.list','Danh s├ích ─æang k├╜','subscribe.admin','vi'),(1025,'subscribe.admin.list','Subscribe list','subscribe.admin','en'),(1026,'subscribe.admin.status','Trß║íng th├íi','subscribe.admin','vi'),(1027,'subscribe.admin.status','Status','subscribe.admin','en'),(1028,'subscribe.admin.add_new_title','Th├¬m ─æ─âng k├╜','subscribe.admin','vi'),(1029,'subscribe.admin.add_new_title','Add subscribe','subscribe.admin','en'),(1030,'subscribe.admin.add_new_des','Th├¬m t├ái khoß║ún ─æ─âng k├╜','subscribe.admin','vi'),(1031,'subscribe.admin.add_new_des','Add a new subscribe','subscribe.admin','en'),(1032,'subscribe.admin.search_place','Search ID or email','subscribe.admin','en'),(1033,'subscribe.admin.search_place','T├¼m ID hoß║╖c email','admin.subscribe','vi'),(1034,'about.page_title','About us','about','en'),(1035,'about.page_title','Giß╗¢i thiß╗çu','about','vi'),(1036,'admin.user.setting','Setting','admin.user','en'),(1037,'admin.user.setting','C├ái ─æß║╖t','admin.user','vi'),(1038,'admin.user.logout','Logout','admin.user','en'),(1039,'admin.user.logout','─É─âng xuß║Ñt','admin.user','vi'),(1040,'admin.user.username','User name','admin.user','en'),(1041,'admin.user.username','T├¬n ─æ─âng nhß║¡p','admin.user','vi'),(1042,'admin.user.password','Password','admin.user','en'),(1043,'admin.user.password','Mß║¡t khß║⌐u','admin.user','vi'),(1044,'admin.user.remember_me','Remember','admin.user','en'),(1045,'admin.user.remember_me','Ghi nhß╗¢','admin.user','vi'),(1046,'admin.user.login','Login','admin.user','en'),(1047,'admin.user.login','─É─âng nhß║¡p','admin.user','vi'),(1048,'admin.user.keep_password','─Éß╗â trß╗æng nß║┐u kh├┤ng muß╗æn thay ─æß╗òi mß║¡t khß║⌐u','admin.user','vi'),(1049,'admin.user.select_roles','Chß╗ìn vai tr├▓','admin.user','vi'),(1050,'admin.user.select_permission','Chß╗ìn quyß╗ün hß║ín','admin.user','vi'),(1051,'admin.user.add_permission','Th├¬m quyß╗ün hß║ín','admin.user','vi'),(1052,'admin.user.select_store','Chß╗ìn cß╗¡a h├áng','admin.user','vi'),(1053,'admin.user.name','T├¬n ─æß║ºy ─æß╗º','admin.user','vi'),(1054,'admin.user.user_name','T├¬n ─æ─âng nhß║¡p','admin.user','vi'),(1055,'admin.user.email','Email','admin.user','vi'),(1056,'admin.user.avatar','H├¼nh ─æß║íi diß╗çn','admin.user','vi'),(1057,'admin.user.roles','vai tr├▓','admin.user','vi'),(1058,'admin.user.permission','Quyß╗ün hß║ín','admin.user','vi'),(1059,'admin.user.created_at','Tß║ío l├║c','admin.user','vi'),(1060,'admin.user.updated_at','Cß║¡p nhß║¡t','admin.user','vi'),(1061,'admin.user.member_since','Tham gia tß╗½','admin.user','vi'),(1062,'admin.user.password_confirmation','X├íc nhß║¡n mß║¡t khß║⌐u','admin.user','vi'),(1063,'admin.user.username_validate','Chß╗ë sß╗¡ dß╗Ñng k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ','admin.user','vi'),(1064,'admin.user.title','Quß║ún l├╜ ng╞░ß╗¥i d├╣ng','admin.user','vi'),(1065,'admin.user.list','Danh s├ích ng╞░ß╗¥i d├╣ng','admin.user','vi'),(1066,'admin.user.add_new','Th├¬m mß╗¢i','admin.user','vi'),(1067,'admin.user.add_new_title','Tß║ío ng╞░ß╗¥i d├╣ng','admin.user','vi'),(1068,'admin.user.add_new_des','Tß║ío mß╗¢i ng╞░ß╗¥i d├╣ng','admin.user','vi'),(1069,'admin.user.name','Full name','admin.user','en'),(1070,'admin.user.user_name','User name','admin.user','en'),(1071,'admin.user.email','Email','admin.user','en'),(1072,'admin.user.avatar','Avatar','admin.user','en'),(1073,'admin.user.roles','Roles','admin.user','en'),(1074,'admin.user.permission','Permission','admin.user','en'),(1075,'admin.user.created_at','Created at','admin.user','en'),(1076,'admin.user.updated_at','Updated at','admin.user','en'),(1077,'admin.user.member_since','Member since','admin.user','en'),(1078,'admin.user.password_confirmation','Confirmation','admin.user','en'),(1079,'admin.user.username_validate','Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ','admin.user','en'),(1080,'admin.user.keep_password','Leave blank if you dont want to change the password','admin.user','en'),(1081,'admin.user.select_roles','Select roles','admin.user','en'),(1082,'admin.user.select_permission','Select permission','admin.user','en'),(1083,'admin.user.add_permission','Add permission','admin.user','en'),(1084,'admin.user.select_store','Select store','admin.user','en'),(1085,'admin.user.add_new','Add new','admin.user','en'),(1086,'admin.user.add_new_title','Add new user','admin.user','en'),(1087,'admin.user.add_new_des','Create a new user','admin.user','en'),(1088,'admin.user.list','User list','admin.user','en'),(1089,'admin.user.title','User manager','admin.user','en'),(1090,'admin.user.search_place','Search name','admin.user','en'),(1091,'admin.user.search_place','T├¼m t├¬n','admin.user','vi'),(1092,'admin.menu_titles.order_manager','Quß║ún l├╜ ─æ╞ín h├áng','admin.menu_titles','vi'),(1093,'admin.menu_titles.order_manager','Order manager','admin.menu_titles','en'),(1094,'admin.menu_titles.catalog_mamager','Sß║ún phß║⌐m & danh mß╗Ñc','admin.menu_titles','vi'),(1095,'admin.menu_titles.catalog_mamager','Product & category','admin.menu_titles','en'),(1096,'admin.menu_titles.customer_manager','Quß║ún l├╜ kh├ích h├áng','admin.menu_titles','vi'),(1097,'admin.menu_titles.customer_manager','Customer manager','admin.menu_titles','en'),(1098,'admin.menu_titles.admin_global','Quß║ún l├╜ chung','admin.menu_titles','vi'),(1099,'admin.menu_titles.admin_global','Admin global','admin.menu_titles','en'),(1100,'admin.menu_titles.ADMIN_SHOP','Cß╗¡a h├áng','admin.menu_titles','vi'),(1101,'admin.menu_titles.ADMIN_SHOP','Admin shop','admin.menu_titles','en'),(1102,'admin.menu_titles.ADMIN_CONTENT','Nß╗Öi dung','admin.menu_titles','vi'),(1103,'admin.menu_titles.ADMIN_CONTENT','Content','admin.menu_titles','en'),(1104,'admin.menu_titles.ADMIN_EXTENSION','Phß║ºn mß╗ƒ rß╗Öng','admin.menu_titles','vi'),(1105,'admin.menu_titles.ADMIN_EXTENSION','Extension','admin.menu_titles','en'),(1106,'admin.menu_titles.ADMIN_SYSTEM','Cß║Ñu h├¼nh hß╗ç thß╗æng','admin.menu_titles','vi'),(1107,'admin.menu_titles.ADMIN_SYSTEM','System config','admin.menu_titles','en'),(1108,'admin.menu_titles.page_manager','Quß║ún l├╜ trang','admin.menu_titles','vi'),(1109,'admin.menu_titles.page_manager','Page manager','admin.menu_titles','en'),(1110,'admin.menu_titles.order','─É╞ín h├áng','admin.menu_titles','vi'),(1111,'admin.menu_titles.order','Order','admin.menu_titles','en'),(1112,'admin.menu_titles.order_status','Trß║íng th├íi ─æ╞ín h├áng','admin.menu_titles','vi'),(1113,'admin.menu_titles.order_status','Order status','admin.menu_titles','en'),(1114,'admin.menu_titles.payment_status','Trß║íng th├íi thanh to├ín','admin.menu_titles','vi'),(1115,'admin.menu_titles.payment_status','Payment status','admin.menu_titles','en'),(1116,'admin.menu_titles.shipping_status','Trß║íng th├íi vß║¡n chuyß╗ân','admin.menu_titles','vi'),(1117,'admin.menu_titles.shipping_status','Shipping status','admin.menu_titles','en'),(1118,'admin.menu_titles.product','Sß║ún phß║⌐m','admin.menu_titles','vi'),(1119,'admin.menu_titles.product','Products','admin.menu_titles','en'),(1120,'admin.menu_titles.category','Danh mß╗Ñc','admin.menu_titles','vi'),(1121,'admin.menu_titles.category','Categories','admin.menu_titles','en'),(1122,'admin.menu_titles.supplier','Nh├á cung cß║Ñp','admin.menu_titles','vi'),(1123,'admin.menu_titles.supplier','Suppliers','admin.menu_titles','en'),(1124,'admin.menu_titles.brand','Nh├ún hiß╗çu','admin.menu_titles','vi'),(1125,'admin.menu_titles.brand','Brands','admin.menu_titles','en'),(1126,'admin.menu_titles.attribute_group','Nh├│m thuß╗Öc t├¡nh','admin.menu_titles','vi'),(1127,'admin.menu_titles.attribute_group','Attribute group','admin.menu_titles','en'),(1128,'admin.menu_titles.customer','Kh├ích h├áng','admin.menu_titles','vi'),(1129,'admin.menu_titles.customer','Customers','admin.menu_titles','en'),(1130,'admin.menu_titles.subscribe','─É─âng k├╜','admin.menu_titles','vi'),(1131,'admin.menu_titles.subscribe','Subscribe','admin.menu_titles','en'),(1132,'admin.menu_titles.block_content','Khß╗æi nß╗Öi dung','admin.menu_titles','vi'),(1133,'admin.menu_titles.block_content','Block content','admin.menu_titles','en'),(1134,'admin.menu_titles.block_link','Quß║ún l├╜ li├¬n kß║┐t','admin.menu_titles','vi'),(1135,'admin.menu_titles.block_link','Link manager','admin.menu_titles','en'),(1136,'admin.menu_titles.template_layout','Quß║ún l├╜ giao diß╗çn','admin.menu_titles','vi'),(1137,'admin.menu_titles.template_layout','Template manager','admin.menu_titles','en'),(1138,'admin.menu_titles.template','Giao diß╗çn','admin.menu_titles','vi'),(1139,'admin.menu_titles.template','Template','admin.menu_titles','en'),(1140,'admin.menu_titles.ADMIN_MARKETING','Marketing','admin.menu_titles','vi'),(1141,'admin.menu_titles.ADMIN_MARKETING','Marketing','admin.menu_titles','en'),(1142,'admin.menu_titles.store_info','Th├┤ng tin cß╗¡a h├áng','admin.menu_titles','vi'),(1143,'admin.menu_titles.store_info','Store infomation','admin.menu_titles','en'),(1144,'admin.menu_titles.setting_system','Thiß║┐t lß║¡p hß╗ç thß╗æng','admin.menu_titles','vi'),(1145,'admin.menu_titles.setting_system','Setting system','admin.menu_titles','en'),(1146,'admin.menu_titles.error_log','Lß╗ùi & Nhß║¡t k├╜','admin.menu_titles','vi'),(1147,'admin.menu_titles.error_log','Error & Logs','admin.menu_titles','en'),(1148,'admin.menu_titles.email_template','Mß║½u email','admin.menu_titles','vi'),(1149,'admin.menu_titles.email_template','Email template','admin.menu_titles','en'),(1150,'admin.menu_titles.language','Ng├┤n ngß╗»','admin.menu_titles','vi'),(1151,'admin.menu_titles.language','Languages','admin.menu_titles','en'),(1152,'admin.menu_titles.language_manager','Quß║ún l├╜ ng├┤n ngß╗»','admin.menu_titles','vi'),(1153,'admin.menu_titles.language_manager','Language manager','admin.menu_titles','en'),(1154,'admin.menu_titles.currency','Tiß╗ün tß╗ç','admin.menu_titles','vi'),(1155,'admin.menu_titles.currency','Currencies','admin.menu_titles','en'),(1156,'admin.menu_titles.banner','Banner','admin.menu_titles','vi'),(1157,'admin.menu_titles.banner','Banners','admin.menu_titles','en'),(1158,'admin.menu_titles.backup_restore','Sao l╞░u & Phß╗Ñc hß╗ôi','admin.menu_titles','vi'),(1159,'admin.menu_titles.backup_restore','Backup & Restore','admin.menu_titles','en'),(1160,'admin.menu_titles.plugin','Tiß╗çn ├¡ch','admin.menu_titles','vi'),(1161,'admin.menu_titles.plugin','Plugins','admin.menu_titles','en'),(1162,'admin.menu_titles.webhook','Webhook','admin.menu_titles','vi'),(1163,'admin.menu_titles.webhook','Webhook','admin.menu_titles','en'),(1164,'admin.menu_titles.report_manager','Quß║ún l├╜ b├ío c├ío','admin.menu_titles','vi'),(1165,'admin.menu_titles.report_manager','Report manager','admin.menu_titles','en'),(1166,'admin.menu_titles.user_permission','Quyß╗ün hß║ín ng╞░ß╗¥i d├╣ng','admin.menu_titles','vi'),(1167,'admin.menu_titles.user_permission','User permission','admin.menu_titles','en'),(1168,'admin.menu_titles.css','Chß╗ënh sß╗¡a CSS','admin.menu_titles','vi'),(1169,'admin.menu_titles.css','CSS style','admin.menu_titles','en'),(1170,'admin.menu_titles.seo_manager','Quß║ún l├╜ SEO','admin.menu_titles','vi'),(1171,'admin.menu_titles.seo_manager','SEO manager','admin.menu_titles','en'),(1172,'admin.menu_titles.users','Ng╞░ß╗¥i d├╣ng','admin.menu_titles','vi'),(1173,'admin.menu_titles.users','Users','admin.menu_titles','en'),(1174,'admin.menu_titles.roles','Nh├│m quyß╗ün','admin.menu_titles','vi'),(1175,'admin.menu_titles.roles','Roles','admin.menu_titles','en'),(1176,'admin.menu_titles.permission','Quyß╗ün hß║ín','admin.menu_titles','vi'),(1177,'admin.menu_titles.permission','Permission','admin.menu_titles','en'),(1178,'admin.menu_titles.operation_log','Nhß║¡t k├╜ truy cß║¡p','admin.menu_titles','vi'),(1179,'admin.menu_titles.operation_log','Log access','admin.menu_titles','en'),(1180,'admin.menu_titles.seo_config','Cß║Ñu h├¼nh SEO','admin.menu_titles','vi'),(1181,'admin.menu_titles.seo_config','SEO config','admin.menu_titles','en'),(1182,'admin.menu_titles.news','Tin tß╗⌐c','admin.menu_titles','vi'),(1183,'admin.menu_titles.news','News','admin.menu_titles','en'),(1184,'admin.menu_titles.env_config','Cß║Ñu h├¼nh m├┤i tr╞░ß╗¥ng','admin.menu_titles','vi'),(1185,'admin.menu_titles.env_config','Environment Config','admin.menu_titles','en'),(1186,'admin.menu_titles.report_product','B├ío c├ío sß║ún phß║⌐m','admin.menu_titles','vi'),(1187,'admin.menu_titles.report_product','Report product','admin.menu_titles','en'),(1188,'admin.menu_titles.store_config','Cß║Ñu h├¼nh cß╗¡a h├áng','admin.menu_titles','vi'),(1189,'admin.menu_titles.store_config','Store config','admin.menu_titles','en'),(1190,'admin.menu_titles.cache_manager','Bß╗Ö nhß╗¢ ─æß╗çm','admin.menu_titles','vi'),(1191,'admin.menu_titles.cache_manager','Cache','admin.menu_titles','en'),(1192,'admin.menu_titles.api_manager','Quß║ún l├╜ API','admin.menu_titles','vi'),(1193,'admin.menu_titles.api_manager','API manager','admin.menu_titles','en'),(1194,'admin.menu_titles.store_maintain','Bß║úo tr├¼ website','admin.menu_titles','vi'),(1195,'admin.menu_titles.store_maintain','Website maintain','admin.menu_titles','en'),(1196,'admin.menu_titles.tax','Thuß║┐','admin.menu_titles','vi'),(1197,'admin.menu_titles.tax','Tax','admin.menu_titles','en'),(1198,'admin.menu_titles.weight','Khß╗æi l╞░ß╗úng','admin.menu_titles','vi'),(1199,'admin.menu_titles.weight','Weight','admin.menu_titles','en'),(1200,'admin.menu_titles.length','K├¡ch th╞░ß╗¢c','admin.menu_titles','vi'),(1201,'admin.menu_titles.length','Length','admin.menu_titles','en'),(1202,'admin.menu_titles.ADMIN_SHOP_SETTING','Thiß║┐t lß║¡p cß╗¡a h├áng','admin.menu_titles','vi'),(1203,'admin.menu_titles.ADMIN_SHOP_SETTING','Shop setting','admin.menu_titles','en'),(1204,'admin.menu_titles.api_config','Cß║Ñu h├¼nh API','admin.menu_titles','vi'),(1205,'admin.menu_titles.api_config','API config','admin.menu_titles','en'),(1206,'admin.menu_titles.layout','Bß╗æ cß╗Ñc','admin.menu_titles','vi'),(1207,'admin.menu_titles.layout','Layout','admin.menu_titles','en'),(1208,'admin.menu_titles.custom_field','T├╣y chß╗ënh dß╗» liß╗çu','admin.menu_titles','vi'),(1209,'admin.menu_titles.custom_field','Custom field data','admin.menu_titles','en'),(1210,'admin.menu_titles.localisation','─Éß╗ïa ph╞░╞íng h├│a','admin.menu_titles','vi'),(1211,'admin.menu_titles.localisation','Localisation','admin.menu_titles','en'),(1212,'admin.menu_titles.menu','Menu','admin.menu_titles','vi'),(1213,'admin.menu_titles.menu','Menu','admin.menu_titles','en'),(1214,'admin.menu_titles.config_store_default','Cß║Ñu h├¼nh mß║╖c ─æß╗ïnh','admin.menu_titles','vi'),(1215,'admin.menu_titles.config_store_default','Config default','admin.menu_titles','en'),(1216,'admin.login_success','Login success!','admin','en'),(1217,'admin.login_success','─É─âng nhß║¡p th├ánh c├┤ng','admin','vi'),(1218,'admin.access_denied','Access denied!','admin','en'),(1219,'admin.access_denied','Truy cß║¡p bß╗ï tß╗½ chß╗æi','admin','vi'),(1220,'admin.max_c','Maximum :max characters','admin','en'),(1221,'admin.min_c','Minimum :min characters','admin','en'),(1222,'admin.min_v','Greater than :value','admin','en'),(1223,'admin.max_v','Less than :value','admin','en'),(1224,'admin.max_c','Tß╗æi ─æa :max k├¡ tß╗▒','admin','vi'),(1225,'admin.min_c','Tß╗æi thiß╗âu :min k├¡ tß╗▒','admin','vi'),(1226,'admin.min_v','Lß╗¢n h╞ín :value','admin','vi'),(1227,'admin.max_v','Nhß╗Å h╞ín :value','admin','vi'),(1228,'admin.data_not_found_detail','Dß╗» liß╗çu kh├┤ng tß╗ôn tß║íi :msg','admin','vi'),(1229,'admin.data_not_found_detail','Data not found :msg','admin','en'),(1230,'admin.login_successful','─É─âng nhß║¡p th├ánh c├┤ng','admin','vi'),(1231,'admin.login_successful','Login success','admin','en'),(1232,'admin.add_new','Add new','admin','en'),(1233,'admin.add_new','Th├¬m mß╗¢i','admin','vi'),(1234,'admin.not_empty','Not empty','admin','en'),(1235,'admin.not_empty','Kh├┤ng ─æ╞░ß╗úc rß╗ùng','admin','vi'),(1236,'admin.only_numeric','Enly numeric','admin','en'),(1237,'admin.only_numeric','Chß╗ë d├╣ng sß╗æ','admin','vi'),(1238,'admin.store_swicth_success','Switch store success!','admin','en'),(1239,'admin.store_swicth_success','Chuyß╗ân cß╗¡a h├áng th├ánh c├┤ng!','admin','vi'),(1240,'admin.dashboard','Dashboard','admin','en'),(1241,'admin.dashboard','Tß╗òng hß╗úp','admin','vi'),(1242,'admin.data_not_found','Data not found!','admin','en'),(1243,'admin.data_not_found','Kh├┤ng c├│ dß╗» liß╗çu!','admin','vi'),(1244,'admin.data_not_found_msg','The data you are accessing does not exist.','admin','en'),(1245,'admin.data_not_found_msg','Dß╗» liß╗çu bß║ín ─æang truy cß║¡p kh├┤ng tß╗ôn tß║íi.','admin','vi'),(1246,'admin.deny','Access denied!','admin','en'),(1247,'admin.deny','Truy cß║¡p tß╗½ chß╗æi!','admin','vi'),(1248,'admin.setting_account','Setting account','admin','en'),(1249,'admin.setting_account','Thiß║┐t lß║¡p t├ái khoß║ún','admin','vi'),(1250,'admin.failed','Auth failed','admin','en'),(1251,'admin.failed','Chß╗⌐ng thß╗▒c thß║Ñt bß║íi','admin','vi'),(1252,'admin.maintain_enable','Active ','admin','en'),(1253,'admin.maintain_enable','Hoß║ít ─æß╗Öng','admin','vi'),(1254,'admin.maintain_disable','Maintenance ','admin','en'),(1255,'admin.maintain_disable','Bß║úo tr├¼','admin','vi'),(1256,'admin.position_all','All pages','admin','en'),(1257,'admin.position_all','Tß║Ñt cß║ú c├íc trang','admin','vi'),(1258,'admin.theme','Theme','admin','en'),(1259,'admin.theme','Mß║½u','admin','vi'),(1260,'admin.welcome_dasdboard','Welcome to admin system!','admin','en'),(1261,'admin.welcome_dasdboard','Ch├áo mß╗½ng ─æß║┐n vß╗¢i hß╗ç thß╗æng!','admin','vi'),(1262,'admin.deny_msg','You need permission to access the system!','admin','en'),(1263,'admin.deny_content','Permission denied!','admin','en'),(1264,'admin.deny_msg','Bß║ín cß║ºn th├¬m quyß╗ün hß║ín ─æß╗â truy cß║¡p hß╗ç thß╗æng!','admin','vi'),(1265,'admin.deny_content','Bß║ín kh├┤ng c├│ ─æß╗º quyß╗ün hß║ín!','admin','vi'),(1266,'admin.home','Trang chß╗º','admin','vi'),(1267,'admin.home','Home','admin','en'),(1268,'admin.choose_icon','Chß╗ìn icon','admin','vi'),(1269,'admin.choose_icon','Chose icon','admin','en'),(1270,'admin.file_manager','Quß║ún l├╜ file','admin','vi'),(1271,'admin.file_manager','File manager','admin','en'),(1272,'admin.notice_new_order','Bß║ín c├│ :total ─æ╞ín h├áng mß╗¢i','admin','vi'),(1273,'admin.notice_new_order','You have :total new orders','admin','en'),(1274,'admin.gt_numeric_0','Gi├í trß╗ï  phß║úi lß╗¢n h╞ín 0!','admin','vi'),(1275,'admin.gt_numeric_0','Value must greater zero!','admin','en'),(1276,'admin.api_connection.list','API connection list','admin.api_connection','en'),(1277,'admin.api_connection.list','Danh s├ích API connection','admin.api_connection','vi'),(1278,'admin.api_connection.description','M├┤ tß║ú','admin.api_connection','vi'),(1279,'admin.api_connection.description','Description','admin.api_connection','en'),(1280,'admin.api_connection.apikey','Api key','admin.api_connection','vi'),(1281,'admin.api_connection.apikey','Api key','admin.api_connection','en'),(1282,'admin.api_connection.expire','Hß║┐t hß║ín','admin.api_connection','vi'),(1283,'admin.api_connection.expire','Expire','admin.api_connection','en'),(1284,'admin.api_connection.last_active','Lß║ºn cuß╗æi truy cß║¡p','admin.api_connection','vi'),(1285,'admin.api_connection.last_active','Last active','admin.api_connection','en'),(1286,'admin.api_connection.status','Trß║íng th├íi','admin.api_connection','vi'),(1287,'admin.api_connection.status','Status','admin.api_connection','en'),(1288,'admin.api_connection.validate_regex','Chß╗ë sß╗¡ dß╗Ñng c├íc k├¡ tß╗▒ : a-z0-9','admin.api_connection','vi'),(1289,'admin.api_connection.validate_regex','Only use characters : a-z0-9','admin.api_connection','en'),(1290,'admin.api_connection.api_connection_required_help','<i class=\"fa fa-warning text-red\" aria-hidden=\"true\"></i> Phß║úi c├│ t├ái khoß║ún connection ─æß╗â kß║┐t nß╗æi API.<br>\r\n    <a href=\"https://s-cart.org/vi/docs/master/api-shop-info.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\">Xem chi tiß║┐t ß╗ƒ ─æ├óy</i></a>\r\n    <hr>\r\n    <b>Danh s├ích API hß╗ù trß╗ú:</b><br>\r\n    <i>\r\n    your-domain.com/api/auth/login<br>\r\n    your-domain.com/api/auth/create<br>\r\n    your-domain.com/api/auth/logout<br>\r\n    your-domain.com/api/auth/user<br>\r\n    your-domain.com/api/auth/orders<br>\r\n    your-domain.com/api/auth/orders/{id}<br>\r\n    your-domain.com/api/categories<br>\r\n    your-domain.com/api/categories/{id}<br>\r\n    your-domain.com/api/products<br>\r\n    your-domain.com/api/products/{id}<br>\r\n    your-domain.com/api/brands<br>\r\n    your-domain.com/api/brands/{id}<br>\r\n    your-domain.com/api/supplieres<br>\r\n    your-domain.com/api/supplieres/{id}<br>\r\n    </i>','admin.api_connection','vi'),(1291,'admin.api_connection.api_connection_required_help','<i class=\"fa fa-warning text-red\" aria-hidden=\"true\"></i> Connection account is required to use the API<br>\r\n    <a href=\"https://s-cart.org/docs/master/api-shop-info.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>See full infomation</a>\r\n    <hr>\r\n    <b>API list support:</b><br>\r\n    <i>\r\n    your-domain.com/api/auth/login<br>\r\n    your-domain.com/api/auth/create<br>\r\n    your-domain.com/api/auth/logout<br>\r\n    your-domain.com/api/auth/user<br>\r\n    your-domain.com/api/auth/orders<br>\r\n    your-domain.com/api/auth/orders/{id}<br>\r\n    your-domain.com/api/categories<br>\r\n    your-domain.com/api/categories/{id}<br>\r\n    your-domain.com/api/products<br>\r\n    your-domain.com/api/products/{id}<br>\r\n    your-domain.com/api/brands<br>\r\n    your-domain.com/api/brands/{id}<br>\r\n    your-domain.com/api/supplieres<br>\r\n    your-domain.com/api/supplieres/{id}<br>\r\n    </i>','admin.api_connection','en'),(1292,'admin.result_item','Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>','admin','en'),(1293,'admin.result_item','Hiß╗ân thß╗ï <b>:item_from</b>-<b>:item_to</b> cß╗ºa <b>:total</b> kß║┐t quß║ú</b>','admin','vi'),(1294,'admin.method_not_allow','Method not allow','admin','en'),(1295,'admin.method_not_allow','Ph╞░╞íng thß╗⌐c kh├┤ng ─æ╞░ß╗úc ph├⌐p','admin','vi'),(1296,'admin.back_list','Back list','admin','en'),(1297,'admin.back_list','Trß╗ƒ lß║íi danh s├ích','admin','vi'),(1298,'admin.msg_change_success','All changes have been updated','admin','en'),(1299,'admin.msg_change_success','Thay ─æß╗òi ─æ├ú ─æ╞░ß╗úc cß║¡p nhß║¡t','admin','vi'),(1300,'admin.updated_at','Updated at','admin','en'),(1301,'admin.updated_at','Cß║¡p nhß║¡t l├║c','admin','vi'),(1302,'admin.created_at','Created at','admin','en'),(1303,'admin.created_at','Tß║ío l├║c','admin','vi'),(1304,'admin.remove_dont_permisison','Dont permission remove ','admin','en'),(1305,'admin.remove_dont_permisison','Kh├┤ng c├│ quyß╗ün gß╗í bß╗Å','admin','vi'),(1306,'admin.delete_dont_permisison','Dont permission delete ','admin','en'),(1307,'admin.delete_dont_permisison','Kh├┤ng c├│ quyß╗ün x├│a','admin','vi'),(1308,'admin.attribute_group.list','Danh s├ích nh├│m thuß╗Öc t├¡nh','admin.attribute_group','vi'),(1309,'admin.attribute_group.list','Attribute group list','admin.attribute_group','en'),(1310,'admin.attribute_group.name','T├¬n','admin.attribute_group','vi'),(1311,'admin.attribute_group.name','Name','admin.attribute_group','en'),(1312,'admin.attribute_group.type','Loß║íi','admin.attribute_group','vi'),(1313,'admin.attribute_group.type','Type','admin.attribute_group','en'),(1314,'admin.order.search','T├¼m ─æ╞ín h├áng','admin.order','vi'),(1315,'admin.order.search','Search order','admin.order','en'),(1316,'admin.permission.name','T├¬n','admin.permission','vi'),(1317,'admin.permission.name','Name','admin.permission','en'),(1318,'admin.permission.list','D├ính s├ích quyß╗ün','admin.permission','vi'),(1319,'admin.permission.list','Permission list','admin.permission','en'),(1320,'admin.permission.slug','Slug','admin.permission','vi'),(1321,'admin.permission.slug','Slug','admin.permission','en'),(1322,'admin.permission.select_http_uri','Chß╗ìn http uri','admin.permission','vi'),(1323,'admin.permission.select_http_uri','Select http uri','admin.permission','en'),(1324,'admin.permission.method_placeholder','C├íc quyß╗ün','admin.permission','vi'),(1325,'admin.permission.method_placeholder','Permission detail','admin.permission','en'),(1326,'admin.permission.http_path','Http path','admin.permission','vi'),(1327,'admin.permission.http_path','Http path','admin.permission','en'),(1328,'admin.permission.slug_validate','Chß╗ë sß╗¡ dß╗Ñng k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"','admin.permission','vi'),(1329,'admin.permission.slug_validate','Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"','admin.permission','en'),(1330,'admin.permission.add_new_des','Tß║ío mß╗¢i mß╗Öt quyß╗ün','admin.permission','vi'),(1331,'admin.permission.add_new_des','Create new permission','admin.permission','en'),(1332,'admin.permission.add_new_title','Tß║ío quyß╗ün','admin.permission','vi'),(1333,'admin.permission.add_new_title','Create permission','admin.permission','en'),(1334,'admin.backup.title','Danh s├ích sao l╞░u','admin.backup','vi'),(1335,'admin.backup.title','Backup list','admin.backup','en'),(1336,'admin.backup.processing','─Éang xß╗¡ l├╜...','admin.backup','vi'),(1337,'admin.backup.processing','Processing...','admin.backup','en'),(1338,'admin.backup.guide','<span class=\"text-danger\">Ch├║ ├╜: Bß║ín cß║ºn phß║úi c├ái ─æß║╖t ─æ╞░ß╗¥ng dß║½n hß╗ç thß╗æng ch├¡nh x├íc. Xem h╞░ß╗¢ng dß║½n <a target=_new href=\"https://s-cart.org/guide/backup.html?lang=vi\">Tß║áI ─É├éY</a></span>','admin.backup','vi'),(1339,'admin.backup.generate_now','Tß║ío mß╗Öt backup ngay','admin.backup','vi'),(1340,'admin.backup.manager','Quß║ún l├╜ sao l╞░u','admin.backup','vi'),(1341,'admin.backup.name','T├¬n file','admin.backup','vi'),(1342,'admin.backup.sort','Thß╗⌐ tß╗▒','admin.backup','vi'),(1343,'admin.backup.date','Thß╗¥i gian','admin.backup','vi'),(1344,'admin.backup.size','K├¡ch th╞░ß╗¢c','admin.backup','vi'),(1345,'admin.backup.download','Tß║úi vß╗ü','admin.backup','vi'),(1346,'admin.backup.remove','Gß╗í bß╗Å','admin.backup','vi'),(1347,'admin.backup.restore','Phß╗Ñc hß╗ôi','admin.backup','vi'),(1348,'admin.backup.remove_success','X├│a file th├ánh c├┤ng!','admin.backup','vi'),(1349,'admin.backup.restore_success','Phß╗Ñc hß╗ôi dß╗» liß╗çu th├ánh c├┤ng!','admin.backup','vi'),(1350,'admin.backup.generate_success','Tß║ío file backup th├ánh c├┤ng!','admin.backup','vi'),(1351,'admin.backup.limit_backup','Bß║ín chß╗ë ─æ╞░ß╗úc tß║ío tß╗æi ─æa 10 bß║ún sao l╞░u!','admin.backup','vi'),(1352,'admin.backup.guide','<span class=\"text-danger\">NOTE: To use MySQL server on the command line, you must have the correct system path. This is usually done automatically. Read document in <a target=_new href=\"https://s-cart.org/guide/backup.html\">HERE</a></span>','admin.backup','en'),(1353,'admin.backup.generate_now','Gererate a backup now','admin.backup','en'),(1354,'admin.backup.manager','Backup management','admin.backup','en'),(1355,'admin.backup.name','File name','admin.backup','en'),(1356,'admin.backup.sort','Sort','admin.backup','en'),(1357,'admin.backup.date','Date','admin.backup','en'),(1358,'admin.backup.size','Size','admin.backup','en'),(1359,'admin.backup.download','Download','admin.backup','en'),(1360,'admin.backup.remove','Remove','admin.backup','en'),(1361,'admin.backup.restore','Restore','admin.backup','en'),(1362,'admin.backup.remove_success','Remove successful!','admin.backup','en'),(1363,'admin.backup.restore_success','Restore successful!','admin.backup','en'),(1364,'admin.backup.generate_success','Create successful backup file!','admin.backup','en'),(1365,'admin.backup.limit_backup','You cannot create more than 10 copies','admin.backup','en'),(1366,'admin.banner.type','Loß║íi','admin.banner','vi'),(1367,'admin.banner.type','Type','admin.banner','en'),(1368,'admin.banner.add_new','Th├¬m mß╗¢i banner','admin.banner','vi'),(1369,'admin.banner.add_new','Add new banner','admin.banner','en'),(1370,'admin.banner.image','H├¼nh ß║únh','admin.banner','vi'),(1371,'admin.banner.image','Image','admin.banner','en'),(1372,'admin.banner.title','Ti├¬u ─æß╗ü','admin.banner','vi'),(1373,'admin.banner.title','Title','admin.banner','en'),(1374,'admin.banner.url','URL','admin.banner','vi'),(1375,'admin.banner.url','URL','admin.banner','en'),(1376,'admin.banner.sort','Thß╗⌐ tß╗▒','admin.banner','vi'),(1377,'admin.banner.sort','Sort','admin.banner','en'),(1378,'admin.banner.status','Trß║íng th├íi','admin.banner','vi'),(1379,'admin.banner.status','Status','admin.banner','en'),(1380,'admin.banner.click','Bß║Ñm chuß╗Öt','admin.banner','vi'),(1381,'admin.banner.click','Click','admin.banner','en'),(1382,'admin.banner.target','Target','admin.banner','vi'),(1383,'admin.banner.target','Target','admin.banner','en'),(1384,'admin.banner.select_target','Chß╗ìn target','admin.banner','vi'),(1385,'admin.banner.select_target','Select target','admin.banner','en'),(1386,'admin.banner.list','Danh s├ích banner','admin.banner','vi'),(1387,'admin.banner.list','Banner list','admin.banner','en'),(1388,'admin.banner_type.list','Loß║íi banner','admin.banner','vi'),(1389,'admin.banner_type.list','Banner type list','admin.banner','en'),(1390,'admin.banner_type.add_new_title','Th├¬m loß║íi mß╗¢i','admin.banner','vi'),(1391,'admin.banner_type.add_new_title','Add new type','admin.banner','en'),(1392,'admin.banner_type.code','M├ú','admin.banner','vi'),(1393,'admin.banner_type.code','Code','admin.banner','en'),(1394,'admin.banner_type.name','T├¬n','admin.banner','vi'),(1395,'admin.banner_type.name','Name','admin.banner','en'),(1396,'admin.brand.list','Danh s├ích nh├ún hiß╗çu','admin.brand','vi'),(1397,'admin.brand.list','Brand list','admin.brand','en'),(1398,'admin.brand.add_new_title','Th├¬m mß╗¢i nh├ún hiß╗çu','admin.brand','vi'),(1399,'admin.brand.add_new_title','Add new brand','admin.brand','en'),(1400,'admin.brand.image','H├¼nh ß║únh','admin.brand','vi'),(1401,'admin.brand.image','Image','admin.brand','en'),(1402,'admin.brand.name','T├¬n','admin.brand','vi'),(1403,'admin.brand.name','Name','admin.brand','en'),(1404,'admin.brand.sort','Thß╗⌐ tß╗▒','admin.brand','vi'),(1405,'admin.brand.sort','Sort','admin.brand','en'),(1406,'admin.brand.status','Trß║íng th├íi','admin.brand','vi'),(1407,'admin.brand.status','Status','admin.brand','en'),(1408,'admin.brand.alias_validate','Tß╗æi ─æa 100 k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"','admin.brand','vi'),(1409,'admin.brand.alias_validate','Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"','admin.brand','en'),(1410,'admin.cache.title','Cß║Ñu h├¼nh bß╗Ö nhß╗¢ Cache','admin.cache','vi'),(1411,'admin.cache.title','config cache manager','admin.cache','en'),(1412,'admin.cache.cache_clear_processing','─Éang x├│a Cache','admin.cache','vi'),(1413,'admin.cache.cache_clear_processing','Cache clearing','admin.cache','en'),(1414,'admin.cache.cache_status','Trß║íng th├íi','admin.cache','vi'),(1415,'admin.cache.cache_status','Status','admin.cache','en'),(1416,'admin.cache.cache_clear_all','X├│a tß║Ñt cß║ú Cache','admin.cache','vi'),(1417,'admin.cache.cache_clear_all','Clear all cache','admin.cache','en'),(1418,'admin.cache.cache_clear_success','─É├ú x├│a cache xong','admin.cache','vi'),(1419,'admin.cache.cache_clear_success','Clear cache success','admin.cache','en'),(1420,'admin.cache.cache_refresh','L├ám mß╗¢i cache','admin.cache','vi'),(1421,'admin.cache.cache_refresh','Cache refresh','admin.cache','en'),(1422,'admin.cache.cache_clear','X├│a cache','admin.cache','vi'),(1423,'admin.cache.cache_clear','Clear cache','admin.cache','en'),(1424,'admin.cache.cache_all','Cache tß║Ñt cß║ú','admin.cache','vi'),(1425,'admin.cache.cache_all','Cache all','admin.cache','en'),(1426,'admin.cache.cache_time','Thß╗¥i gian cache (gi├óy)','admin.cache','vi'),(1427,'admin.cache.cache_time','Cache time (s)','admin.cache','en'),(1428,'admin.cache.value','Gi├í trß╗ï','admin.cache','vi'),(1429,'admin.cache.value','Value','admin.cache','en'),(1430,'admin.cache.field','Tr╞░ß╗¥ng','admin.cache','vi'),(1431,'admin.cache.field','Field','admin.cache','en'),(1432,'admin.cache.cache_category','Cache Danh mß╗Ñc sß║ún phß║⌐m','admin.cache','vi'),(1433,'admin.cache.cache_product','Cache Sß║ún phß║⌐m','admin.cache','vi'),(1434,'admin.cache.cache_news','Cache Tin tß╗⌐c/Blog','admin.cache','vi'),(1435,'admin.cache.cache_category_cms','Cache Danh mß╗Ñc CMS','admin.cache','vi'),(1436,'admin.cache.cache_content_cms','Cache Nß╗Öi dung CMS','admin.cache','vi'),(1437,'admin.cache.cache_page','Cache Trang viß║┐t','admin.cache','vi'),(1438,'admin.cache.cache_store','Cache Cß╗¡a h├áng','admin.cache','vi'),(1439,'admin.cache.cache_country','Cache Quß╗æc gia','admin.cache','vi'),(1440,'admin.cache.cache_category','Cache categoty','admin.cache','en'),(1441,'admin.cache.cache_product','Cache product','admin.cache','en'),(1442,'admin.cache.cache_news','Cache News/Blog','admin.cache','en'),(1443,'admin.cache.cache_category_cms','Cache Category CMS','admin.cache','en'),(1444,'admin.cache.cache_content_cms','Cache CMS content','admin.cache','en'),(1445,'admin.cache.cache_page','Cache page','admin.cache','en'),(1446,'admin.cache.cache_store','Cache Store','admin.cache','en'),(1447,'admin.cache.cache_country','Cache country','admin.cache','en'),(1448,'admin.category.list','Danh s├ích danh mß╗Ñc','admin.category','vi'),(1449,'admin.category.list','Category list','admin.category','en'),(1450,'admin.category.add_new_title','Th├¬m mß╗¢i danh mß╗Ñc','admin.category','vi'),(1451,'admin.category.add_new_title','Add new category','admin.category','en'),(1452,'admin.category.add_new_des','Th├¬m mß╗¢i','admin.category','vi'),(1453,'admin.category.add_new_des','Add new','admin.category','en'),(1454,'admin.category.image','H├¼nh ß║únh','admin.category','vi'),(1455,'admin.category.image','Image','admin.category','en'),(1456,'admin.category.title','T├¬n','admin.category','vi'),(1457,'admin.category.title','Name','admin.category','en'),(1458,'admin.category.alias','URL t├╣y chß╗ënh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','admin.category','vi'),(1459,'admin.category.alias_validate','Tß╗æi ─æa 100 k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ','admin.category','vi'),(1460,'admin.category.alias','Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','admin.category','en'),(1461,'admin.category.alias_validate','Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ','admin.category','en'),(1462,'admin.category.keyword','Tß╗½ kh├│a','admin.category','vi'),(1463,'admin.category.keyword','Keyword','admin.category','en'),(1464,'admin.category.description','M├┤ tß║ú','admin.category','vi'),(1465,'admin.category.description','Description','admin.category','en'),(1466,'admin.category.top','Hiß╗ân thß╗ï ra ngo├ái','admin.category','vi'),(1467,'admin.category.top','Display out website','admin.category','en'),(1468,'admin.category.parent','Cß║Ñp cha','admin.category','vi'),(1469,'admin.category.parent','Parent','admin.category','en'),(1470,'admin.category.sort','Thß╗⌐ tß╗▒','admin.category','vi'),(1471,'admin.category.sort','Sort','admin.category','en'),(1472,'admin.category.status','Trß║íng th├íi','admin.category','vi'),(1473,'admin.category.status','Status','admin.category','en'),(1474,'admin.category.select_category','Chß╗ìn danh mß╗Ñc','admin.category','vi'),(1475,'admin.category.select_category','Select category','admin.category','en'),(1476,'admin.category.top_help','Danh mß╗Ñc n├áy sß║╜ hiß╗ân thß╗ï ra ngo├ái trang chß╗º. Mß║╖c ─æß╗ïnh chß╗ë d├ánh cho nhß╗»ng danh mß╗Ñc Root.','admin.category','vi'),(1477,'admin.category.top_help','This category will display outside the homepage. The default is for Root items only.','admin.category','en'),(1478,'admin.config.webhook','Webhook','admin.config','vi'),(1479,'admin.config.webhook','Webhook','admin.config','en'),(1480,'admin.config.setting_website','C├ái ─æß║╖t website','admin.config','vi'),(1481,'admin.config.setting_website','Setting website','admin.config','en'),(1482,'admin.config.LOG_SLACK_WEBHOOK_URL','Gß╗¡i tß╗¢i Slack webhook','admin.config','vi'),(1483,'admin.config.LOG_SLACK_WEBHOOK_URL','Report error to Slack webhook','admin.config','en'),(1484,'admin.config.GOOGLE_CHAT_WEBHOOK_URL','Gß╗¡i tß╗¢i Google webhook','admin.config','vi'),(1485,'admin.config.GOOGLE_CHAT_WEBHOOK_URL','Report error to Google webhook','admin.config','en'),(1486,'admin.config.CHATWORK_CHAT_WEBHOOK_URL','Gß╗¡i tß╗¢i Chatword webhook','admin.config','vi'),(1487,'admin.config.CHATWORK_CHAT_WEBHOOK_URL','Report error to Chatword webhook','admin.config','en'),(1488,'admin.config.LOG_SLACK_WEBHOOK_URL_help','Link https: //hooks.slack.com/services/...','admin.config','vi'),(1489,'admin.config.LOG_SLACK_WEBHOOK_URL_help','Link https: //hooks.slack.com/services/...','admin.config','en'),(1490,'admin.currency.list','Danh s├ích tiß╗ün tß╗ç','admin.currency','vi'),(1491,'admin.currency.list','Currencies list','admin.currency','en'),(1492,'admin.currency.name','T├¬n','admin.currency','vi'),(1493,'admin.currency.name','Name','admin.currency','en'),(1494,'admin.currency.code','M├ú','admin.currency','vi'),(1495,'admin.currency.code','Code','admin.currency','en'),(1496,'admin.currency.symbol','K├╜ hiß╗çu','admin.currency','vi'),(1497,'admin.currency.symbol','Symbol','admin.currency','en'),(1498,'admin.currency.exchange_rate','Tß╗ë gi├í','admin.currency','vi'),(1499,'admin.currency.exchange_rate','Exchange rate','admin.currency','en'),(1500,'admin.currency.precision','Sß╗æ chß╗» sß╗æ thß║¡p ph├ón','admin.currency','vi'),(1501,'admin.currency.precision','Precision','admin.currency','en'),(1502,'admin.currency.symbol_first','Hiß╗çn k├¡ hiß╗çu ─æß║ºu ti├¬n','admin.currency','vi'),(1503,'admin.currency.symbol_first','Symbol first','admin.currency','en'),(1504,'admin.currency.thousands','Ng─ân c├ích phß║ºn ngh├¼n','admin.currency','vi'),(1505,'admin.currency.thousands','Thousands separator','admin.currency','en'),(1506,'admin.currency.status','Trß║íng th├íi','admin.currency','vi'),(1507,'admin.currency.status','Status','admin.currency','en'),(1508,'admin.currency.sort','Thß╗⌐ tß╗▒','admin.currency','vi'),(1509,'admin.currency.sort','Sort','admin.currency','en'),(1510,'admin.currency.add_new_title','Th├¬m mß╗¢i tiß╗ün tß╗ç','admin.currency','vi'),(1511,'admin.currency.add_new_title','Add new currency','admin.currency','en'),(1512,'admin.currency.add_new_des','Th├¬m mß╗¢i','admin.currency','vi'),(1513,'admin.currency.add_new_des','Add new','admin.currency','en'),(1514,'admin.custom_field.title','Field dß╗» liß╗çu t├╣y chß╗ënh','admin.custom_field','vi'),(1515,'admin.custom_field.title','Custom field','admin.custom_field','en'),(1516,'admin.custom_field.list','Danh s├ích field t├╣y chß╗ënh','admin.custom_field','vi'),(1517,'admin.custom_field.list','Custom field list','admin.custom_field','en'),(1518,'admin.custom_field.status','Trß║íng th├íi','admin.custom_field','vi'),(1519,'admin.custom_field.status','Status','admin.custom_field','en'),(1520,'admin.custom_field.sort','Thß╗⌐ tß╗▒','admin.custom_field','vi'),(1521,'admin.custom_field.sort','Sort','admin.custom_field','en'),(1522,'admin.custom_field.add_new_title','Th├¬m mß╗¢i field','admin.custom_field','vi'),(1523,'admin.custom_field.add_new_title','Add new field','admin.custom_field','en'),(1524,'admin.custom_field.add_new_des','Th├¬m mß╗¢i','admin.custom_field','vi'),(1525,'admin.custom_field.add_new_des','Add new','admin.custom_field','en'),(1526,'admin.custom_field.name','T├¬n','admin.custom_field','vi'),(1527,'admin.custom_field.name','Name','admin.custom_field','en'),(1528,'admin.custom_field.code','M├ú','admin.custom_field','vi'),(1529,'admin.custom_field.code','Code','admin.custom_field','en'),(1530,'admin.custom_field.type','Loß║íi','admin.custom_field','vi'),(1531,'admin.custom_field.type','Type','admin.custom_field','en'),(1532,'admin.custom_field.required','Bß║»t buß╗Öc','admin.custom_field','vi'),(1533,'admin.custom_field.required','Required','admin.custom_field','en'),(1534,'admin.custom_field.option','T├╣y chß╗ìn','admin.custom_field','vi'),(1535,'admin.custom_field.option','Option','admin.custom_field','en'),(1536,'admin.custom_field.default','Mß║╖c ─æß╗ïnh','admin.custom_field','vi'),(1537,'admin.custom_field.default','Default','admin.custom_field','en'),(1538,'admin.custom_field.default_help','─Éß╗ïnh dß║íng cho \"T├╣y chß╗ìn\" l├á Radio hoß║╖c Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}','admin.custom_field','vi'),(1539,'admin.custom_field.default_help','Format for \"Option\" is Radio or Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}','admin.custom_field','en'),(1540,'admin.env.APP_DEBUG','DEBUG mode','admin.env','en'),(1541,'admin.env.APP_URL','URL app','admin.env','en'),(1542,'admin.env.APP_ENV','Environment mode','admin.env','en'),(1543,'admin.env.ADMIN_PREFIX','Admin prefix','admin.env','en'),(1544,'admin.env.ADMIN_NAME','Admin name','admin.env','en'),(1545,'admin.env.ADMIN_LOGO','Admin logo','admin.env','en'),(1546,'admin.env.ADMIN_LOGO_MINI','Admin logo mini','admin.env','en'),(1547,'admin.env.ADMIN_TITLE','Admin title','admin.env','en'),(1548,'admin.env.ADMIN_LOG','Admin log','admin.env','en'),(1549,'admin.env.field','Field','admin.env','en'),(1550,'admin.env.value','Value','admin.env','en'),(1551,'admin.env.title','Config environment','admin.env','en'),(1552,'admin.env.SUFFIX_URL','Suffix URL','admin.env','en'),(1553,'admin.env.PREFIX_BRAND','Prefix url BRAND','admin.env','en'),(1554,'admin.env.PREFIX_SUPPLIER','Prefix url SUPPLIER','admin.env','en'),(1555,'admin.env.PREFIX_CATEGORY','Prefix url CATEGORY ','admin.env','en'),(1556,'admin.env.PREFIX_SUB_CATEGORY','Prefix url sub CATEGORY','admin.env','en'),(1557,'admin.env.PREFIX_PRODUCT','Prefix url PRODUCT','admin.env','en'),(1558,'admin.env.PREFIX_SEARCH','Prefix url SEARCH','admin.env','en'),(1559,'admin.env.PREFIX_CONTACT','Prefix url CONTACT','admin.env','en'),(1560,'admin.env.PREFIX_NEWS','Prefix url NEWS','admin.env','en'),(1561,'admin.env.PREFIX_MEMBER','Prefix url CUSTOMER','admin.env','en'),(1562,'admin.env.PREFIX_MEMBER_ORDER_LIST','Prefix url CUSTOMER ORDER','admin.env','en'),(1563,'admin.env.PREFIX_MEMBER_CHANGE_PWD','Prefix url CHANGE PASSWOD','admin.env','en'),(1564,'admin.env.PREFIX_MEMBER_CHANGE_INFO','Prefix url CHANGE INFO','admin.env','en'),(1565,'admin.env.PREFIX_CMS_CATEGORY','Prefix url CMS CATEGORY','admin.env','en'),(1566,'admin.env.PREFIX_CMS_ENTRY','Prefix url CMS ENTRY','admin.env','en'),(1567,'admin.env.PREFIX_CART_WISHLIST','Prefix url WISHLIST','admin.env','en'),(1568,'admin.env.PREFIX_CART_COMPARE','Prefix url COMPARE','admin.env','en'),(1569,'admin.env.PREFIX_CART_DEFAULT','Prefix url CART','admin.env','en'),(1570,'admin.env.PREFIX_CART_CHECKOUT','Prefix url CHECKOUT','admin.env','en'),(1571,'admin.env.PREFIX_ORDER_SUCCESS','Prefix url ORDER SUCCESS','admin.env','en'),(1572,'admin.env.PREFIX_SHOP','Link shop','admin.env','en'),(1573,'admin.env.ADMIN_FOOTER_OFF','Hidden footer of page admin','admin.env','en'),(1574,'admin.env.ADMIN_CUSTOMIZE_TEMPLATE','Customize template admin','admin.env','en'),(1575,'admin.env.APP_DEBUG','Chß║┐ ─æß╗Ö sß╗¡a lß╗ùi','admin.env','vi'),(1576,'admin.env.APP_URL','URL website','admin.env','vi'),(1577,'admin.env.APP_ENV','M├┤i tr╞░ß╗¥ng','admin.env','vi'),(1578,'admin.env.ADMIN_PREFIX','Tiß╗ün tß╗æ admin','admin.env','vi'),(1579,'admin.env.ADMIN_NAME','T├¬n trang admin','admin.env','vi'),(1580,'admin.env.ADMIN_LOGO','Logo admin','admin.env','vi'),(1581,'admin.env.ADMIN_LOGO_MINI','Logo nhß╗Å','admin.env','vi'),(1582,'admin.env.ADMIN_TITLE','Ti├¬u ─æß╗ü admin','admin.env','vi'),(1583,'admin.env.ADMIN_LOG','Lß╗ïch sß╗¡ truy cß║¡p admin','admin.env','vi'),(1584,'admin.env.field','Tr╞░ß╗¥ng dß╗» liß╗çu','admin.env','vi'),(1585,'admin.env.value','Gi├í trß╗ï','admin.env','vi'),(1586,'admin.env.title','Cß║Ñu h├¼nh m├┤i tr╞░ß╗¥ng','admin.env','vi'),(1587,'admin.env.SUFFIX_URL','Hß║¡u tß╗æ URL','admin.env','vi'),(1588,'admin.env.PREFIX_BRAND','Tiß╗ün tß╗æ trang BRAND','admin.env','vi'),(1589,'admin.env.PREFIX_SUPPLIER','Tiß╗ün tß╗æ trang SUPPLIER','admin.env','vi'),(1590,'admin.env.PREFIX_CATEGORY','Tiß╗ün tß╗æ trang CATEGORY ','admin.env','vi'),(1591,'admin.env.PREFIX_SUB_CATEGORY','Tiß╗ün tß╗æ trang CATEGORY nhß╗Å','admin.env','vi'),(1592,'admin.env.PREFIX_PRODUCT','Tiß╗ün tß╗æ trang PRODUCT','admin.env','vi'),(1593,'admin.env.PREFIX_SEARCH','Tiß╗ün tß╗æ trang SEARCH','admin.env','vi'),(1594,'admin.env.PREFIX_CONTACT','Tiß╗ün tß╗æ trang CONTACT','admin.env','vi'),(1595,'admin.env.PREFIX_NEWS','Tiß╗ün tß╗æ trang NEWS','admin.env','vi'),(1596,'admin.env.PREFIX_MEMBER','Tiß╗ün tß╗æ trang CUSTOMER','admin.env','vi'),(1597,'admin.env.PREFIX_MEMBER_ORDER_LIST','Tiß╗ün tß╗æ trang CUSTOMER ORDER','admin.env','vi'),(1598,'admin.env.PREFIX_MEMBER_CHANGE_PWD','Tiß╗ün tß╗æ trang CHANGE PASSWOD','admin.env','vi'),(1599,'admin.env.PREFIX_MEMBER_CHANGE_INFO','Tiß╗ün tß╗æ trang CHANGE INFO','admin.env','vi'),(1600,'admin.env.PREFIX_CMS_CATEGORY','Tiß╗ün tß╗æ trang CMS CATEGORY','admin.env','vi'),(1601,'admin.env.PREFIX_CMS_ENTRY','Tiß╗ün tß╗æ trang CMS ENTRY','admin.env','vi'),(1602,'admin.env.PREFIX_CART_WISHLIST','Tiß╗ün tß╗æ trang WISHLIST','admin.env','vi'),(1603,'admin.env.PREFIX_CART_COMPARE','Tiß╗ün tß╗æ trang COMPARE','admin.env','vi'),(1604,'admin.env.PREFIX_CART_DEFAULT','Tiß╗ün tß╗æ trang CART','admin.env','vi'),(1605,'admin.env.PREFIX_CART_CHECKOUT','Tiß╗ün tß╗æ trang CHECKOUT','admin.env','vi'),(1606,'admin.env.PREFIX_ORDER_SUCCESS','Tiß╗ün tß╗æ trang ORDER SUCCESS','admin.env','vi'),(1607,'admin.env.PREFIX_SHOP','Link Cß╗¡a h├áng','admin.env','vi'),(1608,'admin.env.ADMIN_FOOTER_OFF','ß║¿n footer cß╗ºa trang admin','admin.env','vi'),(1609,'admin.env.ADMIN_CUSTOMIZE_TEMPLATE','T├╣y chß╗ënh giao diß╗çn Admin','admin.env','vi'),(1610,'admin.email_template.name','T├¬n','admin.email_template','vi'),(1611,'admin.email_template.list','Danh s├ích mß║½u email','admin.email_template','vi'),(1612,'admin.email_template.status','Trß║íng th├íi','admin.email_template','vi'),(1613,'admin.email_template.group','Nh├│m','admin.email_template','vi'),(1614,'admin.email_template.html','HTML','admin.email_template','vi'),(1615,'admin.email_template.text','Nß╗Öi dung','admin.email_template','vi'),(1616,'admin.email_template.name','Name','admin.email_template','en'),(1617,'admin.email_template.lits','Email template list','admin.email_template','en'),(1618,'admin.email_template.group','Group','admin.email_template','en'),(1619,'admin.email_template.text','Content','admin.email_template','en'),(1620,'admin.email_template.html','HTML','admin.email_template','en'),(1621,'admin.email_template.status','Status','admin.email_template','en'),(1622,'admin.email_template.add_new_title','Add template','admin.email_template','en'),(1623,'admin.email_template.add_new_des','Create a new template','admin.email_template','en'),(1624,'admin.email_template.variable_support','Variables support:','admin.email_template','en'),(1625,'admin.email_template.add_new_title','Tß║ío template','admin.email_template','vi'),(1626,'admin.email_template.add_new_des','Tß║ío mß╗¢i template','admin.email_template','vi'),(1627,'admin.email_template.variable_support','C├íc biß║┐n hß╗ù trß╗ú','admin.email_template','vi'),(1628,'admin.language.list','Language list','admin.language','en'),(1629,'admin.language.list','Danh s├ích ng├┤n ngß╗»','admin.language','vi'),(1630,'admin.language.select_lang','Select language','admin.language','en'),(1631,'admin.language.select_lang','Chß╗ìn ng├┤n ngß╗»','admin.language','vi'),(1632,'admin.language.select_position','Select position','admin.language','en'),(1633,'admin.language.select_position','Chß╗ìn vß╗ï tr├¡ ng├┤n ngß╗»','admin.language','vi'),(1634,'admin.language.name','Name','admin.language','en'),(1635,'admin.language.icon','Icon','admin.language','en'),(1636,'admin.language.code','Code','admin.language','en'),(1637,'admin.language.sort','Sort','admin.language','en'),(1638,'admin.language.status','Status','admin.language','en'),(1639,'admin.language.layout_rtl','Layout RTL','admin.language','en'),(1640,'admin.language.add_new_title','Add language','admin.language','en'),(1641,'admin.language.add_new_des','Create a new language','admin.language','en'),(1642,'admin.language.name','T├¬n ng├┤n ngß╗»','admin.language','vi'),(1643,'admin.language.icon','Icon','admin.language','vi'),(1644,'admin.language.code','Code','admin.language','vi'),(1645,'admin.language.sort','Thß╗⌐ tß╗▒','admin.language','vi'),(1646,'admin.language.status','Status','admin.language','vi'),(1647,'admin.language.layout_rtl','Giao diß╗çn RTL','admin.language','vi'),(1648,'admin.language.add_new_title','Tß║ío ng├┤n ngß╗»','admin.language','vi'),(1649,'admin.language.add_new_des','Tß║ío mß╗¢i ng├┤n ngß╗»','admin.language','vi'),(1650,'admin.language_manager.title','Quß║ún l├╜ ng├┤n ngß╗»','admin.language','vi'),(1651,'admin.language_manager.title','Language manager','admin.language','en'),(1652,'admin.menu.list','Quß║ún l├╜ menu','admin.emnu','vi'),(1653,'admin.menu.create','Tß║ío mß╗¢i menu','admin.emnu','vi'),(1654,'admin.menu.edit','Chß╗ënh sß╗¡a menu','admin.emnu','vi'),(1655,'admin.menu.error_have_child','Cß║ºn x├│a c├íc menu b├¬n trong tr╞░ß╗¢c khi l├ám ─æiß╗üu n├áy!','admin.emnu','vi'),(1656,'admin.menu.parent','Cha','admin.emnu','vi'),(1657,'admin.menu.title','Ti├¬u ─æß╗ü','admin.emnu','vi'),(1658,'admin.menu.icon','Icon','admin.emnu','vi'),(1659,'admin.menu.uri','URI','admin.emnu','vi'),(1660,'admin.menu.roles','Vai tr├▓','admin.emnu','vi'),(1661,'admin.menu.permissions','Quyß╗ün','admin.emnu','vi'),(1662,'admin.menu.create_success','Tß║ío mß╗¢i th├ánh c├┤ng!','admin.emnu','vi'),(1663,'admin.menu.edit_success','Cß║¡p nhß║¡t th├ánh c├┤ng!','admin.emnu','vi'),(1664,'admin.menu.sort','Thß╗⌐ tß╗▒','admin.emnu','vi'),(1665,'admin.menu.list','Menu manager','admin.emnu','en'),(1666,'admin.menu.create','Create new menu','admin.emnu','en'),(1667,'admin.menu.edit','Edit menu','admin.emnu','en'),(1668,'admin.menu.error_have_child','Need to delete the internal menus before doing this!','admin.emnu','en'),(1669,'admin.menu.parent','Parent','admin.emnu','en'),(1670,'admin.menu.title','Title','admin.emnu','en'),(1671,'admin.menu.icon','Icon','admin.emnu','en'),(1672,'admin.menu.uri','URI','admin.emnu','en'),(1673,'admin.menu.roles','Roles','admin.emnu','en'),(1674,'admin.menu.permissions','Permissions','admin.emnu','en'),(1675,'admin.menu.create_success','Create new item success!','admin.emnu','en'),(1676,'admin.menu.edit_success','Edit item success!','admin.emnu','en'),(1677,'admin.menu.sort','Sort','admin.emnu','en'),(1678,'email.admin.order_success_to_admin','Send order success to admin','email.admin','en'),(1679,'email.admin.order_success_to_cutomer','Send order success to customer','email.admin','en'),(1680,'email.admin.order_success_to_cutomer_pdf','Send order success to customer with pdf invoice','email.admin','en'),(1681,'email.admin.forgot_password','Send email forgot','email.admin','en'),(1682,'email.admin.welcome_customer','Send email welcome','email.admin','en'),(1683,'email.admin.contact_to_customer','Send email contact to customer','email.admin','en'),(1684,'email.admin.contact_to_admin','Send email contact to admin','email.admin','en'),(1685,'email.email_action_queue','Use send mail queue <span class=\"text-red\">(*)</span>','email.admin','en'),(1686,'email.admin.other','Other','email.admin','en'),(1687,'email.admin.customer_verify','Send account verification email','email.admin','en'),(1688,'email.admin.order_success_to_admin','Gß╗¡i ─æ╞ín h├áng th├ánh c├┤ng cho admin','email.admin','vi'),(1689,'email.admin.order_success_to_cutomer_pdf','Gß╗¡i ─æ╞ín h├áng th├ánh c├┤ng cho kh├ích k├¿m PDF','email.admin','vi'),(1690,'email.admin.order_success_to_cutomer','Gß╗¡i ─æ╞ín h├áng th├ánh c├┤ng cho kh├ích','email.admin','vi'),(1691,'email.admin.forgot_password','Gß╗¡i mail qu├¬n mß║¡t khß║⌐u','email.admin','vi'),(1692,'email.admin.welcome_customer','Gß╗¡i mail ch├áo mß╗½ng','email.admin','vi'),(1693,'email.admin.contact_to_customer','Gß╗¡i mail form li├¬n hß╗ç cho kh├ích','email.admin','vi'),(1694,'email.admin.contact_to_admin','Gß╗¡i mail form li├¬n hß╗ç cho admin','email.admin','vi'),(1695,'email.email_action_queue','Gß╗¡i mail qua h├áng ─æß╗úi <span class=\"text-red\">(*)</span>','email.admin','vi'),(1696,'email.admin.config_smtp','Cß║Ñu h├¼nh SMTP','email.admin','vi'),(1697,'email.admin.other','Loß║íi kh├íc','email.admin','vi'),(1698,'email.admin.customer_verify','Gß╗¡i email x├íc thß╗▒c t├ái khoß║ún','email.admin','vi'),(1699,'email.admin.config_mode','Config mode','email.admin','en'),(1700,'email.admin.config_smtp','Config SMTP','email.admin','en'),(1701,'email.admin.config_mode','Cß║Ñu h├¼nh mode','email.admin','vi'),(1702,'email.email_action.type','Action type','email.admin','en'),(1703,'email.email_action.mode','Action mode','email.admin','en'),(1704,'email.email_action.sort','Action sort','email.admin','en'),(1705,'email.email_action.order_success_to_admin','Send order success to admin','email.admin','en'),(1706,'email.email_action.order_success_to_cutomer','Send order success to customer','email.admin','en'),(1707,'email.email_action.order_success_to_cutomer_pdf','Send order success to customer with pdf invoice','email.admin','en'),(1708,'email.email_action.forgot_password','Send email forgot','email.admin','en'),(1709,'email.email_action.customer_verify','Customer verification','email.admin','en'),(1710,'email.email_action.welcome_customer','Send email welcome','email.admin','en'),(1711,'email.email_action.contact_to_customer','Send email contact to customer','email.admin','en'),(1712,'email.email_action.contact_to_admin','Send email contact to admin','email.admin','en'),(1713,'email.email_action.email_action_mode','ON/OFF send mail','email.admin','en'),(1714,'email.email_action.email_action_queue','Use send mail queue <span class=\"text-red\">(*)</span>','email.admin','en'),(1715,'email.email_action.email_action_smtp_mode','SMTP mode','email.admin','en'),(1716,'email.email_action.config_smtp','Config SMTP','email.admin','en'),(1717,'email.email_action.type','Loß║íi gß╗¡i mail','email.admin','vi'),(1718,'email.email_action.mode','Chß║┐ ─æß╗Ö','email.admin','vi'),(1719,'email.email_action.sort','Sß║»p xß║┐p','email.admin','vi'),(1720,'email.email_action.order_success_to_admin','Gß╗¡i ─æ╞ín h├áng th├ánh c├┤ng cho admin','email.admin','vi'),(1721,'email.email_action.order_success_to_cutomer_pdf','Gß╗¡i ─æ╞ín h├áng th├ánh c├┤ng cho kh├ích k├¿m PDF','email.admin','vi'),(1722,'email.email_action.order_success_to_cutomer','Gß╗¡i ─æ╞ín h├áng th├ánh c├┤ng cho kh├ích','email.admin','vi'),(1723,'email.email_action.forgot_password','Gß╗¡i mail qu├¬n mß║¡t khß║⌐u','email.admin','vi'),(1724,'email.email_action.welcome_customer','Gß╗¡i mail ch├áo mß╗½ng','email.admin','vi'),(1725,'email.email_action.contact_to_customer','Gß╗¡i mail form li├¬n hß╗ç cho kh├ích','email.admin','vi'),(1726,'email.email_action.contact_to_admin','Gß╗¡i mail form li├¬n hß╗ç cho admin','email.admin','vi'),(1727,'email.email_action.email_action_mode','Tß║»t/Mß╗ƒ chß╗⌐c n─âng gß╗¡i mail','email.admin','vi'),(1728,'email.email_action.email_action_queue','Gß╗¡i mail qua h├áng ─æß╗úi <span class=\"text-red\">(*)</span>','email.admin','vi'),(1729,'email.email_action.email_action_smtp_mode','Sß╗¡ dß╗Ñng SMTP','email.admin','vi'),(1730,'email.email_action.config_smtp','Cß║Ñu h├¼nh SMTP','email.admin','vi'),(1731,'email.email_action.customer_verify','Gß╗¡i email x├íc thß╗▒c t├ái khoß║ún','email.admin','vi'),(1732,'email.email_action.smtp_mode','Sß╗¡ dß╗Ñng cß║Ñu h├¼nh SMTP','email.admin','vi'),(1733,'email.email_action.smtp_mode','Use SMTP config','email.admin','en'),(1734,'email.email_action.help_note','<span class=\"text-red\">(*)</span>: Email sß║╜ kh├┤ng ─æ╞░ß╗úc gß╗¡i trß╗▒c tiß║┐p, m├á th├┤ng qua h├áng ─æß╗úi. Bß║ín cß║ºn phß║úi c├ái ─æß║╖t \"artisan schedule:run\" tr╞░ß╗¢c,  chi tiß║┐t <a href=\"https://s-cart.org/docs/master/email.html\">Tß║áI ─É├éY</a>','email.admin','vi'),(1735,'email.email_action.help_note','<span class=\"text-red\">(*)</span>: Emails will not be sent directly, but through a queue. You need to set up \"artisan schedule: run\" first, details <a href=\"https://s-cart.org/docs/master/email.html\">HERE</a>','email.admin','en'),(1736,'email.config_smtp.smtp_host','SMTP host','email.admin','en'),(1737,'email.config_smtp.smtp_user','SMTP user','email.admin','en'),(1738,'email.config_smtp.smtp_password','SMTP password','email.admin','en'),(1739,'email.config_smtp.smtp_security','SMTP security','email.admin','en'),(1740,'email.config_smtp.smtp_port','SMTP port','email.admin','en'),(1741,'email.config_smtp.smtp_name','Email name','email.admin','en'),(1742,'email.config_smtp.smtp_from','Send mail from','email.admin','en'),(1743,'email.config_smtp.smtp_host','Server SMTP','email.admin','vi'),(1744,'email.config_smtp.smtp_user','T├ái khoß║ún SMTP','email.admin','vi'),(1745,'email.config_smtp.smtp_password','Mß║¡t khß║⌐u SMTP','email.admin','vi'),(1746,'email.config_smtp.smtp_security','Bß║úo mß║¡t SMTP','email.admin','vi'),(1747,'email.config_smtp.smtp_port','Cß╗òng kß║┐t nß╗æi SMTP','email.admin','vi'),(1748,'email.config_smtp.smtp_name','T├¬n gß╗¡i mail','email.admin','vi'),(1749,'email.config_smtp.smtp_from','─Éß╗ïa chß╗ë email gß╗¡i','email.admin','vi'),(1750,'email.welcome','Ch├áo mß╗½ng!','email','vi'),(1751,'email.welcome','Welcome!','email','en'),(1752,'email.forgot_password.title','Hello!','email.forgot_password','en'),(1753,'email.forgot_password.reset_button','Reset password','email.forgot_password','en'),(1754,'email.forgot_password.reason_sendmail','You are receiving this email because we received a password reset request for your account.','email.forgot_password','en'),(1755,'email.forgot_password.note_sendmail','This password reset link will expire in :count minutes.<br><br>If you did not request a password reset, no further action is required.','email.forgot_password','en'),(1756,'email.forgot_password.note_access_link','If youΓÇÖre having trouble clicking the \":reset_button\" button, copy and paste the URL below into your web browser :url','email.forgot_password','en'),(1757,'email.forgot_password.title','Xin ch├áo!','email.forgot_password','vi'),(1758,'email.forgot_password.reset_button','Tß║ío lß║íi mß║¡t khß║⌐u','email.forgot_password','vi'),(1759,'email.forgot_password.reason_sendmail','Bß║ín ─æang nhß║¡n email n├áy v├¼ ch├║ng t├┤i nhß║¡n ─æ╞░ß╗úc y├¬u cß║ºu thiß║┐t lß║¡p lß║íi mß║¡t khß║⌐u cho t├ái khoß║ún cß╗ºa bß║ín.','email.forgot_password','vi'),(1760,'email.forgot_password.note_sendmail','Li├¬n kß║┐t mß║¡t khß║⌐u n├áy sß║╜ hß║┐t hß║ín trong v├▓ng :count ph├║t.<br><br>Nß║┐u bß║ín kh├┤ng y├¬u cß║ºu mß╗Öt thiß║┐t lß║¡p lß║íi mß║¡t khß║⌐u, bß║ín kh├┤ng cß║ºn l├ám g├¼ cß║ú.<br>','email.forgot_password','vi'),(1761,'email.forgot_password.note_access_link','Nß║┐u bß║ín gß║╖p sß╗▒ cß╗æ c├ích nhß║Ñn v├áo n├║t \":reset_button\", sao ch├⌐p v├á d├ín URL d╞░ß╗¢i ─æ├óy v├áo tr├¼nh duyß╗çt web cß╗ºa bß║ín :url','email.forgot_password','vi'),(1762,'email.verification_content.title','Hello!','email.verification_content','en'),(1763,'email.verification_content.button','Verify Email Address','email.verification_content','en'),(1764,'email.verification_content.reason_sendmail','Please click the button below to verify your email address.','email.verification_content','en'),(1765,'email.verification_content.note_sendmail','This password reset link will expire in :count minutes.<br><br>If you did not create an account, no further action is required.','email.verification_content','en'),(1766,'email.verification_content.note_access_link','If youΓÇÖre having trouble clicking the \":button\" button, copy and paste the URL below into your web browser :url','email.verification_content','en'),(1767,'email.verification_content.title','Xin ch├áo!','email.verification_content','vi'),(1768,'email.verification_content.button','X├íc nhß║¡n ─æß╗ïa chß╗ë email','email.verification_content','vi'),(1769,'email.verification_content.reason_sendmail','Vui l├▓ng nhß║Ñp v├áo n├║t b├¬n d╞░ß╗¢i ─æß╗â x├íc minh ─æß╗ïa chß╗ë email cß╗ºa bß║ín.','email.verification_content','vi'),(1770,'email.verification_content.note_sendmail','Li├¬n kß║┐t mß║¡t khß║⌐u n├áy sß║╜ hß║┐t hß║ín trong v├▓ng :count ph├║t.<br><br>Nß║┐u bß║ín ch╞░a tß║ío t├ái khoß║ún, bß║ín kh├┤ng cß║ºn thß╗▒c hiß╗çn th├¬m h├ánh ─æß╗Öng n├áo.','email.verification_content','vi'),(1771,'email.verification_content.note_access_link','Nß║┐u bß║ín gß║╖p sß╗▒ cß╗æ khi nhß║Ñp v├áo button \":button\", sao ch├⌐p v├á d├ín URL b├¬n d╞░ß╗¢i v├áo tr├¼nh duyß╗çt web cß╗ºa bß║ín :url','email.verification_content','vi'),(1772,'email.order.title_1','Hi! Website :website has new order!','email.order','en'),(1773,'email.order.order_id','Order ID','email.order','en'),(1774,'email.order.toname','Customer name','email.order','en'),(1775,'email.order.address','Address','email.order','en'),(1776,'email.order.phone','Phone','email.order','en'),(1777,'email.order.note','Note','email.order','en'),(1778,'email.order.order_detail','Order detail','email.order','en'),(1779,'email.order.sort','No.','email.order','en'),(1780,'email.order.sku','SKU','email.order','en'),(1781,'email.order.price','Price','email.order','en'),(1782,'email.order.name','Name','email.order','en'),(1783,'email.order.qty','Qty','email.order','en'),(1784,'email.order.total','Total','email.order','en'),(1785,'email.order.sub_total','Sub total','email.order','en'),(1786,'email.order.shipping_fee','Shipping fee','email.order','en'),(1787,'email.order.discount','Discount','email.order','en'),(1788,'email.order.order_total','Order total','email.order','en'),(1789,'email.order.title_1','Xin ch├áo! :website trang web c├│ ─æ╞ín h├áng mß╗¢i!','email.order','vi'),(1790,'email.order.order_id','M├ú ─æ╞ín h├áng','email.order','vi'),(1791,'email.order.toname','T├¬n kh├ích h├áng','email.order','vi'),(1792,'email.order.address','─Éß╗ïa chß╗ë','email.order','vi'),(1793,'email.order.phone','─Éiß╗çn thoß║íi','email.order','vi'),(1794,'email.order.note','Ghi ch├║','email.order','vi'),(1795,'email.order.order_detail','Chi tiß║┐t ─æß║╖t h├áng','email.order','vi'),(1796,'email.order.sort','Thß╗⌐ tß╗▒','email.order','vi'),(1797,'email.order.sku','SKU','email.order','vi'),(1798,'email.order.price','Gi├í','email.order','vi'),(1799,'email.order.name','T├¬n','email.order','vi'),(1800,'email.order.qty','Sß╗æ l╞░ß╗úng','email.order','vi'),(1801,'email.order.total','Tß╗òng','email.order','vi'),(1802,'email.order.sub_total','Tiß╗ün h├áng','email.order','vi'),(1803,'email.order.shipping_fee','Ph├¡ vß║¡n chuyß╗ân','email.order','vi'),(1804,'email.order.discount','Giß║úm gi├í','email.order','vi'),(1805,'email.order.order_total','Tß╗òng sß╗æ ─æ╞ín h├áng','email.order','vi'),(1806,'email.order.email_subject_customer','C├│ ─æ╞ín h├áng mß╗¢i','email.order','vi'),(1807,'email.order.email_subject_customer','Have a new order','email.order','en'),(1808,'admin.store_block.list','Danh s├ích block','admin.store_block','vi'),(1809,'admin.store_block.list','Block list','admin.store_block','en'),(1810,'admin.store_block.name','T├¬n','admin.store_block','vi'),(1811,'admin.store_block.position','Vß╗ï tr├¡','admin.store_block','vi'),(1812,'admin.store_block.page','Trang','admin.store_block','vi'),(1813,'admin.store_block.type','Loß║íi','admin.store_block','vi'),(1814,'admin.store_block.text','Nß╗Öi dung','admin.store_block','vi'),(1815,'admin.store_block.status','Trß║íng th├íi','admin.store_block','vi'),(1816,'admin.store_block.name','Name','admin.store_block','en'),(1817,'admin.store_block.position','Position','admin.store_block','en'),(1818,'admin.store_block.page','Page','admin.store_block','en'),(1819,'admin.store_block.type','Type','admin.store_block','en'),(1820,'admin.store_block.text','Text','admin.store_block','en'),(1821,'admin.store_block.status','Status','admin.store_block','en'),(1822,'admin.store_block.sort','Sort','admin.store_block','en'),(1823,'admin.store_block.add_new_title','Add layout','admin.store_block','en'),(1824,'admin.store_block.add_new_des','Create a new layout','admin.store_block','en'),(1825,'admin.store_block.select_position','Select position','admin.store_block','en'),(1826,'admin.store_block.select_page','Select page','admin.store_block','en'),(1827,'admin.store_block.helper_html','Basic HTML content.','admin.store_block','en'),(1828,'admin.store_block.helper_view','View files are in \"resources/views/templates/:template/block\" directory.','admin.store_block','en'),(1829,'admin.store_block.helper_module','File in \"app/Plugins/Block\". Module must have render() method available to display content.','admin.store_block','en'),(1830,'admin.store_block.add_new_title','Tß║ío bß╗æ cß╗Ñc','admin.store_block','vi'),(1831,'admin.store_block.add_new_des','Tß║ío mß╗¢i bß╗æ cß╗Ñc','admin.store_block','vi'),(1832,'admin.store_block.select_position','Chß╗ìn vß╗ï tr├¡','admin.store_block','vi'),(1833,'admin.store_block.select_page','Chß╗ìn trang','admin.store_block','vi'),(1834,'admin.store_block.helper_html','Basic HTML content.','admin.store_block','vi'),(1835,'admin.store_block.helper_view','File trong th╞░ mß╗Ñc \"resources/views/templates/:template/block\".','admin.store_block','vi'),(1836,'admin.store_block.helper_module','File trong \"app/Plugins/Block\". Module phß║úi c├│ h├ám render().','admin.store_block','vi'),(1837,'admin.log.list','Danh s├ích nhß║¡t k├╜','admin.log','vi'),(1838,'admin.log.list','Logs list','admin.log','en'),(1839,'admin.log.user','Ng╞░ß╗¥i d├╣ng','admin.log','vi'),(1840,'admin.log.user','User','admin.log','en'),(1841,'admin.log.method','Ph╞░╞íng thß╗⌐c','admin.log','vi'),(1842,'admin.log.path','Path','admin.log','vi'),(1843,'admin.log.ip','IP','admin.log','vi'),(1844,'admin.log.user_agent','User agent','admin.log','vi'),(1845,'admin.log.input','Input','admin.log','vi'),(1846,'admin.log.created_at','Thß╗¥i gian','admin.log','vi'),(1847,'admin.log.method','Method','admin.log','en'),(1848,'admin.log.path','Path','admin.log','en'),(1849,'admin.log.ip','IP','admin.log','en'),(1850,'admin.log.user_agent','User agent','admin.log','en'),(1851,'admin.log.input','Input','admin.log','en'),(1852,'admin.log.created_at','Time','admin.log','en'),(1853,'admin.page.title','Ti├¬u ─æß╗ü','admin.page','vi'),(1854,'admin.page.image','H├¼nh ß║únh','admin.page','vi'),(1855,'admin.page.alias','URL t├╣y chß╗ënh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','admin.page','vi'),(1856,'admin.page.alias_validate','Tß╗æi ─æa 100 k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ','admin.page','vi'),(1857,'admin.page.key_validate','Chß╗ë sß╗¡ dß╗Ñng k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ','admin.page','vi'),(1858,'admin.page.status','Trß║íng th├íi','admin.page','vi'),(1859,'admin.page.keyword','Tß╗½ kh├│a','admin.page','vi'),(1860,'admin.page.description','M├┤ tß║ú','admin.page','vi'),(1861,'admin.page.content','Nß╗Öi dung','admin.page','vi'),(1862,'admin.page.title','Title','admin.page','en'),(1863,'admin.page.image','Image','admin.page','en'),(1864,'admin.page.alias','Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','admin.page','en'),(1865,'admin.page.alias_validate','Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ','admin.page','en'),(1866,'admin.page.status','Status','admin.page','en'),(1867,'admin.page.keyword','Keyword','admin.page','en'),(1868,'admin.page.description','Description','admin.page','en'),(1869,'admin.page.content','Content','admin.page','en'),(1870,'admin.page.key_validate','Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ','admin.page','en'),(1871,'admin.page.add_new','Add new','admin.page','en'),(1872,'admin.page.add_new_title','Add page','admin.page','en'),(1873,'admin.page.add_new_des','Create a new page','admin.page','en'),(1874,'admin.page.add_new_title','Tß║ío trang','admin.page','vi'),(1875,'admin.page.add_new_des','Tß║ío mß╗¢i trang','admin.page','vi'),(1876,'admin.page.choose_image','Chß╗ìn ß║únh','admin.page','vi'),(1877,'admin.page.choose_image','Chose image','admin.page','en'),(1878,'admin.page.list','Danh s├ích trang','admin.page','vi'),(1879,'admin.page.list','Page list','admin.page','en'),(1880,'admin.page.search_place','T├¼m t├¬n','admin.page','vi'),(1881,'admin.page.search_place','Search name','admin.page','en'),(1882,'admin.news.add_new_title','Add new blog','admin.news','en'),(1883,'admin.news.add_new_des','Create a new blog','admin.news','en'),(1884,'admin.news.title','Title','admin.news','en'),(1885,'admin.news.alias','Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','admin.news','en'),(1886,'admin.news.alias_validate','Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ','admin.news','en'),(1887,'admin.news.keyword','Keyword','admin.news','en'),(1888,'admin.news.description','Description','admin.news','en'),(1889,'admin.news.content','Content','admin.news','en'),(1890,'admin.news.image','Image','admin.news','en'),(1891,'admin.news.status','Status','admin.news','en'),(1892,'admin.news.sort','Sort','admin.news','en'),(1893,'admin.news.list','Blog/News manager','admin.news','en'),(1894,'admin.news.edit','Edit','admin.news','en'),(1895,'admin.news.search_place','Search title','admin.news','en'),(1896,'admin.news.title','Ti├¬u ─æß╗ü','admin.news','vi'),(1897,'admin.news.alias','URL t├╣y chß╗ënh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','admin.news','vi'),(1898,'admin.news.alias_validate','Tß╗æi ─æa 100 k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ','admin.news','vi'),(1899,'admin.news.keyword','Tß╗½ kh├│a','admin.news','vi'),(1900,'admin.news.description','M├┤ tß║ú','admin.news','vi'),(1901,'admin.news.content','Nß╗Öi dung','admin.news','vi'),(1902,'admin.news.image','H├¼nh ß║únh','admin.news','vi'),(1903,'admin.news.parent','Danh mß╗Ñc cha','admin.news','vi'),(1904,'admin.news.top','Hiß╗ân thß╗ï ╞░u ti├¬n','admin.news','vi'),(1905,'admin.news.status','Trß║íng th├íi','admin.news','vi'),(1906,'admin.news.sort','Sß║»p xß║┐p','admin.news','vi'),(1907,'admin.news.list','Danh s├ích','admin.news','vi'),(1908,'admin.news.add_new_title','Tß║ío Blog/News','admin.news','vi'),(1909,'admin.news.add_new_des','Tß║ío mß╗¢i mß╗Öt Blog/News','admin.news','vi'),(1910,'admin.news.search_place','T├¼m ti├¬u ─æß╗ü','admin.news','vi'),(1911,'admin.length.name','T├¬n','admin.length','vi'),(1912,'admin.length.name','Name','admin.length','en'),(1913,'admin.length.description','M├┤ tß║ú','admin.length','vi'),(1914,'admin.length.description','Description','admin.length','en'),(1915,'admin.length.list','Danh s├ích k├¡ch th╞░ß╗¢c','admin.length','vi'),(1916,'admin.length.list','Length list','admin.length','en'),(1917,'admin.length.add_new_title','Th├¬m k├¡ch th╞░ß╗¢c','admin.length','vi'),(1918,'admin.length.add_new_title','Add Length','admin.length','en'),(1919,'admin.weight.name','T├¬n','admin.weight','vi'),(1920,'admin.weight.name','Name','admin.weight','en'),(1921,'admin.weight.description','M├┤ tß║ú','admin.weight','vi'),(1922,'admin.weight.description','Description','admin.weight','en'),(1923,'admin.weight.list','Danh s├ích khß╗æi l╞░ß╗úng','admin.weight','vi'),(1924,'admin.weight.list','Weight list','admin.weight','en'),(1925,'admin.weight.add_new_title','Th├¬m khß╗æi l╞░ß╗úng','admin.weight','vi'),(1926,'admin.weight.add_new_title','Add weight','admin.weight','en'),(1927,'admin.product_property.name','T├¬n','admin.product_property','vi'),(1928,'admin.product_property.name','Name','admin.product_property','en'),(1929,'admin.product_property.list','Danh s├ích thuß╗Öc t├¡nh','admin.product_property','vi'),(1930,'admin.product_property.list','Product property list','admin.product_property','en'),(1931,'admin.product_property.status','Trß║íng th├íi','admin.product_property','vi'),(1932,'admin.product_property.status','Status','admin.product_property','en'),(1933,'admin.product_property.add_new_title','Th├¬m thuß╗Öc t├¡nh','admin.product_property','vi'),(1934,'admin.product_property.add_new_title','Add product property','admin.product_property','en'),(1935,'admin.order_status.name','T├¬n','admin.order_status','vi'),(1936,'admin.order_status.name','Name','admin.order_status','en'),(1937,'admin.order_status.list','Danh s├ích trß║íng th├íi','admin.order_status','vi'),(1938,'admin.order_status.list','Order status list','admin.order_status','en'),(1939,'admin.order_status.status','Trß║íng th├íi','admin.order_status','vi'),(1940,'admin.order_status.status','Status','admin.order_status','en'),(1941,'admin.order_status.add_new_title','Th├¬m trß║íng th├íi','admin.order_status','vi'),(1942,'admin.order_status.add_new_title','Add status','admin.order_status','en'),(1943,'admin.payment_status.name','T├¬n','admin.payment_status','vi'),(1944,'admin.payment_status.name','Name','admin.payment_status','en'),(1945,'admin.payment_status.list','Danh s├ích trß║íng th├íi','admin.payment_status','vi'),(1946,'admin.payment_status.list','Payment status list','admin.payment_status','en'),(1947,'admin.payment_status.status','Trß║íng th├íi','admin.payment_status','vi'),(1948,'admin.payment_status.status','Status','admin.payment_status','en'),(1949,'admin.payment_status.add_new_title','Th├¬m trß║íng th├íi','admin.payment_status','vi'),(1950,'admin.payment_status.add_new_title','Add status','admin.payment_status','en'),(1951,'admin.shipping_status.name','T├¬n','admin.shipping_status','vi'),(1952,'admin.shipping_status.name','Name','admin.shipping_status','en'),(1953,'admin.shipping_status.list','Danh s├ích trß║íng th├íi','admin.shipping_status','vi'),(1954,'admin.shipping_status.list','Shipping status list','admin.shipping_status','en'),(1955,'admin.shipping_status.status','Trß║íng th├íi','admin.shipping_status','vi'),(1956,'admin.shipping_status.status','Status','admin.shipping_status','en'),(1957,'admin.shipping_status.add_new_title','Th├¬m trß║íng th├íi','admin.shipping_status','vi'),(1958,'admin.shipping_status.add_new_title','Add status','admin.shipping_status','en'),(1959,'admin.tax.name','T├¬n','admin.tax','vi'),(1960,'admin.tax.name','Name','admin.tax','en'),(1961,'admin.tax.value','Gi├í trß╗ï','admin.tax','vi'),(1962,'admin.tax.value','Value','admin.tax','en'),(1963,'admin.tax.non_tax','Kh├┤ng thuß║┐','admin.tax','vi'),(1964,'admin.tax.non_tax','None tax','admin.tax','en'),(1965,'admin.tax.auto','Tß╗▒ ─æß╗Öng','admin.tax','vi'),(1966,'admin.tax.auto','Auto','admin.tax','en'),(1967,'admin.tax.list','Danh s├ích thuß║┐','admin.tax','vi'),(1968,'admin.tax.list','Tax list','admin.tax','en'),(1969,'admin.tax.status','Trß║íng th├íi','admin.tax','vi'),(1970,'admin.tax.status','Status','admin.tax','en'),(1971,'admin.tax.add_new_title','Th├¬m thuß║┐','admin.tax','vi'),(1972,'admin.tax.add_new_title','Add tax','admin.tax','en'),(1973,'admin.captcha.captcha_title','Captcha','admin.captcha','en'),(1974,'admin.captcha.captcha_mode','Use Captcha','admin.captcha','en'),(1975,'admin.captcha.captcha_method','Captcha method','admin.captcha','en'),(1976,'admin.captcha.captcha_method_help','Select method Captcha','admin.captcha','en'),(1977,'admin.captcha.captcha_page','Captcha','admin.captcha','en'),(1978,'admin.captcha.captcha_page_help','Select page use Captcha','admin.captcha','en'),(1979,'admin.captcha.captcha_page_contact','Contact','admin.captcha','en'),(1980,'admin.captcha.captcha_page_register','Register','admin.captcha','en'),(1981,'admin.captcha.captcha_page_forgot_password','Forgot pasword','admin.captcha','en'),(1982,'admin.captcha.captcha_page_checkout','Checkout','admin.captcha','en'),(1983,'admin.captcha.captcha_page_review','Review product','admin.captcha','en'),(1984,'admin.captcha.captcha_title','Captcha','admin.captcha','vi'),(1985,'admin.captcha.captcha_mode','Sß╗¡ dß╗Ñng Captcha','admin.captcha','vi'),(1986,'admin.captcha.captcha_method','Loß║íi Captcha','admin.captcha','vi'),(1987,'admin.captcha.captcha_method_help','Chß╗ìn loß║íi Captcha','admin.captcha','vi'),(1988,'admin.captcha.captcha_page','Trang sß╗¡ dß╗Ñng captcha','admin.captcha','vi'),(1989,'admin.captcha.captcha_page_help','Chß╗ìn trang sß╗¡ dß╗Ñng Captcha','admin.captcha','vi'),(1990,'admin.captcha.captcha_page_contact','Li├¬n hß╗ç','admin.captcha','vi'),(1991,'admin.captcha.captcha_page_register','─É─âng k├╜','admin.captcha','vi'),(1992,'admin.captcha.captcha_page_forgot_password','Qu├¬n mß║¡t khß║⌐u','admin.captcha','vi'),(1993,'admin.captcha.captcha_page_checkout','─Éß║╖t h├áng','admin.captcha','vi'),(1994,'admin.captcha.captcha_page_review','─É├ính gi├í sß║ún phß║⌐m','admin.captcha','vi'),(1995,'admin.link.list','Danh s├ích li├¬n kß║┐t','admin.link','vi'),(1996,'admin.link.list','Link list','admin.link','en'),(1997,'admin.link.name','T├¬n','admin.link','vi'),(1998,'admin.link.url','─É╞░ß╗¥ng dß║½n','admin.link','vi'),(1999,'admin.link.target','Target','admin.link','vi'),(2000,'admin.link.group','Nh├│m','admin.link','vi'),(2001,'admin.link.sort','Thß╗⌐ tß╗▒','admin.link','vi'),(2002,'admin.link.status','Trß║íng th├íi','admin.link','vi'),(2003,'admin.link.add_new','Th├¬m mß╗¢i','admin.link','vi'),(2004,'admin.link.add_new_title','Tß║ío url','admin.link','vi'),(2005,'admin.link.add_new_des','Tß║ío mß╗¢i url','admin.link','vi'),(2006,'admin.link.select_group','Chß╗ìn nh├│m','admin.link','vi'),(2007,'admin.link.select_target','Chß╗ìn target','admin.link','vi'),(2008,'admin.link.helper_url','V├¡ dß╗Ñ: url, path, hoß║╖c route::name','admin.link','vi'),(2009,'admin.link.name','Name','admin.link','en'),(2010,'admin.link.url','Url','admin.link','en'),(2011,'admin.link.target','Target','admin.link','en'),(2012,'admin.link.group','Group','admin.link','en'),(2013,'admin.link.status','Status','admin.link','en'),(2014,'admin.link.sort','Sort','admin.link','en'),(2015,'admin.link.add_new','Add new','admin.link','en'),(2016,'admin.link.add_new_title','Add layout url','admin.link','en'),(2017,'admin.link.add_new_des','Create a new layout url','admin.link','en'),(2018,'admin.link.select_group','Select group','admin.link','en'),(2019,'admin.link.select_target','Select target','admin.link','en'),(2020,'admin.link.helper_url','Ex: url, path, or route::name','admin.link','en'),(2021,'admin.link_position.menu','Menu','admin.link','vi'),(2022,'admin.link_position.menu_left','Menu tr├íi','admin.link','vi'),(2023,'admin.link_position.menu_right','Menu phß║úi','admin.link','vi'),(2024,'admin.link_position.footer','Footer','admin.link','vi'),(2025,'admin.link_position.footer_left','Footer tr├íi','admin.link','vi'),(2026,'admin.link_position.footer_right','Footer phß║úi','admin.link','vi'),(2027,'admin.link_position.sidebar','Thanh b├¬n','admin.link','vi'),(2028,'admin.link_position.menu','Menu','admin.link','en'),(2029,'admin.link_position.menu_left','Menu left','admin.link','en'),(2030,'admin.link_position.menu_right','Menu right','admin.link','en'),(2031,'admin.link_position.footer','Footer','admin.link','en'),(2032,'admin.link_position.footer_left','Footer left','admin.link','en'),(2033,'admin.link_position.footer_right','Footer right','admin.link','en'),(2034,'admin.link_position.sidebar','Sidebar','admin.link','en'),(2035,'admin.supplier.name','Name','admin.supplier','en'),(2036,'admin.supplier.alias','Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','admin.supplier','en'),(2037,'admin.supplier.alias_validate','Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ','admin.supplier','en'),(2038,'admin.supplier.email','Email','admin.supplier','en'),(2039,'admin.supplier.phone','Phone','admin.supplier','en'),(2040,'admin.supplier.address','Address','admin.supplier','en'),(2041,'admin.supplier.image','Image','admin.supplier','en'),(2042,'admin.supplier.url','Website','admin.supplier','en'),(2043,'admin.supplier.sort','Sort','admin.supplier','en'),(2044,'admin.supplier.status','Status','admin.supplier','en'),(2045,'admin.supplier.add_new','Add new','admin.supplier','en'),(2046,'admin.supplier.add_new_title','Add supplier','admin.supplier','en'),(2047,'admin.supplier.add_new_des','Create a new supplier','admin.supplier','en'),(2048,'admin.supplier.list','Suppliers list','admin.supplier','en'),(2049,'admin.supplier.name','T├¬n nh├á cung cß║Ñp','admin.supplier','vi'),(2050,'admin.supplier.alias','URL t├╣y chß╗ënh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>','admin.supplier','vi'),(2051,'admin.supplier.alias_validate','Tß╗æi ─æa 100 k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ','admin.supplier','vi'),(2052,'admin.supplier.email','Email','admin.supplier','vi'),(2053,'admin.supplier.phone','Sß╗æ ─æiß╗çn thoß║íi','admin.supplier','vi'),(2054,'admin.supplier.address','─Éß╗ïa chß╗ë','admin.supplier','vi'),(2055,'admin.supplier.image','H├¼nh ß║únh','admin.supplier','vi'),(2056,'admin.supplier.url','Website','admin.supplier','vi'),(2057,'admin.supplier.sort','Sß║»p xß║┐p','admin.supplier','vi'),(2058,'admin.supplier.status','Status','admin.supplier','vi'),(2059,'admin.supplier.add_new_title','Tß║ío nh├á cung cß║Ñp','admin.supplier','vi'),(2060,'admin.supplier.add_new_des','Tß║ío mß╗¢i nh├á cung cß║Ñp','admin.supplier','vi'),(2061,'admin.supplier.list','Danh s├ích nh├á cung cß║Ñp','admin.supplier','vi'),(2062,'admin.supplier.search_place','T├¼m t├¬n hoß║╖c email','admin.supplier','vi'),(2063,'admin.supplier.search_place','Search name or email','admin.supplier','en'),(2064,'admin.role.name','Name','admin.role','en'),(2065,'admin.role.slug','Slug','admin.role','en'),(2066,'admin.role.permission','Permission','admin.role','en'),(2067,'admin.role.http_path','HTTP path','admin.role','en'),(2068,'admin.role.http_method','HTTP method','admin.role','en'),(2069,'admin.role.created_at','Created at','admin.role','en'),(2070,'admin.role.updated_at','Updated at','admin.role','en'),(2071,'admin.role.password_confirmation','Confirmation','admin.role','en'),(2072,'admin.role.slug_validate','Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ','admin.role','en'),(2073,'admin.role.list','Role manager','admin.role','en'),(2074,'admin.role.edit','Edit','admin.role','en'),(2075,'admin.role.add_new','Add new','admin.role','en'),(2076,'admin.role.add_new_title','Add new role','admin.role','en'),(2077,'admin.role.add_new_des','Create a new role','admin.role','en'),(2078,'admin.role.select_http_method','Select method','admin.role','en'),(2079,'admin.role.select_permission','Select permission','admin.role','en'),(2080,'admin.role.select_user','Select user','admin.role','en'),(2081,'admin.role.slug','Slug','admin.role','vi'),(2082,'admin.role.name','T├¬n','admin.role','vi'),(2083,'admin.role.roles','vai tr├▓','admin.role','vi'),(2084,'admin.role.permission','Quyß╗ün hß║ín','admin.role','vi'),(2085,'admin.role.http_path','HTTP path','admin.role','vi'),(2086,'admin.role.http_method','HTTP method','admin.role','vi'),(2087,'admin.role.created_at','Tß║ío l├║c','admin.role','vi'),(2088,'admin.role.updated_at','Cß║¡p nhß║¡t','admin.role','vi'),(2089,'admin.role.slug_validate','Chß╗ë sß╗¡ dß╗Ñng k├¡ tß╗▒ trong nh├│m: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ','admin.role','vi'),(2090,'admin.role.add_new','Th├¬m mß╗¢i','admin.role','vi'),(2091,'admin.role.add_new_title','Tß║ío quyß╗ün','admin.role','vi'),(2092,'admin.role.add_new_des','Tß║ío mß╗¢i mß╗Öt quyß╗ün','admin.role','vi'),(2093,'admin.role.select_permission','Chß╗ìn quyß╗ün hß║ín','admin.role','vi'),(2094,'admin.role.select_user','Chß╗ìn ng╞░ß╗¥i d├╣ng','admin.role','vi'),(2095,'admin.template.import','Import Template','admin.template','en'),(2096,'admin.template.file_format','File format','admin.template','en'),(2097,'admin.template.choose_file','Choose File','admin.template','en'),(2098,'admin.template.import_submit','Import','admin.template','en'),(2099,'admin.template.import_note','File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>','admin.template','en'),(2100,'admin.template.error_unzip','Error while unzip','admin.template','en'),(2101,'admin.template.error_upload','Error while uploading file','admin.template','en'),(2102,'admin.template.error_check_config','Cannot find config file','admin.template','en'),(2103,'admin.template.error_config_format','The config file is not in the right format','admin.template','en'),(2104,'admin.template.import_success','Import success!','admin.template','en'),(2105,'admin.template.error_exist','Template exist!','admin.template','en'),(2106,'admin.template.template_import','<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Template</span></a>','admin.template','en'),(2107,'admin.template.template_more','<a href=\"https://s-cart.org/en/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>','admin.template','en'),(2108,'admin.template.manager','Template management','admin.template','en'),(2109,'admin.template.title','Template list','admin.template','en'),(2110,'admin.template.name','Template name','admin.template','en'),(2111,'admin.template.auth','Author','admin.template','en'),(2112,'admin.template.email','Email','admin.template','en'),(2113,'admin.template.website','Website','admin.template','en'),(2114,'admin.template.activated','Activated','admin.template','en'),(2115,'admin.template.inactive','Inactive','admin.template','en'),(2116,'admin.template.download','Download','admin.template','en'),(2117,'admin.template.remove','Remove','admin.template','en'),(2118,'admin.template.status','Status','admin.template','en'),(2119,'admin.template.action','Action','admin.template','en'),(2120,'admin.template.installing','Installing','admin.template','en'),(2121,'admin.template.local','Save local','admin.template','en'),(2122,'admin.template.online','From library','admin.template','en'),(2123,'admin.template.version','Version','admin.template','en'),(2124,'admin.template.link','Link','admin.template','en'),(2125,'admin.template.image','Image','admin.template','en'),(2126,'admin.template.empty','Empty template!','admin.template','en'),(2127,'admin.template.downloaded','Downloaded','admin.template','en'),(2128,'admin.template.rated','Rated','admin.template','en'),(2129,'admin.template.price','Price','admin.template','en'),(2130,'admin.template.free','Free','admin.template','en'),(2131,'admin.template.date','Date','admin.template','en'),(2132,'admin.template.click_here','Click here','admin.template','en'),(2133,'admin.template.located','Located','admin.template','en'),(2134,'admin.template.code','Code','admin.template','en'),(2135,'admin.template.image_demo','Image demo','admin.template','en'),(2136,'admin.template.only_version_current','Only this version','admin.template','en'),(2137,'admin.template.compatible','Compatible','admin.template','en'),(2138,'admin.template.used','Template used','admin.template','en'),(2139,'admin.template.list','Template list','admin.template','en'),(2140,'admin.template.import','Import Giao diß╗çn','admin.template','vi'),(2141,'admin.template.file_format','File mß║½u','admin.template','vi'),(2142,'admin.template.choose_file','Chß╗ìn file','admin.template','vi'),(2143,'admin.template.import_submit','Import','admin.template','vi'),(2144,'admin.template.import_note','L├á file <span style=\"color:red\">.zip</span>, dung l╞░ß╗úng tß╗æi ─æa <span style=\"color:red\">50MB</span>','admin.template','vi'),(2145,'admin.template.error_unzip','Lß╗ùi trong khi unzip','admin.template','vi'),(2146,'admin.template.error_upload','Lß╗ùi trong khi upload file','admin.template','vi'),(2147,'admin.template.error_check_config','Kh├┤ng t├¼m thß║Ñy hoß║╖c kh├┤ng thß╗â ─æß╗ìc file config','admin.template','vi'),(2148,'admin.template.error_config_format','File config kh├┤ng ─æ├║ng ─æß╗ïnh dß║íng','admin.template','vi'),(2149,'admin.template.import_success','Import th├ánh c├┤ng!','admin.template','vi'),(2150,'admin.template.error_exist','Giao diß╗çn ─æ├ú tß╗ôn tß║íi!','admin.template','vi'),(2151,'admin.template.template_import','<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>','admin.template','vi'),(2152,'admin.template.template_more','<a href=\"https://s-cart.org/vi/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download ─æß║ºy ─æß╗º ß╗₧ ─É├éY</a>','admin.template','vi'),(2153,'admin.template.manager','Quß║ún l├╜ giao diß╗çn','admin.template','vi'),(2154,'admin.template.title','Danh s├ích giao diß╗çn','admin.template','vi'),(2155,'admin.template.name','T├¬n giao diß╗çn','admin.template','vi'),(2156,'admin.template.email','Email','admin.template','vi'),(2157,'admin.template.website','Website','admin.template','vi'),(2158,'admin.template.activated','─Éang hoß║ít ─æß╗Öng','admin.template','vi'),(2159,'admin.template.inactive','─Éang ß║⌐n','admin.template','vi'),(2160,'admin.template.download','Tß║úi vß╗ü','admin.template','vi'),(2161,'admin.template.remove','Gß╗í bß╗Å','admin.template','vi'),(2162,'admin.template.status','Trß║íng th├íi','admin.template','vi'),(2163,'admin.template.action','H├ánh ─æß╗Öng','admin.template','vi'),(2164,'admin.template.installing','─Éang c├ái ─æß║╖t','admin.template','vi'),(2165,'admin.template.local','─É├ú l╞░u tr├¬n m├íy','admin.template','vi'),(2166,'admin.template.online','Tß║úi tß╗½ th╞░ viß╗çn','admin.template','vi'),(2167,'admin.template.auth','T├íc giß║ú','admin.template','vi'),(2168,'admin.template.version','Phi├¬n bß║ún','admin.template','vi'),(2169,'admin.template.link','Li├¬n kß║┐t','admin.template','vi'),(2170,'admin.template.image','H├¼nh ß║únh','admin.template','vi'),(2171,'admin.template.empty','Ch╞░a c├│ template n├áo!','admin.template','vi'),(2172,'admin.template.downloaded','Sß╗æ lß║ºn tß║úi','admin.template','vi'),(2173,'admin.template.rated','─É├ính gi├í','admin.template','vi'),(2174,'admin.template.price','Gi├í','admin.template','vi'),(2175,'admin.template.free','Miß╗àn ph├¡','admin.template','vi'),(2176,'admin.template.date','Ng├áy tß║ío','admin.template','vi'),(2177,'admin.template.located','─É├ú tß║úi vß╗ü','admin.template','vi'),(2178,'admin.template.code','M├ú code','admin.template','vi'),(2179,'admin.template.click_here','Bß║Ñm v├áo ─æ├óy','admin.template','vi'),(2180,'admin.template.image_demo','H├¼nh mß║½u','admin.template','vi'),(2181,'admin.template.only_version_current','Chß╗ë phi├¬n bß║ún n├áy','admin.template','vi'),(2182,'admin.template.compatible','T╞░╞íng th├¡ch','admin.template','vi'),(2183,'admin.template.used','─Éang sß╗¡ dß╗Ñng','admin.template','vi'),(2184,'admin.template.list','Danh s├ích giao diß╗çn','admin.template','vi'),(2185,'admin.plugin.compatible','T╞░╞íng th├¡ch','admin.plugin','vi'),(2186,'admin.plugin.code','M├ú code','admin.plugin','vi'),(2187,'admin.plugin.name','T├¬n chß╗⌐c n─âng','admin.plugin','vi'),(2188,'admin.plugin.sort','Thß╗⌐ tß╗▒','admin.plugin','vi'),(2189,'admin.plugin.action','H├ánh ─æß╗Öng','admin.plugin','vi'),(2190,'admin.plugin.status','Trß║íng th├íi','admin.plugin','vi'),(2191,'admin.plugin.enable','K├¡ch hoß║ít','admin.plugin','vi'),(2192,'admin.plugin.disable','Tß║»t','admin.plugin','vi'),(2193,'admin.plugin.remove','Gß╗í bß╗Å','admin.plugin','vi'),(2194,'admin.plugin.only_delete_data','Chß╗ë x├│a dß╗» liß╗çu','admin.plugin','vi'),(2195,'admin.plugin.install','C├ái ─æß║╖t','admin.plugin','vi'),(2196,'admin.plugin.config','Cß║Ñu h├¼nh','admin.plugin','vi'),(2197,'admin.plugin.actived','Hoß║ít ─æß╗Öng','admin.plugin','vi'),(2198,'admin.plugin.disabled','Bß╗ï tß║»t','admin.plugin','vi'),(2199,'admin.plugin.not_install','Ch╞░a c├ái ─æß║╖t','admin.plugin','vi'),(2200,'admin.plugin.auth','T├íc giß║ú','admin.plugin','vi'),(2201,'admin.plugin.version','Phi├¬n bß║ún','admin.plugin','vi'),(2202,'admin.plugin.link','Li├¬n kß║┐t','admin.plugin','vi'),(2203,'admin.plugin.image','H├¼nh ß║únh','admin.plugin','vi'),(2204,'admin.plugin.empty','Ch╞░a c├│ extension n├áo!','admin.plugin','vi'),(2205,'admin.plugin.local','─É├ú l╞░u tr├¬n m├íy','admin.plugin','vi'),(2206,'admin.plugin.online','Tß║úi tß╗½ th╞░ viß╗çn','admin.plugin','vi'),(2207,'admin.plugin.downloaded','Sß╗æ lß║ºn tß║úi','admin.plugin','vi'),(2208,'admin.plugin.rated','─É├ính gi├í','admin.plugin','vi'),(2209,'admin.plugin.price','Gi├í','admin.plugin','vi'),(2210,'admin.plugin.free','Miß╗àn ph├¡','admin.plugin','vi'),(2211,'admin.plugin.date','Ng├áy tß║ío','admin.plugin','vi'),(2212,'admin.plugin.located','─É├ú tß║úi vß╗ü','admin.plugin','vi'),(2213,'admin.plugin.only_free','L├á miß╗àn ph├¡','admin.plugin','vi'),(2214,'admin.plugin.only_version','C├╣ng phi├¬n bß║ún','admin.plugin','vi'),(2215,'admin.plugin.all_version','Tß║Ñt cß║ú phi├¬n bß║ún','admin.plugin','vi'),(2216,'admin.plugin.sort_price_asc','Gi├í t─âng','admin.plugin','vi'),(2217,'admin.plugin.sort_price_desc','Gi├í giß║úm','admin.plugin','vi'),(2218,'admin.plugin.sort_rating','B├¼nh chß╗ìn','admin.plugin','vi'),(2219,'admin.plugin.sort_download','L╞░ß╗út tß║úi','admin.plugin','vi'),(2220,'admin.plugin.search_keyword','Tß╗½ kh├│a','admin.plugin','vi'),(2221,'admin.plugin.enter_search_keyword','Nhß║¡p tß╗½ kh├│a','admin.plugin','vi'),(2222,'admin.plugin.search_submit','Lß╗ìc kß║┐t quß║ú','admin.plugin','vi'),(2223,'admin.plugin.import','Import Plugin','admin.plugin','vi'),(2224,'admin.plugin.file_format','File mß║½u','admin.plugin','vi'),(2225,'admin.plugin.choose_file','Chß╗ìn file','admin.plugin','vi'),(2226,'admin.plugin.import_submit','Import','admin.plugin','vi'),(2227,'admin.plugin.import_data','Import :data','admin.plugin','vi'),(2228,'admin.plugin.import_note','L├á file <span style=\"color:red\">.zip</span>, dung l╞░ß╗úng tß╗æi ─æa <span style=\"color:red\">50MB</span>','admin.plugin','vi'),(2229,'admin.plugin.error_unzip','Lß╗ùi trong khi unzip','admin.plugin','vi'),(2230,'admin.plugin.error_upload','Lß╗ùi trong khi upload file','admin.plugin','vi'),(2231,'admin.plugin.error_check_config','Kh├┤ng t├¼m thß║Ñy hoß║╖c kh├┤ng thß╗â ─æß╗ìc file config','admin.plugin','vi'),(2232,'admin.plugin.error_config_format','File config kh├┤ng ─æ├║ng ─æß╗ïnh dß║íng','admin.plugin','vi'),(2233,'admin.plugin.import_success','Import th├ánh c├┤ng!','admin.plugin','vi'),(2234,'admin.plugin.error_exist','Plugin ─æ├ú tß╗ôn tß║íi!','admin.plugin','vi'),(2235,'admin.plugin.plugin_import','<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>','admin.plugin','vi'),(2236,'admin.plugin.plugin_more','<a href=\"https://s-cart.org/vi/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download ─æß║ºy ─æß╗º ß╗₧ ─É├éY</a>','admin.plugin','vi'),(2237,'admin.plugin.Shipping_plugin','Shipping extension','admin.plugin','en'),(2238,'admin.plugin.Payment_plugin','Payment extension','admin.plugin','en'),(2239,'admin.plugin.Total_plugin','Total extension','admin.plugin','en'),(2240,'admin.plugin.Other_plugin','Other plugin','admin.plugin','en'),(2241,'admin.plugin.Api_plugin','Module Api','admin.plugin','en'),(2242,'admin.plugin.Cms_plugin','Cms plugins','admin.plugin','en'),(2243,'admin.plugin.Block_plugin','Block plugins','admin.plugin','en'),(2244,'admin.plugin.Shipping_plugin','Chß╗⌐c n─âng vß║¡n chuyß╗ân','admin.plugin','vi'),(2245,'admin.plugin.Payment_plugin','Chß╗⌐c n─âng thanh to├ín','admin.plugin','vi'),(2246,'admin.plugin.Total_plugin','Chß╗⌐c n─âng gi├í trß╗ï ─æ╞ín h├áng','admin.plugin','vi'),(2247,'admin.plugin.Other_plugin','Chß╗⌐c n─âng kh├íc','admin.plugin','vi'),(2248,'admin.plugin.Cms_plugin','Module CMS','admin.plugin','vi'),(2249,'admin.plugin.Api_plugin','Module Api','admin.plugin','vi'),(2250,'admin.plugin.Block_plugin','Module Block','admin.plugin','vi'),(2251,'admin.plugin.compatible','Compatible','admin.plugin','en'),(2252,'admin.plugin.code','Code','admin.plugin','en'),(2253,'admin.plugin.name','Name','admin.plugin','en'),(2254,'admin.plugin.sort','Sort','admin.plugin','en'),(2255,'admin.plugin.action','Action','admin.plugin','en'),(2256,'admin.plugin.status','Status','admin.plugin','en'),(2257,'admin.plugin.enable','Enable','admin.plugin','en'),(2258,'admin.plugin.disable','Disable','admin.plugin','en'),(2259,'admin.plugin.remove','Remove','admin.plugin','en'),(2260,'admin.plugin.only_delete_data','Only remove data','admin.plugin','en'),(2261,'admin.plugin.install','Install','admin.plugin','en'),(2262,'admin.plugin.config','Config','admin.plugin','en'),(2263,'admin.plugin.actived','Actived','admin.plugin','en'),(2264,'admin.plugin.disabled','Disabled','admin.plugin','en'),(2265,'admin.plugin.not_install','Not install','admin.plugin','en'),(2266,'admin.plugin.auth','Auth','admin.plugin','en'),(2267,'admin.plugin.version','Version','admin.plugin','en'),(2268,'admin.plugin.link','Link','admin.plugin','en'),(2269,'admin.plugin.image','Image','admin.plugin','en'),(2270,'admin.plugin.empty','Empty extension!','admin.plugin','en'),(2271,'admin.plugin.local','Save local','admin.plugin','en'),(2272,'admin.plugin.online','From library','admin.plugin','en'),(2273,'admin.plugin.downloaded','Downloaded','admin.plugin','en'),(2274,'admin.plugin.rated','Rated','admin.plugin','en'),(2275,'admin.plugin.price','Price','admin.plugin','en'),(2276,'admin.plugin.free','Free','admin.plugin','en'),(2277,'admin.plugin.date','Date','admin.plugin','en'),(2278,'admin.plugin.located','Located','admin.plugin','en'),(2279,'admin.plugin.only_free','Is free','admin.plugin','en'),(2280,'admin.plugin.only_version','Only version','admin.plugin','en'),(2281,'admin.plugin.all_version','All version','admin.plugin','en'),(2282,'admin.plugin.sort_price_asc','Price asc','admin.plugin','en'),(2283,'admin.plugin.sort_price_desc','Price desc','admin.plugin','en'),(2284,'admin.plugin.sort_rating','Rating','admin.plugin','en'),(2285,'admin.plugin.sort_download','Download','admin.plugin','en'),(2286,'admin.plugin.search_keyword','Keyword','admin.plugin','en'),(2287,'admin.plugin.enter_search_keyword','Enter keyword','admin.plugin','en'),(2288,'admin.plugin.search_submit','Filter result','admin.plugin','en'),(2289,'admin.plugin.import','Import Plugin','admin.plugin','en'),(2290,'admin.plugin.file_format','File format','admin.plugin','en'),(2291,'admin.plugin.choose_file','Choose File','admin.plugin','en'),(2292,'admin.plugin.import_submit','Import','admin.plugin','en'),(2293,'admin.plugin.import_data','Import :data','admin.plugin','en'),(2294,'admin.plugin.import_note','File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>','admin.plugin','en'),(2295,'admin.plugin.error_unzip','Error while unzip','admin.plugin','en'),(2296,'admin.plugin.error_upload','Error while uploading file','admin.plugin','en'),(2297,'admin.plugin.error_check_config','Cannot find config file','admin.plugin','en'),(2298,'admin.plugin.error_config_format','The config file is not in the right format','admin.plugin','en'),(2299,'admin.plugin.import_success','Import success!','admin.plugin','en'),(2300,'admin.plugin.error_exist','Plugin exist!','admin.plugin','en'),(2301,'admin.plugin.plugin_import','<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>','admin.plugin','en'),(2302,'admin.plugin.plugin_more','<a href=\"https://s-cart.org/en/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>','admin.plugin','en'),(2303,'admin.plugin.install_success','Installed successfully','admin.plugin','en'),(2304,'admin.plugin.install_faild','Installation failed','admin.plugin','en'),(2305,'admin.plugin.table_exist','Table :table already exists','admin.plugin','en'),(2306,'admin.plugin.plugin_exist','This plugin already exists','admin.plugin','en'),(2307,'admin.plugin.action_error','There was an error while :action','admin.plugin','en'),(2308,'admin.plugin.install_success','C├ái ─æß║╖t th├ánh c├┤ng','admin.plugin','vi'),(2309,'admin.plugin.install_faild','C├ái ─æß║╖t thß║Ñt bß║íi','admin.plugin','vi'),(2310,'admin.plugin.table_exist','Bß║úng :table ─æ├ú tß╗ôn tß║íi rß╗ôi','admin.plugin','vi'),(2311,'admin.plugin.plugin_exist','Plugin n├áy ─æ├ú tß╗ôn tß║íi rß╗ôi','admin.plugin','vi'),(2312,'admin.plugin.action_error','C├│ lß╗ùi trong khi :action','admin.plugin','vi'),(2313,'admin.chart.static_month','Thß╗æng k├¬ trong 12 th├íng','admin.chart','vi'),(2314,'admin.chart.static_30_day','Thß╗æng k├¬ trong 1 th├íng','admin.chart','vi'),(2315,'admin.chart.static_month_help','Dß╗» liß╗çu so s├ính bß║▒ng tß╗òng sß╗æ tiß╗ün cß╗ºa ─æ╞ín h├áng, ─æ╞ín vß╗ï Bit','admin.chart','vi'),(2316,'admin.chart.amount','Tß╗òng sß╗æ tiß╗ün (Bit)','admin.chart','vi'),(2317,'admin.chart.order','Tß╗òng ─æ╞ín h├áng','admin.chart','vi'),(2318,'admin.chart.static_country','─É╞ín h├áng theo quß╗æc gia','admin.chart','vi'),(2319,'admin.chart.country','Quß╗æc gia','admin.chart','vi'),(2320,'admin.chart.static_month','Statistics for 12 months','admin.chart','en'),(2321,'admin.chart.static_30_day','Statistics for 30 days','admin.chart','en'),(2322,'admin.chart.static_month_help','The comparison data is equal to the total amount of the order and the Bit units','admin.chart','en'),(2323,'admin.chart.amount','Total amount (Bit)','admin.chart','en'),(2324,'admin.chart.order','Total order','admin.chart','en'),(2325,'admin.chart.static_country','Statistics of orders by country','admin.chart','en'),(2326,'admin.chart.country','Country','admin.chart','en'),(2327,'admin.maintain.title','Maintenance page','admin.maintain','en'),(2328,'admin.maintain.content','Maintenance content of the store','admin.maintain','en'),(2329,'admin.maintain.description','Description','admin.maintain','en'),(2330,'admin.maintain.description_note','Maintenance note','admin.maintain','en'),(2331,'admin.maintain.title','Trang bß║úo tr├¼','admin.maintain','vi'),(2332,'admin.maintain.content','Nß╗Öi dung bß║úo tr├¼ cß╗ºa cß╗¡a h├áng','admin.maintain','vi'),(2333,'admin.maintain.description','Nß╗Öi dung','admin.maintain','vi'),(2334,'admin.maintain.description_note','Ghi ch├║ bß║úo tr├¼','admin.maintain','vi'),(2335,'admin.seo.config','Cß║Ñu h├¼nh SEO','admin.seo','vi'),(2336,'admin.seo.config','SEO config','admin.seo','en'),(2337,'admin.seo.url_seo_lang','Th├¬m ng├┤n ngß╗» tr├¬n URL','admin.seo','vi'),(2338,'admin.seo.url_seo_lang','Add language on URL','admin.seo','en'),(2339,'admin.dashboard.total_order','Tß╗òng ─æ╞ín h├áng','admin.dashboard','vi'),(2340,'admin.dashboard.total_order','Order total','admin.dashboard','en'),(2341,'admin.dashboard.total_product','Tß╗òng sß║ún phß║⌐m','admin.dashboard','vi'),(2342,'admin.dashboard.total_product','Product total','admin.dashboard','en'),(2343,'admin.dashboard.total_customer','Tß╗òng kh├ích h├áng','admin.dashboard','vi'),(2344,'admin.dashboard.total_customer','Customer total','admin.dashboard','en'),(2345,'admin.dashboard.total_blog','Tß╗òng blog','admin.dashboard','vi'),(2346,'admin.dashboard.total_blog','Blog total','admin.dashboard','en'),(2347,'admin.dashboard.order_month','─É╞ín h├áng trong th├íng','admin.dashboard','vi'),(2348,'admin.dashboard.order_month','Order in month','admin.dashboard','en'),(2349,'admin.dashboard.order_year','─É╞ín h├áng trong n─âm','admin.dashboard','vi'),(2350,'admin.dashboard.order_year','Order in year','admin.dashboard','en'),(2351,'admin.dashboard.top_order_new','─É╞ín h├áng mß╗¢i','admin.dashboard','vi'),(2352,'admin.dashboard.top_order_new','New orders','admin.dashboard','en'),(2353,'admin.dashboard.top_customer_new','Kh├ích h├áng mß╗¢i mß╗¢i','admin.dashboard','vi'),(2354,'admin.dashboard.top_customer_new','New customers','admin.dashboard','en'),(2355,'admin.layout_page_position.all','All Page','admin.layout_page_position','en'),(2356,'admin.layout_page_position.home','Home page','admin.layout_page_position','en'),(2357,'admin.layout_page_position.shop_home','Home shop','admin.layout_page_position','en'),(2358,'admin.layout_page_position.store_home','Store: home','admin.layout_page_position','en'),(2359,'admin.layout_page_position.store_product_list','Store: product list','admin.layout_page_position','en'),(2360,'admin.layout_page_position.product_list','List: product','admin.layout_page_position','en'),(2361,'admin.layout_page_position.product_detail','Detail: product','admin.layout_page_position','en'),(2362,'admin.layout_page_position.shop_cart','Cart: cart, wishlist, compare, checkout','admin.layout_page_position','en'),(2363,'admin.layout_page_position.shop_auth','Auth: login, forgot, register','admin.layout_page_position','en'),(2364,'admin.layout_page_position.shop_profile','Customer profile','admin.layout_page_position','en'),(2365,'admin.layout_page_position.item_list','List: category, brand, supplier','admin.layout_page_position','en'),(2366,'admin.layout_page_position.item_detail','Detail: item','admin.layout_page_position','en'),(2367,'admin.layout_page_position.news_list','List:  Blog/news','admin.layout_page_position','en'),(2368,'admin.layout_page_position.news_detail','Detail: entry Blog','admin.layout_page_position','en'),(2369,'admin.layout_page_position.content_list','List: content CMS','admin.layout_page_position','en'),(2370,'admin.layout_page_position.content_detail','Detail: entry CMS','admin.layout_page_position','en'),(2371,'admin.layout_page_position.shop_contact','Page contact','admin.layout_page_position','en'),(2372,'admin.layout_page_position.shop_page','Other page: about...','admin.layout_page_position','en'),(2373,'admin.layout_page_position.all','Tß║Ñt cß║ú trang','admin.layout_page_position','vi'),(2374,'admin.layout_page_position.home','Trang chß╗º','admin.layout_page_position','vi'),(2375,'admin.layout_page_position.shop_home','Trang chß╗º Shop','admin.layout_page_position','vi'),(2376,'admin.layout_page_position.store_home','Cß╗¡a h├áng: trang chß╗º','admin.layout_page_position','vi'),(2377,'admin.layout_page_position.store_product_list','Cß╗¡a h├áng: danh s├ích sß║ún phß║⌐m','admin.layout_page_position','vi'),(2378,'admin.layout_page_position.product_list','Danh s├ích: sß║ún phß║⌐m','admin.layout_page_position','vi'),(2379,'admin.layout_page_position.product_detail','Chi tiß║┐t: sß║ún phß║⌐m','admin.layout_page_position','vi'),(2380,'admin.layout_page_position.shop_cart','Giß╗Å h├áng: giß╗Å h├áng, wishlist, compare, checkout','admin.layout_page_position','vi'),(2381,'admin.layout_page_position.shop_auth','Chß╗⌐ng thß╗▒c: ─æ─âng nhß║¡p, ─æ─âng k├╜, qu├¬n mß║¡t khß║⌐u','admin.layout_page_position','vi'),(2382,'admin.layout_page_position.shop_profile','T├ái khoß║ún kh├ích h├áng','admin.layout_page_position','vi'),(2383,'admin.layout_page_position.item_list','Danh s├ích item: danh mß╗Ñc, nh├ún hiß╗çu, nh├á cung cß║Ñp','admin.layout_page_position','vi'),(2384,'admin.layout_page_position.item_detail','Chi tiß║┐t: item','admin.layout_page_position','vi'),(2385,'admin.layout_page_position.news_list','Danh s├ích: b├ái viß║┐t Blog','admin.layout_page_position','vi'),(2386,'admin.layout_page_position.news_detail','Chi tiß║┐t: b├ái viß║┐t Blog','admin.layout_page_position','vi'),(2387,'admin.layout_page_position.content_list','Danh s├ích: b├ái viß║┐t CMS','admin.layout_page_position','vi'),(2388,'admin.layout_page_position.content_detail','Chi tiß║┐t: b├ái viß║┐t CMS','admin.layout_page_position','vi'),(2389,'admin.layout_page_position.shop_contact','Trang li├¬n hß╗ç','admin.layout_page_position','vi'),(2390,'admin.layout_page_position.shop_page','C├íc trang viß║┐t: giß╗¢i thiß╗çu...','admin.layout_page_position','vi'),(2391,'admin.layout_page_block.header','Header - Ph├¡a tr├¬n </header> :meta, css, javascript,...','admin.layout_page_block','vi'),(2392,'admin.layout_page_block.top','Top - Ph├¡a d╞░ß╗¢i thß║╗ <body>','admin.layout_page_block','vi'),(2393,'admin.layout_page_block.bottom','Bottom - Ph├¡a tr├¬n <footer>','admin.layout_page_block','vi'),(2394,'admin.layout_page_block.left','Left - Cß╗Öt tr├íi','admin.layout_page_block','vi'),(2395,'admin.layout_page_block.right','Right - Cß╗Öt phß║úi','admin.layout_page_block','vi'),(2396,'admin.layout_page_block.banner_top','Top banner - Ngay ph├¡a d╞░ß╗¢i <body>','admin.layout_page_block','vi'),(2397,'admin.layout_page_block.header','Header - Above </header>: meta, css, javascript, ...','admin.layout_page_block','en'),(2398,'admin.layout_page_block.top','Top - Below the <body> tag','admin.layout_page_block','en'),(2399,'admin.layout_page_block.bottom','Bottom - Above <footer>','admin.layout_page_block','en'),(2400,'admin.layout_page_block.left','Left - Left column','admin.layout_page_block','en'),(2401,'admin.layout_page_block.right','Right - Right column','admin.layout_page_block','en'),(2402,'admin.layout_page_block.banner_top','Top banner - Right below <body>','admin.layout_page_block','en');
/*!40000 ALTER TABLE `sc_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_attribute_group`
--

DROP TABLE IF EXISTS `sc_shop_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_attribute_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_attribute_group`
--

LOCK TABLES `sc_shop_attribute_group` WRITE;
/*!40000 ALTER TABLE `sc_shop_attribute_group` DISABLE KEYS */;
INSERT INTO `sc_shop_attribute_group` VALUES (1,'Color',1,1,'radio'),(2,'Size',1,2,'select');
/*!40000 ALTER TABLE `sc_shop_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_banner`
--

DROP TABLE IF EXISTS `sc_shop_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_shop_banner_type_index` (`type`),
  KEY `sc_shop_banner_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_banner`
--

LOCK TABLES `sc_shop_banner` WRITE;
/*!40000 ALTER TABLE `sc_shop_banner` DISABLE KEYS */;
INSERT INTO `sc_shop_banner` VALUES (1,'Banner 1','/data/banner/Main-banner-1-1903x600.jpg',NULL,'_self','<h1 class=\"swiper-title-1\" data-caption-animate=\"fadeScale\" data-caption-delay=\"100\">Top-notch Furniture</h1><p class=\"biggest text-white-70\" data-caption-animate=\"fadeScale\" data-caption-delay=\"200\">Sofa Store provides the best furniture and accessories for homes and offices.</p><div class=\"button-wrap\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"300\"> <span class=\"button button-zachem-tak-delat button-white button-zakaria\"> Shop now</span> </div>',1,0,0,'banner',1,NULL,NULL),(2,'Banner 2','/data/banner/Main-banner-3-1903x600.jpg',NULL,'_self','<h1 class=\"swiper-title-1\" data-caption-animate=\"fadeScale\" data-caption-delay=\"100\">Top-notch Furniture</h1><p class=\"biggest text-white-70\" data-caption-animate=\"fadeScale\" data-caption-delay=\"200\">Sofa Store provides the best furniture and accessories for homes and offices.</p><div class=\"button-wrap\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"300\"> <span class=\"button button-zachem-tak-delat button-white button-zakaria\"> Shop now</span> </div>',1,0,0,'banner',1,NULL,NULL),(3,'Banner 3','/data/banner/bgbr.jpg',NULL,'_self','',1,0,0,'breadcrumb',1,NULL,NULL),(4,'Banner 4','/data/banner/store-1.jpg',NULL,'_self','',1,0,0,'banner-store',1,NULL,NULL);
/*!40000 ALTER TABLE `sc_shop_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_banner_type`
--

DROP TABLE IF EXISTS `sc_shop_banner_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_banner_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_banner_type_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_banner_type`
--

LOCK TABLES `sc_shop_banner_type` WRITE;
/*!40000 ALTER TABLE `sc_shop_banner_type` DISABLE KEYS */;
INSERT INTO `sc_shop_banner_type` VALUES (1,'banner','Banner website'),(2,'background','Background website'),(3,'breadcrumb','Breadcrumb website'),(4,'banner-store','Banner store'),(5,'other','Other');
/*!40000 ALTER TABLE `sc_shop_banner_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_brand`
--

DROP TABLE IF EXISTS `sc_shop_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sc_shop_brand_alias_index` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_brand`
--

LOCK TABLES `sc_shop_brand` WRITE;
/*!40000 ALTER TABLE `sc_shop_brand` DISABLE KEYS */;
INSERT INTO `sc_shop_brand` VALUES (1,'Husq','husq','/data/brand/01-181x52.png','',1,0),(2,'Ideal','ideal','/data/brand/02-181x52.png','',1,0),(3,'Apex','apex','/data/brand/03-181x52.png','',1,0),(4,'CST','cst','/data/brand/04-181x52.png','',1,0),(5,'Klein','klein','/data/brand/05-181x52.png','',1,0),(6,'Metabo','metabo','/data/brand/06-181x52.png','',1,0),(7,'Avatar','avatar','/data/brand/07-181x52.png','',1,0),(8,'Brand KA','brand-ka','/data/brand/08-181x52.png','',1,0);
/*!40000 ALTER TABLE `sc_shop_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_category`
--

DROP TABLE IF EXISTS `sc_shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sc_shop_category_alias_index` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_category`
--

LOCK TABLES `sc_shop_category` WRITE;
/*!40000 ALTER TABLE `sc_shop_category` DISABLE KEYS */;
INSERT INTO `sc_shop_category` VALUES (1,'/data/category/img-40.jpg','electronics',0,1,1,0),(2,'/data/category/img-44.jpg','clothing-wears',0,1,1,0),(3,'/data/category/img-42.jpg','mobile',1,1,1,0),(4,'/data/category/img-18.jpg','accessaries-extras',0,1,1,0),(5,'/data/category/img-14.jpg','computers',1,1,1,0),(6,'/data/category/img-14.jpg','tablets',1,0,1,0),(7,'/data/category/img-40.jpg','appliances',1,0,1,0),(8,'/data/category/img-14.jpg','men-clothing',2,0,1,0),(9,'/data/category/img-18.jpg','women-clothing',2,1,1,0),(10,'/data/category/img-14.jpg','kid-wear',2,0,1,0),(11,'/data/category/img-40.jpg','mobile-accessaries',4,0,1,0),(12,'/data/category/img-42.jpg','women-accessaries',4,0,1,3),(13,'/data/category/img-40.jpg','men-accessaries',4,0,1,3);
/*!40000 ALTER TABLE `sc_shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_category_description`
--

DROP TABLE IF EXISTS `sc_shop_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `sc_shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  KEY `sc_shop_category_description_lang_index` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_category_description`
--

LOCK TABLES `sc_shop_category_description` WRITE;
/*!40000 ALTER TABLE `sc_shop_category_description` DISABLE KEYS */;
INSERT INTO `sc_shop_category_description` VALUES (1,'en','Electronics','',''),(1,'vi','Thiß║┐t bß╗ï ─æiß╗çn tß╗¡','',''),(2,'en','Clothing & Wears','',''),(2,'vi','Quß║ºn ├ío','',''),(3,'en','Mobile','',''),(3,'vi','─Éiß╗çn thoß║íi','',''),(4,'en','Accessaries & Extras','',''),(4,'vi','Phß╗Ñ kiß╗çn ','',''),(5,'en','Computers','',''),(5,'vi','M├íy t├¡nh','',''),(6,'en','Tablets','',''),(6,'vi','M├íy t├¡nh bß║úng','',''),(7,'en','Appliances','',''),(7,'vi','Thiß║┐t bß╗ï','',''),(8,'en','Men Clothing','',''),(8,'vi','Quß║ºn ├ío nam','',''),(9,'en','Women Clothing','',''),(9,'vi','Quß║ºn ├ío nß╗»','',''),(10,'en','Kid Wear','',''),(10,'vi','─Éß╗ô trß║╗ em','',''),(11,'en','Mobile Accessaries','',''),(11,'vi','Phß╗Ñ kiß╗çn ─æiß╗çn thoß║íi','',''),(12,'en','Women Accessaries','',''),(12,'vi','Phß╗Ñ kiß╗çn nß╗»','',''),(13,'en','Men Accessaries','',''),(13,'vi','Phß╗Ñ kiß╗çn nam','','');
/*!40000 ALTER TABLE `sc_shop_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_country`
--

DROP TABLE IF EXISTS `sc_shop_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_country_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_country`
--

LOCK TABLES `sc_shop_country` WRITE;
/*!40000 ALTER TABLE `sc_shop_country` DISABLE KEYS */;
INSERT INTO `sc_shop_country` VALUES (1,'AL','Albania'),(2,'DZ','Algeria'),(3,'DS','American Samoa'),(4,'AD','Andorra'),(5,'AO','Angola'),(6,'AI','Anguilla'),(7,'AQ','Antarctica'),(8,'AG','Antigua and Barbuda'),(9,'AR','Argentina'),(10,'AM','Armenia'),(11,'AW','Aruba'),(12,'AU','Australia'),(13,'AT','Austria'),(14,'AZ','Azerbaijan'),(15,'BS','Bahamas'),(16,'BH','Bahrain'),(17,'BD','Bangladesh'),(18,'BB','Barbados'),(19,'BY','Belarus'),(20,'BE','Belgium'),(21,'BZ','Belize'),(22,'BJ','Benin'),(23,'BM','Bermuda'),(24,'BT','Bhutan'),(25,'BO','Bolivia'),(26,'BA','Bosnia and Herzegovina'),(27,'BW','Botswana'),(28,'BV','Bouvet Island'),(29,'BR','Brazil'),(30,'IO','British Indian Ocean Territory'),(31,'BN','Brunei Darussalam'),(32,'BG','Bulgaria'),(33,'BF','Burkina Faso'),(34,'BI','Burundi'),(35,'KH','Cambodia'),(36,'CM','Cameroon'),(37,'CA','Canada'),(38,'CV','Cape Verde'),(39,'KY','Cayman Islands'),(40,'CF','Central African Republic'),(41,'TD','Chad'),(42,'CL','Chile'),(43,'CN','China'),(44,'CX','Christmas Island'),(45,'CC','Cocos (Keeling) Islands'),(46,'CO','Colombia'),(47,'KM','Comoros'),(48,'CG','Congo'),(49,'CK','Cook Islands'),(50,'CR','Costa Rica'),(51,'HR','Croatia (Hrvatska)'),(52,'CU','Cuba'),(53,'CY','Cyprus'),(54,'CZ','Czech Republic'),(55,'DK','Denmark'),(56,'DJ','Djibouti'),(57,'DM','Dominica'),(58,'DO','Dominican Republic'),(59,'TP','East Timor'),(60,'EC','Ecuador'),(61,'EG','Egypt'),(62,'SV','El Salvador'),(63,'GQ','Equatorial Guinea'),(64,'ER','Eritrea'),(65,'EE','Estonia'),(66,'ET','Ethiopia'),(67,'FK','Falkland Islands (Malvinas)'),(68,'FO','Faroe Islands'),(69,'FJ','Fiji'),(70,'FI','Finland'),(71,'FR','France'),(72,'FX','France, Metropolitan'),(73,'GF','French Guiana'),(74,'PF','French Polynesia'),(75,'TF','French Southern Territories'),(76,'GA','Gabon'),(77,'GM','Gambia'),(78,'GE','Georgia'),(79,'DE','Germany'),(80,'GH','Ghana'),(81,'GI','Gibraltar'),(82,'GK','Guernsey'),(83,'GR','Greece'),(84,'GL','Greenland'),(85,'GD','Grenada'),(86,'GP','Guadeloupe'),(87,'GU','Guam'),(88,'GT','Guatemala'),(89,'GN','Guinea'),(90,'GW','Guinea-Bissau'),(91,'GY','Guyana'),(92,'HT','Haiti'),(93,'HM','Heard and Mc Donald Islands'),(94,'HN','Honduras'),(95,'HK','Hong Kong'),(96,'HU','Hungary'),(97,'IS','Iceland'),(98,'IN','India'),(99,'IM','Isle of Man'),(100,'ID','Indonesia'),(101,'IR','Iran (Islamic Republic of)'),(102,'IQ','Iraq'),(103,'IE','Ireland'),(104,'IL','Israel'),(105,'IT','Italy'),(106,'CI','Ivory Coast'),(107,'JE','Jersey'),(108,'JM','Jamaica'),(109,'JP','Japan'),(110,'JO','Jordan'),(111,'KZ','Kazakhstan'),(112,'KE','Kenya'),(113,'KI','Kiribati'),(114,'KP','Korea,Democratic Peoples Republic of'),(115,'KR','Korea, Republic of'),(116,'XK','Kosovo'),(117,'KW','Kuwait'),(118,'KG','Kyrgyzstan'),(119,'LA','Lao Peoples Democratic Republic'),(120,'LV','Latvia'),(121,'LB','Lebanon'),(122,'LS','Lesotho'),(123,'LR','Liberia'),(124,'LY','Libyan Arab Jamahiriya'),(125,'LI','Liechtenstein'),(126,'LT','Lithuania'),(127,'LU','Luxembourg'),(128,'MO','Macau'),(129,'MK','Macedonia'),(130,'MG','Madagascar'),(131,'MW','Malawi'),(132,'MY','Malaysia'),(133,'MV','Maldives'),(134,'ML','Mali'),(135,'MT','Malta'),(136,'MH','Marshall Islands'),(137,'MQ','Martinique'),(138,'MR','Mauritania'),(139,'MU','Mauritius'),(140,'TY','Mayotte'),(141,'MX','Mexico'),(142,'FM','Micronesia, Federated States of'),(143,'MD','Moldova, Republic of'),(144,'MC','Monaco'),(145,'MN','Mongolia'),(146,'ME','Montenegro'),(147,'MS','Montserrat'),(148,'MA','Morocco'),(149,'MZ','Mozambique'),(150,'MM','Myanmar'),(151,'NA','Namibia'),(152,'NR','Nauru'),(153,'NP','Nepal'),(154,'NL','Netherlands'),(155,'AN','Netherlands Antilles'),(156,'NC','New Caledonia'),(157,'NZ','New Zealand'),(158,'NI','Nicaragua'),(159,'NE','Niger'),(160,'NG','Nigeria'),(161,'NU','Niue'),(162,'NF','Norfolk Island'),(163,'MP','Northern Mariana Islands'),(164,'NO','Norway'),(165,'OM','Oman'),(166,'PK','Pakistan'),(167,'PW','Palau'),(168,'PS','Palestine'),(169,'PA','Panama'),(170,'PG','Papua New Guinea'),(171,'PY','Paraguay'),(172,'PE','Peru'),(173,'PH','Philippines'),(174,'PN','Pitcairn'),(175,'PL','Poland'),(176,'PT','Portugal'),(177,'PR','Puerto Rico'),(178,'QA','Qatar'),(179,'RE','Reunion'),(180,'RO','Romania'),(181,'RU','Russian Federation'),(182,'RW','Rwanda'),(183,'KN','Saint Kitts and Nevis'),(184,'LC','Saint Lucia'),(185,'VC','Saint Vincent and the Grenadines'),(186,'WS','Samoa'),(187,'SM','San Marino'),(188,'ST','Sao Tome and Principe'),(189,'SA','Saudi Arabia'),(190,'SN','Senegal'),(191,'RS','Serbia'),(192,'SC','Seychelles'),(193,'SL','Sierra Leone'),(194,'SG','Singapore'),(195,'SK','Slovakia'),(196,'SI','Slovenia'),(197,'SB','Solomon Islands'),(198,'SO','Somalia'),(199,'ZA','South Africa'),(200,'GS','South Georgia South Sandwich Islands'),(201,'SS','South Sudan'),(202,'ES','Spain'),(203,'LK','Sri Lanka'),(204,'SH','St. Helena'),(205,'PM','St. Pierre and Miquelon'),(206,'SD','Sudan'),(207,'SR','Suriname'),(208,'SJ','Svalbard and Jan Mayen Islands'),(209,'SZ','Swaziland'),(210,'SE','Sweden'),(211,'CH','Switzerland'),(212,'SY','Syrian Arab Republic'),(213,'TW','Taiwan'),(214,'TJ','Tajikistan'),(215,'TZ','Tanzania, United Republic of'),(216,'TH','Thailand'),(217,'TG','Togo'),(218,'TK','Tokelau'),(219,'TO','Tonga'),(220,'TT','Trinidad and Tobago'),(221,'TN','Tunisia'),(222,'TR','Turkey'),(223,'TM','Turkmenistan'),(224,'TC','Turks and Caicos Islands'),(225,'TV','Tuvalu'),(226,'UG','Uganda'),(227,'UA','Ukraine'),(228,'AE','United Arab Emirates'),(229,'GB','United Kingdom'),(230,'US','United States'),(231,'UM','United States minor outlying islands'),(232,'UY','Uruguay'),(233,'UZ','Uzbekistan'),(234,'VU','Vanuatu'),(235,'VA','Vatican City State'),(236,'VE','Venezuela'),(237,'VN','Vietnam'),(238,'VG','Virgin Islands (British)'),(239,'VI','Virgin Islands (U.S.)'),(240,'WF','Wallis and Futuna Islands'),(241,'EH','Western Sahara'),(242,'YE','Yemen'),(243,'ZR','Zaire'),(244,'ZM','Zambia'),(245,'ZW','Zimbabwe');
/*!40000 ALTER TABLE `sc_shop_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_currency`
--

DROP TABLE IF EXISTS `sc_shop_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_currency_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_currency`
--

LOCK TABLES `sc_shop_currency` WRITE;
/*!40000 ALTER TABLE `sc_shop_currency` DISABLE KEYS */;
INSERT INTO `sc_shop_currency` VALUES (1,'USD Dola','USD','$',1.00,0,1,',',1,0),(2,'VietNam Dong','VND','Γé½',20.00,0,0,',',1,1);
/*!40000 ALTER TABLE `sc_shop_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_custom_field`
--

DROP TABLE IF EXISTS `sc_shop_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_custom_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'product, customer',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `option` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'radio, select, input',
  `default` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"value1":"name1", "value2":"name2"}',
  PRIMARY KEY (`id`),
  KEY `sc_shop_custom_field_type_index` (`type`),
  KEY `sc_shop_custom_field_code_index` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_custom_field`
--

LOCK TABLES `sc_shop_custom_field` WRITE;
/*!40000 ALTER TABLE `sc_shop_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_custom_field_detail`
--

DROP TABLE IF EXISTS `sc_shop_custom_field_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_custom_field_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_shop_custom_field_detail_custom_field_id_index` (`custom_field_id`),
  KEY `sc_shop_custom_field_detail_rel_id_index` (`rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_custom_field_detail`
--

LOCK TABLES `sc_shop_custom_field_detail` WRITE;
/*!40000 ALTER TABLE `sc_shop_custom_field_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_custom_field_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_customer`
--

DROP TABLE IF EXISTS `sc_shop_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  KEY `sc_shop_customer_address_id_index` (`address_id`),
  KEY `sc_shop_customer_store_id_index` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_customer`
--

LOCK TABLES `sc_shop_customer` WRITE;
/*!40000 ALTER TABLE `sc_shop_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_customer_address`
--

DROP TABLE IF EXISTS `sc_shop_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_customer_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_shop_customer_address_customer_id_index` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_customer_address`
--

LOCK TABLES `sc_shop_customer_address` WRITE;
/*!40000 ALTER TABLE `sc_shop_customer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_email_template`
--

DROP TABLE IF EXISTS `sc_shop_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_email_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sc_shop_email_template_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_email_template`
--

LOCK TABLES `sc_shop_email_template` WRITE;
/*!40000 ALTER TABLE `sc_shop_email_template` DISABLE KEYS */;
INSERT INTO `sc_shop_email_template` VALUES (1,'Reset password','forgot_password','<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\r\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\r\n<tbody><tr>\r\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n      <tbody><tr>\r\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <tbody><tr>\r\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n              <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\r\n              </td>\r\n          </tr>\r\n          </tbody>\r\n      </table>\r\n      </td>\r\n      </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\r\n{{$note_sendmail}}\r\n</p>\r\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\r\n<tbody><tr>\r\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\r\n  </td>\r\n  </tr>\r\n</tbody>\r\n</table>',1,1),(2,'Customer verification','customer_verify','<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\r\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\r\n<tbody><tr>\r\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n      <tbody><tr>\r\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n          <tbody><tr>\r\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n              <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\r\n              </td>\r\n          </tr>\r\n          </tbody>\r\n      </table>\r\n      </td>\r\n      </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\r\n{{$note_sendmail}}\r\n</p>\r\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\r\n<tbody><tr>\r\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\r\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\r\n  </td>\r\n  </tr>\r\n</tbody>\r\n</table>',1,1),(3,'Welcome new customer','welcome_customer','<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\r\n<p style=\"text-align:center;\">Welcome to my site!</p>',1,1),(4,'Send form contact to admin','contact_to_admin','<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n<tr>\r\n<td>\r\n<b>Name</b>: {{$name}}<br>\r\n<b>Email</b>: {{$email}}<br>\r\n<b>Phone</b>: {{$phone}}<br>\r\n</td>\r\n</tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Content:<br>\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n<tr>\r\n<td>{{$content}}</td>\r\n</tr>\r\n</table>',1,1),(5,'New order to admin','order_success_to_admin','<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n  <tr>\r\n      <td>\r\n          <b>Order ID</b>: {{$orderID}}<br>\r\n          <b>Customer name</b>: {{$toname}}<br>\r\n          <b>Email</b>: {{$email}}<br>\r\n          <b>Address</b>: {{$address}}<br>\r\n          <b>Phone</b>: {{$phone}}<br>\r\n          <b>Order note</b>: {{$comment}}\r\n      </td>\r\n  </tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Order detail:<br>\r\n===================================<br></p>\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n  {{$orderDetail}}\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n      <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n      <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n      <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n  </tr>\r\n  <tr>\r\n      <td colspan=\"2\"></td>\r\n      <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n      <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n  </tr>\r\n</table>',1,1),(6,'New order to customr','order_success_to_customer','<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n<tr>\r\n  <td>\r\n      <b>Order ID</b>: {{$orderID}}<br>\r\n      <b>Customer name</b>: {{$toname}}<br>\r\n      <b>Address</b>: {{$address}}<br>\r\n      <b>Phone</b>: {{$phone}}<br>\r\n      <b>Order note</b>: {{$comment}}\r\n  </td>\r\n</tr>\r\n</table>\r\n<hr>\r\n<p style=\"text-align: center;\">Order detail:<br>\r\n===================================<br></p>\r\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\r\n{{$orderDetail}}\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\r\n  <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\r\n  <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\r\n  <td colspan=\"2\" align=\"right\">{{$discount}}</td>\r\n</tr>\r\n<tr>\r\n  <td colspan=\"2\"></td>\r\n  <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\r\n  <td colspan=\"2\" align=\"right\">{{$total}}</td>\r\n</tr>\r\n</table>',1,1);
/*!40000 ALTER TABLE `sc_shop_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_language`
--

DROP TABLE IF EXISTS `sc_shop_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_language_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_language`
--

LOCK TABLES `sc_shop_language` WRITE;
/*!40000 ALTER TABLE `sc_shop_language` DISABLE KEYS */;
INSERT INTO `sc_shop_language` VALUES (1,'English','en','/data/language/flag_uk.png',1,0,1),(2,'Tiß║┐ng Viß╗çt','vi','/data/language/flag_vn.png',1,0,1);
/*!40000 ALTER TABLE `sc_shop_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_layout_page`
--

DROP TABLE IF EXISTS `sc_shop_layout_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_layout_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_layout_page_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_layout_page`
--

LOCK TABLES `sc_shop_layout_page` WRITE;
/*!40000 ALTER TABLE `sc_shop_layout_page` DISABLE KEYS */;
INSERT INTO `sc_shop_layout_page` VALUES (1,'home','admin.layout_page_position.home'),(2,'shop_home','admin.layout_page_position.shop_home'),(3,'shop_product_list','admin.layout_page_position.product_list'),(4,'product_detail','admin.layout_page_position.product_detail'),(5,'shop_cart','admin.layout_page_position.shop_cart'),(6,'shop_item_list','admin.layout_page_position.item_list'),(7,'shop_item_detail','admin.layout_page_position.item_detail'),(8,'shop_news','admin.layout_page_position.news_list'),(9,'shop_news_detail','admin.layout_page_position.news_detail'),(10,'shop_auth','admin.layout_page_position.shop_auth'),(11,'shop_profile','admin.layout_page_position.shop_profile'),(12,'shop_page','admin.layout_page_position.shop_page'),(13,'shop_contact','admin.layout_page_position.shop_contact'),(14,'content_list','admin.layout_page_position.content_list'),(15,'content_detail','admin.layout_page_position.content_detail'),(16,'store_home','admin.layout_page_position.store_home'),(17,'store_product_list','admin.layout_page_position.store_product_list');
/*!40000 ALTER TABLE `sc_shop_layout_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_layout_position`
--

DROP TABLE IF EXISTS `sc_shop_layout_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_layout_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_layout_position_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_layout_position`
--

LOCK TABLES `sc_shop_layout_position` WRITE;
/*!40000 ALTER TABLE `sc_shop_layout_position` DISABLE KEYS */;
INSERT INTO `sc_shop_layout_position` VALUES (1,'header','admin.layout_page_block.header'),(2,'top','admin.layout_page_block.top'),(3,'bottom','admin.layout_page_block.bottom'),(4,'left','admin.layout_page_block.left'),(5,'right','admin.layout_page_block.right'),(6,'banner_top','admin.layout_page_block.banner_top');
/*!40000 ALTER TABLE `sc_shop_layout_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_length`
--

DROP TABLE IF EXISTS `sc_shop_length`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_length` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_length_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_length`
--

LOCK TABLES `sc_shop_length` WRITE;
/*!40000 ALTER TABLE `sc_shop_length` DISABLE KEYS */;
INSERT INTO `sc_shop_length` VALUES (1,'mm','Millimeter'),(2,'cm','Centimeter'),(3,'m','Meter'),(4,'in','Inch');
/*!40000 ALTER TABLE `sc_shop_length` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_link`
--

DROP TABLE IF EXISTS `sc_shop_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `sc_shop_link_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_link`
--

LOCK TABLES `sc_shop_link` WRITE;
/*!40000 ALTER TABLE `sc_shop_link` DISABLE KEYS */;
INSERT INTO `sc_shop_link` VALUES (1,'front.contact','route::contact','_self','menu','',1,3,1),(2,'front.about','route::page.detail::about','_self','menu','',1,4,1),(3,'front.my_profile','route::login','_self','footer','',1,5,1),(4,'front.compare_page','route::compare','_self','footer','',1,4,1),(5,'front.wishlist_page','route::wishlist','_self','footer','',1,3,1);
/*!40000 ALTER TABLE `sc_shop_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_news`
--

DROP TABLE IF EXISTS `sc_shop_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_shop_news_alias_index` (`alias`),
  KEY `sc_shop_news_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_news`
--

LOCK TABLES `sc_shop_news` WRITE;
/*!40000 ALTER TABLE `sc_shop_news` DISABLE KEYS */;
INSERT INTO `sc_shop_news` VALUES (1,'/data/content/blog-1.jpg','demo-alias-blog-1',0,1,1,'2021-05-09 23:16:42',NULL),(2,'/data/content/blog-2.jpg','demo-alias-blog-2',0,1,1,'2021-05-09 23:16:42',NULL),(3,'/data/content/blog-3.jpg','demo-alias-blog-3',0,1,1,'2021-05-09 23:16:42',NULL),(4,'/data/content/blog-4.jpg','demo-alias-blog-4',0,1,1,'2021-05-09 23:16:42',NULL),(5,'/data/content/blog-5.jpg','demo-alias-blog-5',0,1,1,'2021-05-09 23:16:42',NULL),(6,'/data/content/blog-6.jpg','demo-alias-blog-6',0,1,1,'2021-05-09 23:16:42',NULL);
/*!40000 ALTER TABLE `sc_shop_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_news_description`
--

DROP TABLE IF EXISTS `sc_shop_news_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_news_description` (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `sc_shop_news_description_news_id_lang_unique` (`news_id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_news_description`
--

LOCK TABLES `sc_shop_news_description` WRITE;
/*!40000 ALTER TABLE `sc_shop_news_description` DISABLE KEYS */;
INSERT INTO `sc_shop_news_description` VALUES (1,'en','Easy Polo Black Edition 1','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(1,'vi','Easy Polo Black Edition 1','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(2,'en','Easy Polo Black Edition 2','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(2,'vi','Easy Polo Black Edition 2','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(3,'en','Easy Polo Black Edition 3','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(3,'vi','Easy Polo Black Edition 3','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(4,'en','Easy Polo Black Edition 4','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(4,'vi','Easy Polo Black Edition 4','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(5,'en','Easy Polo Black Edition 5','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(5,'vi','Easy Polo Black Edition 5','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(6,'en','Easy Polo Black Edition 6','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(6,'vi','Easy Polo Black Edition 6','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
/*!40000 ALTER TABLE `sc_shop_news_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_order`
--

DROP TABLE IF EXISTS `sc_shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT 0,
  `shipping` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_shop_order_customer_id_index` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_order`
--

LOCK TABLES `sc_shop_order` WRITE;
/*!40000 ALTER TABLE `sc_shop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_order_detail`
--

DROP TABLE IF EXISTS `sc_shop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_order_detail`
--

LOCK TABLES `sc_shop_order_detail` WRITE;
/*!40000 ALTER TABLE `sc_shop_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_order_history`
--

DROP TABLE IF EXISTS `sc_shop_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_order_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_order_history`
--

LOCK TABLES `sc_shop_order_history` WRITE;
/*!40000 ALTER TABLE `sc_shop_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_order_status`
--

DROP TABLE IF EXISTS `sc_shop_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_order_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_order_status`
--

LOCK TABLES `sc_shop_order_status` WRITE;
/*!40000 ALTER TABLE `sc_shop_order_status` DISABLE KEYS */;
INSERT INTO `sc_shop_order_status` VALUES (1,'New'),(2,'Processing'),(3,'Hold'),(4,'Canceled'),(5,'Done'),(6,'Failed');
/*!40000 ALTER TABLE `sc_shop_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_order_total`
--

DROP TABLE IF EXISTS `sc_shop_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_order_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_order_total`
--

LOCK TABLES `sc_shop_order_total` WRITE;
/*!40000 ALTER TABLE `sc_shop_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_page`
--

DROP TABLE IF EXISTS `sc_shop_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `sc_shop_page_alias_index` (`alias`),
  KEY `sc_shop_page_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_page`
--

LOCK TABLES `sc_shop_page` WRITE;
/*!40000 ALTER TABLE `sc_shop_page` DISABLE KEYS */;
INSERT INTO `sc_shop_page` VALUES (1,'','about',1,1);
/*!40000 ALTER TABLE `sc_shop_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_page_description`
--

DROP TABLE IF EXISTS `sc_shop_page_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `sc_shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  KEY `sc_shop_page_description_lang_index` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_page_description`
--

LOCK TABLES `sc_shop_page_description` WRITE;
/*!40000 ALTER TABLE `sc_shop_page_description` DISABLE KEYS */;
INSERT INTO `sc_shop_page_description` VALUES (1,'en','About','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(1,'vi','Giß╗¢i thiß╗çu','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
/*!40000 ALTER TABLE `sc_shop_page_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_password_resets`
--

DROP TABLE IF EXISTS `sc_shop_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  KEY `sc_shop_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_password_resets`
--

LOCK TABLES `sc_shop_password_resets` WRITE;
/*!40000 ALTER TABLE `sc_shop_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_payment_status`
--

DROP TABLE IF EXISTS `sc_shop_payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_payment_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_payment_status`
--

LOCK TABLES `sc_shop_payment_status` WRITE;
/*!40000 ALTER TABLE `sc_shop_payment_status` DISABLE KEYS */;
INSERT INTO `sc_shop_payment_status` VALUES (1,'Unpaid'),(2,'Partial payment'),(3,'Paid'),(4,'Refurn');
/*!40000 ALTER TABLE `sc_shop_payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product`
--

DROP TABLE IF EXISTS `sc_shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `supplier_id` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_store_id` int(11) DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_shop_product_sku_index` (`sku`),
  KEY `sc_shop_product_brand_id_index` (`brand_id`),
  KEY `sc_shop_product_supplier_id_index` (`supplier_id`),
  KEY `sc_shop_product_kind_index` (`kind`),
  KEY `sc_shop_product_property_index` (`property`),
  KEY `sc_shop_product_tax_id_index` (`tax_id`),
  KEY `sc_shop_product_status_index` (`status`),
  KEY `sc_shop_product_alias_index` (`alias`),
  KEY `sc_shop_product_category_store_id_index` (`category_store_id`),
  KEY `sc_shop_product_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product`
--

LOCK TABLES `sc_shop_product` WRITE;
/*!40000 ALTER TABLE `sc_shop_product` DISABLE KEYS */;
INSERT INTO `sc_shop_product` VALUES (1,'ABCZZ',NULL,NULL,NULL,NULL,NULL,'/data/product/product-1.png',1,1,15000,10000,99,1,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-1',1,1,NULL,NULL,NULL,NULL),(2,'LEDFAN1',NULL,NULL,NULL,NULL,NULL,'/data/product/product-2.png',1,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-2',1,1,NULL,NULL,NULL,NULL),(3,'CLOCKFAN1',NULL,NULL,NULL,NULL,NULL,'/data/product/product-3.png',2,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-3',1,1,NULL,NULL,NULL,NULL),(4,'CLOCKFAN2',NULL,NULL,NULL,NULL,NULL,'/data/product/product-4.png',3,1,15000,10000,100,0,10,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-4',1,1,NULL,NULL,NULL,NULL),(5,'CLOCKFAN3',NULL,NULL,NULL,NULL,NULL,'/data/product/product-5.png',1,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-5',1,1,NULL,NULL,NULL,NULL),(6,'TMC2208',NULL,NULL,NULL,NULL,NULL,'/data/product/product-6.png',1,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-6',1,1,NULL,NULL,NULL,NULL),(7,'FILAMENT',NULL,NULL,NULL,NULL,NULL,'/data/product/product-7.png',2,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-7',1,1,NULL,NULL,NULL,NULL),(8,'A4988',NULL,NULL,NULL,NULL,NULL,'/data/product/product-8.png',2,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-8',1,1,NULL,NULL,NULL,NULL),(9,'ANYCUBIC-P',NULL,NULL,NULL,NULL,NULL,'/data/product/product-9.png',2,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-9',1,1,NULL,NULL,NULL,NULL),(10,'3DHLFD-P',NULL,NULL,NULL,NULL,NULL,'/data/product/product-10.png',4,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-10',1,1,NULL,NULL,NULL,NULL),(11,'SS495A',NULL,NULL,NULL,NULL,NULL,'/data/product/product-11.png',2,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-11',1,1,NULL,NULL,NULL,NULL),(12,'3D-CARBON175',NULL,NULL,NULL,NULL,NULL,'/data/product/product-12.png',2,1,15000,10000,100,0,5,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-12',1,1,NULL,NULL,NULL,NULL),(13,'3D-GOLD175',NULL,NULL,NULL,NULL,NULL,'/data/product/product-13.png',3,1,10000,5000,0,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-13',1,1,NULL,NULL,NULL,NULL),(14,'LCD12864-3D',NULL,NULL,NULL,NULL,NULL,'/data/product/product-14.png',3,1,15000,10000,100,0,0,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-14',1,1,NULL,NULL,NULL,NULL),(15,'LCD2004-3D',NULL,NULL,NULL,NULL,NULL,'/data/product/product-15.png',3,1,15000,10000,100,0,10,NULL,0,NULL,0,0,0,1,'physical','auto',1,0,0,'demo-alias-name-product-15',1,1,NULL,NULL,NULL,NULL),(16,'RAMPS15-3D',NULL,NULL,NULL,NULL,NULL,'/data/product/product-16.png',2,1,0,0,0,0,0,NULL,0,NULL,0,0,0,2,'physical','auto',1,0,0,'demo-alias-name-product-16',1,1,NULL,NULL,NULL,NULL),(17,'ALOKK1-AY',NULL,NULL,NULL,NULL,NULL,'/data/product/product-10.png',3,1,15000,10000,100,0,5,NULL,0,NULL,0,0,0,0,'physical','auto',1,0,0,'demo-alias-name-product-17',1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sc_shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_attribute`
--

DROP TABLE IF EXISTS `sc_shop_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `sc_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_attribute`
--

LOCK TABLES `sc_shop_product_attribute` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_attribute` DISABLE KEYS */;
INSERT INTO `sc_shop_product_attribute` VALUES (1,'Blue',1,17,50,0,1),(2,'White',1,17,0,0,1),(3,'S',2,17,20,0,1),(4,'XL',2,17,30,0,1),(5,'Blue',1,10,150,0,1),(6,'Red',1,10,0,0,1),(7,'S',2,10,0,0,1),(8,'M',2,10,0,0,1);
/*!40000 ALTER TABLE `sc_shop_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_build`
--

DROP TABLE IF EXISTS `sc_shop_product_build`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`build_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_build`
--

LOCK TABLES `sc_shop_product_build` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_build` DISABLE KEYS */;
INSERT INTO `sc_shop_product_build` VALUES (15,6,1),(15,7,2);
/*!40000 ALTER TABLE `sc_shop_product_build` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_category`
--

DROP TABLE IF EXISTS `sc_shop_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_category`
--

LOCK TABLES `sc_shop_product_category` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_category` DISABLE KEYS */;
INSERT INTO `sc_shop_product_category` VALUES (1,6),(1,10),(1,13),(2,13),(3,11),(4,11),(5,11),(6,11),(7,12),(8,10),(9,6),(10,11),(11,10),(12,9),(13,5),(14,11),(15,6),(16,9),(17,9);
/*!40000 ALTER TABLE `sc_shop_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_description`
--

DROP TABLE IF EXISTS `sc_shop_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `sc_shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  KEY `sc_shop_product_description_lang_index` (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_description`
--

LOCK TABLES `sc_shop_product_description` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_description` DISABLE KEYS */;
INSERT INTO `sc_shop_product_description` VALUES (1,'en','Easy Polo Black Edition 1','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(1,'vi','Easy Polo Black Edition 1','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(2,'en','Easy Polo Black Edition 2','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(2,'vi','Easy Polo Black Edition 2','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(3,'en','Easy Polo Black Edition 3','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(3,'vi','Easy Polo Black Edition 3','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(4,'en','Easy Polo Black Edition 4','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(4,'vi','Easy Polo Black Edition 4','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(5,'en','Easy Polo Black Edition 5','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(5,'vi','Easy Polo Black Edition 5','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(6,'en','Easy Polo Black Edition 6','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(6,'vi','Easy Polo Black Edition 6','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(7,'en','Easy Polo Black Edition 7','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(7,'vi','Easy Polo Black Edition 7','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(8,'en','Easy Polo Black Edition 8','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(8,'vi','Easy Polo Black Edition 8','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(9,'en','Easy Polo Black Edition 9','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(9,'vi','Easy Polo Black Edition 9','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(10,'en','Easy Polo Black Edition 10','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(10,'vi','Easy Polo Black Edition 10','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(11,'en','Easy Polo Black Edition 11','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(11,'vi','Easy Polo Black Edition 11','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(12,'en','Easy Polo Black Edition 12','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(12,'vi','Easy Polo Black Edition 12','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(13,'en','Easy Polo Black Edition 13','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(13,'vi','Easy Polo Black Edition 13','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(14,'en','Easy Polo Black Edition 14','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(14,'vi','Easy Polo Black Edition 14','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(15,'en','Easy Polo Black Edition 15','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(15,'vi','Easy Polo Black Edition 15','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(16,'en','Easy Polo Black Edition 16','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(16,'vi','Easy Polo Black Edition 16','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(17,'en','Easy Polo Black Edition 17','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),(17,'vi','Easy Polo Black Edition 17','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
/*!40000 ALTER TABLE `sc_shop_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_download`
--

DROP TABLE IF EXISTS `sc_shop_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_download`
--

LOCK TABLES `sc_shop_product_download` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_group`
--

DROP TABLE IF EXISTS `sc_shop_product_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_group`
--

LOCK TABLES `sc_shop_product_group` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_group` DISABLE KEYS */;
INSERT INTO `sc_shop_product_group` VALUES (16,1),(16,2);
/*!40000 ALTER TABLE `sc_shop_product_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_image`
--

DROP TABLE IF EXISTS `sc_shop_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sc_shop_product_image_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_image`
--

LOCK TABLES `sc_shop_product_image` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_image` DISABLE KEYS */;
INSERT INTO `sc_shop_product_image` VALUES (1,'/data/product/product-2.png',1),(2,'/data/product/product-11.png',1),(3,'/data/product/product-8.png',11),(4,'/data/product/product-6.png',2),(5,'/data/product/product-13.png',11),(6,'/data/product/product-12.png',5),(7,'/data/product/product-6.png',5),(8,'/data/product/product-1.png',2),(9,'/data/product/product-15.png',2),(10,'/data/product/product-5.png',9),(11,'/data/product/product-8.png',8),(12,'/data/product/product-2.png',7),(13,'/data/product/product-6.png',7),(14,'/data/product/product-11.png',5),(15,'/data/product/product-13.png',4),(16,'/data/product/product-13.png',15),(17,'/data/product/product-6.png',15),(18,'/data/product/product-12.png',17),(19,'/data/product/product-6.png',17),(20,'/data/product/product-2.png',17);
/*!40000 ALTER TABLE `sc_shop_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_promotion`
--

DROP TABLE IF EXISTS `sc_shop_product_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_promotion`
--

LOCK TABLES `sc_shop_product_promotion` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_promotion` DISABLE KEYS */;
INSERT INTO `sc_shop_product_promotion` VALUES (1,5000,NULL,NULL,1,NULL,NULL),(2,3000,NULL,NULL,1,NULL,NULL),(11,600,NULL,NULL,1,NULL,NULL),(13,4000,NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `sc_shop_product_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_product_property`
--

DROP TABLE IF EXISTS `sc_shop_product_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_product_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_product_property_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_product_property`
--

LOCK TABLES `sc_shop_product_property` WRITE;
/*!40000 ALTER TABLE `sc_shop_product_property` DISABLE KEYS */;
INSERT INTO `sc_shop_product_property` VALUES (1,'physical','Product physical'),(2,'download','Product download');
/*!40000 ALTER TABLE `sc_shop_product_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_sessions`
--

DROP TABLE IF EXISTS `sc_shop_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sc_shop_sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_sessions`
--

LOCK TABLES `sc_shop_sessions` WRITE;
/*!40000 ALTER TABLE `sc_shop_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_shipping_standard`
--

DROP TABLE IF EXISTS `sc_shop_shipping_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_shipping_standard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_shipping_standard`
--

LOCK TABLES `sc_shop_shipping_standard` WRITE;
/*!40000 ALTER TABLE `sc_shop_shipping_standard` DISABLE KEYS */;
INSERT INTO `sc_shop_shipping_standard` VALUES (1,20,10000);
/*!40000 ALTER TABLE `sc_shop_shipping_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_shipping_status`
--

DROP TABLE IF EXISTS `sc_shop_shipping_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_shipping_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_shipping_status`
--

LOCK TABLES `sc_shop_shipping_status` WRITE;
/*!40000 ALTER TABLE `sc_shop_shipping_status` DISABLE KEYS */;
INSERT INTO `sc_shop_shipping_status` VALUES (1,'Not sent'),(2,'Sending'),(3,'Shipping done');
/*!40000 ALTER TABLE `sc_shop_shipping_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_shoppingcart`
--

DROP TABLE IF EXISTS `sc_shop_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  KEY `sc_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  KEY `sc_shop_shoppingcart_store_id_index` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_shoppingcart`
--

LOCK TABLES `sc_shop_shoppingcart` WRITE;
/*!40000 ALTER TABLE `sc_shop_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_store_block`
--

DROP TABLE IF EXISTS `sc_shop_store_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_store_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `sc_shop_store_block_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_store_block`
--

LOCK TABLES `sc_shop_store_block` WRITE;
/*!40000 ALTER TABLE `sc_shop_store_block` DISABLE KEYS */;
INSERT INTO `sc_shop_store_block` VALUES (1,'Facebook code','top','*','html','\r\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\nvar js, fjs = d.getElementsByTagName(s)[0];\r\nif (d.getElementById(id)) return;\r\njs = d.createElement(s); js.id = id;\r\njs.src = \"//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\";\r\nfjs.parentNode.insertBefore(js, fjs);\r\n}(document, \"script\", \"facebook-jssdk\"));\r\n</script>',1,0,1),(2,'Google Analytics','header','*','html','\r\n<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\r\n<script>\r\nwindow.dataLayer = window.dataLayer || [];\r\nfunction gtag(){dataLayer.push(arguments);}\r\ngtag(\"js\", new Date());\r\ngtag(\"config\", \"UA-128658138-1\");\r\n</script>',1,0,1),(3,'Product special','left','*','view','product_special',1,1,1),(4,'Brands','left','*','view','brands_left',1,3,1),(5,'Banner home','banner_top','home','view','banner_image',1,0,1),(6,'Categories','left','home,shop_home','view','categories',1,4,1),(7,'Product last view','left','*','view','product_lastview',1,0,1),(8,'Products new','bottom','home','view','product_new',1,9,1),(9,'Top news','bottom','home','view','top_news',1,999,1);
/*!40000 ALTER TABLE `sc_shop_store_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_store_css`
--

DROP TABLE IF EXISTS `sc_shop_store_css`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_store_css` (
  `css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  UNIQUE KEY `sc_shop_store_css_store_id_unique` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_store_css`
--

LOCK TABLES `sc_shop_store_css` WRITE;
/*!40000 ALTER TABLE `sc_shop_store_css` DISABLE KEYS */;
INSERT INTO `sc_shop_store_css` VALUES ('\r\n.sc-overlay {\r\n  position: fixed;\r\n  top: 50%;\r\n  left: 50%;\r\n  transform: translate(-50%, -50%);\r\n  transform: -webkit-translate(-50%, -50%);\r\n  transform: -moz-translate(-50%, -50%);\r\n  transform: -ms-translate(-50%, -50%);\r\n  color:#1f222b;\r\n  z-index: 9999;\r\n  background: rgba(255,255,255,0.7);\r\n}\r\n  \r\n#sc-loading{\r\n  display: none;\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 100%;\r\n  z-index: 50;\r\n  background: rgba(255,255,255,0.7);\r\n}\r\n/*end loading */\r\n  \r\n/*price*/\r\n.sc-new-price{\r\n  color:#FE980F;\r\n  font-size: 14px;\r\n  padding: 10px 5px;\r\n  font-weight:bold;\r\n  }\r\n  .sc-old-price {\r\n  text-decoration: line-through;\r\n  color: #a95d5d;\r\n  font-size: 13px;\r\n  padding: 10px;\r\n  }\r\n  /*end price*/\r\n.sc-product-build{\r\n  font-size: 20px;\r\n  font-weight: bold;\r\n}\r\n.sc-product-build img{\r\n  width: 50px;\r\n}\r\n.sc-product-group  img{\r\n  width: 100px;\r\n  cursor: pointer;\r\n  }\r\n.sc-product-group:hover{\r\n  box-shadow: 0px 0px 2px #999;\r\n}\r\n.sc-product-group:active{\r\n  box-shadow: 0px 0px 2px #ff00ff;\r\n}\r\n.sc-product-group.active{\r\n  box-shadow: 0px 0px 2px #ff00ff;\r\n}\r\n\r\n.sc-shipping-address td{\r\n  padding: 3px !important;\r\n}\r\n.sc-shipping-address textarea,\r\n.sc-shipping-address input[type=\"text\"],\r\n.sc-shipping-address option{\r\n  width: 100%;\r\n  padding: 7px !important;\r\n}\r\n.row_cart>td{\r\n  vertical-align: middle !important;\r\n}\r\ninput[type=\"number\"]{\r\n  text-align: center;\r\n  padding:2px;\r\n}\r\n.sc-notice{\r\n  clear: both;\r\n  clear: both;\r\n  font-size: 20px;\r\n  background: #f3f3f3;\r\n  width: 100%;\r\n}\r\nimg.new {\r\n  position: absolute;\r\n  right: 0px;\r\n  top: 0px;\r\n  padding: 0px !important;\r\n}\r\n.pointer {\r\n  cursor: pointer;\r\n}\r\n.add-to-cart-list {\r\n  padding: 5px 10px !important;\r\n  margin: 2px !important;\r\n  letter-spacing: 0px !important;\r\n  font-size: 12px !important;\r\n  border-radius: 5px;\r\n}\r\n.help-block {\r\n  font-size: 12px;\r\n  color: red;\r\n  font-style: italic;\r\n}',1);
/*!40000 ALTER TABLE `sc_shop_store_css` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_subscribe`
--

DROP TABLE IF EXISTS `sc_shop_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_shop_subscribe_email_index` (`email`),
  KEY `sc_shop_subscribe_store_id_index` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_subscribe`
--

LOCK TABLES `sc_shop_subscribe` WRITE;
/*!40000 ALTER TABLE `sc_shop_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_shop_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_supplier`
--

DROP TABLE IF EXISTS `sc_shop_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_supplier` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sc_shop_supplier_alias_index` (`alias`),
  KEY `sc_shop_supplier_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_supplier`
--

LOCK TABLES `sc_shop_supplier` WRITE;
/*!40000 ALTER TABLE `sc_shop_supplier` DISABLE KEYS */;
INSERT INTO `sc_shop_supplier` VALUES (1,'ABC distributor','abc-distributor','abc@abc.com','012496657567','/data/supplier/supplier.png','','',1,1,0),(2,'XYZ distributor','xyz-distributor','xyz@xyz.com','012496657567','/data/supplier/supplier.png','','',1,1,0);
/*!40000 ALTER TABLE `sc_shop_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_tax`
--

DROP TABLE IF EXISTS `sc_shop_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_tax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_tax`
--

LOCK TABLES `sc_shop_tax` WRITE;
/*!40000 ALTER TABLE `sc_shop_tax` DISABLE KEYS */;
INSERT INTO `sc_shop_tax` VALUES (1,'Tax default (10%)',10);
/*!40000 ALTER TABLE `sc_shop_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_shop_weight`
--

DROP TABLE IF EXISTS `sc_shop_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_shop_weight` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sc_shop_weight_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_shop_weight`
--

LOCK TABLES `sc_shop_weight` WRITE;
/*!40000 ALTER TABLE `sc_shop_weight` DISABLE KEYS */;
INSERT INTO `sc_shop_weight` VALUES (1,'g','Gram'),(2,'kg','Kilogram'),(3,'lb','Pound '),(4,'oz','Ounce ');
/*!40000 ALTER TABLE `sc_shop_weight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-10  6:17:38
