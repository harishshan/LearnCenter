-- MySQL dump 10.13  Distrib 5.6.16, for Win64 (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	5.6.16-log

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
-- Table structure for table `academic`
--

DROP TABLE IF EXISTS `academic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SSLCSchoolName` varchar(250) DEFAULT NULL,
  `SSLCPercent` double DEFAULT NULL,
  `HSCSchoolName` varchar(250) DEFAULT NULL,
  `HSCPercent` decimal(10,0) DEFAULT NULL,
  `DiplomaCollegeName` varchar(250) DEFAULT NULL,
  `DiplomaPercent` double DEFAULT NULL,
  `Semester1` double DEFAULT NULL,
  `Semester2` double DEFAULT NULL,
  `Semester3` double DEFAULT NULL,
  `Semester4` double DEFAULT NULL,
  `Semester5` double DEFAULT NULL,
  `Semester6` double DEFAULT NULL,
  `Semester7` double DEFAULT NULL,
  `Semester8` double DEFAULT NULL,
  `Arrear` bit(1) DEFAULT NULL,
  `NoOfArrears` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic`
--

LOCK TABLES `academic` WRITE;
/*!40000 ALTER TABLE `academic` DISABLE KEYS */;
INSERT INTO `academic` VALUES (1,'Training School',85,'',0,'BPTC',94,7.5,7.5,7.5,7.5,7.5,7.5,7.5,0,'','2');
/*!40000 ALTER TABLE `academic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginId` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` text,
  `date` date DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loginidfk_idx` (`loginId`),
  CONSTRAINT `loginidfk` FOREIGN KEY (`loginId`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,2,'20610104305','kjsdis','<p>This is my textarea to be replaced with CKEditor. hey ram</p>\r\n','2014-03-16',''),(2,2,'20610104305','haoi','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(3,2,'20610104305','hai how areyou','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(4,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(5,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(6,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(7,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(8,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(9,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(10,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(11,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(12,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(13,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16',''),(14,2,'20610104305','India','<p><strong>India</strong> (<a href=\"http://upload.wikimedia.org/wikipedia/commons/6/67/En-us-India.ogg\"><img alt=\"Listen\" src=\"http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Speakerlink-new.svg/11px-Speakerlink-new.svg.png\" style=\"height:11px; width:11px\" /></a><a href=\"http://en.wikipedia.org/wiki/File:En-us-India.ogg\">i</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English\">/</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Ë</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Éª</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">n</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">d</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">i</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">É</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English\">/</a>), officially the <strong>Republic of India</strong> (<em>Bharat Ganrajya</em>),<a href=\"http://en.wikipedia.org/wiki/India#cite_note-15\">[13]</a><a href=\"http://en.wikipedia.org/wiki/India#cite_note-16\">[c]</a> is a country in <a href=\"http://en.wikipedia.org/wiki/South_Asia\">South Asia</a>. It is the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_and_outlying_territories_by_total_area\">seventh-largest</a> country by area, the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_population\">second-most populous</a> country with <a href=\"http://en.wikipedia.org/wiki/Demographics_of_India\">over 1.2 billion people</a>, and the most populous <a href=\"http://en.wikipedia.org/wiki/Democracy\">democracy</a> in the world. Bounded by the <a href=\"http://en.wikipedia.org/wiki/Indian_Ocean\">Indian Ocean</a> on the south, the <a href=\"http://en.wikipedia.org/wiki/Arabian_Sea\">Arabian Sea</a> on the south-west, and the <a href=\"http://en.wikipedia.org/wiki/Bay_of_Bengal\">Bay of Bengal</a> on the south-east, it shares land borders with <a href=\"http://en.wikipedia.org/wiki/Pakistan\">Pakistan</a> to the west;<a href=\"http://en.wikipedia.org/wiki/India#cite_note-17\">[d]</a> <a href=\"http://en.wikipedia.org/wiki/China\">China</a>, <a href=\"http://en.wikipedia.org/wiki/Nepal\">Nepal</a>, and <a href=\"http://en.wikipedia.org/wiki/Bhutan\">Bhutan</a> to the north-east; and <a href=\"http://en.wikipedia.org/wiki/Burma\">Burma</a> and <a href=\"http://en.wikipedia.org/wiki/Bangladesh\">Bangladesh</a> to the east. In the Indian Ocean, India is in the vicinity of <a href=\"http://en.wikipedia.org/wiki/Sri_Lanka\">Sri Lanka</a> and the <a href=\"http://en.wikipedia.org/wiki/Maldives\">Maldives</a>; in addition, India&#39;s <a href=\"http://en.wikipedia.org/wiki/Andaman_and_Nicobar_Islands\">Andaman and Nicobar Islands</a> share a maritime border with <a href=\"http://en.wikipedia.org/wiki/Thailand\">Thailand</a> and <a href=\"http://en.wikipedia.org/wiki/Indonesia\">Indonesia</a>.</p>\r\n\r\n<p>Home to the ancient <a href=\"http://en.wikipedia.org/wiki/Indus_Valley_Civilisation\">Indus Valley Civilisation</a> and a region of historic trade routes and vast empires, the <a href=\"http://en.wikipedia.org/wiki/Indian_subcontinent\">Indian subcontinent</a> was identified with its commercial and cultural wealth for much of its long history.<a href=\"http://en.wikipedia.org/wiki/India#cite_note-FOOTNOTEStein199816.E2.80.9317-18\">[14]</a> Four world religions&mdash;<a href=\"http://en.wikipedia.org/wiki/Hinduism_in_India\">Hinduism</a>, <a href=\"http://en.wikipedia.org/wiki/History_of_Buddhism_in_India\">Buddhism</a>, <a href=\"http://en.wikipedia.org/wiki/Statistics_of_Jainism\">Jainism</a>, and <a href=\"http://en.wikipedia.org/wiki/Sikhism_in_India\">Sikhism</a>&mdash;originated here, whereas <a href=\"http://en.wikipedia.org/wiki/Judaism\">Judaism</a>, <a href=\"http://en.wikipedia.org/wiki/Parsi\">Zoroastrianism</a>, <a href=\"http://en.wikipedia.org/wiki/Christianity_in_India\">Christianity</a>, and <a href=\"http://en.wikipedia.org/wiki/Islam_in_India\">Islam</a> arrived in the 1st millennium <a href=\"http://en.wikipedia.org/wiki/Common_Era\">CE</a> and also helped shape the region&#39;s <a href=\"http://en.wikipedia.org/wiki/Culture_of_India\">diverse culture</a>. Gradually annexed by and brought under the administration of the <a href=\"http://en.wikipedia.org/wiki/Company_rule_in_India\">British East India Company</a> from the early 18th century and <a href=\"http://en.wikipedia.org/wiki/British_Raj\">administered directly by the United Kingdom</a> from the mid-19th century, India became an independent nation in 1947 after a <a href=\"http://en.wikipedia.org/wiki/Indian_independence_movement\">struggle for independence</a> that was marked by <a href=\"http://en.wikipedia.org/wiki/Non-violent_resistance\">non-violent resistance</a> led by <a href=\"http://en.wikipedia.org/wiki/Mohandas_Karamchand_Gandhi\">Mahatma Gandhi</a>.</p>\r\n\r\n<p>The <a href=\"http://en.wikipedia.org/wiki/Economy_of_India\">Indian economy</a> is the world&#39;s tenth-largest by <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_GDP_%28nominal%29\">nominal GDP</a> and third-largest by <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_GDP_%28PPP%29\">purchasing power parity</a> (PPP).<a href=\"http://en.wikipedia.org/wiki/India#cite_note-19\">[15]</a> Following <a href=\"http://en.wikipedia.org/wiki/Economic_liberalisation_in_India\">market-based economic reforms</a> in 1991, India became one of the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_real_GDP_growth_rate_%28latest_year%29\">fastest-growing major economies</a>; it is considered a <a href=\"http://en.wikipedia.org/wiki/Newly_industrialised_country\">newly industrialised country</a>. However, it continues to face the challenges of <a href=\"http://en.wikipedia.org/wiki/Poverty_in_India\">poverty</a>, <a href=\"http://en.wikipedia.org/wiki/Corruption_in_India\">corruption</a>, <a href=\"http://en.wikipedia.org/wiki/Malnutrition_in_India\">malnutrition</a>, <a href=\"http://en.wikipedia.org/wiki/Healthcare_in_India\">inadequate public healthcare</a>, and <a href=\"http://en.wikipedia.org/wiki/Terrorism_in_India\">terrorism</a>. A <a href=\"http://en.wikipedia.org/wiki/Nuclear_weapons_state\">nuclear weapons state</a> and a <a href=\"http://en.wikipedia.org/wiki/Power_%28international_relations%29#Power_as_status\">regional power</a>, it has the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_number_of_troops\">third-largest standing army</a> in the world and ranks <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_military_expenditures\">eighth in military expenditure</a> among nations. India is a <a href=\"http://en.wikipedia.org/wiki/Federalism\">federal</a> <a href=\"http://en.wikipedia.org/wiki/Constitutional_republic\">constitutional republic</a> governed under a <a href=\"http://en.wikipedia.org/wiki/Parliamentary_system\">parliamentary system</a> consisting of <a href=\"http://en.wikipedia.org/wiki/States_and_territories_of_India\">29 states and 7 union territories</a>. India is a pluralistic, <a href=\"http://en.wikipedia.org/wiki/Languages_of_India\">multilingual</a>, and a multi-ethnic society. It is also home to a diversity of <a href=\"http://en.wikipedia.org/wiki/Wildlife_of_India\">wildlife</a> in a variety of <a href=\"http://en.wikipedia.org/wiki/Protected_areas_of_India\">protected habitats</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://upload.wikimedia.org/wikipedia/en/4/41/Flag_of_India.svg\" style=\"height:267px; width:400px\" /></p>\r\n','2014-03-16','\0'),(15,1,'Harish','Tamilnadu','<p><strong>Tamil Nadu</strong>&nbsp;(<a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English\">/</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Ë</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">t</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">&aelig;</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">m</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Éª</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">l</a>&nbsp;<a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Ë</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">n</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">ÉË</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">d</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">uË</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English\">/</a>&nbsp;<a href=\"http://en.wikipedia.org/wiki/Wikipedia:Pronunciation_respelling_key\"><em><strong>tam</strong>-il-<strong>nah</strong>-doo</em></a>;&nbsp;<a href=\"http://en.wikipedia.org/wiki/File:Tamil_Nadu.ogg\"><img alt=\"About this sound\" src=\"http://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png\" style=\"height:11px; margin:0px; width:11px\" /></a>&nbsp;<a href=\"http://upload.wikimedia.org/wikipedia/commons/1/17/Tamil_Nadu.ogg\">Tamil pronunciation</a>&nbsp;<small>(<a href=\"http://en.wikipedia.org/wiki/Wikipedia:Media_help\">help</a>&middot;<a href=\"http://en.wikipedia.org/wiki/File:Tamil_Nadu.ogg\">info</a>)</small>; literally&nbsp;<em>The Land of&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_language\">Tamils</a></em>&nbsp;or&nbsp;<em>Tamil Country</em>) is one of the 28<a href=\"http://en.wikipedia.org/wiki/States_and_territories_of_India\">states</a>&nbsp;of&nbsp;<a href=\"http://en.wikipedia.org/wiki/India\">India</a>. Its capital is&nbsp;<a href=\"http://en.wikipedia.org/wiki/Chennai\">Chennai</a>&nbsp;(formerly known as&nbsp;<a href=\"http://en.wikipedia.org/wiki/Madras\">Madras</a>), the largest city. Tamil Nadu is a land most known for its monumental ancient Hindu temples and classical form of dance&nbsp;<a href=\"http://en.wikipedia.org/wiki/Bharata_Natyam\">Bharata Natyam</a>.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-6\">[6]</a>&nbsp;Tamil Nadu<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-7\">[7]</a>&nbsp;lies in the southernmost part of the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Indian_Peninsula\">Indian Peninsula</a>&nbsp;and is bordered by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Union_territory\">union territory</a>&nbsp;of&nbsp;<a href=\"http://en.wikipedia.org/wiki/Puducherry\">Puducherry</a>&nbsp;and the states of&nbsp;<a href=\"http://en.wikipedia.org/wiki/Kerala\">Kerala</a>,&nbsp;<a href=\"http://en.wikipedia.org/wiki/Karnataka\">Karnataka</a>, and&nbsp;<a href=\"http://en.wikipedia.org/wiki/Andhra_Pradesh\">Andhra Pradesh</a>. It is bounded by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Eastern_Ghats\">Eastern Ghats</a>&nbsp;on the north, by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Nilgiri_mountains\">Nilgiri</a>, the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Anamalai_Hills\">Anamalai Hills</a>, and&nbsp;<a href=\"http://en.wikipedia.org/wiki/Kerala\">Kerala</a>&nbsp;on the west, by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Bay_of_Bengal\">Bay of Bengal</a>&nbsp;in the east, by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Gulf_of_Mannar\">Gulf of Mannar</a>&nbsp;and the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Palk_Strait\">Palk Strait</a>&nbsp;on the southeast, and by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Indian_Ocean\">Indian Ocean</a>&nbsp;on the south.</p>\r\n\r\n<p>Tamil Nadu is the eleventh largest state in India by area and the seventh most populous state in India. The state is ranked 6th among states in India according to the Human Development Index as of 2011.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-in.undp.org-4\">[4]</a>&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTE.27.27The_Hindu.27.2718_May_2008-8\">[8]</a>&nbsp;It is the second largest state economy in India as of 2012.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTEGSDP_at_constant_prices2012-9\">[9]</a>&nbsp;The state has the highest number (10.56 per cent) of business enterprises and stands second in total employment (9.97 per cent) in India,<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTEEnterprise_of_India2012-10\">[10]</a>&nbsp;compared to the population share of about 6 per cent. In the 2013&nbsp;<a href=\"http://en.wikipedia.org/wiki/Raghuram_Rajan\">Raghuram Rajan</a>&nbsp;panel report, Tamil Nadu was ranked as the third most developed state in India based on a &quot;Multidimensional Development Index&quot;.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-11\">[11]</a>&nbsp;In 2013, the state recorded 15,563 fatalities in the 14,504&nbsp;<a href=\"http://en.wikipedia.org/wiki/Road_accidents_in_Tamil_Nadu\">recorded accidents</a>, the highest for any state in India.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-times-12\">[12]</a></p>\r\n\r\n<p>The region has been the home of the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_people\">Tamil people</a>&nbsp;since at least 1500 BC.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-13\">[13]</a>&nbsp;Its official language is&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_language\">Tamil</a>, which holds a status of being a classical language.&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_language\">Tamil</a>&nbsp;has been in use in inscriptions and literature for over 2500 years. Tamil Nadu is home to many natural resources, classical arts, classical music, classical literature, Hindu temples of&nbsp;<a href=\"http://en.wikipedia.org/wiki/Dravidian_architecture\">Dravidian architecture</a>, hill stations, beach resorts, multi-religious pilgrimage sites, and eight&nbsp;<a href=\"http://en.wikipedia.org/wiki/UNESCO_World_Heritage_Site\">UNESCO World Heritage Sites</a>.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTEUNESCO2012-14\">[14]</a><a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTEPress_Information_Bureau_releases2012-15\">[15]</a></p>\r\n\r\n<p><img alt=\"\" src=\"http://upload.wikimedia.org/wikipedia/commons/3/38/TamilNadu_Collage.jpg\" style=\"height:640px; width:425px\" /></p>\r\n','2014-03-16','');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articlerating`
--

DROP TABLE IF EXISTS `articlerating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articlerating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` int(11) DEFAULT NULL,
  `loginId` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articlerating`
--

LOCK TABLES `articlerating` WRITE;
/*!40000 ALTER TABLE `articlerating` DISABLE KEYS */;
INSERT INTO `articlerating` VALUES (1,9,2,5,NULL),(2,15,2,5,'2014-03-27 00:00:00'),(3,3,2,4,'2014-03-27 00:00:00'),(4,1,2,5,'2014-04-01 00:00:00'),(5,10,2,4,'2014-04-01 00:00:00'),(6,8,2,4,'2014-04-01 00:00:00'),(7,12,2,3,'2014-04-01 00:00:00');
/*!40000 ALTER TABLE `articlerating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES (1,'2008-2012'),(2,'2009-2013'),(3,'2010-2014'),(4,'2011-2015');
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Wipro'),(2,'Microsoft'),(3,'TCS');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailId` varchar(45) DEFAULT NULL,
  `mobileNo` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'chitras72@gmail.com','9003369782','No 153 Anna Nagar','Kancheepuram','631502','Tamil Nadu','India');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'CSE'),(2,'ECE'),(3,'ME'),(4,'CE'),(5,'EEE');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebooks`
--

DROP TABLE IF EXISTS `ebooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ebooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(250) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ebookscategoryidfk_idx` (`categoryId`),
  CONSTRAINT `ebookscategoryidfk` FOREIGN KEY (`categoryId`) REFERENCES `ebookscategory` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebooks`
