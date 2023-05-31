-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm8sh42
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-06 04:53:19',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-06 04:53:19',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-06 04:53:19',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-06 04:53:19',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-06 04:53:19',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-06 04:53:19',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kafeixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='客服咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-06 04:53:19',1,1,'提问1','回复1',1),(52,'2021-03-06 04:53:19',2,2,'提问2','回复2',2),(53,'2021-03-06 04:53:19',3,3,'提问3','回复3',3),(54,'2021-03-06 04:53:19',4,4,'提问4','回复4',4),(55,'2021-03-06 04:53:19',5,5,'提问5','回复5',5),(56,'2021-03-06 04:53:19',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm8sh42/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm8sh42/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm8sh42/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kafeileixing`
--

DROP TABLE IF EXISTS `kafeileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kafeileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kafeileixing` varchar(200) NOT NULL COMMENT '咖啡类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='咖啡类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kafeileixing`
--

LOCK TABLES `kafeileixing` WRITE;
/*!40000 ALTER TABLE `kafeileixing` DISABLE KEYS */;
INSERT INTO `kafeileixing` VALUES (31,'2021-03-06 04:53:19','咖啡类型1'),(32,'2021-03-06 04:53:19','咖啡类型2'),(33,'2021-03-06 04:53:19','咖啡类型3'),(34,'2021-03-06 04:53:19','咖啡类型4'),(35,'2021-03-06 04:53:19','咖啡类型5'),(36,'2021-03-06 04:53:19','咖啡类型6');
/*!40000 ALTER TABLE `kafeileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kafeixinxi`
--

DROP TABLE IF EXISTS `kafeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kafeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kafeimingcheng` varchar(200) DEFAULT NULL COMMENT '咖啡名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kafeileixing` varchar(200) DEFAULT NULL COMMENT '咖啡类型',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `kafeixiangqing` longtext COMMENT '咖啡详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='咖啡信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kafeixinxi`
--

LOCK TABLES `kafeixinxi` WRITE;
/*!40000 ALTER TABLE `kafeixinxi` DISABLE KEYS */;
INSERT INTO `kafeixinxi` VALUES (41,'2021-03-06 04:53:19','咖啡名称1','http://localhost:8080/jspm8sh42/upload/kafeixinxi_tupian1.jpg','咖啡类型1','产地1',1,'咖啡详情1','2021-03-06 12:53:19',1,99.9),(42,'2021-03-06 04:53:19','咖啡名称2','http://localhost:8080/jspm8sh42/upload/kafeixinxi_tupian2.jpg','咖啡类型2','产地2',2,'咖啡详情2','2021-03-06 12:53:19',2,99.9),(43,'2021-03-06 04:53:19','咖啡名称3','http://localhost:8080/jspm8sh42/upload/kafeixinxi_tupian3.jpg','咖啡类型3','产地3',3,'咖啡详情3','2021-03-06 12:53:19',3,99.9),(44,'2021-03-06 04:53:19','咖啡名称4','http://localhost:8080/jspm8sh42/upload/kafeixinxi_tupian4.jpg','咖啡类型4','产地4',4,'咖啡详情4','2021-03-06 12:53:19',4,99.9),(45,'2021-03-06 04:53:19','咖啡名称5','http://localhost:8080/jspm8sh42/upload/kafeixinxi_tupian5.jpg','咖啡类型5','产地5',5,'咖啡详情5','2021-03-06 12:53:19',5,99.9),(46,'2021-03-06 04:53:19','咖啡名称6','http://localhost:8080/jspm8sh42/upload/kafeixinxi_tupian6.jpg','咖啡类型6','产地6',6,'咖啡详情6','2021-03-06 12:53:19',6,99.9);
/*!40000 ALTER TABLE `kafeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehu`
--

DROP TABLE IF EXISTS `kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehuhao` varchar(200) NOT NULL COMMENT '客户号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `kehuxingming` varchar(200) NOT NULL COMMENT '客户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehuhao` (`kehuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615006662282 DEFAULT CHARSET=utf8 COMMENT='客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehu`
--

LOCK TABLES `kehu` WRITE;
/*!40000 ALTER TABLE `kehu` DISABLE KEYS */;
INSERT INTO `kehu` VALUES (11,'2021-03-06 04:53:19','客户1','123456','客户姓名1','http://localhost:8080/jspm8sh42/upload/kehu_touxiang1.jpg','男','13823888881','773890001@qq.com',100),(12,'2021-03-06 04:53:19','客户2','123456','客户姓名2','http://localhost:8080/jspm8sh42/upload/kehu_touxiang2.jpg','男','13823888882','773890002@qq.com',100),(13,'2021-03-06 04:53:19','客户3','123456','客户姓名3','http://localhost:8080/jspm8sh42/upload/kehu_touxiang3.jpg','男','13823888883','773890003@qq.com',100),(14,'2021-03-06 04:53:19','客户4','123456','客户姓名4','http://localhost:8080/jspm8sh42/upload/kehu_touxiang4.jpg','男','13823888884','773890004@qq.com',100),(15,'2021-03-06 04:53:19','客户5','123456','客户姓名5','http://localhost:8080/jspm8sh42/upload/kehu_touxiang5.jpg','男','13823888885','773890005@qq.com',100),(16,'2021-03-06 04:53:19','客户6','123456','客户姓名6','http://localhost:8080/jspm8sh42/upload/kehu_touxiang6.jpg','男','13823888886','773890006@qq.com',100),(1615006662281,'2021-03-06 04:57:42','22','123456','杨小姐',NULL,NULL,'13823866666','',0);
/*!40000 ALTER TABLE `kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kafeixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','sa7dmj9ayw0mm26e98t2etfjctel1bk1','2021-03-06 04:54:50','2021-03-06 05:54:50'),(2,1615006662281,'22','kehu','客户','3iyae5d7chjkoqd14fvmelknr9df3e1x','2021-03-06 04:57:52','2021-03-06 05:57:52');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-06 04:53:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2021-03-06 04:53:19','员工1','123456','员工姓名1','http://localhost:8080/jspm8sh42/upload/yuangong_touxiang1.jpg','男','13823888881','773890001@qq.com',100),(22,'2021-03-06 04:53:19','员工2','123456','员工姓名2','http://localhost:8080/jspm8sh42/upload/yuangong_touxiang2.jpg','男','13823888882','773890002@qq.com',100),(23,'2021-03-06 04:53:19','员工3','123456','员工姓名3','http://localhost:8080/jspm8sh42/upload/yuangong_touxiang3.jpg','男','13823888883','773890003@qq.com',100),(24,'2021-03-06 04:53:19','员工4','123456','员工姓名4','http://localhost:8080/jspm8sh42/upload/yuangong_touxiang4.jpg','男','13823888884','773890004@qq.com',100),(25,'2021-03-06 04:53:19','员工5','123456','员工姓名5','http://localhost:8080/jspm8sh42/upload/yuangong_touxiang5.jpg','男','13823888885','773890005@qq.com',100),(26,'2021-03-06 04:53:19','员工6','123456','员工姓名6','http://localhost:8080/jspm8sh42/upload/yuangong_touxiang6.jpg','男','13823888886','773890006@qq.com',100);
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 16:50:28
