/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.8-MariaDB : Database - ship
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`testdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ship`;

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `result` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `questionId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questionId` (`questionId`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;

/*Data for the table `answers` */

insert  into `answers`(`id`,`description`,`result`,`createdAt`,`updatedAt`,`questionId`) values 
(1,'Big, medium, small cargo ships',1,'2023-03-09 20:37:21','2023-03-09 20:37:24',2),
(2,'red, blue, black cargo ships',2,'2023-03-09 20:37:27','2023-03-09 20:37:29',2),
(3,'I don\'t know',3,'2023-03-09 20:37:50','2023-03-09 20:37:53',2),
(4,'There is only one type',4,'2023-03-09 20:38:27','2023-03-09 20:38:29',2),
(5,'4 ships',1,'2023-03-09 20:39:10','2023-03-09 20:39:13',3),
(6,'5 ships',2,'2023-03-09 20:39:41','2023-03-09 20:39:43',3),
(7,'0 ships',3,'2023-03-09 20:40:12','2023-03-09 20:40:15',3),
(8,'so many ships',4,'2023-03-09 20:40:44','2023-03-09 20:40:46',3),
(9,'It is a ship to load alot.',1,'2023-03-09 03:50:17','2023-03-09 03:50:17',1),
(10,'just now',1,'2023-03-09 20:41:16','2023-03-09 20:41:17',4),
(11,'tomorrow',2,'2023-03-09 20:41:30','2023-03-09 20:41:31',4),
(12,'I don\'t know.',2,'2023-03-09 05:20:00','2023-03-09 05:20:00',1),
(13,'I don\'t know',3,'2023-03-09 20:41:57','2023-03-09 20:41:59',4),
(14,'leaved already',4,'2023-03-09 20:42:31','2023-03-09 20:42:33',4),
(16,'It is a ship to trable',3,'2023-03-09 19:51:03','2023-03-09 19:51:03',1),
(17,'It is a battle ship',4,'2023-03-09 19:55:24','2023-03-09 19:55:24',1),
(18,'nick name',2,'2023-03-09 20:43:36','2023-03-09 20:43:46',53),
(19,'studied name',3,'2023-04-07 20:43:38','2023-03-09 20:43:48',53),
(20,'other',4,'2023-03-09 20:43:40','2023-03-09 20:43:49',53),
(21,'special name',1,'2023-03-10 12:00:22','2023-03-10 12:00:22',53),
(22,'I don\'t know',0,'2023-03-12 19:34:04','2023-03-12 19:34:04',64),
(23,'It is bad job',0,'2023-03-12 19:34:21','2023-03-12 19:34:21',64),
(24,'It\'s ideal job for male.',1,'2023-03-12 19:34:53','2023-03-12 19:34:53',64),
(25,'I want to be it',1,'2023-03-12 19:35:08','2023-03-12 19:35:08',64),
(26,'do you know?',0,'2023-03-12 19:35:20','2023-03-12 19:35:20',64),
(27,'I want to the way.',1,'2023-03-12 19:35:57','2023-03-12 19:35:57',63),
(28,'I want nothing',0,'2023-03-12 19:36:17','2023-03-12 19:36:17',63),
(29,'I don\'t want be in that class.',0,'2023-03-12 19:36:38','2023-03-12 19:36:38',63),
(30,'I don\'t know it',0,'2023-03-12 19:36:47','2023-03-12 19:36:47',63),
(31,'Oh!, it\'s a good chance for me!',1,'2023-03-12 19:37:08','2023-03-12 19:37:08',63),
(32,'I am fine.',1,'2023-03-12 19:37:31','2023-03-12 19:37:31',62),
(33,'Fine thanks, And you?',1,'2023-03-12 19:37:46','2023-03-12 19:37:46',62),
(34,'Kidding me?',0,'2023-03-12 19:37:54','2023-03-12 19:37:54',62),
(35,'Shot down!',0,'2023-03-12 19:38:04','2023-03-12 19:38:04',62),
(36,'Go away!',0,'2023-03-12 19:38:23','2023-03-12 19:38:23',62),
(37,'dogs, cats, fish',0,'2023-03-12 19:39:02','2023-03-12 19:39:02',61),
(38,'only a dog',0,'2023-03-12 19:39:14','2023-03-12 19:39:14',61),
(39,'3 pets, dog, cat, rabbit',1,'2023-03-12 19:39:36','2023-03-12 19:39:36',61),
(40,'I don\'t know.',1,'2023-03-12 19:39:44','2023-03-12 19:39:44',61),
(41,'son, son, son',0,'2023-03-12 19:40:09','2023-03-12 19:40:09',60),
(42,'daugther, son',0,'2023-03-12 19:40:30','2023-03-12 19:40:30',60),
(43,'twin',0,'2023-03-12 19:40:35','2023-03-12 19:40:35',60),
(44,'3 kids',1,'2023-03-12 19:40:43','2023-03-12 19:40:43',60),
(45,'rice',0,'2023-03-12 19:41:15','2023-03-12 19:41:15',59),
(46,'noodle',0,'2023-03-12 19:41:21','2023-03-12 19:41:21',59),
(47,'bread',0,'2023-03-12 19:41:24','2023-03-12 19:41:24',59),
(48,'please give me something',1,'2023-03-12 19:41:46','2023-03-12 19:41:46',59),
(49,'3 years',1,'2023-03-12 19:42:26','2023-03-12 19:42:26',58),
(50,'I can\'t remember',0,'2023-03-12 19:42:41','2023-03-12 19:42:41',58),
(51,'I don\'t know',0,'2023-03-12 19:42:50','2023-03-12 19:42:50',58),
(52,'pardon?',0,'2023-03-12 19:42:56','2023-03-12 19:42:56',58),
(54,'sleeping',0,'2023-03-12 19:44:04','2023-03-12 19:44:04',57),
(55,'studying',1,'2023-03-12 19:44:14','2023-03-12 19:44:14',57),
(56,'joking',0,'2023-03-12 19:44:28','2023-03-12 19:44:28',57),
(57,'eating',0,'2023-03-12 19:44:33','2023-03-12 19:44:33',57),
(59,'working',1,'2023-03-12 19:45:07','2023-03-12 19:45:07',57),
(60,'Canada',0,'2023-03-12 19:46:14','2023-03-12 19:46:14',56),
(61,'USA',0,'2023-03-12 19:46:24','2023-03-12 19:46:24',56),
(62,'Sky',0,'2023-03-12 19:46:34','2023-03-12 19:46:34',56),
(63,'Sea',0,'2023-03-12 19:46:42','2023-03-12 19:46:42',56),
(64,'China',1,'2023-03-12 19:46:52','2023-03-12 19:46:52',56),
(65,'Jenis Fernando',1,'2023-03-12 19:47:33','2023-03-12 19:47:33',55),
(67,'Mickey',0,'2023-03-12 19:47:43','2023-03-12 19:47:43',55),
(68,'Tiger',0,'2023-03-12 19:47:50','2023-03-12 19:47:50',55),
(69,'Dragon',0,'2023-03-12 19:47:56','2023-03-12 19:47:56',55),
(71,'I don\'t know',0,'2023-03-14 01:08:08','2023-03-14 01:08:08',65),
(72,'It is a platform to show my info.',1,'2023-03-14 01:08:30','2023-03-14 01:08:30',65),
(73,'It\'s interface on internet',1,'2023-03-14 01:08:57','2023-03-14 01:08:57',65);

/*Table structure for table `articlecategories` */

DROP TABLE IF EXISTS `articlecategories`;

CREATE TABLE `articlecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `articlecategories` */

insert  into `articlecategories`(`id`,`title`,`description`,`createdAt`,`updatedAt`) values 
(1,'Node.js','About learning Node.js','2023-03-08 01:23:50','2023-03-08 01:23:50'),
(2,'React.js','About learning React','2023-03-08 01:24:01','2023-03-08 01:24:01'),
(3,'Python','About learning Python','2023-03-08 01:24:19','2023-03-08 01:24:19');

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `attach_url` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `recommends` int(11) DEFAULT NULL,
  `oppositions` int(11) DEFAULT NULL,
  `browingcount` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `articleCategoryId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articleCategoryId` (`articleCategoryId`),
  KEY `userId` (`userId`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`articleCategoryId`) REFERENCES `articlecategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

/*Data for the table `articles` */

insert  into `articles`(`id`,`name`,`description`,`contact_number`,`attach_url`,`source`,`recommends`,`oppositions`,`browingcount`,`createdAt`,`updatedAt`,`articleCategoryId`,`userId`) values 
(1,'Introduction to Node.js','Getting started guide to Node.js, the server-side JavaScript runtime environment. Node.js is built on top of the Google Chrome V8 JavaScript engine, and it\'s mainly used to create web servers - but it\'s not limited to just that.','2222','','ARTICLE AUTHORS',454,11,7657,'2023-03-08 01:27:05','2023-03-08 01:27:05',1,1),
(2,'Best Way to Learn Node.js – A Complete Roadmap','Around one decade back (in 2009) when Ryan Dahl (the original developer of NodeJS) released the initial version of NodeJS nobody could have imagined that within a short period Node will gain so much popularity and it will become the top priority of small ','2323','','Difficulty Level',55,22,56,'2023-03-08 01:28:43','2023-03-08 01:28:43',1,2),
(3,'Intro to React','We will build a small game during this tutorial. You might be tempted to skip it because you’re not building games — but give it a chance. The techniques you’ll learn in the tutorial are fundamental to building any React app, and mastering it will give yo','5555','','Tutorial',22,10,23,'2023-03-08 01:30:01','2023-03-08 01:30:01',2,3),
(4,'Free Courses','Meta Front-End Developer Professional Certificate - Launch your career as a front-end developer. Build job-ready skills for an in-demand career and earn a credential from Meta. No degree or prior experience required to get started.','4545','','Paid Courses',65,32,565,'2023-03-08 01:30:59','2023-03-08 01:30:59',2,4),
(5,'How to Learn Python (Step-By-Step) in 2023','Learning Python was extremely difficult for me, but it didn’t have to be.\n\nA little over a decade ago, I was a college graduate with a history degree and few prospects. Then, I became a successful machine learning engineer, data science consultant, and no','776','','Paid Courses',57,2,443,'2023-03-08 01:31:49','2023-03-08 01:31:49',3,5),
(9,'learnpython','Get started learning Python with DataCamp\'s free Intro to Python tutorial. Learn Data Science by completing interactive coding challenges and watching videos by expert instructors. Start Now!\nReady to take the test? Head onto LearnX and get your Python Ce','9989','','learnpython.org',55,21,343,'2023-03-08 12:24:15','2023-03-08 12:24:15',3,6),
(10,'11 Beginner Tips for Learning Python Programming','I believe that the first step in learning any programming language is making sure that you understand how to learn. Learning how to learn is arguably the most critical skill involved in computer programming.\n\nWhy is knowing how to learn so important? The answer is simple: as languages evolve, libraries are created, and tools are upgraded. Knowing how to learn will be essential to keeping up with these changes and becoming a successful programmer.\n\nIn this article, we will offer several learning strategies that will help jump start your journey of becoming a rockstar Python programmer!','5654','','by Krishelle Hardson-Hurley ',454,12,465,'2023-03-08 12:37:47','2023-03-08 12:37:47',2,1),
(60,'How to Learn React — A roadmap from beginner to advanced','You can use online code editors to practice, or you can use Create React App.\n\nI have setup a development environment in JSFiddle and in Codepen.\n\nTo grasp all the fundamentals of React, you can start with the following tutorials:\n\nReact official documentation by React\n\nBeginners guide to React by Kent C. Dodds\n\nFundamentals of React by Samer Buna\n\nBy now, you should have a basic idea of the fundamentals of React. It’s enough to start developing simple web apps in React.','5555','','Srebalaji Thirumalai',343,11,324,'2023-03-10 00:53:04','2023-03-10 00:53:04',2,1),
(68,'Test Article for last','<p>Test</p>','111111','','111111',0,0,0,'2023-03-14 05:21:55','2023-03-14 05:21:55',2,3),
(70,'asdaasdf','<p>asdfasdf</p>','1234123','','asdfasdf',0,0,0,'2023-03-14 05:48:23','2023-03-14 05:48:23',2,3),
(71,'asdfasdf','<p>asdfasdfasdf</p>','12341234','','asdfasfqwefqwefqwef',0,0,0,'2023-03-14 05:50:28','2023-03-14 05:50:28',2,30);

/*Table structure for table `avatars` */

DROP TABLE IF EXISTS `avatars`;

CREATE TABLE `avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `avatars` */

insert  into `avatars`(`id`,`name`,`cost`,`file_url`,`createdAt`,`updatedAt`) values 
(1,'Dev1',50,'1675885426888new_logo.png','2023-03-12 22:35:55','2023-03-12 22:35:55'),
(2,'Dev2',50,'1675885426888new_logo.png','2023-03-12 22:36:03','2023-03-12 22:36:03'),
(3,'Dev3',50,'1675885426888new_logo.png','2023-03-12 22:36:10','2023-03-12 22:36:10'),
(4,'Dev4',50,'1675885426888new_logo.png','2023-03-12 22:36:18','2023-03-12 22:36:18'),
(5,'Dev5',50,'1675885426888new_logo.png','2023-03-12 22:36:25','2023-03-12 22:36:25'),
(6,'Dev6',50,'1675885426888new_logo.png','2023-03-12 22:36:32','2023-03-12 22:36:32'),
(7,'Dev7',50,'1675885426888new_logo.png','2023-03-12 22:36:41','2023-03-12 22:36:41'),
(8,'Dev8',50,'1675885426888new_logo.png','2023-03-12 22:37:01','2023-03-12 22:37:01'),
(9,'Dev9',50,'1675885426888new_logo.png','2023-03-12 22:37:08','2023-03-12 22:37:08'),
(10,'Dev10',50,'1675885426888new_logo.png','2023-03-12 22:37:15','2023-03-12 22:37:15'),
(11,'Dev11',50,'1675885426888new_logo.png','2023-03-12 22:37:23','2023-03-12 22:37:23'),
(12,'Dev12',50,'1675885426888new_logo.png','2023-03-12 22:37:31','2023-03-12 22:37:31'),
(13,'Dev13',50,'1675885426888new_logo.png','2023-03-12 22:37:39','2023-03-12 22:37:39'),
(14,'Dev14',50,'1675885426888new_logo.png','2023-03-12 22:37:46','2023-03-12 22:37:46'),
(15,'Dev15',50,'1675885426888new_logo.png','2023-03-12 22:37:54','2023-03-12 22:37:54'),
(16,'Dev16',50,'1675885426888new_logo.png','2023-03-12 22:38:36','2023-03-12 22:38:36'),
(17,'Me',200,'1675885426888new_logo.png','2023-03-13 06:00:31','2023-03-13 06:00:31'),
(18,'Girl',100,'1675822160858panda.jpg','2023-03-13 08:38:31','2023-03-13 08:38:31'),
(19,'Boy',100,'1675822160858panda.jpg','2023-03-13 08:39:04','2023-03-13 08:39:04'),
(20,'asd',100,'167950947949600000.png','2023-03-22 18:24:39','2023-03-22 18:24:39'),
(21,'asd',100,'167950953486900000.png','2023-03-22 18:25:34','2023-03-22 18:25:34');

/*Table structure for table `browsehistories` */

DROP TABLE IF EXISTS `browsehistories`;

CREATE TABLE `browsehistories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `campusId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `campusId` (`campusId`),
  CONSTRAINT `browsehistories_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `browsehistories_ibfk_2` FOREIGN KEY (`campusId`) REFERENCES `campuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8mb4;

/*Data for the table `browsehistories` */

insert  into `browsehistories`(`id`,`userId`,`campusId`,`createdAt`,`updatedAt`) values 
(597,4,2,'2023-03-14 04:24:37','2023-03-14 04:24:37'),
(598,5,3,'2023-03-14 04:40:09','2023-03-14 04:40:09'),
(599,5,1,'2023-03-14 04:40:14','2023-03-14 04:40:14'),
(600,6,0,'2023-03-14 04:40:19','2023-03-14 04:40:19'),
(601,30,1,'2023-03-14 04:43:32','2023-03-14 04:43:32'),
(602,25,0,'2023-03-14 05:28:37','2023-03-14 05:28:37'),
(603,25,4,'2023-03-14 05:30:44','2023-03-14 05:30:44'),
(604,25,10,'2023-03-14 05:30:49','2023-03-14 05:30:49'),
(605,25,8,'2023-03-14 05:30:54','2023-03-14 05:30:54'),
(606,25,5,'2023-03-14 05:31:03','2023-03-14 05:31:03'),
(607,25,11,'2023-03-14 05:31:10','2023-03-14 05:31:10'),
(608,25,12,'2023-03-14 05:31:15','2023-03-14 05:31:15'),
(609,25,13,'2023-03-14 05:31:23','2023-03-14 05:31:23'),
(610,25,0,'2023-03-14 05:31:32','2023-03-14 05:31:32'),
(611,25,0,'2023-03-14 05:31:38','2023-03-14 05:31:38'),
(612,25,3,'2023-03-14 05:31:45','2023-03-14 05:31:45'),
(613,25,0,'2023-03-14 05:32:05','2023-03-14 05:32:05'),
(614,25,3,'2023-03-14 05:32:11','2023-03-14 05:32:11'),
(615,25,8,'2023-03-14 05:32:15','2023-03-14 05:32:15'),
(616,25,0,'2023-03-14 06:06:49','2023-03-14 06:06:49'),
(617,25,8,'2023-03-14 06:22:15','2023-03-14 06:22:15'),
(618,25,0,'2023-03-14 06:22:22','2023-03-14 06:22:22'),
(619,2,0,'2023-03-14 06:23:07','2023-03-14 06:23:07'),
(620,35,0,'2023-03-14 06:37:07','2023-03-14 06:37:07'),
(621,35,4,'2023-03-14 06:37:12','2023-03-14 06:37:12'),
(622,35,5,'2023-03-14 06:37:19','2023-03-14 06:37:19'),
(623,2,3,'2023-03-14 06:52:54','2023-03-14 06:52:54'),
(624,2,3,'2023-03-14 06:52:59','2023-03-14 06:52:59'),
(625,2,3,'2023-03-14 06:53:04','2023-03-14 06:53:04'),
(626,2,3,'2023-03-14 06:53:15','2023-03-14 06:53:15'),
(627,2,4,'2023-03-14 06:53:21','2023-03-14 06:53:21'),
(628,2,3,'2023-03-14 06:53:27','2023-03-14 06:53:27'),
(629,2,3,'2023-03-14 07:00:14','2023-03-14 07:00:14'),
(630,2,0,'2023-03-14 07:00:20','2023-03-14 07:00:20'),
(631,2,0,'2023-03-14 07:00:30','2023-03-14 07:00:30'),
(632,2,0,'2023-03-14 07:00:36','2023-03-14 07:00:36'),
(633,2,10,'2023-03-14 07:00:41','2023-03-14 07:00:41'),
(634,2,11,'2023-03-14 07:00:47','2023-03-14 07:00:47'),
(635,2,12,'2023-03-14 07:04:44','2023-03-14 07:04:44'),
(636,2,0,'2023-03-14 07:07:28','2023-03-14 07:07:28'),
(637,2,0,'2023-03-14 07:07:34','2023-03-14 07:07:34'),
(638,2,1,'2023-03-14 07:07:40','2023-03-14 07:07:40'),
(639,2,1,'2023-03-14 07:07:46','2023-03-14 07:07:46'),
(640,2,1,'2023-03-14 07:07:51','2023-03-14 07:07:51'),
(641,2,13,'2023-03-14 07:08:47','2023-03-14 07:08:47'),
(642,19,3,'2023-03-14 07:32:32','2023-03-14 07:32:32'),
(645,19,3,'2023-03-14 07:32:55','2023-03-14 07:32:55'),
(646,2,2,'2023-03-14 07:37:17','2023-03-14 07:37:17'),
(647,2,5,'2023-03-14 07:37:23','2023-03-14 07:37:23'),
(648,30,0,'2023-03-14 08:11:06','2023-03-14 08:11:06'),
(649,30,0,'2023-03-14 08:11:11','2023-03-14 08:11:11'),
(650,30,3,'2023-03-14 08:30:24','2023-03-14 08:30:24'),
(651,5,NULL,'2023-03-14 08:31:29','2023-03-14 08:31:29');

/*Table structure for table `campuscategories` */

DROP TABLE IF EXISTS `campuscategories`;

CREATE TABLE `campuscategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `campuscategories` */

insert  into `campuscategories`(`id`,`title`,`description`,`parentId`,`createdAt`,`updatedAt`) values 
(1,'Mobile App','This is mobile app',0,'2023-03-07 15:00:12','2023-03-07 15:07:31'),
(2,'Web','This is web',0,'2023-03-07 15:00:14','2023-03-07 15:07:15'),
(3,'React','This is frontend',2,'2023-03-07 15:06:56','2023-03-07 15:10:04'),
(4,'Flutter','This is android',1,'2023-03-07 15:11:15','2023-03-07 15:11:15'),
(5,'Angular','This is frontend',2,'2023-03-07 15:12:01','2023-03-07 15:12:01'),
(6,'Node.js','This is backend',2,'2023-03-07 15:12:27','2023-03-07 15:12:27'),
(7,'PHP','This is backend',2,'2023-03-07 15:12:51','2023-03-07 15:12:51'),
(8,'React Native','This is android development tool',1,'2023-03-07 15:13:56','2023-03-07 15:13:56'),
(9,'Swift','This is android development tool.',1,'2023-03-07 15:14:10','2023-03-09 10:17:31');

/*Table structure for table `campuses` */

DROP TABLE IF EXISTS `campuses`;

CREATE TABLE `campuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `recommends` int(11) DEFAULT NULL,
  `unrecommends` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `campusCategoryId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `browses` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `campusCategoryId` (`campusCategoryId`),
  CONSTRAINT `campuses_ibfk_1` FOREIGN KEY (`campusCategoryId`) REFERENCES `campuscategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*Data for the table `campuses` */

insert  into `campuses`(`id`,`name`,`description`,`cost`,`recommends`,`unrecommends`,`level`,`createdAt`,`updatedAt`,`campusCategoryId`,`userId`,`browses`) values 
(0,'jQuery','This is jQuery',100,13,1,NULL,'0000-00-00 00:00:00','2023-03-14 04:24:39',3,0,23),
(1,'HTML',' This is HTML',100,71,3,NULL,'2023-03-07 15:17:24','2023-03-14 07:07:41',3,1,53),
(2,'CSS','CSS is the language we use to style an HTML document.\n\nCSS describes how HTML elements should be displayed.\n\nThis tutorial will teach you CSS from basic to advanced.',200,39,6,NULL,'2023-03-07 15:22:11','2023-03-14 07:37:18',5,1,4),
(3,'Javascript','This is javascript',100,11,0,NULL,'2023-03-08 00:45:03','2023-03-14 08:30:25',6,2,2),
(4,'Javascript','This is javascript',100,11,1,NULL,'2023-03-08 00:45:18','2023-03-14 06:53:22',7,2,1),
(5,'Bootstrap','This is bootstrap',200,28,1,NULL,'2023-03-08 00:46:22','2023-03-14 07:37:24',3,2,3),
(8,'Python For Beginners','THis is python',324,7,2,NULL,'2023-03-09 13:29:43','2023-03-14 01:09:57',4,3,4),
(10,'Laravel','This is laravel',233,5,1,NULL,'2023-03-12 09:05:47','2023-03-14 07:00:41',7,2,4),
(11,'WordPress','This is wordpress',100,3,1,NULL,'2023-03-12 09:13:08','2023-03-14 07:00:49',7,3,5),
(12,'Express.js','This is express.js',100,1,1,NULL,'2023-03-12 10:53:43','2023-03-14 07:04:45',6,3,3),
(13,'BlockChain','This is blockchain',300,5,1,NULL,'2023-03-12 10:54:20','2023-03-14 07:08:48',3,3,2);

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `articleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `articleId` (`articleId`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`articleId`) REFERENCES `articles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `comments` */

insert  into `comments`(`id`,`description`,`createdAt`,`updatedAt`,`userId`,`articleId`) values 
(1,'15','2023-03-14 02:30:26','2023-03-14 02:30:26',NULL,NULL);

/*Table structure for table `datacategories` */

DROP TABLE IF EXISTS `datacategories`;

CREATE TABLE `datacategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `datacategories` */

/*Table structure for table `datapurchasehistoies` */

DROP TABLE IF EXISTS `datapurchasehistoies`;

CREATE TABLE `datapurchasehistoies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` varchar(255) DEFAULT NULL,
  `dataname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `dataId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `dataId` (`dataId`),
  CONSTRAINT `datapurchasehistoies_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datapurchasehistoies_ibfk_2` FOREIGN KEY (`dataId`) REFERENCES `datas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `datapurchasehistoies` */

/*Table structure for table `datapurchasehistories` */

DROP TABLE IF EXISTS `datapurchasehistories`;

CREATE TABLE `datapurchasehistories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `dataId` int(11) DEFAULT NULL,
  `dataname` varchar(255) DEFAULT NULL,
  `voterId` int(11) DEFAULT NULL,
  `votedate` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `dataId` (`dataId`),
  CONSTRAINT `datapurchasehistories_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4;

/*Data for the table `datapurchasehistories` */

insert  into `datapurchasehistories`(`id`,`categoryId`,`userId`,`username`,`dataId`,`dataname`,`voterId`,`votedate`,`createdAt`,`updatedAt`) values 
(61,1,23,'aa',2,'1234123',2,'2023-03-13','2023-03-13 15:57:37','2023-03-13 15:57:37'),
(63,1,23,'Laura',3,'',23,'2023-03-13','2023-03-13 17:12:21','2023-03-13 17:12:21'),
(64,1,35,'aaaaaa',1,'1',23,NULL,'2023-03-13 18:04:05','2023-03-13 18:04:05'),
(65,1,35,'aaaaaa',1,'1',2,NULL,'2023-03-13 18:06:14','2023-03-13 18:06:14'),
(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-03-13 18:50:20','2023-03-13 18:50:20'),
(67,1,23,'Laura',5,'sadf',3,NULL,'2023-03-13 18:50:38','2023-03-13 18:50:38'),
(68,1,23,'Laura',3,'1234123',2,NULL,'2023-03-13 20:01:22','2023-03-13 20:01:22'),
(69,4,23,'Laura',1,'afrq',NULL,NULL,'2023-03-14 01:27:56','2023-03-14 01:27:56'),
(70,4,23,'Laura',2,'1234',NULL,NULL,'2023-03-14 01:28:13','2023-03-14 01:28:13'),
(71,1,23,'Laura',2,'',23,NULL,'2023-03-14 01:43:50','2023-03-14 01:43:50'),
(72,1,23,'Laura',2,'',23,NULL,'2023-03-14 01:44:08','2023-03-14 01:44:08'),
(73,1,23,'Laura',2,'',23,NULL,'2023-03-14 01:44:18','2023-03-14 01:44:18'),
(74,1,23,'Laura',2,'',23,NULL,'2023-03-14 01:44:22','2023-03-14 01:44:22'),
(75,1,23,'Laura',2,'',23,NULL,'2023-03-14 01:44:24','2023-03-14 01:44:24'),
(76,1,23,'Laura',2,'',23,NULL,'2023-03-14 01:44:25','2023-03-14 01:44:25'),
(77,1,23,'Laura',2,'',23,NULL,'2023-03-14 01:53:34','2023-03-14 01:53:34'),
(78,1,23,'Laura',3,'',23,NULL,'2023-03-14 01:53:35','2023-03-14 01:53:35'),
(79,1,23,'Laura',3,'',23,NULL,'2023-03-14 01:55:29','2023-03-14 01:55:29'),
(80,1,23,'Laura',3,'',23,NULL,'2023-03-14 01:55:30','2023-03-14 01:55:30'),
(81,1,23,'Laura',3,'',23,NULL,'2023-03-14 01:55:42','2023-03-14 01:55:42'),
(82,1,23,'Laura',3,'',23,NULL,'2023-03-14 01:55:46','2023-03-14 01:55:46'),
(83,1,23,'Laura',3,'',23,NULL,'2023-03-14 01:56:08','2023-03-14 01:56:08'),
(84,2,23,'Laura',1,'141234',NULL,NULL,'2023-03-14 01:58:59','2023-03-14 01:58:59'),
(85,4,23,'Laura',2,'1234',NULL,NULL,'2023-03-14 02:09:20','2023-03-14 02:09:20');

/*Table structure for table `datas` */

DROP TABLE IF EXISTS `datas`;

CREATE TABLE `datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `runner` varchar(255) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `load_weight` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `current_height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `full_load` int(11) DEFAULT NULL,
  `engine` varchar(255) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `factory` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `licence` varchar(255) DEFAULT NULL,
  `visit` int(11) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `datacol` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `dataCategoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dataCategoryId` (`dataCategoryId`),
  CONSTRAINT `datas_ibfk_1` FOREIGN KEY (`dataCategoryId`) REFERENCES `datacategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

/*Data for the table `datas` */

insert  into `datas`(`id`,`name`,`file_url`,`data_type`,`amount`,`unit`,`port`,`date`,`price`,`from`,`to`,`owner`,`runner`,`total_weight`,`load_weight`,`weight`,`current_height`,`width`,`length`,`full_load`,`engine`,`created`,`factory`,`location`,`status`,`licence`,`visit`,`limit`,`datacol`,`createdAt`,`updatedAt`,`dataCategoryId`) values 
(24,'Mariana','C:\\fakepath\\1678239515500AlbumArt_{B5020207-474E-4720-8A7A-DC17588FA300}_Large.jpg','ship4',0,0,'Paris','2023-03-02',100,'','','Miller','Miller',2500,1000,1500,50,50,150,3000,'Japanese','2023-03-02','London Ship Enterprise','Paris','Good',NULL,NULL,NULL,11,'2023-03-10 08:20:44','2023-03-10 08:20:44',NULL),
(25,NULL,NULL,NULL,NULL,NULL,'',NULL,0,NULL,NULL,'','',0,0,0,0,0,0,0,'','0000-00-00','','','',NULL,NULL,NULL,NULL,'2023-03-10 20:03:36','2023-03-10 20:03:36',NULL),
(26,NULL,NULL,NULL,NULL,NULL,'',NULL,0,NULL,NULL,'','',0,0,0,0,0,0,0,'','0000-00-00','','','',NULL,NULL,NULL,NULL,'2023-03-10 20:04:44','2023-03-10 20:04:44',NULL);

/*Table structure for table `degrees` */

DROP TABLE IF EXISTS `degrees`;

CREATE TABLE `degrees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `maxdegree` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `degrees` */

insert  into `degrees`(`id`,`name`,`maxdegree`,`createdAt`,`updatedAt`) values 
(1,'Caption','5','2023-03-07 19:29:58','2023-03-07 19:29:59'),
(2,'Engineer Manager','3','2023-03-07 19:30:16','2023-03-07 19:30:17'),
(3,'Vice-caption','3','2023-03-07 19:47:24','2023-03-07 19:47:26'),
(4,'Bosun','3','2023-03-07 19:47:27','2023-03-07 19:47:29'),
(5,'Vice-E.manager','4','2023-03-07 19:47:31','2023-03-07 19:47:33'),
(6,'Sailor','3','2023-03-07 19:47:35','2023-03-07 19:47:37'),
(7,'Communicator','4','2023-03-07 19:47:38','2023-03-07 19:47:40'),
(8,'Bosun member','3','2023-03-07 19:47:42','2023-03-07 19:47:43'),
(9,'Engineer','4','2023-03-07 19:47:45','2023-03-07 19:47:47'),
(10,'Electrician','4','2023-03-07 19:47:50','2023-03-07 19:47:52'),
(11,'2nd Engineer','4','2023-03-07 19:47:54','2023-03-07 19:47:56');

/*Table structure for table `gooddatas` */

DROP TABLE IF EXISTS `gooddatas`;

CREATE TABLE `gooddatas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `tech_prop` int(11) DEFAULT NULL,
  `usage` varchar(255) DEFAULT NULL,
  `voterId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `gooddatas` */

insert  into `gooddatas`(`id`,`name`,`image_url`,`amount`,`tech_prop`,`usage`,`voterId`,`createdAt`,`updatedAt`) values 
(1,'124','1678095469664avt.png','qwer',124,'1234',23,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'1234','1678095469664avt.png','1234',0,'1234',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,'afrq','1678095469664avt.png',NULL,NULL,NULL,NULL,'2023-03-14 01:27:45','2023-03-14 01:27:45');

/*Table structure for table `loaddatas` */

DROP TABLE IF EXISTS `loaddatas`;

CREATE TABLE `loaddatas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `plan_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `voterId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `loaddatas` */

insert  into `loaddatas`(`id`,`name`,`amount`,`from`,`to`,`plan_date`,`status`,`voterId`,`createdAt`,`updatedAt`) values 
(1,'134',1324,'143','1234','2023-03-11','134',NULL,'2023-03-11 04:03:33','2023-03-11 04:03:41'),
(2,'1234',1234,'1234','1234','2023-03-11','1234',NULL,'2023-03-11 04:03:38','2023-03-11 04:03:44'),
(3,'141234',NULL,NULL,NULL,NULL,'',NULL,'2023-03-12 09:12:58','2023-03-12 09:12:58');

/*Table structure for table `medias` */

DROP TABLE IF EXISTS `medias`;

CREATE TABLE `medias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;

/*Data for the table `medias` */

insert  into `medias`(`id`,`title`,`description`,`file_url`,`createdAt`,`updatedAt`) values 
(1,'Girl','This is girl','1678255275487Untitled.jpg','2023-03-08 06:01:15','2023-03-08 06:01:15'),
(2,'Boy','This is boy','1678255350124new_logo.png','2023-03-08 06:02:30','2023-03-08 06:02:30'),
(12,'game','s','1678274979961moster.jpg','2023-03-08 11:29:39','2023-03-08 11:29:39'),
(13,'game','aaaaaaaaa','1678280907588images.jpg','2023-03-08 13:08:27','2023-03-08 13:08:27'),
(17,'test1','test1','1678581245442Reactjs.jpg','2023-03-12 00:34:05','2023-03-12 00:34:05'),
(18,'test2','test12','1678581255275healthcare(angularjs).png','2023-03-12 00:34:15','2023-03-12 00:34:15'),
(19,'test23','test123','1678581262961food delivery.jpg','2023-03-12 00:34:22','2023-03-12 00:34:22'),
(20,'Python For Beginners','5555','1678598037568images.jpeg','2023-03-12 05:13:57','2023-03-12 05:13:57'),
(21,'ship','','16786381738574T108509790_Avatar.jpg','2023-03-12 16:22:53','2023-03-12 16:22:53');

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

/*Data for the table `notifications` */

insert  into `notifications`(`id`,`date`,`description`,`type`,`createdAt`,`updatedAt`) values 
(1,'2023-03-08','Chinese ship will come back tomorrow!','notification1','2023-03-08 03:08:15','2023-03-09 03:06:10'),
(2,'2023-03-08','New grade is added!','notification2','2023-03-08 03:08:59','2023-03-09 12:27:20'),
(3,'2023-03-08','New course is added!','','2023-03-08 04:26:24','2023-03-09 03:04:28'),
(4,'2023-03-08','New Comic is added!','notification1','2023-03-08 04:27:02','2023-03-09 03:04:05'),
(5,'2023-03-08','Price of some productions are decreased!','notification2','2023-03-08 04:50:45','2023-03-09 09:20:28'),
(6,'2023-03-08','New Path is opened!','notification2','2023-03-08 04:50:50','2023-03-09 03:03:14'),
(7,'2023-03-08','New applications are added!','notification2','2023-03-08 04:50:55','2023-03-09 03:02:44'),
(11,'2023-03-08','New books are added!','notification2','2023-03-08 05:52:44','2023-03-09 03:02:10'),
(12,'2023-03-08','A new production is added!','notification1','2023-03-08 05:52:50','2023-03-09 03:01:32'),
(13,'2023-03-08','I will show my notification.','notification2','2023-03-08 05:52:58','2023-03-08 12:00:03'),
(14,'2023-03-08','this is my last notification.','notification1','2023-03-08 05:53:02','2023-03-09 16:25:55'),
(15,'2023-03-09','New games are added!','notification2','2023-03-09 03:06:42','2023-03-09 03:06:54'),
(20,'2023-03-09','New ship is built!','notification1','2023-03-09 12:21:57','2023-03-09 12:21:57'),
(23,'2023-03-10','New Campus is Added!','notification2','2023-03-09 16:22:54','2023-03-09 16:23:28');

/*Table structure for table `passedtests` */

DROP TABLE IF EXISTS `passedtests`;

CREATE TABLE `passedtests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `matched` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `passedtests_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `passedtests` */

insert  into `passedtests`(`id`,`level`,`total`,`matched`,`status`,`createdAt`,`updatedAt`,`userId`) values 
(7,'Caption2',4,1,'Unpassed','2023-03-13 05:22:46','2023-03-13 05:22:46',2),
(8,'Caption1',4,0,'Unpassed','2023-03-13 11:49:52','2023-03-13 11:49:52',2),
(9,'Caption1',4,0,'Unpassed','2023-03-13 11:50:38','2023-03-13 11:50:38',2),
(10,'Caption1',4,0,'Unpassed','2023-03-13 11:51:05','2023-03-13 11:51:05',2),
(11,'Caption1',4,0,'Unpassed','2023-03-13 11:55:13','2023-03-13 11:55:13',2),
(12,'Engineer Manager1',3,2,'Unpassed','2023-03-13 19:08:45','2023-03-13 19:08:45',19),
(22,'Engineer Manager2',3,1,'Unpassed','2023-03-14 01:09:47','2023-03-14 01:09:47',19),
(23,'Vice-caption2',0,0,'Unpassed','2023-03-14 01:35:15','2023-03-14 01:35:15',19),
(24,'Engineer Manager2',3,2,'Unpassed','2023-03-14 03:50:58','2023-03-14 03:50:58',30);

/*Table structure for table `productdatas` */

DROP TABLE IF EXISTS `productdatas`;

CREATE TABLE `productdatas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `voterId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `productdatas` */

insert  into `productdatas`(`id`,`name`,`image_url`,`amount`,`price`,`number`,`voterId`,`createdAt`,`updatedAt`) values 
(1,'adfadf','1678095469664avt.png','asdfsa',0,'adsfas',NULL,'2023-03-11 03:55:46','0000-00-00 00:00:00'),
(2,'qrewr','1678095469664avt.png','qwer',0,'qewr',NULL,'2023-03-11 04:02:22','2023-03-11 04:02:29'),
(3,'','1678095469664avt.png','',0,'',NULL,'2023-03-14 01:01:44','2023-03-14 01:01:44'),
(4,'qrerwe','1678095469664avt.png','qrqwer',0,'qwer',NULL,'2023-03-14 01:03:18','2023-03-14 01:03:18'),
(5,'qrerwe','1678095469664avt.png','qrqwer',0,'qwer',NULL,'2023-03-14 01:04:23','2023-03-14 01:04:23');

/*Table structure for table `programcategories` */

DROP TABLE IF EXISTS `programcategories`;

CREATE TABLE `programcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `programcategories` */

insert  into `programcategories`(`id`,`title`,`description`,`parentId`,`createdAt`,`updatedAt`) values 
(1,'All','Computer',0,'2023-03-08 01:52:50','2023-03-08 01:52:50'),
(2,'computer','computer',1,'2023-03-08 01:53:10','2023-03-08 01:53:10'),
(3,'computer application','application',2,'2023-03-08 01:53:36','2023-03-08 01:53:36'),
(4,'computer game','game',2,'2023-03-08 01:53:48','2023-03-08 01:53:48'),
(5,'Android','android',1,'2023-03-08 01:54:07','2023-03-08 01:54:07'),
(6,'Android Application','application',5,'2023-03-08 01:54:27','2023-03-08 01:54:27'),
(7,'Android game','game',5,'2023-03-08 01:54:49','2023-03-09 10:36:10');

/*Table structure for table `programs` */

DROP TABLE IF EXISTS `programs`;

CREATE TABLE `programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `purchases` int(11) DEFAULT NULL,
  `recommends` int(11) DEFAULT NULL,
  `unrecommends` int(11) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `programCategoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `programCategoryId` (`programCategoryId`),
  CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`programCategoryId`) REFERENCES `programcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4;

/*Data for the table `programs` */

insert  into `programs`(`id`,`name`,`description`,`requirement`,`date`,`purchases`,`recommends`,`unrecommends`,`file_url`,`image_url`,`cost`,`createdAt`,`updatedAt`,`programCategoryId`) values 
(49,'Microsoft Office','Microsoft Office, or simply Office, is a discontinued family of client software, server software, and services developed by Microsoft. ','windows 7','2023-03-10',222,3,1,'','1678427246518Microsoft Office.JPG',200,'2023-03-10 05:47:26','2023-03-14 02:10:00',3),
(50,'Utility software','Utility software is software designed to help analyze, configure, optimize or maintain a computer. ','window 8','2023-03-10',133,1,0,'','1678427328818Utility software.JPG',500,'2023-03-10 05:48:48','2023-03-13 01:16:15',3),
(51,'WinRAR','WinRAR is a trialware file archiver utility for Windows, developed by Eugene Roshal of win.rar GmbH. ','XP 2012','2023-03-10',300,0,0,'','1678427916087winrar.JPG',20,'2023-03-10 05:58:36','2023-03-12 10:48:08',3),
(53,'CorelDRAW','CorelDRAW is a vector graphics editor developed and marketed by Corel Corporation.','window 8','2023-03-10',99,0,0,'','1678428045884CorelDRAW.JPG',400,'2023-03-10 06:00:45','2023-03-12 10:47:03',3),
(54,'Freeware','Freeware is software, most often proprietary, that is distributed at no monetary cost to the end user.','XP 2012','2023-03-10',240,0,0,'','1678428942216freeware.JPG',50,'2023-03-10 06:15:42','2023-03-10 06:15:42',3),
(55,'Mario','This is computer game.','XP 2012','2023-03-10',200,1,0,'','1678429129629icon-lg.jpg',20,'2023-03-10 06:18:49','2023-03-13 01:17:29',4),
(56,'Hunt the Wumpu','Hunt the Wumpus is a text-based adventure game developed by Gregory Yob in 1973. ','XP 2012','2023-03-10',200,0,0,'','1678429216818game-2.JPG',10,'2023-03-10 06:20:16','2023-03-10 06:20:16',4),
(57,'Google','These options are usually safe to use for apps you\'ve installed through Google Play or using the Android sideloading method.','android 7.0','2023-03-10',300,1,0,'','1678429318852app-1.JPG',10,'2023-03-10 06:21:58','2023-03-13 10:14:26',6),
(59,'Microsoft To Do','Microsoft To Do is a cloud-based task management application.','android 6.0','2023-03-10',160,0,0,'','1678429387642app-2.JPG',50,'2023-03-10 06:23:07','2023-03-10 06:23:07',6),
(60,'Messenger','Messenger is a proprietary instant messaging app and platform developed by Meta Platforms. ','android 8.0','2023-03-10',50,0,0,'','1678429510358app-3.JPG',35,'2023-03-10 06:25:10','2023-03-10 06:25:10',6),
(61,'App Store','The App Store is an app marketplace developed and maintained by Apple Inc., for mobile apps on its iOS and iPadOS operating systems','android 8.0','2023-03-10',100,0,0,'','1678429570020app-4.JPG',90,'2023-03-10 06:26:10','2023-03-10 06:26:10',6),
(62,'Call of Duty','Call of Duty: Mobile is a free-to-play shooter game developed by TiMi Studio Group and published by Activision for Android and iOS. ','android 7.0','2023-03-10',100,0,0,'','1678429639881game-1.JPG',50,'2023-03-10 06:27:19','2023-03-10 06:27:19',7),
(63,' Garena Free Fire  Mario Kart Tour  Angry Birds 2 Angry Birds 2','Angry Birds 2 is a 2015 puzzle video game developed by Rovio Entertainment and is the twelfth game in the Angry Birds series, and is the direct sequel to the original Angry Birds.','android 6.0','2023-03-10',300,0,0,'','1678429710012game-5.JPG',0,'2023-03-10 06:28:30','2023-03-10 06:28:30',7),
(64,'Among Us','Among Us is a 2018 online multiplayer social deduction game developed and published by American game studio Innersloth.','android 8.0','2023-03-10',280,0,0,'','1678429780400images.jpg',250,'2023-03-10 06:29:40','2023-03-10 06:29:40',7),
(65,'Pokémon GO','Pokémon Go is a 2016 augmented reality mobile game, part of the Pokémon franchise, developed and published by Niantic in collaboration with Nintendo and The Pokémon Company for iOS and Android devices.','android 8.0','2023-03-10',330,0,0,'','1678430952937moster.jpg',100,'2023-03-10 06:49:12','2023-03-12 10:40:35',7);

/*Table structure for table `purchasehistories` */

DROP TABLE IF EXISTS `purchasehistories`;

CREATE TABLE `purchasehistories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `purchasehistories_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `purchasehistories` */

insert  into `purchasehistories`(`id`,`type`,`price`,`text`,`createdAt`,`updatedAt`,`userId`) values 
(5,'test','100','caption1','2023-03-14 02:20:29','2023-03-14 02:20:29',2),
(6,'test','100','Engineer Manager2','2023-03-14 02:21:13','2023-03-14 02:21:13',35),
(15,'test','100','caption1','2023-03-14 03:25:14','2023-03-14 03:25:14',35),
(16,'test','100','caption1','2023-03-14 03:25:46','2023-03-14 03:25:46',35),
(21,'test','100','caption1','2023-03-14 03:51:12','2023-03-14 03:51:12',2);

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `degreeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `degreeId` (`degreeId`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`degreeId`) REFERENCES `degrees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4;

/*Data for the table `questions` */

insert  into `questions`(`id`,`level`,`description`,`createdAt`,`updatedAt`,`degreeId`) values 
(1,'1','What is cargo ship?','2023-03-08 02:26:29','2023-03-10 02:30:44',2),
(2,'1','What type of cargo ship?','2023-03-09 20:27:24','2023-03-10 02:45:10',2),
(3,'1','How many cargo ship in our company?','2023-03-10 02:29:29','2023-03-10 02:29:29',2),
(4,'2','When does the first cargo ship leave?','2023-03-10 02:30:02','2023-03-10 02:30:02',2),
(53,'2','Why did it named cargo ship?','2023-03-10 02:30:26','2023-03-10 02:31:17',2),
(55,'1','What is your name?','2023-03-12 19:29:08','2023-03-12 19:29:08',1),
(56,'1','Where are you from?','2023-03-12 19:29:25','2023-03-12 19:29:25',1),
(57,'1','What do you do?','2023-03-12 19:29:38','2023-03-12 19:29:38',1),
(58,'1','How many years are you work there?','2023-03-12 19:30:55','2023-03-12 19:30:55',1),
(59,'1','What do you want to eat?','2023-03-12 19:31:17','2023-03-12 19:31:17',1),
(60,'2','How many kids do you have in your family?','2023-03-12 19:32:01','2023-03-12 19:32:01',1),
(61,'2','How many pets do you have in your family?','2023-03-12 19:32:14','2023-03-12 19:32:14',1),
(62,'2','How are you?','2023-03-12 19:32:53','2023-03-12 19:32:53',1),
(63,'2','What do you want in this class?','2023-03-12 19:33:21','2023-03-12 19:33:21',1),
(64,'2','Do you know about sailor?','2023-03-12 19:33:36','2023-03-12 19:33:36',1),
(65,'2','What is website?','2023-03-13 14:36:31','2023-03-14 01:07:42',2);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`createdAt`,`updatedAt`) values 
(1,'user','2023-03-08 01:25:39','2023-03-08 01:25:39'),
(2,'moderator','2023-03-08 01:25:39','2023-03-08 01:25:39'),
(3,'admin','2023-03-08 01:25:39','2023-03-08 01:25:39');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `settings` */

insert  into `settings`(`id`,`title`,`value`,`createdAt`,`updatedAt`) values 
(1,'homeImages','[{\"media\":17,\"title\":\"How do I get my packages to FedEx?\",\"description\":\"You can drop off your package at FedEx Office® locations and at many participating Dollar General stores, Walgreens, Albertsons, and more.  FIND A LOCATION NEAR YOU Woman at kitchen counter on laptop Have a FedEx account? Use our online tool to schedule your packages to be picked up for a small fee. You can use pickups for shipping returns, too. If you ship frequently, you can even set up recurring pickups to save time.\"},{\"media\":18,\"title\":\"When to use FedEx Home Delivery\",\"description\":\"Use FedEx Home Delivery to ship to someone’s house or apartment.  Use FedEx Ground to ship to businesses.  Checkmark icon When you create a shipping label on fedex.com, make sure to select the check box labeled \\\"This is a residential address.\\\"\"},{\"media\":19,\"title\":\"What is FedEx Home Delivery?\",\"description\":\"FedEx Home Delivery is a ground shipping service. It’s faster to more residential locations than UPS Ground. FedEx Home Delivery also delivers to more residential locations than UPS Ground on the weekend. With home delivery every day of the week, holiday shipping is flexible and easy.  delivery icon Shipping/transit time  In the contiguous U.S., delivery takes 1–5 days. Shipping to and from Alaska and Hawaii is 3–7 days.1 Check transit times.\"}]','0000-00-00 00:00:00','2023-03-13 03:32:44'),
(3,'dataImage','17','2023-03-13 03:29:23','2023-03-13 03:32:44'),
(4,'questionImage','18','2023-03-13 03:29:23','2023-03-13 03:32:44'),
(5,'softwareImage','19','2023-03-13 03:29:23','2023-03-13 03:32:44'),
(6,'studyImage','17','2023-03-13 03:29:23','2023-03-13 03:32:44'),
(7,'testImage','18','2023-03-13 03:29:23','2023-03-13 03:32:44'),
(8,'mypageImage','18','2023-03-13 03:29:23','2023-03-13 03:32:44');

/*Table structure for table `shipdatas` */

DROP TABLE IF EXISTS `shipdatas`;

CREATE TABLE `shipdatas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `plan_date` date DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `runner` varchar(255) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `load_weight` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `current_height` int(11) DEFAULT NULL,
  `full_load` int(11) DEFAULT NULL,
  `engine` varchar(255) DEFAULT NULL,
  `built_date` date DEFAULT NULL,
  `factory` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `voterId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*Data for the table `shipdatas` */

insert  into `shipdatas`(`id`,`name`,`image_url`,`plan_date`,`port`,`type`,`price`,`owner`,`runner`,`total_weight`,`load_weight`,`weight`,`length`,`width`,`current_height`,`full_load`,`engine`,`built_date`,`factory`,`location`,`status`,`voterId`,`createdAt`,`updatedAt`) values 
(1,'1234123','1678095469664avt.png','2023-03-13','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','qwer','as','',1,'2023-03-12 23:50:24','2023-03-12 23:50:24'),
(2,'1234123','1678095469664avt.png','2023-03-13','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','qewr','adsf','',2,'2023-03-12 23:50:26','2023-03-12 23:50:26'),
(3,'1234123','1678095469664avt.png','2023-03-13','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','qewr','asdf','',2,'2023-03-12 23:50:32','2023-03-12 23:50:32'),
(4,'1234123','1678095469664avt.png','2023-03-13','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','qere','asd','',1,'2023-03-12 23:50:36','2023-03-12 23:50:36'),
(5,'sadf','1678095469664avt.png','2023-03-13','werq','ship3',10000,'asdf','adf',143,123,134,1234123,4,134,1234,'134','2023-03-13','asdfasd','1234','1234',3,'2023-03-12 23:51:47','2023-03-12 23:51:47'),
(6,'','1678095469664avt.png','0000-00-00','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','qwer','lasdf','',3,'2023-03-13 00:09:24','2023-03-13 00:09:24'),
(7,'','1678095469664avt.png','0000-00-00','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','qwer','fa','',3,'2023-03-13 00:11:19','2023-03-13 00:11:19'),
(8,'','1678095469664avt.png','0000-00-00','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','adf','asdf','',1,'2023-03-13 02:31:37','2023-03-13 02:31:37'),
(9,'qerqer','1678095469664avt.png','2023-03-14','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','adsfwgs','asdf','',NULL,'2023-03-13 22:06:35','2023-03-13 22:06:35'),
(10,'nnn','1678095469664avt.png','2023-03-14','2341','ship3',123,'1324','qwerq',1213,4121,12313,1231231,0,0,0,'','2023-03-14','sgf','df','',23,'2023-03-13 22:15:17','2023-03-13 22:15:17'),
(11,'qerqwe','1678095469664avt.png','2023-03-14','','ship3',13413,'ewqr','qwerqwer',0,0,0,0,0,0,0,'','0000-00-00','qtqertgs','sdf','',23,'2023-03-13 23:28:44','2023-03-13 23:28:44'),
(12,'','1678095469664avt.png','0000-00-00','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','fsd','asdf','',23,'2023-03-14 00:25:20','2023-03-14 00:25:20'),
(13,'','1678095469664avt.png','0000-00-00','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','hgf','asdfa','',23,'2023-03-14 01:02:04','2023-03-14 01:02:04'),
(14,'','1678095469664avt.png','0000-00-00','','',0,'','',0,0,0,0,0,0,0,'','0000-00-00','asdf','df','',23,'2023-03-14 01:21:14','2023-03-14 01:21:14');

/*Table structure for table `suggestions` */

DROP TABLE IF EXISTS `suggestions`;

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `attach_url` varchar(255) DEFAULT NULL,
  `draft` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `suggestions_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `suggestions` */

