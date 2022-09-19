-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: pruebasep
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add backup',7,'add_backup'),(26,'Can change backup',7,'change_backup'),(27,'Can delete backup',7,'delete_backup'),(28,'Can view backup',7,'view_backup'),(29,'Can add factura',8,'add_factura'),(30,'Can change factura',8,'change_factura'),(31,'Can delete factura',8,'delete_factura'),(32,'Can view factura',8,'view_factura'),(33,'Can add detalle',9,'add_detalle'),(34,'Can change detalle',9,'change_detalle'),(35,'Can delete detalle',9,'delete_detalle'),(36,'Can view detalle',9,'view_detalle'),(37,'Can add rol',10,'add_rol'),(38,'Can change rol',10,'change_rol'),(39,'Can delete rol',10,'delete_rol'),(40,'Can view rol',10,'view_rol'),(41,'Can add usuario',11,'add_usuario'),(42,'Can change usuario',11,'change_usuario'),(43,'Can delete usuario',11,'delete_usuario'),(44,'Can view usuario',11,'view_usuario'),(45,'Can add pago',12,'add_pago'),(46,'Can change pago',12,'change_pago'),(47,'Can delete pago',12,'delete_pago'),(48,'Can view pago',12,'view_pago'),(49,'Can add detalle_pago',13,'add_detalle_pago'),(50,'Can change detalle_pago',13,'change_detalle_pago'),(51,'Can delete detalle_pago',13,'delete_detalle_pago'),(52,'Can view detalle_pago',13,'view_detalle_pago'),(53,'Can add color',14,'add_color'),(54,'Can change color',14,'change_color'),(55,'Can delete color',14,'delete_color'),(56,'Can view color',14,'view_color'),(57,'Can add marca',15,'add_marca'),(58,'Can change marca',15,'change_marca'),(59,'Can delete marca',15,'delete_marca'),(60,'Can view marca',15,'view_marca'),(61,'Can add talla',16,'add_talla'),(62,'Can change talla',16,'change_talla'),(63,'Can delete talla',16,'delete_talla'),(64,'Can view talla',16,'view_talla'),(65,'Can add producto',17,'add_producto'),(66,'Can change producto',17,'change_producto'),(67,'Can delete producto',17,'delete_producto'),(68,'Can view producto',17,'view_producto'),(69,'Can add postt',18,'add_postt'),(70,'Can change postt',18,'change_postt'),(71,'Can delete postt',18,'delete_postt'),(72,'Can view postt',18,'view_postt');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$gijxGd6iECk4bvhaBPrVnS$Eqs9phz8Z4z8Yr6ZXpwXaf/t+u/ql4RdVXURGCobQTA=','2022-09-09 01:18:30.170941',1,'admin','','','admin@gmail.com',1,1,'2022-09-09 01:18:18.154395');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta_postt`
--

DROP TABLE IF EXISTS `cuenta_postt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta_postt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuenta_postt_user_id_d3a0145e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cuenta_postt_user_id_d3a0145e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_postt`
--

LOCK TABLES `cuenta_postt` WRITE;
/*!40000 ALTER TABLE `cuenta_postt` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_postt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(18,'cuenta','postt'),(9,'facturas','detalle'),(8,'facturas','factura'),(7,'gestion','backup'),(13,'pago','detalle_pago'),(12,'pago','pago'),(14,'productos','color'),(15,'productos','marca'),(17,'productos','producto'),(16,'productos','talla'),(6,'sessions','session'),(10,'usuarios','rol'),(11,'usuarios','usuario');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-09-09 01:17:56.534744'),(2,'auth','0001_initial','2022-09-09 01:17:56.916723'),(3,'admin','0001_initial','2022-09-09 01:17:56.995537'),(4,'admin','0002_logentry_remove_auto_add','2022-09-09 01:17:57.003849'),(5,'admin','0003_logentry_add_action_flag_choices','2022-09-09 01:17:57.012748'),(6,'contenttypes','0002_remove_content_type_name','2022-09-09 01:17:57.072001'),(7,'auth','0002_alter_permission_name_max_length','2022-09-09 01:17:57.133856'),(8,'auth','0003_alter_user_email_max_length','2022-09-09 01:17:57.178083'),(9,'auth','0004_alter_user_username_opts','2022-09-09 01:17:57.187050'),(10,'auth','0005_alter_user_last_login_null','2022-09-09 01:17:57.250913'),(11,'auth','0006_require_contenttypes_0002','2022-09-09 01:17:57.255864'),(12,'auth','0007_alter_validators_add_error_messages','2022-09-09 01:17:57.262878'),(13,'auth','0008_alter_user_username_max_length','2022-09-09 01:17:57.313709'),(14,'auth','0009_alter_user_last_name_max_length','2022-09-09 01:17:57.373129'),(15,'auth','0010_alter_group_name_max_length','2022-09-09 01:17:57.391081'),(16,'auth','0011_update_proxy_permissions','2022-09-09 01:17:57.402051'),(17,'auth','0012_alter_user_first_name_max_length','2022-09-09 01:17:57.447927'),(18,'cuenta','0001_initial','2022-09-09 01:17:57.500686'),(19,'usuarios','0001_initial','2022-09-09 01:17:57.569174'),(20,'productos','0001_initial','2022-09-09 01:17:57.831412'),(21,'facturas','0001_initial','2022-09-09 01:17:58.001373'),(22,'facturas','0002_detalle_preciox','2022-09-09 01:17:58.021884'),(23,'gestion','0001_initial','2022-09-09 01:17:58.037098'),(24,'pago','0001_initial','2022-09-09 01:17:58.180736'),(25,'pago','0002_alter_detalle_pago_total_alter_detalle_pago_valor','2022-09-09 01:17:58.261174'),(26,'productos','0002_alter_producto_precio_venta','2022-09-09 01:17:58.270713'),(27,'productos','0003_alter_producto_porcentaje','2022-09-09 01:17:58.279559'),(28,'sessions','0001_initial','2022-09-09 01:17:58.311120'),(29,'usuarios','0002_alter_usuario_documento','2022-09-09 01:17:58.318606');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('jr7x1b9buizcpfdu5w5zx15yxgsew8bw','.eJxVjMsOwiAQRf-FtSG8Cy7d-w1kYAapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKM7MwkO_1uCfKD2g7wDu3Wee5tXebEd4UfdPBrR3peDvfvoMKo35ocaKeFC76gMAaxKEoFbPDoVCGbhaUsYJJeF1I4eSO9DFaUQMFZ6dn7A-_aN78:1oWSf8:2J08QOtJs129Z7D-adUR1YUWJ9gzjsOuQ_fk95ns_IE','2022-09-23 01:18:30.173779');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas_detalle`
--

