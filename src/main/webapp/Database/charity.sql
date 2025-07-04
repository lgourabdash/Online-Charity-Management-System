-- MySQL dump 10.10
--
-- Host: localhost    Database: charity
-- ------------------------------------------------------
-- Server version	5.0.18-nt

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

create database charity;
use charity;

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
CREATE TABLE `clothes` (
  `id` int(11) NOT NULL auto_increment,
  `donor` varchar(500) NOT NULL,
  `clothestype` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `tname` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clothes`
--


/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
LOCK TABLES `clothes` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(500) default NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) default NULL,
  `address` varchar(500) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_2` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--


/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
LOCK TABLES `customer` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
CREATE TABLE `donate` (
  `id` int(10) NOT NULL auto_increment,
  `demail` varchar(500) default NULL,
  `ditem` varchar(500) default NULL,
  `ddes` varchar(500) default NULL,
  `ddate` varchar(500) default NULL,
  `dimg` longtext,
  `dtrust` varchar(500) default NULL,
  `status` varchar(500) default 'no',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate`
--


/*!40000 ALTER TABLE `donate` DISABLE KEYS */;
LOCK TABLES `donate` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `donate` ENABLE KEYS */;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int(11) NOT NULL auto_increment,
  `donor` varchar(500) NOT NULL,
  `foodtype` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `tname` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--


/*!40000 ALTER TABLE `food` DISABLE KEYS */;
LOCK TABLES `food` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `food` ENABLE KEYS */;

--
-- Table structure for table `money`
--

DROP TABLE IF EXISTS `money`;
CREATE TABLE `money` (
  `id` int(11) NOT NULL auto_increment,
  `donor` varchar(500) NOT NULL,
  `cardname` varchar(500) NOT NULL,
  `bankname` varchar(500) NOT NULL,
  `oname` varchar(500) NOT NULL,
  `expiry` varchar(500) NOT NULL,
  `cvv` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `tname` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money`
--


/*!40000 ALTER TABLE `money` DISABLE KEYS */;
LOCK TABLES `money` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `money` ENABLE KEYS */;

--
-- Table structure for table `toys`
--

DROP TABLE IF EXISTS `toys`;
CREATE TABLE `toys` (
  `id` int(11) NOT NULL auto_increment,
  `donor` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `tname` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toys`
--


/*!40000 ALTER TABLE `toys` DISABLE KEYS */;
LOCK TABLES `toys` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `toys` ENABLE KEYS */;

--
-- Table structure for table `trust`
--

DROP TABLE IF EXISTS `trust`;
CREATE TABLE `trust` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(500) default NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) default NULL,
  `phone` varchar(500) NOT NULL,
  `address` varchar(500) default NULL,
  `yoe` varchar(500) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_2` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trust`
--


/*!40000 ALTER TABLE `trust` DISABLE KEYS */;
LOCK TABLES `trust` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `trust` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

