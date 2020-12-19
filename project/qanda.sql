/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50701
Source Host           : localhost:3306
Source Database       : qanda

Target Server Type    : MYSQL
Target Server Version : 50701
File Encoding         : 65001

Date: 2020-12-02 20:28:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `client`
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_gender` varchar(255) DEFAULT NULL,
  `client_id_card` varchar(255) DEFAULT NULL,
  `client_real_name` varchar(255) DEFAULT NULL,
  `client_education` varchar(255) DEFAULT NULL,
  `client_realm` varchar(255) DEFAULT NULL,
  `client_min_money` int(11) DEFAULT NULL,
  `client_banlance` int(11) DEFAULT NULL,
  `client_photo` varchar(255) DEFAULT NULL,
  `question_num` int(11) DEFAULT '0',
  `answer_num` int(11) DEFAULT '0',
  `high_opinion_num` int(11) DEFAULT '0',
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('2', '23232323232', '555555lll', '大佬', '男', '777777778888888888', '张三', '高中及以下', '数学', '30', '500', 'b.png', '10', '20', '18');
INSERT INTO `client` VALUES ('1', '11111111111', 'aaa000', '大白', '女', '101010102222222222', '王一二', '硕士及以上', '英语', '10', '400', '1606825015651.jpg', '2', '0', '0');
INSERT INTO `client` VALUES ('3', '000', '000', 'cs', '女', '030105066646452529', '测试', '本科/专科', '数学', '50', '500', '1606900177021.jpg', '4', '50', '30');
INSERT INTO `client` VALUES ('4', '89876756756', 'jghttgdg', 'helper', '女', '098879677856656546', '何芳', '本科/专科', '哲学', '10', '200', 'a.png', '4', '9', '9');
INSERT INTO `client` VALUES ('5', '111', '111', '某某', '男', '798798676566564454', '李立', '硕士及以上', '经济学', '100', '1000', '1606878730937.jpg', '0', '80', '75');
INSERT INTO `client` VALUES ('6', '2222', '0000', 'didi', '女', '789642367836466364', '狄迪', '硕士及以上', '哲学', '5', '50', 'a.png', '2', '0', '0');
INSERT INTO `client` VALUES ('7', '78638764873', '32867', '顶级复刻', '男', '154813165131336852', '段小军', '硕士及以上', '计算机', '25', '3000', 'b.png', '5', '200', '180');
INSERT INTO `client` VALUES ('8', '123', '123', '大学生', '女', '156546466312316516', '孙莎莎', '高中及以下', '历史学', '5', '888', 'a.png', '20', '79', '68');
INSERT INTO `client` VALUES ('9', '6668797', '78979', '助人为乐', '女', '415646133213511616', '纪宁', '本科/专科', '汉语言学', '2', '100', 'a.png', '30', '150', '145');
INSERT INTO `client` VALUES ('10', '3872787938', '289289', 'Jackson', '男', '126465413213231565', '贾克斯', '本科/专科', '其他', '25', '999', 'b.png', '3', '99', '49');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) DEFAULT NULL,
  `question_content` varchar(255) DEFAULT NULL,
  `question_photo` varchar(255) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publisher_online_time` varchar(255) DEFAULT NULL,
  `question_level` varchar(255) DEFAULT NULL,
  `question_direction` varchar(255) DEFAULT NULL,
  `question_money` int(11) DEFAULT NULL,
  `question_status` varchar(255) DEFAULT NULL,
  `publish_time` varchar(255) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '需求规格说明书内容', '需求规格说明书内容不包括以下哪项?A.软件功能性描述B.软件的性能描述C.算法过程的详细描述', '1606526759314.jpg', '1', '8:00-13:00', '大学', '理学', '30', '未解答', '2020-11-18 13:09:00', '5');
