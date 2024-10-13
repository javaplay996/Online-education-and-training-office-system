/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xianshangjiaoyupeuxunbangong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xianshangjiaoyupeuxunbangong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xianshangjiaoyupeuxunbangong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dianfnag` */

DROP TABLE IF EXISTS `dianfnag`;

CREATE TABLE `dianfnag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianfnag_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `dianfnag_cishu` int(11) DEFAULT NULL COMMENT '本周电访次数',
  `dianfnag_shijian` int(11) DEFAULT NULL COMMENT '本周电访时间',
  `dianfnag_text` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='电访信息';

/*Data for the table `dianfnag` */

insert  into `dianfnag`(`id`,`dianfnag_name`,`yonghu_id`,`jiaoshi_id`,`dianfnag_cishu`,`dianfnag_shijian`,`dianfnag_text`,`insert_time`,`create_time`) values (1,'标题1',2,1,235,279,'备注1','2023-02-22 15:25:21','2023-02-22 15:25:21'),(2,'标题2',2,1,279,331,'备注2','2023-02-22 15:25:21','2023-02-22 15:25:21'),(3,'标题3',3,2,219,130,'备注3','2023-02-22 15:25:21','2023-02-22 15:25:21'),(4,'标题4',3,3,48,13,'备注4','2023-02-22 15:25:21','2023-02-22 15:25:21'),(5,'标题5',1,3,6,501,'备注5','2023-02-22 15:25:21','2023-02-22 15:25:21'),(6,'123',3,1,123,123,'123','2023-02-22 16:04:26','2023-02-22 16:04:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-02-22 15:25:10'),(2,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-02-22 15:25:10'),(3,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-02-22 15:25:10'),(4,'jiaoxueshipin_types','备课类型',1,'备课类型1',NULL,NULL,'2023-02-22 15:25:10'),(5,'jiaoxueshipin_types','备课类型',2,'备课类型2',NULL,NULL,'2023-02-22 15:25:10'),(6,'jiaoxueshipin_types','备课类型',3,'备课类型3',NULL,NULL,'2023-02-22 15:25:10'),(7,'yunyingshijian_types','运营事件类型',1,'运营事件类型1',NULL,NULL,'2023-02-22 15:25:10'),(8,'yunyingshijian_types','运营事件类型',2,'运营事件类型2',NULL,NULL,'2023-02-22 15:25:10'),(9,'yunyingshijian_types','运营事件类型',3,'运营事件类型3',NULL,NULL,'2023-02-22 15:25:10'),(10,'kaihuitongzhi_types','会议类型',1,'会议类型1',NULL,NULL,'2023-02-22 15:25:11'),(11,'kaihuitongzhi_types','会议类型',2,'会议类型2',NULL,NULL,'2023-02-22 15:25:11'),(12,'kaihuitongzhi_types','会议类型',3,'会议类型3',NULL,NULL,'2023-02-22 15:25:11'),(13,'jiaoshiqingjia_types','请假类型',1,'生病',NULL,NULL,'2023-02-22 15:25:11'),(14,'jiaoshiqingjia_types','请假类型',2,'有事',NULL,NULL,'2023-02-22 15:25:11'),(15,'jiaoshiqingjia_types','请假类型',3,'其他',NULL,NULL,'2023-02-22 15:25:11'),(16,'jiaoshiqingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-02-22 15:25:11'),(17,'jiaoshiqingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-02-22 15:25:11'),(18,'jiaoshiqingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-02-22 15:25:11'),(19,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2023-02-22 15:25:11'),(20,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2023-02-22 15:25:11'),(21,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2023-02-22 15:25:11'),(22,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-02-22 15:25:11'),(23,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-02-22 15:25:11'),(24,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-02-22 15:25:11'),(25,'sex_types','性别',1,'男',NULL,NULL,'2023-02-22 15:25:11'),(26,'sex_types','性别',2,'女',NULL,NULL,'2023-02-22 15:25:11'),(27,'banji_types','班级',1,'班级1',NULL,NULL,'2023-02-22 15:25:11'),(28,'banji_types','班级',2,'班级2',NULL,NULL,'2023-02-22 15:25:11'),(29,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-02-22 15:25:11'),(30,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-02-22 15:25:11');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='交流平台';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',364,1,'2023-02-22 15:25:21','2023-02-22 15:25:21','2023-02-22 15:25:21'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',62,1,'2023-02-22 15:25:21','2023-02-22 15:25:21','2023-02-22 15:25:21'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',500,1,'2023-02-22 15:25:21','2023-02-22 15:25:21','2023-02-22 15:25:21'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',178,1,'2023-02-22 15:25:21','2023-02-22 15:25:21','2023-02-22 15:25:21'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',444,1,'2023-02-22 15:25:21','2023-02-22 15:25:21','2023-02-22 15:25:21'),(8,NULL,1,NULL,NULL,'123333',5,2,'2023-02-22 16:03:52',NULL,'2023-02-22 16:03:52'),(9,NULL,NULL,1,NULL,'333333333',5,2,'2023-02-22 16:05:10',NULL,'2023-02-22 16:05:10'),(10,NULL,NULL,NULL,1,'123312132',5,2,'2023-02-22 16:06:39',NULL,'2023-02-22 16:06:39');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `jiaoshi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_photo`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1',2,'upload/jiaoshi1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-02-22 15:25:21'),(2,'a2','123456','教师姓名2',2,'upload/jiaoshi2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-02-22 15:25:21'),(3,'a3','123456','教师姓名3',1,'upload/jiaoshi3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-02-22 15:25:21');

