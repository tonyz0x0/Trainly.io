-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: Trainly
-- ------------------------------------------------------
-- Server version	5.7.20


DROP DATABASE IF EXISTS `Trainly`;
CREATE DATABASE `Trainly`;
USE `Trainly`;

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
-- Table structure for table `ADMINISTRATOR`
--

DROP TABLE IF EXISTS `ADMINISTRATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMINISTRATOR` (
  `AdminId` int(11) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `GrantorId` int(11) NOT NULL,
  PRIMARY KEY (`AdminId`),
  CONSTRAINT `ADMINISTRATOR_ADMINID_FK` FOREIGN KEY (`AdminId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ANSWER`
--

DROP TABLE IF EXISTS `ANSWER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ANSWER` (
  `FacultyId` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  `VisibleTag` tinyint(1) NOT NULL,
  `Answer` text NOT NULL,
  PRIMARY KEY (`FacultyId`,`QuestionId`),
  KEY `ANSWER_QUESTIONID_FK_idx` (`QuestionId`),
  CONSTRAINT `ANSWER_FACULTYID_FK` FOREIGN KEY (`FacultyId`) REFERENCES `FACULTY` (`FacultyId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ANSWER_QUESTIONID_FK` FOREIGN KEY (`QuestionId`) REFERENCES `QUESTION` (`QuestionId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `COMPLETED_COURSES`
--

DROP TABLE IF EXISTS `COMPLETED_COURSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPLETED_COURSES` (
  `UserId` int(11) NOT NULL COMMENT 'student user id',
  `CourseId` int(10) NOT NULL COMMENT 'enrolled course id',
  `CompletedDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'date and time of completion',
  `Comment` varchar(255) DEFAULT NULL COMMENT 'comments if any',
  `Rating` int(11) NOT NULL COMMENT 'rating value',
  PRIMARY KEY (`UserId`,`CourseId`) COMMENT 'composite primary key',
  KEY `CompletedCourses_CourseId_FK` (`CourseId`),
  CONSTRAINT `CompletedCourses_CourseId_FK` FOREIGN KEY (`CourseId`) REFERENCES `COURSE` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CompletedCourses_StudentId_FK` FOREIGN KEY (`UserId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `COMPLETED_MATERIALS`
--

DROP TABLE IF EXISTS `COMPLETED_MATERIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPLETED_MATERIALS` (
  `UserId` int(11) NOT NULL,
  `MaterialId` int(11) NOT NULL,
  `CompletedDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserId`,`MaterialId`),
  KEY `COMPLETED_MATERIALS_MATERIALID_FK_idx` (`MaterialId`),
  CONSTRAINT `COMPLETED_MATERIALS_MaterialId_FK` FOREIGN KEY (`MaterialId`) REFERENCES `MATERIAL` (`MaterialId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `COMPLETED_MATERIALS_USERID_FK` FOREIGN KEY (`UserId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `COURSE`
--

DROP TABLE IF EXISTS `COURSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COURSE` (
  `CourseId` int(10) NOT NULL COMMENT 'course id',
  `Name` varchar(45) NOT NULL COMMENT 'course name',
  `Description` varchar(255) DEFAULT NULL COMMENT 'course description',
  `Cost` decimal(8,2) DEFAULT NULL COMMENT 'cost of enrolling for the course',
  `Icon` blob COMMENT 'course icon to be displayed',
  `TopicId` varchar(10) NOT NULL,
  PRIMARY KEY (`CourseId`),
  KEY `COURSE_TOPICID_FK_idx` (`TopicId`),
  CONSTRAINT `COURSE_TOPICID_FK` FOREIGN KEY (`TopicId`) REFERENCES `TOPIC` (`TopicId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `COURSE_CREATOR`
--

DROP TABLE IF EXISTS `COURSE_CREATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COURSE_CREATOR` (
  `CourseId` int(10) NOT NULL,
  `CreatorId` int(11) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CourseId`,`CreatorId`),
  KEY `CourseCreator_CreatorId_FK` (`CreatorId`),
  CONSTRAINT `CourseCreator_CourseId_FK` FOREIGN KEY (`CourseId`) REFERENCES `COURSE` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CourseCreator_CreatorId_FK` FOREIGN KEY (`CreatorId`) REFERENCES `FACULTY` (`FacultyId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DOWNLOADABLE_FILE`
--

DROP TABLE IF EXISTS `DOWNLOADABLE_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOWNLOADABLE_FILE` (
  `MaterialId` int(11) NOT NULL,
  `Path` varchar(1000) DEFAULT NULL,
  `Size` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaterialId`),
  CONSTRAINT `DOWNLOADABLE_MATERIALID_FK` FOREIGN KEY (`MaterialId`) REFERENCES `MATERIAL` (`MaterialId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ENROLLED_COURSES`
--

DROP TABLE IF EXISTS `ENROLLED_COURSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENROLLED_COURSES` (
  `UserId` int(11) NOT NULL COMMENT 'student user id',
  `CourseId` int(10) NOT NULL COMMENT 'enrolled course id',
  `EnrolledDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'enrollment date time',
  `PaymentCode` varchar(255) NOT NULL COMMENT 'payment code from the partner',
  PRIMARY KEY (`UserId`,`CourseId`) COMMENT 'composite primary key',
  KEY `EnrolledCourses_CourseId_FK` (`CourseId`),
  CONSTRAINT `EnrolledCourses_CourseId_FK` FOREIGN KEY (`CourseId`) REFERENCES `COURSE` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `EnrolledCourses_StudentId_FK` FOREIGN KEY (`UserId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FACULTY`
--

DROP TABLE IF EXISTS `FACULTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FACULTY` (
  `FacultyId` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Affiliation` varchar(45) DEFAULT NULL,
  `WorkWebsite` varchar(45) DEFAULT NULL,
  `Validated` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`FacultyId`),
  CONSTRAINT `FACULTY_FACULTYID_FK` FOREIGN KEY (`FacultyId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `INTERESTED_COURSES`
--

DROP TABLE IF EXISTS `INTERESTED_COURSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INTERESTED_COURSES` (
  `UserId` int(11) NOT NULL COMMENT 'student user id',
  `CourseId` int(10) NOT NULL COMMENT 'interested course id',
  PRIMARY KEY (`UserId`,`CourseId`) COMMENT 'composite primary key',
  KEY `InterestedCourses_CourseId_FK` (`CourseId`),
  CONSTRAINT `InterestCourses_UserId_FK` FOREIGN KEY (`UserId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `InterestedCourses_CourseId_FK` FOREIGN KEY (`CourseId`) REFERENCES `COURSE` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LIKE_QUESTION`
--

DROP TABLE IF EXISTS `LIKE_QUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LIKE_QUESTION` (
  `UserId` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  PRIMARY KEY (`UserId`,`QuestionId`),
  KEY `LIKE_QUESTIONID_FK_idx` (`QuestionId`),
  CONSTRAINT `LIKE_QUESTIONID_FK` FOREIGN KEY (`QuestionId`) REFERENCES `QUESTION` (`QuestionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `LIKE_USERID_FK` FOREIGN KEY (`UserId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LINK`
--

DROP TABLE IF EXISTS `LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LINK` (
  `MaterialId` int(11) NOT NULL,
  `URL` varchar(1000) DEFAULT NULL,
  `VideoTag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaterialId`),
  CONSTRAINT `LINK_MATERIALID_FK` FOREIGN KEY (`MaterialId`) REFERENCES `MATERIAL` (`MaterialId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MATERIAL`
--

DROP TABLE IF EXISTS `MATERIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MATERIAL` (
  `MaterialId` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `CourseId` int(10) DEFAULT NULL,
  PRIMARY KEY (`MaterialId`),
  KEY `MATERIAL_COURSEID_FK_idx` (`CourseId`),
  CONSTRAINT `MATERIAL_COURSEID_FK` FOREIGN KEY (`CourseId`) REFERENCES `COURSE` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PHONE_NUMBER`
--

DROP TABLE IF EXISTS `PHONE_NUMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PHONE_NUMBER` (
  `UserId` int(11) NOT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`UserId`,`PhoneNumber`),
  CONSTRAINT `PHONENUMBER_USERID_FK` FOREIGN KEY (`UserId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PLAYLIST`
--

DROP TABLE IF EXISTS `PLAYLIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYLIST` (
  `UserId` int(11) NOT NULL,
  `PlaylistName` varchar(20) NOT NULL,
  PRIMARY KEY (`UserId`,`PlaylistName`),
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `USER` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PLAYLIST_MATERIAL`
--

DROP TABLE IF EXISTS `PLAYLIST_MATERIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYLIST_MATERIAL` (
  `UserId` int(11) NOT NULL,
  `PlaylistName` varchar(20) NOT NULL,
  `MaterialId` int(11) NOT NULL,
  PRIMARY KEY (`UserId`,`PlaylistName`,`MaterialId`),
  KEY `PLAYLIST_MATERIAL_MATERIALID_FK_idx` (`MaterialId`),
  CONSTRAINT `PLAYLIST_MATERIAL_MATERIALID_FK` FOREIGN KEY (`MaterialId`) REFERENCES `MATERIAL` (`MaterialId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PLAYLIST_MATERIAL_PLAYLIST_FK` FOREIGN KEY (`UserId`, `PlaylistName`) REFERENCES `PLAYLIST` (`UserId`, `PlaylistName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `POST`
--

DROP TABLE IF EXISTS `POST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POST` (
  `MaterialId` int(11) NOT NULL,
  `Text` text,
  PRIMARY KEY (`MaterialId`),
  CONSTRAINT `POST_MATERIALID_FK` FOREIGN KEY (`MaterialId`) REFERENCES `MATERIAL` (`MaterialId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QUESTION`
--

DROP TABLE IF EXISTS `QUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTION` (
  `QuestionId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Question` text NOT NULL,
  `Rank` int(11) DEFAULT NULL,
  `NumOfLIke` int(11) DEFAULT NULL,
  PRIMARY KEY (`QuestionId`),
  KEY `QUESTION_USERID_FK_idx` (`UserId`),
  CONSTRAINT `QUESTION_USERID_FK` FOREIGN KEY (`UserId`) REFERENCES `USER` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QUESTION_RELATE_MATERIALS`
--

DROP TABLE IF EXISTS `QUESTION_RELATE_MATERIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTION_RELATE_MATERIALS` (
  `QuestionId` int(11) NOT NULL,
  `MaterialId` int(11) NOT NULL,
  PRIMARY KEY (`QuestionId`,`MaterialId`),
  KEY `RELATE_MATERIALID_FK_idx` (`MaterialId`),
  CONSTRAINT `RELATE_MATERIALID_FK` FOREIGN KEY (`MaterialId`) REFERENCES `MATERIAL` (`MaterialId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RELATE_QUESTIONID_FK` FOREIGN KEY (`QuestionId`) REFERENCES `QUESTION` (`QuestionId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QUIZ`
--

DROP TABLE IF EXISTS `QUIZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUIZ` (
  `MaterialId` int(11) NOT NULL,
  `MinimumPassScore` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaterialId`),
  CONSTRAINT `QUIZ_MATERIALID_FK` FOREIGN KEY (`MaterialId`) REFERENCES `MATERIAL` (`MaterialId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QUIZ_QUESTION`
--

DROP TABLE IF EXISTS `QUIZ_QUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUIZ_QUESTION` (
  `MaterialId` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  `Text` text NOT NULL,
  PRIMARY KEY (`MaterialId`,`QuestionId`),
  CONSTRAINT `QUIZ_QUESTION_MATERIALID_FK` FOREIGN KEY (`MaterialId`) REFERENCES `QUIZ` (`MaterialId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QUIZ_QUESTION_ANSWER`
--

DROP TABLE IF EXISTS `QUIZ_QUESTION_ANSWER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUIZ_QUESTION_ANSWER` (
  `MaterialId` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  `AnswerId` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Feedback` text,
  `Indication` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaterialId`,`QuestionId`,`AnswerId`),
  CONSTRAINT `QUIZ_QUESTION_ANSWER_FK` FOREIGN KEY (`MaterialId`, `QuestionId`) REFERENCES `QUIZ_QUESTION` (`MaterialId`, `QuestionId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SECONDARY_TOPIC`
--

DROP TABLE IF EXISTS `SECONDARY_TOPIC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECONDARY_TOPIC` (
  `CourseId` int(10) NOT NULL,
  `TopicId` varchar(10) NOT NULL,
  PRIMARY KEY (`CourseId`,`TopicId`),
  KEY `SECONDARYTOPIC_TOPICID_FK_idx` (`TopicId`),
  CONSTRAINT `SECONDARYTOPIC_COURSEID_FK` FOREIGN KEY (`CourseId`) REFERENCES `COURSE` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SECONDARYTOPIC_TOPICID_FK` FOREIGN KEY (`TopicId`) REFERENCES `TOPIC` (`TopicId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TOPIC`
--

DROP TABLE IF EXISTS `TOPIC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TOPIC` (
  `TopicId` varchar(10) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(1000) NOT NULL,
  `ProfilePicture` blob,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `PostalCode` int(11) DEFAULT NULL,
  `isAdmin` tinyint(4) DEFAULT '0',
  `isFaculty` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VALIDATE`
--

DROP TABLE IF EXISTS `VALIDATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VALIDATE` (
  `AdminId` int(11) NOT NULL,
  `FacultyId` int(11) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdminId`,`FacultyId`),
  KEY `VALIDATE_FACULTYID_FK` (`FacultyId`),
  CONSTRAINT `VALIDATE_ADMINID_FK` FOREIGN KEY (`AdminId`) REFERENCES `ADMINISTRATOR` (`AdminId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `VALIDATE_FACULTYID_FK` FOREIGN KEY (`FacultyId`) REFERENCES `FACULTY` (`FacultyId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11  8:32:16
