-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl96421320
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
-- Current Database: `cl96421320`
--

/*!40000 DROP DATABASE IF EXISTS `cl96421320`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl96421320` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl96421320`;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongxinxi`
--

DROP TABLE IF EXISTS `discusshuodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongxinxi`
--

LOCK TABLES `discusshuodongxinxi` WRITE;
/*!40000 ALTER TABLE `discusshuodongxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusshuodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxiqujumu`
--

DROP TABLE IF EXISTS `discussxiqujumu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxiqujumu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891387186 DEFAULT CHARSET=utf8 COMMENT='戏曲剧目评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxiqujumu`
--

LOCK TABLES `discussxiqujumu` WRITE;
/*!40000 ALTER TABLE `discussxiqujumu` DISABLE KEYS */;
INSERT INTO `discussxiqujumu` VALUES (1712891387185,'2024-04-12 03:09:46',1712891202737,1712891368897,'file/1712891363646.jpeg','123123','啊深V擦DVDVSDVD啊上',NULL);
/*!40000 ALTER TABLE `discussxiqujumu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxiquqingting`
--

DROP TABLE IF EXISTS `discussxiquqingting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxiquqingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891411602 DEFAULT CHARSET=utf8 COMMENT='戏曲倾听评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxiquqingting`
--

LOCK TABLES `discussxiquqingting` WRITE;
/*!40000 ALTER TABLE `discussxiquqingting` DISABLE KEYS */;
INSERT INTO `discussxiquqingting` VALUES (1712891411601,'2024-04-12 03:10:11',1712891237949,1712891368897,'file/1712891363646.jpeg','123123','啊深V啊DVD上班v分三大包',NULL);
/*!40000 ALTER TABLE `discussxiquqingting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxiquzhishi`
--

DROP TABLE IF EXISTS `discussxiquzhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxiquzhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='戏曲知识评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxiquzhishi`
--

LOCK TABLES `discussxiquzhishi` WRITE;
/*!40000 ALTER TABLE `discussxiquzhishi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxiquzhishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baomingbianhao` varchar(200) DEFAULT NULL COMMENT '报名编号',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `huodongdidian` varchar(200) NOT NULL COMMENT '活动地点',
  `lianxirenxingming` varchar(200) DEFAULT NULL COMMENT '联系人姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `renshu` int(11) DEFAULT NULL COMMENT '报名人数',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baomingbianhao` (`baomingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891431649 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (101,'2024-04-12 03:00:07','1111111111','活动名称1','活动地点1','联系人姓名1','联系方式1',1,'2024-04-12 11:00:07','用户账号1','用户姓名1','电话号码1','是','',1,1),(102,'2024-04-12 03:00:07','2222222222','活动名称2','活动地点2','联系人姓名2','联系方式2',2,'2024-04-12 11:00:07','用户账号2','用户姓名2','电话号码2','是','',2,2),(103,'2024-04-12 03:00:07','3333333333','活动名称3','活动地点3','联系人姓名3','联系方式3',3,'2024-04-12 11:00:07','用户账号3','用户姓名3','电话号码3','是','',3,3),(104,'2024-04-12 03:00:07','4444444444','活动名称4','活动地点4','联系人姓名4','联系方式4',4,'2024-04-12 11:00:07','用户账号4','用户姓名4','电话号码4','是','',4,4),(105,'2024-04-12 03:00:07','5555555555','活动名称5','活动地点5','联系人姓名5','联系方式5',5,'2024-04-12 11:00:07','用户账号5','用户姓名5','电话号码5','是','',5,5),(106,'2024-04-12 03:00:07','6666666666','活动名称6','活动地点6','联系人姓名6','联系方式6',6,'2024-04-12 11:00:07','用户账号6','用户姓名6','电话号码6','是','',6,6),(1712891431648,'2024-04-12 03:10:31','1712891437972','戏剧体验','大剧院','张三','13548236595',1,'2024-04-12 11:10:38','123123','李斯','13548235685','是','审核通过',1712891368897,1712891311274);
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `huodongtupian` longtext COMMENT '活动图片',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `lianxirenxingming` varchar(200) DEFAULT NULL COMMENT '联系人姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `renshu` int(11) DEFAULT NULL COMMENT '已报名人数',
  `huodongneirong` longtext COMMENT '活动内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891311275 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (91,'2024-04-12 03:00:07','活动名称1','file/huodongxinxiHuodongtupian1.jpg,file/huodongxinxiHuodongtupian2.jpg,file/huodongxinxiHuodongtupian3.jpg','2024-04-12 11:00:07','2024-04-12 11:00:07','活动地点1','联系人姓名1','19819881111',1,'活动内容1','2024-04-12 11:00:07',1,1,1,1),(92,'2024-04-12 03:00:07','活动名称2','file/huodongxinxiHuodongtupian2.jpg,file/huodongxinxiHuodongtupian3.jpg,file/huodongxinxiHuodongtupian4.jpg','2024-04-12 11:00:07','2024-04-12 11:00:07','活动地点2','联系人姓名2','19819881112',2,'活动内容2','2024-04-12 11:00:07',2,2,2,2),(93,'2024-04-12 03:00:07','活动名称3','file/huodongxinxiHuodongtupian3.jpg,file/huodongxinxiHuodongtupian4.jpg,file/huodongxinxiHuodongtupian5.jpg','2024-04-12 11:00:07','2024-04-12 11:00:07','活动地点3','联系人姓名3','19819881113',3,'活动内容3','2024-04-12 11:00:07',3,3,3,3),(94,'2024-04-12 03:00:07','活动名称4','file/huodongxinxiHuodongtupian4.jpg,file/huodongxinxiHuodongtupian5.jpg,file/huodongxinxiHuodongtupian6.jpg','2024-04-12 11:00:07','2024-04-12 11:00:07','活动地点4','联系人姓名4','19819881114',4,'活动内容4','2024-04-12 11:00:07',4,4,4,4),(95,'2024-04-12 03:00:07','活动名称5','file/huodongxinxiHuodongtupian5.jpg,file/huodongxinxiHuodongtupian6.jpg,file/huodongxinxiHuodongtupian7.jpg','2024-04-12 11:00:07','2024-04-12 11:00:07','活动地点5','联系人姓名5','19819881115',5,'活动内容5','2024-04-12 11:00:07',5,5,5,5),(96,'2024-04-12 03:00:07','活动名称6','file/huodongxinxiHuodongtupian6.jpg,file/huodongxinxiHuodongtupian7.jpg,file/huodongxinxiHuodongtupian8.jpg','2024-04-12 11:00:07','2024-04-12 11:00:07','活动地点6','联系人姓名6','19819881116',6,'活动内容6','2024-04-12 11:00:07',6,6,6,6),(1712891311274,'2024-04-12 03:08:30','戏剧体验','file/1712891281623.png','2024-04-13 16:07:00','2024-04-13 19:00:00','大剧院','张三','13548236595',1,'<p>啊深V大VSDVD是VB是对吧山东</p>','2024-04-12 11:08:03',1,0,0,2);
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-12 03:00:07','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user5\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common2\",\"menu\":\"管理员管理\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"戏曲分类\",\"menuJump\":\"列表\",\"tableName\":\"xiqufenlei\"},{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"戏曲剧目\",\"menuJump\":\"列表\",\"tableName\":\"xiqujumu\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"戏曲倾听\",\"menuJump\":\"列表\",\"tableName\":\"xiquqingting\"}],\"fontClass\":\"icon-common24\",\"menu\":\"戏曲剧目管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"戏曲知识\",\"menuJump\":\"列表\",\"tableName\":\"xiquzhishi\"}],\"fontClass\":\"icon-common47\",\"menu\":\"戏曲知识管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"活动信息\",\"menuJump\":\"列表\",\"tableName\":\"huodongxinxi\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"活动报名\",\"menuJump\":\"列表\",\"tableName\":\"huodongbaoming\"}],\"fontClass\":\"icon-common40\",\"menu\":\"活动信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common42\",\"menu\":\"系统管理\",\"unicode\":\"&#xef24;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common1\",\"menu\":\"戏曲剧目\",\"menuJump\":\"列表\",\"tableName\":\"xiqujumu\",\"unicode\":\"&#xeda3;\"}],\"fontClass\":\"icon-common1\",\"menu\":\"戏曲剧目\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common3\",\"menu\":\"戏曲倾听\",\"menuJump\":\"列表\",\"tableName\":\"xiquqingting\",\"unicode\":\"&#xeda5;\"}],\"fontClass\":\"icon-common3\",\"menu\":\"戏曲倾听\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common9\",\"menu\":\"戏曲知识\",\"menuJump\":\"列表\",\"tableName\":\"xiquzhishi\",\"unicode\":\"&#xedc9;\"}],\"fontClass\":\"icon-common9\",\"menu\":\"戏曲知识\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"查看评论\",\"报名\"],\"fontClass\":\"icon-common32\",\"menu\":\"活动信息\",\"menuJump\":\"列表\",\"tableName\":\"huodongxinxi\",\"unicode\":\"&#xee66;\"}],\"fontClass\":\"icon-common32\",\"menu\":\"活动信息\",\"unicode\":\"&#xee66;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common44\",\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xef28;\"}],\"fontClass\":\"icon-common44\",\"menu\":\"系统公告\",\"unicode\":\"&#xef28;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"活动报名\",\"menuJump\":\"列表\",\"tableName\":\"huodongbaoming\"}],\"fontClass\":\"icon-common40\",\"menu\":\"活动信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common10\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedd1;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common1\",\"menu\":\"戏曲剧目\",\"menuJump\":\"列表\",\"tableName\":\"xiqujumu\",\"unicode\":\"&#xeda3;\"}],\"fontClass\":\"icon-common1\",\"menu\":\"戏曲剧目\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common3\",\"menu\":\"戏曲倾听\",\"menuJump\":\"列表\",\"tableName\":\"xiquqingting\",\"unicode\":\"&#xeda5;\"}],\"fontClass\":\"icon-common3\",\"menu\":\"戏曲倾听\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common9\",\"menu\":\"戏曲知识\",\"menuJump\":\"列表\",\"tableName\":\"xiquzhishi\",\"unicode\":\"&#xedc9;\"}],\"fontClass\":\"icon-common9\",\"menu\":\"戏曲知识\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"查看评论\",\"报名\"],\"fontClass\":\"icon-common32\",\"menu\":\"活动信息\",\"menuJump\":\"列表\",\"tableName\":\"huodongxinxi\",\"unicode\":\"&#xee66;\"}],\"fontClass\":\"icon-common32\",\"menu\":\"活动信息\",\"unicode\":\"&#xee66;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common44\",\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xef28;\"}],\"fontClass\":\"icon-common44\",\"menu\":\"系统公告\",\"unicode\":\"&#xef28;\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891331398 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2024-04-12 03:00:07','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(112,'2024-04-12 03:00:07','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(113,'2024-04-12 03:00:07','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(114,'2024-04-12 03:00:07','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(115,'2024-04-12 03:00:07','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(116,'2024-04-12 03:00:07','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。'),(1712891331397,'2024-04-12 03:08:51','阿石创v大VS的VB是代发吧','啊深V大深V收到不舒服的不发达办法手打','file/1712891325428.png','<p>阿是DVD上班发生的不发达不拿都发不你发到哪表达法</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891425984 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1712891382320,'2024-04-12 03:09:42',1712891202737,'xiqujumu','黄梅戏','file/1712891185125.png','21',NULL,NULL,1712891368897),(1712891391291,'2024-04-12 03:09:51',1712891202737,'xiqujumu','黄梅戏','file/1712891185125.png','1','黄梅戏',NULL,1712891368897),(1712891397293,'2024-04-12 03:09:57',1712891237949,'xiquqingting','开封有个包青天','file/1712891215357.png','1','开封有个包青天',NULL,1712891368897),(1712891407214,'2024-04-12 03:10:06',1712891237949,'xiquqingting','开封有个包青天','file/1712891215357.png','21',NULL,NULL,1712891368897),(1712891420753,'2024-04-12 03:10:19',1712891267963,'xiquzhishi','戏曲知识','file/1712891254242.png','21',NULL,NULL,1712891368897),(1712891421556,'2024-04-12 03:10:21',1712891267963,'xiquzhishi','戏曲知识','file/1712891254242.png','1','戏曲知识',NULL,1712891368897),(1712891425983,'2024-04-12 03:10:25',1712891311274,'huodongxinxi','戏剧体验','file/1712891281623.png','1',NULL,NULL,1712891368897);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','2n99xv0fy5xphfabii8lkpq7cbdr5m16','2024-04-12 03:04:53','2024-04-12 04:04:53'),(2,1712891368897,'123123','yonghu','用户','sqsvy84qr2zx26b0j4a0lvrwzw7r9f1x','2024-04-12 03:09:32','2024-04-12 04:09:33');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-12 03:00:07','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiqufenlei`
--

DROP TABLE IF EXISTS `xiqufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiqufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiqufenlei` varchar(200) DEFAULT NULL COMMENT '戏曲分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891109029 DEFAULT CHARSET=utf8 COMMENT='戏曲分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiqufenlei`
--

LOCK TABLES `xiqufenlei` WRITE;
/*!40000 ALTER TABLE `xiqufenlei` DISABLE KEYS */;
INSERT INTO `xiqufenlei` VALUES (41,'2024-04-12 03:00:06','戏曲分类1'),(42,'2024-04-12 03:00:06','戏曲分类2'),(43,'2024-04-12 03:00:06','戏曲分类3'),(44,'2024-04-12 03:00:06','戏曲分类4'),(45,'2024-04-12 03:00:06','戏曲分类5'),(46,'2024-04-12 03:00:06','戏曲分类6'),(1712891109028,'2024-04-12 03:05:09','越剧');
/*!40000 ALTER TABLE `xiqufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiqujumu`
--

DROP TABLE IF EXISTS `xiqujumu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiqujumu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiqumingcheng` varchar(200) NOT NULL COMMENT '戏曲名称',
  `tupian` longtext NOT NULL COMMENT '图片',
  `xiqufenlei` varchar(200) DEFAULT NULL COMMENT '戏曲分类',
  `yishujia` varchar(200) DEFAULT NULL COMMENT '艺术家',
  `xiqujieshao` longtext COMMENT '戏曲介绍',
  `shipin` longtext NOT NULL COMMENT '视频',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891202738 DEFAULT CHARSET=utf8 COMMENT='戏曲剧目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiqujumu`
--

LOCK TABLES `xiqujumu` WRITE;
/*!40000 ALTER TABLE `xiqujumu` DISABLE KEYS */;
INSERT INTO `xiqujumu` VALUES (51,'2024-04-12 03:00:06','戏曲名称1','file/xiqujumuTupian1.jpg,file/xiqujumuTupian2.jpg,file/xiqujumuTupian3.jpg','戏曲分类1','艺术家1','戏曲介绍1','',1,'2024-04-12 11:00:06',1,1),(52,'2024-04-12 03:00:06','戏曲名称2','file/xiqujumuTupian2.jpg,file/xiqujumuTupian3.jpg,file/xiqujumuTupian4.jpg','戏曲分类2','艺术家2','戏曲介绍2','',2,'2024-04-12 11:00:06',2,2),(53,'2024-04-12 03:00:06','戏曲名称3','file/xiqujumuTupian3.jpg,file/xiqujumuTupian4.jpg,file/xiqujumuTupian5.jpg','戏曲分类3','艺术家3','戏曲介绍3','',3,'2024-04-12 11:00:06',3,3),(54,'2024-04-12 03:00:06','戏曲名称4','file/xiqujumuTupian4.jpg,file/xiqujumuTupian5.jpg,file/xiqujumuTupian6.jpg','戏曲分类4','艺术家4','戏曲介绍4','',4,'2024-04-12 11:00:06',4,4),(55,'2024-04-12 03:00:06','戏曲名称5','file/xiqujumuTupian5.jpg,file/xiqujumuTupian6.jpg,file/xiqujumuTupian7.jpg','戏曲分类5','艺术家5','戏曲介绍5','',5,'2024-04-12 11:00:06',5,5),(56,'2024-04-12 03:00:06','戏曲名称6','file/xiqujumuTupian6.jpg,file/xiqujumuTupian7.jpg,file/xiqujumuTupian8.jpg','戏曲分类6','艺术家6','戏曲介绍6','',6,'2024-04-12 11:00:06',6,6),(1712891202737,'2024-04-12 03:06:42','黄梅戏','file/1712891185125.png','越剧','行啊塞擦声吃撒','阿石创v大v都是不发生不发达不发达','file/1712891199120.mp4',1,'2024-04-12 11:09:37',1,0);
/*!40000 ALTER TABLE `xiqujumu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiquqingting`
--

DROP TABLE IF EXISTS `xiquqingting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiquqingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengmian` longtext COMMENT '封面',
  `songname` varchar(200) NOT NULL COMMENT '戏曲名称',
  `songfile` longtext NOT NULL COMMENT '戏曲文件',
  `singer` varchar(200) NOT NULL COMMENT '艺术家',
  `xiqujieshao` longtext COMMENT '戏曲介绍',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891237950 DEFAULT CHARSET=utf8 COMMENT='戏曲倾听';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiquqingting`
--

LOCK TABLES `xiquqingting` WRITE;
/*!40000 ALTER TABLE `xiquqingting` DISABLE KEYS */;
INSERT INTO `xiquqingting` VALUES (71,'2024-04-12 03:00:06','file/xiquqingtingFengmian1.jpg,file/xiquqingtingFengmian2.jpg,file/xiquqingtingFengmian3.jpg','戏曲名称1','','艺术家1','戏曲介绍1','2024-04-12 11:00:06',1,1,1,'2024-04-12 11:00:06'),(72,'2024-04-12 03:00:06','file/xiquqingtingFengmian2.jpg,file/xiquqingtingFengmian3.jpg,file/xiquqingtingFengmian4.jpg','戏曲名称2','','艺术家2','戏曲介绍2','2024-04-12 11:00:06',2,2,2,'2024-04-12 11:00:06'),(73,'2024-04-12 03:00:06','file/xiquqingtingFengmian3.jpg,file/xiquqingtingFengmian4.jpg,file/xiquqingtingFengmian5.jpg','戏曲名称3','','艺术家3','戏曲介绍3','2024-04-12 11:00:06',3,3,3,'2024-04-12 11:00:06'),(74,'2024-04-12 03:00:06','file/xiquqingtingFengmian4.jpg,file/xiquqingtingFengmian5.jpg,file/xiquqingtingFengmian6.jpg','戏曲名称4','','艺术家4','戏曲介绍4','2024-04-12 11:00:06',4,4,4,'2024-04-12 11:00:06'),(75,'2024-04-12 03:00:06','file/xiquqingtingFengmian5.jpg,file/xiquqingtingFengmian6.jpg,file/xiquqingtingFengmian7.jpg','戏曲名称5','','艺术家5','戏曲介绍5','2024-04-12 11:00:06',5,5,5,'2024-04-12 11:00:06'),(76,'2024-04-12 03:00:06','file/xiquqingtingFengmian6.jpg,file/xiquqingtingFengmian7.jpg,file/xiquqingtingFengmian8.jpg','戏曲名称6','','艺术家6','戏曲介绍6','2024-04-12 11:00:06',6,6,6,'2024-04-12 11:00:06'),(1712891237949,'2024-04-12 03:07:17','file/1712891215357.png','开封有个包青天','file/1712891233137.mp3','啊深V大v的VS的','啊啊大深V都是不得分你发干嘛呐合法吗和','2024-04-12 11:06:58',1,0,1,'2024-04-12 11:09:56');
/*!40000 ALTER TABLE `xiquqingting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiquzhishi`
--

DROP TABLE IF EXISTS `xiquzhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiquzhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` longtext COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891267964 DEFAULT CHARSET=utf8 COMMENT='戏曲知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiquzhishi`
--

LOCK TABLES `xiquzhishi` WRITE;
/*!40000 ALTER TABLE `xiquzhishi` DISABLE KEYS */;
INSERT INTO `xiquzhishi` VALUES (81,'2024-04-12 03:00:06','标题1','file/xiquzhishiFengmian1.jpg,file/xiquzhishiFengmian2.jpg,file/xiquzhishiFengmian3.jpg','内容1','2024-04-12 11:00:06',1,1,1,'2024-04-12 11:00:06'),(82,'2024-04-12 03:00:06','标题2','file/xiquzhishiFengmian2.jpg,file/xiquzhishiFengmian3.jpg,file/xiquzhishiFengmian4.jpg','内容2','2024-04-12 11:00:06',2,2,2,'2024-04-12 11:00:06'),(83,'2024-04-12 03:00:07','标题3','file/xiquzhishiFengmian3.jpg,file/xiquzhishiFengmian4.jpg,file/xiquzhishiFengmian5.jpg','内容3','2024-04-12 11:00:07',3,3,3,'2024-04-12 11:00:07'),(84,'2024-04-12 03:00:07','标题4','file/xiquzhishiFengmian4.jpg,file/xiquzhishiFengmian5.jpg,file/xiquzhishiFengmian6.jpg','内容4','2024-04-12 11:00:07',4,4,4,'2024-04-12 11:00:07'),(85,'2024-04-12 03:00:07','标题5','file/xiquzhishiFengmian5.jpg,file/xiquzhishiFengmian6.jpg,file/xiquzhishiFengmian7.jpg','内容5','2024-04-12 11:00:07',5,5,5,'2024-04-12 11:00:07'),(86,'2024-04-12 03:00:07','标题6','file/xiquzhishiFengmian6.jpg,file/xiquzhishiFengmian7.jpg,file/xiquzhishiFengmian8.jpg','内容6','2024-04-12 11:00:07',6,6,6,'2024-04-12 11:00:07'),(1712891267963,'2024-04-12 03:07:47','戏曲知识','file/1712891254242.png','<p>戏曲知识戏曲知识戏曲知识戏曲知识戏曲知识戏曲知识戏曲知识戏曲知识戏曲知识戏曲知识vv</p>','2024-04-12 11:07:33',1,0,1,'2024-04-12 11:10:18');
/*!40000 ALTER TABLE `xiquzhishi` ENABLE KEYS */;
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
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712891368898 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-04-12 03:00:06','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(32,'2024-04-12 03:00:06','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(33,'2024-04-12 03:00:06','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(34,'2024-04-12 03:00:06','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(35,'2024-04-12 03:00:06','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(36,'2024-04-12 03:00:06','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116'),(1712891368897,'2024-04-12 03:09:28','123123','123456','李斯','file/1712891363646.jpeg','男','13548235685');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-15  8:34:45