/*Table structure for table `jiaoshiqingjia` */

DROP TABLE IF EXISTS `jiaoshiqingjia`;

CREATE TABLE `jiaoshiqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '教师',
  `jiaoshiqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `jiaoshiqingjia_text` text COMMENT '请假缘由',
  `jiaoshiqingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `jiaoshiqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `jiaoshiqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `jiaoshiqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `jiaoshiqingjia_yesno_text` text COMMENT '处理意见',
  `jiaoshiqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='教师请假';

/*Data for the table `jiaoshiqingjia` */

insert  into `jiaoshiqingjia`(`id`,`jiaoshi_id`,`jiaoshiqingjia_name`,`jiaoshiqingjia_text`,`jiaoshiqingjia_types`,`insert_time`,`jiaoshiqingjia_time`,`jiaoshiqingjia_number`,`jiaoshiqingjia_yesno_types`,`jiaoshiqingjia_yesno_text`,`jiaoshiqingjia_shenhe_time`,`create_time`) values (1,1,'请假标题1','请假缘由1',1,'2023-02-22 15:25:21','2023-02-22 15:25:21',327,1,NULL,NULL,'2023-02-22 15:25:21'),(2,3,'请假标题2','请假缘由2',3,'2023-02-22 15:25:21','2023-02-22 15:25:21',211,1,NULL,NULL,'2023-02-22 15:25:21'),(3,1,'请假标题3','请假缘由3',3,'2023-02-22 15:25:21','2023-02-22 15:25:21',254,1,NULL,NULL,'2023-02-22 15:25:21'),(4,1,'请假标题4','请假缘由4',3,'2023-02-22 15:25:21','2023-02-22 15:25:21',485,1,NULL,NULL,'2023-02-22 15:25:21'),(5,3,'请假标题5','请假缘由5',1,'2023-02-22 15:25:21','2023-02-22 15:25:21',449,3,'123123123','2023-02-22 16:06:12','2023-02-22 15:25:21'),(10,1,'123','123',2,'2023-02-22 16:04:43','2023-02-23 00:00:00',10,2,'123','2023-02-22 16:06:06','2023-02-22 16:04:43');

/*Table structure for table `jiaoxueshipin` */

DROP TABLE IF EXISTS `jiaoxueshipin`;

CREATE TABLE `jiaoxueshipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoxueshipin_name` varchar(200) DEFAULT NULL COMMENT '备课信息标题 Search111',
  `jiaoxueshipin_photo` varchar(200) DEFAULT NULL COMMENT '备课信息照片',
  `jiaoxueshipin_file` varchar(200) DEFAULT NULL COMMENT '备课资料',
  `jiaoxueshipin_types` int(11) DEFAULT NULL COMMENT '备课类型 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `jiaoxueshipin_time` timestamp NULL DEFAULT NULL COMMENT '上课时间',
  `jiaoxueshipin_content` text COMMENT '备课详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `jiaoxueshipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='备课信息';

