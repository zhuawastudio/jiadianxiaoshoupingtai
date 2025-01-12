/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiadianxiaoshoupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiadianxiaoshoupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiadianxiaoshoupingtai`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(2,3,'收货人2','17703786902','地址2',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(3,2,'收货人3','17703786903','地址3',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(4,1,'收货人4','17703786904','地址4',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(5,1,'收货人5','17703786905','地址5',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(6,2,'收货人6','17703786906','地址6',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(7,3,'收货人7','17703786907','地址7',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(8,2,'收货人8','17703786908','地址8',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(9,3,'收货人9','17703786909','地址9',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(10,3,'收货人10','17703786910','地址10',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(11,1,'收货人11','17703786911','地址11',2,'2023-03-28 15:31:10','2023-03-28 15:54:36','2023-03-28 15:31:10'),(12,3,'收货人12','17703786912','地址12',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(13,3,'收货人13','17703786913','地址13',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(14,1,'收货人14','17703786914','地址14',1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `jiadian_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-28 15:30:36'),(39,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-28 15:30:36'),(40,'jiadian_types','商品类型',1,'商品类型1',NULL,NULL,'2023-03-28 15:30:36'),(41,'jiadian_types','商品类型',2,'商品类型2',NULL,NULL,'2023-03-28 15:30:36'),(42,'jiadian_types','商品类型',3,'商品类型3',NULL,NULL,'2023-03-28 15:30:36'),(43,'jiadian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-28 15:30:36'),(44,'jiadian_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-28 15:30:36'),(45,'jiadian_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-28 15:30:36'),(46,'jiadian_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-28 15:30:36'),(47,'jiadian_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-28 15:30:36'),(48,'jiadian_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-28 15:30:36'),(49,'jiadian_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-28 15:30:36'),(50,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-28 15:30:36'),(51,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-28 15:30:36'),(52,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-28 15:30:36'),(53,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-28 15:30:36'),(54,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-28 15:30:36'),(55,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-28 15:30:36'),(56,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-28 15:30:36'),(57,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-28 15:30:36');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',115,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(2,'帖子标题2',1,NULL,'发布内容2',219,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(3,'帖子标题3',2,NULL,'发布内容3',375,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(4,'帖子标题4',2,NULL,'发布内容4',150,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(5,'帖子标题5',3,NULL,'发布内容5',112,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(6,'帖子标题6',1,NULL,'发布内容6',149,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(7,'帖子标题7',3,NULL,'发布内容7',315,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(8,'帖子标题8',3,NULL,'发布内容8',473,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(9,'帖子标题9',3,NULL,'发布内容9',113,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(10,'帖子标题10',3,NULL,'发布内容10',103,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(11,'帖子标题11',2,NULL,'发布内容11',208,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(12,'帖子标题12',1,NULL,'发布内容12',278,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(13,'帖子标题13',2,NULL,'发布内容13',249,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(14,'帖子标题14',2,NULL,'发布内容14',237,1,'2023-03-28 15:31:10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(15,NULL,1,NULL,'登录后才可以看到数据详情页和个人中心、购物车界面',14,2,'2023-03-28 15:53:59',NULL,'2023-03-28 15:53:59'),(16,NULL,NULL,1,'11111111111111111111',14,2,'2023-03-28 15:55:22',NULL,'2023-03-28 15:55:22');

/*Table structure for table `jiadian` */

DROP TABLE IF EXISTS `jiadian`;

CREATE TABLE `jiadian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiadian_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `jiadian_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `jiadian_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `jiadian_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `jiadian_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `jiadian_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `jiadian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `jiadian_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `jiadian_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `jiadian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `jiadian` */

