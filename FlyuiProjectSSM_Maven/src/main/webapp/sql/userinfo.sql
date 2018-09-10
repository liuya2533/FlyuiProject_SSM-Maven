/*
Navicat MySQL Data Transfer

Source Server         : javaconbine
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : flyui

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-10 20:10:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `head_url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1.jpg',
  `sex` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '男',
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '北京',
  `sign` longtext COLLATE utf8_unicode_ci,
  `phone` int(11) NOT NULL DEFAULT '0',
  `kissnum` int(10) NOT NULL DEFAULT '200',
  `power` int(11) NOT NULL DEFAULT '0',
  `experience` int(10) NOT NULL DEFAULT '10',
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(2) NOT NULL DEFAULT '0',
  `activecode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `signinnum` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '黄金甲', '123@qq.com', '202CB962AC59075B964B07152D234B70', '1.jpg', '男', '洛杉矶', '仁者无敌', '123', '70', '0', '10', '2018-08-15 16:59:51', '1', '', '2018-09-10 17:06:46', '10');
INSERT INTO `userinfo` VALUES ('2', '艾克', '456@qq.com', '202CB962AC59075B964B07152D234B70', '2.jpg', '男', '北京', '多级反馈', '0', '200', '0', '10', '2018-08-15 21:11:53', '1', '', '2018-08-24 21:10:52', '0');
INSERT INTO `userinfo` VALUES ('3', '雅阁', 'qq@qq.com', '202CB962AC59075B964B07152D234B70', '3.jpg', '男', '北京', '九分裤登记表', '0', '200', '0', '10', '2018-08-16 09:49:54', '1', '', '2018-08-24 21:10:52', '0');
INSERT INTO `userinfo` VALUES ('4', '史蒂芬孙', 'liuya@163.com', '250CF8B51C773F3F8DC8B4BE867A9A02', '6.jpg', '', '巴黎', '东方闪电', '0', '90', '0', '10', '2018-08-16 09:54:31', '1', '', '2018-09-01 14:13:49', '5');
INSERT INTO `userinfo` VALUES ('5', '12306', '12306@163.com', '202CB962AC59075B964B07152D234B70', '5.jpg', '男', '北京', '发动机号', '0', '50', '0', '10', '2018-08-16 09:56:50', '1', '', '2018-08-24 21:10:52', '0');
INSERT INTO `userinfo` VALUES ('6', '哈哈', 'liuya522127@163.com', '250CF8B51C773F3F8DC8B4BE867A9A02', '1.jpg', '男', '沈阳', '胜多负少的撒旦法', '0', '200', '0', '10', '2018-08-19 19:43:03', '1', '1534678983320', '2018-08-24 21:10:52', '0');
INSERT INTO `userinfo` VALUES ('17', '宇宙最帅', 'tianjiaxingxing@163.com', '202CB962AC59075B964B07152D234B70', '7.jpg', '男', '北京', '加肥加大', '0', '200', '0', '10', '2018-08-19 19:51:29', '1', '1534679488684', '2018-08-24 21:10:52', '0');
