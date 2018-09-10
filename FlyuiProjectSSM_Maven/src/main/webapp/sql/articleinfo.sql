/*
Navicat MySQL Data Transfer

Source Server         : javaconbine
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : flyui

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-10 20:11:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articleinfo
-- ----------------------------
DROP TABLE IF EXISTS `articleinfo`;
CREATE TABLE `articleinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `istop` int(2) NOT NULL DEFAULT '0',
  `isgood` int(2) NOT NULL DEFAULT '0',
  `isdone` int(2) NOT NULL DEFAULT '0',
  `remarknum` int(10) NOT NULL DEFAULT '0',
  `visitnum` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL DEFAULT '0',
  `paykiss` int(10) NOT NULL DEFAULT '0',
  `releasetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `typeid` int(2) NOT NULL DEFAULT '0',
  `topic_markdown_content` longtext COLLATE utf8_unicode_ci,
  `topic_markdown_html` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articleinfo
-- ----------------------------
INSERT INTO `articleinfo` VALUES ('1', '第一条帖子', '1', '1', '0', '9', '13', '4', '30', '2018-08-16 17:02:49', '1', null, null);
INSERT INTO `articleinfo` VALUES ('2', '第一条帖子', '1', '0', '0', '33', '20', '4', '30', '2018-08-16 17:08:33', '2', null, null);
INSERT INTO `articleinfo` VALUES ('3', '第一条帖子', '0', '0', '0', '53', '20', '4', '50', '2018-08-16 17:20:55', '3', null, null);
INSERT INTO `articleinfo` VALUES ('4', '好', '0', '0', '1', '12', '101', '4', '30', '2018-08-16 19:30:07', '4', null, null);
INSERT INTO `articleinfo` VALUES ('5', '西红柿首付', '0', '0', '0', '3', '0', '1', '50', '2018-08-18 12:07:34', '2', null, null);
INSERT INTO `articleinfo` VALUES ('6', '更好', '0', '0', '0', '48', '0', '1', '0', '2018-08-18 13:53:01', '1', null, null);
INSERT INTO `articleinfo` VALUES ('7', '规范化', '0', '0', '0', '48', '0', '3', '0', '2018-08-18 13:53:04', '2', null, null);
INSERT INTO `articleinfo` VALUES ('8', '黑寡妇', '0', '0', '0', '37', '0', '5', '0', '2018-08-18 13:53:06', '3', null, null);
INSERT INTO `articleinfo` VALUES ('9', '挂号费和', '0', '0', '1', '26', '0', '3', '0', '2018-08-18 13:53:11', '4', null, null);
INSERT INTO `articleinfo` VALUES ('10', '挂号费', '0', '1', '0', '458', '0', '2', '0', '2018-08-18 13:53:15', '4', null, null);
INSERT INTO `articleinfo` VALUES ('11', '黑寡妇', '1', '0', '0', '37', '0', '3', '0', '2018-08-18 13:53:21', '3', null, null);
INSERT INTO `articleinfo` VALUES ('12', '古典风格', '0', '0', '0', '235', '0', '4', '0', '2018-08-18 13:53:24', '2', null, null);
INSERT INTO `articleinfo` VALUES ('13', '大范甘迪', '0', '0', '1', '126', '0', '2', '0', '2018-08-18 13:53:26', '1', null, null);
INSERT INTO `articleinfo` VALUES ('14', '二奋斗', '1', '0', '0', '46', '0', '1', '0', '2018-08-18 13:53:28', '3', null, null);
INSERT INTO `articleinfo` VALUES ('15', '规范化二', '0', '0', '0', '79', '0', '3', '0', '2018-08-18 13:53:29', '2', null, null);
INSERT INTO `articleinfo` VALUES ('16', '不VB你', '0', '0', '0', '37', '0', '2', '0', '2018-08-18 13:53:30', '1', null, null);
INSERT INTO `articleinfo` VALUES ('17', '门板你忙吧vVB', '0', '0', '0', '5', '0', '3', '0', '2018-08-18 13:53:34', '3', null, null);
INSERT INTO `articleinfo` VALUES ('18', '女包', '0', '0', '0', '46', '0', '4', '0', '2018-08-18 13:53:36', '2', null, null);
INSERT INTO `articleinfo` VALUES ('19', '你还模拟', '0', '0', '0', '57', '0', '5', '0', '2018-08-18 13:53:38', '1', null, null);
INSERT INTO `articleinfo` VALUES ('20', '，吗CVBS', '1', '0', '1', '81', '1', '5', '0', '2018-08-18 13:53:40', '3', null, null);
INSERT INTO `articleinfo` VALUES ('21', '没你爸妈', '0', '0', '0', '37', '0', '3', '0', '2018-08-18 13:53:43', '4', null, null);
INSERT INTO `articleinfo` VALUES ('22', '美女吧', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:53:46', '3', null, null);
INSERT INTO `articleinfo` VALUES ('23', '冰女吧', '0', '0', '0', '3', '0', '1', '0', '2018-08-18 13:53:48', '4', null, null);
INSERT INTO `articleinfo` VALUES ('24', '能不能', '0', '1', '0', '3', '0', '2', '0', '2018-08-18 13:53:51', '2', null, null);
INSERT INTO `articleinfo` VALUES ('25', '不VB你不', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:53:55', '3', null, null);
INSERT INTO `articleinfo` VALUES ('26', '从VB从', '0', '0', '0', '3', '0', '1', '0', '2018-08-18 13:53:58', '4', null, null);
INSERT INTO `articleinfo` VALUES ('27', 'VB线程', '0', '0', '1', '3', '0', '1', '0', '2018-08-18 13:54:00', '2', null, null);
INSERT INTO `articleinfo` VALUES ('28', '迟迟不', '0', '0', '0', '3', '0', '5', '0', '2018-08-18 13:54:02', '3', null, null);
INSERT INTO `articleinfo` VALUES ('29', '不才能', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:54:05', '2', null, null);
INSERT INTO `articleinfo` VALUES ('30', '不能', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:54:07', '3', null, null);
INSERT INTO `articleinfo` VALUES ('31', '没你爸妈', '1', '0', '0', '3', '0', '3', '0', '2018-08-18 13:54:12', '1', null, null);
INSERT INTO `articleinfo` VALUES ('32', '女包', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:54:17', '3', null, null);
INSERT INTO `articleinfo` VALUES ('33', '女包', '0', '0', '0', '3', '0', '4', '0', '2018-08-18 13:54:21', '2', null, null);
INSERT INTO `articleinfo` VALUES ('34', '班冲刺班呢', '0', '0', '1', '3', '0', '2', '0', '2018-08-18 13:54:25', '3', null, null);
INSERT INTO `articleinfo` VALUES ('35', '不能吃VB', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:54:28', '1', null, null);
INSERT INTO `articleinfo` VALUES ('36', '冰女吧', '0', '0', '0', '3', '0', '4', '0', '2018-08-18 13:54:31', '3', null, null);
INSERT INTO `articleinfo` VALUES ('37', '吧 ', '0', '0', '0', '3', '0', '4', '0', '2018-08-18 13:54:33', '2', null, null);
INSERT INTO `articleinfo` VALUES ('38', '你不不VB从', '0', '1', '0', '3', '0', '4', '0', '2018-08-18 13:54:36', '1', null, null);
INSERT INTO `articleinfo` VALUES ('39', '班', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:54:37', '3', null, null);
INSERT INTO `articleinfo` VALUES ('40', '冰女吧', '0', '0', '1', '3', '0', '4', '0', '2018-08-18 13:54:39', '1', null, null);
INSERT INTO `articleinfo` VALUES ('41', '不女不女', '0', '0', '0', '3', '0', '5', '0', '2018-08-18 13:54:40', '3', null, null);
INSERT INTO `articleinfo` VALUES ('42', '你爸爸', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:54:42', '1', null, null);
INSERT INTO `articleinfo` VALUES ('43', 'VB从VB', '1', '1', '0', '5', '9', '1', '0', '2018-08-18 13:54:44', '3', null, null);
INSERT INTO `articleinfo` VALUES ('44', 'VB从VB', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:54:47', '4', null, null);
INSERT INTO `articleinfo` VALUES ('45', 'VB从V型从', '0', '0', '1', '3', '0', '1', '0', '2018-08-18 13:54:48', '1', null, null);
INSERT INTO `articleinfo` VALUES ('46', 'VB从', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:54:50', '3', null, null);
INSERT INTO `articleinfo` VALUES ('47', 'VB程序', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:54:52', '1', null, null);
INSERT INTO `articleinfo` VALUES ('48', 'VB女厕', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:54:54', '1', null, null);
INSERT INTO `articleinfo` VALUES ('49', 'VB你不', '0', '0', '1', '3', '0', '4', '0', '2018-08-18 13:54:57', '1', null, null);
INSERT INTO `articleinfo` VALUES ('50', '风格不错', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:54:59', '3', null, null);
INSERT INTO `articleinfo` VALUES ('51', '发给VB', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:55:01', '1', null, null);
INSERT INTO `articleinfo` VALUES ('52', 'CVBS', '1', '0', '0', '3', '1', '1', '0', '2018-08-18 13:55:03', '3', null, null);
INSERT INTO `articleinfo` VALUES ('53', '线程VB', '0', '0', '1', '3', '0', '3', '0', '2018-08-18 13:55:06', '1', null, null);
INSERT INTO `articleinfo` VALUES ('54', '地方vc', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:55:07', '3', null, null);
INSERT INTO `articleinfo` VALUES ('55', '发给', '0', '0', '0', '3', '0', '4', '0', '2018-08-18 13:55:09', '1', null, null);
INSERT INTO `articleinfo` VALUES ('56', ' VBv的', '0', '0', '0', '3', '0', '5', '0', '2018-08-18 13:55:11', '3', null, null);
INSERT INTO `articleinfo` VALUES ('57', '发过火', '0', '1', '1', '3', '0', '3', '0', '2018-08-18 13:55:13', '4', null, null);
INSERT INTO `articleinfo` VALUES ('58', '挂号费', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:55:14', '1', null, null);
INSERT INTO `articleinfo` VALUES ('59', ' 共和国v', '0', '0', '0', '3', '0', '1', '0', '2018-08-18 13:55:17', '3', null, null);
INSERT INTO `articleinfo` VALUES ('60', '更符合地方', '0', '0', '1', '3', '0', '2', '0', '2018-08-18 13:55:18', '1', null, null);
INSERT INTO `articleinfo` VALUES ('61', '更好发给', '0', '0', '0', '3', '0', '1', '0', '2018-08-18 13:55:22', '3', null, null);
INSERT INTO `articleinfo` VALUES ('62', '开个会发给', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:55:24', '1', null, null);
INSERT INTO `articleinfo` VALUES ('63', '擐甲挥戈', '0', '1', '0', '3', '0', '3', '0', '2018-08-18 13:55:26', '3', null, null);
INSERT INTO `articleinfo` VALUES ('64', '擐甲挥戈', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:55:27', '3', null, null);
INSERT INTO `articleinfo` VALUES ('65', '机加工', '1', '1', '0', '3', '27', '1', '0', '2018-08-18 13:55:29', '1', null, null);
INSERT INTO `articleinfo` VALUES ('66', '很反感就回滚', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:55:31', '3', null, null);
INSERT INTO `articleinfo` VALUES ('67', '黑寡妇', '0', '0', '0', '2', '0', '3', '0', '2018-08-18 13:55:33', '1', null, null);
INSERT INTO `articleinfo` VALUES ('68', '贵航股份', '0', '0', '0', '14', '7', '1', '0', '2018-08-18 13:55:35', '2', null, null);
INSERT INTO `articleinfo` VALUES ('69', '合格', '0', '0', '0', '4', '2', '3', '0', '2018-08-18 13:55:38', '3', null, null);
INSERT INTO `articleinfo` VALUES ('70', '复古韩国', '0', '0', '0', '3', '1', '1', '0', '2018-08-18 13:55:42', '3', null, null);
INSERT INTO `articleinfo` VALUES ('71', '电饭锅', '0', '0', '0', '3', '0', '3', '0', '2018-08-18 13:55:44', '1', null, null);
INSERT INTO `articleinfo` VALUES ('72', '地方', '0', '0', '0', '3', '0', '2', '0', '2018-08-18 13:55:47', '3', null, null);
INSERT INTO `articleinfo` VALUES ('73', '计划', '0', '0', '0', '4', '3', '3', '0', '2018-08-18 13:55:52', '1', null, null);
INSERT INTO `articleinfo` VALUES ('83', '都很费劲的', '0', '0', '0', '6', '9', '5', '20', '2018-08-20 11:25:31', '1', null, null);
INSERT INTO `articleinfo` VALUES ('84', '超体2', '0', '0', '0', '0', '0', '4', '30', '2018-08-23 23:24:51', '1', null, null);
INSERT INTO `articleinfo` VALUES ('85', '看见发', '0', '0', '0', '0', '1', '1', '30', '2018-08-24 08:37:59', '1', null, null);
INSERT INTO `articleinfo` VALUES ('86', '涵盖了房间', '0', '0', '0', '2', '11', '1', '50', '2018-08-24 08:46:24', '1', null, null);
INSERT INTO `articleinfo` VALUES ('87', '第一条帖子', '0', '0', '0', '0', '0', '1', '0', '2018-08-29 20:36:44', '0', null, null);
INSERT INTO `articleinfo` VALUES ('88', '框架整合', '0', '0', '0', '0', '0', '1', '0', '2018-08-29 20:40:06', '1', null, null);
INSERT INTO `articleinfo` VALUES ('89', '回电话', '0', '0', '0', '0', '0', '6', '0', '2018-08-29 20:44:17', '1', null, null);
INSERT INTO `articleinfo` VALUES ('90', '电饭锅', '0', '0', '0', '0', '0', '4', '0', '2018-08-30 11:25:37', '1', null, null);
INSERT INTO `articleinfo` VALUES ('91', '这是测试markdown', '0', '0', '0', '0', '3', '1', '0', '2018-08-31 17:35:51', '1', '##markdown\r\n款发动机\r\n考得很好\r\n\r\n------------\r\n\r\n发奋斗电饭锅发\r\n1. 钴铬合金\r\n2. 弗兰克股份\r\n费老顾客', null);
INSERT INTO `articleinfo` VALUES ('92', '风口浪尖地方', '1', '0', '0', '0', '0', '1', '0', '2018-08-31 17:49:40', '0', '# 分开了的\r\n记得放鼓楼大街\r\n发动机概论第\r\n地方就够了\r\n梵蒂冈激烈的\r\n电饭锅激烈的\r\n电饭锅激烈的发\r\n法规及浪蝶狂蜂', '<h1 id=\"h1-u5206u5F00u4E86u7684\"><a name=\"分开了的\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>分开了的</h1><p>记得放鼓楼大街<br>发动机概论第<br>地方就够了<br>梵蒂冈激烈的<br>电饭锅激烈的<br>电饭锅激烈的发<br>法规及浪蝶狂蜂\r\n');
INSERT INTO `articleinfo` VALUES ('93', '发表帖子的代码', '0', '0', '0', '2', '17', '4', '0', '2018-09-01 14:04:52', '1', '~~~\r\n//用户添加帖子\r\n	@RequestMapping(\"/addArticle\")\r\n	public String addArticle(Articleinfo article,HttpServletRequest request,HttpSession session) {\r\n		//获得当前登录者信息\r\n		Userinfo user =(Userinfo)session.getAttribute(\"userinfo\");\r\n		if(user==null) {\r\n			return \"redirect:/jsp/loginpage.jsp\";\r\n		}\r\n		int userid=user.getId();\r\n		article.setUserid(userid);\r\n		//渲染的html参数\r\n		article.setTopic_markdown_html(request.getParameter(\"test-editormd-html-code\"));\r\n		//算出用户剩余的飞吻数\r\n		user.setKissnum(user.getKissnum()-article.getPaykiss());\r\n		//将帖子和用户一起传给service层\r\n		as.addNewArticle(article,user);\r\n		return \"redirect:/page/index\";\r\n	}\r\n\r\n~~~', '<pre><code>//用户添加帖子\r\n    @RequestMapping(\"/addArticle\")\r\n    public String addArticle(Articleinfo article,HttpServletRequest request,HttpSession session) {\r\n        //获得当前登录者信息\r\n        Userinfo user =(Userinfo)session.getAttribute(\"userinfo\");\r\n        if(user==null) {\r\n            return \"redirect:/jsp/loginpage.jsp\";\r\n        }\r\n        int userid=user.getId();\r\n        article.setUserid(userid);\r\n        //渲染的html参数\r\n        article.setTopic_markdown_html(request.getParameter(\"test-editormd-html-code\"));\r\n        //算出用户剩余的飞吻数\r\n        user.setKissnum(user.getKissnum()-article.getPaykiss());\r\n        //将帖子和用户一起传给service层\r\n        as.addNewArticle(article,user);\r\n        return \"redirect:/page/index\";\r\n    }\r\n</code></pre>');
INSERT INTO `articleinfo` VALUES ('94', '分隔符', '0', '0', '0', '0', '4', '4', '0', '2018-09-01 16:03:44', '1', '##打卡机胜利大街\r\n到家了可\r\n点击\r\n1. 点开链接点击\r\n2. 看的会客室\r\n3. 圣诞快乐就', '<h2 id=\"h2-u6253u5361u673Au80DCu5229u5927u8857\"><a name=\"打卡机胜利大街\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>打卡机胜利大街</h2><p>到家了可<br>点击\r\n<ol>\r\n<li>点开链接点击</li><li>看的会客室</li><li>圣诞快乐就</li></ol>\r\n');
INSERT INTO `articleinfo` VALUES ('95', '进口红酒看', '0', '0', '0', '0', '3', '1', '0', '2018-09-06 16:29:27', '1', '##多了几分打开发货单塑料袋积分\r\n倒海翻江看SDK回复\r\n贷款还返回速度快放假\r\n大姐夫来的急\r\n#淡饭黄齑多厉害\r\nd', '<h2 id=\"h2-u591Au4E86u51E0u5206u6253u5F00u53D1u8D27u5355u5851u6599u888Bu79EFu5206\"><a name=\"多了几分打开发货单塑料袋积分\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>多了几分打开发货单塑料袋积分</h2><p>倒海翻江看SDK回复<br>贷款还返回速度快放假<br>大姐夫来的急\r\n<h1 id=\"h1-u6DE1u996Du9EC4u9F51u591Au5389u5BB3\"><a name=\"淡饭黄齑多厉害\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>淡饭黄齑多厉害</h1><p>d</p>\r\n');
INSERT INTO `articleinfo` VALUES ('96', '接口的记得放', '0', '0', '0', '0', '0', '1', '0', '2018-09-07 16:10:17', '1', '#代发货的开奖号地方\r\n~~~\r\npdfdlfjdfd\r\ndfjdjl{\r\ndfkldjf\r\n}\r\ndfdkf\r\n//我发的房间里', '<h1 id=\"h1-u4EE3u53D1u8D27u7684u5F00u5956u53F7u5730u65B9\"><a name=\"代发货的开奖号地方\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>代发货的开奖号地方</h1><p>~~~<br>pdfdlfjdfd<br>dfjdjl{<br>dfkldjf<br>}<br>dfdkf<br>//我发的房间里\r\n');