insert  into `suggestions`(`id`,`name`,`description`,`contact_number`,`attach_url`,`draft`,`createdAt`,`updatedAt`,`userId`) values 
(2,'','','111-111-1111','','','2023-03-09 19:40:27','2023-03-09 19:40:27',NULL);

/*Table structure for table `testpurchasehistories` */

DROP TABLE IF EXISTS `testpurchasehistories`;

CREATE TABLE `testpurchasehistories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `testpurchasehistories_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `testpurchasehistories` */

insert  into `testpurchasehistories`(`id`,`userId`,`level`,`price`,`createdAt`,`updatedAt`) values 
(1,19,'Engineer Manager2',100,'2023-03-14 01:01:55','2023-03-14 01:01:55'),
(2,19,'Caption2',100,'2023-03-14 01:04:36','2023-03-14 01:04:36'),
(3,19,'Engineer Manager2',100,'2023-03-14 01:07:04','2023-03-14 01:07:04'),
(4,19,'Engineer Manager2',100,'2023-03-14 01:09:16','2023-03-14 01:09:16'),
(5,19,'Vice-caption2',100,'2023-03-14 01:35:04','2023-03-14 01:35:04'),
(6,19,'Engineer Manager2',100,'2023-03-14 01:47:15','2023-03-14 01:47:15'),
(7,19,'Engineer Manager2',100,'2023-03-14 01:53:11','2023-03-14 01:53:11'),
(8,NULL,NULL,NULL,'2023-03-14 03:15:04','2023-03-14 03:15:04'),
(9,NULL,NULL,NULL,'2023-03-14 03:38:50','2023-03-14 03:38:50'),
(10,30,'Engineer Manager2',100,'2023-03-14 03:50:35','2023-03-14 03:50:35');

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_roles` */

insert  into `user_roles`(`createdAt`,`updatedAt`,`roleId`,`userId`) values 
('2023-03-06 12:43:47','2023-03-06 12:43:47',1,1),
('2023-03-06 12:54:06','2023-03-06 12:54:06',1,2),
('2023-03-06 13:13:09','2023-03-06 13:13:09',1,3),
('2023-03-07 01:20:20','2023-03-07 01:20:20',1,4),
('2023-03-07 02:26:45','2023-03-07 02:26:45',1,5),
('2023-03-07 02:46:55','2023-03-07 02:46:55',1,6),
('2023-03-07 09:23:02','2023-03-07 09:23:02',1,8),
('2023-03-07 13:27:21','2023-03-07 13:27:21',1,9),
('2023-03-07 13:26:05','2023-03-07 13:26:05',1,10),
('2023-03-07 23:55:49','2023-03-07 23:55:49',1,11),
('2023-03-08 04:24:22','2023-03-08 04:24:22',1,12),
('2023-03-08 06:18:52','2023-03-08 06:18:52',1,14),
('2023-03-08 18:15:53','2023-03-08 18:15:53',1,16),
('2023-03-09 03:00:18','2023-03-09 03:00:18',1,17),
('2023-03-09 10:17:59','2023-03-09 10:17:59',1,18),
('2023-03-09 12:52:32','2023-03-09 12:52:32',1,19),
('2023-03-10 00:37:58','2023-03-10 00:37:58',1,20),
('2023-03-10 23:57:12','2023-03-10 23:57:12',1,21),
('2023-03-11 00:04:01','2023-03-11 00:04:01',1,22),
('2023-03-11 04:41:45','2023-03-11 04:41:45',1,23),
('2023-03-12 08:15:46','2023-03-12 08:15:46',1,24),
('2023-03-12 09:37:22','2023-03-12 09:37:22',1,25),
('2023-03-12 10:16:32','2023-03-12 10:16:32',1,26),
('2023-03-12 10:29:17','2023-03-12 10:29:17',1,27),
('2023-03-12 10:55:45','2023-03-12 10:55:45',1,28),
('2023-03-12 16:41:05','2023-03-12 16:41:05',1,30),
('2023-03-13 00:12:52','2023-03-13 00:12:52',1,31),
('2023-03-13 09:02:36','2023-03-13 09:02:36',1,33),
('2023-03-13 16:04:17','2023-03-13 16:04:17',1,34),
('2023-03-13 16:59:51','2023-03-13 16:59:51',1,35),
('2023-03-22 18:22:58','2023-03-22 18:22:58',1,36);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `free_balance` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `purchasedAvatar` text NOT NULL,
  `currentAvatarId` int(255) DEFAULT NULL,
  `votestate` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`name`,`email`,`gender`,`birthday`,`balance`,`free_balance`,`password`,`purchasedAvatar`,`currentAvatarId`,`votestate`,`createdAt`,`updatedAt`) values 
(1,'Kan','Kan','kan@gmail.com','female','2023-03-06',NULL,NULL,NULL,'[]',18,NULL,'2023-03-06 12:43:47','2023-03-12 22:25:04'),
(2,'Jenis','','jenis@gmail.com',NULL,NULL,0,0,'$2a$08$w2/WeiwWwvSD/4cutDIqIuEJ/KBd2feeQXDPG.7Gg124gFZHCzVNO','[]',19,'[\"0\",\"3\",\"4\",\"10\",\"11\",\"12\",\"1\",\"13\",\"2\",\"5\"]','2023-03-06 12:54:06','2023-03-14 07:37:24'),
(3,'KevinJones','','KevinJones@gmail.com',NULL,NULL,0,0,'$2a$08$SQydz342/n.f2Vd2xJBozuFA8HVcRk2KyQWzIcbcGv1QEVTCINAWm','[]',2,NULL,'2023-03-06 13:13:09','2023-03-06 13:13:09'),
(4,'guard@gmail.com','','guard@gmail.com',NULL,NULL,0,0,'$2a$08$evQCB5iIb4eyJkxTaCvXGuAfxGh2vhERi.8QKLhtRWy1TxsSZ12dK','[]',3,'[\"0\"]','2023-03-07 01:20:20','2023-03-14 05:28:37'),
(5,'myfriend','','admin@gmail.com',NULL,NULL,0,0,'$2a$08$VkEl9s1Bqo9tjAhrs4wnFe5CxwOx../GAPANOfxEJjdmQBn9aKe7e','[]',17,NULL,'2023-03-07 02:26:45','2023-03-07 02:26:45'),
(6,'aaa','','q@gmail.com',NULL,NULL,0,0,'$2a$08$8pcjOAWQaaaMSqz7S/TlGugaxF3/Uomy088FSBrawERfHU0p3n6fu','',5,NULL,'2023-03-07 02:46:55','2023-03-07 02:46:55'),
(8,'hhc0910','Will Han','hhc0910@gmail.com',NULL,NULL,0,0,'$2a$08$PSUx3cCgQmCx.EVoqh9Z7.aWUYWRrBWB6XdEeVxlL3HOEIklafDTe','',4,NULL,'2023-03-07 09:23:02','2023-03-07 09:23:02'),
(9,'KevinJones@gmail.com','Kevin Jones','KevinJones@gmail.com@gmail.com',NULL,NULL,0,0,'$2a$08$fqnfVQwzijpvrRmq.xqgVOjSE091Xu6ul/FVU5mu2gKuHMbQwk64e','',5,NULL,'2023-03-07 13:27:21','2023-03-07 13:27:21'),
(10,'jenis@gmail.com','Jenis','jenis@gmail.com@gmail.com',NULL,NULL,0,0,'$2a$08$qEin77OprjRjx1kzm6YoOudTGr6PzBGQvhOINrR8N9ULbM.YWvw9O','',1,NULL,'2023-03-07 13:26:05','2023-03-07 13:26:05'),
(11,'sera@gmail.com','','webtopc2021@gmail.com',NULL,NULL,0,0,'$2a$08$v2O.Hl0QPHPFRYE7RhTnju0SX.t3XZYMVtZC7ayRVb04EAnt/EIiq','',0,NULL,'2023-03-09 23:55:49','2023-03-07 23:55:49'),
(12,'qwer','','webtopc2022@gmail.com',NULL,NULL,0,0,'$2a$08$SRiG15nk9Ap4lwGCV19dYut23mtDSaoBzW5onfptIGyxEhKype12a','',0,NULL,'2023-03-08 04:24:22','2023-03-08 04:24:22'),
(14,'1','1','1@gmail.com','male','2023-03-08',NULL,NULL,NULL,'',0,NULL,'2023-03-08 06:18:52','2023-03-08 06:18:52'),
(15,'2','2','2@gmail.com','male',NULL,0,0,'c','',0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(16,'dreamhigh9990','Dream High','dreamhigh9990@gmail.com',NULL,NULL,0,0,'$2a$08$hNDdUPmnCGg9CWqpATHCs.s9h3K1I5RUgKjfzkoRPjFMelcPNYeqO','',0,NULL,'2023-03-08 18:15:53','2023-03-08 18:15:53'),
(17,'eugene miller','','miller@gmail.com',NULL,NULL,0,0,'$2a$08$Vc3f9gZr/zLVxUvxI0XDZOpAizqls3BnpPQC0cZAs9ZXHxhnz27mC','',0,NULL,'2023-03-09 03:00:18','2023-03-09 03:00:18'),
(18,'aaaaa','aaaaa','aaaaa@gmail.com',NULL,NULL,0,0,'$2a$08$HsJAzQkWb6/gdr0FvVvWYu8LCFdHr.DzHeY7AaI8LiL522u6.2g7a','',0,'[\"0\",\"4\",\"10\"]','2023-03-09 10:17:58','2023-03-12 15:19:12'),
(19,'rose','rose potter','rose@gmail.com',NULL,'1970-01-01',0,0,'$2a$08$MDSDZv3niWqg8nbajoSiRubZSEOAJJZk8Z2TWod04jzr8GsJbvf5e','[16,18]',1,'[\"1\",\"2\",\"3\",\"8\",\"4\",\"5\",\"0\",\"13\",\"12\",\"10\",\"7\"]','2023-03-09 12:52:32','2023-03-14 07:32:55'),
(20,'test123','test123','test123@gmail.com',NULL,'1970-01-01',0,0,'$2a$08$5cnufkjXV/zd56tDDI.VGeKvR725noEoKEHjPBtwwRNdaxt2bFqgW','',0,'[\"0\",\"2\",\"49\"]','2023-03-10 00:37:58','2023-03-13 01:26:47'),
(21,'Brown','Eugene Brown','Brown@gmail.com',NULL,NULL,0,0,'$2a$08$xeSu5N3xljun1a/I3gFsx.Wgel3.a92DPpqmHug3X5bCQeaedJb6y','',0,NULL,'2023-03-10 23:57:12','2023-03-10 23:57:12'),
(22,'Danner','Eugene Danner','Danner@gmail.com',NULL,NULL,0,0,'$2a$08$d3r0rY4Qv8mz28N9UOUqDe5kmMmHAoC1X7IsFQmZp8bD0YCjUonDO','',0,NULL,'2023-03-11 00:04:01','2023-03-12 08:29:54'),
(23,'Laura','Laura Belle','Laura@gmail.com',NULL,'1970-01-01',0,0,'$2a$08$aKCo6XLBpjVffbUwDKr8H.s.qbzgr7IXPhYi5/Po6zhy/nNffofbu','[4,1,3,5,2,6,18,null,12]',5,'[\"1\",\"49\"]','2023-03-11 04:41:45','2023-03-14 02:10:25'),
(24,'tiger','Black Tiger','tiger@gmail.com',NULL,NULL,0,0,'$2a$08$j0pJp9gRP8UMBItXq61UWOJCV9Ko2YgWsVIPN13pymc9clf9UPNxO','',0,'[\"5\",\"1\",\"2\",\"10\",\"0\",\"11\"]','2023-03-12 08:15:46','2023-03-12 09:37:45'),
(25,'babel','babel','babel@gmail.com',NULL,NULL,0,0,'$2a$08$G/TPru7ZFS.U9hwFXNrsXOg6LaD/HwvtlAwFY3mV2YzDTOlMy.jJK','',0,'[\"0\",\"11\",\"10\",\"1\",\"2\",\"3\",\"5\",\"8\",\"12\",\"13\",\"4\"]','2023-03-12 09:37:22','2023-03-14 06:23:07'),
(26,'1113','robonhood','1113@gmail.com',NULL,NULL,0,0,'$2a$08$PbPmcT7LpkejGgQuQQbahu1zBqtOub69n9ntqIjySZ/i0ToVVAofW','',0,'[\"0\"]','2023-03-12 10:16:32','2023-03-12 10:29:38'),
(27,'robinhood','robinhood','robinhood@gmail.com',NULL,NULL,0,0,'$2a$08$g7l1REAnnpYRfwvMzdbAmOSkX27JeU2fdEn7nx1TpsCU1kWypHbR6','',0,'[\"0\",\"65\",\"49\",\"53\",\"51\",\"50\",\"55\",null,null,null,\"57\",\"13\"]','2023-03-12 10:29:17','2023-03-13 13:56:01'),
(28,'robinhood1','1','robinhood1@gmail.com',NULL,NULL,0,0,'$2a$08$22b.af082dWNW3pLZyqdye.bwqZp0HEubh1BcJ9a2B.WF87HNX/82','',0,'[\"49\"]','2023-03-12 10:55:45','2023-03-12 11:43:23'),
(30,'Sass','Sass','Sass@gmail.com',NULL,'1970-01-01',0,0,'$2a$08$wlhSNWH1DFYYUGsS/jnOi.4z8tczrPQHg.Na8BMxQHqW7P8tgD9XG','',0,'[\"49\",\"12\",\"8\",\"0\",\"3\"]','2023-03-12 16:41:05','2023-03-14 08:31:29'),
(31,'Belle','Belle','Belle@gmail.com',NULL,'1970-01-01',0,0,'$2a$08$/PBLq4cPCfBnxfGFJxqD1ufg3PpIouIcR7/9SJGyjCB12C64k8up6','[1,7,13]',13,NULL,'2023-03-13 00:12:52','2023-03-13 05:20:39'),
(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(33,'duba','duba','duba@gmail.com',NULL,NULL,0,0,'$2a$08$naXpa3ZpQ8F5ov8zuOR1I.2aE4xAwl6YySRX.IOoMF2/9optemwLK','',0,'[\"0\",\"1\",\"12\",\"13\",\"2\",\"5\",\"10\",\"8\",\"4\",\"3\"]','2023-03-13 09:02:36','2023-03-13 14:22:58'),
(34,'sky','sky','sky@gmail.com',NULL,NULL,0,0,'$2a$08$igQgB117tQ9omRRMh3yBkOe8BzmwNdQXJ099yvC34Q2EePE4JLJye','[12]',12,'[\"0\",\"1\",\"2\",\"8\",\"11\",\"13\",\"5\"]','2023-03-13 16:04:17','2023-03-13 19:00:22'),
(35,'aaaaaa','aaa','aaaaaa@gmail.com',NULL,NULL,0,0,'$2a$08$Sos5JxjCXK.00cLwSEHskOmJ9K5g5fKWNNY/t44WtxPy820.HoghO','',0,'[\"0\",\"1\",\"4\",\"5\"]','2023-03-13 16:59:51','2023-03-14 06:37:20'),
(36,'jon','jonbyok','jon@gmail.com',NULL,NULL,0,0,'$2a$08$3guXoYdfEgWK/wagbr8HK./Y7hUgjXM/xE5Bg5JbUcq.f4VNGf/di','',NULL,NULL,'2023-03-22 18:22:58','2023-03-22 18:22:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