DROP TABLE IF EXISTS `facturas_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas_detalle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estado` varchar(10) NOT NULL,
  `cantidad_detalle` int NOT NULL,
  `total` int NOT NULL,
  `factura_id` bigint DEFAULT NULL,
  `producto_id` bigint DEFAULT NULL,
  `precioX` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facturas_detalle_factura_id_2b4976b9_fk_facturas_factura_id` (`factura_id`),
  KEY `facturas_detalle_producto_id_e0906d15_fk_productos_producto_id` (`producto_id`),
  CONSTRAINT `facturas_detalle_factura_id_2b4976b9_fk_facturas_factura_id` FOREIGN KEY (`factura_id`) REFERENCES `facturas_factura` (`id`),
  CONSTRAINT `facturas_detalle_producto_id_e0906d15_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_detalle`
--

LOCK TABLES `facturas_detalle` WRITE;
/*!40000 ALTER TABLE `facturas_detalle` DISABLE KEYS */;
INSERT INTO `facturas_detalle` VALUES (1,'Abierta',7,84000,1,1,12000),(2,'Abierta',1,18900,2,3,18900),(3,'Abierta',2,44000,2,2,22000),(4,'Abierta',1,13800,2,1,13800),(5,'Abierta',1,35000,3,4,35000),(6,'Abierta',6,480000,3,5,80000),(7,'Abierta',5,750000,3,6,150000),(8,'Abierta',5,100000,4,2,20000),(9,'Abierta',4,72000,5,3,18000);
/*!40000 ALTER TABLE `facturas_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas_factura`
--

DROP TABLE IF EXISTS `facturas_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas_factura` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipofactura` varchar(10) NOT NULL,
  `neto_pagar` int NOT NULL,
  `estado` varchar(10) NOT NULL,
  `decision` varchar(10) NOT NULL,
  `rol_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facturas_factura_rol_id_6180f164_fk_usuarios_rol_Rid` (`rol_id`),
  KEY `facturas_factura_usuario_id_2269c3b8_fk_usuarios_usuario_Uid` (`usuario_id`),
  CONSTRAINT `facturas_factura_rol_id_6180f164_fk_usuarios_rol_Rid` FOREIGN KEY (`rol_id`) REFERENCES `usuarios_rol` (`Rid`),
  CONSTRAINT `facturas_factura_usuario_id_2269c3b8_fk_usuarios_usuario_Uid` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuario` (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_factura`
--