/*Data for the table `jiaoxueshipin` */

insert  into `jiaoxueshipin`(`id`,`jiaoxueshipin_name`,`jiaoxueshipin_photo`,`jiaoxueshipin_file`,`jiaoxueshipin_types`,`jiaoshi_id`,`jiaoxueshipin_time`,`jiaoxueshipin_content`,`insert_time`,`jiaoxueshipin_delete`,`create_time`) values (1,'备课信息标题1','upload/kecheng1.jpg','upload/file.rar',3,3,'2023-02-22 15:25:21','备课详情1','2023-02-22 15:25:21',1,'2023-02-22 15:25:21'),(2,'备课信息标题2','upload/kecheng2.jpg','upload/file.rar',3,3,'2023-02-22 15:25:21','备课详情2','2023-02-22 15:25:21',1,'2023-02-22 15:25:21'),(3,'备课信息标题3','upload/kecheng3.jpg','upload/file.rar',2,2,'2023-02-22 15:25:21','备课详情3','2023-02-22 15:25:21',1,'2023-02-22 15:25:21'),(4,'备课信息标题4','upload/kecheng4.jpg','upload/file.rar',1,1,'2023-02-22 15:25:21','备课详情4','2023-02-22 15:25:21',1,'2023-02-22 15:25:21'),(5,'备课信息标题5','upload/kecheng5.jpg','upload/file.rar',3,2,'2023-02-22 15:25:21','备课详情5','2023-02-22 15:25:21',1,'2023-02-22 15:25:21');

/*Table structure for table `kaihuitongzhi` */

DROP TABLE IF EXISTS `kaihuitongzhi`;

