-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbooteozac1c1
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbooteozac1c1`
--

/*!40000 DROP DATABASE IF EXISTS `springbooteozac1c1`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbooteozac1c1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbooteozac1c1`;

--
-- Table structure for table `anliku`
--

DROP TABLE IF EXISTS `anliku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anliku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `anlimingcheng` varchar(200) NOT NULL COMMENT '案例名称',
  `anlileixing` varchar(200) NOT NULL COMMENT '案例类型',
  `xiangguanlvshi` varchar(200) DEFAULT NULL COMMENT '相关律师',
  `fengmian` longtext COMMENT '封面',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COMMENT '内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='案例库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anliku`
--

LOCK TABLES `anliku` WRITE;
/*!40000 ALTER TABLE `anliku` DISABLE KEYS */;
INSERT INTO `anliku` VALUES (81,'2024-04-02 00:50:52','案例名称1','案例类型1','相关律师1','upload/anliku_fengmian1.jpg,upload/anliku_fengmian2.jpg,upload/anliku_fengmian3.jpg','2024-04-02','内容1','2024-04-02 08:50:52',1,0,1),(82,'2024-04-02 00:50:52','案例名称2','案例类型2','相关律师2','upload/anliku_fengmian2.jpg,upload/anliku_fengmian3.jpg,upload/anliku_fengmian4.jpg','2024-04-02','内容2','2024-04-02 08:50:52',2,0,2),(83,'2024-04-02 00:50:52','案例名称3','案例类型3','相关律师3','upload/anliku_fengmian3.jpg,upload/anliku_fengmian4.jpg,upload/anliku_fengmian5.jpg','2024-04-02','内容3','2024-04-02 08:50:52',3,0,3),(84,'2024-04-02 00:50:52','案例名称4','案例类型4','相关律师4','upload/anliku_fengmian4.jpg,upload/anliku_fengmian5.jpg,upload/anliku_fengmian6.jpg','2024-04-02','内容4','2024-04-02 08:50:52',4,0,4),(85,'2024-04-02 00:50:52','案例名称5','案例类型5','相关律师5','upload/anliku_fengmian5.jpg,upload/anliku_fengmian6.jpg,upload/anliku_fengmian7.jpg','2024-04-02','内容5','2024-04-02 08:50:52',5,0,5),(86,'2024-04-02 00:50:52','案例名称6','案例类型6','相关律师6','upload/anliku_fengmian6.jpg,upload/anliku_fengmian7.jpg,upload/anliku_fengmian8.jpg','2024-04-02','内容6','2024-04-02 08:50:52',6,0,6),(87,'2024-04-02 00:50:52','案例名称7','案例类型7','相关律师7','upload/anliku_fengmian7.jpg,upload/anliku_fengmian8.jpg,upload/anliku_fengmian9.jpg','2024-04-02','内容7','2024-04-02 08:50:52',7,0,7),(88,'2024-04-02 00:50:52','案例名称8','案例类型8','相关律师8','upload/anliku_fengmian8.jpg,upload/anliku_fengmian9.jpg,upload/anliku_fengmian10.jpg','2024-04-02','内容8','2024-04-02 08:50:52',8,0,8);
/*!40000 ALTER TABLE `anliku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anlileixing`
--

DROP TABLE IF EXISTS `anlileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anlileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `anlileixing` varchar(200) DEFAULT NULL COMMENT '案例类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `anlileixing` (`anlileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='案例类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anlileixing`
--

LOCK TABLES `anlileixing` WRITE;
/*!40000 ALTER TABLE `anlileixing` DISABLE KEYS */;
INSERT INTO `anlileixing` VALUES (91,'2024-04-02 00:50:52','案例类型1'),(92,'2024-04-02 00:50:52','案例类型2'),(93,'2024-04-02 00:50:52','案例类型3'),(94,'2024-04-02 00:50:52','案例类型4'),(95,'2024-04-02 00:50:52','案例类型5'),(96,'2024-04-02 00:50:52','案例类型6'),(97,'2024-04-02 00:50:52','案例类型7'),(98,'2024-04-02 00:50:52','案例类型8');
/*!40000 ALTER TABLE `anlileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatmessage`
--

DROP TABLE IF EXISTS `chatmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatmessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `uid` bigint(20) NOT NULL COMMENT '用户ID',
  `fid` bigint(20) NOT NULL COMMENT '好友用户ID',
  `content` varchar(200) DEFAULT NULL COMMENT '内容',
  `format` int(11) DEFAULT NULL COMMENT '格式(1:文字，2:图片)',
  `isread` int(11) DEFAULT '0' COMMENT '消息已读(0:未读，1:已读)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatmessage`
--

LOCK TABLES `chatmessage` WRITE;
/*!40000 ALTER TABLE `chatmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diquxinxi`
--

DROP TABLE IF EXISTS `diquxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diquxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diqu` (`diqu`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='地区信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diquxinxi`
--

LOCK TABLES `diquxinxi` WRITE;
/*!40000 ALTER TABLE `diquxinxi` DISABLE KEYS */;
INSERT INTO `diquxinxi` VALUES (41,'2024-04-02 00:50:52','地区1'),(42,'2024-04-02 00:50:52','地区2'),(43,'2024-04-02 00:50:52','地区3'),(44,'2024-04-02 00:50:52','地区4'),(45,'2024-04-02 00:50:52','地区5'),(46,'2024-04-02 00:50:52','地区6'),(47,'2024-04-02 00:50:52','地区7'),(48,'2024-04-02 00:50:52','地区8');
/*!40000 ALTER TABLE `diquxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussanliku`
--

DROP TABLE IF EXISTS `discussanliku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussanliku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案例库评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussanliku`
--

LOCK TABLES `discussanliku` WRITE;
/*!40000 ALTER TABLE `discussanliku` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussanliku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfalvxinwen`
--

DROP TABLE IF EXISTS `discussfalvxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfalvxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='法律新闻评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfalvxinwen`
--

LOCK TABLES `discussfalvxinwen` WRITE;
/*!40000 ALTER TABLE `discussfalvxinwen` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussfalvxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfalvziyuan`
--

DROP TABLE IF EXISTS `discussfalvziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfalvziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='法律资源评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfalvziyuan`
--

LOCK TABLES `discussfalvziyuan` WRITE;
/*!40000 ALTER TABLE `discussfalvziyuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussfalvziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `falvxinwen`
--

DROP TABLE IF EXISTS `falvxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `falvxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fengmian` longtext COMMENT '封面',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COMMENT '内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='法律新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `falvxinwen`
--

LOCK TABLES `falvxinwen` WRITE;
/*!40000 ALTER TABLE `falvxinwen` DISABLE KEYS */;
INSERT INTO `falvxinwen` VALUES (101,'2024-04-02 00:50:52','标题1','简介1','upload/falvxinwen_fengmian1.jpg,upload/falvxinwen_fengmian2.jpg,upload/falvxinwen_fengmian3.jpg','2024-04-02','内容1',1,1,'2024-04-02 08:50:52',1,0,1),(102,'2024-04-02 00:50:52','标题2','简介2','upload/falvxinwen_fengmian2.jpg,upload/falvxinwen_fengmian3.jpg,upload/falvxinwen_fengmian4.jpg','2024-04-02','内容2',2,2,'2024-04-02 08:50:52',2,0,2),(103,'2024-04-02 00:50:52','标题3','简介3','upload/falvxinwen_fengmian3.jpg,upload/falvxinwen_fengmian4.jpg,upload/falvxinwen_fengmian5.jpg','2024-04-02','内容3',3,3,'2024-04-02 08:50:52',3,0,3),(104,'2024-04-02 00:50:52','标题4','简介4','upload/falvxinwen_fengmian4.jpg,upload/falvxinwen_fengmian5.jpg,upload/falvxinwen_fengmian6.jpg','2024-04-02','内容4',4,4,'2024-04-02 08:50:52',4,0,4),(105,'2024-04-02 00:50:52','标题5','简介5','upload/falvxinwen_fengmian5.jpg,upload/falvxinwen_fengmian6.jpg,upload/falvxinwen_fengmian7.jpg','2024-04-02','内容5',5,5,'2024-04-02 08:50:52',5,0,5),(106,'2024-04-02 00:50:52','标题6','简介6','upload/falvxinwen_fengmian6.jpg,upload/falvxinwen_fengmian7.jpg,upload/falvxinwen_fengmian8.jpg','2024-04-02','内容6',6,6,'2024-04-02 08:50:52',6,0,6),(107,'2024-04-02 00:50:52','标题7','简介7','upload/falvxinwen_fengmian7.jpg,upload/falvxinwen_fengmian8.jpg,upload/falvxinwen_fengmian9.jpg','2024-04-02','内容7',7,7,'2024-04-02 08:50:52',7,0,7),(108,'2024-04-02 00:50:52','标题8','简介8','upload/falvxinwen_fengmian8.jpg,upload/falvxinwen_fengmian9.jpg,upload/falvxinwen_fengmian10.jpg','2024-04-02','内容8',8,8,'2024-04-02 08:50:52',8,0,8);
/*!40000 ALTER TABLE `falvxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `falvziyuan`
--

DROP TABLE IF EXISTS `falvziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `falvziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) NOT NULL COMMENT '资源名称',
  `ziyuanfenlei` varchar(200) NOT NULL COMMENT '资源分类',
  `ziyuanwenjian` longtext COMMENT '资源文件',
  `fengmian` longtext COMMENT '封面',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `ziyuanneirong` longtext COMMENT '资源内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='法律资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `falvziyuan`
--

LOCK TABLES `falvziyuan` WRITE;
/*!40000 ALTER TABLE `falvziyuan` DISABLE KEYS */;
INSERT INTO `falvziyuan` VALUES (71,'2024-04-02 00:50:52','资源名称1','资源分类1','','upload/falvziyuan_fengmian1.jpg,upload/falvziyuan_fengmian2.jpg,upload/falvziyuan_fengmian3.jpg','2024-04-02 08:50:52','资源内容1','2024-04-02 08:50:52',1,0,1),(72,'2024-04-02 00:50:52','资源名称2','资源分类2','','upload/falvziyuan_fengmian2.jpg,upload/falvziyuan_fengmian3.jpg,upload/falvziyuan_fengmian4.jpg','2024-04-02 08:50:52','资源内容2','2024-04-02 08:50:52',2,0,2),(73,'2024-04-02 00:50:52','资源名称3','资源分类3','','upload/falvziyuan_fengmian3.jpg,upload/falvziyuan_fengmian4.jpg,upload/falvziyuan_fengmian5.jpg','2024-04-02 08:50:52','资源内容3','2024-04-02 08:50:52',3,0,3),(74,'2024-04-02 00:50:52','资源名称4','资源分类4','','upload/falvziyuan_fengmian4.jpg,upload/falvziyuan_fengmian5.jpg,upload/falvziyuan_fengmian6.jpg','2024-04-02 08:50:52','资源内容4','2024-04-02 08:50:52',4,0,4),(75,'2024-04-02 00:50:52','资源名称5','资源分类5','','upload/falvziyuan_fengmian5.jpg,upload/falvziyuan_fengmian6.jpg,upload/falvziyuan_fengmian7.jpg','2024-04-02 08:50:52','资源内容5','2024-04-02 08:50:52',5,0,5),(76,'2024-04-02 00:50:52','资源名称6','资源分类6','','upload/falvziyuan_fengmian6.jpg,upload/falvziyuan_fengmian7.jpg,upload/falvziyuan_fengmian8.jpg','2024-04-02 08:50:52','资源内容6','2024-04-02 08:50:52',6,0,6),(77,'2024-04-02 00:50:52','资源名称7','资源分类7','','upload/falvziyuan_fengmian7.jpg,upload/falvziyuan_fengmian8.jpg,upload/falvziyuan_fengmian9.jpg','2024-04-02 08:50:52','资源内容7','2024-04-02 08:50:52',7,0,7),(78,'2024-04-02 00:50:52','资源名称8','资源分类8','','upload/falvziyuan_fengmian8.jpg,upload/falvziyuan_fengmian9.jpg,upload/falvziyuan_fengmian10.jpg','2024-04-02 08:50:52','资源内容8','2024-04-02 08:50:52',8,0,8);
/*!40000 ALTER TABLE `falvziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `istop` int(11) DEFAULT '0' COMMENT '是否置顶',
  `toptime` datetime DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='法律论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (131,'2024-04-02 00:50:52','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放',0,'2024-04-02 08:50:52'),(132,'2024-04-02 00:50:52','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放',0,'2024-04-02 08:50:52'),(133,'2024-04-02 00:50:52','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放',0,'2024-04-02 08:50:52'),(134,'2024-04-02 00:50:52','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放',0,'2024-04-02 08:50:52'),(135,'2024-04-02 00:50:52','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放',0,'2024-04-02 08:50:52'),(136,'2024-04-02 00:50:52','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放',0,'2024-04-02 08:50:52'),(137,'2024-04-02 00:50:52','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放',0,'2024-04-02 08:50:52'),(138,'2024-04-02 00:50:52','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放',0,'2024-04-02 08:50:52');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `uid` bigint(20) NOT NULL COMMENT '用户ID',
  `fid` bigint(20) NOT NULL COMMENT '好友用户ID',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `alias` varchar(200) DEFAULT NULL COMMENT '别名',
  `type` int(11) DEFAULT '0' COMMENT '类型(0:好友申请，1:好友，2:消息)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='好友表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvshi`
--

DROP TABLE IF EXISTS `lvshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lvshizhanghao` varchar(200) NOT NULL COMMENT '律师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `lvshixingming` varchar(200) NOT NULL COMMENT '律师姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lvshidengji` varchar(200) NOT NULL COMMENT '律师等级',
  `touxiang` longtext COMMENT '头像',
  `zhuanyelingyu` varchar(200) DEFAULT NULL COMMENT '专业领域',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gerenjieshao` longtext COMMENT '个人介绍',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lvshizhanghao` (`lvshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='律师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvshi`
--

LOCK TABLES `lvshi` WRITE;
/*!40000 ALTER TABLE `lvshi` DISABLE KEYS */;
INSERT INTO `lvshi` VALUES (21,'2024-04-02 00:50:52','律师账号1','123456','律师姓名1',1,'男','金牌律师','upload/lvshi_touxiang1.jpg','专业领域1','地区1','13823888881','个人介绍1','是','','2024-04-02 08:50:52',1,1),(22,'2024-04-02 00:50:52','律师账号2','123456','律师姓名2',2,'男','金牌律师','upload/lvshi_touxiang2.jpg','专业领域2','地区2','13823888882','个人介绍2','是','','2024-04-02 08:50:52',2,2),(23,'2024-04-02 00:50:52','律师账号3','123456','律师姓名3',3,'男','金牌律师','upload/lvshi_touxiang3.jpg','专业领域3','地区3','13823888883','个人介绍3','是','','2024-04-02 08:50:52',3,3),(24,'2024-04-02 00:50:52','律师账号4','123456','律师姓名4',4,'男','金牌律师','upload/lvshi_touxiang4.jpg','专业领域4','地区4','13823888884','个人介绍4','是','','2024-04-02 08:50:52',4,4),(25,'2024-04-02 00:50:52','律师账号5','123456','律师姓名5',5,'男','金牌律师','upload/lvshi_touxiang5.jpg','专业领域5','地区5','13823888885','个人介绍5','是','','2024-04-02 08:50:52',5,5),(26,'2024-04-02 00:50:52','律师账号6','123456','律师姓名6',6,'男','金牌律师','upload/lvshi_touxiang6.jpg','专业领域6','地区6','13823888886','个人介绍6','是','','2024-04-02 08:50:52',6,6),(27,'2024-04-02 00:50:52','律师账号7','123456','律师姓名7',7,'男','金牌律师','upload/lvshi_touxiang7.jpg','专业领域7','地区7','13823888887','个人介绍7','是','','2024-04-02 08:50:52',7,7),(28,'2024-04-02 00:50:52','律师账号8','123456','律师姓名8',8,'男','金牌律师','upload/lvshi_touxiang8.jpg','专业领域8','地区8','13823888888','个人介绍8','是','','2024-04-02 08:50:52',8,8);
/*!40000 ALTER TABLE `lvshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'账号1','yonghu','用户','jqm4oqkctwpwugi30qqxk9ssndrq16gf','2024-04-02 01:00:00','2024-04-02 02:00:01');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-04-02 00:50:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2024-04-02 00:50:52','账号1','123456','姓名1','男','13823888881','upload/yonghu_touxiang1.jpg',0),(12,'2024-04-02 00:50:52','账号2','123456','姓名2','男','13823888882','upload/yonghu_touxiang2.jpg',0),(13,'2024-04-02 00:50:52','账号3','123456','姓名3','男','13823888883','upload/yonghu_touxiang3.jpg',0),(14,'2024-04-02 00:50:52','账号4','123456','姓名4','男','13823888884','upload/yonghu_touxiang4.jpg',0),(15,'2024-04-02 00:50:52','账号5','123456','姓名5','男','13823888885','upload/yonghu_touxiang5.jpg',0),(16,'2024-04-02 00:50:52','账号6','123456','姓名6','男','13823888886','upload/yonghu_touxiang6.jpg',0),(17,'2024-04-02 00:50:52','账号7','123456','姓名7','男','13823888887','upload/yonghu_touxiang7.jpg',0),(18,'2024-04-02 00:50:52','账号8','123456','姓名8','男','13823888888','upload/yonghu_touxiang8.jpg',0);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianyuyue`
--

DROP TABLE IF EXISTS `zaixianyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `yuyueyuanyin` longtext NOT NULL COMMENT '预约原因',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `lvshizhanghao` varchar(200) DEFAULT NULL COMMENT '律师账号',
  `lvshixingming` varchar(200) DEFAULT NULL COMMENT '律师姓名',
  `touxiang` longtext COMMENT '头像',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='在线预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianyuyue`
--

LOCK TABLES `zaixianyuyue` WRITE;
/*!40000 ALTER TABLE `zaixianyuyue` DISABLE KEYS */;
INSERT INTO `zaixianyuyue` VALUES (51,'2024-04-02 00:50:52','标题1','预约原因1','2024-04-02 08:50:52','备注1','律师账号1','律师姓名1','upload/zaixianyuyue_touxiang1.jpg,upload/zaixianyuyue_touxiang2.jpg,upload/zaixianyuyue_touxiang3.jpg','账号1','姓名1','手机1','是',''),(52,'2024-04-02 00:50:52','标题2','预约原因2','2024-04-02 08:50:52','备注2','律师账号2','律师姓名2','upload/zaixianyuyue_touxiang2.jpg,upload/zaixianyuyue_touxiang3.jpg,upload/zaixianyuyue_touxiang4.jpg','账号2','姓名2','手机2','是',''),(53,'2024-04-02 00:50:52','标题3','预约原因3','2024-04-02 08:50:52','备注3','律师账号3','律师姓名3','upload/zaixianyuyue_touxiang3.jpg,upload/zaixianyuyue_touxiang4.jpg,upload/zaixianyuyue_touxiang5.jpg','账号3','姓名3','手机3','是',''),(54,'2024-04-02 00:50:52','标题4','预约原因4','2024-04-02 08:50:52','备注4','律师账号4','律师姓名4','upload/zaixianyuyue_touxiang4.jpg,upload/zaixianyuyue_touxiang5.jpg,upload/zaixianyuyue_touxiang6.jpg','账号4','姓名4','手机4','是',''),(55,'2024-04-02 00:50:52','标题5','预约原因5','2024-04-02 08:50:52','备注5','律师账号5','律师姓名5','upload/zaixianyuyue_touxiang5.jpg,upload/zaixianyuyue_touxiang6.jpg,upload/zaixianyuyue_touxiang7.jpg','账号5','姓名5','手机5','是',''),(56,'2024-04-02 00:50:52','标题6','预约原因6','2024-04-02 08:50:52','备注6','律师账号6','律师姓名6','upload/zaixianyuyue_touxiang6.jpg,upload/zaixianyuyue_touxiang7.jpg,upload/zaixianyuyue_touxiang8.jpg','账号6','姓名6','手机6','是',''),(57,'2024-04-02 00:50:52','标题7','预约原因7','2024-04-02 08:50:52','备注7','律师账号7','律师姓名7','upload/zaixianyuyue_touxiang7.jpg,upload/zaixianyuyue_touxiang8.jpg,upload/zaixianyuyue_touxiang9.jpg','账号7','姓名7','手机7','是',''),(58,'2024-04-02 00:50:52','标题8','预约原因8','2024-04-02 08:50:52','备注8','律师账号8','律师姓名8','upload/zaixianyuyue_touxiang8.jpg,upload/zaixianyuyue_touxiang9.jpg,upload/zaixianyuyue_touxiang10.jpg','账号8','姓名8','手机8','是','');
/*!40000 ALTER TABLE `zaixianyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanyelingyu`
--

DROP TABLE IF EXISTS `zhuanyelingyu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanyelingyu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanyelingyu` varchar(200) DEFAULT NULL COMMENT '专业领域',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanyelingyu` (`zhuanyelingyu`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='专业领域';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanyelingyu`
--

LOCK TABLES `zhuanyelingyu` WRITE;
/*!40000 ALTER TABLE `zhuanyelingyu` DISABLE KEYS */;
INSERT INTO `zhuanyelingyu` VALUES (31,'2024-04-02 00:50:52','专业领域1'),(32,'2024-04-02 00:50:52','专业领域2'),(33,'2024-04-02 00:50:52','专业领域3'),(34,'2024-04-02 00:50:52','专业领域4'),(35,'2024-04-02 00:50:52','专业领域5'),(36,'2024-04-02 00:50:52','专业领域6'),(37,'2024-04-02 00:50:52','专业领域7'),(38,'2024-04-02 00:50:52','专业领域8');
/*!40000 ALTER TABLE `zhuanyelingyu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziyuanfenlei`
--

DROP TABLE IF EXISTS `ziyuanfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziyuanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanfenlei` varchar(200) DEFAULT NULL COMMENT '资源分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziyuanfenlei` (`ziyuanfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='资源分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziyuanfenlei`
--

LOCK TABLES `ziyuanfenlei` WRITE;
/*!40000 ALTER TABLE `ziyuanfenlei` DISABLE KEYS */;
INSERT INTO `ziyuanfenlei` VALUES (61,'2024-04-02 00:50:52','资源分类1'),(62,'2024-04-02 00:50:52','资源分类2'),(63,'2024-04-02 00:50:52','资源分类3'),(64,'2024-04-02 00:50:52','资源分类4'),(65,'2024-04-02 00:50:52','资源分类5'),(66,'2024-04-02 00:50:52','资源分类6'),(67,'2024-04-02 00:50:52','资源分类7'),(68,'2024-04-02 00:50:52','资源分类8');
/*!40000 ALTER TABLE `ziyuanfenlei` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18  0:20:54
