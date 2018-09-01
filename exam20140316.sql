-- MySQL dump 10.13  Distrib 5.5.34, for Win64 (x86)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	5.5.34

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
INSERT INTO `article` VALUES (1,2,'20610104305','kjsdis','<p>This is my textarea to be replaced with CKEditor. hey ram</p>\r\n','2014-03-16'),(2,2,'20610104305','haoi','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(3,2,'20610104305','hai how areyou','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(4,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(5,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(6,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(7,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(8,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(9,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(10,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(11,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(12,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(13,2,'20610104305','haey ram','<p>This is my textarea to be replaced with CKEditor.</p>\r\n','2014-03-16'),(14,2,'20610104305','India','<p><strong>India</strong> (<a href=\"http://upload.wikimedia.org/wikipedia/commons/6/67/En-us-India.ogg\"><img alt=\"Listen\" src=\"http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Speakerlink-new.svg/11px-Speakerlink-new.svg.png\" style=\"height:11px; width:11px\" /></a><a href=\"http://en.wikipedia.org/wiki/File:En-us-India.ogg\">i</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English\">/</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Ë</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Éª</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">n</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">d</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">i</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">É</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English\">/</a>), officially the <strong>Republic of India</strong> (<em>Bharat Ganrajya</em>),<a href=\"http://en.wikipedia.org/wiki/India#cite_note-15\">[13]</a><a href=\"http://en.wikipedia.org/wiki/India#cite_note-16\">[c]</a> is a country in <a href=\"http://en.wikipedia.org/wiki/South_Asia\">South Asia</a>. It is the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_and_outlying_territories_by_total_area\">seventh-largest</a> country by area, the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_population\">second-most populous</a> country with <a href=\"http://en.wikipedia.org/wiki/Demographics_of_India\">over 1.2 billion people</a>, and the most populous <a href=\"http://en.wikipedia.org/wiki/Democracy\">democracy</a> in the world. Bounded by the <a href=\"http://en.wikipedia.org/wiki/Indian_Ocean\">Indian Ocean</a> on the south, the <a href=\"http://en.wikipedia.org/wiki/Arabian_Sea\">Arabian Sea</a> on the south-west, and the <a href=\"http://en.wikipedia.org/wiki/Bay_of_Bengal\">Bay of Bengal</a> on the south-east, it shares land borders with <a href=\"http://en.wikipedia.org/wiki/Pakistan\">Pakistan</a> to the west;<a href=\"http://en.wikipedia.org/wiki/India#cite_note-17\">[d]</a> <a href=\"http://en.wikipedia.org/wiki/China\">China</a>, <a href=\"http://en.wikipedia.org/wiki/Nepal\">Nepal</a>, and <a href=\"http://en.wikipedia.org/wiki/Bhutan\">Bhutan</a> to the north-east; and <a href=\"http://en.wikipedia.org/wiki/Burma\">Burma</a> and <a href=\"http://en.wikipedia.org/wiki/Bangladesh\">Bangladesh</a> to the east. In the Indian Ocean, India is in the vicinity of <a href=\"http://en.wikipedia.org/wiki/Sri_Lanka\">Sri Lanka</a> and the <a href=\"http://en.wikipedia.org/wiki/Maldives\">Maldives</a>; in addition, India&#39;s <a href=\"http://en.wikipedia.org/wiki/Andaman_and_Nicobar_Islands\">Andaman and Nicobar Islands</a> share a maritime border with <a href=\"http://en.wikipedia.org/wiki/Thailand\">Thailand</a> and <a href=\"http://en.wikipedia.org/wiki/Indonesia\">Indonesia</a>.</p>\r\n\r\n<p>Home to the ancient <a href=\"http://en.wikipedia.org/wiki/Indus_Valley_Civilisation\">Indus Valley Civilisation</a> and a region of historic trade routes and vast empires, the <a href=\"http://en.wikipedia.org/wiki/Indian_subcontinent\">Indian subcontinent</a> was identified with its commercial and cultural wealth for much of its long history.<a href=\"http://en.wikipedia.org/wiki/India#cite_note-FOOTNOTEStein199816.E2.80.9317-18\">[14]</a> Four world religions&mdash;<a href=\"http://en.wikipedia.org/wiki/Hinduism_in_India\">Hinduism</a>, <a href=\"http://en.wikipedia.org/wiki/History_of_Buddhism_in_India\">Buddhism</a>, <a href=\"http://en.wikipedia.org/wiki/Statistics_of_Jainism\">Jainism</a>, and <a href=\"http://en.wikipedia.org/wiki/Sikhism_in_India\">Sikhism</a>&mdash;originated here, whereas <a href=\"http://en.wikipedia.org/wiki/Judaism\">Judaism</a>, <a href=\"http://en.wikipedia.org/wiki/Parsi\">Zoroastrianism</a>, <a href=\"http://en.wikipedia.org/wiki/Christianity_in_India\">Christianity</a>, and <a href=\"http://en.wikipedia.org/wiki/Islam_in_India\">Islam</a> arrived in the 1st millennium <a href=\"http://en.wikipedia.org/wiki/Common_Era\">CE</a> and also helped shape the region&#39;s <a href=\"http://en.wikipedia.org/wiki/Culture_of_India\">diverse culture</a>. Gradually annexed by and brought under the administration of the <a href=\"http://en.wikipedia.org/wiki/Company_rule_in_India\">British East India Company</a> from the early 18th century and <a href=\"http://en.wikipedia.org/wiki/British_Raj\">administered directly by the United Kingdom</a> from the mid-19th century, India became an independent nation in 1947 after a <a href=\"http://en.wikipedia.org/wiki/Indian_independence_movement\">struggle for independence</a> that was marked by <a href=\"http://en.wikipedia.org/wiki/Non-violent_resistance\">non-violent resistance</a> led by <a href=\"http://en.wikipedia.org/wiki/Mohandas_Karamchand_Gandhi\">Mahatma Gandhi</a>.</p>\r\n\r\n<p>The <a href=\"http://en.wikipedia.org/wiki/Economy_of_India\">Indian economy</a> is the world&#39;s tenth-largest by <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_GDP_%28nominal%29\">nominal GDP</a> and third-largest by <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_GDP_%28PPP%29\">purchasing power parity</a> (PPP).<a href=\"http://en.wikipedia.org/wiki/India#cite_note-19\">[15]</a> Following <a href=\"http://en.wikipedia.org/wiki/Economic_liberalisation_in_India\">market-based economic reforms</a> in 1991, India became one of the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_real_GDP_growth_rate_%28latest_year%29\">fastest-growing major economies</a>; it is considered a <a href=\"http://en.wikipedia.org/wiki/Newly_industrialised_country\">newly industrialised country</a>. However, it continues to face the challenges of <a href=\"http://en.wikipedia.org/wiki/Poverty_in_India\">poverty</a>, <a href=\"http://en.wikipedia.org/wiki/Corruption_in_India\">corruption</a>, <a href=\"http://en.wikipedia.org/wiki/Malnutrition_in_India\">malnutrition</a>, <a href=\"http://en.wikipedia.org/wiki/Healthcare_in_India\">inadequate public healthcare</a>, and <a href=\"http://en.wikipedia.org/wiki/Terrorism_in_India\">terrorism</a>. A <a href=\"http://en.wikipedia.org/wiki/Nuclear_weapons_state\">nuclear weapons state</a> and a <a href=\"http://en.wikipedia.org/wiki/Power_%28international_relations%29#Power_as_status\">regional power</a>, it has the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_number_of_troops\">third-largest standing army</a> in the world and ranks <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_military_expenditures\">eighth in military expenditure</a> among nations. India is a <a href=\"http://en.wikipedia.org/wiki/Federalism\">federal</a> <a href=\"http://en.wikipedia.org/wiki/Constitutional_republic\">constitutional republic</a> governed under a <a href=\"http://en.wikipedia.org/wiki/Parliamentary_system\">parliamentary system</a> consisting of <a href=\"http://en.wikipedia.org/wiki/States_and_territories_of_India\">29 states and 7 union territories</a>. India is a pluralistic, <a href=\"http://en.wikipedia.org/wiki/Languages_of_India\">multilingual</a>, and a multi-ethnic society. It is also home to a diversity of <a href=\"http://en.wikipedia.org/wiki/Wildlife_of_India\">wildlife</a> in a variety of <a href=\"http://en.wikipedia.org/wiki/Protected_areas_of_India\">protected habitats</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://upload.wikimedia.org/wikipedia/en/4/41/Flag_of_India.svg\" style=\"height:267px; width:400px\" /></p>\r\n','2014-03-16'),(15,1,'Harish','Tamilnadu','<p><strong>Tamil Nadu</strong>&nbsp;(<a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English\">/</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Ë</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">t</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">&aelig;</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">m</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Éª</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">l</a>&nbsp;<a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">Ë</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">n</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">ÉË</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">d</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English#Key\">uË</a><a href=\"http://en.wikipedia.org/wiki/Help:IPA_for_English\">/</a>&nbsp;<a href=\"http://en.wikipedia.org/wiki/Wikipedia:Pronunciation_respelling_key\"><em><strong>tam</strong>-il-<strong>nah</strong>-doo</em></a>;&nbsp;<a href=\"http://en.wikipedia.org/wiki/File:Tamil_Nadu.ogg\"><img alt=\"About this sound\" src=\"http://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png\" style=\"height:11px; margin:0px; width:11px\" /></a>&nbsp;<a href=\"http://upload.wikimedia.org/wikipedia/commons/1/17/Tamil_Nadu.ogg\">Tamil pronunciation</a>&nbsp;<small>(<a href=\"http://en.wikipedia.org/wiki/Wikipedia:Media_help\">help</a>&middot;<a href=\"http://en.wikipedia.org/wiki/File:Tamil_Nadu.ogg\">info</a>)</small>; literally&nbsp;<em>The Land of&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_language\">Tamils</a></em>&nbsp;or&nbsp;<em>Tamil Country</em>) is one of the 28<a href=\"http://en.wikipedia.org/wiki/States_and_territories_of_India\">states</a>&nbsp;of&nbsp;<a href=\"http://en.wikipedia.org/wiki/India\">India</a>. Its capital is&nbsp;<a href=\"http://en.wikipedia.org/wiki/Chennai\">Chennai</a>&nbsp;(formerly known as&nbsp;<a href=\"http://en.wikipedia.org/wiki/Madras\">Madras</a>), the largest city. Tamil Nadu is a land most known for its monumental ancient Hindu temples and classical form of dance&nbsp;<a href=\"http://en.wikipedia.org/wiki/Bharata_Natyam\">Bharata Natyam</a>.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-6\">[6]</a>&nbsp;Tamil Nadu<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-7\">[7]</a>&nbsp;lies in the southernmost part of the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Indian_Peninsula\">Indian Peninsula</a>&nbsp;and is bordered by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Union_territory\">union territory</a>&nbsp;of&nbsp;<a href=\"http://en.wikipedia.org/wiki/Puducherry\">Puducherry</a>&nbsp;and the states of&nbsp;<a href=\"http://en.wikipedia.org/wiki/Kerala\">Kerala</a>,&nbsp;<a href=\"http://en.wikipedia.org/wiki/Karnataka\">Karnataka</a>, and&nbsp;<a href=\"http://en.wikipedia.org/wiki/Andhra_Pradesh\">Andhra Pradesh</a>. It is bounded by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Eastern_Ghats\">Eastern Ghats</a>&nbsp;on the north, by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Nilgiri_mountains\">Nilgiri</a>, the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Anamalai_Hills\">Anamalai Hills</a>, and&nbsp;<a href=\"http://en.wikipedia.org/wiki/Kerala\">Kerala</a>&nbsp;on the west, by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Bay_of_Bengal\">Bay of Bengal</a>&nbsp;in the east, by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Gulf_of_Mannar\">Gulf of Mannar</a>&nbsp;and the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Palk_Strait\">Palk Strait</a>&nbsp;on the southeast, and by the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Indian_Ocean\">Indian Ocean</a>&nbsp;on the south.</p>\r\n\r\n<p>Tamil Nadu is the eleventh largest state in India by area and the seventh most populous state in India. The state is ranked 6th among states in India according to the Human Development Index as of 2011.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-in.undp.org-4\">[4]</a>&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTE.27.27The_Hindu.27.2718_May_2008-8\">[8]</a>&nbsp;It is the second largest state economy in India as of 2012.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTEGSDP_at_constant_prices2012-9\">[9]</a>&nbsp;The state has the highest number (10.56 per cent) of business enterprises and stands second in total employment (9.97 per cent) in India,<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTEEnterprise_of_India2012-10\">[10]</a>&nbsp;compared to the population share of about 6 per cent. In the 2013&nbsp;<a href=\"http://en.wikipedia.org/wiki/Raghuram_Rajan\">Raghuram Rajan</a>&nbsp;panel report, Tamil Nadu was ranked as the third most developed state in India based on a &quot;Multidimensional Development Index&quot;.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-11\">[11]</a>&nbsp;In 2013, the state recorded 15,563 fatalities in the 14,504&nbsp;<a href=\"http://en.wikipedia.org/wiki/Road_accidents_in_Tamil_Nadu\">recorded accidents</a>, the highest for any state in India.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-times-12\">[12]</a></p>\r\n\r\n<p>The region has been the home of the&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_people\">Tamil people</a>&nbsp;since at least 1500 BC.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-13\">[13]</a>&nbsp;Its official language is&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_language\">Tamil</a>, which holds a status of being a classical language.&nbsp;<a href=\"http://en.wikipedia.org/wiki/Tamil_language\">Tamil</a>&nbsp;has been in use in inscriptions and literature for over 2500 years. Tamil Nadu is home to many natural resources, classical arts, classical music, classical literature, Hindu temples of&nbsp;<a href=\"http://en.wikipedia.org/wiki/Dravidian_architecture\">Dravidian architecture</a>, hill stations, beach resorts, multi-religious pilgrimage sites, and eight&nbsp;<a href=\"http://en.wikipedia.org/wiki/UNESCO_World_Heritage_Site\">UNESCO World Heritage Sites</a>.<a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTEUNESCO2012-14\">[14]</a><a href=\"http://en.wikipedia.org/wiki/Tamil_Nadu#cite_note-FOOTNOTEPress_Information_Bureau_releases2012-15\">[15]</a></p>\r\n\r\n<p><img alt=\"\" src=\"http://upload.wikimedia.org/wikipedia/commons/3/38/TamilNadu_Collage.jpg\" style=\"height:640px; width:425px\" /></p>\r\n','2014-03-16');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (2,2,'20610104305','Harish','2014-03-15'),(3,2,'20610104305','chitra','2014-03-15'),(4,2,'20610104305','hai hellow','2014-03-15'),(5,2,'20610104305','hai hellow','2014-03-15'),(6,2,'20610104305','hai hellow','2014-03-15'),(7,2,'20610104305','hai hellow','2014-03-15'),(8,2,'20610104305','hai hellow','2014-03-15'),(9,2,'20610104305','hai hellow','2014-03-15'),(10,2,'20610104305','hai hellow','2014-03-15'),(11,2,'20610104305','hai hellow','2014-03-15'),(12,2,'20610104305','hai hellow','2014-03-15'),(13,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(14,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(15,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(16,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(17,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(18,2,'20610104305','hai how are you this is new feed back','2014-03-15'),(19,2,'20610104305','hai how are you this is new feed back','2014-03-15');
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
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Harish','ram','admin'),(2,'20610104305','ram','user');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pattern`
--

LOCK TABLES `pattern` WRITE;
/*!40000 ALTER TABLE `pattern` DISABLE KEYS */;
INSERT INTO `pattern` VALUES (1,'Wipro2010',1,0.33,50,500,'','\0',2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (7,'<p>What is Browser</p>\r\n','IE','DOC','EXCEL','PDF','a',1,1);
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
INSERT INTO `section` VALUES (1,1,1,0,200,NULL),(2,1,2,0,200,NULL);
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
INSERT INTO `userdetail` VALUES (1,2,'Chitra','Shanmugam','Parameshwari','1993-06-23',1,1,3,1);
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-16 22:16:07
