-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

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
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `save_file_name` varchar(255) NOT NULL COMMENT '서버에 저장되는 한글명이 아닌 파일명.',
  `real_file_name` varchar(255) NOT NULL COMMENT '내 PC에서 한글로된 진짜 파일명(업로드하기전)',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호 ',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  PRIMARY KEY (`save_file_name`),
  KEY `fk_tlbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tlbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물 일련번호, AI(Auto Increment)자동증가기\n',
  `board_type` varchar(45) DEFAULT NULL COMMENT '게시판타입 :  tbl_board_type 테이블의 값을 가져다 사용',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물 제목 ',
  `content` text DEFAULT NULL COMMENT '게시물 내용',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '조회수',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시\n',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시\n',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'notice','1번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:28','2021-02-01 02:33:27'),(2,'notice','2번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:29','2021-02-01 02:33:27'),(3,'notice','3번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:30','2021-02-01 02:33:27'),(4,'notice','4번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:31','2021-02-01 02:33:27'),(5,'notice','5번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:32','2021-02-01 02:33:27'),(6,'notice','6번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:33','2021-02-01 02:33:27'),(7,'notice','7번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:34','2021-02-01 02:33:27'),(8,'notice','8번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:35','2021-02-01 02:33:27'),(9,'notice','9번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:36','2021-02-01 02:33:27'),(10,'notice','10번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:37','2021-02-01 02:33:27'),(11,'notice','11번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:38','2021-02-01 02:33:27'),(12,'notice','12번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:39','2021-02-01 02:33:27'),(13,'notice','13번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:40','2021-02-01 02:33:27'),(14,'notice','14번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:41','2021-02-01 02:33:27'),(15,'notice','15번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:42','2021-02-01 02:33:27'),(16,'notice','16번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:43','2021-02-01 02:33:27'),(17,'notice','17번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:44','2021-02-01 02:33:27'),(18,'notice','18번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:45','2021-02-01 02:33:27'),(19,'notice','19번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:46','2021-02-01 02:33:27'),(20,'notice','20번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:47','2021-02-01 02:33:27'),(21,'notice','21번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:48','2021-02-01 02:33:27'),(22,'notice','22번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:49','2021-02-01 02:33:27'),(23,'notice','23번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:50','2021-02-01 02:33:27'),(24,'notice','24번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:51','2021-02-01 02:33:27'),(25,'notice','25번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:52','2021-02-01 02:33:27'),(26,'notice','26번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:53','2021-02-01 02:33:27'),(27,'notice','27번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:54','2021-02-01 02:33:27'),(28,'notice','28번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:55','2021-02-01 02:33:27'),(29,'notice','29번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:56','2021-02-01 02:33:27'),(30,'notice','30번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:57','2021-02-01 02:33:27'),(31,'notice','31번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:58','2021-02-01 02:33:27'),(32,'notice','32번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:33:59','2021-02-01 02:33:27'),(33,'notice','33번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:00','2021-02-01 02:33:27'),(34,'notice','34번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:01','2021-02-01 02:33:27'),(35,'notice','35번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:02','2021-02-01 02:33:27'),(36,'notice','36번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:03','2021-02-01 02:33:27'),(37,'notice','37번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:04','2021-02-01 02:33:27'),(38,'notice','38번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:05','2021-02-01 02:33:27'),(39,'notice','39번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:06','2021-02-01 02:33:27'),(40,'notice','40번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:07','2021-02-01 02:33:27'),(41,'notice','41번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:08','2021-02-01 02:33:27'),(42,'notice','42번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:09','2021-02-01 02:33:27'),(43,'notice','43번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:10','2021-02-01 02:33:27'),(44,'notice','44번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:11','2021-02-01 02:33:27'),(45,'notice','45번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:12','2021-02-01 02:33:27'),(46,'notice','46번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:13','2021-02-01 02:33:27'),(47,'notice','47번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:14','2021-02-01 02:33:27'),(48,'notice','48번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:15','2021-02-01 02:33:27'),(49,'notice','49번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:16','2021-02-01 02:33:27'),(50,'notice','50번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:17','2021-02-01 02:33:27'),(51,'gallery','51번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:18','2021-02-01 02:33:27'),(52,'gallery','52번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:19','2021-02-01 02:33:27'),(53,'gallery','53번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:20','2021-02-01 02:33:27'),(54,'gallery','54번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:21','2021-02-01 02:33:27'),(55,'gallery','55번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:22','2021-02-01 02:33:27'),(56,'gallery','56번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:23','2021-02-01 02:33:27'),(57,'gallery','57번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:24','2021-02-01 02:33:27'),(58,'gallery','58번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:25','2021-02-01 02:33:27'),(59,'gallery','59번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:26','2021-02-01 02:33:27'),(60,'gallery','60번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:27','2021-02-01 02:33:27'),(61,'gallery','61번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:28','2021-02-01 02:33:27'),(62,'gallery','62번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:29','2021-02-01 02:33:27'),(63,'gallery','63번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:30','2021-02-01 02:33:27'),(64,'gallery','64번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:31','2021-02-01 02:33:27'),(65,'gallery','65번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:32','2021-02-01 02:33:27'),(66,'gallery','66번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:33','2021-02-01 02:33:27'),(67,'gallery','67번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:34','2021-02-01 02:33:27'),(68,'gallery','68번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:35','2021-02-01 02:33:27'),(69,'gallery','69번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:36','2021-02-01 02:33:27'),(70,'gallery','70번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:37','2021-02-01 02:33:27'),(71,'gallery','71번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:38','2021-02-01 02:33:27'),(72,'gallery','72번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:39','2021-02-01 02:33:27'),(73,'gallery','73번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:40','2021-02-01 02:33:27'),(74,'gallery','74번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:41','2021-02-01 02:33:27'),(75,'gallery','75번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:42','2021-02-01 02:33:27'),(76,'gallery','76번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:43','2021-02-01 02:33:27'),(77,'gallery','77번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:44','2021-02-01 02:33:27'),(78,'gallery','78번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:45','2021-02-01 02:33:27'),(79,'gallery','79번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:46','2021-02-01 02:33:27'),(80,'gallery','80번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:47','2021-02-01 02:33:27'),(81,'gallery','81번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:48','2021-02-01 02:33:27'),(82,'gallery','82번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:49','2021-02-01 02:33:27'),(83,'gallery','83번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:50','2021-02-01 02:33:27'),(84,'gallery','84번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:51','2021-02-01 02:33:27'),(85,'gallery','85번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:52','2021-02-01 02:33:27'),(86,'gallery','86번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:53','2021-02-01 02:33:27'),(87,'gallery','87번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:55','2021-02-01 02:33:28'),(88,'gallery','88번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:56','2021-02-01 02:33:28'),(89,'gallery','89번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:57','2021-02-01 02:33:28'),(90,'gallery','90번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:58','2021-02-01 02:33:28'),(91,'gallery','91번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:34:59','2021-02-01 02:33:28'),(92,'gallery','92번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:00','2021-02-01 02:33:28'),(93,'gallery','93번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:01','2021-02-01 02:33:28'),(94,'gallery','94번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:02','2021-02-01 02:33:28'),(95,'gallery','95번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:03','2021-02-01 02:33:28'),(96,'gallery','96번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:04','2021-02-01 02:33:28'),(97,'gallery','97번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:05','2021-02-01 02:33:28'),(98,'gallery','98번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:06','2021-02-01 02:33:28'),(99,'gallery','99번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:07','2021-02-01 02:33:28'),(100,'gallery','100번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:35:08','2021-02-01 02:33:28');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board_type`
