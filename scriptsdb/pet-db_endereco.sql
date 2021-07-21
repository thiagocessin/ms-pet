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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `cidade_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8b1kcb3wucapb8dejshyn5fsx` (`cidade_id`),
  KEY `FK8s7ivtl4foyhrfam9xqom73n9` (`cliente_id`),
  CONSTRAINT `FK8b1kcb3wucapb8dejshyn5fsx` FOREIGN KEY (`cidade_id`) REFERENCES `cidade` (`id`),
  CONSTRAINT `FK8s7ivtl4foyhrfam9xqom73n9` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Jardim','38383863','Apto 303','Rua Flores','300',1,1),(2,'Centro','45443863','Sala 800','Av Matos','105',2,1),(4,NULL,'0987643','Apto 678','Rua das Acácias','234',2,6),(5,NULL,'0987643','Apto 50','Rua das Camélias','234',2,7),(6,NULL,'0987643','Apto 50','Rua das Camélias','234',2,8),(7,NULL,'0987643','Apto 50','Rua das Camélias','234',2,9),(8,'Jardim','38383863','Apto 303','Rua Flores','300',1,10),(9,'Centro','45443863','Sala 800','Av Matos','105',2,10),(10,'Jardim','38383863','Apto 303','Rua Flores','300',1,11),(11,'Centro','45443863','Sala 800','Av Matos','105',2,11),(12,'Jardim','38383863','Apto 303','Rua Flores','300',1,12),(13,'Centro','45443863','Sala 800','Av Matos','105',2,12),(14,'Jardim','38383863','Apto 303','Rua Flores','300',1,13),(15,'Centro','45443863','Sala 800','Av Matos','105',2,13),(16,'Jardim','38383863','Apto 303','Rua Flores','300',1,14),(17,'Centro','45443863','Sala 800','Av Matos','105',2,14),(18,'Jardim','38383863','Apto 303','Rua Flores','300',1,15),(19,'Centro','45443863','Sala 800','Av Matos','105',2,15),(20,'Jardim','38383863','Apto 303','Rua Flores','300',1,16),(21,'Centro','45443863','Sala 800','Av Matos','105',2,16),(22,'Jardim','38383863','Apto 303','Rua Flores','300',1,17),(23,'Centro','45443863','Sala 800','Av Matos','105',2,17),(24,'Jardim','38383863','Apto 303','Rua Flores','300',1,18),(25,'Centro','45443863','Sala 800','Av Matos','105',2,18),(26,'Jardim','38383863','Apto 303','Rua Flores','300',1,19),(27,'Centro','45443863','Sala 800','Av Matos','105',2,19),(28,'Jardim','38383863','Apto 303','Rua Flores','300',1,20),(29,'Centro','45443863','Sala 800','Av Matos','105',2,20);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
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
