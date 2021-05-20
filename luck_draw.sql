/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.32 : Database - luck_draw
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`luck_draw` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `luck_draw`;

/*Table structure for table `luck_draw` */

DROP TABLE IF EXISTS `luck_draw`;

CREATE TABLE `luck_draw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `cycle` tinyint(1) NOT NULL COMMENT '抽奖周期 1-年，2-月，3-日',
  `count` int(11) NOT NULL COMMENT '抽奖次数',
  `state` tinyint(1) NOT NULL COMMENT '状态码 1-启用，2-停用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_user` varchar(50) NOT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新人',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，0-未删除，1-已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='奖品表';

/*Data for the table `luck_draw` */

insert  into `luck_draw`(`id`,`cycle`,`count`,`state`,`create_time`,`create_user`,`update_time`,`update_user`,`is_delete`) values (1,3,1,1,'2021-05-19 17:29:14','cxhello',NULL,NULL,0);

/*Table structure for table `luck_draw_detail` */

DROP TABLE IF EXISTS `luck_draw_detail`;

CREATE TABLE `luck_draw_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `luck_draw_id` bigint(20) NOT NULL COMMENT '奖品表ID',
  `prize_name` varchar(50) NOT NULL COMMENT '奖品名称',
  `prize_count` int(11) NOT NULL COMMENT '奖品数量',
  `prize_probability` decimal(4,2) NOT NULL COMMENT '奖品概率',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_user` varchar(50) NOT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新人',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，0-未删除，1-已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='奖品明细表';

/*Data for the table `luck_draw_detail` */

insert  into `luck_draw_detail`(`id`,`luck_draw_id`,`prize_name`,`prize_count`,`prize_probability`,`create_time`,`create_user`,`update_time`,`update_user`,`is_delete`) values (1,1,'平板电脑',5,'1.50','2021-05-19 17:30:13','cxhello',NULL,NULL,0),(2,1,'数码相机',1,'0.50','2021-05-19 17:30:40','cxhello',NULL,NULL,0),(3,1,'U盘',10,'3.00','2021-05-19 17:31:38','cxhello',NULL,NULL,0),(4,1,'谢谢参与',-1,'90.00','2021-05-19 17:33:25','cxhello',NULL,NULL,0),(5,1,'10积分',-1,'5.00','2021-05-19 17:34:09','cxhello',NULL,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
