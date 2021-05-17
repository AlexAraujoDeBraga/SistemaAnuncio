-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sis_anuncio
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `anuncio`
--

DROP TABLE IF EXISTS `anuncio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anuncio` (
  `nome_anuncio` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `cliente` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `data_inicio` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `data_termino` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `investimento_dia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncio`
--

LOCK TABLES `anuncio` WRITE;
/*!40000 ALTER TABLE `anuncio` DISABLE KEYS */;
INSERT INTO `anuncio` VALUES ('Anúncio Curso de Java','Udemy','2021-05-01','2021-05-10',10),('Anúncio Curso de Node JS','Node','2021-05-05','2021-05-20',5),('Curso de Spring Boot','Oracle','2021-05-03','2021-05-21',10),('Anúncio Curso de Golang','Google','2021-05-03','2021-05-22',2),('Anúncio X','X','2021-05-04','2021-05-27',5.5),('Anúncio Curso Javascript','Node','2021-05-04','2021-05-05',2.3),('Anúncio Curso de Angular','Google','2021-05-04','2021-05-04',10),('Anúncio Laravel','Laravel','2021-05-01','2021-05-30',0.5),('Curso de React Js','Facebook','2021-05-05','2021-05-06',7),('Curso de Android','Google','2021-05-16','2021-05-22',3),('Anúncio Curso de Vue Js','Vue','2021-05-01','2021-05-16',1.2),('Anúncio de kotlin','Udemy','2021-05-07','2021-05-31',0.75),('Curso Dia','Dia','2021-05-16','2021-05-16',0.5),('Curso de Svelte','Svelte','2021-05-16','2021-05-20',15.6),('Curso de Django','Python','2021-05-05','2021-05-16',0.75);
/*!40000 ALTER TABLE `anuncio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 22:55:31
