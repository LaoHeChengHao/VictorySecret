/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.54 : Database - victoria
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`victoria` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `victoria`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `aId` int(11) NOT NULL COMMENT '地址id',
  `uId` int(11) NOT NULL COMMENT '用户id',
  `streetName` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '暂未填写地址' COMMENT '详细地址',
  `postCode` varchar(11) COLLATE utf8_bin NOT NULL DEFAULT '暂未填写邮编' COMMENT '邮编',
  `tel` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '联系方式',
  `isDefault` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'false' COMMENT '是否为默认地址',
  `remark` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`aId`),
  KEY `uId` (`uId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`uId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `address` */

/*Table structure for table `gift` */

DROP TABLE IF EXISTS `gift`;

CREATE TABLE `gift` (
  `id` int(11) NOT NULL COMMENT '赠品id',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '赠品名称',
  `gid` int(11) DEFAULT NULL COMMENT '关联商品id',
  `count` int(11) DEFAULT NULL COMMENT '赠品数量',
  `picture` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '赠品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `gift` */

insert  into `gift`(`id`,`name`,`gid`,`count`,`picture`) values (1,'香水小样',1001,3,'images/gift/1.png'),(2,'香水小样',1001,2,'images/gift/2.png');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `oId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `uId` int(11) NOT NULL COMMENT '用户id',
  `gId` int(11) NOT NULL COMMENT '商品id',
  `gCount` int(11) NOT NULL COMMENT '商品数量',
  `totalPrice` double NOT NULL COMMENT '总金额',
  `gPicture` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '商品主照片',
  `giftId` int(11) DEFAULT NULL COMMENT '赠品id',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单生成时间',
  PRIMARY KEY (`oId`),
  KEY `pId` (`gId`),
  KEY `uId` (`uId`),
  KEY `giftId` (`giftId`),
  CONSTRAINT `order_ibfk_3` FOREIGN KEY (`uId`) REFERENCES `user` (`id`),
  CONSTRAINT `order_ibfk_4` FOREIGN KEY (`giftId`) REFERENCES `gift` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order` */

insert  into `order`(`oId`,`uId`,`gId`,`gCount`,`totalPrice`,`gPicture`,`giftId`,`time`) values (1,1,1001,1,2232424,NULL,NULL,'2018-01-11 19:41:33'),(2,2,1001,2,43256436,NULL,1,'2018-01-10 19:41:29'),(3,3,1001,1,2232424,NULL,1,'2018-01-11 19:41:58'),(4,4,1001,1,2232424,NULL,2,'2018-01-11 19:42:17'),(5,5,1001,1,2232424,NULL,1,'2018-01-11 19:42:32'),(6,6,1002,1,345454,NULL,2,'2018-01-11 19:42:48'),(7,7,1003,2,434352,NULL,1,'2018-01-11 19:43:01'),(8,9,1006,2,342243,NULL,1,'2018-01-11 19:43:11');

/*Table structure for table `pcomment` */

DROP TABLE IF EXISTS `pcomment`;

CREATE TABLE `pcomment` (
  `cId` int(100) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `content` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '评论内容',
  `uId` int(11) NOT NULL COMMENT '评论人的编号',
  `gId` int(11) NOT NULL COMMENT '评论商品的编号',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`cId`),
  KEY `gId` (`gId`),
  KEY `uId` (`uId`),
  CONSTRAINT `pcomment_ibfk_1` FOREIGN KEY (`gId`) REFERENCES `perfume` (`pId`),
  CONSTRAINT `pcomment_ibfk_2` FOREIGN KEY (`uId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `pcomment` */

insert  into `pcomment`(`cId`,`content`,`uId`,`gId`,`time`) values (1,'这款香水很适合我',1,1001,'2018-01-08 10:14:48'),(2,'哈哈哈哈',2,1001,'2018-01-08 10:34:22'),(3,'香水香型很清新，不刺激皮肤，很好',3,1002,'2018-01-10 12:06:19'),(4,'女朋友很喜欢，好评',2,1002,'2018-01-10 12:06:26'),(5,'使用效果不错，香味很清新，保持时间也很长',2,1003,'2018-01-18 12:06:51'),(6,'不错，会回购的',4,1003,'2018-01-10 12:07:36'),(7,'很适合我，好评，下次再来购买',5,1004,'2018-01-09 12:07:50'),(8,'很喜欢，10分',6,1005,'2018-01-04 12:08:25'),(9,'这个香型很浓，本人很喜欢',4,1006,'2018-01-09 12:08:46'),(10,'包装很新颖，朋友们都说好',7,1007,'2018-01-09 12:09:12'),(11,'一次购买了两只，很好，没让我失望',8,1008,'2018-01-10 12:09:37'),(12,'这款新品之前看到推送时，便想购买了，很好',3,1009,'2018-01-09 12:10:12'),(13,'买到这款最新品很开心',9,1010,'2018-01-09 12:10:55');

/*Table structure for table `perfume` */

DROP TABLE IF EXISTS `perfume`;

CREATE TABLE `perfume` (
  `pId` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `pName` varchar(100) NOT NULL DEFAULT '香水' COMMENT '商品名称',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `type` varchar(100) NOT NULL COMMENT '香型',
  `brand` varchar(100) NOT NULL DEFAULT 'VICTORIA''S SECRET 维多利亚的秘密' COMMENT '品牌',
  `NetWeight` varchar(100) NOT NULL COMMENT '净含量',
  `inventory` int(100) NOT NULL COMMENT '商品库存',
  `sale` int(100) NOT NULL COMMENT '销售量',
  `price` double NOT NULL COMMENT '价钱',
  `picture` varchar(100) NOT NULL DEFAULT 'images/perfume/defult.jpg' COMMENT '图片',
  `picturesId` varchar(100) NOT NULL DEFAULT 'images/perfume/p' COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`pId`),
  KEY `picturesId` (`picturesId`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8 COMMENT='香水';

/*Data for the table `perfume` */

insert  into `perfume`(`pId`,`pName`,`styleName`,`colour`,`type`,`brand`,`NetWeight`,`inventory`,`sale`,`price`,`picture`,`picturesId`,`time`) values (1001,'香水','性感永驻系列香水','透明','花果香调','VICTORIA\'S SECRET 维多利亚的秘密','50ml',20000,30000,29880,'images/perfume/p1.jpg','images/perfume/p','2018-01-01 09:26:19'),(1002,'香水','迪奥小姐','淡粉','香氛','VICTORIA\'S SECRET 维多利亚的秘密','100ml',3000,300,14500,'images/perfume/p2.jpg','images/perfume/p','2018-01-02 09:42:22'),(1003,'香水','娇兰执子之手','透明','香精','VICTORIA\'S SECRET 维多利亚的秘密','125ml',200,123,66600,'images/perfume/p3.jpg','images/perfume/p','2018-01-02 10:17:55'),(1004,'香水','午夜飞行','透明','香精','VICTORIA\'S SECRET 维多利亚的秘密','30ml',23323,33,23243,'images/perfume/p4.jpg','images/perfume/p','2018-01-02 10:19:10'),(1005,'香水','真我倾城之金','透明','香氛','VICTORIA\'S SECRET 维多利亚的秘密','40ml',2313,33,34545,'images/perfume/p5.jpg','images/perfume/p','2018-01-03 10:19:13'),(1006,'香水','花草水语','透明','淡香水','VICTORIA\'S SECRET 维多利亚的秘密','75ml',1231,123,3352435,'images/perfume/p6.jpg','images/perfume/p','2018-01-03 10:22:29'),(1007,'香水','黑色羽翼','透明','香兰草','VICTORIA\'S SECRET 维多利亚的秘密','7ml',13231231,12124124,233243,'images/perfume/p7.jpg','images/perfume/p','2018-01-03 12:07:42'),(1008,'香水','天使双翼','透明','花香型','VICTORIA\'S SECRET 维多利亚的秘密','100ml',233,3444,345435.9,'images/perfume/p8.jpg','images/perfume/p','2018-01-03 12:09:40'),(1009,'香水','最新品1','透明','香氛','VICTORIA\'S SECRET 维多利亚的秘密','100ml',121323,13113,3233.98,'images/perfume/p7.jpg','images/perfume/p','2018-01-05 13:54:36'),(1010,'香水','最新品2','透明','花果香调','VICTORIA\'S SECRET 维多利亚的秘密','100ml',2233,3444,43435,'images/perfume/p1.jpg','images/perfume/p','2018-01-08 08:56:39'),(1011,'香水','最新品3','淡粉','香兰草','VICTORIA\'S SECRET 维多利亚的秘密','75ml',3244,42323,22334,'images/perfume/p2.jpg','images/perfume/p','2018-01-08 08:56:55'),(1012,'香水','最新品4','透明','香精','VICTORIA\'S SECRET 维多利亚的秘密','75ml',3424,34234,2432,'images/perfume/p3.jpg','images/perfume/p','2018-01-08 08:57:42'),(1013,'香水','最新品5','淡粉','淡香','VICTORIA\'S SECRET 维多利亚的秘密','32ml',4324,32423,3233,'images/perfume/defult.jpg','images/perfume/p','2018-01-09 10:00:12');

/*Table structure for table `pictures` */

DROP TABLE IF EXISTS `pictures`;

CREATE TABLE `pictures` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '图片编号',
  `srcName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `pictures` */

insert  into `pictures`(`id`,`srcName`) values (1,'/Beauty/WebContent/images/perfume/p'),(2,'/Beauty/WebContent/images/skin/s'),(3,'/Beauty/WebContent/images/rouge/r');

/*Table structure for table `rcomment` */

DROP TABLE IF EXISTS `rcomment`;

CREATE TABLE `rcomment` (
  `cId` int(100) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `content` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '评论内容',
  `uId` int(11) NOT NULL COMMENT '评论人的编号',
  `gId` int(11) NOT NULL COMMENT '评论商品的编号',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`cId`),
  KEY `gId` (`gId`),
  KEY `uId` (`uId`),
  CONSTRAINT `rcomment_ibfk_1` FOREIGN KEY (`gId`) REFERENCES `rouge` (`rId`),
  CONSTRAINT `rcomment_ibfk_2` FOREIGN KEY (`uId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `rcomment` */

insert  into `rcomment`(`cId`,`content`,`uId`,`gId`,`time`) values (1,'这款口红颜色很喜欢',2,3001,'2018-01-08 10:17:15'),(2,'口红质量很好，十分好评',1,3012,'2018-01-10 09:06:51'),(3,'使用了，很适合我',4,3003,'2018-01-18 09:07:08'),(4,'口红6666',1,3011,'2018-01-10 23:57:41');

/*Table structure for table `rouge` */

DROP TABLE IF EXISTS `rouge`;

CREATE TABLE `rouge` (
  `rId` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `rName` varchar(100) NOT NULL DEFAULT '口红' COMMENT '商品名',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `effect` varchar(100) NOT NULL COMMENT '功效',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `brand` varchar(100) NOT NULL DEFAULT 'VICTORIA''S SECRET 维多利亚的秘密' COMMENT '品牌',
  `NetWeight` varchar(100) NOT NULL COMMENT '净含量',
  `inventory` int(100) NOT NULL COMMENT '商品库存',
  `sale` int(100) NOT NULL COMMENT '销售量',
  `price` double NOT NULL COMMENT '价钱',
  `picture` varchar(100) NOT NULL DEFAULT 'images/rouge/defult.jpg' COMMENT '主图片',
  `picturesId` varchar(100) NOT NULL DEFAULT 'images/rouge/r' COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`rId`),
  KEY `picturesId` (`picturesId`)
) ENGINE=InnoDB AUTO_INCREMENT=3013 DEFAULT CHARSET=utf8 COMMENT='口红';

/*Data for the table `rouge` */

insert  into `rouge`(`rId`,`rName`,`styleName`,`effect`,`colour`,`brand`,`NetWeight`,`inventory`,`sale`,`price`,`picture`,`picturesId`,`time`) values (3001,'口红','润泽修护唇膏','光亮','俊美火辣','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',2033,200,26789.9,'images/rouge/r1.jpg','images/rouge/r','2018-01-01 10:10:20'),(3002,'口红','润泽修护唇膏','滋润','橘色','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',2033,333,32728,'images/rouge/r2.jpg','images/rouge/r','2018-01-02 21:38:53'),(3003,'口红','可可小姐唇膏','水亮','黑金','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',232324,42442,234324,'images/rouge/r3.jpg','images/rouge/r','2018-01-02 21:40:51'),(3004,'口红','炫亮魅力唇膏','滋润','粉红','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',332,44232,44444,'images/rouge/r4.jpg','images/rouge/r','2018-01-02 21:41:01'),(3005,'口红','可可小姐唇膏笔','绚丽','火辣','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',213,33,213132,'images/rouge/r5.jpg','images/rouge/r','2018-01-02 21:44:04'),(3006,'口红','炫亮唇彩','水亮','橘色','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',333,33,3233,'images/rouge/r6.jpg','images/rouge/r','2018-01-02 21:44:08'),(3007,'口红','小黑裙甜漾唇膏','炫彩','淡粉','VICTORIA\'S SECRET 维多利亚的秘密','2.8g',333,32,432,'images/rouge/r7.jpg','images/rouge/r','2018-01-02 21:46:03'),(3008,'口红','滋润小黑裙','滋润','粉色','VICTORIA\'S SECRET 维多利亚的秘密','2.9g',3234,43,343242,'images/rouge/r8.jpg','images/rouge/r','2018-01-02 21:47:31'),(3009,'口红','最新品1','保湿','橘色','VICTORIA\'S SECRET 维多利亚的秘密','测试',2323,32323,3232.9,'images/rouge/r1.jpg','images/rouge/r','2018-01-08 09:06:09'),(3010,'口红','最新品2','炫彩','淡粉','VICTORIA\'S SECRET 维多利亚的秘密','测试',2323,2323,21321.99,'images/rouge/r2.jpg','images/rouge/r','2018-01-08 09:06:13'),(3011,'口红','最新品3','滋润','艳红','VICTORIA\'S SECRET 维多利亚的秘密','测试',2323,3434,3423.99,'images/rouge/r3.jpg','images/rouge/r','2018-01-08 09:07:24'),(3012,'口红','最新品4','水亮','淡粉','VICTORIA\'S SECRET 维多利亚的秘密','测试',3242,3222,3133.99,'images/rouge/r4.jpg','images/rouge/r','2018-01-08 09:07:29');

/*Table structure for table `scomment` */

DROP TABLE IF EXISTS `scomment`;

CREATE TABLE `scomment` (
  `cId` int(100) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `content` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '评论内容',
  `uId` int(11) NOT NULL COMMENT '评论人的编号',
  `gId` int(11) NOT NULL COMMENT '评论商品的编号',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`cId`),
  KEY `gId` (`gId`),
  KEY `uId` (`uId`),
  CONSTRAINT `scomment_ibfk_1` FOREIGN KEY (`gId`) REFERENCES `skin` (`sId`),
  CONSTRAINT `scomment_ibfk_2` FOREIGN KEY (`uId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `scomment` */

insert  into `scomment`(`cId`,`content`,`uId`,`gId`,`time`) values (1,'这款护肤品很滋润，护肤效果不错',2,2001,'2018-01-08 10:16:23'),(2,'这款使用的，比之前使用的都要好，很滋润护肤',1,2006,'2018-01-10 09:07:46'),(3,'花蜜活颜丝悦系列，你值得拥有',1,2005,'2018-01-10 23:59:14');

/*Table structure for table `skin` */

DROP TABLE IF EXISTS `skin`;

CREATE TABLE `skin` (
  `sId` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `sName` varchar(100) NOT NULL DEFAULT '护肤品' COMMENT '商品名称',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `effect` varchar(100) NOT NULL COMMENT '功效',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `brand` varchar(100) NOT NULL DEFAULT 'VICTORIA''S SECRET 维多利亚的秘密' COMMENT '品牌',
  `NetWeight` varchar(100) NOT NULL COMMENT '净含量',
  `inventory` int(100) NOT NULL COMMENT '商品库存',
  `sale` int(100) NOT NULL COMMENT '销售量',
  `price` double NOT NULL COMMENT '价钱',
  `picture` varchar(100) NOT NULL DEFAULT 'images/skin/defult.jpg' COMMENT '图片路径',
  `picturesId` varchar(100) NOT NULL DEFAULT 'images/skin/s' COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`sId`),
  KEY `picturesId` (`picturesId`)
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8 COMMENT='护肤';

/*Data for the table `skin` */

insert  into `skin`(`sId`,`sName`,`styleName`,`effect`,`colour`,`brand`,`NetWeight`,`inventory`,`sale`,`price`,`picture`,`picturesId`,`time`) values (2001,'护肤品','面霜','提拉紧致','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50ML',2000,3000,33325,'images/skin/s1.jpg','images/skin/s','2018-01-02 10:05:04'),(2002,'护肤品','面霜','提拉紧致','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50ML',3232,333,4567.9,'images/skin/s2.jpg','images/skin/s','2018-01-05 15:06:34'),(2003,'护肤品','奢华精粹乳霜','滋养保湿','金黄','VICTORIA\'S SECRET 维多利亚的秘密','50g',2314,444,424234,'images/skin/s3.jpg','images/skin/s','2018-01-04 15:09:26'),(2004,'护肤品','乐肤源清润凝霜','改善肌肤','淡绿','VICTORIA\'S SECRET 维多利亚的秘密','50ml',23344,4343,4353543.99,'images/skin/s4.jpg','images/skin/s','2018-01-03 15:12:26'),(2005,'护肤品','花蜜活颜丝悦系列','美颜','淡粉','VICTORIA\'S SECRET 维多利亚的秘密','30ML',4445,344,32424.9,'images/skin/s5.jpg','images/skin/s','2018-01-03 15:12:30'),(2006,'护肤品','山茶花保湿微精华霜','保湿','淡蓝','VICTORIA\'S SECRET 维多利亚的秘密','30ML',3232,434,4599.9,'images/skin/s6.jpg','images/skin/s','2018-01-02 15:15:56'),(2007,'护肤品','山茶花润泽微精华乳霜','滋润','淡蓝','VICTORIA\'S SECRET 维多利亚的秘密','50g',2234,34345,3455.9,'images/skin/s7.jpg','images/skin/s','2018-01-01 15:16:08'),(2008,'护肤品','修护软霜','提亮肤色 补水保湿','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50g',2324,444,4659.7,'images/skin/s8.jpg','images/skin/s','2018-01-05 15:19:28'),(2009,'护肤品','最新品1','保湿','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50g',4244,32432,43242.9,'images/skin/s1.jpg','images/skin/s','2018-01-08 09:08:50'),(2010,'护肤品','最新品2','滋养保湿','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50g',3123,2323,2323.99,'images/skin/s2.jpg','images/skin/s','2018-01-08 09:08:55'),(2011,'护肤品','最新品3','改善肌肤','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50g',2424,444,4324.99,'images/skin/s3.jpg','images/skin/s','2018-01-08 09:10:09'),(2012,'护肤品','最新品4','提亮肤色 补水保湿','乳白','VICTORIA\'S SECRET 维多利亚的秘密','测试',23,323,4234.99,'images/skin/s4.jpg','images/skin/s','2018-01-08 09:10:12');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员编号',
  `userName` varchar(100) NOT NULL COMMENT '会员姓名',
  `password` varchar(100) NOT NULL COMMENT '会员密码',
  `sex` varchar(100) DEFAULT NULL COMMENT '会员性别',
  `email` varchar(100) NOT NULL COMMENT '会员邮箱',
  `addressId` int(11) DEFAULT NULL COMMENT '会员地址id',
  `telephone` varchar(100) NOT NULL COMMENT '会员联系电话',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '会员创建时间',
  `picture` varchar(100) DEFAULT NULL COMMENT '会员头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='维多利亚会员';

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`password`,`sex`,`email`,`addressId`,`telephone`,`createTime`,`picture`) values (1,'施余缘','123456','女','1344@qq.com',0,'13872282972','2017-12-28 19:14:10','images/user/user3.jpg'),(2,'zst','123456','男','erwrrew@qq.com',0,'15723456789','2018-01-01 22:33:54','images/user/user8.jpg'),(3,'蔡应时','123456','男','wqeq@qq.com',0,'13432368889','2018-01-01 22:37:52','images/user/user2.jpg'),(4,'陈浩','111111','男','1@qq.com',0,'12425224124','2018-01-02 10:44:32','images/user/user2.jpg'),(5,'何晨昊','111111','男','134@qq.com',0,'13545654645','2018-01-02 19:54:10','images/user/user2.jpg'),(6,'马依婷','1234','女','123@ww.com',0,'13455346346','2018-01-03 14:26:39','images/user/user1.jpg'),(7,'辛壮壮','123456','男','zhuangzhuang@qq.com',0,'13648277899','2018-01-03 16:41:10','images/user/user2.jpg'),(8,'李四','1234','男','12@qq.com',0,'13242543346','2018-01-08 15:32:51','images/user/user2.jpg'),(9,'黄静','1111','女','11@qq.com',0,'14235346342','2018-01-10 09:27:45','images/user/user1.jpg'),(10,'王天宇','2222','男','22@qq.com',0,'14365475688','2018-01-10 09:47:37','images/user/user5.jpg'),(11,'苏怡恬','1111','女','123@ww.com',0,'13557567567','2018-01-10 10:15:42','images/user/user1.jpg'),(12,'帅文','1111','女','123@qq.com',0,'13546457656','2018-01-10 10:17:01','images/user/user1.jpg'),(13,'王若晔','1111','女','12433@ww.com',0,'13252355445','2018-01-10 10:17:45',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
