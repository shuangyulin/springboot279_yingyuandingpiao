/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dianyingdingpiao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dianyingdingpiao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dianyingdingpiao`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/dianyingdingpiao/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/dianyingdingpiao/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/dianyingdingpiao/upload/config3.jpg');

/*Table structure for table `dianying` */

DROP TABLE IF EXISTS `dianying`;

CREATE TABLE `dianying` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dianying_name` varchar(200) DEFAULT NULL COMMENT '电影名称  Search111 ',
  `dianying_photo` varchar(200) DEFAULT NULL COMMENT '电影照片',
  `dianying_types` int(11) DEFAULT NULL COMMENT '电影类型 Search111',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '电影座位',
  `dianying_old_money` decimal(10,2) DEFAULT NULL COMMENT '原价 ',
  `dianying_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞 ',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `dianying_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `dianying_content` text COMMENT '电影简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='电影';

/*Data for the table `dianying` */

insert  into `dianying`(`id`,`dianying_name`,`dianying_photo`,`dianying_types`,`zuowei_number`,`dianying_old_money`,`dianying_new_money`,`zan_number`,`cai_number`,`shangxia_types`,`dianying_delete`,`dianying_content`,`create_time`) values (1,'电影名称1','http://localhost:8080/dianyingdingpiao/upload/1645096978456.jpg',4,22,'953.73','455.46',50,33,1,1,'<p>电影简介1</p>','2022-03-08 19:18:22'),(2,'电影名称2','http://localhost:8080/dianyingdingpiao/upload/1645096969558.jpg',1,22,'628.58','191.16',60,254,1,1,'<p>电影简介2</p>','2022-03-08 19:18:22'),(3,'电影名称3','http://localhost:8080/dianyingdingpiao/upload/1645096962159.jpg',4,22,'758.66','328.49',20,278,1,1,'<p>电影简介3</p>','2022-03-08 19:18:22'),(4,'电影名称4','http://localhost:8080/dianyingdingpiao/upload/1645096953965.jpg',4,22,'568.12','391.81',36,132,1,1,'<p>电影简介4</p>','2022-03-08 19:18:22'),(5,'电影名称5','http://localhost:8080/dianyingdingpiao/upload/1645096944146.jpg',2,22,'725.37','220.37',78,381,1,1,'<p>电影简介5</p>','2022-03-08 19:18:22'),(6,'电影名称6','http://localhost:8080/dianyingdingpiao/upload/1645096937254.jpg',2,22,'941.48','15.70',37,409,1,1,'<p>电影简介6</p>','2022-03-08 19:18:22');

/*Table structure for table `dianying_collection` */

DROP TABLE IF EXISTS `dianying_collection`;

CREATE TABLE `dianying_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianying_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='电影收藏';

/*Data for the table `dianying_collection` */

insert  into `dianying_collection`(`id`,`dianying_id`,`yonghu_id`,`dianying_collection_types`,`insert_time`,`create_time`) values (2,2,2,1,'2022-03-08 19:18:22','2022-03-08 19:18:22'),(3,3,2,1,'2022-03-08 19:18:22','2022-03-08 19:18:22'),(5,5,1,1,'2022-03-08 19:18:22','2022-03-08 19:18:22'),(6,6,1,1,'2022-03-08 19:18:22','2022-03-08 19:18:22'),(15,4,1,1,'2022-03-08 20:20:50','2022-03-08 20:20:50');

/*Table structure for table `dianying_commentback` */

DROP TABLE IF EXISTS `dianying_commentback`;

CREATE TABLE `dianying_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianying_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='电影评价';

/*Data for the table `dianying_commentback` */

