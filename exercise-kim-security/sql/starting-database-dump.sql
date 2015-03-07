-- MySQL dump 10.13  Distrib 5.6.12, for Win64 (x86_64)
--
-- Host: localhost    Database: trnrice
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `acct_dd_attr_doc`
--

DROP TABLE IF EXISTS `acct_dd_attr_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acct_dd_attr_doc` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(14,0) DEFAULT NULL,
  `ACCT_NUM` decimal(14,0) NOT NULL,
  `ACCT_OWNR` varchar(50) COLLATE utf8_bin NOT NULL,
  `ACCT_BAL` decimal(16,2) NOT NULL,
  `ACCT_OPN_DAT` datetime NOT NULL,
  `ACCT_STAT` varchar(30) COLLATE utf8_bin NOT NULL,
  `ACCT_UPDATE_DT_TM` datetime DEFAULT NULL,
  `ACCT_AWAKE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acct_dd_attr_doc`
--

LOCK TABLES `acct_dd_attr_doc` WRITE;
/*!40000 ALTER TABLE `acct_dd_attr_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `acct_dd_attr_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_s`
--

DROP TABLE IF EXISTS `author_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_s`
--

LOCK TABLES `author_s` WRITE;
/*!40000 ALTER TABLE `author_s` DISABLE KEYS */;
INSERT INTO `author_s` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `author_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_t`
--

DROP TABLE IF EXISTS `author_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_t` (
  `author_id` bigint(19) NOT NULL DEFAULT '0',
  `first_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `middle_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `obj_id` varchar(36) COLLATE utf8_bin NOT NULL,
  `ver_nbr` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_t`
--

LOCK TABLES `author_t` WRITE;
/*!40000 ALTER TABLE `author_t` DISABLE KEYS */;
INSERT INTO `author_t` VALUES (1,'Douglas',NULL,'Adams','2cd58478-f28c-11e2-a045-1c6f65c68dc8',1),(2,'Ansel',NULL,'Adams','2cd69e51-f28c-11e2-a045-1c6f65c68dc8',1),(3,'Orson','Scott','Card','2cd7a7d2-f28c-11e2-a045-1c6f65c68dc8',1);
/*!40000 ALTER TABLE `author_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_address_id_s`
--

DROP TABLE IF EXISTS `bk_address_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_address_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_address_id_s`
--

LOCK TABLES `bk_address_id_s` WRITE;
/*!40000 ALTER TABLE `bk_address_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `bk_address_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_address_t`
--

DROP TABLE IF EXISTS `bk_address_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_address_t` (
  `ADDRESS_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `AUTHOR_ID` decimal(22,0) DEFAULT NULL,
  `ADDR_TYP` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `STREET1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `STREET2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CITY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PROVIENCE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `COUNTRY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_address_t`
--

LOCK TABLES `bk_address_t` WRITE;
/*!40000 ALTER TABLE `bk_address_t` DISABLE KEYS */;
INSERT INTO `bk_address_t` VALUES (1,1,'Residence','Strt1R','Strt2R','CityR','ProvinceR','CountryR','Y','b8190679-7cfe-49c9-bd99-6b264f700f0d',1),(2,1,'Office','Strt1O','Strt2O','CityO','ProvinceO','CountryO','Y','b8190679-7cfe-49c9-bd99-6b264f700f03',1);
/*!40000 ALTER TABLE `bk_address_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_address_typ_t`
--

DROP TABLE IF EXISTS `bk_address_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_address_typ_t` (
  `ADDR_TYP` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ADDR_TYP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_address_typ_t`
--

LOCK TABLES `bk_address_typ_t` WRITE;
/*!40000 ALTER TABLE `bk_address_typ_t` DISABLE KEYS */;
INSERT INTO `bk_address_typ_t` VALUES ('Office','Official Address','Y','a03ad608-84fa-4c89-8410-0a91ed56cb66',1),('Residence','Residential Address','Y','b8190679-7cfe-49c9-bd99-6b264f700f0d',1);
/*!40000 ALTER TABLE `bk_address_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_author_account_t`
--

DROP TABLE IF EXISTS `bk_author_account_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_author_account_t` (
  `AUTHOR_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `ACCOUNT_NUMBER` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `BANK_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_author_account_t`
--

LOCK TABLES `bk_author_account_t` WRITE;
/*!40000 ALTER TABLE `bk_author_account_t` DISABLE KEYS */;
INSERT INTO `bk_author_account_t` VALUES (1,'123123123123123','Money Deposit Bank Ltd'),(2,'123123456456456','Money Deposit Bank Ltd');
/*!40000 ALTER TABLE `bk_author_account_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_author_id_s`
--

DROP TABLE IF EXISTS `bk_author_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_author_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_author_id_s`
--

LOCK TABLES `bk_author_id_s` WRITE;
/*!40000 ALTER TABLE `bk_author_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `bk_author_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_author_t`
--

DROP TABLE IF EXISTS `bk_author_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_author_t` (
  `AUTHOR_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ADDRESS` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_NBR` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_author_t`
--

LOCK TABLES `bk_author_t` WRITE;
/*!40000 ALTER TABLE `bk_author_t` DISABLE KEYS */;
INSERT INTO `bk_author_t` VALUES (1,'Roshan Mahanama',NULL,'roshan@jimail.com','123-123-1233','Y','a03ad608-84fa-4c89-8410-0a91ed56cb66',1),(2,'James Franklin',NULL,'jfranklin@jimail.com','999-433-4323','Y','a03ad608-84fa-4c89-8410-0a91ed56cb32',1);
/*!40000 ALTER TABLE `bk_author_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_book_author_t`
--

DROP TABLE IF EXISTS `bk_book_author_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_book_author_t` (
  `BOOK_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `AUTHOR_ID` decimal(22,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`BOOK_ID`,`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_book_author_t`
--

LOCK TABLES `bk_book_author_t` WRITE;
/*!40000 ALTER TABLE `bk_book_author_t` DISABLE KEYS */;
INSERT INTO `bk_book_author_t` VALUES (1,1),(1,2),(2,1);
/*!40000 ALTER TABLE `bk_book_author_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_book_id_s`
--

DROP TABLE IF EXISTS `bk_book_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_book_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_book_id_s`
--

LOCK TABLES `bk_book_id_s` WRITE;
/*!40000 ALTER TABLE `bk_book_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `bk_book_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_book_t`
--

DROP TABLE IF EXISTS `bk_book_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_book_t` (
  `BOOK_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `TITLE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `AUTHOR` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ISBN` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `PUBLISHER` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PUB_DATE` datetime DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRICE` decimal(15,2) DEFAULT NULL,
  `RATING` decimal(22,0) DEFAULT NULL,
  PRIMARY KEY (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_book_t`
--

LOCK TABLES `bk_book_t` WRITE;
/*!40000 ALTER TABLE `bk_book_t` DISABLE KEYS */;
INSERT INTO `bk_book_t` VALUES (1,'i See',NULL,'ROM','9781402894626','Rupa Publishers Ltd.','2002-09-01 00:00:00','482b3394-0327-4e93-bd80-c5dc3b2a9e34',1,34.43,87),(2,'Galactico',NULL,'SCI-FI','9781402894634','Rupa Publishers Ltd.','2002-09-01 00:00:00','482b3394-0327-4ee5-bd80-c5dc3b2a9e34',1,12.43,90);
/*!40000 ALTER TABLE `bk_book_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_book_typ_t`
--

DROP TABLE IF EXISTS `bk_book_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_book_typ_t` (
  `TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_book_typ_t`
--

LOCK TABLES `bk_book_typ_t` WRITE;
/*!40000 ALTER TABLE `bk_book_typ_t` DISABLE KEYS */;
INSERT INTO `bk_book_typ_t` VALUES ('ROM','Romantic','Romantic Books','Y','6bbbdb82-d614-49c2-8716-4234e72f9f5e',1),('SCI-FI','Science Fiction','Science Fiction Story','Y','482b3394-0327-4e93-bd80-c5dc3b2a9e1f',1);
/*!40000 ALTER TABLE `bk_book_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_order_doc_t`
--

DROP TABLE IF EXISTS `bk_order_doc_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_order_doc_t` (
  `DOC_HDR_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_order_doc_t`
--

LOCK TABLES `bk_order_doc_t` WRITE;
/*!40000 ALTER TABLE `bk_order_doc_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `bk_order_doc_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_order_entry_s`
--

DROP TABLE IF EXISTS `bk_order_entry_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_order_entry_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_order_entry_s`
--

LOCK TABLES `bk_order_entry_s` WRITE;
/*!40000 ALTER TABLE `bk_order_entry_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `bk_order_entry_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bk_order_entry_t`
--

DROP TABLE IF EXISTS `bk_order_entry_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bk_order_entry_t` (
  `BK_ORDER_ENTRY_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL,
  `BOOK_ID` decimal(22,0) NOT NULL,
  `QUANTITY` decimal(22,0) NOT NULL,
  `UNIT_PRICE` decimal(15,2) DEFAULT NULL,
  `DISCOUNT` decimal(5,2) DEFAULT NULL,
  `TOTAL_PRICE` decimal(15,2) DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`BK_ORDER_ENTRY_ID`),
  KEY `BK_ORDER_ENTRY_T_KRNS_DO_ADV1` (`DOC_HDR_ID`),
  KEY `BK_ORDER_ENTRY_T_BK_BOOK_T` (`BOOK_ID`),
  CONSTRAINT `BK_ORDER_ENTRY_T_BK_BOOK_T` FOREIGN KEY (`BOOK_ID`) REFERENCES `bk_book_t` (`BOOK_ID`),
  CONSTRAINT `BK_ORDER_ENTRY_T_KRNS_DO_ADV1` FOREIGN KEY (`DOC_HDR_ID`) REFERENCES `krns_doc_hdr_t` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bk_order_entry_t`
--

LOCK TABLES `bk_order_entry_t` WRITE;
/*!40000 ALTER TABLE `bk_order_entry_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `bk_order_entry_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order_doc_t`
--

DROP TABLE IF EXISTS `book_order_doc_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_order_doc_t` (
  `doc_hdr_id` bigint(19) NOT NULL DEFAULT '0',
  `obj_id` varchar(36) COLLATE utf8_bin NOT NULL,
  `ver_nbr` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`doc_hdr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order_doc_t`
--

LOCK TABLES `book_order_doc_t` WRITE;
/*!40000 ALTER TABLE `book_order_doc_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_order_doc_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order_entry_s`
--

DROP TABLE IF EXISTS `book_order_entry_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_order_entry_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order_entry_s`
--

LOCK TABLES `book_order_entry_s` WRITE;
/*!40000 ALTER TABLE `book_order_entry_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_order_entry_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order_entry_t`
--

DROP TABLE IF EXISTS `book_order_entry_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_order_entry_t` (
  `book_order_entry_id` bigint(19) NOT NULL,
  `doc_hdr_id` varchar(14) COLLATE utf8_bin NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `book_id` bigint(19) NOT NULL,
  `obj_id` varchar(36) COLLATE utf8_bin NOT NULL,
  `ver_nbr` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`book_order_entry_id`),
  KEY `doc_hdr_id` (`doc_hdr_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `book_order_entry_t_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_t` (`book_id`),
  CONSTRAINT `book_order_entry_t_ibfk_1` FOREIGN KEY (`doc_hdr_id`) REFERENCES `krns_doc_hdr_t` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order_entry_t`
--

LOCK TABLES `book_order_entry_t` WRITE;
/*!40000 ALTER TABLE `book_order_entry_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_order_entry_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_s`
--

DROP TABLE IF EXISTS `book_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_s`
--

LOCK TABLES `book_s` WRITE;
/*!40000 ALTER TABLE `book_s` DISABLE KEYS */;
INSERT INTO `book_s` VALUES (1),(2),(3),(4),(5),(6);
/*!40000 ALTER TABLE `book_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_t`
--

DROP TABLE IF EXISTS `book_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_t` (
  `book_id` bigint(19) NOT NULL DEFAULT '0',
  `title` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `isbn` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `publisher` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `pub_date` date DEFAULT NULL,
  `obj_id` varchar(36) COLLATE utf8_bin NOT NULL,
  `ver_nbr` decimal(8,0) NOT NULL DEFAULT '1',
  `author_id` bigint(19) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `book_t_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author_t` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_t`
--

LOCK TABLES `book_t` WRITE;
/*!40000 ALTER TABLE `book_t` DISABLE KEYS */;
INSERT INTO `book_t` VALUES (1,'The Hitchhikers Guide to the Galaxy','Science Fiction','0-330-25864-8','Pan Books','1979-10-12','39d55a4c-f28c-11e2-a045-1c6f65c68dc8',1,1),(2,'The Restaurant at the End of the Universe','Science Fiction','0-345-39181-0','Pan Macmillan','1980-01-01','39d6be17-f28c-11e2-a045-1c6f65c68dc8',1,1),(3,'Enders Game','Science Fiction','0-312-93208-1','Tor Books','1985-00-00','39d7f741-f28c-11e2-a045-1c6f65c68dc8',1,3),(4,'Speaker for the Dead','Science Fiction','0-312-93738-5','Tor Books','1986-00-00','39d90b8f-f28c-11e2-a045-1c6f65c68dc8',1,3),(5,'Xenocide','Science Fiction','0-312-85056-5','Tor Books','1991-00-00','39da8c0d-f28c-11e2-a045-1c6f65c68dc8',1,3),(6,'Yosemite and the High Sierra ','Photography','0-821-22134-5','Ansel Adams','1994-11-03','39dbb0f9-f28c-11e2-a045-1c6f65c68dc8',1,2);
/*!40000 ALTER TABLE `book_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter_s`
--

DROP TABLE IF EXISTS `chapter_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter_s`
--

LOCK TABLES `chapter_s` WRITE;
/*!40000 ALTER TABLE `chapter_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapter_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter_t`
--

DROP TABLE IF EXISTS `chapter_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter_t` (
  `chapter_id` bigint(19) NOT NULL DEFAULT '0',
  `title` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `number` smallint(4) DEFAULT NULL,
  `book_id` bigint(19) DEFAULT NULL,
  `obj_id` varchar(36) COLLATE utf8_bin NOT NULL,
  `ver_nbr` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`chapter_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `chapter_t_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_t` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter_t`
--

LOCK TABLES `chapter_t` WRITE;
/*!40000 ALTER TABLE `chapter_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapter_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kr_kim_test_bo`
--

DROP TABLE IF EXISTS `kr_kim_test_bo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kr_kim_test_bo` (
  `PK` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kr_kim_test_bo`
--

LOCK TABLES `kr_kim_test_bo` WRITE;
/*!40000 ALTER TABLE `kr_kim_test_bo` DISABLE KEYS */;
/*!40000 ALTER TABLE `kr_kim_test_bo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krad_msg_t`
--

DROP TABLE IF EXISTS `krad_msg_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krad_msg_t` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMPNT_CD` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `MSG_KEY` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LOC` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `MSG_DESC` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NMSPC_CD`,`CMPNT_CD`,`MSG_KEY`,`LOC`),
  UNIQUE KEY `KRAD_MSG_TC2` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krad_msg_t`
--

LOCK TABLES `krad_msg_t` WRITE;
/*!40000 ALTER TABLE `krad_msg_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krad_msg_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krcr_cmpnt_set_t`
--

DROP TABLE IF EXISTS `krcr_cmpnt_set_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krcr_cmpnt_set_t` (
  `CMPNT_SET_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LAST_UPDT_TS` datetime NOT NULL,
  `CHKSM` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CMPNT_SET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krcr_cmpnt_set_t`
--

LOCK TABLES `krcr_cmpnt_set_t` WRITE;
/*!40000 ALTER TABLE `krcr_cmpnt_set_t` DISABLE KEYS */;
INSERT INTO `krcr_cmpnt_set_t` VALUES ('DD:RICE','2011-10-30 16:49:58','YF7O4JRiqftiUrQJzhfwpEPP3Oc=',1),('DD:TRAVEL','2012-11-25 19:25:38','qTdEjWgfA5vemMSMR8x8vwRzNts=',1);
/*!40000 ALTER TABLE `krcr_cmpnt_set_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krcr_cmpnt_t`
--

DROP TABLE IF EXISTS `krcr_cmpnt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krcr_cmpnt_t` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMPNT_CD` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`NMSPC_CD`,`CMPNT_CD`),
  UNIQUE KEY `KRNS_PARM_DTL_TYP_TC0` (`OBJ_ID`),
  CONSTRAINT `KRNS_PARM_DTL_TYP_TR1` FOREIGN KEY (`NMSPC_CD`) REFERENCES `krcr_nmspc_t` (`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krcr_cmpnt_t`
--

LOCK TABLES `krcr_cmpnt_t` WRITE;
/*!40000 ALTER TABLE `krcr_cmpnt_t` DISABLE KEYS */;
INSERT INTO `krcr_cmpnt_t` VALUES ('KR-IDM','All','69A9BABE4A0BBD56E0404F8189D82B0F',1,'All','Y'),('KR-IDM','Batch','69A9BABE4A0CBD56E0404F8189D82B0F',1,'Batch','Y'),('KR-IDM','Document','69A9BABE4A0DBD56E0404F8189D82B0F',1,'Document','Y'),('KR-IDM','Lookup','69A9BABE4A0EBD56E0404F8189D82B0F',1,'Lookup','Y'),('KR-IDM','PurgePendingAttachmentsStep','69A9BABE4A0FBD56E0404F8189D82B0F',1,'Purge Pending Attachments Step','Y'),('KR-IDM','PurgeSessionDocumentsStep','69A9BABE4A10BD56E0404F8189D82B0F',1,'Purge Session Documents Step','Y'),('KR-IDM','ScheduleStep','69A9BABE4A11BD56E0404F8189D82B0F',1,'Schedule Step','Y'),('KR-NS','All','53680C68F596AD9BE0404F8189D80A6C',1,'All','Y'),('KR-NS','Batch','53680C68F597AD9BE0404F8189D80A6C',1,'Batch','Y'),('KR-NS','Document','53680C68F598AD9BE0404F8189D80A6C',1,'Document','Y'),('KR-NS','Lookup','53680C68F599AD9BE0404F8189D80A6C',1,'Lookup','Y'),('KR-NS','PurgePendingAttachmentsStep','5A689075D3577AEBE0404F8189D80321',1,'Purge Pending Attachments Step','Y'),('KR-NS','PurgeSessionDocumentsStep','5A689075D3567AEBE0404F8189D80321',1,'Purge Session Documents Step','Y'),('KR-NS','ScheduleStep','5A689075D3587AEBE0404F8189D80321',1,'Schedule Step','Y'),('KR-WKFLW','ActionList','1821D8BAB21E498F9FB1ECCA25C37F9B',1,'Action List','Y'),('KR-WKFLW','All','705611FB54134417E0404F8189D8453B',1,'All','Y'),('KR-WKFLW','Backdoor','F7E44233C2C440FFB1A399548951160A',1,'Backdoor','Y'),('KR-WKFLW','DocumentSearch','B0255911E83C4FF3E0404F8189D86E3E',1,'Document Search','Y'),('KR-WKFLW','EDocLite','51DD5B9FACDD4EDAA9CA8D53A82FCCCA',1,'eDocLite','Y'),('KR-WKFLW','Feature','BBD9976498A4441F904013004F3D70B3',1,'Feature','Y'),('KR-WKFLW','GlobalReviewer','C21B0C6229144F6FBC52A10A38E51E3B',1,'Global Reviewer','Y'),('KR-WKFLW','Mailer','5DB9D1433E214325BE380C82762A223B',1,'Mailer','Y'),('KR-WKFLW','Note','868D39EC269B4402B3136C74C2342F22',1,'Note','Y'),('KR-WKFLW','Notification','D04AFB1812E34723ABEB64986AC61DC9',1,'Notification','Y'),('KR-WKFLW','QuickLinks','3E26DA76458A46D68CBAF209DA036157',1,'Quick Link','Y'),('KR-WKFLW','Route','583C2D3562D44DBAA5FEA998EB601DC9',1,'Routing','Y'),('KR-WKFLW','RouteQueue','D4F6DDEF69B24265AA2A170A62A1CADB',1,'Route Queue','Y'),('KR-WKFLW','Rule','B0360A1EA62D3636E0404F8189D8579F',1,'Rule','Y');
/*!40000 ALTER TABLE `krcr_cmpnt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krcr_drvd_cmpnt_t`
--

DROP TABLE IF EXISTS `krcr_drvd_cmpnt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krcr_drvd_cmpnt_t` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMPNT_CD` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CMPNT_SET_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`NMSPC_CD`,`CMPNT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krcr_drvd_cmpnt_t`
--

LOCK TABLES `krcr_drvd_cmpnt_t` WRITE;
/*!40000 ALTER TABLE `krcr_drvd_cmpnt_t` DISABLE KEYS */;
INSERT INTO `krcr_drvd_cmpnt_t` VALUES ('KR-CORE','StyleBo','Stylesheet','DD:RICE'),('KR-CR','ComponentBo','Component','DD:TRAVEL'),('KR-CR','NamespaceBo','Namespace','DD:TRAVEL'),('KR-CR','ParameterBo','Parameter','DD:TRAVEL'),('KR-CR','ParameterTypeBo','Parameter Type','DD:TRAVEL'),('KR-CR','StyleBo','Stylesheet','DD:TRAVEL'),('KR-EDL','EDocLiteAssociation','eDoc Lite Association','DD:TRAVEL'),('KR-EDL','EDocLiteDefinition','eDoc Lite Definition','DD:TRAVEL'),('KR-IDM','DelegateTypeBo','Delegations','DD:TRAVEL'),('KR-IDM','EntityAddressTypeBo','Address Type','DD:TRAVEL'),('KR-IDM','EntityAffiliationTypeBo','Affiliation Type','DD:TRAVEL'),('KR-IDM','EntityCitizenshipStatusBo','Citizenship Status','DD:TRAVEL'),('KR-IDM','EntityEmailTypeBo','Email Type','DD:TRAVEL'),('KR-IDM','EntityEmploymentStatusBo','Employee Status','DD:TRAVEL'),('KR-IDM','EntityEmploymentTypeBo','Employee Type','DD:TRAVEL'),('KR-IDM','EntityExternalIdentifierTypeBo','External Identifier Type','DD:TRAVEL'),('KR-IDM','EntityNameTypeBo','Entity Name Type','DD:TRAVEL'),('KR-IDM','EntityPhoneTypeBo','Phone Type','DD:TRAVEL'),('KR-IDM','EntityTypeBo','Entity Type','DD:TRAVEL'),('KR-IDM','GenericPermissionBo','Permission','DD:TRAVEL'),('KR-IDM','GroupBo','Group','DD:TRAVEL'),('KR-IDM','GroupDocumentMember','Names','DD:TRAVEL'),('KR-IDM','GroupDocumentQualifier','Group Qualifier','DD:TRAVEL'),('KR-IDM','IdentityManagementGroup','Group','DD:TRAVEL'),('KR-IDM','IdentityManagementPerson','Person','DD:TRAVEL'),('KR-IDM','IdentityManagementRole','Role','DD:TRAVEL'),('KR-IDM','KimAttributeBo','Kim Attribute Definition','DD:TRAVEL'),('KR-IDM','KimAttributeDataBo','Attribute Data','DD:TRAVEL'),('KR-IDM','KimAttributes','KIM Attributes','DD:TRAVEL'),('KR-IDM','KimDocumentRoleMember','Names','DD:TRAVEL'),('KR-IDM','KimDocumentRoleQualifier','Role Qualifier','DD:TRAVEL'),('KR-IDM','KimDocumentRoleResponsibilityAction','Role Responsibility Action','DD:TRAVEL'),('KR-IDM','KimTypeBo','Kim Types','DD:TRAVEL'),('KR-IDM','PermissionAttributeBo','Permission Attribute Data','DD:TRAVEL'),('KR-IDM','PermissionBo','Permission','DD:TRAVEL'),('KR-IDM','PermissionTemplateBo','Permission Templates','DD:TRAVEL'),('KR-IDM','PersonDocumentAddress','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentAffiliation','Entity Affiliation','DD:TRAVEL'),('KR-IDM','PersonDocumentCitizenship','Entity Citizenship','DD:TRAVEL'),('KR-IDM','PersonDocumentEmail','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentEmploymentInfo','Entity Employment','DD:TRAVEL'),('KR-IDM','PersonDocumentGroup','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentName','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentPhone','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentPrivacy','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentRole','Names','DD:TRAVEL'),('KR-IDM','PersonImpl','Person','DD:TRAVEL'),('KR-IDM','ResponsibilityAttributeBo','Responsibility Attribute Data','DD:TRAVEL'),('KR-IDM','ResponsibilityBo','Responsibility','DD:TRAVEL'),('KR-IDM','ResponsibilityTemplateBo','Responsibility Templates','DD:TRAVEL'),('KR-IDM','ReviewResponsibilityBo','Review Responsibility','DD:TRAVEL'),('KR-IDM','RoleBo','Names','DD:TRAVEL'),('KR-IDM','RoleDocumentDelegationMember','Delegation Members','DD:TRAVEL'),('KR-IDM','RoleDocumentDelegationMemberQualifier','Role Qualifier','DD:TRAVEL'),('KR-IDM','RoleMemberBo','Names','DD:TRAVEL'),('KR-IDM','UberPermissionBo','Permission','DD:TRAVEL'),('KR-IDM','UberResponsibilityBo','Responsibility','DD:TRAVEL'),('KR-NS','AdHocRoutePerson','Ad Hoc Route Person','DD:TRAVEL'),('KR-NS','AdHocRouteWorkgroup','Ad Hoc Route Workgroup','DD:TRAVEL'),('KR-NS','Attachment','Attachment','DD:TRAVEL'),('KR-NS','AttributeReferenceDummy','Attribute Reference Dummy','DD:TRAVEL'),('KR-NS','AttributeReferenceElements','Attribute Reference Elements','DD:TRAVEL'),('KR-NS','BusinessObjectAttributeEntry','Business Object Attribute Entry','DD:TRAVEL'),('KR-NS','CampusBo','Campus','DD:TRAVEL'),('KR-NS','CampusTypeBo','Campus Type','DD:TRAVEL'),('KR-NS','ComponentBo','Component','DD:RICE'),('KR-NS','CountryBo','Country','DD:TRAVEL'),('KR-NS','CountyBo','County','DD:TRAVEL'),('KR-NS','DocumentHeader','Document Header','DD:TRAVEL'),('KR-NS','NamespaceBo','Namespace','DD:RICE'),('KR-NS','Note','Note','DD:TRAVEL'),('KR-NS','NoteType','Note Type','DD:TRAVEL'),('KR-NS','ParameterBo','Parameter','DD:RICE'),('KR-NS','ParameterTypeBo','Parameter Type','DD:RICE'),('KR-NS','PessimisticLock','Pessimistic Lock','DD:TRAVEL'),('KR-NS','PostalCodeBo','Postal Code','DD:TRAVEL'),('KR-NS','StateBo','State','DD:TRAVEL'),('KR-SAP','AttachmentSample','Attachment Sample','DD:TRAVEL'),('KR-SAP','BookOrder','BookOrder','DD:TRAVEL'),('KR-SAP','FiscalOfficer','Fiscal Officer','DD:TRAVEL'),('KR-SAP','MultiAttachmentSample','Attachment Sample','DD:TRAVEL'),('KR-SAP','Travel2','Travel Request','DD:TRAVEL'),('KR-SAP','TravelAccount','Travel Account','DD:TRAVEL'),('KR-SAP','TravelAccountExtension','Travel Account Extension','DD:TRAVEL'),('KR-SAP','TravelAccountType','Travel Account Type','DD:TRAVEL'),('KR-SAP','TravelAccountUseRate','Travel Account Use Rate','DD:TRAVEL'),('KR-SAP','TravelAuthorization','TravelAuthorization','DD:TRAVEL'),('KR-WKFLW','DocumentRouteHeaderValue','Document','DD:TRAVEL'),('KR-WKFLW','DocumentSearchCriteriaBo','Document','DD:TRAVEL'),('KR-WKFLW','DocumentType','Document Type','DD:TRAVEL'),('KR-WKFLW','GroupRuleResponsibility','Group Rule Responsibility','DD:TRAVEL'),('KR-WKFLW','PeopleFlowBo','People Flow','DD:TRAVEL'),('KR-WKFLW','PeopleFlowDelegateBo','People Flow Delegate','DD:TRAVEL'),('KR-WKFLW','PeopleFlowMemberBo','People Flow Member','DD:TRAVEL'),('KR-WKFLW','PersonRuleResponsibility','Person Rule Responsibility','DD:TRAVEL'),('KR-WKFLW','RoleRuleResponsibility','Role Rule Responsibility','DD:TRAVEL'),('KR-WKFLW','Rule','Rule Maintenance Document Type Document','DD:TRAVEL'),('KR-WKFLW','RuleAttribute','Rule Attribute','DD:TRAVEL'),('KR-WKFLW','RuleBaseValues','Rule','DD:TRAVEL'),('KR-WKFLW','RuleDelegationBo','Delegation Rule','DD:TRAVEL'),('KR-WKFLW','RuleTemplateAttributeBo','Rule Template Attribute','DD:TRAVEL'),('KR-WKFLW','RuleTemplateBo','Rule Template','DD:TRAVEL'),('krms','ContextBo','Context','DD:TRAVEL'),('tv','FiscalOfficer','Fiscal Officer','DD:RICE'),('tv','TravelAccount','Travel Account','DD:RICE'),('tv','TravelAccountExtension','Travel Account Extension','DD:RICE'),('tv','TravelAccountType','Travel Account Type','DD:RICE'),('tv','TravelAccountUseRate','Travel Account Use Rate','DD:RICE');
/*!40000 ALTER TABLE `krcr_drvd_cmpnt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krcr_nmspc_t`
--

DROP TABLE IF EXISTS `krcr_nmspc_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krcr_nmspc_t` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `APPL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NMSPC_CD`),
  UNIQUE KEY `KRNS_NMSPC_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krcr_nmspc_t`
--

LOCK TABLES `krcr_nmspc_t` WRITE;
/*!40000 ALTER TABLE `krcr_nmspc_t` DISABLE KEYS */;
INSERT INTO `krcr_nmspc_t` VALUES ('KR-BUS','5B960CFDBB370FDFE0404F8189D83CBD',1,'Service Bus','Y','RICE'),('KR-IDM','61645D045B0005D7E0404F8189D849B1',1,'Identity Management','Y','RICE'),('KR-KRAD','B5BA065471F8326EE0404F8189D87F9A',1,'Kuali Rapid Application Development','Y','RICE'),('KR-NS','53680C68F595AD9BE0404F8189D80A6C',1,'Kuali Nervous System','Y','RICE'),('KR-NTFCN','5B960CFDBB360FDFE0404F8189D83CBD',1,'Notification','Y','RICE'),('KR-RULE','AE3195EDFF2300E2E0404F8189D822AE',1,'Kuali Rules','Y','RICE'),('KR-RULE-TEST','5a83c912-94b9-4b4d-ac3f-88c53380a4a3',1,'Kuali Rules Test','Y','RICE'),('KR-SAP','27035960-3755-482e-a2ae-7fac13cc5f45',1,'Sample App','Y','RICE'),('KR-SYS','5B960CFDBB390FDFE0404F8189D83CBD',1,'Enterprise Infrastructure','Y','RICE'),('KR-WKFLW','5E1D690C419B3E2EE0404F8189D82677',0,'Workflow','Y','RICE'),('KUALI','5ADF18B6D4817954E0404F8189D85002',1,'Kuali Systems','Y',NULL);
/*!40000 ALTER TABLE `krcr_nmspc_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krcr_parm_t`
--

DROP TABLE IF EXISTS `krcr_parm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krcr_parm_t` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMPNT_CD` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PARM_NM` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PARM_TYP_CD` varchar(5) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PARM_DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `EVAL_OPRTR_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `APPL_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'KUALI',
  PRIMARY KEY (`NMSPC_CD`,`CMPNT_CD`,`PARM_NM`,`APPL_ID`),
  UNIQUE KEY `KRNS_PARM_TC0` (`OBJ_ID`),
  KEY `KRNS_PARM_TR2` (`PARM_TYP_CD`),
  CONSTRAINT `KRNS_PARM_TR1` FOREIGN KEY (`NMSPC_CD`) REFERENCES `krcr_nmspc_t` (`NMSPC_CD`),
  CONSTRAINT `KRNS_PARM_TR2` FOREIGN KEY (`PARM_TYP_CD`) REFERENCES `krcr_parm_typ_t` (`PARM_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krcr_parm_t`
--

LOCK TABLES `krcr_parm_t` WRITE;
/*!40000 ALTER TABLE `krcr_parm_t` DISABLE KEYS */;
INSERT INTO `krcr_parm_t` VALUES ('KR-IDM','Document','MAX_MEMBERS_PER_PAGE','2238b58e-8fb9-102c-9461-def224dad9b3',1,'CONFG','20','The maximum number of role or group members to display at once on their documents. If the number is above this value, the document will switch into a paging mode with only this many rows displayed at a time.','A','KUALI'),('KR-IDM','PersonDocumentName','PREFIXES','61645D045B0105D7E0404F8189D849B1',1,'CONFG','Ms;Mrs;Mr;Dr',NULL,'A','KUALI'),('KR-IDM','PersonDocumentName','SUFFIXES','61645D045B0205D7E0404F8189D849B1',1,'CONFG','Jr;Sr;Mr;Md',NULL,'A','KUALI'),('KR-NS','All','CHECK_ENCRYPTION_SERVICE_OVERRIDE_IND','53680C68F59AAD9BE0404F8189D80A6C',1,'CONFG','Y','Flag for enabling/disabling (Y/N) the demonstration encryption check.','A','KUALI'),('KR-NS','All','DATE_TO_STRING_FORMAT_FOR_USER_INTERFACE','664F8ABEC725DBCDE0404F8189D85427',1,'CONFG','MM/dd/yyyy','A single date format string that the DateTimeService will use to format a date to be displayed on a web page. For a more technical description of how characters in the parameter value will be interpreted, please consult the javadocs for java.text.SimpleDateFormat. Any changes will be applied when the application is restarted.','A','KUALI'),('KR-NS','All','DEFAULT_COUNTRY','64B87B4C5E3B8F4CE0404F8189D8291A',1,'CONFG','US','Used as the default country code when relating records that do not have a country code to records that do have a country code, e.g. validating a zip code where the country is not collected.','A','KUALI'),('KR-NS','All','DEFAULT_LOCALE_CODE','CAA025BC0FFDC4F9E040F90A05B912C4',1,'CONFG','en-US','The locale code that should be used within the application when otherwise not specified.','A','KUALI'),('KR-NS','All','ENABLE_DIRECT_INQUIRIES_IND','53680C68F59BAD9BE0404F8189D80A6C',1,'CONFG','Y','Flag for enabling/disabling direct inquiries on screens that are drawn by the nervous system (i.e. lookups and maintenance documents)','A','KUALI'),('KR-NS','All','ENABLE_FIELD_LEVEL_HELP_IND','53680C68F59CAD9BE0404F8189D80A6C',1,'CONFG','N','Indicates whether field level help links are enabled on lookup pages and documents.','A','KUALI'),('KR-NS','All','MAX_FILE_SIZE_DEFAULT_UPLOAD','53680C68F59DAD9BE0404F8189D80A6C',1,'CONFG','5M','Maximum file upload size for the application. Used by PojoFormBase. Must be an integer, optionally followed by \"K\", \"M\", or \"G\". Only used if no other upload limits are in effect.','A','KUALI'),('KR-NS','All','OLTP_LOCKOUT_DEFAULT_MESSAGE','CF90C87BE340C290E0406E0AC31D4F3F',1,'CONFG','The module you are attempting to access has been locked for maintenance.','Default message to display when a module is locked','A','KUALI'),('KR-NS','All','SENSITIVE_DATA_PATTERNS','5a5fbe94-846f-102c-8db0-c405cae621f3',1,'CONFG','[0-9]{9};[0-9]{3}-[0-9]{2}-[0-9]{4}','A semi-colon delimted list of regular expressions that identify \npotentially sensitive data in strings.  These patterns will be matched \nagainst notes, document explanations, and routing annotations.','A','KUALI'),('KR-NS','All','SENSITIVE_DATA_PATTERNS_WARNING_IND','e7d133f3-b5fe-11df-ad0a-d18f5709259f',1,'CONFG','N','If set to \'Y\' when sensitive data is found the user will be prompted to continue the action or cancel. If this is set to \'N\' the user will be presented with an error message and will not be allowed to continue with the action until the sensitive data is removed.','A','KUALI'),('KR-NS','Batch','ACTIVE_FILE_TYPES','5A689075D35E7AEBE0404F8189D80321',1,'CONFG','collectorInputFileType;procurementCardInputFileType;enterpriseFeederFileSetType;assetBarcodeInventoryInputFileType;customerLoadInputFileType','Batch file types that are active options for the file upload screen.','A','KUALI'),('KR-NS','Document','ALLOW_ENROUTE_BLANKET_APPROVE_WITHOUT_APPROVAL_REQUEST_IND','70CAE9473BBBD1A8E0404F8189D83B6E',1,'CONFG','N','Controls whether the nervous system will show the blanket approve button to a user who is authorized for blanket approval but is neither the initiator of the particular document nor the recipient of an active, pending, approve action request.','A','KUALI'),('KR-NS','Document','DEFAULT_CAN_PERFORM_ROUTE_REPORT_IND','53680C68F59EAD9BE0404F8189D80A6C',1,'CONFG','N','If Y, the Route Report button will be displayed on the document actions bar if the document is using the default DocumentAuthorizerBase.getDocumentActionFlags to set the canPerformRouteReport property of the returned DocumentActionFlags instance.','A','KUALI'),('KR-NS','Document','MAX_FILE_SIZE_ATTACHMENT','53680C68F5A0AD9BE0404F8189D80A6C',1,'CONFG','5M','Maximum attachment upload size for the application. Used by KualiDocumentFormBase. Must be an integer, optionally followed by \"K\", \"M\", or \"G\".','A','KUALI'),('KR-NS','Document','SEND_NOTE_WORKFLOW_NOTIFICATION_ACTIONS','53680C68F5A1AD9BE0404F8189D80A6C',1,'CONFG','K','Some documents provide the functionality to send notes to another user using a workflow FYI or acknowledge functionality. This parameter specifies the default action that will be used when sending notes. This parameter should be one of the following 2 values: \"K\" for acknowledge or \"F\" for fyi. Depending on the notes and workflow service implementation, other values may be possible.','A','KUALI'),('KR-NS','Document','SESSION_TIMEOUT_WARNING_MESSAGE_TIME','53680C68F5A4AD9BE0404F8189D80A6C',1,'CONFG','5','The number of minutes before a session expires that user should be warned when a document uses pessimistic locking.','A','KUALI'),('KR-NS','Lookup','MULTIPLE_VALUE_RESULTS_EXPIRATION_SECONDS','53680C68F5A3AD9BE0404F8189D80A6C',1,'CONFG','86400','Lookup results may continue to be persisted in the DB long after they are needed. This parameter represents the maximum amount of time, in seconds, that the results will be allowed to persist in the DB before they are deleted from the DB.','A','KUALI'),('KR-NS','Lookup','MULTIPLE_VALUE_RESULTS_PER_PAGE','53680C68F5A6AD9BE0404F8189D80A6C',1,'CONFG','100','Maximum number of rows that will be displayed on a look-up results screen.','A','KUALI'),('KR-NS','Lookup','RESULTS_DEFAULT_MAX_COLUMN_LENGTH','53680C68F5A7AD9BE0404F8189D80A6C',1,'CONFG','70','If a maxLength attribute has not been set on a lookup result field in the data dictionary, then the result column\'s max length will be the value of this parameter. Set this parameter to 0 for an unlimited default length or a positive value (i.e. greater than 0) for a finite max length.','A','KUALI'),('KR-NS','Lookup','RESULTS_LIMIT','53680C68F5A8AD9BE0404F8189D80A6C',1,'CONFG','200','Maximum number of results returned in a look-up query.','A','KUALI'),('KR-NS','PurgePendingAttachmentsStep','MAX_AGE','5A689075D35A7AEBE0404F8189D80321',1,'CONFG','86400','Pending attachments are attachments that do not yet have a permanent link with the associated Business Object (BO). These pending attachments are stored in the attachments.pending.directory (defined in the configuration service). If the BO is never persisted, then this attachment will become orphaned (i.e. not associated with any BO), but will remain in this directory. The PurgePendingAttachmentsStep batch step deletes these pending attachment files that are older than the value of this parameter. The unit of this value is seconds. Do not set this value too short, as this will cause problems attaching files to BOs.','A','KUALI'),('KR-NS','PurgeSessionDocumentsStep','NUMBER_OF_DAYS_SINCE_LAST_UPDATE','5A689075D3597AEBE0404F8189D80321',1,'CONFG','1','Determines the age of the session document records that the the step will operate on, e.g. if this param is set to 4, the rows with a last update timestamp older that 4 days prior to when the job is running will be deleted.','A','KUALI'),('KR-NS','ScheduleStep','CUTOFF_TIME','5A689075D35C7AEBE0404F8189D80321',1,'CONFG','02:00:00:AM','Controls when the daily batch schedule should terminate. The scheduler service implementation compares the start time of the schedule job from quartz with this time on day after the schedule job started running.','A','KUALI'),('KR-NS','ScheduleStep','CUTOFF_TIME_NEXT_DAY_IND','5A689075D35D7AEBE0404F8189D80321',1,'CONFG','Y','Controls whether when the system is comparing the schedule start day & time with the scheduleStep_CUTOFF_TIME parameter, it considers the specified time to apply to the day after the schedule starts.','A','KUALI'),('KR-NS','ScheduleStep','STATUS_CHECK_INTERVAL','5A689075D35B7AEBE0404F8189D80321',1,'CONFG','30000','Time in milliseconds that the scheduleStep should wait between iterations.','A','KUALI'),('KR-SAP','TEST_COMPONENT','TEST_PARAM','B6A90093AB168D60E040DC0A1F8A1116',1,'HELP','http://www.kuali.org/?system_parm',NULL,'A','TRAVEL'),('KR-WKFLW','ActionList','ACTION_LIST_DOCUMENT_POPUP_IND','290E45BA032F4F4FB423CE5F78AC52E1',1,'CONFG','Y','Flag to specify if clicking on a Document ID from the Action List will load the Document in a new window.','A','KUALI'),('KR-WKFLW','ActionList','ACTION_LIST_ROUTE_LOG_POPUP_IND','967B0311A5E94F7191B2C544FA7DE095',1,'CONFG','N','Flag to specify if clicking on a Route Log from the Action List will load the Route Log in a new window.','A','KUALI'),('KR-WKFLW','ActionList','EMAIL_NOTIFICATION_TEST_ADDRESS','340789CDF30F4252A1A2A42AD39B90B2',1,'CONFG',NULL,'Default email address used for testing.','A','KUALI'),('KR-WKFLW','ActionList','PAGE_SIZE_THROTTLE','2CE075BC0C59435CA6DEFF724492DE3F',1,'CONFG',NULL,'Throttles the number of results returned on all users Action Lists, regardless of their user preferences.  This is intended to be used in a situation where excessively large Action Lists are causing performance issues.','A','KUALI'),('KR-WKFLW','ActionList','SEND_EMAIL_NOTIFICATION_IND','A87659E198214A8B90BE5BEF41630411',1,'CONFG','N','Flag to determine whether or not to send email notification.','A','KUALI'),('KR-WKFLW','All','KIM_PRIORITY_ON_DOC_TYP_PERMS_IND','5C731F2968A3689AE0404F8189D86653',1,'CONFG','N','Flag for enabling/disabling document type permission checks to use KIM Permissions as priority over Document Type policies.','A','KUALI'),('KR-WKFLW','All','MAXIMUM_NODES_BEFORE_RUNAWAY','4656B6E7E9844E2C9E2255014AFC86B5',1,'CONFG',NULL,'The maximum number of nodes the workflow engine will process before it determines the process is a runaway process.  This is prevent infinite \"loops\" in the workflow engine.','A','KUALI'),('KR-WKFLW','All','SHOW_ATTACHMENTS_IND','8A37388A2D7A46EF9E6BF3FA8D08A03A',1,'CONFG','Y','Flag to specify whether or not a file upload box is displayed for KEW notes which allows for uploading of an attachment with the note.','A','KUALI'),('KR-WKFLW','Backdoor','SHOW_BACK_DOOR_LOGIN_IND','9BD6785416434C4D9E5F05AF077DB9B7',1,'CONFG','Y','Flag to show the backdoor login.','A','KUALI'),('KR-WKFLW','DocumentSearch','DOCUMENT_SEARCH_POPUP_IND','E78100F6F14C4932B54F7719FA5C27E9',1,'CONFG','Y','Flag to specify if clicking on a Document ID from Document Search will load the Document in a new window.','A','KUALI'),('KR-WKFLW','DocumentSearch','DOCUMENT_SEARCH_ROUTE_LOG_POPUP_IND','632680DDE9A7478CBD379FAF90C7AE72',1,'CONFG','N','Flag to specify if clicking on a Route Log from Document Search will load the Route Log in a new window.','A','KUALI'),('KR-WKFLW','DocumentSearch','FETCH_MORE_ITERATION_LIMIT','D43459D143FC46C6BF83C71AC2383B76',1,'CONFG',NULL,'Limit of fetch more iterations for document searches.','A','KUALI'),('KR-WKFLW','DocumentSearch','RESULT_CAP','E324D85082184EB6967537B3EE1F655B',1,'CONFG',NULL,'Maximum number of documents to return from a search.','A','KUALI'),('KR-WKFLW','EDocLite','DEBUG_TRANSFORM_IND','68B2EA08E13A4FF3B9EDBD5415818C93',1,'CONFG','N','Defines whether the debug transform is enabled for eDcoLite.','A','KUALI'),('KR-WKFLW','EDocLite','USE_XSLTC_IND','FCAEE745A7E64AF5982937C47EBC2698',1,'CONFG','N','Defines whether XSLTC is used for eDocLite.','A','KUALI'),('KR-WKFLW','Feature','IS_LAST_APPROVER_ACTIVATE_FIRST_IND','BEBDBCFA74A5458EADE2CF075FFF206E',1,'CONFG',NULL,'A flag to specify whether the WorkflowInfo.isLastApproverAtNode(...) API method attempts to active requests first, prior to execution.','A','KUALI'),('KR-WKFLW','Mailer','FROM_ADDRESS','700AB6A6E23740D0B3E00E02A8FB6347',1,'CONFG','rice.test@kuali.org','Default from email address for notifications.','A','KUALI'),('KR-WKFLW','Notification','NOTIFY_GROUPS','08280F2575904F3586CF48BB97907506',1,'CONFG',NULL,'Defines a group name (in the format \"namespace:name\") which contains members who should never receive \"notifications\" action requests from KEW.','D','KUALI'),('KR-WKFLW','QuickLinks','RESTRICT_DOCUMENT_TYPES','5292CFD9A0EA48BEB22A2EB3B3BD3CDA',1,'CONFG',NULL,'Comma seperated list of Document Types to exclude from the Rule Quicklinks.','A','KUALI'),('KR-WKFLW','Rule','CUSTOM_DOCUMENT_TYPES','BDE964269F2743338C00A4326B676195',1,'CONFG',NULL,'Defines custom Document Type processes to use for certain types of routing rules.','A','KUALI'),('KR-WKFLW','Rule','DELEGATE_LIMIT','21EA54B9A9E846709E76C176DE0AF47C',1,'CONFG','20','Specifies that maximum number of delegation rules that will be displayed on a Rule inquiry before the screen shows a count of delegate rules and provides a link for the user to show them.','A','KUALI'),('KR-WKFLW','Rule','GENERATE_ACTION_REQUESTS_IND','96868C896B4B4A8BA87AD20E42948431',1,'CONFG','Y','Flag to determine whether or not a change to a routing rule should be applied retroactively to existing documents.','A','KUALI'),('KR-WKFLW','Rule','RULE_CACHE_REQUEUE_DELAY','8AE796DB88484468830A8879630CCF5D',1,'CONFG','5000','Amount of time after a rule change is made before the rule cache update message is sent.','A','KUALI');
/*!40000 ALTER TABLE `krcr_parm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krcr_parm_typ_t`
--

DROP TABLE IF EXISTS `krcr_parm_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krcr_parm_typ_t` (
  `PARM_TYP_CD` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`PARM_TYP_CD`),
  UNIQUE KEY `KRNS_PARM_TYP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krcr_parm_typ_t`
--

LOCK TABLES `krcr_parm_typ_t` WRITE;
/*!40000 ALTER TABLE `krcr_parm_typ_t` DISABLE KEYS */;
INSERT INTO `krcr_parm_typ_t` VALUES ('AUTH','53680C68F593AD9BE0404F8189D80A6C',1,'Authorization','Y'),('CONFG','53680C68F591AD9BE0404F8189D80A6C',1,'Config','Y'),('HELP','53680C68F594AD9BE0404F8189D80A6C',1,'Help','Y'),('VALID','53680C68F592AD9BE0404F8189D80A6C',1,'Document Validation','Y');
/*!40000 ALTER TABLE `krcr_parm_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krcr_style_t`
--

DROP TABLE IF EXISTS `krcr_style_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krcr_style_t` (
  `STYLE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `XML` longtext COLLATE utf8_bin NOT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`STYLE_ID`),
  UNIQUE KEY `KRCR_STYLE_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krcr_style_t`
--

LOCK TABLES `krcr_style_t` WRITE;
/*!40000 ALTER TABLE `krcr_style_t` DISABLE KEYS */;
INSERT INTO `krcr_style_t` VALUES ('2020','widgets','<xsl:stylesheet xmlns:my-class=\"xalan://org.kuali.rice.edl.framework.util.EDLFunctions\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\n				<xsl:output method=\"html\" version=\"4.01\"/>\n				<xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/>\n				<!-- determined by an appconstant -->\n				<xsl:variable name=\"showAttachments\" select=\"/documentContent/documentState/showAttachments\"/>\n				<xsl:strip-space elements=\"*\"/>\n\n				<xsl:template name=\"widget_render\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:param name=\"default\"/>\n					<xsl:for-each select=\"//fieldDef[@name=$fieldName]\">\n						<xsl:choose>\n							<xsl:when test=\"position() != 1\">\n								<h4>\n									<font color=\"#FF0000\"> fieldDef Name:  <xsl:value-of select=\"$fieldName\"/> is  duplicated ! </font>\n								</h4>\n							</xsl:when>\n							<xsl:otherwise>\n								<xsl:variable name=\"input_type\" select=\"display/type\"/>\n								<xsl:variable name=\"render\">\n									<xsl:choose>\n										<xsl:when test=\"$renderCmd\">\n											<xsl:value-of select=\"$renderCmd\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\"\'all\'\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<xsl:variable name=\"vAlign\">\n									<xsl:choose>\n										<xsl:when test=\"$align\">\n											<xsl:value-of select=\"$align\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\"\'horizontal\'\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<xsl:comment>* For JavaScript validation</xsl:comment>\n								<xsl:variable name=\"fieldDisplayName\">\n									<xsl:choose>\n										<xsl:when test=\"@title\">\n											<xsl:value-of select=\"@title\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\"@name\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<xsl:variable name=\"regex\" select=\"my-class:escapeJavascript(validation/regex)\"/>\n								<xsl:variable name=\"customValidator\" select=\"validation/customValidator\"/>\n								<xsl:variable name=\"validation_required\" select=\"validation/@required = \'true\'\"/>\n								<xsl:variable name=\"message\">\n									<!-- <xsl:if test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]\"> -->\n									<xsl:choose>\n										<xsl:when test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/errorMessage\">\n											<xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/errorMessage\"/>\n										</xsl:when>\n										<xsl:when test=\"//documentState/fieldError[@key=current()/@name]\">\n											<xsl:value-of select=\"//documentState/fieldError[@key=current()/@name]\"/>\n										</xsl:when>\n										<xsl:when test=\"validation/message\">\n											<xsl:value-of select=\"validation/message\"/>\n										</xsl:when>\n										<xsl:when test=\"validation/regex\">\n											<xsl:value-of select=\"$fieldDisplayName\"/> (<xsl:value-of select=\"@name\"/>) <xsl:text> does not match \'</xsl:text> <xsl:value-of select=\"$regex\"/> <xsl:text>\'</xsl:text>\n										</xsl:when>\n										<xsl:otherwise>\n									    <xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name]\"/>\n											<xsl:comment>* Dropped Through and Hit Otherwise</xsl:comment>								\n										</xsl:otherwise>\n									</xsl:choose>\n									<!-- </xsl:if> -->\n								</xsl:variable>\n								<xsl:variable name=\"custommessage\">\n									<xsl:choose>\n										<xsl:when test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/errorMessage\">\n											<xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/errorMessage\"/>\n										</xsl:when>\n										<xsl:otherwise>NONE</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								\n								<xsl:comment>* custom message: <xsl:value-of select=\"$custommessage\"/>\n</xsl:comment>\n								<xsl:comment>* validation/message: <xsl:value-of select=\"validation/message\"/>\n</xsl:comment>\n								<xsl:comment>* message: <xsl:value-of select=\"$message\"/>\n</xsl:comment>\n								<xsl:variable name=\"hasFieldError\" select=\"//documentState/fieldError[@key=current()/@name]\"/>\n								<xsl:variable name=\"invalid\" select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/@invalid\"/>\n								<!--\n									determine value to display: use the value specified in the current version	if it exists, otherwise use the \'default\' \n									value defined in the field or if specified use data from userSession\n								-->\n								<xsl:variable name=\"userValue\" select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/value\"/>\n								<xsl:variable name=\"hasUserValue\" select=\"boolean($userValue)\"/>\n								<xsl:variable name=\"value\">\n									<xsl:choose>\n										<xsl:when test=\"$hasUserValue\">\n											<xsl:value-of select=\"$userValue\"/>\n										</xsl:when>\n										<xsl:when test=\"$default\">\n											<xsl:value-of select=\"$default\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\"value\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<!-- message row -->\n								<xsl:variable name=\"type\">\n									<xsl:choose>\n										<xsl:when test=\"($invalid and $validation_required) or $hasFieldError\">error</xsl:when>\n										<xsl:when test=\"$invalid and not($validation_required)\">warning</xsl:when>\n										<xsl:otherwise>empty</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<xsl:comment>* type: <xsl:value-of select=\"$type\"/>\n</xsl:comment>\n								<!-- \n									<tr class=\"{$type}_messageRow\" id=\"{@name}_messageRow\">\n										<td class=\"{$type}_messageHeaderCell\" id=\"{@name}_messageHeaderCell\">\n											<xsl:value-of select=\"$type\"/>\n										</td>\n										<td class=\"{$type}_messageDataCell\" id=\"{@name}_messageDataCell\">\n											<span id=\"{@name}_message\">\n												<xsl:value-of select=\"$message\"/>\n											</span>\n										</td>\n									</tr>\n								-->\n                                \n                                \n								<xsl:choose>\n									<xsl:when test=\"$input_type=\'text\'\">\n										<xsl:comment>* input_type \'text\'</xsl:comment>						\n										<xsl:call-template name=\"textbox_render\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\">\n                                                <xsl:choose>\n                                                    <xsl:when test=\"//fieldDef[@name=$fieldName]/lookup/lookupReadOnly = \'true\'\">true</xsl:when>\n                                                    <xsl:otherwise>\n<xsl:value-of select=\"$readOnly\"/>\n</xsl:otherwise>\n                                                </xsl:choose>\n                                            </xsl:with-param>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'password\'\">\n										<xsl:call-template name=\"textbox_render\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'radio\'\">\n										<xsl:call-template name=\"radio_render\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'checkbox\'\">\n										<xsl:call-template name=\"checkbox_render\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'select\'\">\n										<xsl:call-template name=\"select_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'select_refresh\'\">\n										<xsl:call-template name=\"select_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"refreshPage\" select=\"\'true\'\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'textarea\'\">\n										<xsl:call-template name=\"textarea_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$renderCmd\"/>\n											<xsl:with-param name=\"align\" select=\"$align\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'button\'\">\n										<xsl:call-template name=\"button_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$renderCmd\"/>\n											<xsl:with-param name=\"align\" select=\"$align\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'submit button\'\">\n										<xsl:call-template name=\"submitbutton_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$renderCmd\"/>\n											<xsl:with-param name=\"align\" select=\"$align\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'hidden\'\">\n										<xsl:call-template name=\"hidden_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n										</xsl:call-template>\n									</xsl:when>\n								</xsl:choose>\n								<xsl:if test=\"$renderCmd=\'all\' or $renderCmd=\'input\'\">\n                                    <xsl:call-template name=\"lookup\">\n                                      <xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n                                      <xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n                                    </xsl:call-template>\n									<span class=\"{$type}Message\" id=\"{@name}_messageHeaderCell\">\n										<xsl:text> </xsl:text>\n<xsl:value-of select=\"$type\"/>\n<xsl:text>: </xsl:text>\n									</span>\n									<span class=\"{$type}Message\" id=\"{@name}_message\">\n										<xsl:value-of select=\"$message\"/>\n									</span>\n									<xsl:if test=\"validation/regex or validation/customValidator or validation[@required=\'true\']\">\n										<xsl:if test=\"not(validation/customValidator)\">\n											<script type=\"text/javascript\">\n												// register field for regex checking\n												register(\"<xsl:value-of select=\"@name\"/>\",\"<xsl:value-of select=\"$fieldDisplayName\"/>\",\"<xsl:value-of select=\"$regex\"/>\",\"<xsl:value-of select=\"$message\"/>\",\"<xsl:value-of select=\"$validation_required\"/>\");\n											</script>\n										</xsl:if>\n										<xsl:if test=\"validation/customValidator\">\n											<script type=\"text/javascript\">\n												// register field for custom field checking\n												register_custom(\"<xsl:value-of select=\"@name\"/>\",\"<xsl:value-of select=\"$fieldDisplayName\"/>\",\"<xsl:value-of select=\"$message\"/>\", \"<xsl:value-of select=\"$validation_required\"/>\", <xsl:value-of select=\"$customValidator\"/>);\n											</script>\n										</xsl:if>\n									</xsl:if>\n								</xsl:if>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:for-each>\n				</xsl:template>\n\n				<xsl:template name=\"textbox_render\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"hasUserValue\"/>				\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"regex\"/>\n					<xsl:param name=\"message\"/>\n					<xsl:param name=\"validation_required\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'all\' or  $renderCmd=\'title\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:if test=\"$align =\'horizontal\'\">\n							<xsl:text>          </xsl:text>\n						</xsl:if>\n						<xsl:if test=\"$align=\'vertical\'\">\n							<br/>\n						</xsl:if>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\' or $renderCmd=\'input\'\">\n						<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n							<xsl:call-template name=\"hidden_input\">\n								<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n								<xsl:with-param name=\"value\" select=\"$value\"/>\n							</xsl:call-template>\n						</xsl:if>\n						<input value=\"{$value}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onkeyup\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n							<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n								<xsl:attribute name=\"disabled\">\n								  disabled\n								</xsl:attribute>\n							</xsl:if>\n							<xsl:attribute name=\"type\">\n<xsl:value-of select=\"current()/display/type\"/>\n</xsl:attribute>\n							<xsl:attribute name=\"name\">\n<xsl:value-of select=\"$fieldName\"/>\n</xsl:attribute>\n							<xsl:attribute name=\"onkeydown\">return replaceEnter(event)</xsl:attribute>\n							<xsl:for-each select=\"current()/display/meta\">\n								<xsl:variable name=\"attrName\">\n									<xsl:value-of select=\"name\"/>\n								</xsl:variable>\n								<xsl:variable name=\"attrValue\">\n									<xsl:value-of select=\"value\"/>\n								</xsl:variable>\n								<xsl:attribute name=\"{$attrName}\">\n<xsl:value-of select=\"$attrValue\"/>\n</xsl:attribute>\n							</xsl:for-each>\n						</input>\n					</xsl:if>\n				</xsl:template>\n				\n				<xsl:template name=\"radio_render\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"hasUserValue\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'all\' or  $renderCmd=\'title\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:if test=\"$align =\'horizontal\'\">\n							<xsl:text>            </xsl:text>\n						</xsl:if>\n						<xsl:if test=\"$align=\'vertical\'\">\n							<br/>\n						</xsl:if>\n					</xsl:if>\n					<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n						<xsl:call-template name=\"hidden_input\">			\n							<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n							<xsl:with-param name=\"value\" select=\"$value\"/>\n						</xsl:call-template>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\' or $renderCmd=\'input\'\">\n						<xsl:for-each select=\"current()/display/values\">\n							<xsl:variable name=\"title\">\n								<xsl:choose>\n									<xsl:when test=\"@title\">\n										<xsl:value-of select=\"@title\"/>\n									</xsl:when>\n									<xsl:otherwise>\n										<xsl:value-of select=\"@name\"/>\n									</xsl:otherwise>\n								</xsl:choose>\n							</xsl:variable>\n							<xsl:variable name=\"optionName\">\n								<xsl:value-of select=\"../../@name\"/>\n							</xsl:variable>\n							<input name=\"{$optionName}\" title=\"{$title}\" type=\"{../type}\" value=\"{.}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onClick\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n								<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n									<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n								</xsl:if>\n								<xsl:choose>\n									<xsl:when test=\"$hasUserValue\">\n										<xsl:if test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/../../@name and value=current()]\">\n											<xsl:attribute name=\"checked\">checked</xsl:attribute>\n										</xsl:if>\n									</xsl:when>\n									<xsl:otherwise>\n										<!-- use the default if no user values are specified -->\n										<xsl:if test=\". = ../../value\">\n											<xsl:attribute name=\"checked\">checked</xsl:attribute>\n										</xsl:if>\n									</xsl:otherwise>\n								</xsl:choose>\n							</input>\n							<xsl:value-of select=\"$title\"/>\n							<xsl:if test=\"$align =\'horizontal\'\">\n								<xsl:text>           </xsl:text>\n							</xsl:if>\n							<xsl:if test=\"$align=\'vertical\'\">\n								<br/>\n							</xsl:if>\n						</xsl:for-each>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"checkbox_render\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"hasUserValue\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'all\' or  $renderCmd=\'title\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:if test=\"$align =\'horizontal\'\">\n							<xsl:text>          </xsl:text>\n						</xsl:if>\n						<xsl:if test=\"$align=\'vertical\'\">\n							<br/>\n						</xsl:if>\n					</xsl:if>\n					<!-- \n						<xsl:if test=\"$globalReadOnly = \'true\'  or $readOnly = \'true\'\">\n							<xsl:call-template name=\"hidden_input\">			\n								<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n								<xsl:with-param name=\"value\" select=\"$value\"/>\n							</xsl:call-template>\n						</xsl:if>\n					-->\n					<xsl:if test=\"$renderCmd=\'all\' or $renderCmd=\'input\'\">\n						<xsl:for-each select=\"current()/display/values\">\n							<xsl:variable name=\"title\">\n								<xsl:choose>\n									<xsl:when test=\"@title\">\n										<xsl:value-of select=\"@title\"/>\n									</xsl:when>\n									<xsl:otherwise>\n										<xsl:value-of select=\"@name\"/>\n									</xsl:otherwise>\n								</xsl:choose>\n							</xsl:variable>\n							<xsl:variable name=\"optionName\">\n								<xsl:value-of select=\"../../@name\"/>\n							</xsl:variable>\n							<xsl:variable name=\"checked\">\n								<xsl:choose>\n									<xsl:when test=\"$hasUserValue\">\n<xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/../../@name and value=current()] = .\"/>\n</xsl:when>\n									<!-- use the default if no user values are specified -->\n									<xsl:when test=\". = ../../value\">true</xsl:when>\n									<xsl:otherwise>false</xsl:otherwise>\n								</xsl:choose>\n							</xsl:variable>\n							<xsl:if test=\"($globalReadOnly = \'true\'  or $readOnly = \'true\') and $checked = \'true\' \">\n								<xsl:call-template name=\"hidden_input\">			\n									<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n									<xsl:with-param name=\"value\" select=\".\"/>\n								</xsl:call-template>\n							</xsl:if>\n		  				<input name=\"{$optionName}\" type=\"{../type}\" value=\"{.}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onClick\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n								<xsl:if test=\"$globalReadOnly = \'true\'  or $readOnly = \'true\'\">\n									<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n								</xsl:if>\n								<xsl:if test=\"$checked = \'true\'\">\n									<xsl:attribute name=\"checked\">checked</xsl:attribute>\n								</xsl:if>\n							</input>\n							<xsl:value-of select=\"$title\"/>\n							<xsl:if test=\"$align =\'horizontal\'\">\n								<xsl:text>           </xsl:text>\n							</xsl:if>\n							<xsl:if test=\"$align=\'vertical\'\">\n								<br/>\n							</xsl:if>\n						</xsl:for-each>\n					</xsl:if>\n				</xsl:template>\n				\n				<xsl:template name=\"select_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"hasUserValue\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"refreshPage\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'title\' or $renderCmd=\'all\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:choose>\n							<xsl:when test=\"$align=\'horizontal\'\">\n								<xsl:text>       </xsl:text>\n							</xsl:when>\n							<xsl:otherwise>\n								<br/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:if>\n					<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n						<xsl:call-template name=\"hidden_input\">\n							<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n							<xsl:with-param name=\"value\" select=\"$value\"/>\n						</xsl:call-template>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'input\' or $renderCmd=\'all\'\">\n						<select name=\"{$fieldName}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onChange\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n							<xsl:if test=\"$globalReadOnly = \'true\'  or $readOnly = \'true\'\">\n								<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n							</xsl:if>\n							<xsl:for-each select=\"current()/display/values\">\n								<xsl:variable name=\"title\">\n									<xsl:choose>\n										<xsl:when test=\"@title\">\n											<xsl:value-of select=\"@title\"/>\n										</xsl:when>\n										<xsl:when test=\"@name\">\n											<xsl:value-of select=\"@name\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\".\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<option title=\"{$title}\" value=\"{.}\">\n									<xsl:choose>\n										<xsl:when test=\"$hasUserValue\">\n											<xsl:if test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/../../@name and value=current()]\">\n												<!-- <xsl:if test=\"$value = current()\"> -->\n												<xsl:attribute name=\"selected\">selected</xsl:attribute>\n											</xsl:if>\n										</xsl:when>\n										<xsl:otherwise>\n											<!-- use the default if no user values are specified -->\n											<xsl:if test=\". = ../../value\">\n												<xsl:attribute name=\"selected\">selected</xsl:attribute>\n											</xsl:if>\n										</xsl:otherwise>\n									</xsl:choose>\n									<xsl:if test=\". = ../../value\">\n										<xsl:attribute name=\"selected\">selected</xsl:attribute>\n									</xsl:if>\n									<xsl:value-of select=\"$title\"/>\n								</option>\n							</xsl:for-each>\n						</select>\n						<xsl:if test=\"$refreshPage = \'true\'\">\n						  <script type=\"text/javascript\">\n						  	// register additional onchange event, use prototype to hide the main form and show a message so as to prevent changes while refreshing. \n						  	// programmers are to create the following divisions; html div; that wrap the main form and a seperate div wrapping the message that will show.\n							register_onchange(\'<xsl:value-of select=\"$fieldName\"/>\', function() { $(\'mainform-div\').hide(); $(\'refresh-message\').show(); document.forms[0].submit(); });\n						  </script>\n						</xsl:if>\n					</xsl:if>\n				</xsl:template>\n				\n				<xsl:template name=\"textarea_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"regex\"/>\n					<xsl:param name=\"message\"/>\n					<xsl:param name=\"validation_required\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'title\' or $renderCmd=\'all\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n						<xsl:call-template name=\"hidden_input\">\n							<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n							<xsl:with-param name=\"value\" select=\"$value\"/>\n						</xsl:call-template>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:choose>\n							<xsl:when test=\"$align=\'horizontal\'\">\n								<xsl:text>       </xsl:text>\n							</xsl:when>\n							<xsl:otherwise>\n								<br/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'input\' or $renderCmd=\'all\'\">\n						<xsl:variable name=\"metaCols\" select=\"display/meta[name=\'cols\']/value\"/>\n						<xsl:variable name=\"cols\">\n							<xsl:choose>\n								<xsl:when test=\"$metaCols\">\n									<xsl:value-of select=\"$metaCols\"/>\n								</xsl:when>\n								<xsl:otherwise>1</xsl:otherwise>\n							</xsl:choose>\n						</xsl:variable>\n						<xsl:variable name=\"metaRows\" select=\"display/meta[name=\'rows\']/value\"/>\n						<xsl:variable name=\"rows\">\n							<xsl:choose>\n								<xsl:when test=\"$metaRows\">\n									<xsl:value-of select=\"$metaRows\"/>\n								</xsl:when>\n								<xsl:otherwise>1</xsl:otherwise>\n							</xsl:choose>\n						</xsl:variable>\n						<textarea cols=\"{$cols}\" name=\"{@name}\" rows=\"{$rows}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onkeyup\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n							<xsl:if test=\"$globalReadOnly = \'true\'  or $readOnly = \'true\'\">\n								<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n							</xsl:if>\n							<!--\n								force a space if value is empty, or browsers (firefox) set the rest of the literal body content as the value\n								if the tag is a short-form close tag (!) \n							-->\n							<xsl:choose>\n								<xsl:when test=\"string-length($value) &gt; 0\">\n									<xsl:value-of select=\"$value\"/>\n								</xsl:when>\n								<xsl:otherwise>\n									<xsl:text/>\n								</xsl:otherwise>\n							</xsl:choose>\n						</textarea>\n					</xsl:if>\n				</xsl:template>\n	\n				<xsl:template name=\"button_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'title\' or $renderCmd=\'all\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:choose>\n							<xsl:when test=\"$align=\'horizontal\'\">\n								<xsl:text>    </xsl:text>\n							</xsl:when>\n							<xsl:otherwise>\n								<br/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'input\' or $renderCmd=\'all\'\">\n						<button name=\"{$fieldName}\">\n							<xsl:variable name=\"value\" select=\"value\"/>\n							<xsl:if test=\"$value\">\n								<xsl:attribute name=\"value\">\n<xsl:value-of select=\"$value\"/>\n</xsl:attribute>\n							</xsl:if>\n							<xsl:for-each select=\"current()/display/meta\">\n								<xsl:variable name=\"attr_name\">\n									<xsl:value-of select=\"name\"/>\n								</xsl:variable>\n								<xsl:variable name=\"attr_value\">\n									<xsl:value-of select=\"value\"/>\n								</xsl:variable>\n								<xsl:attribute name=\"{$attr_name}\">\n<xsl:value-of select=\"$attr_value\"/>\n</xsl:attribute>\n							</xsl:for-each>\n							<xsl:value-of select=\"$value\"/>\n						</button>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"submitbutton_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'title\' or $renderCmd=\'all\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:choose>\n							<xsl:when test=\"$align=\'horizontal\'\">\n								<xsl:text>    </xsl:text>\n							</xsl:when>\n							<xsl:otherwise>\n								<br/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'input\' or $renderCmd=\'all\'\">\n						<input name=\"{$fieldName}\" type=\"submit\">\n							<xsl:variable name=\"value\" select=\"value\"/>\n							<xsl:if test=\"$value\">\n								<xsl:attribute name=\"value\">\n<xsl:value-of select=\"$value\"/>\n</xsl:attribute>\n							</xsl:if>\n							<xsl:for-each select=\"current()/display/meta\">\n								<xsl:variable name=\"attr_name\">\n									<xsl:value-of select=\"name\"/>\n								</xsl:variable>\n								<xsl:variable name=\"attr_value\">\n									<xsl:value-of select=\"value\"/>\n								</xsl:variable>\n								<xsl:attribute name=\"{$attr_name}\">\n<xsl:value-of select=\"$attr_value\"/>\n</xsl:attribute>\n							</xsl:for-each>\n						</input>\n					</xsl:if>\n				</xsl:template>\n				\n				<xsl:template name=\"hidden_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:variable name=\"finalValue\">\n					  <xsl:choose>\n					    <xsl:when test=\"$value\">\n					      <xsl:value-of select=\"$value\"/>\n					    </xsl:when>\n					    <xsl:otherwise>\n						  <xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=string($fieldName)]/value\"/>\n						</xsl:otherwise>\n					  </xsl:choose>\n					</xsl:variable>\n					<input name=\"{$fieldName}\" type=\"hidden\" value=\"{$finalValue}\"/>\n					<!-- <xsl:comment>\n					XPath: //edlContent/data/version[@current=\'true\']/field[@name={$fieldName}]/value\n					Escaped: <xsl:value-of select=\"my-class:escapeForXPath($fieldName)\"/>\n					What\'s my value? <xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=$fieldName]/value\"/>\n					What\'s my value2? <xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=my-class:escapeForXPath($fieldName)]/value\"/>\n					</xsl:comment> -->\n					\n				</xsl:template>\n				\n				<xsl:template name=\"page_button\">\n					<xsl:param name=\"pageName\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"clickfunction\"/>\n					<xsl:param name=\"use_jsButton\"/>\n					<xsl:variable name=\"clickFunctionVal\" select=\"boolean(normalize-space($clickfunction))\"/>\n					<xsl:choose>\n						<xsl:when test=\"$readOnly=\'true\'\">\n						  <input disabled=\"disabled\" name=\"edl.gotoPage:{$pageName}\" type=\"submit\" value=\"{$value}\"/>\n						</xsl:when>\n						<xsl:when test=\"$clickFunctionVal\">\n						  <xsl:choose>\n							<xsl:when test=\"$use_jsButton = \'true\'\">\n								<input name=\"jsButton\" onClick=\"{$clickfunction}\" type=\"submit\" value=\"{$value}\"/>\n							</xsl:when>\n							<xsl:otherwise>\n								<input name=\"edl.gotoPage:{$pageName}\" onClick=\"{$clickfunction}\" type=\"submit\" value=\"{$value}\"/>\n							</xsl:otherwise>\n						  </xsl:choose>\n						</xsl:when>\n						<xsl:otherwise>\n						  <input name=\"edl.gotoPage:{$pageName}\" type=\"submit\" value=\"{$value}\"/>\n						</xsl:otherwise>\n					</xsl:choose>\n				</xsl:template>				\n				\n				<xsl:template name=\"header\">\n					<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"headertable\" width=\"100%\">\n						<tr>\n							<td align=\"left\" valign=\"top\" width=\"10%\">\n								<img alt=\"OneStart Workflow\" height=\"21\" hspace=\"5\" src=\"images/wf-logo.gif\" vspace=\"5\" width=\"150\"/>\n							</td>\n							<td align=\"right\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n									<tr>\n										<td align=\"right\" class=\"thnormal\">Document Type Name:</td>\n										<td align=\"left\" class=\"datacell1\">\n											<xsl:value-of select=\"/documentContent/documentState/docType\"/>\n										</td>\n									</tr>\n									<tr>\n										<td align=\"right\" class=\"thnormal\">Document Status:</td>\n										<td align=\"left\" class=\"datacell1\" width=\"50\">\n											<xsl:value-of select=\"//documentState/workflowDocumentState/status\"/>\n										</td>\n									</tr>\n									<tr>\n										<td align=\"right\" class=\"thnormal\">Create Date:</td>\n										<td align=\"left\" class=\"datacell1\">\n											<xsl:comment>[transient start]</xsl:comment>\n											<xsl:value-of select=\"//documentState/workflowDocumentState/createDate\"/>\n											<xsl:comment>[transient end]</xsl:comment>\n										</td>\n									</tr>\n									<tr>\n										<td align=\"right\" class=\"thnormal\">Document ID:</td>\n										<td align=\"left\" class=\"datacell1\">\n												<xsl:comment>[transient start]</xsl:comment>\n												<xsl:value-of select=\"/documentContent/documentState/docId\"/>\n												<xsl:comment>[transient end]</xsl:comment>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</xsl:template>\n	\n				<xsl:template name=\"htmlHead\">\n					<!-- whether the FIELDS can be edited -->\n					<!-- <xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/>-->\n					<!-- whether the form can be acted upon -->\n					<xsl:variable name=\"actionable\" select=\"/documentContent/documentState/actionable = \'true\'\"/>\n					<xsl:variable name=\"docId\" select=\"/documentContent/documentState/docId\"/>\n					<xsl:variable name=\"def\" select=\"/documentContent/documentState/definition\"/>\n					<xsl:variable name=\"docType\" select=\"/documentContent/documentState/docType\"/>\n					<xsl:variable name=\"style\" select=\"/documentContent/documentState/style\"/>\n					<xsl:variable name=\"annotatable\" select=\"/documentContent/documentState/annotatable = \'true\'\"/>\n					<xsl:variable name=\"docTitle\">\n						<xsl:choose>\n							<xsl:when test=\"//edlContent/edl/@title\">\n								<xsl:value-of select=\"//edlContent/edl/@title\"/>\n							</xsl:when>\n							<xsl:otherwise>\n								<xsl:value-of select=\"//edlContent/edl/@name\"/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:variable>\n					<xsl:variable name=\"pageTitle\">\n						<xsl:choose>\n							<xsl:when test=\"$globalReadOnly = \'true\'\">\n								Viewing\n              </xsl:when>\n							<xsl:otherwise>\n								Editing\n              </xsl:otherwise>\n						</xsl:choose>\n\n\n          </xsl:variable>\n					<title>\n						<xsl:value-of select=\"$pageTitle\"/> Document\n					</title>\n					<xsl:comment>* Meta data block for automation/testing</xsl:comment>\n					<xsl:comment>* 	 [var editable_value=<xsl:value-of select=\"//documentState/editable\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var annotatable_value=<xsl:value-of select=\"//documentState/annotatable\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var globalReadOnly=<xsl:value-of select=\"$globalReadOnly\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var annotatable=<xsl:value-of select=\"$annotatable\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var annotation=<xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/annotation\"/>]</xsl:comment>\n					<xsl:comment>* 	 [transient start]</xsl:comment>\n					<xsl:comment>* 	 [var docid=<xsl:value-of select=\"$docId\"/>]</xsl:comment>\n					<xsl:comment>* 	 [transient end]</xsl:comment>\n					<xsl:comment>* 	 [var doctype=<xsl:value-of select=\"$docType\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var def=<xsl:value-of select=\"$def\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var style=<xsl:value-of select=\"$style\"/>]</xsl:comment>\n					<link href=\"css/screen.css\" rel=\"stylesheet\" type=\"text/css\"/>\n					<link href=\"css/edoclite1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n					<script src=\"scripts/edoclite1.js\" type=\"text/javascript\"/>\n					<script src=\"scripts/prototype.js\" type=\"text/javascript\"/>				\n					<xsl:if test=\"//edlContent/edl/javascript\">\n						<script type=\"text/javascript\">\n							<xsl:value-of select=\"//edlContent/edl/javascript\"/>\n						</script>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"instructions\">\n					<!-- <xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/> -->\n					<xsl:variable name=\"docType\" select=\"/documentContent/documentState/docType\"/>\n					<xsl:variable name=\"docTitle\">\n						<xsl:choose>\n							<xsl:when test=\"//edlContent/edl/@title\">\n								<xsl:value-of select=\"//edlContent/edl/@title\"/>\n							</xsl:when>\n							<xsl:otherwise>\n								<xsl:value-of select=\"//edlContent/edl/@name\"/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:variable>\n					<xsl:variable name=\"instructions\">\n						<xsl:choose>\n							<xsl:when test=\"//edlContent/edl/instructions\">\n								<xsl:value-of select=\"//edlContent/edl/instructions\"/>\n							</xsl:when>\n							<xsl:otherwise>\n\n								Reviewing Document\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:variable>\n					<xsl:variable name=\"createInstructions\">\n						<xsl:choose>\n							<xsl:when test=\"//edlContent/edl/createInstructions\">\n								<xsl:value-of select=\"//edlContent/edl/createInstructions\"/>\n							</xsl:when>\n							<xsl:otherwise>\n\n								Filling out new Document\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:variable>\n					<xsl:variable name=\"pageTitle\">\n						<xsl:choose>\n							<xsl:when test=\"$globalReadOnly = \'true\'\">\n								Viewing\n							</xsl:when>\n							<xsl:otherwise>\n								Editing \n							</xsl:otherwise>\n						</xsl:choose>\n\n\n						Document\n					</xsl:variable>\n					<table align=\"center\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"80%\">\n						<tr>\n							<td>\n								<strong>\n									<xsl:value-of select=\"$pageTitle\"/>\n								</strong>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<!-- if \'save\' action is present then this is a \"new\" document that has not been routed, and therefore we should display the create instructions -->\n								<xsl:choose>\n									<xsl:when test=\"//documentState/actionsPossible/save\">\n										<xsl:value-of select=\"$createInstructions\"/>\n									</xsl:when>\n									<xsl:otherwise>\n										<xsl:value-of select=\"$instructions\"/>\n									</xsl:otherwise>\n								</xsl:choose>\n							</td>\n						</tr>\n					</table>\n				</xsl:template>\n	\n				<xsl:template name=\"errors\">\n					<!--\n						<style type=\"text/css\">\n							.error-message {\n    						color: red;\n    						text-align: center;\n							}\n						</style> \n					-->\n					<table align=\"center\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"80%\">\n						<xsl:for-each select=\"//documentState/error\">\n							<tr>\n								<td>\n									<div class=\"error-message\">\n										<xsl:value-of select=\".\"/>\n									</div>\n								</td>\n							</tr>\n						</xsl:for-each>\n					</table>\n				</xsl:template>\n\n				<xsl:template name=\"footer\">\n					<xsl:if test=\"//documentState/userSession/backdoorUser\">\n						<center>\n							User\n							<xsl:choose>\n								<xsl:when test=\"//documentState/userSession/loggedInUser/displayName\">\n									<xsl:value-of select=\"//documentState/userSession/loggedInUser/displayName\"/>\n								</xsl:when>\n								<xsl:when test=\"//documentState/userSession/loggedInUser/networkId\">\n									<xsl:value-of select=\"//documentState/userSession/loggedInUser/networkId\"/>\n								</xsl:when>\n								<xsl:otherwise>\n									??Unknown user??\n								</xsl:otherwise>\n							</xsl:choose>\n							standing in for user\n							<xsl:choose>\n								<xsl:when test=\"//documentState/userSession/backdoorUser/backdoorDisplayName\">\n									<xsl:value-of select=\"//documentState/userSession/backdoorUser/backdoorDisplayName\"/>\n								</xsl:when>\n								<xsl:when test=\"//documentState/userSession/backdoorUser/backdoorNetworkId\">\n									<xsl:value-of select=\"//documentState/userSession/backdoorUser/backdoorNetworkId\"/>\n								</xsl:when>\n								<xsl:otherwise>\n									??Unknown user??\n								</xsl:otherwise>\n							</xsl:choose>\n						</center>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"hidden-params\">\n					<xsl:comment>* Hide this nastiness so we can concentrate on formating above</xsl:comment>\n					<xsl:variable name=\"docId\" select=\"/documentContent/documentState/docId\"/>\n					<xsl:variable name=\"def\" select=\"/documentContent/documentState/definition\"/>\n					<xsl:variable name=\"docType\" select=\"/documentContent/documentState/docType\"/>\n					<xsl:variable name=\"style\" select=\"/documentContent/documentState/style\"/>\n					<xsl:variable name=\"incrementVersion\" select=\"//edlContent/data/version[@current=\'true\']/incrementVersion\"/>\n					<xsl:variable name=\"currentPage\" select=\"//currentPage\"/>\n					<xsl:variable name=\"previousPage\" select=\"//previousPage\"/>\n					<div style=\"display: none\">\n						<xsl:if test=\"$incrementVersion = \'true\'\">\n							<input name=\"incrementVersion\" type=\"hidden\" value=\"{$incrementVersion}\"/>\n						</xsl:if>\n						<xsl:choose>\n							<xsl:when test=\"$docId\">\n								<!-- preserve the data for comparison without transient value -->\n								<xsl:comment>* input name=\"docId\" type=\"hidden\"</xsl:comment>\n								<!-- mark the entire input element transient because we can\'t insert comments in the middle of a tag just to omit a certain attribute -->\n								<xsl:comment>[transient start]</xsl:comment>\n								<input name=\"docId\" type=\"hidden\" value=\"{$docId}\"/>\n								<xsl:comment>[transient end]</xsl:comment>\n							</xsl:when>\n							<xsl:otherwise>\n								<xsl:if test=\"$docType\">\n									<input name=\"docType\" type=\"hidden\" value=\"{$docType}\"/>\n								</xsl:if>\n								<xsl:if test=\"$def\">\n									<input name=\"def\" type=\"hidden\" value=\"{$def}\"/>\n								</xsl:if>\n								<xsl:if test=\"$style\">\n									<input name=\"style\" type=\"hidden\" value=\"{$style}\"/>\n								</xsl:if>\n							</xsl:otherwise>\n						</xsl:choose>\n						<xsl:if test=\"$currentPage\">\n						  <input name=\"edl.currentPage\" type=\"hidden\" value=\"{$currentPage}\"/>\n						</xsl:if>\n						<xsl:if test=\"$previousPage\">\n						  <input name=\"edl.previousPage\" type=\"hidden\" value=\"{$previousPage}\"/>\n						</xsl:if>\n					</div>\n				</xsl:template>\n\n				<xsl:template name=\"annotation\">\n					<xsl:variable name=\"annotation\" select=\"//edlContent/data/version[@current=\'true\']/annotation\"/>\n					<xsl:variable name=\"currentAnnotation\" select=\"//edlContent/data/version[@current=\'true\']/currentAnnotation\"/>\n					<xsl:variable name=\"annotatable\" select=\"/documentContent/documentState/annotatable = \'true\'\"/>\n					<xsl:if test=\"$annotatable or $annotation or $currentAnnotation\">\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\">\n							<tr>\n								<td align=\"center\" class=\"thnormal\" colspan=\"2\">\n									<xsl:if test=\"$annotation\">\n										<div>\n<h4>Annotations</h4>\n											<xsl:for-each select=\"//edlContent/data/version[@current=\'true\']/annotation\">\n												<div>\n<xsl:value-of select=\".\"/>\n</div>\n											</xsl:for-each>\n										</div>\n										<br/>\n									</xsl:if>\n									<xsl:if test=\"$annotatable\">\n										Set annotation:<br/>\n										<textarea name=\"annotation\">\n											<xsl:value-of select=\"$currentAnnotation\"/>\n										</textarea>\n									</xsl:if>\n								</td>\n							</tr>\n						</table>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"buttons\">\n					<xsl:param name=\"fname\"/>\n					<xsl:param name=\"showRTP\"/>\n					<xsl:variable name=\"functionName\" select=\"$fname\"/>\n					<xsl:variable name=\"fxname\" select=\"boolean(normalize-space($fname))\"/>\n					<xsl:variable name=\"actionable\" select=\"/documentContent/documentState/actionable = \'true\'\"/>\n					<xsl:variable name=\"apos\" select=\"&quot;\'&quot;\"/>					\n					<xsl:variable name=\"showRTPbutton\" select=\"$showRTP\"/>					\n					<xsl:if test=\"//documentState/actionsPossible/*\">\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\">\n							<tr>\n								<td align=\"center\" class=\"thnormal\" colspan=\"2\">\n									<xsl:text>									</xsl:text>\n										<xsl:for-each select=\"//documentState/actionsPossible/*[. != \'returnToPrevious\']\">\n											<xsl:variable name=\"actionTitle\">\n												<xsl:choose>\n													<xsl:when test=\"@title\">\n														<xsl:value-of select=\"@title\"/>\n													</xsl:when>\n													<xsl:otherwise>\n														<xsl:value-of select=\"local-name()\"/>\n													</xsl:otherwise>\n												</xsl:choose>\n											</xsl:variable>\n										<xsl:if test=\"local-name() != \'returnToPrevious\' or local-name() = \'returnToPrevious\' and not($showRTPbutton = \'false\')\">\n											<input name=\"userAction\" title=\"{$actionTitle}\" type=\"submit\">\n												<xsl:if test=\"not($actionable)\">\n													<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n												</xsl:if>												\n											 <xsl:choose>\n												<xsl:when test=\"$fxname\">\n												  <xsl:attribute name=\"onclick\">\n													  <xsl:value-of select=\"\'buttonClick(\'\"/>\n													  <xsl:value-of select=\"$apos\"/>\n													  <xsl:value-of select=\"$actionTitle\"/>\n													  <xsl:value-of select=\"$apos\"/>\n													  <xsl:value-of select=\"\'); \'\"/>\n													  <xsl:value-of select=\"\'buttonClickFunctionName(\'\"/>\n													  <xsl:value-of select=\"$functionName\"/>\n													  <xsl:value-of select=\"\')\'\"/>\n													</xsl:attribute>\n												</xsl:when>\n												<xsl:otherwise>\n													<xsl:attribute name=\"onclick\">\n													  <xsl:value-of select=\"\'buttonClick(\'\"/>\n													  <xsl:value-of select=\"$apos\"/>\n													  <xsl:value-of select=\"$actionTitle\"/>\n													  <xsl:value-of select=\"$apos\"/>\n													  <xsl:value-of select=\"\')\'\"/>\n													</xsl:attribute>\n												</xsl:otherwise>\n											  </xsl:choose>\n											  <xsl:choose>\n											    <xsl:when test=\"local-name() = \'route\'\">\n											      <xsl:attribute name=\"value\">\n											        <xsl:value-of select=\"\'submit\'\"/>\n											      </xsl:attribute>\n											    </xsl:when>\n											    <xsl:when test=\"local-name() = \'blanketApprove\'\">\n											      <xsl:attribute name=\"value\">\n											        <xsl:value-of select=\"\'blanket approve\'\"/>\n											      </xsl:attribute>\n											    </xsl:when>\n											    <xsl:when test=\"local-name() = \'returnToPrevious\'\">\n											      <xsl:attribute name=\"value\">\n											        <xsl:value-of select=\"\'return to previous\'\"/>\n											      </xsl:attribute>\n											    </xsl:when>\n											    <xsl:otherwise>\n											      <xsl:attribute name=\"value\">\n											        <xsl:value-of select=\"local-name()\"/>\n											      </xsl:attribute>\n											    </xsl:otherwise>\n											  </xsl:choose>\n											</input>\n										</xsl:if>\n											<xsl:text>                 					 </xsl:text>\n										</xsl:for-each>\n								\n								<xsl:if test=\"not($showRTPbutton = \'false\')\">\n									<xsl:if test=\"//documentState/actionsPossible/returnToPrevious\">\n										<select name=\"previousNode\">\n											<xsl:if test=\"not($actionable) or $showRTPbutton = \'false\'\">\n												<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n											</xsl:if>\n											<xsl:for-each select=\"//documentState/previousNodes/node\">\n												<option value=\"{.}\">\n													<xsl:value-of select=\".\"/>\n												</option>\n											</xsl:for-each>\n										</select>\n										<xsl:text>                 					 </xsl:text>\n									</xsl:if>\n								</xsl:if>\n								</td>\n							</tr>\n						</table>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template match=\"/\">\n					<xsl:choose>\n						<xsl:when test=\"$overrideMain=\'true\'\">\n							<xsl:call-template name=\"mainForm\"/>\n						</xsl:when>\n						<xsl:otherwise>\n							<html>\n								<head>\n									<xsl:call-template name=\"htmlHead\"/>\n								</head>\n								<body onload=\"onPageLoad()\">\n									<xsl:call-template name=\"header\"/>\n									<xsl:call-template name=\"instructions\"/>\n									<xsl:call-template name=\"errors\"/>\n									<xsl:variable name=\"formTarget\" select=\"\'EDocLite\'\"/>\n									<form accept-charset=\"ISO-8859-1\" action=\"{$formTarget}\" enctype=\"multipart/form-data\" id=\"edoclite\" method=\"post\" onsubmit=\"return validateOnSubmit(this)\">\n										<xsl:call-template name=\"hidden-params\"/>\n										<xsl:call-template name=\"mainBody\"/>\n										<xsl:call-template name=\"annotation\"/>\n										<xsl:call-template name=\"buttons\"/>\n										<br/>\n										<xsl:call-template name=\"notes\"/>\n									</form>\n									<xsl:call-template name=\"footer\"/>\n								</body>\n							</html>\n						</xsl:otherwise>\n					</xsl:choose>\n				</xsl:template>\n\n				<xsl:template name=\"notes\">\n					<xsl:if test=\"//NoteForm\">\n						<xsl:variable name=\"showEdit\" select=\"//NoteForm/showEdit\"/>\n						<xsl:variable name=\"showAdd\" select=\"//NoteForm/showAdd\"/>\n						<input name=\"showEdit\" type=\"hidden\">\n							<xsl:attribute name=\"value\">\n<xsl:value-of select=\"//NoteForm/showEdit\"/>\n</xsl:attribute>\n						</input>\n						<input name=\"showAdd\" type=\"hidden\">\n							<xsl:attribute name=\"value\">\n<xsl:value-of select=\"//NoteForm/showAdd\"/>\n</xsl:attribute>\n						</input>\n						<input name=\"methodToCall\" type=\"hidden\"/>\n						<input name=\"sortNotes\" type=\"hidden\">\n							<xsl:attribute name=\"value\">\n<xsl:value-of select=\"//NoteForm/sortNotes\"/>\n</xsl:attribute>\n						</input>\n						<input name=\"noteIdNumber\" type=\"hidden\">\n							<xsl:attribute name=\"value\">\n<xsl:value-of select=\"//NoteForm/noteIdNumber\"/>\n</xsl:attribute>\n						</input>\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\">\n							<xsl:if test=\"$showAdd = \'true\'\">\n								<tr>\n									<td align=\"center\" class=\"thnormal2\" colspan=\"4\" scope=\"col\">\n										<b>Create Note </b>\n									</td>\n								</tr>\n								<tr>\n									<td class=\"thnormal\" scope=\"col\">\n										<div align=\"center\">Author</div>\n									</td>\n									<td class=\"thnormal\" scope=\"col\">\n										<div align=\"center\">Date</div>\n									</td>\n									<td class=\"thnormal\" scope=\"col\">\n										<div align=\"center\">Note</div>\n									</td>\n									<td class=\"thnormal\" scope=\"col\">\n										<div align=\"center\">Action</div>\n									</td>\n								</tr>\n								<tr valign=\"top\">\n									<td class=\"datacell\">\n										<xsl:if test=\"$globalReadOnly != \'true\'\">\n											<xsl:value-of select=\"//NoteForm/currentUserName\"/>\n										</xsl:if>\n									</td>\n									<td class=\"datacell\">\n										<xsl:if test=\"$globalReadOnly != \'true\'\">\n											<xsl:comment>[transient start]</xsl:comment>\n											<xsl:value-of select=\"//NoteForm/currentDate\"/>\n            				  <xsl:comment>[transient end]</xsl:comment>\n										</xsl:if>\n									</td>\n									<td class=\"datacell\">\n										<xsl:choose>\n											<xsl:when test=\"$showEdit = \'yes\'\">\n												<textarea cols=\"60\" disabled=\"true\" name=\"addText\" rows=\"3\"/>\n												<xsl:if test=\"$showAttachments = \'true\'\">\n													<br/>Attachment:	<input disabled=\"true\" name=\"file\" type=\"file\"/>\n												</xsl:if>\n											</xsl:when>\n											<xsl:otherwise>\n												<textarea cols=\"60\" name=\"addText\" rows=\"3\">\n													<xsl:if test=\"$globalReadOnly = \'true\'\">\n														<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n													</xsl:if>\n												</textarea>\n												<xsl:if test=\"$showAttachments = \'true\'\">\n													<br/>\n													Attachment:	\n													<input name=\"file\" type=\"file\">\n														<xsl:if test=\"$globalReadOnly = \'true\'\">\n															<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n														</xsl:if>\n													</input>\n												</xsl:if>\n											</xsl:otherwise>\n										</xsl:choose>\n									</td>\n									<td class=\"datacell\">\n										<xsl:choose>\n											<xsl:when test=\"$showEdit = \'yes\'\">\n												<div align=\"center\">\n													<img height=\"15\" hspace=\"3\" src=\"images/tinybutton-save-disable.gif\" vspace=\"3\" width=\"45\"/>\n												</div>\n											</xsl:when>\n											<xsl:otherwise>\n												<div align=\"center\">\n													<xsl:choose>\n														<xsl:when test=\"$globalReadOnly = \'true\'\">\n															<img height=\"15\" hspace=\"3\" src=\"images/tinybutton-save-disable.gif\" vspace=\"3\" width=\"45\"/>\n														</xsl:when>\n														<xsl:otherwise>\n															<img border=\"0\" height=\"15\" hspace=\"3\" onclick=\"document.forms[0].methodToCall.value=\'save\'; document.forms[0].submit();\" src=\"images/tinybutton-save.gif\" vspace=\"3\" width=\"45\"/>\n														</xsl:otherwise>\n													</xsl:choose>\n												</div>\n											</xsl:otherwise>\n										</xsl:choose>\n									</td>\n								</tr>\n							</xsl:if>\n							<xsl:choose>\n								<xsl:when test=\"//NoteForm/numberOfNotes &gt;0\">\n									<tr>\n										<td align=\"center\" class=\"thnormal2\" colspan=\"4\" scope=\"col\">\n											<b>View Notes </b>\n										</td>\n									</tr>\n									<tr>\n										<td class=\"thnormal\" scope=\"col\">\n											<div align=\"center\">Author</div>\n										</td>\n										<td class=\"thnormal\" scope=\"col\">\n											<div align=\"center\">\n												 <xsl:choose>\n													<xsl:when test=\"$globalReadOnly = \'true\'\">\n														Date\n													</xsl:when>\n													<xsl:otherwise>\n														<a href=\"javascript: document.forms[0].elements[\'methodToCall\'].value = \'sort\'; document.forms[0].elements[\'sortNotes\'].value = \'true\'; document.forms[0].submit();\">Date</a>\n														<img height=\"5\" src=\"images/arrow-expcol-down.gif\" width=\"9\"/>\n													</xsl:otherwise>\n												</xsl:choose>\n											</div>\n										</td>\n										<td class=\"thnormal\" scope=\"col\">\n											<div align=\"center\">Note</div>\n										</td>\n										<td class=\"thnormal\" scope=\"col\">\n											<div align=\"center\">Action</div>\n										</td>\n									</tr>\n									<xsl:for-each select=\"//NoteForm/Notes/Note\">\n										<tr valign=\"top\">\n											<td class=\"datacell\">\n												<xsl:value-of select=\"noteAuthorFullName\"/>\n											</td>\n											<td class=\"datacell\">\n            			      <xsl:comment>[transient start]</xsl:comment>\n												<xsl:value-of select=\"formattedCreateDate\"/>\n              			    <xsl:comment>[transient end]</xsl:comment>\n												<br/>\n                			  <xsl:comment>[transient start]</xsl:comment>\n												<xsl:value-of select=\"formattedCreateTime\"/>\n												<xsl:comment>[transient end]</xsl:comment>\n											</td>\n											<td class=\"datacell\">\n												 <xsl:choose>\n													<xsl:when test=\"editingNote = \'true\' and authorizedToEdit = \'true\'\">\n														<textarea cols=\"60\" name=\"noteText\" rows=\"3\">\n															<xsl:if test=\"$globalReadOnly = \'true\'\">\n																<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n															</xsl:if>\n															<xsl:value-of select=\"noteText\"/>\n														</textarea>\n														<br/>\n														<xsl:if test=\"$showAttachments = \'true\'\">\n															<xsl:choose>\n																<xsl:when test=\"attachments/attachment\">\n																	<xsl:for-each select=\"attachments/attachment\">\n																		<xsl:value-of select=\"fileName\"/>  Â \n																		<input name=\"idInEdit\" type=\"hidden\">\n																			<xsl:attribute name=\"value\">\n<xsl:value-of select=\"../../noteId\"/>\n</xsl:attribute>\n																		</input>\n																		<xsl:choose>\n																			<xsl:when test=\"$globalReadOnly = \'true\'\">\n																			</xsl:when>\n																			<xsl:otherwise>\n																				<a href=\"javascript: document.forms[0].elements[\'methodToCall\'].value = \'deleteAttachment\'; document.forms[0].submit();\">delete</a> Â \n	                    									<xsl:variable name=\"hrefStr\">attachment?attachmentId=<xsl:value-of select=\"attachmentId\"/>\n</xsl:variable>\n																				<a href=\"{$hrefStr}\">download</a>\n	                     								</xsl:otherwise>\n	                     							</xsl:choose>\n																	</xsl:for-each>\n																</xsl:when>\n																<xsl:otherwise>\n																	<br/>\n																	Attachment:	\n																	<input name=\"file\" type=\"file\">\n																		<xsl:if test=\"$globalReadOnly = \'true\'\">\n																			<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n																		</xsl:if>\n																	</input>\n																</xsl:otherwise>\n															</xsl:choose>\n														</xsl:if>\n													</xsl:when>\n													<xsl:otherwise>\n														<xsl:value-of select=\"noteText\"/>\n														<br/>\n														<br/>\n														<xsl:if test=\"$showAttachments = \'true\'\">\n															<xsl:for-each select=\"attachments/attachment\">\n																<xsl:value-of select=\"fileName\"/>  Â \n	                    					<xsl:variable name=\"hrefStr\">attachment?attachmentId=<xsl:value-of select=\"attachmentId\"/>\n</xsl:variable>\n																<a href=\"{$hrefStr}\">download</a>\n															</xsl:for-each>\n														</xsl:if>\n													</xsl:otherwise>\n												</xsl:choose>\n											</td>\n											<td class=\"datacell\">\n												<xsl:choose>\n													<xsl:when test=\"editingNote = \'true\' and authorizedToEdit = \'true\' and $globalReadOnly != \'true\'\">\n														<div align=\"center\">\n															<img border=\"0\" height=\"15\" hspace=\"3\" src=\"images/tinybutton-save.gif\" vspace=\"3\" width=\"40\">\n																<xsl:attribute name=\"onclick\">document.forms[0].elements[\'methodToCall\'].value = \'save\';\n																	document.forms[0].elements[\'noteIdNumber\'].value = <xsl:value-of select=\"noteId\"/>;\n																	document.forms[0].submit();\n																</xsl:attribute>\n															</img>\n															<img border=\"0\" height=\"15\" hspace=\"3\" onclick=\"document.forms[0].elements[\'methodToCall\'].value = \'cancel\'; document.forms[0].submit();\" src=\"images/tinybutton-cancel.gif\" vspace=\"3\" width=\"40\"/>\n														</div>\n													</xsl:when>\n													<xsl:otherwise>\n														<xsl:choose>\n															<xsl:when test=\"../../showEdit != \'yes\' and authorizedToEdit = \'true\' and $globalReadOnly !=\'true\'\">\n																<div align=\"center\">\n																	<img border=\"0\" height=\"15\" hspace=\"3\" src=\"images/tinybutton-edit1.gif\" vspace=\"3\" width=\"40\">\n																		<xsl:attribute name=\"onclick\">document.forms[0].elements[\'methodToCall\'].value = \'edit\';\n																			document.forms[0].elements[\'noteIdNumber\'].value = <xsl:value-of select=\"noteId\"/>;\n																			document.forms[0].submit();\n																		</xsl:attribute>\n																	</img>\n																	<img border=\"0\" height=\"15\" hspace=\"3\" src=\"images/tinybutton-delete1.gif\" vspace=\"3\" width=\"40\">\n																		<xsl:attribute name=\"onclick\">document.forms[0].elements[\'methodToCall\'].value = \'delete\';\n																			document.forms[0].elements[\'noteIdNumber\'].value = <xsl:value-of select=\"noteId\"/>;\n																			document.forms[0].submit();\n																		</xsl:attribute>\n																	</img>\n																</div>\n															</xsl:when>\n															<xsl:otherwise>\n																<div align=\"center\">\n																	<img height=\"15\" hspace=\"3\" src=\"images/tinybutton-edit1-disable.gif\" vspace=\"3\" width=\"40\"/>\n																	<img height=\"15\" src=\"images/tinybutton-delete1-disabled.gif\" vspace=\"3\" width=\"40\"/>\n																</div>\n															</xsl:otherwise>\n														</xsl:choose>\n													</xsl:otherwise>\n												</xsl:choose>\n											</td>\n										</tr>\n									</xsl:for-each>\n								</xsl:when>\n								<xsl:otherwise>\n									<xsl:if test=\"//NoteForm/showAdd != \'true\'\">\n										<tr>\n											<td class=\"thnormal2\">\n												<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n													<tbody>\n														<tr>\n															<td align=\"center\" class=\"spacercell\" valign=\"middle\">\n																<div align=\"center\">\n																	<br/>\n																	<br/>\n																	<br/>\n																	<p>No notes available </p>\n																	<xsl:if test=\"//NoteForm/authorizedToAdd = \'true\'\">\n																		<p>\n																			<img border=\"0\" height=\"15\" hspace=\"3\" onclick=\"document.forms[0].elements[\'methodToCall\'].value = \'add\'; document.forms[0].submit();\" src=\"images/tinybutton-addnote.gif\" vspace=\"3\" width=\"66\"/>\n																		</p>\n																	</xsl:if>\n																</div>\n															</td>\n														</tr>\n													</tbody>\n												</table>\n											</td>\n										</tr>\n									</xsl:if>\n								</xsl:otherwise> \n							</xsl:choose> \n						</table>\n					</xsl:if>\n				</xsl:template> \n                <xsl:template name=\"lookup\">\n                  <xsl:param name=\"fieldName\"/>\n                  <xsl:param name=\"readOnly\"/>\n                  <xsl:if test=\"$globalReadOnly != \'true\' and $readOnly != \'true\'\">\n                    <xsl:if test=\"//fieldDef[@name=$fieldName]/lookup\">\n                      <input name=\"userAction.performLookup.{$fieldName}\" onclick=\"buttonClick(\'performLookup\');\" src=\"images/searchicon.gif\" type=\"image\" value=\"performLookup.{$fieldName}\"/>\n                    </xsl:if>\n                  </xsl:if>\n                </xsl:template>\n			</xsl:stylesheet>\n',1,1,'78f41de9-d148-4e84-855c-b3359f726650'),('2021','eDoc.Example1.Style','<xsl:stylesheet xmlns:my-class=\"xalan://org.kuali.rice.edl.framework.util.EDLFunctions\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\n        <!-- widgets is simply more xslt that contains common functionality that greatly simplifies html rendering. It is somewhat complicated but does not require changes or full understanding unless enhancements are required.  -->\n        <xsl:include href=\"widgets\"/>\n        <xsl:output indent=\"yes\" method=\"html\" omit-xml-declaration=\"yes\" version=\"4.01\"/>\n        <!-- variables in the current version of xslt cannot be changed once set. Below they are set to various values often fed by java classes or to values contained in workflow xml. Not all of these are used in this form but are shown because often they can be useful. The ones prefixed with my-class are methods that are exposed by workflow to Edoclite.-->\n        <xsl:variable name=\"actionable\" select=\"/documentContent/documentState/actionable\"/>\n        <xsl:variable name=\"docHeaderId\" select=\"/documentContent/documentState/docId\"/>\n        <xsl:variable name=\"editable\" select=\"/documentContent/documentState/editable\"/>\n        <xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/>\n        <xsl:variable name=\"docStatus\" select=\"//documentState/workflowDocumentState/status\"/>\n        <xsl:variable name=\"isAtNodeInitiated\" select=\"my-class:isAtNode($docHeaderId, \'Initiated\')\"/>\n        <xsl:variable name=\"isPastInitiated\" select=\"my-class:isNodeInPreviousNodeList(\'Initiated\', $docHeaderId)\"/>\n        <xsl:variable name=\"isUserInitiator\" select=\"my-class:isUserInitiator($docHeaderId)\"/>\n        <xsl:param name=\"overrideMain\" select=\"\'true\'\"/>\n        <!-- mainForm begins here. Execution of stylesheet begins here. It calls other templates which can call other templates. Position of templates beyond this point do not matter. -->\n        <xsl:template name=\"mainForm\">\n          <html xmlns=\"\">\n            <head>\n              <script language=\"javascript\"/>\n              <xsl:call-template name=\"htmlHead\"/>\n            </head>\n            <body onload=\"onPageLoad()\">\n              <xsl:call-template name=\"errors\"/>\n              <!-- the header is usefule because it tells the user whether they are in \'Editing\' mode or \'Read Only\' mode. -->\n              <xsl:call-template name=\"header\"/>\n              <xsl:call-template name=\"instructions\"/>\n              <xsl:variable name=\"formTarget\" select=\"\'EDocLite\'\"/>\n              <!-- validateOnSubmit is a function in edoclite1.js which also supports edloclite forms and can be somewhat complicated but does not require modification unless enhancements are required. -->\n              <form action=\"{$formTarget}\" enctype=\"multipart/form-data\" id=\"edoclite\" method=\"post\" onsubmit=\"return validateOnSubmit(this)\">\n                <xsl:call-template name=\"hidden-params\"/>\n                <xsl:call-template name=\"mainBody\"/>\n                <xsl:call-template name=\"notes\"/>\n                <br/>\n                <xsl:call-template name=\"buttons\"/>\n                <br/>\n              </form>\n              <xsl:call-template name=\"footer\"/>\n            </body>\n          </html>\n        </xsl:template>\n        <!-- mainBody template begins here. It calls other templates which can call other templates. Position of templates do not matter. -->\n        <xsl:template name=\"mainBody\">\n          <!--\nto debug, or see values of previously created, the uncomment the following line to see value of $docStatus rendered on form. -->\n          <!-- $docStatus=<xsl:value-of select=\"$docStatus\" />\n-->\n          <!-- rest of this all is within the form table -->\n          <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\" xmlns=\"\">\n            <tr>\n              <td align=\"left\" border=\"3\" class=\"thnormal\" colspan=\"1\">\n                <br/>\n                <h3>\n                  Indiana University\n                  <br/>\n                  EDL EDoclite Example\n                </h3>\n                <br/>\n              </td>\n              <td align=\"center\" border=\"3\" class=\"thnormal\" colspan=\"2\">\n                <br/>\n                <h2>eDocLite Example 1 Form</h2>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell5\" colspan=\"100%\">\n                <b>User Information</b>\n              </td>\n            </tr>\n            <tr>\n              <!-- IU usually autofills initiator name from Authentication system, and makes it readOnly. See other examples for this type of behavior. -->\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'userName\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'userName\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell5\" colspan=\"100%\">\n                <b>Other Information</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'rqstDate\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'rqstDate\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'campus\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'campus\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'description\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'description\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\" colspan=\"2\">\n                <b>(Check all that apply)</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"datacell\" colspan=\"2\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'fundedBy\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n                <br/>\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'researchHumans\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n                <br/>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell1\" colspan=\"100%\">\n                <b>Supporting Materials</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\" colspan=\"100%\">Use the Create Note box below to attach supporting materials to your request. Notes may be added with or without attachments. Click the red \'save\' button on the right.</td>\n            </tr>\n          </table>\n          <br xmlns=\"\"/>\n        </xsl:template>\n        <xsl:template name=\"nbsp\">\n          <xsl:text disable-output-escaping=\"yes\">&amp;nbsp;</xsl:text>\n        </xsl:template>\n      </xsl:stylesheet>\n',1,1,'d7f09fa4-23f8-40b0-9346-18b532e640d1');
/*!40000 ALTER TABLE `krcr_style_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_chnl_prodcr_t`
--

DROP TABLE IF EXISTS `kren_chnl_prodcr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_chnl_prodcr_t` (
  `CHNL_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `PRODCR_ID` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CHNL_ID`,`PRODCR_ID`),
  KEY `KREN_CHNL_PRODCR_TI1` (`CHNL_ID`),
  KEY `KREN_CHNL_PRODCR_TI2` (`PRODCR_ID`),
  CONSTRAINT `KREN_CHNL_PRODCR_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `kren_chnl_t` (`CHNL_ID`),
  CONSTRAINT `KREN_CHNL_PRODCR_FK2` FOREIGN KEY (`PRODCR_ID`) REFERENCES `kren_prodcr_t` (`PRODCR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_chnl_prodcr_t`
--

LOCK TABLES `kren_chnl_prodcr_t` WRITE;
/*!40000 ALTER TABLE `kren_chnl_prodcr_t` DISABLE KEYS */;
INSERT INTO `kren_chnl_prodcr_t` VALUES (1,1),(2,1),(2,2),(3,1),(3,2),(4,1),(4,3),(5,1);
/*!40000 ALTER TABLE `kren_chnl_prodcr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_chnl_s`
--

DROP TABLE IF EXISTS `kren_chnl_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_chnl_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_chnl_s`
--

LOCK TABLES `kren_chnl_s` WRITE;
/*!40000 ALTER TABLE `kren_chnl_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_chnl_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_chnl_subscrp_s`
--

DROP TABLE IF EXISTS `kren_chnl_subscrp_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_chnl_subscrp_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_chnl_subscrp_s`
--

LOCK TABLES `kren_chnl_subscrp_s` WRITE;
/*!40000 ALTER TABLE `kren_chnl_subscrp_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_chnl_subscrp_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_chnl_subscrp_t`
--

DROP TABLE IF EXISTS `kren_chnl_subscrp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_chnl_subscrp_t` (
  `CHNL_SUBSCRP_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `CHNL_ID` decimal(8,0) NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`CHNL_SUBSCRP_ID`),
  UNIQUE KEY `KREN_CHNL_SUBSCRP_TC0` (`CHNL_ID`,`PRNCPL_ID`),
  KEY `KREN_CHNL_SUBSCRP_TI1` (`CHNL_ID`),
  CONSTRAINT `KREN_CHAN_SUBSCRP_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `kren_chnl_t` (`CHNL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_chnl_subscrp_t`
--

LOCK TABLES `kren_chnl_subscrp_t` WRITE;
/*!40000 ALTER TABLE `kren_chnl_subscrp_t` DISABLE KEYS */;
INSERT INTO `kren_chnl_subscrp_t` VALUES (1,1,'testuser4',NULL,NULL),(1000,1,'admin',NULL,NULL);
/*!40000 ALTER TABLE `kren_chnl_subscrp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_chnl_t`
--

DROP TABLE IF EXISTS `kren_chnl_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_chnl_t` (
  `CHNL_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(4000) COLLATE utf8_bin NOT NULL,
  `SUBSCRB_IND` char(1) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CHNL_ID`),
  UNIQUE KEY `KREN_CHNL_TC0` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_chnl_t`
--

LOCK TABLES `kren_chnl_t` WRITE;
/*!40000 ALTER TABLE `kren_chnl_t` DISABLE KEYS */;
INSERT INTO `kren_chnl_t` VALUES (1,'Kuali Rice Channel','This channel is used for sending out information about the Kuali Rice effort.','Y',1,NULL),(2,'Library Events Channel','This channel is used for sending out information about Library Events.','Y',1,NULL),(3,'Overdue Library Books','This channel is used for sending out information about your overdue books.','N',1,NULL),(4,'Concerts Coming to Campus','This channel broadcasts any concerts coming to campus.','Y',1,NULL),(5,'University Alerts','This channel broadcasts general announcements for the university.','N',1,NULL),(500,'KEW','Builtin channel for KEW','N',1,NULL);
/*!40000 ALTER TABLE `kren_chnl_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_cntnt_typ_s`
--

DROP TABLE IF EXISTS `kren_cntnt_typ_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_cntnt_typ_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_cntnt_typ_s`
--

LOCK TABLES `kren_cntnt_typ_s` WRITE;
/*!40000 ALTER TABLE `kren_cntnt_typ_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_cntnt_typ_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_cntnt_typ_t`
--

DROP TABLE IF EXISTS `kren_cntnt_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_cntnt_typ_t` (
  `CNTNT_TYP_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `CUR_IND` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'T',
  `CNTNT_TYP_VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(1000) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(1000) COLLATE utf8_bin NOT NULL,
  `XSD` longtext COLLATE utf8_bin NOT NULL,
  `XSL` longtext COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CNTNT_TYP_ID`),
  UNIQUE KEY `KREN_CNTNT_TYP_TC0` (`NM`,`CNTNT_TYP_VER_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_cntnt_typ_t`
--

LOCK TABLES `kren_cntnt_typ_t` WRITE;
/*!40000 ALTER TABLE `kren_cntnt_typ_t` DISABLE KEYS */;
INSERT INTO `kren_cntnt_typ_t` VALUES (1,'Simple','T',0,'Simple content type','notification/ContentTypeSimple','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- This schema describes a simple notification.  It only contains a content\nelement which is a String...about as simple as one can get -->\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\"\n  xmlns:c=\"ns:notification/common\"\n  xmlns:cs=\"ns:notification/ContentTypeSimple\"\n  targetNamespace=\"ns:notification/ContentTypeSimple\"\n  attributeFormDefault=\"unqualified\" \n    elementFormDefault=\"qualified\">\n  <annotation>\n    <documentation xml:lang=\"en\">\n      Simple Content Schema\n    </documentation>\n  </annotation>\n  <import namespace=\"ns:notification/common\" schemaLocation=\"resource:notification/notification-common\" />\n  <!--  The content element is just a String -->\n  <element name=\"content\">\n    <complexType>\n      <sequence>\n        <element name=\"message\" type=\"c:LongStringType\"/>\n      </sequence>\n    </complexType>\n  </element>\n</schema>','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet\n   version=\"1.0\" \n   xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" \n   xmlns:n=\"ns:notification/ContentTypeSimple\" \n   xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n   xsi:schemaLocation=\"ns:notification/ContentTypeSimple resource:notification/ContentTypeSimple\" \n   exclude-result-prefixes=\"n xsi\">\n   <xsl:output method=\"html\" omit-xml-declaration=\"yes\" />\n   <xsl:template match=\"/n:content/n:message\">\n      <strong>\n          <xsl:value-of select=\".\" disable-output-escaping=\"yes\"/>\n      </strong>\n   </xsl:template>\n</xsl:stylesheet>',1,NULL),(2,'Event','T',0,'Event content type','notification/ContentTypeEvent','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- This schema defines an generic event notification type in order for it\nto be accepted into the system. -->\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:c=\"ns:notification/common\" xmlns:ce=\"ns:notification/ContentTypeEvent\" targetNamespace=\"ns:notification/ContentTypeEvent\" attributeFormDefault=\"unqualified\" elementFormDefault=\"qualified\">\n  <annotation>\n    <documentation xml:lang=\"en\">Content Event Schema</documentation>\n  </annotation>\n  <import namespace=\"ns:notification/common\" schemaLocation=\"resource:notification/notification-common\" />\n  <!-- The content element describes the content of the notification.  It\n  contains a message (a simple String) and a message element -->\n  <element name=\"content\">\n    <complexType>\n      <sequence>\n        <element name=\"message\" type=\"c:LongStringType\"/>\n        <element ref=\"ce:event\"/>\n      </sequence>\n    </complexType>\n  </element>\n  <!-- This is the event element.  It describes a simple event type containing a\n  summary, description, location, and start/stop times -->\n  <element name=\"event\">\n    <complexType>\n      <sequence>\n        <element name=\"summary\" type=\"c:NonEmptyShortStringType\" />\n        <element name=\"description\" type=\"c:NonEmptyShortStringType\" />\n        <element name=\"location\" type=\"c:NonEmptyShortStringType\" />\n        <element name=\"startDateTime\" type=\"c:NonEmptyShortStringType\" />\n        <element name=\"stopDateTime\" type=\"c:NonEmptyShortStringType\" />\n      </sequence>\n    </complexType>\n  </element>\n</schema>','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- style sheet declaration: be very careful editing the following, the\n     default namespace must be used otherwise elements will not match -->\n<xsl:stylesheet\n    version=\"1.0\" \n    xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" \n    xmlns:n=\"ns:notification/ContentTypeEvent\" \n    xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n    xsi:schemaLocation=\"ns:notification/ContentTypeEvent resource:notification/ContentTypeEvent\" \n    exclude-result-prefixes=\"n xsi\">\n    <!-- output an html fragment -->\n    <xsl:output method=\"html\" indent=\"yes\" />\n    <!-- match everything -->\n    <xsl:template match=\"/n:content\" >\n        <table class=\"bord-all\">\n            <xsl:apply-templates />\n        </table>\n    </xsl:template>\n    <!--  match message element in the default namespace and render as strong -->\n    <xsl:template match=\"n:message\" >\n        <caption>\n            <strong><xsl:value-of select=\".\" disable-output-escaping=\"yes\"/></strong>\n        </caption>\n    </xsl:template>\n    <!-- match on event in the default namespace and display all children -->\n    <xsl:template match=\"n:event\">\n        <tr>\n            <td class=\"thnormal\"><strong>Summary: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:summary\" /></td>\n        </tr>\n        <tr>\n            <td class=\"thnormal\"><strong>Description: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:description\" /></td>\n        </tr>\n        <tr>\n            <td class=\"thnormal\"><strong>Location: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:location\" /></td>\n        </tr>\n        <tr>\n            <td class=\"thnormal\"><strong>Start Time: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:startDateTime\" /></td>\n        </tr>\n        <tr>\n            <td class=\"thnormal\"><strong>End Time: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:stopDateTime\" /></td>\n        </tr>\n    </xsl:template> \n</xsl:stylesheet>',1,NULL);
/*!40000 ALTER TABLE `kren_cntnt_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_msg_deliv_s`
--

DROP TABLE IF EXISTS `kren_msg_deliv_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_msg_deliv_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_msg_deliv_s`
--

LOCK TABLES `kren_msg_deliv_s` WRITE;
/*!40000 ALTER TABLE `kren_msg_deliv_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_msg_deliv_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_msg_deliv_t`
--

DROP TABLE IF EXISTS `kren_msg_deliv_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_msg_deliv_t` (
  `MSG_DELIV_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `MSG_ID` decimal(8,0) NOT NULL,
  `TYP_NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `SYS_ID` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `STAT_CD` varchar(15) COLLATE utf8_bin NOT NULL,
  `PROC_CNT` decimal(4,0) NOT NULL DEFAULT '0',
  `LOCKD_DTTM` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MSG_DELIV_ID`),
  UNIQUE KEY `KREN_MSG_DELIV_TC0` (`MSG_ID`,`TYP_NM`),
  KEY `KREN_MSG_DELIV_TI1` (`MSG_ID`),
  CONSTRAINT `KREN_MSG_DELIV_FK1` FOREIGN KEY (`MSG_ID`) REFERENCES `kren_msg_t` (`MSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_msg_deliv_t`
--

LOCK TABLES `kren_msg_deliv_t` WRITE;
/*!40000 ALTER TABLE `kren_msg_deliv_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_msg_deliv_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_msg_s`
--

DROP TABLE IF EXISTS `kren_msg_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_msg_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_msg_s`
--

LOCK TABLES `kren_msg_s` WRITE;
/*!40000 ALTER TABLE `kren_msg_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_msg_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_msg_t`
--

DROP TABLE IF EXISTS `kren_msg_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_msg_t` (
  `MSG_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `ORGN_ID` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DELIV_TYP` varchar(500) COLLATE utf8_bin NOT NULL,
  `CRTE_DTTM` datetime NOT NULL,
  `TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CHNL` varchar(300) COLLATE utf8_bin NOT NULL,
  `PRODCR` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `CNTNT` longtext COLLATE utf8_bin NOT NULL,
  `CNTNT_TYP` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `RECIP_ID` varchar(300) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MSG_ID`),
  UNIQUE KEY `KREN_MSG_TC0` (`ORGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_msg_t`
--

LOCK TABLES `kren_msg_t` WRITE;
/*!40000 ALTER TABLE `kren_msg_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_msg_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_ntfctn_msg_deliv_s`
--

DROP TABLE IF EXISTS `kren_ntfctn_msg_deliv_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_ntfctn_msg_deliv_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_ntfctn_msg_deliv_s`
--

LOCK TABLES `kren_ntfctn_msg_deliv_s` WRITE;
/*!40000 ALTER TABLE `kren_ntfctn_msg_deliv_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_ntfctn_msg_deliv_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_ntfctn_msg_deliv_t`
--

DROP TABLE IF EXISTS `kren_ntfctn_msg_deliv_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_ntfctn_msg_deliv_t` (
  `NTFCTN_MSG_DELIV_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NTFCTN_ID` decimal(8,0) NOT NULL,
  `RECIP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `STAT_CD` varchar(15) COLLATE utf8_bin NOT NULL,
  `SYS_ID` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `LOCKD_DTTM` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTFCTN_MSG_DELIV_ID`),
  UNIQUE KEY `KREN_NTFCTN_MSG_DELIV_TC0` (`NTFCTN_ID`,`RECIP_ID`),
  KEY `KREN_MSG_DELIVSI1` (`NTFCTN_ID`),
  CONSTRAINT `KREN_NTFCTN_MSG_DELIV_FK1` FOREIGN KEY (`NTFCTN_ID`) REFERENCES `kren_ntfctn_t` (`NTFCTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_ntfctn_msg_deliv_t`
--

LOCK TABLES `kren_ntfctn_msg_deliv_t` WRITE;
/*!40000 ALTER TABLE `kren_ntfctn_msg_deliv_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_ntfctn_msg_deliv_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_ntfctn_s`
--

DROP TABLE IF EXISTS `kren_ntfctn_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_ntfctn_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_ntfctn_s`
--

LOCK TABLES `kren_ntfctn_s` WRITE;
/*!40000 ALTER TABLE `kren_ntfctn_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_ntfctn_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_ntfctn_t`
--

DROP TABLE IF EXISTS `kren_ntfctn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_ntfctn_t` (
  `NTFCTN_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `DELIV_TYP` varchar(3) COLLATE utf8_bin NOT NULL,
  `CRTE_DTTM` datetime NOT NULL,
  `SND_DTTM` datetime DEFAULT NULL,
  `AUTO_RMV_DTTM` datetime DEFAULT NULL,
  `PRIO_ID` decimal(8,0) NOT NULL,
  `TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CNTNT` longtext COLLATE utf8_bin NOT NULL,
  `CNTNT_TYP_ID` decimal(8,0) NOT NULL,
  `CHNL_ID` decimal(8,0) NOT NULL,
  `PRODCR_ID` decimal(8,0) NOT NULL,
  `PROCESSING_FLAG` varchar(15) COLLATE utf8_bin NOT NULL,
  `LOCKD_DTTM` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTFCTN_ID`),
  KEY `KREN_NTFCTN_I1` (`CNTNT_TYP_ID`),
  KEY `KREN_NTFCTN_I2` (`PRIO_ID`),
  KEY `KREN_NTFCTN_I3` (`PRODCR_ID`),
  KEY `KREN_NTFCTN_FK1` (`CHNL_ID`),
  CONSTRAINT `KREN_NTFCTN_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `kren_chnl_t` (`CHNL_ID`),
  CONSTRAINT `KREN_NTFCTN_FK2` FOREIGN KEY (`CNTNT_TYP_ID`) REFERENCES `kren_cntnt_typ_t` (`CNTNT_TYP_ID`),
  CONSTRAINT `KREN_NTFCTN_FK3` FOREIGN KEY (`PRIO_ID`) REFERENCES `kren_prio_t` (`PRIO_ID`),
  CONSTRAINT `KREN_NTFCTN_FK4` FOREIGN KEY (`PRODCR_ID`) REFERENCES `kren_prodcr_t` (`PRODCR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_ntfctn_t`
--

LOCK TABLES `kren_ntfctn_t` WRITE;
/*!40000 ALTER TABLE `kren_ntfctn_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_ntfctn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_prio_s`
--

DROP TABLE IF EXISTS `kren_prio_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_prio_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_prio_s`
--

LOCK TABLES `kren_prio_s` WRITE;
/*!40000 ALTER TABLE `kren_prio_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_prio_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_prio_t`
--

DROP TABLE IF EXISTS `kren_prio_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_prio_t` (
  `PRIO_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NM` varchar(40) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(500) COLLATE utf8_bin NOT NULL,
  `PRIO_ORD` decimal(4,0) NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PRIO_ID`),
  UNIQUE KEY `KREN_PRIO_TC0` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_prio_t`
--

LOCK TABLES `kren_prio_t` WRITE;
/*!40000 ALTER TABLE `kren_prio_t` DISABLE KEYS */;
INSERT INTO `kren_prio_t` VALUES (1,'Normal','Normal priority',2,1,NULL),(2,'Low','A low priority',3,1,NULL),(3,'High','A high priority',1,1,NULL);
/*!40000 ALTER TABLE `kren_prio_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_prodcr_s`
--

DROP TABLE IF EXISTS `kren_prodcr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_prodcr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_prodcr_s`
--

LOCK TABLES `kren_prodcr_s` WRITE;
/*!40000 ALTER TABLE `kren_prodcr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_prodcr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_prodcr_t`
--

DROP TABLE IF EXISTS `kren_prodcr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_prodcr_t` (
  `PRODCR_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(1000) COLLATE utf8_bin NOT NULL,
  `CNTCT_INFO` varchar(1000) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PRODCR_ID`),
  UNIQUE KEY `KREN_PRODCR_TC0` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_prodcr_t`
--

LOCK TABLES `kren_prodcr_t` WRITE;
/*!40000 ALTER TABLE `kren_prodcr_t` DISABLE KEYS */;
INSERT INTO `kren_prodcr_t` VALUES (1,'Notification System','This producer represents messages sent from the general message sending forms.','kuali-ken-testing@cornell.edu',1,NULL),(2,'University Library System','This producer represents messages sent from the University Library system.','kuali-ken-testing@cornell.edu',1,NULL),(3,'University Events Office','This producer represents messages sent from the University Events system.','kuali-ken-testing@cornell.edu',1,NULL);
/*!40000 ALTER TABLE `kren_prodcr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_recip_deliv_s`
--

DROP TABLE IF EXISTS `kren_recip_deliv_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_recip_deliv_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_recip_deliv_s`
--

LOCK TABLES `kren_recip_deliv_s` WRITE;
/*!40000 ALTER TABLE `kren_recip_deliv_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_recip_deliv_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_recip_deliv_t`
--

DROP TABLE IF EXISTS `kren_recip_deliv_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_recip_deliv_t` (
  `RECIP_DELIV_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `RECIP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `CHNL` varchar(300) COLLATE utf8_bin NOT NULL,
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RECIP_DELIV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_recip_deliv_t`
--

LOCK TABLES `kren_recip_deliv_t` WRITE;
/*!40000 ALTER TABLE `kren_recip_deliv_t` DISABLE KEYS */;
INSERT INTO `kren_recip_deliv_t` VALUES (1,'testuser6','KEW','mock',0),(2,'testuser1','KEW','mock',0),(3,'testuser2','KEW','mock',0),(4,'quickstart','KEW','mock',0),(5,'testuser5','KEW','mock',0),(6,'testuser4','KEW','mock',0);
/*!40000 ALTER TABLE `kren_recip_deliv_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_recip_list_s`
--

DROP TABLE IF EXISTS `kren_recip_list_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_recip_list_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_recip_list_s`
--

LOCK TABLES `kren_recip_list_s` WRITE;
/*!40000 ALTER TABLE `kren_recip_list_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_recip_list_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_recip_list_t`
--

DROP TABLE IF EXISTS `kren_recip_list_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_recip_list_t` (
  `RECIP_LIST_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `CHNL_ID` decimal(8,0) NOT NULL,
  `RECIP_TYP_CD` varchar(10) COLLATE utf8_bin NOT NULL,
  `RECIP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`RECIP_LIST_ID`),
  UNIQUE KEY `KREN_RECIP_LIST_TC0` (`CHNL_ID`,`RECIP_TYP_CD`,`RECIP_ID`),
  KEY `KREN_RECIP_LIST_TI1` (`CHNL_ID`),
  CONSTRAINT `KREN_RECIP_LIST_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `kren_chnl_t` (`CHNL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_recip_list_t`
--

LOCK TABLES `kren_recip_list_t` WRITE;
/*!40000 ALTER TABLE `kren_recip_list_t` DISABLE KEYS */;
INSERT INTO `kren_recip_list_t` VALUES (1,4,'USER','testuser1',NULL,NULL),(2,4,'USER','testuser3',NULL,NULL);
/*!40000 ALTER TABLE `kren_recip_list_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_recip_pref_s`
--

DROP TABLE IF EXISTS `kren_recip_pref_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_recip_pref_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_recip_pref_s`
--

LOCK TABLES `kren_recip_pref_s` WRITE;
/*!40000 ALTER TABLE `kren_recip_pref_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_recip_pref_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_recip_prefs_t`
--

DROP TABLE IF EXISTS `kren_recip_prefs_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_recip_prefs_t` (
  `RECIP_PREFS_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `RECIP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PROP` varchar(200) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(1000) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RECIP_PREFS_ID`),
  UNIQUE KEY `KREN_RECIP_PREFS_TC0` (`RECIP_ID`,`PROP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_recip_prefs_t`
--

LOCK TABLES `kren_recip_prefs_t` WRITE;
/*!40000 ALTER TABLE `kren_recip_prefs_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_recip_prefs_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_recip_s`
--

DROP TABLE IF EXISTS `kren_recip_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_recip_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_recip_s`
--

LOCK TABLES `kren_recip_s` WRITE;
/*!40000 ALTER TABLE `kren_recip_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_recip_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_recip_t`
--

DROP TABLE IF EXISTS `kren_recip_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_recip_t` (
  `RECIP_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NTFCTN_ID` decimal(8,0) NOT NULL,
  `RECIP_TYP_CD` varchar(10) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`RECIP_ID`),
  UNIQUE KEY `KREN_RECIP_TC0` (`NTFCTN_ID`,`RECIP_TYP_CD`,`PRNCPL_ID`),
  KEY `KREN_RECIP_TI1` (`NTFCTN_ID`),
  CONSTRAINT `KREN_RECIP_FK1` FOREIGN KEY (`NTFCTN_ID`) REFERENCES `kren_ntfctn_t` (`NTFCTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_recip_t`
--

LOCK TABLES `kren_recip_t` WRITE;
/*!40000 ALTER TABLE `kren_recip_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_recip_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_rvwer_s`
--

DROP TABLE IF EXISTS `kren_rvwer_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_rvwer_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_rvwer_s`
--

LOCK TABLES `kren_rvwer_s` WRITE;
/*!40000 ALTER TABLE `kren_rvwer_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_rvwer_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_rvwer_t`
--

DROP TABLE IF EXISTS `kren_rvwer_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_rvwer_t` (
  `RVWER_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `CHNL_ID` decimal(8,0) NOT NULL,
  `TYP` varchar(10) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RVWER_ID`),
  UNIQUE KEY `KREN_RVWER_TC0` (`CHNL_ID`,`TYP`,`PRNCPL_ID`),
  KEY `KREN_RVWER_TI1` (`CHNL_ID`),
  CONSTRAINT `NOTIFICATION_REVIEWERS_N_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `kren_chnl_t` (`CHNL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_rvwer_t`
--

LOCK TABLES `kren_rvwer_t` WRITE;
/*!40000 ALTER TABLE `kren_rvwer_t` DISABLE KEYS */;
INSERT INTO `kren_rvwer_t` VALUES (1,1,'GROUP','RiceTeam',1,NULL),(2,5,'USER','testuser3',1,NULL),(3,5,'GROUP','TestGroup1',1,NULL);
/*!40000 ALTER TABLE `kren_rvwer_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_sndr_s`
--

DROP TABLE IF EXISTS `kren_sndr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_sndr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_sndr_s`
--

LOCK TABLES `kren_sndr_s` WRITE;
/*!40000 ALTER TABLE `kren_sndr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_sndr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kren_sndr_t`
--

DROP TABLE IF EXISTS `kren_sndr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kren_sndr_t` (
  `SNDR_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NTFCTN_ID` decimal(8,0) NOT NULL,
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`SNDR_ID`),
  UNIQUE KEY `KREN_SNDR_TC0` (`NTFCTN_ID`,`NM`),
  KEY `KREN_SNDR_TI1` (`NTFCTN_ID`),
  CONSTRAINT `KREN_SNDR_FK1` FOREIGN KEY (`NTFCTN_ID`) REFERENCES `kren_ntfctn_t` (`NTFCTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kren_sndr_t`
--

LOCK TABLES `kren_sndr_t` WRITE;
/*!40000 ALTER TABLE `kren_sndr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `kren_sndr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_actn_itm_s`
--

DROP TABLE IF EXISTS `krew_actn_itm_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_actn_itm_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10226 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_actn_itm_s`
--

LOCK TABLES `krew_actn_itm_s` WRITE;
/*!40000 ALTER TABLE `krew_actn_itm_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_actn_itm_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_actn_itm_t`
--

DROP TABLE IF EXISTS `krew_actn_itm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_actn_itm_t` (
  `ACTN_ITM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ASND_DT` datetime NOT NULL,
  `RQST_CD` char(1) COLLATE utf8_bin NOT NULL,
  `ACTN_RQST_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ROLE_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_LBL` varchar(128) COLLATE utf8_bin NOT NULL,
  `DOC_HDLR_URL` varchar(255) COLLATE utf8_bin NOT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `DTYPE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RQST_LBL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTN_ITM_ID`),
  KEY `KREW_ACTN_ITM_T1` (`PRNCPL_ID`),
  KEY `KREW_ACTN_ITM_TI2` (`DOC_HDR_ID`),
  KEY `KREW_ACTN_ITM_TI3` (`ACTN_RQST_ID`),
  KEY `KREW_ACTN_ITM_TI5` (`PRNCPL_ID`,`DLGN_TYP`,`DOC_HDR_ID`),
  KEY `KREW_ACTN_ITM_TI6` (`DLGN_TYP`,`DLGN_PRNCPL_ID`,`DLGN_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_actn_itm_t`
--

LOCK TABLES `krew_actn_itm_t` WRITE;
/*!40000 ALTER TABLE `krew_actn_itm_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_actn_itm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_actn_list_optn_s`
--

DROP TABLE IF EXISTS `krew_actn_list_optn_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_actn_list_optn_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1269 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_actn_list_optn_s`
--

LOCK TABLES `krew_actn_list_optn_s` WRITE;
/*!40000 ALTER TABLE `krew_actn_list_optn_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_actn_list_optn_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_actn_rqst_s`
--

DROP TABLE IF EXISTS `krew_actn_rqst_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_actn_rqst_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2369 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_actn_rqst_s`
--

LOCK TABLES `krew_actn_rqst_s` WRITE;
/*!40000 ALTER TABLE `krew_actn_rqst_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_actn_rqst_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_actn_rqst_t`
--

DROP TABLE IF EXISTS `krew_actn_rqst_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_actn_rqst_t` (
  `ACTN_RQST_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PARNT_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTN_RQST_CD` char(1) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `STAT_CD` char(1) COLLATE utf8_bin NOT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `QUAL_ROLE_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `QUAL_ROLE_NM_LBL_TXT` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `RECIP_TYP_CD` char(1) COLLATE utf8_bin DEFAULT NULL,
  `PRIO_NBR` decimal(8,0) NOT NULL,
  `RTE_TYP_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RTE_LVL_NBR` decimal(8,0) NOT NULL,
  `RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTN_TKN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_VER_NBR` decimal(8,0) NOT NULL,
  `CRTE_DT` datetime NOT NULL,
  `RSP_DESC_TXT` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `FRC_ACTN` decimal(1,0) DEFAULT '0',
  `ACTN_RQST_ANNOTN_TXT` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_TYP` char(1) COLLATE utf8_bin DEFAULT NULL,
  `APPR_PLCY` char(1) COLLATE utf8_bin DEFAULT NULL,
  `CUR_IND` decimal(1,0) DEFAULT '1',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RQST_LBL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTN_RQST_ID`),
  KEY `KREW_ACTN_RQST_T11` (`DOC_HDR_ID`),
  KEY `KREW_ACTN_RQST_T12` (`PRNCPL_ID`),
  KEY `KREW_ACTN_RQST_T13` (`ACTN_TKN_ID`),
  KEY `KREW_ACTN_RQST_T14` (`PARNT_ID`),
  KEY `KREW_ACTN_RQST_T15` (`RSP_ID`),
  KEY `KREW_ACTN_RQST_T16` (`STAT_CD`,`RSP_ID`),
  KEY `KREW_ACTN_RQST_T17` (`RTE_NODE_INSTN_ID`),
  KEY `KREW_ACTN_RQST_T19` (`STAT_CD`,`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_actn_rqst_t`
--

LOCK TABLES `krew_actn_rqst_t` WRITE;
/*!40000 ALTER TABLE `krew_actn_rqst_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_actn_rqst_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_actn_tkn_s`
--

DROP TABLE IF EXISTS `krew_actn_tkn_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_actn_tkn_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2329 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_actn_tkn_s`
--

LOCK TABLES `krew_actn_tkn_s` WRITE;
/*!40000 ALTER TABLE `krew_actn_tkn_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_actn_tkn_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_actn_tkn_t`
--

DROP TABLE IF EXISTS `krew_actn_tkn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_actn_tkn_t` (
  `ACTN_TKN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGTR_PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTN_CD` char(1) COLLATE utf8_bin NOT NULL,
  `ACTN_DT` datetime NOT NULL,
  `DOC_VER_NBR` decimal(8,0) NOT NULL,
  `ANNOTN` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `CUR_IND` decimal(1,0) DEFAULT '1',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `DLGTR_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTN_TKN_ID`),
  KEY `KREW_ACTN_TKN_TI1` (`DOC_HDR_ID`,`PRNCPL_ID`),
  KEY `KREW_ACTN_TKN_TI2` (`DOC_HDR_ID`,`PRNCPL_ID`,`ACTN_CD`),
  KEY `KREW_ACTN_TKN_TI3` (`PRNCPL_ID`),
  KEY `KREW_ACTN_TKN_TI4` (`DLGTR_PRNCPL_ID`),
  KEY `KREW_ACTN_TKN_TI5` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_actn_tkn_t`
--

LOCK TABLES `krew_actn_tkn_t` WRITE;
/*!40000 ALTER TABLE `krew_actn_tkn_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_actn_tkn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_app_doc_stat_tran_t`
--

DROP TABLE IF EXISTS `krew_app_doc_stat_tran_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_app_doc_stat_tran_t` (
  `APP_DOC_STAT_TRAN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `APP_DOC_STAT_FROM` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `APP_DOC_STAT_TO` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `STAT_TRANS_DATE` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`APP_DOC_STAT_TRAN_ID`),
  UNIQUE KEY `KREW_APP_DOC_STAT_TRAN_TC0` (`OBJ_ID`),
  KEY `KREW_APP_DOC_STAT_TI1` (`DOC_HDR_ID`,`STAT_TRANS_DATE`),
  KEY `KREW_APP_DOC_STAT_TI2` (`DOC_HDR_ID`,`APP_DOC_STAT_FROM`),
  KEY `KREW_APP_DOC_STAT_TI3` (`DOC_HDR_ID`,`APP_DOC_STAT_TO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_app_doc_stat_tran_t`
--

LOCK TABLES `krew_app_doc_stat_tran_t` WRITE;
/*!40000 ALTER TABLE `krew_app_doc_stat_tran_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_app_doc_stat_tran_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_att_t`
--

DROP TABLE IF EXISTS `krew_att_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_att_t` (
  `ATTACHMENT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NTE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FILE_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `FILE_LOC` varchar(255) COLLATE utf8_bin NOT NULL,
  `MIME_TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`ATTACHMENT_ID`),
  KEY `KREW_ATT_TI1` (`NTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_att_t`
--

LOCK TABLES `krew_att_t` WRITE;
/*!40000 ALTER TABLE `krew_att_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_att_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_attr_defn_s`
--

DROP TABLE IF EXISTS `krew_attr_defn_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_attr_defn_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_attr_defn_s`
--

LOCK TABLES `krew_attr_defn_s` WRITE;
/*!40000 ALTER TABLE `krew_attr_defn_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_attr_defn_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_attr_defn_t`
--

DROP TABLE IF EXISTS `krew_attr_defn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_attr_defn_t` (
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `LBL` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `CMPNT_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DEFN_ID`),
  UNIQUE KEY `KREW_ATTR_DEFN_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_attr_defn_t`
--

LOCK TABLES `krew_attr_defn_t` WRITE;
/*!40000 ALTER TABLE `krew_attr_defn_t` DISABLE KEYS */;
INSERT INTO `krew_attr_defn_t` VALUES ('1','number','KR-SAP','Travel Number','Y','edu.sampleu.travel.bo.TravelAccount',1,NULL),('2','id','KR-SAP',NULL,'Y','edu.sampleu.travel.bo.FiscalOfficer',1,NULL);
/*!40000 ALTER TABLE `krew_attr_defn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_dlgn_rsp_t`
--

DROP TABLE IF EXISTS `krew_dlgn_rsp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_dlgn_rsp_t` (
  `DLGN_RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_RULE_BASE_VAL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP` varchar(20) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`DLGN_RULE_ID`),
  UNIQUE KEY `KREW_DLGN_RSP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_dlgn_rsp_t`
--

LOCK TABLES `krew_dlgn_rsp_t` WRITE;
/*!40000 ALTER TABLE `krew_dlgn_rsp_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_dlgn_rsp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_hdr_cntnt_t`
--

DROP TABLE IF EXISTS `krew_doc_hdr_cntnt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_hdr_cntnt_t` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_CNTNT_TXT` longtext COLLATE utf8_bin,
  PRIMARY KEY (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_hdr_cntnt_t`
--

LOCK TABLES `krew_doc_hdr_cntnt_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_hdr_cntnt_t` DISABLE KEYS */;
INSERT INTO `krew_doc_hdr_cntnt_t` VALUES ('3013','<documentContent/>');
/*!40000 ALTER TABLE `krew_doc_hdr_cntnt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_hdr_ext_dt_t`
--

DROP TABLE IF EXISTS `krew_doc_hdr_ext_dt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_hdr_ext_dt_t` (
  `DOC_HDR_EXT_DT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` datetime DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_EXT_DT_ID`),
  KEY `KREW_DOC_HDR_EXT_DT_TI1` (`KEY_CD`,`VAL`),
  KEY `KREW_DOC_HDR_EXT_DT_TI2` (`DOC_HDR_ID`),
  KEY `KREW_DOC_HDR_EXT_DT_TI3` (`VAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_hdr_ext_dt_t`
--

LOCK TABLES `krew_doc_hdr_ext_dt_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_hdr_ext_dt_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_hdr_ext_dt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_hdr_ext_flt_t`
--

DROP TABLE IF EXISTS `krew_doc_hdr_ext_flt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_hdr_ext_flt_t` (
  `DOC_HDR_EXT_FLT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` decimal(30,15) DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_EXT_FLT_ID`),
  KEY `KREW_DOC_HDR_EXT_FLT_TI1` (`KEY_CD`,`VAL`),
  KEY `KREW_DOC_HDR_EXT_FLT_TI2` (`DOC_HDR_ID`),
  KEY `KREW_DOC_HDR_EXT_FLT_TI3` (`VAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_hdr_ext_flt_t`
--

LOCK TABLES `krew_doc_hdr_ext_flt_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_hdr_ext_flt_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_hdr_ext_flt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_hdr_ext_long_t`
--

DROP TABLE IF EXISTS `krew_doc_hdr_ext_long_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_hdr_ext_long_t` (
  `DOC_HDR_EXT_LONG_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` decimal(22,0) DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_EXT_LONG_ID`),
  KEY `KREW_DOC_HDR_EXT_LONG_TI1` (`KEY_CD`,`VAL`),
  KEY `KREW_DOC_HDR_EXT_LONG_TI2` (`DOC_HDR_ID`),
  KEY `KREW_DOC_HDR_EXT_LONG_TI3` (`VAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_hdr_ext_long_t`
--

LOCK TABLES `krew_doc_hdr_ext_long_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_hdr_ext_long_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_hdr_ext_long_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_hdr_ext_t`
--

DROP TABLE IF EXISTS `krew_doc_hdr_ext_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_hdr_ext_t` (
  `DOC_HDR_EXT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_EXT_ID`),
  KEY `KREW_DOC_HDR_EXT_TI1` (`KEY_CD`,`VAL`(255)),
  KEY `KREW_DOC_HDR_EXT_TI2` (`DOC_HDR_ID`),
  KEY `KREW_DOC_HDR_EXT_TI3` (`VAL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_hdr_ext_t`
--

LOCK TABLES `krew_doc_hdr_ext_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_hdr_ext_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_hdr_ext_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_hdr_s`
--

DROP TABLE IF EXISTS `krew_doc_hdr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_hdr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3014 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_hdr_s`
--

LOCK TABLES `krew_doc_hdr_s` WRITE;
/*!40000 ALTER TABLE `krew_doc_hdr_s` DISABLE KEYS */;
INSERT INTO `krew_doc_hdr_s` VALUES (3010),(3011),(3012),(3013);
/*!40000 ALTER TABLE `krew_doc_hdr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_hdr_t`
--

DROP TABLE IF EXISTS `krew_doc_hdr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_hdr_t` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_STAT_CD` char(1) COLLATE utf8_bin NOT NULL,
  `RTE_LVL` decimal(8,0) NOT NULL,
  `STAT_MDFN_DT` datetime NOT NULL,
  `CRTE_DT` datetime NOT NULL,
  `APRV_DT` datetime DEFAULT NULL,
  `FNL_DT` datetime DEFAULT NULL,
  `RTE_STAT_MDFN_DT` datetime DEFAULT NULL,
  `TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APP_DOC_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOC_VER_NBR` decimal(8,0) NOT NULL,
  `INITR_PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `RTE_PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DTYPE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `APP_DOC_STAT` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `APP_DOC_STAT_MDFN_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_ID`),
  UNIQUE KEY `KREW_DOC_HDR_TC0` (`OBJ_ID`),
  KEY `KREW_DOC_HDR_T10` (`APP_DOC_STAT`),
  KEY `KREW_DOC_HDR_T12` (`APP_DOC_STAT_MDFN_DT`),
  KEY `KREW_DOC_HDR_TI1` (`DOC_TYP_ID`),
  KEY `KREW_DOC_HDR_TI2` (`INITR_PRNCPL_ID`),
  KEY `KREW_DOC_HDR_TI3` (`DOC_HDR_STAT_CD`),
  KEY `KREW_DOC_HDR_TI4` (`TTL`),
  KEY `KREW_DOC_HDR_TI5` (`CRTE_DT`),
  KEY `KREW_DOC_HDR_TI6` (`RTE_STAT_MDFN_DT`),
  KEY `KREW_DOC_HDR_TI7` (`APRV_DT`),
  KEY `KREW_DOC_HDR_TI8` (`FNL_DT`),
  KEY `KREW_DOC_HDR_TI9` (`APP_DOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_hdr_t`
--

LOCK TABLES `krew_doc_hdr_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_hdr_t` DISABLE KEYS */;
INSERT INTO `krew_doc_hdr_t` VALUES ('3013','3012','I',0,'2013-07-22 01:13:28','2013-07-22 01:13:28',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'39a58042-a13e-496e-beca-94a9e9d6ef91',NULL,NULL);
/*!40000 ALTER TABLE `krew_doc_hdr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_lnk_s`
--

DROP TABLE IF EXISTS `krew_doc_lnk_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_lnk_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_lnk_s`
--

LOCK TABLES `krew_doc_lnk_s` WRITE;
/*!40000 ALTER TABLE `krew_doc_lnk_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_lnk_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_lnk_t`
--

DROP TABLE IF EXISTS `krew_doc_lnk_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_lnk_t` (
  `DOC_LNK_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ORGN_DOC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DEST_DOC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`DOC_LNK_ID`),
  KEY `KREW_DOC_LNK_TI1` (`ORGN_DOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_lnk_t`
--

LOCK TABLES `krew_doc_lnk_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_lnk_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_lnk_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_nte_s`
--

DROP TABLE IF EXISTS `krew_doc_nte_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_nte_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_nte_s`
--

LOCK TABLES `krew_doc_nte_s` WRITE;
/*!40000 ALTER TABLE `krew_doc_nte_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_nte_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_nte_t`
--

DROP TABLE IF EXISTS `krew_doc_nte_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_nte_t` (
  `DOC_NTE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `AUTH_PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `CRT_DT` datetime NOT NULL,
  `TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`DOC_NTE_ID`),
  KEY `KREW_DOC_NTE_TI1` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_nte_t`
--

LOCK TABLES `krew_doc_nte_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_nte_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_nte_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_typ_app_doc_stat_t`
--

DROP TABLE IF EXISTS `krew_doc_typ_app_doc_stat_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_typ_app_doc_stat_t` (
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_STAT_NM` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `CAT_NM` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SEQ_NO` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`DOC_TYP_ID`,`DOC_STAT_NM`),
  UNIQUE KEY `KREW_DOC_TYP_APP_DOC_STAT_TC0` (`OBJ_ID`),
  KEY `KREW_DOC_TYP_APP_DOC_STAT_T1` (`DOC_TYP_ID`),
  KEY `KREW_DOC_TYP_APP_DOC_STAT_T2` (`DOC_TYP_ID`,`CAT_NM`),
  CONSTRAINT `KREW_DOC_TYP_APP_DOC_STAT_FK1` FOREIGN KEY (`DOC_TYP_ID`, `CAT_NM`) REFERENCES `krew_doc_typ_app_stat_cat_t` (`DOC_TYP_ID`, `CAT_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_typ_app_doc_stat_t`
--

LOCK TABLES `krew_doc_typ_app_doc_stat_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_typ_app_doc_stat_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_typ_app_doc_stat_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_typ_app_stat_cat_t`
--

DROP TABLE IF EXISTS `krew_doc_typ_app_stat_cat_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_typ_app_stat_cat_t` (
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CAT_NM` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`DOC_TYP_ID`,`CAT_NM`),
  UNIQUE KEY `KREW_DOC_TYP_APP_STAT_CAT_TC1` (`OBJ_ID`),
  CONSTRAINT `KREW_DOC_TYP_APP_STAT_CAT_FK1` FOREIGN KEY (`DOC_TYP_ID`) REFERENCES `krew_doc_typ_t` (`DOC_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_typ_app_stat_cat_t`
--

LOCK TABLES `krew_doc_typ_app_stat_cat_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_typ_app_stat_cat_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_typ_app_stat_cat_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_typ_attr_s`
--

DROP TABLE IF EXISTS `krew_doc_typ_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_typ_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2010 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_typ_attr_s`
--

LOCK TABLES `krew_doc_typ_attr_s` WRITE;
/*!40000 ALTER TABLE `krew_doc_typ_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_doc_typ_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_typ_attr_t`
--

DROP TABLE IF EXISTS `krew_doc_typ_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_typ_attr_t` (
  `DOC_TYP_ATTRIB_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ORD_INDX` decimal(4,0) DEFAULT '0',
  PRIMARY KEY (`DOC_TYP_ATTRIB_ID`),
  KEY `KREW_DOC_TYP_ATTR_TI1` (`DOC_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_typ_attr_t`
--

LOCK TABLES `krew_doc_typ_attr_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_typ_attr_t` DISABLE KEYS */;
INSERT INTO `krew_doc_typ_attr_t` VALUES ('2000','2023','1003',1),('2001','2023','1006',2),('2002','2023','1004',3),('2003','2023','1007',4),('2004','2023','1005',5),('2005','2023','1008',6),('2006','2023','1009',7),('2007','2024','1003',1),('2009','3006','1014',1);
/*!40000 ALTER TABLE `krew_doc_typ_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_typ_plcy_reln_t`
--

DROP TABLE IF EXISTS `krew_doc_typ_plcy_reln_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_typ_plcy_reln_t` (
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_PLCY_NM` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PLCY_NM` decimal(1,0) NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `PLCY_VAL` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_TYP_ID`,`DOC_PLCY_NM`),
  UNIQUE KEY `KREW_DOC_TYP_PLCY_RELN_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_typ_plcy_reln_t`
--

LOCK TABLES `krew_doc_typ_plcy_reln_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_typ_plcy_reln_t` DISABLE KEYS */;
INSERT INTO `krew_doc_typ_plcy_reln_t` VALUES ('2024','DEFAULT_APPROVE',1,1,'61BA2DCF3BE658EEE0404F8189D80CAE',NULL),('2024','LOOK_FUTURE',1,1,'61BA2DCF3BE758EEE0404F8189D80CAE',NULL),('2680','DEFAULT_APPROVE',1,2,'61BA2DCF3BE858EEE0404F8189D80CAE',NULL),('2680','LOOK_FUTURE',1,2,'61BA2DCF3BE958EEE0404F8189D80CAE',NULL);
/*!40000 ALTER TABLE `krew_doc_typ_plcy_reln_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_typ_proc_t`
--

DROP TABLE IF EXISTS `krew_doc_typ_proc_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_typ_proc_t` (
  `DOC_TYP_PROC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `INIT_RTE_NODE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `INIT_IND` decimal(1,0) NOT NULL DEFAULT '0',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`DOC_TYP_PROC_ID`),
  KEY `KREW_DOC_TYP_PROC_TI1` (`DOC_TYP_ID`),
  KEY `KREW_DOC_TYP_PROC_TI2` (`INIT_RTE_NODE_ID`),
  KEY `KREW_DOC_TYP_PROC_TI3` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_typ_proc_t`
--

LOCK TABLES `krew_doc_typ_proc_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_typ_proc_t` DISABLE KEYS */;
INSERT INTO `krew_doc_typ_proc_t` VALUES ('2005','2011','2004','PRIMARY',1,2),('2007','2012','2006','PRIMARY',1,2),('2040','2023','2039','PRIMARY',1,1),('2044','2024','2041','PRIMARY',1,1),('2060','2030','2059','PRIMARY',1,1),('2062','2031','2061','PRIMARY',1,1),('2064','2032','2063','PRIMARY',1,1),('2066','2033','2065','PRIMARY',1,1),('2068','2034','2067','PRIMARY',1,1),('2345','2282','2344','PRIMARY',1,1),('2582','2440','2580','PRIMARY',1,1),('2841','2680','2840','PRIMARY',1,2),('2851','2683','2846','PRIMARY',1,1),('2894','2704','2892','PRIMARY',1,4),('2897','2707','2895','PRIMARY',1,1),('2900','2995','2898','PRIMARY',1,1),('2903','2996','2901','PRIMARY',1,1),('2907','2997','2904','PRIMARY',1,1),('2909','2998','2908','PRIMARY',1,1),('2911','2999','2910','PRIMARY',1,1),('2916','3006','2914','PRIMARY',1,1),('2918','3007','2917','PRIMARY',1,1),('2920','3008','2919','PRIMARY',1,1),('2922','3009','2921','PRIMARY',1,1);
/*!40000 ALTER TABLE `krew_doc_typ_proc_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_doc_typ_t`
--

DROP TABLE IF EXISTS `krew_doc_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_doc_typ_t` (
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PARNT_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_VER_NBR` decimal(10,0) DEFAULT '0',
  `ACTV_IND` decimal(1,0) DEFAULT NULL,
  `CUR_IND` decimal(1,0) DEFAULT NULL,
  `LBL` varchar(128) COLLATE utf8_bin NOT NULL,
  `PREV_DOC_TYP_VER_NBR` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_DESC` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDLR_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `POST_PRCSR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JNDI_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BLNKT_APPR_PLCY` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ADV_DOC_SRCH_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RTE_VER_NBR` varchar(2) COLLATE utf8_bin DEFAULT '1',
  `NOTIFY_ADDR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APPL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_XSL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEC_XML` longtext COLLATE utf8_bin,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `BLNKT_APPR_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RPT_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `HELP_DEF_URL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `DOC_SEARCH_HELP_URL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `AUTHORIZER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_TYP_ID`),
  UNIQUE KEY `KREW_DOC_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KREW_DOC_TYP_TI1` (`DOC_TYP_NM`,`DOC_TYP_VER_NBR`),
  KEY `KREW_DOC_TYP_TI2` (`PARNT_ID`),
  KEY `KREW_DOC_TYP_TI3` (`DOC_TYP_ID`,`PARNT_ID`),
  KEY `KREW_DOC_TYP_TI4` (`PREV_DOC_TYP_VER_NBR`),
  KEY `KREW_DOC_TYP_TI5` (`CUR_IND`),
  KEY `KREW_DOC_TYP_TI6` (`DOC_TYP_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_doc_typ_t`
--

LOCK TABLES `krew_doc_typ_t` WRITE;
/*!40000 ALTER TABLE `krew_doc_typ_t` DISABLE KEYS */;
INSERT INTO `krew_doc_typ_t` VALUES ('2011','2681','DocumentTypeDocument',0,1,1,'Workflow Maintenance Document Type Document',NULL,'Workflow Maintenance Document Type Document','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fdocumenttype.htm','6166CBA1BA5D644DE0404F8189D86C09',NULL,NULL,NULL),('2012','2681','RoutingRuleDocument',0,1,1,'Rule Maintenance Document Type Document',NULL,'Rule Maintenance Document Type Document','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA5E644DE0404F8189D86C09',NULL,NULL,NULL),('2023',NULL,'KualiNotification',0,1,1,'Notification',NULL,'This is the re-usable notification document type that will be used for delivering all notifications with KEW.','${ken.url}/DetailView.form','org.kuali.rice.ken.postprocessor.kew.NotificationPostProcessor',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,0,'1',NULL,'2000',NULL,'6166CBA1BA69644DE0404F8189D86C09',NULL,NULL,NULL),('2024',NULL,'SendNotificationRequest',0,1,1,'Send Notification Request',NULL,'Create a New Notification Request','${ken.url}/AdministerNotificationRequest.form','org.kuali.rice.ken.postprocessor.kew.NotificationSenderFormPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA6A644DE0404F8189D86C09',NULL,NULL,NULL),('2030','2681','FiscalOfficerMaintenanceDocument',0,1,1,'Travel Fiscal Officer',NULL,'Create a New Travel Fiscal Officer','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA70644DE0404F8189D86C09',NULL,NULL,NULL),('2031','2681','NamespaceMaintenanceDocument',0,1,1,'Namespace',NULL,'Create/edit parameter namespaces','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fnamespace.htm','6166CBA1BA71644DE0404F8189D86C09',NULL,NULL,NULL),('2032','2681','ParameterTypeMaintenanceDocument',0,1,1,'Parameter Type Maintenance Document',NULL,'Create/edit a parameter type','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fparametertype.htm','6166CBA1BA72644DE0404F8189D86C09',NULL,NULL,NULL),('2033','2681','ParameterDetailTypeMaintenanceDocument',0,1,1,'Parameter Detail Type Maintenance Document',NULL,'Create/edit a parameter detail type','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fparametercomponent.htm','6166CBA1BA73644DE0404F8189D86C09',NULL,NULL,NULL),('2034','2681','ParameterMaintenanceDocument',0,1,1,'Parameter Maintenance Document',NULL,'Create/edit a parameter','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fparameter.htm','6166CBA1BA74644DE0404F8189D86C09',NULL,NULL,NULL),('2217',NULL,'eDoc.Example1.ParentDoctype',0,1,1,'eDoc.Example1 Parent Document',NULL,'eDoc.Example1 Parent Doctype','${workflow.url}/EDocLite','org.kuali.rice.edl.framework.workflow.EDocLitePostProcessor',NULL,'NONE',NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,'2200',NULL,'6166CBA1BA7B644DE0404F8189D86C09',NULL,NULL,NULL),('2282',NULL,'SampleThinClientDocument',0,1,1,'SampleThinClientDocument',NULL,'SampleThinClientDocument','none','org.kuali.rice.kew.postprocessor.DefaultPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA7D644DE0404F8189D86C09',NULL,NULL,NULL),('2440','2217','eDoc.Example1Doctype',0,1,1,'eDoc.Example1 Request DocumentType',NULL,'eDoc.Example1 Request DocumentType','${workflow.url}/EDocLite','org.kuali.rice.edl.framework.workflow.EDocLitePostProcessor',NULL,'NONE',NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,'2200',NULL,'6166CBA1BA80644DE0404F8189D86C09',NULL,NULL,NULL),('2680',NULL,'KualiDocument',0,1,1,'KualiDocument',NULL,'KualiDocument',NULL,'org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'6166CBA1BA81644DE0404F8189D86C09',NULL,NULL,NULL),('2681','2680','RiceDocument',0,1,1,'Rice Document',NULL,'Parent Document Type for all Rice Documents',NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,'6166CBA1BA82644DE0404F8189D86C09',NULL,NULL,NULL),('2683','2681','TravelRequest',0,1,1,'Travel Request',NULL,'Create a New Travel Request','${application.url}/travelDocument2.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA84644DE0404F8189D86C09',NULL,NULL,NULL),('2699','2681','RoutingRuleDelegationMaintenanceDocument',0,1,1,'Routing Rule Delegation',NULL,'Routing Rule Delegation','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'A6DC8753-AF90-7A01-0EF7-E6D446529668',NULL,NULL,NULL),('2704','2681','RecipeParentMaintenanceDocument',0,1,1,'Recipe Maintenance Document Parent',NULL,'Parent Document for Recipe Maintenance Documents','${application.url}/kr/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,'RECIPE',NULL,NULL,0,'1',NULL,'1',NULL,'327B8EEB-BC71-4701-A9E8-B4FC878FFCA6',NULL,NULL,NULL),('2705','2704','RecipeCategoryMaintenanceDocument',0,1,1,'Recipe Category Maintenance',NULL,'Create or Update a Recipe Category','${application.url}/kr/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,'RECIPE',NULL,NULL,0,'1',NULL,'1',NULL,'E9CB1AAD-0015-16D5-9149-EC2A4AEDE932',NULL,NULL,NULL),('2706','2704','RecipeIngredientMaintenanceDocument',0,1,1,'Recipe Ingredient Maintenance',NULL,'Create or Update a Recipe Ingredient','${application.url}/kr/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,'RECIPE',NULL,NULL,0,'1',NULL,'1',NULL,'41800805-9154-D43E-785F-3E76255F7F97',NULL,NULL,NULL),('2707','2704','RecipeMaintenanceDocument',0,1,1,'Recipe Maintenance',NULL,'Create or Update a Recipe','${application.url}/kr/maintenance.do?methodToCall=docHandler','edu.sampleu.recipe.kew.RecipesPostProcessor',NULL,NULL,NULL,'2',NULL,'RECIPE',NULL,NULL,0,'1',NULL,'1',NULL,'C1CED233-6389-D07B-8ADD-B8043E50B599',NULL,NULL,NULL),('2708','2681','CampusMaintenanceDocument',0,1,1,'CampusMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fcampus.htm','616D94CA-D08D-D036-E77D-4B53DB34CD95',NULL,NULL,NULL),('2709','2681','CampusTypeMaintenanceDocument',0,1,1,'CampusTypeMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fcampustype.htm','DE0B8588-E459-C07A-87B8-6ACD693AE70C',NULL,NULL,NULL),('2710','2681','CountryMaintenanceDocument',0,1,1,'CountryMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fcountry.htm','82EDB593-97BA-428E-C6E7-A7F3031CFAEB',NULL,NULL,NULL),('2711','2681','CountyMaintenanceDocument',0,1,1,'CountyMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fcounty.htm','C972E260-5552-BB63-72E6-A514301B0326',NULL,NULL,NULL),('2712','2681','PostalCodeMaintenanceDocument',0,1,1,'PostalCodeMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fpostalcode.htm','B79D1104-BC48-1597-AFBE-773EED31A110',NULL,NULL,NULL),('2713','2681','StateMaintenanceDocument',0,1,1,'StateMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fstate.htm','EF2378F6-E770-D7BF-B7F1-C18881E3AFF0',NULL,NULL,NULL),('2994','2681','IdentityManagementDocument',0,1,1,'Identity Management Document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'944596CD-A7FC-0DEE-EDE1-52A52BED85CC',NULL,NULL,NULL),('2995','2994','IdentityManagementRoleDocument',0,1,1,'Role',NULL,NULL,'${kim.url}/identityManagementRoleDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Frole.htm','FEA8D9DD-0592-0525-B2BD-2F4BA811CF30',NULL,NULL,NULL),('2996','2994','IdentityManagementGroupDocument',0,1,1,'Group',NULL,NULL,'${kim.url}/identityManagementGroupDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fgroup.htm','D9636763-7749-8F3F-4570-21181E977AE3',NULL,NULL,NULL),('2997','2994','IdentityManagementPersonDocument',0,1,1,'Person',NULL,NULL,'${kim.url}/identityManagementPersonDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fperson.htm','14C95FE4-1497-82C6-CBBD-BF16AD81B845',NULL,NULL,NULL),('2998','2994','IdentityManagementReviewResponsibilityMaintenanceDocument',0,1,1,'Review Responsibility',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fresponsibility.htm','66413887-3C82-B12D-9563-0A893E8D1910',NULL,NULL,NULL),('2999','2994','IdentityManagementGenericPermissionMaintenanceDocument',0,1,1,'Permission',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fpermission.htm','A3AE4787-018E-1F17-6EB6-F2F0F366774F',NULL,NULL,NULL),('3000','2681','AgendaEditorMaintenanceDocument',0,1,1,'KRMS Agenda Editor Maintenance Document',NULL,'Create a KRMS Agenda','${kr.krad.url}/krmsAgendaEditor?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'ebd70731-4d33-4c0b-a958-2b9ca047ae07',NULL,NULL,NULL),('3001','2681','AgendaMaintenanceDocument',0,1,1,'Agenda Maintenance Document',NULL,'Create a New Agenda','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'3198b708-6e29-4b19-bf35-51473cf8a3d1',NULL,NULL,NULL),('3002','2681','PeopleFlowMaintenanceDocument',0,1,1,'PeopleFlowMaintenanceDocument',NULL,NULL,'${kr.krad.url}/peopleFlowMaintenance?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2c0a1333-f60b-47c4-a9b0-76f32f1ed97d',NULL,NULL,NULL),('3003','2681','ContextMaintenanceDocument',0,1,1,'KRMS Context Maintenance Document',NULL,'Create a KRMS Context','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'87413487-8306-4130-b2df-a5d0e42243f9',NULL,NULL,NULL),('3004','2681','TermMaintenanceDocument',0,1,1,'KRMS Term Maintenance Document',NULL,'Create a KRMS Term','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'bc83f80b-85c4-40fd-998c-ef53fdd97e3f',NULL,NULL,NULL),('3005','2681','TermSpecificationMaintenanceDocument',0,1,1,'KRMS Term Specification Maintenance Document',NULL,'Create a KRMS Term Specification','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'57e7ee1d-e44a-4154-9ba4-ee562c434c98',NULL,NULL,NULL),('3006','2681','TravelAccountMaintenanceDocument',0,1,1,'Travel Account Maintenance Document',NULL,'Create a New Travel Account Maintenance Document','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'0b89a795-8079-460a-b456-39c5c477938b',NULL,NULL,NULL),('3007','2681','ComponentMaintenanceDocument',0,1,1,'Component Maintenance Document',NULL,'Create/edit a component','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fparametertype.htm','e9e0086b-30ce-4a9b-a2d6-564772076a1e',NULL,NULL,NULL),('3008','2681','TravelAuthorization',0,1,1,'Travel Authorization Document',NULL,'Create a New Travel Authorization Document','${application.url}/kr-krad/approval?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'b9110d38-8fe0-4123-a65a-5df2336795fa',NULL,NULL,NULL),('3009','2681','FiscalOfficerInfoMaintenanceDocument',0,1,1,'Fiscal Officer Info Maintenance Document',NULL,'Create a New Fiscal Officer Maintenance Document','${application.url}/krad/maintenance?methodToCall=docHandler&dataObjectClassName=edu.sampleu.travel.dto.FiscalOfficerInfo','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'a4ecd35b-f35a-40ac-a9e1-ed47201281ec',NULL,NULL,NULL),('3010','2681','AuthorDocumentType',0,1,1,'Author',NULL,'',NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'','4f455f49-5b34-4336-b827-8d365ea5de7b','',NULL,NULL),('3011','2681','BookDocumentType',0,1,1,'Book',NULL,'',NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'','2371d310-afb1-433c-b0ff-7639013e159e','',NULL,NULL),('3012','2681','BookOrderDocumentType',0,1,1,'Book Order',NULL,'',NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'','bbed4071-3b40-47e5-868a-0ee2ca6deb20','',NULL,NULL);
/*!40000 ALTER TABLE `krew_doc_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_edl_assctn_t`
--

DROP TABLE IF EXISTS `krew_edl_assctn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_edl_assctn_t` (
  `EDOCLT_ASSOC_ID` decimal(19,0) NOT NULL DEFAULT '0',
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `EDL_DEF_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `STYLE_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`EDOCLT_ASSOC_ID`),
  UNIQUE KEY `KREW_EDL_ASSCTN_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_edl_assctn_t`
--

LOCK TABLES `krew_edl_assctn_t` WRITE;
/*!40000 ALTER TABLE `krew_edl_assctn_t` DISABLE KEYS */;
INSERT INTO `krew_edl_assctn_t` VALUES (2010,'eDoc.Example1Doctype','eDoc.Example1.Form','eDoc.Example1.Style',1,1,'6166CBA1BC0E644DE0404F8189D86C09');
/*!40000 ALTER TABLE `krew_edl_assctn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_edl_def_t`
--

DROP TABLE IF EXISTS `krew_edl_def_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_edl_def_t` (
  `EDOCLT_DEF_ID` decimal(19,0) NOT NULL DEFAULT '0',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `XML` longtext COLLATE utf8_bin NOT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`EDOCLT_DEF_ID`),
  UNIQUE KEY `KREW_EDL_DEF_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_edl_def_t`
--

LOCK TABLES `krew_edl_def_t` WRITE;
/*!40000 ALTER TABLE `krew_edl_def_t` DISABLE KEYS */;
INSERT INTO `krew_edl_def_t` VALUES (2008,'eDoc.Example1.Form','<edl name=\"eDoc.Example1.Form\" title=\"Example 1\">\n      <security/>\n      <createInstructions>** Questions with an asterisk are required.</createInstructions>\n      <instructions>** Questions with an asterisk are required.</instructions>\n      <validations/>\n      <attributes/>\n      <fieldDef name=\"userName\" title=\"Full Name\">\n        <display>\n          <type>text</type>\n          <meta>\n            <name>size</name>\n            <value>40</value>\n          </meta>\n        </display>\n        <validation required=\"true\">\n          <message>Please enter your full name</message>\n        </validation>\n      </fieldDef>\n      <fieldDef name=\"rqstDate\" title=\"Requested Date of Implementation:\">\n        <display>\n          <type>text</type>\n        </display>\n        <validation required=\"true\">\n          <regex>^[0-1]?[0-9](/|-)[0-3]?[0-9](/|-)[1-2][0-9][0-9][0-9]$</regex>\n          <message>Enter a valid date in the format mm/dd/yyyy.</message>\n        </validation>\n      </fieldDef>\n      <fieldDef name=\"requestType\" title=\"Request Type:\">\n        <display>\n          <type>radio</type>\n          <values title=\"New\">New</values>\n          <values title=\"Modification\">Modification</values>\n        </display>\n        <validation required=\"true\">\n          <message>Please select a request type.</message>\n        </validation>\n      </fieldDef>\n      <fieldDef attributeName=\"EDL.Campus.Example\" name=\"campus\" title=\"Campus:\">\n        <display>\n          <type>select</type>\n          <values title=\"IUB\">IUB</values>\n          <values title=\"IUPUI\">IUPUI</values>\n        </display>\n        <validation required=\"true\">\n          <message>Please select a campus.</message>\n        </validation>\n      </fieldDef>\n      <fieldDef name=\"description\" title=\"Description of Request:\">\n        <display>\n          <type>textarea</type>\n          <meta>\n            <name>rows</name>\n            <value>5</value>\n          </meta>\n          <meta>\n            <name>cols</name>\n            <value>60</value>\n          </meta>\n          <meta>\n            <name>wrap</name>\n            <value>hard</value>\n          </meta>\n        </display>\n        <validation required=\"false\"/>\n      </fieldDef>\n      <fieldDef name=\"fundedBy\" title=\"My research/sponsored program work is funded by NIH or NSF.\">\n        <display>\n          <type>checkbox</type>\n          <values title=\"My research/sponsored program work is funded by NIH or NSF.\">nihnsf</values>\n        </display>\n      </fieldDef>\n      <fieldDef name=\"researchHumans\" title=\"My research/sponsored program work involves human subjects.\">\n        <display>\n          <type>checkbox</type>\n          <values title=\"My research/sponsored program work involves human subjects.\">humans</values>\n        </display>\n      </fieldDef>\n    </edl>\n',1,1,'6166CBA1BC0B644DE0404F8189D86C09');
/*!40000 ALTER TABLE `krew_edl_def_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_edl_dmp_t`
--

DROP TABLE IF EXISTS `krew_edl_dmp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_edl_dmp_t` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_STAT_CD` char(1) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_MDFN_DT` datetime NOT NULL,
  `DOC_HDR_CRTE_DT` datetime NOT NULL,
  `DOC_HDR_TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_INITR_PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `CRNT_NODE_NM` varchar(30) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`DOC_HDR_ID`),
  KEY `KREW_EDL_DMP_TI1` (`DOC_TYP_NM`,`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_edl_dmp_t`
--

LOCK TABLES `krew_edl_dmp_t` WRITE;
/*!40000 ALTER TABLE `krew_edl_dmp_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_edl_dmp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_edl_fld_dmp_s`
--

DROP TABLE IF EXISTS `krew_edl_fld_dmp_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_edl_fld_dmp_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_edl_fld_dmp_s`
--

LOCK TABLES `krew_edl_fld_dmp_s` WRITE;
/*!40000 ALTER TABLE `krew_edl_fld_dmp_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_edl_fld_dmp_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_edl_fld_dmp_t`
--

DROP TABLE IF EXISTS `krew_edl_fld_dmp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_edl_fld_dmp_t` (
  `EDL_FIELD_DMP_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `FLD_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `FLD_VAL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`EDL_FIELD_DMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_edl_fld_dmp_t`
--

LOCK TABLES `krew_edl_fld_dmp_t` WRITE;
/*!40000 ALTER TABLE `krew_edl_fld_dmp_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_edl_fld_dmp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_edl_s`
--

DROP TABLE IF EXISTS `krew_edl_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_edl_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2022 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_edl_s`
--

LOCK TABLES `krew_edl_s` WRITE;
/*!40000 ALTER TABLE `krew_edl_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_edl_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_init_rte_node_instn_t`
--

DROP TABLE IF EXISTS `krew_init_rte_node_instn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_init_rte_node_instn_t` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`DOC_HDR_ID`,`RTE_NODE_INSTN_ID`),
  KEY `KREW_INIT_RTE_NODE_INSTN_TI1` (`DOC_HDR_ID`),
  KEY `KREW_INIT_RTE_NODE_INSTN_TI2` (`RTE_NODE_INSTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_init_rte_node_instn_t`
--

LOCK TABLES `krew_init_rte_node_instn_t` WRITE;
/*!40000 ALTER TABLE `krew_init_rte_node_instn_t` DISABLE KEYS */;
INSERT INTO `krew_init_rte_node_instn_t` VALUES ('3013','2924');
/*!40000 ALTER TABLE `krew_init_rte_node_instn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_out_box_itm_s`
--

DROP TABLE IF EXISTS `krew_out_box_itm_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_out_box_itm_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10043 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_out_box_itm_s`
--

LOCK TABLES `krew_out_box_itm_s` WRITE;
/*!40000 ALTER TABLE `krew_out_box_itm_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_out_box_itm_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_out_box_itm_t`
--

DROP TABLE IF EXISTS `krew_out_box_itm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_out_box_itm_t` (
  `ACTN_ITM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ASND_DT` datetime NOT NULL,
  `RQST_CD` char(1) COLLATE utf8_bin NOT NULL,
  `ACTN_RQST_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ROLE_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_LBL` varchar(128) COLLATE utf8_bin NOT NULL,
  `DOC_HDLR_URL` varchar(255) COLLATE utf8_bin NOT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RQST_LBL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTN_ITM_ID`),
  KEY `KREW_OUT_BOX_ITM_TI1` (`PRNCPL_ID`),
  KEY `KREW_OUT_BOX_ITM_TI2` (`DOC_HDR_ID`),
  KEY `KREW_OUT_BOX_ITM_TI3` (`ACTN_RQST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_out_box_itm_t`
--

LOCK TABLES `krew_out_box_itm_t` WRITE;
/*!40000 ALTER TABLE `krew_out_box_itm_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_out_box_itm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_ppl_flw_attr_s`
--

DROP TABLE IF EXISTS `krew_ppl_flw_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_ppl_flw_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_ppl_flw_attr_s`
--

LOCK TABLES `krew_ppl_flw_attr_s` WRITE;
/*!40000 ALTER TABLE `krew_ppl_flw_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_ppl_flw_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_ppl_flw_attr_t`
--

DROP TABLE IF EXISTS `krew_ppl_flw_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_ppl_flw_attr_t` (
  `PPL_FLW_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PPL_FLW_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PPL_FLW_ATTR_ID`),
  KEY `KREW_PPL_FLW_ATTR_TI1` (`PPL_FLW_ID`),
  KEY `KREW_PPL_FLW_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KREW_PPL_FLW_ATTR_FK1` FOREIGN KEY (`PPL_FLW_ID`) REFERENCES `krew_ppl_flw_t` (`PPL_FLW_ID`),
  CONSTRAINT `KREW_PPL_FLW_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krew_attr_defn_t` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_ppl_flw_attr_t`
--

LOCK TABLES `krew_ppl_flw_attr_t` WRITE;
/*!40000 ALTER TABLE `krew_ppl_flw_attr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_ppl_flw_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_ppl_flw_dlgt_s`
--

DROP TABLE IF EXISTS `krew_ppl_flw_dlgt_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_ppl_flw_dlgt_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_ppl_flw_dlgt_s`
--

LOCK TABLES `krew_ppl_flw_dlgt_s` WRITE;
/*!40000 ALTER TABLE `krew_ppl_flw_dlgt_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_ppl_flw_dlgt_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_ppl_flw_dlgt_t`
--

DROP TABLE IF EXISTS `krew_ppl_flw_dlgt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_ppl_flw_dlgt_t` (
  `PPL_FLW_DLGT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PPL_FLW_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `ACTN_RQST_PLCY_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`PPL_FLW_DLGT_ID`),
  KEY `KREW_PPL_FLW_DLGT_TI1` (`PPL_FLW_MBR_ID`),
  CONSTRAINT `KREW_PPL_FLW_DLGT_FK1` FOREIGN KEY (`PPL_FLW_MBR_ID`) REFERENCES `krew_ppl_flw_mbr_t` (`PPL_FLW_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_ppl_flw_dlgt_t`
--

LOCK TABLES `krew_ppl_flw_dlgt_t` WRITE;
/*!40000 ALTER TABLE `krew_ppl_flw_dlgt_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_ppl_flw_dlgt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_ppl_flw_mbr_s`
--

DROP TABLE IF EXISTS `krew_ppl_flw_mbr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_ppl_flw_mbr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_ppl_flw_mbr_s`
--

LOCK TABLES `krew_ppl_flw_mbr_s` WRITE;
/*!40000 ALTER TABLE `krew_ppl_flw_mbr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_ppl_flw_mbr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_ppl_flw_mbr_t`
--

DROP TABLE IF EXISTS `krew_ppl_flw_mbr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_ppl_flw_mbr_t` (
  `PPL_FLW_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PPL_FLW_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRIO` decimal(8,0) DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `ACTN_RQST_PLCY_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`PPL_FLW_MBR_ID`),
  KEY `KREW_PPL_FLW_MBR_TI1` (`PPL_FLW_ID`),
  KEY `KREW_PPL_FLW_MBR_TI2` (`PPL_FLW_ID`,`PRIO`),
  CONSTRAINT `KREW_PPL_FLW_MBR_FK1` FOREIGN KEY (`PPL_FLW_ID`) REFERENCES `krew_ppl_flw_t` (`PPL_FLW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_ppl_flw_mbr_t`
--

LOCK TABLES `krew_ppl_flw_mbr_t` WRITE;
/*!40000 ALTER TABLE `krew_ppl_flw_mbr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_ppl_flw_mbr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_ppl_flw_s`
--

DROP TABLE IF EXISTS `krew_ppl_flw_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_ppl_flw_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_ppl_flw_s`
--

LOCK TABLES `krew_ppl_flw_s` WRITE;
/*!40000 ALTER TABLE `krew_ppl_flw_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_ppl_flw_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_ppl_flw_t`
--

DROP TABLE IF EXISTS `krew_ppl_flw_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_ppl_flw_t` (
  `PPL_FLW_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PPL_FLW_ID`),
  UNIQUE KEY `KREW_PPL_FLW_TC1` (`NM`,`NMSPC_CD`),
  KEY `KREW_PPL_FLW_FK1` (`TYP_ID`),
  CONSTRAINT `KREW_PPL_FLW_FK1` FOREIGN KEY (`TYP_ID`) REFERENCES `krew_typ_t` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_ppl_flw_t`
--

LOCK TABLES `krew_ppl_flw_t` WRITE;
/*!40000 ALTER TABLE `krew_ppl_flw_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_ppl_flw_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rsp_s`
--

DROP TABLE IF EXISTS `krew_rsp_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rsp_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2065 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rsp_s`
--

LOCK TABLES `krew_rsp_s` WRITE;
/*!40000 ALTER TABLE `krew_rsp_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_rsp_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_brch_proto_t`
--

DROP TABLE IF EXISTS `krew_rte_brch_proto_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_brch_proto_t` (
  `RTE_BRCH_PROTO_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `BRCH_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_BRCH_PROTO_ID`),
  KEY `KREW_RTE_BRCH_PROTO_TI1` (`BRCH_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_brch_proto_t`
--

LOCK TABLES `krew_rte_brch_proto_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_brch_proto_t` DISABLE KEYS */;
INSERT INTO `krew_rte_brch_proto_t` VALUES ('2422','ApprovalBranch',130);
/*!40000 ALTER TABLE `krew_rte_brch_proto_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_brch_st_t`
--

DROP TABLE IF EXISTS `krew_rte_brch_st_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_brch_st_t` (
  `RTE_BRCH_ST_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RTE_BRCH_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_BRCH_ST_ID`),
  KEY `KREW_RTE_BRCH_ST_TI1` (`RTE_BRCH_ID`,`KEY_CD`),
  KEY `KREW_RTE_BRCH_ST_TI2` (`RTE_BRCH_ID`),
  KEY `KREW_RTE_BRCH_ST_TI3` (`KEY_CD`,`VAL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_brch_st_t`
--

LOCK TABLES `krew_rte_brch_st_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_brch_st_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_rte_brch_st_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_brch_t`
--

DROP TABLE IF EXISTS `krew_rte_brch_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_brch_t` (
  `RTE_BRCH_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `PARNT_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `INIT_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SPLT_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `JOIN_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_BRCH_ID`),
  KEY `KREW_RTE_BRCH_TI1` (`NM`),
  KEY `KREW_RTE_BRCH_TI2` (`PARNT_ID`),
  KEY `KREW_RTE_BRCH_TI3` (`INIT_RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_BRCH_TI4` (`SPLT_RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_BRCH_TI5` (`JOIN_RTE_NODE_INSTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_brch_t`
--

LOCK TABLES `krew_rte_brch_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_brch_t` DISABLE KEYS */;
INSERT INTO `krew_rte_brch_t` VALUES ('2923','PRIMARY',NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `krew_rte_brch_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_node_cfg_parm_s`
--

DROP TABLE IF EXISTS `krew_rte_node_cfg_parm_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_node_cfg_parm_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2485 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_node_cfg_parm_s`
--

LOCK TABLES `krew_rte_node_cfg_parm_s` WRITE;
/*!40000 ALTER TABLE `krew_rte_node_cfg_parm_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_rte_node_cfg_parm_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_node_cfg_parm_t`
--

DROP TABLE IF EXISTS `krew_rte_node_cfg_parm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_node_cfg_parm_t` (
  `RTE_NODE_CFG_PARM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RTE_NODE_CFG_PARM_ID`),
  KEY `KREW_RTE_NODE_CFG_PARM_TI1` (`RTE_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_node_cfg_parm_t`
--

LOCK TABLES `krew_rte_node_cfg_parm_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_node_cfg_parm_t` DISABLE KEYS */;
INSERT INTO `krew_rte_node_cfg_parm_t` VALUES ('2012','2004','contentFragment','<start name=\"placeholder\"><activationType>S</activationType></start>'),('2013','2004','activationType','S'),('2014','2004','ruleSelector','Template'),('2015','2006','contentFragment','<start name=\"placeholder\"><activationType>S</activationType></start>'),('2016','2006','activationType','S'),('2017','2006','ruleSelector','Template'),('2118','2039','contentFragment','<start name=\"Adhoc Routing\"><activationType>S</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>true</finalApproval></start>'),('2119','2039','activationType','S'),('2120','2039','mandatoryRoute','false'),('2121','2039','finalApproval','true'),('2122','2039','ruleSelector','Template'),('2123','2041','contentFragment','<start name=\"Initiated\"><activationType>S</activationType></start>'),('2124','2041','activationType','S'),('2125','2041','ruleSelector','Template'),('2126','2042','contentFragment','<requests name=\"ReviewersNode\"><ruleTemplate>ReviewersRouting</ruleTemplate></requests>'),('2127','2042','ruleTemplate','ReviewersRouting'),('2128','2042','ruleSelector','Template'),('2129','2043','contentFragment','<requests name=\"RequestsNode\"><ruleTemplate>NotificationRouting</ruleTemplate></requests>'),('2130','2043','ruleTemplate','NotificationRouting'),('2131','2043','ruleSelector','Template'),('2167','2059','contentFragment','<start name=\"Initiated\"><activationType>P</activationType></start>'),('2168','2059','activationType','P'),('2169','2059','ruleSelector','Template'),('2170','2061','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2171','2061','activationType','P'),('2172','2061','mandatoryRoute','false'),('2173','2061','finalApproval','false'),('2174','2061','ruleSelector','Template'),('2175','2063','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2176','2063','activationType','P'),('2177','2063','mandatoryRoute','false'),('2178','2063','finalApproval','false'),('2179','2063','ruleSelector','Template'),('2180','2065','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2181','2065','activationType','P'),('2182','2065','mandatoryRoute','false'),('2183','2065','finalApproval','false'),('2184','2065','ruleSelector','Template'),('2185','2067','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2186','2067','activationType','P'),('2187','2067','mandatoryRoute','false'),('2188','2067','finalApproval','false'),('2189','2067','ruleSelector','Template'),('2243','2344','contentFragment','<start name=\"AdHoc\"><activationType>P</activationType></start>'),('2244','2344','activationType','P'),('2245','2344','ruleSelector','Template'),('2360','2580','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2361','2580','activationType','P'),('2362','2580','mandatoryRoute','false'),('2363','2580','finalApproval','false'),('2364','2580','ruleSelector','Template'),('2365','2581','contentFragment','<requests name=\"eDoc.Example1.Node1\"><activationType>P</activationType><ruleTemplate>eDoc.Example1.Node1</ruleTemplate><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></requests>'),('2366','2581','activationType','P'),('2367','2581','ruleTemplate','eDoc.Example1.Node1'),('2368','2581','mandatoryRoute','false'),('2369','2581','finalApproval','false'),('2370','2581','ruleSelector','Template'),('2380','2840','contentFragment','<start name=\"PreRoute\"><activationType>S</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2381','2840','activationType','S'),('2382','2840','mandatoryRoute','false'),('2383','2840','finalApproval','false'),('2384','2840','ruleSelector','Template'),('2397','2846','contentFragment','<start name=\"PreRoute\"><activationType>P</activationType></start>'),('2398','2846','activationType','P'),('2399','2846','ruleSelector','Template'),('2400','2847','contentFragment','<requests name=\"DestinationApproval\"><ruleTemplate>TravelRequest-DestinationRouting</ruleTemplate></requests>'),('2401','2847','ruleTemplate','TravelRequest-DestinationRouting'),('2402','2847','ruleSelector','Template'),('2403','2848','contentFragment','<requests name=\"TravelerApproval\"><ruleTemplate>TravelRequest-TravelerRouting</ruleTemplate></requests>'),('2404','2848','ruleTemplate','TravelRequest-TravelerRouting'),('2405','2848','ruleSelector','Template'),('2406','2849','contentFragment','<requests name=\"SupervisorApproval\"><ruleTemplate>TravelRequest-SupervisorRouting</ruleTemplate></requests>'),('2407','2849','ruleTemplate','TravelRequest-SupervisorRouting'),('2408','2849','ruleSelector','Template'),('2409','2850','contentFragment','<requests name=\"AccountApproval\"><ruleTemplate>TravelRequest-AccountRouting</ruleTemplate></requests>'),('2410','2850','ruleTemplate','TravelRequest-AccountRouting'),('2411','2850','ruleSelector','Template'),('2412','2892','contentFragment','<start name=\"Adhoc Routing\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2413','2892','activationType','P'),('2414','2892','mandatoryRoute','false'),('2415','2892','finalApproval','false'),('2416','2892','ruleSelector','Template'),('2417','2893','contentFragment','<requests name=\"Recipe Masters Group Approval\"><activationType>S</activationType><ruleSelector>Named</ruleSelector><ruleName>RecipeMastersGroupApproval</ruleName></requests>'),('2418','2893','activationType','S'),('2419','2893','ruleSelector','Named'),('2420','2893','ruleName','RecipeMastersGroupApproval'),('2421','2895','contentFragment','<start name=\"Adhoc Routing\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2422','2895','activationType','P'),('2423','2895','mandatoryRoute','false'),('2424','2895','finalApproval','false'),('2425','2895','ruleSelector','Template'),('2426','2896','contentFragment','<requests name=\"Chicken Recipe Masters Group Approval\"><activationType>S</activationType><ruleSelector>Named</ruleSelector><ruleName>ChickenRecipeMastersGroupApproval</ruleName></requests>'),('2427','2896','activationType','S'),('2428','2896','ruleSelector','Named'),('2429','2896','ruleName','ChickenRecipeMastersGroupApproval'),('2430','2898','contentFragment','<start name=\"AdHoc\"/>'),('2431','2898','ruleSelector','Template'),('2432','2899','contentFragment','<role name=\"RoleType\"><qualifierResolverClass>org.kuali.rice.kim.impl.type.KimTypeQualifierResolver</qualifierResolverClass><activationType>P</activationType></role>'),('2433','2899','qualifierResolverClass','org.kuali.rice.kim.impl.type.KimTypeQualifierResolver'),('2434','2899','activationType','P'),('2435','2899','ruleSelector','Template'),('2436','2901','contentFragment','<start name=\"AdHoc\"/>'),('2437','2901','ruleSelector','Template'),('2438','2902','contentFragment','<role name=\"GroupType\"><qualifierResolverClass>org.kuali.rice.kim.impl.type.KimTypeQualifierResolver</qualifierResolverClass><activationType>P</activationType></role>'),('2439','2902','qualifierResolverClass','org.kuali.rice.kim.impl.type.KimTypeQualifierResolver'),('2440','2902','activationType','P'),('2441','2902','ruleSelector','Template'),('2442','2904','contentFragment','<start name=\"AdHoc\"/>'),('2443','2904','ruleSelector','Template'),('2444','2905','contentFragment','<role name=\"GroupType\"><qualifierResolverClass>org.kuali.rice.kim.impl.type.KimTypeQualifierResolver</qualifierResolverClass><activationType>P</activationType></role>'),('2445','2905','qualifierResolverClass','org.kuali.rice.kim.impl.type.KimTypeQualifierResolver'),('2446','2905','activationType','P'),('2447','2905','ruleSelector','Template'),('2448','2906','contentFragment','<role name=\"RoleType\"><qualifierResolverClass>org.kuali.rice.kim.impl.type.KimTypeQualifierResolver</qualifierResolverClass><activationType>P</activationType></role>'),('2449','2906','qualifierResolverClass','org.kuali.rice.kim.impl.type.KimTypeQualifierResolver'),('2450','2906','activationType','P'),('2451','2906','ruleSelector','Template'),('2452','2908','contentFragment','<start name=\"AdHoc\"/>'),('2453','2908','ruleSelector','Template'),('2454','2910','contentFragment','<start name=\"AdHoc\"/>'),('2455','2910','ruleSelector','Template'),('2461','2914','contentFragment','<start name=\"Initiated\">\n<activationType>P</activationType>\n<mandatoryRoute>false</mandatoryRoute>\n<finalApproval>false</finalApproval>\n</start>\n'),('2462','2914','activationType','P'),('2463','2914','mandatoryRoute','false'),('2464','2914','finalApproval','false'),('2465','2914','ruleSelector','Template'),('2466','2915','contentFragment','<requests name=\"PeopleFlows\">\n<activationType>R</activationType>\n<rulesEngine executorClass=\"edu.sampleu.travel.workflow.TravelAccountRulesEngineExecutor\"/>\n</requests>\n'),('2467','2915','activationType','R'),('2468','2915','rulesEngine',NULL),('2469','2915','ruleSelector','Template'),('2470','2917','contentFragment','<start name=\"Initiated\">\n<activationType>P</activationType>\n<mandatoryRoute>false</mandatoryRoute>\n<finalApproval>false</finalApproval>\n</start>\n'),('2471','2917','activationType','P'),('2472','2917','mandatoryRoute','false'),('2473','2917','finalApproval','false'),('2474','2917','ruleSelector','Template'),('2475','2919','contentFragment','<start name=\"Initiated\">\n<activationType>P</activationType>\n<mandatoryRoute>false</mandatoryRoute>\n<finalApproval>false</finalApproval>\n</start>\n'),('2476','2919','activationType','P'),('2477','2919','mandatoryRoute','false'),('2478','2919','finalApproval','false'),('2479','2919','ruleSelector','Template'),('2480','2921','contentFragment','<start name=\"Initiated\">\n<activationType>P</activationType>\n<mandatoryRoute>false</mandatoryRoute>\n<finalApproval>false</finalApproval>\n</start>\n'),('2481','2921','activationType','P'),('2482','2921','mandatoryRoute','false'),('2483','2921','finalApproval','false'),('2484','2921','ruleSelector','Template');
/*!40000 ALTER TABLE `krew_rte_node_cfg_parm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_node_instn_lnk_t`
--

DROP TABLE IF EXISTS `krew_rte_node_instn_lnk_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_node_instn_lnk_t` (
  `FROM_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`FROM_RTE_NODE_INSTN_ID`,`TO_RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_NODE_INSTN_LNK_TI1` (`FROM_RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_NODE_INSTN_LNK_TI2` (`TO_RTE_NODE_INSTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_node_instn_lnk_t`
--

LOCK TABLES `krew_rte_node_instn_lnk_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_node_instn_lnk_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_rte_node_instn_lnk_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_node_instn_st_t`
--

DROP TABLE IF EXISTS `krew_rte_node_instn_st_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_node_instn_st_t` (
  `RTE_NODE_INSTN_ST_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_NODE_INSTN_ST_ID`),
  KEY `KREW_RTE_NODE_INSTN_ST_TI1` (`RTE_NODE_INSTN_ID`,`KEY_CD`),
  KEY `KREW_RTE_NODE_INSTN_ST_TI2` (`RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_NODE_INSTN_ST_TI3` (`KEY_CD`,`VAL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_node_instn_st_t`
--

LOCK TABLES `krew_rte_node_instn_st_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_node_instn_st_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_rte_node_instn_st_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_node_instn_t`
--

DROP TABLE IF EXISTS `krew_rte_node_instn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_node_instn_t` (
  `RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `BRCH_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PROC_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL DEFAULT '0',
  `CMPLT_IND` decimal(1,0) NOT NULL DEFAULT '0',
  `INIT_IND` decimal(1,0) NOT NULL DEFAULT '0',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_NODE_INSTN_TI1` (`DOC_HDR_ID`,`ACTV_IND`,`CMPLT_IND`),
  KEY `KREW_RTE_NODE_INSTN_TI2` (`RTE_NODE_ID`),
  KEY `KREW_RTE_NODE_INSTN_TI3` (`BRCH_ID`),
  KEY `KREW_RTE_NODE_INSTN_TI4` (`PROC_RTE_NODE_INSTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_node_instn_t`
--

LOCK TABLES `krew_rte_node_instn_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_node_instn_t` DISABLE KEYS */;
INSERT INTO `krew_rte_node_instn_t` VALUES ('2924','3013','2840','2923',NULL,1,0,1,1);
/*!40000 ALTER TABLE `krew_rte_node_instn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_node_lnk_t`
--

DROP TABLE IF EXISTS `krew_rte_node_lnk_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_node_lnk_t` (
  `FROM_RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`FROM_RTE_NODE_ID`,`TO_RTE_NODE_ID`),
  KEY `KREW_RTE_NODE_LNK_TI1` (`FROM_RTE_NODE_ID`),
  KEY `KREW_RTE_NODE_LNK_TI2` (`TO_RTE_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_node_lnk_t`
--

LOCK TABLES `krew_rte_node_lnk_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_node_lnk_t` DISABLE KEYS */;
INSERT INTO `krew_rte_node_lnk_t` VALUES ('2041','2042'),('2042','2043'),('2580','2581'),('2846','2847'),('2847','2848'),('2848','2849'),('2849','2850'),('2892','2893'),('2895','2896'),('2898','2899'),('2901','2902'),('2904','2905'),('2905','2906'),('2914','2915');
/*!40000 ALTER TABLE `krew_rte_node_lnk_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_node_s`
--

DROP TABLE IF EXISTS `krew_rte_node_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_node_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2925 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_node_s`
--

LOCK TABLES `krew_rte_node_s` WRITE;
/*!40000 ALTER TABLE `krew_rte_node_s` DISABLE KEYS */;
INSERT INTO `krew_rte_node_s` VALUES (2923),(2924);
/*!40000 ALTER TABLE `krew_rte_node_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_node_t`
--

DROP TABLE IF EXISTS `krew_rte_node_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_node_t` (
  `RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `RTE_MTHD_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RTE_MTHD_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `FNL_APRVR_IND` decimal(1,0) DEFAULT NULL,
  `MNDTRY_RTE_IND` decimal(1,0) DEFAULT NULL,
  `ACTVN_TYP` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `BRCH_PROTO_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `CONTENT_FRAGMENT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NEXT_DOC_STAT` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RTE_NODE_ID`),
  KEY `KREW_RTE_NODE_TI1` (`NM`,`DOC_TYP_ID`),
  KEY `KREW_RTE_NODE_TI2` (`DOC_TYP_ID`,`FNL_APRVR_IND`),
  KEY `KREW_RTE_NODE_TI3` (`BRCH_PROTO_ID`),
  KEY `KREW_RTE_NODE_TI4` (`DOC_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_node_t`
--

LOCK TABLES `krew_rte_node_t` WRITE;
/*!40000 ALTER TABLE `krew_rte_node_t` DISABLE KEYS */;
INSERT INTO `krew_rte_node_t` VALUES ('2004','2011','placeholder','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,2,NULL,'1',NULL),('2006','2012','placeholder','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,2,NULL,'1',NULL),('2039','2023','Adhoc Routing','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,1,0,'S',NULL,1,NULL,'1',NULL),('2041','2024','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,'1',NULL),('2042','2024','ReviewersNode','org.kuali.rice.kew.engine.node.RequestsNode','ReviewersRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2043','2024','RequestsNode','org.kuali.rice.kew.engine.node.RequestsNode','NotificationRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2059','2030','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2061','2031','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2063','2032','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2065','2033','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2067','2034','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2344','2282','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2580','2440','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'2201',NULL),('2581','2440','eDoc.Example1.Node1','org.kuali.rice.kew.engine.node.RequestsNode','eDoc.Example1.Node1','FR',0,0,'P',NULL,1,NULL,'2201',NULL),('2840','2680','PreRoute','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,2,NULL,NULL,NULL),('2846','2683','PreRoute','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2847','2683','DestinationApproval','org.kuali.rice.kew.engine.node.RequestsNode','TravelRequest-DestinationRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2848','2683','TravelerApproval','org.kuali.rice.kew.engine.node.RequestsNode','TravelRequest-TravelerRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2849','2683','SupervisorApproval','org.kuali.rice.kew.engine.node.RequestsNode','TravelRequest-SupervisorRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2850','2683','AccountApproval','org.kuali.rice.kew.engine.node.RequestsNode','TravelRequest-AccountRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2892','2704','Adhoc Routing','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,4,NULL,'1',NULL),('2893','2704','Recipe Masters Group Approval','org.kuali.rice.kew.engine.node.RequestsNode',NULL,NULL,0,0,'S',NULL,4,NULL,'1',NULL),('2895','2707','Adhoc Routing','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2896','2707','Chicken Recipe Masters Group Approval','org.kuali.rice.kew.engine.node.RequestsNode',NULL,NULL,0,0,'S',NULL,1,NULL,'1',NULL),('2898','2995','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2899','2995','RoleType','org.kuali.rice.kew.engine.node.RoleNode','org.kuali.rice.kew.role.RoleRouteModule','RM',0,0,'P',NULL,1,NULL,NULL,NULL),('2901','2996','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2902','2996','GroupType','org.kuali.rice.kew.engine.node.RoleNode','org.kuali.rice.kew.role.RoleRouteModule','RM',0,0,'P',NULL,1,NULL,NULL,NULL),('2904','2997','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2905','2997','GroupType','org.kuali.rice.kew.engine.node.RoleNode','org.kuali.rice.kew.role.RoleRouteModule','RM',0,0,'P',NULL,1,NULL,NULL,NULL),('2906','2997','RoleType','org.kuali.rice.kew.engine.node.RoleNode','org.kuali.rice.kew.role.RoleRouteModule','RM',0,0,'P',NULL,1,NULL,NULL,NULL),('2908','2998','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2910','2999','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2914','3006','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2915','3006','PeopleFlows','org.kuali.rice.kew.engine.node.RequestsNode',NULL,'RE',0,0,'R',NULL,1,NULL,'1',NULL),('2917','3007','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2919','3008','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2921','3009','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL);
/*!40000 ALTER TABLE `krew_rte_node_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rte_tmpl_s`
--

DROP TABLE IF EXISTS `krew_rte_tmpl_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rte_tmpl_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1645 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rte_tmpl_s`
--

LOCK TABLES `krew_rte_tmpl_s` WRITE;
/*!40000 ALTER TABLE `krew_rte_tmpl_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_rte_tmpl_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_attr_t`
--

DROP TABLE IF EXISTS `krew_rule_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_attr_t` (
  `RULE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `LBL` varchar(2000) COLLATE utf8_bin NOT NULL,
  `RULE_ATTR_TYP_CD` varchar(2000) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `CLS_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `XML` longtext COLLATE utf8_bin,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `APPL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_ATTR_ID`),
  UNIQUE KEY `KREW_RULE_ATTR_TC0` (`OBJ_ID`),
  UNIQUE KEY `KREW_RULE_ATTR_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_attr_t`
--

LOCK TABLES `krew_rule_attr_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_attr_t` DISABLE KEYS */;
INSERT INTO `krew_rule_attr_t` VALUES ('1000','RuleRoutingAttribute','Rule Routing Attribute','RuleAttribute','Rule Routing Attribute','org.kuali.rice.kew.rule.RuleRoutingAttribute',NULL,3,NULL,'6166CBA1B94F644DE0404F8189D86C09'),('1003','NotificationCustomActionListAttribute','Notification  Action List Attribute','ActionListAttribute','Notification Action List Attribute','org.kuali.rice.ken.kew.NotificationCustomActionListAttribute',NULL,2,NULL,'6166CBA1B952644DE0404F8189D86C09'),('1004','NotificationChannelSearchableAttribute','Notification Channel','SearchableXmlAttribute','The associated channel that this message was sent on.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationChannel\" title=\"Notification Channel\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification/channel/name)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B953644DE0404F8189D86C09'),('1005','NotificationPrioritySearchableAttribute','Notification Priority','SearchableXmlAttribute','The priority of this notification.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationPriority\" title=\"Notification Priority\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification/priority/name)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B954644DE0404F8189D86C09'),('1006','NotificationContentTypeSearchableAttribute','Notification Content Type','SearchableXmlAttribute','The content type of this notification.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationContentType\" title=\"Notification Content Type\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification/contentType/name)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B955644DE0404F8189D86C09'),('1007','NotificationProducerSearchableAttribute','Notification Producer','SearchableXmlAttribute','The producer of this notification.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationProducer\" title=\"Notification Producer\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification/producer/name)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B956644DE0404F8189D86C09'),('1008','NotificationRecipientsSearchableAttribute','Notification Recipient','SearchableXmlAttribute','Those who are receiving this notification.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationRecipients\" title=\"Notification Recipients\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification//recipients)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B957644DE0404F8189D86C09'),('1009','NotificationSendersSearchableAttribute','Notification Senders','SearchableXmlAttribute','Those who this notification is being sent on behalf of.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationSenders\" title=\"Notification Senders\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification//senders)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B958644DE0404F8189D86C09'),('1010','ChannelReviewerRoleAttribute','Channel Reviewer Role Attribute','RuleAttribute','Channel Reviewer Role Attribute','org.kuali.rice.ken.kew.ChannelReviewerRoleAttribute',NULL,1,NULL,'6166CBA1B959644DE0404F8189D86C09'),('1011','DestinationAttribute','Department of Prudence Routing','RuleAttribute','Department of Prudence Routing','edu.sampleu.travel.workflow.DestinationRuleAttribute',NULL,1,'TRAVEL','6166CBA1B95A644DE0404F8189D86C09'),('1012','EmployeeAttribute','Employee Routing','RuleAttribute','Employee Routing','edu.sampleu.travel.workflow.EmployeeAttribute',NULL,1,'TRAVEL','6166CBA1B95B644DE0404F8189D86C09'),('1013','AccountAttribute','AccountAttribute','RuleAttribute','AccountAttribute','edu.sampleu.travel.workflow.AccountAttribute',NULL,2,NULL,'6166CBA1B95C644DE0404F8189D86C09'),('1014','TravelAccountDocumentAccountNumberAttribute','Account Number Attribute','SearchableXmlAttribute','The search attribute used to find documents by account number.','org.kuali.rice.krad.workflow.attribute.KualiXmlSearchableAttributeImpl','<searchingConfig>\n                <fieldDef name=\"accountNumber\" title=\"kuali_dd_label(TravelAccount)\">\n                    <display>\n                        <type>text</type>\n                    </display>\n                    <validation required=\"false\"/>\n                    <fieldEvaluation>\n                        <xpathexpression>wf:xstreamsafe(\'//newMaintainableObject/businessObject/number\')</xpathexpression>\n                    </fieldEvaluation>\n                </fieldDef>\n            </searchingConfig>',1,NULL,'6166CBA1B95D644DE0404F8189D86C09'),('1100','EDL.Campus.Example','EDL Campus Routing','RuleXmlAttribute','EDL School Routing','org.kuali.rice.kew.rule.xmlrouting.StandardGenericXMLRuleAttribute','<routingConfig>\n        <fieldDef name=\"campus\" title=\"Campus\" workflowType=\"ALL\">\n          <display>\n            <type>select</type>\n            <values title=\"IUB\">IUB</values>\n            <values title=\"IUPUI\">IUPUI</values>\n          </display>\n          <validation required=\"false\"/>\n          <fieldEvaluation>\n            <xpathexpression>//campus = wf:ruledata(\'campus\')</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n        <xmlDocumentContent>\n          <campus>%campus%</campus>\n        </xmlDocumentContent>\n      </routingConfig>',2,NULL,'6166CBA1B95F644DE0404F8189D86C09'),('1133','FiscalOfficer','foo','RuleAttribute','foo','edu.sampleu.travel.workflow.AccountAttribute',NULL,2,NULL,'6166CBA1B96D644DE0404F8189D86C09'),('1232','LoadTestActionListAttribute','LoadTestActionListAttribute','ActionListAttribute','LoadTestActionListAttribute','components.LoadTestActionListAttibute',NULL,1,NULL,'6166CBA1B9C4644DE0404F8189D86C09'),('1233','XMLSearchableAttribute','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"givenname\" title=\"First name\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition autoWildcardLocation=\"prefixonly\"/>\n          <validation required=\"true\">\n            <regex>^[a-zA-Z ]+$</regex>\n            <message>Invalid first name</message>\n          </validation>\n          <fieldEvaluation>\n            <xpathexpression>//givenname/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C5644DE0404F8189D86C09'),('1234','XMLSearchableAttribute_CaseInsensitive','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"givenname_nocase\" title=\"First name\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition autoWildcardLocation=\"prefixonly\" caseSensitive=\"false\"/>\n          <validation required=\"true\">\n            <regex>^[a-zA-Z ]+$</regex>\n            <message>Invalid first name</message>\n          </validation>\n          <fieldEvaluation>\n            <xpathexpression>//givenname/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C6644DE0404F8189D86C09'),('1235','XMLSearchableAttributeStdLong','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"testLongKey\" title=\"Certain Long Value\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition allowWildcards=\"true\" autoWildcardLocation=\"suffixOnly\" dataType=\"long\"/>\n          <fieldEvaluation>\n            <xpathexpression>//testLongKey/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C7644DE0404F8189D86C09'),('1236','XMLSearchableAttributeStdFloat','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"testFloatKey\" title=\"Float in the Water\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition dataType=\"float\"/>\n          <fieldEvaluation>\n            <xpathexpression>//testFloatKey/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C8644DE0404F8189D86C09'),('1237','XMLSearchableAttributeStdCurrency','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"testCurrencyKey\" title=\"Dollars Here\">\n          <display>\n            <type>text</type>\n            <parameters name=\"displayFormatPattern\">#.00</parameters>\n          </display>\n          <searchDefinition dataType=\"float\"/>\n          <fieldEvaluation>\n            <xpathexpression>//testCurrencyKey/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C9644DE0404F8189D86C09'),('1238','XMLSearchableAttributeStdDateTime','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"testDateTimeKey\" title=\"Searchable Date Field\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition dataType=\"datetime\" datePicker=\"false\"/>\n          <fieldEvaluation>\n            <xpathexpression>//putWhateverWordsIwantInsideThisTag/testDateTimeKey/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9CA644DE0404F8189D86C09');
/*!40000 ALTER TABLE `krew_rule_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_expr_s`
--

DROP TABLE IF EXISTS `krew_rule_expr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_expr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_expr_s`
--

LOCK TABLES `krew_rule_expr_s` WRITE;
/*!40000 ALTER TABLE `krew_rule_expr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_rule_expr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_expr_t`
--

DROP TABLE IF EXISTS `krew_rule_expr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_expr_t` (
  `RULE_EXPR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TYP` varchar(256) COLLATE utf8_bin NOT NULL,
  `RULE_EXPR` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RULE_EXPR_ID`),
  UNIQUE KEY `KREW_RULE_EXPR_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_expr_t`
--

LOCK TABLES `krew_rule_expr_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_expr_t` DISABLE KEYS */;
INSERT INTO `krew_rule_expr_t` VALUES ('2000','BSF:groovy','import edu.sampleu.recipe.util.RecipeUtils\n		        import org.apache.commons.lang.StringUtils\n				import org.kuali.rice.kew.engine.RouteContext;\n				import org.kuali.rice.kew.rule.Rule;\n				import org.kuali.rice.kew.rule.RuleExpressionResult;\n		        \n				String ingredients = RecipeUtils.getRecipeIngredientsFromRecipeDocumentContent(routeContext)\n		\n				if(StringUtils.containsIgnoreCase(ingredients, \"chicken\")) {\n					return RecipeUtils.constructGroupApprovalRequest(\"KR-WKFLW:ChickenRecipeMasters\", rule)\n		        } else {\n		        	/* Return an empty route request */\n		        	return RecipeUtils.constructEmptyApprovalRequest(rule);\n		        }','616A0754-3BA6-39DF-9A1B-11432849DC6B',1),('2001','BSF:groovy','import javax.xml.namespace.QName\n				import org.kuali.rice.resourceloader.GlobalResourceLoader\n				import edu.sampleu.magazine.service.MagazineService\n		        import edu.sampleu.recipe.util.RecipeUtils\n		        import org.apache.commons.lang.StringUtils\n				import org.kuali.rice.kew.engine.RouteContext\n				import org.kuali.rice.kew.rule.Rule\n				import org.kuali.rice.kew.rule.RuleExpressionResult\n		        \n				String origin = RecipeUtils.getRecipeOriginFromRecipeDocumentContent(routeContext)\n				\n				QName serviceName = new QName(\"magazineNamespace\", \"magazineSoapService\")\n				MagazineService magazineSoapService = (MagazineService) GlobalResourceLoader.getService(serviceName)\n				String managedMagazines[] = magazineSoapService.getAllManagedMagazines()\n		\n				if(ArrayUtils.contains(managedMagazines, origin)) {\n					return RecipeUtils.constructGroupApprovalRequest(\"KR-WKFLW:MagazineManagers\", rule)\n		        } else {\n		        	/* Return an empty route request */\n		        	return RecipeUtils.constructEmptyApprovalRequest(rule);\n		        }','3364EB47-6407-9C45-8AAD-7A8310266208',1);
/*!40000 ALTER TABLE `krew_rule_expr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_ext_t`
--

DROP TABLE IF EXISTS `krew_rule_ext_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_ext_t` (
  `RULE_EXT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_TMPL_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RULE_EXT_ID`),
  KEY `KREW_RULE_EXT_T1` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_ext_t`
--

LOCK TABLES `krew_rule_ext_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_ext_t` DISABLE KEYS */;
INSERT INTO `krew_rule_ext_t` VALUES ('1045','1024','1044',1),('1047','1027','1046',1),('1104','1102','1103',1),('1107','1102','1106',1);
/*!40000 ALTER TABLE `krew_rule_ext_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_ext_val_t`
--

DROP TABLE IF EXISTS `krew_rule_ext_val_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_ext_val_t` (
  `RULE_EXT_VAL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_EXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(2000) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RULE_EXT_VAL_ID`),
  KEY `KREW_RULE_EXT_VAL_T1` (`RULE_EXT_ID`),
  KEY `KREW_RULE_EXT_VAL_T2` (`RULE_EXT_VAL_ID`,`KEY_CD`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_ext_val_t`
--

LOCK TABLES `krew_rule_ext_val_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_ext_val_t` DISABLE KEYS */;
INSERT INTO `krew_rule_ext_val_t` VALUES ('1048','1047','las vegas','destination',1),('1105','1104','IUB','campus',1),('1108','1107','IUPUI','campus',1);
/*!40000 ALTER TABLE `krew_rule_ext_val_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_rsp_t`
--

DROP TABLE IF EXISTS `krew_rule_rsp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_rsp_t` (
  `RULE_RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRIO` decimal(5,0) DEFAULT NULL,
  `ACTN_RQST_CD` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TYP` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `APPR_PLCY` char(1) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_RSP_ID`),
  UNIQUE KEY `KREW_RULE_RSP_TC0` (`OBJ_ID`),
  KEY `KREW_RULE_RSP_TI1` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_rsp_t`
--

LOCK TABLES `krew_rule_rsp_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_rsp_t` DISABLE KEYS */;
INSERT INTO `krew_rule_rsp_t` VALUES ('2021','2020','1044',1,'A','org.kuali.rice.ken.kew.ChannelReviewerRoleAttribute!reviewers','R','F',1,'6166CBA1BBFC644DE0404F8189D86C09'),('2023','2022','1046',1,'A','user4','F','F',1,'6166CBA1BBFD644DE0404F8189D86C09'),('2025','2024','1049',1,'A','edu.sampleu.travel.workflow.EmployeeAttribute!employee','R','F',1,'6166CBA1BBFE644DE0404F8189D86C09'),('2027','2026','1050',1,'A','edu.sampleu.travel.workflow.EmployeeAttribute!supervisr','R','F',1,'6166CBA1BBFF644DE0404F8189D86C09'),('2029','2028','1051',1,'K','edu.sampleu.travel.workflow.EmployeeAttribute!director','R','F',1,'6166CBA1BC00644DE0404F8189D86C09'),('2031','2030','1052',1,'A','edu.sampleu.travel.workflow.AccountAttribute!FO','R','F',1,'6166CBA1BC01644DE0404F8189D86C09'),('2041','2040','1103',1,'A','2202','G','F',1,'6166CBA1BC02644DE0404F8189D86C09'),('2043','2042','1106',1,'A','2203','G','F',1,'6166CBA1BC03644DE0404F8189D86C09'),('2064','2063','1642',1,'A','9997','G','F',1,'B1FCE360-EA7A-C2B8-9D70-88C39A982094');
/*!40000 ALTER TABLE `krew_rule_rsp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_t`
--

DROP TABLE IF EXISTS `krew_rule_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_t` (
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `RULE_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RULE_EXPR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `RULE_BASE_VAL_DESC` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `FRC_ACTN` decimal(1,0) NOT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `TMPL_RULE_IND` decimal(1,0) DEFAULT NULL,
  `FRM_DT` datetime DEFAULT NULL,
  `TO_DT` datetime DEFAULT NULL,
  `DACTVN_DT` datetime DEFAULT NULL,
  `CUR_IND` decimal(1,0) DEFAULT '0',
  `RULE_VER_NBR` decimal(8,0) DEFAULT '0',
  `DLGN_IND` decimal(1,0) DEFAULT NULL,
  `PREV_VER_RULE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTVN_DT` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_ID`),
  UNIQUE KEY `KREW_RULE_TC0` (`OBJ_ID`),
  KEY `KREW_RULE_TR1` (`RULE_EXPR_ID`),
  CONSTRAINT `KREW_RULE_TR1` FOREIGN KEY (`RULE_EXPR_ID`) REFERENCES `krew_rule_expr_t` (`RULE_EXPR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_t`
--

LOCK TABLES `krew_rule_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_t` DISABLE KEYS */;
INSERT INTO `krew_rule_t` VALUES ('1044','SendNotificationRequest.Reviewers','1023',NULL,1,'Notification Request Reviewers',1,'SendNotificationRequest',NULL,0,'2008-08-01 15:59:02','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:02',0,'6166CBA1BBE9644DE0404F8189D86C09'),('1046','TravelRequest.Destination.LasVegas','1026',NULL,1,'Destination - Las Vegas',0,'TravelRequest',NULL,0,'2008-08-01 15:59:02','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:02',0,'6166CBA1BBEA644DE0404F8189D86C09'),('1049','TravelRequest.Supervisor','1028',NULL,1,'Supervisor Routing',0,'TravelRequest',NULL,0,'2008-08-01 15:59:02','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:02',0,'6166CBA1BBEB644DE0404F8189D86C09'),('1050','TravelRequest.DeanDirector','1030',NULL,1,'Dean/Director Routing',0,'TravelRequest',NULL,0,'2008-08-01 15:59:03','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:03',0,'6166CBA1BBEC644DE0404F8189D86C09'),('1051','TravelRequest.FiscalOfficer','1030',NULL,1,'Fiscal Officer Routing',0,'TravelRequest',NULL,0,'2008-08-01 15:59:03','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:03',0,'6166CBA1BBED644DE0404F8189D86C09'),('1052','659D86718DD514C7E0404F8189D877C3','1032',NULL,1,'Fiscal Officer Routing',0,'TravelRequest',NULL,0,'2008-08-01 15:59:03','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:03',0,'6166CBA1BBEE644DE0404F8189D86C09'),('1103','eDoc.Example1Doctype.IUB','1101',NULL,1,'Routing rule for EDocLite Example with IUB selected.',0,'eDoc.Example1Doctype',NULL,0,'2008-09-16 12:26:15','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-09-16 12:26:15',0,'6166CBA1BBEF644DE0404F8189D86C09'),('1106','eDoc.Example1Doctype.IUPUI','1101',NULL,1,'Routing rule for EDocLite Example with IUPUI selected.',0,'eDoc.Example1Doctype',NULL,0,'2008-09-16 12:26:16','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-09-16 12:26:16',0,'6166CBA1BBF0644DE0404F8189D86C09'),('1642','RecipeMastersGroupApproval',NULL,NULL,1,'This rule requires an approval from the RecipeMasters workgroup.',1,'RecipeParentMaintenanceDocument',NULL,0,NULL,NULL,NULL,1,0,0,NULL,'2009-05-15 12:22:09',0,'D1216F1E-EAB3-68F8-FF50-1B20357669A4'),('1643','ChickenRecipeMastersGroupApproval',NULL,'2000',1,'This rule requires an approval from the ChickenRecipeMasters workgroup if the ingredients for the recipe contains Chicken.',1,'RecipeMaintenanceDocument',NULL,0,NULL,NULL,NULL,1,0,0,NULL,'2009-05-15 12:22:09',0,'8E72AF5C-609C-9337-2606-62D941A7D3FF'),('1644','MagazineGroupApproval',NULL,'2001',1,'This rule requires an approval from the Magazine workgroup if any of the sources lists one of the Magazine System\'s managed magazines.',1,'RecipeMaintenanceDocument',NULL,0,NULL,NULL,NULL,1,0,0,NULL,'2009-05-15 12:22:09',0,'CF9FBB5A-942F-0DEB-327F-BE402D55AF51');
/*!40000 ALTER TABLE `krew_rule_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_tmpl_attr_t`
--

DROP TABLE IF EXISTS `krew_rule_tmpl_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_tmpl_attr_t` (
  `RULE_TMPL_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `REQ_IND` decimal(1,0) NOT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `DSPL_ORD` decimal(5,0) NOT NULL,
  `DFLT_VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_TMPL_ATTR_ID`),
  UNIQUE KEY `KREW_RULE_TMPL_ATTR_TC0` (`OBJ_ID`),
  KEY `KREW_RULE_TMPL_ATTR_TI1` (`RULE_TMPL_ID`),
  KEY `KREW_RULE_TMPL_ATTR_TI2` (`RULE_ATTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_tmpl_attr_t`
--

LOCK TABLES `krew_rule_tmpl_attr_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_tmpl_attr_t` DISABLE KEYS */;
INSERT INTO `krew_rule_tmpl_attr_t` VALUES ('1024','1023','1010',1,1,2,NULL,2,'6166CBA1BB16644DE0404F8189D86C09'),('1027','1026','1011',1,1,3,NULL,8,'6166CBA1BB17644DE0404F8189D86C09'),('1029','1028','1012',1,1,4,NULL,2,'6166CBA1BB18644DE0404F8189D86C09'),('1031','1030','1012',1,1,5,NULL,2,'6166CBA1BB19644DE0404F8189D86C09'),('1033','1032','1013',1,1,6,NULL,2,'6166CBA1BB1A644DE0404F8189D86C09'),('1102','1101','1100',0,1,0,NULL,2,'6166CBA1BB1C644DE0404F8189D86C09'),('1321','1320','1000',1,1,3,NULL,2,'6166CBA1BB20644DE0404F8189D86C09');
/*!40000 ALTER TABLE `krew_rule_tmpl_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_tmpl_optn_s`
--

DROP TABLE IF EXISTS `krew_rule_tmpl_optn_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_tmpl_optn_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_tmpl_optn_s`
--

LOCK TABLES `krew_rule_tmpl_optn_s` WRITE;
/*!40000 ALTER TABLE `krew_rule_tmpl_optn_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_rule_tmpl_optn_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_tmpl_optn_t`
--

DROP TABLE IF EXISTS `krew_rule_tmpl_optn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_tmpl_optn_t` (
  `RULE_TMPL_OPTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KEY_CD` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RULE_TMPL_OPTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_tmpl_optn_t`
--

LOCK TABLES `krew_rule_tmpl_optn_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_tmpl_optn_t` DISABLE KEYS */;
INSERT INTO `krew_rule_tmpl_optn_t` VALUES ('2000','1016','D','K',1),('2001','1016','A','true',1),('2002','1016','K','true',1),('2003','1016','F','true',1),('2004','1016','C','true',1),('2005','1016','I','some instructions',1);
/*!40000 ALTER TABLE `krew_rule_tmpl_optn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_rule_tmpl_t`
--

DROP TABLE IF EXISTS `krew_rule_tmpl_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_rule_tmpl_t` (
  `RULE_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(250) COLLATE utf8_bin NOT NULL,
  `RULE_TMPL_DESC` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_RULE_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_TMPL_ID`),
  UNIQUE KEY `KREW_RULE_TMPL_TC0` (`OBJ_ID`),
  UNIQUE KEY `KREW_RULE_TMPL_TI1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_rule_tmpl_t`
--

LOCK TABLES `krew_rule_tmpl_t` WRITE;
/*!40000 ALTER TABLE `krew_rule_tmpl_t` DISABLE KEYS */;
INSERT INTO `krew_rule_tmpl_t` VALUES ('1015','WorkflowDocumentDelegationTemplate','WorkflowDocumentDelegationTemplate',NULL,2,'6166CBA1BA86644DE0404F8189D86C09'),('1016','WorkflowDocumentTemplate','Workflow Document Template','1015',4,'6166CBA1BA87644DE0404F8189D86C09'),('1017','Ack1Template','Acknowledgement 1 Template',NULL,4,'6166CBA1BA88644DE0404F8189D86C09'),('1018','Ack2Template','Acknowledgement 2 Template',NULL,4,'6166CBA1BA89644DE0404F8189D86C09'),('1023','ReviewersRouting','Routes to channel reviewers',NULL,2,'6166CBA1BA8C644DE0404F8189D86C09'),('1025','NotificationRouting','The standard rule template for sending notification messages.',NULL,2,'6166CBA1BA8D644DE0404F8189D86C09'),('1026','TravelRequest-DestinationRouting','Destination Routing','1015',8,'6166CBA1BA8E644DE0404F8189D86C09'),('1028','TravelRequest-TravelerRouting','Traveler Routing',NULL,2,'6166CBA1BA8F644DE0404F8189D86C09'),('1030','TravelRequest-SupervisorRouting','Supervisor Routing',NULL,2,'6166CBA1BA90644DE0404F8189D86C09'),('1032','TravelRequest-AccountRouting','Travel Account Routing',NULL,2,'6166CBA1BA91644DE0404F8189D86C09'),('1101','eDoc.Example1.Node1','eDocLite Example1 Routing',NULL,2,'6166CBA1BA92644DE0404F8189D86C09'),('1320','RuleRoutingTemplate','RuleRoutingTemplate',NULL,2,'6166CBA1BA96644DE0404F8189D86C09'),('1537','WorkflowDocument2Template','Workflow Document Template 2',NULL,2,'6166CBA1BAE9644DE0404F8189D86C09'),('1538','WorkflowDocument3Template','Workflow Document Template 3',NULL,2,'6166CBA1BAEA644DE0404F8189D86C09');
/*!40000 ALTER TABLE `krew_rule_tmpl_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_srch_attr_s`
--

DROP TABLE IF EXISTS `krew_srch_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_srch_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2060 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_srch_attr_s`
--

LOCK TABLES `krew_srch_attr_s` WRITE;
/*!40000 ALTER TABLE `krew_srch_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_srch_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_typ_attr_s`
--

DROP TABLE IF EXISTS `krew_typ_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_typ_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_typ_attr_s`
--

LOCK TABLES `krew_typ_attr_s` WRITE;
/*!40000 ALTER TABLE `krew_typ_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_typ_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_typ_attr_t`
--

DROP TABLE IF EXISTS `krew_typ_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_typ_attr_t` (
  `TYP_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `SEQ_NO` decimal(5,0) NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYP_ATTR_ID`),
  UNIQUE KEY `KREW_TYP_ATTR_TC1` (`TYP_ID`,`ATTR_DEFN_ID`),
  KEY `KREW_TYP_ATTR_TI1` (`ATTR_DEFN_ID`),
  KEY `KREW_TYP_ATTR_TI2` (`TYP_ID`),
  CONSTRAINT `KREW_TYP_ATTR_FK1` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krew_attr_defn_t` (`ATTR_DEFN_ID`),
  CONSTRAINT `KREW_TYP_ATTR_FK2` FOREIGN KEY (`TYP_ID`) REFERENCES `krew_typ_t` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_typ_attr_t`
--

LOCK TABLES `krew_typ_attr_t` WRITE;
/*!40000 ALTER TABLE `krew_typ_attr_t` DISABLE KEYS */;
INSERT INTO `krew_typ_attr_t` VALUES ('1',1,'1','1','Y',1),('2',2,'1','2','Y',1);
/*!40000 ALTER TABLE `krew_typ_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_typ_s`
--

DROP TABLE IF EXISTS `krew_typ_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_typ_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_typ_s`
--

LOCK TABLES `krew_typ_s` WRITE;
/*!40000 ALTER TABLE `krew_typ_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_typ_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_typ_t`
--

DROP TABLE IF EXISTS `krew_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_typ_t` (
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `SRVC_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYP_ID`),
  UNIQUE KEY `KREW_TYP_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_typ_t`
--

LOCK TABLES `krew_typ_t` WRITE;
/*!40000 ALTER TABLE `krew_typ_t` DISABLE KEYS */;
INSERT INTO `krew_typ_t` VALUES ('1','Sample Type','KR-SAP','sampleAppPeopleFlowTypeService','Y',1);
/*!40000 ALTER TABLE `krew_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_usr_optn_t`
--

DROP TABLE IF EXISTS `krew_usr_optn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_usr_optn_t` (
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRSN_OPTN_ID` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`PRNCPL_ID`,`PRSN_OPTN_ID`),
  KEY `KREW_USR_OPTN_TI1` (`PRNCPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_usr_optn_t`
--

LOCK TABLES `krew_usr_optn_t` WRITE;
/*!40000 ALTER TABLE `krew_usr_optn_t` DISABLE KEYS */;
INSERT INTO `krew_usr_optn_t` VALUES ('admin','ACTION_LIST_SIZE_NEW','10',1),('admin','ACTION_REQUESTED_COL_SHOW_NEW','yes',1),('admin','APP_DOC_STATUS_COL_SHOW_NEW',NULL,1),('admin','CLEAR_FYI_COL_SHOW_NEW','yes',1),('admin','CURRENT_NODE_COL_SHOW_NEW','no',1),('admin','DATE_CREATED_COL_SHOW_NEW','yes',1),('admin','DELEGATOR_COL_SHOW_NEW','yes',1),('admin','DELEGATOR_FILTER','Secondary Delegators on Action List Page',1),('admin','DOCUMENT_STATUS_COLOR_A','white',1),('admin','DOCUMENT_STATUS_COLOR_C','white',1),('admin','DOCUMENT_STATUS_COLOR_D','white',1),('admin','DOCUMENT_STATUS_COLOR_E','white',1),('admin','DOCUMENT_STATUS_COLOR_F','white',1),('admin','DOCUMENT_STATUS_COLOR_I','white',1),('admin','DOCUMENT_STATUS_COLOR_P','white',1),('admin','DOCUMENT_STATUS_COLOR_R','white',1),('admin','DOCUMENT_STATUS_COLOR_S','white',1),('admin','DOCUMENT_STATUS_COLOR_X','white',1),('admin','DOCUMENT_STATUS_COL_SHOW_NEW','yes',1),('admin','DOC_TYPE_COL_SHOW_NEW','yes',1),('admin','EMAIL_NOTIFICATION','immediate',1),('admin','EMAIL_NOTIFY_PRIMARY','yes',1),('admin','EMAIL_NOTIFY_SECONDARY','no',1),('admin','INITIATOR_COL_SHOW_NEW',NULL,1),('admin','LAST_APPROVED_DATE_COL_SHOW_NEW','no',1),('admin','NOTIFY_ACKNOWLEDGE','yes',1),('admin','NOTIFY_APPROVE','yes',1),('admin','NOTIFY_COMPLETE','yes',1),('admin','NOTIFY_FYI','yes',1),('admin','OPEN_ITEMS_NEW_WINDOW','yes',1),('admin','PRIMARY_DELEGATE_FILTER','Primary Delegates on Action List Page',1),('admin','REFRESH_RATE','15',1),('admin','TITLE_COL_SHOW_NEW','yes',1),('admin','USE_OUT_BOX','yes',1),('admin','WORKGROUP_REQUEST_COL_SHOW_NEW','yes',1);
/*!40000 ALTER TABLE `krew_usr_optn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krew_usr_s`
--

DROP TABLE IF EXISTS `krew_usr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krew_usr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100000000000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krew_usr_s`
--

LOCK TABLES `krew_usr_s` WRITE;
/*!40000 ALTER TABLE `krew_usr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krew_usr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_addr_typ_t`
--

DROP TABLE IF EXISTS `krim_addr_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_addr_typ_t` (
  `ADDR_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ADDR_TYP_CD`),
  UNIQUE KEY `KRIM_ADDR_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ADDR_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_addr_typ_t`
--

LOCK TABLES `krim_addr_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_addr_typ_t` DISABLE KEYS */;
INSERT INTO `krim_addr_typ_t` VALUES ('HM','5B97C50B03706110E0404F8189D85213',1,'Home','Y','b','2008-11-13 14:06:29'),('OTH','5B97C50B03716110E0404F8189D85213',1,'Other','Y','c','2008-11-13 14:06:29'),('WRK','5B97C50B03726110E0404F8189D85213',1,'Work','Y','a','2008-11-13 14:06:30');
/*!40000 ALTER TABLE `krim_addr_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_afltn_typ_t`
--

DROP TABLE IF EXISTS `krim_afltn_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_afltn_typ_t` (
  `AFLTN_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_AFLTN_TYP_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`AFLTN_TYP_CD`),
  UNIQUE KEY `KRIM_AFLTN_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_AFLTN_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_afltn_typ_t`
--

LOCK TABLES `krim_afltn_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_afltn_typ_t` DISABLE KEYS */;
INSERT INTO `krim_afltn_typ_t` VALUES ('AFLT','5B97C50B03736110E0404F8189D85213',1,'Affiliate','N','Y','d','2008-11-13 14:06:30'),('FCLTY','5B97C50B03746110E0404F8189D85213',1,'Faculty','Y','Y','b','2008-11-13 14:06:30'),('STAFF','5B97C50B03756110E0404F8189D85213',1,'Staff','Y','Y','c','2008-11-13 14:06:30'),('STDNT','5B97C50B03766110E0404F8189D85213',1,'Student','N','Y','a','2008-11-13 14:06:30');
/*!40000 ALTER TABLE `krim_afltn_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_attr_data_id_s`
--

DROP TABLE IF EXISTS `krim_attr_data_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_attr_data_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_attr_data_id_s`
--

LOCK TABLES `krim_attr_data_id_s` WRITE;
/*!40000 ALTER TABLE `krim_attr_data_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_attr_data_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_attr_defn_id_s`
--

DROP TABLE IF EXISTS `krim_attr_defn_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_attr_defn_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_attr_defn_id_s`
--

LOCK TABLES `krim_attr_defn_id_s` WRITE;
/*!40000 ALTER TABLE `krim_attr_defn_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_attr_defn_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_attr_defn_t`
--

DROP TABLE IF EXISTS `krim_attr_defn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_attr_defn_t` (
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `LBL` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `CMPNT_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`KIM_ATTR_DEFN_ID`),
  UNIQUE KEY `KRIM_ATTR_DEFN_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_attr_defn_t`
--

LOCK TABLES `krim_attr_defn_t` WRITE;
/*!40000 ALTER TABLE `krim_attr_defn_t` DISABLE KEYS */;
INSERT INTO `krim_attr_defn_t` VALUES ('1','5ADF18B6D4887954E0404F8189D85002',1,'beanName',NULL,'Y','KR-SYS','org.kuali.rice.kim.bo.impl.KimAttributes'),('10','5ADF18B6D4917954E0404F8189D85002',1,'editMode',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('11','5ADF18B6D4927954E0404F8189D85002',1,'parameterName',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('12','5ADF18B6D4937954E0404F8189D85002',1,'campusCode',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('13','5ADF18B6D4947954E0404F8189D85002',1,'documentTypeName',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('14','5ADF18B6D4957954E0404F8189D85002',1,'actionRequestCd',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('15','5ADF18B6D4967954E0404F8189D85002',1,'routeStatusCode',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('16','5ADF18B6D4977954E0404F8189D85002',1,'routeNodeName',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('18','5ADF18B6D4997954E0404F8189D85002',1,'roleName',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('19','5ADF18B6D49A7954E0404F8189D85002',1,'permissionName',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('2','5ADF18B6D4897954E0404F8189D85002',1,'actionClass',NULL,'Y','KR-SYS','org.kuali.rice.kim.bo.impl.KimAttributes'),('20','5ADF18B6D49B7954E0404F8189D85002',1,'responsibilityName',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('21','5ADF18B6D49C7954E0404F8189D85002',1,'groupName',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('3','5ADF18B6D48A7954E0404F8189D85002',1,'buttonName',NULL,'Y','KR-SYS','org.kuali.rice.kim.bo.impl.KimAttributes'),('4','5ADF18B6D48B7954E0404F8189D85002',1,'namespaceCode',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('40','5C4970B2B2DF8277E0404F8189D80B30',1,'required',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('41','5C4970B2B2E08277E0404F8189D80B30',1,'actionDetailsAtRoleMemberLevel',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('42','5C7D997640635002E0404F8189D86F11',1,'documentNumber',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('44','603B735FA6BCFE21E0404F8189D8083B',1,'sectionId',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('46','69FA55ACC2EE2598E0404F8189D86880',1,'qualifierResolverProvidedIdentifier',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('47','B7DBFABEFD308CBFE0402E0AA9D757C9',1,'viewId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('48','B7DBFABEFD318CBFE0402E0AA9D757C9',1,'actionEvent',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('49','B7DBFABEFD328CBFE0402E0AA9D757C9',1,'collectionPropertyName',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('5','5ADF18B6D48C7954E0404F8189D85002',1,'componentName',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('50','B7DBFABEFD338CBFE0402E0AA9D757C9',1,'fieldId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('51','B7DBFABEFD348CBFE0402E0AA9D757C9',1,'groupId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('52','B7DBFABEFD358CBFE0402E0AA9D757C9',1,'widgetId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('53','B7DBFABEFD368CBFE0402E0AA9D757C9',1,'actionId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('54','BC5444677C22328CE0402E0AA9D77D80',1,'appDocStatus',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('6','5ADF18B6D48D7954E0404F8189D85002',1,'propertyName',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('7','603B735FA6BAFE21E0404F8189D8083B',1,'existingRecordsOnly',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('8','5ADF18B6D48F7954E0404F8189D85002',1,'createdBySelfOnly',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('9','5ADF18B6D4907954E0404F8189D85002',1,'attachmentTypeCode',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('KR1000','CEA27F2DB2DA3593E040F90A05B924DB',1,'appCode','Application Code','Y','KR-SYS','org.kuali.rice.kim.bo.impl.KimAttributes'),('KR1001','CEA27F2DB2DD3593E040F90A05B924DB',1,'kimTypeName','Kim Type Name','Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes');
/*!40000 ALTER TABLE `krim_attr_defn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_ctznshp_stat_t`
--

DROP TABLE IF EXISTS `krim_ctznshp_stat_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_ctznshp_stat_t` (
  `CTZNSHP_STAT_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`CTZNSHP_STAT_CD`),
  UNIQUE KEY `KRIM_CTZNSHP_STAT_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_CTZNSHP_STAT_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_ctznshp_stat_t`
--

LOCK TABLES `krim_ctznshp_stat_t` WRITE;
/*!40000 ALTER TABLE `krim_ctznshp_stat_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_ctznshp_stat_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_dlgn_id_s`
--

DROP TABLE IF EXISTS `krim_dlgn_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_dlgn_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_dlgn_id_s`
--

LOCK TABLES `krim_dlgn_id_s` WRITE;
/*!40000 ALTER TABLE `krim_dlgn_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_dlgn_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_dlgn_mbr_attr_data_t`
--

DROP TABLE IF EXISTS `krim_dlgn_mbr_attr_data_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_dlgn_mbr_attr_data_t` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DLGN_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_DLGN_MBR_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_DLGN_MBR_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  KEY `KRIM_DLGN_MBR_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_DLGN_MBR_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_DLGN_MBR_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `krim_attr_defn_t` (`KIM_ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_dlgn_mbr_attr_data_t`
--

LOCK TABLES `krim_dlgn_mbr_attr_data_t` WRITE;
/*!40000 ALTER TABLE `krim_dlgn_mbr_attr_data_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_dlgn_mbr_attr_data_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_dlgn_mbr_id_s`
--

DROP TABLE IF EXISTS `krim_dlgn_mbr_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_dlgn_mbr_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_dlgn_mbr_id_s`
--

LOCK TABLES `krim_dlgn_mbr_id_s` WRITE;
/*!40000 ALTER TABLE `krim_dlgn_mbr_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_dlgn_mbr_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_dlgn_mbr_t`
--

DROP TABLE IF EXISTS `krim_dlgn_mbr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_dlgn_mbr_t` (
  `DLGN_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `DLGN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_TYP_CD` char(1) COLLATE utf8_bin DEFAULT 'P',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DLGN_MBR_ID`),
  UNIQUE KEY `KRIM_DLGN_MBR_TC0` (`OBJ_ID`),
  KEY `KRIM_DLGN_MBR_TR2` (`DLGN_ID`),
  CONSTRAINT `KRIM_DLGN_MBR_TR2` FOREIGN KEY (`DLGN_ID`) REFERENCES `krim_dlgn_t` (`DLGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_dlgn_mbr_t`
--

LOCK TABLES `krim_dlgn_mbr_t` WRITE;
/*!40000 ALTER TABLE `krim_dlgn_mbr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_dlgn_mbr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_dlgn_t`
--

DROP TABLE IF EXISTS `krim_dlgn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_dlgn_t` (
  `DLGN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `ROLE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DLGN_ID`),
  UNIQUE KEY `KRIM_DLGN_TC0` (`OBJ_ID`),
  KEY `KRIM_DLGN_TR1` (`ROLE_ID`),
  KEY `KRIM_DLGN_TR2` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_DLGN_TR1` FOREIGN KEY (`ROLE_ID`) REFERENCES `krim_role_t` (`ROLE_ID`),
  CONSTRAINT `KRIM_DLGN_TR2` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_dlgn_t`
--

LOCK TABLES `krim_dlgn_t` WRITE;
/*!40000 ALTER TABLE `krim_dlgn_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_dlgn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_email_typ_t`
--

DROP TABLE IF EXISTS `krim_email_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_email_typ_t` (
  `EMAIL_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TYP_CD`),
  UNIQUE KEY `KRIM_EMAIL_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_EMAIL_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_email_typ_t`
--

LOCK TABLES `krim_email_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_email_typ_t` DISABLE KEYS */;
INSERT INTO `krim_email_typ_t` VALUES ('HM','5B97C50B03776110E0404F8189D85213',1,'Home','Y','b','2008-11-13 14:06:31'),('OTH','5B97C50B03786110E0404F8189D85213',1,'Other','Y','c','2008-11-13 14:06:31'),('WRK','5B97C50B03796110E0404F8189D85213',1,'Work','Y','a','2008-11-13 14:06:31');
/*!40000 ALTER TABLE `krim_email_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_emp_stat_t`
--

DROP TABLE IF EXISTS `krim_emp_stat_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_emp_stat_t` (
  `EMP_STAT_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`EMP_STAT_CD`),
  UNIQUE KEY `KRIM_EMP_STAT_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_EMP_STAT_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_emp_stat_t`
--

LOCK TABLES `krim_emp_stat_t` WRITE;
/*!40000 ALTER TABLE `krim_emp_stat_t` DISABLE KEYS */;
INSERT INTO `krim_emp_stat_t` VALUES ('A','5B97C50B037A6110E0404F8189D85213',1,'Active','Y','01','2008-11-13 14:06:31'),('D','5B97C50B037B6110E0404F8189D85213',1,'Deceased','Y','99','2008-11-13 14:06:31'),('L','5B97C50B037C6110E0404F8189D85213',1,'On Non-Pay Leave','Y','04','2008-11-13 14:06:32'),('N','5B97C50B037D6110E0404F8189D85213',1,'Status Not Yet Processed','Y','03','2008-11-13 14:06:32'),('P','5B97C50B037E6110E0404F8189D85213',1,'Processing','Y','02','2008-11-13 14:06:32'),('R','5B97C50B037F6110E0404F8189D85213',1,'Retired','Y','10','2008-11-13 14:06:32'),('T','5B97C50B03806110E0404F8189D85213',1,'Terminated','Y','97','2008-11-13 14:06:32');
/*!40000 ALTER TABLE `krim_emp_stat_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_emp_typ_t`
--

DROP TABLE IF EXISTS `krim_emp_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_emp_typ_t` (
  `EMP_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`EMP_TYP_CD`),
  UNIQUE KEY `KRIM_EMP_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_EMP_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_emp_typ_t`
--

LOCK TABLES `krim_emp_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_emp_typ_t` DISABLE KEYS */;
INSERT INTO `krim_emp_typ_t` VALUES ('N','5B97C50B03826110E0404F8189D85213',1,'Non-Professional','Y','02','2008-11-13 14:06:32'),('O','5B97C50B03836110E0404F8189D85213',1,'Other','Y','99','2008-11-13 14:06:33'),('P','5B97C50B03846110E0404F8189D85213',1,'Professional','Y','01','2008-11-13 14:06:33');
/*!40000 ALTER TABLE `krim_emp_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_ent_nm_typ_t`
--

DROP TABLE IF EXISTS `krim_ent_nm_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_ent_nm_typ_t` (
  `ENT_NM_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENT_NM_TYP_CD`),
  UNIQUE KEY `KRIM_ENT_NM_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ENT_NM_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_ent_nm_typ_t`
--

LOCK TABLES `krim_ent_nm_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_ent_nm_typ_t` DISABLE KEYS */;
INSERT INTO `krim_ent_nm_typ_t` VALUES ('OTH','5B97C50B03856110E0404F8189D85213',1,'Other','Y','c','2008-11-13 14:06:33'),('PRFR','5B97C50B03866110E0404F8189D85213',1,'Preferred','Y','b','2008-11-13 14:06:33'),('PRM','5B97C50B03876110E0404F8189D85213',1,'Primary','Y','a','2008-11-13 14:06:33');
/*!40000 ALTER TABLE `krim_ent_nm_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_ent_typ_t`
--

DROP TABLE IF EXISTS `krim_ent_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_ent_typ_t` (
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`ENT_TYP_CD`),
  UNIQUE KEY `KRIM_ENT_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ENT_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_ent_typ_t`
--

LOCK TABLES `krim_ent_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_ent_typ_t` DISABLE KEYS */;
INSERT INTO `krim_ent_typ_t` VALUES ('PERSON','5B97C50B03886110E0404F8189D85213',1,'Person','01','Y'),('SYSTEM','5B97C50B03896110E0404F8189D85213',1,'System','02','Y');
/*!40000 ALTER TABLE `krim_ent_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_addr_id_s`
--

DROP TABLE IF EXISTS `krim_entity_addr_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_addr_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_addr_id_s`
--

LOCK TABLES `krim_entity_addr_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_addr_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_addr_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_addr_t`
--

DROP TABLE IF EXISTS `krim_entity_addr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_addr_t` (
  `ENTITY_ADDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_1` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_2` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_3` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `CITY` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `STATE_PVC_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CD` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `ATTN_LINE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_FMT` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `MOD_DT` datetime DEFAULT NULL,
  `VALID_DT` datetime DEFAULT NULL,
  `VALID_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTITY_ADDR_ID`),
  UNIQUE KEY `KRIM_ENTITY_ADDR_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_ADDR_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_ADDR_TR1` (`ENT_TYP_CD`,`ENTITY_ID`),
  KEY `KRIM_ENTITY_ADDR_TR2` (`ADDR_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_ADDR_TR1` FOREIGN KEY (`ENT_TYP_CD`, `ENTITY_ID`) REFERENCES `krim_entity_ent_typ_t` (`ENT_TYP_CD`, `ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_ADDR_TR2` FOREIGN KEY (`ADDR_TYP_CD`) REFERENCES `krim_addr_typ_t` (`ADDR_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_addr_t`
--

LOCK TABLES `krim_entity_addr_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_addr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_addr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_afltn_id_s`
--

DROP TABLE IF EXISTS `krim_entity_afltn_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_afltn_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_afltn_id_s`
--

LOCK TABLES `krim_entity_afltn_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_afltn_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_afltn_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_afltn_t`
--

DROP TABLE IF EXISTS `krim_entity_afltn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_afltn_t` (
  `ENTITY_AFLTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `AFLTN_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_AFLTN_ID`),
  UNIQUE KEY `KRIM_ENTITY_AFLTN_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_AFLTN_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_AFLTN_TR2` (`AFLTN_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_AFLTN_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_AFLTN_TR2` FOREIGN KEY (`AFLTN_TYP_CD`) REFERENCES `krim_afltn_typ_t` (`AFLTN_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_afltn_t`
--

LOCK TABLES `krim_entity_afltn_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_afltn_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_afltn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_bio_t`
--

DROP TABLE IF EXISTS `krim_entity_bio_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_bio_t` (
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `BIRTH_DT` datetime DEFAULT NULL,
  `GNDR_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `DECEASED_DT` datetime DEFAULT NULL,
  `MARITAL_STATUS` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRIM_LANG_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SEC_LANG_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BIRTH_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `BIRTH_STATE_PVC_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `BIRTH_CITY` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `GEO_ORIGIN` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `GNDR_CHG_CD` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_BIO_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_bio_t`
--

LOCK TABLES `krim_entity_bio_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_bio_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_bio_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_cache_t`
--

DROP TABLE IF EXISTS `krim_entity_cache_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_cache_t` (
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FIRST_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MIDDLE_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `LAST_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRSN_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRMRY_DEPT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_TS` datetime DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_CACHE_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ENTITY_CACHE_TC1` (`PRNCPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_cache_t`
--

LOCK TABLES `krim_entity_cache_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_cache_t` DISABLE KEYS */;
INSERT INTO `krim_entity_cache_t` VALUES ('1100','admin','admin','PERSON','admin',NULL,'admin','admin, admin','','','','2013-07-13 14:08:39','f14cb482-add8-4b9d-b434-53dfa1cd744c');
/*!40000 ALTER TABLE `krim_entity_cache_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_ctznshp_id_s`
--

DROP TABLE IF EXISTS `krim_entity_ctznshp_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_ctznshp_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_ctznshp_id_s`
--

LOCK TABLES `krim_entity_ctznshp_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_ctznshp_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_ctznshp_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_ctznshp_t`
--

DROP TABLE IF EXISTS `krim_entity_ctznshp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_ctznshp_t` (
  `ENTITY_CTZNSHP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `CTZNSHP_STAT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `STRT_DT` datetime DEFAULT NULL,
  `END_DT` datetime DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_CTZNSHP_ID`),
  UNIQUE KEY `KRIM_ENTITY_CTZNSHP_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_CTZNSHP_TR1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_CTZNSHP_TR2` (`CTZNSHP_STAT_CD`),
  CONSTRAINT `KRIM_ENTITY_CTZNSHP_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_CTZNSHP_TR2` FOREIGN KEY (`CTZNSHP_STAT_CD`) REFERENCES `krim_ctznshp_stat_t` (`CTZNSHP_STAT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_ctznshp_t`
--

LOCK TABLES `krim_entity_ctznshp_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_ctznshp_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_ctznshp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_email_id_s`
--

DROP TABLE IF EXISTS `krim_entity_email_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_email_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_email_id_s`
--

LOCK TABLES `krim_entity_email_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_email_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_email_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_email_t`
--

DROP TABLE IF EXISTS `krim_entity_email_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_email_t` (
  `ENTITY_EMAIL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_ADDR` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_EMAIL_ID`),
  UNIQUE KEY `KRIM_ENTITY_EMAIL_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_EMAIL_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_EMAIL_TR1` (`ENT_TYP_CD`,`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_EMAIL_TR1` FOREIGN KEY (`ENT_TYP_CD`, `ENTITY_ID`) REFERENCES `krim_entity_ent_typ_t` (`ENT_TYP_CD`, `ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_email_t`
--

LOCK TABLES `krim_entity_email_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_email_t` DISABLE KEYS */;
INSERT INTO `krim_entity_email_t` VALUES ('1200','5B97C50B04066110E0404F8189D85213',1,'1100','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:55'),('1201','5B97C50B04076110E0404F8189D85213',1,'1101','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1202','5B97C50B04086110E0404F8189D85213',1,'1102','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1203','5B97C50B04096110E0404F8189D85213',1,'1103','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1204','5B97C50B040A6110E0404F8189D85213',1,'1104','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1205','5B97C50B040B6110E0404F8189D85213',1,'1105','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1206','5B97C50B040C6110E0404F8189D85213',1,'1106','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1207','5B97C50B040D6110E0404F8189D85213',1,'1107','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1208','5B97C50B040E6110E0404F8189D85213',1,'1108','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1209','5B97C50B040F6110E0404F8189D85213',1,'1109','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1210','5B97C50B04106110E0404F8189D85213',1,'1110','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1211','5B97C50B04116110E0404F8189D85213',1,'1111','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1212','5B97C50B04126110E0404F8189D85213',1,'1112','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1213','5B97C50B04136110E0404F8189D85213',1,'1113','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1214','5B97C50B04146110E0404F8189D85213',1,'1114','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1215','5B97C50B04156110E0404F8189D85213',1,'1115','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1216','5B97C50B04166110E0404F8189D85213',1,'1116','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1217','5B97C50B04176110E0404F8189D85213',1,'1117','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1218','5B97C50B04186110E0404F8189D85213',1,'1118','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1219','5B97C50B04196110E0404F8189D85213',1,'1119','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1220','5B97C50B041A6110E0404F8189D85213',1,'1120','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1221','5B97C50B041B6110E0404F8189D85213',1,'1121','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1222','5B97C50B041C6110E0404F8189D85213',1,'1122','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1223','5B97C50B041D6110E0404F8189D85213',1,'1123','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1224','5B97C50B041E6110E0404F8189D85213',1,'1124','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1225','5B97C50B041F6110E0404F8189D85213',1,'1125','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1226','5B97C50B04206110E0404F8189D85213',1,'1126','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1227','5B97C50B04216110E0404F8189D85213',1,'1127','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1228','5B97C50B04226110E0404F8189D85213',1,'1128','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1229','5B97C50B04236110E0404F8189D85213',1,'1129','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1230','5B97C50B04246110E0404F8189D85213',1,'1130','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1231','5B97C50B04256110E0404F8189D85213',1,'1131','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1232','5B97C50B04266110E0404F8189D85213',1,'1132','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01'),('1233','5B97C50B04276110E0404F8189D85213',1,'1133','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01'),('1234','5B97C50B04286110E0404F8189D85213',1,'1134','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01'),('1235','5B97C50B04296110E0404F8189D85213',1,'1135','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01'),('1237','5B97C50B042B6110E0404F8189D85213',1,'1137','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01');
/*!40000 ALTER TABLE `krim_entity_email_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_emp_id_s`
--

DROP TABLE IF EXISTS `krim_entity_emp_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_emp_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_emp_id_s`
--

LOCK TABLES `krim_entity_emp_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_emp_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_emp_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_emp_info_t`
--

DROP TABLE IF EXISTS `krim_entity_emp_info_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_emp_info_t` (
  `ENTITY_EMP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_AFLTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_STAT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BASE_SLRY_AMT` decimal(15,2) DEFAULT NULL,
  `PRMRY_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `PRMRY_DEPT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_REC_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTITY_EMP_ID`),
  UNIQUE KEY `KRIM_ENTITY_EMP_INFO_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_EMP_INFO_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_EMP_INFO_TI2` (`ENTITY_AFLTN_ID`),
  KEY `KRIM_ENTITY_EMP_INFO_TR2` (`EMP_STAT_CD`),
  KEY `KRIM_ENTITY_EMP_INFO_TR3` (`EMP_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_EMP_INFO_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_EMP_INFO_TR2` FOREIGN KEY (`EMP_STAT_CD`) REFERENCES `krim_emp_stat_t` (`EMP_STAT_CD`),
  CONSTRAINT `KRIM_ENTITY_EMP_INFO_TR3` FOREIGN KEY (`EMP_TYP_CD`) REFERENCES `krim_emp_typ_t` (`EMP_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_EMP_INFO_TR4` FOREIGN KEY (`ENTITY_AFLTN_ID`) REFERENCES `krim_entity_afltn_t` (`ENTITY_AFLTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_emp_info_t`
--

LOCK TABLES `krim_entity_emp_info_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_emp_info_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_emp_info_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_ent_typ_t`
--

DROP TABLE IF EXISTS `krim_entity_ent_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_ent_typ_t` (
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENT_TYP_CD`,`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_ENT_TYP_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_ENT_TYP_TI1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_ENT_TYP_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_ENT_TYP_TR2` FOREIGN KEY (`ENT_TYP_CD`) REFERENCES `krim_ent_typ_t` (`ENT_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_ent_typ_t`
--

LOCK TABLES `krim_entity_ent_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_ent_typ_t` DISABLE KEYS */;
INSERT INTO `krim_entity_ent_typ_t` VALUES ('PERSON','1100','5B97C50B03E06110E0404F8189D85213',1,'Y','2008-11-13 14:06:49'),('PERSON','1101','5B97C50B03E16110E0404F8189D85213',1,'Y','2008-11-13 14:06:49'),('PERSON','1102','5B97C50B03E26110E0404F8189D85213',1,'Y','2008-11-13 14:06:49'),('PERSON','1103','5B97C50B03E36110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1104','5B97C50B03E46110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1105','5B97C50B03E56110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1106','5B97C50B03E66110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1107','5B97C50B03E76110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1108','5B97C50B03E86110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1109','5B97C50B03E96110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1110','5B97C50B03EA6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1111','5B97C50B03EB6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1112','5B97C50B03EC6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1113','5B97C50B03ED6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1114','5B97C50B03EE6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1115','5B97C50B03EF6110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1116','5B97C50B03F06110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1117','5B97C50B03F16110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1118','5B97C50B03F26110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1119','5B97C50B03F36110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1120','5B97C50B03F46110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1121','5B97C50B03F56110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1122','5B97C50B03F66110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1123','5B97C50B03F76110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1124','5B97C50B03F86110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1125','5B97C50B03F96110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1126','5B97C50B03FA6110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1127','5B97C50B03FB6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1128','5B97C50B03FC6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1129','5B97C50B03FD6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1130','5B97C50B03FE6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1131','5B97C50B03FF6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1132','5B97C50B04006110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1133','5B97C50B04016110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1134','5B97C50B04026110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1135','5B97C50B04036110E0404F8189D85213',1,'Y','2008-11-13 14:06:55'),('PERSON','1136','5B97C50B04046110E0404F8189D85213',1,'Y','2008-11-13 14:06:55'),('PERSON','1137','5B97C50B04056110E0404F8189D85213',1,'Y','2008-11-13 14:06:55'),('PERSON','KR1000','CFBAA6F5F0D15D07E0406E0AC31D229B',1,'Y','2012-11-30 17:23:21'),('SYSTEM','1','5B1B6B919CCB6496E0404F8189D822F2',1,'Y','2008-11-07 09:49:02');
/*!40000 ALTER TABLE `krim_entity_ent_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_ethnic_id_s`
--

DROP TABLE IF EXISTS `krim_entity_ethnic_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_ethnic_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_ethnic_id_s`
--

LOCK TABLES `krim_entity_ethnic_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_ethnic_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_ethnic_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_ethnic_t`
--

DROP TABLE IF EXISTS `krim_entity_ethnic_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_ethnic_t` (
  `ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ETHNCTY_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SUB_ETHNCTY_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KRIM_ENTITY_ETHNIC_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_ETHNIC_TR1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_ETHNIC_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_ethnic_t`
--

LOCK TABLES `krim_entity_ethnic_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_ethnic_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_ethnic_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_ext_id_id_s`
--

DROP TABLE IF EXISTS `krim_entity_ext_id_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_ext_id_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_ext_id_id_s`
--

LOCK TABLES `krim_entity_ext_id_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_ext_id_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_ext_id_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_ext_id_t`
--

DROP TABLE IF EXISTS `krim_entity_ext_id_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_ext_id_t` (
  `ENTITY_EXT_ID_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EXT_ID_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EXT_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_EXT_ID_ID`),
  UNIQUE KEY `KRIM_ENTITY_EXT_ID_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_EXT_ID_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_EXT_ID_TR2` (`EXT_ID_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_EXT_ID_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_EXT_ID_TR2` FOREIGN KEY (`EXT_ID_TYP_CD`) REFERENCES `krim_ext_id_typ_t` (`EXT_ID_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_ext_id_t`
--

LOCK TABLES `krim_entity_ext_id_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_ext_id_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_ext_id_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_id_s`
--

DROP TABLE IF EXISTS `krim_entity_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_id_s`
--

LOCK TABLES `krim_entity_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_nm_id_s`
--

DROP TABLE IF EXISTS `krim_entity_nm_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_nm_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_nm_id_s`
--

LOCK TABLES `krim_entity_nm_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_nm_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_nm_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_nm_t`
--

DROP TABLE IF EXISTS `krim_entity_nm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_nm_t` (
  `ENTITY_NM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NM_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FIRST_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MIDDLE_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `LAST_NM` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `SUFFIX_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PREFIX_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `TITLE_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `NM_CHNG_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_NM_ID`),
  UNIQUE KEY `KRIM_ENTITY_NM_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_NM_TI1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_NM_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_nm_t`
--

LOCK TABLES `krim_entity_nm_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_nm_t` DISABLE KEYS */;
INSERT INTO `krim_entity_nm_t` VALUES ('1200','5B97C50B042C6110E0404F8189D85213',1,'1100','PRFR','admin',NULL,'admin',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1201','5B97C50B042D6110E0404F8189D85213',1,'1101','PRFR','Test',NULL,'Admin 1',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1202','5B97C50B042E6110E0404F8189D85213',1,'1102','PRFR','Test',NULL,'Admin 2',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1203','5B97C50B042F6110E0404F8189D85213',1,'1103','PRFR','Test',NULL,'User 1',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1204','5B97C50B04306110E0404F8189D85213',1,'1104','PRFR','Test',NULL,'User 2',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1205','5B97C50B04316110E0404F8189D85213',1,'1105','PRFR','Test',NULL,'User 3',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1206','5B97C50B04326110E0404F8189D85213',1,'1106','PRFR','Test',NULL,'User 4',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1207','5B97C50B04336110E0404F8189D85213',1,'1107','PRFR','Test',NULL,'User 5',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1208','5B97C50B04346110E0404F8189D85213',1,'1108','PRFR','Test',NULL,'User 6',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1209','5B97C50B04356110E0404F8189D85213',1,'1109','PRFR','quickstart',NULL,'quickstart',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1210','5B97C50B04366110E0404F8189D85213',1,'1110','PRFR','User',NULL,'One',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1211','5B97C50B04376110E0404F8189D85213',1,'1111','PRFR','User',NULL,'Two',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1212','5B97C50B04386110E0404F8189D85213',1,'1112','PRFR','User',NULL,'Three',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1213','5B97C50B04396110E0404F8189D85213',1,'1113','PRFR','user4',NULL,'user4',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1214','5B97C50B043A6110E0404F8189D85213',1,'1114','PRFR','Edna',NULL,'Employee',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1215','5B97C50B043B6110E0404F8189D85213',1,'1115','PRFR','Eric',NULL,'Employee',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1216','5B97C50B043C6110E0404F8189D85213',1,'1116','PRFR','Earl',NULL,'Employee',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1217','5B97C50B043D6110E0404F8189D85213',1,'1117','PRFR','Erin',NULL,'Employee',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1218','5B97C50B043E6110E0404F8189D85213',1,'1118','PRFR','fred',NULL,'fred',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1219','5B97C50B043F6110E0404F8189D85213',1,'1119','PRFR','fran',NULL,'fran',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1220','5B97C50B04406110E0404F8189D85213',1,'1120','PRFR','frank',NULL,'frank',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1221','5B97C50B04416110E0404F8189D85213',1,'1121','PRFR','Doug',NULL,'Neidermeyer',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1222','5B97C50B04426110E0404F8189D85213',1,'1122','PRFR','Identity',NULL,'Manager One',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1223','5B97C50B04436110E0404F8189D85213',1,'1123','PRFR','Identity',NULL,'Manager Two',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1224','5B97C50B04446110E0404F8189D85213',1,'1124','PRFR','Identity',NULL,'Manager Three',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1225','5B97C50B04456110E0404F8189D85213',1,'1125','PRFR','Admin',NULL,'One',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1226','5B97C50B04466110E0404F8189D85213',1,'1126','PRFR','Admin',NULL,'Two',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1227','5B97C50B04476110E0404F8189D85213',1,'1127','PRFR','Tester',NULL,'One',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1228','5B97C50B04486110E0404F8189D85213',1,'1128','PRFR','Tester',NULL,'Two',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1229','5B97C50B04496110E0404F8189D85213',1,'1129','PRFR','Developer',NULL,'One',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1230','5B97C50B044A6110E0404F8189D85213',1,'1130','PRFR','Developer',NULL,'Two',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1231','5B97C50B044B6110E0404F8189D85213',1,'1131','PRFR','Notification',NULL,'System',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1232','5B97C50B044C6110E0404F8189D85213',1,'1132','PRFR','Notification',NULL,'System Admin',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1233','5B97C50B044D6110E0404F8189D85213',1,'1133','PRFR','newAccountUser',NULL,'newAccountUser',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1234','5B97C50B044E6110E0404F8189D85213',1,'1134','PRFR','supervisor',NULL,'supervisor',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1235','5B97C50B044F6110E0404F8189D85213',1,'1135','PRFR','director',NULL,'director',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1236','5B97C50B04506110E0404F8189D85213',1,'1136','PRFR','KULUSER',NULL,'KULUSER',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1237','5B97C50B04516110E0404F8189D85213',1,'1137','PRFR','employee',NULL,'employee',NULL,NULL,'Y','Y','2008-11-13 14:07:08',NULL,NULL,NULL);
/*!40000 ALTER TABLE `krim_entity_nm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_phone_id_s`
--

DROP TABLE IF EXISTS `krim_entity_phone_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_phone_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_phone_id_s`
--

LOCK TABLES `krim_entity_phone_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_phone_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_phone_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_phone_t`
--

DROP TABLE IF EXISTS `krim_entity_phone_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_phone_t` (
  `ENTITY_PHONE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_NBR` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_EXTN_NBR` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_PHONE_ID`),
  UNIQUE KEY `KRIM_ENTITY_PHONE_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_PHONE_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_PHONE_TR1` (`ENT_TYP_CD`,`ENTITY_ID`),
  KEY `KRIM_ENTITY_PHONE_TR2` (`PHONE_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_PHONE_TR1` FOREIGN KEY (`ENT_TYP_CD`, `ENTITY_ID`) REFERENCES `krim_entity_ent_typ_t` (`ENT_TYP_CD`, `ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_PHONE_TR2` FOREIGN KEY (`PHONE_TYP_CD`) REFERENCES `krim_phone_typ_t` (`PHONE_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_phone_t`
--

LOCK TABLES `krim_entity_phone_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_phone_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_phone_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_priv_pref_t`
--

DROP TABLE IF EXISTS `krim_entity_priv_pref_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_priv_pref_t` (
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `SUPPRESS_NM_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `SUPPRESS_EMAIL_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_ADDR_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_PHONE_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_PRSNL_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_PRIV_PREF_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_priv_pref_t`
--

LOCK TABLES `krim_entity_priv_pref_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_priv_pref_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_priv_pref_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_residency_id_s`
--

DROP TABLE IF EXISTS `krim_entity_residency_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_residency_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_residency_id_s`
--

LOCK TABLES `krim_entity_residency_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_residency_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_residency_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_residency_t`
--

DROP TABLE IF EXISTS `krim_entity_residency_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_residency_t` (
  `ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DETERMINATION_METHOD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `IN_STATE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KRIM_ENTITY_RESIDENCY_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_RESIDENCY_TR1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_RESIDENCY_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_residency_t`
--

LOCK TABLES `krim_entity_residency_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_residency_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_residency_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_t`
--

DROP TABLE IF EXISTS `krim_entity_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_t` (
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_t`
--

LOCK TABLES `krim_entity_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_t` DISABLE KEYS */;
INSERT INTO `krim_entity_t` VALUES ('1','5B1B6B919CC96496E0404F8189D822F2',1,'Y','2008-11-07 09:49:02'),('1100','5B97C50B03946110E0404F8189D85213',1,'Y','2008-11-13 14:06:35'),('1101','5B97C50B03956110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1102','5B97C50B03966110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1103','5B97C50B03976110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1104','5B97C50B03986110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1105','5B97C50B03996110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1106','5B97C50B039A6110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1107','5B97C50B039B6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1108','5B97C50B039C6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1109','5B97C50B039D6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1110','5B97C50B039E6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1111','5B97C50B039F6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1112','5B97C50B03A06110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1113','5B97C50B03A16110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1114','5B97C50B03A26110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1115','5B97C50B03A36110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1116','5B97C50B03A46110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1117','5B97C50B03A56110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1118','5B97C50B03A66110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1119','5B97C50B03A76110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1120','5B97C50B03A86110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1121','5B97C50B03A96110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1122','5B97C50B03AA6110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1123','5B97C50B03AB6110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1124','5B97C50B03AC6110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1125','5B97C50B03AD6110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1126','5B97C50B03AE6110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1127','5B97C50B03AF6110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1128','5B97C50B03B06110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1129','5B97C50B03B16110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1130','5B97C50B03B26110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1131','5B97C50B03B36110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1132','5B97C50B03B46110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1133','5B97C50B03B56110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1134','5B97C50B03B66110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1135','5B97C50B03B76110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1136','5B97C50B03B86110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1137','5B97C50B03B96110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('KR1000','CFBAA6F5F0D05D07E0406E0AC31D229B',1,'Y','2012-11-30 17:23:03');
/*!40000 ALTER TABLE `krim_entity_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_visa_id_s`
--

DROP TABLE IF EXISTS `krim_entity_visa_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_visa_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_visa_id_s`
--

LOCK TABLES `krim_entity_visa_id_s` WRITE;
/*!40000 ALTER TABLE `krim_entity_visa_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_visa_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_entity_visa_t`
--

DROP TABLE IF EXISTS `krim_entity_visa_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_entity_visa_t` (
  `ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VISA_TYPE_KEY` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VISA_ENTRY` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VISA_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KRIM_ENTITY_VISA_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_VISA_TR1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_VISA_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_entity_visa_t`
--

LOCK TABLES `krim_entity_visa_t` WRITE;
/*!40000 ALTER TABLE `krim_entity_visa_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_entity_visa_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_ext_id_typ_t`
--

DROP TABLE IF EXISTS `krim_ext_id_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_ext_id_typ_t` (
  `EXT_ID_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENCR_REQ_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`EXT_ID_TYP_CD`),
  UNIQUE KEY `KRIM_EXT_ID_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_EXT_ID_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_ext_id_typ_t`
--

LOCK TABLES `krim_ext_id_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_ext_id_typ_t` DISABLE KEYS */;
INSERT INTO `krim_ext_id_typ_t` VALUES ('HR','5B97C50B038A6110E0404F8189D85213',1,'Human Resources ID','N','Y','05','2008-11-13 14:06:34'),('LICENSE','5B97C50B038B6110E0404F8189D85213',1,'Driver\'s License','N','Y','06','2008-11-13 14:06:34'),('LOGON','5B97C50B038C6110E0404F8189D85213',1,'Logon ID','N','Y','01','2008-11-13 14:06:34'),('RFID','5B97C50B038D6110E0404F8189D85213',1,'RFID Implant','N','Y','07','2008-11-13 14:06:34'),('SSN','5B97C50B038E6110E0404F8189D85213',1,'Social Security Number','Y','Y','02','2008-11-13 14:06:34'),('TAX','5B97C50B038F6110E0404F8189D85213',1,'Tax ID','Y','Y','03','2008-11-13 14:06:35');
/*!40000 ALTER TABLE `krim_ext_id_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_grp_attr_data_id_s`
--

DROP TABLE IF EXISTS `krim_grp_attr_data_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_grp_attr_data_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_grp_attr_data_id_s`
--

LOCK TABLES `krim_grp_attr_data_id_s` WRITE;
/*!40000 ALTER TABLE `krim_grp_attr_data_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_grp_attr_data_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_grp_attr_data_t`
--

DROP TABLE IF EXISTS `krim_grp_attr_data_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_grp_attr_data_t` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_GRP_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_GRP_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  KEY `KRIM_GRP_ATTR_DATA_TR3` (`GRP_ID`),
  KEY `KRIM_GRP_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_GRP_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_GRP_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `krim_attr_defn_t` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_GRP_ATTR_DATA_TR3` FOREIGN KEY (`GRP_ID`) REFERENCES `krim_grp_t` (`GRP_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_grp_attr_data_t`
--

LOCK TABLES `krim_grp_attr_data_t` WRITE;
/*!40000 ALTER TABLE `krim_grp_attr_data_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_grp_attr_data_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_grp_document_t`
--

DROP TABLE IF EXISTS `krim_grp_document_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_grp_document_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `GRP_NMSPC` varchar(100) COLLATE utf8_bin NOT NULL,
  `GRP_NM` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `GRP_DESC` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_grp_document_t`
--

LOCK TABLES `krim_grp_document_t` WRITE;
/*!40000 ALTER TABLE `krim_grp_document_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_grp_document_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_grp_id_s`
--

DROP TABLE IF EXISTS `krim_grp_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_grp_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_grp_id_s`
--

LOCK TABLES `krim_grp_id_s` WRITE;
/*!40000 ALTER TABLE `krim_grp_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_grp_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_grp_mbr_id_s`
--

DROP TABLE IF EXISTS `krim_grp_mbr_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_grp_mbr_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_grp_mbr_id_s`
--

LOCK TABLES `krim_grp_mbr_id_s` WRITE;
/*!40000 ALTER TABLE `krim_grp_mbr_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_grp_mbr_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_grp_mbr_t`
--

DROP TABLE IF EXISTS `krim_grp_mbr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_grp_mbr_t` (
  `GRP_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_TYP_CD` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'P',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`GRP_MBR_ID`),
  UNIQUE KEY `KRIM_GRP_MBR_TC0` (`OBJ_ID`),
  KEY `KRIM_GRP_MBR_TI1` (`MBR_ID`),
  KEY `KRIM_GRP_MBR_TR1` (`GRP_ID`),
  CONSTRAINT `KRIM_GRP_MBR_TR1` FOREIGN KEY (`GRP_ID`) REFERENCES `krim_grp_t` (`GRP_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_grp_mbr_t`
--

LOCK TABLES `krim_grp_mbr_t` WRITE;
/*!40000 ALTER TABLE `krim_grp_mbr_t` DISABLE KEYS */;
INSERT INTO `krim_grp_mbr_t` VALUES ('1100',1,'5B97C50B04B56110E0404F8189D85213','2001','testuser1','P',NULL,NULL,'2008-12-08 12:49:57'),('1101',1,'5B97C50B04B66110E0404F8189D85213','2001','testuser2','P',NULL,NULL,'2008-12-08 12:49:57'),('1102',1,'5B97C50B04B76110E0404F8189D85213','2002','testuser2','P',NULL,NULL,'2008-12-08 12:49:57'),('1103',1,'5B97C50B04B86110E0404F8189D85213','2002','testuser3','P',NULL,NULL,'2008-12-08 12:49:57'),('1104',1,'5B97C50B04B96110E0404F8189D85213','2003','testuser1','P',NULL,NULL,'2008-12-08 12:49:57'),('1105',1,'5B97C50B04BA6110E0404F8189D85213','2003','testuser2','P',NULL,NULL,'2008-12-08 12:49:57'),('1106',1,'5B97C50B04BB6110E0404F8189D85213','2003','testuser6','P',NULL,NULL,'2008-12-08 12:49:57'),('1107',1,'5B97C50B04BC6110E0404F8189D85213','2003','testuser4','P',NULL,NULL,'2008-12-08 12:49:57'),('1108',1,'5B97C50B04BD6110E0404F8189D85213','2003','testuser5','P',NULL,NULL,'2008-12-08 12:49:57'),('1109',1,'5B97C50B04BE6110E0404F8189D85213','2003','quickstart','P',NULL,NULL,'2008-12-08 12:49:57'),('1110',1,'5B97C50B04BF6110E0404F8189D85213','2004','quickstart','P',NULL,NULL,'2008-12-08 12:49:57'),('1111',1,'5B97C50B04C06110E0404F8189D85213','2004','user1','P',NULL,NULL,'2008-12-08 12:49:57'),('1112',1,'5B97C50B04C16110E0404F8189D85213','2004','user2','P',NULL,NULL,'2008-12-08 12:49:57'),('1113',1,'5B97C50B04C26110E0404F8189D85213','2005','user3','P',NULL,NULL,'2008-12-08 12:49:57'),('1114',1,'5B97C50B04C36110E0404F8189D85213','2006','user2','P',NULL,NULL,'2008-12-08 12:49:57'),('1115',1,'5B97C50B04C46110E0404F8189D85213','2007','idm1','P',NULL,NULL,'2008-12-08 12:49:57'),('1116',1,'5B97C50B04C56110E0404F8189D85213','2007','idm2','P',NULL,NULL,'2008-12-08 12:49:57'),('1117',1,'5B97C50B04C66110E0404F8189D85213','2007','idm3','P',NULL,NULL,'2008-12-08 12:49:57'),('1118',1,'5B97C50B04C76110E0404F8189D85213','2008','admin1','P',NULL,NULL,'2008-12-08 12:49:57'),('1119',1,'5B97C50B04C86110E0404F8189D85213','2008','admin2','P',NULL,NULL,'2008-12-08 12:49:57'),('1120',1,'5B97C50B04C96110E0404F8189D85213','2009','dev1','P',NULL,NULL,'2008-12-08 12:49:57'),('1121',1,'5B97C50B04CA6110E0404F8189D85213','2009','dev2','P',NULL,NULL,'2008-12-08 12:49:57'),('1122',1,'5B97C50B04CB6110E0404F8189D85213','2000','notsysadm','P',NULL,NULL,'2008-12-08 12:49:57'),('1123',1,'5B97C50B04CC6110E0404F8189D85213','1','admin','P',NULL,NULL,'2008-12-08 12:49:57'),('1124',1,'5B97C50B04CD6110E0404F8189D85213','1','notsys','P',NULL,NULL,'2008-12-08 12:49:57'),('1130',1,'5B97C50B04D36110E0404F8189D85213','2200','user1','P',NULL,NULL,'2008-12-08 12:49:57'),('1131',1,'5B97C50B04D46110E0404F8189D85213','2200','user3','P',NULL,NULL,'2008-12-08 12:49:57'),('1132',1,'5B97C50B04D56110E0404F8189D85213','2201','user2','P',NULL,NULL,'2008-12-08 12:49:57'),('1133',1,'5B97C50B04D66110E0404F8189D85213','2201','user4','P',NULL,NULL,'2008-12-08 12:49:57'),('1134',1,'5B97C50B04D76110E0404F8189D85213','2202','user1','P',NULL,NULL,'2008-12-08 12:49:57'),('1135',1,'5B97C50B04D86110E0404F8189D85213','2202','user2','P',NULL,NULL,'2008-12-08 12:49:57'),('1136',1,'5B97C50B04D96110E0404F8189D85213','2203','user3','P',NULL,NULL,'2008-12-08 12:49:57'),('1137',1,'5B97C50B04DA6110E0404F8189D85213','2203','user4','P',NULL,NULL,'2008-12-08 12:49:57'),('1200',1,'B64D2DB6-0985-764A-5E91-54BB144910B6','9997','fred','P',NULL,NULL,'2009-05-15 12:21:55'),('1201',1,'EC0A39A7-5DC2-90FE-F404-C8978F55C4E4','9997','fran','P',NULL,NULL,'2009-05-15 12:21:55'),('1202',1,'4AC6FA43-9979-0FBB-EA90-23BAC017EC78','9997','frank','P',NULL,NULL,'2009-05-15 12:21:55'),('1203',1,'A03D25AA-447F-0C4F-3A59-34E4B5C8B373','9998','user4','P',NULL,NULL,'2009-05-15 12:21:56'),('1204',1,'14374618-61BF-2F53-F50E-06C86B53CF62','9998','director','P',NULL,NULL,'2009-05-15 12:21:56'),('1205',1,'66236DC2-1780-E315-3217-CB963BA68533','9999','user2','P',NULL,NULL,'2009-05-15 12:21:56'),('1206',1,'1E2DC1FE-38AD-6EB3-39F4-9A525780F33E','9999','user3','P',NULL,NULL,'2009-05-15 12:21:56'),('1207',1,'6798B3E6C3C49827AE62E5F7A275A1A3','2000','admin','P',NULL,NULL,'2009-08-11 08:59:07');
/*!40000 ALTER TABLE `krim_grp_mbr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_grp_mbr_v`
--

DROP TABLE IF EXISTS `krim_grp_mbr_v`;
/*!50001 DROP VIEW IF EXISTS `krim_grp_mbr_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_grp_mbr_v` (
  `NMSPC_CD` tinyint NOT NULL,
  `grp_nm` tinyint NOT NULL,
  `GRP_ID` tinyint NOT NULL,
  `PRNCPL_NM` tinyint NOT NULL,
  `PRNCPL_ID` tinyint NOT NULL,
  `mbr_grp_nm` tinyint NOT NULL,
  `mbr_grp_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_grp_t`
--

DROP TABLE IF EXISTS `krim_grp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_grp_t` (
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_NM` varchar(80) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `GRP_DESC` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`),
  UNIQUE KEY `KRIM_GRP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_GRP_TC1` (`GRP_NM`,`NMSPC_CD`),
  KEY `KRIM_GRP_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_GRP_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_grp_t`
--

LOCK TABLES `krim_grp_t` WRITE;
/*!40000 ALTER TABLE `krim_grp_t` DISABLE KEYS */;
INSERT INTO `krim_grp_t` VALUES ('1','5B97C50B04A16110E0404F8189D85213',1,'WorkflowAdmin','KR-WKFLW','WorkflowAdmin','1','Y','2008-11-13 14:07:21'),('2000','5B97C50B04A26110E0404F8189D85213',1,'NotificationAdmin','KR-WKFLW','Notification system admin group for automation.','1','Y','2008-11-13 14:07:21'),('2001','5B97C50B04A36110E0404F8189D85213',1,'TestGroup1','KUALI','Test group 1 for KEN testing.','1','Y','2008-11-13 14:07:21'),('2002','5B97C50B04A46110E0404F8189D85213',1,'TestGroup2','KUALI','Test group 2 for KEN testing.','1','Y','2008-11-13 14:07:21'),('2003','5B97C50B04A56110E0404F8189D85213',1,'RiceTeam','KUALI','A test workgroup for KEN.','1','Y','2008-11-13 14:07:22'),('2004','5B97C50B04A66110E0404F8189D85213',1,'Group0','KUALI','Group0','1','Y','2008-11-13 14:07:22'),('2005','5B97C50B04A76110E0404F8189D85213',1,'Group1','KUALI','Group1','1','Y','2008-11-13 14:07:22'),('2006','5B97C50B04A86110E0404F8189D85213',1,'Group2','KUALI','Group2','1','Y','2008-11-13 14:07:22'),('2007','5B97C50B04A96110E0404F8189D85213',1,'Kuali Identity Managers','KUALI','Kuali Identity Managers','1','Y','2008-11-13 14:07:22'),('2008','5B97C50B04AA6110E0404F8189D85213',1,'Kuali Administrators','KUALI','Kuali Administrators','1','Y','2008-11-13 14:07:22'),('2009','5B97C50B04AB6110E0404F8189D85213',1,'Kuali Developers','KUALI','Kuali Developers','1','Y','2008-11-13 14:07:23'),('2200','5B97C50B04B06110E0404F8189D85213',1,'eDoc.Example1.SuperUsers','KUALI','edoclite documentation uses this. Do not change or delete.','1','Y','2008-11-13 14:07:23'),('2201','5B97C50B04B16110E0404F8189D85213',1,'eDoc.Example1.defaultExceptions','KUALI','edoclite documentation uses this. Do not change or delete.','1','Y','2008-11-13 14:07:24'),('2202','5B97C50B04B26110E0404F8189D85213',1,'eDoc.Example1.IUB.Workgroup','KUALI','Edoclite Documentation workgroup for example edoclite named eDoc.Example1','1','Y','2008-11-13 14:07:24'),('2203','5B97C50B04B36110E0404F8189D85213',1,'eDoc.Example1.IUPUI.Workgroup','KUALI','Edoclite Documentation workgroup for example edoclite named eDoc.Example1','1','Y','2008-11-13 14:07:24'),('9997','BB5ECDEF-27B7-44DF-F1B4-84406566C899',1,'RecipeMasters','KR-WKFLW','The masters of recipe making.  These people know it all!','1','Y','2009-05-15 12:21:55'),('9998','988E2790-350E-B816-B4BB-3730F27BCAF4',1,'ChickenRecipeMasters','KR-WKFLW','The masters of chicken recipes.  These people know it all!','1','Y','2009-05-15 12:21:55'),('9999','E96581EA-4C1B-605B-CE46-2A2EADD755FB',1,'MagazineManagers','KR-WKFLW','The managers of the magazine system.','1','Y','2009-05-15 12:21:56');
/*!40000 ALTER TABLE `krim_grp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_grp_v`
--

DROP TABLE IF EXISTS `krim_grp_v`;
/*!50001 DROP VIEW IF EXISTS `krim_grp_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_grp_v` (
  `NMSPC_CD` tinyint NOT NULL,
  `grp_nm` tinyint NOT NULL,
  `GRP_ID` tinyint NOT NULL,
  `grp_typ_nm` tinyint NOT NULL,
  `attr_nm` tinyint NOT NULL,
  `attr_val` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_perm_attr_data_t`
--

DROP TABLE IF EXISTS `krim_perm_attr_data_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_perm_attr_data_t` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PERM_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_PERM_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_PERM_ATTR_DATA_TI1` (`PERM_ID`),
  KEY `KRIM_PERM_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  KEY `KRIM_PERM_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_PERM_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_PERM_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `krim_attr_defn_t` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_PERM_ATTR_DATA_TR3` FOREIGN KEY (`PERM_ID`) REFERENCES `krim_perm_t` (`PERM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_perm_attr_data_t`
--

LOCK TABLES `krim_perm_attr_data_t` WRITE;
/*!40000 ALTER TABLE `krim_perm_attr_data_t` DISABLE KEYS */;
INSERT INTO `krim_perm_attr_data_t` VALUES ('181','5B4F09744A25EF33E0404F8189D84F24',1,'140','12','2','org.kuali.rice.kew.documentoperation.web.DocumentOperationAction'),('183','5B4F09744A27EF33E0404F8189D84F24',1,'141','12','2','org.kuali.rice.ksb.security.admin.web.JavaSecurityManagementAction'),('185','5B4F09744A29EF33E0404F8189D84F24',1,'142','12','2','org.kuali.rice.ksb.messaging.web.MessageQueueAction'),('187','5B4F09744A2BEF33E0404F8189D84F24',1,'143','12','2','org.kuali.rice.ksb.messaging.web.ServiceRegistryAction'),('189','5B4F09744A2DEF33E0404F8189D84F24',1,'144','12','2','org.kuali.rice.ksb.messaging.web.ThreadPoolAction'),('191','5B4F09744A2FEF33E0404F8189D84F24',1,'145','12','2','org.kuali.rice.ksb.messaging.web.QuartzQueueAction'),('192','5B4F09744A30EF33E0404F8189D84F24',1,'146','5','13','RiceDocument'),('193','5B4F09744A31EF33E0404F8189D84F24',1,'147','3','13','RiceDocument'),('194','5B4F09744A32EF33E0404F8189D84F24',1,'148','3','13','RiceDocument'),('195','5B4F09744A33EF33E0404F8189D84F24',1,'149','3','13','RiceDocument'),('196','5B4F09744A34EF33E0404F8189D84F24',1,'150','18','4','KR*'),('197','5B4F09744A35EF33E0404F8189D84F24',1,'151','19','4','KR*'),('198','5B4F09744A36EF33E0404F8189D84F24',1,'152','20','4','KR*'),('201','5B4F09744A39EF33E0404F8189D84F24',1,'155','21','4','KR*'),('202','5B4F09744A3AEF33E0404F8189D84F24',1,'156','3','13','RiceDocument'),('203','5B4F09744A39EF33E0404F8189D84F25',1,'833','21','4','KUALI'),('204','5B4F09744A39EF33E0404F8189D84F26',1,'834','18','4','KUALI'),('205','5B4F09744A39EF33E0404F8189D84F27',1,'835','19','4','KUALI'),('206','5B4F09744A39EF33E0404F8189D84F28',1,'836','20','4','KUALI'),('211','5B4F09744A43EF33E0404F8189D84F24',1,'161','10','4','KR*'),('213','5B4F09744A45EF33E0404F8189D84F24',1,'162','10','4','KR*'),('216','5B4F09744A48EF33E0404F8189D84F24',1,'163','16','4','KR*'),('217','5B4F09744A49EF33E0404F8189D84F24',1,'164','15','4','KR*'),('218','5B4F09744A4AEF33E0404F8189D84F24',1,'165','3','13','RiceDocument'),('219','5B4F09744A4BEF33E0404F8189D84F24',1,'166','12','4','KR*'),('220','5B4F09744A4CEF33E0404F8189D84F24',1,'167','8','13','KualiDocument'),('221','5B4F09744A4DEF33E0404F8189D84F24',1,'168','3','13','KualiDocument'),('222','5B4F09744A4EEF33E0404F8189D84F24',1,'290','8','13','RiceDocument'),('223','5B4F09744A4FEF33E0404F8189D84F24',1,'170','4','14','A'),('225','5B4F09744A51EF33E0404F8189D84F24',1,'172','4','14','F'),('226','5B4F09744A52EF33E0404F8189D84F24',1,'173','4','14','K'),('237','5B4F09744A5DEF33E0404F8189D84F24',1,'180','8','13','KualiDocument'),('238','5B4F09744A5EEF33E0404F8189D84F24',1,'180','8','16','PreRoute'),('239','5B4F09744A5FEF33E0404F8189D84F24',1,'181','8','13','KualiDocument'),('240','5B4F09744A60EF33E0404F8189D84F24',1,'181','8','15','R'),('243','5B4F09744A63EF33E0404F8189D84F24',1,'183','11','5','KimPrincipalImpl'),('244','5B4F09744A64EF33E0404F8189D84F24',1,'183','11','6','password'),('249','5B6013B3AD121A9CE0404F8189D87094',1,'167','8','16','PreRoute'),('376','606763510FC496D3E0404F8189D857A2',1,'259','9','13','KualiDocument'),('379','606763510FC796D3E0404F8189D857A2',1,'261','9','13','KualiDocument'),('384','606763510FCE96D3E0404F8189D857A2',1,'264','59','13','RiceDocument'),('385','606763510FCF96D3E0404F8189D857A2',1,'264','59','8','false'),('431','6314CC58CF59B7B5E0404F8189D84439',1,'306','11','5','IdentityManagementPersonDocument'),('432','6314CC58CF5AB7B5E0404F8189D84439',1,'306','11','6','taxId'),('478','662384B381BA67A1E0404F8189D868A6',1,'332','5','13','KualiDocument'),('479','662384B381BB67A1E0404F8189D868A6',1,'332','5','14','F'),('480','662384B381BE67A1E0404F8189D868A6',1,'333','5','13','KualiDocument'),('481','662384B381BF67A1E0404F8189D868A6',1,'333','5','14','K'),('482','662384B381C267A1E0404F8189D868A6',1,'334','5','13','KualiDocument'),('483','662384B381C367A1E0404F8189D868A6',1,'334','5','14','A'),('701','A207FBACC3764793896D0D769F6DBBFF',1,'701','10','5','RuleTemplate'),('702','37F35D51EE714A8B8A66802F89626C50',1,'702','10','5','EDocLiteStyle'),('703','950DE6A28C144A9B87CA2CFD9FF337C8',1,'703','10','5','EDocLiteDefinition'),('707','D270B9BA7E494507AD0B5D184AB13479',1,'707','10','5','RuleAttribute'),('719','45EEFA6F23FD4015B927D1D19F482888',1,'719','10','5','ParameterDetailType'),('720','FFF2C6639C6041F1B148AA9901C8A1F7',1,'720','10','5','ParameterNamespace'),('721','6D489E39C0BC4890803E3A5F412297BE',1,'721','10','5','ParameterType'),('751','A3142D53EC1541BE92223181852C37CF',1,'701','10','4','KR-WKFLW'),('752','6250F01B4CA243FCBA64A93FE4EAFE83',1,'702','10','4','KR-WKFLW'),('753','E0F57E480CF646A585BC92E91AB5FB1D',1,'703','10','4','KR-WKFLW'),('757','266BD230C3AA40EB9FC8079FBB960DF0',1,'707','10','4','KR-WKFLW'),('768','160C75C4C8A3411D8856A50F38487EB2',1,'719','10','4','KR-NS'),('769','992DE7BE4C3C46F8AEDBE7925CBEE6B3',1,'720','10','4','KR-NS'),('770','330AAEB4459F4A34BBF8FECEA9E23404',1,'721','10','4','KR-NS'),('800','606763510FD296D3E0404F8189D857A2',1,'801','10','4','KR-WKFLW'),('801','606763510FD396D3E0404F8189D857A2',1,'801','10','5','RuleTemplate'),('802','606763510FD596D3E0404F8189D857A2',1,'802','10','4','KR-WKFLW'),('803','606763510FD696D3E0404F8189D857A2',1,'802','10','5','EDocLiteStyle'),('804','606763510FD896D3E0404F8189D857A2',1,'803','10','4','KR-WKFLW'),('805','606763510FD996D3E0404F8189D857A2',1,'803','10','5','EDocLiteDefinition'),('806','606763510FDB96D3E0404F8189D857A2',1,'807','10','4','KR-WKFLW'),('807','606763510FDC96D3E0404F8189D857A2',1,'807','10','5','RuleAttribute'),('814','606763510FE396D3E0404F8189D857A2',1,'814','10','5','PessimisticLock'),('819','606763510FE696D3E0404F8189D857A2',1,'819','10','5','ParameterDetailType'),('820','606763510FE996D3E0404F8189D857A2',1,'820','10','5','ParameterNamespace'),('821','606763510FEC96D3E0404F8189D857A2',1,'821','10','5','ParameterType'),('864','606763510FE296D3E0404F8189D857A2',1,'814','10','4','KR-NS'),('868','606763510FE596D3E0404F8189D857A2',1,'819','10','4','KR-NS'),('869','606763510FE896D3E0404F8189D857A2',1,'820','10','4','KR-NS'),('870','606763510FEB96D3E0404F8189D857A2',1,'821','10','4','KR-NS'),('873','606763510FF396D3E0404F8189D857A2',1,'265','12','4','KR-WKFLW'),('874','606763510FF496D3E0404F8189D857A2',1,'265','12','2','org.kuali.rice.core.web.impex.IngesterAction'),('880','ECCB8A6C-A0DA-5311-6A57-40F743EA334C',1,'840','12','2','org.kuali.rice.ksb.messaging.web.ConfigViewerAction'),('881','717e2c18-89e4-11df-98b1-1300c9ee50c1',1,'841','3','13','KualiDocument'),('882','B6FDEDA86F977F26E0402E0AA9D728AF',1,'842','12','2','org.kuali.rice.core.web.cache.CacheAdminController'),('883','B7DBFABEFD2C8CBFE0402E0AA9D757C9',1,'843','67','4','KRMS_TEST'),('884','aa1d1400-6155-4819-8bad-e5dd81f9871b',1,'844','56','13','TermMaintenanceDocument'),('885','c43bc7f5-949e-4a85-b173-6a53d81f2762',1,'845','56','13','ContextMaintenanceDocument'),('886','d3e373ca-296b-4834-bd66-ba159ebe733a',1,'846','56','13','TermSpecificationMaintenanceDocument'),('887','BD74D7B702AC02CEE0402E0AA9D75B2D',1,'847','8','13','*'),('888','BFCADCB34018249AE0402E0AA9D7065D',1,'848','5','13','KualiDocument'),('889','BFCADCB34019249AE0402E0AA9D7065D',1,'848','5','14','C'),('KR1000','D0C2892F47EC9142E0406E0AC31D23D6',1,'KR1000','4','14','C'),('KRSAP882','CDD8032915D7BF1FE040F90A05B94313',1,'KRSAP10003','71','47','UifCompView*'),('KRSAP883','CDD8032915D8BF1FE040F90A05B94313',1,'KRSAP10003','71','51','UifCompView-SecureGroupView'),('KRSAP884','CDD8032915DBBF1FE040F90A05B94313',1,'KRSAP10004','71','47','UifCompView*'),('KRSAP885','CDD8032915DCBF1FE040F90A05B94313',1,'KRSAP10004','71','51','UifCompView-Page9'),('KRSAP886','CDD8032915DFBF1FE040F90A05B94313',1,'KRSAP10005','71','47','UifCompView*'),('KRSAP887','CDD8032915E0BF1FE040F90A05B94313',1,'KRSAP10005','71','51','UifCompView-SecureGroupEdit'),('KRSAP888','CDD8032915E3BF1FE040F90A05B94313',1,'KRSAP10006','70','47','UifCompView*'),('KRSAP889','CDD8032915E4BF1FE040F90A05B94313',1,'KRSAP10006','70','6','field6'),('KRSAP890','CDD8032915E7BF1FE040F90A05B94313',1,'KRSAP10007','70','47','UifCompView*'),('KRSAP891','CDD8032915E8BF1FE040F90A05B94313',1,'KRSAP10007','70','6','field7'),('KRSAP892','CDD8032915EBBF1FE040F90A05B94313',1,'KRSAP10008','70','47','UifCompView*'),('KRSAP893','CDD8032915ECBF1FE040F90A05B94313',1,'KRSAP10008','70','50','UifCompView-SecureFieldGroup1'),('KRSAP894','CDD8032915EFBF1FE040F90A05B94313',1,'KRSAP10009','70','47','UifCompView*'),('KRSAP895','CDD8032915F0BF1FE040F90A05B94313',1,'KRSAP10009','70','50','UifCompView-SecureFieldGroup2'),('KRSAP896','CDD8032915F3BF1FE040F90A05B94313',1,'KRSAP10010','73','47','UifCompView*'),('KRSAP897','CDD8032915F4BF1FE040F90A05B94313',1,'KRSAP10010','73','48','save'),('KRSAP898','CDD8032915F7BF1FE040F90A05B94313',1,'KRSAP10011','72','47','UifCompView*'),('KRSAP899','CDD8032915F8BF1FE040F90A05B94313',1,'KRSAP10011','72','52','UifCompView-SecureWidget'),('KRSAP900','CDD8032915FBBF1FE040F90A05B94313',1,'KRSAP10012','71','47','UifCompView*'),('KRSAP901','CDD8032915FCBF1FE040F90A05B94313',1,'KRSAP10012','71','49','list1'),('KRSAP902','CDD8032915FFBF1FE040F90A05B94313',1,'KRSAP10013','71','47','UifCompView*'),('KRSAP903','CDD803291600BF1FE040F90A05B94313',1,'KRSAP10013','71','49','list2'),('KRSAP904','CDD803291603BF1FE040F90A05B94313',1,'KRSAP10014','74','47','UifCompView*'),('KRSAP905','CDD803291604BF1FE040F90A05B94313',1,'KRSAP10014','74','49','list3'),('KRSAP906','CDD803291605BF1FE040F90A05B94313',1,'KRSAP10014','74','6','field2'),('KRSAP907','CDD803291608BF1FE040F90A05B94313',1,'KRSAP10015','74','47','UifCompView*'),('KRSAP908','CDD803291609BF1FE040F90A05B94313',1,'KRSAP10015','74','49','list3'),('KRSAP909','CDD80329160ABF1FE040F90A05B94313',1,'KRSAP10015','74','6','field3'),('KRSAP910','CDD80329160DBF1FE040F90A05B94313',1,'KRSAP10016','75','47','UifCompView*'),('KRSAP911','CDD80329160EBF1FE040F90A05B94313',1,'KRSAP10016','75','49','list4'),('KRSAP912','CDD80329160FBF1FE040F90A05B94313',1,'KRSAP10016','75','48','delete');
/*!40000 ALTER TABLE `krim_perm_attr_data_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_perm_attr_v`
--

DROP TABLE IF EXISTS `krim_perm_attr_v`;
/*!50001 DROP VIEW IF EXISTS `krim_perm_attr_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_perm_attr_v` (
  `tmpl_nmspc_cd` tinyint NOT NULL,
  `tmpl_nm` tinyint NOT NULL,
  `PERM_TMPL_ID` tinyint NOT NULL,
  `perm_nmspc_cd` tinyint NOT NULL,
  `perm_nm` tinyint NOT NULL,
  `PERM_ID` tinyint NOT NULL,
  `attr_nm` tinyint NOT NULL,
  `attr_val` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_perm_id_s`
--

DROP TABLE IF EXISTS `krim_perm_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_perm_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_perm_id_s`
--

LOCK TABLES `krim_perm_id_s` WRITE;
/*!40000 ALTER TABLE `krim_perm_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_perm_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_perm_rqrd_attr_id_s`
--

DROP TABLE IF EXISTS `krim_perm_rqrd_attr_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_perm_rqrd_attr_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_perm_rqrd_attr_id_s`
--

LOCK TABLES `krim_perm_rqrd_attr_id_s` WRITE;
/*!40000 ALTER TABLE `krim_perm_rqrd_attr_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_perm_rqrd_attr_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_perm_t`
--

DROP TABLE IF EXISTS `krim_perm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_perm_t` (
  `PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PERM_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`PERM_ID`),
  UNIQUE KEY `KRIM_PERM_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_PERM_T_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRIM_PERM_TI1` (`PERM_TMPL_ID`),
  KEY `KRIM_PERM_TI2` (`PERM_TMPL_ID`,`ACTV_IND`),
  CONSTRAINT `KRIM_PERM_TR1` FOREIGN KEY (`PERM_TMPL_ID`) REFERENCES `krim_perm_tmpl_t` (`PERM_TMPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_perm_t`
--

LOCK TABLES `krim_perm_t` WRITE;
/*!40000 ALTER TABLE `krim_perm_t` DISABLE KEYS */;
INSERT INTO `krim_perm_t` VALUES ('140','5B4F09744944EF33E0404F8189D84F24',1,'29','KR-WKFLW','Use Document Operation Screen','Allows users to access the Document Operation screen.','Y'),('141','5B4F09744945EF33E0404F8189D84F24',1,'29','KR-BUS','Use Java Security Management Screen','Allows users to access the Java Security Management screen.','Y'),('142','5B4F09744946EF33E0404F8189D84F24',1,'29','KR-BUS','Use Message Queue Screen','Allows users to access the Message Queue screen.','Y'),('143','5B4F09744947EF33E0404F8189D84F24',1,'29','KR-BUS','Use Service Registry Screen','Allows users to access the Service Registry screen.','Y'),('144','5B4F09744948EF33E0404F8189D84F24',1,'29','KR-BUS','Use Thread Pool Screen','Allows users to access the Thread Pool screen.','Y'),('145','5B4F09744949EF33E0404F8189D84F24',1,'29','KR-BUS','Use Quartz Queue Screen','Allows users to access the Quartz Queue screen.','Y'),('146','5B4F0974494AEF33E0404F8189D84F24',1,'9','KR-SYS','Ad Hoc Review RICE Document','Allows a user to receive ad hoc requests for RICE Documents.','Y'),('147','5B4F0974494BEF33E0404F8189D84F24',1,'3','KR-SYS','Administer Routing RICE Document','Allows users to open RICE Documents via the Super search option in Document Search and take Administrative workflow actions on them (such as approving the document, approving individual requests, or sending the document to a specified route node).','Y'),('148','5B4F0974494CEF33E0404F8189D84F24',1,'4','KR-SYS','Blanket Approve RICE Document','Allows access to the Blanket Approval button on RICE Documents.','Y'),('149','5B4F0974494DEF33E0404F8189D84F24',1,'10','KR-SYS','Initiate RICE Document','Authorizes the initiation of RICE Documents.','Y'),('150','5B4F0974494EEF33E0404F8189D84F24',1,'35','KR-SYS','Assign Role','Authorizes users to modify the information on the Assignees Tab of the Role Document and the Roles section of the Membership Tab on the Person Document for Roles with a Module Code beginning with KR.','Y'),('151','5B4F0974494FEF33E0404F8189D84F24',1,'36','KR-SYS','Grant Permission','Authorizes users to modify the information on the Permissions tab of the Role Document for roles with a module code beginning with KR.','Y'),('152','5B4F09744950EF33E0404F8189D84F24',1,'37','KR-SYS','Grant Responsibility','Authorizes users to modify the information on the Responsibility tab of the Role Document for roles with a Module Code that begins with KR.','Y'),('155','5B4F09744953EF33E0404F8189D84F24',1,'38','KR-SYS','Populate Group','Authorizes users to modify the information on the Assignees Tab of the Group Document and the Group section of the Membership Tab on the Person Document for groups with namespaces beginning with KR.','Y'),('156','5B4F09744954EF33E0404F8189D84F24',1,'2','KR-SYS','Copy RICE Document','Authorizes users to copy RICE Documents.','Y'),('161','5B4F09744959EF33E0404F8189D84F24',1,'24','KR-SYS','Inquire Into RICE Records','Allows users to access Kuali RICE inquiries.','Y'),('162','5B4F0974495AEF33E0404F8189D84F24',1,'23','KR-SYS','Look Up RICE Records','Allow users to access Kuali RICE lookups.','Y'),('163','5B4F0974495BEF33E0404F8189D84F24',1,'34','KR-SYS','Maintain System Parameter','Authorizes to initiate and edit the Parameter document for parameters with a module code beginning with KR.','Y'),('164','5B4F0974495CEF33E0404F8189D84F24',1,'32','KR-SYS','Modify Batch Job','Allows users to access and run Batch Jobs associated with KR modules via the Schedule link.','Y'),('165','5B4F0974495DEF33E0404F8189D84F24',1,'40','KR-SYS','Open RICE Document','Authorizes users to open RICE Documents.','Y'),('166','5B4F0974495EEF33E0404F8189D84F24',1,'29','KR-SYS','Use all RICE Screen','Allows users to access all RICE screens.','Y'),('167','5B4F0974495FEF33E0404F8189D84F24',1,'14','KUALI','Cancel Document','Authorizes users to cancel a document prior to it being submitted for routing.','Y'),('168','5B4F09744960EF33E0404F8189D84F24',1,'5','KUALI','Route Document','Authorizes users to submit a document for routing.','Y'),('170','5B4F09744962EF33E0404F8189D84F24',1,'8','KUALI','Take Requested Apprive Action','Authorizes users to take the Approve action on documents routed to them.','Y'),('172','5B4F09744964EF33E0404F8189D84F24',1,'8','KUALI','Take Requested FYI Action','Authorizes users to take the FYI action on documents routed to them.','Y'),('173','5B4F09744965EF33E0404F8189D84F24',1,'8','KUALI','Take Requested Acknowledge Action','Authorizes users to take the Acknowledge action on documents routed to them.','Y'),('174','5B4F09744966EF33E0404F8189D84F24',1,'1','KUALI','Log In Kuali Portal','Authorizes users to login to the Kuali portal.','Y'),('180','5B4F0974496CEF33E0404F8189D84F24',1,'16','KUALI','Edit Kuali ENROUTE Document Node Name PreRoute','Allows users to edit Kuali documents that are in ENROUTE status.','Y'),('181','5B4F0974496DEF33E0404F8189D84F24',1,'16','KUALI','Edit Kuali ENROUTE Document Route Status Code R','Allows users to edit Kuali documents that are in ENROUTE status.','Y'),('183','5B4F0974496FEF33E0404F8189D84F24',1,'27','KR-SYS','Full Unmask Tax Identification Number Payee ACH Document','Authorizes users to view the entire Tax Identification Number on the Payee ACH document and Inquiry.','Y'),('259','606763510FC396D3E0404F8189D857A2',1,'45','KUALI','Add Note / Attachment Kuali Document','Users who can add notes and attachments to any document answering to the Kuali Document parent document type.','Y'),('261','606763510FC696D3E0404F8189D857A2',1,'46','KUALI','View Note / Attachment Kuali Document','Authorizes users to view notes and attachments on documents answering to the KualiDocument parent document type.','Y'),('264','606763510FCD96D3E0404F8189D857A2',1,'47','KR-SYS','Delete Note / Attachment Kuali Document','Authorizes users to delete notes and attachments created by any user on documents answering to the RICE Document parent document type.','Y'),('265','606763510FF296D3E0404F8189D857A2',1,'29','KR-WKFLW','Use Screen XML Ingester Screen','Allows users to access the XML Ingester screen.','Y'),('289','611BE30E404E5818E0404F8189D801C2',1,'1','KR-NS','Administer Pessimistic Locking','Administer Pessimistic Locking','Y'),('290','5B4F09744961EF33E0404F8189D84F24',1,'15','KR-SYS','Save RICE Document','Users who can save RICE documents','Y'),('298','641E580969E31B49E0404F8189D86190',1,'1','KR-WKFLW','View Other Action List','Authorizes users to access other users action lists via the Help Desk Action List Login.','Y'),('299','641E580969E51B49E0404F8189D86190',1,'1','KR-WKFLW','Unrestricted Document Search','Users who can perform a document search with no criteria or result limits.','Y'),('306','6314CC58CF58B7B5E0404F8189D84439',1,'27','KR-SYS','Full Unmask Tax Identification Number Person Document','Authorizes users to view the entire Tax Identification Number on the Person document and inquiry.','Y'),('307','638DD46953F9BCD5E0404F8189D86240',1,'1','KR-IDM','Modify Entity','Users who can modify entity records in Kuali Identity Management.','Y'),('332','662384B381B967A1E0404F8189D868A6',1,'49','KR-SYS','Send FYI Request Kuali Document','Authorizes users to send FYI ad hoc requests for Kuali Documents','Y'),('333','662384B381BD67A1E0404F8189D868A6',1,'49','KR-SYS','Send Acknowledge Request Kuali Document','Authorizes users to send Acknowledge ad hoc requests for Kuali Documents','Y'),('334','662384B381C167A1E0404F8189D868A6',1,'49','KR-SYS','Send Approve Request Kuali Document','Authorizes users to send Approve ad hoc requests for Kuali Documents','Y'),('378','5B4F09744953EF33E0404F8189D84F29',1,'1','KR-IDM','Override Entity Privacy Preferences','Allows a user to override entity privacy preferences','Y'),('701','04C7706012554535AF8DC48DC6CC331C',1,'23','KR-WKFLW','Look Up Rule Template','Allow users to access the Rule Template lookup.','Y'),('702','471FF4B19A4648D4B84194530AE22158',1,'23','KR-WKFLW','Look Up Stylesheet','Allow users to access the Stylesheet lookup.','Y'),('703','E6875070DC5B4FD59193F7445C33E7AB',1,'23','KR-WKFLW','Look Up eDocLite','Allow users to access the eDocLite lookup.','Y'),('707','28CE0127B8A14AB4BFD39920C5398A69',1,'23','KR-WKFLW','Look Up Rule Attribute','Allow users to access the Rule Attribute lookup.','Y'),('719','45F0E8E1B9784756A3C0582980912991',1,'23','KR-NS','Look Up Parameter Component','Allow users to access the Parameter Component lookup.','Y'),('720','FFF2C6639C6041F1B148AA9901C8A1F7',1,'23','KR-NS','Look Up Namespace','Allow users to access the Namespace lookup.','Y'),('721','B1BD57EE64274E62AC9425C7FF185A44',1,'23','KR-NS','Look Up Parameter Type','Allow users to access the Parameter Type lookup.','Y'),('801','606763510FD196D3E0404F8189D857A2',1,'24','KR-WKFLW','Inquire Into Rule Template','Allow users to access the Rule Template inquiry.','Y'),('802','606763510FD496D3E0404F8189D857A2',1,'24','KR-WKFLW','Inquire Into Stylesheet','Allow users to access the Stylesheet inquiry.','Y'),('803','606763510FD796D3E0404F8189D857A2',1,'24','KR-WKFLW','Inquire Into eDocLite','Allow users to access the eDocLite inquiry.','Y'),('807','606763510FDA96D3E0404F8189D857A2',1,'24','KR-WKFLW','Inquire Into Rule Attribute','Allow users to access the Rule Attribute inquiry.','Y'),('814','606763510FE196D3E0404F8189D857A2',1,'24','KR-NS','Inquire Into Pessimistic','Allow users to access the Pessimistic Lock inquiry.','Y'),('819','606763510FE496D3E0404F8189D857A2',1,'24','KR-NS','Inquire Into Parameter Component','Allow users to access the Parameter Component inquiry.','Y'),('820','606763510FE796D3E0404F8189D857A2',1,'24','KR-NS','Inquire Into Namespace','Allow users to access the Namespace inquiry.','Y'),('821','606763510FEA96D3E0404F8189D857A2',1,'24','KR-NS','Inquire Into Parameter Type','Allow users to access the Parameter Type inquiry.','Y'),('833','5B4F09744953EF33E0404F8189D84F25',1,'38','KR-SYS','Populate Group KUALI Namespace','Authorizes users to modify the information on the Assignees Tab of the Group Document and the Group section of the Membership Tab on the Person Document for groups with the KUALI namespace.','Y'),('834','5B4F09744953EF33E0404F8189D84F26',1,'35','KR-SYS','Assign Role KUALI Namespace','Authorizes users to modify the information on the Assignees Tab of the Role Document and the Roles section of the Membership Tab on the Person Document for Roles with the KUALI namespace.','Y'),('835','5B4F09744953EF33E0404F8189D84F27',1,'36','KR-SYS','Grant Permission KUALI Namespace','Authorizes users to modify the information on the Permissions tab of the Role Document for roles with the KUALI namespace.','Y'),('836','5B4F09744953EF33E0404F8189D84F28',1,'37','KR-SYS','Grant Responsibility KUALI Namespace','Authorizes users to modify the information on the Responsibility tab of the Role Document for roles with the KUALI namespace.','Y'),('840','97469975-D110-9A65-5EE5-F21FD1BEB5B2',1,'29','KR-BUS','Use Configuration Viewer Screen','Allows users to access the Configuration Viewer screen','Y'),('841','65677409-89e4-11df-98b1-1300c9ee50c1',1,'51','KUALI','Add Message to Route Log',NULL,'Y'),('842','B6FDEDA86F967F26E0402E0AA9D728AF',1,'29','KR-SYS','Use Cache Adminstration Screen','Allows use of the cache administration screen','Y'),('843','B7DBFABEFD2B8CBFE0402E0AA9D757C9',1,'52','KR-RULE-TEST','Maintain KRMS Agenda','Allows creation and modification of agendas via the agenda editor','Y'),('844','0dbce939-4f22-4e9b-a4bb-1615c0f411a2',1,'42','KR-NS','Create Term Maintenance Document','Allows user to create a new Term maintainence document','Y'),('845','cefeed6d-b5e2-40aa-9034-137db317b532',1,'42','KR-NS','Create Context Maintenance Document','Allows user to create a new Context maintainence document','Y'),('846','02bd9acd-48d9-4fec-acbd-6a441c5ea8c2',1,'42','KR-NS','Create TermSpecification Maintenance Document','Allows user to create a new TermSpecification maintainence document','Y'),('847','BD74D7B702AB02CEE0402E0AA9D75B2D',1,'68','KR-WKFLW','Recall Document',NULL,'Y'),('848','BFCADCB34017249AE0402E0AA9D7065D',1,'49','KR-SYS','Send Complete Request Kuali Document','Authorizes users to send Complete ad hoc requests for Kuali Documents','Y'),('KR1000','D0C2892F47EB9142E0406E0AC31D23D6',1,'8','KUALI','Take Requested Complete Action','Authorizes users to take the Complete action on documents routed to them.','Y'),('KRSAP10003','CDD8032915D6BF1FE040F90A05B94313',1,'58','KR-SAP','View Kitchen Sink Group','Allows users to view the group in kitchen sink page 9.','Y'),('KRSAP10004','CDD8032915DABF1FE040F90A05B94313',1,'58','KR-SAP','View Kitchen Sink Page','Allows users to view page 9 in the kitchen sink','Y'),('KRSAP10005','CDD8032915DEBF1FE040F90A05B94313',1,'59','KR-SAP','Edit Kitchen Sink Group','Allows users to edit the group in page 9 of the kitchen sink','Y'),('KRSAP10006','CDD8032915E2BF1FE040F90A05B94313',1,'56','KR-SAP','View Kitchen Sink Field','Allows users to view the field in page 9 of the kitchen sink','Y'),('KRSAP10007','CDD8032915E6BF1FE040F90A05B94313',1,'57','KR-SAP','Edit Kitchen Sink Field','Allows users to edit the field in page 9 of the kitchen sink','Y'),('KRSAP10008','CDD8032915EABF1FE040F90A05B94313',1,'56','KR-SAP','View Kitchen Sink Field Group','Allows users to view the field group in page 9 of the kitchen sink','Y'),('KRSAP10009','CDD8032915EEBF1FE040F90A05B94313',1,'57','KR-SAP','Edit Kitchen Sink Field Group','Allows users to edit the field group in page 9 of the kitchen sink','Y'),('KRSAP10010','CDD8032915F2BF1FE040F90A05B94313',1,'62','KR-SAP','Perform Kitchen Sink Action','Allows users to perform the save action in page 9 of the kitchen sink','Y'),('KRSAP10011','CDD8032915F6BF1FE040F90A05B94313',1,'60','KR-SAP','View Kitchen Sink Widget','Allows users to view the quickfinder widget in page 9 of the kitchen sink','Y'),('KRSAP10012','CDD8032915FABF1FE040F90A05B94313',1,'63','KR-SAP','View Kitchen Sink Line','Allows users to view the collection line in page 9 of the kitchen sink','Y'),('KRSAP10013','CDD8032915FEBF1FE040F90A05B94313',1,'64','KR-SAP','Edit Kitchen Sink Line','Allows users to edit the collection line in page 9 of the kitchen sink','Y'),('KRSAP10014','CDD803291602BF1FE040F90A05B94313',1,'65','KR-SAP','View Kitchen Sink Line Field','Allows users to view the collection line field in page 9 of the kitchen sink','Y'),('KRSAP10015','CDD803291607BF1FE040F90A05B94313',1,'66','KR-SAP','Edit Kitchen Sink Line Field','Allows users to edit the collection line field in page 9 of the kitchen sink','Y'),('KRSAP10016','CDD80329160CBF1FE040F90A05B94313',1,'67','KR-SAP','Perform Kitchen Sink Line Action','Allows users to perform the delete line action in page 9 of the kitchen sink','Y');
/*!40000 ALTER TABLE `krim_perm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_perm_tmpl_id_s`
--

DROP TABLE IF EXISTS `krim_perm_tmpl_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_perm_tmpl_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_perm_tmpl_id_s`
--

LOCK TABLES `krim_perm_tmpl_id_s` WRITE;
/*!40000 ALTER TABLE `krim_perm_tmpl_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_perm_tmpl_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_perm_tmpl_t`
--

DROP TABLE IF EXISTS `krim_perm_tmpl_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_perm_tmpl_t` (
  `PERM_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`PERM_TMPL_ID`),
  UNIQUE KEY `KRIM_PERM_TMPL_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_PERM_TMPL_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRIM_PERM_TMPL_TI1` (`NMSPC_CD`,`NM`),
  KEY `KRIM_PERM_TMPL_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_PERM_TMPL_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_perm_tmpl_t`
--

LOCK TABLES `krim_perm_tmpl_t` WRITE;
/*!40000 ALTER TABLE `krim_perm_tmpl_t` DISABLE KEYS */;
INSERT INTO `krim_perm_tmpl_t` VALUES ('1','5ADF18B6D4857954E0404F8189D85002',1,'KUALI','Default',NULL,'1','Y'),('10','5ADF18B6D4BF7954E0404F8189D85002',1,'KR-SYS','Initiate Document',NULL,'3','Y'),('14','5ADF18B6D4CA7954E0404F8189D85002',1,'KR-WKFLW','Cancel Document',NULL,'8','Y'),('15','5ADF18B6D4CB7954E0404F8189D85002',1,'KR-WKFLW','Save Document',NULL,'8','Y'),('16','5ADF18B6D4CC7954E0404F8189D85002',1,'KR-NS','Edit Document',NULL,'8','Y'),('2','5ADF18B6D4AF7954E0404F8189D85002',1,'KR-NS','Copy Document',NULL,'3','Y'),('23','5ADF18B6D4DA7954E0404F8189D85002',1,'KR-NS','Look Up Records',NULL,'10','Y'),('24','5ADF18B6D4DB7954E0404F8189D85002',1,'KR-NS','Inquire Into Records',NULL,'10','Y'),('25','5ADF18B6D4DF7954E0404F8189D85002',1,'KR-NS','View Inquiry or Maintenance Document Field',NULL,'11','Y'),('26','5ADF18B6D4E07954E0404F8189D85002',1,'KR-NS','Modify Maintenance Document Field',NULL,'11','Y'),('27','5ADF18B6D4E17954E0404F8189D85002',1,'KR-NS','Full Unmask Field',NULL,'11','Y'),('28','5ADF18B6D4E27954E0404F8189D85002',1,'KR-NS','Partial Unmask Field',NULL,'11','Y'),('29','5ADF18B6D4E67954E0404F8189D85002',1,'KR-NS','Use Screen',NULL,'12','Y'),('3','5ADF18B6D4B07954E0404F8189D85002',1,'KR-WKFLW','Administer Routing for Document',NULL,'3','Y'),('30','5ADF18B6D4E97954E0404F8189D85002',1,'KR-NS','Perform Custom Maintenance Document Function',NULL,'13','Y'),('31','5ADF18B6D4EC7954E0404F8189D85002',1,'KR-NS','Use Transactional Document',NULL,'14','Y'),('32','5ADF18B6D4F07954E0404F8189D85002',1,'KR-NS','Modify Batch Job',NULL,'15','Y'),('33','5ADF18B6D4F17954E0404F8189D85002',1,'KR-NS','Upload Batch Input File(s)',NULL,'15','Y'),('34','5ADF18B6D4F67954E0404F8189D85002',1,'KR-NS','Maintain System Parameter',NULL,'16','Y'),('35','5ADF18B6D4FC7954E0404F8189D85002',1,'KR-IDM','Assign Role',NULL,'18','Y'),('36','5ADF18B6D5007954E0404F8189D85002',1,'KR-IDM','Grant Permission',NULL,'19','Y'),('37','5ADF18B6D5047954E0404F8189D85002',1,'KR-IDM','Grant Responsibility',NULL,'20','Y'),('38','5ADF18B6D5087954E0404F8189D85002',1,'KR-IDM','Populate Group',NULL,'21','Y'),('4','5ADF18B6D4B17954E0404F8189D85002',1,'KR-WKFLW','Blanket Approve Document',NULL,'3','Y'),('40','5ADF18B6D4AE7954E0404F8189D85002',1,'KR-NS','Open Document',NULL,'3','Y'),('42','603B735FA6C4FE21E0404F8189D8083B',1,'KR-NS','Create / Maintain Record(s)',NULL,'56','Y'),('43','603B735FA6C0FE21E0404F8189D8083B',1,'KR-NS','View Inquiry or Maintenance Document Section',NULL,'57','Y'),('44','603B735FA6C1FE21E0404F8189D8083B',1,'KR-NS','Modify Maintenance Document Section',NULL,'57','Y'),('45','606763510FC096D3E0404F8189D857A2',1,'KR-NS','Add Note / Attachment',NULL,'9','Y'),('46','606763510FC196D3E0404F8189D857A2',1,'KR-NS','View Note / Attachment',NULL,'9','Y'),('47','606763510FC296D3E0404F8189D857A2',1,'KR-NS','Delete Note / Attachment',NULL,'59','Y'),('49','662384B381B867A1E0404F8189D868A6',1,'KR-NS','Send Ad Hoc Request',NULL,'5','Y'),('5','5ADF18B6D4B27954E0404F8189D85002',1,'KR-WKFLW','Route Document',NULL,'3','Y'),('51','430ad531-89e4-11df-98b1-1300c9ee50c1',1,'KR-WKFLW','Add Message to Route Log',NULL,'3','Y'),('52','B7DBFABEFD2A8CBFE0402E0AA9D757C9',1,'KR-RULE','KRMS Agenda Permission','View/Maintain Agenda','67','Y'),('53','B7DBFABEFD578CBFE0402E0AA9D757C9',1,'KR-KRAD','Open View',NULL,'68','Y'),('54','B7DBFABEFD588CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit View',NULL,'68','Y'),('55','B7DBFABEFD598CBFE0402E0AA9D757C9',1,'KR-KRAD','Use View',NULL,'69','Y'),('56','B7DBFABEFD5A8CBFE0402E0AA9D757C9',1,'KR-KRAD','View Field',NULL,'70','Y'),('57','B7DBFABEFD5B8CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Field',NULL,'70','Y'),('58','B7DBFABEFD5C8CBFE0402E0AA9D757C9',1,'KR-KRAD','View Group',NULL,'71','Y'),('59','B7DBFABEFD5D8CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Group',NULL,'71','Y'),('60','B7DBFABEFD5E8CBFE0402E0AA9D757C9',1,'KR-KRAD','View Widget',NULL,'72','Y'),('61','B7DBFABEFD5F8CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Widget',NULL,'72','Y'),('62','B7DBFABEFD608CBFE0402E0AA9D757C9',1,'KR-KRAD','Perform Action',NULL,'73','Y'),('63','B7DBFABEFD618CBFE0402E0AA9D757C9',1,'KR-KRAD','View Line',NULL,'71','Y'),('64','B7DBFABEFD628CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Line',NULL,'71','Y'),('65','B7DBFABEFD638CBFE0402E0AA9D757C9',1,'KR-KRAD','View Line Field',NULL,'74','Y'),('66','B7DBFABEFD648CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Line Field',NULL,'74','Y'),('67','B7DBFABEFD658CBFE0402E0AA9D757C9',1,'KR-KRAD','Perform Line Action',NULL,'75','Y'),('68','BC5444677C24328CE0402E0AA9D77D80',1,'KR-WKFLW','Recall Document',NULL,'8','Y'),('8','5ADF18B6D4B77954E0404F8189D85002',1,'KR-NS','Take Requested Action',NULL,'4','Y'),('9','5ADF18B6D4BB7954E0404F8189D85002',1,'KR-WKFLW','Ad Hoc Review Document',NULL,'5','Y'),('KR1000','CDC48BA7E67A87DFE040F90A05B92A31',1,'KR-WKFLW','Super User Approve Single Action Request',NULL,'KR1000','Y'),('KR1001','CDC48BA7E67B87DFE040F90A05B92A31',1,'KR-WKFLW','Super User Approve Document',NULL,'KR1000','Y'),('KR1002','CDC48BA7E67C87DFE040F90A05B92A31',1,'KR-WKFLW','Super User Disapprove Document',NULL,'KR1000','Y'),('KR1003','CEA27F2DB2DC3593E040F90A05B924DB',1,'KR-SYS','Backdoor Restriction','Backdoor Restriction','KR1001','Y');
/*!40000 ALTER TABLE `krim_perm_tmpl_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_perm_v`
--

DROP TABLE IF EXISTS `krim_perm_v`;
/*!50001 DROP VIEW IF EXISTS `krim_perm_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_perm_v` (
  `tmpl_nmspc_cd` tinyint NOT NULL,
  `tmpl_nm` tinyint NOT NULL,
  `PERM_TMPL_ID` tinyint NOT NULL,
  `perm_nmspc_cd` tinyint NOT NULL,
  `perm_nm` tinyint NOT NULL,
  `PERM_ID` tinyint NOT NULL,
  `perm_typ_nm` tinyint NOT NULL,
  `SRVC_NM` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_person_document_t`
--

DROP TABLE IF EXISTS `krim_person_document_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_person_document_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `PRNCPL_PSWD` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `UNIV_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_person_document_t`
--

LOCK TABLES `krim_person_document_t` WRITE;
/*!40000 ALTER TABLE `krim_person_document_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_person_document_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_phone_typ_t`
--

DROP TABLE IF EXISTS `krim_phone_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_phone_typ_t` (
  `PHONE_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PHONE_TYP_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`PHONE_TYP_CD`),
  UNIQUE KEY `KRIM_PHONE_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_PHONE_TYP_TC1` (`PHONE_TYP_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_phone_typ_t`
--

LOCK TABLES `krim_phone_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_phone_typ_t` DISABLE KEYS */;
INSERT INTO `krim_phone_typ_t` VALUES ('HM','5B97C50B03906110E0404F8189D85213',1,'Home','Y','b','2008-11-13 14:06:35'),('MBL','5B97C50B03916110E0404F8189D85213',1,'Mobile','Y','c','2008-11-13 14:06:35'),('OTH','5B97C50B03926110E0404F8189D85213',1,'Other','Y','d','2008-11-13 14:06:35'),('WRK','5B97C50B03936110E0404F8189D85213',1,'Work','Y','a','2008-11-13 14:06:35');
/*!40000 ALTER TABLE `krim_phone_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_addr_mt`
--

DROP TABLE IF EXISTS `krim_pnd_addr_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_addr_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ADDR_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_3` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CITY` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `STATE_PVC_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CD` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `ENTITY_ADDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ATTN_LINE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_FMT` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `MOD_DT` datetime DEFAULT NULL,
  `VALID_DT` datetime DEFAULT NULL,
  `VALID_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_ADDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_addr_mt`
--

LOCK TABLES `krim_pnd_addr_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_addr_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_addr_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_afltn_mt`
--

DROP TABLE IF EXISTS `krim_pnd_afltn_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_afltn_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_AFLTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `AFLTN_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_AFLTN_ID`),
  CONSTRAINT `KRIM_PND_AFLTN_MT_FK1` FOREIGN KEY (`FDOC_NBR`) REFERENCES `krim_person_document_t` (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_afltn_mt`
--

LOCK TABLES `krim_pnd_afltn_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_afltn_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_afltn_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_ctznshp_mt`
--

DROP TABLE IF EXISTS `krim_pnd_ctznshp_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_ctznshp_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_CTZNSHP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `CTZNSHP_STAT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `STRT_DT` datetime DEFAULT NULL,
  `END_DT` datetime DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_CTZNSHP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_ctznshp_mt`
--

LOCK TABLES `krim_pnd_ctznshp_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_ctznshp_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_ctznshp_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_dlgn_mbr_attr_data_t`
--

DROP TABLE IF EXISTS `krim_pnd_dlgn_mbr_attr_data_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_dlgn_mbr_attr_data_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DLGN_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ATTR_DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_dlgn_mbr_attr_data_t`
--

LOCK TABLES `krim_pnd_dlgn_mbr_attr_data_t` WRITE;
/*!40000 ALTER TABLE `krim_pnd_dlgn_mbr_attr_data_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_dlgn_mbr_attr_data_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_dlgn_mbr_t`
--

DROP TABLE IF EXISTS `krim_pnd_dlgn_mbr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_dlgn_mbr_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DLGN_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DLGN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`,`DLGN_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_dlgn_mbr_t`
--

LOCK TABLES `krim_pnd_dlgn_mbr_t` WRITE;
/*!40000 ALTER TABLE `krim_pnd_dlgn_mbr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_dlgn_mbr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_dlgn_t`
--

DROP TABLE IF EXISTS `krim_pnd_dlgn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_dlgn_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DLGN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_TYP_CD` varchar(100) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`,`DLGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_dlgn_t`
--

LOCK TABLES `krim_pnd_dlgn_t` WRITE;
/*!40000 ALTER TABLE `krim_pnd_dlgn_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_dlgn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_email_mt`
--

DROP TABLE IF EXISTS `krim_pnd_email_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_email_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_EMAIL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_ADDR` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_EMAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_email_mt`
--

LOCK TABLES `krim_pnd_email_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_email_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_email_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_emp_info_mt`
--

DROP TABLE IF EXISTS `krim_pnd_emp_info_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_emp_info_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRMRY_DEPT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_EMP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `EMP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_REC_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_AFLTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_STAT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BASE_SLRY_AMT` decimal(15,2) DEFAULT NULL,
  `PRMRY_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_emp_info_mt`
--

LOCK TABLES `krim_pnd_emp_info_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_emp_info_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_emp_info_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_grp_attr_data_t`
--

DROP TABLE IF EXISTS `krim_pnd_grp_attr_data_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_grp_attr_data_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ATTR_DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_grp_attr_data_t`
--

LOCK TABLES `krim_pnd_grp_attr_data_t` WRITE;
/*!40000 ALTER TABLE `krim_pnd_grp_attr_data_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_grp_attr_data_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_grp_mbr_t`
--

DROP TABLE IF EXISTS `krim_pnd_grp_mbr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_grp_mbr_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GRP_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `MBR_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`,`GRP_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_grp_mbr_t`
--

LOCK TABLES `krim_pnd_grp_mbr_t` WRITE;
/*!40000 ALTER TABLE `krim_pnd_grp_mbr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_grp_mbr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_grp_prncpl_mt`
--

DROP TABLE IF EXISTS `krim_pnd_grp_prncpl_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_grp_prncpl_mt` (
  `GRP_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `GRP_NM` varchar(80) COLLATE utf8_bin NOT NULL,
  `GRP_TYPE` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`GRP_MBR_ID`,`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_grp_prncpl_mt`
--

LOCK TABLES `krim_pnd_grp_prncpl_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_grp_prncpl_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_grp_prncpl_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_nm_mt`
--

DROP TABLE IF EXISTS `krim_pnd_nm_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_nm_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_NM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FIRST_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MIDDLE_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `LAST_NM` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `SUFFIX_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PREFIX_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `TITLE_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `NM_CHNG_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_NM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_nm_mt`
--

LOCK TABLES `krim_pnd_nm_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_nm_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_nm_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_phone_mt`
--

DROP TABLE IF EXISTS `krim_pnd_phone_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_phone_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_PHONE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_NBR` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_EXTN_NBR` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_phone_mt`
--

LOCK TABLES `krim_pnd_phone_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_phone_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_phone_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_priv_pref_mt`
--

DROP TABLE IF EXISTS `krim_pnd_priv_pref_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_priv_pref_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `SUPPRESS_NM_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `SUPPRESS_EMAIL_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_ADDR_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_PHONE_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_PRSNL_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_priv_pref_mt`
--

LOCK TABLES `krim_pnd_priv_pref_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_priv_pref_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_priv_pref_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_role_mbr_attr_data_mt`
--

DROP TABLE IF EXISTS `krim_pnd_role_mbr_attr_data_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_role_mbr_attr_data_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ATTR_DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_role_mbr_attr_data_mt`
--

LOCK TABLES `krim_pnd_role_mbr_attr_data_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_role_mbr_attr_data_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_role_mbr_attr_data_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_role_mbr_mt`
--

DROP TABLE IF EXISTS `krim_pnd_role_mbr_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_role_mbr_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ROLE_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_role_mbr_mt`
--

LOCK TABLES `krim_pnd_role_mbr_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_role_mbr_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_role_mbr_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_role_mt`
--

DROP TABLE IF EXISTS `krim_pnd_role_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_role_mt` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_role_mt`
--

LOCK TABLES `krim_pnd_role_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_role_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_role_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_role_perm_t`
--

DROP TABLE IF EXISTS `krim_pnd_role_perm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_role_perm_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`,`ROLE_PERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_role_perm_t`
--

LOCK TABLES `krim_pnd_role_perm_t` WRITE;
/*!40000 ALTER TABLE `krim_pnd_role_perm_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_role_perm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_role_rsp_actn_mt`
--

DROP TABLE IF EXISTS `krim_pnd_role_rsp_actn_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_role_rsp_actn_mt` (
  `ROLE_RSP_ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTN_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_NBR` decimal(3,0) DEFAULT NULL,
  `ACTN_PLCY_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_RSP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `FRC_ACTN` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ROLE_RSP_ACTN_ID`,`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_role_rsp_actn_mt`
--

LOCK TABLES `krim_pnd_role_rsp_actn_mt` WRITE;
/*!40000 ALTER TABLE `krim_pnd_role_rsp_actn_mt` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_role_rsp_actn_mt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_pnd_role_rsp_t`
--

DROP TABLE IF EXISTS `krim_pnd_role_rsp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_pnd_role_rsp_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`,`ROLE_RSP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_pnd_role_rsp_t`
--

LOCK TABLES `krim_pnd_role_rsp_t` WRITE;
/*!40000 ALTER TABLE `krim_pnd_role_rsp_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_pnd_role_rsp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_prncpl_id_s`
--

DROP TABLE IF EXISTS `krim_prncpl_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_prncpl_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_prncpl_id_s`
--

LOCK TABLES `krim_prncpl_id_s` WRITE;
/*!40000 ALTER TABLE `krim_prncpl_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_prncpl_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_prncpl_t`
--

DROP TABLE IF EXISTS `krim_prncpl_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_prncpl_t` (
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRNCPL_NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRNCPL_PSWD` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`PRNCPL_ID`),
  UNIQUE KEY `KRIM_PRNCPL_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_PRNCPL_TC1` (`PRNCPL_NM`),
  KEY `KRIM_PRNCPL_TR1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_PRNCPL_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `krim_entity_t` (`ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_prncpl_t`
--

LOCK TABLES `krim_prncpl_t` WRITE;
/*!40000 ALTER TABLE `krim_prncpl_t` DISABLE KEYS */;
INSERT INTO `krim_prncpl_t` VALUES ('1','5B1B6B919CCA6496E0404F8189D822F2',1,'kr','1',NULL,'Y','2008-11-07 09:49:02'),('admin','5B97C50B03C56110E0404F8189D85213',1,'admin','1100',NULL,'Y','2008-11-13 14:06:43'),('admin1','5B97C50B03C66110E0404F8189D85213',1,'admin1','1125',NULL,'Y','2008-11-13 14:06:44'),('admin2','5B97C50B03C76110E0404F8189D85213',1,'admin2','1126',NULL,'Y','2008-11-13 14:06:44'),('dev1','5B97C50B03C86110E0404F8189D85213',1,'dev1','1129',NULL,'Y','2008-11-13 14:06:44'),('dev2','5B97C50B03C96110E0404F8189D85213',1,'dev2','1130',NULL,'Y','2008-11-13 14:06:44'),('director','5B97C50B03CA6110E0404F8189D85213',1,'director','1135',NULL,'Y','2008-11-13 14:06:44'),('doug','5B97C50B03CB6110E0404F8189D85213',1,'doug','1121',NULL,'Y','2008-11-13 14:06:44'),('earl','5B97C50B03CC6110E0404F8189D85213',1,'earl','1116',NULL,'Y','2008-11-13 14:06:45'),('edna','5B97C50B03CD6110E0404F8189D85213',1,'edna','1114',NULL,'Y','2008-11-13 14:06:45'),('employee','5B97C50B03CE6110E0404F8189D85213',1,'employee','1137',NULL,'Y','2008-11-13 14:06:45'),('eric','5B97C50B03CF6110E0404F8189D85213',1,'eric','1115',NULL,'Y','2008-11-13 14:06:45'),('erin','5B97C50B03D06110E0404F8189D85213',1,'erin','1117',NULL,'Y','2008-11-13 14:06:45'),('fran','5B97C50B03D16110E0404F8189D85213',1,'fran','1119',NULL,'Y','2008-11-13 14:06:45'),('frank','5B97C50B03D26110E0404F8189D85213',1,'frank','1120',NULL,'Y','2008-11-13 14:06:45'),('fred','5B97C50B03D36110E0404F8189D85213',1,'fred','1118',NULL,'Y','2008-11-13 14:06:46'),('guest','CADAFF9BD4F44598E040F90A05B96699',1,'guest','KR1000',NULL,'Y','2012-09-29 16:53:51'),('idm1','5B97C50B03D46110E0404F8189D85213',1,'idm1','1122',NULL,'Y','2008-11-13 14:06:46'),('idm2','5B97C50B03D56110E0404F8189D85213',1,'idm2','1123',NULL,'Y','2008-11-13 14:06:46'),('idm3','5B97C50B03D66110E0404F8189D85213',1,'idm3','1124',NULL,'Y','2008-11-13 14:06:46'),('kuluser','5B97C50B03BA6110E0404F8189D85213',1,'kuluser','1136',NULL,'Y','2008-11-13 14:06:42'),('newaccountuser','5B97C50B03D76110E0404F8189D85213',1,'newacctusr','1133',NULL,'Y','2008-11-13 14:06:46'),('notsys','5B97C50B03BB6110E0404F8189D85213',1,'notsys','1131',NULL,'Y','2008-11-13 14:06:42'),('notsysadm','5B97C50B03BC6110E0404F8189D85213',1,'notsysadm','1132',NULL,'Y','2008-11-13 14:06:42'),('quickstart','5B97C50B03D86110E0404F8189D85213',1,'quickstart','1109',NULL,'Y','2008-11-13 14:06:46'),('supervisor','5B97C50B03D96110E0404F8189D85213',1,'supervisr','1134',NULL,'Y','2008-11-13 14:06:47'),('test1','5B97C50B03DA6110E0404F8189D85213',1,'test1','1127',NULL,'Y','2008-11-13 14:06:47'),('test2','5B97C50B03DB6110E0404F8189D85213',1,'test2','1128',NULL,'Y','2008-11-13 14:06:47'),('testadmin1','5B97C50B03BD6110E0404F8189D85213',1,'testadmin1','1101',NULL,'Y','2008-11-13 14:06:42'),('testadmin2','5B97C50B03BE6110E0404F8189D85213',1,'testadmin2','1102',NULL,'Y','2008-11-13 14:06:42'),('testuser1','5B97C50B03BF6110E0404F8189D85213',1,'testuser1','1103',NULL,'Y','2008-11-13 14:06:42'),('testuser2','5B97C50B03C06110E0404F8189D85213',1,'testuser2','1104',NULL,'Y','2008-11-13 14:06:43'),('testuser3','5B97C50B03C16110E0404F8189D85213',1,'testuser3','1105',NULL,'Y','2008-11-13 14:06:43'),('testuser4','5B97C50B03C26110E0404F8189D85213',1,'testuser4','1106',NULL,'Y','2008-11-13 14:06:43'),('testuser5','5B97C50B03C36110E0404F8189D85213',1,'testuser5','1107',NULL,'Y','2008-11-13 14:06:43'),('testuser6','5B97C50B03C46110E0404F8189D85213',1,'testuser6','1108',NULL,'Y','2008-11-13 14:06:43'),('user1','5B97C50B03DC6110E0404F8189D85213',1,'user1','1110',NULL,'Y','2008-11-13 14:06:47'),('user2','5B97C50B03DD6110E0404F8189D85213',1,'user2','1111',NULL,'Y','2008-11-13 14:06:47'),('user3','5B97C50B03DE6110E0404F8189D85213',1,'user3','1112',NULL,'Y','2008-11-13 14:06:47'),('user4','5B97C50B03DF6110E0404F8189D85213',1,'user4','1113',NULL,'Y','2008-11-13 14:06:48');
/*!40000 ALTER TABLE `krim_prncpl_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_prncpl_v`
--

DROP TABLE IF EXISTS `krim_prncpl_v`;
/*!50001 DROP VIEW IF EXISTS `krim_prncpl_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_prncpl_v` (
  `PRNCPL_ID` tinyint NOT NULL,
  `PRNCPL_NM` tinyint NOT NULL,
  `FIRST_NM` tinyint NOT NULL,
  `LAST_NM` tinyint NOT NULL,
  `AFLTN_TYP_CD` tinyint NOT NULL,
  `CAMPUS_CD` tinyint NOT NULL,
  `EMP_STAT_CD` tinyint NOT NULL,
  `EMP_TYP_CD` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_role_document_t`
--

DROP TABLE IF EXISTS `krim_role_document_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_document_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ROLE_NMSPC` varchar(100) COLLATE utf8_bin NOT NULL,
  `ROLE_NM` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_document_t`
--

LOCK TABLES `krim_role_document_t` WRITE;
/*!40000 ALTER TABLE `krim_role_document_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_document_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_role_grp_v`
--

DROP TABLE IF EXISTS `krim_role_grp_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_grp_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_grp_v` (
  `NMSPC_CD` tinyint NOT NULL,
  `ROLE_NM` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `grp_nmspc_cd` tinyint NOT NULL,
  `GRP_NM` tinyint NOT NULL,
  `ROLE_MBR_ID` tinyint NOT NULL,
  `attr_nm` tinyint NOT NULL,
  `attr_val` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_role_id_s`
--

DROP TABLE IF EXISTS `krim_role_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_id_s`
--

LOCK TABLES `krim_role_id_s` WRITE;
/*!40000 ALTER TABLE `krim_role_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_mbr_attr_data_t`
--

DROP TABLE IF EXISTS `krim_role_mbr_attr_data_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_mbr_attr_data_t` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_ROLE_MBR_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_ROLE_MBR_ATTR_DATA_TI1` (`ROLE_MBR_ID`),
  KEY `KRIM_ROLE_MBR_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  KEY `KRIM_ROLE_MBR_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_ROLE_MBR_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_ROLE_MBR_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `krim_attr_defn_t` (`KIM_ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_mbr_attr_data_t`
--

LOCK TABLES `krim_role_mbr_attr_data_t` WRITE;
/*!40000 ALTER TABLE `krim_role_mbr_attr_data_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_mbr_attr_data_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_mbr_id_s`
--

DROP TABLE IF EXISTS `krim_role_mbr_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_mbr_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_mbr_id_s`
--

LOCK TABLES `krim_role_mbr_id_s` WRITE;
/*!40000 ALTER TABLE `krim_role_mbr_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_mbr_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_mbr_t`
--

DROP TABLE IF EXISTS `krim_role_mbr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_mbr_t` (
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_TYP_CD` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'P',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ROLE_MBR_ID`),
  UNIQUE KEY `KRIM_ROLE_MBR_TC0` (`OBJ_ID`),
  KEY `KRIM_ROLE_MBR_TI1` (`MBR_ID`),
  KEY `KRIM_ROLE_MBR_TI2` (`ROLE_ID`,`MBR_ID`,`MBR_TYP_CD`),
  KEY `KRIM_ROLE_MBR_TI3` (`MBR_ID`,`MBR_TYP_CD`),
  CONSTRAINT `KRIM_ROLE_MBR_TR1` FOREIGN KEY (`ROLE_ID`) REFERENCES `krim_role_t` (`ROLE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_mbr_t`
--

LOCK TABLES `krim_role_mbr_t` WRITE;
/*!40000 ALTER TABLE `krim_role_mbr_t` DISABLE KEYS */;
INSERT INTO `krim_role_mbr_t` VALUES ('1282',1,'5B4B421E43857717E0404F8189D821F7','90','1','P',NULL,NULL,'2009-08-21 03:52:51'),('1283',1,'D0B057F8E7B949EFA94AE8CDA47DE41B','63','admin','P',NULL,NULL,'2008-12-08 12:49:41'),('1284',1,'B7DBFABEFD2E8CBFE0402E0AA9D757C9','98','admin','P',NULL,NULL,'2012-01-31 16:04:04'),('KR1000',1,'CFBAA6F5F0D45D07E0406E0AC31D229B','KR1000','guest','P',NULL,NULL,'2012-11-30 17:41:57'),('KRSAP10003',1,'CDD8032915D2BF1FE040F90A05B94313','KRSAP10003','dev1','P',NULL,NULL,'2012-11-06 17:34:34'),('KRSAP10004',1,'CDD8032915D4BF1FE040F90A05B94313','KRSAP10004','admin','P',NULL,NULL,'2012-11-06 17:34:45'),('KRSAP10005',1,'CDD8032915D5BF1FE040F90A05B94313','KRSAP10004','dev1','P',NULL,NULL,'2012-11-06 17:34:48');
/*!40000 ALTER TABLE `krim_role_mbr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_perm_id_s`
--

DROP TABLE IF EXISTS `krim_role_perm_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_perm_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_perm_id_s`
--

LOCK TABLES `krim_role_perm_id_s` WRITE;
/*!40000 ALTER TABLE `krim_role_perm_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_perm_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_perm_t`
--

DROP TABLE IF EXISTS `krim_role_perm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_perm_t` (
  `ROLE_PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`ROLE_PERM_ID`),
  UNIQUE KEY `KRIM_ROLE_PERM_TC0` (`OBJ_ID`),
  KEY `KRIM_ROLE_PERM_TI1` (`PERM_ID`),
  KEY `KRIM_ROLE_PERM_TI2` (`PERM_ID`,`ACTV_IND`),
  CONSTRAINT `KRIM_ROLE_PERM_TR1` FOREIGN KEY (`PERM_ID`) REFERENCES `krim_perm_t` (`PERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_perm_t`
--

LOCK TABLES `krim_role_perm_t` WRITE;
/*!40000 ALTER TABLE `krim_role_perm_t` DISABLE KEYS */;
INSERT INTO `krim_role_perm_t` VALUES ('183','5C27A267EF5C7417E0404F8189D830A9',1,'63','140','Y'),('184','5C27A267EF5D7417E0404F8189D830A9',1,'63','141','Y'),('185','5C27A267EF5E7417E0404F8189D830A9',1,'63','142','Y'),('186','5C27A267EF5F7417E0404F8189D830A9',1,'63','143','Y'),('187','5C27A267EF607417E0404F8189D830A9',1,'63','144','Y'),('188','5C27A267EF617417E0404F8189D830A9',1,'63','145','Y'),('189','5C27A267EF627417E0404F8189D830A9',1,'1','146','Y'),('190','5C27A267EF637417E0404F8189D830A9',1,'63','147','Y'),('191','5C27A267EF647417E0404F8189D830A9',1,'63','148','Y'),('193','5C27A267EF667417E0404F8189D830A9',1,'1','149','Y'),('194','5C27A267EF677417E0404F8189D830A9',1,'63','150','Y'),('195','5C27A267EF687417E0404F8189D830A9',1,'63','151','Y'),('196','5C27A267EF697417E0404F8189D830A9',1,'63','152','Y'),('200','5C27A267EF6D7417E0404F8189D830A9',1,'63','155','Y'),('201','5C27A267EF6E7417E0404F8189D830A9',1,'1','156','Y'),('206','5C27A267EF737417E0404F8189D830A9',1,'1','161','Y'),('207','5C27A267EF747417E0404F8189D830A9',1,'1','162','Y'),('208','5C27A267EF757417E0404F8189D830A9',1,'63','163','Y'),('210','5C27A267EF777417E0404F8189D830A9',1,'63','164','Y'),('211','5C27A267EF787417E0404F8189D830A9',1,'1','165','Y'),('212','5C27A267EF797417E0404F8189D830A9',1,'66','167','Y'),('213','5C27A267EF7A7417E0404F8189D830A9',1,'66','168','Y'),('214','5C27A267EF7B7417E0404F8189D830A9',1,'60','290','Y'),('216','5C27A267EF7D7417E0404F8189D830A9',1,'59','170','Y'),('218','5C27A267EF7F7417E0404F8189D830A9',1,'89','172','Y'),('219','5C27A267EF807417E0404F8189D830A9',1,'88','173','Y'),('220','5C27A267EF817417E0404F8189D830A9',1,'1','174','Y'),('226','5C27A267EF877417E0404F8189D830A9',1,'60','180','Y'),('227','5C27A267EF887417E0404F8189D830A9',1,'59','181','Y'),('229','5C27A267EF8A7417E0404F8189D830A9',1,'63','183','Y'),('230','5C27A267EF5C7417E0404F8189D830AA',1,'63','378','Y'),('250','70086A2DF17D62E4E0404F8189D863CD',1,'95','156','Y'),('251','70086A2DF17E62E4E0404F8189D863CD',1,'97','181','Y'),('512','606763510FC596D3E0404F8189D857A2',1,'61','259','Y'),('516','606763510FC896D3E0404F8189D857A2',1,'83','261','Y'),('519','606763510FD096D3E0404F8189D857A2',1,'63','264','Y'),('550','611BE30E404F5818E0404F8189D801C2',1,'63','289','Y'),('552','61815E6C62D3B647E0404F8189D873B3',1,'90','290','Y'),('564','641E580969E41B49E0404F8189D86190',1,'63','298','Y'),('566','641E580969E61B49E0404F8189D86190',1,'63','299','Y'),('578','6314CC58CF5BB7B5E0404F8189D84439',1,'63','306','Y'),('616','662384B381C067A1E0404F8189D868A6',1,'83','333','Y'),('617','662384B381C467A1E0404F8189D868A6',1,'66','334','Y'),('618','662384B381BC67A1E0404F8189D868A6',1,'83','332','Y'),('683','6A869257B306EB49E0404F8189D8697A',1,'59','334','Y'),('701','C7C5063258494135A27DFDA4868F1D8B',1,'63','701','Y'),('702','6F5D842F42DC4018B6D9E8909A841062',1,'63','702','Y'),('703','70D86205B39A411F8A179555254E3737',1,'63','703','Y'),('707','B27306E137C94947BA8AFFD2892722D8',1,'63','707','Y'),('719','4B02BCD0AA764732997C77D139300784',1,'63','719','Y'),('720','7B920FA6145B47F6BF1B67B8EF3E96F4',1,'63','720','Y'),('721','A2794759AE9E47CB970DEABA625EA64C',1,'63','721','Y'),('730','05993B68C8034FD2A758E3441C6AD961',1,'1','161','Y'),('731','25F3589FEFFE4FFCBB4C0577AD722538',1,'1','162','Y'),('732','5AFD381C59B34E9D9BA26B70A739C9A2',1,'1','163','Y'),('808','606763510FDD96D3E0404F8189D857A2',1,'63','801','Y'),('809','606763510FDE96D3E0404F8189D857A2',1,'63','802','Y'),('810','606763510FDF96D3E0404F8189D857A2',1,'63','803','Y'),('811','606763510FE096D3E0404F8189D857A2',1,'63','807','Y'),('814','606763510FED96D3E0404F8189D857A2',1,'63','814','Y'),('819','606763510FEE96D3E0404F8189D857A2',1,'63','819','Y'),('820','606763510FEF96D3E0404F8189D857A2',1,'63','820','Y'),('821','606763510FF096D3E0404F8189D857A2',1,'63','821','Y'),('826','606763510FF196D3E0404F8189D857A2',1,'1','166','Y'),('827','606763510FF596D3E0404F8189D857A2',1,'63','265','Y'),('828','606763510FF696D3E0404F8189D857A2',1,'63','140','Y'),('829','606763510FF796D3E0404F8189D857A2',1,'63','141','Y'),('830','606763510FF896D3E0404F8189D857A2',1,'63','142','Y'),('831','606763510FF996D3E0404F8189D857A2',1,'63','143','Y'),('832','606763510FFA96D3E0404F8189D857A2',1,'63','144','Y'),('833','606763510FFB96D3E0404F8189D857A2',1,'63','145','Y'),('838','5C27A267EF6D7417E0404F8189D830AA',1,'63','833','Y'),('839','5C27A267EF6D7417E0404F8189D830AB',1,'63','834','Y'),('840','5C27A267EF6D7417E0404F8189D830AC',1,'63','835','Y'),('841','5C27A267EF6D7417E0404F8189D830AD',1,'63','835','Y'),('850','70086A2DF17C62E4E0404F8189D863CD',1,'63','307','Y'),('855','E83AB210-EB48-3BDE-2D6F-F6177869AE27',1,'63','840','Y'),('857','B6FDEDA86F987F26E0402E0AA9D728AF',1,'63','842','Y'),('858','B7DBFABEFD2F8CBFE0402E0AA9D757C9',1,'98','843','Y'),('859','45f8f55e-23d9-4278-ade8-ddfc870852e6',1,'98','844','Y'),('860','cd7cbc67-c0b2-4785-afa8-8c8d073b78df',1,'98','845','Y'),('861','83a270a0-1cdb-4440-ab8b-41cd8afc41d9',1,'98','846','Y'),('862','BD74D7B702AD02CEE0402E0AA9D75B2D',1,'60','847','Y'),('863','BFCADCB3401A249AE0402E0AA9D7065D',1,'83','848','Y'),('865','BFCADCB3401C249AE0402E0AA9D7065D',1,'61','167','Y'),('KR1000','D0C2892F47EE9142E0406E0AC31D23D6',1,'KR1001','KR1000','Y'),('KR1001','D0C2892F47EF9142E0406E0AC31D23D6',1,'KR1001','181','Y'),('KRSAP1003','CDD8032915D9BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10003','Y'),('KRSAP1004','CDD8032915DDBF1FE040F90A05B94313',1,'KRSAP10004','KRSAP10004','Y'),('KRSAP1005','CDD8032915E1BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10005','Y'),('KRSAP1006','CDD8032915E5BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10006','Y'),('KRSAP1007','CDD8032915E9BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10007','Y'),('KRSAP1008','CDD8032915EDBF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10008','Y'),('KRSAP1009','CDD8032915F1BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10009','Y'),('KRSAP1010','CDD8032915F5BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10010','Y'),('KRSAP1011','CDD8032915F9BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10011','Y'),('KRSAP1012','CDD8032915FDBF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10012','Y'),('KRSAP1013','CDD803291601BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10013','Y'),('KRSAP1014','CDD803291606BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10014','Y'),('KRSAP1015','CDD80329160BBF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10015','Y'),('KRSAP1016','CDD803291610BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10016','Y');
/*!40000 ALTER TABLE `krim_role_perm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_role_perm_v`
--

DROP TABLE IF EXISTS `krim_role_perm_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_perm_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_perm_v` (
  `NMSPC_CD` tinyint NOT NULL,
  `ROLE_NM` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `tmpl_nmspc_cd` tinyint NOT NULL,
  `tmpl_nm` tinyint NOT NULL,
  `PERM_TMPL_ID` tinyint NOT NULL,
  `perm_nmpsc_cd` tinyint NOT NULL,
  `perm_nm` tinyint NOT NULL,
  `PERM_ID` tinyint NOT NULL,
  `attr_nm` tinyint NOT NULL,
  `attr_val` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `krim_role_prncpl_v`
--

DROP TABLE IF EXISTS `krim_role_prncpl_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_prncpl_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_prncpl_v` (
  `NMSPC_CD` tinyint NOT NULL,
  `ROLE_NM` tinyint NOT NULL,
  `ROLE_ID` tinyint NOT NULL,
  `PRNCPL_NM` tinyint NOT NULL,
  `PRNCPL_ID` tinyint NOT NULL,
  `FIRST_NM` tinyint NOT NULL,
  `LAST_NM` tinyint NOT NULL,
  `ROLE_MBR_ID` tinyint NOT NULL,
  `attr_nm` tinyint NOT NULL,
  `attr_val` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `krim_role_role_v`
--

DROP TABLE IF EXISTS `krim_role_role_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_role_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_role_v` (
  `NMSPC_CD` tinyint NOT NULL,
  `ROLE_NM` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `mbr_role_nmspc_cd` tinyint NOT NULL,
  `mbr_role_nm` tinyint NOT NULL,
  `mbr_role_id` tinyint NOT NULL,
  `role_mbr_id` tinyint NOT NULL,
  `attr_nm` tinyint NOT NULL,
  `attr_val` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_role_rsp_actn_id_s`
--

DROP TABLE IF EXISTS `krim_role_rsp_actn_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_rsp_actn_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_rsp_actn_id_s`
--

LOCK TABLES `krim_role_rsp_actn_id_s` WRITE;
/*!40000 ALTER TABLE `krim_role_rsp_actn_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_rsp_actn_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_rsp_actn_t`
--

DROP TABLE IF EXISTS `krim_role_rsp_actn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_rsp_actn_t` (
  `ROLE_RSP_ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTN_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_NBR` decimal(3,0) DEFAULT NULL,
  `ACTN_PLCY_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_RSP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FRC_ACTN` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`ROLE_RSP_ACTN_ID`),
  UNIQUE KEY `KRIM_ROLE_RSP_ACTN_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ROLE_RSP_ACTN_TC1` (`ROLE_RSP_ID`,`ROLE_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_rsp_actn_t`
--

LOCK TABLES `krim_role_rsp_actn_t` WRITE;
/*!40000 ALTER TABLE `krim_role_rsp_actn_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_rsp_actn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_rsp_id_s`
--

DROP TABLE IF EXISTS `krim_role_rsp_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_rsp_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_rsp_id_s`
--

LOCK TABLES `krim_role_rsp_id_s` WRITE;
/*!40000 ALTER TABLE `krim_role_rsp_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_rsp_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_rsp_t`
--

DROP TABLE IF EXISTS `krim_role_rsp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_rsp_t` (
  `ROLE_RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`ROLE_RSP_ID`),
  UNIQUE KEY `KRIM_ROLE_RSP_TC0` (`OBJ_ID`),
  KEY `KRIM_ROLE_RSP_TI1` (`RSP_ID`),
  CONSTRAINT `KRIM_ROLE_RSP_TR1` FOREIGN KEY (`RSP_ID`) REFERENCES `krim_rsp_t` (`RSP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_rsp_t`
--

LOCK TABLES `krim_role_rsp_t` WRITE;
/*!40000 ALTER TABLE `krim_role_rsp_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_role_rsp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_role_t`
--

DROP TABLE IF EXISTS `krim_role_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_role_t` (
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_NM` varchar(80) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `KRIM_ROLE_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ROLE_TC1` (`ROLE_NM`,`NMSPC_CD`),
  KEY `KRIM_ROLE_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_ROLE_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_role_t`
--

LOCK TABLES `krim_role_t` WRITE;
/*!40000 ALTER TABLE `krim_role_t` DISABLE KEYS */;
INSERT INTO `krim_role_t` VALUES ('1','5ADF18B6D4847954E0404F8189D85002',1,'User','KUALI','This role derives its members from the users in the Principal table. This role gives users high-level permissions to interact with RICE documents and to login to KUALI.','2','Y','2008-11-04 14:37:10'),('59','5BABFACC4F62A8EEE0404F8189D8770F',1,'Approve Request Recipient','KR-WKFLW','This role derives its members from users with that have received an action request for a given document.','42','Y','2008-11-14 14:10:17'),('60','5BABFACC4F63A8EEE0404F8189D8770F',1,'Initiator','KR-WKFLW','This role derives its members from the initiator listed within the route log of a given document.','43','Y','2008-11-14 14:10:17'),('61','5BABFACC4F64A8EEE0404F8189D8770F',1,'Initiator or Reviewer','KR-WKFLW','This role derives its members from the initiator and action request recipients listed within the route log of a given document.','43','Y','2008-11-14 14:10:17'),('63','5B31640F0105ADF1E0404F8189D84647',1,'Technical Administrator','KR-SYS','This role can take superuser actions and blanket approve RICE documents as well as being able to modify and assign permissions, responsibilities and roles belonging to the KR namespaces.','1','Y','2008-11-08 11:55:22'),('66','5BABFACC4F61A8EEE0404F8189D8770F',1,'Document Editor','KR-NS','This role derives its members from users with the Edit Document permission for a given document type.,','45','Y','2008-11-14 14:10:17'),('67','5BABFACC4F65A8EEE0404F8189D8770F',1,'Router','KR-WKFLW','This role derives its members from the user who took the Complete action on a given document.','43','Y','2008-11-14 14:10:17'),('83','606763510FBF96D3E0404F8189D857A2',1,'Document Opener','KR-NS','This role derives its members from users with the Open Document permission for a given document type.,','60','Y','2009-01-13 19:26:16'),('88','6102F3FA08CE45CFE0404F8189D8317E',1,'Acknowledge Request Recipient','KR-WKFLW','This role derives its members from users with an acknowledge action request in the route log of a given document.','42','Y','2009-01-21 13:02:02'),('89','6102F3FA08CF45CFE0404F8189D8317E',1,'FYI Request Recipient','KR-WKFLW','This role derives its members from users with an FYI action request in the route log of a given document.','42','Y','2009-01-21 13:02:03'),('90','61815E6C62D0B647E0404F8189D873B3',1,'System User','KR-SYS','This role represents the KR System User, that is the user ID RICE uses when it takes programmed actions.','1','Y','2009-08-21 03:52:58'),('95','67F145466E8B9160E0404F8189D86771',1,'Document Initiator','KR-SYS','This role derives its members from users with the Initiate Document permission for a given document type.','66','Y','2009-08-21 03:52:58'),('97','67F145466EB09160E0404F8189D86771',1,'Non-Ad Hoc Approve Request Recipient','KR-WKFLW','This role derives its members from users with an Approval action request (that was not generated via the ad-hoc recipients tab) in the route log of a given document.','42','Y','2009-08-21 03:52:58'),('98','B7DBFABEFD2D8CBFE0402E0AA9D757C9',1,'Kuali Rules Management System Administrator','KR-RULE','This role maintains KRMS agendas and rules.','1','Y','2012-01-31 16:04:04'),('99','BD82F716EFEFF706E0402E0AA9D70A27',1,'Document Router','KR-WKFLW','This role derives its members from users with the Route Document permission for a given document type.','76','Y','2012-04-12 21:23:24'),('KR1000','CFBAA6F5F0D25D07E0406E0AC31D229B',1,'GuestRole','KUALI','This role is used for no login guest users.','1','Y','2012-11-30 17:23:57'),('KR1001','D0C2892F47ED9142E0406E0AC31D23D6',1,'Complete Request Recipient','KR-WKFLW','This role derives its members from users with an complete action request in the route log of a given document.','42','Y','2013-02-21 01:29:08'),('KRSAP10003','CDD8032915D1BF1FE040F90A05B94313',1,'Sample App Admin','KR-SAP','Test role for the sample app','1','Y','2012-11-06 17:34:21'),('KRSAP10004','CDD8032915D3BF1FE040F90A05B94313',1,'Sample App Users','KR-SAP','Test role for the sample app','1','Y','2012-11-06 17:34:40');
/*!40000 ALTER TABLE `krim_role_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_role_v`
--

DROP TABLE IF EXISTS `krim_role_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_v` (
  `NMSPC_CD` tinyint NOT NULL,
  `ROLE_NM` tinyint NOT NULL,
  `ROLE_ID` tinyint NOT NULL,
  `role_typ_nm` tinyint NOT NULL,
  `SRVC_NM` tinyint NOT NULL,
  `KIM_TYP_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_rsp_attr_data_t`
--

DROP TABLE IF EXISTS `krim_rsp_attr_data_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_rsp_attr_data_t` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `RSP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_RSP_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_RSP_ATTR_DATA_TR3` (`RSP_ID`),
  KEY `KRIM_RSP_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  KEY `KRIM_RSP_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_RSP_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_RSP_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `krim_attr_defn_t` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_RSP_ATTR_DATA_TR3` FOREIGN KEY (`RSP_ID`) REFERENCES `krim_rsp_t` (`RSP_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_rsp_attr_data_t`
--

LOCK TABLES `krim_rsp_attr_data_t` WRITE;
/*!40000 ALTER TABLE `krim_rsp_attr_data_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_rsp_attr_data_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_rsp_attr_v`
--

DROP TABLE IF EXISTS `krim_rsp_attr_v`;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_attr_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_rsp_attr_v` (
  `responsibility_type_name` tinyint NOT NULL,
  `rsp_TEMPLATE_NAME` tinyint NOT NULL,
  `rsp_namespace_code` tinyint NOT NULL,
  `rsp_NAME` tinyint NOT NULL,
  `rsp_id` tinyint NOT NULL,
  `attribute_name` tinyint NOT NULL,
  `attribute_value` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_rsp_id_s`
--

DROP TABLE IF EXISTS `krim_rsp_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_rsp_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_rsp_id_s`
--

LOCK TABLES `krim_rsp_id_s` WRITE;
/*!40000 ALTER TABLE `krim_rsp_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_rsp_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_rsp_role_actn_v`
--

DROP TABLE IF EXISTS `krim_rsp_role_actn_v`;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_role_actn_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_rsp_role_actn_v` (
  `rsp_nmspc_cd` tinyint NOT NULL,
  `rsp_id` tinyint NOT NULL,
  `NMSPC_CD` tinyint NOT NULL,
  `ROLE_NM` tinyint NOT NULL,
  `ROLE_ID` tinyint NOT NULL,
  `MBR_ID` tinyint NOT NULL,
  `MBR_TYP_CD` tinyint NOT NULL,
  `ROLE_MBR_ID` tinyint NOT NULL,
  `ACTN_TYP_CD` tinyint NOT NULL,
  `ACTN_PLCY_CD` tinyint NOT NULL,
  `FRC_ACTN` tinyint NOT NULL,
  `PRIORITY_NBR` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `krim_rsp_role_v`
--

DROP TABLE IF EXISTS `krim_rsp_role_v`;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_role_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_rsp_role_v` (
  `rsp_tmpl_nmspc_cd` tinyint NOT NULL,
  `rsp_tmpl_nm` tinyint NOT NULL,
  `rsp_nmspc_cd` tinyint NOT NULL,
  `rsp_nm` tinyint NOT NULL,
  `rsp_id` tinyint NOT NULL,
  `attr_nm` tinyint NOT NULL,
  `attr_val` tinyint NOT NULL,
  `NMSPC_CD` tinyint NOT NULL,
  `ROLE_NM` tinyint NOT NULL,
  `ROLE_ID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `krim_rsp_rqrd_attr_id_s`
--

DROP TABLE IF EXISTS `krim_rsp_rqrd_attr_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_rsp_rqrd_attr_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_rsp_rqrd_attr_id_s`
--

LOCK TABLES `krim_rsp_rqrd_attr_id_s` WRITE;
/*!40000 ALTER TABLE `krim_rsp_rqrd_attr_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_rsp_rqrd_attr_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_rsp_t`
--

DROP TABLE IF EXISTS `krim_rsp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_rsp_t` (
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `RSP_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`RSP_ID`),
  UNIQUE KEY `KRIM_RSP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_RSP_T_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRIM_RSP_TR1` (`RSP_TMPL_ID`),
  CONSTRAINT `KRIM_RSP_TR1` FOREIGN KEY (`RSP_TMPL_ID`) REFERENCES `krim_rsp_tmpl_t` (`RSP_TMPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_rsp_t`
--

LOCK TABLES `krim_rsp_t` WRITE;
/*!40000 ALTER TABLE `krim_rsp_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_rsp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_rsp_tmpl_id_s`
--

DROP TABLE IF EXISTS `krim_rsp_tmpl_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_rsp_tmpl_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_rsp_tmpl_id_s`
--

LOCK TABLES `krim_rsp_tmpl_id_s` WRITE;
/*!40000 ALTER TABLE `krim_rsp_tmpl_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_rsp_tmpl_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_rsp_tmpl_t`
--

DROP TABLE IF EXISTS `krim_rsp_tmpl_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_rsp_tmpl_t` (
  `RSP_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `KIM_TYP_ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`RSP_TMPL_ID`),
  UNIQUE KEY `KRIM_RSP_TMPL_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_RSP_TMPL_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRIM_RSP_TMPL_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_RSP_TMPL_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_rsp_tmpl_t`
--

LOCK TABLES `krim_rsp_tmpl_t` WRITE;
/*!40000 ALTER TABLE `krim_rsp_tmpl_t` DISABLE KEYS */;
INSERT INTO `krim_rsp_tmpl_t` VALUES ('1','5ADFE172441D6320E0404F8189D85169',1,'KR-WKFLW','Review','7',NULL,'Y'),('2','60432A73A6A49F65E0404F8189D86AA4',1,'KR-WKFLW','Resolve Exception','54',NULL,'Y');
/*!40000 ALTER TABLE `krim_rsp_tmpl_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_typ_attr_id_s`
--

DROP TABLE IF EXISTS `krim_typ_attr_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_typ_attr_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_typ_attr_id_s`
--

LOCK TABLES `krim_typ_attr_id_s` WRITE;
/*!40000 ALTER TABLE `krim_typ_attr_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_typ_attr_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_typ_attr_t`
--

DROP TABLE IF EXISTS `krim_typ_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_typ_attr_t` (
  `KIM_TYP_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`KIM_TYP_ATTR_ID`),
  UNIQUE KEY `KRIM_TYP_ATTR_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_TYP_ATTR_TC1` (`SORT_CD`,`KIM_TYP_ID`,`KIM_ATTR_DEFN_ID`,`ACTV_IND`),
  KEY `KRIM_TYP_ATTRIBUTE_TI1` (`KIM_TYP_ID`),
  KEY `KRIM_TYP_ATTR_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_TYP_ATTRIBUTE_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `krim_typ_t` (`KIM_TYP_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_TYP_ATTR_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `krim_attr_defn_t` (`KIM_ATTR_DEFN_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_typ_attr_t`
--

LOCK TABLES `krim_typ_attr_t` WRITE;
/*!40000 ALTER TABLE `krim_typ_attr_t` DISABLE KEYS */;
INSERT INTO `krim_typ_attr_t` VALUES ('1','5ADF18B6D4AD7954E0404F8189D85002',1,'a','3','13','Y'),('10','5ADF18B6D4C87954E0404F8189D85002',1,'c','8','15','Y'),('101','603B735FA6BBFE21E0404F8189D8083B',1,'a','56','13','Y'),('102','603B735FA6C2FE21E0404F8189D8083B',1,'b','56','7','Y'),('103','603B735FA6BEFE21E0404F8189D8083B',1,'a','57','5','Y'),('104','603B735FA6BFFE21E0404F8189D8083B',1,'b','57','44','Y'),('107','60432A73A6A39F65E0404F8189D86AA4',1,'a','54','13','Y'),('108','606763510FBD96D3E0404F8189D857A2',1,'a','59','13','Y'),('109','606763510FBE96D3E0404F8189D857A2',1,'b','59','8','Y'),('11','5ADF18B6D4C97954E0404F8189D85002',1,'b','8','16','Y'),('111','67F145466E909160E0404F8189D86771',1,'a','67','4','Y'),('112','67F145466E959160E0404F8189D86771',1,'b','14','13','Y'),('113','B7DBFABEFD3F8CBFE0402E0AA9D757C9',1,'a','68','47','Y'),('114','B7DBFABEFD408CBFE0402E0AA9D757C9',1,'a','69','47','Y'),('115','B7DBFABEFD418CBFE0402E0AA9D757C9',1,'b','69','10','Y'),('116','B7DBFABEFD428CBFE0402E0AA9D757C9',1,'a','70','47','Y'),('117','B7DBFABEFD438CBFE0402E0AA9D757C9',1,'b','70','50','Y'),('118','B7DBFABEFD448CBFE0402E0AA9D757C9',1,'c','70','6','Y'),('119','B7DBFABEFD458CBFE0402E0AA9D757C9',1,'a','71','47','Y'),('12','5ADF18B6D4CE7954E0404F8189D85002',1,'a','9','13','Y'),('120','B7DBFABEFD468CBFE0402E0AA9D757C9',1,'b','71','51','Y'),('121','B7DBFABEFD478CBFE0402E0AA9D757C9',1,'c','71','50','Y'),('122','B7DBFABEFD488CBFE0402E0AA9D757C9',1,'a','72','47','Y'),('123','B7DBFABEFD498CBFE0402E0AA9D757C9',1,'b','72','52','Y'),('124','B7DBFABEFD4A8CBFE0402E0AA9D757C9',1,'a','73','47','Y'),('125','B7DBFABEFD4B8CBFE0402E0AA9D757C9',1,'b','73','53','Y'),('126','B7DBFABEFD4C8CBFE0402E0AA9D757C9',1,'c','73','48','Y'),('127','B7DBFABEFD4D8CBFE0402E0AA9D757C9',1,'a','74','47','Y'),('128','B7DBFABEFD4E8CBFE0402E0AA9D757C9',1,'b','74','51','Y'),('129','B7DBFABEFD4F8CBFE0402E0AA9D757C9',1,'c','74','49','Y'),('130','B7DBFABEFD508CBFE0402E0AA9D757C9',1,'d','74','50','Y'),('131','B7DBFABEFD518CBFE0402E0AA9D757C9',1,'e','74','6','Y'),('132','B7DBFABEFD528CBFE0402E0AA9D757C9',1,'a','75','47','Y'),('133','B7DBFABEFD538CBFE0402E0AA9D757C9',1,'b','75','51','Y'),('134','B7DBFABEFD548CBFE0402E0AA9D757C9',1,'c','75','49','Y'),('135','B7DBFABEFD558CBFE0402E0AA9D757C9',1,'d','75','53','Y'),('136','B7DBFABEFD568CBFE0402E0AA9D757C9',1,'e','75','48','Y'),('137','BC5444677C23328CE0402E0AA9D77D80',1,'a','8','54','Y'),('138','69FA55ACC2EE2598E0404F8189D86880',1,'e','7','46','Y'),('14','5ADF18B6D4D07954E0404F8189D85002',1,'b','9','9','Y'),('15','5ADF18B6D4D87954E0404F8189D85002',1,'a','10','4','Y'),('16','5ADF18B6D4D97954E0404F8189D85002',1,'b','10','5','Y'),('17','5ADF18B6D4DD7954E0404F8189D85002',1,'a','11','5','Y'),('18','5ADF18B6D4DE7954E0404F8189D85002',1,'b','11','6','Y'),('19','5ADF18B6D4E47954E0404F8189D85002',1,'a','12','4','Y'),('2','5ADF18B6D4B67954E0404F8189D85002',1,'a','4','14','Y'),('20','5ADF18B6D4E57954E0404F8189D85002',1,'b','12','2','Y'),('21','5ADF18B6D4E87954E0404F8189D85002',1,'a','13','3','Y'),('22','5ADF18B6D4EB7954E0404F8189D85002',1,'a','14','10','Y'),('23','5ADF18B6D4EE7954E0404F8189D85002',1,'a','15','4','Y'),('24','5ADF18B6D4EF7954E0404F8189D85002',1,'b','15','1','Y'),('25','5ADF18B6D4F37954E0404F8189D85002',1,'a','16','4','Y'),('26','5ADF18B6D4F47954E0404F8189D85002',1,'b','16','5','Y'),('27','5ADF18B6D4F57954E0404F8189D85002',1,'c','16','11','Y'),('28','5ADF18B6D4F87954E0404F8189D85002',1,'a','17','12','Y'),('29','5ADF18B6D4FA7954E0404F8189D85002',1,'a','18','4','Y'),('3','5ADF18B6D4B97954E0404F8189D85002',1,'a','5','13','Y'),('30','5ADF18B6D4FB7954E0404F8189D85002',1,'b','18','18','Y'),('31','5ADF18B6D4FE7954E0404F8189D85002',1,'a','19','4','Y'),('32','5ADF18B6D4FF7954E0404F8189D85002',1,'b','19','19','Y'),('33','5ADF18B6D5027954E0404F8189D85002',1,'a','20','4','Y'),('34','5ADF18B6D5037954E0404F8189D85002',1,'b','20','20','Y'),('35','5ADF18B6D5067954E0404F8189D85002',1,'a','21','4','Y'),('36','5ADF18B6D5077954E0404F8189D85002',1,'b','21','21','Y'),('4','5ADF18B6D4BA7954E0404F8189D85002',1,'b','5','14','Y'),('7','5ADF18B6D4C17954E0404F8189D85002',1,'a','7','13','Y'),('8','5ADF18B6D4C27954E0404F8189D85002',1,'b','7','16','Y'),('80','5C4970B2B2E18277E0404F8189D80B30',1,'c','7','40','Y'),('81','5C4970B2B2E28277E0404F8189D80B30',1,'d','7','41','Y'),('89','5C7D997640695002E0404F8189D86F11',1,'a','42','42','Y'),('9','5ADF18B6D4C77954E0404F8189D85002',1,'a','8','13','Y'),('91','5C7D9976406B5002E0404F8189D86F11',1,'a','43','42','Y'),('95','5C997D14EAC3FE40E0404F8189D87DC5',1,'a','52','13','Y'),('96','5C997D14EAC4FE40E0404F8189D87DC5',1,'b','52','16','Y'),('97','5C997D14EAC5FE40E0404F8189D87DC5',1,'c','52','6','Y'),('KR1000','CDC48BA7E67787DFE040F90A05B92A31',1,'a','KR1000','13','Y'),('KR1001','CDC48BA7E67887DFE040F90A05B92A31',1,'b','KR1000','16','Y'),('KR1002','CDC48BA7E67987DFE040F90A05B92A31',1,'c','KR1000','15','Y'),('KR1003','CEA27F2DB2DB3593E040F90A05B924DB',1,'A','KR1001','KR1000','Y'),('KR1004','CEA27F2DB2DE3593E040F90A05B924DB',1,'b','21','KR1001','Y');
/*!40000 ALTER TABLE `krim_typ_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_typ_id_s`
--

DROP TABLE IF EXISTS `krim_typ_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_typ_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_typ_id_s`
--

LOCK TABLES `krim_typ_id_s` WRITE;
/*!40000 ALTER TABLE `krim_typ_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krim_typ_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krim_typ_t`
--

DROP TABLE IF EXISTS `krim_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krim_typ_t` (
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SRVC_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`KIM_TYP_ID`),
  UNIQUE KEY `KRIM_TYP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krim_typ_t`
--

LOCK TABLES `krim_typ_t` WRITE;
/*!40000 ALTER TABLE `krim_typ_t` DISABLE KEYS */;
INSERT INTO `krim_typ_t` VALUES ('1','5ADF18B6D4827954E0404F8189D85002',1,'Default',NULL,'Y','KUALI'),('10','5ADF18B6D4D77954E0404F8189D85002',1,'Namespace or Component','namespaceOrComponentPermissionTypeService','Y','KR-NS'),('11','5ADF18B6D4DC7954E0404F8189D85002',1,'Component Field','componentFieldPermissionTypeService','Y','KR-NS'),('12','5ADF18B6D4E37954E0404F8189D85002',1,'Namespace or Action','namespaceOrActionPermissionTypeService','Y','KR-NS'),('13','5ADF18B6D4E77954E0404F8189D85002',1,'Button','buttonPermissionTypeService','Y','KR-NS'),('14','5ADF18B6D4EA7954E0404F8189D85002',1,'Edit Mode & Document Type','documentTypeAndEditModePermissionTypeService','Y','KR-NS'),('15','5ADF18B6D4ED7954E0404F8189D85002',1,'Batch Feed or Job','batchFeedOrJobPermissionTypeService','Y','KR-NS'),('16','5ADF18B6D4F27954E0404F8189D85002',1,'Parameter','parameterPermissionTypeService','Y','KR-NS'),('17','5ADF18B6D4F77954E0404F8189D85002',1,'Campus','campusRoleService','Y','KR-NS'),('18','5ADF18B6D4F97954E0404F8189D85002',1,'Role','rolePermissionTypeService','Y','KR-IDM'),('19','5ADF18B6D4FD7954E0404F8189D85002',1,'Permission','permissionPermissionTypeService','Y','KR-IDM'),('2','5ADF18B6D4837954E0404F8189D85002',1,'Derived Role: Principal','activePrincipalRoleTypeService','Y','KR-IDM'),('20','5ADF18B6D5017954E0404F8189D85002',1,'Responsibility','responsibilityPermissionTypeService','Y','KR-IDM'),('21','5ADF18B6D5057954E0404F8189D85002',1,'Group','groupPermissionTypeService','Y','KR-IDM'),('3','5ADF18B6D4AC7954E0404F8189D85002',1,'Document Type (Permission)','documentTypePermissionTypeService','Y','KR-SYS'),('4','5ADF18B6D4B57954E0404F8189D85002',1,'Action Request Type','actionRequestTypePermissionTypeService','Y','KR-WKFLW'),('42','5ADF18B6D53B7954E0404F8189D85002',1,'Derived Role: Action Request','actionRequestDerivedRoleTypeService','Y','KR-WKFLW'),('43','5ADF18B6D53C7954E0404F8189D85002',1,'Derived Role: Route Log','routeLogDerivedRoleTypeService','Y','KR-WKFLW'),('45','5B6013B3AD131A9CE0404F8189D87094',1,'Derived Role: Permission (Edit Document)','documentEditorRoleTypeService','Y','KR-NS'),('5','5ADF18B6D4B87954E0404F8189D85002',1,'Ad Hoc Review','adhocReviewPermissionTypeService','Y','KR-WKFLW'),('52','5C997D14EAC2FE40E0404F8189D87DC5',1,'Document Type, Routing Node & Field(s)','documentTypeAndNodeAndFieldsPermissionTypeService','Y','KR-SYS'),('54','60432A73A6A29F65E0404F8189D86AA4',1,'Document Type (Responsibility)','documentTypeResponsibilityTypeService','Y','KR-KEW'),('56','603B735FA6B9FE21E0404F8189D8083B',1,'Document Type & Existing Records Only','documentTypeAndExistingRecordsOnlyPermissionTypeService','Y','KR-NS'),('57','603B735FA6BDFE21E0404F8189D8083B',1,'Component Section','componentSectionPermissionTypeService','Y','KR-NS'),('59','606763510FBB96D3E0404F8189D857A2',1,'Document Type & Relationship to Note Author','documentTypeAndRelationshipToNoteAuthorPermissionTypeService','Y','KR-NS'),('60','606763510FBC96D3E0404F8189D857A2',1,'Derived Role: Permission (Open Document)','documentOpenerRoleTypeService','Y','KR-NS'),('66','67F145466E8A9160E0404F8189D86771',1,'Derived Role: Permission (Initiate Document)','documentInitiatorRoleTypeService','Y','KR-SYS'),('67','67F145466E8F9160E0404F8189D86771',1,'Namespace','namespacePermissionTypeService','Y','KR-NS'),('68','B7DBFABEFD378CBFE0402E0AA9D757C9',1,'View','viewPermissionTypeService','Y','KR-KRAD'),('69','B7DBFABEFD388CBFE0402E0AA9D757C9',1,'View Edit Mode','viewEditModePermissionTypeService','Y','KR-KRAD'),('7','5ADF18B6D4C07954E0404F8189D85002',1,'Document Type, Routing Node & Action Information','reviewResponsibilityTypeService','Y','KR-WKFLW'),('70','B7DBFABEFD398CBFE0402E0AA9D757C9',1,'View Field','viewFieldPermissionTypeService','Y','KR-KRAD'),('71','B7DBFABEFD3A8CBFE0402E0AA9D757C9',1,'View Group','viewGroupPermissionTypeService','Y','KR-KRAD'),('72','B7DBFABEFD3B8CBFE0402E0AA9D757C9',1,'View Widget','viewWidgetPermissionTypeService','Y','KR-KRAD'),('73','B7DBFABEFD3C8CBFE0402E0AA9D757C9',1,'View Action','viewActionPermissionTypeService','Y','KR-KRAD'),('74','B7DBFABEFD3D8CBFE0402E0AA9D757C9',1,'View Line Field','viewLineFieldPermissionTypeService','Y','KR-KRAD'),('75','B7DBFABEFD3E8CBFE0402E0AA9D757C9',1,'View Line Action','viewLineActionPermissionTypeService','Y','KR-KRAD'),('76','BD82F716EFEEF706E0402E0AA9D70A27',1,'Derived Role: Permission (Route Document)','documentRouterRoleTypeService','Y','KR-WKFLW'),('8','5ADF18B6D4C67954E0404F8189D85002',1,'Document Type & Routing Node or State','documentTypeAndNodeOrStatePermissionTypeService','Y','KR-SYS'),('9','5ADF18B6D4CD7954E0404F8189D85002',1,'Document Type & Attachment Type','documentTypeAndAttachmentTypePermissionTypeService','Y','KR-NS'),('KR1000','CDC48BA7E67687DFE040F90A05B92A31',1,'Document Type, Route Node, and Route Status','documentTypeAndNodeAndRouteStatusPermissionTypeService','Y','KR-SYS'),('KR1001','CEA27F2DB2D93593E040F90A05B924DB',1,'Backdoor Restriction','backdoorRestrictionPermissionTypeService','Y','KR-SYS');
/*!40000 ALTER TABLE `krim_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krlc_cmp_t`
--

DROP TABLE IF EXISTS `krlc_cmp_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krlc_cmp_t` (
  `CAMPUS_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CAMPUS_NM` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_SHRT_NM` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_TYP_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`CAMPUS_CD`),
  UNIQUE KEY `KRNS_CAMPUS_TC0` (`OBJ_ID`),
  KEY `SH_CAMPUS_TR1` (`CAMPUS_TYP_CD`),
  CONSTRAINT `SH_CAMPUS_TR1` FOREIGN KEY (`CAMPUS_TYP_CD`) REFERENCES `krlc_cmp_typ_t` (`CAMPUS_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krlc_cmp_t`
--

LOCK TABLES `krlc_cmp_t` WRITE;
/*!40000 ALTER TABLE `krlc_cmp_t` DISABLE KEYS */;
INSERT INTO `krlc_cmp_t` VALUES ('BL','BLOOMINGTON','BLOOMINGTON','B','014F3DB2478DA448E043814FD28EA448',1,'Y'),('BX','BLGTN OFF CAMPUS','BLGTN OFF CA','P','014F3DB24798A448E043814FD28EA448',1,'Y'),('CO','COLUMBUS','COLUMBUS','F','014F3DB2478EA448E043814FD28EA448',1,'Y'),('EA','EAST-RICHMOND','EA-RICHMOND','B','014F3DB2478FA448E043814FD28EA448',1,'Y'),('FW','FORT WAYNE','FORT WAYNE','B','014F3DB24790A448E043814FD28EA448',1,'Y'),('IN','INDIANAPOLIS','INDIANAPOLIS','B','014F3DB24791A448E043814FD28EA448',1,'Y'),('KO','KOKOMO','KOKOMO','B','014F3DB24792A448E043814FD28EA448',1,'Y'),('NW','NORTHWEST-GARY','NW-GARY','B','014F3DB24793A448E043814FD28EA448',1,'Y'),('OC','OFF CAMPUS','OFF CAMPUS','F','014F3DB24794A448E043814FD28EA448',1,'Y'),('SB','SOUTH BEND','SOUTH BEND','B','014F3DB24795A448E043814FD28EA448',1,'Y'),('SE','SOUTHEAST-NEW ALBANY','SE-NEW ALBNY','B','014F3DB24796A448E043814FD28EA448',1,'Y'),('UA','UNIVERSITY ADMINISTRATION','UNIVER ADMIN','F','014F3DB24797A448E043814FD28EA448',1,'Y');
/*!40000 ALTER TABLE `krlc_cmp_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krlc_cmp_typ_t`
--

DROP TABLE IF EXISTS `krlc_cmp_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krlc_cmp_typ_t` (
  `CAMPUS_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMP_TYP_NM` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`CAMPUS_TYP_CD`),
  UNIQUE KEY `KRNS_CMP_TYP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krlc_cmp_typ_t`
--

LOCK TABLES `krlc_cmp_typ_t` WRITE;
/*!40000 ALTER TABLE `krlc_cmp_typ_t` DISABLE KEYS */;
INSERT INTO `krlc_cmp_typ_t` VALUES ('B','BOTH','1EFD72846DC90024E043814FD8810024',1,'Y'),('F','FISCAL','1EFD72846DCA0024E043814FD8810024',1,'Y'),('P','PHYSICAL','1EFD72846DCB0024E043814FD8810024',1,'Y');
/*!40000 ALTER TABLE `krlc_cmp_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krlc_cntry_t`
--

DROP TABLE IF EXISTS `krlc_cntry_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krlc_cntry_t` (
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `POSTAL_CNTRY_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PSTL_CNTRY_RSTRC_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `ALT_POSTAL_CNTRY_CD` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`POSTAL_CNTRY_CD`),
  UNIQUE KEY `KR_COUNTRY_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krlc_cntry_t`
--

LOCK TABLES `krlc_cntry_t` WRITE;
/*!40000 ALTER TABLE `krlc_cntry_t` DISABLE KEYS */;
INSERT INTO `krlc_cntry_t` VALUES ('AD','56908AA37904661BE0404F8189D81F46',1,'Andorra','N','Y','AND'),('AE','56908AA379DE661BE0404F8189D81F46',1,'United Arab Emirates','N','Y','ARE'),('AF','56908AA378FF661BE0404F8189D81F46',1,'Afghanistan','N','Y','AFG'),('AG','56908AA378FE661BE0404F8189D81F46',1,'Antigua and Barbuda','N','Y','ATG'),('AI','56908AA3790B661BE0404F8189D81F46',1,'Anguilla','N','Y','AIA'),('AL','56908AA37902661BE0404F8189D81F46',1,'Albania','N','Y','ALB'),('AM','56908AA37903661BE0404F8189D81F46',1,'Armenia','N','Y','ARM'),('AN','56908AA379A7661BE0404F8189D81F46',1,'Netherlands Antilles','N','Y','ANT'),('AO','56908AA37905661BE0404F8189D81F46',1,'Angola','N','Y','AGO'),('AQ','56908AA3790C661BE0404F8189D81F46',1,'Antarctica','N','Y','ATA'),('AR','56908AA37907661BE0404F8189D81F46',1,'Argentina','N','Y','ARG'),('AS','56908AA37906661BE0404F8189D81F46',1,'American Samoa','N','Y','ASM'),('AT','56908AA3790A661BE0404F8189D81F46',1,'Austria','N','Y','AUT'),('AU','56908AA37908661BE0404F8189D81F46',1,'Australia','N','Y','AUS'),('AW','56908AA378FD661BE0404F8189D81F46',1,'Aruba','N','Y','ABW'),('AX','56908AA3794E661BE0404F8189D81F46',1,'ÃƒÂ¿land Islands','N','Y','ALA'),('AZ','56908AA37901661BE0404F8189D81F46',1,'Azerbaijan','N','Y','AZE'),('BA','56908AA37915661BE0404F8189D81F46',1,'Bosnia and Herzegovina','N','Y','BIH'),('BB','56908AA3790E661BE0404F8189D81F46',1,'Barbados','N','Y','BRB'),('BD','56908AA37913661BE0404F8189D81F46',1,'Bangladesh','N','Y','BGD'),('BE','56908AA37911661BE0404F8189D81F46',1,'Belgium','N','Y','BEL'),('BF','56908AA37909661BE0404F8189D81F46',1,'Burkina Faso','N','Y','BFA'),('BG','56908AA3791F661BE0404F8189D81F46',1,'Bulgaria','N','Y','BGR'),('BH','56908AA3790D661BE0404F8189D81F46',1,'Bahrain','N','Y','BHR'),('BI','56908AA37922661BE0404F8189D81F46',1,'Burundi','N','Y','BDI'),('BJ','56908AA37918661BE0404F8189D81F46',1,'Benin','N','Y','BEN'),('BL','56908AA3791B661BE0404F8189D81F46',1,'Saint BarthÃƒÂ©lemy','N','Y','BLM'),('BM','56908AA37910661BE0404F8189D81F46',1,'Bermuda','N','Y','BMU'),('BN','56908AA37921661BE0404F8189D81F46',1,'Brunei Darussalam','N','Y','BRN'),('BO','56908AA37916661BE0404F8189D81F46',1,'Bolivia, Plurinational State Of','N','Y','BOL'),('BR','56908AA3791C661BE0404F8189D81F46',1,'Brazil','N','Y','BRA'),('BS','56908AA37912661BE0404F8189D81F46',1,'Bahamas','N','Y','BHS'),('BT','56908AA3791E661BE0404F8189D81F46',1,'Bhutan','N','Y','BTN'),('BV','56908AA37920661BE0404F8189D81F46',1,'Bouvet Island','N','Y','BVT'),('BW','56908AA3790F661BE0404F8189D81F46',1,'Botswana','N','Y','BWA'),('BY','56908AA37919661BE0404F8189D81F46',1,'Belarus','N','Y','BLR'),('BZ','56908AA37914661BE0404F8189D81F46',1,'Belize','N','Y','BLZ'),('CA','56908AA37923661BE0404F8189D81F46',1,'Canada','N','Y','CAN'),('CC','56908AA3792C661BE0404F8189D81F46',1,'Cocos (Keeling) Islands','N','Y','CCK'),('CD','56908AA37928661BE0404F8189D81F46',1,'Congo, The Democratic Republic Of The','N','Y','COD'),('CF','56908AA37933661BE0404F8189D81F46',1,'Central African Republic','N','Y','CAF'),('CG','56908AA37927661BE0404F8189D81F46',1,'Congo','N','Y','COG'),('CH','56908AA379DD661BE0404F8189D81F46',1,'Switzerland','N','Y','CHE'),('CI','56908AA37973661BE0404F8189D81F46',1,'CÃƒÂ´te D\'Ivoire','N','Y','CIV'),('CK','56908AA37936661BE0404F8189D81F46',1,'Cook Islands','N','Y','COK'),('CL','56908AA3792A661BE0404F8189D81F46',1,'Chile','N','Y','CHL'),('CM','56908AA3792D661BE0404F8189D81F46',1,'Cameroon','N','Y','CMR'),('CN','56908AA37929661BE0404F8189D81F46',1,'China','N','Y','CHN'),('CO','56908AA3792F661BE0404F8189D81F46',1,'Colombia','N','Y','COL'),('CR','56908AA37932661BE0404F8189D81F46',1,'Costa Rica','N','Y','CRI'),('CU','56908AA37934661BE0404F8189D81F46',1,'Cuba','N','Y','CUB'),('CV','56908AA37935661BE0404F8189D81F46',1,'Cape Verde','N','Y','CPV'),('CX','56908AA37983661BE0404F8189D81F46',1,'Christmas Island','N','Y','CXR'),('CY','56908AA37937661BE0404F8189D81F46',1,'Cyprus','N','Y','CYP'),('CZ','56908AA37946661BE0404F8189D81F46',1,'Czech Republic','N','Y','CZE'),('DE','56908AA3795A661BE0404F8189D81F46',1,'Germany','N','Y','DEU'),('DJ','56908AA3793A661BE0404F8189D81F46',1,'Djibouti','N','Y','DJI'),('DK','56908AA37939661BE0404F8189D81F46',1,'Denmark','N','Y','DNK'),('DM','56908AA3793B661BE0404F8189D81F46',1,'Dominica','N','Y','DMA'),('DO','56908AA3793C661BE0404F8189D81F46',1,'Dominican Republic','N','Y','DOM'),('DZ','56908AA37900661BE0404F8189D81F46',1,'Algeria','N','Y','DZA'),('EC','56908AA3793D661BE0404F8189D81F46',1,'Ecuador','N','Y','ECU'),('EE','56908AA37941661BE0404F8189D81F46',1,'Estonia','N','Y','EST'),('EG','56908AA3793E661BE0404F8189D81F46',1,'Egypt','N','Y','EGY'),('EH','56908AA379FE661BE0404F8189D81F46',1,'Western Sahara','N','Y','ESH'),('ER','56908AA37942661BE0404F8189D81F46',1,'Eritrea','N','Y','ERI'),('ES','56908AA379D6661BE0404F8189D81F46',1,'Spain','N','Y','ESP'),('ET','56908AA37944661BE0404F8189D81F46',1,'Ethiopia','N','Y','ETH'),('FI','56908AA37949661BE0404F8189D81F46',1,'Finland','N','Y','FIN'),('FJ','56908AA3794A661BE0404F8189D81F46',1,'Fiji','N','Y','FJI'),('FK','56908AA37947661BE0404F8189D81F46',1,'Falkland Islands (Malvinas)','N','Y','FLK'),('FM','56908AA3794B661BE0404F8189D81F46',1,'Micronesia, Federated States Of','N','Y','FSM'),('FO','56908AA3794C661BE0404F8189D81F46',1,'Faroe Islands','N','Y','FRO'),('FR','56908AA3794F661BE0404F8189D81F46',1,'France','N','Y','FRA'),('GA','56908AA37952661BE0404F8189D81F46',1,'Gabon','N','Y','GAB'),('GB','56908AA379EF661BE0404F8189D81F46',1,'United Kingdom','N','Y','GBR'),('GD','56908AA37957661BE0404F8189D81F46',1,'Grenada','N','Y','GRD'),('GE','56908AA37954661BE0404F8189D81F46',1,'Georgia','N','Y','GEO'),('GF','56908AA37948661BE0404F8189D81F46',1,'French Guiana','N','Y','GUF'),('GG','56908AA37958661BE0404F8189D81F46',1,'Guernsey','N','Y','GGY'),('GH','56908AA37955661BE0404F8189D81F46',1,'Ghana','N','Y','GHA'),('GI','56908AA37956661BE0404F8189D81F46',1,'Gibraltar','N','Y','GIB'),('GL','56908AA37959661BE0404F8189D81F46',1,'Greenland','N','Y','GRL'),('GM','56908AA37951661BE0404F8189D81F46',1,'Gambia','N','Y','GMB'),('GN','56908AA37960661BE0404F8189D81F46',1,'Guinea','N','Y','GIN'),('GP','56908AA3795C661BE0404F8189D81F46',1,'Guadeloupe','N','Y','GLP'),('GQ','56908AA37940661BE0404F8189D81F46',1,'Equatorial Guinea','N','Y','GNQ'),('GR','56908AA3795E661BE0404F8189D81F46',1,'Greece','N','Y','GRC'),('GS','56908AA37931661BE0404F8189D81F46',1,'South Georgia and South Sandwich Islands','N','Y','SGS'),('GT','56908AA3795F661BE0404F8189D81F46',1,'Guatemala','N','Y','GTM'),('GU','56908AA3795D661BE0404F8189D81F46',1,'Guam','N','Y','GUM'),('GW','56908AA379C1661BE0404F8189D81F46',1,'Guinea-Bissau','N','Y','GNB'),('GY','56908AA37961661BE0404F8189D81F46',1,'Guyana','N','Y','GUY'),('HK','56908AA37964661BE0404F8189D81F46',1,'Hong Kong','N','Y','HKG'),('HM','56908AA37965661BE0404F8189D81F46',1,'Heard and McDonald Islands','N','Y','HMD'),('HN','56908AA37966661BE0404F8189D81F46',1,'Honduras','N','Y','HND'),('HR','56908AA37968661BE0404F8189D81F46',1,'Croatia','N','Y','HRV'),('HT','56908AA37963661BE0404F8189D81F46',1,'Haiti','N','Y','HTI'),('HU','56908AA37969661BE0404F8189D81F46',1,'Hungary','N','Y','HUN'),('ID','56908AA3796B661BE0404F8189D81F46',1,'Indonesia','N','Y','IDN'),('IE','56908AA3793F661BE0404F8189D81F46',1,'Ireland','N','Y','IRL'),('IL','56908AA37971661BE0404F8189D81F46',1,'Israel','N','Y','ISR'),('IM','56908AA3796C661BE0404F8189D81F46',1,'Isle of Man','N','Y','IMN'),('IN','56908AA3796D661BE0404F8189D81F46',1,'India','N','Y','IND'),('IO','56908AA3796E661BE0404F8189D81F46',1,'British Indian Ocean Territory','N','Y','IOT'),('IQ','56908AA37975661BE0404F8189D81F46',1,'Iraq','N','Y','IRQ'),('IR','56908AA37970661BE0404F8189D81F46',1,'Iran, Islamic Republic Of','N','Y','IRN'),('IS','56908AA3796A661BE0404F8189D81F46',1,'Iceland','N','Y','ISL'),('IT','56908AA37972661BE0404F8189D81F46',1,'Italy','N','Y','ITA'),('JE','56908AA37977661BE0404F8189D81F46',1,'Jersey','N','Y','JEY'),('JM','56908AA37978661BE0404F8189D81F46',1,'Jamaica','N','Y','JAM'),('JO','56908AA3797A661BE0404F8189D81F46',1,'Jordan','N','Y','JOR'),('JP','56908AA37976661BE0404F8189D81F46',1,'Japan','N','Y','JPN'),('KE','56908AA3797D661BE0404F8189D81F46',1,'Kenya','N','Y','KEN'),('KG','56908AA3797E661BE0404F8189D81F46',1,'Kyrgyzstan','N','Y','KGZ'),('KH','56908AA37924661BE0404F8189D81F46',1,'Cambodia','N','Y','KHM'),('KI','56908AA37981661BE0404F8189D81F46',1,'Kiribati','N','Y','KIR'),('KM','56908AA3792E661BE0404F8189D81F46',1,'Comoros','N','Y','COM'),('KN','56908AA379CC661BE0404F8189D81F46',1,'Saint Kitts And Nevis','N','Y','KNA'),('KP','56908AA3797F661BE0404F8189D81F46',1,'Korea, Democratic People\'s Republic Of','N','Y','PRK'),('KR','56908AA37982661BE0404F8189D81F46',1,'Korea, Republic of','N','Y','KOR'),('KW','56908AA37984661BE0404F8189D81F46',1,'Kuwait','N','Y','KWT'),('KY','56908AA3792B661BE0404F8189D81F46',1,'Cayman Islands','N','Y','CYM'),('KZ','56908AA37985661BE0404F8189D81F46',1,'Kazakhstan','N','Y','KAZ'),('LA','56908AA37986661BE0404F8189D81F46',1,'Lao People\'s Democratic Republic','N','Y','LAO'),('LB','56908AA37987661BE0404F8189D81F46',1,'Lebanon','N','Y','LBN'),('LC','56908AA379D8661BE0404F8189D81F46',1,'Saint Lucia','N','Y','LCA'),('LI','56908AA3798D661BE0404F8189D81F46',1,'Liechtenstein','N','Y','LIE'),('LK','56908AA37926661BE0404F8189D81F46',1,'Sri Lanka','N','Y','LKA'),('LR','56908AA3798A661BE0404F8189D81F46',1,'Liberia','N','Y','LBR'),('LS','56908AA3798E661BE0404F8189D81F46',1,'Lesotho','N','Y','LSO'),('LT','56908AA37989661BE0404F8189D81F46',1,'Lithuania','N','Y','LTU'),('LU','56908AA3798F661BE0404F8189D81F46',1,'Luxembourg','N','Y','LUX'),('LV','56908AA37988661BE0404F8189D81F46',1,'Latvia','N','Y','LVA'),('LY','56908AA37990661BE0404F8189D81F46',1,'Libyan Arab Jamahiriya','N','Y','LBY'),('MA','56908AA3799C661BE0404F8189D81F46',1,'Morocco','N','Y','MAR'),('MC','56908AA3799B661BE0404F8189D81F46',1,'Monaco','N','Y','MCO'),('MD','56908AA37994661BE0404F8189D81F46',1,'Moldova, Republic of','N','Y','MDA'),('ME','56908AA379A3661BE0404F8189D81F46',1,'Montenegro','N','Y','MNE'),('MF','56908AA3791D661BE0404F8189D81F46',1,'Saint Martin','N','Y','MAF'),('MG','56908AA37991661BE0404F8189D81F46',1,'Madagascar','N','Y','MDG'),('MH','56908AA379C4661BE0404F8189D81F46',1,'Marshall Islands','N','Y','MHL'),('MK','56908AA37999661BE0404F8189D81F46',1,'Macedonia, the Fmr. Yugoslav Republic Of','N','Y','MKD'),('ML','56908AA3799A661BE0404F8189D81F46',1,'Mali','N','Y','MLI'),('MM','56908AA37917661BE0404F8189D81F46',1,'Myanmar','N','Y','MMR'),('MN','56908AA37996661BE0404F8189D81F46',1,'Mongolia','N','Y','MNG'),('MO','56908AA37993661BE0404F8189D81F46',1,'Macao','N','Y','MAC'),('MP','56908AA37930661BE0404F8189D81F46',1,'Northern Mariana Islands','N','Y','MNP'),('MQ','56908AA37992661BE0404F8189D81F46',1,'Martinique','N','Y','MTQ'),('MR','56908AA3799F661BE0404F8189D81F46',1,'Mauritania','N','Y','MRT'),('MS','56908AA37997661BE0404F8189D81F46',1,'Montserrat','N','Y','MSR'),('MT','56908AA379A0661BE0404F8189D81F46',1,'Malta','N','Y','MLT'),('MU','56908AA3799D661BE0404F8189D81F46',1,'Mauritius','N','Y','MUS'),('MV','56908AA379A2661BE0404F8189D81F46',1,'Maldives','N','Y','MDV'),('MW','56908AA37998661BE0404F8189D81F46',1,'Malawi','N','Y','MWI'),('MX','56908AA379A4661BE0404F8189D81F46',1,'Mexico','N','Y','MEX'),('MY','56908AA379A5661BE0404F8189D81F46',1,'Malaysia','N','Y','MYS'),('MZ','56908AA379A6661BE0404F8189D81F46',1,'Mozambique','N','Y','MOZ'),('NA','56908AA379FB661BE0404F8189D81F46',1,'Namibia','N','Y','NAM'),('NC','56908AA379A8661BE0404F8189D81F46',1,'New Caledonia','N','Y','NCL'),('NE','56908AA379AB661BE0404F8189D81F46',1,'Niger','N','Y','NER'),('NF','56908AA379AA661BE0404F8189D81F46',1,'Norfolk Island','N','Y','NFK'),('NG','56908AA379AD661BE0404F8189D81F46',1,'Nigeria','N','Y','NGA'),('NI','56908AA379B3661BE0404F8189D81F46',1,'Nicaragua','N','Y','NIC'),('NL','56908AA379AE661BE0404F8189D81F46',1,'Netherlands','N','Y','NLD'),('NO','56908AA379AF661BE0404F8189D81F46',1,'Norway','N','Y','NOR'),('NP','56908AA379B0661BE0404F8189D81F46',1,'Nepal','N','Y','NPL'),('NR','56908AA379B1661BE0404F8189D81F46',1,'Nauru','N','Y','NRU'),('NU','56908AA379A9661BE0404F8189D81F46',1,'Niue','N','Y','NIU'),('NZ','56908AA379B4661BE0404F8189D81F46',1,'New Zealand','N','Y','NZL'),('OM','56908AA379A1661BE0404F8189D81F46',1,'Oman','N','Y','OMN'),('PA','56908AA379BD661BE0404F8189D81F46',1,'Panama','N','Y','PAN'),('PE','56908AA379B8661BE0404F8189D81F46',1,'Peru','N','Y','PER'),('PF','56908AA3794D661BE0404F8189D81F46',1,'French Polynesia','N','Y','PYF'),('PG','56908AA379BF661BE0404F8189D81F46',1,'Papua New Guinea','N','Y','PNG'),('PH','56908AA379C6661BE0404F8189D81F46',1,'Philippines','N','Y','PHL'),('PK','56908AA379BB661BE0404F8189D81F46',1,'Pakistan','N','Y','PAK'),('PL','56908AA379BC661BE0404F8189D81F46',1,'Poland','N','Y','POL'),('PM','56908AA379CB661BE0404F8189D81F46',1,'Saint Pierre And Miquelon','N','Y','SPM'),('PN','56908AA379B7661BE0404F8189D81F46',1,'Pitcairn','N','Y','PCN'),('PR','56908AA379C7661BE0404F8189D81F46',1,'Puerto Rico','N','Y','PRI'),('PS','56908AA37962661BE0404F8189D81F46',1,'Palestinian Territory, Occupied','N','Y','PSE'),('PT','56908AA379BE661BE0404F8189D81F46',1,'Portugal','N','Y','PRT'),('PW','56908AA379C0661BE0404F8189D81F46',1,'Palau','N','Y','PLW'),('PY','56908AA379B6661BE0404F8189D81F46',1,'Paraguay','N','Y','PRY'),('QA','56908AA379C2661BE0404F8189D81F46',1,'Qatar','N','Y','QAT'),('RE','56908AA379C3661BE0404F8189D81F46',1,'RÃƒÂ©union','N','Y','REU'),('RO','56908AA379C5661BE0404F8189D81F46',1,'Romania','N','Y','ROU'),('RS','56908AA379D7661BE0404F8189D81F46',1,'Serbia','N','Y','SRB'),('RU','56908AA379C8661BE0404F8189D81F46',1,'Russian Federation','N','Y','RUS'),('RW','56908AA379C9661BE0404F8189D81F46',1,'Rwanda','N','Y','RWA'),('SA','56908AA379CA661BE0404F8189D81F46',1,'Saudi Arabia','N','Y','SAU'),('SB','56908AA3791A661BE0404F8189D81F46',1,'Solomon Islands','N','Y','SLB'),('SC','56908AA379CD661BE0404F8189D81F46',1,'Seychelles','N','Y','SYC'),('SD','56908AA379D9661BE0404F8189D81F46',1,'Sudan','N','Y','SDN'),('SE','56908AA379DB661BE0404F8189D81F46',1,'Sweden','N','Y','SWE'),('SG','56908AA379D4661BE0404F8189D81F46',1,'Singapore','N','Y','SGP'),('SH','56908AA379D0661BE0404F8189D81F46',1,'St. Helena, Ascension, Tristan Da Cunha','N','Y','SHN'),('SI','56908AA379D1661BE0404F8189D81F46',1,'Slovenia','N','Y','SVN'),('SJ','56908AA379DA661BE0404F8189D81F46',1,'Svalbard And Jan Mayen','N','Y','SJM'),('SK','56908AA3798B661BE0404F8189D81F46',1,'Slovakia','N','Y','SVK'),('SL','56908AA379D2661BE0404F8189D81F46',1,'Sierra Leone','N','Y','SLE'),('SM','56908AA379D3661BE0404F8189D81F46',1,'San Marino','N','Y','SMR'),('SN','56908AA379CF661BE0404F8189D81F46',1,'Senegal','N','Y','SEN'),('SO','56908AA379D5661BE0404F8189D81F46',1,'Somalia','N','Y','SOM'),('SR','56908AA379B2661BE0404F8189D81F46',1,'Suriname','N','Y','SUR'),('ST','56908AA379E7661BE0404F8189D81F46',1,'Sao Tome and Principe','N','Y','STP'),('SV','56908AA37943661BE0404F8189D81F46',1,'El Salvador','N','Y','SLV'),('SY','56908AA379DC661BE0404F8189D81F46',1,'Syrian Arab Republic','N','Y','SYR'),('SZ','56908AA37A01661BE0404F8189D81F46',1,'Swaziland','N','Y','SWZ'),('TC','56908AA379E3661BE0404F8189D81F46',1,'Turks and Caicos Islands','N','Y','TCA'),('TD','56908AA37925661BE0404F8189D81F46',1,'Chad','N','Y','TCD'),('TF','56908AA37950661BE0404F8189D81F46',1,'French Southern Territories','N','Y','ATF'),('TG','56908AA379E6661BE0404F8189D81F46',1,'Togo','N','Y','TGO'),('TH','56908AA379E1661BE0404F8189D81F46',1,'Thailand','N','Y','THA'),('TJ','56908AA379E2661BE0404F8189D81F46',1,'Tajikistan','N','Y','TJK'),('TK','56908AA379E4661BE0404F8189D81F46',1,'Tokelau','N','Y','TKL'),('TL','56908AA37945661BE0404F8189D81F46',1,'Timor-Leste','N','Y','TLS'),('TM','56908AA379EC661BE0404F8189D81F46',1,'Turkmenistan','N','Y','TKM'),('TN','56908AA379E8661BE0404F8189D81F46',1,'Tunisia','N','Y','TUN'),('TO','56908AA379E5661BE0404F8189D81F46',1,'Tonga','N','Y','TON'),('TR','56908AA379E9661BE0404F8189D81F46',1,'Turkey','N','Y','TUR'),('TT','56908AA379DF661BE0404F8189D81F46',1,'Trinidad and Tobago','N','Y','TTO'),('TV','56908AA379EA661BE0404F8189D81F46',1,'Tuvalu','N','Y','TUV'),('TW','56908AA379EB661BE0404F8189D81F46',1,'Taiwan, Province Of China','N','Y','TWN'),('TZ','56908AA379ED661BE0404F8189D81F46',1,'Tanzania, United Republic of','N','Y','TZA'),('UA','56908AA379F0661BE0404F8189D81F46',1,'Ukraine','N','Y','UKR'),('UG','56908AA379EE661BE0404F8189D81F46',1,'Uganda','N','Y','UGA'),('UM','56908AA3799E661BE0404F8189D81F46',1,'United States Minor Outlying Islands','N','Y','UMI'),('US','56908AA379F2661BE0404F8189D81F46',1,'United States','N','Y','USA'),('UY','56908AA379F3661BE0404F8189D81F46',1,'Uruguay','N','Y','URY'),('UZ','56908AA379F4661BE0404F8189D81F46',1,'Uzbekistan','N','Y','UZB'),('VA','56908AA379FA661BE0404F8189D81F46',1,'Holy See (Vatican City State)','N','Y','VAT'),('VC','56908AA379F5661BE0404F8189D81F46',1,'Saint Vincent And The Grenedines','N','Y','VCT'),('VE','56908AA379F6661BE0404F8189D81F46',1,'Venezuela, Bolivarian Republic of','N','Y','VEN'),('VG','56908AA379F7661BE0404F8189D81F46',1,'Virgin Islands, British','N','Y','VGB'),('VI','56908AA379F9661BE0404F8189D81F46',1,'Virgin Islands, U.S.','N','Y','VIR'),('VN','56908AA379F8661BE0404F8189D81F46',1,'Viet Nam','N','Y','VNM'),('VU','56908AA379AC661BE0404F8189D81F46',1,'Vanuatu','N','Y','VUT'),('WF','56908AA379FD661BE0404F8189D81F46',1,'Wallis and Futuna','N','Y','WLF'),('WS','56908AA37A00661BE0404F8189D81F46',1,'Samoa','N','Y','WSM'),('YE','56908AA37A02661BE0404F8189D81F46',1,'Yemen','N','Y','YEM'),('YT','56908AA37995661BE0404F8189D81F46',1,'Mayotte','N','Y','MYT'),('ZA','56908AA379CE661BE0404F8189D81F46',1,'South Africa','N','Y','ZAF'),('ZM','56908AA37A04661BE0404F8189D81F46',1,'Zambia','N','Y','ZMB'),('ZW','56908AA37A05661BE0404F8189D81F46',1,'Zimbabwe','N','Y','ZWE'),('ZZ','56908AA379B5661BE0404F8189D81F46',1,'Other Countries','N','Y','ZZZ');
/*!40000 ALTER TABLE `krlc_cntry_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krlc_cnty_t`
--

DROP TABLE IF EXISTS `krlc_cnty_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krlc_cnty_t` (
  `COUNTY_CD` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `STATE_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT 'US',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `COUNTY_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`COUNTY_CD`,`STATE_CD`,`POSTAL_CNTRY_CD`),
  UNIQUE KEY `KR_COUNTY_TC0` (`OBJ_ID`),
  KEY `KRLC_CNTY_TR1` (`STATE_CD`,`POSTAL_CNTRY_CD`),
  CONSTRAINT `KRLC_CNTY_TR1` FOREIGN KEY (`STATE_CD`, `POSTAL_CNTRY_CD`) REFERENCES `krlc_st_t` (`POSTAL_STATE_CD`, `POSTAL_CNTRY_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krlc_cnty_t`
--

LOCK TABLES `krlc_cnty_t` WRITE;
/*!40000 ALTER TABLE `krlc_cnty_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krlc_cnty_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krlc_pstl_cd_t`
--

DROP TABLE IF EXISTS `krlc_pstl_cd_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krlc_pstl_cd_t` (
  `POSTAL_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT 'US',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `POSTAL_STATE_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `COUNTY_CD` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CITY_NM` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`POSTAL_CD`,`POSTAL_CNTRY_CD`),
  UNIQUE KEY `KR_POSTAL_CODE_TC0` (`OBJ_ID`),
  KEY `KR_POSTAL_CODE_TR3` (`COUNTY_CD`,`POSTAL_STATE_CD`,`POSTAL_CNTRY_CD`),
  KEY `KR_POSTAL_CODE_TR2` (`POSTAL_STATE_CD`,`POSTAL_CNTRY_CD`),
  KEY `KR_POSTAL_CODE_TR1` (`POSTAL_CNTRY_CD`),
  CONSTRAINT `KR_POSTAL_CODE_TR1` FOREIGN KEY (`POSTAL_CNTRY_CD`) REFERENCES `krlc_cntry_t` (`POSTAL_CNTRY_CD`),
  CONSTRAINT `KR_POSTAL_CODE_TR2` FOREIGN KEY (`POSTAL_STATE_CD`, `POSTAL_CNTRY_CD`) REFERENCES `krlc_st_t` (`POSTAL_STATE_CD`, `POSTAL_CNTRY_CD`),
  CONSTRAINT `KR_POSTAL_CODE_TR3` FOREIGN KEY (`COUNTY_CD`, `POSTAL_STATE_CD`, `POSTAL_CNTRY_CD`) REFERENCES `krlc_cnty_t` (`COUNTY_CD`, `STATE_CD`, `POSTAL_CNTRY_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krlc_pstl_cd_t`
--

LOCK TABLES `krlc_pstl_cd_t` WRITE;
/*!40000 ALTER TABLE `krlc_pstl_cd_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krlc_pstl_cd_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krlc_st_t`
--

DROP TABLE IF EXISTS `krlc_st_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krlc_st_t` (
  `POSTAL_STATE_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT 'US',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `POSTAL_STATE_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`POSTAL_STATE_CD`,`POSTAL_CNTRY_CD`),
  UNIQUE KEY `KR_STATE_TC0` (`OBJ_ID`),
  KEY `KR_STATE_TR1` (`POSTAL_CNTRY_CD`),
  CONSTRAINT `KR_STATE_TR1` FOREIGN KEY (`POSTAL_CNTRY_CD`) REFERENCES `krlc_cntry_t` (`POSTAL_CNTRY_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krlc_st_t`
--

LOCK TABLES `krlc_st_t` WRITE;
/*!40000 ALTER TABLE `krlc_st_t` DISABLE KEYS */;
INSERT INTO `krlc_st_t` VALUES ('--','US','56908AA37A06661BE0404F8189D81F46',1,'OUT OF COUNTRY','Y'),('AA','US','56908AA37A3B661BE0404F8189D81F46',1,'ARMED FORCES AMERICAS (EXCEPT CANADA)','Y'),('AE','US','56908AA37A3C661BE0404F8189D81F46',1,'ARMED FORCES EURO/CANADA/AFRICA/MID EAST','Y'),('AK','US','56908AA37A07661BE0404F8189D81F46',1,'ALASKA','Y'),('AL','US','56908AA37A08661BE0404F8189D81F46',1,'ALABAMA','Y'),('AP','US','56908AA37A3D661BE0404F8189D81F46',1,'ARMED FORCES PACIFIC','Y'),('AR','US','56908AA37A09661BE0404F8189D81F46',1,'ARKANSAS','Y'),('AS','US','56908AA37A3E661BE0404F8189D81F46',1,'AMERICAN SAMOA','Y'),('AZ','US','56908AA37A0A661BE0404F8189D81F46',1,'ARIZONA','Y'),('CA','US','56908AA37A0B661BE0404F8189D81F46',1,'CALIFORNIA','Y'),('CO','US','56908AA37A0C661BE0404F8189D81F46',1,'COLORADO','Y'),('CT','US','56908AA37A0D661BE0404F8189D81F46',1,'CONNECTICUT','Y'),('DC','US','56908AA37A0E661BE0404F8189D81F46',1,'DISTRICT OF COLUMBIA','Y'),('DE','US','56908AA37A0F661BE0404F8189D81F46',1,'DELAWARE','Y'),('FL','US','56908AA37A10661BE0404F8189D81F46',1,'FLORIDA','Y'),('FM','US','56908AA37A3F661BE0404F8189D81F46',1,'FEDERATED STATES OF MICRONESIA','Y'),('GA','US','56908AA37A11661BE0404F8189D81F46',1,'GEORGIA','Y'),('GU','US','56908AA37A40661BE0404F8189D81F46',1,'GUAM','Y'),('HI','US','56908AA37A12661BE0404F8189D81F46',1,'HAWAII','Y'),('IA','US','56908AA37A13661BE0404F8189D81F46',1,'IOWA','Y'),('ID','US','56908AA37A14661BE0404F8189D81F46',1,'IDAHO','Y'),('IL','US','56908AA37A15661BE0404F8189D81F46',1,'ILLINOIS','Y'),('IN','US','56908AA37A16661BE0404F8189D81F46',1,'INDIANA','Y'),('KS','US','56908AA37A17661BE0404F8189D81F46',1,'KANSAS','Y'),('KY','US','56908AA37A18661BE0404F8189D81F46',1,'KENTUCKY','Y'),('LA','US','56908AA37A19661BE0404F8189D81F46',1,'LOUISIANA','Y'),('MA','US','56908AA37A1A661BE0404F8189D81F46',1,'MASSACHUSETTS','Y'),('MD','US','56908AA37A1B661BE0404F8189D81F46',1,'MARYLAND','Y'),('ME','US','56908AA37A1C661BE0404F8189D81F46',1,'MAINE','Y'),('MH','US','56908AA37A41661BE0404F8189D81F46',1,'MARSHALL ISLANDS','Y'),('MI','US','56908AA37A1D661BE0404F8189D81F46',1,'MICHIGAN','Y'),('MN','US','56908AA37A1E661BE0404F8189D81F46',1,'MINNESOTA','Y'),('MO','US','56908AA37A1F661BE0404F8189D81F46',1,'MISSOURI','Y'),('MP','US','56908AA37A42661BE0404F8189D81F46',1,'NORTHERN MARIANA ISLANDS','Y'),('MS','US','56908AA37A20661BE0404F8189D81F46',1,'MISSISSIPPI','Y'),('MT','US','56908AA37A21661BE0404F8189D81F46',1,'MONTANA','Y'),('NC','US','56908AA37A22661BE0404F8189D81F46',1,'NORTH CAROLINA','Y'),('ND','US','56908AA37A23661BE0404F8189D81F46',1,'NORTH DAKOTA','Y'),('NE','US','56908AA37A24661BE0404F8189D81F46',1,'NEBRASKA','Y'),('NH','US','56908AA37A25661BE0404F8189D81F46',1,'NEW HAMPSHIRE','Y'),('NJ','US','56908AA37A26661BE0404F8189D81F46',1,'NEW JERSEY','Y'),('NM','US','56908AA37A27661BE0404F8189D81F46',1,'NEW MEXICO','Y'),('NV','US','56908AA37A28661BE0404F8189D81F46',1,'NEVADA','Y'),('NY','US','56908AA37A29661BE0404F8189D81F46',1,'NEW YORK','Y'),('OH','US','56908AA37A2A661BE0404F8189D81F46',1,'OHIO','Y'),('OK','US','56908AA37A2B661BE0404F8189D81F46',1,'OKLAHOMA','Y'),('OR','US','56908AA37A2C661BE0404F8189D81F46',1,'OREGON','Y'),('PA','US','56908AA37A2D661BE0404F8189D81F46',1,'PENNSYLVANIA','Y'),('PR','US','56908AA37A2E661BE0404F8189D81F46',1,'PUERTO RICO','Y'),('PW','US','56908AA37A43661BE0404F8189D81F46',1,'PALAU','Y'),('RI','US','56908AA37A2F661BE0404F8189D81F46',1,'RHODE ISLAND','Y'),('SC','US','56908AA37A30661BE0404F8189D81F46',1,'SOUTH CAROLINA','Y'),('SD','US','56908AA37A31661BE0404F8189D81F46',1,'SOUTH DAKOTA','Y'),('TN','US','56908AA37A32661BE0404F8189D81F46',1,'TENNESSEE','Y'),('TX','US','56908AA37A33661BE0404F8189D81F46',1,'TEXAS','Y'),('UT','US','56908AA37A34661BE0404F8189D81F46',1,'UTAH','Y'),('VA','US','56908AA37A35661BE0404F8189D81F46',1,'VIRGINIA','Y'),('VI','US','56908AA37A44661BE0404F8189D81F46',1,'VIRGIN ISLANDS','Y'),('VT','US','56908AA37A36661BE0404F8189D81F46',1,'VERMONT','Y'),('WA','US','56908AA37A37661BE0404F8189D81F46',1,'WASHINGTON','Y'),('WI','US','56908AA37A38661BE0404F8189D81F46',1,'WISCONSIN','Y'),('WV','US','56908AA37A39661BE0404F8189D81F46',1,'WEST VIRGINIA','Y'),('WY','US','56908AA37A3A661BE0404F8189D81F46',1,'WYOMING','Y');
/*!40000 ALTER TABLE `krlc_st_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_actn_attr_s`
--

DROP TABLE IF EXISTS `krms_actn_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_actn_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_actn_attr_s`
--

LOCK TABLES `krms_actn_attr_s` WRITE;
/*!40000 ALTER TABLE `krms_actn_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_actn_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_actn_attr_t`
--

DROP TABLE IF EXISTS `krms_actn_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_actn_attr_t` (
  `ACTN_ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ACTN_ATTR_DATA_ID`),
  KEY `KRMS_ACTN_ATTR_TI1` (`ACTN_ID`),
  KEY `KRMS_ACTN_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_ACTN_ATTR_FK1` FOREIGN KEY (`ACTN_ID`) REFERENCES `krms_actn_t` (`ACTN_ID`),
  CONSTRAINT `KRMS_ACTN_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krms_attr_defn_t` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_actn_attr_t`
--

LOCK TABLES `krms_actn_attr_t` WRITE;
/*!40000 ALTER TABLE `krms_actn_attr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_actn_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_actn_s`
--

DROP TABLE IF EXISTS `krms_actn_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_actn_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_actn_s`
--

LOCK TABLES `krms_actn_s` WRITE;
/*!40000 ALTER TABLE `krms_actn_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_actn_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_actn_t`
--

DROP TABLE IF EXISTS `krms_actn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_actn_t` (
  `ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SEQ_NO` decimal(5,0) DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ACTN_ID`),
  UNIQUE KEY `KRMS_ACTN_TC2` (`ACTN_ID`,`RULE_ID`,`SEQ_NO`),
  KEY `KRMS_ACTN_TI1` (`TYP_ID`),
  KEY `KRMS_ACTN_TI2` (`RULE_ID`),
  KEY `KRMS_ACTN_TI3` (`RULE_ID`,`SEQ_NO`),
  CONSTRAINT `KRMS_ACTN_FK1` FOREIGN KEY (`RULE_ID`) REFERENCES `krms_rule_t` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_actn_t`
--

LOCK TABLES `krms_actn_t` WRITE;
/*!40000 ALTER TABLE `krms_actn_t` DISABLE KEYS */;
INSERT INTO `krms_actn_t` VALUES ('T1000','testAction','Action Stub for Testing','T1002','T1000',1,1,'KR-RULE-TEST');
/*!40000 ALTER TABLE `krms_actn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_agenda_attr_s`
--

DROP TABLE IF EXISTS `krms_agenda_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_agenda_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_agenda_attr_s`
--

LOCK TABLES `krms_agenda_attr_s` WRITE;
/*!40000 ALTER TABLE `krms_agenda_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_agenda_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_agenda_attr_t`
--

DROP TABLE IF EXISTS `krms_agenda_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_agenda_attr_t` (
  `AGENDA_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `AGENDA_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AGENDA_ATTR_ID`),
  KEY `KRMS_AGENDA_ATTR_T12` (`ATTR_DEFN_ID`),
  KEY `KRMS_AGENDA_ATTR_TI1` (`AGENDA_ID`),
  CONSTRAINT `KRMS_AGENDA_ATTR_FK1` FOREIGN KEY (`AGENDA_ID`) REFERENCES `krms_agenda_t` (`AGENDA_ID`),
  CONSTRAINT `KRMS_AGENDA_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krms_attr_defn_t` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_agenda_attr_t`
--

LOCK TABLES `krms_agenda_attr_t` WRITE;
/*!40000 ALTER TABLE `krms_agenda_attr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_agenda_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_agenda_itm_s`
--

DROP TABLE IF EXISTS `krms_agenda_itm_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_agenda_itm_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_agenda_itm_s`
--

LOCK TABLES `krms_agenda_itm_s` WRITE;
/*!40000 ALTER TABLE `krms_agenda_itm_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_agenda_itm_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_agenda_itm_t`
--

DROP TABLE IF EXISTS `krms_agenda_itm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_agenda_itm_t` (
  `AGENDA_ITM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SUB_AGENDA_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `AGENDA_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `WHEN_TRUE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `WHEN_FALSE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ALWAYS` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AGENDA_ITM_ID`),
  KEY `KRMS_AGENDA_ITM_TI1` (`RULE_ID`),
  KEY `KRMS_AGENDA_ITM_TI2` (`AGENDA_ID`),
  KEY `KRMS_AGENDA_ITM_TI3` (`SUB_AGENDA_ID`),
  KEY `KRMS_AGENDA_ITM_TI4` (`WHEN_TRUE`),
  KEY `KRMS_AGENDA_ITM_TI5` (`WHEN_FALSE`),
  KEY `KRMS_AGENDA_ITM_TI6` (`ALWAYS`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK1` FOREIGN KEY (`RULE_ID`) REFERENCES `krms_rule_t` (`RULE_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK2` FOREIGN KEY (`AGENDA_ID`) REFERENCES `krms_agenda_t` (`AGENDA_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK3` FOREIGN KEY (`SUB_AGENDA_ID`) REFERENCES `krms_agenda_t` (`AGENDA_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK4` FOREIGN KEY (`WHEN_TRUE`) REFERENCES `krms_agenda_itm_t` (`AGENDA_ITM_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK5` FOREIGN KEY (`WHEN_FALSE`) REFERENCES `krms_agenda_itm_t` (`AGENDA_ITM_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK6` FOREIGN KEY (`ALWAYS`) REFERENCES `krms_agenda_itm_t` (`AGENDA_ITM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_agenda_itm_t`
--

LOCK TABLES `krms_agenda_itm_t` WRITE;
/*!40000 ALTER TABLE `krms_agenda_itm_t` DISABLE KEYS */;
INSERT INTO `krms_agenda_itm_t` VALUES ('T1000','T1000',NULL,'T1000',1,'T1001','T1004','T1005'),('T1001','T1001',NULL,'T1000',1,NULL,NULL,'T1002'),('T1002','T1002',NULL,'T1000',1,NULL,'T1006','T1003'),('T1003','T1003',NULL,'T1000',1,NULL,NULL,NULL),('T1004','T1004',NULL,'T1000',1,NULL,NULL,NULL),('T1005','T1005',NULL,'T1000',1,NULL,NULL,NULL),('T1006','T1006',NULL,'T1000',1,NULL,NULL,NULL),('T1007','T1007',NULL,'T1001',1,NULL,NULL,NULL),('T1008','T1008',NULL,'T1002',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `krms_agenda_itm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_agenda_s`
--

DROP TABLE IF EXISTS `krms_agenda_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_agenda_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_agenda_s`
--

LOCK TABLES `krms_agenda_s` WRITE;
/*!40000 ALTER TABLE `krms_agenda_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_agenda_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_agenda_t`
--

DROP TABLE IF EXISTS `krms_agenda_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_agenda_t` (
  `AGENDA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `INIT_AGENDA_ITM_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AGENDA_ID`),
  UNIQUE KEY `KRMS_AGENDA_TC1` (`NM`,`CNTXT_ID`),
  KEY `KRMS_AGENDA_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_AGENDA_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `krms_cntxt_t` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_agenda_t`
--

LOCK TABLES `krms_agenda_t` WRITE;
/*!40000 ALTER TABLE `krms_agenda_t` DISABLE KEYS */;
INSERT INTO `krms_agenda_t` VALUES ('T1000','My Fabulous Agenda','CONTEXT1','T1000',NULL,'Y',1),('T1001','SimpleAgendaCompoundProp','CONTEXT1','T1007','T1004','Y',1),('T1002','One Big Rule','CONTEXT1','T1008','T1004','Y',1);
/*!40000 ALTER TABLE `krms_agenda_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_attr_defn_s`
--

DROP TABLE IF EXISTS `krms_attr_defn_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_attr_defn_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_attr_defn_s`
--

LOCK TABLES `krms_attr_defn_s` WRITE;
/*!40000 ALTER TABLE `krms_attr_defn_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_attr_defn_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_attr_defn_t`
--

DROP TABLE IF EXISTS `krms_attr_defn_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_attr_defn_t` (
  `ATTR_DEFN_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `LBL` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `CMPNT_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT 'null',
  PRIMARY KEY (`ATTR_DEFN_ID`),
  UNIQUE KEY `KRMS_ATTR_DEFN_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_attr_defn_t`
--

LOCK TABLES `krms_attr_defn_t` WRITE;
/*!40000 ALTER TABLE `krms_attr_defn_t` DISABLE KEYS */;
INSERT INTO `krms_attr_defn_t` VALUES ('1000','peopleFlowId','KR-RULE','PeopleFlow','Y',NULL,0,'An identifier for a PeopleFlow'),('1001','ruleTypeCode','KR-RULE','Invalid Rule','Y',NULL,1,'If true, execute the action'),('1004','actionTypeCode','KR-RULE','Error Action','Y',NULL,1,'Error'),('1005','actionMessage','KR-RULE','Action Message','Y',NULL,1,'Message validation action returns'),('1006','peopleFlowName','KR_RULE','PeopleFlow Name','Y',NULL,1,'PeopleFlow Name'),('T1000','Context1Qualifier','KR-RULE-TEST','Context 1 Qualifier','Y',NULL,1,'null'),('T1001','Event','KR-RULE-TEST','Event Name','Y',NULL,1,'null'),('T1002','Optional Test Attribute','KR-RULE-TEST','label','Y',NULL,0,'this is an optional attribute for testing'),('T1003','Campus','KR-RULE-TEST','campus label','Y',NULL,0,'the campus which this agenda is valid for');
/*!40000 ALTER TABLE `krms_attr_defn_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cmpnd_prop_props_s`
--

DROP TABLE IF EXISTS `krms_cmpnd_prop_props_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cmpnd_prop_props_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cmpnd_prop_props_s`
--

LOCK TABLES `krms_cmpnd_prop_props_s` WRITE;
/*!40000 ALTER TABLE `krms_cmpnd_prop_props_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cmpnd_prop_props_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cmpnd_prop_props_t`
--

DROP TABLE IF EXISTS `krms_cmpnd_prop_props_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cmpnd_prop_props_t` (
  `CMPND_PROP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PROP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`CMPND_PROP_ID`,`PROP_ID`),
  KEY `KRMS_CMPND_PROP_PROPS_FK2` (`CMPND_PROP_ID`),
  KEY `KRMS_CMPND_PROP_PROPS_TI1` (`PROP_ID`),
  CONSTRAINT `KRMS_CMPND_PROP_PROPS_FK1` FOREIGN KEY (`PROP_ID`) REFERENCES `krms_prop_t` (`PROP_ID`),
  CONSTRAINT `KRMS_CMPND_PROP_PROPS_FK2` FOREIGN KEY (`CMPND_PROP_ID`) REFERENCES `krms_prop_t` (`PROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cmpnd_prop_props_t`
--

LOCK TABLES `krms_cmpnd_prop_props_t` WRITE;
/*!40000 ALTER TABLE `krms_cmpnd_prop_props_t` DISABLE KEYS */;
INSERT INTO `krms_cmpnd_prop_props_t` VALUES ('T1007','T1008'),('T1007','T1009'),('T1007','T1010'),('T1011','T1012'),('T1011','T1013'),('T1011','T1014'),('T1013','T1015'),('T1013','T1016'),('T1013','T1017'),('T1014','T1018'),('T1014','T1019');
/*!40000 ALTER TABLE `krms_cmpnd_prop_props_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_attr_s`
--

DROP TABLE IF EXISTS `krms_cntxt_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_attr_s`
--

LOCK TABLES `krms_cntxt_attr_s` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cntxt_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_attr_t`
--

DROP TABLE IF EXISTS `krms_cntxt_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_attr_t` (
  `CNTXT_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_ATTR_ID`),
  KEY `KRMS_CNTXT_ATTR_TI1` (`CNTXT_ID`),
  KEY `KRMS_CNTXT_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_CNTXT_ATTR_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `krms_cntxt_t` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krms_attr_defn_t` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_attr_t`
--

LOCK TABLES `krms_cntxt_attr_t` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_attr_t` DISABLE KEYS */;
INSERT INTO `krms_cntxt_attr_t` VALUES ('T1000','CONTEXT1','BLAH','T1000',1);
/*!40000 ALTER TABLE `krms_cntxt_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_s`
--

DROP TABLE IF EXISTS `krms_cntxt_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_s`
--

LOCK TABLES `krms_cntxt_s` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cntxt_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_t`
--

DROP TABLE IF EXISTS `krms_cntxt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_t` (
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT 'null',
  PRIMARY KEY (`CNTXT_ID`),
  UNIQUE KEY `KRMS_CNTXT_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_t`
--

LOCK TABLES `krms_cntxt_t` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_t` DISABLE KEYS */;
INSERT INTO `krms_cntxt_t` VALUES ('CONTEXT1','KR-RULE-TEST','Context1','T1003','Y',1,'null'),('CONTEXT_NO_PERMISSION','KRMS_TEST_VOID','Context with no premissions','T1003','Y',1,'null'),('trav-acct-test-ctxt','KR-SAP','Travel Account','T4','Y',1,'null');
/*!40000 ALTER TABLE `krms_cntxt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_actn_typ_s`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_actn_typ_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_actn_typ_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_actn_typ_s`
--

LOCK TABLES `krms_cntxt_vld_actn_typ_s` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_actn_typ_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cntxt_vld_actn_typ_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_actn_typ_t`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_actn_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_actn_typ_t` (
  `CNTXT_VLD_ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTN_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_VLD_ACTN_ID`),
  KEY `KRMS_CNTXT_VLD_ACTN_TYP_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_ACTN_TYP_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `krms_cntxt_t` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_actn_typ_t`
--

LOCK TABLES `krms_cntxt_vld_actn_typ_t` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_actn_typ_t` DISABLE KEYS */;
INSERT INTO `krms_cntxt_vld_actn_typ_t` VALUES ('T1000','CONTEXT1','T1002',1),('T1001','CONTEXT1','1000',1),('T1002','CONTEXT1','1001',1),('T1003','CONTEXT1','1003',1);
/*!40000 ALTER TABLE `krms_cntxt_vld_actn_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_agenda_typ_s`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_agenda_typ_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_agenda_typ_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_agenda_typ_s`
--

LOCK TABLES `krms_cntxt_vld_agenda_typ_s` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_agenda_typ_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cntxt_vld_agenda_typ_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_agenda_typ_t`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_agenda_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_agenda_typ_t` (
  `CNTXT_VLD_AGENDA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `AGENDA_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_VLD_AGENDA_ID`),
  KEY `KRMS_CNTXT_VLD_AGENDA_TYP_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_AGENDA_TYP_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `krms_cntxt_t` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_agenda_typ_t`
--

LOCK TABLES `krms_cntxt_vld_agenda_typ_t` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_agenda_typ_t` DISABLE KEYS */;
INSERT INTO `krms_cntxt_vld_agenda_typ_t` VALUES ('T1000','CONTEXT1','T1005',1);
/*!40000 ALTER TABLE `krms_cntxt_vld_agenda_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_func_s`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_func_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_func_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_func_s`
--

LOCK TABLES `krms_cntxt_vld_func_s` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_func_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cntxt_vld_func_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_func_t`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_func_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_func_t` (
  `CNTXT_VLD_FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_VLD_FUNC_ID`),
  KEY `KRMS_CNTXT_VLD_FUNC_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_FUNC_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `krms_cntxt_t` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_func_t`
--

LOCK TABLES `krms_cntxt_vld_func_t` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_func_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cntxt_vld_func_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_rule_typ_s`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_rule_typ_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_rule_typ_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_rule_typ_s`
--

LOCK TABLES `krms_cntxt_vld_rule_typ_s` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_rule_typ_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cntxt_vld_rule_typ_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_rule_typ_t`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_rule_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_rule_typ_t` (
  `CNTXT_VLD_RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_VLD_RULE_ID`),
  KEY `KRMS_CNTXT_VLD_RULE_TYP_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_RULE_TYP_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `krms_cntxt_t` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_rule_typ_t`
--

LOCK TABLES `krms_cntxt_vld_rule_typ_t` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_rule_typ_t` DISABLE KEYS */;
INSERT INTO `krms_cntxt_vld_rule_typ_t` VALUES ('T1000','CONTEXT1','1002',1);
/*!40000 ALTER TABLE `krms_cntxt_vld_rule_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_term_spec_s`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_term_spec_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_term_spec_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_term_spec_s`
--

LOCK TABLES `krms_cntxt_vld_term_spec_s` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_term_spec_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_cntxt_vld_term_spec_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_cntxt_vld_term_spec_t`
--

DROP TABLE IF EXISTS `krms_cntxt_vld_term_spec_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_cntxt_vld_term_spec_t` (
  `CNTXT_TERM_SPEC_PREREQ_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PREREQ` varchar(1) COLLATE utf8_bin DEFAULT 'n',
  PRIMARY KEY (`CNTXT_TERM_SPEC_PREREQ_ID`),
  KEY `KRMS_CNTXT_VLD_TERM_SPEC_TI2` (`TERM_SPEC_ID`),
  KEY `KRMS_CNTXT_VLD_TERM_SPEC_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_TERM_SPEC_TI1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `krms_cntxt_t` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_TERM_SPEC_TI2` FOREIGN KEY (`TERM_SPEC_ID`) REFERENCES `krms_term_spec_t` (`TERM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_cntxt_vld_term_spec_t`
--

LOCK TABLES `krms_cntxt_vld_term_spec_t` WRITE;
/*!40000 ALTER TABLE `krms_cntxt_vld_term_spec_t` DISABLE KEYS */;
INSERT INTO `krms_cntxt_vld_term_spec_t` VALUES ('T1000','CONTEXT1','T1002','N'),('T1001','CONTEXT1','T1003','N'),('T1002','CONTEXT1','T1004','N'),('T1003','CONTEXT1','T1005','N'),('T1004','CONTEXT1','T1006','N'),('T1005','CONTEXT1','T1007','N'),('T1006','CONTEXT1','T1000','N'),('T1007','CONTEXT1','T1001','N');
/*!40000 ALTER TABLE `krms_cntxt_vld_term_spec_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_ctgry_s`
--

DROP TABLE IF EXISTS `krms_ctgry_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_ctgry_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_ctgry_s`
--

LOCK TABLES `krms_ctgry_s` WRITE;
/*!40000 ALTER TABLE `krms_ctgry_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_ctgry_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_ctgry_t`
--

DROP TABLE IF EXISTS `krms_ctgry_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_ctgry_t` (
  `CTGRY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`CTGRY_ID`),
  UNIQUE KEY `KRMS_CTGRY_TC0` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_ctgry_t`
--

LOCK TABLES `krms_ctgry_t` WRITE;
/*!40000 ALTER TABLE `krms_ctgry_t` DISABLE KEYS */;
INSERT INTO `krms_ctgry_t` VALUES ('T1000','misc','KR-RULE-TEST',0);
/*!40000 ALTER TABLE `krms_ctgry_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_func_ctgry_t`
--

DROP TABLE IF EXISTS `krms_func_ctgry_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_func_ctgry_t` (
  `FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CTGRY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`FUNC_ID`,`CTGRY_ID`),
  KEY `KRMS_FUNC_CTGRY_FK2` (`CTGRY_ID`),
  CONSTRAINT `KRMS_FUNC_CTGRY_FK1` FOREIGN KEY (`FUNC_ID`) REFERENCES `krms_func_t` (`FUNC_ID`),
  CONSTRAINT `KRMS_FUNC_CTGRY_FK2` FOREIGN KEY (`CTGRY_ID`) REFERENCES `krms_ctgry_t` (`CTGRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_func_ctgry_t`
--

LOCK TABLES `krms_func_ctgry_t` WRITE;
/*!40000 ALTER TABLE `krms_func_ctgry_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_func_ctgry_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_func_parm_s`
--

DROP TABLE IF EXISTS `krms_func_parm_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_func_parm_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_func_parm_s`
--

LOCK TABLES `krms_func_parm_s` WRITE;
/*!40000 ALTER TABLE `krms_func_parm_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_func_parm_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_func_parm_t`
--

DROP TABLE IF EXISTS `krms_func_parm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_func_parm_t` (
  `FUNC_PARM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `SEQ_NO` decimal(5,0) NOT NULL,
  PRIMARY KEY (`FUNC_PARM_ID`),
  KEY `KRMS_FUNC_PARM_TI1` (`FUNC_ID`),
  CONSTRAINT `KRMS_FUNC_PARM_FK1` FOREIGN KEY (`FUNC_ID`) REFERENCES `krms_func_t` (`FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_func_parm_t`
--

LOCK TABLES `krms_func_parm_t` WRITE;
/*!40000 ALTER TABLE `krms_func_parm_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_func_parm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_func_s`
--

DROP TABLE IF EXISTS `krms_func_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_func_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_func_s`
--

LOCK TABLES `krms_func_s` WRITE;
/*!40000 ALTER TABLE `krms_func_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_func_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_func_t`
--

DROP TABLE IF EXISTS `krms_func_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_func_t` (
  `FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RTRN_TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUNC_ID`),
  UNIQUE KEY `KRMS_FUNC_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRMS_FUNC_TI1` (`TYP_ID`),
  CONSTRAINT `KRMS_FUNC_FK1` FOREIGN KEY (`TYP_ID`) REFERENCES `krms_typ_t` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_func_t`
--

LOCK TABLES `krms_func_t` WRITE;
/*!40000 ALTER TABLE `krms_func_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_func_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_nl_tmpl_attr_s`
--

DROP TABLE IF EXISTS `krms_nl_tmpl_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_nl_tmpl_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_nl_tmpl_attr_s`
--

LOCK TABLES `krms_nl_tmpl_attr_s` WRITE;
/*!40000 ALTER TABLE `krms_nl_tmpl_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_nl_tmpl_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_nl_tmpl_attr_t`
--

DROP TABLE IF EXISTS `krms_nl_tmpl_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_nl_tmpl_attr_t` (
  `NL_TMPL_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NL_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NL_TMPL_ATTR_ID`),
  UNIQUE KEY `KRMS_NL_TMPL_ATTR_TC1` (`NL_TMPL_ID`,`ATTR_DEFN_ID`),
  KEY `KRMS_NL_TMPL_ATTR_FK2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_NL_TMPL_ATTR_FK1` FOREIGN KEY (`NL_TMPL_ID`) REFERENCES `krms_nl_tmpl_t` (`NL_TMPL_ID`),
  CONSTRAINT `KRMS_NL_TMPL_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krms_attr_defn_t` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_nl_tmpl_attr_t`
--

LOCK TABLES `krms_nl_tmpl_attr_t` WRITE;
/*!40000 ALTER TABLE `krms_nl_tmpl_attr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_nl_tmpl_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_nl_tmpl_s`
--

DROP TABLE IF EXISTS `krms_nl_tmpl_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_nl_tmpl_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_nl_tmpl_s`
--

LOCK TABLES `krms_nl_tmpl_s` WRITE;
/*!40000 ALTER TABLE `krms_nl_tmpl_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_nl_tmpl_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_nl_tmpl_t`
--

DROP TABLE IF EXISTS `krms_nl_tmpl_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_nl_tmpl_t` (
  `NL_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LANG_CD` varchar(2) COLLATE utf8_bin NOT NULL,
  `NL_USAGE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `TMPL` varchar(4000) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NL_TMPL_ID`),
  UNIQUE KEY `KRMS_NL_TMPL_TC1` (`LANG_CD`,`NL_USAGE_ID`,`TYP_ID`),
  KEY `KRMS_TYP_T` (`TYP_ID`),
  KEY `KRMS_NL_TMPL_FK1` (`NL_USAGE_ID`),
  CONSTRAINT `KRMS_NL_TMPL_FK1` FOREIGN KEY (`NL_USAGE_ID`) REFERENCES `krms_nl_usage_t` (`NL_USAGE_ID`),
  CONSTRAINT `KRMS_TYP_T` FOREIGN KEY (`TYP_ID`) REFERENCES `krms_typ_t` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_nl_tmpl_t`
--

LOCK TABLES `krms_nl_tmpl_t` WRITE;
/*!40000 ALTER TABLE `krms_nl_tmpl_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_nl_tmpl_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_nl_usage_attr_s`
--

DROP TABLE IF EXISTS `krms_nl_usage_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_nl_usage_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_nl_usage_attr_s`
--

LOCK TABLES `krms_nl_usage_attr_s` WRITE;
/*!40000 ALTER TABLE `krms_nl_usage_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_nl_usage_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_nl_usage_attr_t`
--

DROP TABLE IF EXISTS `krms_nl_usage_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_nl_usage_attr_t` (
  `NL_USAGE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NL_USAGE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NL_USAGE_ATTR_ID`),
  UNIQUE KEY `KRMS_NL_USAGE_ATTR_TC1` (`NL_USAGE_ID`,`ATTR_DEFN_ID`),
  KEY `KRMS_NL_USAGE_ATTR_FK2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_NL_USAGE_ATTR_FK1` FOREIGN KEY (`NL_USAGE_ID`) REFERENCES `krms_nl_usage_t` (`NL_USAGE_ID`),
  CONSTRAINT `KRMS_NL_USAGE_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krms_attr_defn_t` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_nl_usage_attr_t`
--

LOCK TABLES `krms_nl_usage_attr_t` WRITE;
/*!40000 ALTER TABLE `krms_nl_usage_attr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_nl_usage_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_nl_usage_s`
--

DROP TABLE IF EXISTS `krms_nl_usage_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_nl_usage_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_nl_usage_s`
--

LOCK TABLES `krms_nl_usage_s` WRITE;
/*!40000 ALTER TABLE `krms_nl_usage_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_nl_usage_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_nl_usage_t`
--

DROP TABLE IF EXISTS `krms_nl_usage_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_nl_usage_t` (
  `NL_USAGE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NL_USAGE_ID`),
  UNIQUE KEY `KRMS_NL_USAGE_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_nl_usage_t`
--

LOCK TABLES `krms_nl_usage_t` WRITE;
/*!40000 ALTER TABLE `krms_nl_usage_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_nl_usage_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_prop_parm_s`
--

DROP TABLE IF EXISTS `krms_prop_parm_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_prop_parm_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_prop_parm_s`
--

LOCK TABLES `krms_prop_parm_s` WRITE;
/*!40000 ALTER TABLE `krms_prop_parm_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_prop_parm_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_prop_parm_t`
--

DROP TABLE IF EXISTS `krms_prop_parm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_prop_parm_t` (
  `PROP_PARM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PROP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PARM_VAL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARM_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `SEQ_NO` decimal(5,0) NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROP_PARM_ID`),
  KEY `KRMS_PROP_PARM_TI1` (`PROP_ID`),
  CONSTRAINT `KRMS_PROP_PARM_FK1` FOREIGN KEY (`PROP_ID`) REFERENCES `krms_prop_t` (`PROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_prop_parm_t`
--

LOCK TABLES `krms_prop_parm_t` WRITE;
/*!40000 ALTER TABLE `krms_prop_parm_t` DISABLE KEYS */;
INSERT INTO `krms_prop_parm_t` VALUES ('T1000','T1000','T1002','T',1,1),('T1001','T1000','BL','C',2,1),('T1002','T1000','=','O',3,1),('T1003','T1001','T1002','T',1,1),('T1004','T1001','BL','C',2,1),('T1005','T1001','=','O',3,1),('T1006','T1002','T1002','T',1,1),('T1007','T1002','BL','C',2,1),('T1008','T1002','=','O',3,1),('T1009','T1003','T1002','T',1,1),('T1010','T1003','BL','C',2,1),('T1011','T1003','=','O',3,1),('T1012','T1004','T1002','T',1,1),('T1013','T1004','BL','C',2,1),('T1014','T1004','=','O',3,1),('T1015','T1005','T1002','T',1,1),('T1016','T1005','BL','C',2,1),('T1017','T1005','=','O',3,1),('T1018','T1006','T1002','T',1,1),('T1019','T1006','BL','C',2,1),('T1020','T1006','=','O',3,1),('T1021','T1008','T1002','T',1,1),('T1022','T1008','Muir','C',2,1),('T1023','T1008','=','O',3,1),('T1024','T1009','T1002','T',1,1),('T1025','T1009','Revelle','C',2,1),('T1026','T1009','=','O',3,1),('T1027','T1010','T1002','T',1,1),('T1028','T1010','Warren','C',2,1),('T1029','T1010','=','O',3,1),('T1030','T1012','T1004','T',1,1),('T1031','T1012','5500.00','C',2,1),('T1032','T1012','>','O',3,1),('T1033','T1015','T1005','T',1,1),('T1034','T1015','ANIMAL','C',2,1),('T1035','T1015','=','O',3,1),('T1036','T1016','T1005','T',1,1),('T1037','T1016','RADIOACTIVE','C',2,1),('T1038','T1016','=','O',3,1),('T1039','T1017','T1005','T',1,1),('T1040','T1017','ALCOHOL BEVERAGE','C',2,1),('T1041','T1017','=','O',3,1),('T1042','T1018','T1006','T',1,1),('T1043','T1018','KUALI SLUSH FUND','C',2,1),('T1044','T1018','=','O',3,1),('T1045','T1019','T1007','T',1,1),('T1046','T1019','Christmas Party','C',2,1),('T1047','T1019','=','O',3,1);
/*!40000 ALTER TABLE `krms_prop_parm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_prop_s`
--

DROP TABLE IF EXISTS `krms_prop_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_prop_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_prop_s`
--

LOCK TABLES `krms_prop_s` WRITE;
/*!40000 ALTER TABLE `krms_prop_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_prop_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_prop_t`
--

DROP TABLE IF EXISTS `krms_prop_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_prop_t` (
  `PROP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DESC_TXT` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DSCRM_TYP_CD` varchar(10) COLLATE utf8_bin NOT NULL,
  `CMPND_OP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `CMPND_SEQ_NO` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`PROP_ID`),
  KEY `KRMS_PROP_FK2` (`TYP_ID`),
  KEY `KRMS_PROP_TI1` (`RULE_ID`),
  CONSTRAINT `KRMS_PROP_FK2` FOREIGN KEY (`TYP_ID`) REFERENCES `krms_typ_t` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_prop_t`
--

LOCK TABLES `krms_prop_t` WRITE;
/*!40000 ALTER TABLE `krms_prop_t` DISABLE KEYS */;
INSERT INTO `krms_prop_t` VALUES ('T1000','is campus bloomington',NULL,'S',NULL,'T1000',1,NULL),('T1001','is campus bloomington',NULL,'S',NULL,'T1001',1,NULL),('T1002','is campus bloomington',NULL,'S',NULL,'T1002',1,NULL),('T1003','is campus bloomington',NULL,'S',NULL,'T1003',1,NULL),('T1004','is campus bloomington',NULL,'S',NULL,'T1004',1,NULL),('T1005','is campus bloomington',NULL,'S',NULL,'T1005',1,NULL),('T1006','is campus bloomington',NULL,'S',NULL,'T1006',1,NULL),('T1007','a compound prop',NULL,'C','&','T1007',1,NULL),('T1008','a simple child to a compound prop',NULL,'S',NULL,'T1007',1,NULL),('T1009','2nd simple child to a compound prop ',NULL,'S',NULL,'T1007',1,2),('T1010','3nd simple child to a compound prop ',NULL,'S',NULL,'T1007',1,3),('T1011','is purchase special',NULL,'C','&','T1008',1,NULL),('T1012','is purchase order value large',NULL,'S',NULL,'T1008',1,NULL),('T1013','is purchased item controlled',NULL,'C','|','T1008',1,NULL),('T1014','is it for a special event',NULL,'C','&','T1008',1,NULL),('T1015','is item purchased animal',NULL,'S',NULL,'T1008',1,NULL),('T1016','is purchased item radioactive',NULL,'S',NULL,'T1008',1,NULL),('T1017','is it medicinal',NULL,'S',NULL,'T1008',1,3),('T1018','charged to Kuali',NULL,'S',NULL,'T1008',1,NULL),('T1019','Party at Travis House',NULL,'S',NULL,'T1008',1,NULL);
/*!40000 ALTER TABLE `krms_prop_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_ref_obj_krms_obj_s`
--

DROP TABLE IF EXISTS `krms_ref_obj_krms_obj_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_ref_obj_krms_obj_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_ref_obj_krms_obj_s`
--

LOCK TABLES `krms_ref_obj_krms_obj_s` WRITE;
/*!40000 ALTER TABLE `krms_ref_obj_krms_obj_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_ref_obj_krms_obj_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_ref_obj_krms_obj_t`
--

DROP TABLE IF EXISTS `krms_ref_obj_krms_obj_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_ref_obj_krms_obj_t` (
  `REF_OBJ_KRMS_OBJ_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `COLLECTION_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KRMS_OBJ_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KRMS_DSCR_TYP` varchar(40) COLLATE utf8_bin NOT NULL,
  `REF_OBJ_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `REF_DSCR_TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REF_OBJ_KRMS_OBJ_ID`),
  UNIQUE KEY `KRMS_REF_OBJ_KRMS_OBJ_TC1` (`COLLECTION_NM`,`KRMS_OBJ_ID`,`KRMS_DSCR_TYP`,`REF_OBJ_ID`,`REF_DSCR_TYP`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_ref_obj_krms_obj_t`
--

LOCK TABLES `krms_ref_obj_krms_obj_t` WRITE;
/*!40000 ALTER TABLE `krms_ref_obj_krms_obj_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_ref_obj_krms_obj_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_rule_attr_s`
--

DROP TABLE IF EXISTS `krms_rule_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_rule_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_rule_attr_s`
--

LOCK TABLES `krms_rule_attr_s` WRITE;
/*!40000 ALTER TABLE `krms_rule_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_rule_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_rule_attr_t`
--

DROP TABLE IF EXISTS `krms_rule_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_rule_attr_t` (
  `RULE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RULE_ATTR_ID`),
  KEY `KRMS_RULE_ATTR_TI1` (`RULE_ID`),
  KEY `KRMS_RULE_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_RULE_ATTR_FK1` FOREIGN KEY (`RULE_ID`) REFERENCES `krms_rule_t` (`RULE_ID`),
  CONSTRAINT `KRMS_RULE_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krms_attr_defn_t` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_rule_attr_t`
--

LOCK TABLES `krms_rule_attr_t` WRITE;
/*!40000 ALTER TABLE `krms_rule_attr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_rule_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_rule_s`
--

DROP TABLE IF EXISTS `krms_rule_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_rule_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_rule_s`
--

LOCK TABLES `krms_rule_s` WRITE;
/*!40000 ALTER TABLE `krms_rule_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_rule_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_rule_t`
--

DROP TABLE IF EXISTS `krms_rule_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_rule_t` (
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PROP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RULE_ID`),
  UNIQUE KEY `KRMS_RULE_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRMS_RULE_TI1` (`PROP_ID`),
  CONSTRAINT `KRMS_RULE_FK1` FOREIGN KEY (`PROP_ID`) REFERENCES `krms_prop_t` (`PROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_rule_t`
--

LOCK TABLES `krms_rule_t` WRITE;
/*!40000 ALTER TABLE `krms_rule_t` DISABLE KEYS */;
INSERT INTO `krms_rule_t` VALUES ('T1000','KR-RULE-TEST','Rule1',NULL,'T1000','Y',1,'stub rule lorem ipsum'),('T1001','KR-RULE-TEST','Rule2',NULL,'T1001','Y',1,'Frog specimens bogus rule foo'),('T1002','KR-RULE-TEST','Rule3',NULL,'T1002','Y',1,'Bloomington campus code rule'),('T1003','KR-RULE-TEST','Rule4',NULL,'T1003','Y',1,'check for possible BBQ ingiter hazard'),('T1004','KR-RULE-TEST','Rule5',NULL,'T1004','Y',1,'remembered to wear socks'),('T1005','KR-RULE-TEST','Rule6',NULL,'T1005','Y',1,'good behavior at carnival'),('T1006','KR-RULE-TEST','Rule7',NULL,'T1006','Y',1,'is KRMS in da haus'),('T1007','KR-RULE-TEST','CmpdTestRule',NULL,'T1007','Y',1,'For testing compound props'),('T1008','KR-RULE-TEST','Going Away Party for Travis',NULL,'T1011','Y',1,'Does PO require my approval');
/*!40000 ALTER TABLE `krms_rule_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_parm_s`
--

DROP TABLE IF EXISTS `krms_term_parm_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_parm_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_parm_s`
--

LOCK TABLES `krms_term_parm_s` WRITE;
/*!40000 ALTER TABLE `krms_term_parm_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_parm_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_parm_t`
--

DROP TABLE IF EXISTS `krms_term_parm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_parm_t` (
  `TERM_PARM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL,
  PRIMARY KEY (`TERM_PARM_ID`),
  KEY `KRMS_TERM_PARM_TI1` (`TERM_ID`),
  CONSTRAINT `KRMS_TERM_PARM_FK1` FOREIGN KEY (`TERM_ID`) REFERENCES `krms_term_t` (`TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_parm_t`
--

LOCK TABLES `krms_term_parm_t` WRITE;
/*!40000 ALTER TABLE `krms_term_parm_t` DISABLE KEYS */;
INSERT INTO `krms_term_parm_t` VALUES ('T1000','T1000','Campus Code','BL',1);
/*!40000 ALTER TABLE `krms_term_parm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_rslvr_attr_s`
--

DROP TABLE IF EXISTS `krms_term_rslvr_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_rslvr_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_rslvr_attr_s`
--

LOCK TABLES `krms_term_rslvr_attr_s` WRITE;
/*!40000 ALTER TABLE `krms_term_rslvr_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_rslvr_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_rslvr_attr_t`
--

DROP TABLE IF EXISTS `krms_term_rslvr_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_rslvr_attr_t` (
  `TERM_RSLVR_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_RSLVR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TERM_RSLVR_ATTR_ID`),
  KEY `KRMS_TERM_RSLVR_ATTR_TI1` (`TERM_RSLVR_ID`),
  KEY `KRMS_TERM_RSLVR_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_TERM_RSLVR_ATTR_FK1` FOREIGN KEY (`TERM_RSLVR_ID`) REFERENCES `krms_term_rslvr_t` (`TERM_RSLVR_ID`),
  CONSTRAINT `KRMS_TERM_RSLVR_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krms_attr_defn_t` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_rslvr_attr_t`
--

LOCK TABLES `krms_term_rslvr_attr_t` WRITE;
/*!40000 ALTER TABLE `krms_term_rslvr_attr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_rslvr_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_rslvr_input_spec_s`
--

DROP TABLE IF EXISTS `krms_term_rslvr_input_spec_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_rslvr_input_spec_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_rslvr_input_spec_s`
--

LOCK TABLES `krms_term_rslvr_input_spec_s` WRITE;
/*!40000 ALTER TABLE `krms_term_rslvr_input_spec_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_rslvr_input_spec_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_rslvr_input_spec_t`
--

DROP TABLE IF EXISTS `krms_term_rslvr_input_spec_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_rslvr_input_spec_t` (
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_RSLVR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`TERM_SPEC_ID`,`TERM_RSLVR_ID`),
  KEY `KRMS_INPUT_ASSET_TI1` (`TERM_SPEC_ID`),
  KEY `KRMS_INPUT_ASSET_TI2` (`TERM_RSLVR_ID`),
  CONSTRAINT `KRMS_INPUT_ASSET_FK1` FOREIGN KEY (`TERM_RSLVR_ID`) REFERENCES `krms_term_rslvr_t` (`TERM_RSLVR_ID`),
  CONSTRAINT `KRMS_INPUT_ASSET_FK2` FOREIGN KEY (`TERM_SPEC_ID`) REFERENCES `krms_term_spec_t` (`TERM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_rslvr_input_spec_t`
--

LOCK TABLES `krms_term_rslvr_input_spec_t` WRITE;
/*!40000 ALTER TABLE `krms_term_rslvr_input_spec_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_rslvr_input_spec_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_rslvr_parm_spec_s`
--

DROP TABLE IF EXISTS `krms_term_rslvr_parm_spec_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_rslvr_parm_spec_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_rslvr_parm_spec_s`
--

LOCK TABLES `krms_term_rslvr_parm_spec_s` WRITE;
/*!40000 ALTER TABLE `krms_term_rslvr_parm_spec_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_rslvr_parm_spec_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_rslvr_parm_spec_t`
--

DROP TABLE IF EXISTS `krms_term_rslvr_parm_spec_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_rslvr_parm_spec_t` (
  `TERM_RSLVR_PARM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_RSLVR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(45) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL,
  PRIMARY KEY (`TERM_RSLVR_PARM_SPEC_ID`),
  KEY `KRMS_TERM_RESLV_PARM_FK1` (`TERM_RSLVR_ID`),
  CONSTRAINT `KRMS_TERM_RESLV_PARM_FK1` FOREIGN KEY (`TERM_RSLVR_ID`) REFERENCES `krms_term_rslvr_t` (`TERM_RSLVR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_rslvr_parm_spec_t`
--

LOCK TABLES `krms_term_rslvr_parm_spec_t` WRITE;
/*!40000 ALTER TABLE `krms_term_rslvr_parm_spec_t` DISABLE KEYS */;
INSERT INTO `krms_term_rslvr_parm_spec_t` VALUES ('T1000','T1000','Campus Code',1),('T1001','T1001','Org Code',1),('T1002','T1001','Principal ID',1);
/*!40000 ALTER TABLE `krms_term_rslvr_parm_spec_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_rslvr_s`
--

DROP TABLE IF EXISTS `krms_term_rslvr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_rslvr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_rslvr_s`
--

LOCK TABLES `krms_term_rslvr_s` WRITE;
/*!40000 ALTER TABLE `krms_term_rslvr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_rslvr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_rslvr_t`
--

DROP TABLE IF EXISTS `krms_term_rslvr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_rslvr_t` (
  `TERM_RSLVR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OUTPUT_TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TERM_RSLVR_ID`),
  UNIQUE KEY `KRMS_TERM_RSLVR_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRMS_TERM_RSLVR_TI2` (`TYP_ID`),
  KEY `KRMS_TERM_RSLVR_FK1` (`OUTPUT_TERM_SPEC_ID`),
  CONSTRAINT `KRMS_TERM_RSLVR_FK1` FOREIGN KEY (`OUTPUT_TERM_SPEC_ID`) REFERENCES `krms_term_spec_t` (`TERM_SPEC_ID`),
  CONSTRAINT `KRMS_TERM_RSLVR_FK3` FOREIGN KEY (`TYP_ID`) REFERENCES `krms_typ_t` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_rslvr_t`
--

LOCK TABLES `krms_term_rslvr_t` WRITE;
/*!40000 ALTER TABLE `krms_term_rslvr_t` DISABLE KEYS */;
INSERT INTO `krms_term_rslvr_t` VALUES ('T1000','KR-RULE-TEST','campusSizeResolver','T1000','T1000','Y',1),('T1001','KR-RULE-TEST','orgMemberResolver','T1000','T1001','Y',1);
/*!40000 ALTER TABLE `krms_term_rslvr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_s`
--

DROP TABLE IF EXISTS `krms_term_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_s`
--

LOCK TABLES `krms_term_s` WRITE;
/*!40000 ALTER TABLE `krms_term_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_spec_ctgry_t`
--

DROP TABLE IF EXISTS `krms_term_spec_ctgry_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_spec_ctgry_t` (
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CTGRY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`TERM_SPEC_ID`,`CTGRY_ID`),
  KEY `KRMS_TERM_SPEC_CTGRY_FK2` (`CTGRY_ID`),
  CONSTRAINT `KRMS_TERM_SPEC_CTGRY_FK1` FOREIGN KEY (`TERM_SPEC_ID`) REFERENCES `krms_term_spec_t` (`TERM_SPEC_ID`),
  CONSTRAINT `KRMS_TERM_SPEC_CTGRY_FK2` FOREIGN KEY (`CTGRY_ID`) REFERENCES `krms_ctgry_t` (`CTGRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_spec_ctgry_t`
--

LOCK TABLES `krms_term_spec_ctgry_t` WRITE;
/*!40000 ALTER TABLE `krms_term_spec_ctgry_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_spec_ctgry_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_spec_s`
--

DROP TABLE IF EXISTS `krms_term_spec_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_spec_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_spec_s`
--

LOCK TABLES `krms_term_spec_s` WRITE;
/*!40000 ALTER TABLE `krms_term_spec_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_term_spec_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_spec_t`
--

DROP TABLE IF EXISTS `krms_term_spec_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_spec_t` (
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT 'null',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`TERM_SPEC_ID`),
  UNIQUE KEY `KRMS_TERM_SPEC_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_spec_t`
--

LOCK TABLES `krms_term_spec_t` WRITE;
/*!40000 ALTER TABLE `krms_term_spec_t` DISABLE KEYS */;
INSERT INTO `krms_term_spec_t` VALUES ('T1000','campusSize','java.lang.Integer','Y',1,'Size in # of students of the campus','KR-RULE-TEST'),('T1001','orgMember','java.lang.Boolean','Y',1,'is the principal in the organization','KR-RULE-TEST'),('T1002','Campus Code','java.lang.String','Y',1,'null','KR-RULE-TEST'),('T1003','bogusFundTermSpec','java.lang.String','Y',1,'null','KR-RULE-TEST'),('T1004','PO Value','java.lang.Integer','Y',1,'Purchase Order Value','KR-RULE-TEST'),('T1005','PO Item Type','java.lang.String','Y',1,'Purchased Item Type','KR-RULE-TEST'),('T1006','Account','java.lang.String','Y',1,'Charged To Account','KR-RULE-TEST'),('T1007','Occasion','java.lang.String','Y',1,'Special Event','KR-RULE-TEST'),('T1008','campusCode','java.lang.String','Y',1,'null','KR-RULE-TEST');
/*!40000 ALTER TABLE `krms_term_spec_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_term_t`
--

DROP TABLE IF EXISTS `krms_term_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_term_t` (
  `TERM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT 'null',
  PRIMARY KEY (`TERM_ID`),
  KEY `KRMS_TERM_TI1` (`TERM_SPEC_ID`),
  CONSTRAINT `KRMS_TERM_T__FK1` FOREIGN KEY (`TERM_SPEC_ID`) REFERENCES `krms_term_spec_t` (`TERM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_term_t`
--

LOCK TABLES `krms_term_t` WRITE;
/*!40000 ALTER TABLE `krms_term_t` DISABLE KEYS */;
INSERT INTO `krms_term_t` VALUES ('T1000','T1000',1,'Bloomington Campus Size'),('T1002','T1002',1,'null'),('T1003','T1003',1,'Fund Name'),('T1004','T1004',1,'PO Value'),('T1005','T1005',1,'PO Item Type'),('T1006','T1006',1,'Account'),('T1007','T1007',1,'Occasion');
/*!40000 ALTER TABLE `krms_term_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_typ_attr_s`
--

DROP TABLE IF EXISTS `krms_typ_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_typ_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_typ_attr_s`
--

LOCK TABLES `krms_typ_attr_s` WRITE;
/*!40000 ALTER TABLE `krms_typ_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_typ_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_typ_attr_t`
--

DROP TABLE IF EXISTS `krms_typ_attr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_typ_attr_t` (
  `TYP_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `SEQ_NO` decimal(5,0) NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYP_ATTR_ID`),
  UNIQUE KEY `KRMS_TYP_ATTR_TC1` (`TYP_ID`,`ATTR_DEFN_ID`),
  KEY `KRMS_TYP_ATTR_TI1` (`ATTR_DEFN_ID`),
  KEY `KRMS_TYP_ATTR_TI2` (`TYP_ID`),
  CONSTRAINT `KRMS_TYP_ATTR_FK1` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `krms_attr_defn_t` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_TYP_ATTR_FK2` FOREIGN KEY (`TYP_ID`) REFERENCES `krms_typ_t` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_typ_attr_t`
--

LOCK TABLES `krms_typ_attr_t` WRITE;
/*!40000 ALTER TABLE `krms_typ_attr_t` DISABLE KEYS */;
INSERT INTO `krms_typ_attr_t` VALUES ('1000',1,'1000','1000','Y',0),('1001',1,'1001','1000','Y',0),('1002',1,'1002','1001','Y',1),('1005',2,'1003','1004','Y',1),('1006',3,'1003','1005','Y',1),('1007',3,'1000','1006','Y',1),('1008',3,'1001','1006','Y',1),('T1000',1,'T1003','T1000','Y',1),('T1001',2,'T1005','T1002','Y',0),('T1002',1,'T1005','T1003','Y',0);
/*!40000 ALTER TABLE `krms_typ_attr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_typ_reln_s`
--

DROP TABLE IF EXISTS `krms_typ_reln_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_typ_reln_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_typ_reln_s`
--

LOCK TABLES `krms_typ_reln_s` WRITE;
/*!40000 ALTER TABLE `krms_typ_reln_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_typ_reln_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_typ_reln_t`
--

DROP TABLE IF EXISTS `krms_typ_reln_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_typ_reln_t` (
  `TYP_RELN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `FROM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `TO_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RELN_TYP` varchar(40) COLLATE utf8_bin NOT NULL,
  `SEQ_NO` decimal(5,0) NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`TYP_RELN_ID`),
  UNIQUE KEY `KRMS_TYP_RELN_TC1` (`FROM_TYP_ID`,`TO_TYP_ID`,`RELN_TYP`),
  KEY `KRMS_TYP_RELN_FK2` (`TO_TYP_ID`),
  CONSTRAINT `KRMS_TYP_RELN_FK1` FOREIGN KEY (`FROM_TYP_ID`) REFERENCES `krms_typ_t` (`TYP_ID`),
  CONSTRAINT `KRMS_TYP_RELN_FK2` FOREIGN KEY (`TO_TYP_ID`) REFERENCES `krms_typ_t` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_typ_reln_t`
--

LOCK TABLES `krms_typ_reln_t` WRITE;
/*!40000 ALTER TABLE `krms_typ_reln_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_typ_reln_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_typ_s`
--

DROP TABLE IF EXISTS `krms_typ_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_typ_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_typ_s`
--

LOCK TABLES `krms_typ_s` WRITE;
/*!40000 ALTER TABLE `krms_typ_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krms_typ_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krms_typ_t`
--

DROP TABLE IF EXISTS `krms_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krms_typ_t` (
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `SRVC_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYP_ID`),
  UNIQUE KEY `KRMS_TYP_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krms_typ_t`
--

LOCK TABLES `krms_typ_t` WRITE;
/*!40000 ALTER TABLE `krms_typ_t` DISABLE KEYS */;
INSERT INTO `krms_typ_t` VALUES ('1000','Notify PeopleFlow','KR-RULE','notificationPeopleFlowActionTypeService','Y',1),('1001','Route to PeopleFlow','KR-RULE','approvalPeopleFlowActionTypeService','Y',1),('1002','Validation Rule','KR-RULE','validationRuleTypeService','Y',1),('1003','Validation Action','KR-RULE','validationActionTypeService','Y',1),('T1000','TermResolver','KR-RULE-TEST',NULL,'Y',1),('T1001','CAMPUS','KR-RULE-TEST','myCampusService','Y',1),('T1002','KrmsActionResolverType','KR-RULE-TEST','testActionTypeService','Y',1),('T1003','CONTEXT','KR-RULE-TEST',NULL,'Y',1),('T1004','AGENDA','KR-RULE-TEST',NULL,'Y',1),('T1005','Campus Agenda','KR-RULE-TEST','campusAgendaTypeService','Y',1);
/*!40000 ALTER TABLE `krms_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_adhoc_rte_actn_recip_t`
--

DROP TABLE IF EXISTS `krns_adhoc_rte_actn_recip_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_adhoc_rte_actn_recip_t` (
  `RECIP_TYP_CD` decimal(1,0) NOT NULL DEFAULT '0',
  `ACTN_RQST_CD` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACTN_RQST_RECIP_ID` varchar(70) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`RECIP_TYP_CD`,`ACTN_RQST_CD`,`ACTN_RQST_RECIP_ID`,`DOC_HDR_ID`),
  UNIQUE KEY `KRNS_ADHOC_RTE_ACTN_RECIP_TC0` (`OBJ_ID`),
  KEY `KRNS_ADHOC_RTE_ACTN_RECIP_T2` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_adhoc_rte_actn_recip_t`
--

LOCK TABLES `krns_adhoc_rte_actn_recip_t` WRITE;
/*!40000 ALTER TABLE `krns_adhoc_rte_actn_recip_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_adhoc_rte_actn_recip_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_att_t`
--

DROP TABLE IF EXISTS `krns_att_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_att_t` (
  `NTE_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `MIME_TYP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FILE_NM` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `ATT_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `FILE_SZ` decimal(14,0) DEFAULT NULL,
  `ATT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTE_ID`),
  UNIQUE KEY `KRNS_ATT_TC0` (`OBJ_ID`),
  CONSTRAINT `KRNS_ATT_TR1` FOREIGN KEY (`NTE_ID`) REFERENCES `krns_nte_t` (`NTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_att_t`
--

LOCK TABLES `krns_att_t` WRITE;
/*!40000 ALTER TABLE `krns_att_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_att_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_doc_hdr_t`
--

DROP TABLE IF EXISTS `krns_doc_hdr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_doc_hdr_t` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `FDOC_DESC` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ORG_DOC_HDR_ID` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `TMPL_DOC_HDR_ID` varchar(14) COLLATE utf8_bin DEFAULT NULL,
  `EXPLANATION` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_ID`),
  UNIQUE KEY `KRNS_DOC_HDR_TC0` (`OBJ_ID`),
  KEY `KRNS_DOC_HDR_TI3` (`ORG_DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_doc_hdr_t`
--

LOCK TABLES `krns_doc_hdr_t` WRITE;
/*!40000 ALTER TABLE `krns_doc_hdr_t` DISABLE KEYS */;
INSERT INTO `krns_doc_hdr_t` VALUES ('2123','A1CE1FBC-4CB8-672E-0CA0-8CF1F9E7001B',4,'rewer','1',NULL,NULL),('2381','5376DA5C-E693-65A5-E1B4-B403660B5315',2,'test',NULL,NULL,NULL),('2382','1586F905-5C0A-5348-72A4-BF9ECDD1967F',2,'test',NULL,NULL,NULL),('2383','00375DE1-4F36-8000-DA86-B731D73FFE03',2,'a5',NULL,NULL,NULL),('2384','BD50B601-2F27-184A-6349-52F696F1927B',5,'asdf',NULL,NULL,NULL),('2387','5FECE942-58D1-CCA7-36D9-F47AD78EEE89',2,'test trans doc',NULL,NULL,NULL),('2388','30034849-5137-0893-9871-87B1D8015D77',2,'test trans doc 2',NULL,NULL,NULL),('2389','889E14B3-B2C4-1B46-6B95-FDA71509360B',2,'test trans doc 3',NULL,NULL,NULL),('2390','D97C2F77-0CAE-0CF4-BBC8-F7D83143A72D',2,'test trans doc 4',NULL,NULL,NULL),('2391','FA4C747D-D12F-FBE5-4841-5FE813973D3F',3,'test trans doc 5',NULL,NULL,NULL),('2392','37681271-55AD-67D3-994D-9438CC088A2C',5,'a8',NULL,NULL,NULL),('2393','494D43EF-7987-2726-4F0D-2C3817A28A87',2,'asdf',NULL,NULL,NULL),('2394','D0E4F8A1-617C-6819-3DBE-5189C9248E43',5,'asdf',NULL,NULL,NULL),('2396','128456EF-B9B4-D940-FFF8-2DD5E66312D6',2,'asdf',NULL,NULL,NULL),('2400','FFB6EF95-9B5B-85DB-7044-5F72EAC68615',2,'asdf',NULL,NULL,NULL),('2401','CA3E068D-CA02-190F-FE25-0E3DCBA14C96',2,'dsaf',NULL,NULL,NULL),('2402','35BC7B93-8288-5D36-D32A-1B1096094081',2,'sdfa',NULL,NULL,NULL),('2403','80729320-661F-9133-473B-69E0138D4A9B',2,'sadf',NULL,NULL,NULL),('2404','38735150-77D3-BA30-3B01-D7F025C15FAA',2,'ASDf',NULL,NULL,NULL),('2405','D3537A08-6173-4DD8-B925-E3493F587DCD',4,'sdaf',NULL,NULL,NULL),('2406','36A06489-8F83-C489-455F-A1D4A9082248',5,'a14',NULL,NULL,NULL),('2407','539F5EAB-CFBB-16D8-E7C0-6326793DCDB3',4,'dsaf',NULL,NULL,NULL),('2410','0A69E828-1BE0-CC72-FB18-A518033184E7',5,'sadf',NULL,NULL,NULL),('2480','A1DACA08-BA46-F2CC-F3E6-2F5C7FA9ACC4',2,'nate',NULL,NULL,NULL),('2481','39EE9595-5121-1527-0E6E-B1380A1A13A7',2,'nate2',NULL,NULL,NULL),('2482','26ECE1C4-077D-2772-312D-B03B14D117FB',4,'nate3',NULL,NULL,NULL),('2483','6948923D-524D-3990-EAF6-28247E1B1904',4,'nate after convertions',NULL,NULL,NULL),('2484','BAB7E16B-792C-26A6-80DB-5FAACFC45CF1',4,'one more',NULL,NULL,NULL),('2500','6B2F08FD-15C4-72F2-10C2-E887F5C6752E',2,'testing patch',NULL,NULL,NULL),('2501','ECF3E5A5-E5A3-0EB9-38E6-510D71084E9D',4,'testing patch 2',NULL,NULL,NULL),('2520','EE1240AF-EA07-F774-0B1C-7483C853FB3E',2,'2234',NULL,NULL,NULL),('2521','2028AB52-184F-86E2-0BD3-8CE296CF2F84',2,'asdfsd',NULL,NULL,NULL),('2522','F0FDB682-C109-CD1F-EB32-347A7D04270D',4,'sadf',NULL,NULL,NULL),('2584','4A9A559F-9D10-9B92-E814-60F82E392853',2,'sadsadsadas',NULL,NULL,NULL),('2640','1F360AC6-6DCD-BFA2-63E3-B5027F41B391',4,'test','123',NULL,'dsf'),('2692','8ED05623-5D21-C6ED-715F-CEF4E3C43D30',2,'test','1',NULL,NULL),('2693','59108177-A298-55C3-2595-DAFD985F67F2',2,'test',NULL,NULL,NULL),('2694','58EF3839-6297-549E-FCB1-B23144800B0E',2,'esdf',NULL,NULL,NULL),('2695','575820F1-EE03-E7C8-F32B-9640D0D25B5A',7,'dfads',NULL,NULL,NULL),('2700','CCE4C116-CE7C-2D35-759B-E9C28D7CFAAB',5,'Create a new delegation rule for test',NULL,NULL,NULL),('2701','564A761C-6CCD-2E0B-6AC7-E528B655CA60',2,'test',NULL,NULL,NULL);
/*!40000 ALTER TABLE `krns_doc_hdr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_doc_typ_attr_s`
--

DROP TABLE IF EXISTS `krns_doc_typ_attr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_doc_typ_attr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_doc_typ_attr_s`
--

LOCK TABLES `krns_doc_typ_attr_s` WRITE;
/*!40000 ALTER TABLE `krns_doc_typ_attr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_doc_typ_attr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_lock_s`
--

DROP TABLE IF EXISTS `krns_lock_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_lock_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_lock_s`
--

LOCK TABLES `krns_lock_s` WRITE;
/*!40000 ALTER TABLE `krns_lock_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_lock_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_lookup_rslt_s`
--

DROP TABLE IF EXISTS `krns_lookup_rslt_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_lookup_rslt_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_lookup_rslt_s`
--

LOCK TABLES `krns_lookup_rslt_s` WRITE;
/*!40000 ALTER TABLE `krns_lookup_rslt_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_lookup_rslt_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_lookup_rslt_t`
--

DROP TABLE IF EXISTS `krns_lookup_rslt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_lookup_rslt_t` (
  `LOOKUP_RSLT_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `LOOKUP_DT` datetime NOT NULL,
  `SERIALZD_RSLTS` longtext COLLATE utf8_bin,
  PRIMARY KEY (`LOOKUP_RSLT_ID`),
  UNIQUE KEY `KRNS_LOOKUP_RSLT_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_lookup_rslt_t`
--

LOCK TABLES `krns_lookup_rslt_t` WRITE;
/*!40000 ALTER TABLE `krns_lookup_rslt_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_lookup_rslt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_lookup_sel_t`
--

DROP TABLE IF EXISTS `krns_lookup_sel_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_lookup_sel_t` (
  `LOOKUP_RSLT_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `LOOKUP_DT` datetime NOT NULL,
  `SEL_OBJ_IDS` longtext COLLATE utf8_bin,
  PRIMARY KEY (`LOOKUP_RSLT_ID`),
  UNIQUE KEY `KRNS_LOOKUP_SEL_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_lookup_sel_t`
--

LOCK TABLES `krns_lookup_sel_t` WRITE;
/*!40000 ALTER TABLE `krns_lookup_sel_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_lookup_sel_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_maint_doc_att_lst_t`
--

DROP TABLE IF EXISTS `krns_maint_doc_att_lst_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_maint_doc_att_lst_t` (
  `ATT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL,
  `ATT_CNTNT` longblob NOT NULL,
  `FILE_NM` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `CNTNT_TYP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ATT_ID`),
  UNIQUE KEY `KRNS_MAINT_DOC_ATT_LST_TC0` (`OBJ_ID`),
  KEY `KRNS_MAINT_DOC_ATT_LST_TI1` (`DOC_HDR_ID`),
  CONSTRAINT `KRNS_MAINT_DOC_ATT_LST_FK1` FOREIGN KEY (`DOC_HDR_ID`) REFERENCES `krns_maint_doc_t` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_maint_doc_att_lst_t`
--

LOCK TABLES `krns_maint_doc_att_lst_t` WRITE;
/*!40000 ALTER TABLE `krns_maint_doc_att_lst_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_maint_doc_att_lst_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_maint_doc_att_s`
--

DROP TABLE IF EXISTS `krns_maint_doc_att_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_maint_doc_att_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_maint_doc_att_s`
--

LOCK TABLES `krns_maint_doc_att_s` WRITE;
/*!40000 ALTER TABLE `krns_maint_doc_att_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_maint_doc_att_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_maint_doc_att_t`
--

DROP TABLE IF EXISTS `krns_maint_doc_att_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_maint_doc_att_t` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ATT_CNTNT` longblob NOT NULL,
  `FILE_NM` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `CNTNT_TYP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DOC_HDR_ID`),
  UNIQUE KEY `KRNS_MAINT_DOC_ATT_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_maint_doc_att_t`
--

LOCK TABLES `krns_maint_doc_att_t` WRITE;
/*!40000 ALTER TABLE `krns_maint_doc_att_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_maint_doc_att_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_maint_doc_t`
--

DROP TABLE IF EXISTS `krns_maint_doc_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_maint_doc_t` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DOC_CNTNT` longtext COLLATE utf8_bin,
  PRIMARY KEY (`DOC_HDR_ID`),
  UNIQUE KEY `KRNS_MAINT_DOC_TC0` (`OBJ_ID`),
  CONSTRAINT `KRNS_MAINT_DOC_TR1` FOREIGN KEY (`DOC_HDR_ID`) REFERENCES `krns_doc_hdr_t` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_maint_doc_t`
--

LOCK TABLES `krns_maint_doc_t` WRITE;
/*!40000 ALTER TABLE `krns_maint_doc_t` DISABLE KEYS */;
INSERT INTO `krns_maint_doc_t` VALUES ('2381','C3C17370-909F-BEEC-EC4E-90E526BC8FD3',2,'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'),('2382','556F9242-337D-05B6-43CB-0D73D5B7C1C9',2,'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'),('2383','BADCD64F-BC79-7880-6DAD-2A512B887C41',2,'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'),('2384','A1FAF919-D378-80AE-5363-E5130D17F0B2',5,'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'),('2392','D69FDC83-9524-A510-FCC6-E888F7FED56B',5,'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'),('2394','0F8BFBE9-A446-4D2B-A989-DA201713023A',5,'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'),('2406','EE5CF4BF-5DDD-F2E2-1663-4CF026F5CFF0',5,'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'),('2410','18FB832C-890E-78A6-95BB-F272864134F3',5,'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'),('2700','09BE8F15-C5E2-FAD4-195C-C2E473B7B6F8',5,'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');
/*!40000 ALTER TABLE `krns_maint_doc_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_maint_lock_s`
--

DROP TABLE IF EXISTS `krns_maint_lock_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_maint_lock_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_maint_lock_s`
--

LOCK TABLES `krns_maint_lock_s` WRITE;
/*!40000 ALTER TABLE `krns_maint_lock_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_maint_lock_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_maint_lock_t`
--

DROP TABLE IF EXISTS `krns_maint_lock_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_maint_lock_t` (
  `MAINT_LOCK_REP_TXT` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL,
  `MAINT_LOCK_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`MAINT_LOCK_ID`),
  UNIQUE KEY `KRNS_MAINT_LOCK_TC0` (`OBJ_ID`),
  KEY `KRNS_MAINT_LOCK_TI2` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_maint_lock_t`
--

LOCK TABLES `krns_maint_lock_t` WRITE;
/*!40000 ALTER TABLE `krns_maint_lock_t` DISABLE KEYS */;
INSERT INTO `krns_maint_lock_t` VALUES ('edu.sampleu.travel.bo.TravelAccount!!number^^a11','6B9BCFF0-45A8-43B6-B837-92DB714C4A5E',1,'2381','2006'),('edu.sampleu.travel.bo.TravelAccount!!number^^a4','7F487602-E290-87FD-A4EF-C2764B6586B7',1,'2382','2007'),('edu.sampleu.travel.bo.TravelAccount!!number^^a5','D39B8A9F-601C-6207-F440-0456442C7266',1,'2383','2008');
/*!40000 ALTER TABLE `krns_maint_lock_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_nte_s`
--

DROP TABLE IF EXISTS `krns_nte_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_nte_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_nte_s`
--

LOCK TABLES `krns_nte_s` WRITE;
/*!40000 ALTER TABLE `krns_nte_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_nte_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_nte_t`
--

DROP TABLE IF EXISTS `krns_nte_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_nte_t` (
  `NTE_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `RMT_OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `AUTH_PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `POST_TS` datetime NOT NULL,
  `NTE_TYP_CD` varchar(4) COLLATE utf8_bin NOT NULL,
  `TXT` varchar(800) COLLATE utf8_bin DEFAULT NULL,
  `PRG_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `TPC_TXT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTE_ID`),
  UNIQUE KEY `KRNS_NTE_TC0` (`OBJ_ID`),
  KEY `KRNS_NTE_TI1` (`RMT_OBJ_ID`),
  KEY `KRNS_NTE_TR1` (`NTE_TYP_CD`),
  CONSTRAINT `KRNS_NTE_TR1` FOREIGN KEY (`NTE_TYP_CD`) REFERENCES `krns_nte_typ_t` (`NTE_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_nte_t`
--

LOCK TABLES `krns_nte_t` WRITE;
/*!40000 ALTER TABLE `krns_nte_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_nte_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_nte_typ_t`
--

DROP TABLE IF EXISTS `krns_nte_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_nte_typ_t` (
  `NTE_TYP_CD` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `TYP_DESC_TXT` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTE_TYP_CD`),
  UNIQUE KEY `KRNS_NTE_TYP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_nte_typ_t`
--

LOCK TABLES `krns_nte_typ_t` WRITE;
/*!40000 ALTER TABLE `krns_nte_typ_t` DISABLE KEYS */;
INSERT INTO `krns_nte_typ_t` VALUES ('BO','53680C68F5A9AD9BE0404F8189D80A6C',1,'DOCUMENT BUSINESS OBJECT','Y'),('DH','53680C68F5AAAD9BE0404F8189D80A6C',1,'DOCUMENT HEADER','Y');
/*!40000 ALTER TABLE `krns_nte_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_pessimistic_lock_t`
--

DROP TABLE IF EXISTS `krns_pessimistic_lock_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_pessimistic_lock_t` (
  `PESSIMISTIC_LOCK_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `LOCK_DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL,
  `GNRT_DT` datetime NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `SESN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`PESSIMISTIC_LOCK_ID`),
  UNIQUE KEY `KRNS_PESSIMISTIC_LOCK_TC0` (`OBJ_ID`),
  KEY `KRNS_PESSIMISTIC_LOCK_TI1` (`DOC_HDR_ID`),
  KEY `KRNS_PESSIMISTIC_LOCK_TI2` (`PRNCPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_pessimistic_lock_t`
--

LOCK TABLES `krns_pessimistic_lock_t` WRITE;
/*!40000 ALTER TABLE `krns_pessimistic_lock_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_pessimistic_lock_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krns_sesn_doc_t`
--

DROP TABLE IF EXISTS `krns_sesn_doc_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krns_sesn_doc_t` (
  `SESN_DOC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `IP_ADDR` varchar(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `SERIALZD_DOC_FRM` longblob,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `CONTENT_ENCRYPTED_IND` char(1) COLLATE utf8_bin DEFAULT 'N',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`SESN_DOC_ID`,`DOC_HDR_ID`,`PRNCPL_ID`,`IP_ADDR`),
  KEY `KRNS_SESN_DOC_TI1` (`LAST_UPDT_DT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krns_sesn_doc_t`
--

LOCK TABLES `krns_sesn_doc_t` WRITE;
/*!40000 ALTER TABLE `krns_sesn_doc_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krns_sesn_doc_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_bam_parm_s`
--

DROP TABLE IF EXISTS `krsb_bam_parm_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_bam_parm_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_bam_parm_s`
--

LOCK TABLES `krsb_bam_parm_s` WRITE;
/*!40000 ALTER TABLE `krsb_bam_parm_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_bam_parm_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_bam_parm_t`
--

DROP TABLE IF EXISTS `krsb_bam_parm_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_bam_parm_t` (
  `BAM_PARM_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `BAM_ID` decimal(14,0) NOT NULL,
  `PARM` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`BAM_PARM_ID`),
  KEY `KREW_BAM_PARM_TI1` (`BAM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_bam_parm_t`
--

LOCK TABLES `krsb_bam_parm_t` WRITE;
/*!40000 ALTER TABLE `krsb_bam_parm_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_bam_parm_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_bam_s`
--

DROP TABLE IF EXISTS `krsb_bam_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_bam_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_bam_s`
--

LOCK TABLES `krsb_bam_s` WRITE;
/*!40000 ALTER TABLE `krsb_bam_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_bam_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_bam_t`
--

DROP TABLE IF EXISTS `krsb_bam_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_bam_t` (
  `BAM_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `SVC_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `SVC_URL` varchar(500) COLLATE utf8_bin NOT NULL,
  `MTHD_NM` varchar(2000) COLLATE utf8_bin NOT NULL,
  `THRD_NM` varchar(500) COLLATE utf8_bin NOT NULL,
  `CALL_DT` datetime NOT NULL,
  `TGT_TO_STR` varchar(2000) COLLATE utf8_bin NOT NULL,
  `SRVR_IND` decimal(1,0) NOT NULL,
  `EXCPN_TO_STR` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `EXCPN_MSG` longtext COLLATE utf8_bin,
  PRIMARY KEY (`BAM_ID`),
  KEY `KRSB_BAM_TI1` (`SVC_NM`,`MTHD_NM`(255)),
  KEY `KRSB_BAM_TI2` (`SVC_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_bam_t`
--

LOCK TABLES `krsb_bam_t` WRITE;
/*!40000 ALTER TABLE `krsb_bam_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_bam_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_msg_pyld_t`
--

DROP TABLE IF EXISTS `krsb_msg_pyld_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_msg_pyld_t` (
  `MSG_QUE_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `MSG_PYLD` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`MSG_QUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_msg_pyld_t`
--

LOCK TABLES `krsb_msg_pyld_t` WRITE;
/*!40000 ALTER TABLE `krsb_msg_pyld_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_msg_pyld_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_msg_que_s`
--

DROP TABLE IF EXISTS `krsb_msg_que_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_msg_que_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=470 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_msg_que_s`
--

LOCK TABLES `krsb_msg_que_s` WRITE;
/*!40000 ALTER TABLE `krsb_msg_que_s` DISABLE KEYS */;
INSERT INTO `krsb_msg_que_s` VALUES (467),(468),(469);
/*!40000 ALTER TABLE `krsb_msg_que_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_msg_que_t`
--

DROP TABLE IF EXISTS `krsb_msg_que_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_msg_que_t` (
  `MSG_QUE_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `DT` datetime NOT NULL,
  `EXP_DT` datetime DEFAULT NULL,
  `PRIO` decimal(8,0) NOT NULL,
  `STAT_CD` char(1) COLLATE utf8_bin NOT NULL,
  `RTRY_CNT` decimal(8,0) NOT NULL,
  `IP_NBR` varchar(2000) COLLATE utf8_bin NOT NULL,
  `SVC_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APPL_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `SVC_MTHD_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `APP_VAL_ONE` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `APP_VAL_TWO` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`MSG_QUE_ID`),
  KEY `KRSB_MSG_QUE_TI1` (`SVC_NM`,`SVC_MTHD_NM`(255)),
  KEY `KRSB_MSG_QUE_TI2` (`APPL_ID`,`STAT_CD`,`IP_NBR`(255),`DT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_msg_que_t`
--

LOCK TABLES `krsb_msg_que_t` WRITE;
/*!40000 ALTER TABLE `krsb_msg_que_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_msg_que_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `krsb_qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_blob_triggers` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `BLOB_DATA` longblob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `KRSB_QRTZ_BLOB_TRIGGERS_TR1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `krsb_qrtz_triggers` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_blob_triggers`
--

LOCK TABLES `krsb_qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_calendars`
--

DROP TABLE IF EXISTS `krsb_qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_calendars` (
  `CALENDAR_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_calendars`
--

LOCK TABLES `krsb_qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `krsb_qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_cron_triggers` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CRON_EXPRESSION` varchar(80) COLLATE utf8_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `KRSB_QRTZ_CRON_TRIGGERS_TR1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `krsb_qrtz_triggers` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_cron_triggers`
--

LOCK TABLES `krsb_qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `krsb_qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_fired_triggers` (
  `ENTRY_ID` varchar(95) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin NOT NULL,
  `INSTANCE_NAME` varchar(80) COLLATE utf8_bin NOT NULL,
  `FIRED_TIME` decimal(13,0) NOT NULL,
  `PRIORITY` decimal(13,0) NOT NULL,
  `STATE` varchar(16) COLLATE utf8_bin NOT NULL,
  `JOB_NAME` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `JOB_GROUP` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI1` (`JOB_GROUP`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI2` (`JOB_NAME`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI3` (`REQUESTS_RECOVERY`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI4` (`IS_STATEFUL`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI5` (`TRIGGER_GROUP`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI6` (`INSTANCE_NAME`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI7` (`TRIGGER_NAME`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI8` (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI9` (`IS_VOLATILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_fired_triggers`
--

LOCK TABLES `krsb_qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_fired_triggers` DISABLE KEYS */;
INSERT INTO `krsb_qrtz_fired_triggers` VALUES ('kateric513-PC13744699582751374469958265','PeriodicMessageProcessingTrigger','KCB-Delivery','0','kateric513-PC1374469958275',1374470072469,5,'ACQUIRED',NULL,NULL,'0','0');
/*!40000 ALTER TABLE `krsb_qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_job_details`
--

DROP TABLE IF EXISTS `krsb_qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_job_details` (
  `JOB_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `JOB_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(128) COLLATE utf8_bin NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8_bin NOT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin NOT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8_bin NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`),
  KEY `KRSB_QRTZ_JOB_DETAILS_TI1` (`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_job_details`
--

LOCK TABLES `krsb_qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_job_details` DISABLE KEYS */;
INSERT INTO `krsb_qrtz_job_details` VALUES ('MessageProcessingJobDetail','KCB-Delivery','\n                    Job that handles asynchronous delivery and dismissal of MessageDeliveries\n                ','org.kuali.rice.kcb.quartz.MessageProcessingJob','1','0','1','1','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0');
/*!40000 ALTER TABLE `krsb_qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_job_listeners`
--

DROP TABLE IF EXISTS `krsb_qrtz_job_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_job_listeners` (
  `JOB_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `JOB_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `JOB_LISTENER` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`,`JOB_LISTENER`),
  CONSTRAINT `KRSB_QUARTZ_JOB_LISTENERS_TR1` FOREIGN KEY (`JOB_NAME`, `JOB_GROUP`) REFERENCES `krsb_qrtz_job_details` (`JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_job_listeners`
--

LOCK TABLES `krsb_qrtz_job_listeners` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_job_listeners` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_qrtz_job_listeners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_locks`
--

DROP TABLE IF EXISTS `krsb_qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_locks` (
  `LOCK_NAME` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_locks`
--

LOCK TABLES `krsb_qrtz_locks` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_locks` DISABLE KEYS */;
INSERT INTO `krsb_qrtz_locks` VALUES ('CALENDAR_ACCESS'),('JOB_ACCESS'),('MISFIRE_ACCESS'),('STATE_ACCESS'),('TRIGGER_ACCESS');
/*!40000 ALTER TABLE `krsb_qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `krsb_qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_paused_trigger_grps` (
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_paused_trigger_grps`
--

LOCK TABLES `krsb_qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `krsb_qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_scheduler_state` (
  `INSTANCE_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LAST_CHECKIN_TIME` decimal(13,0) NOT NULL,
  `CHECKIN_INTERVAL` decimal(13,0) NOT NULL,
  PRIMARY KEY (`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_scheduler_state`
--

LOCK TABLES `krsb_qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `krsb_qrtz_scheduler_state` VALUES ('kateric513-PC1374469958275',1374470044494,7500);
/*!40000 ALTER TABLE `krsb_qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `krsb_qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_simple_triggers` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REPEAT_COUNT` decimal(7,0) NOT NULL,
  `REPEAT_INTERVAL` decimal(12,0) NOT NULL,
  `TIMES_TRIGGERED` decimal(7,0) NOT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `KRSB_QRTZ_SIMPLE_TRIGGERS_TR1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `krsb_qrtz_triggers` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_simple_triggers`
--

LOCK TABLES `krsb_qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_simple_triggers` DISABLE KEYS */;
INSERT INTO `krsb_qrtz_simple_triggers` VALUES ('PeriodicMessageProcessingTrigger','KCB-Delivery',-1,30000,1);
/*!40000 ALTER TABLE `krsb_qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_trigger_listeners`
--

DROP TABLE IF EXISTS `krsb_qrtz_trigger_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_trigger_listeners` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_LISTENER` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_LISTENER`),
  CONSTRAINT `KRSB_QRTZ_TRIGGER_LISTENE_TR1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `krsb_qrtz_triggers` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_trigger_listeners`
--

LOCK TABLES `krsb_qrtz_trigger_listeners` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_trigger_listeners` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_qrtz_trigger_listeners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_qrtz_triggers`
--

DROP TABLE IF EXISTS `krsb_qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_qrtz_triggers` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `JOB_NAME` varchar(80) COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(80) COLLATE utf8_bin NOT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` decimal(13,0) DEFAULT NULL,
  `PREV_FIRE_TIME` decimal(13,0) DEFAULT NULL,
  `PRIORITY` decimal(13,0) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8_bin NOT NULL,
  `START_TIME` decimal(13,0) NOT NULL,
  `END_TIME` decimal(13,0) DEFAULT NULL,
  `CALENDAR_NAME` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `MISFIRE_INSTR` decimal(2,0) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `KRSB_QRTZ_TRIGGERS_TI1` (`NEXT_FIRE_TIME`),
  KEY `KRSB_QRTZ_TRIGGERS_TI2` (`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `KRSB_QRTZ_TRIGGERS_TI3` (`TRIGGER_STATE`),
  KEY `KRSB_QRTZ_TRIGGERS_TI4` (`IS_VOLATILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_qrtz_triggers`
--

LOCK TABLES `krsb_qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `krsb_qrtz_triggers` DISABLE KEYS */;
INSERT INTO `krsb_qrtz_triggers` VALUES ('PeriodicMessageProcessingTrigger','KCB-Delivery','MessageProcessingJobDetail','KCB-Delivery','0','\n                    Trigger that periodically runs the KCB message processing job\n                ',1374470072469,1374470042469,5,'ACQUIRED','SIMPLE',1374470042469,0,NULL,0,'');
/*!40000 ALTER TABLE `krsb_qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_svc_def_s`
--

DROP TABLE IF EXISTS `krsb_svc_def_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_svc_def_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10105 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_svc_def_s`
--

LOCK TABLES `krsb_svc_def_s` WRITE;
/*!40000 ALTER TABLE `krsb_svc_def_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_svc_def_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_svc_def_t`
--

DROP TABLE IF EXISTS `krsb_svc_def_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_svc_def_t` (
  `SVC_DEF_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `SVC_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `SVC_URL` varchar(500) COLLATE utf8_bin NOT NULL,
  `INSTN_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `APPL_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `SRVR_IP` varchar(40) COLLATE utf8_bin NOT NULL,
  `TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `SVC_VER` varchar(40) COLLATE utf8_bin NOT NULL,
  `STAT_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `SVC_DSCRPTR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `CHKSM` varchar(30) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SVC_DEF_ID`),
  KEY `KRSB_SVC_DEF_TI1` (`INSTN_ID`),
  KEY `KRSB_SVC_DEF_TI2` (`SVC_NM`,`STAT_CD`),
  KEY `KRSB_SVC_DEF_TI3` (`STAT_CD`),
  KEY `KRSB_SVC_DEF_TI4` (`SVC_DSCRPTR_ID`),
  CONSTRAINT `KRSB_SVC_DEF_FK1` FOREIGN KEY (`SVC_DSCRPTR_ID`) REFERENCES `krsb_svc_dscrptr_t` (`SVC_DSCRPTR_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_svc_def_t`
--

LOCK TABLES `krsb_svc_def_t` WRITE;
/*!40000 ALTER TABLE `krsb_svc_def_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_svc_def_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_svc_dscrptr_s`
--

DROP TABLE IF EXISTS `krsb_svc_dscrptr_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_svc_dscrptr_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10105 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_svc_dscrptr_s`
--

LOCK TABLES `krsb_svc_dscrptr_s` WRITE;
/*!40000 ALTER TABLE `krsb_svc_dscrptr_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_svc_dscrptr_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krsb_svc_dscrptr_t`
--

DROP TABLE IF EXISTS `krsb_svc_dscrptr_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krsb_svc_dscrptr_t` (
  `SVC_DSCRPTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DSCRPTR` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SVC_DSCRPTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krsb_svc_dscrptr_t`
--

LOCK TABLES `krsb_svc_dscrptr_t` WRITE;
/*!40000 ALTER TABLE `krsb_svc_dscrptr_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `krsb_svc_dscrptr_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trav_doc_2_accounts`
--

DROP TABLE IF EXISTS `trav_doc_2_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trav_doc_2_accounts` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`FDOC_NBR`,`ACCT_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trav_doc_2_accounts`
--

LOCK TABLES `trav_doc_2_accounts` WRITE;
/*!40000 ALTER TABLE `trav_doc_2_accounts` DISABLE KEYS */;
INSERT INTO `trav_doc_2_accounts` VALUES ('2123','a2'),('2387','a2'),('2387','a3'),('2388','a1'),('2388','a2'),('2389','a1'),('2389','a2'),('2390','a1'),('2390','a2'),('2391','a1'),('2391','a2'),('2393','a1'),('2393','a2'),('2396','a1'),('2396','a2'),('2400','a1'),('2400','a2'),('2401','a1'),('2401','a2'),('2402','a1'),('2402','a2'),('2403','a1'),('2403','a2'),('2404','a1'),('2404','a2'),('2405','a1'),('2405','a2'),('2407','a1'),('2407','a2'),('2480','a3'),('2480','a9'),('2481','a1'),('2481','a2'),('2482','a1'),('2482','a2'),('2483','a1'),('2483','a2'),('2484','a1'),('2500','a1'),('2500','a2'),('2501','a1'),('2501','a2'),('2520','a1'),('2520','a2'),('2521','a1'),('2521','a2'),('2522','a1'),('2522','a2'),('2584','a6'),('2600','a6'),('2601','a6'),('2621','a6'),('2622','a6'),('2623','a6'),('2640','a1'),('2640','a2'),('2692','a1'),('2693','a1'),('2694','a1'),('2695','a1'),('2701','a1');
/*!40000 ALTER TABLE `trav_doc_2_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_acct`
--

DROP TABLE IF EXISTS `trv_acct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_acct` (
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL,
  `ACCT_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ACCT_TYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ACCT_FO_ID` decimal(14,0) DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `SUB_ACCT` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `SUB_ACCT_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `SUBSIDIZED_PCT` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_acct`
--

LOCK TABLES `trv_acct` WRITE;
/*!40000 ALTER TABLE `trv_acct` DISABLE KEYS */;
INSERT INTO `trv_acct` VALUES ('a1','a1',NULL,1,NULL,0,NULL,NULL,NULL,NULL),('a14','a14',NULL,2,NULL,0,NULL,NULL,NULL,NULL),('a2','a2',NULL,2,NULL,0,NULL,NULL,NULL,NULL),('a3','a3',NULL,3,NULL,0,NULL,NULL,NULL,NULL),('a6','a6',NULL,2,NULL,0,NULL,NULL,NULL,NULL),('a8','a8',NULL,2,NULL,0,NULL,NULL,NULL,NULL),('a9','a9',NULL,2,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `trv_acct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_acct_ext`
--

DROP TABLE IF EXISTS `trv_acct_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_acct_ext` (
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_TYPE` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`ACCT_NUM`,`ACCT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_acct_ext`
--

LOCK TABLES `trv_acct_ext` WRITE;
/*!40000 ALTER TABLE `trv_acct_ext` DISABLE KEYS */;
INSERT INTO `trv_acct_ext` VALUES ('a1','IAT',NULL,0),('a14','CAT',NULL,0),('a2','EAT',NULL,0),('a3','IAT',NULL,0),('a6','CAT',NULL,0),('a8','EAT',NULL,0),('a9','CAT',NULL,0);
/*!40000 ALTER TABLE `trv_acct_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_acct_fo`
--

DROP TABLE IF EXISTS `trv_acct_fo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_acct_fo` (
  `ACCT_FO_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `ACCT_FO_USER_NAME` varchar(50) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`ACCT_FO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_acct_fo`
--

LOCK TABLES `trv_acct_fo` WRITE;
/*!40000 ALTER TABLE `trv_acct_fo` DISABLE KEYS */;
INSERT INTO `trv_acct_fo` VALUES (1,'fred',NULL,0),(2,'fran',NULL,0),(3,'frank',NULL,0);
/*!40000 ALTER TABLE `trv_acct_fo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_acct_type`
--

DROP TABLE IF EXISTS `trv_acct_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_acct_type` (
  `ACCT_TYPE` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_TYPE_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`ACCT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_acct_type`
--

LOCK TABLES `trv_acct_type` WRITE;
/*!40000 ALTER TABLE `trv_acct_type` DISABLE KEYS */;
INSERT INTO `trv_acct_type` VALUES ('CAT','Clearing Account Type',NULL,0),('EAT','Expense Account Type',NULL,0),('IAT',' Income Account Type',NULL,0);
/*!40000 ALTER TABLE `trv_acct_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_acct_use_rt_t`
--

DROP TABLE IF EXISTS `trv_acct_use_rt_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_acct_use_rt_t` (
  `ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL,
  `RATE` decimal(8,0) NOT NULL,
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_acct_use_rt_t`
--

LOCK TABLES `trv_acct_use_rt_t` WRITE;
/*!40000 ALTER TABLE `trv_acct_use_rt_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `trv_acct_use_rt_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_att_sample`
--

DROP TABLE IF EXISTS `trv_att_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_att_sample` (
  `ATTACHMENT_ID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILENAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILE_CONTENT_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILE` longblob,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_att_sample`
--

LOCK TABLES `trv_att_sample` WRITE;
/*!40000 ALTER TABLE `trv_att_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `trv_att_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_doc_2`
--

DROP TABLE IF EXISTS `trv_doc_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_doc_2` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `FDOC_EXPLAIN_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `REQUEST_TRAV` varchar(30) COLLATE utf8_bin NOT NULL,
  `TRAVELER` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ORG` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DEST` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_doc_2`
--

LOCK TABLES `trv_doc_2` WRITE;
/*!40000 ALTER TABLE `trv_doc_2` DISABLE KEYS */;
INSERT INTO `trv_doc_2` VALUES ('2123','7BE537BD-643C-9F20-8A66-2FE1D398BADA',4,NULL,'TRT2','Eric','eb','dre'),('2387','44C40877-A234-D6C5-1D3B-EFC98A11A8BF',2,NULL,'TRT2','nate','here','there'),('2388','B2120A67-431C-1A9B-7B63-65DD544E910B',2,NULL,'TRT2','nate','here','there'),('2389','86594949-89E0-8D63-AF50-B7E13D568B09',2,NULL,'TRT1','nate','here','there'),('2390','9CFEB3AC-A4F5-4585-FCAB-0018F282364C',2,NULL,'TRT1','nate','here','there'),('2391','5299F048-19E5-D56D-14EE-568EE3F85BA3',3,NULL,'TRT1','nate','here','there'),('2393','5D5E1CFD-EE46-73B4-700A-A9DD8E498EC2',2,NULL,'TRT1','nate','here','there'),('2396','1D299A9B-C473-375A-69C4-C1E03CFBFC68',2,NULL,'TRT2','nate','here','there'),('2400','3625336D-1D41-F979-B899-E8D7CF9E68AC',2,NULL,'TRT1','nate','here','there'),('2401','D74C0680-F93C-7D41-62F3-E2C455AFC102',2,NULL,'TRT2','nate','here','there'),('2402','55C56249-11AC-EE98-0256-5B71D5CAE40D',2,NULL,'TRT1','sadf','here','there'),('2403','BADEA3CA-19C7-BC2B-4E88-2A4777F11A55',2,NULL,'TRT1','asdf','dsffr','dsfgdsf'),('2404','38CC4CD9-A1F3-78DD-1E2C-35A81E989739',2,NULL,'TRT2','nate','here','there'),('2405','A412B4FF-7D46-9212-05DA-B774F4370944',4,NULL,'TRT2','sdf','sdfq','h'),('2407','D4556EA2-EDA7-6BF9-1855-3040F14816CB',4,NULL,'TRT2','asdf','klj','dkl'),('2480','CA80CCD3-8C01-3D68-3830-A449AF528952',2,NULL,'TRT2','1','2','3'),('2481','16422C26-6BEB-8AD7-0F51-9FEBADD37D0A',2,NULL,'TRT1','sdf','kj','lkj'),('2482','56EA88B6-A372-1D39-831D-5B962962CA78',4,NULL,'TRT2','dsf','sadf','sdf'),('2483','C3C6C93C-5358-A267-F8AE-91E38BA39F05',4,NULL,'TRT2','dsf','jkh','jkh'),('2484','577CA8E5-1140-37BB-695E-0EB011E77D81',4,NULL,'TRT1','dsf','sadf','sdfs'),('2500','E92080BD-902C-B68D-ECB4-C9D7DAFC4D86',2,NULL,'TRT2','safd','dfgqdfg','dfg'),('2501','1E53D48D-BFBA-FBF9-4B9F-1677CAD28B2E',4,NULL,'TRT2','asdf','sdf','saf'),('2520','78085595-7BFC-A0CF-65E4-D1499166ECD8',2,NULL,'TRT2','dsf','dfgqdfg','df'),('2521','5CD9F7B7-07F7-0645-2F97-006E06B958A7',2,NULL,'TRT2','dsf','sadfsaf','asdf'),('2522','5440866A-A30E-3860-F788-B45A4978C68A',4,NULL,'TRT3','sdf','sadf','sdf'),('2584','397B1AD0-93E3-9827-52ED-A8D24B98C4F2',2,NULL,'TRT1','sadsadasdsa','dsfdsfdsfds','sdfdsfdsfsd'),('2600','502B559E-2A0E-0C58-3DBE-DF866D8CC503',2,NULL,'TRT1','sadsads','asadasd','sadsadas'),('2601','3CDBACBF-4DEC-AE23-DC47-FCF79F2F42ED',1,NULL,'TRT1','asdsadsa','asdsadsa','asdsadas'),('2621','956AC95F-7366-4241-215F-A910C2E5E4C6',1,NULL,'TRT1','asdsadsa','asdsadsa','asdsadas'),('2622','132C00E3-B5FB-0527-BBF3-7129EF1158E1',1,NULL,'TRT1','asdsadsa','asdsadsa','asdsadas'),('2623','CAB011C5-4090-A694-D2C5-49573918385B',1,NULL,'TRT1','asdsadsa','asdsadsa','asdsadas'),('2640','39FC71CC-FB05-D612-D5B6-B3AAC6B26CF2',4,NULL,'TRT1','asdf','df','ettt'),('2692','BFBAF94B-E145-6303-045D-ABE304FFC7C8',2,NULL,'TRT2','asdf','asdf','sdaf'),('2693','70ADFFDB-0851-9BCF-013E-284A47A43A1A',2,NULL,'TRT2','sdf','asdf','daf'),('2694','7768CE1B-AF56-0711-E6CD-8744DA71A4D5',2,NULL,'TRT2','asdf','asd','asdasd'),('2695','BE8EC6F0-FA55-5532-883A-4553E3F289BB',7,NULL,'TRT2','ad','asd','asdf'),('2701','153C9F24-DDDC-ECFF-A3AE-D0A628939C23',2,NULL,'TRT2','asdf','asdf','asdf');
/*!40000 ALTER TABLE `trv_doc_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_doc_acct`
--

DROP TABLE IF EXISTS `trv_doc_acct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_doc_acct` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`DOC_HDR_ID`,`ACCT_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_doc_acct`
--

LOCK TABLES `trv_doc_acct` WRITE;
/*!40000 ALTER TABLE `trv_doc_acct` DISABLE KEYS */;
/*!40000 ALTER TABLE `trv_doc_acct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_fo_id_s`
--

DROP TABLE IF EXISTS `trv_fo_id_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_fo_id_s` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_fo_id_s`
--

LOCK TABLES `trv_fo_id_s` WRITE;
/*!40000 ALTER TABLE `trv_fo_id_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `trv_fo_id_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trv_multi_att_sample`
--

DROP TABLE IF EXISTS `trv_multi_att_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trv_multi_att_sample` (
  `GEN_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `ATTACHMENT_ID` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILENAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILE_CONTENT_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILE` longblob,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`GEN_ID`),
  KEY `SYS_C003453453` (`ATTACHMENT_ID`),
  CONSTRAINT `SYS_C003453453` FOREIGN KEY (`ATTACHMENT_ID`) REFERENCES `trv_att_sample` (`ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trv_multi_att_sample`
--

LOCK TABLES `trv_multi_att_sample` WRITE;
/*!40000 ALTER TABLE `trv_multi_att_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `trv_multi_att_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trvl_auth_doc_t`
--

DROP TABLE IF EXISTS `trvl_auth_doc_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trvl_auth_doc_t` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRVL_ID` varchar(19) COLLATE utf8_bin DEFAULT NULL,
  `TRAVELER_DTL_ID` decimal(19,0) DEFAULT NULL,
  `TEM_PROFILE_ID` decimal(19,0) DEFAULT NULL,
  `TRIP_TYP_CD` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `TRIP_BGN_DT` datetime DEFAULT NULL,
  `TRIP_END_DT` datetime DEFAULT NULL,
  `PRIMARY_DEST_ID` decimal(19,0) DEFAULT NULL,
  `PRIMARY_DEST_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PRIMARY_DEST_CNTRY_ST` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PRIMARY_DEST_CNTY` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `EXP_LMT` decimal(19,2) DEFAULT '0.00',
  `MEAL_WITHOUT_LODGING` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIP_DESC` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELINQUENT_TR_EXCEPTION` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `PER_DIEM_ADJ` decimal(19,2) DEFAULT '0.00',
  `AR_CUST_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AR_INV_DOC_NBR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CELL_PH_NUM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `RGN_FAMIL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CTZN_CNTRY_CD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FDOC_NXT_EXP_NBR` decimal(7,0) DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trvl_auth_doc_t`
--

LOCK TABLES `trvl_auth_doc_t` WRITE;
/*!40000 ALTER TABLE `trvl_auth_doc_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `trvl_auth_doc_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trvl_id_seq`
--

DROP TABLE IF EXISTS `trvl_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trvl_id_seq` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trvl_id_seq`
--

LOCK TABLES `trvl_id_seq` WRITE;
/*!40000 ALTER TABLE `trvl_id_seq` DISABLE KEYS */;
/*!40000 ALTER TABLE `trvl_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trvl_per_diem_id_seq`
--

DROP TABLE IF EXISTS `trvl_per_diem_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trvl_per_diem_id_seq` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trvl_per_diem_id_seq`
--

LOCK TABLES `trvl_per_diem_id_seq` WRITE;
/*!40000 ALTER TABLE `trvl_per_diem_id_seq` DISABLE KEYS */;
/*!40000 ALTER TABLE `trvl_per_diem_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trvl_per_diem_t`
--

DROP TABLE IF EXISTS `trvl_per_diem_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trvl_per_diem_t` (
  `ID` decimal(19,0) NOT NULL DEFAULT '0',
  `TRIP_TYP_CD` varchar(3) COLLATE utf8_bin NOT NULL,
  `COUNTRY` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `COUNTRY_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `COUNTY_CD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PRI_DEST` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SSN_BGN_DT` datetime DEFAULT NULL,
  `EFFECT_FROM_DT` datetime DEFAULT NULL,
  `EFFECT_TO_DT` datetime DEFAULT NULL,
  `LOAD_DT` datetime DEFAULT NULL,
  `SSN_BGN_MONTH_DAY` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `BKFST` decimal(19,0) DEFAULT NULL,
  `LUNCH` decimal(19,0) DEFAULT NULL,
  `DIN` decimal(19,0) DEFAULT NULL,
  `LODGING` decimal(19,2) DEFAULT '0.00',
  `INC` decimal(19,2) DEFAULT '0.00',
  `MEALS_INC` decimal(19,2) DEFAULT '0.00',
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trvl_per_diem_t`
--

LOCK TABLES `trvl_per_diem_t` WRITE;
/*!40000 ALTER TABLE `trvl_per_diem_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `trvl_per_diem_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trvl_trip_typ_t`
--

DROP TABLE IF EXISTS `trvl_trip_typ_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trvl_trip_typ_t` (
  `CODE` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(40) COLLATE utf8_bin NOT NULL,
  `GEN_ENC_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `ENC_BAL_TYP` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ENC_OBJ_CD` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `CONT_INFO_REQ_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `BLANKET_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `AUTO_TR_LIMIT` decimal(19,2) NOT NULL,
  `USE_PER_DIEM` varchar(1) COLLATE utf8_bin NOT NULL,
  `TA_REQUIRED` varchar(1) COLLATE utf8_bin NOT NULL,
  `PER_DIEM_CALC_METHOD` varchar(1) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trvl_trip_typ_t`
--

LOCK TABLES `trvl_trip_typ_t` WRITE;
/*!40000 ALTER TABLE `trvl_trip_typ_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `trvl_trip_typ_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tst_search_attr_indx_tst_doc_t`
--

DROP TABLE IF EXISTS `tst_search_attr_indx_tst_doc_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tst_search_attr_indx_tst_doc_t` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(14,0) DEFAULT NULL,
  `RTE_LVL_CNT` decimal(14,0) DEFAULT NULL,
  `CNSTNT_STR` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RTD_STR` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `HLD_RTD_STR` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RD_ACCS_CNT` decimal(14,0) DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tst_search_attr_indx_tst_doc_t`
--

LOCK TABLES `tst_search_attr_indx_tst_doc_t` WRITE;
/*!40000 ALTER TABLE `tst_search_attr_indx_tst_doc_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `tst_search_attr_indx_tst_doc_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `krim_grp_mbr_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_grp_mbr_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_grp_mbr_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_grp_mbr_v` AS select `g`.`NMSPC_CD` AS `NMSPC_CD`,`g`.`GRP_NM` AS `grp_nm`,`g`.`GRP_ID` AS `GRP_ID`,`p`.`PRNCPL_NM` AS `PRNCPL_NM`,`p`.`PRNCPL_ID` AS `PRNCPL_ID`,`mg`.`GRP_NM` AS `mbr_grp_nm`,`mg`.`GRP_ID` AS `mbr_grp_id` from ((((`krim_grp_mbr_t` `gm` left join `krim_grp_t` `g` on((`g`.`GRP_ID` = `gm`.`GRP_ID`))) left join `krim_grp_t` `mg` on(((`mg`.`GRP_ID` = `gm`.`MBR_ID`) and (`gm`.`MBR_TYP_CD` = 'G')))) left join `krim_prncpl_t` `p` on(((`p`.`PRNCPL_ID` = `gm`.`MBR_ID`) and (`gm`.`MBR_TYP_CD` = 'P')))) left join `krim_entity_nm_t` `en` on(((`en`.`ENTITY_ID` = `p`.`ENTITY_ID`) and (`en`.`DFLT_IND` = 'Y') and (`en`.`ACTV_IND` = 'Y')))) order by `g`.`NMSPC_CD`,`g`.`GRP_NM`,`p`.`PRNCPL_NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_grp_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_grp_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_grp_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_grp_v` AS select `g`.`NMSPC_CD` AS `NMSPC_CD`,`g`.`GRP_NM` AS `grp_nm`,`g`.`GRP_ID` AS `GRP_ID`,`t`.`NM` AS `grp_typ_nm`,`a`.`NM` AS `attr_nm`,`d`.`ATTR_VAL` AS `attr_val` from (((`krim_grp_t` `g` left join `krim_grp_attr_data_t` `d` on((`d`.`GRP_ID` = `g`.`GRP_ID`))) left join `krim_attr_defn_t` `a` on((`a`.`KIM_ATTR_DEFN_ID` = `d`.`KIM_ATTR_DEFN_ID`))) left join `krim_typ_t` `t` on((`g`.`KIM_TYP_ID` = `t`.`KIM_TYP_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_perm_attr_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_perm_attr_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_perm_attr_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_perm_attr_v` AS select `t`.`NMSPC_CD` AS `tmpl_nmspc_cd`,`t`.`NM` AS `tmpl_nm`,`t`.`PERM_TMPL_ID` AS `PERM_TMPL_ID`,`p`.`NMSPC_CD` AS `perm_nmspc_cd`,`p`.`NM` AS `perm_nm`,`p`.`PERM_ID` AS `PERM_ID`,`a`.`NM` AS `attr_nm`,`ad`.`ATTR_VAL` AS `attr_val` from (((`krim_perm_t` `p` left join `krim_perm_tmpl_t` `t` on((`p`.`PERM_TMPL_ID` = `t`.`PERM_TMPL_ID`))) left join `krim_perm_attr_data_t` `ad` on((`p`.`PERM_ID` = `ad`.`PERM_ID`))) left join `krim_attr_defn_t` `a` on((`ad`.`KIM_ATTR_DEFN_ID` = `a`.`KIM_ATTR_DEFN_ID`))) order by `tmpl_nmspc_cd`,`tmpl_nm`,`perm_nmspc_cd`,`p`.`PERM_ID`,`attr_nm` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_perm_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_perm_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_perm_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_perm_v` AS select `t`.`NMSPC_CD` AS `tmpl_nmspc_cd`,`t`.`NM` AS `tmpl_nm`,`t`.`PERM_TMPL_ID` AS `PERM_TMPL_ID`,`p`.`NMSPC_CD` AS `perm_nmspc_cd`,`p`.`NM` AS `perm_nm`,`p`.`PERM_ID` AS `PERM_ID`,`typ`.`NM` AS `perm_typ_nm`,`typ`.`SRVC_NM` AS `SRVC_NM` from ((`krim_perm_t` `p` join `krim_perm_tmpl_t` `t` on((`p`.`PERM_TMPL_ID` = `t`.`PERM_TMPL_ID`))) left join `krim_typ_t` `typ` on((`t`.`KIM_TYP_ID` = `typ`.`KIM_TYP_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_prncpl_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_prncpl_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_prncpl_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_prncpl_v` AS select `p`.`PRNCPL_ID` AS `PRNCPL_ID`,`p`.`PRNCPL_NM` AS `PRNCPL_NM`,`en`.`FIRST_NM` AS `FIRST_NM`,`en`.`LAST_NM` AS `LAST_NM`,`ea`.`AFLTN_TYP_CD` AS `AFLTN_TYP_CD`,`ea`.`CAMPUS_CD` AS `CAMPUS_CD`,`eei`.`EMP_STAT_CD` AS `EMP_STAT_CD`,`eei`.`EMP_TYP_CD` AS `EMP_TYP_CD` from (((`krim_prncpl_t` `p` left join `krim_entity_emp_info_t` `eei` on((`eei`.`ENTITY_ID` = `p`.`ENTITY_ID`))) left join `krim_entity_afltn_t` `ea` on((`ea`.`ENTITY_ID` = `p`.`ENTITY_ID`))) left join `krim_entity_nm_t` `en` on(((`p`.`ENTITY_ID` = `en`.`ENTITY_ID`) and ('Y' = `en`.`DFLT_IND`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_grp_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_grp_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_grp_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_grp_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `role_id`,`g`.`NMSPC_CD` AS `grp_nmspc_cd`,`g`.`GRP_NM` AS `GRP_NM`,`rm`.`ROLE_MBR_ID` AS `ROLE_MBR_ID`,`a`.`NM` AS `attr_nm`,`d`.`ATTR_VAL` AS `attr_val` from ((((`krim_role_mbr_t` `rm` left join `krim_role_t` `r` on((`r`.`ROLE_ID` = `rm`.`ROLE_ID`))) left join `krim_grp_t` `g` on((`g`.`GRP_ID` = `rm`.`MBR_ID`))) left join `krim_role_mbr_attr_data_t` `d` on((`d`.`ROLE_MBR_ID` = `rm`.`ROLE_MBR_ID`))) left join `krim_attr_defn_t` `a` on((`a`.`KIM_ATTR_DEFN_ID` = `d`.`KIM_ATTR_DEFN_ID`))) where (`rm`.`MBR_TYP_CD` = 'G') order by `r`.`NMSPC_CD`,`r`.`ROLE_NM`,`grp_nmspc_cd`,`g`.`GRP_NM`,`rm`.`ROLE_MBR_ID`,`attr_nm` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_perm_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_perm_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_perm_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_perm_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `role_id`,`pt`.`NMSPC_CD` AS `tmpl_nmspc_cd`,`pt`.`NM` AS `tmpl_nm`,`pt`.`PERM_TMPL_ID` AS `PERM_TMPL_ID`,`p`.`NMSPC_CD` AS `perm_nmpsc_cd`,`p`.`NM` AS `perm_nm`,`p`.`PERM_ID` AS `PERM_ID`,`a`.`NM` AS `attr_nm`,`ad`.`ATTR_VAL` AS `attr_val` from (((((`krim_perm_t` `p` left join `krim_perm_tmpl_t` `pt` on((`p`.`PERM_TMPL_ID` = `pt`.`PERM_TMPL_ID`))) left join `krim_perm_attr_data_t` `ad` on((`p`.`PERM_ID` = `ad`.`PERM_ID`))) left join `krim_attr_defn_t` `a` on((`ad`.`KIM_ATTR_DEFN_ID` = `a`.`KIM_ATTR_DEFN_ID`))) left join `krim_role_perm_t` `rp` on((`rp`.`PERM_ID` = `p`.`PERM_ID`))) left join `krim_role_t` `r` on((`rp`.`ROLE_ID` = `r`.`ROLE_ID`))) order by `r`.`NMSPC_CD`,`r`.`ROLE_NM`,`tmpl_nmspc_cd`,`tmpl_nm`,`p`.`PERM_ID`,`attr_nm` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_prncpl_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_prncpl_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_prncpl_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_prncpl_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `ROLE_ID`,`p`.`PRNCPL_NM` AS `PRNCPL_NM`,`p`.`PRNCPL_ID` AS `PRNCPL_ID`,`en`.`FIRST_NM` AS `FIRST_NM`,`en`.`LAST_NM` AS `LAST_NM`,`rm`.`ROLE_MBR_ID` AS `ROLE_MBR_ID`,`ad`.`NM` AS `attr_nm`,`rmad`.`ATTR_VAL` AS `attr_val` from (((((`krim_role_t` `r` left join `krim_role_mbr_t` `rm` on((`r`.`ROLE_ID` = `rm`.`ROLE_ID`))) left join `krim_role_mbr_attr_data_t` `rmad` on((`rm`.`ROLE_MBR_ID` = `rmad`.`ROLE_MBR_ID`))) left join `krim_attr_defn_t` `ad` on((`rmad`.`KIM_ATTR_DEFN_ID` = `ad`.`KIM_ATTR_DEFN_ID`))) left join `krim_prncpl_t` `p` on(((`rm`.`MBR_ID` = `p`.`PRNCPL_ID`) and (`rm`.`MBR_TYP_CD` = 'P')))) left join `krim_entity_nm_t` `en` on((`p`.`ENTITY_ID` = `en`.`ENTITY_ID`))) where (`en`.`DFLT_IND` = 'Y') order by `r`.`NMSPC_CD`,`r`.`ROLE_NM`,`p`.`PRNCPL_NM`,`rm`.`ROLE_MBR_ID`,`attr_nm` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_role_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_role_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_role_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_role_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `role_id`,`mr`.`NMSPC_CD` AS `mbr_role_nmspc_cd`,`mr`.`ROLE_NM` AS `mbr_role_nm`,`mr`.`ROLE_ID` AS `mbr_role_id`,`rm`.`ROLE_MBR_ID` AS `role_mbr_id`,`a`.`NM` AS `attr_nm`,`d`.`ATTR_VAL` AS `attr_val` from ((((`krim_role_mbr_t` `rm` left join `krim_role_t` `r` on((`r`.`ROLE_ID` = `rm`.`ROLE_ID`))) left join `krim_role_t` `mr` on((`mr`.`ROLE_ID` = `rm`.`MBR_ID`))) left join `krim_role_mbr_attr_data_t` `d` on((`d`.`ROLE_MBR_ID` = `rm`.`ROLE_MBR_ID`))) left join `krim_attr_defn_t` `a` on((`a`.`KIM_ATTR_DEFN_ID` = `d`.`KIM_ATTR_DEFN_ID`))) where (`rm`.`MBR_TYP_CD` = 'R') order by `r`.`NMSPC_CD`,`r`.`ROLE_NM`,`mbr_role_nmspc_cd`,`mbr_role_nm`,`rm`.`ROLE_MBR_ID`,`attr_nm` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `ROLE_ID`,`t`.`NM` AS `role_typ_nm`,`t`.`SRVC_NM` AS `SRVC_NM`,`t`.`KIM_TYP_ID` AS `KIM_TYP_ID` from (`krim_role_t` `r` join `krim_typ_t` `t`) where ((`t`.`KIM_TYP_ID` = `r`.`KIM_TYP_ID`) and (`r`.`ACTV_IND` = 'Y')) order by `r`.`NMSPC_CD`,`r`.`ROLE_NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_rsp_attr_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_rsp_attr_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_attr_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_rsp_attr_v` AS select `krim_typ_t`.`NM` AS `responsibility_type_name`,`krim_rsp_tmpl_t`.`NM` AS `rsp_TEMPLATE_NAME`,`krim_rsp_t`.`NMSPC_CD` AS `rsp_namespace_code`,`krim_rsp_t`.`NM` AS `rsp_NAME`,`krim_rsp_t`.`RSP_ID` AS `rsp_id`,`krim_attr_defn_t`.`NM` AS `attribute_name`,`krim_rsp_attr_data_t`.`ATTR_VAL` AS `attribute_value` from ((((`krim_rsp_t` join `krim_rsp_attr_data_t` on((`krim_rsp_t`.`RSP_ID` = `krim_rsp_attr_data_t`.`RSP_ID`))) join `krim_attr_defn_t` on((`krim_rsp_attr_data_t`.`KIM_ATTR_DEFN_ID` = `krim_attr_defn_t`.`KIM_ATTR_DEFN_ID`))) join `krim_rsp_tmpl_t` on((`krim_rsp_t`.`RSP_TMPL_ID` = `krim_rsp_tmpl_t`.`RSP_TMPL_ID`))) join `krim_typ_t` on((`krim_rsp_tmpl_t`.`KIM_TYP_ID` = `krim_typ_t`.`KIM_TYP_ID`))) order by `rsp_TEMPLATE_NAME`,`rsp_NAME`,`attribute_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_rsp_role_actn_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_rsp_role_actn_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_role_actn_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_rsp_role_actn_v` AS select `rsp`.`NMSPC_CD` AS `rsp_nmspc_cd`,`rsp`.`RSP_ID` AS `rsp_id`,`r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`rr`.`ROLE_ID` AS `ROLE_ID`,`rm`.`MBR_ID` AS `MBR_ID`,`rm`.`MBR_TYP_CD` AS `MBR_TYP_CD`,`rm`.`ROLE_MBR_ID` AS `ROLE_MBR_ID`,`actn`.`ACTN_TYP_CD` AS `ACTN_TYP_CD`,`actn`.`ACTN_PLCY_CD` AS `ACTN_PLCY_CD`,`actn`.`FRC_ACTN` AS `FRC_ACTN`,`actn`.`PRIORITY_NBR` AS `PRIORITY_NBR` from (((((`krim_rsp_t` `rsp` left join `krim_rsp_tmpl_t` `rspt` on((`rsp`.`RSP_TMPL_ID` = `rspt`.`RSP_TMPL_ID`))) left join `krim_role_rsp_t` `rr` on((`rr`.`RSP_ID` = `rsp`.`RSP_ID`))) left join `krim_role_mbr_t` `rm` on((`rm`.`ROLE_ID` = `rr`.`ROLE_ID`))) left join `krim_role_rsp_actn_t` `actn` on(((`actn`.`ROLE_RSP_ID` = `rr`.`ROLE_RSP_ID`) and ((`actn`.`ROLE_MBR_ID` = `rm`.`ROLE_MBR_ID`) or (`actn`.`ROLE_MBR_ID` = '*'))))) left join `krim_role_t` `r` on((`rr`.`ROLE_ID` = `r`.`ROLE_ID`))) order by `rsp_nmspc_cd`,`rsp`.`RSP_ID`,`rr`.`ROLE_ID`,`rm`.`ROLE_MBR_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_rsp_role_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_rsp_role_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_role_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`trnrice`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_rsp_role_v` AS select `rspt`.`NMSPC_CD` AS `rsp_tmpl_nmspc_cd`,`rspt`.`NM` AS `rsp_tmpl_nm`,`rsp`.`NMSPC_CD` AS `rsp_nmspc_cd`,`rsp`.`NM` AS `rsp_nm`,`rsp`.`RSP_ID` AS `rsp_id`,`a`.`NM` AS `attr_nm`,`d`.`ATTR_VAL` AS `attr_val`,`r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`rr`.`ROLE_ID` AS `ROLE_ID` from (((((`krim_rsp_t` `rsp` left join `krim_rsp_tmpl_t` `rspt` on((`rsp`.`RSP_TMPL_ID` = `rspt`.`RSP_TMPL_ID`))) left join `krim_rsp_attr_data_t` `d` on((`rsp`.`RSP_ID` = `d`.`RSP_ID`))) left join `krim_attr_defn_t` `a` on((`d`.`KIM_ATTR_DEFN_ID` = `a`.`KIM_ATTR_DEFN_ID`))) left join `krim_role_rsp_t` `rr` on((`rr`.`RSP_ID` = `rsp`.`RSP_ID`))) left join `krim_role_t` `r` on((`rr`.`ROLE_ID` = `r`.`ROLE_ID`))) order by `rsp_tmpl_nmspc_cd`,`rsp_tmpl_nm`,`rsp_nmspc_cd`,`rsp_nm`,`rsp`.`RSP_ID`,`attr_nm`,`d`.`ATTR_VAL` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-22  1:14:14