insert  into `jiadian`(`id`,`jiadian_name`,`jiadian_uuid_number`,`jiadian_photo`,`jiadian_types`,`jiadian_kucun_number`,`jiadian_old_money`,`jiadian_new_money`,`jiadian_clicknum`,`jiadian_content`,`shangxia_types`,`jiadian_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1679988670163','upload/jiadian1.jpg',3,101,'607.53','121.40',16,'商品介绍1',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(2,'商品名称2','1679988670117','upload/jiadian2.jpg',3,101,'797.96','21.03',232,'商品介绍2',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(3,'商品名称3','1679988670199','upload/jiadian3.jpg',2,103,'957.37','38.64',5,'商品介绍3',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(4,'商品名称4','1679988670132','upload/jiadian4.jpg',2,104,'519.65','444.16',82,'商品介绍4',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(5,'商品名称5','1679988670141','upload/jiadian5.jpg',1,105,'836.68','322.89',129,'商品介绍5',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(6,'商品名称6','1679988670207','upload/jiadian6.jpg',2,106,'683.59','244.58',450,'商品介绍6',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(7,'商品名称7','1679988670192','upload/jiadian7.jpg',2,107,'530.60','494.41',86,'商品介绍7',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(8,'商品名称8','1679988670145','upload/jiadian1.jpg',2,108,'696.80','195.14',309,'商品介绍8',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(9,'商品名称9','1679988670133','upload/jiadian2.jpg',3,109,'748.27','165.68',282,'商品介绍9',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(10,'商品名称10','1679988670200','upload/jiadian3.jpg',1,1010,'779.14','164.89',56,'商品介绍10',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(11,'商品名称11','1679988670127','upload/jiadian4.jpg',1,1011,'968.61','40.97',379,'商品介绍11',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(12,'商品名称12','1679988670161','upload/jiadian5.jpg',1,1012,'786.43','143.06',99,'商品介绍12',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(13,'商品名称13','1679988670187','upload/jiadian6.jpg',3,1013,'937.99','440.52',469,'商品介绍13',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(14,'商品名称14','1679988670147','upload/jiadian7.jpg',1,1013,'915.02','37.40',316,'商品介绍14',1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10');

/*Table structure for table `jiadian_collection` */

DROP TABLE IF EXISTS `jiadian_collection`;

CREATE TABLE `jiadian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiadian_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiadian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `jiadian_collection` */

insert  into `jiadian_collection`(`id`,`jiadian_id`,`yonghu_id`,`jiadian_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(3,3,2,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(5,5,3,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(6,6,3,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(7,7,2,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(8,8,3,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(9,9,1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(10,10,2,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(12,12,3,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(13,13,3,1,'2023-03-28 15:31:10','2023-03-28 15:31:10'),(14,14,1,1,'2023-03-28 15:31:10','2023-03-28 15:31:10');

/*Table structure for table `jiadian_commentback` */

DROP TABLE IF EXISTS `jiadian_commentback`;

CREATE TABLE `jiadian_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiadian_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiadian_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `jiadian_commentback` */

insert  into `jiadian_commentback`(`id`,`jiadian_id`,`yonghu_id`,`jiadian_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-03-28 15:31:10','回复信息1','2023-03-28 15:31:10','2023-03-28 15:31:10'),(2,2,1,'评价内容2','2023-03-28 15:31:10','回复信息2','2023-03-28 15:31:10','2023-03-28 15:31:10'),(3,3,2,'评价内容3','2023-03-28 15:31:10','回复信息3','2023-03-28 15:31:10','2023-03-28 15:31:10'),(4,4,1,'评价内容4','2023-03-28 15:31:10','回复信息4','2023-03-28 15:31:10','2023-03-28 15:31:10'),(5,5,1,'评价内容5','2023-03-28 15:31:10','回复信息5','2023-03-28 15:31:10','2023-03-28 15:31:10'),(6,6,3,'评价内容6','2023-03-28 15:31:10','回复信息6','2023-03-28 15:31:10','2023-03-28 15:31:10'),(7,7,3,'评价内容7','2023-03-28 15:31:10','回复信息7','2023-03-28 15:31:10','2023-03-28 15:31:10'),(8,8,2,'评价内容8','2023-03-28 15:31:10','回复信息8','2023-03-28 15:31:10','2023-03-28 15:31:10'),(9,9,3,'评价内容9','2023-03-28 15:31:10','回复信息9','2023-03-28 15:31:10','2023-03-28 15:31:10'),(10,10,1,'评价内容10','2023-03-28 15:31:10','回复信息10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(11,11,1,'评价内容11','2023-03-28 15:31:10','回复信息11','2023-03-28 15:31:10','2023-03-28 15:31:10'),(12,12,1,'评价内容12','2023-03-28 15:31:10','回复信息12','2023-03-28 15:31:10','2023-03-28 15:31:10'),(13,13,1,'评价内容13','2023-03-28 15:31:10','回复信息13','2023-03-28 15:31:10','2023-03-28 15:31:10'),(14,14,2,'评价内容14','2023-03-28 15:31:10','回复信息14','2023-03-28 15:31:10','2023-03-28 15:31:10'),(15,2,1,'123123','2023-03-28 15:56:34',NULL,NULL,'2023-03-28 15:56:34');

/*Table structure for table `jiadian_order` */

DROP TABLE IF EXISTS `jiadian_order`;

CREATE TABLE `jiadian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiadian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `jiadian_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `jiadian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `jiadian_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `jiadian_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `jiadian_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `jiadian_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `jiadian_order` */

insert  into `jiadian_order`(`id`,`jiadian_order_uuid_number`,`address_id`,`jiadian_id`,`yonghu_id`,`buy_number`,`jiadian_order_true_price`,`jiadian_order_courier_name`,`jiadian_order_courier_number`,`jiadian_order_types`,`jiadian_order_payment_types`,`insert_time`,`create_time`) values (1,'1679990096645',11,14,1,1,'37.40',NULL,NULL,101,1,'2023-03-28 15:54:57','2023-03-28 15:54:57'),(2,'1679990096645',11,6,1,1,'244.58',NULL,NULL,102,1,'2023-03-28 15:54:57','2023-03-28 15:54:57'),(3,'1679990096645',11,2,1,1,'21.03','JD','12312312312312',105,1,'2023-03-28 15:54:57','2023-03-28 15:54:57');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言反馈';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2023-03-28 15:31:10','回复信息1','2023-03-28 15:31:10','2023-03-28 15:31:10'),(2,1,'留言标题2','留言内容2','2023-03-28 15:31:10','回复信息2','2023-03-28 15:31:10','2023-03-28 15:31:10'),(3,2,'留言标题3','留言内容3','2023-03-28 15:31:10','回复信息3','2023-03-28 15:31:10','2023-03-28 15:31:10'),(4,1,'留言标题4','留言内容4','2023-03-28 15:31:10','回复信息4','2023-03-28 15:31:10','2023-03-28 15:31:10'),(5,3,'留言标题5','留言内容5','2023-03-28 15:31:10','回复信息5','2023-03-28 15:31:10','2023-03-28 15:31:10'),(6,3,'留言标题6','留言内容6','2023-03-28 15:31:10','回复信息6','2023-03-28 15:31:10','2023-03-28 15:31:10'),(7,2,'留言标题7','留言内容7','2023-03-28 15:31:10','回复信息7','2023-03-28 15:31:10','2023-03-28 15:31:10'),(8,2,'留言标题8','留言内容8','2023-03-28 15:31:10','回复信息8','2023-03-28 15:31:10','2023-03-28 15:31:10'),(9,3,'留言标题9','留言内容9','2023-03-28 15:31:10','回复信息9','2023-03-28 15:31:10','2023-03-28 15:31:10'),(10,2,'留言标题10','留言内容10','2023-03-28 15:31:10','回复信息10','2023-03-28 15:31:10','2023-03-28 15:31:10'),(11,3,'留言标题11','留言内容11','2023-03-28 15:31:10','回复信息11','2023-03-28 15:31:10','2023-03-28 15:31:10'),(12,3,'留言标题12','留言内容12','2023-03-28 15:31:10','回复信息12','2023-03-28 15:31:10','2023-03-28 15:31:10'),(13,2,'留言标题13','留言内容13','2023-03-28 15:31:10','回复信息13','2023-03-28 15:31:10','2023-03-28 15:31:10'),(14,2,'留言标题14','留言内容14','2023-03-28 15:31:10','回复信息14','2023-03-28 15:31:10','2023-03-28 15:31:10'),(15,1,'反馈11111111','反馈内容12121212','2023-03-28 15:54:19','回复2312312312','2023-03-28 15:56:09','2023-03-28 15:54:19');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-03-28 15:31:10','公告详情1','2023-03-28 15:31:10'),(2,'公告标题2',2,'upload/news2.jpg','2023-03-28 15:31:10','公告详情2','2023-03-28 15:31:10'),(3,'公告标题3',1,'upload/news3.jpg','2023-03-28 15:31:10','公告详情3','2023-03-28 15:31:10'),(4,'公告标题4',1,'upload/news4.jpg','2023-03-28 15:31:10','公告详情4','2023-03-28 15:31:10'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-28 15:31:10','公告详情5','2023-03-28 15:31:10'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-28 15:31:10','公告详情6','2023-03-28 15:31:10'),(7,'公告标题7',2,'upload/news7.jpg','2023-03-28 15:31:10','公告详情7','2023-03-28 15:31:10'),(8,'公告标题8',1,'upload/news8.jpg','2023-03-28 15:31:10','公告详情8','2023-03-28 15:31:10'),(9,'公告标题9',1,'upload/news9.jpg','2023-03-28 15:31:10','公告详情9','2023-03-28 15:31:10'),(10,'公告标题10',2,'upload/news10.jpg','2023-03-28 15:31:10','公告详情10','2023-03-28 15:31:10'),(11,'公告标题11',2,'upload/news11.jpg','2023-03-28 15:31:10','公告详情11','2023-03-28 15:31:10'),(12,'公告标题12',2,'upload/news12.jpg','2023-03-28 15:31:10','公告详情12','2023-03-28 15:31:10'),(13,'公告标题13',2,'upload/news13.jpg','2023-03-28 15:31:10','公告详情13','2023-03-28 15:31:10'),(14,'公告标题14',2,'upload/news14.jpg','2023-03-28 15:31:10','公告详情14','2023-03-28 15:31:10');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','xsb5df754zan3wcdhuwr2uvd0s2zoe1w','2023-03-28 15:35:13','2023-03-28 16:55:07'),(2,1,'a1','yonghu','用户','8fag4ffok18y5ftp1hiws2zta3di94w1','2023-03-28 15:42:36','2023-03-28 16:53:29');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-28 15:30:36');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','388.32','2023-03-28 15:31:10'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','139.33','2023-03-28 15:31:10'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','760.50','2023-03-28 15:31:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
