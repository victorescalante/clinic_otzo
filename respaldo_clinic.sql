-- MySQL dump 10.13  Distrib 8.0.13, for osx10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: clinic
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `maternal_last_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (1,'Victor','Test','Test');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (2,'Carlos','Test','Test');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (3,'Jose','Test','Test');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (4,'Arturo','Test','Test');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (5,'Pedro','Test','Test');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (6,'Victor','Escalante','Test');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (7,'hola','hola','hola');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (12,'Pedro','Teo','Arma');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (13,'Nombre','Apellido','Mat');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (14,'Uno ','mas','mas');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (15,'Uno ','mas','mas2');
INSERT INTO `users` (`id`, `name`, `last_name`, `maternal_last_name`) VALUES (16,'¿?','432432','??$·$?');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-04 14:50:42
