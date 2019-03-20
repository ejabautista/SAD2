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
  `ID_Passport` varchar(45) DEFAULT NULL,
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
-- Table structure for table `daily_sales_report`
--

DROP TABLE IF EXISTS `daily_sales_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `daily_sales_report` (
  `id` int(11) NOT NULL,
  `idOrder` varchar(45) DEFAULT NULL,
  `idReservation` varchar(45) DEFAULT NULL,
  `repDate` datetime DEFAULT NULL,
  `revenueOrder` decimal(10,0) DEFAULT NULL,
  `revenueReservations` decimal(10,0) DEFAULT NULL,
  `remakrs` varchar(45) DEFAULT NULL,
  `typeOfPayment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_sales_report`
--

LOCK TABLES `daily_sales_report` WRITE;
/*!40000 ALTER TABLE `daily_sales_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_sales_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses_report`
--

DROP TABLE IF EXISTS `expenses_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `expenses_report` (
  `id` int(11) NOT NULL,
  `idSupplier` varchar(45) DEFAULT NULL,
  `idPurchaseOrder` varchar(45) DEFAULT NULL,
  `expense` varchar(45) DEFAULT NULL,
  `dateRecorded` datetime DEFAULT NULL,
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
-- Table structure for table `food_item_has_order`
--

DROP TABLE IF EXISTS `food_item_has_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_item_has_order` (
  `order_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  KEY `fk_food_item_has_order_order1_idx` (`order_id`),
  KEY `fk_food_item_has_order_menu_item1_idx` (`menu_item_id`),
  CONSTRAINT `fk_food_item_has_order_menu_item1` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`id`),
  CONSTRAINT `fk_food_item_has_order_order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_item_has_order`
--

LOCK TABLES `food_item_has_order` WRITE;
/*!40000 ALTER TABLE `food_item_has_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_item_has_order` ENABLE KEYS */;
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
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manage` (
  `id` int(11) NOT NULL,
  `managername` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `desc` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (0,'qwer','qwert','99');
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minventory`
--

DROP TABLE IF EXISTS `minventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `minventory` (
  `idmInventory` int(11) NOT NULL,
  `mInventorycol` varchar(45) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `stock_in_date` datetime DEFAULT NULL,
  `stock_out_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmInventory`),
  KEY `fk_mInventory_product1_idx` (`product_id`),
  CONSTRAINT `fk_mInventory_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minventory`
--

LOCK TABLES `minventory` WRITE;
/*!40000 ALTER TABLE `minventory` DISABLE KEYS */;
INSERT INTO `minventory` VALUES (0,'qwer',1,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `minventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mstkin`
--

DROP TABLE IF EXISTS `mstkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mstkin` (
  `idmstkin` int(11) NOT NULL,
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
  `idmstkout` int(11) NOT NULL,
  `mInventory_idmInventory` int(11) NOT NULL,
  `stockout_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `mstkoutcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmstkout`),
  KEY `fk_mstkout_mInventory1_idx` (`mInventory_idmInventory`),
  CONSTRAINT `fk_mstkout_mInventory1` FOREIGN KEY (`mInventory_idmInventory`) REFERENCES `minventory` (`idmInventory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstkout`
--

LOCK TABLES `mstkout` WRITE;
/*!40000 ALTER TABLE `mstkout` DISABLE KEYS */;
/*!40000 ALTER TABLE `mstkout` ENABLE KEYS */;
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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `idFoodItem` int(11) DEFAULT NULL,
  `orderNumber` varchar(45) DEFAULT NULL,
  `totalPrice` varchar(45) DEFAULT NULL,
  `listOfFoodItems` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_receipt`
--

DROP TABLE IF EXISTS `order_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_receipt` (
  `id` int(11) NOT NULL,
  `receiptNumber` int(11) DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `Daily_Sales_Report_id` int(11) NOT NULL,
  `Order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Order Receipt_Daily Sales Report1_idx` (`Daily_Sales_Report_id`),
  KEY `fk_Order Receipt_Order1_idx` (`Order_id`),
  CONSTRAINT `fk_Order Receipt_Daily Sales Report1` FOREIGN KEY (`Daily_Sales_Report_id`) REFERENCES `daily_sales_report` (`id`),
  CONSTRAINT `fk_Order Receipt_Order1` FOREIGN KEY (`Order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_receipt`
--

LOCK TABLES `order_receipt` WRITE;
/*!40000 ALTER TABLE `order_receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `supplier_id` varchar(45) DEFAULT NULL,
  `supplier_Expenses_Report_idtable1` int(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `productcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL,
  `purchaseOrderNumber` varchar(45) DEFAULT NULL,
  `requestingDepartment` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `Manage_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `expenses_report_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Purchase Order_Manage1_idx` (`Manage_id`),
  KEY `fk_purchase_order_list_product1_idx` (`product_id`),
  KEY `fk_purchase order_expenses report1_idx` (`expenses_report_id`),
  CONSTRAINT `fk_Purchase Order_Manage1` FOREIGN KEY (`Manage_id`) REFERENCES `manage` (`id`),
  CONSTRAINT `fk_purchase order_expenses report1` FOREIGN KEY (`expenses_report_id`) REFERENCES `expenses_report` (`id`),
  CONSTRAINT `fk_purchase_order_list_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
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
  CONSTRAINT `fk_Statement Of Account_Daily Sales Report1` FOREIGN KEY (`Daily _sales_Report_id`) REFERENCES `daily_sales_report` (`id`)
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
  `id` int(11) NOT NULL,
  `supplierName` varchar(45) DEFAULT NULL,
  `supplierPhone` varchar(45) DEFAULT NULL,
  `supplierFax` varchar(45) DEFAULT NULL,
  `supplierAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
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

-- Dump completed on 2019-03-20 11:28:56
