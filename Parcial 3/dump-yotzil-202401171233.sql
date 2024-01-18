-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: yotzil
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `id_bitacora` int NOT NULL AUTO_INCREMENT,
  `accion` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_bitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,'Nuevo empleado insertado','2024-01-15','09:25:40'),(2,'Nuevo paciente creado','2024-01-15','09:37:49'),(3,'Paciente actualizado','2024-01-15','09:38:01'),(4,'Nuevo servicio creado','2024-01-15','16:11:11'),(5,'Nueva receta creada','2024-01-15','22:28:48'),(6,'Nuevo medicamento recetado creado','2024-01-15','22:28:48'),(7,'Nuevo servicio creado','2024-01-15','22:30:50'),(8,'Nuevo servicio creado','2024-01-15','22:31:30'),(9,'Nuevo servicio creado','2024-01-15','22:32:30'),(10,'Nuevo servicio creado','2024-01-15','22:32:51'),(11,'Nuevo consultorio creado','2024-01-15','19:49:07'),(12,'Consultorio actualizado','2024-01-15','20:10:13'),(13,'Consultorio actualizado','2024-01-15','20:10:13'),(14,'Nueva cita creada','2024-01-16','02:11:00'),(15,'Cita actualizada','2024-01-16','02:11:05'),(16,'Nuevo empleado insertado','2024-01-16','16:42:09'),(17,'Nuevo médico creado','2024-01-16','16:42:09'),(18,'Nuevo consultorio creado','2024-01-16','10:49:43'),(19,'Consultorio actualizado','2024-01-16','10:49:43'),(20,'Nuevo consultorio creado','2024-01-16','10:52:27'),(21,'Nuevo consultorio creado','2024-01-16','10:52:27'),(22,'Nuevo consultorio creado','2024-01-16','10:52:27'),(23,'Nuevo consultorio creado','2024-01-16','10:52:27'),(24,'Nuevo consultorio creado','2024-01-16','10:52:27'),(25,'Nuevo consultorio creado','2024-01-16','10:53:19'),(26,'Nuevo consultorio creado','2024-01-16','10:53:19'),(27,'Nuevo consultorio creado','2024-01-16','10:53:19'),(28,'Consultorio actualizado','2024-01-16','10:53:19'),(29,'Consultorio actualizado','2024-01-16','10:53:19'),(30,'Consultorio actualizado','2024-01-16','10:53:19'),(31,'Consultorio actualizado','2024-01-16','10:53:19'),(32,'Consultorio actualizado','2024-01-16','10:53:19'),(33,'Consultorio actualizado','2024-01-16','10:53:19'),(34,'Consultorio actualizado','2024-01-16','10:53:19'),(35,'Nuevo empleado insertado','2024-01-16','16:56:33'),(36,'Nuevo médico creado','2024-01-16','16:56:33'),(37,'Nuevo empleado insertado','2024-01-16','16:57:17'),(38,'Nuevo médico creado','2024-01-16','16:57:17'),(39,'Nuevo empleado insertado','2024-01-16','16:57:56'),(40,'Nuevo médico creado','2024-01-16','16:57:56'),(41,'Nuevo empleado insertado','2024-01-16','16:58:41'),(42,'Nuevo médico creado','2024-01-16','16:58:41'),(43,'Nuevo empleado insertado','2024-01-16','16:59:27'),(44,'Nuevo médico creado','2024-01-16','16:59:27'),(45,'Nuevo empleado insertado','2024-01-16','17:00:11'),(46,'Nuevo médico creado','2024-01-16','17:00:11'),(47,'Nuevo empleado insertado','2024-01-16','17:02:02'),(48,'Nuevo empleado insertado','2024-01-16','17:04:07'),(49,'Nuevo médico creado','2024-01-16','17:04:07'),(50,'Nuevo empleado insertado','2024-01-16','17:04:46'),(51,'Nuevo médico creado','2024-01-16','17:04:46'),(52,'Nuevo paciente creado','2024-01-16','17:14:27'),(53,'Nuevo paciente creado','2024-01-16','17:27:48'),(54,'Nuevo paciente creado','2024-01-16','17:30:39'),(55,'Nuevo paciente creado','2024-01-16','17:31:36'),(56,'Nuevo paciente creado','2024-01-16','17:33:41'),(57,'Nuevo paciente creado','2024-01-16','17:35:23'),(58,'Nuevo paciente creado','2024-01-16','17:36:16'),(59,'Nuevo paciente creado','2024-01-16','17:37:13'),(60,'Nuevo paciente creado','2024-01-16','17:38:00'),(61,'Nuevo paciente creado','2024-01-16','17:38:45'),(62,'Nuevo paciente creado','2024-01-16','17:39:58'),(63,'Nuevo paciente creado','2024-01-16','17:40:56'),(64,'Nuevo paciente creado','2024-01-16','17:41:44'),(65,'Nuevo paciente creado','2024-01-16','17:42:41'),(66,'Nuevo paciente creado','2024-01-16','17:43:48'),(67,'Nuevo paciente creado','2024-01-16','17:46:57'),(68,'Nuevo paciente creado','2024-01-16','17:47:48'),(69,'Nuevo paciente creado','2024-01-16','17:48:41'),(70,'Nuevo paciente creado','2024-01-16','17:49:04'),(71,'Nuevo paciente creado','2024-01-16','17:51:28'),(72,'Nuevo paciente creado','2024-01-16','17:51:31'),(73,'Nuevo paciente creado','2024-01-16','17:52:14'),(74,'Nuevo paciente creado','2024-01-16','17:53:14'),(75,'Nuevo paciente creado','2024-01-16','17:54:13'),(76,'Nuevo paciente creado','2024-01-16','17:54:59'),(77,'Nuevo paciente creado','2024-01-16','17:55:58'),(78,'Nuevo paciente creado','2024-01-16','17:56:37'),(79,'Nuevo paciente creado','2024-01-16','17:57:21'),(80,'Nuevo paciente creado','2024-01-16','17:57:23'),(81,'Nuevo paciente creado','2024-01-16','17:58:17'),(82,'Nuevo paciente creado','2024-01-16','17:59:17'),(83,'Nuevo paciente creado','2024-01-16','18:00:11'),(84,'Nuevo paciente creado','2024-01-16','18:00:52'),(85,'Nuevo paciente creado','2024-01-16','18:01:15'),(86,'Nuevo paciente creado','2024-01-16','18:01:54'),(87,'Nuevo paciente creado','2024-01-16','18:02:24'),(88,'Nuevo paciente creado','2024-01-16','18:02:55'),(89,'Paciente actualizado','2024-01-16','12:03:28'),(90,'Paciente actualizado','2024-01-16','12:03:46'),(91,'Nuevo paciente creado','2024-01-16','18:05:11'),(92,'Nuevo paciente creado','2024-01-16','18:05:49'),(93,'Nuevo paciente creado','2024-01-16','18:06:27'),(94,'Nuevo paciente creado','2024-01-16','18:07:17'),(95,'Nuevo paciente creado','2024-01-16','18:08:02'),(96,'Nuevo paciente creado','2024-01-16','18:08:54'),(97,'Nuevo paciente creado','2024-01-16','18:09:10'),(98,'Nuevo paciente creado','2024-01-16','18:10:04'),(99,'Paciente actualizado','2024-01-16','12:11:06'),(100,'Medicamento actualizado','2024-01-16','12:15:31'),(101,'Medicamento actualizado','2024-01-16','12:15:31'),(102,'Medicamento actualizado','2024-01-16','12:15:31'),(103,'Medicamento actualizado','2024-01-16','12:15:31'),(104,'Medicamento actualizado','2024-01-16','12:15:31'),(105,'Nuevo medicamento creado','2024-01-16','12:16:07'),(106,'Nuevo medicamento creado','2024-01-16','12:17:11'),(107,'Nuevo medicamento creado','2024-01-16','12:17:34'),(108,'Nuevo medicamento creado','2024-01-16','12:17:55'),(109,'Nuevo medicamento creado','2024-01-16','12:18:18'),(110,'Nuevo medicamento creado','2024-01-16','12:18:53'),(111,'Nuevo medicamento creado','2024-01-16','12:19:21'),(112,'Nuevo medicamento creado','2024-01-16','12:19:45'),(113,'Nuevo medicamento creado','2024-01-16','12:20:10'),(114,'Nuevo medicamento creado','2024-01-16','12:21:00'),(115,'Servicio actualizado','2024-01-16','12:47:40'),(116,'Servicio actualizado','2024-01-16','12:47:40'),(117,'Servicio actualizado','2024-01-16','12:47:40'),(118,'Nuevo medicamento creado','2024-01-16','15:06:33'),(119,'Nuevo medicamento creado','2024-01-16','15:06:33'),(120,'Medicamento actualizado','2024-01-16','15:07:07'),(121,'Nuevo medicamento creado','2024-01-16','15:08:09'),(122,'Nuevo medicamento creado','2024-01-16','15:08:09'),(123,'Nuevo medicamento creado','2024-01-16','15:12:18'),(124,'Nuevo medicamento creado','2024-01-16','15:12:18'),(125,'Nuevo empleado insertado','2024-01-16','21:37:57'),(126,'Nuevo médico creado','2024-01-16','21:37:57'),(127,'Nuevo empleado insertado','2024-01-16','21:38:36'),(128,'Nuevo médico creado','2024-01-16','21:38:36'),(129,'Nuevo empleado insertado','2024-01-16','21:39:18'),(130,'Nuevo médico creado','2024-01-16','21:39:18'),(131,'Nuevo empleado insertado','2024-01-16','21:40:22'),(132,'Nuevo médico creado','2024-01-16','21:40:22'),(133,'Nuevo empleado insertado','2024-01-16','21:40:48'),(134,'Nuevo médico creado','2024-01-16','21:40:48'),(135,'Nuevo empleado insertado','2024-01-16','21:41:16'),(136,'Nuevo médico creado','2024-01-16','21:41:16'),(137,'Nuevo empleado insertado','2024-01-16','21:41:44'),(138,'Nuevo médico creado','2024-01-16','21:41:44'),(139,'Nuevo empleado insertado','2024-01-16','21:42:04'),(140,'Nuevo médico creado','2024-01-16','21:42:04'),(141,'Nuevo empleado insertado','2024-01-16','21:42:24'),(142,'Nuevo médico creado','2024-01-16','21:42:24'),(143,'Nuevo empleado insertado','2024-01-16','21:42:55'),(144,'Nuevo médico creado','2024-01-16','21:42:55'),(145,'Nuevo empleado insertado','2024-01-16','21:43:28'),(146,'Nuevo médico creado','2024-01-16','21:43:28'),(147,'Nuevo empleado insertado','2024-01-16','21:43:56'),(148,'Nuevo médico creado','2024-01-16','21:43:56'),(149,'Nuevo empleado insertado','2024-01-16','21:44:27'),(150,'Nuevo médico creado','2024-01-16','21:44:27'),(151,'Nuevo empleado insertado','2024-01-16','21:44:51'),(152,'Nuevo médico creado','2024-01-16','21:44:51'),(153,'Médico actualizado','2024-01-16','15:46:40'),(154,'Nueva cita creada','2024-01-16','21:48:15'),(155,'Nueva receta creada','2024-01-16','21:48:58'),(156,'Nuevo medicamento recetado creado','2024-01-16','21:48:58'),(157,'Nuevo medicamento creado','2024-01-16','15:50:48'),(158,'Nuevo medicamento creado','2024-01-16','15:50:48'),(159,'Nuevo medicamento creado','2024-01-16','15:53:21'),(160,'Nuevo medicamento creado','2024-01-16','15:54:01'),(161,'Nuevo medicamento creado','2024-01-16','15:54:45'),(162,'Nuevo medicamento creado','2024-01-16','15:55:14'),(163,'Nuevo medicamento creado','2024-01-16','15:56:01'),(164,'Nuevo medicamento creado','2024-01-16','15:56:29'),(165,'Nueva cita creada','2024-01-16','22:02:54'),(166,'Nueva receta creada','2024-01-16','22:04:31'),(167,'Nuevo medicamento recetado creado','2024-01-16','22:04:31'),(168,'Cita actualizada','2024-01-16','22:06:10'),(169,'Nueva cita creada','2024-01-16','22:07:06'),(170,'Nueva cita creada','2024-01-16','22:07:13'),(171,'Nueva cita creada','2024-01-16','22:07:38'),(172,'Cita actualizada','2024-01-16','22:08:00'),(173,'Nuevo empleado insertado','2024-01-16','22:09:40'),(174,'Nuevo médico creado','2024-01-16','22:09:40'),(175,'Cita actualizada','2024-01-16','22:10:44'),(176,'Cita actualizada','2024-01-16','22:11:05'),(177,'Cita actualizada','2024-01-16','22:11:11');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita` (
  `id_cita` int NOT NULL AUTO_INCREMENT,
  `id_medico` int NOT NULL,
  `id_paciente` int NOT NULL,
  `estatus` varchar(30) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cita`),
  KEY `fk_cita_medico` (`id_medico`),
  KEY `fk_cita_paciente` (`id_paciente`),
  CONSTRAINT `fk_cita_medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`),
  CONSTRAINT `fk_cita_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,1,1,'Pendiente','2024-01-18 22:06:00'),(2,1,1,'Atendida','2024-01-10 15:26:32'),(3,1,1,'Atendida','2024-01-10 15:26:32'),(4,1,4,'Cancelada','2024-01-16 22:10:44'),(5,1,2,'Atendida','2024-01-10 15:44:03'),(6,2,2,'Cancelada','2024-01-10 18:08:28'),(7,2,1,'Cancelada','2024-01-11 18:19:38'),(8,1,1,'Cancelada','2024-01-11 19:17:22'),(9,3,8,'Cancelada','2024-01-12 00:51:50'),(10,1,7,'Cancelada','2024-01-12 00:53:02'),(11,1,3,'Cancelada','2024-01-12 00:52:58'),(12,1,3,'Cancelada','2024-01-12 00:53:05'),(13,1,5,'Cancelada','2024-01-12 00:52:59'),(14,2,6,'Cancelada','2024-01-12 00:53:00'),(15,3,8,'Cancelada','2024-01-16 02:11:05'),(16,1,36,'Pendiente','2000-01-01 06:00:00'),(17,1,4,'Cancelada','2024-01-16 22:11:05'),(18,1,1,'Pendiente','2024-01-16 22:07:00'),(19,1,1,'Pendiente','2024-01-18 22:07:00'),(20,1,1,'Pendiente','2024-01-18 22:06:00');
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_cita` AFTER INSERT ON `cita` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Nueva cita creada', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_cita` AFTER UPDATE ON `cita` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Cita actualizada', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `consultorio`
--

