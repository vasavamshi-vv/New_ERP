-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: erp-final.cvy4we044sft.ap-south-1.rds.amazonaws.com    Database: erp_dev_db
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '383e30f1-b99f-11f0-9412-06c0d37ad729:1-29';

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add attendance',6,'add_attendance'),(22,'Can change attendance',6,'change_attendance'),(23,'Can delete attendance',6,'delete_attendance'),(24,'Can view attendance',6,'view_attendance'),(25,'Can add candidate',7,'add_candidate'),(26,'Can change candidate',7,'change_candidate'),(27,'Can delete candidate',7,'delete_candidate'),(28,'Can view candidate',7,'view_candidate'),(29,'Can add Document',8,'add_candidatedocument'),(30,'Can change Document',8,'change_candidatedocument'),(31,'Can delete Document',8,'delete_candidatedocument'),(32,'Can view Document',8,'view_candidatedocument'),(33,'Can add government holiday',9,'add_governmentholiday'),(34,'Can change government holiday',9,'change_governmentholiday'),(35,'Can delete government holiday',9,'delete_governmentholiday'),(36,'Can view government holiday',9,'view_governmentholiday'),(37,'Can add task',10,'add_task'),(38,'Can change task',10,'change_task'),(39,'Can delete task',10,'delete_task'),(40,'Can view task',10,'view_task'),(41,'Can add Branch',11,'add_branch'),(42,'Can change Branch',11,'change_branch'),(43,'Can delete Branch',11,'delete_branch'),(44,'Can view Branch',11,'view_branch'),(45,'Can add category',12,'add_category'),(46,'Can change category',12,'change_category'),(47,'Can delete category',12,'delete_category'),(48,'Can view category',12,'view_category'),(49,'Can add color',13,'add_color'),(50,'Can change color',13,'change_color'),(51,'Can delete color',13,'delete_color'),(52,'Can view color',13,'view_color'),(53,'Can add Department',14,'add_department'),(54,'Can change Department',14,'change_department'),(55,'Can delete Department',14,'delete_department'),(56,'Can view Department',14,'view_department'),(57,'Can add size',15,'add_size'),(58,'Can change size',15,'change_size'),(59,'Can delete size',15,'delete_size'),(60,'Can view size',15,'view_size'),(61,'Can add supplier',16,'add_supplier'),(62,'Can change supplier',16,'change_supplier'),(63,'Can delete supplier',16,'delete_supplier'),(64,'Can view supplier',16,'view_supplier'),(65,'Can add tax code',17,'add_taxcode'),(66,'Can change tax code',17,'change_taxcode'),(67,'Can delete tax code',17,'delete_taxcode'),(68,'Can view tax code',17,'view_taxcode'),(69,'Can add uom',18,'add_uom'),(70,'Can change uom',18,'change_uom'),(71,'Can delete uom',18,'delete_uom'),(72,'Can view uom',18,'view_uom'),(73,'Can add warehouse',19,'add_warehouse'),(74,'Can change warehouse',19,'change_warehouse'),(75,'Can delete warehouse',19,'delete_warehouse'),(76,'Can view warehouse',19,'view_warehouse'),(77,'Can add Role',20,'add_role'),(78,'Can change Role',20,'change_role'),(79,'Can delete Role',20,'delete_role'),(80,'Can view Role',20,'view_role'),(81,'Can add product',21,'add_product'),(82,'Can change product',21,'change_product'),(83,'Can delete product',21,'delete_product'),(84,'Can view product',21,'view_product'),(85,'Can add customer',22,'add_customer'),(86,'Can change customer',22,'change_customer'),(87,'Can delete customer',22,'delete_customer'),(88,'Can view customer',22,'view_customer'),(89,'Can add User',23,'add_customuser'),(90,'Can change User',23,'change_customuser'),(91,'Can delete User',23,'delete_customuser'),(92,'Can view User',23,'view_customuser'),(93,'Can add delivery note',24,'add_deliverynote'),(94,'Can change delivery note',24,'change_deliverynote'),(95,'Can delete delivery note',24,'delete_deliverynote'),(96,'Can view delivery note',24,'view_deliverynote'),(97,'Can add delivery note attachment',25,'add_deliverynoteattachment'),(98,'Can change delivery note attachment',25,'change_deliverynoteattachment'),(99,'Can delete delivery note attachment',25,'delete_deliverynoteattachment'),(100,'Can view delivery note attachment',25,'view_deliverynoteattachment'),(101,'Can add delivery note customer acknowledgement',26,'add_deliverynotecustomeracknowledgement'),(102,'Can change delivery note customer acknowledgement',26,'change_deliverynotecustomeracknowledgement'),(103,'Can delete delivery note customer acknowledgement',26,'delete_deliverynotecustomeracknowledgement'),(104,'Can view delivery note customer acknowledgement',26,'view_deliverynotecustomeracknowledgement'),(105,'Can add delivery note item',27,'add_deliverynoteitem'),(106,'Can change delivery note item',27,'change_deliverynoteitem'),(107,'Can delete delivery note item',27,'delete_deliverynoteitem'),(108,'Can view delivery note item',27,'view_deliverynoteitem'),(109,'Can add delivery note remark',28,'add_deliverynoteremark'),(110,'Can change delivery note remark',28,'change_deliverynoteremark'),(111,'Can delete delivery note remark',28,'delete_deliverynoteremark'),(112,'Can view delivery note remark',28,'view_deliverynoteremark'),(113,'Can add delivery note return',29,'add_deliverynotereturn'),(114,'Can change delivery note return',29,'change_deliverynotereturn'),(115,'Can delete delivery note return',29,'delete_deliverynotereturn'),(116,'Can view delivery note return',29,'view_deliverynotereturn'),(117,'Can add delivery note return attachment',30,'add_deliverynotereturnattachment'),(118,'Can change delivery note return attachment',30,'change_deliverynotereturnattachment'),(119,'Can delete delivery note return attachment',30,'delete_deliverynotereturnattachment'),(120,'Can view delivery note return attachment',30,'view_deliverynotereturnattachment'),(121,'Can add delivery note return comment',31,'add_deliverynotereturncomment'),(122,'Can change delivery note return comment',31,'change_deliverynotereturncomment'),(123,'Can delete delivery note return comment',31,'delete_deliverynotereturncomment'),(124,'Can view delivery note return comment',31,'view_deliverynotereturncomment'),(125,'Can add delivery note return history',32,'add_deliverynotereturnhistory'),(126,'Can change delivery note return history',32,'change_deliverynotereturnhistory'),(127,'Can delete delivery note return history',32,'delete_deliverynotereturnhistory'),(128,'Can view delivery note return history',32,'view_deliverynotereturnhistory'),(129,'Can add delivery note return item',33,'add_deliverynotereturnitem'),(130,'Can change delivery note return item',33,'change_deliverynotereturnitem'),(131,'Can delete delivery note return item',33,'delete_deliverynotereturnitem'),(132,'Can view delivery note return item',33,'view_deliverynotereturnitem'),(133,'Can add delivery note return remark',34,'add_deliverynotereturnremark'),(134,'Can change delivery note return remark',34,'change_deliverynotereturnremark'),(135,'Can delete delivery note return remark',34,'delete_deliverynotereturnremark'),(136,'Can view delivery note return remark',34,'view_deliverynotereturnremark'),(137,'Can add enquiry',35,'add_enquiry'),(138,'Can change enquiry',35,'change_enquiry'),(139,'Can delete enquiry',35,'delete_enquiry'),(140,'Can view enquiry',35,'view_enquiry'),(141,'Can add enquiry item',36,'add_enquiryitem'),(142,'Can change enquiry item',36,'change_enquiryitem'),(143,'Can delete enquiry item',36,'delete_enquiryitem'),(144,'Can view enquiry item',36,'view_enquiryitem'),(145,'Can add invoice',37,'add_invoice'),(146,'Can change invoice',37,'change_invoice'),(147,'Can delete invoice',37,'delete_invoice'),(148,'Can view invoice',37,'view_invoice'),(149,'Can add invoice attachment',38,'add_invoiceattachment'),(150,'Can change invoice attachment',38,'change_invoiceattachment'),(151,'Can delete invoice attachment',38,'delete_invoiceattachment'),(152,'Can view invoice attachment',38,'view_invoiceattachment'),(153,'Can add invoice item',39,'add_invoiceitem'),(154,'Can change invoice item',39,'change_invoiceitem'),(155,'Can delete invoice item',39,'delete_invoiceitem'),(156,'Can view invoice item',39,'view_invoiceitem'),(157,'Can add invoice remark',40,'add_invoiceremark'),(158,'Can change invoice remark',40,'change_invoiceremark'),(159,'Can delete invoice remark',40,'delete_invoiceremark'),(160,'Can view invoice remark',40,'view_invoiceremark'),(161,'Can add invoice return',41,'add_invoicereturn'),(162,'Can change invoice return',41,'change_invoicereturn'),(163,'Can delete invoice return',41,'delete_invoicereturn'),(164,'Can view invoice return',41,'view_invoicereturn'),(165,'Can add invoice return attachment',42,'add_invoicereturnattachment'),(166,'Can change invoice return attachment',42,'change_invoicereturnattachment'),(167,'Can delete invoice return attachment',42,'delete_invoicereturnattachment'),(168,'Can view invoice return attachment',42,'view_invoicereturnattachment'),(169,'Can add invoice return comment',43,'add_invoicereturncomment'),(170,'Can change invoice return comment',43,'change_invoicereturncomment'),(171,'Can delete invoice return comment',43,'delete_invoicereturncomment'),(172,'Can view invoice return comment',43,'view_invoicereturncomment'),(173,'Can add invoice return history',44,'add_invoicereturnhistory'),(174,'Can change invoice return history',44,'change_invoicereturnhistory'),(175,'Can delete invoice return history',44,'delete_invoicereturnhistory'),(176,'Can view invoice return history',44,'view_invoicereturnhistory'),(177,'Can add invoice return item',45,'add_invoicereturnitem'),(178,'Can change invoice return item',45,'change_invoicereturnitem'),(179,'Can delete invoice return item',45,'delete_invoicereturnitem'),(180,'Can view invoice return item',45,'view_invoicereturnitem'),(181,'Can add invoice return remark',46,'add_invoicereturnremark'),(182,'Can change invoice return remark',46,'change_invoicereturnremark'),(183,'Can delete invoice return remark',46,'delete_invoicereturnremark'),(184,'Can view invoice return remark',46,'view_invoicereturnremark'),(185,'Can add invoice return summary',47,'add_invoicereturnsummary'),(186,'Can change invoice return summary',47,'change_invoicereturnsummary'),(187,'Can delete invoice return summary',47,'delete_invoicereturnsummary'),(188,'Can view invoice return summary',47,'view_invoicereturnsummary'),(189,'Can add order summary',48,'add_ordersummary'),(190,'Can change order summary',48,'change_ordersummary'),(191,'Can delete order summary',48,'delete_ordersummary'),(192,'Can view order summary',48,'view_ordersummary'),(193,'Can add quotation',49,'add_quotation'),(194,'Can change quotation',49,'change_quotation'),(195,'Can delete quotation',49,'delete_quotation'),(196,'Can view quotation',49,'view_quotation'),(197,'Can add quotation attachment',50,'add_quotationattachment'),(198,'Can change quotation attachment',50,'change_quotationattachment'),(199,'Can delete quotation attachment',50,'delete_quotationattachment'),(200,'Can view quotation attachment',50,'view_quotationattachment'),(201,'Can add quotation comment',51,'add_quotationcomment'),(202,'Can change quotation comment',51,'change_quotationcomment'),(203,'Can delete quotation comment',51,'delete_quotationcomment'),(204,'Can view quotation comment',51,'view_quotationcomment'),(205,'Can add quotation history',52,'add_quotationhistory'),(206,'Can change quotation history',52,'change_quotationhistory'),(207,'Can delete quotation history',52,'delete_quotationhistory'),(208,'Can view quotation history',52,'view_quotationhistory'),(209,'Can add quotation item',53,'add_quotationitem'),(210,'Can change quotation item',53,'change_quotationitem'),(211,'Can delete quotation item',53,'delete_quotationitem'),(212,'Can view quotation item',53,'view_quotationitem'),(213,'Can add quotation revision',54,'add_quotationrevision'),(214,'Can change quotation revision',54,'change_quotationrevision'),(215,'Can delete quotation revision',54,'delete_quotationrevision'),(216,'Can view quotation revision',54,'view_quotationrevision'),(217,'Can add sales order',55,'add_salesorder'),(218,'Can change sales order',55,'change_salesorder'),(219,'Can delete sales order',55,'delete_salesorder'),(220,'Can view sales order',55,'view_salesorder'),(221,'Can add sales order comment',56,'add_salesordercomment'),(222,'Can change sales order comment',56,'change_salesordercomment'),(223,'Can delete sales order comment',56,'delete_salesordercomment'),(224,'Can view sales order comment',56,'view_salesordercomment'),(225,'Can add sales order history',57,'add_salesorderhistory'),(226,'Can change sales order history',57,'change_salesorderhistory'),(227,'Can delete sales order history',57,'delete_salesorderhistory'),(228,'Can view sales order history',57,'view_salesorderhistory'),(229,'Can add sales order item',58,'add_salesorderitem'),(230,'Can change sales order item',58,'change_salesorderitem'),(231,'Can delete sales order item',58,'delete_salesorderitem'),(232,'Can view sales order item',58,'view_salesorderitem'),(233,'Can add batch number',59,'add_batchnumber'),(234,'Can change batch number',59,'change_batchnumber'),(235,'Can delete batch number',59,'delete_batchnumber'),(236,'Can view batch number',59,'view_batchnumber'),(237,'Can add purchase order',60,'add_purchaseorder'),(238,'Can change purchase order',60,'change_purchaseorder'),(239,'Can delete purchase order',60,'delete_purchaseorder'),(240,'Can view purchase order',60,'view_purchaseorder'),(241,'Can add stock receipt',61,'add_stockreceipt'),(242,'Can change stock receipt',61,'change_stockreceipt'),(243,'Can delete stock receipt',61,'delete_stockreceipt'),(244,'Can view stock receipt',61,'view_stockreceipt'),(245,'Can add stock receipt item',62,'add_stockreceiptitem'),(246,'Can change stock receipt item',62,'change_stockreceiptitem'),(247,'Can delete stock receipt item',62,'delete_stockreceiptitem'),(248,'Can view stock receipt item',62,'view_stockreceiptitem'),(249,'Can add stock return',63,'add_stockreturn'),(250,'Can change stock return',63,'change_stockreturn'),(251,'Can delete stock return',63,'delete_stockreturn'),(252,'Can view stock return',63,'view_stockreturn'),(253,'Can add stock return remark',64,'add_stockreturnremark'),(254,'Can change stock return remark',64,'change_stockreturnremark'),(255,'Can delete stock return remark',64,'delete_stockreturnremark'),(256,'Can view stock return remark',64,'view_stockreturnremark'),(257,'Can add stock return item',65,'add_stockreturnitem'),(258,'Can change stock return item',65,'change_stockreturnitem'),(259,'Can delete stock return item',65,'delete_stockreturnitem'),(260,'Can view stock return item',65,'view_stockreturnitem'),(261,'Can add stock return attachment',66,'add_stockreturnattachment'),(262,'Can change stock return attachment',66,'change_stockreturnattachment'),(263,'Can delete stock return attachment',66,'delete_stockreturnattachment'),(264,'Can view stock return attachment',66,'view_stockreturnattachment'),(265,'Can add stock receipt remark',67,'add_stockreceiptremark'),(266,'Can change stock receipt remark',67,'change_stockreceiptremark'),(267,'Can delete stock receipt remark',67,'delete_stockreceiptremark'),(268,'Can view stock receipt remark',67,'view_stockreceiptremark'),(269,'Can add stock receipt attachment',68,'add_stockreceiptattachment'),(270,'Can change stock receipt attachment',68,'change_stockreceiptattachment'),(271,'Can delete stock receipt attachment',68,'delete_stockreceiptattachment'),(272,'Can view stock receipt attachment',68,'view_stockreceiptattachment'),(273,'Can add serial number return',69,'add_serialnumberreturn'),(274,'Can change serial number return',69,'change_serialnumberreturn'),(275,'Can delete serial number return',69,'delete_serialnumberreturn'),(276,'Can view serial number return',69,'view_serialnumberreturn'),(277,'Can add serial number',70,'add_serialnumber'),(278,'Can change serial number',70,'change_serialnumber'),(279,'Can delete serial number',70,'delete_serialnumber'),(280,'Can view serial number',70,'view_serialnumber'),(281,'Can add purchase order item',71,'add_purchaseorderitem'),(282,'Can change purchase order item',71,'change_purchaseorderitem'),(283,'Can delete purchase order item',71,'delete_purchaseorderitem'),(284,'Can view purchase order item',71,'view_purchaseorderitem'),(285,'Can add purchase order history',72,'add_purchaseorderhistory'),(286,'Can change purchase order history',72,'change_purchaseorderhistory'),(287,'Can delete purchase order history',72,'delete_purchaseorderhistory'),(288,'Can view purchase order history',72,'view_purchaseorderhistory'),(289,'Can add purchase order comment',73,'add_purchaseordercomment'),(290,'Can change purchase order comment',73,'change_purchaseordercomment'),(291,'Can delete purchase order comment',73,'delete_purchaseordercomment'),(292,'Can view purchase order comment',73,'view_purchaseordercomment'),(293,'Can add batch serial number',74,'add_batchserialnumber'),(294,'Can change batch serial number',74,'change_batchserialnumber'),(295,'Can delete batch serial number',74,'delete_batchserialnumber'),(296,'Can view batch serial number',74,'view_batchserialnumber'),(297,'Can add credit note',75,'add_creditnote'),(298,'Can change credit note',75,'change_creditnote'),(299,'Can delete credit note',75,'delete_creditnote'),(300,'Can view credit note',75,'view_creditnote'),(301,'Can add credit note attachment',76,'add_creditnoteattachment'),(302,'Can change credit note attachment',76,'change_creditnoteattachment'),(303,'Can delete credit note attachment',76,'delete_creditnoteattachment'),(304,'Can view credit note attachment',76,'view_creditnoteattachment'),(305,'Can add credit note item',77,'add_creditnoteitem'),(306,'Can change credit note item',77,'change_creditnoteitem'),(307,'Can delete credit note item',77,'delete_creditnoteitem'),(308,'Can view credit note item',77,'view_creditnoteitem'),(309,'Can add credit note payment refund',78,'add_creditnotepaymentrefund'),(310,'Can change credit note payment refund',78,'change_creditnotepaymentrefund'),(311,'Can delete credit note payment refund',78,'delete_creditnotepaymentrefund'),(312,'Can view credit note payment refund',78,'view_creditnotepaymentrefund'),(313,'Can add credit note remark',79,'add_creditnoteremark'),(314,'Can change credit note remark',79,'change_creditnoteremark'),(315,'Can delete credit note remark',79,'delete_creditnoteremark'),(316,'Can view credit note remark',79,'view_creditnoteremark'),(317,'Can add debit note',80,'add_debitnote'),(318,'Can change debit note',80,'change_debitnote'),(319,'Can delete debit note',80,'delete_debitnote'),(320,'Can view debit note',80,'view_debitnote'),(321,'Can add debit note attachment',81,'add_debitnoteattachment'),(322,'Can change debit note attachment',81,'change_debitnoteattachment'),(323,'Can delete debit note attachment',81,'delete_debitnoteattachment'),(324,'Can view debit note attachment',81,'view_debitnoteattachment'),(325,'Can add debit note item',82,'add_debitnoteitem'),(326,'Can change debit note item',82,'change_debitnoteitem'),(327,'Can delete debit note item',82,'delete_debitnoteitem'),(328,'Can view debit note item',82,'view_debitnoteitem'),(329,'Can add debit note payment recover',83,'add_debitnotepaymentrecover'),(330,'Can change debit note payment recover',83,'change_debitnotepaymentrecover'),(331,'Can delete debit note payment recover',83,'delete_debitnotepaymentrecover'),(332,'Can view debit note payment recover',83,'view_debitnotepaymentrecover'),(333,'Can add debit note remark',84,'add_debitnoteremark'),(334,'Can change debit note remark',84,'change_debitnoteremark'),(335,'Can delete debit note remark',84,'delete_debitnoteremark'),(336,'Can view debit note remark',84,'view_debitnoteremark'),(337,'Can add Token',85,'add_token'),(338,'Can change Token',85,'change_token'),(339,'Can delete Token',85,'delete_token'),(340,'Can view Token',85,'view_token'),(341,'Can add Token',86,'add_tokenproxy'),(342,'Can change Token',86,'change_tokenproxy'),(343,'Can delete Token',86,'delete_tokenproxy'),(344,'Can view Token',86,'view_tokenproxy'),(345,'Can add product supplier',87,'add_productsupplier'),(346,'Can change product supplier',87,'change_productsupplier'),(347,'Can delete product supplier',87,'delete_productsupplier'),(348,'Can view product supplier',87,'view_productsupplier'),(349,'Can add supplier attachment',88,'add_supplierattachment'),(350,'Can change supplier attachment',88,'change_supplierattachment'),(351,'Can delete supplier attachment',88,'delete_supplierattachment'),(352,'Can view supplier attachment',88,'view_supplierattachment'),(353,'Can add supplier comment',89,'add_suppliercomment'),(354,'Can change supplier comment',89,'change_suppliercomment'),(355,'Can delete supplier comment',89,'delete_suppliercomment'),(356,'Can view supplier comment',89,'view_suppliercomment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_masters_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('0126df44e4c20f51ccc17358d40087b44f2311f1','2025-11-14 11:34:10.901055',2),('f9b1cd19a3eb04a418f37588d7440e3a87384cb2','2025-11-07 06:55:14.858187',1);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attendance`
--

DROP TABLE IF EXISTS `core_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_attendance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `check_in_times` json NOT NULL,
  `total_hours` decimal(5,2) NOT NULL,
  `user_id` bigint NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_attendance_user_id_date_399e5e24_uniq` (`user_id`,`date`),
  CONSTRAINT `core_attendance_user_id_fdad1ea2_fk_masters_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attendance`
--

LOCK TABLES `core_attendance` WRITE;
/*!40000 ALTER TABLE `core_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_candidate`
--

DROP TABLE IF EXISTS `core_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_candidate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `employee_code` varchar(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `personal_number` varchar(15) NOT NULL,
  `emergency_contact_number` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `aadhar_number` varchar(14) NOT NULL,
  `pan_number` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `current_address` longtext NOT NULL,
  `highest_qualification` varchar(200) NOT NULL,
  `previous_employer` varchar(200) NOT NULL,
  `total_experience_year` int unsigned DEFAULT NULL,
  `total_experience_month` int unsigned DEFAULT NULL,
  `relevant_experience_year` int unsigned DEFAULT NULL,
  `relevant_experience_month` int unsigned DEFAULT NULL,
  `marital_status` varchar(20) NOT NULL,
  `basics` decimal(10,2) DEFAULT NULL,
  `hra` decimal(10,2) DEFAULT NULL,
  `conveyance_allowance` decimal(10,2) DEFAULT NULL,
  `medical_allowance` decimal(10,2) DEFAULT NULL,
  `other_allowances` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL,
  `taxes` decimal(10,2) DEFAULT NULL,
  `pf` decimal(10,2) DEFAULT NULL,
  `esi` decimal(10,2) DEFAULT NULL,
  `gross_salary` decimal(10,2) DEFAULT NULL,
  `net_salary` decimal(10,2) DEFAULT NULL,
  `uan_number` varchar(12) NOT NULL,
  `pf_number` varchar(12) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `ifsc_code` varchar(11) NOT NULL,
  `asset` varchar(3) NOT NULL,
  `asset_type` varchar(50) NOT NULL,
  `laptop_company_name` varchar(50) NOT NULL,
  `asset_id` varchar(20) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `designation_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_code` (`employee_code`),
  UNIQUE KEY `email` (`email`),
  KEY `core_candidate_branch_id_4951d7e2_fk_masters_branch_id` (`branch_id`),
  KEY `core_candidate_department_id_71be8264_fk_masters_department_id` (`department_id`),
  KEY `core_candidate_designation_id_77c3999b_fk_masters_role_id` (`designation_id`),
  CONSTRAINT `core_candidate_branch_id_4951d7e2_fk_masters_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `masters_branch` (`id`),
  CONSTRAINT `core_candidate_department_id_71be8264_fk_masters_department_id` FOREIGN KEY (`department_id`) REFERENCES `masters_department` (`id`),
  CONSTRAINT `core_candidate_designation_id_77c3999b_fk_masters_role_id` FOREIGN KEY (`designation_id`) REFERENCES `masters_role` (`id`),
  CONSTRAINT `core_candidate_chk_1` CHECK ((`total_experience_year` >= 0)),
  CONSTRAINT `core_candidate_chk_2` CHECK ((`total_experience_month` >= 0)),
  CONSTRAINT `core_candidate_chk_3` CHECK ((`relevant_experience_year` >= 0)),
  CONSTRAINT `core_candidate_chk_4` CHECK ((`relevant_experience_month` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_candidate`
--

LOCK TABLES `core_candidate` WRITE;
/*!40000 ALTER TABLE `core_candidate` DISABLE KEYS */;
INSERT INTO `core_candidate` VALUES (2,'STA0001','!!','Surisetti','Female',NULL,'+917780446068','','harshitha@thestackly.com','1234 5678 9012','ABCDE1234F','Active','','','',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','',1,2,NULL);
/*!40000 ALTER TABLE `core_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_candidate_upload_documents`
--

DROP TABLE IF EXISTS `core_candidate_upload_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_candidate_upload_documents` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `candidate_id` bigint NOT NULL,
  `candidatedocument_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_candidate_upload_do_candidate_id_candidatedo_9078c26e_uniq` (`candidate_id`,`candidatedocument_id`),
  KEY `core_candidate_uploa_candidatedocument_id_0643a271_fk_core_cand` (`candidatedocument_id`),
  CONSTRAINT `core_candidate_uploa_candidate_id_24005deb_fk_core_cand` FOREIGN KEY (`candidate_id`) REFERENCES `core_candidate` (`id`),
  CONSTRAINT `core_candidate_uploa_candidatedocument_id_0643a271_fk_core_cand` FOREIGN KEY (`candidatedocument_id`) REFERENCES `core_candidatedocument` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_candidate_upload_documents`
--

LOCK TABLES `core_candidate_upload_documents` WRITE;
/*!40000 ALTER TABLE `core_candidate_upload_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_candidate_upload_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_candidatedocument`
--

DROP TABLE IF EXISTS `core_candidatedocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_candidatedocument` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_candidatedocument`
--

LOCK TABLES `core_candidatedocument` WRITE;
/*!40000 ALTER TABLE `core_candidatedocument` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_candidatedocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_governmentholiday`
--

DROP TABLE IF EXISTS `core_governmentholiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_governmentholiday` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_governmentholiday`
--

LOCK TABLES `core_governmentholiday` WRITE;
/*!40000 ALTER TABLE `core_governmentholiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_governmentholiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_task`
--

DROP TABLE IF EXISTS `core_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `priority` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `assigned_to_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_task_assigned_to_id_4a4e0391_fk_masters_customuser_id` (`assigned_to_id`),
  CONSTRAINT `core_task_assigned_to_id_4a4e0391_fk_masters_customuser_id` FOREIGN KEY (`assigned_to_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_task`
--

LOCK TABLES `core_task` WRITE;
/*!40000 ALTER TABLE `core_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynote`
--

DROP TABLE IF EXISTS `crm_deliverynote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `DN_ID` varchar(20) NOT NULL,
  `delivery_date` date NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `delivery_type` varchar(20) NOT NULL,
  `destination_address` longtext NOT NULL,
  `delivery_status` varchar(20) NOT NULL,
  `partially_delivered` tinyint(1) NOT NULL,
  `sales_order_reference_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DN_ID` (`DN_ID`),
  KEY `crm_deliverynote_sales_order_referenc_2b87f97d_fk_crm_sales` (`sales_order_reference_id`),
  CONSTRAINT `crm_deliverynote_sales_order_referenc_2b87f97d_fk_crm_sales` FOREIGN KEY (`sales_order_reference_id`) REFERENCES `crm_salesorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynote`
--

LOCK TABLES `crm_deliverynote` WRITE;
/*!40000 ALTER TABLE `crm_deliverynote` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynoteattachment`
--

DROP TABLE IF EXISTS `crm_deliverynoteattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynoteattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) DEFAULT NULL,
  `delivery_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_deliverynoteatta_delivery_note_id_2686dc18_fk_crm_deliv` (`delivery_note_id`),
  CONSTRAINT `crm_deliverynoteatta_delivery_note_id_2686dc18_fk_crm_deliv` FOREIGN KEY (`delivery_note_id`) REFERENCES `crm_deliverynote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynoteattachment`
--

LOCK TABLES `crm_deliverynoteattachment` WRITE;
/*!40000 ALTER TABLE `crm_deliverynoteattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynoteattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynotecustomeracknowledgement`
--

DROP TABLE IF EXISTS `crm_deliverynotecustomeracknowledgement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynotecustomeracknowledgement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `received_by` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `proof_of_delivery` varchar(100) DEFAULT NULL,
  `delivery_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_note_id` (`delivery_note_id`),
  CONSTRAINT `crm_deliverynotecust_delivery_note_id_fd92a19e_fk_crm_deliv` FOREIGN KEY (`delivery_note_id`) REFERENCES `crm_deliverynote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynotecustomeracknowledgement`
--

LOCK TABLES `crm_deliverynotecustomeracknowledgement` WRITE;
/*!40000 ALTER TABLE `crm_deliverynotecustomeracknowledgement` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynotecustomeracknowledgement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynoteitem`
--

DROP TABLE IF EXISTS `crm_deliverynoteitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynoteitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `uom` varchar(50) NOT NULL,
  `delivery_note_id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_deliverynoteitem_delivery_note_id_4990ba6b_fk_crm_deliv` (`delivery_note_id`),
  KEY `crm_deliverynoteitem_product_id_19035a28_fk_masters_product_id` (`product_id`),
  CONSTRAINT `crm_deliverynoteitem_delivery_note_id_4990ba6b_fk_crm_deliv` FOREIGN KEY (`delivery_note_id`) REFERENCES `crm_deliverynote` (`id`),
  CONSTRAINT `crm_deliverynoteitem_product_id_19035a28_fk_masters_product_id` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynoteitem`
--

LOCK TABLES `crm_deliverynoteitem` WRITE;
/*!40000 ALTER TABLE `crm_deliverynoteitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynoteitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynoteitem_serial_numbers`
--

DROP TABLE IF EXISTS `crm_deliverynoteitem_serial_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynoteitem_serial_numbers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `deliverynoteitem_id` bigint NOT NULL,
  `serialnumber_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_deliverynoteitem_ser_deliverynoteitem_id_seri_f638d730_uniq` (`deliverynoteitem_id`,`serialnumber_id`),
  KEY `crm_deliverynoteitem_serialnumber_id_9a2da605_fk_purchase_` (`serialnumber_id`),
  CONSTRAINT `crm_deliverynoteitem_deliverynoteitem_id_157c3b9b_fk_crm_deliv` FOREIGN KEY (`deliverynoteitem_id`) REFERENCES `crm_deliverynoteitem` (`id`),
  CONSTRAINT `crm_deliverynoteitem_serialnumber_id_9a2da605_fk_purchase_` FOREIGN KEY (`serialnumber_id`) REFERENCES `purchase_serialnumber` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynoteitem_serial_numbers`
--

LOCK TABLES `crm_deliverynoteitem_serial_numbers` WRITE;
/*!40000 ALTER TABLE `crm_deliverynoteitem_serial_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynoteitem_serial_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynoteremark`
--

DROP TABLE IF EXISTS `crm_deliverynoteremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynoteremark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `delivery_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_deliverynoterema_created_by_id_dcf1780e_fk_masters_c` (`created_by_id`),
  KEY `crm_deliverynoterema_delivery_note_id_282c1dae_fk_crm_deliv` (`delivery_note_id`),
  CONSTRAINT `crm_deliverynoterema_created_by_id_dcf1780e_fk_masters_c` FOREIGN KEY (`created_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `crm_deliverynoterema_delivery_note_id_282c1dae_fk_crm_deliv` FOREIGN KEY (`delivery_note_id`) REFERENCES `crm_deliverynote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynoteremark`
--

LOCK TABLES `crm_deliverynoteremark` WRITE;
/*!40000 ALTER TABLE `crm_deliverynoteremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynoteremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynotereturn`
--

DROP TABLE IF EXISTS `crm_deliverynotereturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynotereturn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `DNR_ID` varchar(20) NOT NULL,
  `dnr_date` date NOT NULL,
  `customer_reference_no` varchar(50) NOT NULL,
  `email_id` varchar(254) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `invoice_return_reference_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DNR_ID` (`DNR_ID`),
  KEY `crm_deliverynoteretu_customer_id_09de2515_fk_masters_c` (`customer_id`),
  KEY `crm_deliverynoteretu_invoice_return_refer_d4af3471_fk_crm_invoi` (`invoice_return_reference_id`),
  CONSTRAINT `crm_deliverynoteretu_customer_id_09de2515_fk_masters_c` FOREIGN KEY (`customer_id`) REFERENCES `masters_customer` (`id`),
  CONSTRAINT `crm_deliverynoteretu_invoice_return_refer_d4af3471_fk_crm_invoi` FOREIGN KEY (`invoice_return_reference_id`) REFERENCES `crm_invoicereturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynotereturn`
--

LOCK TABLES `crm_deliverynotereturn` WRITE;
/*!40000 ALTER TABLE `crm_deliverynotereturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynotereturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynotereturnattachment`
--

DROP TABLE IF EXISTS `crm_deliverynotereturnattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynotereturnattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `delivery_note_return_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_deliverynoteretu_delivery_note_return_39508778_fk_crm_deliv` (`delivery_note_return_id`),
  CONSTRAINT `crm_deliverynoteretu_delivery_note_return_39508778_fk_crm_deliv` FOREIGN KEY (`delivery_note_return_id`) REFERENCES `crm_deliverynotereturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynotereturnattachment`
--

LOCK TABLES `crm_deliverynotereturnattachment` WRITE;
/*!40000 ALTER TABLE `crm_deliverynotereturnattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynotereturnattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynotereturncomment`
--

DROP TABLE IF EXISTS `crm_deliverynotereturncomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynotereturncomment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `delivery_note_return_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_deliverynoteretu_delivery_note_return_fe6d3607_fk_crm_deliv` (`delivery_note_return_id`),
  KEY `crm_deliverynoteretu_user_id_d1e16378_fk_masters_c` (`user_id`),
  CONSTRAINT `crm_deliverynoteretu_delivery_note_return_fe6d3607_fk_crm_deliv` FOREIGN KEY (`delivery_note_return_id`) REFERENCES `crm_deliverynotereturn` (`id`),
  CONSTRAINT `crm_deliverynoteretu_user_id_d1e16378_fk_masters_c` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynotereturncomment`
--

LOCK TABLES `crm_deliverynotereturncomment` WRITE;
/*!40000 ALTER TABLE `crm_deliverynotereturncomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynotereturncomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynotereturnhistory`
--

DROP TABLE IF EXISTS `crm_deliverynotereturnhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynotereturnhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(100) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `delivery_note_return_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_deliverynoteretu_delivery_note_return_cf346720_fk_crm_deliv` (`delivery_note_return_id`),
  KEY `crm_deliverynoteretu_user_id_668e6a4e_fk_masters_c` (`user_id`),
  CONSTRAINT `crm_deliverynoteretu_delivery_note_return_cf346720_fk_crm_deliv` FOREIGN KEY (`delivery_note_return_id`) REFERENCES `crm_deliverynotereturn` (`id`),
  CONSTRAINT `crm_deliverynoteretu_user_id_668e6a4e_fk_masters_c` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynotereturnhistory`
--

LOCK TABLES `crm_deliverynotereturnhistory` WRITE;
/*!40000 ALTER TABLE `crm_deliverynotereturnhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynotereturnhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynotereturnitem`
--

DROP TABLE IF EXISTS `crm_deliverynotereturnitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynotereturnitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uom` varchar(50) NOT NULL,
  `invoiced_qty` int NOT NULL,
  `returned_qty` int NOT NULL,
  `return_reason` longtext NOT NULL,
  `delivery_note_return_id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_deliverynoteretu_delivery_note_return_09b5a2a3_fk_crm_deliv` (`delivery_note_return_id`),
  KEY `crm_deliverynoteretu_product_id_ff0a6099_fk_masters_p` (`product_id`),
  CONSTRAINT `crm_deliverynoteretu_delivery_note_return_09b5a2a3_fk_crm_deliv` FOREIGN KEY (`delivery_note_return_id`) REFERENCES `crm_deliverynotereturn` (`id`),
  CONSTRAINT `crm_deliverynoteretu_product_id_ff0a6099_fk_masters_p` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynotereturnitem`
--

LOCK TABLES `crm_deliverynotereturnitem` WRITE;
/*!40000 ALTER TABLE `crm_deliverynotereturnitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynotereturnitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynotereturnitem_serial_numbers`
--

DROP TABLE IF EXISTS `crm_deliverynotereturnitem_serial_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynotereturnitem_serial_numbers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `deliverynotereturnitem_id` bigint NOT NULL,
  `serialnumber_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_deliverynotereturnit_deliverynotereturnitem_i_036dc02c_uniq` (`deliverynotereturnitem_id`,`serialnumber_id`),
  KEY `crm_deliverynoteretu_serialnumber_id_7a737b87_fk_purchase_` (`serialnumber_id`),
  CONSTRAINT `crm_deliverynoteretu_deliverynotereturnit_3d67828d_fk_crm_deliv` FOREIGN KEY (`deliverynotereturnitem_id`) REFERENCES `crm_deliverynotereturnitem` (`id`),
  CONSTRAINT `crm_deliverynoteretu_serialnumber_id_7a737b87_fk_purchase_` FOREIGN KEY (`serialnumber_id`) REFERENCES `purchase_serialnumber` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynotereturnitem_serial_numbers`
--

LOCK TABLES `crm_deliverynotereturnitem_serial_numbers` WRITE;
/*!40000 ALTER TABLE `crm_deliverynotereturnitem_serial_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynotereturnitem_serial_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_deliverynotereturnremark`
--

DROP TABLE IF EXISTS `crm_deliverynotereturnremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_deliverynotereturnremark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `delivery_note_return_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_deliverynoteretu_created_by_id_1ed95933_fk_masters_c` (`created_by_id`),
  KEY `crm_deliverynoteretu_delivery_note_return_8592571f_fk_crm_deliv` (`delivery_note_return_id`),
  CONSTRAINT `crm_deliverynoteretu_created_by_id_1ed95933_fk_masters_c` FOREIGN KEY (`created_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `crm_deliverynoteretu_delivery_note_return_8592571f_fk_crm_deliv` FOREIGN KEY (`delivery_note_return_id`) REFERENCES `crm_deliverynotereturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_deliverynotereturnremark`
--

LOCK TABLES `crm_deliverynotereturnremark` WRITE;
/*!40000 ALTER TABLE `crm_deliverynotereturnremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_deliverynotereturnremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_enquiry`
--

DROP TABLE IF EXISTS `crm_enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_enquiry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `enquiry_id` varchar(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `street_address` varchar(200) NOT NULL,
  `apartment` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `enquiry_type` varchar(50) NOT NULL,
  `enquiry_description` longtext NOT NULL,
  `enquiry_channels` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `how_heard_this` varchar(50) NOT NULL,
  `urgency_level` varchar(50) NOT NULL,
  `enquiry_status` varchar(20) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enquiry_id` (`enquiry_id`),
  KEY `crm_enquiry_user_id_8cdae4f9_fk_masters_customuser_id` (`user_id`),
  CONSTRAINT `crm_enquiry_user_id_8cdae4f9_fk_masters_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_enquiry`
--

LOCK TABLES `crm_enquiry` WRITE;
/*!40000 ALTER TABLE `crm_enquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_enquiryitem`
--

DROP TABLE IF EXISTS `crm_enquiryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_enquiryitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_code` varchar(10) NOT NULL,
  `product_description` varchar(200) NOT NULL,
  `cost_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `quantity` int unsigned NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `enquiry_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_enquiryitem_enquiry_id_155db907_fk_crm_enquiry_id` (`enquiry_id`),
  CONSTRAINT `crm_enquiryitem_enquiry_id_155db907_fk_crm_enquiry_id` FOREIGN KEY (`enquiry_id`) REFERENCES `crm_enquiry` (`id`),
  CONSTRAINT `crm_enquiryitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_enquiryitem`
--

LOCK TABLES `crm_enquiryitem` WRITE;
/*!40000 ALTER TABLE `crm_enquiryitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_enquiryitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoice`
--

DROP TABLE IF EXISTS `crm_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `INVOICE_ID` varchar(20) NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `customer_ref_no` varchar(50) NOT NULL,
  `invoice_tags` varchar(100) NOT NULL,
  `terms_conditions` longtext NOT NULL,
  `invoice_status` varchar(20) NOT NULL,
  `payment_terms` varchar(20) NOT NULL,
  `billing_address` longtext NOT NULL,
  `shipping_address` longtext NOT NULL,
  `email_id` varchar(254) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `payment_ref_number` varchar(50) NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `payment_status` varchar(20) NOT NULL,
  `invoice_total` decimal(10,2) NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `sales_order_reference_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `INVOICE_ID` (`INVOICE_ID`),
  KEY `crm_invoice_customer_id_4ee1450d_fk_masters_customer_id` (`customer_id`),
  KEY `crm_invoice_sales_order_referenc_fa25ebb3_fk_crm_sales` (`sales_order_reference_id`),
  CONSTRAINT `crm_invoice_customer_id_4ee1450d_fk_masters_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `masters_customer` (`id`),
  CONSTRAINT `crm_invoice_sales_order_referenc_fa25ebb3_fk_crm_sales` FOREIGN KEY (`sales_order_reference_id`) REFERENCES `crm_salesorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoice`
--

LOCK TABLES `crm_invoice` WRITE;
/*!40000 ALTER TABLE `crm_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoiceattachment`
--

DROP TABLE IF EXISTS `crm_invoiceattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoiceattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) DEFAULT NULL,
  `invoice_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_invoiceattachment_invoice_id_0e73a11b_fk_crm_invoice_id` (`invoice_id`),
  CONSTRAINT `crm_invoiceattachment_invoice_id_0e73a11b_fk_crm_invoice_id` FOREIGN KEY (`invoice_id`) REFERENCES `crm_invoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoiceattachment`
--

LOCK TABLES `crm_invoiceattachment` WRITE;
/*!40000 ALTER TABLE `crm_invoiceattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoiceattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoiceitem`
--

DROP TABLE IF EXISTS `crm_invoiceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoiceitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `returned_qty` int NOT NULL,
  `uom` varchar(50) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `invoice_id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_invoiceitem_invoice_id_441542c3_fk_crm_invoice_id` (`invoice_id`),
  KEY `crm_invoiceitem_product_id_bf88e6dd_fk_masters_product_id` (`product_id`),
  CONSTRAINT `crm_invoiceitem_invoice_id_441542c3_fk_crm_invoice_id` FOREIGN KEY (`invoice_id`) REFERENCES `crm_invoice` (`id`),
  CONSTRAINT `crm_invoiceitem_product_id_bf88e6dd_fk_masters_product_id` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoiceitem`
--

LOCK TABLES `crm_invoiceitem` WRITE;
/*!40000 ALTER TABLE `crm_invoiceitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoiceitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoiceremark`
--

DROP TABLE IF EXISTS `crm_invoiceremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoiceremark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `invoice_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_invoiceremark_created_by_id_8fa2db96_fk_masters_c` (`created_by_id`),
  KEY `crm_invoiceremark_invoice_id_1121f603_fk_crm_invoice_id` (`invoice_id`),
  CONSTRAINT `crm_invoiceremark_created_by_id_8fa2db96_fk_masters_c` FOREIGN KEY (`created_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `crm_invoiceremark_invoice_id_1121f603_fk_crm_invoice_id` FOREIGN KEY (`invoice_id`) REFERENCES `crm_invoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoiceremark`
--

LOCK TABLES `crm_invoiceremark` WRITE;
/*!40000 ALTER TABLE `crm_invoiceremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoiceremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoicereturn`
--

DROP TABLE IF EXISTS `crm_invoicereturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoicereturn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `INVOICE_RETURN_ID` varchar(20) NOT NULL,
  `invoice_return_date` date NOT NULL,
  `customer_reference_no` varchar(50) NOT NULL,
  `email_id` varchar(254) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `sales_order_reference_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `INVOICE_RETURN_ID` (`INVOICE_RETURN_ID`),
  KEY `crm_invoicereturn_customer_id_0b53b41f_fk_masters_customer_id` (`customer_id`),
  KEY `crm_invoicereturn_sales_order_referenc_b29fdc1a_fk_crm_sales` (`sales_order_reference_id`),
  CONSTRAINT `crm_invoicereturn_customer_id_0b53b41f_fk_masters_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `masters_customer` (`id`),
  CONSTRAINT `crm_invoicereturn_sales_order_referenc_b29fdc1a_fk_crm_sales` FOREIGN KEY (`sales_order_reference_id`) REFERENCES `crm_salesorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoicereturn`
--

LOCK TABLES `crm_invoicereturn` WRITE;
/*!40000 ALTER TABLE `crm_invoicereturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoicereturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoicereturnattachment`
--

DROP TABLE IF EXISTS `crm_invoicereturnattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoicereturnattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `invoice_return_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_invoicereturnatt_invoice_return_id_7d92cd57_fk_crm_invoi` (`invoice_return_id`),
  CONSTRAINT `crm_invoicereturnatt_invoice_return_id_7d92cd57_fk_crm_invoi` FOREIGN KEY (`invoice_return_id`) REFERENCES `crm_invoicereturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoicereturnattachment`
--

LOCK TABLES `crm_invoicereturnattachment` WRITE;
/*!40000 ALTER TABLE `crm_invoicereturnattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoicereturnattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoicereturncomment`
--

DROP TABLE IF EXISTS `crm_invoicereturncomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoicereturncomment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `invoice_return_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_invoicereturncom_invoice_return_id_8b2c9879_fk_crm_invoi` (`invoice_return_id`),
  KEY `crm_invoicereturncom_user_id_6497f0da_fk_masters_c` (`user_id`),
  CONSTRAINT `crm_invoicereturncom_invoice_return_id_8b2c9879_fk_crm_invoi` FOREIGN KEY (`invoice_return_id`) REFERENCES `crm_invoicereturn` (`id`),
  CONSTRAINT `crm_invoicereturncom_user_id_6497f0da_fk_masters_c` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoicereturncomment`
--

LOCK TABLES `crm_invoicereturncomment` WRITE;
/*!40000 ALTER TABLE `crm_invoicereturncomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoicereturncomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoicereturnhistory`
--

DROP TABLE IF EXISTS `crm_invoicereturnhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoicereturnhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(100) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `invoice_return_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_invoicereturnhis_invoice_return_id_16455974_fk_crm_invoi` (`invoice_return_id`),
  KEY `crm_invoicereturnhis_user_id_ae143cd5_fk_masters_c` (`user_id`),
  CONSTRAINT `crm_invoicereturnhis_invoice_return_id_16455974_fk_crm_invoi` FOREIGN KEY (`invoice_return_id`) REFERENCES `crm_invoicereturn` (`id`),
  CONSTRAINT `crm_invoicereturnhis_user_id_ae143cd5_fk_masters_c` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoicereturnhistory`
--

LOCK TABLES `crm_invoicereturnhistory` WRITE;
/*!40000 ALTER TABLE `crm_invoicereturnhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoicereturnhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoicereturnitem`
--

DROP TABLE IF EXISTS `crm_invoicereturnitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoicereturnitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uom` varchar(50) NOT NULL,
  `invoiced_qty` int NOT NULL,
  `returned_qty` int NOT NULL,
  `return_reason` longtext NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `invoice_return_id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_invoicereturnite_invoice_return_id_3281effa_fk_crm_invoi` (`invoice_return_id`),
  KEY `crm_invoicereturnitem_product_id_0fe52ab4_fk_masters_product_id` (`product_id`),
  CONSTRAINT `crm_invoicereturnite_invoice_return_id_3281effa_fk_crm_invoi` FOREIGN KEY (`invoice_return_id`) REFERENCES `crm_invoicereturn` (`id`),
  CONSTRAINT `crm_invoicereturnitem_product_id_0fe52ab4_fk_masters_product_id` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoicereturnitem`
--

LOCK TABLES `crm_invoicereturnitem` WRITE;
/*!40000 ALTER TABLE `crm_invoicereturnitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoicereturnitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoicereturnitem_serial_numbers`
--

DROP TABLE IF EXISTS `crm_invoicereturnitem_serial_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoicereturnitem_serial_numbers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoicereturnitem_id` bigint NOT NULL,
  `serialnumber_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_invoicereturnitem_se_invoicereturnitem_id_ser_fb7b10be_uniq` (`invoicereturnitem_id`,`serialnumber_id`),
  KEY `crm_invoicereturnite_serialnumber_id_e98c7bf5_fk_purchase_` (`serialnumber_id`),
  CONSTRAINT `crm_invoicereturnite_invoicereturnitem_id_0ef1bf0d_fk_crm_invoi` FOREIGN KEY (`invoicereturnitem_id`) REFERENCES `crm_invoicereturnitem` (`id`),
  CONSTRAINT `crm_invoicereturnite_serialnumber_id_e98c7bf5_fk_purchase_` FOREIGN KEY (`serialnumber_id`) REFERENCES `purchase_serialnumber` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoicereturnitem_serial_numbers`
--

LOCK TABLES `crm_invoicereturnitem_serial_numbers` WRITE;
/*!40000 ALTER TABLE `crm_invoicereturnitem_serial_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoicereturnitem_serial_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoicereturnremark`
--

DROP TABLE IF EXISTS `crm_invoicereturnremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoicereturnremark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `invoice_return_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_invoicereturnrem_created_by_id_67d0de86_fk_masters_c` (`created_by_id`),
  KEY `crm_invoicereturnrem_invoice_return_id_8faf5fab_fk_crm_invoi` (`invoice_return_id`),
  CONSTRAINT `crm_invoicereturnrem_created_by_id_67d0de86_fk_masters_c` FOREIGN KEY (`created_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `crm_invoicereturnrem_invoice_return_id_8faf5fab_fk_crm_invoi` FOREIGN KEY (`invoice_return_id`) REFERENCES `crm_invoicereturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoicereturnremark`
--

LOCK TABLES `crm_invoicereturnremark` WRITE;
/*!40000 ALTER TABLE `crm_invoicereturnremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoicereturnremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_invoicereturnsummary`
--

DROP TABLE IF EXISTS `crm_invoicereturnsummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_invoicereturnsummary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `original_grand_total` decimal(10,2) NOT NULL,
  `global_discount` decimal(5,2) NOT NULL,
  `return_subtotal` decimal(10,2) NOT NULL,
  `global_discount_amount` decimal(10,2) NOT NULL,
  `rounding_adjustment` decimal(10,2) NOT NULL,
  `amount_to_refund` decimal(10,2) NOT NULL,
  `invoice_return_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_return_id` (`invoice_return_id`),
  CONSTRAINT `crm_invoicereturnsum_invoice_return_id_e880893d_fk_crm_invoi` FOREIGN KEY (`invoice_return_id`) REFERENCES `crm_invoicereturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_invoicereturnsummary`
--

LOCK TABLES `crm_invoicereturnsummary` WRITE;
/*!40000 ALTER TABLE `crm_invoicereturnsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_invoicereturnsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_ordersummary`
--

DROP TABLE IF EXISTS `crm_ordersummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_ordersummary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subtotal` decimal(10,2) NOT NULL,
  `global_discount` decimal(5,2) NOT NULL,
  `tax_summary` decimal(10,2) NOT NULL,
  `shipping_charges` decimal(10,2) NOT NULL,
  `rounding_adjustment` decimal(10,2) NOT NULL,
  `credit_note_applied` decimal(10,2) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `balance_due` decimal(10,2) NOT NULL,
  `invoice_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `crm_ordersummary_invoice_id_26c71110_fk_crm_invoice_id` FOREIGN KEY (`invoice_id`) REFERENCES `crm_invoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_ordersummary`
--

LOCK TABLES `crm_ordersummary` WRITE;
/*!40000 ALTER TABLE `crm_ordersummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_ordersummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_quotation`
--

DROP TABLE IF EXISTS `crm_quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_quotation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quotation_id` varchar(10) NOT NULL,
  `customer_po_referance` varchar(100) DEFAULT NULL,
  `quotation_type` varchar(50) NOT NULL,
  `quotation_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `currency` varchar(3) NOT NULL,
  `payment_terms` varchar(50) NOT NULL,
  `expected_delivery` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `revise_count` int unsigned NOT NULL,
  `globalDiscount` decimal(5,2) NOT NULL,
  `shippingCharges` decimal(10,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `customer_name_id` bigint NOT NULL,
  `sales_rep_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quotation_id` (`quotation_id`),
  KEY `crm_quotation_customer_name_id_473f82ea_fk_masters_customer_id` (`customer_name_id`),
  KEY `crm_quotation_user_id_e8e021c9_fk_masters_customuser_id` (`user_id`),
  KEY `crm_quotation_sales_rep_id_f8b7128b_fk_masters_customuser_id` (`sales_rep_id`),
  CONSTRAINT `crm_quotation_customer_name_id_473f82ea_fk_masters_customer_id` FOREIGN KEY (`customer_name_id`) REFERENCES `masters_customer` (`id`),
  CONSTRAINT `crm_quotation_sales_rep_id_f8b7128b_fk_masters_customuser_id` FOREIGN KEY (`sales_rep_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `crm_quotation_user_id_e8e021c9_fk_masters_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `crm_quotation_chk_1` CHECK ((`revise_count` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_quotation`
--

LOCK TABLES `crm_quotation` WRITE;
/*!40000 ALTER TABLE `crm_quotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_quotationattachment`
--

DROP TABLE IF EXISTS `crm_quotationattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_quotationattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) DEFAULT NULL,
  `quotation_id` bigint NOT NULL,
  `uploaded_by_id` bigint DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_quotationattachm_quotation_id_6d997d5d_fk_crm_quota` (`quotation_id`),
  KEY `crm_quotationattachm_uploaded_by_id_2a133a4e_fk_masters_c` (`uploaded_by_id`),
  CONSTRAINT `crm_quotationattachm_quotation_id_6d997d5d_fk_crm_quota` FOREIGN KEY (`quotation_id`) REFERENCES `crm_quotation` (`id`),
  CONSTRAINT `crm_quotationattachm_uploaded_by_id_2a133a4e_fk_masters_c` FOREIGN KEY (`uploaded_by_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_quotationattachment`
--

LOCK TABLES `crm_quotationattachment` WRITE;
/*!40000 ALTER TABLE `crm_quotationattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_quotationattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_quotationcomment`
--

DROP TABLE IF EXISTS `crm_quotationcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_quotationcomment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `person_name_id` bigint DEFAULT NULL,
  `quotation_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_quotationcomment_person_name_id_56371dae_fk_masters_c` (`person_name_id`),
  KEY `crm_quotationcomment_quotation_id_8aa7d285_fk_crm_quotation_id` (`quotation_id`),
  CONSTRAINT `crm_quotationcomment_person_name_id_56371dae_fk_masters_c` FOREIGN KEY (`person_name_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `crm_quotationcomment_quotation_id_8aa7d285_fk_crm_quotation_id` FOREIGN KEY (`quotation_id`) REFERENCES `crm_quotation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_quotationcomment`
--

LOCK TABLES `crm_quotationcomment` WRITE;
/*!40000 ALTER TABLE `crm_quotationcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_quotationcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_quotationhistory`
--

DROP TABLE IF EXISTS `crm_quotationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_quotationhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `action_by_id` bigint DEFAULT NULL,
  `quotation_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_quotationhistory_action_by_id_6152fb9d_fk_masters_c` (`action_by_id`),
  KEY `crm_quotationhistory_quotation_id_a57f6adf_fk_crm_quotation_id` (`quotation_id`),
  CONSTRAINT `crm_quotationhistory_action_by_id_6152fb9d_fk_masters_c` FOREIGN KEY (`action_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `crm_quotationhistory_quotation_id_a57f6adf_fk_crm_quotation_id` FOREIGN KEY (`quotation_id`) REFERENCES `crm_quotation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_quotationhistory`
--

LOCK TABLES `crm_quotationhistory` WRITE;
/*!40000 ALTER TABLE `crm_quotationhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_quotationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_quotationitem`
--

DROP TABLE IF EXISTS `crm_quotationitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_quotationitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `quantity` int unsigned NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `product_id_id` bigint NOT NULL,
  `quotation_id` bigint NOT NULL,
  `uom_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_quotationitem_product_id_id_68e313ed_fk_masters_product_id` (`product_id_id`),
  KEY `crm_quotationitem_quotation_id_8b3b7d5f_fk_crm_quotation_id` (`quotation_id`),
  KEY `crm_quotationitem_uom_id_e8d1a791_fk_masters_uom_id` (`uom_id`),
  CONSTRAINT `crm_quotationitem_product_id_id_68e313ed_fk_masters_product_id` FOREIGN KEY (`product_id_id`) REFERENCES `masters_product` (`id`),
  CONSTRAINT `crm_quotationitem_quotation_id_8b3b7d5f_fk_crm_quotation_id` FOREIGN KEY (`quotation_id`) REFERENCES `crm_quotation` (`id`),
  CONSTRAINT `crm_quotationitem_uom_id_e8d1a791_fk_masters_uom_id` FOREIGN KEY (`uom_id`) REFERENCES `masters_uom` (`id`),
  CONSTRAINT `crm_quotationitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_quotationitem`
--

LOCK TABLES `crm_quotationitem` WRITE;
/*!40000 ALTER TABLE `crm_quotationitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_quotationitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_salesorder`
--

DROP TABLE IF EXISTS `crm_salesorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_salesorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_id` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `due_date` date DEFAULT NULL,
  `terms_conditions` longtext NOT NULL,
  `shipping_method` varchar(50) NOT NULL,
  `expected_delivery` date DEFAULT NULL,
  `tracking_number` varchar(50) NOT NULL,
  `internal_notes` longtext NOT NULL,
  `customer_notes` longtext NOT NULL,
  `global_discount` decimal(5,2) NOT NULL,
  `shipping_charges` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` bigint NOT NULL,
  `sales_rep_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_order_id` (`sales_order_id`),
  KEY `crm_salesorder_customer_id_49377c00_fk_masters_customer_id` (`customer_id`),
  KEY `crm_salesorder_sales_rep_id_e5f9a4b4_fk_masters_customuser_id` (`sales_rep_id`),
  CONSTRAINT `crm_salesorder_customer_id_49377c00_fk_masters_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `masters_customer` (`id`),
  CONSTRAINT `crm_salesorder_sales_rep_id_e5f9a4b4_fk_masters_customuser_id` FOREIGN KEY (`sales_rep_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_salesorder`
--

LOCK TABLES `crm_salesorder` WRITE;
/*!40000 ALTER TABLE `crm_salesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_salesorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_salesordercomment`
--

DROP TABLE IF EXISTS `crm_salesordercomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_salesordercomment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `sales_order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_salesordercommen_sales_order_id_9117a063_fk_crm_sales` (`sales_order_id`),
  KEY `crm_salesordercomment_user_id_fd987348_fk_masters_customuser_id` (`user_id`),
  CONSTRAINT `crm_salesordercommen_sales_order_id_9117a063_fk_crm_sales` FOREIGN KEY (`sales_order_id`) REFERENCES `crm_salesorder` (`id`),
  CONSTRAINT `crm_salesordercomment_user_id_fd987348_fk_masters_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_salesordercomment`
--

LOCK TABLES `crm_salesordercomment` WRITE;
/*!40000 ALTER TABLE `crm_salesordercomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_salesordercomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_salesorderhistory`
--

DROP TABLE IF EXISTS `crm_salesorderhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_salesorderhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(100) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `sales_order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_salesorderhistor_sales_order_id_debc21f0_fk_crm_sales` (`sales_order_id`),
  KEY `crm_salesorderhistory_user_id_ba3ed176_fk_masters_customuser_id` (`user_id`),
  CONSTRAINT `crm_salesorderhistor_sales_order_id_debc21f0_fk_crm_sales` FOREIGN KEY (`sales_order_id`) REFERENCES `crm_salesorder` (`id`),
  CONSTRAINT `crm_salesorderhistory_user_id_ba3ed176_fk_masters_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_salesorderhistory`
--

LOCK TABLES `crm_salesorderhistory` WRITE;
/*!40000 ALTER TABLE `crm_salesorderhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_salesorderhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_salesorderitem`
--

DROP TABLE IF EXISTS `crm_salesorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_salesorderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uom_id` bigint DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `product_id` bigint NOT NULL,
  `sales_order_id` bigint NOT NULL,
  `tax_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_salesorderitem_product_id_09356705_fk_masters_product_id` (`product_id`),
  KEY `crm_salesorderitem_sales_order_id_f63c5f8f_fk_crm_salesorder_id` (`sales_order_id`),
  KEY `crm_salesorderitem_tax_id_11e4bcef_fk_masters_taxcode_id` (`tax_id`),
  KEY `crm_salesorderitem_uom_id_18244516` (`uom_id`),
  CONSTRAINT `crm_salesorderitem_product_id_09356705_fk_masters_product_id` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`),
  CONSTRAINT `crm_salesorderitem_sales_order_id_f63c5f8f_fk_crm_salesorder_id` FOREIGN KEY (`sales_order_id`) REFERENCES `crm_salesorder` (`id`),
  CONSTRAINT `crm_salesorderitem_tax_id_11e4bcef_fk_masters_taxcode_id` FOREIGN KEY (`tax_id`) REFERENCES `masters_taxcode` (`id`),
  CONSTRAINT `crm_salesorderitem_uom_id_18244516_fk_masters_uom_id` FOREIGN KEY (`uom_id`) REFERENCES `masters_uom` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_salesorderitem`
--

LOCK TABLES `crm_salesorderitem` WRITE;
/*!40000 ALTER TABLE `crm_salesorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_salesorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_masters_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_masters_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-11-07 06:55:14.859139','1','f9b1cd19a3eb04a418f37588d7440e3a87384cb2',1,'[{\"added\": {}}]',86,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(85,'authtoken','token'),(86,'authtoken','tokenproxy'),(4,'contenttypes','contenttype'),(6,'core','attendance'),(7,'core','candidate'),(8,'core','candidatedocument'),(9,'core','governmentholiday'),(10,'core','task'),(24,'crm','deliverynote'),(25,'crm','deliverynoteattachment'),(26,'crm','deliverynotecustomeracknowledgement'),(27,'crm','deliverynoteitem'),(28,'crm','deliverynoteremark'),(29,'crm','deliverynotereturn'),(30,'crm','deliverynotereturnattachment'),(31,'crm','deliverynotereturncomment'),(32,'crm','deliverynotereturnhistory'),(33,'crm','deliverynotereturnitem'),(34,'crm','deliverynotereturnremark'),(35,'crm','enquiry'),(36,'crm','enquiryitem'),(37,'crm','invoice'),(38,'crm','invoiceattachment'),(39,'crm','invoiceitem'),(40,'crm','invoiceremark'),(41,'crm','invoicereturn'),(42,'crm','invoicereturnattachment'),(43,'crm','invoicereturncomment'),(44,'crm','invoicereturnhistory'),(45,'crm','invoicereturnitem'),(46,'crm','invoicereturnremark'),(47,'crm','invoicereturnsummary'),(48,'crm','ordersummary'),(49,'crm','quotation'),(50,'crm','quotationattachment'),(51,'crm','quotationcomment'),(52,'crm','quotationhistory'),(53,'crm','quotationitem'),(54,'crm','quotationrevision'),(55,'crm','salesorder'),(56,'crm','salesordercomment'),(57,'crm','salesorderhistory'),(58,'crm','salesorderitem'),(75,'finance','creditnote'),(76,'finance','creditnoteattachment'),(77,'finance','creditnoteitem'),(78,'finance','creditnotepaymentrefund'),(79,'finance','creditnoteremark'),(80,'finance','debitnote'),(81,'finance','debitnoteattachment'),(82,'finance','debitnoteitem'),(83,'finance','debitnotepaymentrecover'),(84,'finance','debitnoteremark'),(11,'masters','branch'),(12,'masters','category'),(13,'masters','color'),(22,'masters','customer'),(23,'masters','customuser'),(14,'masters','department'),(21,'masters','product'),(87,'masters','productsupplier'),(20,'masters','role'),(15,'masters','size'),(16,'masters','supplier'),(88,'masters','supplierattachment'),(89,'masters','suppliercomment'),(17,'masters','taxcode'),(18,'masters','uom'),(19,'masters','warehouse'),(59,'purchase','batchnumber'),(74,'purchase','batchserialnumber'),(60,'purchase','purchaseorder'),(73,'purchase','purchaseordercomment'),(72,'purchase','purchaseorderhistory'),(71,'purchase','purchaseorderitem'),(70,'purchase','serialnumber'),(69,'purchase','serialnumberreturn'),(61,'purchase','stockreceipt'),(68,'purchase','stockreceiptattachment'),(62,'purchase','stockreceiptitem'),(67,'purchase','stockreceiptremark'),(63,'purchase','stockreturn'),(66,'purchase','stockreturnattachment'),(65,'purchase','stockreturnitem'),(64,'purchase','stockreturnremark'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'core','0001_initial','2025-11-05 09:50:26.964661'),(2,'contenttypes','0001_initial','2025-11-05 09:50:27.034077'),(3,'contenttypes','0002_remove_content_type_name','2025-11-05 09:50:27.159478'),(4,'auth','0001_initial','2025-11-05 09:50:27.553354'),(5,'auth','0002_alter_permission_name_max_length','2025-11-05 09:50:27.638190'),(6,'auth','0003_alter_user_email_max_length','2025-11-05 09:50:27.649089'),(7,'auth','0004_alter_user_username_opts','2025-11-05 09:50:27.659466'),(8,'auth','0005_alter_user_last_login_null','2025-11-05 09:50:27.671142'),(9,'auth','0006_require_contenttypes_0002','2025-11-05 09:50:27.677793'),(10,'auth','0007_alter_validators_add_error_messages','2025-11-05 09:50:27.688218'),(11,'auth','0008_alter_user_username_max_length','2025-11-05 09:50:27.698671'),(12,'auth','0009_alter_user_last_name_max_length','2025-11-05 09:50:27.708858'),(13,'auth','0010_alter_group_name_max_length','2025-11-05 09:50:27.731089'),(14,'auth','0011_update_proxy_permissions','2025-11-05 09:50:27.745600'),(15,'auth','0012_alter_user_first_name_max_length','2025-11-05 09:50:27.755738'),(16,'masters','0001_initial','2025-11-05 09:50:30.387305'),(17,'admin','0001_initial','2025-11-05 09:50:30.616576'),(18,'admin','0002_logentry_remove_auto_add','2025-11-05 09:50:30.632243'),(19,'admin','0003_logentry_add_action_flag_choices','2025-11-05 09:50:30.646985'),(20,'authtoken','0001_initial','2025-11-05 09:50:30.773065'),(21,'authtoken','0002_auto_20160226_1747','2025-11-05 09:50:30.813091'),(22,'authtoken','0003_tokenproxy','2025-11-05 09:50:30.821514'),(23,'authtoken','0004_alter_tokenproxy_options','2025-11-05 09:50:30.832647'),(24,'core','0002_initial','2025-11-05 09:50:31.746920'),(25,'purchase','0001_initial','2025-11-05 09:50:35.389169'),(26,'crm','0001_initial','2025-11-05 09:50:36.611576'),(27,'crm','0002_initial','2025-11-05 09:50:46.453580'),(28,'crm','0003_quotationattachment_timestamp','2025-11-05 09:50:46.570156'),(29,'finance','0001_initial','2025-11-05 09:50:46.934432'),(30,'finance','0002_initial','2025-11-05 09:50:50.468707'),(31,'masters','0002_alter_customuser_managers_remove_customuser_username_and_more','2025-11-05 09:50:50.761141'),(32,'masters','0003_alter_department_department_name_and_more','2025-11-05 09:50:50.875528'),(33,'masters','0004_alter_role_role_alter_role_unique_together','2025-11-05 09:50:51.093676'),(34,'masters','0005_alter_role_role','2025-11-05 09:50:51.139319'),(35,'sessions','0001_initial','2025-11-05 09:50:51.207209'),(36,'core','0003_attendance_status','2025-11-24 13:03:46.033596'),(37,'masters','0006_alter_customer_assigned_sales_rep','2025-11-24 13:03:46.278696'),(38,'crm','0004_alter_enquiry_phone_number','2025-12-02 10:13:47.846193'),(39,'crm','0005_alter_quotation_sales_rep','2025-12-02 10:13:48.287384'),(40,'masters','0002_alter_supplier_table','2025-12-05 13:44:26.047247'),(41,'masters','0003_alter_product_supplier','2025-12-05 13:44:26.055548'),(42,'crm','0002_delete_quotationrevision','2025-12-16 18:45:26.000011'),(43,'crm','0003_salesorderitem_tax','2025-12-16 18:45:26.235053'),(44,'crm','0004_alter_salesorderitem_uom','2025-12-16 18:45:26.812732');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('97ry3hiij991k3xrjybfr4apdqohc63s','eyJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9:1vNWMH:BjUKU5xsFarsBNNfnlxBGo_FHj_jqMvBWFMVfhJFVHk','2025-12-08 13:11:57.701046'),('9qmzrfx7wtz4r70y1mijo728h6m1held','eyJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9:1vNm0n:yaRooV13Wht_cLqPD-4pmS1QLHfA3FZtczZuGtg6lZc','2025-12-09 05:54:49.839125'),('aivrtyamjmyderkttssnhwodsqtomp3l','.eJxVjM0OwiAQhN-FsyEgPysevfcZyLKwUjU0Ke3J-O62SQ96nPm-mbeIuC41rr3MccziKow4_XYJ6VnaDvID232SNLVlHpPcFXnQLocpl9ftcP8OKva6rT0GxVopUprRW42pBDbFsYHzFqwPl-zZZlAFmJzBAMzWQVLsgDSJzxfowzg1:1vRWAt:_PI70tLFkym_D8NXkDXXbl6fXjE5IRtFHqpwM7eR6oQ','2025-12-19 13:48:43.152330'),('byuxlekrtk76t9ghqo6v00vrni1di5rr','.eJxVjMsOwiAQRf-FtSEgdIa6dN9vIDM8pGogKe3K-O_apAvd3nPOfQlP21r81tPi5yguQovT78YUHqnuIN6p3poMra7LzHJX5EG7nFpMz-vh_h0U6uVbh8AGMkXkwWiwECGbc06YEdwYkIlJESFbDQyOtSZnrVMDJOfUiCjeH_-9N-A:1vHG9P:kjT9gsHD_8TASqZIiVoEvRa1-_vPqppDSoYYlS4QFBg','2025-11-21 06:40:47.587860'),('thlun26vk7muow2ch80rbkq9r1kwmwm5','eyJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9:1vNnoX:SqxJpzMB9NXd4kIBmgP0-id3fOr14EcOeFty-8mei_s','2025-12-09 07:50:17.094291');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_creditnote`
--

DROP TABLE IF EXISTS `finance_creditnote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_creditnote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `CREDIT_NOTE_ID` varchar(20) NOT NULL,
  `credit_note_date` date NOT NULL,
  `currency` varchar(3) NOT NULL,
  `billing_address` longtext NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `payment_terms` varchar(20) NOT NULL,
  `invoice_status` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `invoice_total` decimal(10,2) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `invoice_reference_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CREDIT_NOTE_ID` (`CREDIT_NOTE_ID`),
  KEY `finance_creditnote_branch_id_82e7d96e_fk_masters_branch_id` (`branch_id`),
  KEY `finance_creditnote_created_by_id_8797147b_fk_core_candidate_id` (`created_by_id`),
  KEY `finance_creditnote_customer_id_fe09fb9c_fk_masters_customer_id` (`customer_id`),
  KEY `finance_creditnote_invoice_reference_id_7295e69a_fk_crm_invoi` (`invoice_reference_id`),
  CONSTRAINT `finance_creditnote_branch_id_82e7d96e_fk_masters_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `masters_branch` (`id`),
  CONSTRAINT `finance_creditnote_created_by_id_8797147b_fk_core_candidate_id` FOREIGN KEY (`created_by_id`) REFERENCES `core_candidate` (`id`),
  CONSTRAINT `finance_creditnote_customer_id_fe09fb9c_fk_masters_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `masters_customer` (`id`),
  CONSTRAINT `finance_creditnote_invoice_reference_id_7295e69a_fk_crm_invoi` FOREIGN KEY (`invoice_reference_id`) REFERENCES `crm_invoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_creditnote`
--

LOCK TABLES `finance_creditnote` WRITE;
/*!40000 ALTER TABLE `finance_creditnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_creditnote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_creditnoteattachment`
--

DROP TABLE IF EXISTS `finance_creditnoteattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_creditnoteattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `credit_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finance_creditnoteat_credit_note_id_bef41266_fk_finance_c` (`credit_note_id`),
  CONSTRAINT `finance_creditnoteat_credit_note_id_bef41266_fk_finance_c` FOREIGN KEY (`credit_note_id`) REFERENCES `finance_creditnote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_creditnoteattachment`
--

LOCK TABLES `finance_creditnoteattachment` WRITE;
/*!40000 ALTER TABLE `finance_creditnoteattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_creditnoteattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_creditnoteitem`
--

DROP TABLE IF EXISTS `finance_creditnoteitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_creditnoteitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `returned_qty` int NOT NULL,
  `uom` varchar(50) NOT NULL,
  `return_reason` longtext NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `credit_note_id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `finance_creditnoteit_credit_note_id_2ce44642_fk_finance_c` (`credit_note_id`),
  KEY `finance_creditnoteitem_product_id_0cb3b140_fk_masters_product_id` (`product_id`),
  CONSTRAINT `finance_creditnoteit_credit_note_id_2ce44642_fk_finance_c` FOREIGN KEY (`credit_note_id`) REFERENCES `finance_creditnote` (`id`),
  CONSTRAINT `finance_creditnoteitem_product_id_0cb3b140_fk_masters_product_id` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_creditnoteitem`
--

LOCK TABLES `finance_creditnoteitem` WRITE;
/*!40000 ALTER TABLE `finance_creditnoteitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_creditnoteitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_creditnotepaymentrefund`
--

DROP TABLE IF EXISTS `finance_creditnotepaymentrefund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_creditnotepaymentrefund` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount_paid_by_customer` decimal(10,2) NOT NULL,
  `balance_due_by_customer` decimal(10,2) NOT NULL,
  `invoice_return_amount` decimal(10,2) NOT NULL,
  `balance_to_refund` decimal(10,2) NOT NULL,
  `refund_mode` varchar(20) NOT NULL,
  `refund_paid` decimal(10,2) NOT NULL,
  `refund_date` date DEFAULT NULL,
  `adjusted_invoice_reference` varchar(100) NOT NULL,
  `credit_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `credit_note_id` (`credit_note_id`),
  CONSTRAINT `finance_creditnotepa_credit_note_id_aaf9d24c_fk_finance_c` FOREIGN KEY (`credit_note_id`) REFERENCES `finance_creditnote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_creditnotepaymentrefund`
--

LOCK TABLES `finance_creditnotepaymentrefund` WRITE;
/*!40000 ALTER TABLE `finance_creditnotepaymentrefund` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_creditnotepaymentrefund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_creditnoteremark`
--

DROP TABLE IF EXISTS `finance_creditnoteremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_creditnoteremark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `credit_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finance_creditnotere_created_by_id_fe8b23f5_fk_masters_c` (`created_by_id`),
  KEY `finance_creditnotere_credit_note_id_2c541dfd_fk_finance_c` (`credit_note_id`),
  CONSTRAINT `finance_creditnotere_created_by_id_fe8b23f5_fk_masters_c` FOREIGN KEY (`created_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `finance_creditnotere_credit_note_id_2c541dfd_fk_finance_c` FOREIGN KEY (`credit_note_id`) REFERENCES `finance_creditnote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_creditnoteremark`
--

LOCK TABLES `finance_creditnoteremark` WRITE;
/*!40000 ALTER TABLE `finance_creditnoteremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_creditnoteremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_debitnote`
--

DROP TABLE IF EXISTS `finance_debitnote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_debitnote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `DEBIT_NOTE_ID` varchar(20) NOT NULL,
  `debit_note_date` date NOT NULL,
  `currency` varchar(3) NOT NULL,
  `po_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `payment_terms` varchar(20) NOT NULL,
  `inco_terms` varchar(30) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `credit_limit` decimal(10,2) NOT NULL,
  `purchase_total` decimal(10,2) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `po_reference_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DEBIT_NOTE_ID` (`DEBIT_NOTE_ID`),
  KEY `finance_debitnote_branch_id_703977bf_fk_masters_branch_id` (`branch_id`),
  KEY `finance_debitnote_created_by_id_ab1705ba_fk_core_candidate_id` (`created_by_id`),
  KEY `finance_debitnote_po_reference_id_cde0773f_fk_purchase_` (`po_reference_id`),
  KEY `finance_debitnote_supplier_id_38e3bcbb_fk_masters_supplier_id` (`supplier_id`),
  CONSTRAINT `finance_debitnote_branch_id_703977bf_fk_masters_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `masters_branch` (`id`),
  CONSTRAINT `finance_debitnote_created_by_id_ab1705ba_fk_core_candidate_id` FOREIGN KEY (`created_by_id`) REFERENCES `core_candidate` (`id`),
  CONSTRAINT `finance_debitnote_po_reference_id_cde0773f_fk_purchase_` FOREIGN KEY (`po_reference_id`) REFERENCES `purchase_purchaseorder` (`id`),
  CONSTRAINT `finance_debitnote_supplier_id_38e3bcbb_fk_masters_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `masters_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_debitnote`
--

LOCK TABLES `finance_debitnote` WRITE;
/*!40000 ALTER TABLE `finance_debitnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_debitnote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_debitnoteattachment`
--

DROP TABLE IF EXISTS `finance_debitnoteattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_debitnoteattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `debit_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finance_debitnoteatt_debit_note_id_ee9cc590_fk_finance_d` (`debit_note_id`),
  CONSTRAINT `finance_debitnoteatt_debit_note_id_ee9cc590_fk_finance_d` FOREIGN KEY (`debit_note_id`) REFERENCES `finance_debitnote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_debitnoteattachment`
--

LOCK TABLES `finance_debitnoteattachment` WRITE;
/*!40000 ALTER TABLE `finance_debitnoteattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_debitnoteattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_debitnoteitem`
--

DROP TABLE IF EXISTS `finance_debitnoteitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_debitnoteitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `returned_qty` int NOT NULL,
  `uom` varchar(50) NOT NULL,
  `return_reason` longtext NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `debit_note_id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `finance_debitnoteite_debit_note_id_cb0032f6_fk_finance_d` (`debit_note_id`),
  KEY `finance_debitnoteitem_product_id_7f1f903d_fk_masters_product_id` (`product_id`),
  CONSTRAINT `finance_debitnoteite_debit_note_id_cb0032f6_fk_finance_d` FOREIGN KEY (`debit_note_id`) REFERENCES `finance_debitnote` (`id`),
  CONSTRAINT `finance_debitnoteitem_product_id_7f1f903d_fk_masters_product_id` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_debitnoteitem`
--

LOCK TABLES `finance_debitnoteitem` WRITE;
/*!40000 ALTER TABLE `finance_debitnoteitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_debitnoteitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_debitnotepaymentrecover`
--

DROP TABLE IF EXISTS `finance_debitnotepaymentrecover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_debitnotepaymentrecover` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount_paid_to_vendor` decimal(10,2) NOT NULL,
  `balance_due_to_vendor` decimal(10,2) NOT NULL,
  `purchase_return_amount` decimal(10,2) NOT NULL,
  `balance_to_recover` decimal(10,2) NOT NULL,
  `refund_mode` varchar(20) NOT NULL,
  `refund_received` decimal(10,2) NOT NULL,
  `refund_date` date DEFAULT NULL,
  `adjusted_invoice_reference` varchar(100) NOT NULL,
  `debit_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `debit_note_id` (`debit_note_id`),
  CONSTRAINT `finance_debitnotepay_debit_note_id_e334a0c8_fk_finance_d` FOREIGN KEY (`debit_note_id`) REFERENCES `finance_debitnote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_debitnotepaymentrecover`
--

LOCK TABLES `finance_debitnotepaymentrecover` WRITE;
/*!40000 ALTER TABLE `finance_debitnotepaymentrecover` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_debitnotepaymentrecover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_debitnoteremark`
--

DROP TABLE IF EXISTS `finance_debitnoteremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_debitnoteremark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `debit_note_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finance_debitnoterem_created_by_id_b2815f2f_fk_masters_c` (`created_by_id`),
  KEY `finance_debitnoterem_debit_note_id_728cf55e_fk_finance_d` (`debit_note_id`),
  CONSTRAINT `finance_debitnoterem_created_by_id_b2815f2f_fk_masters_c` FOREIGN KEY (`created_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `finance_debitnoterem_debit_note_id_728cf55e_fk_finance_d` FOREIGN KEY (`debit_note_id`) REFERENCES `finance_debitnote` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_debitnoteremark`
--

LOCK TABLES `finance_debitnoteremark` WRITE;
/*!40000 ALTER TABLE `finance_debitnoteremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_debitnoteremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_branch`
--

DROP TABLE IF EXISTS `masters_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_branch`
--

LOCK TABLES `masters_branch` WRITE;
/*!40000 ALTER TABLE `masters_branch` DISABLE KEYS */;
INSERT INTO `masters_branch` VALUES (1,'Delhi Updated');
/*!40000 ALTER TABLE `masters_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_category`
--

DROP TABLE IF EXISTS `masters_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_category`
--

LOCK TABLES `masters_category` WRITE;
/*!40000 ALTER TABLE `masters_category` DISABLE KEYS */;
INSERT INTO `masters_category` VALUES (2,'Electronics');
/*!40000 ALTER TABLE `masters_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_color`
--

DROP TABLE IF EXISTS `masters_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_color` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_color`
--

LOCK TABLES `masters_color` WRITE;
/*!40000 ALTER TABLE `masters_color` DISABLE KEYS */;
INSERT INTO `masters_color` VALUES (1,'Blue');
/*!40000 ALTER TABLE `masters_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_customer`
--

DROP TABLE IF EXISTS `masters_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `customer_type` varchar(50) NOT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `industry` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gst_tax_id` varchar(20) NOT NULL,
  `credit_limit` decimal(12,2) NOT NULL,
  `available_limit` decimal(12,2) NOT NULL,
  `billing_address` longtext NOT NULL,
  `shipping_address` longtext NOT NULL,
  `payment_terms` varchar(50) NOT NULL,
  `credit_term` varchar(50) NOT NULL,
  `last_edit_date` datetime(6) NOT NULL,
  `assigned_sales_rep_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `customer_id` (`customer_id`),
  KEY `masters_customer_assigned_sales_rep_i_ce804ee8_fk_masters_c` (`assigned_sales_rep_id`),
  CONSTRAINT `masters_customer_assigned_sales_rep_i_ce804ee8_fk_masters_c` FOREIGN KEY (`assigned_sales_rep_id`) REFERENCES `masters_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_customer`
--

LOCK TABLES `masters_customer` WRITE;
/*!40000 ALTER TABLE `masters_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `masters_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_customuser`
--

DROP TABLE IF EXISTS `masters_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_customuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `reporting_to` varchar(25) DEFAULT NULL,
  `available_branches` json NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `reset_token` varchar(32) DEFAULT NULL,
  `reset_token_expiry` datetime(6) DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `employee_id` (`employee_id`),
  KEY `masters_customuser_branch_id_8eea3004_fk_masters_branch_id` (`branch_id`),
  KEY `masters_customuser_department_id_0fc1ae4c_fk_masters_d` (`department_id`),
  KEY `masters_customuser_role_id_91a3998c_fk_masters_role_id` (`role_id`),
  CONSTRAINT `masters_customuser_branch_id_8eea3004_fk_masters_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `masters_branch` (`id`),
  CONSTRAINT `masters_customuser_department_id_0fc1ae4c_fk_masters_d` FOREIGN KEY (`department_id`) REFERENCES `masters_department` (`id`),
  CONSTRAINT `masters_customuser_role_id_91a3998c_fk_masters_role_id` FOREIGN KEY (`role_id`) REFERENCES `masters_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_customuser`
--

LOCK TABLES `masters_customuser` WRITE;
/*!40000 ALTER TABLE `masters_customuser` DISABLE KEYS */;
INSERT INTO `masters_customuser` VALUES (1,'pbkdf2_sha256$600000$0Yqy0b5Gdjqb3Ny0ICOEEU$3qf7WgiVT0PR2j0TUpBlLb3R/bR9FZ14i7EE+B3lbcY=','2025-11-24 13:08:07.046042',1,1,1,'2025-11-07 06:40:03.903564','adminqa','','admin@stacklyqa.com',NULL,NULL,'[]',NULL,'',NULL,NULL,NULL,NULL,NULL),(2,'!xk1obPm59IeP5yu0Z1MIniZDNxBsqPMjTQ21EtXQ',NULL,0,0,1,'2025-11-14 11:34:10.893236','Harshitha','','harshitha@thestackly.com',NULL,NULL,'[]',NULL,'',NULL,NULL,NULL,NULL,NULL),(3,'pbkdf2_sha256$600000$1Q9SIzSumDENFzCoObEaUD$1WhfhwYn+fkgnInsE8Ys1a47mwHPg0lHC49wcNxDVO0=','2025-12-05 13:48:43.146152',1,1,1,'2025-12-05 13:48:31.589112','stackly','','stackly@dev.com',NULL,NULL,'[]',NULL,'',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `masters_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_customuser_groups`
--

DROP TABLE IF EXISTS `masters_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_customuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `masters_customuser_groups_customuser_id_group_id_d93f9822_uniq` (`customuser_id`,`group_id`),
  KEY `masters_customuser_groups_group_id_fb44b699_fk_auth_group_id` (`group_id`),
  CONSTRAINT `masters_customuser_g_customuser_id_c7317db1_fk_masters_c` FOREIGN KEY (`customuser_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `masters_customuser_groups_group_id_fb44b699_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_customuser_groups`
--

LOCK TABLES `masters_customuser_groups` WRITE;
/*!40000 ALTER TABLE `masters_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `masters_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_customuser_user_permissions`
--

DROP TABLE IF EXISTS `masters_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_customuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `masters_customuser_user__customuser_id_permission_b7c7c23b_uniq` (`customuser_id`,`permission_id`),
  KEY `masters_customuser_u_permission_id_2b5ce3e3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `masters_customuser_u_customuser_id_3da2d7c6_fk_masters_c` FOREIGN KEY (`customuser_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `masters_customuser_u_permission_id_2b5ce3e3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_customuser_user_permissions`
--

LOCK TABLES `masters_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `masters_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `masters_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_department`
--

DROP TABLE IF EXISTS `masters_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `description` longtext,
  `branch_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `masters_department_branch_id_department_name_b30b465e_uniq` (`branch_id`,`department_name`),
  CONSTRAINT `masters_department_branch_id_d7140a7b_fk_masters_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `masters_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_department`
--

LOCK TABLES `masters_department` WRITE;
/*!40000 ALTER TABLE `masters_department` DISABLE KEYS */;
INSERT INTO `masters_department` VALUES (2,'IT','IT Department','Handles all technical operations',1);
/*!40000 ALTER TABLE `masters_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_product`
--

DROP TABLE IF EXISTS `masters_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `is_custom_category` tinyint(1) NOT NULL,
  `custom_category` varchar(255) DEFAULT NULL,
  `is_custom_tax_code` tinyint(1) NOT NULL,
  `custom_tax_code` varchar(255) DEFAULT NULL,
  `is_custom_uom` tinyint(1) NOT NULL,
  `custom_uom` varchar(255) DEFAULT NULL,
  `is_custom_warehouse` tinyint(1) NOT NULL,
  `custom_warehouse` varchar(255) DEFAULT NULL,
  `is_custom_size` tinyint(1) NOT NULL,
  `custom_size` varchar(255) DEFAULT NULL,
  `is_custom_color` tinyint(1) NOT NULL,
  `custom_color` varchar(255) DEFAULT NULL,
  `is_custom_supplier` tinyint(1) NOT NULL,
  `custom_supplier` varchar(255) DEFAULT NULL,
  `related_products` varchar(1000) NOT NULL,
  `is_custom_related_products` tinyint(1) NOT NULL,
  `custom_related_products` varchar(255) DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `quantity` int NOT NULL,
  `stock_level` int NOT NULL,
  `reorder_level` int NOT NULL,
  `weight` varchar(50) NOT NULL,
  `specifications` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `product_usage` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `sub_category` varchar(100) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `color_id` bigint DEFAULT NULL,
  `size_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `tax_code_id` bigint DEFAULT NULL,
  `uom_id` bigint DEFAULT NULL,
  `warehouse_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`),
  KEY `masters_product_category_id_aa3b9572_fk_masters_category_id` (`category_id`),
  KEY `masters_product_color_id_783337ec_fk_masters_color_id` (`color_id`),
  KEY `masters_product_size_id_b8abdbab_fk_masters_size_id` (`size_id`),
  KEY `masters_product_supplier_id_b84d4d90_fk_masters_supplier_id` (`supplier_id`),
  KEY `masters_product_tax_code_id_5affd9d3_fk_masters_taxcode_id` (`tax_code_id`),
  KEY `masters_product_uom_id_e67f54fb_fk_masters_uom_id` (`uom_id`),
  KEY `masters_product_warehouse_id_9c1da2e9_fk_masters_warehouse_id` (`warehouse_id`),
  CONSTRAINT `masters_product_category_id_aa3b9572_fk_masters_category_id` FOREIGN KEY (`category_id`) REFERENCES `masters_category` (`id`),
  CONSTRAINT `masters_product_color_id_783337ec_fk_masters_color_id` FOREIGN KEY (`color_id`) REFERENCES `masters_color` (`id`),
  CONSTRAINT `masters_product_size_id_b8abdbab_fk_masters_size_id` FOREIGN KEY (`size_id`) REFERENCES `masters_size` (`id`),
  CONSTRAINT `masters_product_supplier_id_b84d4d90_fk_masters_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `masters_supplier` (`id`),
  CONSTRAINT `masters_product_tax_code_id_5affd9d3_fk_masters_taxcode_id` FOREIGN KEY (`tax_code_id`) REFERENCES `masters_taxcode` (`id`),
  CONSTRAINT `masters_product_uom_id_e67f54fb_fk_masters_uom_id` FOREIGN KEY (`uom_id`) REFERENCES `masters_uom` (`id`),
  CONSTRAINT `masters_product_warehouse_id_9c1da2e9_fk_masters_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `masters_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_product`
--

LOCK TABLES `masters_product` WRITE;
/*!40000 ALTER TABLE `masters_product` DISABLE KEYS */;
INSERT INTO `masters_product` VALUES (1,'CVB001','Laptop Pro 14','Goods','High performance laptop',0,'',0,'',0,'',0,'',0,'',0,'',0,'','Laptop Bag, Mouse',0,'',85000.00,5.00,10,10,2,'1.3Kg','16GB RAM, 512GB SSD, Intel i7','Active','Both','','Laptops',2,1,1,NULL,1,1,1),(3,'CVB003','Custom Smartwatch','Goods','Custom build product',1,'Wearables',1,'GST 12 Custom',1,'Pack of 3',1,'Temporary Storage',1,'Universal',1,'Sky Blue',1,'XYZ Traders','',1,'Smart Band, Charger',4500.00,0.00,50,50,5,'250g','Bluetooth 5.0, Waterproof','Active','Sale','','Electronics',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `masters_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_role`
--

DROP TABLE IF EXISTS `masters_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(25) NOT NULL,
  `description` longtext,
  `permissions` json NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `masters_role_department_id_role_1f984819_uniq` (`department_id`,`role`),
  KEY `masters_role_branch_id_60b409c8_fk_masters_branch_id` (`branch_id`),
  CONSTRAINT `masters_role_branch_id_60b409c8_fk_masters_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `masters_branch` (`id`),
  CONSTRAINT `masters_role_department_id_c83176a9_fk_masters_department_id` FOREIGN KEY (`department_id`) REFERENCES `masters_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_role`
--

LOCK TABLES `masters_role` WRITE;
/*!40000 ALTER TABLE `masters_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `masters_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_size`
--

DROP TABLE IF EXISTS `masters_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_size` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_size`
--

LOCK TABLES `masters_size` WRITE;
/*!40000 ALTER TABLE `masters_size` DISABLE KEYS */;
INSERT INTO `masters_size` VALUES (1,'Medium'),(2,'SizeUpdated_1764068920');
/*!40000 ALTER TABLE `masters_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_supplier`
--

DROP TABLE IF EXISTS `masters_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_supplier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_supplier`
--

LOCK TABLES `masters_supplier` WRITE;
/*!40000 ALTER TABLE `masters_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `masters_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_taxcode`
--

DROP TABLE IF EXISTS `masters_taxcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_taxcode` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `percentage` double NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_taxcode`
--

LOCK TABLES `masters_taxcode` WRITE;
/*!40000 ALTER TABLE `masters_taxcode` DISABLE KEYS */;
INSERT INTO `masters_taxcode` VALUES (1,'VAT',5,'Value Added Tax');
/*!40000 ALTER TABLE `masters_taxcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_uom`
--

DROP TABLE IF EXISTS `masters_uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_uom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `items` int NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_uom`
--

LOCK TABLES `masters_uom` WRITE;
/*!40000 ALTER TABLE `masters_uom` DISABLE KEYS */;
INSERT INTO `masters_uom` VALUES (1,'Kgs',1,'Kilograms');
/*!40000 ALTER TABLE `masters_uom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters_warehouse`
--

DROP TABLE IF EXISTS `masters_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_warehouse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `manager_name` varchar(100) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `notes` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters_warehouse`
--

LOCK TABLES `masters_warehouse` WRITE;
/*!40000 ALTER TABLE `masters_warehouse` DISABLE KEYS */;
INSERT INTO `masters_warehouse` VALUES (1,'Delhi Warehouse','Delhi','John Doe','+911234567892','Storage facility');
/*!40000 ALTER TABLE `masters_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_batchnumber`
--

DROP TABLE IF EXISTS `purchase_batchnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_batchnumber` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `batch_no` varchar(50) NOT NULL,
  `batch_qty` int NOT NULL,
  `mfg_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `stock_receipt_item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `batch_no` (`batch_no`),
  KEY `purchase_batchnumber_stock_receipt_item_i_c6c79d86_fk_purchase_` (`stock_receipt_item_id`),
  CONSTRAINT `purchase_batchnumber_stock_receipt_item_i_c6c79d86_fk_purchase_` FOREIGN KEY (`stock_receipt_item_id`) REFERENCES `purchase_stockreceiptitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_batchnumber`
--

LOCK TABLES `purchase_batchnumber` WRITE;
/*!40000 ALTER TABLE `purchase_batchnumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_batchnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_batchserialnumber`
--

DROP TABLE IF EXISTS `purchase_batchserialnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_batchserialnumber` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `serial_no` varchar(50) NOT NULL,
  `batch_number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_no` (`serial_no`),
  KEY `purchase_batchserial_batch_number_id_c2a4074c_fk_purchase_` (`batch_number_id`),
  CONSTRAINT `purchase_batchserial_batch_number_id_c2a4074c_fk_purchase_` FOREIGN KEY (`batch_number_id`) REFERENCES `purchase_batchnumber` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_batchserialnumber`
--

LOCK TABLES `purchase_batchserialnumber` WRITE;
/*!40000 ALTER TABLE `purchase_batchserialnumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_batchserialnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_purchaseorder`
--

DROP TABLE IF EXISTS `purchase_purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_purchaseorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `PO_ID` varchar(20) NOT NULL,
  `PO_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `sales_order_reference` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `payment_terms` varchar(50) NOT NULL,
  `inco_terms` varchar(50) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `notes_comments` longtext NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `global_discount` decimal(5,2) NOT NULL,
  `tax_summary` decimal(10,2) NOT NULL,
  `shipping_charges` decimal(10,2) NOT NULL,
  `rounding_adjustment` decimal(10,2) NOT NULL,
  `total_order_value` decimal(10,2) NOT NULL,
  `upload_file_path` varchar(100) DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PO_ID` (`PO_ID`),
  KEY `purchase_purchaseord_supplier_id_2afd9c3c_fk_masters_s` (`supplier_id`),
  CONSTRAINT `purchase_purchaseord_supplier_id_2afd9c3c_fk_masters_s` FOREIGN KEY (`supplier_id`) REFERENCES `masters_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_purchaseorder`
--

LOCK TABLES `purchase_purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchase_purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_purchaseordercomment`
--

DROP TABLE IF EXISTS `purchase_purchaseordercomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_purchaseordercomment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` longtext,
  `created_by` varchar(100) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `purchase_order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_purchaseord_purchase_order_id_5dcda48f_fk_purchase_` (`purchase_order_id`),
  CONSTRAINT `purchase_purchaseord_purchase_order_id_5dcda48f_fk_purchase_` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_purchaseorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_purchaseordercomment`
--

LOCK TABLES `purchase_purchaseordercomment` WRITE;
/*!40000 ALTER TABLE `purchase_purchaseordercomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_purchaseordercomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_purchaseorderhistory`
--

DROP TABLE IF EXISTS `purchase_purchaseorderhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_purchaseorderhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(100) NOT NULL,
  `performed_by` varchar(100) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `details` longtext NOT NULL,
  `purchase_order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_purchaseord_purchase_order_id_53f8f7f1_fk_purchase_` (`purchase_order_id`),
  CONSTRAINT `purchase_purchaseord_purchase_order_id_53f8f7f1_fk_purchase_` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_purchaseorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_purchaseorderhistory`
--

LOCK TABLES `purchase_purchaseorderhistory` WRITE;
/*!40000 ALTER TABLE `purchase_purchaseorderhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_purchaseorderhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_purchaseorderitem`
--

DROP TABLE IF EXISTS `purchase_purchaseorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_purchaseorderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `qty_ordered` int NOT NULL,
  `insufficient_stock` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `purchase_order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_purchaseord_product_id_21bfa99f_fk_masters_p` (`product_id`),
  KEY `purchase_purchaseord_purchase_order_id_524241d0_fk_purchase_` (`purchase_order_id`),
  CONSTRAINT `purchase_purchaseord_product_id_21bfa99f_fk_masters_p` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`),
  CONSTRAINT `purchase_purchaseord_purchase_order_id_524241d0_fk_purchase_` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_purchaseorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_purchaseorderitem`
--

LOCK TABLES `purchase_purchaseorderitem` WRITE;
/*!40000 ALTER TABLE `purchase_purchaseorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_purchaseorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_serialnumber`
--

DROP TABLE IF EXISTS `purchase_serialnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_serialnumber` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `serial_no` varchar(50) NOT NULL,
  `stock_receipt_item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_no` (`serial_no`),
  KEY `purchase_serialnumbe_stock_receipt_item_i_0c954243_fk_purchase_` (`stock_receipt_item_id`),
  CONSTRAINT `purchase_serialnumbe_stock_receipt_item_i_0c954243_fk_purchase_` FOREIGN KEY (`stock_receipt_item_id`) REFERENCES `purchase_stockreceiptitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_serialnumber`
--

LOCK TABLES `purchase_serialnumber` WRITE;
/*!40000 ALTER TABLE `purchase_serialnumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_serialnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_serialnumberreturn`
--

DROP TABLE IF EXISTS `purchase_serialnumberreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_serialnumberreturn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `serial_no` varchar(50) NOT NULL,
  `stock_return_item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_serialnumbe_stock_return_item_id_4affb4e7_fk_purchase_` (`stock_return_item_id`),
  CONSTRAINT `purchase_serialnumbe_stock_return_item_id_4affb4e7_fk_purchase_` FOREIGN KEY (`stock_return_item_id`) REFERENCES `purchase_stockreturnitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_serialnumberreturn`
--

LOCK TABLES `purchase_serialnumberreturn` WRITE;
/*!40000 ALTER TABLE `purchase_serialnumberreturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_serialnumberreturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stockreceipt`
--

DROP TABLE IF EXISTS `purchase_stockreceipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_stockreceipt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `GRN_ID` varchar(20) NOT NULL,
  `received_date` date NOT NULL,
  `supplier_dn_no` varchar(100) NOT NULL,
  `supplier_invoice_no` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `PO_reference_id` bigint DEFAULT NULL,
  `qc_done_by_id` bigint DEFAULT NULL,
  `received_by_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GRN_ID` (`GRN_ID`),
  KEY `purchase_stockreceip_PO_reference_id_925cf8b7_fk_purchase_` (`PO_reference_id`),
  KEY `purchase_stockreceip_qc_done_by_id_07f81152_fk_masters_c` (`qc_done_by_id`),
  KEY `purchase_stockreceip_received_by_id_74afb167_fk_masters_c` (`received_by_id`),
  KEY `purchase_stockreceip_supplier_id_bd9aca76_fk_masters_s` (`supplier_id`),
  CONSTRAINT `purchase_stockreceip_PO_reference_id_925cf8b7_fk_purchase_` FOREIGN KEY (`PO_reference_id`) REFERENCES `purchase_purchaseorder` (`id`),
  CONSTRAINT `purchase_stockreceip_qc_done_by_id_07f81152_fk_masters_c` FOREIGN KEY (`qc_done_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `purchase_stockreceip_received_by_id_74afb167_fk_masters_c` FOREIGN KEY (`received_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `purchase_stockreceip_supplier_id_bd9aca76_fk_masters_s` FOREIGN KEY (`supplier_id`) REFERENCES `masters_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stockreceipt`
--

LOCK TABLES `purchase_stockreceipt` WRITE;
/*!40000 ALTER TABLE `purchase_stockreceipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stockreceipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stockreceiptattachment`
--

DROP TABLE IF EXISTS `purchase_stockreceiptattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_stockreceiptattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `stock_receipt_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_stockreceip_stock_receipt_id_f1a4d9de_fk_purchase_` (`stock_receipt_id`),
  CONSTRAINT `purchase_stockreceip_stock_receipt_id_f1a4d9de_fk_purchase_` FOREIGN KEY (`stock_receipt_id`) REFERENCES `purchase_stockreceipt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stockreceiptattachment`
--

LOCK TABLES `purchase_stockreceiptattachment` WRITE;
/*!40000 ALTER TABLE `purchase_stockreceiptattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stockreceiptattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stockreceiptitem`
--

DROP TABLE IF EXISTS `purchase_stockreceiptitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_stockreceiptitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uom` varchar(50) NOT NULL,
  `qty_ordered` int DEFAULT NULL,
  `qty_received` int NOT NULL,
  `accepted_qty` int NOT NULL,
  `rejected_qty` int NOT NULL,
  `qty_returned` int NOT NULL,
  `stock_dim` varchar(20) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `stock_receipt_id` bigint NOT NULL,
  `warehouse_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_stockreceip_product_id_7855e562_fk_masters_p` (`product_id`),
  KEY `purchase_stockreceip_stock_receipt_id_cede4ace_fk_purchase_` (`stock_receipt_id`),
  KEY `purchase_stockreceip_warehouse_id_a6f96bf8_fk_masters_w` (`warehouse_id`),
  CONSTRAINT `purchase_stockreceip_product_id_7855e562_fk_masters_p` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`),
  CONSTRAINT `purchase_stockreceip_stock_receipt_id_cede4ace_fk_purchase_` FOREIGN KEY (`stock_receipt_id`) REFERENCES `purchase_stockreceipt` (`id`),
  CONSTRAINT `purchase_stockreceip_warehouse_id_a6f96bf8_fk_masters_w` FOREIGN KEY (`warehouse_id`) REFERENCES `masters_warehouse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stockreceiptitem`
--

LOCK TABLES `purchase_stockreceiptitem` WRITE;
/*!40000 ALTER TABLE `purchase_stockreceiptitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stockreceiptitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stockreceiptremark`
--

DROP TABLE IF EXISTS `purchase_stockreceiptremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_stockreceiptremark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `stock_receipt_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_stockreceip_created_by_id_3c2dfe28_fk_masters_c` (`created_by_id`),
  KEY `purchase_stockreceip_stock_receipt_id_a9781102_fk_purchase_` (`stock_receipt_id`),
  CONSTRAINT `purchase_stockreceip_created_by_id_3c2dfe28_fk_masters_c` FOREIGN KEY (`created_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `purchase_stockreceip_stock_receipt_id_a9781102_fk_purchase_` FOREIGN KEY (`stock_receipt_id`) REFERENCES `purchase_stockreceipt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stockreceiptremark`
--

LOCK TABLES `purchase_stockreceiptremark` WRITE;
/*!40000 ALTER TABLE `purchase_stockreceiptremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stockreceiptremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stockreturn`
--

DROP TABLE IF EXISTS `purchase_stockreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_stockreturn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `SRN_ID` varchar(20) NOT NULL,
  `received_date` date NOT NULL,
  `return_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `original_purchased_total` decimal(10,2) NOT NULL,
  `global_discount` decimal(5,2) NOT NULL,
  `return_subtotal` decimal(10,2) NOT NULL,
  `global_discount_amount` decimal(10,2) NOT NULL,
  `rounding_adjustment` decimal(10,2) NOT NULL,
  `amount_to_recover` decimal(10,2) NOT NULL,
  `GRN_reference_id` bigint DEFAULT NULL,
  `PO_reference_id` bigint DEFAULT NULL,
  `return_initiated_by_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SRN_ID` (`SRN_ID`),
  KEY `purchase_stockreturn_GRN_reference_id_32b8db98_fk_purchase_` (`GRN_reference_id`),
  KEY `purchase_stockreturn_PO_reference_id_4f4fdd4a_fk_purchase_` (`PO_reference_id`),
  KEY `purchase_stockreturn_return_initiated_by__b5a44123_fk_masters_c` (`return_initiated_by_id`),
  KEY `purchase_stockreturn_supplier_id_edd7738b_fk_masters_supplier_id` (`supplier_id`),
  CONSTRAINT `purchase_stockreturn_GRN_reference_id_32b8db98_fk_purchase_` FOREIGN KEY (`GRN_reference_id`) REFERENCES `purchase_stockreceipt` (`id`),
  CONSTRAINT `purchase_stockreturn_PO_reference_id_4f4fdd4a_fk_purchase_` FOREIGN KEY (`PO_reference_id`) REFERENCES `purchase_purchaseorder` (`id`),
  CONSTRAINT `purchase_stockreturn_return_initiated_by__b5a44123_fk_masters_c` FOREIGN KEY (`return_initiated_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `purchase_stockreturn_supplier_id_edd7738b_fk_masters_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `masters_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stockreturn`
--

LOCK TABLES `purchase_stockreturn` WRITE;
/*!40000 ALTER TABLE `purchase_stockreturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stockreturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stockreturnattachment`
--

DROP TABLE IF EXISTS `purchase_stockreturnattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_stockreturnattachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `stock_return_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_stockreturn_stock_return_id_d2e28e03_fk_purchase_` (`stock_return_id`),
  CONSTRAINT `purchase_stockreturn_stock_return_id_d2e28e03_fk_purchase_` FOREIGN KEY (`stock_return_id`) REFERENCES `purchase_stockreturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stockreturnattachment`
--

LOCK TABLES `purchase_stockreturnattachment` WRITE;
/*!40000 ALTER TABLE `purchase_stockreturnattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stockreturnattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stockreturnitem`
--

DROP TABLE IF EXISTS `purchase_stockreturnitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_stockreturnitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uom` varchar(50) NOT NULL,
  `qty_ordered` int DEFAULT NULL,
  `qty_rejected` int DEFAULT NULL,
  `qty_returned` int NOT NULL,
  `return_reason` longtext NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `stock_receipt_item_id` bigint DEFAULT NULL,
  `stock_return_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_stockreturn_product_id_5d39704b_fk_masters_p` (`product_id`),
  KEY `purchase_stockreturn_stock_receipt_item_i_b23d7be3_fk_purchase_` (`stock_receipt_item_id`),
  KEY `purchase_stockreturn_stock_return_id_a70cdcc3_fk_purchase_` (`stock_return_id`),
  CONSTRAINT `purchase_stockreturn_product_id_5d39704b_fk_masters_p` FOREIGN KEY (`product_id`) REFERENCES `masters_product` (`id`),
  CONSTRAINT `purchase_stockreturn_stock_receipt_item_i_b23d7be3_fk_purchase_` FOREIGN KEY (`stock_receipt_item_id`) REFERENCES `purchase_stockreceiptitem` (`id`),
  CONSTRAINT `purchase_stockreturn_stock_return_id_a70cdcc3_fk_purchase_` FOREIGN KEY (`stock_return_id`) REFERENCES `purchase_stockreturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stockreturnitem`
--

LOCK TABLES `purchase_stockreturnitem` WRITE;
/*!40000 ALTER TABLE `purchase_stockreturnitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stockreturnitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stockreturnremark`
--

DROP TABLE IF EXISTS `purchase_stockreturnremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_stockreturnremark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `stock_return_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_stockreturn_created_by_id_44ca976c_fk_masters_c` (`created_by_id`),
  KEY `purchase_stockreturn_stock_return_id_77baebbe_fk_purchase_` (`stock_return_id`),
  CONSTRAINT `purchase_stockreturn_created_by_id_44ca976c_fk_masters_c` FOREIGN KEY (`created_by_id`) REFERENCES `masters_customuser` (`id`),
  CONSTRAINT `purchase_stockreturn_stock_return_id_77baebbe_fk_purchase_` FOREIGN KEY (`stock_return_id`) REFERENCES `purchase_stockreturn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stockreturnremark`
--

LOCK TABLES `purchase_stockreturnremark` WRITE;
/*!40000 ALTER TABLE `purchase_stockreturnremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stockreturnremark` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-17  5:14:59
