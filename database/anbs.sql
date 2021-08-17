/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : anbs

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2021-08-16 15:52:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jy_email_info
-- ----------------------------
DROP TABLE IF EXISTS `jy_email_info`;
CREATE TABLE `jy_email_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL_ACCOUNT` varchar(200) NOT NULL DEFAULT '' COMMENT '邮箱账号',
  `EMAIL_PASSWORD` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱密码',
  `EFFECTFLAG` varchar(8) NOT NULL DEFAULT 'N' COMMENT '有效状态Y有效N无效，只能有一个Y',
  `REMARK` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `SMTP_HOST` varchar(64) DEFAULT '' COMMENT 'SMTPHost',
  `CREATE_TIME` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='邮箱发送方信息';

-- ----------------------------
-- Records of jy_email_info
-- ----------------------------
INSERT INTO `jy_email_info` VALUES ('2', 'ywww@joyintech.com', 'Yb500800', 'Y', '333', '', '2021-08-03 19:30:19');
INSERT INTO `jy_email_info` VALUES ('5', 'yb39qqq@qq.com', 'ee', 'N', 'w', '', '2021-08-03 19:30:19');

-- ----------------------------
-- Table structure for jy_emp_info
-- ----------------------------
DROP TABLE IF EXISTS `jy_emp_info`;
CREATE TABLE `jy_emp_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `EMP_NAME` varchar(50) NOT NULL DEFAULT '' COMMENT '员工姓名',
  `EMP_ID` varchar(20) NOT NULL DEFAULT '' COMMENT '员工号',
  `EMAIL` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `ENTRY_TIME` varchar(50) NOT NULL DEFAULT '1970-01-01' COMMENT '入司时间',
  `EFFECTFLAG` varchar(8) NOT NULL DEFAULT '' COMMENT '在职状态 E在职,D离职',
  `DATA_DATE` varchar(0) DEFAULT '' COMMENT '数据时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='员工信息表';

-- ----------------------------
-- Records of jy_emp_info
-- ----------------------------
INSERT INTO `jy_emp_info` VALUES ('1', 'yb1', 'ZY21279', 'yb39@qq.com', '2021-06-03', 'E', '');
INSERT INTO `jy_emp_info` VALUES ('2', 'zf2', 'ZY21278', 'yb39@qq.com', '2020-08-03', 'E', '');
INSERT INTO `jy_emp_info` VALUES ('3', 'yb3', 'ZY21277', 'yb39@qq.com', '2020-08-03', 'E', '');
INSERT INTO `jy_emp_info` VALUES ('4', 'zf4', 'ZY21276', 'yb39@qq.com', '2022-08-03', 'E', '');
INSERT INTO `jy_emp_info` VALUES ('5', 'yb5', 'ZY21275', 'yb39@qq.com', '2008-08-03', 'E', '');
INSERT INTO `jy_emp_info` VALUES ('6', 'zf6', 'ZY21274', 'yb39@qq.com', '2012-08-03', 'E', '');
INSERT INTO `jy_emp_info` VALUES ('7', 'yb7', 'ZY21273', 'yb39@qq.com', '2018-08-03', 'E', '');

-- ----------------------------
-- Table structure for jy_year_temp_info
-- ----------------------------
DROP TABLE IF EXISTS `jy_year_temp_info`;
CREATE TABLE `jy_year_temp_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TEMP_NAME` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `TEMP_ROUTE` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `TEMP_SIZE` double NOT NULL DEFAULT '0' COMMENT '文件大小',
  `CREATE_TIME` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='周年模板文件信息';

-- ----------------------------
-- Records of jy_year_temp_info
-- ----------------------------
