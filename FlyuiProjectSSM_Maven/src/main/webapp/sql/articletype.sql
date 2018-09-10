/*
Navicat MySQL Data Transfer

Source Server         : javaconbine
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : flyui

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-10 20:11:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articletype
-- ----------------------------
DROP TABLE IF EXISTS `articletype`;
CREATE TABLE `articletype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articletype
-- ----------------------------
INSERT INTO `articletype` VALUES ('1', '提问');
INSERT INTO `articletype` VALUES ('2', '分享');
INSERT INTO `articletype` VALUES ('3', '讨论');
INSERT INTO `articletype` VALUES ('4', '建议');
