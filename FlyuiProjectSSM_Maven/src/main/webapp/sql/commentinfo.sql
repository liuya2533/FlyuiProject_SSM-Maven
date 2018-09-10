/*
Navicat MySQL Data Transfer

Source Server         : javaconbine
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : flyui

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-10 20:10:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commentinfo
-- ----------------------------
DROP TABLE IF EXISTS `commentinfo`;
CREATE TABLE `commentinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `remarktime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `goodnum` int(10) NOT NULL DEFAULT '0',
  `artorcommid` int(10) NOT NULL DEFAULT '0',
  `remarktype` int(2) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `isaccept` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of commentinfo
-- ----------------------------
INSERT INTO `commentinfo` VALUES ('1', '2', '2018-08-20 18:02:46', '0', '65', '0', '电饭锅', '0');
INSERT INTO `commentinfo` VALUES ('2', '5', '2018-08-20 18:11:55', '0', '68', '0', '东北北v东北北v', '0');
INSERT INTO `commentinfo` VALUES ('3', '5', '2018-08-20 18:13:52', '0', '68', '0', '发过的', '0');
INSERT INTO `commentinfo` VALUES ('4', '5', '2018-08-20 18:16:45', '0', '68', '0', '电风扇', '0');
INSERT INTO `commentinfo` VALUES ('5', '5', '2018-08-20 18:25:34', '0', '68', '0', '大幅度发', '0');
INSERT INTO `commentinfo` VALUES ('6', '5', '2018-08-20 18:33:21', '0', '68', '0', '辅导费', '0');
INSERT INTO `commentinfo` VALUES ('7', '5', '2018-08-20 18:35:19', '0', '68', '0', '分隔符', '0');
INSERT INTO `commentinfo` VALUES ('8', '5', '2018-08-20 18:35:53', '0', '68', '0', '发郭德纲', '0');
INSERT INTO `commentinfo` VALUES ('9', '5', '2018-08-20 18:38:43', '0', '68', '0', '胜多负少的', '0');
INSERT INTO `commentinfo` VALUES ('10', '5', '2018-08-20 18:42:54', '0', '68', '0', '地方大幅度', '0');
INSERT INTO `commentinfo` VALUES ('11', '4', '2018-08-21 14:07:58', '0', '83', '0', '一个人都没有真冷清，我来给你踩踩', '0');
INSERT INTO `commentinfo` VALUES ('12', '3', '2018-08-17 20:19:26', '20', '20', '0', '鸡飞狗叫快递费的时间里副科级撒旦教弗兰克见识到了看风景酸豆角发链接拉斯科记得放的减肥了圣诞节', '1');
INSERT INTO `commentinfo` VALUES ('13', '1', '2018-08-22 09:30:56', '0', '73', '0', '福达合金看回家客户端 三楼的会计法老师\n的京东方；两地分居；；水电费的给付对价爱德华\n地方代付款；束带结发的身份就离开', '0');
INSERT INTO `commentinfo` VALUES ('14', '1', '2018-08-22 09:36:08', '0', '67', '0', '地方水电费水电费的国服发给对方', '0');
INSERT INTO `commentinfo` VALUES ('15', '1', '2018-08-22 09:36:18', '0', '67', '0', '奋斗电饭锅发回国后发光飞碟奋斗地方', '0');
INSERT INTO `commentinfo` VALUES ('16', '4', '2018-08-23 15:58:12', '0', '1', '0', 'v发电饭锅发过火好个电饭锅分隔符', '0');
INSERT INTO `commentinfo` VALUES ('17', '6', '2018-08-23 17:15:57', '0', '43', '0', '的咖啡机电视里的积分', '0');
INSERT INTO `commentinfo` VALUES ('18', '6', '2018-08-23 17:16:14', '0', '43', '0', '非结构化防腐剂', '0');
INSERT INTO `commentinfo` VALUES ('19', '6', '2018-08-23 17:30:20', '0', '69', '0', '东方闪电', '0');
INSERT INTO `commentinfo` VALUES ('20', '1', '2018-08-24 09:51:46', '0', '86', '0', '没有人来看帖子啊', '0');
INSERT INTO `commentinfo` VALUES ('21', '3', '2018-08-24 10:52:45', '0', '86', '0', '我来看了，给我赞', '0');
INSERT INTO `commentinfo` VALUES ('22', '1', '2018-08-30 20:56:17', '0', '4', '0', null, '0');
INSERT INTO `commentinfo` VALUES ('23', '1', '2018-08-31 17:51:55', '0', '5', '0', null, '0');
INSERT INTO `commentinfo` VALUES ('24', '1', '2018-08-31 19:54:14', '0', '5', '0', '非官方个', '0');
INSERT INTO `commentinfo` VALUES ('25', '1', '2018-09-01 15:27:16', '0', '93', '0', 'SDFSDFSDsfd是的范德萨sd水电费\n胜多负少是打发点国服是打发点sdf\n胜多负少啥地方地方\n多奋斗', '0');
INSERT INTO `commentinfo` VALUES ('26', '1', '2018-09-03 14:07:56', '0', '68', '0', '东方酒楼电饭锅地方电饭锅梵蒂冈梵蒂冈地方官方的鬼地方个地方官豆腐工坊的鬼地方个地方官电饭锅电饭锅电饭锅电饭锅地方很关键发给好好干发个很反感共和国挂号费挂号费发过火发过火规范化风格很反感合格很反感发个很反感规范化国服', '0');
INSERT INTO `commentinfo` VALUES ('27', '1', '2018-09-03 14:08:08', '0', '68', '0', '', '0');
INSERT INTO `commentinfo` VALUES ('28', '1', '2018-09-03 14:24:23', '0', '83', '0', '非官方个个很反感和韩国锦湖国服发过火电饭锅\n梵蒂冈发过火地方\n电饭锅弗兰克\n发电饭锅电饭锅\n电饭锅', '0');
INSERT INTO `commentinfo` VALUES ('29', '1', '2018-09-10 17:07:49', '0', '93', '0', 'ghjkdfhhkhsjdlkfj', '0');
