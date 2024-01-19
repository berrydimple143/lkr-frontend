-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: lion_king_realty
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Arakan 1',1,'2024-01-08 17:31:56','2024-01-08 17:56:39'),(3,'Arakan 2',1,'2024-01-08 18:15:31','2024-01-08 18:15:31');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phase` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lot` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barangay` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipality` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_bought` timestamp NULL DEFAULT NULL,
  `region` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `area_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `measure` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_user_id_foreign` (`user_id`),
  CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,NULL,'09093949283',NULL,NULL,'3','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-01-01 08:00:00',NULL,2,1,'2024-01-18 09:00:30','2024-01-18 17:10:03','Lubogan, Toril, Davao City',120000.00,'110');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'2024_01_08_165009_create_contacts_table',2),(13,'2024_01_09_004431_create_areas_table',3),(14,'2024_01_16_011957_create_payments_table',4),(15,'2024_01_16_140622_add_received_to_payments_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `oauth_access_tokens` VALUES ('0e5a079ea57f1518f7eeb8b0a20528fc76780f155beb39c8bb519612688e44264f576cb3629fad3c',2,1,'AuthToken','[]',0,'2024-01-09 17:09:48','2024-01-09 17:09:48','2025-01-10 01:09:48'),('11379aeb58271f4f64b58f117d7e843c1e777a7bbd31c611a2245fc1546a33aa5f7ab15df10629f3',2,1,'AuthToken','[]',0,'2024-01-12 21:48:18','2024-01-12 21:48:18','2025-01-13 05:48:18'),('2b9ffaee56779af6419c9853b679b901248c6b5ed42589d0add11bfe05faece0c2e62abad376c443',2,1,'AuthToken','[]',0,'2024-01-14 15:10:32','2024-01-14 15:10:32','2025-01-14 23:10:32'),('34347b4d8646f975f5ad294c4a34f0e16fc99b6623d8b0d55aecbed3e401316679187c94eb03dff7',1,1,'AuthToken','[]',0,'2024-01-08 05:26:54','2024-01-08 05:26:54','2025-01-08 13:26:54'),('38f7349e2393ae6306f7e807e328ccea5d22aa2b250a6c92a96cfddacb676658e6400869c4d0367f',2,1,'AuthToken','[]',0,'2024-01-16 04:56:20','2024-01-16 04:56:20','2025-01-16 12:56:20'),('3e7219b449ce96cf97b41b604a370d2433a61aafcfab0373bfa4309b1a228a5075836d6b1bf26e6f',1,1,'AuthToken','[]',0,'2024-01-08 08:05:14','2024-01-08 08:05:14','2025-01-08 16:05:14'),('599546b07607053b5ed4b1e14a9ee7690f50fd1935a7782bec3fd965dfbc07ebc6a4cf1df31d7d2c',1,1,'AuthToken','[]',0,'2024-01-08 00:46:58','2024-01-08 00:46:58','2025-01-08 08:46:58'),('5aa6b1c84f06a7016962d726e8ec4de9d91f124c2faacc61a079d19e19539f433b3c10254a9eacc6',2,1,'AuthToken','[]',0,'2024-01-08 17:19:51','2024-01-08 17:19:51','2025-01-09 01:19:51'),('66d82414ae3b47985cfe58b1bc0cdc2ef354fcd31038dbde08f3cab889e0c516ca159f03ab4eecfb',2,1,'AuthToken','[]',0,'2024-01-12 19:57:56','2024-01-12 19:57:56','2025-01-13 03:57:56'),('676ade103eb79edc1f9f737d29e068b33753a6504e104bc94856eab33b7ed182d8986b2950c34cb5',2,1,'AuthToken','[]',0,'2024-01-16 04:56:15','2024-01-16 04:56:15','2025-01-16 12:56:15'),('70e9f8a0f96fa21ebf3e3935db6ff0fbd13d5265fadde7e16f31c345b9e616f1d5f7cdfd3f3f12e0',1,1,'AuthToken','[]',0,'2024-01-18 08:59:14','2024-01-18 08:59:14','2025-01-18 16:59:14'),('74c176de44005aca8b89e5bf4e7c55f7f30253618ef02dd79214d3a3fdc3baaf71dd3ad270bd3e29',2,1,'AuthToken','[]',0,'2024-01-09 16:53:45','2024-01-09 16:53:45','2025-01-10 00:53:45'),('820fd4a50691d049eff1d484f3dfdf80af09cf91915a89809491c9d6d85a2b395d72016cec9d690f',2,1,'AuthToken','[]',0,'2024-01-11 17:47:34','2024-01-11 17:47:34','2025-01-12 01:47:34'),('8476894d9bd3e1f3e0229d13880a4b7585f56d9a69c3488385c0c4b137ebe9b68ed50521786105e8',2,1,'AuthToken','[]',0,'2024-01-14 15:10:26','2024-01-14 15:10:26','2025-01-14 23:10:26'),('888a34dcbadbeb7394b10ff00e59ddb41313c71467e23843f584460fce1ed85fd4b0564de1b497ef',1,1,'AuthToken','[]',0,'2024-01-07 23:40:47','2024-01-07 23:40:47','2025-01-08 07:40:47'),('8a34bec8c22df4fec42d913f7f630a42f6e880b61f15876d96e0053bcddee025fab22b751a0605c0',2,1,'AuthToken','[]',0,'2024-01-08 08:26:59','2024-01-08 08:26:59','2025-01-08 16:26:59'),('9e29e0d56d9d874c5862ef0a5b492235fc03cf2fe9fa51059d4468266481f473831dee28f6bae9a8',2,1,'AuthToken','[]',0,'2024-01-12 21:42:55','2024-01-12 21:42:55','2025-01-13 05:42:55'),('a88b354e224d3f281c166182d506ddb719d418b377297356eefbcca41f5997b15145cb6672587867',1,1,'AuthToken','[]',0,'2024-01-08 07:51:04','2024-01-08 07:51:04','2025-01-08 15:51:04'),('b83acf7bdd2b76e6b0003509a1bcb88a1edff9d45a4d26cf3eba1633603d11da9205d58d67c751bc',2,1,'AuthToken','[]',0,'2024-01-10 15:31:37','2024-01-10 15:31:37','2025-01-10 23:31:37'),('c26804150ec679e38185b61faea21aeea55ef4007deb3d6a42f49f1539166d2cd11a9cd17965d266',2,1,'AuthToken','[]',0,'2024-01-09 16:53:46','2024-01-09 16:53:46','2025-01-10 00:53:46'),('c7eb0810ab567428466c644327242244852a797a19424fe5078689c1f848d07cc08f7888fa16b356',2,1,'AuthToken','[]',0,'2024-01-09 17:05:46','2024-01-09 17:05:46','2025-01-10 01:05:46'),('c895c32cfe5d339d6b5ff0dd1cb572d3cf8e9ef209cae6800e71d09533ed058957db80566d999167',2,1,'AuthToken','[]',0,'2024-01-12 21:20:50','2024-01-12 21:20:50','2025-01-13 05:20:50'),('c9e73b8ec60888f263431dc0f355c390257ac6ae4d20ef9f9746806710e4509356aa4fa97047dda3',2,1,'AuthToken','[]',0,'2024-01-08 18:23:06','2024-01-08 18:23:06','2025-01-09 02:23:06'),('cd5be84dece33a98e42dd915c5572690454e245f84ce37c434f6edc92d61ad09c4bb45eee1fbf784',2,1,'AuthToken','[]',0,'2024-01-08 08:27:14','2024-01-08 08:27:14','2025-01-08 16:27:14'),('ed003c0b6582309402c40dc145ec7197b4fc58654ddc2613310c63c7137d62f3e1cc5efc0a74dd88',1,1,'AuthToken','[]',0,'2024-01-08 00:46:12','2024-01-08 00:46:12','2025-01-08 08:46:12'),('ef8cb69882cf76297aa77cb2725855076ec2ea2dd9dfed5ad024e7a907ba98640a145586813501a1',1,1,'AuthToken','[]',0,'2024-01-18 08:59:25','2024-01-18 08:59:25','2025-01-18 16:59:25'),('f97d3463df486a6cee46ae15472354a6a797e368695f7d4747bcaf30c488d09680e4922b43fd3ac2',1,1,'AuthToken','[]',0,'2024-01-18 15:49:42','2024-01-18 15:49:42','2025-01-18 23:49:42'),('fde5230853b59feb5f069b301bb5d033715978313862669d7c8dd2a6fdefda2262dd40d0669493fd',1,1,'AuthToken','[]',0,'2024-01-08 00:50:10','2024-01-08 00:50:10','2025-01-08 08:50:10');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
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
INSERT INTO `oauth_clients` VALUES (1,NULL,'Crew Management System Personal Access Client','OKXOUrrdXKTuREjIeANcjKa2DCLP4ssyK5V14gZy',NULL,'http://localhost',1,0,0,'2024-01-07 18:55:42','2024-01-07 18:55:42'),(2,NULL,'Crew Management System Password Grant Client','1QeID5otzFJZA2B4D2nzgS4xYX4jEUUSiPKNTfu3','users','http://localhost',0,1,0,'2024-01-07 18:55:42','2024-01-07 18:55:42');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
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
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2024-01-07 18:55:42','2024-01-07 18:55:42');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL,
  `date_paid` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `received_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `payments_user_id_foreign` (`user_id`),
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,10000.00,'2024-01-09 09:01:18',1,'Cash',2,'2024-01-18 09:01:23','2024-01-18 09:01:23','Rod'),(2,8000.55,'2024-01-09 09:02:31',1,'Cash',2,'2024-01-18 09:02:40','2024-01-18 09:02:40','Joyce'),(3,10000.00,'2024-01-12 09:10:18',1,'Bank Transfer',2,'2024-01-18 09:11:46','2024-01-18 09:11:46','Rod'),(4,10000.00,'2024-01-13 09:12:27',1,'Cash',2,'2024-01-18 09:12:36','2024-01-18 09:12:36','Rod'),(5,10000.00,'2024-01-14 09:13:16',1,'Cash',2,'2024-01-18 09:13:20','2024-01-18 09:13:20','Joyce');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Lion','King',NULL,NULL,'lkrealty@gmail.com','admin',NULL,'lkrealty','$2y$10$BN1bPkTn5bsZUDEhwYTShePS3aOtpYOhQbCpPR6ajqSIX36DbC0AG',1,NULL,'2024-01-18 08:59:14','2024-01-18 08:59:14',NULL),(2,'Shekinah','Rosalita','Alferez','Jr.',NULL,'client',NULL,NULL,NULL,1,NULL,'2024-01-18 09:00:30','2024-01-18 17:10:03','20240118170030');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lion_king_realty'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-19  9:44:54
