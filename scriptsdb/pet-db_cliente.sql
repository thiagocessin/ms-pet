-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: spring-boot-example
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf_ou_cnpj` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'12315444','mariabdossantos@teste.com','Maria Borges dos Santos',1,NULL,NULL),(4,'74634526789','joao@gmail.com','João da Silva',1,NULL,NULL),(6,'87463526781','maria@gmail.com','Maria Josefina da Silva',1,NULL,NULL),(7,'84952651096','julia@gmail.com','Júlia Alves',1,NULL,NULL),(8,'99091829044','roberto@gmail.com','Roberto Alves',1,NULL,NULL),(9,'99091829044','armando1@gmail.com','Armando Alves',1,NULL,NULL),(10,'11238837635','tsilva@gmail.com','Thiago Silva',1,'$2a$10$c4wyHYhXtyZ9xnNtNlomEevcsfuOK8kqx5t0qHj6GXo5v5zNrwT6i',NULL),(11,'51526208040','anacosta3@gmail.com','Ana Costa',1,'$2a$10$s9JnAuqlglbtnply6pcPj.4O2Tp7ND4pFgy900PEBCcwjtt2txOnq',NULL),(12,'75764174040','analcost3a@gmail.com','Ana Luisa',1,'$2a$10$uP2hpntEiksEoqRz0Wq9oOZImx36VmGmj7xqFRMVNHU5T57ZjC/Sq',NULL),(13,'75764174040','anal5costa@gmail.com','Ana Luisa',1,'$2a$10$0oGSj5td//hPABjF6pPeO.8Nlla7cCcEjhqcOfZbF4wYAZBbOMLSm',NULL),(14,'64733613083','anatcabral@gmail.com','Ana Cabral',1,'$2a$10$k51yd5DQJXMcuw4GbF/rQ.r3o6QLZgEsxaq3tdfO0fBU7wElrIvjS',NULL),(15,'64733613083','anacabral@gmail.com','Ana Cabral',1,'$2a$10$S1ccCPCSJHJ/N0lKyQvXg./iX8ciFHAicJlBL6Jeh9PUlI8zxC0Ne',NULL),(16,'64733613083','thiagoacessin25@gmail.com','Ana Cabral',1,'$2a$10$IWsUatvHc7xTmd1TzNDWyexl.MZt6fzc.N9TV6P5XOQ1c.U2DMrvq',NULL),(17,'64733613083','thiagoacessin@gmail.com','Ana Cabral',1,'$2a$10$/O2KAaGir1GPHVK2SXggheHcfGca8N.D2nZR7v9gehk9RROerXapm',NULL),(18,'64733613083','thiagoacessin2@gmail.com','Thiago Cessin',1,'$2a$10$sfif8e/OtEEw5WGpTont.eSeU5eaqku2x7F/Y6PkxVUjv9KUgTkU2',NULL),(19,'64733613083','userpadrao@gmail.com','UserPadrao',1,'$2a$10$ey/LHpPci25LiqfI5l7i5OSIlhmCLWQvzB.5iMNFl3ONwOb.VYdwK',NULL),(20,'64733613083','useradmin@gmail.com','UserAdmin',1,'$2a$10$mxwgT2HvZNCm2vreorLYLO1A10nZN1EmQqAw.pJeQUSW0rgZBcPFO','https://tcessin-spring-boot-ionic.s3.sa-east-1.amazonaws.com/img4.jpg');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-21  9:23:30