LOCK TABLES `facturas_factura` WRITE;
/*!40000 ALTER TABLE `facturas_factura` DISABLE KEYS */;
INSERT INTO `facturas_factura` VALUES (1,'2022-09-08','Compra',84000,'Abierta','Activo',1,3),(2,'2022-09-08','Venta',76700,'Abierta','Activo',2,5),(3,'2022-09-08','Compra',1265000,'Abierta','Activo',3,6),(4,'2022-09-08','Compra',100000,'Abierta','Activo',1,1),(5,'2022-09-08','Compra',72000,'Abierta','Activo',1,2);
/*!40000 ALTER TABLE `facturas_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestion_backup`
--

DROP TABLE IF EXISTS `gestion_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestion_backup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion_backup`
--

LOCK TABLES `gestion_backup` WRITE;
/*!40000 ALTER TABLE `gestion_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestion_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_detalle_pago`
--

DROP TABLE IF EXISTS `pago_detalle_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago_detalle_pago` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estado` varchar(10) NOT NULL,
  `valor` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `detalle_id` bigint DEFAULT NULL,
  `pago_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pago_detalle_pago_detalle_id_18612832_fk_facturas_detalle_id` (`detalle_id`),
  KEY `pago_detalle_pago_pago_id_dd0900a1_fk_pago_pago_id` (`pago_id`),
  CONSTRAINT `pago_detalle_pago_detalle_id_18612832_fk_facturas_detalle_id` FOREIGN KEY (`detalle_id`) REFERENCES `facturas_detalle` (`id`),
  CONSTRAINT `pago_detalle_pago_pago_id_dd0900a1_fk_pago_pago_id` FOREIGN KEY (`pago_id`) REFERENCES `pago_pago` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_detalle_pago`
--

LOCK TABLES `pago_detalle_pago` WRITE;
/*!40000 ALTER TABLE `pago_detalle_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_detalle_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_pago`
--

DROP TABLE IF EXISTS `pago_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago_pago` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `neto_pagar` int NOT NULL,
  `estado` varchar(10) NOT NULL,
  `decision` varchar(10) NOT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pago_pago_usuario_id_9af805af_fk_usuarios_usuario_Uid` (`usuario_id`),
  CONSTRAINT `pago_pago_usuario_id_9af805af_fk_usuarios_usuario_Uid` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuario` (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_pago`
--

LOCK TABLES `pago_pago` WRITE;
/*!40000 ALTER TABLE `pago_pago` DISABLE KEYS */;
INSERT INTO `pago_pago` VALUES (1,'2022-09-08',0,'Abierta','Activo',1),(2,'2022-09-08',0,'Abierta','Activo',2),(3,'2022-09-08',0,'Abierta','Activo',3);
/*!40000 ALTER TABLE `pago_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_color`
--

DROP TABLE IF EXISTS `productos_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_color` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `estado` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_color`
--

LOCK TABLES `productos_color` WRITE;
/*!40000 ALTER TABLE `productos_color` DISABLE KEYS */;
INSERT INTO `productos_color` VALUES (1,'Verde','Activo'),(2,'Azul','Activo'),(3,'Rojo','Activo'),(4,'Rosa','Activo'),(5,'Amarillo','Activo'),(6,'Café','Activo'),(7,'Negro','Activo');
/*!40000 ALTER TABLE `productos_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_marca`
--

DROP TABLE IF EXISTS `productos_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_marca` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `estado` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_marca`
--

LOCK TABLES `productos_marca` WRITE;
/*!40000 ALTER TABLE `productos_marca` DISABLE KEYS */;
INSERT INTO `productos_marca` VALUES (1,'Adidas','Activo'),(2,'Artesanal','Activo'),(3,'Puma','Activo'),(4,'Nike','Activo'),(5,'Generica','Activo');
/*!40000 ALTER TABLE `productos_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_producto`
--

DROP TABLE IF EXISTS `productos_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `categoria` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `stock` int NOT NULL,
  `precio` int NOT NULL,
  `precio_venta` int NOT NULL,
  `porcentaje` int NOT NULL,
  `valorPorcentaje` double DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `color_id` bigint DEFAULT NULL,
  `marca_id` bigint DEFAULT NULL,
  `rol_id` int DEFAULT NULL,
  `talla_id` bigint DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_producto_color_id_c45f44ec_fk_productos_color_id` (`color_id`),
  KEY `productos_producto_marca_id_fc6a9dea_fk_productos_marca_id` (`marca_id`),
  KEY `productos_producto_rol_id_1f4c3164_fk_usuarios_rol_Rid` (`rol_id`),
  KEY `productos_producto_talla_id_bc4cde63_fk_productos_talla_id` (`talla_id`),
  KEY `productos_producto_usuario_id_0fed4d8f_fk_usuarios_usuario_Uid` (`usuario_id`),
  CONSTRAINT `productos_producto_color_id_c45f44ec_fk_productos_color_id` FOREIGN KEY (`color_id`) REFERENCES `productos_color` (`id`),
  CONSTRAINT `productos_producto_marca_id_fc6a9dea_fk_productos_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `productos_marca` (`id`),
  CONSTRAINT `productos_producto_rol_id_1f4c3164_fk_usuarios_rol_Rid` FOREIGN KEY (`rol_id`) REFERENCES `usuarios_rol` (`Rid`),
  CONSTRAINT `productos_producto_talla_id_bc4cde63_fk_productos_talla_id` FOREIGN KEY (`talla_id`) REFERENCES `productos_talla` (`id`),
  CONSTRAINT `productos_producto_usuario_id_0fed4d8f_fk_usuarios_usuario_Uid` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuario` (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_producto`
--

LOCK TABLES `productos_producto` WRITE;
/*!40000 ALTER TABLE `productos_producto` DISABLE KEYS */;
INSERT INTO `productos_producto` VALUES (1,'Tejidos','Guantes',56,12000,13800,15,1800,'Activo',6,2,1,9,3),(2,'Tejidos','Gorros',33,20000,22000,10,2000,'Activo',7,2,1,9,1),(3,'Tejidos','Bufanda',13,18000,18900,5,900,'Activo',1,2,1,9,2),(4,'Ropa','Sudadera',21,35000,40250,15,5250,'Activo',2,1,3,2,6),(5,'Calzado','Teni',23,80000,84000,5,4000,'Activo',3,4,3,7,6),(6,'Ropa','Chaqueta',10,150000,154500,3,4500,'Activo',7,5,3,3,6);
/*!40000 ALTER TABLE `productos_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_talla`
--

DROP TABLE IF EXISTS `productos_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_talla` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_talla` varchar(8) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `estado` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_talla`
--

LOCK TABLES `productos_talla` WRITE;
/*!40000 ALTER TABLE `productos_talla` DISABLE KEYS */;
INSERT INTO `productos_talla` VALUES (1,'Letra','S','Activo'),(2,'Letra','M','Activo'),(3,'Letra','L','Activo'),(4,'Numero','28','Activo'),(5,'Numero','14','Activo'),(6,'Numero','38','Activo'),(7,'Numero','39','Activo'),(8,'Numero','40','Activo'),(9,'Letra','Unica','Activo');
/*!40000 ALTER TABLE `productos_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_rol`
--

DROP TABLE IF EXISTS `usuarios_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_rol` (
  `Rid` int NOT NULL AUTO_INCREMENT,
  `Rnombre` varchar(12) NOT NULL,
  PRIMARY KEY (`Rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_rol`
--

LOCK TABLES `usuarios_rol` WRITE;
/*!40000 ALTER TABLE `usuarios_rol` DISABLE KEYS */;
INSERT INTO `usuarios_rol` VALUES (1,'Asociada'),(2,'Cliente'),(3,'Proveedor');
/*!40000 ALTER TABLE `usuarios_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_usuario`
--

DROP TABLE IF EXISTS `usuarios_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_usuario` (
  `Uid` int NOT NULL AUTO_INCREMENT,
  `Unombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `documento` int NOT NULL,
  `celular` varchar(13) NOT NULL,
  `tipo_documento` varchar(3) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `rol_id` int DEFAULT NULL,
  PRIMARY KEY (`Uid`),
  UNIQUE KEY `celular` (`celular`),
  KEY `usuarios_usuario_rol_id_b0d64932_fk_usuarios_rol_Rid` (`rol_id`),
  CONSTRAINT `usuarios_usuario_rol_id_b0d64932_fk_usuarios_rol_Rid` FOREIGN KEY (`rol_id`) REFERENCES `usuarios_rol` (`Rid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_usuario`
--

LOCK TABLES `usuarios_usuario` WRITE;
/*!40000 ALTER TABLE `usuarios_usuario` DISABLE KEYS */;
INSERT INTO `usuarios_usuario` VALUES (1,'Patricia','Caceres',74125365,'3214758402','C.C','Activo',1),(2,'Sofia','Reyes',1002463259,'3142547894','C.C','Activo',1),(3,'Gabriela','Lopez',46718962,'3134568521','C.C','Activo',1),(4,'Jorge','Fernandez',1053651256,'3189635741','C.C','Activo',2),(5,'Karen','Baron',100854759,'3215698457','C.C','Activo',2),(6,'Juan','Velez',74635019,'3105547823','C.C','Activo',3);
/*!40000 ALTER TABLE `usuarios_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-08 20:46:29
