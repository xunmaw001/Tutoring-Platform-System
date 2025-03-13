-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmrsvl9
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmrsvl9/upload/1616295937930.png'),(2,'picture2','http://localhost:8080/ssmrsvl9/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmrsvl9/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295757011 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (22,'2021-03-21 02:50:41','教师2','123456','教师姓名2','年龄2','男','专业2','学历2','13823888882','773890002@qq.com','http://localhost:8080/ssmrsvl9/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-03-21 02:50:41','教师3','123456','教师姓名3','年龄3','男','专业3','学历3','13823888883','773890003@qq.com','http://localhost:8080/ssmrsvl9/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-03-21 02:50:41','教师4','123456','教师姓名4','年龄4','男','专业4','学历4','13823888884','773890004@qq.com','http://localhost:8080/ssmrsvl9/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-03-21 02:50:41','教师5','123456','教师姓名5','年龄5','男','专业5','学历5','13823888885','773890005@qq.com','http://localhost:8080/ssmrsvl9/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-03-21 02:50:41','教师6','123456','教师姓名6','年龄6','男','专业6','学历6','13823888886','773890006@qq.com','http://localhost:8080/ssmrsvl9/upload/jiaoshi_zhaopian6.jpg'),(1616295645501,'2021-03-21 03:00:45','水电费','333','第三方','33','男','水电费','水电费','11222233333','33@qq.com','http://localhost:8080/ssmrsvl9/upload/1616295644821.png'),(1616295757010,'2021-03-21 03:02:37','2','2','水电费删掉','12','男','大奥德赛','水电费','12311122222','44@qq.com','http://localhost:8080/ssmrsvl9/upload/1616295766445.png');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshijianli`
--

DROP TABLE IF EXISTS `jiaoshijianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshijianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `gongzuojingli` longtext COMMENT '工作经历',
  `gerentezhang` longtext COMMENT '个人特长',
  `qiwangxinzi` int(11) DEFAULT NULL COMMENT '期望薪资',
  `jiaoyubeijing` varchar(200) DEFAULT NULL COMMENT '教育背景',
  `huojiangzhengshu` varchar(200) DEFAULT NULL COMMENT '获奖证书',
  `biyexuexiao` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `xiangxineirong` longtext COMMENT '详细内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295793703 DEFAULT CHARSET=utf8 COMMENT='教师简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshijianli`
--

