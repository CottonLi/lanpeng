/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50736
Source Host           : localhost:3306
Source Database       : lanpeng

Target Server Type    : MYSQL
Target Server Version : 50736
File Encoding         : 65001

Date: 2024-01-05 14:58:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `alarm`
-- ----------------------------
DROP TABLE IF EXISTS `alarm`;
CREATE TABLE `alarm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '告警ID（唯一编号）',
  `alarmRuleId` int(11) NOT NULL COMMENT '报警所属的报警规则ID',
  `alarmRuleVersion` int(11) NOT NULL COMMENT '报警所使用的报警规则版本，不会变！',
  `object` varchar(64) NOT NULL COMMENT '报警对象',
  `level` int(11) NOT NULL COMMENT '报警级别，从报警规则那继承的',
  `content` varchar(512) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `occurTime` datetime DEFAULT NULL,
  `acknowledgeBy` varchar(64) DEFAULT NULL,
  `acknowledgeTime` datetime DEFAULT NULL,
  `clearBy` varchar(64) DEFAULT NULL,
  `clearTime` datetime DEFAULT NULL,
  `closeBy` varchar(64) DEFAULT NULL,
  `closeTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alarm
-- ----------------------------
INSERT INTO `alarm` VALUES ('1', '9', '3', 'zhi经', '1', '测试用的报警1', '1', '2023-12-27 17:29:48', null, '2023-12-28 17:56:34', null, null, null, null);
INSERT INTO `alarm` VALUES ('2', '9', '3', 'zhi经', '1', '测试用的报警1', '2', '2023-12-28 17:30:32', null, null, null, '2023-12-28 17:56:54', null, null);
INSERT INTO `alarm` VALUES ('3', '9', '3', 'zhi经', '1', '测试用的报警1', '3', '2023-12-28 17:30:32', null, null, null, null, null, '2023-12-28 17:57:13');
INSERT INTO `alarm` VALUES ('5', '10', '2', '直径3', '1', '1yue3ri心包经。。。', '2', '2024-01-03 09:20:10', null, null, null, '2024-01-03 09:21:47', null, null);

-- ----------------------------
-- Table structure for `alarmrule`
-- ----------------------------
DROP TABLE IF EXISTS `alarmrule`;
CREATE TABLE `alarmrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL COMMENT '报警规则标识(不知道跟报警标识有啥区别）',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '规则版本,每次保存自增1',
  `dataItemId` int(11) NOT NULL,
  `dataItemCode` varchar(64) NOT NULL COMMENT '数据项标识符',
  `dataItemType` varchar(64) NOT NULL COMMENT '数据项类型',
  `operator` varchar(64) NOT NULL COMMENT '操作符',
  `operator1` float NOT NULL,
  `operator2` float NOT NULL,
  `continuousTime` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `description` varchar(512) NOT NULL,
  `status` char(1) DEFAULT '0' COMMENT '0有效1无效',
  `del_flag` char(1) DEFAULT '0',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alarmrule
-- ----------------------------
INSERT INTO `alarmrule` VALUES ('6', '告警规则d标识符', '1', '3', '数据项d标识符', '数据项d类型', '大于', '3.5', '2', '5', '2', '数据项直线度大于3.5,超过5次告警', '0', '0', null, '2023-12-28 17:04:07', null, null, null);
INSERT INTO `alarmrule` VALUES ('7', '告警规则d标识符', '1', '3', '数据项d标识符', '数据项d类型', '大于', '3.5', '2', '5', '2', '数据项直线度大于3.5,超过5次告警', '0', '0', null, '2023-12-28 17:05:29', null, null, null);
INSERT INTO `alarmrule` VALUES ('8', '告警规则d标识符', '1', '3', '数据项d标识符', '数据项d类型', '大于', '3.5', '2', '5', '2', '数据项直线度大于3.5,超过5次告警', '0', '2', null, '2023-12-28 17:05:30', null, null, null);
INSERT INTO `alarmrule` VALUES ('9', '九月九的9', '4', '1', '数据项d标识符999', '数据项d类型999', '范围', '100.5', '285.3', '250', '4', '数据项直径在100.5到280.3之间正常', '0', '0', null, '2023-12-28 17:05:31', null, '2023-12-28 17:09:29', null);
INSERT INTO `alarmrule` VALUES ('10', '告警规则d标识符', '1', '3', '数据项d标识符', '数据项d类型', '大于', '3.5', '2', '5', '2', '数据项直线度大于3.5,超过5次告警', '0', '0', null, '2023-12-28 17:05:31', null, null, null);
INSERT INTO `alarmrule` VALUES ('11', '告警规则d标识符1', '1', '2', '数据项d标识符', '数据项d类型', '小于', '31.5', '25', '50', '1', '数据项直线度大于3.5,超过5次告警', '0', '0', null, '2023-12-28 17:06:06', null, null, null);
INSERT INTO `alarmrule` VALUES ('12', '九月九的9', '1', '1', '数据项d标识符', '数据项d类型', '范围', '100.5', '285.3', '250', '4', '数据项直径在100.5到280.3之间正常', '0', '0', null, '2023-12-28 17:08:03', null, null, null);
INSERT INTO `alarmrule` VALUES ('13', 'liwei测试', '4', '2', '没有数据项存在2', '没有类型存在2', '范围内2', '250.52', '2500.23', '2250250', '32', '2数据项欸容在250.5到2500.4之间', '0', '0', null, '2024-01-03 08:51:55', null, '2024-01-03 08:53:54', null);
INSERT INTO `alarmrule` VALUES ('14', '测试...', '1', '4', '没有数据项存在', '没有类型存在', '范围内', '250.5', '2500.3', '250250', '3', '数据项欸容在250.5到2500.4之间', '0', '2', null, '2024-01-03 08:52:19', null, null, null);

-- ----------------------------
-- Table structure for `dataitem`
-- ----------------------------
DROP TABLE IF EXISTS `dataitem`;
CREATE TABLE `dataitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `code` varchar(255) NOT NULL COMMENT '标识',
  `dataName` varchar(255) NOT NULL COMMENT '名称',
  `dataType` int(11) NOT NULL COMMENT '数据类型',
  `dataPrecision` int(1) NOT NULL DEFAULT '0' COMMENT '数据精度',
  `unit` varchar(20) DEFAULT NULL COMMENT '单位',
  `nodeType` int(2) NOT NULL COMMENT '节点类型',
  `nodeId` int(11) DEFAULT NULL COMMENT '节点ID',
  `mappingField` varchar(255) NOT NULL COMMENT '对应字段',
  `store_flag` char(1) DEFAULT '1' COMMENT '是否存储（0不存储 1存储）',
  `transfer_flag` char(1) DEFAULT '1' COMMENT '是否传输（0不传输 1传输）',
  `display_flag` char(1) DEFAULT '1' COMMENT '是否展示（0不展示 1展示）',
  `control_flag` char(1) DEFAULT '1' COMMENT '是否控制（0不控制 1控制）',
  `alarm_flag` char(1) DEFAULT '1' COMMENT '是否告警（0不告警 1告警）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='属性表';

-- ----------------------------
-- Records of dataitem
-- ----------------------------
INSERT INTO `dataitem` VALUES ('1', '是多少', '只能怪1', '1', '2', 'mm', '2', '3', 'sdfs ', '1', '1', '1', '1', '1', '0', '', null, '', null, null);
INSERT INTO `dataitem` VALUES ('2', 'd2', '直径2', '2', '2', 'mm', '3', '4', 'yingshe', '1', '1', '1', '1', '1', '0', '', null, '', null, null);
INSERT INTO `dataitem` VALUES ('3', 't1', '温度1', '2', '1', '摄氏度', '3', '5', '胜多负少', '1', '1', '1', '1', '1', '0', '', null, '', null, null);
INSERT INTO `dataitem` VALUES ('4', 'd4', '直径4', '5', '55', 'mm5', '5', '5', '全是5', '1', '1', '1', '1', '1', '2', '', '2024-01-03 09:29:14', '', '2024-01-03 09:30:07', null);
INSERT INTO `dataitem` VALUES ('5', 'd5', 'zhijing5', '5', '5', 'mm5', '5', '5', '5', '1', '1', '1', '1', '1', '0', '', null, '', null, null);
INSERT INTO `dataitem` VALUES ('6', '6', '6', '6', '0', '6', '6', '6', '6', '1', '1', '1', '1', '1', '0', '', null, '', null, null);

