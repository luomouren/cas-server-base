/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.21 : Database - demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `sys_user` */

CREATE TABLE `sys_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(36) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`username`,`password`,`id`,`nickname`) values ('admin','password',1,'admin');
insert  into `sys_user`(`username`,`password`,`id`,`nickname`) values ('zhangsan','5f4dcc3b5aa765d61d8327deb882cf99',2,'张三');
insert  into `sys_user`(`username`,`password`,`id`,`nickname`) values ('lisi','d8ab2b68f1a4af359e86928302585826',3,'李四');
insert  into `sys_user`(`username`,`password`,`id`,`nickname`) values ('test','ed0290f05224a188160858124a5f5077',4,'测试');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
