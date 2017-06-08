-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: bhlkmt
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Dumping data for table `ComponentProduct`
--

LOCK TABLES `ComponentProduct` WRITE;
/*!40000 ALTER TABLE `ComponentProduct` DISABLE KEYS */;
INSERT INTO `ComponentProduct` VALUES (1,'CPU',1,4),(4,'Mainboard',2,3),(7,'RAM',3,2),(10,'CASE',4,4),(13,'PSU',5,5),(16,'SSD',6,6),(19,'HDD',7,4),(22,'VGA',8,2),(24,'ODD',9,5),(27,'LCD',10,7),(2,'CPU',1,2),(3,'CPU',1,2),(6,'Mainboard',2,3),(8,'RAM',3,3),(9,'RAM',3,3),(11,'CASE',4,3),(12,'CASE',4,3),(14,'PSU',5,3),(15,'PSU',5,3),(17,'SSD',6,3),(18,'SSD',6,3),(20,'HDD',7,3),(21,'HDD',7,3),(23,'VGA',8,3),(25,'ODD',9,3),(26,'ODD',9,3),(28,'LCD',10,3),(29,'LCD',10,3),(5,'Mainboard',2,2);
/*!40000 ALTER TABLE `ComponentProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ComponentType`
--

LOCK TABLES `ComponentType` WRITE;
/*!40000 ALTER TABLE `ComponentType` DISABLE KEYS */;
INSERT INTO `ComponentType` VALUES (1,'TYPE001','CPU'),(2,'TYPE002','Mainboard'),(3,'TYPE003','RAM'),(4,'TYPE004','CASE'),(5,'TYPE005','PSU'),(6,'TYPE006','SSD'),(7,'TYPE007','HDD'),(8,'TYPE008','VGA'),(9,'TYPE009','ODD'),(10,'TYPE0010','Màn Hình LCD');
/*!40000 ALTER TABLE `ComponentType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'HCM','CUS001','Nguyễn Văn Tạ','tanv@gmail.com','1254896578'),(2,'BH','CUS002','Nguyễn Văn Tạ','tanv@gmail.com','5646546545'),(3,'DN','CUS003','Nguyễn Thị Lái','laint@gmail.com','4265437632'),(4,'HN','CUS004','Nguyễn Trần Xôi','xoint@gmail.com','6548549345'),(5,'BD','CUS005','Nguyễn Lê','len@gmail.com','4378353265'),(6,'DL','CUS006','Trần Văn Tân','tantv@gmail.com','2334523636'),(7,'KH','CUS007','Lê Văn Tí','tilv@gmail.com','3245435216'),(8,'YB','CUS008','Quách Văn Tạ','taqv@gmail.com','7643845653'),(9,'NY','CUS009','Phan Trung Hiếu','hieupt@gmail.com','5234523347'),(10,'abcddsa','CUS999','Michael Jackson','jackson@gmail.com','646433453');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (2,'BH1','1995-03-04 07:00:00','locnt@gmail.com','EMP002','Nguyễn Thành Lộc','Nam','','123456789','2017-01-01 07:00:00',2,2),(1,'BH','1995-05-06 00:00:00','tamnt@gmail.com','EMP001','Nguyễn Thành Tâm','Nam','','123456789','2017-01-01 00:00:00',1,1),(3,'BH','1995-07-08 00:00:00','nguyennhk@gmail.com','EMP003','Nguyễn Hoàng Kim Nguyên','Nam','','123456789','2017-01-01 00:00:00',3,3),(4,'RIP','1993-02-01 07:00:00','jackson@gmail.com','EMP4','Michael Jackson','Nam','','43278618423','2017-06-03 07:00:00',6,5);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ImportInvoice`
--

LOCK TABLES `ImportInvoice` WRITE;
/*!40000 ALTER TABLE `ImportInvoice` DISABLE KEYS */;
INSERT INTO `ImportInvoice` VALUES (1,'2015-03-05 00:00:00','Phiếu nhập hàng ngày 5-3-2015',0,'IMP001','2015-06-01 00:00:00',140000000.0000,140000000.0000,1,3,1),(2,'2016-05-02 00:00:00','Phiếu nhập hàng ngày 2-5-2016',0,'IMP002','2017-08-01 00:00:00',300000000.0000,300000000.0000,2,1,2),(3,'2017-01-01 00:00:00','Phiếu nhập hàng ngày 1-1-2017',0,'IMP003','2017-03-01 00:00:00',500000000.0000,500000000.0000,3,2,3),(4,'2016-05-02 00:00:00','Phiếu nhập hàng ngày 2-5-2016',0,'IMP004','2017-08-01 00:00:00',300000000.0000,300000000.0000,2,5,4),(5,'2017-01-01 00:00:00','Phiếu nhập hàng ngày 1-1-2017',0,'IMP005','2017-03-01 00:00:00',500000000.0000,500000000.0000,3,4,5);
/*!40000 ALTER TABLE `ImportInvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ImportInvoiceDetails`
--

LOCK TABLES `ImportInvoiceDetails` WRITE;
/*!40000 ALTER TABLE `ImportInvoiceDetails` DISABLE KEYS */;
INSERT INTO `ImportInvoiceDetails` VALUES (1,4300000.0000,10,43000000.0000,1,1),(2,4300000.0000,10,43000000.0000,2,1),(3,4300000.0000,10,43000000.0000,3,1),(4,4300000.0000,10,43000000.0000,4,1),(5,4300000.0000,10,43000000.0000,5,1),(6,10700000.0000,10,107000000.0000,1,4),(7,10700000.0000,10,107000000.0000,2,4),(8,10700000.0000,10,107000000.0000,3,4),(9,10700000.0000,10,107000000.0000,4,4),(10,10700000.0000,10,107000000.0000,5,4),(11,1550000.0000,10,15500000.0000,1,7),(12,1550000.0000,10,15500000.0000,2,7),(13,1550000.0000,10,15500000.0000,3,7),(14,1550000.0000,10,15500000.0000,4,7),(15,1550000.0000,10,15500000.0000,5,7),(16,1650000.0000,10,16500000.0000,1,10),(17,1650000.0000,10,16500000.0000,2,10),(18,1650000.0000,10,16500000.0000,3,10),(19,1650000.0000,10,16500000.0000,4,10),(20,1650000.0000,10,16500000.0000,5,10),(21,2000000.0000,10,20000000.0000,1,13),(22,2000000.0000,10,20000000.0000,2,13),(23,2000000.0000,10,20000000.0000,3,13),(24,2000000.0000,10,20000000.0000,4,13),(25,2000000.0000,10,20000000.0000,5,13);
/*!40000 ALTER TABLE `ImportInvoiceDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Manufacture`
--

LOCK TABLES `Manufacture` WRITE;
/*!40000 ALTER TABLE `Manufacture` DISABLE KEYS */;
INSERT INTO `Manufacture` VALUES (11,'MAN001','Acer'),(2,'MAN002','Asus'),(3,'MAN003','Dell'),(4,'MAN004','Intel'),(5,'MAN005','Gigabyte'),(6,'MAN006','NVIDIA'),(7,'MAN007','Razer');
/*!40000 ALTER TABLE `Manufacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Position`
--

LOCK TABLES `Position` WRITE;
/*!40000 ALTER TABLE `Position` DISABLE KEYS */;
INSERT INTO `Position` VALUES (1,'Admin'),(2,'Giám Đốc'),(3,'Quản Lý'),(4,'Nhân Viên'),(5,'Khách Hàng'),(6,'Bảo Vệ');
/*!40000 ALTER TABLE `Position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (9,'null','',750000.0000,'RAM003','Kingston HyperX Fury 4GB ( 1x4GB ) Gaming Series Bus 1600 - DDR3',36),(8,'null','',1350000.0000,'RAM002','Gskill RIPJAWS X Gaming Series 8GB ( 2x4GB ) DDR3 Bus 1866',36),(7,'null','',1550000.0000,'RAM001','Corsair Vengeance 8GB ( 1x8GB ) DDR3 bus 1600 cas 10',36),(6,'null','',8300000.0000,'MAI003','Gigabyte X99-Ultra Gaming - LGA 2011-V3 Intel X99',36),(5,NULL,'',4060000.0000,'MAI002','ASUS ROG STRIX Z270H GAMING-LGA1151',0),(4,'null','',10700000.0000,'MAI001','ASUS ROG MAXIMUS IX FORMULAR Z270 - LGA 1151',36),(3,'null','',25800000.0000,'CPU003','Intel Core I7-6900K 3.2Ghz - 8-Core Broadwell-E LGA 2011-V3',36),(2,'null','',5750000.0000,'CPU002','Intel Core i5-6600K 3.5GHz (3.9GHz Turbo Boost ) Skylake LGA 1151',36),(1,'null','',4300000.0000,'CPU001','Intel Core i5-4460 3.1GHz (3.4GHz Turbo Boost ) Haswell Refresh LGA 1150',36),(10,'null','',1650000.0000,'CASE001','Aerocool Aero 1000 Black - Mid Tower Case',36),(11,'null','',900000.0000,'CASE00','Aerocool Battle Hawk - Mid Tower Case',36),(12,'null','',530000.0000,'CASE003','CASE SAMA E-Sport 2',36),(13,'null','',2000000.0000,'PSU001','Andyson H6 Series 600W Japan Caps - 80 Plus Gold - Single Rail Modular PSU',36),(14,'null','',2790000.0000,'PSU002','Andyson N700 700W - 80 Plus Titanium PSU',36),(15,'null','',2700000.0000,'PSU003','Antec HCG - 850M 850W 80Plus Bronze',36),(16,'null','',1900000.0000,'SSD001','Avexir SSD E100 240GB True Speed - Sata 3 SSD',36),(17,'null','',2100000.0000,'SSD002','Avexir SSD S100 Blue Led 120GB True Speed - MLC Sata 3 SSD',36),(18,'null','',2600000.0000,'SSD003','SSD Corsair Force LE200 240GB - Sata 3',36),(19,'null','',1800000.0000,'HDD001','HDD Western Digital Red 1TB- 2.5 HDD',36),(20,'null','',3200000.0000,'HDD002','WD Passport Ultra - 2TB New Version',36),(21,'null','',1200000.0000,'HDD003','HDD Western Digital Blue 500GB- 7mm 2.5 HDD',36),(22,'null','',12000000.0000,'VGA001','Asus Nvidia GTX 1070 Strix OC RGB LED 8GB ( 256 Bit ) DDR5',36),(23,'null','',16000000.0000,'VGA002','Asus Nvidia GTX 1080 Strix A8GB Gaming ( 256 Bit ) DDR5',36),(24,'./resources/uploaded/images/img000000024.png','',22000000.0000,'VGA003','Asus Nvidia GTX 1080Ti ROG Strix OC 11GB ( 352 Bit ) DDR5',36),(25,'null','',300000.0000,'ODD001','ASUS DVD-Rom DVD-E818A7T 18X Sata',36),(26,'null','',400000.0000,'ODD002','DVD RW Asus 24B1ST - Sata',36),(27,'null','',7500000.0000,'LCD001','AOC C2783FQ - Curved PLS Full HD LCD',36),(28,'null','',15000000.0000,'LCD002','AOC C4008VU8 40\' Curved - Ultra HD 4K 60Hz 10-Bit Color LCD',36),(29,'null','',4500000.0000,'LCD003','AOC G2460PQU - 144Hz Pro Gaming Monitor',36);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SalesInvoice`
--

LOCK TABLES `SalesInvoice` WRITE;
/*!40000 ALTER TABLE `SalesInvoice` DISABLE KEYS */;
INSERT INTO `SalesInvoice` VALUES (1,'2017-02-26 00:00:00','Phiếu bán hàng ngày 26-2-2017',0,'SAL001',4300000.0000,4300000.0000,1,1,1),(2,'2016-04-08 00:00:00','Phiếu bán hàng ngày 8-4-2017',0,'SAL002',4060000.0000,4060000.0000,4,2,2),(3,'2015-02-12 00:00:00','Phiếu bán hàng ngày 12-2-2017',0,'SAL003',1650000.0000,1650000.0000,7,1,3),(4,'2014-07-21 00:00:00','Phiếu bán hàng ngày 21-7-2017',0,'SAL004',2700000.0000,2700000.0000,3,2,4),(5,'2016-09-14 00:00:00','Phiếu bán hàng ngày 14-9-2017',0,'SAL005',3200000.0000,3200000.0000,8,3,5),(6,'2017-06-03 07:00:00','123',1,'HD0001',18450000.0000,0.0000,4,1,2);
/*!40000 ALTER TABLE `SalesInvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SalesInvoiceDetails`
--

LOCK TABLES `SalesInvoiceDetails` WRITE;
/*!40000 ALTER TABLE `SalesInvoiceDetails` DISABLE KEYS */;
INSERT INTO `SalesInvoiceDetails` VALUES (1,0,4300000.0000,4300000.0000,1,4300000.0000,1,1),(3,0,1650000.0000,1650000.0000,1,1650000.0000,10,3),(4,0,2700000.0000,2700000.0000,1,2700000.0000,15,4),(5,0,3200000.0000,3200000.0000,1,3200000.0000,20,5),(6,1,0.0000,10700000.0000,1,10700000.0000,4,6),(7,1,0.0000,10700000.0000,1,10700000.0000,7,6);
/*!40000 ALTER TABLE `SalesInvoiceDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'admin@gmail.com','','','Admin','admin','Admin','admin'),(2,'anhquanly@gmail.com','','','Anh Quản Lý','123456','Quản Lý','quanly'),(3,'anhgiamdoc@gmail.com','','','Chị Nhân Viên','123456','Nhân Viên','nhanvien'),(4,'anhkhachhang@gmail.com','','','Anh Khách Hàng','123456','Khách Hàng','khachhang'),(5,'jackson@gmail.com','','','Michael Jackson','Abc123@','B?o V?','jackson1993');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Vendor`
--

LOCK TABLES `Vendor` WRITE;
/*!40000 ALTER TABLE `Vendor` DISABLE KEYS */;
INSERT INTO `Vendor` VALUES (1,'Nhà cung cấp Intel','','VEN001','Intel','http://www.intel.vn/content/www/vn/vi/homepage.html'),(2,'Nhà cung cấp Tân Thành Danh','','VEN002','Tân Thành Danh','http://tanthanhdanh.vn/'),(3,'Nhà cung cấp Tân Doanh','','VEN003','Tân Doanh','http://tandoanh.vn/'),(4,'Nhà cung cấp Phong Vũ','','VEN004','Phong Vũ','http://phongvu.vn/'),(5,'Nhà cung cấp Hoàn Long','','VEN005','Hoàn Long','http://hoanlong.com.vn'),(6,'Nhà cung cấp Sài Gòn Computer','','VEN006','Sài Gòn Computer','http://saigoncomputer.vn/');
/*!40000 ALTER TABLE `Vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Warehouse`
--

LOCK TABLES `Warehouse` WRITE;
/*!40000 ALTER TABLE `Warehouse` DISABLE KEYS */;
INSERT INTO `Warehouse` VALUES (1,'HCM',50,'592 Đường 3/2, Phường 14, Quận 10, Tp.HCM','0','',2000,'159753456','WAR001','Kho HCM 1',1),(2,'BH',63,'54 ???ng 30/4, KP3, P.Trung D?ng, TP.Biên Hòa, T?nh ??ng Nai.','0','',1500,'5446561232','WAR002','Kho BH 1',1),(3,'BD',50,'408 Đại lộ Bình Dương, P. Phú Lợi, TP. Thủ Dầu 1, Bình Dương','0','',2000,'5487621548','WAR003','Kho BD 1',1),(4,'BH',37,'S? 443 ??ng Kh?i - KP.6- P.Tân Ti?n Tp Biên Hòa - T?nh ??ng Nai','0','',4000,'9654123587','WAR004','Kho BH 2',1),(5,'HCM',50,'1081C Hậu Giang, P.11, Q.6, TpHCM.','0','',1000,'586979542','WAR005','Kho HCM 2',1);
/*!40000 ALTER TABLE `Warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `WarehouseDetails`
--

LOCK TABLES `WarehouseDetails` WRITE;
/*!40000 ALTER TABLE `WarehouseDetails` DISABLE KEYS */;
INSERT INTO `WarehouseDetails` VALUES (1,10,1,1),(2,10,4,1),(3,10,7,1),(4,10,10,1),(5,10,13,1),(6,14,1,2),(7,10,4,2),(8,13,7,2),(9,10,10,2),(10,16,13,2),(11,10,1,3),(12,10,4,3),(13,10,7,3),(14,10,10,3),(15,10,13,3),(16,6,1,4),(17,10,4,4),(18,7,7,4),(19,10,10,4),(20,4,13,4),(21,10,1,5),(22,10,4,5),(23,10,7,5),(24,10,10,5),(25,10,13,5);
/*!40000 ALTER TABLE `WarehouseDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `WarehouseTransfer`
--

LOCK TABLES `WarehouseTransfer` WRITE;
/*!40000 ALTER TABLE `WarehouseTransfer` DISABLE KEYS */;
INSERT INTO `WarehouseTransfer` VALUES (1,'2017-06-03 07:00:00','Chuyen kho','WHT001',3,4,2);
/*!40000 ALTER TABLE `WarehouseTransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `WarehouseTransferDetails`
--

LOCK TABLES `WarehouseTransferDetails` WRITE;
/*!40000 ALTER TABLE `WarehouseTransferDetails` DISABLE KEYS */;
INSERT INTO `WarehouseTransferDetails` VALUES (1,3,7,1),(2,6,13,1),(3,4,1,1);
/*!40000 ALTER TABLE `WarehouseTransferDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-08 23:24:25