-- ----------------------------
-- Table structure for `datastorage`
-- ----------------------------
DROP TABLE IF EXISTS `datastorage`;
CREATE TABLE `datastorage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '数据存储名称',
  `moduleInfoId` int(11) NOT NULL COMMENT '数据存储所使用的模块编号',
  `code` varchar(64) NOT NULL COMMENT '数据存储所使用的模块标识符',
  `type` varchar(64) NOT NULL COMMENT '数据存储所属用的模块类型',
  `dbConnectionId` int(11) NOT NULL COMMENT '数据存储所使用的数据库连接编号',
  `description` varchar(128) NOT NULL,
  `del_flag` char(1) DEFAULT '0',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datastorage
-- ----------------------------
INSERT INTO `datastorage` VALUES ('1', '1号存储', '1', '数据存储1号位', '1ya1', '2', 'fsdfdsfds', '0', null, null, null, null, null);
INSERT INTO `datastorage` VALUES ('2', '2号存储', '3', '电风扇犯得上', 'ddddsfs', '3', 'dsfsd犯得上反对', '0', null, null, null, null, null);
INSERT INTO `datastorage` VALUES ('3', '1250号存储', '3', '二百五1', '2502501', '2', '1日你大爷', '0', null, '2023-12-26 17:25:26', null, '2023-12-26 17:26:33', null);
INSERT INTO `datastorage` VALUES ('4', '5奥', '55', '电风扇犯得上55', 'ddddsfs55', '55', 'dsfsd犯得上反对55', '2', null, '2024-01-03 11:45:23', null, '2024-01-03 11:46:03', null);
INSERT INTO `datastorage` VALUES ('5', '5奥', '55', '电风扇犯得上55', 'ddddsfs55', '55', 'dsfsd犯得上反对55', '2', null, '2024-01-03 11:45:54', null, null, null);

-- ----------------------------
-- Table structure for `datastorageitem`
-- ----------------------------
DROP TABLE IF EXISTS `datastorageitem`;
CREATE TABLE `datastorageitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataStorageId` int(11) NOT NULL COMMENT '数据存储条目对应的数据存储编号',
  `dataItemId` int(11) NOT NULL COMMENT '数据存储条目所使用的数据项编号',
  `tableName` varchar(64) NOT NULL COMMENT '数据存储条目所使用的数据库表',
  `columnName` varchar(64) NOT NULL COMMENT '数据存储条目所使用的数据库表里的哪一列',
  `del_flag` char(1) DEFAULT '0',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datastorageitem
-- ----------------------------
INSERT INTO `datastorageitem` VALUES ('1', '1', '1', 'record1', 'zhijing1', '0', null, null, null, null, null);
INSERT INTO `datastorageitem` VALUES ('2', '1', '2', 'record1', 'zhijing2', '0', null, null, null, null, null);
INSERT INTO `datastorageitem` VALUES ('3', '1', '3', 'record2', 'zhixxiandu', '0', null, null, null, null, null);
INSERT INTO `datastorageitem` VALUES ('4', '3', '2', '表11', '列11', '0', null, '2023-12-26 17:31:16', null, '2023-12-26 17:31:54', null);
INSERT INTO `datastorageitem` VALUES ('5', '2', '2', '2', '2', '0', null, null, null, null, null);
INSERT INTO `datastorageitem` VALUES ('6', '1', '1', '1', '1', '0', null, null, null, null, null);
INSERT INTO `datastorageitem` VALUES ('7', '2', '23', 'record', 'simima', '2', null, '2024-01-03 11:25:29', null, null, null);
INSERT INTO `datastorageitem` VALUES ('8', '25', '235', 'record5', 'simima5', '0', null, '2024-01-03 11:25:38', null, '2024-01-03 11:26:04', null);
INSERT INTO `datastorageitem` VALUES ('9', '9', '9', '9', '9', '2', null, '2024-01-03 11:47:48', null, '2024-01-03 11:48:12', null);

-- ----------------------------
-- Table structure for `dbconnection`
-- ----------------------------
DROP TABLE IF EXISTS `dbconnection`;
CREATE TABLE `dbconnection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '数据库连接名称',
  `dbConnectionTypeId` int(11) NOT NULL COMMENT '数据库连接类型--对应类型编号',
  `serverName` varchar(64) NOT NULL COMMENT '数据库连接---服务器名称',
  `serverPort` int(11) NOT NULL COMMENT '数据库连接---服务器端口号',
  `databaseName` varchar(64) NOT NULL COMMENT '数据库连接---数据库名称',
  `userName` varchar(64) NOT NULL COMMENT '数据库连接---用户名',
  `userPassword` varchar(64) NOT NULL COMMENT '数据库连接---密码',
  `del_flag` char(1) DEFAULT '0',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dbconnection
-- ----------------------------
INSERT INTO `dbconnection` VALUES ('1', '1号连接', '2', '127.0.0.1', '3306', 'lanpeng', 'root', 'root', '0', null, null, null, null, null);
INSERT INTO `dbconnection` VALUES ('2', '2号连接', '4', '192.168.0.175', '871871', 'test', 'sa', '1', '0', null, null, null, null, null);
INSERT INTO `dbconnection` VALUES ('3', '3号连接', '1', '127.0.0.1', '3306', 'lpmcs', 'root', '123456', '0', null, null, null, null, null);
INSERT INTO `dbconnection` VALUES ('4', '1250号连接', '4', '127.0.0.21', '33071', 'lpmcs2', 'root2', '1234562', '0', null, '2023-12-26 17:18:21', null, '2023-12-26 17:18:53', null);
INSERT INTO `dbconnection` VALUES ('5', 'ceshi1', '51', 'localhost1', '250251', 'lp1', 'rrr1', 'ppp1', '2', null, '2024-01-03 11:39:09', null, '2024-01-03 11:39:50', null);

-- ----------------------------
-- Table structure for `dbconnectiontype`
-- ----------------------------
DROP TABLE IF EXISTS `dbconnectiontype`;
CREATE TABLE `dbconnectiontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '数据库连接类型名称--提前预制好的',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dbconnectiontype
-- ----------------------------
INSERT INTO `dbconnectiontype` VALUES ('1', 'mysql5.0');
INSERT INTO `dbconnectiontype` VALUES ('2', 'mysql5.7');
INSERT INTO `dbconnectiontype` VALUES ('3', 'sqlserver2012');
INSERT INTO `dbconnectiontype` VALUES ('4', 'oricale4.1');

-- ----------------------------
-- Table structure for `deviceinfo`
-- ----------------------------
DROP TABLE IF EXISTS `deviceinfo`;
CREATE TABLE `deviceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `code` varchar(255) NOT NULL COMMENT '标识',
  `model` varchar(255) DEFAULT NULL COMMENT '型号',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `communicate_id` int(11) NOT NULL COMMENT '通信组件ID',
  `communicate_config` varchar(512) NOT NULL COMMENT '通信设置',
  `serverId` int(11) NOT NULL COMMENT '服务器号',
  `status` char(1) DEFAULT '0' COMMENT '设备状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备表';