LOCK TABLES `jiaoshijianli` WRITE;
/*!40000 ALTER TABLE `jiaoshijianli` DISABLE KEYS */;
INSERT INTO `jiaoshijianli` VALUES (31,'2021-03-21 02:50:41','教师工号1','教师姓名1','专业1','学历1','性别1','http://localhost:8080/ssmrsvl9/upload/jiaoshijianli_zhaopian1.jpg','2021-03-21','工作经历1','个人特长1',1,'教育背景1','获奖证书1','毕业学校1','详细内容1'),(32,'2021-03-21 02:50:41','教师工号2','教师姓名2','专业2','学历2','性别2','http://localhost:8080/ssmrsvl9/upload/jiaoshijianli_zhaopian2.jpg','2021-03-21','工作经历2','个人特长2',2,'教育背景2','获奖证书2','毕业学校2','详细内容2'),(33,'2021-03-21 02:50:41','教师工号3','教师姓名3','专业3','学历3','性别3','http://localhost:8080/ssmrsvl9/upload/jiaoshijianli_zhaopian3.jpg','2021-03-21','工作经历3','个人特长3',3,'教育背景3','获奖证书3','毕业学校3','详细内容3'),(34,'2021-03-21 02:50:41','教师工号4','教师姓名4','专业4','学历4','性别4','http://localhost:8080/ssmrsvl9/upload/jiaoshijianli_zhaopian4.jpg','2021-03-21','工作经历4','个人特长4',4,'教育背景4','获奖证书4','毕业学校4','详细内容4'),(35,'2021-03-21 02:50:41','教师工号5','教师姓名5','专业5','学历5','性别5','http://localhost:8080/ssmrsvl9/upload/jiaoshijianli_zhaopian5.jpg','2021-03-21','工作经历5','个人特长5',5,'教育背景5','获奖证书5','毕业学校5','详细内容5'),(36,'2021-03-21 02:50:41','教师工号6','教师姓名6','专业6','学历6','性别6','http://localhost:8080/ssmrsvl9/upload/jiaoshijianli_zhaopian6.jpg','2021-03-21','工作经历6','个人特长6',6,'教育背景6','获奖证书6','毕业学校6','详细内容6'),(1616295793702,'2021-03-21 03:03:13','2','水电费删掉','大奥德赛','水电费','男','http://localhost:8080/ssmrsvl9/upload/1616295780166.png','2021-03-18','跟电饭锅地方跟','电饭锅的给对方g',2500,'大范甘迪梵蒂冈','电饭锅的g','电饭锅地方gdf','<p>电饭锅的电饭锅的电饭锅</p>');
/*!40000 ALTER TABLE `jiaoshijianli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshishenqing`
--

DROP TABLE IF EXISTS `jiaoshishenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `shenqingyuanyin` longtext COMMENT '申请原因',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295716874 DEFAULT CHARSET=utf8 COMMENT='教师申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshishenqing`
--

LOCK TABLES `jiaoshishenqing` WRITE;
/*!40000 ALTER TABLE `jiaoshishenqing` DISABLE KEYS */;
INSERT INTO `jiaoshishenqing` VALUES (41,'2021-03-21 02:50:41','账号1','姓名1','标题1','内容1','申请原因1','2021-03-21','是',''),(42,'2021-03-21 02:50:41','账号2','姓名2','标题2','内容2','申请原因2','2021-03-21','是',''),(43,'2021-03-21 02:50:41','账号3','姓名3','标题3','内容3','申请原因3','2021-03-21','是',''),(44,'2021-03-21 02:50:41','账号4','姓名4','标题4','内容4','申请原因4','2021-03-21','是',''),(45,'2021-03-21 02:50:41','账号5','姓名5','标题5','内容5','申请原因5','2021-03-21','是',''),(46,'2021-03-21 02:50:41','账号6','姓名6','标题6','内容6','申请原因6','2021-03-21','是',''),(1616295716873,'2021-03-21 03:01:56','1','阿达','递四方速递f','<p>删掉水电费删掉</p><p><img src=\"http://localhost:8080/ssmrsvl9/upload/1616295712759.png\"><img src=\"http://localhost:8080/ssmrsvl9/upload/1616295715624.png\"></p>','辅导书的发顺丰都是水电费','2021-03-16','是','同意电风扇都是水电费');
/*!40000 ALTER TABLE `jiaoshishenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `kechengneirong` longtext COMMENT '课程内容',
  `kechengrenwu` longtext COMMENT '课程任务',
  `kechengtedian` longtext COMMENT '课程特点',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295811055 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (51,'2021-03-21 02:50:41','课程编号1','课程名称1','课时1','2021-03-21','课程内容1','课程任务1','课程特点1','教师工号1','教师姓名1','http://localhost:8080/ssmrsvl9/upload/kechengxinxi_tupian1.jpg','2021-03-21 10:50:41',1),(52,'2021-03-21 02:50:41','课程编号2','课程名称2','课时2','2021-03-21','课程内容2','课程任务2','课程特点2','教师工号2','教师姓名2','http://localhost:8080/ssmrsvl9/upload/kechengxinxi_tupian2.jpg','2021-03-21 10:50:41',2),(53,'2021-03-21 02:50:41','课程编号3','课程名称3','课时3','2021-03-21','课程内容3','课程任务3','课程特点3','教师工号3','教师姓名3','http://localhost:8080/ssmrsvl9/upload/kechengxinxi_tupian3.jpg','2021-03-21 10:50:41',3),(54,'2021-03-21 02:50:41','课程编号4','课程名称4','课时4','2021-03-21','课程内容4','课程任务4','课程特点4','教师工号4','教师姓名4','http://localhost:8080/ssmrsvl9/upload/kechengxinxi_tupian4.jpg','2021-03-21 10:50:41',4),(55,'2021-03-21 02:50:41','课程编号5','课程名称5','课时5','2021-03-21','课程内容5','课程任务5','课程特点5','教师工号5','教师姓名5','http://localhost:8080/ssmrsvl9/upload/kechengxinxi_tupian5.jpg','2021-03-21 10:50:41',5),(56,'2021-03-21 02:50:41','课程编号6','课程名称6','课时6','2021-03-21','课程内容6','课程任务6','课程特点6','教师工号6','教师姓名6','http://localhost:8080/ssmrsvl9/upload/kechengxinxi_tupian6.jpg','2021-03-21 11:04:25',8),(1616295811054,'2021-03-21 03:03:30','1616295772001','电工电饭锅','地方给对方','2021-03-21','发过的地方gdf','跟电饭锅地方跟','电饭锅的儿童地方g','2','水电费删掉','http://localhost:8080/ssmrsvl9/upload/1616295805685.png','2021-03-21 11:06:59',3);
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295930553 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-03-21 02:50:41','标题1','简介1','http://localhost:8080/ssmrsvl9/upload/news_picture1.jpg','内容1'),(92,'2021-03-21 02:50:41','标题2','简介2','http://localhost:8080/ssmrsvl9/upload/news_picture2.jpg','内容2'),(93,'2021-03-21 02:50:41','标题3','简介3','http://localhost:8080/ssmrsvl9/upload/news_picture3.jpg','内容3'),(94,'2021-03-21 02:50:41','标题4','简介4','http://localhost:8080/ssmrsvl9/upload/news_picture4.jpg','内容4'),(95,'2021-03-21 02:50:41','标题5','简介5','http://localhost:8080/ssmrsvl9/upload/news_picture5.jpg','内容5'),(96,'2021-03-21 02:50:41','标题6','简介6','http://localhost:8080/ssmrsvl9/upload/news_picture6.jpg','内容6'),(1616295930552,'2021-03-21 03:05:29','撒旦法','胜多负少dfsd','http://localhost:8080/ssmrsvl9/upload/1616295923393.png','<p> 水电费删掉水电费删掉<img src=\"http://localhost:8080/ssmrsvl9/upload/1616295927834.JPEG\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','4lgs7zdtvwevdkmwa1zjd0igr34is46p','2021-03-21 02:59:45','2021-03-21 04:27:27'),(2,1616295681705,'1','yonghu','用户','jnje8lx869vqzv2slzay8rdimcq4m6qb','2021-03-21 03:01:27','2021-03-21 04:16:59'),(3,1616295757010,'2','jiaoshi','教师','aqs6x7o0q6l9hayl0ecnm062726qrxww','2021-03-21 03:02:42','2021-03-21 04:07:45');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-21 02:50:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingpinzhiwei`
--

DROP TABLE IF EXISTS `yingpinzhiwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingpinzhiwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yingpinshijian` date DEFAULT NULL COMMENT '应聘时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295896985 DEFAULT CHARSET=utf8 COMMENT='应聘职位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingpinzhiwei`
--

LOCK TABLES `yingpinzhiwei` WRITE;
/*!40000 ALTER TABLE `yingpinzhiwei` DISABLE KEYS */;
INSERT INTO `yingpinzhiwei` VALUES (71,'2021-03-21 02:50:41','编号1','名称1','职位1','账号1','姓名1','2021-03-21','教师工号1','教师姓名1','手机1','是',''),(72,'2021-03-21 02:50:41','编号2','名称2','职位2','账号2','姓名2','2021-03-21','教师工号2','教师姓名2','手机2','是',''),(73,'2021-03-21 02:50:41','编号3','名称3','职位3','账号3','姓名3','2021-03-21','教师工号3','教师姓名3','手机3','是',''),(74,'2021-03-21 02:50:41','编号4','名称4','职位4','账号4','姓名4','2021-03-21','教师工号4','教师姓名4','手机4','是',''),(75,'2021-03-21 02:50:41','编号5','名称5','职位5','账号5','姓名5','2021-03-21','教师工号5','教师姓名5','手机5','是',''),(76,'2021-03-21 02:50:41','编号6','名称6','职位6','账号6','姓名6','2021-03-21','教师工号6','教师姓名6','手机6','是',''),(1616295896984,'2021-03-21 03:04:56','1616295693993','额水电费','大幅度','1','阿达','2021-03-21','2','水电费删掉','12311122222','是','可以过来8888888888');
/*!40000 ALTER TABLE `yingpinzhiwei` ENABLE KEYS */;
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
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295681706 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-21 02:50:41','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmrsvl9/upload/yonghu_zhaopian1.jpg','地址1'),(12,'2021-03-21 02:50:41','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmrsvl9/upload/yonghu_zhaopian2.jpg','地址2'),(13,'2021-03-21 02:50:41','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmrsvl9/upload/yonghu_zhaopian3.jpg','地址3'),(14,'2021-03-21 02:50:41','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmrsvl9/upload/yonghu_zhaopian4.jpg','地址4'),(15,'2021-03-21 02:50:41','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmrsvl9/upload/yonghu_zhaopian5.jpg','地址5'),(16,'2021-03-21 02:50:41','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmrsvl9/upload/yonghu_zhaopian6.jpg','地址6'),(1616295681705,'2021-03-21 03:01:21','1','abo','阿达','女','11122212111','11@qq.com','http://localhost:8080/ssmrsvl9/upload/1616295693697.png','防守打法水电费');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghupingjia`
--

