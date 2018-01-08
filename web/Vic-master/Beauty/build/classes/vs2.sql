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

/*Table structure for table `beauty` */

DROP TABLE IF EXISTS `beauty`;

CREATE TABLE `beauty` (
  `id` int(11) NOT NULL COMMENT '产品编号',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `inventory` varchar(100) NOT NULL COMMENT '商品库存',
  `sale` varchar(100) NOT NULL COMMENT '销售量',
  `price` varchar(100) NOT NULL COMMENT '价钱',
  `userPrice` varchar(100) NOT NULL COMMENT '会员价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='美妆';

/*Data for the table `beauty` */

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
  `picture` varchar(100) NOT NULL COMMENT '图片',
  `picturesId` int(100) NOT NULL DEFAULT '1' COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`pId`),
  KEY `picturesId` (`picturesId`),
  CONSTRAINT `perfume_ibfk_1` FOREIGN KEY (`picturesId`) REFERENCES `pictures` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8 COMMENT='香水';

/*Data for the table `perfume` */

insert  into `perfume`(`pId`,`pName`,`styleName`,`colour`,`type`,`brand`,`NetWeight`,`inventory`,`sale`,`price`,`picture`,`picturesId`,`time`) values (1001,'香水','性感永驻系列香水','透明','花果香调','VICTORIA\'S SECRET 维多利亚的秘密','50ml',20000,30000,29880,'images/perfume/p1.jpg',1,'2018-01-01 09:26:19'),(1002,'香水','迪奥小姐','淡粉','香氛','VICTORIA\'S SECRET 维多利亚的秘密','100ml',3000,300,14500,'images/perfume/p2.jpg',1,'2018-01-02 09:42:22'),(1003,'香水','娇兰执子之手','透明','香精','VICTORIA\'S SECRET 维多利亚的秘密','125ml',200,123,66600,'images/perfume/p3.jpg',1,'2018-01-02 10:17:55'),(1004,'香水','午夜飞行','透明','香精','VICTORIA\'S SECRET 维多利亚的秘密','30ml',23323,33,23243,'images/perfume/p4.jpg',1,'2018-01-19 10:19:10'),(1005,'香水','真我倾城之金','透明','香氛','VICTORIA\'S SECRET 维多利亚的秘密','40ml',2313,33,34545,'images/perfume/p5.jpg',1,'2018-01-03 10:19:13'),(1006,'香水','花草水语','透明','淡香水','VICTORIA\'S SECRET 维多利亚的秘密','75ml',1231,123,3352435,'images/perfume/p6.jpg',1,'2018-01-03 10:22:29'),(1007,'香水','黑色羽翼','透明','香兰草','VICTORIA\'S SECRET 维多利亚的秘密','7ml',13231231,12124124,233243,'images/perfume/p7.jpg',1,'2018-01-03 12:07:42'),(1008,'香水','天使双翼','透明','花香型','VICTORIA\'S SECRET 维多利亚的秘密','100ml',233,3444,345435.9,'images/perfume/p8.jpg',1,'2018-01-03 12:09:40'),(1009,'香水','最新品1','不知道','不知道','VICTORIA\'S SECRET 维多利亚的秘密','100ml',121323,13113,3233.98,'images/perfume/p7.jpg',1,'2018-01-05 13:54:36');

/*Table structure for table `pictures` */

DROP TABLE IF EXISTS `pictures`;

