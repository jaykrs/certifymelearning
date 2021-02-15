-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: certifymelearning
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `applicationuser`
--

DROP TABLE IF EXISTS `applicationuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicationuser` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userId` bigint(10) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `userType` varchar(15) NOT NULL,
  `createdOn` date DEFAULT NULL,
  `phoneNumber` varchar(15) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationuser`
--

LOCK TABLES `applicationuser` WRITE;
/*!40000 ALTER TABLE `applicationuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicationuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appuser`
--

DROP TABLE IF EXISTS `appuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuser` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `userType` varchar(20) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuser`
--

LOCK TABLES `appuser` WRITE;
/*!40000 ALTER TABLE `appuser` DISABLE KEYS */;
INSERT INTO `appuser` VALUES (2,'jaykrs@gmail.com','$2a$10$UruaumZR49OsFntg2eBX3.h6U/T1/G70bCJUGcje7ZaWEB/ynYoEW','jayant Kumar',NULL,NULL,NULL,NULL,NULL,'INSTRUCTOR',NULL,NULL,'2021-01-31'),(3,'jaykrs@hotmail.com','$2a$10$.twf99WrRop35dqj8cwVFu.iX1mXUxDrZFfDQ9x8GTqlzuvd5.iP6','jay Kumar',NULL,NULL,NULL,NULL,NULL,'INSTRUCTOR',NULL,NULL,'2021-01-31'),(4,'jaykrs@in.com','$2a$10$JJ4EH5babs.EJiaaOEqZcu3Q7Z8bcDJcHIsRzjrX8in4M0yTgYrrm','Ajay Kumar',NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL,NULL,'2021-01-31');
/*!40000 ALTER TABLE `appuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chapterTitle` varchar(100) NOT NULL,
  `chapterBrief` text,
  `unitId` int(10) NOT NULL,
  `chapterDuration` int(10) NOT NULL,
  `chapterContent` text,
  `chapterType` varchar(10) NOT NULL,
  `chapterResource` varchar(100) DEFAULT NULL,
  `metadata` varchar(100) DEFAULT NULL,
  `chapterOrder` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter`
--

LOCK TABLES `chapter` WRITE;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseTitle` varchar(100) NOT NULL,
  `courseBrief` text,
  `instructorId` bigint(10) NOT NULL,
  `courseFee` bigint(10) NOT NULL,
  `courseFeePremium` bigint(10) DEFAULT NULL,
  `language` varchar(2) NOT NULL,
  `introductoryVideo` varchar(100) DEFAULT NULL,
  `metadata` varchar(100) DEFAULT NULL,
  `courseDuration` int(5) DEFAULT NULL,
  `catagory` varchar(200) NOT NULL,
  `createdOn` date NOT NULL,
  `courseLogo` varchar(100) DEFAULT NULL,
  `deliveryMode` varchar(15) DEFAULT NULL,
  `unitSold` int(10) DEFAULT NULL,
  `instructorName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'JPA INTRO',NULL,2,214,NULL,'en',NULL,NULL,0,'IT','2021-01-31',NULL,NULL,0,'jayant Kumar'),(2,'CMS INTRO',NULL,2,214,NULL,'en',NULL,NULL,0,'IT','2021-01-31',NULL,NULL,0,'jayant Kumar'),(3,'AI INTRO',NULL,2,214,NULL,'en',NULL,NULL,0,'IT','2021-01-31',NULL,NULL,0,'jayant Kumar'),(4,'JAVA FUNDATION',NULL,2,214,NULL,'en',NULL,NULL,0,'IT','2021-01-31',NULL,NULL,0,'jayant Kumar'),(5,'Theory of relativity',NULL,2,214,NULL,'en',NULL,NULL,0,'SCIENCE','2021-01-31',NULL,NULL,0,'jayant Kumar'),(6,'Organic Frameing',NULL,2,214,NULL,'en',NULL,NULL,0,'BIOLOGY','2021-01-31',NULL,NULL,0,'jayant Kumar'),(7,'Nuclear Evaluation',NULL,2,214,NULL,'en',NULL,NULL,0,'PHYSICS','2021-01-31',NULL,NULL,0,'jayant Kumar');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `studentId` int(10) NOT NULL,
  `courseId` int(10) NOT NULL,
  `enrollmentDate` date NOT NULL,
  `completionDate` date DEFAULT NULL,
  `paymentType` varchar(10) DEFAULT NULL COMMENT 'free/std/premium',
  `completionGrade` varchar(10) DEFAULT NULL,
  `completionCertificate` varchar(200) DEFAULT NULL,
  `paymentAmount` int(10) DEFAULT NULL,
  `invoicePath` varchar(100) DEFAULT NULL,
  `paymentStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrollmentId` bigint(10) NOT NULL,
  `ratingScore` int(5) DEFAULT NULL,
  `feedbackText` text,
  `submissionDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userId` bigint(10) NOT NULL,
  `displayName` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `introductionBrief` text,
  `publishedCourseCount` int(5) DEFAULT NULL,
  `averageRating` int(5) DEFAULT NULL,
  `experience` varchar(150) DEFAULT NULL,
  `totalEarning` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learningprogress`
--

DROP TABLE IF EXISTS `learningprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learningprogress` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrollmentId` bigint(10) NOT NULL,
  `chapterId` bigint(10) NOT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learningprogress`
--

LOCK TABLES `learningprogress` WRITE;
/*!40000 ALTER TABLE `learningprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `learningprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrollmentId` bigint(10) NOT NULL,
  `questionQueries` text NOT NULL,
  `answerQueries` text,
  `questionDate` date NOT NULL,
  `answerDate` date DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userId` bigint(10) NOT NULL,
  `enrolledCourse` int(5) DEFAULT NULL,
  `completedCourse` int(5) DEFAULT NULL,
  `displayName` varchar(100) DEFAULT NULL,
  `biography` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `unitTitle` varchar(100) NOT NULL,
  `unitBrief` text,
  `courseId` bigint(10) NOT NULL,
  `metadata` varchar(100) DEFAULT NULL,
  `unitDuration` int(5) DEFAULT NULL,
  `introductoryVideo` varchar(100) DEFAULT NULL,
  `createdOn` date DEFAULT NULL,
  `orderCount` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-15 18:28:54