DROP TABLE IF EXISTS `yonghupingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `fuwupingjia` varchar(200) DEFAULT NULL COMMENT '服务评价',
  `fuwudafen` varchar(200) DEFAULT NULL COMMENT '服务打分',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295989789 DEFAULT CHARSET=utf8 COMMENT='用户评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghupingjia`
--

LOCK TABLES `yonghupingjia` WRITE;
/*!40000 ALTER TABLE `yonghupingjia` DISABLE KEYS */;
INSERT INTO `yonghupingjia` VALUES (81,'2021-03-21 02:50:41','编号1','教师工号1','教师姓名1','1星','6','2021-03-21 10:50:41','账号1','姓名1'),(82,'2021-03-21 02:50:41','编号2','教师工号2','教师姓名2','1星','6','2021-03-21 10:50:41','账号2','姓名2'),(83,'2021-03-21 02:50:41','编号3','教师工号3','教师姓名3','1星','6','2021-03-21 10:50:41','账号3','姓名3'),(84,'2021-03-21 02:50:41','编号4','教师工号4','教师姓名4','1星','6','2021-03-21 10:50:41','账号4','姓名4'),(85,'2021-03-21 02:50:41','编号5','教师工号5','教师姓名5','1星','6','2021-03-21 10:50:41','账号5','姓名5'),(86,'2021-03-21 02:50:41','编号6','教师工号6','教师姓名6','1星','6','2021-03-21 10:50:41','账号6','姓名6'),(1616295989788,'2021-03-21 03:06:28','1616295953889','2','水电费删掉','1星','7','2021-03-18 00:00:00','1','阿达');
/*!40000 ALTER TABLE `yonghupingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinjiaoshi`
--

DROP TABLE IF EXISTS `zhaopinjiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinjiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) NOT NULL COMMENT '编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `tiaojian` longtext COMMENT '条件',
  `shangbandidian` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `xinzidaiyu` int(11) DEFAULT NULL COMMENT '薪资待遇',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616295736164 DEFAULT CHARSET=utf8 COMMENT='招聘教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinjiaoshi`
--

LOCK TABLES `zhaopinjiaoshi` WRITE;
/*!40000 ALTER TABLE `zhaopinjiaoshi` DISABLE KEYS */;
INSERT INTO `zhaopinjiaoshi` VALUES (61,'2021-03-21 02:50:41','编号1','名称1','职位1','条件1','上班地点1','上班时间1',1,1,'http://localhost:8080/ssmrsvl9/upload/zhaopinjiaoshi_tupian1.jpg','账号1','姓名1','手机1','地址1','2021-03-21 10:50:41',1),(62,'2021-03-21 02:50:41','编号2','名称2','职位2','条件2','上班地点2','上班时间2',2,2,'http://localhost:8080/ssmrsvl9/upload/zhaopinjiaoshi_tupian2.jpg','账号2','姓名2','手机2','地址2','2021-03-21 10:50:41',2),(63,'2021-03-21 02:50:41','编号3','名称3','职位3','条件3','上班地点3','上班时间3',3,3,'http://localhost:8080/ssmrsvl9/upload/zhaopinjiaoshi_tupian3.jpg','账号3','姓名3','手机3','地址3','2021-03-21 10:50:41',3),(64,'2021-03-21 02:50:41','编号4','名称4','职位4','条件4','上班地点4','上班时间4',4,4,'http://localhost:8080/ssmrsvl9/upload/zhaopinjiaoshi_tupian4.jpg','账号4','姓名4','手机4','地址4','2021-03-21 10:50:41',4),(65,'2021-03-21 02:50:41','编号5','名称5','职位5','条件5','上班地点5','上班时间5',5,5,'http://localhost:8080/ssmrsvl9/upload/zhaopinjiaoshi_tupian5.jpg','账号5','姓名5','手机5','地址5','2021-03-21 10:50:41',5),(66,'2021-03-21 02:50:41','编号6','名称6','职位6','条件6','上班地点6','上班时间6',6,6,'http://localhost:8080/ssmrsvl9/upload/zhaopinjiaoshi_tupian6.jpg','账号6','姓名6','手机6','地址6','2021-03-21 11:04:38',8),(1616295736163,'2021-03-21 03:02:15','1616295693993','额水电费','大幅度','大概的风格电饭锅地方电饭锅地方g','豆腐干豆腐地方','电饭锅电工地方',2500,1,'http://localhost:8080/ssmrsvl9/upload/1616295732441.png','1','阿达','11122212111','防守打法水电费','2021-03-21 11:07:02',3);
/*!40000 ALTER TABLE `zhaopinjiaoshi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22  9:25:44
