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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Computador',2000),(2,'Impressora',800),(3,'Mouse',80),(4,'Mesa de Escritório',300),(5,'Mesa de Escritório',300),(6,'Toalha',50),(7,'Colcha',50),(8,'TV True Color',1200),(9,'Roçadeira',800),(10,'Abajur',100),(11,'Pendente',180),(12,'Luminária',120),(13,'Produto 12',10),(14,'Produto 13',10),(15,'Produto 14',10),(16,'Produto 15',10),(17,'Produto 16',10),(18,'Produto 17',10),(19,'Produto 18',10),(20,'Produto 19',10),(21,'Produto 20',10),(22,'Produto 21',10),(23,'Produto 22',10),(24,'Produto 23',10),(25,'Produto 24',10),(26,'Produto 25',10),(27,'Produto 26',10),(28,'Produto 27',10),(29,'Produto 28',10),(30,'Produto 29',10),(31,'Produto 30',10),(32,'Produto 31',10),(33,'Produto 32',10),(34,'Produto 34',10),(35,'Produto 35',10),(36,'Produto 36',10),(37,'Produto 37',10),(38,'Produto 38',10),(39,'Produto 39',10),(40,'Produto 40',10),(41,'Produto 41',10),(42,'Produto 42',10),(43,'Produto 43',10),(44,'Produto 44',10),(45,'Produto 45',10),(46,'Produto 46',10),(47,'Produto 47',10),(48,'Produto 48',10),(49,'Produto 49',10),(50,'Produto 50',10),(51,'Produto50',10),(52,'Produto51',10),(53,'Produto52',10),(54,'Produto53',10),(55,'Produto54',10),(56,'Produto55',10),(57,'Produto56',10),(58,'Produto57',10),(59,'Produto58',10),(60,'Produto59',10),(61,'Produto60',10),(62,'Produto61',10),(63,'Produto62',10),(64,'Produto63',10),(65,'Produto64',10),(66,'Produto65',10),(67,'Produto66',10),(68,'Produto67',10),(69,'Produto68',10),(70,'Produto69',10),(71,'Produto70',10),(72,'Produto71',10),(73,'Produto72',10),(74,'Produto73',10),(75,'Produto74',10),(76,'Produto75',10),(77,'Produto76',10),(78,'Produto77',10),(79,'Produto78',10),(80,'Produto79',10),(81,'Produto80',10),(82,'Produto81',10),(83,'Produto82',10),(84,'Produto83',10),(85,'Produto84',10),(86,'Produto85',10),(87,'Produto86',10),(88,'Produto87',10),(89,'Produto88',10),(90,'Produto89',10),(91,'Produto90',10),(92,'Produto91',10),(93,'Produto92',10),(94,'Produto93',10),(95,'Produto94',10),(96,'Produto95',10),(97,'Produto96',10),(98,'Produto97',10),(99,'Produto98',10),(100,'Produto99',10);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
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
