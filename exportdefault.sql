-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: microservices3
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `address` (
  `customerID` int(11) NOT NULL,
  `address` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `password` varchar(140) NOT NULL,
  `address` varchar(60) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `admin` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (35,'David','aacd684f8a41afad2eccd5e82209843e',NULL,'davidmather@live.ie','');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `orderdetailsID` int(10) unsigned NOT NULL,
  `orderID` int(10) unsigned NOT NULL,
  `productID` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY (`orderdetailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerID` varchar(45) NOT NULL,
  `saledate` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `message` longtext,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(139) NOT NULL DEFAULT '"',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(7,2) NOT NULL DEFAULT '99999.99',
  `image` varchar(130) NOT NULL DEFAULT '"',
  `rating` int(1) NOT NULL DEFAULT '5',
  `type` varchar(45) NOT NULL DEFAULT 'default',
  `brewer` varchar(45) NOT NULL DEFAULT 'default',
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Brewdog Nanny State Can 33cl',25,3.00,'Brewdog-Nanny-State-Can_33cl.webp',4,'can','brewdog','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(2,'Bulmers cider 1 litre',12,7.00,'bulmers-cider-1litre.webp',3,'bottle','bulmers','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(3,'Bulmers cider beer cans 440ml',32,4.00,'bulmers-cider-beer-cans-440ml.webp',2,'can','bulmers','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(4,'Eight Degrees Brewing The Full Irish 330ml',21,5.00,'Eight-Degrees-Brewing-The-Full-Irish-330ml.webp',4,'bottle','eight degrees','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(5,'Guinness draught beer cans 440ml',34,4.00,'guinness-draught-beer-cans-440ml.webp',3,'can','guiness','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(6,'Hansa Pilsener Cans 330ml',32,4.00,'Hansa_Pilsener_Cans_24_X_330ml.webp',4,'can','hansa','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(7,'Haywards 5000 Beer Can 500ml',35,3.00,'Haywards-5000-Beer-Can-500ml.webp',3,'can','haywards','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(8,'Kilkenny beer bottles 33cl',31,6.00,'kilkenny-beer-bottles-33cl.webp',2,'bottle','kilkenny','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(9,'Kilkenny draught beer cans 440ml',31,4.00,'kilkenny-draught-beer-cans-440ml.webp',5,'can','kilkenny','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(10,'Magners cider 6 pack 330ml',32,2.00,'magners-cider-6-pack-330ml.webp',3,'bottle','magners','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(11,'Murphys draught beer cans 440ml',21,3.00,'murphys-draught-beer-cans-440ml.webp',4,'can','murphys','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(12,'Rockshore bottle 330ml',44,6.00,'Rockshore-bottle-330ml.webp',3,'bottle','rockshore','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(13,'Smithwicks irish red single 330ml',44,7.00,'smithwicks-irish-red---single-330ml.webp',3,'bottle','smithwicks','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.'),(14,'Wexford draught beer cans 440ml',22,5.00,'wexford-draught-beer-cans-440ml.webp',5,'can','wexford','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales suscipit congue. Morbi maximus sem nec turpis vulputate, egestas fermentum velit varius. Suspendisse tortor dui, sagittis non massa imperdiet, tempor semper nisl. Sed eu massa imperdiet, consectetur arcu sit amet, blandit nulla. Sed a faucibus elit. Vestibulum luctus nibh orci. Mauris efficitur eros luctus nunc dignissim mattis. Sed vitae mauris et ante porttitor vehicula. Donec augue libero, elementum vel ante sed, dictum tincidunt lectus.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-23  0:00:41
