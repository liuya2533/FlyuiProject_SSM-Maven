/*
Navicat MySQL Data Transfer

Source Server         : javaconbine
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : flyui

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-10 20:11:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collectedinfo
-- ----------------------------
DROP TABLE IF EXISTS `collectedinfo`;
CREATE TABLE `collectedinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `artid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of collectedinfo
-- ----------------------------
