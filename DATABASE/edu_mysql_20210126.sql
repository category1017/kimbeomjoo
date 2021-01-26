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
INSERT INTO `tbl_attach` VALUES ('9792e5ab-da4e-4d0e-a8a1-b1dea7850817.jpg','disney.jpg',9,'2021-01-13 06:16:09'),('b8eb0159-e511-427d-953d-50512320923d.gif','해피뉴이어스누피.gif',9,'2021-01-13 06:16:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'gallery','1번째 게시물입니다.수정2','수정게시물 내용 입니다.2','admin',14,0,'2020-12-23 03:20:32','2021-01-22 08:21:04'),(5,'gallery','5번째 게시물입니다. 수정222','게시물 내용 입니다.','admin',89,6,'2020-12-23 06:31:09','2021-01-25 02:16:11'),(6,'notice','6번째 게시물입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(7,'notice','7번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(8,'notice','8번째 게시물입니다.','게시물 내용 입니다.','admin',6,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(9,'notice','9번째 게시물입니다.','게시물 내용 입니다.','admin',7,0,'2020-12-23 06:31:09','2021-01-13 06:16:09'),(11,'notice','11번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(12,'notice','12번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(13,'notice','13번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(14,'notice','14번째 수정 게시물입니다. ','<p>게시물 내용 입니다.</p><p>수정합니다 <span style=\"font-size: 20px;\"><font color=\"#000000\" style=\"background-color: rgb(255, 156, 0);\">하하하</font></span><br></p>','admin',6,0,'2020-12-23 06:31:09','2020-12-29 07:21:14'),(15,'notice','15번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(16,'notice','16번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(17,'notice','17번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(18,'notice','18번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(19,'notice','19번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(20,'notice','20번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(21,'notice','21번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(22,'notice','22번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(24,'notice','24번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(25,'notice','25번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(26,'notice','26번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(27,'notice','27번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(28,'notice','28번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(29,'notice','29번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(30,'notice','30번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(31,'notice','31번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(32,'notice','32번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(33,'notice','33번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(34,'notice','34번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(35,'notice','35번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(36,'notice','36번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(37,'notice','37번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(38,'notice','38번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(39,'notice','39번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(40,'notice','40번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(41,'notice','41번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(42,'notice','42번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(43,'notice','43번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(44,'notice','44번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(45,'notice','45번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(46,'notice','46번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(47,'notice','47번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(48,'notice','48번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(49,'notice','49번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(50,'notice','50번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(51,'notice','51번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(52,'notice','52번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(53,'notice','53번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(54,'notice','54번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(55,'notice','55번째 게시물입니다.','게시물 내용 입니다.','admin',5,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(56,'notice','56번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(57,'notice','57번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(58,'notice','58번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(59,'notice','59번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(60,'notice','60번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(61,'notice','61번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(62,'notice','62번째 게시물입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(63,'notice','63번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(64,'notice','64번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(65,'notice','65번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(66,'notice','66번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(67,'notice','67번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(68,'notice','68번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(69,'notice','69번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(70,'notice','70번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(71,'notice','71번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(72,'notice','72번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(73,'notice','73번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(74,'notice','74번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(75,'notice','75번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(76,'notice','76번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(77,'notice','77번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(78,'notice','78번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(79,'notice','79번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(80,'notice','80번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(81,'notice','81번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(82,'notice','82번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(83,'notice','83번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(84,'notice','84번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(85,'notice','85번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(86,'notice','86번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(87,'notice','87번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(88,'notice','88번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(89,'notice','89번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(90,'notice','90번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(91,'notice','91번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(92,'notice','92번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(93,'notice','93번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(94,'notice','94번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(95,'notice','95번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(96,'notice','96번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(97,'notice','97번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(98,'notice','98번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(99,'notice','99번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(100,'notice','100번째 게시물입니다.','게시물 내용 입니다.','admin',2,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(101,'notice','101번째 게시물입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(102,'notice','102번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(103,'notice','103번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(104,'notice','104번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(105,'notice','105번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(106,'notice','106번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(107,'notice','107번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(108,'notice','108번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(109,'notice','109번째 게시물입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 06:31:09','2020-12-23 06:31:09'),(112,'notice','두번째 글 등록입니다.','<p>오늘 2번째 글 등록입니다.</p><h2>하하하<br></h2>','하하하',7,0,'2020-12-29 03:20:11','2020-12-29 03:20:11'),(113,'notice','글 수정 등록 입니다.','<p>안녕하세요</p><p><span style=\'font-family: \"바탕체\"; font-size: 30px;\'>안녕하세요</span></p><p><span style=\'font-family: \"바탕체\";\'><span style=\'font-family: \"맑은 고딕\"; font-size: 30px;\'>안녕하세요 수정합니다</span><br></span><br></p>','안녕',22,1,'2020-12-29 05:59:26','2020-12-29 07:07:03'),(125,'notice','공지사항 테스트','<p>공지사항 테스트<br></p>','작성',207,1,'2021-01-04 03:50:25','2021-01-22 08:12:24');
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
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','최고관리자','admin@admin.com',0,1,'ROLE_ADMIN','2020-12-23 03:03:07','2021-01-22 05:35:03'),('dummy_1','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_10','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_100','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_101','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_102','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_103','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_104','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_105','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_106','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_107','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_108','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_109','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_11','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_110','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_12','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_13','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_14','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_15','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_16','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_17','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_18','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_19','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_2','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_20','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_21','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_22','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_23','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_24','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_25','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_26','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_27','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_28','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_29','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_3','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_30','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_31','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_32','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_33','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_34','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_35','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_36','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_37','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_38','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_39','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_4','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_40','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_41','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_42','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_43','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_44','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_45','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_46','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_47','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_48','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_49','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_5','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_50','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_51','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_52','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_53','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_54','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_55','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_56','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_57','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_58','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_59','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_6','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_60','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_61','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_62','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_63','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_64','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_65','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_66','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_67','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_68','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_69','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_7','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_70','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_71','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_72','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_73','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_74','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_75','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_76','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_77','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_78','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_79','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_8','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_80','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_81','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_82','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_83','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_84','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_85','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_86','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_87','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_88','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_89','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_9','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_90','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_91','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_92','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_93','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_94','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','수정관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2021-01-12 07:53:40'),('dummy_95','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_96','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_97','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_98','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('dummy_99','$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK','관리자','admin@admin.com',0,1,'ROLE_USER','2020-12-23 06:31:04','2020-12-23 06:31:04'),('user01','$2a$10$aw.DRmB7ilsRVhttTsssGunWpfmXGDxhdM2X69MIXWyCt9cCLOkv.','일반사용자','user@user.com',0,1,'ROLE_USER','2021-01-12 07:27:42','2021-01-12 07:27:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='댓글 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
INSERT INTO `tbl_reply` VALUES (20,5,'aaaaa수정222','bbb','2021-01-07 05:24:14','2021-01-14 02:42:51'),(21,125,'1234','1234','2021-01-13 07:02:23','2021-01-13 07:02:23'),(22,5,'수정댓글','abc','2021-01-13 07:36:38','2021-01-14 02:54:12'),(23,5,'555','555','2021-01-13 07:36:45','2021-01-13 07:36:45'),(24,5,'아무개댓글','아무개','2021-01-14 01:19:19','2021-01-14 01:19:19'),(27,5,'ㅁㅁㅁ','ㅁㅁㅁ','2021-01-14 02:38:54','2021-01-14 02:38:54'),(28,5,'bbbbbb','bbb','2021-01-14 02:39:00','2021-01-14 02:39:00'),(29,113,'sdfsdf','dfsdf','2021-01-14 05:54:12','2021-01-14 05:54:12');
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
	declare cnt int default 2;
    delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    INSERT INTO tbl_board(bno,title,content,writer) 
    VALUES 
    (cnt, concat(cnt,'번째 게시물입니다.'), '게시물 내용 입니다.', 'admin');
    set cnt = cnt + 1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1; #반복문 변수선언
	delete from tbl_member where user_id like 'dummy%';
    while cnt <=p_loop do
		INSERT INTO tbl_member (user_id,user_pw,user_name,email,point,enabled,levels) 
		VALUES 
        (concat('dummy_',cnt) , '1234', '관리자', 'admin@admin.com', '0', '1', 'ROLE_USER');
		set cnt = cnt + 1;
    end while;
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

-- Dump completed on 2021-01-26 15:55:58