insert  into `dianying_commentback`(`id`,`dianying_id`,`yonghu_id`,`dianying_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'评价内容1','回复信息1','2022-03-08 19:18:22','2022-03-08 19:18:22','2022-03-08 19:18:22'),(2,2,2,'评价内容2','回复信息2','2022-03-08 19:18:22','2022-03-08 19:18:22','2022-03-08 19:18:22'),(3,3,2,'评价内容3','回复信息3','2022-03-08 19:18:22','2022-03-08 19:18:22','2022-03-08 19:18:22'),(4,4,3,'评价内容4','回复信息4','2022-03-08 19:18:22','2022-03-08 19:18:22','2022-03-08 19:18:22'),(5,5,1,'评价内容5','回复信息5','2022-03-08 19:18:22','2022-03-08 19:18:22','2022-03-08 19:18:22'),(6,6,3,'评价内容6','回复信息6','2022-03-08 19:18:22','2022-03-08 19:18:22','2022-03-08 19:18:22'),(12,6,1,'评价内容11111',NULL,'2022-03-08 20:01:28',NULL,'2022-03-08 20:01:28'),(14,4,1,'9999',NULL,'2022-03-08 20:43:01',NULL,'2022-03-08 20:43:01'),(15,2,2,'好看  极力推荐','111111','2022-03-08 15:23:04','2022-03-08 15:26:49','2022-03-08 15:23:04'),(16,5,2,'23145',NULL,'2022-03-08 15:28:06',NULL,'2022-03-08 15:28:06');

/*Table structure for table `dianying_order` */

DROP TABLE IF EXISTS `dianying_order`;

CREATE TABLE `dianying_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位 ',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '购买的日期 ',
  `dianying_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `dianying_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `dianying_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='电影订单';

/*Data for the table `dianying_order` */

insert  into `dianying_order`(`id`,`dianying_order_uuid_number`,`dianying_id`,`yonghu_id`,`buy_zuowei_number`,`buy_zuowei_time`,`dianying_order_true_price`,`dianying_order_types`,`dianying_order_payment_types`,`insert_time`,`create_time`) values (1,'1645098194713',6,1,'6,16','2022-03-08','31.40',1,1,'2022-03-08 19:43:19','2022-03-08 19:43:19'),(2,'1645100366554',6,1,'3,4,13,14','2022-03-08','62.80',1,1,'2022-03-08 20:19:35','2022-03-08 20:19:35'),(3,'1645100961241',4,1,'3,4,5,6,7,8','2022-03-08','2350.86',1,1,'2022-03-08 20:29:23','2022-03-08 20:29:23'),(4,'1646724009267',5,2,'3,4,5','2022-03-08','661.11',3,1,'2022-03-08 15:20:11','2022-03-08 15:20:11'),(5,'1646724036858',2,2,'5,7,9','2022-03-08','573.48',1,1,'2022-03-08 15:20:39','2022-03-08 15:20:39'),(6,'1646724344306',5,2,'4,5,6','2022-03-09','661.11',1,1,'2022-03-08 15:25:46','2022-03-08 15:25:46');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-08 19:15:24'),(2,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-08 19:15:24'),(3,'dianying_types','电影类型',1,'电影类型1',NULL,NULL,'2022-03-08 19:15:24'),(4,'dianying_types','电影类型',2,'电影类型2',NULL,NULL,'2022-03-08 19:15:24'),(5,'dianying_types','电影类型',3,'电影类型3',NULL,NULL,'2022-03-08 19:15:24'),(6,'dianying_types','电影类型',4,'电影类型4',NULL,NULL,'2022-03-08 19:15:24'),(7,'dianying_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-08 19:15:24'),(8,'dianying_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-03-08 19:15:24'),(9,'dianying_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-03-08 19:15:24'),(10,'dianying_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-08 19:15:24'),(11,'dianying_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-08 19:15:24'),(12,'dianying_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-08 19:15:24'),(15,'dianying_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-08 19:15:24'),(16,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-08 19:15:24'),(17,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-08 19:15:24'),(18,'news_types','公告信息类型',1,'公告信息类型1',NULL,NULL,'2022-03-08 19:15:24'),(19,'news_types','公告信息类型',2,'公告信息类型2',NULL,NULL,'2022-03-08 19:15:24'),(20,'news_types','公告信息类型',3,'公告信息类型3',NULL,NULL,'2022-03-08 19:15:24'),(21,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2022-03-08 15:03:27'),(22,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2022-03-08 15:03:27'),(23,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2022-03-08 15:03:28'),(24,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-08 15:03:28'),(25,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-08 15:03:28');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`laoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子1',1,NULL,NULL,'帖子1的内容',NULL,1,1,'2022-03-08 15:15:39',NULL,'2022-03-08 15:15:39'),(2,'帖子2',2,NULL,NULL,'帖子2的内容',NULL,2,1,'2022-03-08 15:21:08',NULL,'2022-03-08 15:21:08'),(4,NULL,NULL,NULL,1,'1111',2,NULL,2,'2022-03-08 15:22:24',NULL,'2022-03-08 15:22:24'),(5,NULL,2,NULL,NULL,'7777',2,NULL,2,'2022-03-08 15:23:18',NULL,'2022-03-08 15:23:18'),(6,NULL,2,NULL,NULL,'0110',2,NULL,2,'2022-03-08 15:26:00',NULL,'2022-03-08 15:26:00'),(7,NULL,NULL,NULL,1,'3333',2,NULL,2,'2022-03-08 15:27:27',NULL,'2022-03-08 15:27:27'),(8,NULL,2,NULL,NULL,'1001',2,NULL,2,'2022-03-08 15:28:18',NULL,'2022-03-08 15:28:18');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告信息标题1',2,'http://localhost:8080/dianyingdingpiao/upload/1645097052249.jpg','2022-03-08 19:18:22','<p>公告信息详情1</p>',1,'2022-03-08 19:18:22'),(2,'公告信息标题2',1,'http://localhost:8080/dianyingdingpiao/upload/1645097042406.jpg','2022-03-08 19:18:22','<p>公告信息详情2</p>',1,'2022-03-08 19:18:22'),(3,'公告信息标题3',3,'http://localhost:8080/dianyingdingpiao/upload/1645097034901.jpg','2022-03-08 19:18:22','<p>公告信息详情3</p>',1,'2022-03-08 19:18:22'),(4,'公告信息标题4',1,'http://localhost:8080/dianyingdingpiao/upload/1645097018485.jpg','2022-03-08 19:18:22','<p>公告信息详情4</p>',1,'2022-03-08 19:18:22'),(5,'公告信息标题5',1,'http://localhost:8080/dianyingdingpiao/upload/1645097009644.jpg','2022-03-08 19:18:22','<p>公告信息详情5</p>',1,'2022-03-08 19:18:22'),(6,'公告信息标题6',1,'http://localhost:8080/dianyingdingpiao/upload/1645097002806.webp','2022-03-08 19:18:22','<p>公告信息详情6333</p>',1,'2022-03-08 19:18:22');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','wiv6gfv0sr3709v6xbp2gm6cist669h1','2022-03-08 19:21:27','2022-03-08 16:36:41'),(2,1,'a1','yonghu','用户','8ehzi6przxilhgtzgnwyo2suny3xlah0','2022-03-08 19:25:23','2022-03-08 16:31:18'),(3,2,'a2','yonghu','用户','ywfhqpxcehanrviill3mbvg0bt4ajj6k','2022-03-08 15:16:32','2022-03-08 16:27:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',1,'410224199610232001','17703786901','http://localhost:8080/dianyingdingpiao/upload/1645097109085.jpg','513.16',1,'2022-03-08 19:18:22'),(2,'a2','123456','用户姓名2',2,'410224199610232002','17703786902','http://localhost:8080/dianyingdingpiao/upload/1645097095834.jpg','7630.05',1,'2022-03-08 19:18:22'),(3,'a3','123456','用户姓名3',1,'410224199610232003','17703786903','http://localhost:8080/dianyingdingpiao/upload/1645097085441.jpg','512.16',1,'2022-03-08 19:18:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