--

LOCK TABLES `ebooks` WRITE;
/*!40000 ALTER TABLE `ebooks` DISABLE KEYS */;
INSERT INTO `ebooks` VALUES (2,'C:\\ebooks\\Head First - Servlets and JSP - Second Edition.pdf',1,'Head First JSP Servlet'),(3,'C:\\ebooks\\Head-First-Java-2nd-edition1.pdf',1,'Head First Java'),(4,'C:\\ebooks\\java collection.pdf',1,'Java Collection'),(5,'C:\\ebooks\\javacollections.pdf',1,'Java Collection'),(6,'C:\\ebooks\\JAVA NIIT.pdf',1,'NIIT JAVA'),(7,'C:\\ebooks\\NIIT JAVA.pdf',1,'J2ee NITT'),(9,'C:\\ebooks\\learnvb.pdf',2,'learnvb'),(10,'C:\\ebooks\\OReilly.Head.First.C.Sharp.Nov.2007.pdf',2,'HeadFirst C Sharp C#'),(11,'C:\\ebooks\\Pro ASP 3.5 in C# 2008 .pdf',2,'pro ASP C# C Sharp'),(12,'C:\\ebooks\\Head First SQL .pdf',3,'Head First SQL'),(13,'C:\\ebooks\\oracle91 sql.pdf',3,'Oracle SQL'),(14,'C:\\ebooks\\Pro SQL Server 2005 (2006).pdf',3,'Pro SQL Server'),(15,'C:\\ebooks\\Silberschatz - Database System Concepts, Fourth Edition.pdf',3,'Silberschatz database'),(16,'C:\\ebooks\\Cisco Switching.pdf',4,'Cisco Networking'),(17,'C:\\ebooks\\Head First Networking.pdf',4,'HeadFirst Networking'),(18,'E:\\ebooks\\Code-1-RSAEncDec.pdf',1,'RSA Encryption Decryption');
/*!40000 ALTER TABLE `ebooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebookscategory`
--

DROP TABLE IF EXISTS `ebookscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ebookscategory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebookscategory`
--

LOCK TABLES `ebookscategory` WRITE;
/*!40000 ALTER TABLE `ebookscategory` DISABLE KEYS */;
INSERT INTO `ebookscategory` VALUES (1,'Java'),(2,'DotNet'),(3,'DBMS'),(4,'Networking');
/*!40000 ALTER TABLE `ebookscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginId` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_idx` (`loginId`),
  CONSTRAINT `userid` FOREIGN KEY (`loginId`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (2,2,'20610104305','Harish','2014-03-15'),(3,2,'20610104305','chitra','2014-03-15'),(4,2,'20610104305','hai hellow','2014-03-15'),(5,2,'20610104305','hai hellow','2014-03-15'),(6,2,'20610104305','hai hellow','2014-03-15'),(7,2,'20610104305','hai hellow','2014-03-15'),(8,2,'20610104305','hai hellow','2014-03-15'),(9,2,'20610104305','hai hellow','2014-03-15'),(10,2,'20610104305','hai hellow','2014-03-15'),(11,2,'20610104305','hai hellow','2014-03-15'),(12,2,'20610104305','hai hellow','2014-03-15'),(13,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(14,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(15,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(16,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(17,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(18,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(19,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(20,2,'20610104305','nlkjkjkjkj\r\n','2014-03-18');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Admin','123456','admin'),(2,'20610104305','123456','user');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pattern`
--

DROP TABLE IF EXISTS `pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pattern` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `negativeMark` double DEFAULT NULL,
  `minCutOff` int(11) DEFAULT NULL,
  `maxTimer` int(11) DEFAULT NULL,
  `displayResult` bit(1) DEFAULT NULL,
  `displayAnswer` bit(1) DEFAULT NULL,
  `noOfSection` int(11) DEFAULT NULL,
  `totalQuestion` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pattern`
--

LOCK TABLES `pattern` WRITE;
/*!40000 ALTER TABLE `pattern` DISABLE KEYS */;
INSERT INTO `pattern` VALUES (1,'Wipro2010',1,0.33,50,500,'','',2,20,'');
/*!40000 ALTER TABLE `pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` varchar(2000) DEFAULT NULL,
  `optionA` varchar(45) DEFAULT NULL,
  `optionB` varchar(45) DEFAULT NULL,
  `optionC` varchar(45) DEFAULT NULL,
  `optionD` varchar(45) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companyfk_idx` (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (7,'<p>What i\'s Browser</p>\r ','IE','DOC','EXCEL','PDF','a',1,1),(8,'<p>Nithin&nbsp; was counting down from 32. Sumit was counting upwards the numbers starting from 1 and he was calling out only the odd number s. What common number will they call out at the same time if they were calling at the same speed?</p>\r\n','19','21','22','They will not call out the same number','d',1,1),(9,'<p>Two bodies changed from p1v1 to p2v2 state in two ways. The heat supplied is delta Q and work done is delta W. Then what is constant in these two processes</p>\r\n','delta q','delta w','delta q + delta w','delta q - delta w','d',1,1),(10,'<p>_______ have same atomic number and same mass number are</p>\r\n','Isotopes','Isotones','Isomers','Isobars','c',1,1),(11,'<p>Name the phenomena in which one proton is jumped from one isomer to another isomer to create two different elements</p>\r\n','functional isomerisim','sterio merisim','tauto merisim','penta merisim','c',1,1),(12,'<p>In the below compounds which one has 40% C ,6.7% H and 53.3 % O what is its empherical formula</p>\r\n','CHO','CH2','C2H2O2','C2H3O2','b',1,1),(13,'<p>X rays are coming from X ray tube, the wavelength is _______ a certain wavelength</p>\r\n','below','above','inbetween','out of','c',1,1),(14,'<p>In a triode valve in order to increase the saturation current what has to be done</p>\r\n','increase plate voltage','reduce distance between grid and plate','increase cathode potential','reduce grid potential','d',1,1),(15,'<p>Seven different toys are distributed among 3 children how many different ways are possible?</p>\r\n','7C3','7P3','3 7','7 3','d',1,1),(16,'<p>A, B ans C are three speakers. They have to speak randomly along with another 5 speakers in a function.A has to speak before B and B has to speak before C. What is the probability.</p>\r\n','1/3','1/6','1/5','1/9','b',1,1),(17,'<p>&nbsp;If dy = (secx + ytanx)dx, Then the curve is</p>\r\n','x = ycosx','x = ysinx','x = ytanx','x = ysecx','a',1,1),(18,'<p>Two series are 16,21,26.... and 17,21,25.....What is the sum of first hundred common numbers</p>\r\n','101100','110100','101110','110101','a',1,1),(19,'<p>There are two sections in a question paper each contain five questions. A students has to answer 6 questions.Maximum no. of questions that can be answered from any section is 4. How many ways he can attempt the paper?</p>\r\n','50','100','120','200','d',1,1),(20,'<p>a and b are two numbers selected randomly from 1,2,3.... 25 what is the probability of a and b are not equal.</p>\r\n','1/25','24/25','13/25','2/25','b',1,1),(21,'<p>Two circles of different radii intersects each other what is the maximum no of intersections</p>\r\n','0','1','2','3','c',1,1),(22,'<p>If x approaches infinity , then (??dx )/( ??dx) is ?</p>\r\n','1','0','-1','2','a',1,1),(23,'<p>If f(x)=1-cos(1-cosx)/x4 is continuos at f(0) then what is x</p>\r\n','1','0','1/4','1/2','c',1,1),(24,'<p>For the word SURITI, if you arrange the letters in dictionary order then what is its rank?</p>\r\n','234','235','236','237','c',1,1),(25,'<p>Period of sin ((2t + 3) / 6 pi)</p>\r\n','6pi','6pi2','3pi','0','b',1,1),(26,'<p>A radioactive element x has an atomic number of 100.It decays directly into an element y which decays directly into element z.In both processes a charged particle is emitted.Which of the following statements would be true?</p>\r\n',' y has an atomic number of 102','y has an atomic number of 101','z has an atomic number of 100','z has an atomic number of 101','b',1,1),(27,'<p>If the sum of the roots of the equation ax2 + bx + c=0 is equal to the sum of the squares of their reciprocals then a/c, b/a, c/b are in</p>\r\n','AP','GP','HP','None of these','c',1,1),(28,'<p>A certain radioactive element A, has a half life = t seconds.In (t/2) seconds the fraction of the initial quantity of the element so far decayed is nearly</p>\r\n','29%','15%','10%','45%','a',1,1),(29,'<p>A man speaks the truth 3 out of 4 times.He throws a die and reports it to be a 6.What is the probability of it being a 6?</p>\r\n','3/8','5/8','3/4','None of the above','a',1,1),(30,'<p>If cos2A + cos2B + cos2C = 1 then ABC is a</p>\r\n','Right angle triangle','Equilateral triangle','All the angles are acute','None of these','a',1,1),(31,'<p>If cos2A + cos2B + cos2C = 1 then ABC is a</p>\r\n','Right angle triangle','Equilateral triangle','All the angles are acute','None of these','a',1,1),(32,'<p>Image of point (3,8) in the line x + 3y = 7 is</p>\r\n',' (-1,-4)','(-1,4)','(2,-4)','(-2,-4)','a',1,1),(33,'<p>When X-Ray photons collide with electrons</p>\r\n','They slow down','Their mass increases','Their wave length increases','Their energy decreases','c',1,1),(34,'<p>How many bonds are present in CO2 molecule?</p>\r\n','1','2','0','4','d',1,1),(35,'<p>In a balanced chemical equation</p>\r\n','Atoms are conserved','Molecules are conserved','Moles are conserved','Reactant and product molecules are preserved','a',1,1),(36,'<p>How many grams of NaOH will react with 0.2 equivalent of HCl</p>\r\n','0.59','0.285','1.18','none of these','a',1,1),(37,'<p>Integrate 3x + 5 / (x3-x2-x+1)</p>\r\n','1/2 log | (x+1)/(x-1) | - 4/(x-1)','log |2+tanx|','2 log|(tanx)/(tanx+2)',' -(1+logx)/x','a',1,1),(38,'<p>If y=cos-1(cosx + 4sinx)/(17)1/2, then dy/dx is</p>\r\n','0','1','-1','none of these','b',1,1),(39,'<p>If the letters of the word &quot;rachit&quot; are arranged in all possible ways and these words are written out as in a dictionary, what is the rank of the word &quot;rachit&quot;</p>\r\n','485','480','478','481','d',1,1),(40,'<p>Ravi&#39;s salary was reduced by 25%.Percentage increase to be effected to bring the salary to the original level is</p>\r\n','20%','25%','33%','30%','c',1,1),(41,'<p>A and B can finish a piece of work in 20 days .B and C in 30 days and C and A in 40 days.In how many days will A alone finish the job</p>\r\n','48','34','44','45','a',1,1),(42,'<p>How long will a train 100m long travelling at 72kmph take to overtake another train 200m long travelling at 54kmph</p>\r\n','70sec','1min','1 min 15 sec',' 55 sec','b',1,1),(43,'<p>What is the product of the irrational roots of the equation (2x-1)(2x-3)(2x-5)(2x-7)=9</p>\r\n','3/2','4','3','3/4','a',1,1),(44,'<p>Which of the following parameters is the same for molecules of all gases at a given temperature?</p>\r\n','Mass','Momentum','Speed','Kinetic energy','d',1,1),(45,'<p>An elecrton is injected into a region of uniform magnetic flux density with the components of velocity parallel to and normal to the flux.What is the path of the electron?</p>\r\n','Helix','Parabola','Circle','Rectangle','a',1,1),(46,'<p>If Young&#39;s double slit experiment is performed in water</p>\r\n','the fringe width will decrease','the fringe width will increase','the fringe width remains unchanged','there will be no fringe','a',1,1),(47,'<p>The shape of a spot of light produced when bright sunshine passes perpendicular through a hole of very small size is</p>\r\n','Square, because the hole is a square','Round, because it is an image of the sun','Round with a small penumbra around it','Square with a small penumbra','a',1,1),(48,'<p><strong><em>Plants : Coal</em></strong></p>\r\n','Crops : Manure','Animals : Oil','Cow : Milk','Fire : Smoke','b',2,1),(49,'<p><strong><em>Rectangle : Cylinder </em></strong></p>\r\n','Square : Sphere','Circle : Dosc','Triangle : Cone','Wall : Room ','c',2,1),(50,'<p><strong><em>Expend : Replenish</em></strong></p>\r\n','Exhort : Encourage','Formant : Rebellion','Defect : Rejoin','Encroachment : Occupy','c',2,1),(51,'<p><strong><em>X varies inversely as square of y. Given that y = 2 for x = 1. The value of x for y = 6 will be equal to</em></strong></p>\r\n','3','9','1/3','1/9','d',2,1),(52,'<p><strong><em>If 10% of x = 20% of y, then x : y is equal to </em></strong></p>\r\n','1:2','2:1','5:1','10:1','b',2,1),(53,'<p><strong><em>A starts business with Rs.3500 and after 5 months, B joins with A as his partner. After a year, the profit is divided in the ratio 2 : 3. What is B&#39;s contribution in the Capital ?</em></strong></p>\r\n','Rs. 7500 ','Rs. 8000','Rs. 8500','Rs. 9000','d',2,1),(54,'<p><strong><em>Ronald and Elan are working on an assignment. Ronald takes 6 hours to type 32 pages on a computer, while Elan takes 5 hours to type 40 pages. How much time will they take, working together on two different computers to type an assignment of 110 pages ?</em></strong></p>\r\n','7 hours 30 minutes ','8 hours','8 hours 15 minutes','8 hours 25 minutes ','c',2,1),(55,'<p><strong><em>A and B can do a piece of work in 72 days; B and C can do it in 120 days; A dn C can do it in 4 days. Who among these will take the least time if put to do it alone?</em></strong></p>\r\n','80 days','100 days','120 days','150 days ','c',2,1),(56,'<p><strong><em>A cistern can be filled by a tap in 4 hours while it can be emptied by another tap in 9 hours. If both taps are openedsimultaneously, then after&nbsp; how much time will the cistern get filled ?</em></strong></p>\r\n','4.5 hours','5 hours','6.5 hours','7.2 hours','d',2,1),(57,'<p><strong><em>Pipe a can fill a tank in 5 hours, pipe B in 10 hours and pipe C in 30 hours. If all the pipes are open, in how many hours will the tank completely</em></strong></p>\r\n','6 min. to empty','6 min to fill','9 min. to empty','9 min. to fill ','c',2,1),(58,'<p><strong><em>Fate smiles ...... those who untiringly grapple with stark realities of life.</em></strong></p>\r\n','with ','  over','on','round ','c',2,1),(59,'<p><strong><em>The miser gazed ...... at the pile of gold coins in front of him.</em></strong></p>\r\n','avidly','admiringly','thoughtfully ','earnestly ','a',2,1),(60,'<p><strong><em>Catching the earlier train will give us the ...... to do some shopping. </em></strong></p>\r\n','chance ','luck ','possibility','occasion','a',2,1),(61,'<p>I saw a ...... of cows in the field.</p>\r\n','group ','herd ','swarm','flock ','b',2,1),(62,'<p>The grapes are now ...... enough to be picked.</p>\r\n','ready','mature',' ripe','advanced','c',2,1),(63,'<p>Success in this examination depends ...... hard work alone</p>\r\n','at ','over','for','on','d',2,1),(64,'<p>My uncle decided to take ...... and my sister to the market.</p>\r\n','I','mine ','me',' myself ','c',2,1),(65,'<p>If you smuggle goods into the country, they may be ...... by the customs authority.</p>\r\n','possessed','punished ','confiscated',' fined','c',2,1),(66,'<p>Man does not live by ...... alone.</p>\r\n','food ','bread ','meals','diet','b',2,1),(67,'<p>Piyush behaves strangely at times and, therefore,nobody gets ...... with him.</p>\r\n','about ','through','along ',' up ','c',2,1),(68,'<p>&nbsp;CORPULENT</p>\r\n','Lean','Gaunt','Emaciated ','Obese','d',2,1),(69,'<p>BRIEF</p>\r\n','Limited ','Small ',' Little','Short ','d',2,1),(70,'<p>EMBEZZLE</p>\r\n','Misappropriate','Balance','Remunerate','Clear','a',2,1),(71,'<p>VENT</p>\r\n','Opening ','Stodge',' End ','Past tense of go ','a',2,1),(72,'<p>AUGUST</p>\r\n','Common','Ridiculous ','Dignified ','Petty ','c',2,1),(73,'<p>CANNY</p>\r\n','Obstinate','Handsome ','Clever ','Stout','c',2,1),(74,'<p>ALERT</p>\r\n','Energetic ','Observant ','Intelligent ','Watchful ','d',2,1),(75,'<p>WARRIOR</p>\r\n','Soldier ','Sailor',' Pirate','Spy','a',2,1),(76,'<p>DISTANT</p>\r\n','Far ','Removed','Reserved ','Separate','a',2,1),(77,'<p>ADVERSITY&nbsp;</p>\r\n','Failure  ','Helplessness ','Misfortune','Crisis','c',2,1),(78,'<p>Eccrinology : Secretions : : Selenography : ?&nbsp;</p>\r\n','Sun','Moon','Crust','Mantle ','b',2,1),(79,'<p>Coconut : Shell : : Letter : ?&nbsp;</p>\r\n','Letter-box','Stamp','Mail','Envelope ','d',2,1),(80,'<p>Roster : Duty : : Inventory : ?</p>\r\n','Furnace','Exports','Goods','Produce ','c',2,1),(81,'<p>Anaemia : Blood : : Anarchy : ?</p>\r\n','Disorder','Monarchy','Government ','lawlessness ','c',2,1),(82,'<p>Heed : Neglect : :Pacify: ?&nbsp;</p>\r\n','Victory ','Incite ','Allay','War ','b',2,1),(83,'<p>Probe : Wound : : Anemography : ?</p>\r\n','Humidity','Rainfall','Force','Pressure ','c',2,1),(84,'<p>Loiter : Dwandle : : Impugn : ?&nbsp;&nbsp;</p>\r\n','Challenge ','Gamble','Confiscate','Revenge  ','a',2,1),(85,'<p>Oasis : Sand : : Island : ?&nbsp;</p>\r\n','River','Sea ','Water ','Waves   ','c',2,1),(86,'<p>Anatomy : Zoology : : Paediatrics : ?&nbsp;</p>\r\n','Chemistry','Medicine','Palaeontology','Mechanics','b',2,1),(87,'<p>War : Death : : Smoke : ?</p>\r\n','Burning','Pollution','Fire','Cigaratte  ','b',2,1),(88,'<p>Scout : Army : : Clerk : ?&nbsp;</p>\r\n','Office','Files ','Officer ','Administration','a',2,1),(89,'<p>Winter : Hibernation : : Summer : ?</p>\r\n','Survival ','Activation','Aestivation','Cache  ','c',2,1),(90,'<p>Sports : Logo : : Nation : ?</p>\r\n','Anthem','Ruler','Animal','Emblem  ','d',2,1),(91,'<p>Vegetable : Chop : : Body : ?</p>\r\n','Cut ','Amputate','Peel','Prume  ','b',2,1),(92,'<p>Mountain : Valley : : Genius : ?</p>\r\n','Brain','Idiot','Think','Intelligence  ','b',2,1),(93,'<p>Misogamy : Marriage : : Misogyny : ?&nbsp;</p>\r\n','Children','Husband','Relation ','Women  ','d',2,1),(94,'<p>Eye : Wink : : Heart : ?&nbsp;</p>\r\n','Move','Throb','Pump','Ouiver  ','b',2,1),(95,'<p>Wine : Grapes : : Vodka : ?&nbsp;</p>\r\n','Potatoes','Apples','Oranges','Flour','d',2,1),(96,'<p>Calender : Dates : : Dictionary : ?</p>\r\n','Vocabulary','Language ','Words','Book','c',2,1),(97,'<p>Novice : Learner : : Harbinger : ?</p>\r\n','Messenger','Thief ','Pickpocket','Robber','a',2,1),(98,'<p>Sikkim : Gangtok : : Manipur : ?&nbsp;</p>\r\n','Dispur','Cherapunji','Shillong','Imphal ','a',2,1),(99,'<p>Line : Square : : Arc : ?&nbsp;</p>\r\n','Ring ','Sphere','Circle','Ball ','c',2,1),(100,'<p>&nbsp;Convoy : Ships : : Deputation : ?&nbsp;</p>\r\n','Voters ','Representation','Politicians?','Writers ','b',2,1),(101,'<p>Training : Leather : : Pyrotechnics : ?&nbsp;</p>\r\n','Wool ','Fireworks','Bombs ','Machinery ','b',2,1),(102,'<p>Shark : Fish : : Lavender : ?&nbsp;</p>\r\n','Shrub','Tree','Herb','Climber ','a',2,1),(103,'<p>Circle : Circumference : : Square : ?&nbsp;</p>\r\n','Volume','Area','Diagonal','Perimeter  ','d',2,1),(104,'<p>Oriel : Room : : Tendon : ?&nbsp;</p>\r\n','Blood','Muscles ','Veins','Liver  ','b',2,1),(105,'<p>Car : Petrol : : Televison : ?</p>\r\n','Electricity','Transmission','Entertainment','Antenna','a',2,1),(106,'<p>Applique : Ornament : : Impound : ?&nbsp;</p>\r\n','Confiscate ','Powder','Grab','Snatch','a',2,1),(107,'<p>They were all shocked at his failure in the competition</p>\r\n','were shocked at all   ','had all shocked at  ','had all shocked by  ','No correction required','d',2,2),(108,'<p>Despite of their differences on matters of principles, they all agree on the demand of hike is salary?&nbsp;</p>\r\n','Despite their  ','Despite of the ','Despite for their  ','Despite off their','a',2,2),(109,'<p>He is a singer of repute, but his&nbsp; yesterday&#39;s performance was quite disappointing</p>\r\n','performances of yesterday were','yesterday performance was  ','yesterday performance were','No correction required ','d',2,2),(110,'<p>The&nbsp; crime has growth rapidly&nbsp; in Russia since the disintegration of the communist system</p>\r\n','rapid crime has grown ','crime has grown rapidly  ','crimes grow rapidly','crimes have been rapidly grown  ','b',2,2),(111,'<p>My hair stood off ends&nbsp; when I saw the horrible sight.</p>\r\n','  stood at ends ','stood on ends ','stood to ends','stands on ends ','b',2,2),(112,'<p>The crops are dying; it must not had rained.&nbsp;</p>\r\n','must had not ','must not be','must not have','must not have been','c',2,2),(113,'<p>The intruder stood quietly&nbsp; for few moments&nbsp;</p>\r\n','for few time ','for the few moments','for moments ','for a few moments','d',2,2),(114,'<p><ins>If the room had been brighter</ins>, I would have been able to read for a while before bed time.</p>\r\n','If the room was brighter ','If the room are brighter  ','Had the room been brighter ','No improvement','c',2,2),(115,'<p>If you are not clear about the meaning of a word, it is wise to <ins>look to</ins> a dictionary.&nbsp;</p>\r\n','look for ','look at  ','look up ','No impro vement  ','c',2,2),(116,'<p><ins>There is no more room </ins>for you in this compartment.</p>\r\n','there is no more seat ','there is no more space ','there i s no more accommodation  ','No improvement','b',2,2),(117,'<p>More than one person <ins>was killed</ins> in accident.&nbsp;</p>\r\n','were killed','are killed ','have been killed','No improvement','a',2,2),(118,'<p>&nbsp; Every time<ins>&nbsp; I go in a lift </ins>to my sixth floor apartment, I remember the calm and serenity of my ancestral home in the village.&nbsp;</p>\r\n','move in a lift ','ascend in a lift ','take a lift ','No improvement  ','c',2,2),(119,'<p>My friend was in hospital for a week <ins>after</ins>&nbsp; an accident</p>\r\n','through','following','for','No improvement  ','b',2,2),(120,'<p>If you are living near a market place you should be ready <ins>to bear</ins> the disturbances caused by traffic.&nbsp;</p>\r\n','to bear upon  ','to bear with  ','   to bear away','No improvement  ','b',2,2),(121,'<p>In India today many of our intellectuals still talk in terms of the French Revolution and the Rights of Man, not appreciating that&nbsp; <ins>much has happened </ins>since then.</p>\r\n','much has been happening ','much had happened ','much might happen  ','No improvement  ','d',2,2),(122,'<p>Catching the earlier train will give us the ...... to do some shopping</p>\r\n','chance  ','luck','possibility ','occasion','a',2,2),(123,'<p>Many of the advances of civilization&nbsp; have been conceived by young people just on the ...... of adulthood</p>\r\n','boundary ','threshold  ','peak','horizon ','b',2,2),(124,'<p>The paths of glory lead ...... to the grave.</p>\r\n','straight  ','but','in  ','directly','b',2,2),(125,'<p>Wheat ...... carbohydrates, vitamins, proteins, and dietary fibre in our daily diet.</p>\r\n','has','gives','yields ','provides','c',2,2),(126,'<p>&nbsp;...... all intents and purposes, the manager is the master of the firm.</p>\r\n','in','upon','with  ','to  ','d',2,2),(127,'<p>We shall not to be able to use your ability in court unless we can find someone to ...... to st atements.&nbsp;&nbsp;</p>\r\n','corroborate','avouch','verify ','approve','a',2,2),(128,'<p>&ldquo;On the other hand&hellip;&hellip;&hellip;&hellip;. unlikely quarter&rdquo; The statement shows that people&rsquo;s reaction to our attitude is</p>\r\n','Generally indifferent','surprisingly responsive ','often adverse','mainly favourable','b',2,2),(129,'<p>For a few seconds, Madan was&hellip;&hellip;&hellip;&hellip;.blinded by the powerful lights of the oncoming car</p>\r\n','heavily  ','largely        ','greatly','totally','d',2,2),(130,'<p>His interest in the study of human behavior is indeed very&hellip;&hellip;&hellip;&hellip;</p>\r\n','strong','large','broad ','deep','d',2,2),(131,'<p>The police have&hellip;&hellip;&hellip;&hellip;&hellip;.a complaint against four persons</p>\r\n','entered       ','lodged','registered','noted','c',2,2),(132,'<p>The improvement made by changes in the system was &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;..and did not warrant the large expenses</p>\r\n','large   ','small    ','minute    ','marginal   ','d',2,2),(133,'<p>The man who is&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;..hesitating which of the two things he will do first, will do neither</p>\r\n','persistently    ','constantly  ','insistently','consistently','a',2,2),(134,'<p>He is too&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.to be deceived easily</p>\r\n','strong  ','modern','kind','intelligent','d',2,2),(135,'<p>The Manager gave her his &hellip;.. that the complaint would be investigated</p>\r\n','assurance','suggestion  ','avowal ','support','a',2,2),(136,'<p>I am feeling &hellip;&hellip; better today</p>\r\n','rather ','too    ','fairly  ','very','c',2,2),(137,'<p>The problems of translation are still remain.</p>\r\n','are remain.         ','will remained  ','will still remain','No Correction required','c',2,2),(138,'<p>It is ten years since I have begun living here</p>\r\n','begun ','had begun     ','began     ','No Correction required','c',2,2),(139,'<p>Education is a strong instrument for moldings the character of the young</p>\r\n','striking         ','powerful ','potent ','No Correction required','b',2,2),(140,'<p>He gave the I.A.S. examination in all seriousness.</p>\r\n','appeared ','took  ','undertook  ','No correction required','b',2,2),(141,'<p>He has cooked that meal so often he can do it with his eyes closed.</p>\r\n','mind blank            ','eyes covered ','hands full ','No correction required','d',2,2),(142,'<p>The young hikers went as far as they finally got lost in the valley.</p>\r\n','so far that         ','too far that            ','so far as that              ','No correction required','a',2,2),(143,'<p>He stopped to work an hour ago</p>\r\n','to working','to have worked      ','working','No Correction required','c',2,2),(144,'<p>The fact finding committee has so far not made any advancement</p>\r\n','progress','improvement ','stride      ','No Correction required','a',2,2),(145,'<p>(38 x 142) &divide; (4096) =?</p>\r\n','337.25','269.8','490','84.3125','a',1,3),(146,'<p>3 + 33.3 + 3.03 + 333 =?</p>\r\n','666','636.33','372.33','672.66','c',1,3),(147,'<p>(17.52)2 =?</p>\r\n','280.9504','290.5904','306.9504','280.5904','c',1,3),(148,'<p>(37% of 2370) &ndash; (41% of 2105) =?</p>\r\n','13.85','12.56','13.1','12.15','a',1,3),(149,'<p>A is driving on a highway when the police fines him for overspeeding and exceeding the limit by 10 km/hr.At the same time B is fined for overspeeding by twice the amount by which A exceeded the limit.If he was driving at 35 km/hr what is the speed limit for the road?</p>\r\n','10 kmp','20 kmph','15 kmph','30kmph','c',1,3),(150,'<p>A car travels 12 kms with a 4/5th filled tank.How far will the car travel with 1/3 filled tank</p>\r\n','5 kms','2 kms','3 kms','10 kms','a',1,3),(151,'<p>A car has run 10000 miles using 5 tyres interchangably,To have a equal wornout by all tyres how many miles each tyre should have run</p>\r\n','2000 miles/tyre','4000 miles/tyre','1000 miles/tyre','500 miles/tyre','b',1,3),(152,'<p>A person, who decided to go to weekened trip should not exceed 8 hours driving in a day. Average speed of forward journey is 40 m/h. Due to traffic in sundays, the return journey average speed is 30 m/h. How far he can select a picnic spot?</p>\r\n','120 miles ','between 120 and 140 miles ','160 miles ','0 miles','a',1,3),(153,'<p>A storm will move with a velocity of towards the centre in hours,At the same rate how much far will it move in hrs</p>\r\n','1/3','2/3','2 2/3','11/3','c',1,3),(154,'<p>If A is traveling at 72 km per hour on a highway. B is traveling at a speed of 25 meters per second on a highway. What is the difference in their speeds in meters per second?</p>\r\n','1/2 m/sec ','1 m/sec ','1 1/2 m/sec','2 m/sec ','a',1,3),(155,'<p>A is twice efficient than B. A and B can both work together to complete a work in 7 days. Then find in how many days A alone can complete the work?</p>\r\n','11','15','18','20','a',1,3),(156,'<p>A finish the work in 10 days. B is 60% efficient than A. So how days does B take to finish the work</p>\r\n','2 days','4 days','10 days','6 days','b',1,3),(157,'<p>A finishes the work in 10 days &amp; B in 8 days individually. If A works for only 6 days then how many days should B work to complete A&rsquo;s work</p>\r\n','3 days','3.5 days','3.1 days','3.2 days','d',1,3),(158,'<p>A man, a woman, and a child can do a piece of work in 6 days. Man only can do it in 24 days. Woman can do it in 16 days and in how many days child can do the same work</p>\r\n','20','15','16','13','c',1,3),(159,'<p>If 20 men take 15 days to to complete a job, in how many days can 25 men finish that work</p>\r\n','12 days','20 days','10 days','15 days','a',1,3),(160,'<p>one fast typist type some matter in 2hr and another slow typist type the same matter in 3hr. if both do combinely in how much time they will finish</p>\r\n','1 hr 15 min','1 hr 12min','1 hr 18 min','1 hr','b',1,3),(161,'<p>A man shapes 3 cardboards in 50 minutes,how many cardboards does he shape in 5 hours</p>\r\n','20','15','16','18','d',1,3),(162,'<p>The size of the bucket is N kb. The bucket fills at the rate of 0.1 kb per millisecond. A programmer sends a program to receiver. There it waits for 10 milliseconds. And response will be back to programmer in 20 milliseconds. How much time the program takes to get a response back to the programmer, after it is sent?</p>\r\n','20 ms','40 ms','30 ms','50 ms','c',1,3),(163,'<p>There are 150 weights .Some are 1 kg weights and some are 2 kg weights. The sum of the weights is 260.What is the number of 1kg weights?</p>\r\n','30','60','40','50','c',1,3),(164,'<p>Two pencils costs 8 cents, then 5 pencils cost how much</p>\r\n','50 cents','20 cents','60 cents','40 cents','b',1,3),(165,'<p>A work is done by two people in 24 min. one of them can do this work a lonely in 40 min. how much time required to do the same work for the second person</p>\r\n','60 min','20 min','30 min','10 min','a',1,3),(166,'<p>A car is filled with four and half gallons of oil for full round trip. Fuel is taken 1/4 gallon more in going than coming. What is the fuel consumed in coming up?</p>\r\n','10 gallon','5 gallon','3 gallon','2 gallon','d',1,3),(167,'<p>Low temperature at the night in a city is 1/3 more than 1/2 high as higher temperature in a day. Sum of the low temperature and highest temp. is 100 degrees. Then what is the low temp?</p>\r\n','40 deg','50 deg','60 deg','30 deg     ','a',1,3),(168,'<p>A salesperson multiplied a number and got the answer 3, instead of that number divided by 3.What is the answer he actually has to get?</p>\r\n','1/4','1/3','1/2','11/2','b',1,3),(169,'<p>A bus started from bus stand at 8.00am, and after 30 minutes staying at destination, it returned back to the bus stand. The destination is 27 miles from the bus stand. The speed of the bus is 18mph. In return journey bus travels with 50% fast speed. At what time it returns to the bus stand?</p>\r\n','12:00 am','1:00 am','11:00 am','10:00 am','c',1,3),(170,'<p>With 4/5 full tank vehicle travels 12 miles, with 1/3 full tank how much distance travels</p>\r\n','10 miles','5 miles','12 miles','20 miles','b',1,3),(171,'<p>In a two-dimensional array, X (9, 7), with each element occupying 4 bytes of memory, with the address of the first element X (1, 1) is 3000; find the address of X (8, 5).</p>\r\n','3000','3212','3547','3854','b',1,3),(172,'<p>What is the largest prime number that can be stored in an 8-bit memory</p>\r\n','200','250','251','240','c',1,3),(173,'<p>The size of a program is N. And the memory occupied by the program is given by M = square root of 100N. If the size of the program is increased by 1% then how much memory now occupied</p>\r\n','6%','0.5%','10%','15%','b',1,3),(174,'<p>In which of the system, decimal number 184 is equal to 1234?</p>\r\n','10','12','8','5','d',1,3),(175,'<p>Find the value of the 678 to the base-7.</p>\r\n','1520','1658','1656','1200','c',1,3),(176,'<p>Complete the series 2, 7, 24, 77,__</p>\r\n','238','230','280','250','a',1,3),(177,'<p>Find the value of @@+25-++@16, where @ denotes &ldquo;square&rdquo; and + denotes &ldquo;square root</p>\r\n','620','651','680','621','d',1,3),(178,'<p>Find the result of the following expression if, M denotes modulus operation, R denotes round-off, T denotes truncation: M(373,5)+R(3.4)+T(7.7)+R(5.8)</p>\r\n','20','15','19','18','c',1,3),(179,'<p>G(0)= -1, G(1)=1, G(N)=G(N-1) &ndash; G(N-2), G(5)=</p>\r\n','-1','-5','-2','0','c',1,3),(180,'<p>What is the max possible 3 digit prime number</p>\r\n','111','997','225','136','b',1,3),(181,'<p>A power unit is there by the bank of the river of 750 meters width. A cable is made from power unit to power plant opposite to that of the river and 1500mts away from the power unit.The cost of the cable below water is Rs.15/- per meter and cost of cable on the bank is Rs.12/-per meter. Find the total of laying the cable.</p>\r\n','1500','1502','2000','1000','d',1,3),(182,'<p>&nbsp;In Madras, temperature at noon varies according to -t^2/2 + 8t + 3, where t is elapsed time. Find how much temperature more or less in 4pm to 9pm</p>\r\n','at 6 pm ','at 5 pm','at 9 pm','at 10 pm','b',1,3),(183,'<p>The size of the bucket is N kb. The bucket fills at the rate of 0.1 kb per millisecond. A programmer sends a program to receiver. There it waits for 10 milliseconds. And response will be back to programmer in 20 milliseconds. How much time the program takes to get a response back to the programmer, after it is sent</p>\r\n','10','20','30','40','c',1,3),(184,'<p>If the vertex (5,7) is placed in the memory. First vertex (1,1) `s address is 1245 and then address of (5,7) is &mdash;&mdash;&mdash;-</p>\r\n','1200','1567','1250','1279','d',1,3),(185,'<p>Which of the following are orthogonal pairs</p>\r\n','3i+2j ','i+j ','2i-3j ','-7i+j ','a',1,3),(186,'<p>If A, B and C are the mechanisms used separately to reduce the wastage of fuel by 30%, 20% and 10%.What will be the fuel economy if they were used combined.</p>\r\n','10%','20%','50%','30%','b',1,3),(187,'<p>Complete the series. 3, 8, &ndash;, 24, &ndash;, 48, 63</p>\r\n','15,35','15,30','18,13','15,40','a',1,3),(188,'<p>Complete the series. 4, -5, 11, -14, 22, &mdash;</p>\r\n','-20','-40','-27','-15','c',1,3),(189,'<p>A Flight takes off at 2 A.M from northeast direction and travels for 11 hours to reach the destination, which is in northwest direction. Given the latitude and longitude of source and destination. Find the local time of destination when the flight reaches there</p>\r\n','6:00 am','5:00 am','4:00 am','7:00 am','d',1,3),(190,'<p>A can copy 50 papers in 10 hours while both A &amp; B can copy 70 papers in 10 hours. Then for how many hours required for B to copy 26 papers</p>\r\n','10','15','18','13','d',1,3),(191,'<p>A 2D array is declared as A[9,7] and each element requires 2 byte. If A [1,1] is stored in 3000. Find the memory of A[8,5]</p>\r\n','3000','2000','3106','3500','c',1,3),(192,'<p>One Rectangular plate with length 8 inches breadth 11 inches and 2 inches thickness is there. What is the length of the circular rod with diameter 8 inches and equal to volume of rectangular plate ?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n','3.5 inchs','4 inchs','3 inchs','5 inchs','a',1,3),(193,'<p>In some game 139 members have participated every time one fellow will get out. What is the number of matches to choose the champion to be held?</p>\r\n','130','140','138','150','c',1,3),(194,'<p>In 8*8 chess board what is the total number of squares.</p>\r\n','200','204','208','205','b',1,3),(195,'<p>Falling height is proportional to square of the time. One object falls 64cm in 2sec than in 6sec from how much height the object will fall.</p>\r\n','500 cm','560 cm','540 cm','576 cm','d',1,3),(196,'<p>Gavaskar average in first 50 innings was 50. After the 51st innings his average was 51 how many runs he made in the 51st innings</p>\r\n','100','102','101','105','c',1,3),(197,'<p>2 oranges, 3 bananas and&nbsp; 4 apples cost Rs.15 . 3 oranges 2 bananas 1 apple costs Rs 10. what is the cost of 3 oranges, 3 bananas and 3 apples</p>\r\n','Rs 10','Rs 15','Rs 16','Rs 13','b',1,3),(198,'<p>A 3 gallon mixture contains one part S and two parts R. In order to change it to mixture containing 25% S, how much R should be added?</p>\r\n','5 gallon','3 gallon','1 gallon','2 gallon','c',1,3),(199,'<p>There are 150 weights .Some are 1 kg weights and some are 2 kg weights. The sum of the weights is 260.What is the number of 1kg weights?</p>\r\n','20','80','60','40','d',1,3),(200,'<p>The cost of one pencil, two pens and four erasers is Rs.22 while the cost of five pencils, four pens and two erasers is Rs.32.How much will three pencils, three pens and three erasers cost?</p>\r\n','27','28','29','30','a',1,3),(201,'<p>If Rs.1260 is divided between between A, B and C in the ratio 2:3:4, what is C&#39;s share?</p>\r\n','540','560','524','580','b',1,3),(202,'<p>A shopkeeper bought a watch for Rs.400 and sold it for Rs.500.What is his profit percentage?</p>\r\n','20%','25%','40%','50%','b',1,3),(203,'<p>Hansie made the following amounts in seven games of cricket in India: Rs.10, Rs.15, Rs.21, Rs.12, Rs.18, Rs.19 and Rs.17(all figures in crores of course). Find his average earnings.</p>\r\n','15 crore','20 crore','16 crore','18 crore','c',1,3),(204,'<p>One year ago Pandit was three times his sister&#39;s age. Next year he will be only twice her age. How old will Pandit be after five years</p>\r\n','12 yrs','20 yrs','15 yrs','13 yrs','a',1,3),(205,'<p>What i&#39;s OS &quot;Windows&quot;</p>\r\n','nothing','wast','super','what is this','c',2,1);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questioncategory`
--

DROP TABLE IF EXISTS `questioncategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questioncategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questioncategory`
--

LOCK TABLES `questioncategory` WRITE;
/*!40000 ALTER TABLE `questioncategory` DISABLE KEYS */;
INSERT INTO `questioncategory` VALUES (1,'Aptitute'),(2,'Logical'),(3,'English'),(4,'Technical');
/*!40000 ALTER TABLE `questioncategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patternId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `minCutOff` int(11) DEFAULT NULL,
  `maxTimer` int(11) DEFAULT NULL,
  `totalQuestion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,1,1,0,10,10),(2,1,3,0,10,10);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LoginId` int(11) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `FatherName` varchar(45) DEFAULT NULL,
  `MotherName` varchar(45) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `ContactId` int(11) DEFAULT NULL,
  `AcademicId` int(11) DEFAULT NULL,
  `BatchId` int(11) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentfk_idx` (`LoginId`),
  KEY `batchfk_idx` (`AcademicId`),
  KEY `contactfk_idx` (`ContactId`),
  KEY `batchfk_idx1` (`BatchId`),
  KEY `departmentfk_idx` (`DepartmentId`),
  CONSTRAINT `academicfk` FOREIGN KEY (`AcademicId`) REFERENCES `academic` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `batchfk` FOREIGN KEY (`BatchId`) REFERENCES `batch` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contactfk` FOREIGN KEY (`ContactId`) REFERENCES `contact` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `departmentfk` FOREIGN KEY (`DepartmentId`) REFERENCES `department` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `studentfk` FOREIGN KEY (`LoginId`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (1,2,'Chitra','Shanmugam','Parameshwari','1993-06-23','female',1,1,3,1);
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermarks`
--

DROP TABLE IF EXISTS `usermarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` int(11) DEFAULT NULL,
  `patternId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `totalQuestions` int(11) DEFAULT NULL,
  `answeredQuestions` int(11) DEFAULT NULL,
  `correctAnswered` int(11) DEFAULT NULL,
  `wrongAnswered` int(11) DEFAULT NULL,
  `scoreObtained` double DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=911 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermarks`
--

LOCK TABLES `usermarks` WRITE;
/*!40000 ALTER TABLE `usermarks` DISABLE KEYS */;
INSERT INTO `usermarks` VALUES (883,2,1,'2014-03-29 00:00:00',20,3,0,3,-0.99,'0'),(884,2,1,'2014-03-29 00:00:00',20,5,3,2,2.34,'0'),(885,2,1,'2014-03-29 00:00:00',20,5,3,2,2.34,'0'),(886,2,1,'2014-03-29 00:00:00',20,5,3,2,2.34,'0'),(887,2,1,'2014-03-29 00:00:00',20,5,3,2,2.34,'0'),(888,2,1,'2014-03-29 00:00:00',20,5,3,2,2.34,'0'),(889,2,1,'2014-03-29 00:00:00',20,5,3,2,2.34,'0'),(890,2,1,'2014-03-29 00:00:00',20,5,3,2,2.34,'0'),(891,2,1,'2014-03-29 00:00:00',20,5,3,2,2.34,'0'),(892,2,1,'2014-03-29 00:00:00',20,0,0,0,0,'0'),(893,2,1,'2014-03-29 00:00:00',20,0,0,0,0,'0'),(894,2,1,'2014-03-29 00:00:00',20,0,0,0,0,'0'),(895,2,1,'2014-03-29 00:00:00',20,0,0,0,0,'0'),(896,2,1,'2014-03-31 00:00:00',20,2,1,1,0.6699999999999999,'0'),(897,2,1,'2014-03-31 00:00:00',20,1,0,1,-0.33,'0'),(898,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(899,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(900,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(901,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(902,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(903,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(904,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(905,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(906,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(907,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(908,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(909,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0'),(910,2,1,'2014-04-01 00:00:00',20,0,0,0,0,'0');
/*!40000 ALTER TABLE `usermarks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-01 18:30:45