CREATE TABLE `kaihuitongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaihuitongzhi_name` varchar(200) DEFAULT NULL COMMENT '会议标题 Search111',
  `kaihuitongzhi_types` int(11) DEFAULT NULL COMMENT '会议类型 Search111',
  `kaihuitongzhi_content` text COMMENT '会议详情',
  `kaihuitongzhi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会议';

/*Data for the table `kaihuitongzhi` */

insert  into `kaihuitongzhi`(`id`,`kaihuitongzhi_name`,`kaihuitongzhi_types`,`kaihuitongzhi_content`,`kaihuitongzhi_delete`,`insert_time`,`create_time`) values (1,'会议标题1',1,'会议详情1',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(2,'会议标题2',3,'会议详情2',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(3,'会议标题3',3,'会议详情3',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(4,'会议标题4',1,'会议详情4',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(5,'会议标题5',1,'会议详情5',1,'2023-02-22 15:25:21','2023-02-22 15:25:21');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程标题 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_shichang` int(11) DEFAULT NULL COMMENT '课程时长',
  `kecheng_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `kecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_photo`,`kecheng_types`,`kecheng_shichang`,`kecheng_time`,`banji_types`,`jiaoshi_id`,`kecheng_delete`,`kecheng_content`,`create_time`) values (1,'课程标题1','upload/kecheng1.jpg',2,193,'2023-02-22 15:25:21',2,2,1,'课程详情1','2023-02-22 15:25:21'),(2,'课程标题2','upload/kecheng2.jpg',1,165,'2023-02-22 15:25:21',1,3,1,'课程详情2','2023-02-22 15:25:21'),(3,'课程标题3','upload/kecheng3.jpg',2,164,'2023-02-22 15:25:21',2,2,1,'课程详情3','2023-02-22 15:25:21'),(4,'课程标题4','upload/kecheng4.jpg',3,160,'2023-02-22 15:25:21',2,2,1,'课程详情4','2023-02-22 15:25:21'),(5,'课程标题5','upload/kecheng5.jpg',1,27,'2023-02-22 15:25:21',1,1,1,'课程详情5','2023-02-22 15:25:21');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-02-22 15:25:21','公告详情1','2023-02-22 15:25:21'),(2,'公告标题2',2,'upload/news2.jpg','2023-02-22 15:25:21','公告详情2','2023-02-22 15:25:21'),(3,'公告标题3',3,'upload/news3.jpg','2023-02-22 15:25:21','公告详情3','2023-02-22 15:25:21'),(4,'公告标题4',2,'upload/news4.jpg','2023-02-22 15:25:21','公告详情4','2023-02-22 15:25:21'),(5,'公告标题5',1,'upload/news5.jpg','2023-02-22 15:25:21','公告详情5','2023-02-22 15:25:21');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','学生','5zutfpy0cwt48pi661myivu0x3wd0dv7','2023-02-22 15:39:47','2023-02-22 17:03:29'),(2,1,'a1','jiaoshi','教师','7eq89rw9u03v0sf93nspa2g0gv903hhd','2023-02-22 16:04:10','2023-02-22 17:04:10'),(3,1,'admin','users','管理员','wl9qnbsac7kbjv2dw26xiv45n99ybg67','2023-02-22 16:05:20','2023-02-22 17:07:54');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`banji_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','学生姓名1',1,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',2,1,'2023-02-22 15:25:21'),(2,'a2','123456','学生姓名2',2,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',2,1,'2023-02-22 15:25:21'),(3,'a3','123456','学生姓名3',1,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',2,1,'2023-02-22 15:25:21');

/*Table structure for table `yunyingshijian` */

DROP TABLE IF EXISTS `yunyingshijian`;

CREATE TABLE `yunyingshijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yunyingshijian_name` varchar(200) DEFAULT NULL COMMENT '运营事件标题 Search111',
  `yunyingshijian_types` int(11) DEFAULT NULL COMMENT '运营事件类型 Search111',
  `yunyingshijian_content` text COMMENT '运营事件详情',
  `yunyingshijian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='运营事件';

/*Data for the table `yunyingshijian` */

insert  into `yunyingshijian`(`id`,`yunyingshijian_name`,`yunyingshijian_types`,`yunyingshijian_content`,`yunyingshijian_delete`,`insert_time`,`create_time`) values (1,'运营事件标题1',2,'运营事件详情1',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(2,'运营事件标题2',2,'运营事件详情2',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(3,'运营事件标题3',3,'运营事件详情3',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(4,'运营事件标题4',2,'运营事件详情4',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(5,'运营事件标题5',2,'运营事件详情5',1,'2023-02-22 15:25:21','2023-02-22 15:25:21');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业标题 Search111',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '作业照片',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '作业类型 Search111',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `zuoye_content` text COMMENT '作业详情',
  `zuoye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`zuoye_name`,`zuoye_photo`,`zuoye_types`,`zuoye_file`,`jiaoshi_id`,`zuoye_content`,`zuoye_delete`,`insert_time`,`create_time`) values (1,'作业标题1','upload/zuoye1.jpg',2,'upload/file.rar',1,'作业详情1',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(2,'作业标题2','upload/zuoye2.jpg',1,'upload/file.rar',1,'作业详情2',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(3,'作业标题3','upload/zuoye3.jpg',2,'upload/file.rar',3,'作业详情3',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(4,'作业标题4','upload/zuoye4.jpg',3,'upload/file.rar',2,'作业详情4',1,'2023-02-22 15:25:21','2023-02-22 15:25:21'),(5,'作业标题5','upload/zuoye5.jpg',2,'upload/file.rar',3,'作业详情5',1,'2023-02-22 15:25:21','2023-02-22 15:25:21');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