DROP TABLE IF EXISTS `consultorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultorio` (
  `id_consultorio` int NOT NULL AUTO_INCREMENT,
  `area` varchar(65) NOT NULL,
  `unidad` varchar(5) NOT NULL,
  PRIMARY KEY (`id_consultorio`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultorio`
--

LOCK TABLES `consultorio` WRITE;
/*!40000 ALTER TABLE `consultorio` DISABLE KEYS */;
INSERT INTO `consultorio` VALUES (1,'Pediatria','1'),(2,'General','2'),(3,'Dermatologia','3'),(4,'Ginecologia','4'),(5,'Neurologia','5'),(6,'Ortopedia','6'),(7,'Urologia','7'),(8,'Oftalmologia','8'),(9,'Pediatria','1'),(10,'General','2'),(11,'General','2');
/*!40000 ALTER TABLE `consultorio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_consultorio` AFTER INSERT ON `consultorio` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Nuevo consultorio creado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_consultorio` AFTER UPDATE ON `consultorio` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Consultorio actualizado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre_empleado` varchar(100) NOT NULL,
  `tipo_empleado` int NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Antonio Martinez',1),(2,'Adrian Gutierrez',2),(3,'Pedro Diaz',1),(4,'Jonathan Villalobos',1),(5,'Brian Suvias',1),(10,'Gaby Suvias',1),(11,'Danger Alto Calibre',1),(12,'NombreEmpleado',1),(13,'Abigail Juarez',1),(14,'Dr. Santiago Ramirez ',1),(15,'Dra. Valeria Herrera ',1),(16,'Dr. Manuel Gonzalez  ',1),(17,'Dra. Sofia Fernandez  ',1),(18,'Dr. Pablo Martinez',1),(19,'Dra. Laura Torres',1),(20,'Dr. Carlos Rodriguez',1),(21,'Dra. Ana Lopez',1),(22,'Dra. Ana Lopez',1),(23,'Dr. Andrea Morales   ',1),(24,'Dr. Galvez',1),(25,'Dr. Daniel Perez',1),(26,'Dr. Carlos Guerrero',1),(27,'Dr. Francisca Medinez',1),(28,'Dr. Pedro Diaz',1),(29,'Dr. Hector Martinez',1),(30,'Dr. Diaz Diaz',1),(31,'Dr. Marco Diaz',1),(32,'Dr. Flor Martinez',1),(33,'Dr. Jessica Perez',1),(34,'Dr. Denise Guevara',1),(35,'Dr. Rubi Flores',1),(36,'Dr. Adrian Chavez',1),(37,'Dr. Teresa Chavez',1),(38,'Dr. Martinez Cruz',1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_empleado` AFTER INSERT ON `empleado` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora) 

    VALUES ('Nuevo empleado insertado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `id_especialidad` int NOT NULL AUTO_INCREMENT,
  `nombre_especialidad` varchar(100) NOT NULL,
  `precio_especialidad` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'Medicia General',1200.00),(2,'Pediatria',2000.00),(3,'Dermatologia',5000.00),(4,'Ginecologia',2500.00),(5,'Neurologia',8000.00),(6,'Ortopedia',3000.00),(7,'Urologia',5000.00),(8,'Oftalmologia',4000.00),(9,'Bariatria',5000.00),(10,'Cardiología',3000.00),(11,'Geriatria',2000.00),(12,'Hematología',1000.00),(13,'Epatología',3000.00),(14,'Nutriología',1000.00),(15,'Psiquiatria',500.00),(16,'Reumatología',1500.00),(17,'Taxicología',1000.00);
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `usuario` int NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `tipo_usuario` int NOT NULL,
  PRIMARY KEY (`id_login`),
  KEY `fk_login_empleado` (`usuario`),
  CONSTRAINT `fk_login_empleado` FOREIGN KEY (`usuario`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,1,'antomac',1),(2,2,'1234',2),(3,3,'1234',1),(4,4,'labra',1),(5,5,'suvias',1),(6,10,'gaby',1),(7,11,'1234',1),(8,12,'Contraseña123',1),(9,14,'santiago',1),(10,15,'valeria',1),(11,16,'manuel',1),(12,17,'sofia',1),(13,18,'pablo',1),(14,19,'laura',1),(15,20,'carlos',1),(16,22,'ana',1),(17,23,'andrea',1),(18,3,'1234',2),(19,24,'galvez',1),(20,25,'daniel',1),(21,26,'carlos',1),(22,27,'medinez',1),(23,28,'pedro',1),(24,29,'hector',1),(25,30,'diaz',1),(26,31,'marco',1),(27,32,'flor',1),(28,33,'jessica',1),(29,34,'denise',1),(30,35,'rubi',1),(31,36,'adrian',1),(32,37,'adrian',1),(33,38,'1234',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `id_medicamento` int NOT NULL AUTO_INCREMENT,
  `nombre_medicamento` varchar(100) NOT NULL,
  `precio_unitario` decimal(15,2) NOT NULL,
  `clasificacion` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  PRIMARY KEY (`id_medicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,'Aspirina',59.00,'Analgesico','1'),(2,'Ibuprofeno',79.00,'Antiinflamatorio','1'),(3,'Paracetamol',200.00,'Analgesico','1'),(4,'Omeprazol',300.00,'Antiacido','1'),(5,'Medicamento caro',1800.00,'Antiviral','1'),(6,'Medicamento barato',10.00,'Antiviral','1'),(7,'Pantoprazol',1000.00,'Antiacido','1'),(8,'Atenolol',500.00,'Betabloqueantr','1'),(9,'Lidocaína',800.00,'Anestésico local','1'),(10,'Hidroxicloroquina',500.00,'Antipalúdico','1'),(11,'Metoclopramida',700.00,'Antiemético','1'),(12,'Loperamida',678.00,'Antidiarreico','1'),(13,'Naproxeno',899.00,'Antiinflamatorio','1'),(14,'Enalapril',90.00,'Inhibidor de la ECA','1'),(15,'Atorvastatina',1000.00,'Estatina','1'),(16,'Furosemida',1400.00,'Diurético','1'),(17,'Meloxicam ',890.00,'Antiinflamatorio','1'),(18,'Vardenafil',500.00,'Inhibidor de la PDE5','1'),(19,'Risperidona',1200.00,' Antipsicótico','1'),(20,'Prednisona',1500.00,'Corticoide','1'),(21,'Clorfeniramina',1700.00,'Antihistamínico','1'),(22,'Hidroclorotiazida',180.00,'Diurético','1'),(23,'Furosemida',180.00,'Diurético','1'),(24,'Metoprolol ',230.00,'Betabloqueante','9'),(25,'Escitalopram ',30.00,'Antidepresivo ','100'),(26,'Ciprofloxacino ',129.00,'Antibiótico','20'),(27,'Alprazolam',230.00,'Ansiolítico ','50'),(28,'Amlodipino ',600.00,'Antihipertensivo','40'),(29,'Valsartán',70.00,'Antihipertensivo ','10'),(30,'Levotiroxina  ',100.00,'Hormona tiroidea ','25');
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_medicamento` AFTER INSERT ON `medicamento` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Nuevo medicamento creado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_medicamento` AFTER UPDATE ON `medicamento` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Medicamento actualizado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicamentorecetado`
--

DROP TABLE IF EXISTS `medicamentorecetado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentorecetado` (
  `id_rmedrec` int NOT NULL AUTO_INCREMENT,
  `id_receta` int NOT NULL,
  `id_medicamento` int NOT NULL,
  PRIMARY KEY (`id_rmedrec`),
  KEY `fk_mere_receta` (`id_receta`),
  KEY `fk_mere_medicamento` (`id_medicamento`),
  CONSTRAINT `fk_mere_medicamento` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamento` (`id_medicamento`),
  CONSTRAINT `fk_mere_receta` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id_receta`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentorecetado`
--

LOCK TABLES `medicamentorecetado` WRITE;
/*!40000 ALTER TABLE `medicamentorecetado` DISABLE KEYS */;
INSERT INTO `medicamentorecetado` VALUES (1,1,1),(2,2,1),(3,3,4),(4,4,5),(5,5,1),(6,6,1),(7,7,1),(8,8,14),(9,9,24);
/*!40000 ALTER TABLE `medicamentorecetado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_medicamentorecetado` AFTER INSERT ON `medicamentorecetado` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Nuevo medicamento recetado creado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_medicamentorecetado` AFTER UPDATE ON `medicamentorecetado` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Medicamento recetado actualizado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `id_medico` int NOT NULL AUTO_INCREMENT,
  `id_especialidad` int NOT NULL,
  `id_empleado` int NOT NULL,
  `nombre_medico` varchar(100) NOT NULL,
  `correo_medico` varchar(100) NOT NULL,
  `telefono_medico` varchar(100) NOT NULL,
  PRIMARY KEY (`id_medico`),
  KEY `fk_medico_especialidad` (`id_especialidad`),
  KEY `fk_medico_empleado` (`id_empleado`),
  CONSTRAINT `fk_medico_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `fk_medico_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id_especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,1,1,'Antonio Martinez','antomac@yotzil.com','1122334455'),(2,1,3,'Pedro Diaz','pedro@diaz.com','1122334455'),(3,1,4,'Jonathan Villalobos','villalobos@labra.com','1122334455'),(9,2,14,'Dr. Santiago Ramirez ','s.ramirez@example.com','(555) 123-4567'),(10,4,15,'Dra. Valeria Herrera ','v.herrera@example.com','552345678'),(11,5,16,'Dr. Manuel Gonzalez  ','m.gonzalez@example.com','(555) 345-6789'),(12,8,17,'Dra. Sofia Fernandez  ','s.fernandez@example.com','(555) 456-7890'),(13,7,18,'Dr. Pablo Martinez','p.martinez@example.com','(555) 567-8901'),(14,6,19,'Dra. Laura Torres','l.torres@example.com',' (555) 678-9012'),(15,4,20,'Dr. Carlos Rodriguez','c.rodriguez@example.com','(555) 789-0123'),(16,8,22,'Dra. Ana Lopez','a.lopez@example.com','(555) 890-1234'),(17,6,23,'Dr. Andrea Morales   ','a.morales@example.com','(555) 901-2345'),(18,1,24,'Dr. Galvez','g.galvez@gmail.com','5523456789'),(19,1,25,'Dr. Daniel Perez','d.perez@perez','5578091234'),(20,2,26,'Dr. Carlos Guerrero','c.guerrero@gmail.com','5508091234'),(21,3,27,'Dr. Francisca Medinez','f.medinez@medinez.com','5508091334'),(22,4,28,'Dr. Pedro Diaz','p.diaz@hotmail.com','5508001334'),(23,5,29,'Dr. Hector Martinez','h.martinez@hotmail.com','5518001334'),(24,6,30,'Dr. Diaz Diaz','d.diaz@hotmail.com','5512091334'),(26,8,32,'Dr. Flor Martinez','f.martinez@hotmail.com','5512091334'),(27,8,33,'Dr. Jessica Perez','j.perez@hotmail.com','5512091334'),(28,8,34,'Dr. Denise Guevara','d.guevara@hotmail.com','5512091334'),(29,1,35,'Dr. Rubi Flores','r.flores@hotmail.com','5512091334'),(30,1,36,'Dr. Adrian Chavez','a.chavez@hotmail.com','5512099834'),(31,2,37,'Dr. Teresa Chavez','t.chavez@hotmail.com','5512339834');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_medico` AFTER INSERT ON `medico` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Nuevo médico creado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_medico` AFTER UPDATE ON `medico` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Médico actualizado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nombre_paciente` varchar(100) NOT NULL,
  `fecha_nac` date NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Alejandro Alonso','1998-06-15','Tlalnepantla 123','1122334455','alonso@alejandro.com'),(2,'Alejandro Trejo','1997-09-02','Rincon de la mountain','1122334455','doblea@gmail.com'),(3,'Gerardo Martinez','1998-01-01','Izatapalapa 123','1122334466','fenix@gmail.com'),(4,'Gustavo Mateo','1998-03-16','El rosario 123','2233445566','mateo@gmail.com'),(5,'Stephanie Gutierrez','2005-03-31','Escutia Zapata','1234678900','gutierrez@hotmail.com'),(6,'Gaby Suvias','1998-08-09','gaby@suvias.com','5544332211','gaby'),(7,'Eduardo Martinez','2010-06-08','Iztapalapa 547','7789841357','emartinez@gmail.com'),(8,'Julio','2024-01-05','Juan Escutia','1122334455','a@a.a'),(10,'Ana Lopez','1999-08-12','Av uno 123','89212222','ana.l@gmail.com'),(11,'María Rodríguez','1974-03-06','Carrera 789, Barrio Feliz','555345','maria.rodriguez@example.com'),(12,'Andrés López','1985-06-12','Calle Alegre 789, Villa Esperanza','5111111122','andres.lopez@example.com'),(13,'Laura Sánchez','2000-04-03','Av. del Sol 456, Residencial Oasis','5589999999','laura.sanchez@example.com'),(15,'Roberto Pérez','1953-07-05','Calle Central 789, Barrio Tranquilo','5598282222','roberto.perez@example.com'),(16,'Carmen Rodríguez','1965-09-08','Av. Primavera 123, Ciudad Jardín','5512323232','carmen.rodriguez@example.com'),(17,'Jorge Gómez','2010-06-30','Calle del Bosque 456, Los Pinos','5579878912','jorge.gomez@example.com'),(18,'Patricia Fernández','1992-03-05','Av. de las Flores 789, Bella Vista','5511232222','patricia.fernandez@example.com'),(19,'Gabriel Díaz','1997-07-05','Calle de la Luna 456, Barrio Lunar','5518291112','gabriel.diaz@example.com'),(20,'María José Torres','1998-02-06','Av. del Mar 123, Costa Azul','5587892322','mariajose.torres@example.com'),(21,'Alejandro Ruiz','1977-08-17','Calle del Mar 456, Playa Serena','5589273823','alejandro.ruiz@example.com'),(22,'Sofía Vargas','2001-09-02','Carrera del Sol 789, Villa Brillante','5582993829','sofia.vargas@example.com'),(23,'Martín Molina','2003-05-04','Av. Principal 123, Pueblo Encantado','5589122233','martin.molina@example.com'),(24,'Carolina Ortega','2005-09-15','Calle del Oro 456, Residencial Dorado','5512829922','carolina.ortega@example.com'),(25,'Diego Herrera','1999-07-16','Av. de la Montaña 789, Vista Hermosa','5589829929','diego.herrera@example.com'),(26,'Valentina Castro','1945-03-17','Calle de la Playa 123, Maravillas','5517289300','valentina.castro@example.com'),(27,'Sebastián Medina','1977-06-12','Carrera del Viento 456, Barrio Tranquilo','5528338329','sebastian.medina@example.com'),(28,'Adriana Ramírez','1977-06-12','Carrera del Viento 456, Barrio Tranquilo','5528338329','adriana.ramirez@example.com'),(29,'Eduardo Soto','1999-04-17','Calle de los Sueños 123, Sueñoville','5598920022','eduardo.soto@example.com'),(30,'Eduardo Soto','1999-04-17','Calle de los Sueños 123, Sueñoville','5598920022','eduardo2.soto@example.com'),(31,'Alejandra Gutiérrez','2006-04-17','Av. de los Sueños 456, Ciudad Soñada','5512222111','alejandra.gutierrez@example.com'),(32,'Daniel Navarro','2001-05-16','Carrera del Arco Iris 789, Arcoíris','5512222111','daniel.navarro@example.com'),(33,'Isabel Jiménez','1986-05-12','Calle de la Fantasía 123, Fantasía','5564647833','isabel.jimenez@example.com'),(34,'Sergio Flores  ','1986-06-02','Av. de la Imaginación 456, Imaginaria','5564647832','sergio.flores@example.com'),(35,'Natalia Reyes','1991-07-23','Calle de los Cuentos 789, Cuentoville','5564643343','natalia.reyes@example.com'),(36,'Francisco Ortega','1991-09-18','Av. de las Maravillas 123, Maravillosa','5564990000','francisco.ortega@example.com'),(37,'Elena Castro','1988-09-18','Carrera de las Mariposas 456, Mariposa','5589939333','elena.castro@example.com'),(38,'Elena Castro','1988-09-18','Carrera de las Mariposas 456, Mariposa','5589939333','elena.castro@example.com'),(39,'Juanita Herrera','1999-02-18','Calle de los Deseos 789, Deseoville','5539987877','juanita.herrera@example.com'),(40,'Miguel Torres','1990-08-12','Av. del Unicornio 123, Unicorniaville','5539987999','miguel.torres@example.com'),(41,'Paula Mendoza','1967-11-18',' Carrera del Dragón 456, Dragón City','5539922211','paula.mendoza@example.com'),(42,'Ramón Gómez','1967-11-18','Calle de la Magia 789, Magilandia','5532211211','ramon.gomez@example.com'),(43,'Silvia Navarro','1967-11-18','Calle de la Magia 789, Magilandia','553221123','silvia.navarro@example.com'),(44,'Ricardo Vargas','2008-11-27','Carrera de las Sombras 789, Sombra City','553221123','ricardo.vargas@example.com'),(45,'Marina Fernández','2000-11-21','Calle de los Enigmas 123, Enigmaville','5532245555','ricardo2.vargas@example.com'),(46,'Marina Fernández','1978-11-21','Calle de los Enigmas 123, Enigmaville','5533454990','marina.fernandez@example.com'),(47,'Alejandro Ruiz','1999-04-12','Av Siempre Viva 79','5512121212','ale.ruiz@example.com'),(48,'Valeria Díaz','2001-04-18','Carrera del Laberinto 789, Laberintoville','5512122333','valeria.diaz@example.com'),(49,'Oscar Sánchez','1998-04-18','Calle del Espejo 123, Espejoville','5512289002','oscar.sanchez@example.com'),(50,'Clara Martínez     ','1977-12-03','Av. de los Enigmas 456, Enigmaville','5512222222','clara.martinez@example.com'),(51,'Luisa Ramírez','1990-11-26','Carrera del Arco Iris 789, Arcoíris','5558888833','luisa.ramirez@example.com'),(52,'Pedro Gutiérrez','2008-06-26','Calle de la Imaginación 123, Imaginaria','5558834893','pedro.gutierrez@example.com'),(53,'Juan Gutiérrez','2008-06-26','Calle de la Imaginación 123, Imaginaria','5553892211','juan.gutierrez@example.com'),(54,'Marta Soto','1998-02-01','Av. del Unicornio 456, Unicorniaville','5535607783','marta.soto@example.com');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_paciente` AFTER INSERT ON `paciente` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Nuevo paciente creado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_paciente` AFTER UPDATE ON `paciente` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Paciente actualizado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recepcionista`
--

DROP TABLE IF EXISTS `recepcionista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recepcionista` (
  `id_recepcionista` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int NOT NULL,
  `nombre_recepcionista` varchar(100) NOT NULL,
  `email_recepcionista` varchar(100) NOT NULL,
  PRIMARY KEY (`id_recepcionista`),
  KEY `fk_recepcionista_empleado` (`id_empleado`),
  CONSTRAINT `fk_recepcionista_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcionista`
--

LOCK TABLES `recepcionista` WRITE;
/*!40000 ALTER TABLE `recepcionista` DISABLE KEYS */;
INSERT INTO `recepcionista` VALUES (2,2,'Adrian Gutierrez','yotzil@gmail.com'),(3,2,'Recepcionista ','perez@gmail.com');
/*!40000 ALTER TABLE `recepcionista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta` (
  `id_receta` int NOT NULL AUTO_INCREMENT,
  `id_cita` int NOT NULL,
  `diagnostico` text NOT NULL,
  `med_prescrito` text NOT NULL,
  PRIMARY KEY (`id_receta`),
  KEY `fk_receta_cita` (`id_cita`),
  CONSTRAINT `fk_receta_cita` FOREIGN KEY (`id_cita`) REFERENCES `cita` (`id_cita`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,1,'Gripa','Chiquitolina'),(2,1,'Apenas y llego vivo','Chiquitolina'),(3,11,'Esta malo','Medicamento facil'),(4,10,'Enfermo','Medicamento caro'),(5,13,'enfermito','Chiquitolina'),(6,9,'enfermito','Chiquitolina'),(7,1,'','Chiquitolina'),(8,16,'Presento sintomas de fiebre y presión alta. ','Enalapril'),(9,17,'Llego con vomito','Metoprolol');
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_receta` AFTER INSERT ON `receta` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Nueva receta creada', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_receta` AFTER UPDATE ON `receta` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Receta actualizada', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(100) NOT NULL,
  `costo_servicio` decimal(15,2) NOT NULL,
  `id_cita` int DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `servicio_FK` (`id_cita`),
  CONSTRAINT `servicio_FK` FOREIGN KEY (`id_cita`) REFERENCES `cita` (`id_cita`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Inyeccion',100.00,1),(2,'Analisis de sangre',200.00,NULL),(3,'Radiografia de rayos X',200.00,NULL),(4,'Resonancia Magnetica',200.00,1),(5,'Cateter',299.00,13);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_servicio` AFTER INSERT ON `servicio` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Nuevo servicio creado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_servicio` AFTER UPDATE ON `servicio` FOR EACH ROW BEGIN

    INSERT INTO bitacora (accion, fecha, hora)

    VALUES ('Servicio actualizado', CURRENT_DATE(), CURRENT_TIME());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `turnomedico`
--

DROP TABLE IF EXISTS `turnomedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnomedico` (
  `id_turno` int NOT NULL AUTO_INCREMENT,
  `id_consultorio` int NOT NULL,
  `id_medico` int NOT NULL,
  `dia_semana` varchar(20) NOT NULL,
  `hora_inicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hora_fin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_turno`),
  KEY `fk_turno_consultorio` (`id_consultorio`),
  KEY `fk_turno_medico` (`id_medico`),
  CONSTRAINT `fk_turno_consultorio` FOREIGN KEY (`id_consultorio`) REFERENCES `consultorio` (`id_consultorio`),
  CONSTRAINT `fk_turno_medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnomedico`
--

LOCK TABLES `turnomedico` WRITE;
/*!40000 ALTER TABLE `turnomedico` DISABLE KEYS */;
INSERT INTO `turnomedico` VALUES (1,1,1,'Miercoles','2024-01-10 14:00:00','2024-01-11 02:00:00'),(2,1,2,'Jueves','2024-01-11 14:00:00','2024-01-11 14:00:00');
/*!40000 ALTER TABLE `turnomedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'yotzil'
--
/*!50003 DROP PROCEDURE IF EXISTS `InsertarCitaCompleta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCitaCompleta`(

	IN p_nombre_medico VARCHAR(100),

    IN p_correo_medico VARCHAR(100),

    IN p_telefono_medico VARCHAR(100),

    IN p_nombre_paciente VARCHAR(100),

    IN p_fecha_cita TIMESTAMP,

    IN p_estatus_cita VARCHAR(30)

)
begin

	 DECLARE v_id_medico INT;

    DECLARE v_id_paciente INT;



    -- Insertar en medico

    INSERT INTO medico (nombre_medico, correo_medico, telefono_medico)

    VALUES (p_nombre_medico, p_correo_medico, p_telefono_medico);

    SET v_id_medico = LAST_INSERT_ID();



    -- Insertar en paciente

    INSERT INTO paciente (nombre_paciente, fecha_nac, direccion, telefono, correo)

    VALUES (p_nombre_paciente, '2000-01-01', 'Dirección de ejemplo', '1234567890', 'correo@ejemplo.com');

    SET v_id_paciente = LAST_INSERT_ID();



    -- Insertar en cita

    INSERT INTO cita (id_medico, id_paciente, estatus, fecha)

    VALUES (v_id_medico, v_id_paciente, p_estatus_cita, p_fecha_cita);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarMedicoCompleto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarMedicoCompleto`(

	IN p_nombre_empleado VARCHAR(100),

    IN p_tipo_empleado INT,

    IN p_nombre_medico VARCHAR(100),

    IN p_correo_medico VARCHAR(100),

    IN p_telefono_medico VARCHAR(100),

    IN p_nombre_especialidad VARCHAR(100)

)
begin

	  DECLARE v_id_empleado INT;

    DECLARE v_id_especialidad INT;



    -- Insertar en empleado

    INSERT INTO empleado (nombre_empleado, tipo_empleado)

    VALUES (p_nombre_empleado, p_tipo_empleado);

    SET v_id_empleado = LAST_INSERT_ID();



    -- Insertar en especialidad

    INSERT INTO especialidad (nombre_especialidad, precio_especialidad)

    VALUES (p_nombre_especialidad, 0); -- Ajusta el valor según tus necesidades

    SET v_id_especialidad = LAST_INSERT_ID();



    -- Insertar en medico

    INSERT INTO medico (id_especialidad, id_empleado, nombre_medico, correo_medico, telefono_medico)

    VALUES (v_id_especialidad, v_id_empleado, p_nombre_medico, p_correo_medico, p_telefono_medico);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login_medico`(

	IN p_nombre_empleado VARCHAR(100),

    IN p_tipo_empleado INT,

    IN p_usuario INT,

    IN p_contrasena VARCHAR(100),

    IN p_tipo_usuario INT,

    IN p_id_especialidad INT,

    IN p_nombre_medico VARCHAR(100),

    IN p_correo_medico VARCHAR(100),

    IN p_telefono_medico VARCHAR(100)

)
begin

	

	DECLARE v_id_empleado INT;

    DECLARE v_id_medico INT;



    -- Insertar en la tabla empleado

    INSERT INTO empleado (nombre_empleado, tipo_empleado) VALUES (p_nombre_empleado, p_tipo_empleado);

    SET v_id_empleado = LAST_INSERT_ID();



    -- Insertar en la tabla login

    INSERT INTO login (usuario, contrasena, tipo_usuario) VALUES (v_id_empleado, p_contrasena, p_tipo_usuario);



    -- Insertar en la tabla medico

    INSERT INTO medico (id_especialidad, id_empleado, nombre_medico, correo_medico, telefono_medico)

    VALUES (p_id_especialidad, v_id_empleado, p_nombre_medico, p_correo_medico, p_telefono_medico);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-17 12:33:40