INSERT INTO `question` VALUES ('2', '总结Serializable和Parcelable的区别', '总结Serializable和Parcelable的区别', '1606526759314.jpg', '2', '8:00-18:00', '大学', '理学', '50', '未解答', '2020-11-20 23:29:49', null);
INSERT INTO `question` VALUES ('3', '求极限', '讨论函数极限', 'q1.png', '3', '8:00-12:00', '大学', '数学', '100', '已解答', '2020-11-19 8:39:00', '8');
INSERT INTO `question` VALUES ('4', '倒装结构练习题', 'No sooner ________ themselves in their seats in the theatre ________ the curtain went up.A. they have settled; before B. had they settled; thanC. have they settled; when D. they had settled; than', '1606809666009.jpg', '3', '15:00-17:00', '高中', '英语', '20', '未解答', '2020-11-21 15:38:08', null);
INSERT INTO `question` VALUES ('5', '比较面积', '比较两个图形的面积大小，求出最小面积', 'q2.png', '3', '8:00-11:00', '小学', '数学', '10', '已解答', '2020-11-23 7:59:09', null);
INSERT INTO `question` VALUES ('6', '描述作文思路', '以语文为话题', '1606809666009.jpg', '5', '10:00-15:30', '高中', '语文', '30', '未解答', '2020-11-25 14:09:10', null);
INSERT INTO `question` VALUES ('7', '如何求电容', '12、面积为s、相距为d的两个平行板之间充以绝对电容率为s的电介质，则该平行板电容器的电容为？', '1606809666009.jpg', '8', '12:00-13:30', '大学', '物理', '20', '未解答', '2020-12-1 15:38:09', null);
INSERT INTO `question` VALUES ('8', '法律知识', '简述我国产品质量法的特征', 'q2.png', '3', '11:30-14:00', '大学', '法学', '30', '未解答', '2020-11-30 12:20:10', null);
INSERT INTO `question` VALUES ('9', '求面积', '求下列图形的面积', 'q2.png', '4', '13:00-15:40', '小学', '数学', '5', '已解答', '2020-12-3 13:14:07', '4');
INSERT INTO `question` VALUES ('10', '英语作文', '以 my home为主题写一篇作文', 'q2.png', '8', '20:00-21:00', '小学', '英语', '40', '未解答', '2020-11-29 15:29:39', null);
INSERT INTO `question` VALUES ('11', '站在匀速行驶的汽车里的乘客受到几个力的作用?', '站在匀速行驶的汽车里的乘客受到几个力的作用( )A.1个 B.2 个 C.3个 D.4个', 'q2.png', '1', '13:00-18:00', '初中', '物理', '20', '已解答', '2020-11-28 15:46:01', '2');
INSERT INTO `question` VALUES ('12', '在直角三角形中,已知斜边长度,什么时候两直角边之和最大?为什么?求证?', '在直角三角形中,已知斜边长度,什么时候两直角边之和最大?为什么?求证?', 'q2.png', '6', '8:00-10:00', '小学', '数学', '11', '已解答', '2020-11-28 15:46:13', '3');
INSERT INTO `question` VALUES ('13', 'GitHub 上有哪些有关图像处理或是机器学习的有趣项目？', 'GitHub 上有哪些有关图像处理或是机器学习的有趣项目？', 'q2.png', '2', '14:00-20:00', '大学', '计算机', '30', '未解答', '2020-11-25 18:08:12', null);
INSERT INTO `question` VALUES ('14', '细胞在分化过程中蛋白质的种类与数量是否改变?', '细胞在分化过程中蛋白质的种类与数量是否改变?', 'q1.png', '7', '20:00-22:00', '初中', '生物', '10', '未解答', '2020-03-21 7:21:12', null);
INSERT INTO `question` VALUES ('15', '中国人民银行发行中国首次太空行走成功金银纪念币一套。该套纪念币为中华人民共和国法定货币。据此回答下列问题。', '中国人民银行发行中国首次太空行走成功金银纪念币一套。该套纪念币为中华人民共和国法定货币。据此回答下列问题。', 'q1.png', '5', '13:00-17:00', '高中', '政治', '20', '未解答', '2020-10-10 12:00:00', null);
INSERT INTO `question` VALUES ('16', '关于下列变化中需要加入氧化剂（或者还原剂）才能够实现的化学反应.有什么方法可以很快做出来?', '关于下列变化中需要加入氧化剂（或者还原剂）才能够实现的化学反应.有什么方法可以很快做出来?', 'q1.png', '9', '9:00-12:00', '初中', '化学', '10', '已解答', '2020-10-11 19:00:14', '7');
INSERT INTO `question` VALUES ('17', '建立革命统一战线的必然性和可能性是什么?', '建立革命统一战线的必然性和可能性是什么?', 'q1.png', '9', '8:00-11:00', '初中', '历史', '10', '未解答', '2020-11-02 18:55:12', null);
INSERT INTO `question` VALUES ('18', 'Node.js有没有可视化数据库?', 'Node.js有没有可视化数据库?', 'q1.png', '2', '8:00-20:00', '大学', '计算机', '30', '未解答', '2020-07-13 9:17:03', null);
INSERT INTO `question` VALUES ('19', '现在时跟现在完成时的区别？', '现在时跟现在完成时的区别？', 'q1.png', '9', '7:00-10:00', '初中', '英语', '10', '已解答', '2020-09-10 10:00:25', '1');
INSERT INTO `question` VALUES ('20', '怎么高分通过英语四六级?', '怎么高分通过英语四六级?', 'q1.png', '3', '9:00-10:00', '大学', '英语', '66', '已解答', '2020-11-11 11:11:12', '3');
INSERT INTO `question` VALUES ('21', '测试', '测试', 'q1.png', '3', '13:00-15:40', '小学', '语文', '20', '未解答', '2020-11-21 15:38:08', null);
INSERT INTO `question` VALUES ('25', '发布测试2', '发布测试2', '1606877321443.jpg', '5', '10:47-22:47', '初中', '数学', '88', '未解答', '2020-12-02 10:48:41', '0');
INSERT INTO `question` VALUES ('24', '发布测试', '发布测试', '1606877172094.jpg', '5', '10:45-22:45', '大学', '工学', '66', '未解答', '2020-12-02 10:46:12', '0');
INSERT INTO `question` VALUES ('26', '发布测试3', '发布测试3', null, '5', '10:49-22:49', '初中', '数学', '55', '未解答', '2020-12-02 10:49:09', '0');
INSERT INTO `question` VALUES ('27', '发布测试4', '发布测试4', '1606877747146.jpg', '5', '10:55-22:55', '初中', '化学', '44', '未解答', '2020-12-02 10:55:47', '0');
INSERT INTO `question` VALUES ('28', '发布测试5', '发布测试5', null, '5', '10:56-22:56', '大学', '军事学', '11', '未解答', '2020-12-02 10:56:23', '0');
INSERT INTO `question` VALUES ('29', '发布测试6', '发布测试6', '1606878062063.jpg', '3', '11:01-23:01', '大学', '军事学', '22', '未解答', '2020-12-02 11:01:02', '0');
INSERT INTO `question` VALUES ('30', '发布测试7', '发布测试7', '1606878615418.jpg', '3', '11:10-23:17', '大学', '军事学', '15', '未解答', '2020-12-02 11:10:15', '0');
INSERT INTO `question` VALUES ('31', '发布测试8', '发布测试8', null, '3', '11:22-23:22', '初中', '数学', '12', '未解答', '2020-12-02 11:23:07', '0');
INSERT INTO `question` VALUES ('32', '发布测试9', '发布测试9', '1606879455877.jpg', '3', '11:23-23:23', '大学', '军事学', '18', '未解答', '2020-12-02 11:24:16', '0');
INSERT INTO `question` VALUES ('39', '预约测试', '预约测试', '1606895863737.jpg', '3', '3:57-15:57', '大学', '军事学', '999', '未解答', '2020-12-02 15:57:44', '0');

-- ----------------------------
-- Table structure for `subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `subscribed_id` int(11) DEFAULT NULL,
  `question_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`subscribe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subscribe
-- ----------------------------
INSERT INTO `subscribe` VALUES ('1', '5', '2', '3', '未解答');
INSERT INTO `subscribe` VALUES ('2', '8', '3', '3', '未解答');
INSERT INTO `subscribe` VALUES ('3', '8', '1', '3', '未解答');
INSERT INTO `subscribe` VALUES ('4', '3', '4', '5', '未解答');
INSERT INTO `subscribe` VALUES ('5', '3', '5', '8', '已解答');
INSERT INTO `subscribe` VALUES ('6', '5', '6', '3', '未解答');
INSERT INTO `subscribe` VALUES ('7', '8', '7', '5', '已解答');
INSERT INTO `subscribe` VALUES ('8', '3', '8', '5', '未解答');
INSERT INTO `subscribe` VALUES ('9', '5', '9', '8', '已解答');
INSERT INTO `subscribe` VALUES ('10', '8', '10', '8', '未解答');
INSERT INTO `subscribe` VALUES ('11', '3', '39', '5', '未解答');
INSERT INTO `subscribe` VALUES ('12', '3', '32', '5', '未解答');
