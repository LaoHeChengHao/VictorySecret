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

/*Table structure for table `bra` */

DROP TABLE IF EXISTS `bra`;

CREATE TABLE `bra` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `inventory` varchar(100) NOT NULL COMMENT '库存',
  `size` varchar(100) NOT NULL COMMENT '尺寸',
  `sale` varchar(100) NOT NULL COMMENT '销售量',
  `price` varchar(100) NOT NULL COMMENT '商品价格',
  `userName` varchar(100) NOT NULL COMMENT '会员价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内衣';

/*Data for the table `bra` */

/*Table structure for table `perfume` */

DROP TABLE IF EXISTS `perfume`;

CREATE TABLE `perfume` (
  `pId` int(11) NOT NULL COMMENT '产品编号',
  `pName` varchar(100) NOT NULL DEFAULT '香水' COMMENT '商品名称',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `inventory` int(100) NOT NULL COMMENT '商品库存',
  `sale` int(100) NOT NULL COMMENT '销售量',
  `price` int(100) NOT NULL COMMENT '价钱',
  `picture` varchar(100) NOT NULL COMMENT '图片',
  `picturesId` int(100) NOT NULL COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='香水';

/*Data for the table `perfume` */

/*Table structure for table `rouge` */

DROP TABLE IF EXISTS `rouge`;

CREATE TABLE `rouge` (
  `rId` int(11) NOT NULL COMMENT '产品编号',
  `rName` varchar(100) NOT NULL DEFAULT '口红' COMMENT '商品名',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `inventory` int(100) NOT NULL COMMENT '商品库存',
  `sale` int(100) NOT NULL COMMENT '销售量',
  `price` int(100) NOT NULL COMMENT '价钱',
  `picture` varchar(100) NOT NULL COMMENT '主图片',
  `picturesId` int(100) NOT NULL COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='口红';

/*Data for the table `rouge` */

/*Table structure for table `skin` */

DROP TABLE IF EXISTS `skin`;

CREATE TABLE `skin` (
  `sId` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `sName` varchar(100) NOT NULL DEFAULT '护肤品' COMMENT '商品名称',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `inventory` int(100) NOT NULL COMMENT '商品库存',
  `sale` int(100) NOT NULL COMMENT '销售量',
  `price` int(100) NOT NULL COMMENT '价钱',
  `picture` varchar(100) NOT NULL COMMENT '图片路径',
  `picturesId` int(100) NOT NULL COMMENT '对应图片库数据',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='护肤';

/*Data for the table `skin` */

/*Table structure for table `sports` */

DROP TABLE IF EXISTS `sports`;

CREATE TABLE `sports` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `styleName` varchar(100) NOT NULL COMMENT '商品款型',
  `colour` varchar(100) NOT NULL COMMENT '商品颜色',
  `inventory` varchar(100) NOT NULL COMMENT '库存',
  `size` varchar(100) NOT NULL COMMENT '尺寸',
  `sale` varchar(100) NOT NULL COMMENT '销售量',
  `price` varchar(100) NOT NULL COMMENT '商品价格',
  `userName` varchar(100) NOT NULL COMMENT '会员价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运动';

/*Data for the table `sports` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员编号',
  `userName` varchar(100) NOT NULL COMMENT '会员姓名',
  `password` varchar(100) NOT NULL COMMENT '会员密码',
  `email` varchar(100) NOT NULL COMMENT '会员邮箱',
  `telephone` varchar(100) NOT NULL COMMENT '会员联系电话',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '会员创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='维多利亚会员';

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`password`,`email`,`telephone`,`createTime`) values (1,'施余缘','123456','1344@qq.com','13872282972','2017-12-28 19:14:10'),(2,'zst','123456','erwrrew@qq.com','12345645','2018-01-01 22:33:54'),(3,'张是通','123456','wqeq','134','2018-01-01 22:37:52'),(4,'陈浩','111111','1@qq.com','122222','2018-01-02 10:44:32');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