CREATE TABLE `pictures` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '图片编号',
  `srcName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `pictures` */

insert  into `pictures`(`id`,`srcName`) values (1,'/Beauty/WebContent/images/perfume'),(2,'/Beauty/WebContent/images/skin'),(3,'/Beauty/WebContent/images/rouge');

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
  `picture` varchar(100) NOT NULL COMMENT '主图片',
  `picturesId` int(100) NOT NULL DEFAULT '3' COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`rId`),
  KEY `picturesId` (`picturesId`),
  CONSTRAINT `rouge_ibfk_1` FOREIGN KEY (`picturesId`) REFERENCES `pictures` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3009 DEFAULT CHARSET=utf8 COMMENT='口红';

/*Data for the table `rouge` */

insert  into `rouge`(`rId`,`rName`,`styleName`,`effect`,`colour`,`brand`,`NetWeight`,`inventory`,`sale`,`price`,`picture`,`picturesId`,`time`) values (3001,'口红','润泽修护唇膏','光亮','俊美火辣','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',2033,200,26789.9,'images/rouge/r1.jpg',3,'2018-01-01 10:10:20'),(3002,'口红','润泽修护唇膏','滋润','橘色','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',2033,333,32728,'images/rouge/r2.jpg',3,'2018-01-02 21:38:53'),(3003,'口红','可可小姐唇膏','水亮','黑金','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',232324,42442,234324,'images/rouge/r3.jpg',3,'2018-01-02 21:40:51'),(3004,'口红','炫亮魅力唇膏','滋润','粉红','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',332,44232,44444,'images/rouge/r4.jpg',3,'2018-01-02 21:41:01'),(3005,'口红','可可小姐唇膏笔','绚丽','火辣','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',213,33,213132,'images/rouge/r5.jpg',3,'2018-01-02 21:44:04'),(3006,'口红','炫亮唇彩','水亮','橘色','VICTORIA\'S SECRET 维多利亚的秘密','3.5g',333,33,3233,'images/rouge/r6.jpg',3,'2018-01-02 21:44:08'),(3007,'口红','小黑裙甜漾唇膏','炫彩','淡粉','VICTORIA\'S SECRET 维多利亚的秘密','2.8g',333,32,432,'images/rouge/r7.jpg',3,'2018-01-02 21:46:03'),(3008,'口红','滋润小黑裙','滋润','粉色','VICTORIA\'S SECRET 维多利亚的秘密','2.9g',3234,43,343242,'images/rouge/r8.jpg',3,'2018-01-02 21:47:31');

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
  `picture` varchar(100) NOT NULL COMMENT '图片路径',
  `picturesId` int(100) NOT NULL DEFAULT '2' COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`sId`),
  KEY `picturesId` (`picturesId`),
  CONSTRAINT `skin_ibfk_1` FOREIGN KEY (`picturesId`) REFERENCES `pictures` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8 COMMENT='护肤';

/*Data for the table `skin` */

insert  into `skin`(`sId`,`sName`,`styleName`,`effect`,`colour`,`brand`,`NetWeight`,`inventory`,`sale`,`price`,`picture`,`picturesId`,`time`) values (2001,'护肤品','面霜','提拉紧致','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50ML',2000,3000,33325,'images/skin/s1.jpg',2,'2018-01-02 10:05:04'),(2002,'护肤品','面霜','提拉紧致','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50ML',3232,333,4567.9,'images/skin/s2.jpg',2,'2018-01-05 15:06:34'),(2003,'护肤品','奢华精粹乳霜','滋养保湿','金黄','VICTORIA\'S SECRET 维多利亚的秘密','50g',2314,444,424234,'images/skin/s3.jpg',2,'2018-01-04 15:09:26'),(2004,'护肤品','乐肤源清润凝霜','改善肌肤','淡绿','VICTORIA\'S SECRET 维多利亚的秘密','50ml',23344,4343,4353543.99,'images/skin/s4.jpg',2,'2018-01-03 15:12:26'),(2005,'护肤品','花蜜活颜丝悦系列','美颜','淡粉','VICTORIA\'S SECRET 维多利亚的秘密','30ML',4445,344,32424.9,'images/skin/s5.jpg',2,'2018-01-03 15:12:30'),(2006,'护肤品','山茶花保湿微精华霜','保湿','淡蓝','VICTORIA\'S SECRET 维多利亚的秘密','30ML',3232,434,4599.9,'images/skin/s6.jpg',2,'2018-01-02 15:15:56'),(2007,'护肤品','山茶花润泽微精华乳霜','滋润','淡蓝','VICTORIA\'S SECRET 维多利亚的秘密','50g',2234,34345,3455.9,'images/skin/s7.jpg',2,'2018-01-01 15:16:08'),(2008,'护肤品','修护软霜','提亮肤色 补水保湿','乳白','VICTORIA\'S SECRET 维多利亚的秘密','50g',2324,444,4659.7,'images/skin/s8.jpg',2,'2018-01-05 15:19:28');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员编号',
  `userName` varchar(100) NOT NULL COMMENT '会员姓名',
  `password` varchar(100) NOT NULL COMMENT '会员密码',
  `email` varchar(100) NOT NULL COMMENT '会员邮箱',
  `address` varchar(100) NOT NULL COMMENT '会员地址',
  `telephone` varchar(100) NOT NULL COMMENT '会员联系电话',
  `a` int(100) DEFAULT NULL COMMENT '标识是否完成验证',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '会员创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='维多利亚会员';

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`password`,`email`,`address`,`telephone`,`a`,`createTime`) values (1,'施余缘','123456','1344@qq.com','','13872282972',NULL,'2017-12-28 19:14:10'),(2,'zst','123456','erwrrew@qq.com','','12345645',NULL,'2018-01-01 22:33:54'),(3,'张是通','123456','wqeq','','134',NULL,'2018-01-01 22:37:52'),(4,'陈浩','111111','1@qq.com','','122222',NULL,'2018-01-02 10:44:32'),(5,'34','111111','1@qq.com','','135456546457',NULL,'2018-01-02 19:54:10'),(6,'1234','1234','123@ww.com','','13455346346',NULL,'2018-01-03 14:26:39'),(7,'辛壮壮','123456','zhuangzhuang@qq.com','','13648277899',NULL,'2018-01-03 16:41:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
