/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t219`;
CREATE DATABASE IF NOT EXISTS `t219` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t219`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/meishipengrenhudong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/meishipengrenhudong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/meishipengrenhudong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-31 13:55:43'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-31 13:55:43'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-31 13:55:43'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-31 13:55:43'),
	(5, 'meishi_types', '美食类型', 1, '美食类型1', NULL, NULL, '2022-03-31 13:55:43'),
	(6, 'meishi_types', '美食类型', 2, '美食类型2', NULL, NULL, '2022-03-31 13:55:43'),
	(7, 'meishi_types', '美食类型', 3, '美食类型3', NULL, NULL, '2022-03-31 13:55:43'),
	(8, 'meishi_types', '美食类型', 4, '美食类型4', NULL, NULL, '2022-03-31 13:55:43'),
	(9, 'meishi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-31 13:55:43'),
	(10, 'meishi_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-31 13:55:43'),
	(11, 'meishi_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-31 13:55:43'),
	(12, 'meishizhishi_types', '美食知识类型', 1, '美食知识类型1', NULL, NULL, '2022-03-31 13:55:43'),
	(13, 'meishizhishi_types', '美食知识类型', 2, '美食知识类型2', NULL, NULL, '2022-03-31 13:55:43'),
	(14, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-31 13:55:43'),
	(15, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-31 13:55:43'),
	(16, 'meishizhishi_types', '美食知识类型', 3, '美食知识类型3', NULL, '', '2022-04-01 01:50:39');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/meishipengrenhudong/upload/gonggao1.jpg', 1, '2022-03-31 13:57:02', '公告详情1', '2022-03-31 13:57:02'),
	(2, '公告名称2', 'http://localhost:8080/meishipengrenhudong/upload/gonggao2.jpg', 1, '2022-03-31 13:57:02', '公告详情2', '2022-03-31 13:57:02'),
	(3, '公告名称3', 'http://localhost:8080/meishipengrenhudong/upload/gonggao3.jpg', 2, '2022-03-31 13:57:02', '公告详情3', '2022-03-31 13:57:02'),
	(4, '公告名称4', 'http://localhost:8080/meishipengrenhudong/upload/gonggao4.jpg', 1, '2022-03-31 13:57:02', '公告详情4', '2022-03-31 13:57:02'),
	(5, '公告名称5', 'http://localhost:8080/meishipengrenhudong/upload/gonggao5.jpg', 2, '2022-03-31 13:57:02', '公告详情5', '2022-03-31 13:57:02');

DROP TABLE IF EXISTS `meishi`;
CREATE TABLE IF NOT EXISTS `meishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '美食编号  Search111 ',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食照片',
  `meishi_video` varchar(200) DEFAULT NULL COMMENT '美食做法',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `meishi_types` int DEFAULT NULL COMMENT '美食类型 Search111',
  `meishi_clicknum` int DEFAULT NULL COMMENT '游览量 ',
  `meishi_shicai_text` text COMMENT '相关食材',
  `meishi_content` text COMMENT '美食详情',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `meishi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='美食';

DELETE FROM `meishi`;
INSERT INTO `meishi` (`id`, `yonghu_id`, `meishi_uuid_number`, `meishi_name`, `meishi_photo`, `meishi_video`, `zan_number`, `cai_number`, `meishi_types`, `meishi_clicknum`, `meishi_shicai_text`, `meishi_content`, `shangxia_types`, `meishi_delete`, `create_time`) VALUES
	(1, 3, '164873502244420', '美食名称1', 'http://localhost:8080/meishipengrenhudong/upload/meishi1.jpg', 'http://localhost:8080/meishipengrenhudong/upload/video.mp4', 103, 417, 1, 141, '相关食材1', '美食详情1', 1, 1, '2022-03-31 13:57:02'),
	(2, 3, '164873502244519', '美食名称2', 'http://localhost:8080/meishipengrenhudong/upload/meishi2.jpg', 'http://localhost:8080/meishipengrenhudong/upload/video.mp4', 149, 140, 2, 127, '相关食材2', '美食详情2', 1, 1, '2022-03-31 13:57:02'),
	(3, 3, '164873502244512', '美食名称3', 'http://localhost:8080/meishipengrenhudong/upload/meishi3.jpg', 'http://localhost:8080/meishipengrenhudong/upload/video.mp4', 472, 118, 3, 477, '相关食材3', '美食详情3', 1, 1, '2022-03-31 13:57:02'),
	(4, 3, '164873502244510', '美食名称4', 'http://localhost:8080/meishipengrenhudong/upload/meishi4.jpg', 'http://localhost:8080/meishipengrenhudong/upload/video.mp4', 17, 100, 3, 411, '相关食材4', '美食详情4', 1, 1, '2022-03-31 13:57:02'),
	(5, 2, '16487350224453', '美食名称5', 'http://localhost:8080/meishipengrenhudong/upload/meishi5.jpg', 'http://localhost:8080/meishipengrenhudong/upload/video.mp4', 247, 123, 1, 290, '相关食材51111', '<p>美食详情5ssssg</p>', 1, 1, '2022-03-31 13:57:02');

DROP TABLE IF EXISTS `meishizhishi`;
CREATE TABLE IF NOT EXISTS `meishizhishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `meishizhishi_name` varchar(200) DEFAULT NULL COMMENT '美食知识名称 Search111  ',
  `meishizhishi_photo` varchar(200) DEFAULT NULL COMMENT '美食知识图片 ',
  `meishizhishi_types` int NOT NULL COMMENT '美食知识类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '美食知识发布时间 ',
  `meishizhishi_content` text COMMENT '美食知识详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='美食知识';

DELETE FROM `meishizhishi`;
INSERT INTO `meishizhishi` (`id`, `meishizhishi_name`, `meishizhishi_photo`, `meishizhishi_types`, `insert_time`, `meishizhishi_content`, `create_time`) VALUES
	(1, '美食知识名称1', 'http://localhost:8080/meishipengrenhudong/upload/gonggao1.jpg', 1, '2022-03-31 13:57:02', '美食知识详情1', '2022-03-31 13:57:02'),
	(2, '美食知识名称2', 'http://localhost:8080/meishipengrenhudong/upload/gonggao2.jpg', 1, '2022-03-31 13:57:02', '美食知识详情2', '2022-03-31 13:57:02'),
	(3, '美食知识名称3', 'http://localhost:8080/meishipengrenhudong/upload/gonggao3.jpg', 2, '2022-03-31 13:57:02', '美食知识详情3', '2022-03-31 13:57:02'),
	(4, '美食知识名称4', 'http://localhost:8080/meishipengrenhudong/upload/gonggao4.jpg', 2, '2022-03-31 13:57:02', '美食知识详情4', '2022-03-31 13:57:02'),
	(5, '美食知识名称5', 'http://localhost:8080/meishipengrenhudong/upload/gonggao5.jpg', 1, '2022-03-31 13:57:02', '美食知识详情5', '2022-03-31 13:57:02');

DROP TABLE IF EXISTS `meishi_collection`;
CREATE TABLE IF NOT EXISTS `meishi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='美食收藏';

DELETE FROM `meishi_collection`;
INSERT INTO `meishi_collection` (`id`, `meishi_id`, `yonghu_id`, `meishi_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 2, 1, '2022-03-31 13:57:02', '2022-03-31 13:57:02'),
	(4, 4, 1, 1, '2022-03-31 13:57:02', '2022-03-31 13:57:02'),
	(5, 5, 3, 1, '2022-03-31 13:57:02', '2022-03-31 13:57:02'),
	(6, 4, 1, 2, '2022-04-01 01:14:24', '2022-04-01 01:14:24'),
	(7, 3, 3, 2, '2022-04-01 01:39:33', '2022-04-01 01:39:33'),
	(8, 3, 3, 1, '2022-04-01 01:39:49', '2022-04-01 01:39:49'),
	(9, 1, 3, 2, '2022-04-01 01:49:53', '2022-04-01 01:49:53'),
	(10, 1, 3, 1, '2022-04-01 01:50:10', '2022-04-01 01:50:10'),
	(11, 5, 1, 1, '2024-06-09 10:51:34', '2024-06-09 10:51:34');

DROP TABLE IF EXISTS `meishi_liuyan`;
CREATE TABLE IF NOT EXISTS `meishi_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='美食留言';

DELETE FROM `meishi_liuyan`;
INSERT INTO `meishi_liuyan` (`id`, `meishi_id`, `yonghu_id`, `meishi_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-03-31 13:57:02', '回复信息1', '2022-03-31 13:57:02', '2022-03-31 13:57:02'),
	(2, 2, 3, '留言内容2', '2022-03-31 13:57:02', '回复信息2', '2022-03-31 13:57:02', '2022-03-31 13:57:02'),
	(3, 3, 3, '留言内容3', '2022-03-31 13:57:02', '回复信息3', '2022-03-31 13:57:02', '2022-03-31 13:57:02'),
	(4, 4, 3, '留言内容4', '2022-03-31 13:57:02', '回复信息4', '2022-03-31 13:57:02', '2022-03-31 13:57:02'),
	(5, 5, 3, '留言内容5', '2022-03-31 13:57:02', '回复信息5', '2022-03-31 13:57:02', '2022-03-31 13:57:02'),
	(6, 3, 3, '11111', '2022-04-01 01:39:40', NULL, NULL, '2022-04-01 01:39:40'),
	(7, 1, 3, '3333333', '2022-04-01 01:49:59', NULL, NULL, '2022-04-01 01:49:59'),
	(8, 5, 3, '232132131', '2022-04-01 01:52:16', '11111111111111111', '2022-04-01 01:52:27', '2022-04-01 01:52:16');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'ds6ftxk2c1kutadkqtnz698zvyk9rgij', '2022-04-01 01:13:15', '2024-06-09 11:50:05'),
	(2, 1, 'a1', 'yonghu', '用户', 'a8njpte4iycy40lbzpx0ujo7zwr1a2fw', '2022-04-01 01:14:21', '2024-06-09 11:51:14'),
	(3, 2, 'a2', 'yonghu', '用户', 'ofv11wwm8uar6zf4es96chddsnx1w8nh', '2022-04-01 01:23:12', '2022-04-01 02:51:11'),
	(4, 3, 'a3', 'yonghu', '用户', '3e5dvoye5eqhyg30rk5d59m70z1fhgho', '2022-04-01 01:39:14', '2022-04-01 02:49:31');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/meishipengrenhudong/upload/yonghu1.jpg', 2, '1@qq.com', '2022-03-31 13:57:02'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/meishipengrenhudong/upload/yonghu2.jpg', 2, '2@qq.com', '2022-03-31 13:57:02'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/meishipengrenhudong/upload/yonghu3.jpg', 1, '3@qq.com', '2022-03-31 13:57:02');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
