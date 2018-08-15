-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: Trainly
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.25-MariaDB

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
-- Dumping data for table `ADMINISTRATOR`
--

LOCK TABLES `ADMINISTRATOR` WRITE;
/*!40000 ALTER TABLE `ADMINISTRATOR` DISABLE KEYS */;
INSERT INTO `ADMINISTRATOR` VALUES (1,'2000-01-01 05:00:00',1),(2,'2001-01-01 05:00:01',1),(3,'2002-01-01 05:00:02',1),(4,'2017-12-08 17:26:52',1),(10,'2003-01-01 05:00:03',1),(11,'2004-01-01 05:00:04',1),(12,'2005-01-01 05:00:05',1),(21,'2006-01-01 05:00:06',1),(22,'2007-01-01 05:00:07',1),(23,'2008-01-01 05:00:08',1),(24,'2009-01-01 05:00:09',1),(25,'2010-01-01 05:00:10',1),(26,'2011-01-01 05:00:11',1),(27,'2012-01-01 05:00:12',1),(28,'2013-01-01 05:00:13',1),(29,'2014-01-01 05:00:14',1),(30,'2017-01-01 05:00:15',1),(44,'2017-01-01 05:00:15',1),(45,'2017-01-01 05:00:15',1);
/*!40000 ALTER TABLE `ADMINISTRATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ANSWER`
--

LOCK TABLES `ANSWER` WRITE;
/*!40000 ALTER TABLE `ANSWER` DISABLE KEYS */;
INSERT INTO `ANSWER` VALUES (11,35,1,'OK, that\'s two questions, but the aim is to gauge how mature your approach to and knowledge of security are so you can plan an effective strategy. If you\'re just starting out in cloud security, it\'s best to take things a few steps at a time so you don\'t become overwhelmed.'),(11,36,1,'Again, two questions, but you need to evaluate your own knowledge and skill levels at the outset so you can start out confidently and then build incrementally on your successes.'),(11,37,1,' If not, write a plan-even if it\'s rudimentary. Without a clear set of goals, you\'re operating in the dark, and it\'s unlikely that you\'ll get the results your organization needs. Again, buying a security product or solution doesn\'t have to be daunting, but it does require a certain amount of analysis and planning up front.'),(11,38,1,'This may seem obvious, but it\'s easy to overlook people who will ultimately be affected by the product you select-and it\'s a lot easier to get buy-in before you make the purchase than after you\'ve made a decision without them. Gather a list of requests and requirements from all parties involved. You should still make the final decision, but others will feel like they have had a stake in the process and will be more likely to give the technology a real shot post-purchase.That\'s enough questions to start with. As you can see, the process really needs to start at home with an understanding of your company\'s objectives, requirements, existing resources, skill levels, and your overall maturity level with cloud security.'),(12,39,1,'Artificial intelligence (AI) is a popular topic in movies, sci-fi novels-and increasingly, the news. But what exactly is it? We talked with Rob Shaddock, chief technology officer for TE Connectivity, about \'teaching\' intelligence, innovations in AI, and the possibility for human-canine communication. TE Connectivity is a global technology leader, providing connectivity and sensor solutions that are essential in today\'s increasingly connected world.'),(12,40,1,'It\'s about having a machine that can reach conclusions in a similar way to a human. That is, it can take examples and learn from them to improve the accuracy of its future conclusions. A good example of that is learning what a dog looks like from photographs of Labradors, poodles, and pit bulls and then later, when shown a picture of a Chihuahua, being able to identify that as being another breed of dog. The machine can reach a new, accurate, conclusion based on what it has learned in the past.'),(12,41,1,'It\'s a combination of things. The machine is weighing up a collection of possibilities for an answer based on the data it was trained on and previous answers it has given. The machine is also learning so that over time the accuracy of its results improves.'),(12,42,1,'Say we have an AI machine for selecting fruit with bad bits. We would start by showing the machine a large amount of fruit and telling it which ones were good and bad. The machine doesn\'t store all those images and then look at a new piece of fruit and compare it to all those images. Instead the software starts to characterize what kind of things make the image of a piece of fruit good or bad. It could be that it has some discolored regions or some cuts. The software then looks at a new piece of fruit and if it identifies discolored regions anywhere on the fruit it can assign a probability to the fruit being bad.'),(13,1,1,'Database application and the database'),(13,2,1,'DB2'),(13,3,1,'reports'),(13,4,1,'single-user database application'),(13,11,1,'IDMS'),(13,12,1,'multiuser database application'),(13,13,1,'Microsoft\'s Access'),(13,14,1,'metadata'),(13,15,1,'COBOL programs'),(13,16,1,'Oracle Corporation\'s Oracle'),(13,17,1,'INSERT'),(13,18,1,'DELETE FROM CUSTOMER WHERE'),(13,19,1,'limits the row data are returned.'),(13,20,1,'To specify the syntax and semantics of SQL data definition language, To specify the syntax and semantics of SQL manipulation language, To define the data structures'),(13,21,1,'An exact match is not possible in a SELECT statement.'),(13,22,1,'A virtual table that can be accessed via SQL commands'),(13,23,1,'DROP TABLE CUSTOMER;'),(13,24,1,'Data Integrity'),(13,25,1,'DDL'),(13,26,1,'CREATE INDEX ID;'),(13,43,1,'Machine learning takes a bunch of examples, figures out patterns that explain the examples, then uses those patterns to make predictions about new examples.'),(13,44,1,'In practice, the patterns that the machine learns can be very complicated and hard to explain in words. Consider Google Photos, which lets you search your photos to find pictures with dogs. How does Google do that? Well, first we get a bunch of examples of photos labeled \"dog\"(thanks internet!). We also get a bunch of photos labeled \"cat\" and photos with about a million other labels, but I won\'t list them all here :).'),(13,45,1,'Well, actually, these words can mean different things to different people, but essentially, artificial intelligence (AI) is a loose term for computer programs that try to solve the kind of problems that humans find easy, like telling a story about what\'s happening in a picture. One of the cool things that humans also do easily is learn from examples. And that\'s what machine learning programs try to do, too: teach computers to learn from examples.'),(13,46,1,'Practically yesterday, speech recognition struggled to recognize just ten different digits when you read your credit card number over the phone. Speech recognition has made incredible advances in the last five years using sophisticated machine learning, and now you can use it to issue Google searches. And it\'s getting even better, fast.'),(14,47,1,'Decision-Making'),(14,48,1,'J.F. McCloskey'),(14,49,1,'1940'),(14,50,1,'WorldWar2'),(15,51,1,'Discrete variable'),(15,52,1,'Continuous variable'),(15,53,1,'Discrete'),(15,54,1,'2.4'),(16,55,1,'If a material exhibits same mechanical properties regardless of loading direction, it is isotropic, e.g., homogeneous cast materials. Materials lacking this property are anisotropic.'),(16,56,1,'Orthotropic materials are a special class of isotropic materials which can be described by giving their properties in three perpendicular directions e.g. wood; composites.'),(16,57,1,'Rc = BHN/10 = 18, VHN = BHN = 180\rUltimate strength = 3.48 * BHN MPa = 620 MPa.'),(16,58,1,'i)Reliability _ elastic modulus and yield strength.\rii) Strength (for no plastic deformation under static loading) _ yield point.\riii) Strength (overload) _ Toughness and impact resistance.\riv) Wear resistance _ Hardness\rv) Reliability and safety _ Endurance limit and yield.'),(17,59,1,'TRUE'),(17,60,1,'Diesel cycle'),(17,61,1,'very low'),(17,62,1,'specific heat at constant volume'),(18,27,1,'OOPS is abbreviated as Object Oriented Programming system in which programs are considered as a collection of objects. Each object is nothing but an instance of a class.'),(18,28,1,'Following are the concepts of OOPS and are as follows:. 1.Abstraction. 2.Encapsulation. 3. Inheritance. 4. Polymorphism.'),(18,29,1,'A class is simply a representation of a type of object. It is the blueprint/ plan/ template that describe the details of an object.'),(18,30,1,'Object is termed as an instance of a class, and it has its own state, behavior and identity.'),(18,31,1,'To mine and analyze large amounts of data in order to uncover information that can be leveraged for operational improvements and business gains.'),(18,32,1,'A data engineer prepares data for analysis, while a data scientist does the analysis. '),(18,33,1,'Before establishing the team, make sure your company is ready by ensuring that the proper data management frameworks and processes are in place. '),(18,34,1,'TRUE');
/*!40000 ALTER TABLE `ANSWER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COMPLETED_COURSES`
--

LOCK TABLES `COMPLETED_COURSES` WRITE;
/*!40000 ALTER TABLE `COMPLETED_COURSES` DISABLE KEYS */;
INSERT INTO `COMPLETED_COURSES` VALUES (1,9000,'2017-01-01 05:12:00','Good',3),(2,8000,'2017-01-01 05:10:00','Good',3),(3,7000,'2017-01-01 06:00:00','Good',4),(4,6000,'2017-01-01 07:00:00','Good',4),(5,5000,'2017-01-01 08:00:00','Good',2),(6,1000,'2017-01-01 09:00:00','Good',5),(7,1000,'2017-01-01 10:00:00','Good',5),(8,1000,'2017-01-01 05:12:00','Good',5),(9,1000,'2017-01-01 07:00:00','Good',5),(10,1000,'2017-01-01 09:00:00','Good',5);
/*!40000 ALTER TABLE `COMPLETED_COURSES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COMPLETED_MATERIALS`
--

LOCK TABLES `COMPLETED_MATERIALS` WRITE;
/*!40000 ALTER TABLE `COMPLETED_MATERIALS` DISABLE KEYS */;
INSERT INTO `COMPLETED_MATERIALS` VALUES (1,1,'2010-01-01 05:00:00'),(1,11,'2010-01-11 06:00:00'),(1,21,'2010-01-21 06:00:00'),(2,1,'2017-12-09 21:08:41'),(2,12,'2010-01-12 06:00:00'),(2,22,'2010-01-22 06:00:00'),(3,3,'2010-03-03 06:00:00'),(3,13,'2010-01-13 06:00:00'),(3,23,'2010-01-23 06:00:00'),(4,4,'2010-01-04 06:00:00'),(4,14,'2010-01-14 06:00:00'),(4,24,'2010-01-24 06:00:00'),(5,5,'2010-01-05 06:00:00'),(5,15,'2010-01-15 06:00:00'),(5,25,'2010-01-25 06:00:00'),(6,6,'2010-01-06 06:00:00'),(6,16,'2010-01-16 06:00:00'),(6,26,'2010-01-26 06:00:00'),(7,7,'2010-01-07 06:00:00'),(7,17,'2010-01-17 06:00:00'),(7,27,'2010-01-27 06:00:00'),(8,8,'2010-01-08 06:00:00'),(8,18,'2010-01-18 06:00:00'),(8,28,'2010-01-28 06:00:00'),(9,9,'2010-01-09 06:00:00'),(9,19,'2010-01-19 06:00:00'),(9,29,'2010-01-29 06:00:00'),(10,10,'2010-01-10 06:00:00'),(10,20,'2010-01-20 06:00:00'),(10,30,'2010-01-30 06:00:00');
/*!40000 ALTER TABLE `COMPLETED_MATERIALS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COURSE`
--

LOCK TABLES `COURSE` WRITE;
/*!40000 ALTER TABLE `COURSE` DISABLE KEYS */;
INSERT INTO `COURSE` VALUES (1000,'Database Management System','A Database Management System Course',500.00,NULL,'CS'),(2000,'Object Oriented Programming','A Object Oriented Programming Course',100.00,NULL,'IS'),(2100,'Thermodynamics','A Thermodynamics Course',200.00,NULL,'ME'),(3000,'Special Topics in Data Science','A Special Topics in Data Science Course',500.00,NULL,'DS'),(4000,'Cyber Security','A Cyber Security Course',400.00,NULL,'IA'),(5000,'Artificial Intelligence','A Artificial Intelligence Course',500.00,NULL,'GS'),(6000,'Machine Learning','A Machine Learning Course',500.00,NULL,'HI'),(7000,'Operation Research','A Operation Research Course',200.00,NULL,'EM'),(8000,'Statistics and Probability','A Statistics and Probability Course',400.00,NULL,'DA'),(9000,'Introduction to Material Science','A Introduction to Material Science Course',300.00,NULL,'IE');
/*!40000 ALTER TABLE `COURSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COURSE_CREATOR`
--

LOCK TABLES `COURSE_CREATOR` WRITE;
/*!40000 ALTER TABLE `COURSE_CREATOR` DISABLE KEYS */;
INSERT INTO `COURSE_CREATOR` VALUES (1000,13,'2016-12-01 05:12:00'),(1000,20,'2017-12-08 05:12:00'),(2000,18,'2016-12-02 05:12:00'),(2100,18,'2016-12-01 05:12:00'),(3000,11,'2016-12-03 05:12:00'),(4000,12,'2016-12-04 05:12:00'),(5000,13,'2016-12-05 05:12:00'),(6000,14,'2016-12-06 05:12:00'),(7000,15,'2016-12-07 05:12:00'),(8000,16,'2016-12-08 05:12:00'),(9000,17,'2016-12-10 05:12:00');
/*!40000 ALTER TABLE `COURSE_CREATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `DOWNLOADABLE_FILE`
--

LOCK TABLES `DOWNLOADABLE_FILE` WRITE;
/*!40000 ALTER TABLE `DOWNLOADABLE_FILE` DISABLE KEYS */;
INSERT INTO `DOWNLOADABLE_FILE` VALUES (1,'https://course.ccs.neu.edu/cs5200f17/ssl/lectures/lecture_01_intro.pdf','5MB','pdf'),(2,'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-088-introduction-to-c-memory-management-and-c-object-oriented-programming-january-iap-2010/lecture-notes/MIT6_088IAP10_lec01.pdf','6MB','pdf'),(3,'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-0002-introduction-to-computational-thinking-and-data-science-fall-2016/lecture-slides-and-files/MIT6_0002F16_lec1.pdf','7MB','pdf'),(4,'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-897-selected-topics-in-cryptography-spring-2004/lecture-notes/lecture1_2.pdf','8MB','pdf'),(5,'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-034-artificial-intelligence-fall-2010/tutorials/MIT6_034F10_tutor01.pdf','9MB','pdf'),(6,'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-867-machine-learning-fall-2006/lecture-notes/lec1.pdf','10MB','pdf'),(7,'https://ocw.mit.edu/courses/sloan-school-of-management/15-764-the-theory-of-operations-management-spring-2004/lecture-notes/lec2_schoenmeyr.pdf','11MB','pdf'),(8,'https://ocw.mit.edu/courses/mathematics/18-05-introduction-to-probability-and-statistics-spring-2014/readings/MIT18_05S14_Reading1a.pdf','12MB','pdf'),(9,'https://ocw.mit.edu/courses/materials-science-and-engineering/3-11-mechanics-of-materials-fall-1999/modules/MIT3_11F99_elas_1.pdf','13MB','pdf'),(10,'https://ocw.mit.edu/courses/chemistry/5-60-thermodynamics-kinetics-spring-2008/lecture-notes/5_60_lecture1.pdf','14MB','pdf');
/*!40000 ALTER TABLE `DOWNLOADABLE_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ENROLLED_COURSES`
--

LOCK TABLES `ENROLLED_COURSES` WRITE;
/*!40000 ALTER TABLE `ENROLLED_COURSES` DISABLE KEYS */;
INSERT INTO `ENROLLED_COURSES` VALUES (1,1000,'2017-01-03 05:00:15','1111'),(1,5000,'2017-02-03 05:05:15','1910'),(1,6000,'2017-09-26 01:30:00','9604'),(2,1000,'2017-02-03 05:00:15','2222'),(2,2100,'2017-04-03 04:00:15','2000'),(2,5000,'2017-02-03 05:00:15','1915'),(3,1000,'2017-03-03 05:00:15','3333'),(3,5000,'2017-02-03 05:06:15','1911'),(4,1000,'2017-03-03 05:00:15','4444'),(4,5000,'2017-02-03 05:10:15','1912'),(5,2000,'2017-05-03 04:00:15','5555'),(5,5000,'2017-02-03 05:01:15','1940'),(6,1000,'2017-02-04 05:00:15','1000'),(7,1000,'2017-02-04 05:10:15','10001'),(8,1000,'2017-02-05 06:00:15','1034'),(9,1000,'2017-02-10 15:06:15','1579'),(10,1000,'2017-09-13 01:30:00','5030'),(16,6000,'2017-06-03 04:00:15','1616'),(17,7000,'2017-07-03 04:00:15','1717'),(18,8000,'2017-05-03 04:00:15','1818'),(19,9000,'2017-02-03 05:00:15','1919'),(30,1000,'2017-12-07 20:51:22','c54ec2c9e6f3'),(31,1000,'2017-12-07 20:52:04','29483aad33d3');
/*!40000 ALTER TABLE `ENROLLED_COURSES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FACULTY`
--

LOCK TABLES `FACULTY` WRITE;
/*!40000 ALTER TABLE `FACULTY` DISABLE KEYS */;
INSERT INTO `FACULTY` VALUES (1,'Instructor','IEEE','faculty1.com',1),(11,'Instructor','IEEE','faculty2.com',1),(12,'Instructor','IEEE','faculty3.com',1),(13,'Instructor','ACM','faculty4.com',1),(14,'Professor','ACM','faculty5.com',1),(15,'Professor','ACM','faculty6.com',1),(16,'Professor','ACM','faculty7.com',1),(17,'Lecturer','ASCE','faculty8.com',1),(18,'Lecturer','ASCE','faculty9.com',1),(19,'Lecturer','ASCE','faculty10.com',1),(20,'Lecturer','ASCE','faculty11.com',1),(21,'Professor','ASCE','faculty12.com',1),(22,'Professor','ASCE','faculty13.com',1),(23,'Professor','IEEE','faculty14.com',0),(24,'Professor','IEEE','faculty15.com',0),(25,'Professor','IEEE','faculty16.com',0),(26,'Professor','IEEE','faculty17.com',0),(27,'Professor','IEEE','faculty18.com',0);
/*!40000 ALTER TABLE `FACULTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `INTERESTED_COURSES`
--

LOCK TABLES `INTERESTED_COURSES` WRITE;
/*!40000 ALTER TABLE `INTERESTED_COURSES` DISABLE KEYS */;
INSERT INTO `INTERESTED_COURSES` VALUES (1,1000),(1,2000),(1,3000),(2,1000),(2,2100),(2,5000),(3,1000),(3,5000),(3,6000),(4,1000),(5,2000),(6,1000),(6,2000),(7,3000),(7,9000),(8,2100),(9,4000),(10,2100),(10,5000),(16,6000),(17,7000),(18,8000),(19,9000),(20,4000);
/*!40000 ALTER TABLE `INTERESTED_COURSES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `LIKE_QUESTION`
--

LOCK TABLES `LIKE_QUESTION` WRITE;
/*!40000 ALTER TABLE `LIKE_QUESTION` DISABLE KEYS */;
INSERT INTO `LIKE_QUESTION` VALUES (1,1),(1,2),(1,3),(1,4),(1,11),(1,21),(1,31),(1,41),(2,2),(2,12),(2,22),(2,32),(2,42),(3,2),(3,3),(3,13),(3,23),(3,33),(3,43),(4,4),(4,14),(4,24),(4,34),(4,44),(5,3),(5,5),(5,15),(5,25),(5,35),(5,45),(6,3),(6,6),(6,16),(6,26),(6,36),(6,46),(7,1),(7,3),(7,7),(7,17),(7,27),(7,37),(7,47),(8,1),(8,8),(8,18),(8,28),(8,38),(8,48),(9,1),(9,9),(9,19),(9,29),(9,39),(9,49),(10,1),(10,2),(10,10),(10,20),(10,30),(10,40),(10,50);
/*!40000 ALTER TABLE `LIKE_QUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `LINK`
--

LOCK TABLES `LINK` WRITE;
/*!40000 ALTER TABLE `LINK` DISABLE KEYS */;
INSERT INTO `LINK` VALUES (11,'https://www.youtube.com/watch?v=D-k-h0GuFmE&list=PL6hGtHedy2Z4EkgY76QOcueU8lAC4o6c3','DBMS'),(12,'https://www.youtube.com/watch?v=fJW65Wo7IHI&list=PLGLfVvz_LVvS5P7khyR4xDp7T9lCk9PgE','Object Oriented Design'),(13,'https://www.youtube.com/watch?v=C1lhuz6pZC0&list=PLUl4u3cNGP619EG1wp0kT-7rDE_Az5TNd','Data Science'),(14,'https://www.youtube.com/watch?v=GqmQg-cszw4&list=PLUl4u3cNGP62K2DjQLRxDNRi0z2IRWnNh','Cyber security'),(15,'https://www.youtube.com/watch?v=TjZBTDzGeGg&list=PLUl4u3cNGP63gFHB6xb-kVBiQHYe_4hSi','Artificial Intelligence'),(16,'https://www.youtube.com/watch?v=h0e2HAPTGF4','machine learning'),(17,'https://www.youtube.com/watch?v=8gXSpnVRnJE&list=PLDED61F85CB3D4721','operation Research'),(18,'https://www.youtube.com/watch?v=7CYXy9J4Aao','Introduction and Probability Review'),(19,'https://www.youtube.com/watch?v=vPQ9a_xIqRg&list=PLbie7eLK3kydoCjIoxabptHwFGaEYdcBb','material science and engineering'),(20,'https://www.youtube.com/watch?v=kLqduWF6GXE&list=PLF6C6594F42ECEE0D','thermodynamics');
/*!40000 ALTER TABLE `LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `MATERIAL`
--

LOCK TABLES `MATERIAL` WRITE;
/*!40000 ALTER TABLE `MATERIAL` DISABLE KEYS */;
INSERT INTO `MATERIAL` VALUES (1,'D1',1000),(2,'D2',2000),(3,'D3',3000),(4,'D4',4000),(5,'D5',5000),(6,'D6',6000),(7,'D7',7000),(8,'D8',8000),(9,'D9',9000),(10,'D10',2100),(11,'L1',1000),(12,'L2',2000),(13,'L3',3000),(14,'L4',4000),(15,'L5',5000),(16,'L6',6000),(17,'L7',7000),(18,'L8',8000),(19,'L9',9000),(20,'L10',2100),(21,'Q1',1000),(22,'Q2',2000),(23,'Q3',3000),(24,'Q4',4000),(25,'Q5',5000),(26,'Q6',6000),(27,'Q7',7000),(28,'Q8',8000),(29,'Q9',9000),(30,'Q10',2100),(31,'P1',1000),(32,'P2',2000),(33,'P3',3000),(34,'P4',4000),(35,'P5',5000),(36,'P6',6000),(37,'P7',7000),(38,'P8',8000),(39,'P9',9000),(40,'P10',2100),(100,'Q2',1000);
/*!40000 ALTER TABLE `MATERIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PHONE_NUMBER`
--

LOCK TABLES `PHONE_NUMBER` WRITE;
/*!40000 ALTER TABLE `PHONE_NUMBER` DISABLE KEYS */;
INSERT INTO `PHONE_NUMBER` VALUES (1,'810-292-9388'),(1,'856-636-8749'),(2,'907-385-4412'),(3,'513-570-1893'),(4,'419-503-2484'),(5,'773-573-6914'),(6,'408-752-3500'),(7,'605-414-2147'),(8,'410-655-8723'),(9,'215-874-1229'),(10,'631-335-3414'),(11,'310-498-5651'),(11,'440-780-8425'),(12,'956-537-6195'),(13,'602-277-4385'),(14,'931-313-9635'),(15,'414-661-9598'),(16,'313-288-7937'),(17,'815-828-2147'),(18,'610-545-3615'),(19,'408-540-1785'),(20,'972-303-9197'),(21,'518-966-7987'),(21,'732-658-3154'),(22,'715-662-6764'),(23,'913-388-2079'),(24,'410-669-1642'),(25,'212-582-4976'),(26,'936-336-3951'),(27,'614-801-9788'),(28,'505-977-3911'),(29,'201-709-6245'),(30,'732-924-7882');
/*!40000 ALTER TABLE `PHONE_NUMBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PLAYLIST`
--

LOCK TABLES `PLAYLIST` WRITE;
/*!40000 ALTER TABLE `PLAYLIST` DISABLE KEYS */;
INSERT INTO `PLAYLIST` VALUES (1,'PlayList1'),(2,'PlayList2'),(3,'PlayList3'),(4,'PlayList4'),(5,'PlayList5'),(6,'PlayList6'),(7,'PlayList7'),(8,'PlayList8'),(9,'PlayList9'),(10,'PlayList10');
/*!40000 ALTER TABLE `PLAYLIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PLAYLIST_MATERIAL`
--

LOCK TABLES `PLAYLIST_MATERIAL` WRITE;
/*!40000 ALTER TABLE `PLAYLIST_MATERIAL` DISABLE KEYS */;
INSERT INTO `PLAYLIST_MATERIAL` VALUES (1,'Playlist1',1),(1,'Playlist1',11),(1,'Playlist1',21),(1,'Playlist1',31),(2,'Playlist2',2),(2,'Playlist2',12),(2,'Playlist2',22),(2,'Playlist2',32),(3,'Playlist3',3),(3,'Playlist3',13),(3,'Playlist3',23),(3,'Playlist3',33),(4,'Playlist4',4),(4,'Playlist4',14),(4,'Playlist4',24),(4,'Playlist4',34),(5,'Playlist5',5),(5,'Playlist5',15),(5,'Playlist5',25),(5,'Playlist5',35),(6,'Playlist6',6),(6,'Playlist6',16),(6,'Playlist6',26),(6,'Playlist6',36),(7,'Playlist7',7),(7,'Playlist7',17),(7,'Playlist7',27),(7,'Playlist7',37),(8,'Playlist8',8),(8,'Playlist8',18),(8,'Playlist8',28),(8,'Playlist8',38),(9,'Playlist9',9),(9,'Playlist9',19),(9,'Playlist9',29),(9,'Playlist9',39),(10,'Playlist10',10),(10,'Playlist10',20),(10,'Playlist10',30),(10,'Playlist10',40);
/*!40000 ALTER TABLE `PLAYLIST_MATERIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `POST`
--

LOCK TABLES `POST` WRITE;
/*!40000 ALTER TABLE `POST` DISABLE KEYS */;
INSERT INTO `POST` VALUES (31,'This course introduces relational database management systems as a class of software systems and prepares students to be sophisticated users of database management systems...Lectures will focus on developing a conceptual understanding of database design & usage, as well as DBMS implementation.\rHomework will ask students to apply their conceptual knowledge via problems and code implementation.\rTeam Project will allow students to collaboratively complete a database application from start to finish, including design & creation/optimization within a DBMS, as well as a programmatic user-interface.'),(32,'Ever hang your head in shame after your Python program wasn\'t as fast as your friend\'s C program? Ever wish you could use objects without having to use Java? Join us for this fun introduction to C and C++! We will take you through a tour that will start with writing simple C programs, go deep into the caves of C memory manipulation, resurface with an introduction to using C++ classes, dive deeper into advanced C++ class use and the C++ Standard Template Libraries. We\'ll wrap up by teaching you some tricks of the trade that you may need for tech interviews.\r\rWe see this as a \"C/C++ empowerment\" course: we want you to come away understanding\r\rwhy you would want to use C over another language (control over memory, probably for performance reasons),\rwhy you would want to use C++ rather than C (objects), and\rhow to be useful in C and C++.'),(33,'This course  is intended for students with little or no programming experience. It aims to provide students with an understanding of the role computation can play in solving problems and to help students, regardless of their major, feel justifiably confident of their ability to write small programs that allow them to accomplish useful goals. The class uses the Python 3.5 programming language.'),(34,'This course covers a number of advanced \"selected topics\" in the field of cryptography. The first part of the course tackles the foundational question of how to define security of cryptographic protocols in a way that is appropriate for modern computer networks, and how to construct protocols that satisfy these security definitions. For this purpose, the framework of \"universally composable security\" is studied and used. The second part of the course concentrates on the many challenges involved in building secure electronic voting systems, from both theoretical and practical points of view. In the third part, an introduction to cryptographic constructions based on bilinear pairings is given.'),(35,'This course introduces students to the basic knowledge representation, problem solving, and learning methods of artificial intelligence. Upon completion of this course, students should be able to develop intelligent systems by assembling solutions to concrete computational problems; understand the role of knowledge representation, problem solving, and learning in intelligent-system engineering; and appreciate the role of problem solving, vision, and language in understanding human intelligence from a computational perspective.'),(36,'This is an introductory course on machine learning which gives an overview of many concepts, techniques, and algorithms in machine learning, beginning with topics such as classification and linear regression and ending up with more recent topics such as boosting, support vector machines, hidden Markov models, and Bayesian networks. The course will give the student the basic ideas and intuition behind modern machine learning methods as well as a bit more formal understanding of how, why, and when they work. The underlying theme in the course is statistical inference as it provides the foundation for most of the methods covered.'),(37,'It focuses on theoretical work for studying operations planning and control problems. This term\'s special topic, \"Customer-Driven Operations,\" considers how a number of companies have succeeded in focusing their operation systems on the customer. The class reviews the quantitative models and theoretical tools underlying some of the customer-driven operational practices of these cutting-edge companies. Students will read and present research papers on topics such as distribution systems, short life-cycle product management, and forecast evolution models.'),(38,'This course provides an elementary introduction to probability and statistics with applications. Topics include: basic combinatorics, random variables, probability distributions, Bayesian inference, hypothesis testing, confidence intervals, and linear regression.'),(39,'Overview of mechanical properties of ceramics, metals, and polymers, emphasizing the role of processing and microstructure in controlling these properties. Basic topics in mechanics of materials including: continuum stress and strain, truss forces, torsion of a circular shaft and beam bending. Design of engineering structures from a materials point of view.'),(40,'This subject deals primarily with equilibrium properties of macroscopic systems, basic thermodynamics, chemical equilibrium of reactions in gas and solution phase, and rates of chemical reactions');
/*!40000 ALTER TABLE `POST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `QUESTION`
--

LOCK TABLES `QUESTION` WRITE;
/*!40000 ALTER TABLE `QUESTION` DISABLE KEYS */;
INSERT INTO `QUESTION` VALUES (1,1,'The DBMS acts as an interface between what two components of an enterprise-class database system?',1,10),(2,2,'Which of the following products was an early implementation of the relational model developed by E.F. Codd of IBM?',2,10),(3,3,'The following are components of a database except?',3,10),(4,4,'An application where only one user accesses the database at a given time is an example of a(n) what?',4,10),(5,6,' An on-line commercial site such as Amazon.com is an example of a(n) what?',5,10),(6,7,'Which of the following products was the first to implement true relational algebra in a PC DBMS?',6,10),(7,8,'SQL stands for what?',7,10),(8,9,'Because it contains a description of its own structure, a database is considered to be what?',8,10),(9,10,' The following are functions of a DBMS except what?',9,10),(10,1,'Helping people keep track of things is the purpose of a(n) what?',10,10),(11,1,'Which of the following products implemented the CODASYL DBTG model?',11,10),(12,1,' An Enterprise Resource Planning application is an example of a(n) what?',12,10),(13,1,'A DBMS that combines a DBMS and an application generator is what?',13,10),(14,1,'You have run an SQL statement that asked the DBMS to display data in a table named USER_TABLES. The results include columns of data labeled \"TableName,\" \"NumberOfColumns\" and \"PrimaryKey.\" You are looking at what?',14,10),(15,1,'Which of the following is not considered to be a basic element of an enterprise-class database system?',15,10),(16,1,'The DBMS that is most difficult to use is what?',16,10),(17,1,'You can add a row using SQL in a database with which of the following?',17,10),(18,1,'The command to remove rows from a table \'CUSTOMER\' is:',18,10),(19,1,' The SQL WHERE clause:',19,10),(20,1,'Which of the following is the original purpose of SQL?',20,10),(21,1,'The wildcard in a WHERE clause is useful when?',21,10),(22,1,'A view is which of the following?',22,9),(23,1,'The command to eliminate a table from a database is:',23,9),(24,1,'ON UPDATE CASCADE ensures which of the following?',24,9),(25,1,'SQL data definition commands make up a(n) what?',25,9),(26,1,'Which of the following is valid SQL for an Index?',26,9),(27,1,'What is OOPS?',27,9),(28,1,'Write basic concepts of OOPS?',28,9),(29,1,'What is a class?',29,9),(30,1,'What is an object?',30,9),(31,1,'Which of the following best describes the principal goal of data science?',31,9),(32,1,'What is the primary difference between a data scientist and a data engineer?',32,9),(33,1,'A recommended strategy for establishing a data science team is:',33,9),(34,1,'True or false? The number of data science jobs far outnumbers the supply of data scientists.',34,9),(35,1,'Does your company have a security policy, and how experienced is your company in cloud security?',35,9),(36,1,'Does your organization have a dedicated security team? How knowledgeable and experienced are your resources?',36,9),(37,1,'Have you identified specific security objectives and requirements and put them into a plan that\'s both strategic and tactical? ',37,9),(38,1,'Who do you need buy-in from?',38,9),(39,1,'Understanding Artificial Intelligence',39,9),(40,1,'What exactly is artificial intelligence?',40,9),(41,1,'What makes a machine intelligent?',41,9),(42,1,'How do you \"teach\" AI to a machine?',42,9),(43,1,'What exactly is machine learning?',43,9),(44,1,'How does that work in practice, though?',44,9),(45,1,'Is machine learning the same thing as artificial intelligence?',45,9),(46,1,'What\'s one thing computers can\'t do today, but will be able to do soon, thanks to machine learning?',46,9),(47,1,'Operations Research (OR), which is a very powerful tool for what?',47,9),(48,1,'Who joined the term Operations Research?',48,9),(49,1,'The term Operations Research was coined in which year?',49,9),(50,1,'This innovative science of Operations Research was discovered during what?',50,9),(51,1,'The random variable that could take only a finite set of values is called as',51,9),(52,1,'The random variable that could take any value of a given interval is called as',52,9),(53,1,'The possible outcomes of a coin can be termed as',53,9),(54,1,'For a discrete probability distribution, if a random variable, X, takes values of 2 and 3 with probabalities 0.3, 0.6 respectively, then the expected value, E(X), is',54,9),(55,1,'What is the difference between the isotropic and anisotropic materials ?',55,9),(56,1,'What are orthotropic materials ?',56,9),(57,1,'A plain carbon steel has Brinell Hardness Number (BHN) of 180. What are the values of Rc, VHN and ultimate strength ?',57,9),(58,1,'What properties are needed to be considered for application calling for following requirements:',58,9),(59,1,'All the commercial liquid fuels are derived from natural petroleum (or crude oil).',59,9),(60,1,'A cycle consisting of one constant pressure, one constant volume and two isentropic processes is known as',60,9),(61,1,'The efficiency and work ratio of a simple gas turbine cycle are',61,9),(62,1,'The amount of heat required to raise the temperature of the unit mass of gas through one degree at constant volume, is called',62,9);
/*!40000 ALTER TABLE `QUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `QUESTION_RELATE_MATERIALS`
--

LOCK TABLES `QUESTION_RELATE_MATERIALS` WRITE;
/*!40000 ALTER TABLE `QUESTION_RELATE_MATERIALS` DISABLE KEYS */;
INSERT INTO `QUESTION_RELATE_MATERIALS` VALUES (1,1),(1,2),(1,3),(2,11),(3,21),(4,31),(5,1),(5,2),(5,4),(6,11),(7,21),(8,31),(9,1),(10,11),(11,21),(12,31),(13,1),(14,11),(15,21),(16,31),(17,1),(18,11),(19,21),(20,31),(21,1),(22,11),(23,21),(24,31),(25,1),(26,11),(27,2),(28,12),(29,22),(30,32),(31,3),(32,13),(33,23),(34,33),(35,4),(36,14),(37,24),(38,34),(39,5),(40,15),(41,25),(42,35),(43,6),(44,16),(45,26),(46,36),(47,7),(48,17),(49,27),(50,37),(51,8),(52,18),(53,28),(54,38),(55,9),(56,19),(57,29),(58,39),(59,10),(60,20),(61,30),(62,40);
/*!40000 ALTER TABLE `QUESTION_RELATE_MATERIALS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `QUIZ`
--

LOCK TABLES `QUIZ` WRITE;
/*!40000 ALTER TABLE `QUIZ` DISABLE KEYS */;
INSERT INTO `QUIZ` VALUES (21,61),(22,65),(23,70),(24,70),(25,80),(26,82),(27,85),(28,90),(29,92),(30,50),(100,90);
/*!40000 ALTER TABLE `QUIZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `QUIZ_QUESTION`
--

LOCK TABLES `QUIZ_QUESTION` WRITE;
/*!40000 ALTER TABLE `QUIZ_QUESTION` DISABLE KEYS */;
INSERT INTO `QUIZ_QUESTION` VALUES (21,1,'What does SQL stand for?'),(21,2,'Which SQL statement is used to update data in a database?'),(22,3,'Which one of the following are essential features of an object-oriented programming language? (i) Abstraction and encapsulation (ii) Strictly-typedness (iii) Type-safe property coupled with sub-type rule (iv) Polymorphism in the presence of inheritance'),(22,4,'What is the difference between an object and a class?'),(23,5,'Name the technique that uses data on some object to predict values for other object.'),(23,6,'Name the common goal of statistical modelling.'),(24,7,'Why are cyber vulnerabilities unlikely to ever go away?'),(24,8,'The size and complexity of networks grew enormously when:'),(25,9,'What is the term used for describing the judgmental or commonsense part of problem solving?'),(25,10,'Decision support programs are designed to help managers make:'),(26,11,'what is the step in  building a machine learning algorithm?'),(26,12,'What are typical sizes for the training and test sets?'),(27,13,'Event A has a probability of 0.5 and Event B has a probability of 0.4. If A and B are independent events, what is the probability that either A or B (or both) occur(s)?'),(27,14,'You play a game in which you win $10 if a sum of seven results from rolling two balanced dice. You win $5 if you roll doubles. Otherwise, you win nothing. In a single roll of the dice, what is the probability that you will win at least some money?'),(28,15,'What is meant by \'Payoffs\' in Game Theory?'),(28,16,'What is The North West Corner rule?'),(29,17,'How many lattice structures exist?'),(29,18,'What type of bonding makes up ceramic materials?'),(30,19,'What is the difference between heat capacity and specific heat of the material?'),(30,20,'Explain the rule to find specific heat for aqueous solutions.'),(100,21,'What is the DBMS?'),(100,22,'What is DML?'),(100,23,'What is DDL?');
/*!40000 ALTER TABLE `QUIZ_QUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `QUIZ_QUESTION_ANSWER`
--

LOCK TABLES `QUIZ_QUESTION_ANSWER` WRITE;
/*!40000 ALTER TABLE `QUIZ_QUESTION_ANSWER` DISABLE KEYS */;
INSERT INTO `QUIZ_QUESTION_ANSWER` VALUES (21,1,1,'Structured Query Language','Good','correct'),(21,2,2,'UPDATE','Good','correct'),(22,3,3,'Answer (i) and (iv) only','Good','correct'),(22,4,4,'An object is an initialized class variable.','Good','correct'),(23,5,5,'prediction','Good','correct'),(23,6,6,'Inference','Good','correct'),(24,7,7,'They are side effects of the freedom and ease of communicating online.','Good','correct'),(24,8,8,'The number of personal computers greatly increased','Good','correct'),(25,9,9,'Heuristic','Good','correct'),(25,10,10,'business decisions','Good','correct'),(26,11,11,'Evaluating the prediction','Good','correct'),(26,12,12,'\"60% in the training set 40% in the testing set\"','Good','correct'),(27,13,13,'0.6','Wrong, it is 0.7','incorrect'),(27,14,14,'1/5','Wrong, it is 1/3','incorrect'),(28,15,15,'Outcome of a game when different alternatives are adopted by players','Good','correct'),(28,16,16,'Is to find an initial feasible soultion','Good','correct'),(29,17,17,'10','Wrong, it is 7','incorrect'),(29,18,18,'covalent bonds','Good','correct'),(30,19,19,'the heat capacity of material is the amount of heat transformed to raise unit mass of a material 1 degree in temperature.','Good','correct'),(30,20,20,'\"For an aqueous solution of salts the specific heat can be estimated by assuming the specific heat of the solution equal to that of the water alone. for a 15% by weight solution of sodium chloride in water the specific heat would be approximately 0.85.\"','Good','correct'),(100,21,21,'Database Management System','Great','correct'),(100,22,22,'Data Definition Language','Awesome','correct'),(100,23,23,'Data Manipulation Language','Excellent','correct');
/*!40000 ALTER TABLE `QUIZ_QUESTION_ANSWER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SECONDARY_TOPIC`
--

LOCK TABLES `SECONDARY_TOPIC` WRITE;
/*!40000 ALTER TABLE `SECONDARY_TOPIC` DISABLE KEYS */;
INSERT INTO `SECONDARY_TOPIC` VALUES (1000,'DS'),(1000,'IS'),(2000,'IS'),(2100,'ME'),(3000,'DS'),(4000,'IA'),(5000,'GS'),(6000,'HI'),(7000,'EM'),(8000,'DA'),(9000,'IE');
/*!40000 ALTER TABLE `SECONDARY_TOPIC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `TOPIC`
--

LOCK TABLES `TOPIC` WRITE;
/*!40000 ALTER TABLE `TOPIC` DISABLE KEYS */;
INSERT INTO `TOPIC` VALUES ('CS','Computer Science'),('DA','Data Analytics'),('DS','Data Science'),('EM','Engineering Management'),('GS','Game Science'),('HI','Health Informatics'),('IA','Information Assurance'),('IE','Industrial Engineering'),('IS','Information System'),('ME','Mechanical Engineering');
/*!40000 ALTER TABLE `TOPIC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (1,'alisha@slusarski.com','$2a$10$dhK9cQHck.oot7BsZyoIw.xFEDwsYyFraqT79ZOrctNfVL0inoEVi',NULL,'Alisha','Slusarski','3273 State St','Middlesex','usa',8846,1,1),(2,'allene_iturbide@cox.net','pbkdf2$10000$ab06195b503104e6ecb3ad25c70976a8c08ff4cf9c959fa13718453d3458aa853c395e0790f510ec1885ee5a9d1f4623a0f023e7b193d22b4f86116af53e962a$fd5fa936c0f180e9cb09e6d18344e2f29faf0634066a268fb1741727b17e5107e2ecfebd3abfc006f650834a38ddddd3627bfb6f77af151914cad7c84b5bae81',NULL,'Allene','Iturbide','1 Central Ave','Stevens Point','usa',54481,1,0),(3,'chanel.caudy@caudy.org','pbkdf2$10000$9c9e38148c56b6ce730d3585826cdd2b6b8edea1dd744bbcfcd25cd38f114275f70b5e5a84a5ceffab3ec3a1430d48ba778834b905a71bac8d89935b414f1500$b583d8c93268b3f387eb05385fde9e31a2062a8db1f4fd4e0174f6b0a9c9ae1e462e8d39f85a5135f981d3f6368f92c3988185879d5c289f6f3df11fd7140bcb',NULL,'Chanel','Caudy','86 Nw 66th St #8673','Shawnee','usa',66218,1,0),(4,'josephine_darakjy@darakjy.org','pbkdf2$10000$d6ed95d5637f5a198fddd3d8efdc5a13dd7462d5d8700b7442360bfd90b4d5c6f38ed18114e2d66d049cceb10e116165a1f89b262eecacd85299d0c8944e0c4b$8528069bc4628a8f94a7f68c1281f249135ef80576b91660256c8ea8cd54ffff2eee8a1aa9736cbdb9be9696d39b8bb99b3e595b0eab2fd7fafd079fb4ad43c5',NULL,'Josephine','Darakjy','4 B Blue Ridge Blvd','Brighton','usa',48116,1,0),(5,'art@venere.org','pbkdf2$10000$d7abc8ecc48cddc350b5a97367a6305119de2e65be34a3a442e759ce791f9d5a38b565427769cbf2e609fa292c266d8be1a6b0dfda5b6af8051b01a3e96b6134$17f34ec2bc4014b9b064bde8842d72306def128f68e2966079306ebec09ec1f8098e9908bec64a14b6e7e367c8da2f2135ae6cd516185c4b29e50eae5e8ec452',NULL,'Art','Venere','8 W Cerritos Ave #54','Bridgeport','usa',8014,0,0),(6,'lpaprocki@hotmail.com','pbkdf2$10000$c416a61298fbc1edac3931d6af4798215e7ff51ba11c8c1068aa1e6751db92fab671196c6f7ec865a4b584e4f041bf5af02f58baf9e44a0b9b35f5e902cdf998$abbcdda5104158b0e4c0b54bb1857db6fe2095145ffc7bce2205bdb21170919fa2fb09c8030de789e9ad4cd722797a66b0135315e5485bb15b6abeb1977283c3',NULL,'Lenna','Paprocki','639 Main St','Anchorage','usa',99501,0,0),(7,'donette.foller@cox.net','pbkdf2$10000$28670348466582bcb3471faee45b41ab42bd310bd29cc6009e6ddaad5d50724d69acff5aae711ef349b80bc865a346e0792826b46e08a34161fdb86870001cb2$20866b54ed2625efc7fe9f34550aa4d95ebc120282c6d9e6f3abe2964e9d4774eb2b91ba1b52c5c8004c83e620ce8edb07d7f0f0fb58b869436e57ed612793da',NULL,'Donette','Foller','34 Center St','Hamilton','usa',45011,0,0),(8,'simona@morasca.com','pbkdf2$10000$320e66664de9587b96a37285cd26004f4ab542a0f5ee5057412d7bfb3b742c3442d9cad96b27910a45fb1c5f341eee170afb9cf04eaaf1349a681eaa85c70c3f$3b4b74d7c3ccd5d913272c0530eea71040714c846a474519f8efb416c48ee79abd0b1845f820f41db85e5612c72d75e27fd74d44c48cecefb641c0f171f8e708',NULL,'Simona','Morasca','3 Mcauley Dr','Ashland','usa',44805,0,0),(9,'mitsue_tollner@yahoo.com','pbkdf2$10000$10ed20c8fea63dcb627f050b1c6f24e946046a0a311192524448f12b64c4d1feef77c74b424b56c464c5903ab825bc0e55514ac8c500d6fecb36729758f5add7$12e5e4f7604f0998391d3bad948dc54098a66bfe4f5ef009a86098a301aa86988a32599f447828f635d78cf51af89a4c6b590fc8c169dc25f8c9464236611831',NULL,'Mitsue','Tollner','7 Eads St','Chicago','usa',60632,0,0),(10,'leota@hotmail.com','pbkdf2$10000$22e31bce08095f8b3be021e5be4dffac06a1d287b4b23a4e4a2dab2bdd7b00f3cd57155905c2693e5c6dea647d2615f28a8e759a4ebd41b943dfdad42bb0e97b$1845567555c9c84b414a8db29b289caaac4737f224d61019579d73e9346eb68e438f76299e26e2b9e31c983ea6c94b671fb7c8ef5a6432ede2fbaa0d537dbd21',NULL,'Leota','Dilliard','7 W Jackson Blvd','San Jose','usa',95111,1,0),(11,'sage_wieser@cox.net','pbkdf2$10000$c0c5e135e20da64a7b528cd8854bc154b407ea790066fdba18370dc1022fc360f43058c0f2f3a0db8b9861b57015dce2c16e7d987c8c3c02457abc4a5100990c$baa544ad82c024c2f601e0fa6c40d8ff8b04d43780af49f75dc756df35f2212294c4cc3c24a2084144f6500a2eff101e7f9622b4bca406e07b4b73e1f8738f02',NULL,'Sage','Wieser','5 Boston Ave #88','Sioux Falls','usa',57105,1,1),(12,'kris@gmail.com','pbkdf2$10000$6b8e3db96a426a8e82d7ad19f9bf6e20c1d7a826c40f80a3b999140e84cfa2096c519cb05545064b79df26cbb68ef6135fbfda19c32833749a412846677ee983$e0fe04ae2a774cb7c4a00e3e9d7dae55ba606fe04cf9734b1d32e44de9c172550bb0490837bb689a544e0208defea359c138543c1c8d73c438a53f8f04fa1e65',NULL,'Kris','Marrier','228 Runamuck Pl #2808','Baltimore','usa',21224,1,1),(13,'minna_amigon@yahoo.com','pbkdf2$10000$4f009464cb4dc026eb84b4168e609181bd6284c0d75fed300444c72aae3a80d63b06a117becf6556a9cf969df794d89523a7cf34057471c43f8a2f91ece69d9a$e9b1cefe3e101960fea6fb7a5be4cdde40c5c90a60ab19a62ab58e9fc914256b69d8b9dc0ef00cda53a9e7b38ac480853a426c19c5e3e74de665fb64a4714460',NULL,'Minna','Amigon','2371 Jerrold Ave','Kulpsville','usa',19443,0,1),(14,'amaclead@gmail.com','pbkdf2$10000$a9832b707cbeae896c939a375ae63a745990205b61b3e3a786871990a6b3f8999e86762af5cea11e580c710e65d8957d85a7a2197be482b32d0f97f30f4e261c$5cd455348fc4587621389e2a33e350553ea0945637e2431bd6a7e41f68eee176d736d4ad7756e061b31c39aa98260a056480604986c8e001c64a1aa0ab3d47f7',NULL,'Abel','Maclead','37275 St  Rt 17m M','Middle Island','usa',11953,0,1),(15,'kiley.caldarera@aol.com','pbkdf2$10000$498e05ed939f6d2abe742ecfde77d2f4da9510009e1a39038680eb2e4192cc448a7411c5245f1ccd13b120ec158e2a3f2e8623462ca1795a68f77cfd294951db$8d088175d1b1b34f815f6c9f56724637b193db1e6072c5711f997a599079515e28e82f7c2c4eef2b8705eaf60b0c055f17d3db0789f78c2185d89226bbb0de07',NULL,'Kiley','Caldarera','25 E 75th St #69','Los Angeles','usa',90034,0,1),(16,'gruta@cox.net','pbkdf2$10000$6c19d34d957ec42c6be8214e106b865f652e567fa5814476a619b48f61676baeb2aa69dc1c8fd07ce6d4f0e324dcf4f028491a4e43a58dd928ec076fe78f311a$16110890b8e0d68b7bc94a0769c5e21a482830c59b1194054dcf9b1dd8add54ab31ba22a1f6ece0c2f18a7ccb0ebd9326473bf56c08511a687436077eccd78c5',NULL,'Graciela','Ruta','98 Connecticut Ave Nw','Chagrin Falls','usa',44023,0,1),(17,'calbares@gmail.com','pbkdf2$10000$188f0d8e2bd1b4aba6a3802dff1c7aae95434e2d42cb94bcfb370c894b08f88b34b6bd1525733fa262c460fcd1609117615fb15d460ef8658231d8048b19a13e$3f54bb1b07e354193e30138fae6a385fceb4f7a024fe66eabcc176a0d68c0b2d8910ec801a0860a65a3c5498c4f15d7b3916fc88c8f2c34ebe089521e4072ca2',NULL,'Cammy','Albares','56 E Morehead St','Laredo','usa',78045,0,1),(18,'mattie@aol.com','pbkdf2$10000$f4c618772885b9d58d4f2385c65b2de67b27b3021b780215fc35bcd3eaae64b807ae9422af5a45e95026f7cefd39912551604b18420bfde312630cee5e91e32f$2e2e18839b322863d326ec670e3dd5bdfa251b9cb442bff4063903034399d88bbd35d2587c4cbf5b23d2a3bad64e180c0fb5e6b580575caa404fd08bce86c3fc',NULL,'Mattie','Poquette','73 State Road 434 E','Phoenix','usa',85013,0,1),(19,'meaghan@hotmail.com','pbkdf2$10000$635b64f344673151a9fc9fead6e94d83e16a55e772a245ebd89bd8378f1074f11204f7f63c8ab84ad4546d79a20c967f8a63121f0bf5980e462f6040c3040789$fb89be106e2960881969b5f4bec51f08f5507ab6639827fef2473321d79bdaf431c0a5914e692c4aa018b575375b907da9eedf5e835d23d368fd5bea60409295',NULL,'Meaghan','Garufi','69734 E Carrillo St','Mc Minnville','usa',37110,0,1),(20,'gladys.rim@rim.org','$2a$10$dhK9cQHck.oot7BsZyoIw.xFEDwsYyFraqT79ZOrctNfVL0inoEVi',NULL,'Gladys','Rim','322 New Horizon Blvd','Milwaukee','usa',53207,0,1),(21,'yuki_whobrey@aol.com','pbkdf2$10000$7d4a111c460cad0426c3677603da6357596ca9fad785649935e36063c995b3f65fb7aa3719768045942a14f9b6d1a7e9124004d93f1984abcf4fd7f3bde79e62$c1209d6cfbdcbe0c4ce0df3967a4aab850c347ffa1a646c8a5b056e9dafb898572af822e9a526599c527b5d9c13518a2ff8543ac513a7f545d0db9992de50971',NULL,'Yuki','Whobrey','1 State Route 27','Taylor','usa',48180,1,1),(22,'fletcher.flosi@yahoo.com','pbkdf2$10000$5a812fcb594b15232106891dcfe039bfcc0841c204c6382c6df6fbca5107a16d1ecf17e7188d70addfb03ebec0af81df53b4e03e88b7f98c811ae44c085a6f0e$ba0b7b57f5355ff9aff9b78d56b135d7862a3a3169b0eeb575f7d9b644d02b2223664496cf837c067d6e900bbf804db029c0feacd9efe742be2281f7dde4a5eb',NULL,'Fletcher','Flosi','394 Manchester Blvd','Rockford','usa',61109,1,1),(23,'bette_nicka@cox.net','pbkdf2$10000$f1421b8323f7b7023cdce6280c14f3d3533b3f7b4717997615dd6e1fabdea64f69f72038ccb6b97c460028b17d0e928b8baf3b432e857000b49435f5e37695e1$86766a3f0dae1db9e2d98013102a2cd797966ce3129ce92e57d9e1e672957a78b5d000c4bf3bf943581591a9a96199c682446d7bbd562e97877084f58ef72d95',NULL,'Bette','Nicka','6 S 33rd St','Aston','usa',19014,1,0),(24,'vinouye@aol.com','pbkdf2$10000$f1421b8323f7b7023cdce6280c14f3d3533b3f7b4717997615dd6e1fabdea64f69f72038ccb6b97c460028b17d0e928b8baf3b432e857000b49435f5e37695e1$86766a3f0dae1db9e2d98013102a2cd797966ce3129ce92e57d9e1e672957a78b5d000c4bf3bf943581591a9a96199c682446d7bbd562e97877084f58ef72d95',NULL,'Veronika','Inouye','6 Greenleaf Ave','San Jose','usa',95111,1,0),(25,'willard@hotmail.com','pbkdf2$10000$eb3daaa187a19d495f5a74b204b5f4408f010a80b74b67eda2530140ec74cfd32fbd09c99ee842aec96a42fff53ca03c170c0fa9c8443dcdb8dd1ed2811db5fa$095c9f0401a8979b89bef797f19d41b87d960735ea2ce072a5f38b2922baf73384bae318906b66d04c325d1e5d23cdcb5d23eb0142d83e93079ac186275bf48f',NULL,'Willard','Kolmetz','618 W Yakima Ave','Irving','usa',75062,1,0),(26,'mroyster@royster.com','pbkdf2$10000$0d916e224803dea4e149f05c806f8c4b0a45b28289e45df3a97c512e48c28201654228b7d2929ed6cc7f68c5314ec8a8967a75525e0e6ad1525aa3b3d3f45093$62bde212fcd557f1838c0815584ad856f298525f31cbc67b71f8ed448f929a788c766f0bf4070f9df99b88929d9652f3c91f617f657d3e092ff2863c7e2f9576',NULL,'Maryann','Royster','74 S Westgate St','Albany','usa',12204,1,0),(27,'ezekiel@chui.com','pbkdf2$10000$53555066baa46683afe589e15646d3804a46aedcc92c3508da9e953faf1af3318f9eef79af3921c9997d4e203288ec30f63d3df11eb9f64a090634f2b9bcc5dc$8e550daf0b8bbd93646a128630e0bea7865a3c7fdd32f065fda380996ddd3bf7cbf9b3abe54aacc0c94342e934c5e33e3d8d35a3f618ae731c9a6462fb0218fd',NULL,'Ezekiel','Chui','2 Cedar Ave #84','2 Cedar Ave #84','usa',21601,1,0),(28,'wkusko@yahoo.com','pbkdf2$10000$623264dc087f7efb3b359c344ac7a648fca229b99cf6c737d9da631ea9141b0a3463ff680248e321fa410843b2a735a54b9e345dcff40cbf9f2690ec372c0f6f$6f06594175930a37a6140f2f16903754a6668b07086cf89867ced162695b28a94f12f3abdb4295b852a2133d882162bba011ca0060732b94e457a2020ceb33c1',NULL,'Willow','Kusko','90991 Thorburn Ave','90991 Thorburn Ave','usa',10011,1,0),(29,'bfigeroa@aol.com','pbkdf2$10000$f52674478cf07632804f2225b73501f25dd9e828d3d2ecf53255088e198bc3545d0cecec6a0127d47e2b59ebe459a324c7e6ede64dab8c25541ec3821621d5df$aa44f583caec8e4f2fda0450152165d3bf14fc472a3e6d2cb15c1e8ce3dde282664c8ed746cb666fad9b926ed3ed3e39c6ee9e85cd70cf8f119a7deb2ab87be8',NULL,'Bernardo','Figeroa','386 9th Ave N','386 9th Ave N','usa',77301,1,0),(30,'ammie@corrio.com','pbkdf2$10000$6c7ae118b19762b3b11e23c580666b5f54bda2d163499a021e070ac88e3cbe8c9c89c6059f1dc082abe8f922323cd8757291f212fb9681fb2d12d8b9408438e5$a97c450360c097e155c0e276c56b105c442890670287e6710e913680ba487d3634265492a1af3ce80f3131f3cd2b8f38c13cfe60c0720f1c1cefe903b6edf49e',NULL,'Ammie','Corrio','74874 Atlantic Ave','74874 Atlantic Ave','usa',43215,1,0),(31,'kejiezhang666@gmail.com','pbkdf2$10000$8dbac4e911943e614bfb8d818d55af51998d1c1572c82ee573add33ea52035e1ea0c4972cd7ae93600af5e15792952a7c10d9a5fe57dd045110b9b4d0d4f15a5$3a61b6113b65006f3d4d9318b7929272439a0829ce1703d125595f36288fe3032cfb7203367c0e7038e245ca81f1a516a57f9f4adc1957e6fc92a3270882c4cc',NULL,'Kejie','Zhang',NULL,NULL,NULL,NULL,0,0),(32,'123456@gmail.com','pbkdf2$10000$905de6c2f739759fcb69edc0e8ff1af27f5599bc601051a7bcb8b643cbf8c1f4d974c69c0de59f29450691fc68f4a3cd975077796502c593db61328c44d56445$017944b0603603e0d737b29bf6caaa3bb262c23c166ca2d05d76e479a56664a6fa6064f406fc558e2fd71c91fac2728de31541dcb80ff888d703e9e9a0b6143c','null','Jack','Peter','null','null','null',2148,0,0),(33,'1273456@gmail.com','pbkdf2$10000$c12f95e97972e12c30d7970f31db8261c7c158086db910cb326eefcf7208c3ff7f1712655f0d8b383372bc0b84e97ec747cf32da3b167990489eea2082e039d3$53c2d662721daaeea0f57704aa7a1de5c1a341412beb3176428c0f83728a6b1ddedc03fd81d8d758bb2c0796de8387e276d229bc3ad86f180ed62407489e9bae','null','Jack','Peter','null','','',2148,0,0),(34,'12356456@gmail.com','pbkdf2$10000$2be8920341e41d464ffca35e0337f658dfa001e5eb4ee3283188b895d7e7055773ea9421e9f786dc0dc94a0f6c9b0aa356da5509a2970d781de8910847e654f4$2d6372ea951fd09aea2af8bbe7f7ad3a2f901c39465e13952fb872dfe4c128e6771915d9c1ece4aee5c421784957a57853aa6a837e5248e03516b26ef8ae9bd1','null','Jack','Peter','null','null','null',2148,0,0),(35,'1235456456@gmail.com','pbkdf2$10000$1b16cb46487d00bc735743ffb0b026cf0f4a589261724fc79d1358c4d63cab240a87528c74a583537cba0448a2ac4cbd7e044635151e815d6e079a355756e4f4$f55c8b174dc558faab5909e715c31c0cf085bdfa7194f5f5887f762a1a080a3c720c0f423f2080f3ee3ab986ab076394a5dd32545a792a4315e7d0d2e5745828','null','Jack','Peter','null','null','null',2148,0,0),(36,'12456456@gmail.com','pbkdf2$10000$76b6788010646e7e9a88519db3ba8dcef37105a4bb003ca201fea8362f9d595d511b438f1b8ec6315e52c1cb35320b7b5a502028a5ca36f4e4150b68da6ee8eb$b25e34b6aab16f472b3a5ca0f492ab702956b5a9a557b682e5a3396a2fbc84a46a1db0a4a5af16aa0cbc19e41d31709575bfa5a2709e8f2c88bad6e71a8e7df5','null','Jack','Peter','null','null','null',2148,0,0),(37,'124567456@gmail.com','pbkdf2$10000$9acb6af1d3760c871ea5467eb6b2089f8643823682e92d88ca12ab8955024b0cfc703a2f8b1337fc138261ca47ca4174ecedcd0d932b8e2f0256180d859e45cf$b27d34e65b4c6362bf6e3e2ee8b0abf246a420a6ce4d6763e444e4005ee8ede189b9f3e810a145512dfc3803436e06639e86970d08ada51a81d756aa56b2093e','null','Jack','Peter','null','null','null',2148,0,0),(38,'kdkdkkdkd@gmail.com','pbkdf2$10000$3dd430a108d81b3f3af2991798f3d62ff205fde109c44c8077e7bec26c60b7a385fa31cd6b412cc9783dac81879baf198e9e8fe8b79987facab943416cf77efa$eec94568f60e04bbf5f17dbaecb86a66198969bda956af2fed5f3b8a1ca9915471e01025b2ed74b47a6c22d989a19a2fc31394f4f03ccfb6793b7cdb284da765','null','null','null','null','com','null',123,0,0),(39,'123@gmail.com','pbkdf2$10000$f66c3221e9288903444b96a6e353268ca5c16500c4ce58500607a3b14a1553913efc8d39792b8c64e54a76d25439b88d49fe88733dfed6603c0a2002502ac619$284c039307145e98614958d662ac5d538d902cf1814ab1e747eab571ceb1568c99ce8615891c8a8b61a2e62dfe6c1548ca56e8809c500bf135992d86524c6ea2',NULL,'shabbir','lname','street','city','country',1234,0,0),(41,'1234@gmail.com','pbkdf2$10000$75294e4458973c391211282f283be0ed71c5e13c111cb15b8bd714e7581e07ad3e0bf6e4d2f216b41202b3cf27d846ea1e2a96d3f50aaa79430bebcbf4873bac$c578de6548653c383dc6893e5a7f894652ec93fec6203bcea64b6e9e4d42f4fb029ab351ef387d390c26e642a00b27bec5023578d6e06b430131a5baff9e095a',NULL,'shabbir','lname','street','city','country',1234,0,0),(42,'12345@gmail.com','pbkdf2$10000$b111b49c34c537d981b93c027780fa5cd01a5f652d5c4dd51de9d0384d15ac5b8ae1c98721765c435c906ea618cf4340680726d951883013294b3ac8f7230424$2a7524aec2a5d7ae668037c0d80331fc5f8ce7738ab833074814368f7c4dfa069f853b77c9abae90424204ceed7dc07b547db08ad73ca08c038d2b5d78ea04fc',NULL,'shabbir','lname','street','city','country',1234,0,0),(43,'xyz@gmail.com','pbkdf2$10000$ad33210b28b3a1591d1d485c9c693f85325316eca30fc297c50f88b664ebfb2bdcc68477dbad7356000895ff87bb9713a2cfca331563d2764bd88aab2b14cfa3$0aed56020a41b61b2173d7e8da9e4a4124902d26b2d2363d706c8f1f64f53ba3e0f0263fe2d48ad7a5b1e91e2e2bb225e9e70d819cced4c994581e3c1cce49e9',NULL,'shabbir','lname','street','city','country',1234,0,0),(44,'xxx@gmail.com','pbkdf2$10000$595bbc5f10be360d3421541bb0e24b9794fda8f838fb5b5be64a54babbef9e9c67d68973c60cb21add0b703f4f0fb8dbfefaaeffc7f09b43ba1b92a3d2f2a068$1ff14971ba5ebe8fffea456815b0597620ce4f386d7a0b48973ea73553e7f9e9f5107638b5d0f32e4cee70ee4fb807fe3d264747fec8006c9db35ac4da382381',NULL,'shabbir','lname','street','city','country',1234,1,0),(45,'test@gmail.com','pbkdf2$10000$efd9db8c36136734c6686bdf4d57d87131c39291ac468758573cbc5e18c3647be79fb6a642bf332756682e8c70dabcf0d266353f81f5e940e6f17bb8b7ec886e$8d1085d24ca9ba5aa648979eaaa5777d0b8a9f7091acdbaa7dc11f3cf33a90532ab6a01d91bfe80cfb2b32147fbb0654a1d6465ddc247fbf71237c9d3392e19d',NULL,'shabbir','lname','street','city','country',1234,0,0),(46,'johndoe@gmail.com','$2a$10$Of5eXsg6AymT/jM3PATg5eg85eXtQKg7T/NPeE0TchCC9vtUlCOny',NULL,'john','doe','10 somewhere','boston','USA',2111,0,0);
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `VALIDATE`
--

LOCK TABLES `VALIDATE` WRITE;
/*!40000 ALTER TABLE `VALIDATE` DISABLE KEYS */;
INSERT INTO `VALIDATE` VALUES (1,1,'2016-01-01 05:00:15'),(1,11,'2016-01-01 05:00:15'),(1,12,'2016-02-01 05:00:15'),(1,13,'2016-03-01 05:00:15'),(1,14,'2016-04-01 04:00:15'),(1,15,'2016-05-01 04:00:15'),(1,16,'2016-06-01 04:00:15'),(1,17,'2016-07-01 04:00:15'),(1,18,'2016-08-01 04:00:15'),(1,19,'2016-09-01 04:00:15'),(1,20,'2016-01-03 05:00:15'),(1,21,'2017-12-11 14:45:27'),(1,22,'2017-12-08 14:51:51');
/*!40000 ALTER TABLE `VALIDATE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11  9:53:19