--

DROP TABLE IF EXISTS `tbl_board_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board_type` (
  `board_type` varchar(45) NOT NULL COMMENT '게시판 타입 : 예)  notice, gallery, qna',
  `board_name` varchar(45) DEFAULT NULL COMMENT '게시판 이름 : 공지사항, 갤러리, 묻고답하기 ',
  `board_sun` int(11) DEFAULT NULL COMMENT '게시판 출력 순서',
  PRIMARY KEY (`board_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판생성:게시판 유형 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board_type`
--

LOCK TABLES `tbl_board_type` WRITE;
/*!40000 ALTER TABLE `tbl_board_type` DISABLE KEYS */;
INSERT INTO `tbl_board_type` VALUES ('gallery','갤러리',2),('notice','공지사항',1),('test','테스트',4);
/*!40000 ALTER TABLE `tbl_board_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호\n',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름\n',
  `email` varchar(255) DEFAULT NULL COMMENT '회원 이메일\n',
  `point` int(11) DEFAULT 0 COMMENT '회원 적립포인트\n',
  `enabled` int(1) DEFAULT 1 COMMENT '인증값(Authentication), 활동 가능한 회원 여부, 0 로그인불가능, 1 로그인 가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값(Authority), 2가지 레벨, ROLE_ADMIN(관리자),ROLE_USER(사용자)\n',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자, 1970부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일자\n',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-02-01 02:35:08','2021-02-01 02:33:28'),('user1','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:29','2021-02-01 02:33:28'),('user10','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:38','2021-02-01 02:33:28'),('user11','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:39','2021-02-01 02:33:28'),('user12','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:40','2021-02-01 02:33:28'),('user13','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:41','2021-02-01 02:33:28'),('user14','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:42','2021-02-01 02:33:28'),('user15','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:43','2021-02-01 02:33:28'),('user16','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:44','2021-02-01 02:33:28'),('user17','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:45','2021-02-01 02:33:28'),('user18','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:46','2021-02-01 02:33:28'),('user19','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:47','2021-02-01 02:33:28'),('user2','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:30','2021-02-01 02:33:28'),('user20','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:48','2021-02-01 02:33:28'),('user21','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:49','2021-02-01 02:33:28'),('user22','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:50','2021-02-01 02:33:28'),('user23','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:51','2021-02-01 02:33:28'),('user24','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:52','2021-02-01 02:33:28'),('user25','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:53','2021-02-01 02:33:28'),('user26','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:54','2021-02-01 02:33:28'),('user27','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:55','2021-02-01 02:33:28'),('user28','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:56','2021-02-01 02:33:28'),('user29','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:57','2021-02-01 02:33:28'),('user3','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:31','2021-02-01 02:33:28'),('user30','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:58','2021-02-01 02:33:28'),('user31','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:59','2021-02-01 02:33:28'),('user32','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:00','2021-02-01 02:33:28'),('user33','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:01','2021-02-01 02:33:28'),('user34','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:02','2021-02-01 02:33:28'),('user35','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:03','2021-02-01 02:33:28'),('user36','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:04','2021-02-01 02:33:28'),('user37','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:05','2021-02-01 02:33:28'),('user38','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:06','2021-02-01 02:33:28'),('user39','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:07','2021-02-01 02:33:28'),('user4','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:32','2021-02-01 02:33:28'),('user40','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:08','2021-02-01 02:33:28'),('user41','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:09','2021-02-01 02:33:28'),('user42','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:10','2021-02-01 02:33:28'),('user43','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:11','2021-02-01 02:33:28'),('user44','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:12','2021-02-01 02:33:28'),('user45','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:13','2021-02-01 02:33:28'),('user46','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:14','2021-02-01 02:33:28'),('user47','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:15','2021-02-01 02:33:28'),('user48','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:16','2021-02-01 02:33:28'),('user49','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:17','2021-02-01 02:33:28'),('user5','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:33','2021-02-01 02:33:28'),('user50','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:18','2021-02-01 02:33:28'),('user51','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:19','2021-02-01 02:33:28'),('user52','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:20','2021-02-01 02:33:28'),('user53','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:21','2021-02-01 02:33:28'),('user54','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:22','2021-02-01 02:33:28'),('user55','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:23','2021-02-01 02:33:28'),('user56','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:24','2021-02-01 02:33:28'),('user57','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:25','2021-02-01 02:33:28'),('user58','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:26','2021-02-01 02:33:28'),('user59','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:27','2021-02-01 02:33:28'),('user6','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:34','2021-02-01 02:33:28'),('user60','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:28','2021-02-01 02:33:28'),('user61','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:29','2021-02-01 02:33:28'),('user62','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:30','2021-02-01 02:33:28'),('user63','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:31','2021-02-01 02:33:28'),('user64','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:32','2021-02-01 02:33:28'),('user65','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:33','2021-02-01 02:33:28'),('user66','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:34','2021-02-01 02:33:28'),('user67','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:35','2021-02-01 02:33:28'),('user68','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:36','2021-02-01 02:33:28'),('user69','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:37','2021-02-01 02:33:28'),('user7','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:35','2021-02-01 02:33:28'),('user70','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:38','2021-02-01 02:33:28'),('user71','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:39','2021-02-01 02:33:28'),('user72','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:40','2021-02-01 02:33:28'),('user73','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:41','2021-02-01 02:33:28'),('user74','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:42','2021-02-01 02:33:28'),('user75','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:43','2021-02-01 02:33:28'),('user76','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:44','2021-02-01 02:33:28'),('user77','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:45','2021-02-01 02:33:28'),('user78','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:46','2021-02-01 02:33:28'),('user79','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:47','2021-02-01 02:33:28'),('user8','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:36','2021-02-01 02:33:28'),('user80','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:48','2021-02-01 02:33:28'),('user81','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:49','2021-02-01 02:33:28'),('user82','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:50','2021-02-01 02:33:28'),('user83','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:51','2021-02-01 02:33:28'),('user84','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:52','2021-02-01 02:33:28'),('user85','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:53','2021-02-01 02:33:28'),('user86','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:54','2021-02-01 02:33:28'),('user87','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:55','2021-02-01 02:33:28'),('user88','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:56','2021-02-01 02:33:28'),('user89','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:57','2021-02-01 02:33:28'),('user9','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:33:37','2021-02-01 02:33:28'),('user90','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:58','2021-02-01 02:33:28'),('user91','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:34:59','2021-02-01 02:33:28'),('user92','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:35:00','2021-02-01 02:33:28'),('user93','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:35:01','2021-02-01 02:33:28'),('user94','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:35:02','2021-02-01 02:33:28'),('user95','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:35:03','2021-02-01 02:33:28'),('user96','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:35:04','2021-02-01 02:33:28'),('user97','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:35:05','2021-02-01 02:33:28'),('user98','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:35:06','2021-02-01 02:33:28'),('user99','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:35:07','2021-02-01 02:33:28');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번호',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글 내용',
  `replyer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시 ',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='댓글 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROC_BOARD_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_BOARD_INSERT`(IN p_loop int)
BEGIN
	declare cnt int default 1;
    -- delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    if cnt <= (p_loop/2) then
		INSERT INTO tbl_board(board_type,title,content,writer,reg_date)
		VALUES
		('notice',concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin',DATE_ADD(NOW(), INTERVAL cnt SECOND));
    else
		INSERT INTO tbl_board(board_type,title,content,writer,reg_date)
		VALUES
		('gallery',concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin',DATE_ADD(NOW(), INTERVAL cnt SECOND));
    end if;
    set cnt = cnt + 1;
    end while;
    #실행전
	#truncate table tbl_attach;
	#truncate table tbl_reply;
    #SET FOREIGN_KEY_CHECKS = 0; -- 제약조건 Constraint 에러 발생시 비활성화
	#truncate table tbl_board;
	#SET FOREIGN_KEY_CHECKS = 1; -- 제약조건 다시 활성화
	#call PROC_BOARD_INSERT(100);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_MEMBER_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_MEMBER_INSERT`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    while cnt <= p_loop do
    if cnt = p_loop then
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels,reg_date) 
		VALUES 
		('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN',DATE_ADD(NOW(), INTERVAL cnt SECOND));
	else
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels,reg_date) 
		VALUES 
		(concat('user',cnt),'$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', '사용자', 'admin@abc.com', '0', '1', 'ROLE_USER',DATE_ADD(NOW(), INTERVAL cnt SECOND));
    end if;
        set cnt = cnt + 1;
    end while;
    #실행 전 처리
	#truncate table tbl_member;
	#call PROC_MEMBER_INSERT(100);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-01 11:38:01
