/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : wenbida

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2020-12-09 14:30:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cstatus`
-- ----------------------------
DROP TABLE IF EXISTS `cstatus`;
CREATE TABLE `cstatus` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'off',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cstatus
-- ----------------------------
INSERT INTO `cstatus` VALUES ('1', '3', 'off');
INSERT INTO `cstatus` VALUES ('2', '8', 'off');
INSERT INTO `cstatus` VALUES ('3', '5', 'on');
INSERT INTO `cstatus` VALUES ('4', '6', 'off');
