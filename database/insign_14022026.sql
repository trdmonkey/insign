-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: insign
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_activations`
--

DROP TABLE IF EXISTS `admin_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_activations`
--

LOCK TABLES `admin_activations` WRITE;
/*!40000 ALTER TABLE `admin_activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Jorge','Lopez','administrator@brackets.sk','$2y$10$Gryk7vzGAwAGixEiQcbKNednec4qDSQTMa82D3J6PU8WB1UiQv5KW','zFKGLCJmFz7QS57s9mkfaifWhnerXBm8RglUhimNG7kZQRq0fby8OI8FtEAU',1,0,'en',NULL,'2025-10-28 01:55:54','2026-02-14 21:27:00','2026-02-14 21:27:00');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Cocina','1','Hace referencia a los neologismos en el area de restaurante y casino',0,'2025-11-21 07:29:57','2025-11-21 07:29:57'),(2,'Gestion documental','2','Hace referencia a los neologismos en el area de archivo',0,'2025-11-21 07:30:51','2025-11-21 07:30:51'),(3,'Carpinteria','3','Hace referencia a los instrumentos y tecnisismos en el area de carpinteria y maderas',0,'2025-11-22 07:40:20','2025-11-22 07:40:20'),(4,'Mecatronica','mecatronica','Hace referencia a las actividades en el área de mecánica y tecnología',1,'2025-12-16 22:47:30','2025-12-16 22:47:30');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
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
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`manipulations`)),
  CONSTRAINT `media_chk_2` CHECK (json_valid(`custom_properties`)),
  CONSTRAINT `media_chk_3` CHECK (json_valid(`generated_conversions`)),
  CONSTRAINT `media_chk_4` CHECK (json_valid(`responsive_images`))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (3,'App\\Models\\Palabra',8,'d2a2ef11-ddb0-4f11-a4d6-5a1eebbdbf0d','video','pruebaUno','pruebaUno.mp4','video/mp4','public','public',11017299,'[]','[]','[]','[]',1,'2025-12-17 03:25:58','2025-12-17 03:25:58'),(4,'App\\Models\\Palabra',9,'862c06ae-56e6-4c04-991d-6630de321c9f','video','terceraPrueba','terceraPrueba.mp4','video/mp4','public','public',1998549,'[]','[]','[]','[]',1,'2025-12-17 07:46:30','2025-12-17 07:46:30'),(5,'App\\Models\\Palabra',10,'5466e9a2-e029-4a57-b3cb-c37a66722c07','video','cuartaPrueba','cuartaPrueba.mp4','video/mp4','public','public',5491679,'[]','[]','[]','[]',1,'2025-12-17 08:00:28','2025-12-17 08:00:28'),(6,'App\\Models\\Palabra',11,'16ef6daa-31ff-4c1b-910f-3ee3658bd2d8','video','quintaPrueba','quintaPrueba.mp4','video/mp4','public','public',4039500,'[]','[]','[]','[]',1,'2025-12-17 09:09:37','2025-12-17 09:09:37'),(7,'App\\Models\\Palabra',12,'a197d638-8ccc-4305-b9bb-d9222a1c5d85','video','pruebaDos','pruebaDos.mp4','video/mp4','public','public',2320780,'[]','[]','[]','[]',1,'2025-12-18 20:30:44','2025-12-18 20:30:44'),(8,'App\\Models\\Palabra',14,'911db267-068a-43f4-87da-3573d921199a','video','terceraPrueba','terceraPrueba.mp4','video/mp4','public','public',1998549,'[]','[]','[]','[]',1,'2025-12-19 22:44:13','2025-12-19 22:44:13'),(9,'App\\Models\\Palabra',15,'e0c9548d-d7a5-4c83-8c97-295aeef0ce7a','video','pruebaDos','pruebaDos.mp4','video/mp4','public','public',2320780,'[]','[]','[]','[]',1,'2025-12-20 03:09:40','2025-12-20 03:09:40'),(10,'Brackets\\AdminAuth\\Models\\AdminUser',1,'0a15dcba-ad5c-47cf-8cf5-05d42a5d3992','avatar','FkTfcbt4pgyXpBhTFRTe44b1dJKA20S3vO7hsYzG','FkTfcbt4pgyXpBhTFRTe44b1dJKA20S3vO7hsYzG.jpg','image/jpeg','media','media',26036,'[]','{\"name\":\"logoInsign.jpg\",\"file_name\":\"logoInsign.jpg\",\"width\":1280,\"height\":853}','{\"thumb_200\":true,\"thumb_75\":true,\"thumb_150\":true}','[]',1,'2025-12-20 03:46:25','2025-12-20 03:46:27'),(11,'App\\Models\\Palabra',16,'2703249e-e454-425f-b413-b61c31f8c113','video','pruebaDos','pruebaDos.mp4','video/mp4','public','public',2320780,'[]','[]','[]','[]',1,'2025-12-24 05:01:42','2025-12-24 05:01:42'),(12,'App\\Models\\Palabra',17,'9a565b18-332a-426f-9f9e-25b241c7eb8b','video','terceraPrueba','terceraPrueba.mp4','video/mp4','public','public',1998549,'[]','[]','[]','[]',1,'2025-12-24 05:04:57','2025-12-24 05:04:57'),(13,'App\\Models\\Palabra',18,'9c954cbf-bbdc-411b-a03b-ea1e059494a0','video','novenaPrueba','novenaPrueba.mp4','video/mp4','public','public',3667972,'[]','[]','[]','[]',1,'2025-12-24 05:54:27','2025-12-24 05:54:27');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2017_08_24_000000_create_activations_table',1),(4,'2017_08_24_000000_create_admin_activations_table',1),(5,'2017_08_24_000000_create_admin_password_resets_table',1),(6,'2017_08_24_000000_create_admin_users_table',1),(7,'2018_07_18_000000_create_wysiwyg_media_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2020_10_21_000000_add_last_login_at_timestamp_to_admin_users_table',1),(11,'2025_10_27_205551_create_media_table',1),(12,'2025_10_27_205551_create_permission_tables',1),(13,'2025_10_27_205556_fill_default_admin_user_and_permissions',1),(14,'2025_10_27_205551_create_translations_table',2),(15,'2025_10_27_235131_add_fields_to_users_table',3),(16,'2025_10_28_002351_fill_permissions_for_user',4),(17,'2025_11_19_020336_crate_categoria_table',5),(18,'2025_11_19_022521_fill_permissions_for_categorium',6),(19,'2025_11_20_200837_create_categorias_table',7),(20,'2025_11_20_201634_fill_permissions_for_categorium',8),(21,'2025_11_20_204330_create_categorias_table',9),(22,'2025_11_20_205836_fill_permissions_for_categoria',10),(23,'2025_11_20_210629_create_categoria_table',11),(24,'2025_11_20_210958_fill_permissions_for_categorium',12),(25,'2025_11_20_233623_create_categorias_table',13),(26,'2025_11_20_234048_fill_permissions_for_categorium',14),(27,'2025_11_21_004248_create_categoria_table',15),(28,'2025_11_21_014328_fill_permissions_for_categoria',16),(29,'2025_11_21_015251_create_categorias_table',17),(30,'2025_11_21_015408_fill_permissions_for_categoria',18),(31,'2025_11_21_022043_create_categoria_table',19),(32,'2025_11_21_022313_fill_permissions_for_categorium',20),(33,'2025_11_21_024147_create_palabra_table',21),(34,'2025_11_21_024557_fill_permissions_for_palabra',22);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
