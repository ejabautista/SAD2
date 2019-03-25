-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: sad2_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ID/Passport` varchar(45) DEFAULT NULL,
  `nationlity` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `birthdate` varchar(45) DEFAULT NULL,
  `birthplace` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dailysalesreport`
--

DROP TABLE IF EXISTS `dailysalesreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dailysalesreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportDate` date NOT NULL,
  `revenue` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reportDate_UNIQUE` (`reportDate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dailysalesreport`
--

LOCK TABLES `dailysalesreport` WRITE;
/*!40000 ALTER TABLE `dailysalesreport` DISABLE KEYS */;
INSERT INTO `dailysalesreport` VALUES (1,'2019-03-20',0.00),(2,'2019-03-24',0.00);
/*!40000 ALTER TABLE `dailysalesreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses report`
--

DROP TABLE IF EXISTS `expenses report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `expenses report` (
  `id` int(11) NOT NULL,
  `idSupplier` varchar(45) DEFAULT NULL,
  `idPurchaseOrder` varchar(45) DEFAULT NULL,
  `expense` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses report`
--

LOCK TABLES `expenses report` WRITE;
/*!40000 ALTER TABLE `expenses report` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses_report`
--

DROP TABLE IF EXISTS `expenses_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `expenses_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSupplier` varchar(45) DEFAULT NULL,
  `expense` varchar(45) DEFAULT NULL,
  `dateRecorded` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses_report`
--

LOCK TABLES `expenses_report` WRITE;
/*!40000 ALTER TABLE `expenses_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest reservation form`
--

DROP TABLE IF EXISTS `guest reservation form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `guest reservation form` (
  `id` int(11) NOT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest reservation form`
--

LOCK TABLES `guest reservation form` WRITE;
/*!40000 ALTER TABLE `guest reservation form` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest reservation form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_reservation_form`
--

DROP TABLE IF EXISTS `guest_reservation_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `guest_reservation_form` (
  `id` int(11) NOT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_reservation_form`
--

LOCK TABLES `guest_reservation_form` WRITE;
/*!40000 ALTER TABLE `guest_reservation_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_reservation_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `sell_price` decimal(5,2) NOT NULL,
  `cost_price` decimal(5,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem`
--

LOCK TABLES `menuitem` WRITE;
/*!40000 ALTER TABLE `menuitem` DISABLE KEYS */;
INSERT INTO `menuitem` VALUES (1,'Water',25.00,15.00,1),(2,'Coke',35.00,25.00,1),(3,'Beer',90.00,78.00,1),(4,'Cookies',10.00,51.00,1),(5,'Mango',100.00,75.00,0),(6,'Banana',101.00,75.00,0),(7,'Apple',210.00,15.00,1),(8,'Milk',10.00,5.00,0),(10,'Coffee',32.00,12.00,0),(11,'Nadir Bread',13.00,12.00,0),(12,'Cokes',22.00,23.00,1),(14,'Nad',13.00,11.00,1),(16,'Nads',11.00,12.00,1),(17,'Coco',12.00,13.00,1),(18,'Avocado',14.00,12.00,1),(19,'Tubig',13.00,12.00,1);
/*!40000 ALTER TABLE `menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minventory`
--

DROP TABLE IF EXISTS `minventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `minventory` (
  `idmInventory` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `expiration_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idmInventory`),
  KEY `fk_mInventory_product1_idx` (`product_id`),
  CONSTRAINT `fk_mInventory_product1` FOREIGN KEY (`product_id`) REFERENCES `menuitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minventory`
--

LOCK TABLES `minventory` WRITE;
/*!40000 ALTER TABLE `minventory` DISABLE KEYS */;
INSERT INTO `minventory` VALUES (1,2,7,1,'2019-03-25 00:00:00'),(2,3,1,1,'2019-03-25 00:00:00'),(3,4,4,1,'2019-03-25 00:00:00'),(7,5,0,0,'2019-03-25 00:00:00'),(8,4,1423,1,'0020-00-00 00:00:00'),(9,4,14,1,'0000-00-00 00:00:00'),(10,4,9,1,'System.Windows.Forms.DateTimePicker, Value: 25/03/2019 9:17:21 PM'),(11,6,0,1,'System.Windows.Forms.DateTimePicker, Value: 25/03/2019 9:17:21 PM'),(12,4,18,1,'0000-00-00'),(13,4,4,1,'26/03/2019 9:27:54 PM'),(14,4,4,1,'System.Windows.Forms.DateTimePicker, Value: 20/06/2019 9:28:51 PM'),(15,4,2,1,'2019-03-25'),(16,4,3,1,'2019-03-26');
/*!40000 ALTER TABLE `minventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mstkin`
--

DROP TABLE IF EXISTS `mstkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mstkin` (
  `idmstkin` int(11) NOT NULL AUTO_INCREMENT,
  `mInventory_idmInventory` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`idmstkin`),
  KEY `fk_mstkin_mInventory1_idx` (`mInventory_idmInventory`),
  CONSTRAINT `fk_mstkin_mInventory1` FOREIGN KEY (`mInventory_idmInventory`) REFERENCES `minventory` (`idmInventory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstkin`
--

LOCK TABLES `mstkin` WRITE;
/*!40000 ALTER TABLE `mstkin` DISABLE KEYS */;
/*!40000 ALTER TABLE `mstkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mstkout`
--

DROP TABLE IF EXISTS `mstkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mstkout` (
  `idmstkout` int(11) NOT NULL AUTO_INCREMENT,
  `idmInventory` int(11) NOT NULL,
  `stockout_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `mstkoutcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmstkout`),
  KEY `fk_mstkout_mInventory1_idx` (`idmInventory`),
  CONSTRAINT `fk_mstkout_mInventory1` FOREIGN KEY (`idmInventory`) REFERENCES `minventory` (`idmInventory`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstkout`
--

LOCK TABLES `mstkout` WRITE;
/*!40000 ALTER TABLE `mstkout` DISABLE KEYS */;
INSERT INTO `mstkout` VALUES (23,2,'2019-03-24 16:21:39',3,NULL),(24,2,'2019-03-25 15:06:52',1,NULL),(25,11,'2019-03-25 22:32:50',4,NULL);
/*!40000 ALTER TABLE `mstkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupancy report`
--

DROP TABLE IF EXISTS `occupancy report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `occupancy report` (
  `ID` int(11) NOT NULL,
  `roomNumber` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `occupied` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupancy report`
--

LOCK TABLES `occupancy report` WRITE;
/*!40000 ALTER TABLE `occupancy report` DISABLE KEYS */;
/*!40000 ALTER TABLE `occupancy report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupancy_report`
--

DROP TABLE IF EXISTS `occupancy_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `occupancy_report` (
  `ID` int(11) NOT NULL,
  `roomNumber` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `occupied` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupancy_report`
--

LOCK TABLES `occupancy_report` WRITE;
/*!40000 ALTER TABLE `occupancy_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `occupancy_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_menuitem`
--

DROP TABLE IF EXISTS `order_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_menuitem` (
  `order_id` int(11) NOT NULL,
  `menuitem_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_id`,`menuitem_id`),
  KEY `fk_order_has_menuitem_menuitem1_idx` (`menuitem_id`),
  KEY `fk_order_has_menuitem_order1_idx` (`order_id`),
  CONSTRAINT `fk_order_has_menuitem_menuitem1` FOREIGN KEY (`menuitem_id`) REFERENCES `menuitem` (`id`),
  CONSTRAINT `fk_order_has_menuitem_order1` FOREIGN KEY (`order_id`) REFERENCES `order_receipt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_menuitem`
--

LOCK TABLES `order_menuitem` WRITE;
/*!40000 ALTER TABLE `order_menuitem` DISABLE KEYS */;
INSERT INTO `order_menuitem` VALUES (1,1,1),(1,2,1),(1,3,2),(1,4,2),(2,1,1),(2,2,1),(2,3,2),(2,4,2),(3,1,1),(3,2,1),(3,3,2),(3,4,2),(4,1,1),(4,2,1),(4,3,2),(4,4,2),(5,1,1),(5,2,1),(5,3,2),(5,4,2),(6,1,1),(6,2,1),(7,2,2),(8,4,1),(9,1,5),(10,2,1),(11,2,1),(11,3,1),(11,4,1),(12,4,3);
/*!40000 ALTER TABLE `order_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_receipt`
--

DROP TABLE IF EXISTS `order_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dailysalesreport_id` int(11) NOT NULL,
  `orderTime` time NOT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_dailysalesreport1_idx` (`dailysalesreport_id`),
  CONSTRAINT `fk_order_dailysalesreport1` FOREIGN KEY (`dailysalesreport_id`) REFERENCES `dailysalesreport` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_receipt`
--

LOCK TABLES `order_receipt` WRITE;
/*!40000 ALTER TABLE `order_receipt` DISABLE KEYS */;
INSERT INTO `order_receipt` VALUES (1,1,'21:15:40',110.00),(2,1,'21:15:43',110.00),(3,1,'21:15:45',110.00),(4,1,'21:15:46',110.00),(5,1,'21:15:46',110.00),(6,1,'21:16:25',60.00),(7,1,'21:18:02',70.00),(8,1,'21:20:14',10.00),(9,1,'13:15:14',125.00),(10,2,'13:51:30',60.00),(11,2,'13:52:13',60.00),(12,2,'17:13:00',30.00);
/*!40000 ALTER TABLE `order_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_has_supplier`
--

DROP TABLE IF EXISTS `product_has_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_has_supplier` (
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  KEY `fk_product_has_supplier_supplier1_idx` (`supplier_id`),
  KEY `fk_product_has_supplier_product1_idx` (`product_id`),
  CONSTRAINT `fk_product_has_supplier_product1` FOREIGN KEY (`product_id`) REFERENCES `menuitem` (`id`),
  CONSTRAINT `fk_product_has_supplier_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_has_supplier`
--

LOCK TABLES `product_has_supplier` WRITE;
/*!40000 ALTER TABLE `product_has_supplier` DISABLE KEYS */;
INSERT INTO `product_has_supplier` VALUES (18,4),(18,5),(18,5),(18,4),(18,5),(18,4);
/*!40000 ALTER TABLE `product_has_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `order_date` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
INSERT INTO `purchase_order` VALUES (19,1,'325.00','2019-03-25 00:31:56',1),(20,1,'20.00','2019-03-25 00:32:09',1),(21,1,'165.00','2019-03-25 00:32:30',1),(22,1,'15.00','2019-03-25 16:09:17',1),(23,1,'15.00','2019-03-25 16:25:51',1),(24,1,'50.00','2019-03-25 16:26:15',1),(25,1,'20.00','2019-03-25 16:27:55',1),(26,1,'20.00','2019-03-25 16:31:32',1),(27,1,'10.00','2019-03-25 16:36:13',1),(28,1,'500.00','2019-03-25 16:37:30',1),(29,1,'15.00','2019-03-25 16:42:54',1),(30,1,'15.00','2019-03-25 21:09:41',1),(31,1,'10.00','2019-03-25 21:14:08',1),(32,1,'20.00','2019-03-25 21:25:16',1),(33,1,'20.00','2019-03-25 21:25:25',1),(34,1,'20.00','2019-03-25 21:27:09',1),(35,1,'10.00','2019-03-25 21:28:44',1),(36,1,'204.00','2019-03-25 22:33:07',2),(37,1,'153.00','2019-03-25 22:33:22',1);
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_line`
--

DROP TABLE IF EXISTS `purchase_order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `purchase_order_line` (
  `POL_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(22,2) NOT NULL,
  `subtotal` decimal(22,2) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `stocked_in` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`POL_id`),
  KEY `fk_purchase_order_line_purchase_order1_idx` (`purchase_order_id`),
  KEY `fk_purchase_order_line_product1_idx` (`product_id`),
  CONSTRAINT `fk_purchase_order_line_product1` FOREIGN KEY (`product_id`) REFERENCES `menuitem` (`id`),
  CONSTRAINT `fk_purchase_order_line_purchase_order1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_line`
--

LOCK TABLES `purchase_order_line` WRITE;
/*!40000 ALTER TABLE `purchase_order_line` DISABLE KEYS */;
INSERT INTO `purchase_order_line` VALUES (18,19,4,5.00,25.00,1,5,1,4),(19,19,6,75.00,300.00,1,4,1,5),(20,20,4,5.00,20.00,1,4,1,4),(21,21,4,5.00,15.00,1,3,1,4),(22,21,6,75.00,150.00,1,2,0,5),(23,22,4,5.00,15.00,1,3,1,4),(24,23,4,5.00,15.00,1,3,1,4),(25,24,4,5.00,50.00,1,10,1,4),(26,25,4,5.00,20.00,1,4,1,4),(27,26,4,5.00,20.00,1,4,1,4),(28,27,4,5.00,10.00,1,2,1,4),(29,28,4,5.00,500.00,1,100,1,4),(30,29,4,5.00,15.00,1,3,1,4),(31,30,4,5.00,15.00,1,3,1,4),(32,31,4,5.00,10.00,1,2,1,4),(33,32,4,5.00,20.00,1,4,1,4),(34,33,4,5.00,20.00,1,4,1,4),(35,34,4,5.00,20.00,1,4,1,4),(36,35,4,5.00,10.00,1,2,1,4),(37,36,4,51.00,204.00,0,4,0,4),(38,37,4,51.00,153.00,1,3,1,4);
/*!40000 ALTER TABLE `purchase_order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `Statement_Of_Account_id` int(11) DEFAULT NULL,
  `guest_reservation form_id` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `checkInDate` varchar(45) DEFAULT NULL,
  `checkOutDate` varchar(45) DEFAULT NULL,
  `occupied` tinyint(4) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Reservation_Statement Of Account1_idx` (`Statement_Of_Account_id`),
  KEY `fk_reservation_guest reservation form1_idx` (`guest_reservation form_id`),
  KEY `fk_reservation_room1_idx` (`room_id`),
  KEY `fk_reservation_customer1_idx` (`customer_id`),
  CONSTRAINT `fk_Reservation_Statement Of Account1` FOREIGN KEY (`Statement_Of_Account_id`) REFERENCES `statement_of_account` (`id`),
  CONSTRAINT `fk_reservation_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_reservation_guest reservation form1` FOREIGN KEY (`guest_reservation form_id`) REFERENCES `guest_reservation_form` (`id`),
  CONSTRAINT `fk_reservation_room1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomNumber` varchar(45) DEFAULT NULL,
  `roomType` varchar(45) DEFAULT NULL,
  `floorLevel` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `roomRate` float DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `singleBeds` varchar(45) DEFAULT NULL,
  `doubleBeds` varchar(45) DEFAULT NULL,
  `occupied` tinytext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roomNumber_UNIQUE` (`roomNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact_number` int(11) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `staffcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'gabriel','pil','gabpil',90909,NULL,'admin','admin',0,'1998-06-18 00:00:00',NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statement_of_account`
--

DROP TABLE IF EXISTS `statement_of_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `statement_of_account` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `terms` varchar(45) DEFAULT NULL,
  `bill_to` varchar(45) DEFAULT NULL,
  `tin` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `numberSOA` int(11) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `typeOfPayment` varchar(45) DEFAULT NULL,
  `dateIssued` varchar(45) DEFAULT NULL,
  `workername` varchar(45) DEFAULT NULL,
  `Daily _sales_Report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Statement Of Account_Daily Sales Report1_idx` (`Daily _sales_Report_id`),
  CONSTRAINT `fk_Statement Of Account_Daily Sales Report1` FOREIGN KEY (`Daily _sales_Report_id`) REFERENCES `dailysalesreport` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statement_of_account`
--

LOCK TABLES `statement_of_account` WRITE;
/*!40000 ALTER TABLE `statement_of_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `statement_of_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(45) DEFAULT NULL,
  `supplierPhone` varchar(45) DEFAULT NULL,
  `supplierFax` varchar(45) DEFAULT NULL,
  `supplierAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (4,'Ade',NULL,NULL,NULL),(5,'dadzy',NULL,NULL,NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sad2_db'
--

--
-- Dumping routines for database 'sad2_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25 23:32:19
