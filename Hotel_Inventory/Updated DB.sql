-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sad2_newdb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sad2_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sad2_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sad2_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `sad2_db` ;

-- -----------------------------------------------------
-- Table `sad2_db`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`customer` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `ID_Passport` VARCHAR(45) NULL DEFAULT NULL,
  `nationlity` VARCHAR(45) NULL DEFAULT NULL,
  `gender` VARCHAR(45) NULL DEFAULT NULL,
  `birthdate` VARCHAR(45) NULL DEFAULT NULL,
  `birthplace` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`daily_sales_report`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`daily_sales_report` (
  `id` INT(11) NOT NULL,
  `idOrder` VARCHAR(45) NULL DEFAULT NULL,
  `idReservation` VARCHAR(45) NULL DEFAULT NULL,
  `repDate` DATETIME NULL DEFAULT NULL,
  `revenueOrder` DECIMAL(10,0) NULL DEFAULT NULL,
  `revenueReservations` DECIMAL(10,0) NULL DEFAULT NULL,
  `remakrs` VARCHAR(45) NULL DEFAULT NULL,
  `typeOfPayment` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`expenses_report`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`expenses_report` (
  `id` INT(11) NOT NULL,
  `idSupplier` VARCHAR(45) NULL DEFAULT NULL,
  `idPurchaseOrder` VARCHAR(45) NULL DEFAULT NULL,
  `expense` VARCHAR(45) NULL DEFAULT NULL,
  `dateRecorded` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`menu_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`menu_item` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `desc` VARCHAR(45) NULL DEFAULT NULL,
  `price` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`order` (
  `id` INT(11) NOT NULL,
  `idFoodItem` INT(11) NULL DEFAULT NULL,
  `orderNumber` VARCHAR(45) NULL DEFAULT NULL,
  `totalPrice` VARCHAR(45) NULL DEFAULT NULL,
  `listOfFoodItems` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`food_item_has_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`food_item_has_order` (
  `order_id` INT(11) NOT NULL,
  `menu_item_id` INT(11) NOT NULL,
  INDEX `fk_food_item_has_order_order1_idx` (`order_id` ASC) VISIBLE,
  INDEX `fk_food_item_has_order_menu_item1_idx` (`menu_item_id` ASC) VISIBLE,
  CONSTRAINT `fk_food_item_has_order_menu_item1`
    FOREIGN KEY (`menu_item_id`)
    REFERENCES `sad2_db`.`menu_item` (`id`),
  CONSTRAINT `fk_food_item_has_order_order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `sad2_db`.`order` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`guest_reservation_form`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`guest_reservation_form` (
  `id` INT(11) NOT NULL,
  `payment` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`manage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`manage` (
  `id` INT(11) NOT NULL,
  `managername` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`product` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `price` VARCHAR(45) NULL DEFAULT NULL,
  `description` VARCHAR(45) NULL DEFAULT NULL,
  `supplier_id` VARCHAR(45) NULL DEFAULT NULL,
  `supplier_Expenses_Report_idtable1` INT(11) NULL DEFAULT NULL,
  `dateCreated` DATETIME NULL DEFAULT NULL,
  `productcol` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`minventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`minventory` (
  `idmInventory` INT(11) NOT NULL,
  `mInventorycol` VARCHAR(45) NULL DEFAULT NULL,
  `product_id` INT(11) NOT NULL,
  `stock_in_date` DATETIME NULL DEFAULT NULL,
  `stock_out_date` DATETIME NULL DEFAULT NULL,
  `quantity` INT(11) NULL DEFAULT NULL,
  `status` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idmInventory`),
  INDEX `fk_mInventory_product1_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_mInventory_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `sad2_db`.`product` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`mstkin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`mstkin` (
  `idmstkin` INT(11) NOT NULL,
  `mInventory_idmInventory` INT(11) NOT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idmstkin`),
  INDEX `fk_mstkin_mInventory1_idx` (`mInventory_idmInventory` ASC) VISIBLE,
  CONSTRAINT `fk_mstkin_mInventory1`
    FOREIGN KEY (`mInventory_idmInventory`)
    REFERENCES `sad2_db`.`minventory` (`idmInventory`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`mstkout`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`mstkout` (
  `idmstkout` INT(11) NOT NULL,
  `mInventory_idmInventory` INT(11) NOT NULL,
  `stockout_date` DATETIME NULL DEFAULT NULL,
  `quantity` INT(11) NULL DEFAULT NULL,
  `mstkoutcol` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idmstkout`),
  INDEX `fk_mstkout_mInventory1_idx` (`mInventory_idmInventory` ASC) VISIBLE,
  CONSTRAINT `fk_mstkout_mInventory1`
    FOREIGN KEY (`mInventory_idmInventory`)
    REFERENCES `sad2_db`.`minventory` (`idmInventory`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`occupancy_report`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`occupancy_report` (
  `ID` INT(11) NOT NULL,
  `roomNumber` VARCHAR(45) NULL DEFAULT NULL,
  `date` VARCHAR(45) NULL DEFAULT NULL,
  `occupied` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`order_receipt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`order_receipt` (
  `id` INT(11) NOT NULL,
  `receiptNumber` INT(11) NULL DEFAULT NULL,
  `totalPrice` INT(11) NULL DEFAULT NULL,
  `Daily_Sales_Report_id` INT(11) NOT NULL,
  `Order_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Order Receipt_Daily Sales Report1_idx` (`Daily_Sales_Report_id` ASC) VISIBLE,
  INDEX `fk_Order Receipt_Order1_idx` (`Order_id` ASC) VISIBLE,
  CONSTRAINT `fk_Order Receipt_Daily Sales Report1`
    FOREIGN KEY (`Daily_Sales_Report_id`)
    REFERENCES `sad2_db`.`daily_sales_report` (`id`),
  CONSTRAINT `fk_Order Receipt_Order1`
    FOREIGN KEY (`Order_id`)
    REFERENCES `sad2_db`.`order` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`purchase_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`purchase_order` (
  `id` INT(11) NOT NULL,
  `purchaseOrderNumber` VARCHAR(45) NULL DEFAULT NULL,
  `requestingDepartment` VARCHAR(45) NULL DEFAULT NULL,
  `quantity` VARCHAR(45) NULL DEFAULT NULL,
  `unit` VARCHAR(45) NULL DEFAULT NULL,
  `Manage_id` INT(11) NULL DEFAULT NULL,
  `product_id` INT(11) NULL DEFAULT NULL,
  `expenses_report_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Purchase Order_Manage1_idx` (`Manage_id` ASC) VISIBLE,
  INDEX `fk_purchase_order_list_product1_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_purchase order_expenses report1_idx` (`expenses_report_id` ASC) VISIBLE,
  CONSTRAINT `fk_Purchase Order_Manage1`
    FOREIGN KEY (`Manage_id`)
    REFERENCES `sad2_db`.`manage` (`id`),
  CONSTRAINT `fk_purchase order_expenses report1`
    FOREIGN KEY (`expenses_report_id`)
    REFERENCES `sad2_db`.`expenses_report` (`id`),
  CONSTRAINT `fk_purchase_order_list_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `sad2_db`.`product` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`statement_of_account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`statement_of_account` (
  `id` INT(11) NOT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  `terms` VARCHAR(45) NULL DEFAULT NULL,
  `bill_to` VARCHAR(45) NULL DEFAULT NULL,
  `tin` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `numberSOA` INT(11) NULL DEFAULT NULL,
  `discount` VARCHAR(45) NULL DEFAULT NULL,
  `typeOfPayment` VARCHAR(45) NULL DEFAULT NULL,
  `dateIssued` VARCHAR(45) NULL DEFAULT NULL,
  `workername` VARCHAR(45) NULL DEFAULT NULL,
  `Daily _sales_Report_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Statement Of Account_Daily Sales Report1_idx` (`Daily _sales_Report_id` ASC) VISIBLE,
  CONSTRAINT `fk_Statement Of Account_Daily Sales Report1`
    FOREIGN KEY (`Daily _sales_Report_id`)
    REFERENCES `sad2_db`.`daily_sales_report` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`room` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `roomNumber` VARCHAR(45) NULL DEFAULT NULL,
  `roomType` VARCHAR(45) NULL DEFAULT NULL,
  `floorLevel` VARCHAR(45) NULL DEFAULT NULL,
  `description` VARCHAR(45) NULL DEFAULT NULL,
  `roomRate` FLOAT NULL DEFAULT NULL,
  `dateCreated` DATETIME NULL DEFAULT NULL,
  `singleBeds` VARCHAR(45) NULL DEFAULT NULL,
  `doubleBeds` VARCHAR(45) NULL DEFAULT NULL,
  `occupied` TINYTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `roomNumber_UNIQUE` (`roomNumber` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`reservation` (
  `id` INT(11) NOT NULL,
  `Statement_Of_Account_id` INT(11) NULL DEFAULT NULL,
  `guest_reservation form_id` INT(11) NULL DEFAULT NULL,
  `room_id` INT(11) NOT NULL,
  `customer_id` INT(11) NOT NULL,
  `description` VARCHAR(45) NULL DEFAULT NULL,
  `checkInDate` VARCHAR(45) NULL DEFAULT NULL,
  `checkOutDate` VARCHAR(45) NULL DEFAULT NULL,
  `occupied` TINYINT(4) NULL DEFAULT NULL,
  `price` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Reservation_Statement Of Account1_idx` (`Statement_Of_Account_id` ASC) VISIBLE,
  INDEX `fk_reservation_guest reservation form1_idx` (`guest_reservation form_id` ASC) VISIBLE,
  INDEX `fk_reservation_room1_idx` (`room_id` ASC) VISIBLE,
  INDEX `fk_reservation_customer1_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Reservation_Statement Of Account1`
    FOREIGN KEY (`Statement_Of_Account_id`)
    REFERENCES `sad2_db`.`statement_of_account` (`id`),
  CONSTRAINT `fk_reservation_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `sad2_db`.`customer` (`id`),
  CONSTRAINT `fk_reservation_guest reservation form1`
    FOREIGN KEY (`guest_reservation form_id`)
    REFERENCES `sad2_db`.`guest_reservation_form` (`id`),
  CONSTRAINT `fk_reservation_room1`
    FOREIGN KEY (`room_id`)
    REFERENCES `sad2_db`.`room` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sad2_db`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sad2_db`.`supplier` (
  `id` INT(11) NOT NULL,
  `supplierName` VARCHAR(45) NULL DEFAULT NULL,
  `supplierPhone` VARCHAR(45) NULL DEFAULT NULL,
  `supplierFax` VARCHAR(45) NULL DEFAULT NULL,
  `supplierAddress` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