-- ----------------------------
-- Records of deviceinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('4', 'lpdbconnection', '蓝鹏数据库连接表', null, null, 'Lpdbconnection', 'crud', 'element-ui', 'com.lanpeng.data', 'lpdatastorage', 'lpdbconnection', 'lpdbconnection', 'liw', '0', '/', '{\"parentMenuId\":1070}', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29', null);
INSERT INTO `gen_table` VALUES ('5', 'lpdbconnectiontype', '数据库连接类型表', null, null, 'Lpdbconnectiontype', 'crud', 'element-ui', 'com.lanpeng.data', 'lpdatastorage', 'lpdbconnectiontype', 'lpdbconnectiontype', 'liw', '0', '/', '{\"parentMenuId\":1070}', 'admin', '2024-01-04 18:28:33', '', '2024-01-04 18:31:28', null);
INSERT INTO `gen_table` VALUES ('6', 'lpdataitem', '数据项表', null, null, 'Lpdataitem', 'crud', 'element-ui', 'com.lanpeng.data', 'lpdatastorage', 'lpdataitem', '数据项', 'liw', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:14', null);
INSERT INTO `gen_table` VALUES ('7', 'lpdatastorage', '数据存储表', null, null, 'Lpdatastorage', 'crud', 'element-ui', 'com.lanpeng.data', 'lpdatastorage', 'lpdatastorage', '数据存储', 'liw', '0', '/', '{\"parentMenuId\":1071}', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59', null);
INSERT INTO `gen_table` VALUES ('8', 'lpdatastorageitem', '数据存储项表', null, null, 'Lpdatastorageitem', 'crud', 'element-ui', 'com.lanpeng.data', 'lpdatastorage', 'lpdatastorageitem', '数据存储项', 'liw', '0', '/', '{\"parentMenuId\":1072}', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21', null);
INSERT INTO `gen_table` VALUES ('9', 'lpmoduleinfo', '组件表', null, null, 'Lpmoduleinfo', 'crud', 'element-ui', 'com.lanpeng.data', 'lpmoduleinfo', 'lpmoduleinfo', '组件', 'liw', '0', '/', '{\"parentMenuId\":1071}', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32', null);

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('19', '4', 'id', null, 'int(11)', 'Long', 'id', '1', '1', '0', '0', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('20', '4', 'name', '数据库连接名称', 'varchar(64)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('21', '4', 'dbConnectionTypeId', '数据库连接类型--对应类型编号', 'int(11)', 'Long', 'dbConnectionTypeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('22', '4', 'serverName', '数据库连接---服务器名称', 'varchar(64)', 'String', 'serverName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('23', '4', 'serverPort', '数据库连接---服务器端口号', 'int(11)', 'Long', 'serverPort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('24', '4', 'databaseName', '数据库连接---数据库名称', 'varchar(64)', 'String', 'databaseName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '6', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('25', '4', 'userName', '数据库连接---用户名', 'varchar(64)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '7', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('26', '4', 'userPassword', '数据库连接---密码', 'varchar(64)', 'String', 'userPassword', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('27', '4', 'del_flag', null, 'char(1)', 'String', 'delFlag', '0', '0', '0', '0', null, null, null, 'EQ', 'input', '', '9', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('28', '4', 'create_by', null, 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '10', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('29', '4', 'create_time', null, 'datetime', 'Date', 'createTime', '0', '0', '0', '1', null, null, null, 'EQ', 'datetime', '', '11', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('30', '4', 'update_by', null, 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '0', '1', null, null, 'EQ', 'input', '', '12', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('31', '4', 'update_time', null, 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '1', null, null, 'EQ', 'datetime', '', '13', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('32', '4', 'remark', null, 'varchar(500)', 'String', 'remark', '0', '0', '0', '0', '0', '0', null, 'EQ', 'textarea', '', '14', 'admin', '2024-01-04 11:42:29', '', '2024-01-04 11:45:29');
INSERT INTO `gen_table_column` VALUES ('33', '5', 'id', null, 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-04 18:28:33', '', '2024-01-04 18:31:28');
INSERT INTO `gen_table_column` VALUES ('34', '5', 'name', '数据库连接类型名称--提前预制好的', 'varchar(128)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-04 18:28:33', '', '2024-01-04 18:31:28');
INSERT INTO `gen_table_column` VALUES ('35', '6', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:14');
INSERT INTO `gen_table_column` VALUES ('36', '6', 'code', '标识', 'varchar(255)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:14');
INSERT INTO `gen_table_column` VALUES ('37', '6', 'dataName', '名称', 'varchar(255)', 'String', 'dataName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('38', '6', 'dataType', '数据类型', 'int(11)', 'Long', 'dataType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('39', '6', 'dataPrecision', '数据精度', 'int(1)', 'Integer', 'dataPrecision', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('40', '6', 'unit', '单位', 'varchar(20)', 'String', 'unit', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('41', '6', 'nodeType', '节点类型', 'int(2)', 'Integer', 'nodeType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '7', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('42', '6', 'nodeId', '节点ID', 'int(11)', 'Long', 'nodeId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('43', '6', 'mappingField', '对应字段', 'varchar(255)', 'String', 'mappingField', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('44', '6', 'store_flag', '是否存储（0不存储 1存储）', 'char(1)', 'String', 'storeFlag', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('45', '6', 'transfer_flag', '是否传输（0不传输 1传输）', 'char(1)', 'String', 'transferFlag', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('46', '6', 'display_flag', '是否展示（0不展示 1展示）', 'char(1)', 'String', 'displayFlag', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('47', '6', 'control_flag', '是否控制（0不控制 1控制）', 'char(1)', 'String', 'controlFlag', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('48', '6', 'alarm_flag', '是否告警（0不告警 1告警）', 'char(1)', 'String', 'alarmFlag', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '14', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('49', '6', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '15', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('50', '6', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '16', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('51', '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', null, null, null, 'EQ', 'datetime', '', '17', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('52', '6', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', null, null, 'EQ', 'input', '', '18', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('53', '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', null, null, 'EQ', 'datetime', '', '19', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('54', '6', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '0', '1', '1', '1', null, 'EQ', 'textarea', '', '20', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:11:15');
INSERT INTO `gen_table_column` VALUES ('55', '7', 'id', null, 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('56', '7', 'name', '数据存储名称', 'varchar(64)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('57', '7', 'moduleInfoId', '数据存储所使用的模块编号', 'int(11)', 'Long', 'moduleInfoId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('58', '7', 'code', '数据存储所使用的模块标识符', 'varchar(64)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('59', '7', 'type', '数据存储所属用的模块类型', 'varchar(64)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '5', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('60', '7', 'dbConnectionId', '数据存储所使用的数据库连接编号', 'int(11)', 'Long', 'dbConnectionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('61', '7', 'description', null, 'varchar(128)', 'String', 'description', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('62', '7', 'del_flag', null, 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '8', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('63', '7', 'create_by', null, 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '9', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('64', '7', 'create_time', null, 'datetime', 'Date', 'createTime', '0', '0', '0', '1', null, null, null, 'EQ', 'datetime', '', '10', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('65', '7', 'update_by', null, 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', null, null, 'EQ', 'input', '', '11', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('66', '7', 'update_time', null, 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', null, null, 'EQ', 'datetime', '', '12', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('67', '7', 'remark', null, 'varchar(500)', 'String', 'remark', '0', '0', '0', '1', '1', '1', null, 'EQ', 'textarea', '', '13', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:10:59');
INSERT INTO `gen_table_column` VALUES ('68', '8', 'id', null, 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('69', '8', 'dataStorageId', '数据存储条目对应的数据存储编号', 'int(11)', 'Long', 'dataStorageId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('70', '8', 'dataItemId', '数据存储条目所使用的数据项编号', 'int(11)', 'Long', 'dataItemId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('71', '8', 'tableName', '数据存储条目所使用的数据库表', 'varchar(64)', 'String', 'tableName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('72', '8', 'columnName', '数据存储条目所使用的数据库表里的哪一列', 'varchar(64)', 'String', 'columnName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('73', '8', 'del_flag', null, 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('74', '8', 'create_by', null, 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '7', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('75', '8', 'create_time', null, 'datetime', 'Date', 'createTime', '0', '0', '0', '1', null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('76', '8', 'update_by', null, 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', null, null, 'EQ', 'input', '', '9', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('77', '8', 'update_time', null, 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', null, null, 'EQ', 'datetime', '', '10', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('78', '8', 'remark', null, 'varchar(500)', 'String', 'remark', '0', '0', '0', '1', '1', '1', null, 'EQ', 'textarea', '', '11', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:12:21');
INSERT INTO `gen_table_column` VALUES ('79', '9', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('80', '9', 'code', '标识', 'varchar(255)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('81', '9', 'name', '名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('82', '9', 'model', '型号', 'varchar(255)', 'String', 'model', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('83', '9', 'type', '类型', 'int(2)', 'Integer', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '5', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('84', '9', 'description', '描述', 'varchar(255)', 'String', 'description', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('85', '9', 'className', '类名', 'varchar(255)', 'String', 'className', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', '7', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('86', '9', 'version', '版本', 'varchar(255)', 'String', 'version', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('87', '9', 'assemblyName', '程序集名', 'varchar(255)', 'String', 'assemblyName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', '9', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('88', '9', 'configFileName', '配置文件名', 'varchar(255)', 'String', 'configFileName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', '10', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('89', '9', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '11', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('90', '9', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', null, null, null, 'EQ', 'input', '', '12', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('91', '9', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', null, null, null, 'EQ', 'datetime', '', '13', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('92', '9', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', null, null, 'EQ', 'input', '', '14', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('93', '9', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', null, null, 'EQ', 'datetime', '', '15', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');
INSERT INTO `gen_table_column` VALUES ('94', '9', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '0', '1', '1', '1', null, 'EQ', 'textarea', '', '16', 'admin', '2024-01-04 22:07:12', '', '2024-01-04 22:13:32');

-- ----------------------------
-- Table structure for `intelligentcontrol`
-- ----------------------------
DROP TABLE IF EXISTS `intelligentcontrol`;
CREATE TABLE `intelligentcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '智能控制名称',
  `ModuleInfoId` int(11) NOT NULL COMMENT '智能控制所使用的模块编号',
  `code` varchar(64) NOT NULL COMMENT '智能控制所使用的模块标识符',
  `type` varchar(64) NOT NULL COMMENT '智能控制所使用的模块类型',
  `description` varchar(128) NOT NULL COMMENT '智能控制描述',
  `parameter` varchar(2048) NOT NULL COMMENT '详细配置参数json格式字符串',
  `del_flag` char(1) DEFAULT '0',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intelligentcontrol
-- ----------------------------
INSERT INTO `intelligentcontrol` VALUES ('1', '1号智能控制', '1', 'sdfsd', '范德萨范德萨', '发射点犯得上反对', '的发射点发射点', '2', null, null, null, null, null);
INSERT INTO `intelligentcontrol` VALUES ('2', '2号智能控制', '2', '反对反对', '犯得上方法', 'gfgf', '发射点发射点', '0', null, null, null, null, null);
INSERT INTO `intelligentcontrol` VALUES ('3', '23号智能控制liw测试', '3', '间谍', '修仙', '胡说八道', '{id:3}', '0', null, null, null, null, null);
INSERT INTO `intelligentcontrol` VALUES ('4', '李伟liw', '2', 'ceshiliw', 'fudian', 'aaaa', '{name：“对方身上的a”}', '0', null, '2023-12-26 16:38:35', null, '2023-12-26 16:39:51', null);
INSERT INTO `intelligentcontrol` VALUES ('5', '测试智能控制李伟liw', '3', 'ceshi liw', 'fudian型', 'dfsf', '{name：“对方身上的”}', '0', null, '2023-12-26 16:38:59', null, null, null);
INSERT INTO `intelligentcontrol` VALUES ('6', '251', '251', '251', '251', '251', '发射点发射点251', '2', null, '2024-01-03 13:58:44', null, '2024-01-03 13:59:12', null);

-- ----------------------------
-- Table structure for `intelligentcontrolitem`
-- ----------------------------
DROP TABLE IF EXISTS `intelligentcontrolitem`;
CREATE TABLE `intelligentcontrolitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intelligentControlId` int(11) NOT NULL COMMENT '所从属的智能控制编号',
  `dataItemId` int(11) NOT NULL COMMENT '数据项编号（有了这个就有标识符和类型了）',
  `length` int(11) NOT NULL COMMENT '长度',
  `description` varchar(128) NOT NULL COMMENT '描述',
  `interfaceParameter` varchar(64) NOT NULL COMMENT '接口参数名字',
  `del_flag` char(1) DEFAULT '0',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intelligentcontrolitem
-- ----------------------------
INSERT INTO `intelligentcontrolitem` VALUES ('1', '1', '1', '4', '对方是否', 'p1', '2', null, null, null, null, null);
INSERT INTO `intelligentcontrolitem` VALUES ('2', '1', '2', '5', 'dfs ', '篇', '2', null, null, null, null, null);
INSERT INTO `intelligentcontrolitem` VALUES ('3', '1', '3', '8', 'dsf ', '拍', '2', null, null, null, null, null);
INSERT INTO `intelligentcontrolitem` VALUES ('4', '3', '4', '18', '低于', 'p250', '2', null, null, null, null, null);
INSERT INTO `intelligentcontrolitem` VALUES ('5', '3', '1', '1818', '高于', 'p250250', '2', null, null, null, null, null);
INSERT INTO `intelligentcontrolitem` VALUES ('6', '5', '4', '83411', '武装部队1', 's8341不对1', '0', null, '2023-12-26 16:47:18', null, '2023-12-26 16:48:44', null);
INSERT INTO `intelligentcontrolitem` VALUES ('7', '251', '251', '251', '武装部队251', 's251', '2', null, '2024-01-03 13:54:10', null, '2024-01-03 13:54:47', null);

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `content` longblob NOT NULL,
  `status` char(1) DEFAULT '0' COMMENT '消息状态（0未读 1已读）',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1号标题', 0xE696B0E78988E69CACE58685E5AE3F, '0', null, '2023-12-27 17:54:26', null, '2023-12-27 17:54:45', null);
INSERT INTO `message` VALUES ('2', '2号标题', 0xE696B0E78988E69CACE58685E5AE3F, '0', null, '2023-12-27 17:54:30', null, '2023-12-27 17:54:49', null);
INSERT INTO `message` VALUES ('3', '4号标题', 0x34E697A5E4BDA0E88081E7A596E5AE97, '0', null, '2023-12-27 18:17:59', null, '2023-12-27 18:18:38', null);
INSERT INTO `message` VALUES ('4', '4号标题', 0x34E697A5E4BDA0E88081E7A596E5AE97, '0', null, '2023-12-27 18:19:23', null, null, null);

-- ----------------------------
-- Table structure for `moduleinfo`
-- ----------------------------
DROP TABLE IF EXISTS `moduleinfo`;
CREATE TABLE `moduleinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `code` varchar(255) NOT NULL COMMENT '标识',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `model` varchar(255) DEFAULT NULL COMMENT '型号',
  `type` int(2) NOT NULL COMMENT '类型',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `className` varchar(255) DEFAULT NULL COMMENT '类名',
  `version` varchar(255) DEFAULT NULL COMMENT '版本',
  `assemblyName` varchar(255) DEFAULT NULL COMMENT '程序集名',
  `configFileName` varchar(255) DEFAULT NULL COMMENT '配置文件名',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='组件信息表';

-- ----------------------------
-- Records of moduleinfo
-- ----------------------------
INSERT INTO `moduleinfo` VALUES ('1', 'mokuai1', '模块1', '第三方', '1', '的事发生范德萨的', 'aa.dll', '1', 'dsf ', 'dfs ', '0', '', null, '', null, null);
INSERT INTO `moduleinfo` VALUES ('2', '标识符2', '模块2', '大是大非', '2', '电风扇电风扇', 'cc.dll', '1', 'dsfsd ', 'dfds', '0', '', null, '', null, null);

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `standarddataitem`
-- ----------------------------
DROP TABLE IF EXISTS `standarddataitem`;
CREATE TABLE `standarddataitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `code` varchar(255) NOT NULL COMMENT '标识',
  `dataName` varchar(255) NOT NULL COMMENT '名称',
  `dataType` int(11) NOT NULL COMMENT '数据类型',
  `dataPrecision` int(1) NOT NULL DEFAULT '0' COMMENT '数据精度',
  `unit` varchar(20) DEFAULT NULL COMMENT '单位',
  `nodeType` int(2) NOT NULL COMMENT '节点类型',
  `nodeId` int(11) DEFAULT NULL COMMENT '节点ID',
  `mappingField` varchar(255) NOT NULL COMMENT '对应字段',
  `store_flag` char(1) DEFAULT '1' COMMENT '是否存储（0不存储 1存储）',
  `transfer_flag` char(1) DEFAULT '1' COMMENT '是否传输（0不传输 1传输）',
  `display_flag` char(1) DEFAULT '1' COMMENT '是否展示（0不展示 1展示）',
  `control_flag` char(1) DEFAULT '1' COMMENT '是否控制（0不控制 1控制）',
  `alarm_flag` char(1) DEFAULT '1' COMMENT '是否告警（0不告警 1告警）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标准设备属性表';

-- ----------------------------
-- Records of standarddataitem
-- ----------------------------

-- ----------------------------
-- Table structure for `standarddeviceinfo`
-- ----------------------------
DROP TABLE IF EXISTS `standarddeviceinfo`;
CREATE TABLE `standarddeviceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `code` varchar(255) NOT NULL COMMENT '标识',
  `model` varchar(255) DEFAULT NULL COMMENT '型号',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `communicate_id` int(11) NOT NULL COMMENT '通信组件ID',
  `communicate_config` varchar(512) NOT NULL COMMENT '通信设置',
  `serverId` int(11) NOT NULL COMMENT '服务器号',
  `status` char(1) DEFAULT '0' COMMENT '设备状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标准设备表';

-- ----------------------------
-- Records of standarddeviceinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-12-20 19:36:39', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-12-20 19:36:39', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-12-20 19:36:39', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-12-20 19:36:39', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-12-20 19:36:39', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-12-20 19:36:39', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-12-20 19:36:38', '', null);

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-12-20 19:36:39', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-12-20 19:36:39', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-12-20 19:36:39', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-12-20 19:36:39', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-12-20 19:36:39', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-12-20 19:36:39', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-12-20 19:36:39', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-12-20 19:36:39', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-12-20 19:36:39', '', null, '停用状态');

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2023-12-20 19:36:39', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2023-12-20 19:36:39', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2023-12-20 19:36:39', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2023-12-20 19:36:39', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2023-12-20 19:36:39', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2023-12-20 19:36:39', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2023-12-20 19:36:39', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2023-12-20 19:36:39', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2023-12-20 19:36:39', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2023-12-20 19:36:39', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-12-20 19:36:39', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-12-20 19:36:39', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-12-20 19:36:39', '', null, '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('1', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 20:36:19');
INSERT INTO `sys_logininfor` VALUES ('2', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-03 20:36:19');
INSERT INTO `sys_logininfor` VALUES ('3', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-01-03 20:47:20');
INSERT INTO `sys_logininfor` VALUES ('4', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 21:01:00');
INSERT INTO `sys_logininfor` VALUES ('5', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-03 21:01:01');
INSERT INTO `sys_logininfor` VALUES ('6', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 21:03:10');
INSERT INTO `sys_logininfor` VALUES ('7', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-03 21:18:47');
INSERT INTO `sys_logininfor` VALUES ('8', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 21:24:12');
INSERT INTO `sys_logininfor` VALUES ('9', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-03 21:24:12');
INSERT INTO `sys_logininfor` VALUES ('10', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 21:33:07');
INSERT INTO `sys_logininfor` VALUES ('11', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-03 21:33:07');
INSERT INTO `sys_logininfor` VALUES ('12', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 21:34:37');
INSERT INTO `sys_logininfor` VALUES ('13', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 21:51:20');
INSERT INTO `sys_logininfor` VALUES ('14', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 22:27:27');
INSERT INTO `sys_logininfor` VALUES ('15', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 22:41:38');
INSERT INTO `sys_logininfor` VALUES ('16', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 23:32:26');
INSERT INTO `sys_logininfor` VALUES ('17', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 23:53:25');
INSERT INTO `sys_logininfor` VALUES ('18', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-03 23:55:52');
INSERT INTO `sys_logininfor` VALUES ('19', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 10:53:23');
INSERT INTO `sys_logininfor` VALUES ('20', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 11:39:59');
INSERT INTO `sys_logininfor` VALUES ('21', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 11:52:39');
INSERT INTO `sys_logininfor` VALUES ('22', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 12:01:56');
INSERT INTO `sys_logininfor` VALUES ('23', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 13:34:07');
INSERT INTO `sys_logininfor` VALUES ('24', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 13:51:41');
INSERT INTO `sys_logininfor` VALUES ('25', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 13:58:38');
INSERT INTO `sys_logininfor` VALUES ('26', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 14:07:55');
INSERT INTO `sys_logininfor` VALUES ('27', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 17:57:19');
INSERT INTO `sys_logininfor` VALUES ('28', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 18:28:12');
INSERT INTO `sys_logininfor` VALUES ('29', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 20:16:59');
INSERT INTO `sys_logininfor` VALUES ('30', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 20:20:11');
INSERT INTO `sys_logininfor` VALUES ('31', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 21:44:16');
INSERT INTO `sys_logininfor` VALUES ('32', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 22:06:37');
INSERT INTO `sys_logininfor` VALUES ('33', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 22:28:05');
INSERT INTO `sys_logininfor` VALUES ('34', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 23:15:47');
INSERT INTO `sys_logininfor` VALUES ('35', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-04 23:58:15');
INSERT INTO `sys_logininfor` VALUES ('36', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-05 01:39:19');
INSERT INTO `sys_logininfor` VALUES ('37', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-05 02:12:32');
INSERT INTO `sys_logininfor` VALUES ('38', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-05 02:25:19');
INSERT INTO `sys_logininfor` VALUES ('39', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-01-05 02:41:26');
INSERT INTO `sys_logininfor` VALUES ('40', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-05 02:41:30');
INSERT INTO `sys_logininfor` VALUES ('41', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-01-05 03:08:38');
INSERT INTO `sys_logininfor` VALUES ('42', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-05 03:08:42');
INSERT INTO `sys_logininfor` VALUES ('43', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-05 09:02:34');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1093 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2023-12-20 19:36:38', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2023-12-20 19:36:38', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2023-12-20 19:36:38', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '6', 'http://ruoyi.vip', null, '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2023-12-20 19:36:38', 'admin', '2024-01-04 10:56:17', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-12-20 19:36:38', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-12-20 19:36:38', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-12-20 19:36:38', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-12-20 19:36:38', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-12-20 19:36:38', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-12-20 19:36:38', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-12-20 19:36:38', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-12-20 19:36:38', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2023-12-20 19:36:38', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-12-20 19:36:38', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-12-20 19:36:38', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-12-20 19:36:38', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-12-20 19:36:38', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-12-20 19:36:38', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-12-20 19:36:38', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-12-20 19:36:38', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-12-20 19:36:38', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-12-20 19:36:38', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-12-20 19:36:38', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-12-20 19:36:38', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1068', '数据存储', '0', '4', 'datastorage', null, null, '1', '0', 'M', '0', '0', null, 'table', 'admin', '2024-01-04 10:56:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1069', '智能控制', '0', '5', 'intelligentcontrol', null, null, '1', '0', 'M', '0', '0', null, 'redis', 'admin', '2024-01-04 10:57:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('1073', '智能控制', '1069', '1', 'intelligentcontrol', null, null, '1', '0', 'M', '0', '0', null, 'redis', 'admin', '2024-01-04 11:03:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('1074', '智能控制项', '1069', '2', 'intelligentcontrolitem', null, null, '1', '0', 'M', '0', '0', null, 'redis', 'admin', '2024-01-04 11:03:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('1081', '数据库连接配置', '1068', '1', 'lpdbconnection', 'lpdatastorage/lpdbconnection/index', null, '1', '0', 'C', '0', '0', 'lpdatastorage:lpdbconnection:list', '#', 'admin', '2024-01-04 11:47:00', 'admin', '2024-01-04 22:32:05', 'lpdbconnection菜单');
INSERT INTO `sys_menu` VALUES ('1082', 'lpdbconnection查询', '1081', '1', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdbconnection:query', '#', 'admin', '2024-01-04 11:47:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('1083', 'lpdbconnection新增', '1081', '2', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdbconnection:add', '#', 'admin', '2024-01-04 11:47:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('1084', 'lpdbconnection修改', '1081', '3', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdbconnection:edit', '#', 'admin', '2024-01-04 11:47:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('1085', 'lpdbconnection删除', '1081', '4', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdbconnection:remove', '#', 'admin', '2024-01-04 11:47:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('1086', 'lpdbconnection导出', '1081', '5', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdbconnection:export', '#', 'admin', '2024-01-04 11:47:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('1087', '数据存储配置', '1068', '2', 'lpdatastorage', 'lpdatastorage/lpdatastorage/index', null, '1', '0', 'C', '0', '0', 'lpdatastorage:lpdatastorage:list', '#', 'admin', '2024-01-04 22:16:32', 'admin', '2024-01-04 22:32:54', '数据存储菜单');
INSERT INTO `sys_menu` VALUES ('1088', '数据存储查询', '1087', '1', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdatastorage:query', '#', 'admin', '2024-01-04 22:16:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1089', '数据存储新增', '1087', '2', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdatastorage:add', '#', 'admin', '2024-01-04 22:16:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1090', '数据存储修改', '1087', '3', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdatastorage:edit', '#', 'admin', '2024-01-04 22:16:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1091', '数据存储删除', '1087', '4', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdatastorage:remove', '#', 'admin', '2024-01-04 22:16:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('1092', '数据存储导出', '1087', '5', '#', '', null, '1', '0', 'F', '0', '0', 'lpdatastorage:lpdatastorage:export', '#', 'admin', '2024-01-04 22:16:32', '', null, '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-12-20 19:36:39', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-12-20 19:36:39', '', null, '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('1', '代码生成', '6', 'com.lanpeng.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"testgen\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 22:44:02', '57');
INSERT INTO `sys_oper_log` VALUES ('2', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"testgen\"}', null, '0', null, '2024-01-03 22:47:40', '37');
INSERT INTO `sys_oper_log` VALUES ('3', '菜单管理', '1', 'com.lanpeng.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"李伟测试\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"ceshi\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:35:00', '21');
INSERT INTO `sys_oper_log` VALUES ('4', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"testgen\"}', null, '0', null, '2024-01-03 23:35:44', '152');
INSERT INTO `sys_oper_log` VALUES ('5', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"testgen\",\"className\":\"Testgen\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-03 22:44:02\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-03 22:44:02\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"liw\",\"functionName\":\"李伟测试\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":1061}\",\"packageName\":\"com.lanpeng.system\",\"params\":{\"parentMenuId\":1061},\"parentMenuId\":\"1061\",\"sub\":false,\"tableComment\":\"测试\",\"tableId\":1,\"tableName\":\"testgen\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-ui\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:38:04', '26');
INSERT INTO `sys_oper_log` VALUES ('6', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"testgen\"}', null, '0', null, '2024-01-03 23:38:08', '21');
INSERT INTO `sys_oper_log` VALUES ('7', '李伟测试', '1', 'com.lanpeng.system.controller.TestgenController.add()', 'POST', '1', 'admin', '研发部门', '/system/testgen', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:46:01', '83');
INSERT INTO `sys_oper_log` VALUES ('8', '李伟测试', '1', 'com.lanpeng.system.controller.TestgenController.add()', 'POST', '1', 'admin', '研发部门', '/system/testgen', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"2222\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:46:12', '4');
INSERT INTO `sys_oper_log` VALUES ('9', '李伟测试', '2', 'com.lanpeng.system.controller.TestgenController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/testgen', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"11133\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:46:24', '13');
INSERT INTO `sys_oper_log` VALUES ('10', '李伟测试', '3', 'com.lanpeng.system.controller.TestgenController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/testgen/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:46:54', '15');
INSERT INTO `sys_oper_log` VALUES ('11', '李伟测试', '1', 'com.lanpeng.system.controller.TestgenController.add()', 'POST', '1', 'admin', '研发部门', '/system/testgen', '127.0.0.1', '内网IP', '{\"id\":3,\"name\":\"11111\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:53:43', '12');
INSERT INTO `sys_oper_log` VALUES ('12', '李伟测试', '1', 'com.lanpeng.system.controller.TestgenController.add()', 'POST', '1', 'admin', '研发部门', '/system/testgen', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"44444\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:53:50', '12');
INSERT INTO `sys_oper_log` VALUES ('13', '李伟测试', '2', 'com.lanpeng.system.controller.TestgenController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/testgen', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"5555\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:54:00', '13');
INSERT INTO `sys_oper_log` VALUES ('14', '李伟测试', '3', 'com.lanpeng.system.controller.TestgenController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/testgen/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-03 23:54:09', '14');
INSERT INTO `sys_oper_log` VALUES ('15', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1061', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-01-04 10:53:51', '8');
INSERT INTO `sys_oper_log` VALUES ('16', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1062', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-01-04 10:54:09', '2');
INSERT INTO `sys_oper_log` VALUES ('17', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1062', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-01-04 10:54:15', '3');
INSERT INTO `sys_oper_log` VALUES ('18', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1067', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:54:28', '27');
INSERT INTO `sys_oper_log` VALUES ('19', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1066', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:54:30', '9');
INSERT INTO `sys_oper_log` VALUES ('20', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1065', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:54:32', '7');
INSERT INTO `sys_oper_log` VALUES ('21', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1064', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:54:33', '16');
INSERT INTO `sys_oper_log` VALUES ('22', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1063', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:54:36', '7');
INSERT INTO `sys_oper_log` VALUES ('23', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1062', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:54:38', '9');
INSERT INTO `sys_oper_log` VALUES ('24', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1061', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:54:40', '8');
INSERT INTO `sys_oper_log` VALUES ('25', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-01-04 10:54:43', '4');
INSERT INTO `sys_oper_log` VALUES ('26', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-01-04 10:54:47', '3');
INSERT INTO `sys_oper_log` VALUES ('27', '菜单管理', '1', 'com.lanpeng.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"数据存储\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"datastorage\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:56:08', '14');
INSERT INTO `sys_oper_log` VALUES ('28', '菜单管理', '2', 'com.lanpeng.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-12-20 19:36:38\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:56:17', '7');
INSERT INTO `sys_oper_log` VALUES ('29', '菜单管理', '1', 'com.lanpeng.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"redis\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"智能控制\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"intelligentcontrol\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 10:57:06', '6');
INSERT INTO `sys_oper_log` VALUES ('30', '菜单管理', '1', 'com.lanpeng.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"数据库连接\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":1068,\"path\":\"dbconnection\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:01:15', '7');
INSERT INTO `sys_oper_log` VALUES ('31', '菜单管理', '1', 'com.lanpeng.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"数据存储\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":1068,\"path\":\"datastorage\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:01:50', '17');
INSERT INTO `sys_oper_log` VALUES ('32', '菜单管理', '1', 'com.lanpeng.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"数据存储项\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":1068,\"path\":\"datastorageitem\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:02:38', '16');
INSERT INTO `sys_oper_log` VALUES ('33', '菜单管理', '1', 'com.lanpeng.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"redis\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"智能控制\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":1069,\"path\":\"intelligentcontrol\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:03:15', '14');
INSERT INTO `sys_oper_log` VALUES ('34', '菜单管理', '1', 'com.lanpeng.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"redis\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"智能控制项\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":1069,\"path\":\"intelligentcontrolitem\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:03:44', '14');
INSERT INTO `sys_oper_log` VALUES ('35', '代码生成', '6', 'com.lanpeng.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"dbconnection,dbconnectiontype\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:04:51', '63');
INSERT INTO `sys_oper_log` VALUES ('36', '代码生成', '3', 'com.lanpeng.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', '研发部门', '/tool/gen/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:05:01', '14');
INSERT INTO `sys_oper_log` VALUES ('37', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"dbconnection\",\"className\":\"Dbconnection\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"数据库连接编号\",\"columnId\":3,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 11:04:51\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"数据库连接名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 11:04:51\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DbConnectionTypeId\",\"columnComment\":\"数据库连接类型--对应类型编号\",\"columnId\":5,\"columnName\":\"dbConnectionTypeId\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 11:04:51\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dbConnectionTypeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ServerName\",\"columnComment\":\"数据库连接---服务器名称\",\"columnId\":6,\"columnName\":\"serverName\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 11:04:51\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isP', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:15:15', '32');
INSERT INTO `sys_oper_log` VALUES ('38', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"dbconnection\"}', null, '0', null, '2024-01-04 11:16:54', '51');
INSERT INTO `sys_oper_log` VALUES ('39', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1075', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-01-04 11:40:51', '9');
INSERT INTO `sys_oper_log` VALUES ('40', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1080', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:40:59', '17');
INSERT INTO `sys_oper_log` VALUES ('41', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1079', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:41:01', '17');
INSERT INTO `sys_oper_log` VALUES ('42', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1078', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:41:04', '7');
INSERT INTO `sys_oper_log` VALUES ('43', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1077', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:41:06', '7');
INSERT INTO `sys_oper_log` VALUES ('44', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1076', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:41:10', '16');
INSERT INTO `sys_oper_log` VALUES ('45', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1075', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:41:13', '15');
INSERT INTO `sys_oper_log` VALUES ('46', '代码生成', '3', 'com.lanpeng.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', '研发部门', '/tool/gen/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:41:59', '18');
INSERT INTO `sys_oper_log` VALUES ('47', '代码生成', '3', 'com.lanpeng.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', '研发部门', '/tool/gen/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:42:01', '7');
INSERT INTO `sys_oper_log` VALUES ('48', '代码生成', '6', 'com.lanpeng.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"lpdbconnection\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:42:29', '51');
INSERT INTO `sys_oper_log` VALUES ('49', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"lpdbconnection\",\"className\":\"Lpdbconnection\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":19,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 11:42:29\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"数据库连接名称\",\"columnId\":20,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 11:42:29\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DbConnectionTypeId\",\"columnComment\":\"数据库连接类型--对应类型编号\",\"columnId\":21,\"columnName\":\"dbConnectionTypeId\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 11:42:29\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dbConnectionTypeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ServerName\",\"columnComment\":\"数据库连接---服务器名称\",\"columnId\":22,\"columnName\":\"serverName\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 11:42:29\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:45:29', '42');
INSERT INTO `sys_oper_log` VALUES ('50', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"lpdbconnection\"}', null, '0', null, '2024-01-04 11:45:34', '119');
INSERT INTO `sys_oper_log` VALUES ('51', 'lpdbconnection', '1', 'com.lanpeng.data.controller.LpdbconnectionController.add()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-01-04 11:54:26\",\"databaseName\":\"lpcenter\",\"dbConnectionTypeId\":2,\"id\":6,\"name\":\"mysql5.7连接\",\"params\":{},\"serverName\":\"localpp\",\"serverPort\":3306,\"userName\":\"root\",\"userPassword\":\"pass\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:54:26', '27');
INSERT INTO `sys_oper_log` VALUES ('52', 'lpdbconnection', '2', 'com.lanpeng.data.controller.LpdbconnectionController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-01-04 11:54:27\",\"databaseName\":\"lpcenter1\",\"dbConnectionTypeId\":2,\"delFlag\":\"0\",\"id\":6,\"name\":\"mysql5.7连接\",\"params\":{},\"serverName\":\"localpp\",\"serverPort\":3306,\"updateTime\":\"2024-01-04 11:55:17\",\"userName\":\"root1\",\"userPassword\":\"pass1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:55:17', '13');
INSERT INTO `sys_oper_log` VALUES ('53', 'lpdbconnection', '3', 'com.lanpeng.data.controller.LpdbconnectionController.remove()', 'DELETE', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:55:26', '15');
INSERT INTO `sys_oper_log` VALUES ('54', '菜单管理', '2', 'com.lanpeng.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"lpdatastorage/lpdbconnection/index\",\"createTime\":\"2024-01-04 11:47:00\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1081,\"menuName\":\"数据库连接配置\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1070,\"path\":\"lpdbconnection\",\"perms\":\"lpdatastorage:lpdbconnection:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 11:56:43', '28');
INSERT INTO `sys_oper_log` VALUES ('55', 'lpdbconnection', '5', 'com.lanpeng.data.controller.LpdbconnectionController.export()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', null, '0', null, '2024-01-04 13:35:12', '474');
INSERT INTO `sys_oper_log` VALUES ('56', 'lpdbconnection', '2', 'com.lanpeng.data.controller.LpdbconnectionController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-01-03 11:39:09\",\"databaseName\":\"lp1\",\"dbConnectionTypeId\":2,\"delFlag\":\"2\",\"id\":5,\"name\":\"ceshi1\",\"params\":{},\"serverName\":\"localhost1\",\"serverPort\":250251,\"updateTime\":\"2024-01-04 14:16:37\",\"userName\":\"rrr1\",\"userPassword\":\"ppp1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 14:16:37', '17');
INSERT INTO `sys_oper_log` VALUES ('57', '代码生成', '6', 'com.lanpeng.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"lpdbconnectiontype\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 18:28:33', '37');
INSERT INTO `sys_oper_log` VALUES ('58', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"lpdbconnectiontype\",\"className\":\"Lpdbconnectiontype\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":33,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 18:28:33\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"数据库连接类型名称--提前预制好的\",\"columnId\":34,\"columnName\":\"name\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 18:28:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"liw\",\"functionName\":\"lpdbconnectiontype\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"lpdatastorage\",\"options\":\"{\\\"parentMenuId\\\":1070}\",\"packageName\":\"com.lanpeng.data\",\"params\":{\"parentMenuId\":1070},\"parentMenuId\":\"1070\",\"sub\":false,\"tableComment\":\"数据库连接类型表\",\"tableId\":5,\"tableName\":\"lpdbconnectiontype\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-ui\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 18:31:28', '34');
INSERT INTO `sys_oper_log` VALUES ('59', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"lpdbconnectiontype\"}', null, '0', null, '2024-01-04 18:31:34', '225');
INSERT INTO `sys_oper_log` VALUES ('60', 'lpdbconnection', '2', 'com.lanpeng.data.controller.LpdbconnectionController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection', '127.0.0.1', '内网IP', '{\"databaseName\":\"test\",\"dbConnectionTypeId\":2,\"dbConnectionTypeName\":\"oricale4.1\",\"delFlag\":\"0\",\"id\":2,\"name\":\"2号连接\",\"params\":{},\"serverName\":\"192.168.0.175\",\"serverPort\":871871,\"updateTime\":\"2024-01-04 20:17:38\",\"userName\":\"sa\",\"userPassword\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 20:17:38', '13');
INSERT INTO `sys_oper_log` VALUES ('61', 'lpdbconnection', '2', 'com.lanpeng.data.controller.LpdbconnectionController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection', '127.0.0.1', '内网IP', '{\"databaseName\":\"test\",\"dbConnectionTypeId\":3,\"dbConnectionTypeName\":\"mysql5.7\",\"delFlag\":\"0\",\"id\":2,\"name\":\"2号连接\",\"params\":{},\"serverName\":\"192.168.0.175\",\"serverPort\":871871,\"updateTime\":\"2024-01-04 20:17:48\",\"userName\":\"sa\",\"userPassword\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 20:17:48', '5');
INSERT INTO `sys_oper_log` VALUES ('62', 'lpdbconnection', '2', 'com.lanpeng.data.controller.LpdbconnectionController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection', '127.0.0.1', '内网IP', '{\"databaseName\":\"lpmcs\",\"dbConnectionTypeId\":2,\"dbConnectionTypeName\":\"mysql5.0\",\"delFlag\":\"0\",\"id\":3,\"name\":\"3号连接\",\"params\":{},\"serverName\":\"127.0.0.1\",\"serverPort\":3306,\"updateTime\":\"2024-01-04 20:27:38\",\"userName\":\"root\",\"userPassword\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 20:27:38', '13');
INSERT INTO `sys_oper_log` VALUES ('63', 'lpdbconnection', '2', 'com.lanpeng.data.controller.LpdbconnectionController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection', '127.0.0.1', '内网IP', '{\"databaseName\":\"test\",\"dbConnectionTypeId\":4,\"dbConnectionTypeName\":\"sqlserver2012\",\"delFlag\":\"0\",\"id\":2,\"name\":\"2号连接\",\"params\":{},\"serverName\":\"192.168.0.175\",\"serverPort\":871871,\"updateTime\":\"2024-01-04 20:27:53\",\"userName\":\"sa\",\"userPassword\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 20:27:53', '13');
INSERT INTO `sys_oper_log` VALUES ('64', 'lpdbconnection', '2', 'com.lanpeng.data.controller.LpdbconnectionController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdbconnection', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-01-03 11:39:09\",\"databaseName\":\"lp1\",\"dbConnectionTypeId\":3,\"dbConnectionTypeName\":\"mysql5.7\",\"delFlag\":\"2\",\"id\":5,\"name\":\"ceshi1\",\"params\":{},\"serverName\":\"localhost1\",\"serverPort\":250251,\"updateTime\":\"2024-01-04 20:28:01\",\"userName\":\"rrr1\",\"userPassword\":\"ppp1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 20:28:01', '4');
INSERT INTO `sys_oper_log` VALUES ('65', '代码生成', '6', 'com.lanpeng.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"lpmoduleinfo,lpdataitem,lpdatastorageitem,lpdatastorage\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:07:12', '147');
INSERT INTO `sys_oper_log` VALUES ('66', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"lpdataitem\",\"className\":\"Lpdataitem\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":35,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"标识\",\"columnId\":36,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DataName\",\"columnComment\":\"名称\",\"columnId\":37,\"columnName\":\"dataName\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dataName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DataType\",\"columnComment\":\"数据类型\",\"columnId\":38,\"columnName\":\"dataType\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dataType\",', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:09:58', '35');
INSERT INTO `sys_oper_log` VALUES ('67', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"lpdatastorage\",\"className\":\"Lpdatastorage\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":55,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"数据存储名称\",\"columnId\":56,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ModuleInfoId\",\"columnComment\":\"数据存储所使用的模块编号\",\"columnId\":57,\"columnName\":\"moduleInfoId\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"moduleInfoId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"数据存储所使用的模块标识符\",\"columnId\":58,\"columnName\":\"code\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cod', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:10:59', '28');
INSERT INTO `sys_oper_log` VALUES ('68', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"lpdataitem\",\"className\":\"Lpdataitem\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":35,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-04 22:09:58\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"标识\",\"columnId\":36,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-04 22:09:58\",\"usableColumn\":false},{\"capJavaField\":\"DataName\",\"columnComment\":\"名称\",\"columnId\":37,\"columnName\":\"dataName\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dataName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-01-04 22:09:58\",\"usableColumn\":false},{\"capJavaField\":\"DataType\",\"columnComment\":\"数据类型\",\"columnId\":38,\"columnName\":\"dataType\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isInc', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:11:15', '32');
INSERT INTO `sys_oper_log` VALUES ('69', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"lpdatastorageitem\",\"className\":\"Lpdatastorageitem\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":68,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DataStorageId\",\"columnComment\":\"数据存储条目对应的数据存储编号\",\"columnId\":69,\"columnName\":\"dataStorageId\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dataStorageId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DataItemId\",\"columnComment\":\"数据存储条目所使用的数据项编号\",\"columnId\":70,\"columnName\":\"dataItemId\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dataItemId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TableName\",\"columnComment\":\"数据存储条目所使用的数据库表\",\"columnId\":71,\"columnName\":\"tableName\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:12:21', '23');
INSERT INTO `sys_oper_log` VALUES ('70', '代码生成', '2', 'com.lanpeng.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"lpmoduleinfo\",\"className\":\"Lpmoduleinfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":79,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"标识\",\"columnId\":80,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名称\",\"columnId\":81,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Model\",\"columnComment\":\"型号\",\"columnId\":82,\"columnName\":\"model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-04 22:07:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"model\",\"javaType\":\"Str', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:13:32', '27');
INSERT INTO `sys_oper_log` VALUES ('71', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"lpdataitem\"}', null, '0', null, '2024-01-04 22:13:45', '212');
INSERT INTO `sys_oper_log` VALUES ('72', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"lpdatastorage\"}', null, '0', null, '2024-01-04 22:13:47', '43');
INSERT INTO `sys_oper_log` VALUES ('73', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"lpdatastorageitem\"}', null, '0', null, '2024-01-04 22:13:49', '28');
INSERT INTO `sys_oper_log` VALUES ('74', '代码生成', '8', 'com.lanpeng.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"lpmoduleinfo\"}', null, '0', null, '2024-01-04 22:13:50', '30');
INSERT INTO `sys_oper_log` VALUES ('75', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1072', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:30:52', '21');
INSERT INTO `sys_oper_log` VALUES ('76', '菜单管理', '2', 'com.lanpeng.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"lpdatastorage/lpdbconnection/index\",\"createTime\":\"2024-01-04 11:47:00\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1081,\"menuName\":\"数据库连接配置\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1068,\"path\":\"lpdbconnection\",\"perms\":\"lpdatastorage:lpdbconnection:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:32:05', '24');
INSERT INTO `sys_oper_log` VALUES ('77', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1070', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:32:12', '15');
INSERT INTO `sys_oper_log` VALUES ('78', '菜单管理', '2', 'com.lanpeng.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"lpdatastorage/lpdatastorage/index\",\"createTime\":\"2024-01-04 22:16:32\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1087,\"menuName\":\"数据存储\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1068,\"path\":\"lpdatastorage\",\"perms\":\"lpdatastorage:lpdatastorage:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'数据存储\'失败，菜单名称已存在\",\"code\":500}', '0', null, '2024-01-04 22:32:24', '2');
INSERT INTO `sys_oper_log` VALUES ('79', '菜单管理', '2', 'com.lanpeng.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"lpdatastorage/lpdatastorage/index\",\"createTime\":\"2024-01-04 22:16:32\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1087,\"menuName\":\"数据存储配置\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1068,\"path\":\"lpdatastorage\",\"perms\":\"lpdatastorage:lpdatastorage:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:32:38', '15');
INSERT INTO `sys_oper_log` VALUES ('80', '菜单管理', '3', 'com.lanpeng.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/1071', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:32:44', '18');
INSERT INTO `sys_oper_log` VALUES ('81', '菜单管理', '2', 'com.lanpeng.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"lpdatastorage/lpdatastorage/index\",\"createTime\":\"2024-01-04 22:16:32\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1087,\"menuName\":\"数据存储配置\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1068,\"path\":\"lpdatastorage\",\"perms\":\"lpdatastorage:lpdatastorage:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 22:32:54', '16');
INSERT INTO `sys_oper_log` VALUES ('82', '数据存储', '2', 'com.lanpeng.data.controller.LpdatastorageController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorage', '127.0.0.1', '内网IP', '{\"code\":\"电风扇犯得上11\",\"dbConnectionId\":4,\"dbConnectionName\":\"3号连接\",\"delFlag\":\"0\",\"description\":\"dsfsd犯得上反对11\",\"id\":2,\"moduleInfoId\":1,\"name\":\"2号存储1\",\"params\":{},\"type\":\"ddddsfs11\",\"updateTime\":\"2024-01-04 23:42:38\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 23:42:38', '17');
INSERT INTO `sys_oper_log` VALUES ('83', '数据存储', '2', 'com.lanpeng.data.controller.LpdatastorageController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorage', '127.0.0.1', '内网IP', '{\"code\":\"二百五1\",\"createTime\":\"2023-12-26 17:25:26\",\"dbConnectionId\":2,\"dbConnectionName\":\"2号连接\",\"delFlag\":\"0\",\"description\":\"1日你大爷\",\"id\":3,\"moduleInfoId\":2,\"name\":\"1250号存储\",\"params\":{},\"type\":\"2502501\",\"updateTime\":\"2024-01-04 23:42:55\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 23:42:55', '12');
INSERT INTO `sys_oper_log` VALUES ('84', '数据存储', '2', 'com.lanpeng.data.controller.LpdatastorageController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorage', '127.0.0.1', '内网IP', '{\"code\":\"电风扇犯得上55\",\"createTime\":\"2024-01-03 11:45:23\",\"dbConnectionId\":55,\"delFlag\":\"2\",\"description\":\"dsfsd犯得上反对55\",\"id\":4,\"moduleInfoId\":2,\"name\":\"5奥\",\"params\":{},\"type\":\"ddddsfs55\",\"updateTime\":\"2024-01-04 23:43:02\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 23:43:02', '13');
INSERT INTO `sys_oper_log` VALUES ('85', '数据存储', '2', 'com.lanpeng.data.controller.LpdatastorageController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorage', '127.0.0.1', '内网IP', '{\"code\":\"电风扇犯得上55\",\"createTime\":\"2024-01-03 11:45:54\",\"dbConnectionId\":55,\"delFlag\":\"2\",\"description\":\"dsfsd犯得上反对55\",\"id\":5,\"moduleInfoId\":1,\"name\":\"5奥\",\"params\":{},\"type\":\"ddddsfs55\",\"updateTime\":\"2024-01-04 23:43:06\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 23:43:06', '13');
INSERT INTO `sys_oper_log` VALUES ('86', '数据存储', '2', 'com.lanpeng.data.controller.LpdatastorageController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorage', '127.0.0.1', '内网IP', '{\"code\":\"电风扇犯得上55\",\"createTime\":\"2024-01-03 11:45:23\",\"dbConnectionId\":3,\"delFlag\":\"2\",\"description\":\"dsfsd犯得上反对55\",\"id\":4,\"moduleInfoId\":2,\"moduleInfoName\":\"模块2\",\"name\":\"5奥\",\"params\":{},\"type\":\"ddddsfs55\",\"updateTime\":\"2024-01-04 23:43:22\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 23:43:22', '6');
INSERT INTO `sys_oper_log` VALUES ('87', '数据存储', '2', 'com.lanpeng.data.controller.LpdatastorageController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorage', '127.0.0.1', '内网IP', '{\"code\":\"电风扇犯得上55\",\"createTime\":\"2024-01-03 11:45:54\",\"dbConnectionId\":1,\"delFlag\":\"2\",\"description\":\"dsfsd犯得上反对55\",\"id\":5,\"moduleInfoId\":1,\"moduleInfoName\":\"模块1\",\"name\":\"5奥\",\"params\":{},\"type\":\"ddddsfs55\",\"updateTime\":\"2024-01-04 23:43:27\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-04 23:43:27', '6');
INSERT INTO `sys_oper_log` VALUES ('88', '数据存储', '1', 'com.lanpeng.data.controller.LpdatastorageController.add()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorage', '127.0.0.1', '内网IP', '{\"code\":\"mokuai1\",\"createTime\":\"2024-01-05 01:42:11\",\"dbConnectionId\":2,\"description\":\"333\",\"id\":6,\"moduleInfoId\":1,\"name\":\"111\",\"params\":{},\"type\":\"算法组件\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-05 01:42:11', '22');
INSERT INTO `sys_oper_log` VALUES ('89', '数据存储项', '1', 'com.lanpeng.data.controller.LpdatastorageitemController.add()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem', '127.0.0.1', '内网IP', '{\"columnName\":\"22\",\"createTime\":\"2024-01-05 03:21:23\",\"dataItemId\":5,\"params\":{},\"tableName\":\"11\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value\r\n### The error may exist in file [F:\\2-lanpeng\\platform\\lanpeng\\lanpeng-data\\target\\classes\\mapper\\data\\LpdatastorageitemMapper.xml]\r\n### The error may involve com.lanpeng.data.mapper.LpdatastorageitemMapper.insertLpdatastorageitem-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into lpdatastorageitem          ( dataItemId,             tableName,             columnName,                                       create_time )           values ( ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value\n; Field \'dataStorageId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value', '2024-01-05 03:21:23', '119');
INSERT INTO `sys_oper_log` VALUES ('90', '数据存储项', '2', 'com.lanpeng.data.controller.LpdatastorageitemController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem', '127.0.0.1', '内网IP', '{\"columnName\":\"zhixxiandu\",\"dataItemId\":2,\"dataItemName\":\"温度1\",\"dataStorageId\":1,\"delFlag\":\"0\",\"id\":3,\"params\":{},\"tableName\":\"record2\",\"updateTime\":\"2024-01-05 03:22:01\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-05 03:22:01', '14');
INSERT INTO `sys_oper_log` VALUES ('91', '数据存储项', '2', 'com.lanpeng.data.controller.LpdatastorageitemController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem', '127.0.0.1', '内网IP', '{\"columnName\":\"zhijing22\",\"dataItemId\":5,\"dataItemName\":\"直径2\",\"dataStorageId\":1,\"dataStorageName\":\"1号存储\",\"delFlag\":\"0\",\"id\":2,\"params\":{},\"tableName\":\"record11\",\"updateTime\":\"2024-01-05 03:28:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-05 03:28:32', '17');
INSERT INTO `sys_oper_log` VALUES ('92', '数据存储项', '1', 'com.lanpeng.data.controller.LpdatastorageitemController.add()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem', '127.0.0.1', '内网IP', '{\"columnName\":\"11\",\"createTime\":\"2024-01-05 03:29:16\",\"dataItemId\":2,\"params\":{},\"tableName\":\"11\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value\r\n### The error may exist in file [F:\\2-lanpeng\\platform\\lanpeng\\lanpeng-data\\target\\classes\\mapper\\data\\LpdatastorageitemMapper.xml]\r\n### The error may involve com.lanpeng.data.mapper.LpdatastorageitemMapper.insertLpdatastorageitem-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into lpdatastorageitem          ( dataItemId,             tableName,             columnName,                                       create_time )           values ( ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value\n; Field \'dataStorageId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value', '2024-01-05 03:29:16', '46');
INSERT INTO `sys_oper_log` VALUES ('93', '数据存储项', '2', 'com.lanpeng.data.controller.LpdatastorageitemController.edit()', 'PUT', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem', '127.0.0.1', '内网IP', '{\"columnName\":\"simima\",\"createTime\":\"2024-01-03 11:25:29\",\"dataItemId\":2,\"dataStorageId\":2,\"dataStorageName\":\"2号存储1\",\"delFlag\":\"2\",\"id\":7,\"params\":{},\"tableName\":\"record\",\"updateTime\":\"2024-01-05 03:47:19\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-05 03:47:19', '4');
INSERT INTO `sys_oper_log` VALUES ('94', '数据存储项', '1', 'com.lanpeng.data.controller.LpdatastorageitemController.add()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem', '127.0.0.1', '内网IP', '{\"columnName\":\"1\",\"createTime\":\"2024-01-05 03:47:33\",\"dataItemId\":1,\"params\":{},\"tableName\":\"1\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value\r\n### The error may exist in file [F:\\2-lanpeng\\platform\\lanpeng\\lanpeng-data\\target\\classes\\mapper\\data\\LpdatastorageitemMapper.xml]\r\n### The error may involve com.lanpeng.data.mapper.LpdatastorageitemMapper.insertLpdatastorageitem-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into lpdatastorageitem          ( dataItemId,             tableName,             columnName,                                       create_time )           values ( ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value\n; Field \'dataStorageId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dataStorageId\' doesn\'t have a default value', '2024-01-05 03:47:33', '3');
INSERT INTO `sys_oper_log` VALUES ('95', '数据存储项', '1', 'com.lanpeng.data.controller.LpdatastorageitemController.add()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem', '127.0.0.1', '内网IP', '{\"columnName\":\"3\",\"createTime\":\"2024-01-05 03:52:01\",\"dataItemId\":1,\"dataStorageId\":4,\"id\":10,\"params\":{},\"tableName\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-05 03:52:01', '6');
INSERT INTO `sys_oper_log` VALUES ('96', '数据存储项', '5', 'com.lanpeng.data.controller.LpdatastorageitemController.export()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', null, '0', null, '2024-01-05 03:52:35', '566');
INSERT INTO `sys_oper_log` VALUES ('97', '数据存储项', '5', 'com.lanpeng.data.controller.LpdatastorageitemController.export()', 'POST', '1', 'admin', '研发部门', '/lpdatastorage/lpdatastorageitem/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', null, '0', null, '2024-01-05 03:52:56', '35');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2023-12-20 19:36:38', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2023-12-20 19:36:38', '', null, '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2023-12-20 19:36:38', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2023-12-20 19:36:38', '', null, '普通角色');

-- ----------------------------
-- Table structure for `sys_role_dataitem`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dataitem`;
CREATE TABLE `sys_role_dataitem` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(11) NOT NULL,
  `dataitemid` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_dataitem
-- ----------------------------
INSERT INTO `sys_role_dataitem` VALUES ('1', '1', '1');
INSERT INTO `sys_role_dataitem` VALUES ('2', '1', '3');
INSERT INTO `sys_role_dataitem` VALUES ('3', '1', '5');
INSERT INTO `sys_role_dataitem` VALUES ('17', '2', '1');
INSERT INTO `sys_role_dataitem` VALUES ('18', '2', '2');
INSERT INTO `sys_role_dataitem` VALUES ('19', '2', '3');
INSERT INTO `sys_role_dataitem` VALUES ('20', '2', '4');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '117');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-01-05 09:02:35', 'admin', '2023-12-20 19:36:38', '', '2024-01-05 09:02:34', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-12-20 19:36:38', 'admin', '2023-12-20 19:36:38', '', null, '测试员');

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
