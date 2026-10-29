-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sts
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id_ticket` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_cierre` datetime DEFAULT NULL,
  `descripcion` text NOT NULL,
  `diagnostico` text,
  `traslado_taller` tinyint(1) DEFAULT '0',
  `calificacion` int DEFAULT NULL,
  `id_estado` int NOT NULL,
  `id_equipo` int NOT NULL,
  `id_aprendiz` int NOT NULL,
  `id_coordinador` int DEFAULT NULL,
  `id_soporte` int DEFAULT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `id_estado` (`id_estado`),
  KEY `id_equipo` (`id_equipo`),
  KEY `id_aprendiz` (`id_aprendiz`),
  KEY `id_coordinador` (`id_coordinador`),
  KEY `id_soporte` (`id_soporte`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados_ticket` (`id_estado`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`),
  CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`id_aprendiz`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`id_coordinador`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`id_soporte`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `tickets_chk_1` CHECK (((`calificacion` >= 1) and (`calificacion` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-29  8:18:30