INSERT INTO `model_has_permissions` VALUES (35,'Brackets\\AdminAuth\\Models\\AdminUser',1);
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palabra`
--

DROP TABLE IF EXISTS `palabra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `palabra` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `estado` tinyint(1) NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoria_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `palabra_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `palabra_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palabra`
--

LOCK TABLES `palabra` WRITE;
/*!40000 ALTER TABLE `palabra` DISABLE KEYS */;
INSERT INTO `palabra` VALUES (8,'aaaaaaaaaaa','aaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,'Documentos','2025-12-17 03:25:58','2025-12-17 03:25:58',2),(9,'zzzzzzzzzzzzzz','zzzzzzzzzzzzzzzzzzzzz','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz',1,'zzzzzzzzzzzzzzzzzzzzzzz','2025-12-17 07:46:29','2025-12-17 07:46:29',3),(10,'Tabla para picar verduras','tabla','Instrumento utilizado para picar en trozos las verduras y demas alimentos',1,'Documentos','2025-12-17 08:00:28','2025-12-17 08:00:28',1),(11,'xxxxxxxxxxxxx','xxxxxxxxxxxx','xxxxxxxxxxxxxxxx',0,'xxxxxxxxxxxxxxx','2025-12-17 09:09:37','2025-12-17 09:09:37',4),(12,'Escritorio','escritorio','Hace referencia al espacio de trabajo en el área de Gestión Documental y Archivo',1,'Documentos','2025-12-18 20:30:44','2025-12-18 20:30:44',2),(14,'Batería de cocina','bateria','Conjunto de ollas, tapas, sarten, cacerola, que conforman una bateria de cocina',1,'Documentos','2025-12-19 22:44:12','2025-12-19 22:44:12',1),(15,'Pulidora','pulidora','Hace referencia a la maquina electrica utilizada para pulir la madera y dar formas',1,'Documentos','2025-12-20 03:09:39','2025-12-20 03:09:39',3),(16,'Impresora','impresora','Scanner e impresion y fotocopias documental en el área de archivo y gestión',1,'Documentos','2025-12-24 05:01:42','2025-12-24 05:01:42',2),(17,'Teclado mecanico','teclado','Periferico de entrada para escritura de texto en el computador',1,'Documentos','2025-12-24 05:04:57','2025-12-24 05:04:57',2),(18,'Caja de herramientas','herramientas','Conjunto de herramientas para uso mecanico en el área de mecatronica y metal mecánica',1,'Descargas','2025-12-24 05:54:27','2025-12-24 05:54:27',4);
/*!40000 ALTER TABLE `palabra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(2,'admin.translation.index','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(3,'admin.translation.edit','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(4,'admin.translation.rescan','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(5,'admin.admin-user.index','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(6,'admin.admin-user.create','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(7,'admin.admin-user.edit','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(8,'admin.admin-user.delete','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(9,'admin.upload','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(10,'admin.admin-user.impersonal-login','admin','2025-10-28 01:55:54','2025-10-28 01:55:54'),(11,'admin.user','admin','2025-10-28 05:23:54','2025-10-28 05:23:54'),(12,'admin.user.index','admin','2025-10-28 05:23:54','2025-10-28 05:23:54'),(13,'admin.user.create','admin','2025-10-28 05:23:54','2025-10-28 05:23:54'),(14,'admin.user.show','admin','2025-10-28 05:23:54','2025-10-28 05:23:54'),(15,'admin.user.edit','admin','2025-10-28 05:23:54','2025-10-28 05:23:54'),(16,'admin.user.delete','admin','2025-10-28 05:23:54','2025-10-28 05:23:54'),(17,'admin.user.bulk-delete','admin','2025-10-28 05:23:54','2025-10-28 05:23:54'),(18,'admin.categorium','admin','2025-11-19 07:25:24','2025-11-19 07:25:24'),(19,'admin.categorium.index','admin','2025-11-19 07:25:24','2025-11-19 07:25:24'),(20,'admin.categorium.create','admin','2025-11-19 07:25:24','2025-11-19 07:25:24'),(21,'admin.categorium.show','admin','2025-11-19 07:25:24','2025-11-19 07:25:24'),(22,'admin.categorium.edit','admin','2025-11-19 07:25:24','2025-11-19 07:25:24'),(23,'admin.categorium.delete','admin','2025-11-19 07:25:24','2025-11-19 07:25:24'),(24,'admin.categorium.bulk-delete','admin','2025-11-19 07:25:24','2025-11-19 07:25:24'),(25,'admin.categoria','admin','2025-11-21 01:58:43','2025-11-21 01:58:43'),(26,'admin.categoria.index','admin','2025-11-21 01:58:43','2025-11-21 01:58:43'),(27,'admin.categoria.create','admin','2025-11-21 01:58:43','2025-11-21 01:58:43'),(28,'admin.categoria.show','admin','2025-11-21 01:58:43','2025-11-21 01:58:43'),(29,'admin.categoria.edit','admin','2025-11-21 01:58:43','2025-11-21 01:58:43'),(30,'admin.categoria.delete','admin','2025-11-21 01:58:43','2025-11-21 01:58:43'),(31,'admin.categoria.bulk-delete','admin','2025-11-21 01:58:43','2025-11-21 01:58:43'),(32,'admin.palabra','admin','2025-11-21 07:46:00','2025-11-21 07:46:00'),(33,'admin.palabra.index','admin','2025-11-21 07:46:00','2025-11-21 07:46:00'),(34,'admin.palabra.create','admin','2025-11-21 07:46:00','2025-11-21 07:46:00'),(35,'admin.palabra.show','admin','2025-11-21 07:46:00','2025-11-21 07:46:00'),(36,'admin.palabra.edit','admin','2025-11-21 07:46:00','2025-11-21 07:46:00'),(37,'admin.palabra.delete','admin','2025-11-21 07:46:00','2025-11-21 07:46:00'),(38,'admin.palabra.bulk-delete','admin','2025-11-21 07:46:00','2025-11-21 07:46:00');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
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
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','admin','2025-10-28 01:55:54','2025-10-28 01:55:54');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_namespace_index` (`namespace`),
  KEY `translations_group_index` (`group`),
  CONSTRAINT `translations_chk_1` CHECK (json_valid(`text`)),
  CONSTRAINT `translations_chk_2` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'brackets/admin-ui','admin','operation.succeeded','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(2,'brackets/admin-ui','admin','operation.failed','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(3,'brackets/admin-ui','admin','operation.not_allowed','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(4,'*','admin','admin-user.columns.first_name','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(5,'*','admin','admin-user.columns.last_name','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(6,'*','admin','admin-user.columns.email','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(7,'*','admin','admin-user.columns.password','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(8,'*','admin','admin-user.columns.password_repeat','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(9,'*','admin','admin-user.columns.activated','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(10,'*','admin','admin-user.columns.forbidden','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(11,'*','admin','admin-user.columns.language','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(12,'brackets/admin-ui','admin','forms.select_an_option','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(13,'*','admin','admin-user.columns.roles','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(14,'brackets/admin-ui','admin','forms.select_options','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(15,'*','admin','admin-user.actions.create','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(16,'brackets/admin-ui','admin','btn.save','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(17,'*','admin','admin-user.actions.edit','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(18,'*','admin','admin-user.actions.index','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(19,'brackets/admin-ui','admin','placeholder.search','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(20,'brackets/admin-ui','admin','btn.search','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(21,'*','admin','admin-user.columns.id','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(22,'*','admin','admin-user.columns.last_login_at','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(23,'brackets/admin-ui','admin','btn.edit','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(24,'brackets/admin-ui','admin','btn.delete','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(25,'brackets/admin-ui','admin','pagination.overview','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(26,'brackets/admin-ui','admin','index.no_items','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(27,'brackets/admin-ui','admin','index.try_changing_items','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(28,'brackets/admin-ui','admin','btn.new','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(29,'brackets/admin-ui','admin','profile_dropdown.account','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(30,'brackets/admin-auth','admin','profile_dropdown.profile','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(31,'brackets/admin-auth','admin','profile_dropdown.password','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(32,'brackets/admin-auth','admin','profile_dropdown.logout','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(33,'brackets/admin-ui','admin','sidebar.content','{\"en\":\"Men\\u00fa\"}',NULL,'2025-10-28 01:56:51','2025-11-22 20:58:53',NULL),(34,'brackets/admin-ui','admin','sidebar.settings','{\"en\":\"Otras opciones\"}',NULL,'2025-10-28 01:56:51','2025-11-22 21:01:18',NULL),(35,'*','admin','admin-user.actions.edit_password','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(36,'*','admin','admin-user.actions.edit_profile','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(37,'brackets/admin-auth','admin','activation_form.title','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(38,'brackets/admin-auth','admin','activation_form.note','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(39,'brackets/admin-auth','admin','auth_global.email','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(40,'brackets/admin-auth','admin','activation_form.button','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(41,'brackets/admin-auth','admin','login.title','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(42,'brackets/admin-auth','admin','login.sign_in_text','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(43,'brackets/admin-auth','admin','auth_global.password','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(44,'brackets/admin-auth','admin','login.button','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(45,'brackets/admin-auth','admin','login.forgot_password','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(46,'brackets/admin-auth','admin','forgot_password.title','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(47,'brackets/admin-auth','admin','forgot_password.note','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(48,'brackets/admin-auth','admin','forgot_password.button','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(49,'brackets/admin-auth','admin','password_reset.title','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(50,'brackets/admin-auth','admin','password_reset.note','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(51,'brackets/admin-auth','admin','auth_global.password_confirm','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(52,'brackets/admin-auth','admin','password_reset.button','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(53,'brackets/admin-auth','activations','email.line','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(54,'brackets/admin-auth','activations','email.action','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(55,'brackets/admin-auth','activations','email.notRequested','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(56,'brackets/admin-auth','admin','activations.activated','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(57,'brackets/admin-auth','admin','activations.invalid_request','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(58,'brackets/admin-auth','admin','activations.disabled','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(59,'brackets/admin-auth','admin','activations.sent','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(60,'brackets/admin-auth','admin','passwords.sent','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(61,'brackets/admin-auth','admin','passwords.reset','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(62,'brackets/admin-auth','admin','passwords.invalid_token','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(63,'brackets/admin-auth','admin','passwords.invalid_user','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(64,'brackets/admin-auth','resets','email.line','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(65,'brackets/admin-auth','resets','email.action','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(66,'brackets/admin-auth','resets','email.notRequested','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(67,'*','auth','failed','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(68,'*','auth','throttle','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(69,'*','*','Manage access','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(70,'*','*','Translations','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL),(71,'*','*','Configuration','[]',NULL,'2025-10-28 01:56:51','2025-10-28 01:56:51',NULL);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pepito','pepito@gmail.com',NULL,'Pepito123','Usuario',0,'Rojo',NULL,'2025-10-28 07:35:10','2025-10-28 07:35:10'),(2,'Homero','homero@gmail.com',NULL,'Homero123','Usuario',0,'#91a937',NULL,'2025-10-28 07:42:42','2025-10-28 07:42:42'),(3,'Bart','bart@gmail.com',NULL,'Bart123','Usuario',1,'#ffffff',NULL,'2025-10-28 07:46:25','2025-10-28 07:46:25'),(4,'chayane botina','chayan@gmail.com',NULL,'Chayane123','Invitado',0,'#91a552',NULL,'2025-11-19 06:47:51','2025-11-19 06:47:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wysiwyg_media`
--

DROP TABLE IF EXISTS `wysiwyg_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wysiwyg_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int unsigned DEFAULT NULL,
  `wysiwygable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wysiwyg_media`
--

LOCK TABLES `wysiwyg_media` WRITE;
/*!40000 ALTER TABLE `wysiwyg_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `wysiwyg_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-14 11:42:19
