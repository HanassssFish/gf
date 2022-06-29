/*
Navicat MySQL Data Transfer

Source Server         : 医院
Source Server Version : 80027
Source Host           : localhost:3306
Source Database       : garbage

Target Server Type    : MYSQL
Target Server Version : 80027
File Encoding         : 65001

Date: 2022-06-28 00:41:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fix
-- ----------------------------
DROP TABLE IF EXISTS `fix`;
CREATE TABLE `fix` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '报修标题',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详情',
  `user` bigint DEFAULT NULL COMMENT '报修人',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物业完成状态',
  `ustate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户确认状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='报修信息';

-- ----------------------------
-- Records of fix
-- ----------------------------
INSERT INTO `fix` VALUES ('1', '报修1', '周末', '1', '已完成', '已完成');
INSERT INTO `fix` VALUES ('2', '报修2', '按时报修', '12', '待确认', '已完成');
INSERT INTO `fix` VALUES ('4', '111', '111', '9', '已完成', null);
INSERT INTO `fix` VALUES ('5', '1121', '121212', '26', null, null);
INSERT INTO `fix` VALUES ('6', '阿', '大多数', '26', null, null);
INSERT INTO `fix` VALUES ('7', 'sd订单', '时代的', '26', null, null);
INSERT INTO `fix` VALUES ('8', '21313', null, '-1', null, null);

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼栋编号',
  `ceng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '层数',
  `room` int DEFAULT NULL COMMENT '房间数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='楼栋信息';

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '干垃圾', '不可回收', '1001');
INSERT INTO `house` VALUES ('2', '塑料垃圾', '可回收', '1002');
INSERT INTO `house` VALUES ('3', '纸质垃圾', '可回收', '1003');
INSERT INTO `house` VALUES ('4', '厨余垃圾', '不可回收', '1004');
INSERT INTO `house` VALUES ('5', '有害垃圾', '有害垃圾', '1005');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '信息摘要',
  `message_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '信息紧急程度',
  `message_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '求助类型',
  `message_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '求助内容',
  `message_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 所在城市',
  `message_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人详细地址',
  `message_contractname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `message_contractphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `user` bigint DEFAULT NULL COMMENT '账号id',
  `message_time` datetime DEFAULT NULL COMMENT '信息发布时间',
  `message_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '信息解决状态',
  `messagenumber` bigint DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('5', '1231', '重要', null, null, null, null, '李四', null, '26', '2022-06-27 02:00:37', '待解决', null);
INSERT INTO `message` VALUES ('6', '111', null, null, null, null, null, '开普勒斯', null, '9', '2022-06-27 04:27:02', '待确认', null);
INSERT INTO `message` VALUES ('7', '1111', '重要', '医药', '1111', '四川', 'abc', '测试', '1111', '30', '2022-06-27 04:30:37', '已解决', null);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收费名称',
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '金额',
  `time` datetime DEFAULT NULL COMMENT '缴费截止时间',
  `user` bigint DEFAULT NULL COMMENT '业主',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '说明',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '缴费状态',
  `gmtTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='缴费时间';

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('3', '收费1', '1', '2012-12-02 22:49:31', '12', '可回收垃圾', '已运输', '2021-04-12 09:26:51');
INSERT INTO `record` VALUES ('4', '收费5', '8', '2022-11-19 23:12:27', '9', '不可回收垃圾', '待运输', '2021-04-12 09:26:51');
INSERT INTO `record` VALUES ('5', '收费2', '8', '2013-11-23 23:12:27', '12', '可回收垃圾', '待运输', '2021-04-12 09:26:51');
INSERT INTO `record` VALUES ('6', '收费3', '12', '2020-11-22 23:12:40', '9', '可回收垃圾', '待运输', '2021-04-12 09:26:51');
INSERT INTO `record` VALUES ('7', '收费4', '100', '2019-11-23 13:47:57', '11', '可回收垃圾', '待运输', '2021-04-12 09:26:51');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '房号',
  `house` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属楼栋',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '面积',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='房间信息';

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('1', '水仙里垃圾站', '1', '校师傅负责');
INSERT INTO `room` VALUES ('2', '水仙里垃圾站', '1', '校师傅负责');
INSERT INTO `room` VALUES ('3', 'G45GDSA', '2', '校师傅负责');
INSERT INTO `room` VALUES ('4', '水仙里垃圾站', '3', '校师傅负责');
INSERT INTO `room` VALUES ('5', '有1', '4', '111');
INSERT INTO `room` VALUES ('6', '有2', '5', '222');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'value',
  `status` tinyint DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '配置信息');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('57', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"123@qq.com\",\"mobile\":\"17562307526\",\"roleIdList\":[1],\"status\":1,\"username\":\"zhangmaowen\"}', '127.0.0.1', '2021-04-12 09:26:51');
INSERT INTO `sys_log` VALUES ('58', 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1549533783000,\"email\":\"1289367@qq.com\",\"mobile\":\"13354260932\",\"roleIdList\":[1],\"status\":1,\"userId\":8,\"username\":\"李胜\"}', '127.0.0.1', '2021-04-12 09:26:51');
INSERT INTO `sys_log` VALUES ('59', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"1447628qq.com\",\"mobile\":\"1234567\",\"roleIdList\":[1],\"status\":1,\"username\":\"张三\"}', '127.0.0.1', '2021-04-12 09:26:51');
INSERT INTO `sys_log` VALUES ('60', 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1550663924000,\"createUserId\":-1,\"email\":\"123@qq.com\",\"mobile\":\"17562307526\",\"roleIdList\":[1],\"status\":1,\"userId\":10,\"username\":\"zhangmaowen\"}', '127.0.0.1', '2021-04-12 09:26:51');
INSERT INTO `sys_log` VALUES ('61', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"123\",\"mobile\":\"1213\",\"roleIdList\":[1],\"status\":1,\"username\":\"xia\"}', '127.0.0.1', '2021-04-12 09:26:51');
INSERT INTO `sys_log` VALUES ('62', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"12124234@qq.com\",\"mobile\":\"18227366523\",\"roleIdList\":[1],\"status\":1,\"username\":\"1\"}', '0:0:0:0:0:0:0:1', '2021-04-12 09:26:51');
INSERT INTO `sys_log` VALUES ('63', 'amrengp', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1618190811000,\"createUserId\":-1,\"email\":\"12124234@qq.com\",\"mobile\":\"18227366523\",\"roleIdList\":[1],\"status\":1,\"userId\":13,\"username\":\"1\"}', '0:0:0:0:0:0:0:1', '2021-04-26 09:33:55');
INSERT INTO `sys_log` VALUES ('64', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"1138909620@qq.com\",\"mobile\":\"19802578888\",\"roleIdList\":[1],\"status\":1,\"username\":\"南京工程学院宿舍楼\"}', '0:0:0:0:0:0:0:1', '2022-04-03 14:47:00');
INSERT INTO `sys_log` VALUES ('65', 'admin', '修改用户', 'com.learn.controller.SysUserController.update()', '{\"createTime\":1618190811000,\"createUserId\":-1,\"email\":\"131234@qq.com\",\"mobile\":\"18227465532\",\"roleIdList\":[1],\"status\":1,\"userId\":13,\"username\":\"翠湖花园\"}', '0:0:0:0:0:0:0:1', '2022-04-03 14:47:41');
INSERT INTO `sys_log` VALUES ('66', 'amrengp', '修改个人信息', 'com.learn.controller.SysUserController.updateInfo()', '{\"createTime\":1618190811000,\"email\":\"131234@qq.com\",\"mobile\":\"18227465532\",\"status\":1,\"userId\":1,\"username\":\"amrengp\"}', '0:0:0:0:0:0:0:1', '2022-04-05 16:23:47');
INSERT INTO `sys_log` VALUES ('67', 'amrengp', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1618190811000,\"createUserId\":-1,\"menuIdList\":[1,3,19,20,21,22,4,23,24,25,26,7,8,9,10,11,12,13,14,2,15,16,17,18,65,66,67,68,69,70,71,72,73,74,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97],\"remark\":\"管理员\",\"roleId\":2,\"roleName\":\"admin\"}', '0:0:0:0:0:0:0:1', '2022-04-05 16:28:46');
INSERT INTO `sys_log` VALUES ('68', 'amrengp', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1618190811000,\"createUserId\":1,\"menuIdList\":[7,8,9,10,11,12,13,14,65,66,70,71,77,78,79,80,81,82,86,87,88,89,90,92,93,94,95,96],\"remark\":\"普通用户\",\"roleId\":1,\"roleName\":\"张三\"}', '0:0:0:0:0:0:0:1', '2022-04-05 16:31:03');
INSERT INTO `sys_log` VALUES ('69', 'admin', '保存角色', 'com.learn.controller.SysRoleController.save()', '{\"menuIdList\":[14,13,12,11,10,9,8,7,70,71,65,69,67,66,68,92,96,95,94,93,86,90,89,88,87,81,82,77],\"remark\":\"普通用户\",\"roleName\":\"李四\"}', '0:0:0:0:0:0:0:1', '2022-04-05 17:28:23');
INSERT INTO `sys_log` VALUES ('70', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"111111@qq.com\",\"mobile\":\"18912877111\",\"roleIdList\":[1],\"status\":1,\"username\":\"李四\"}', '0:0:0:0:0:0:0:1', '2022-04-05 17:29:10');
INSERT INTO `sys_log` VALUES ('71', 'admin', '保存角色', 'com.learn.controller.SysRoleController.save()', '{\"menuIdList\":[14,13,12,11,10,9,8,7,70,71,65,66,92,96,95,94,93,86,90,89,88,87,81,82,77],\"remark\":\"普通用户\",\"roleName\":\"王五\"}', '0:0:0:0:0:0:0:1', '2022-04-05 17:35:41');
INSERT INTO `sys_log` VALUES ('72', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"11111@qq.com\",\"mobile\":\"1111111111\",\"roleIdList\":[1],\"status\":1,\"username\":\"王五\"}', '0:0:0:0:0:0:0:1', '2022-04-05 17:36:37');
INSERT INTO `sys_log` VALUES ('73', 'admin', '修改角色', 'com.learn.controller.SysRoleController.update()', '{\"createTime\":1649151341000,\"createUserId\":-1,\"menuIdList\":[14,13,12,11,10,9,8,7,70,71,65,66,92,96,95,94,93,86,90,89,88,87,81,85,84,83,82,80,79,78,77],\"remark\":\"普通用户\",\"roleId\":4,\"roleName\":\"王五\"}', '0:0:0:0:0:0:0:1', '2022-04-05 17:38:31');
INSERT INTO `sys_log` VALUES ('74', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"122456\",\"mobile\":\"123456\",\"roleIdList\":[1],\"status\":1,\"username\":\"测试\"}', '0:0:0:0:0:0:0:1', '2022-04-09 20:51:24');
INSERT INTO `sys_log` VALUES ('75', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 21:57:52');
INSERT INTO `sys_log` VALUES ('76', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 22:11:58');
INSERT INTO `sys_log` VALUES ('77', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '127.0.0.1', '2022-04-09 22:14:03');
INSERT INTO `sys_log` VALUES ('78', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 22:14:51');
INSERT INTO `sys_log` VALUES ('79', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 22:17:02');
INSERT INTO `sys_log` VALUES ('80', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 22:21:07');
INSERT INTO `sys_log` VALUES ('81', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 22:24:14');
INSERT INTO `sys_log` VALUES ('82', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 22:27:24');
INSERT INTO `sys_log` VALUES ('83', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 22:33:06');
INSERT INTO `sys_log` VALUES ('84', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":17}', '0:0:0:0:0:0:0:1', '2022-04-09 23:19:16');
INSERT INTO `sys_log` VALUES ('85', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":16}', '0:0:0:0:0:0:0:1', '2022-05-19 16:46:24');
INSERT INTO `sys_log` VALUES ('86', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":15}', '0:0:0:0:0:0:0:1', '2022-05-19 17:40:48');
INSERT INTO `sys_log` VALUES ('87', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":15}', '0:0:0:0:0:0:0:1', '2022-05-19 17:41:55');
INSERT INTO `sys_log` VALUES ('88', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":15}', '0:0:0:0:0:0:0:1', '2022-05-19 17:42:48');
INSERT INTO `sys_log` VALUES ('89', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":14}', '0:0:0:0:0:0:0:1', '2022-05-19 17:43:47');
INSERT INTO `sys_log` VALUES ('90', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":10}', '0:0:0:0:0:0:0:1', '2022-05-19 17:47:25');
INSERT INTO `sys_log` VALUES ('91', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":11}', '0:0:0:0:0:0:0:1', '2022-05-19 17:58:39');
INSERT INTO `sys_log` VALUES ('92', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":9}', '0:0:0:0:0:0:0:1', '2022-05-19 18:06:45');
INSERT INTO `sys_log` VALUES ('93', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":9}', '0:0:0:0:0:0:0:1', '2022-05-19 18:07:13');
INSERT INTO `sys_log` VALUES ('94', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":9}', '0:0:0:0:0:0:0:1', '2022-05-19 18:10:46');
INSERT INTO `sys_log` VALUES ('95', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":9}', '0:0:0:0:0:0:0:1', '2022-05-19 18:20:56');
INSERT INTO `sys_log` VALUES ('96', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":9}', '0:0:0:0:0:0:0:1', '2022-05-19 18:22:55');
INSERT INTO `sys_log` VALUES ('97', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":9}', '0:0:0:0:0:0:0:1', '2022-05-19 18:46:26');
INSERT INTO `sys_log` VALUES ('98', 'admin', '修改用户权限', 'com.learn.controller.SysUserController.update()', '{\"userId\":15}', '0:0:0:0:0:0:0:1', '2022-05-19 18:49:55');
INSERT INTO `sys_log` VALUES ('99', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 00:53:39');
INSERT INTO `sys_log` VALUES ('100', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"1111\",\"mobile\":\"111\",\"roleIdList\":[1],\"status\":1,\"username\":\"1111\"}', '0:0:0:0:0:0:0:1', '2022-06-26 00:53:49');
INSERT INTO `sys_log` VALUES ('101', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:27:59');
INSERT INTO `sys_log` VALUES ('102', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:27:59');
INSERT INTO `sys_log` VALUES ('103', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:27:59');
INSERT INTO `sys_log` VALUES ('104', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:28:02');
INSERT INTO `sys_log` VALUES ('105', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[],\"status\":1,\"username\":\"间谍过家家\"}', '0:0:0:0:0:0:0:1', '2022-06-26 02:28:13');
INSERT INTO `sys_log` VALUES ('106', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[],\"status\":1,\"username\":\"开普勒斯\"}', '0:0:0:0:0:0:0:1', '2022-06-26 02:29:33');
INSERT INTO `sys_log` VALUES ('107', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1,\"username\":\"11ee\"}', '0:0:0:0:0:0:0:1', '2022-06-26 02:31:27');
INSERT INTO `sys_log` VALUES ('108', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:44:54');
INSERT INTO `sys_log` VALUES ('109', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:45:02');
INSERT INTO `sys_log` VALUES ('110', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:45:56');
INSERT INTO `sys_log` VALUES ('111', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:46:03');
INSERT INTO `sys_log` VALUES ('112', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 02:46:10');
INSERT INTO `sys_log` VALUES ('113', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[1],\"status\":1}', '0:0:0:0:0:0:0:1', '2022-06-26 20:04:18');
INSERT INTO `sys_log` VALUES ('114', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"roleIdList\":[],\"status\":1,\"username\":\"1111223\"}', '0:0:0:0:0:0:0:1', '2022-06-26 20:10:56');
INSERT INTO `sys_log` VALUES ('115', 'admin', '保存用户', 'com.learn.controller.SysUserController.save()', '{\"email\":\"972513660@qq.com\",\"roleIdList\":[],\"status\":1,\"username\":\"夏阳\"}', '0:0:0:0:0:0:0:1', '2022-06-26 20:31:33');
INSERT INTO `sys_log` VALUES ('116', 'admin', '保存菜单', 'com.learn.controller.SysMenuController.save()', '{\"icon\":\"\",\"name\":\"1111\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"perms\":\"1111\",\"type\":1,\"url\":\"1111\"}', '0:0:0:0:0:0:0:1', '2022-06-27 00:35:25');
INSERT INTO `sys_log` VALUES ('117', 'admin', '删除菜单', 'com.learn.controller.SysMenuController.delete()', '[99]', '0:0:0:0:0:0:0:1', '2022-06-27 00:35:40');
INSERT INTO `sys_log` VALUES ('118', 'admin', '保存菜单', 'com.learn.controller.SysMenuController.save()', '{\"name\":\"的撒大苏打\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"perms\":\"admin/message.html\",\"type\":1,\"url\":\"信息发布\"}', '0:0:0:0:0:0:0:1', '2022-06-27 00:36:13');
INSERT INTO `sys_log` VALUES ('119', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"menuId\":100,\"name\":\"的撒大苏打\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"perms\":\"admin/message.html\",\"type\":1,\"url\":\"信息发布\"}', '0:0:0:0:0:0:0:1', '2022-06-27 00:36:27');
INSERT INTO `sys_log` VALUES ('120', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"menuId\":97,\"name\":\"投诉管理\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"admin/tsall.html\"}', '0:0:0:0:0:0:0:1', '2022-06-27 00:39:27');
INSERT INTO `sys_log` VALUES ('121', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"http://fontawesome.io/icons/\",\"menuId\":100,\"name\":\"的撒大苏打\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"perms\":\"\",\"type\":1,\"url\":\"admin/message.html\"}', '0:0:0:0:0:0:0:1', '2022-06-27 00:39:42');
INSERT INTO `sys_log` VALUES ('122', 'admin', '删除菜单', 'com.learn.controller.SysMenuController.delete()', '[100]', '0:0:0:0:0:0:0:1', '2022-06-27 00:41:20');
INSERT INTO `sys_log` VALUES ('123', 'admin', '修改菜单', 'com.learn.controller.SysMenuController.update()', '{\"icon\":\"http://fontawesome.io/icons/\",\"menuId\":98,\"name\":\"信息发布\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"admin/message.html\"}', '0:0:0:0:0:0:0:1', '2022-06-27 00:41:28');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单图标',
  `order_num` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('2', '0', '管理', 'sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'sys/admin.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '1', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('66', '65', '查看', null, 'house:list,house:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('67', '65', '新增', null, 'house:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('68', '65', '修改', null, 'house:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('69', '65', '删除', null, 'house:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('71', '70', '查看', null, 'room:list,room:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('72', '70', '新增', null, 'room:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('73', '70', '修改', null, 'room:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('74', '70', '删除', null, 'room:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('77', '76', '查看', null, 'car:list,car:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('78', '76', '新增', null, 'car:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('79', '76', '修改', null, 'car:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('80', '76', '删除', null, 'car:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('82', '81', '查看', null, 'record:list,record:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('83', '81', '新增', null, 'record:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('84', '81', '修改', null, 'record:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('85', '81', '删除', null, 'record:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('87', '86', '查看', null, 'fix:list,fix:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('88', '86', '新增', null, 'fix:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('89', '86', '修改', null, 'fix:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('90', '86', '删除', null, 'fix:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('93', '92', '查看', null, 'ts:list,ts:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('94', '92', '新增', null, 'ts:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('95', '92', '修改', null, 'ts:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('96', '92', '删除', null, 'ts:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('98', '0', '信息发布', 'admin/message.html', null, '1', 'fa fa-circle-o', '6');
INSERT INTO `sys_menu` VALUES ('99', '0', '信息管理', 'admin/messageall.html', null, '1', 'fa fa-circle-o', '6');
INSERT INTO `sys_menu` VALUES ('100', '0', '信息全览', 'admin/messageallone.html', null, '1', 'fa fa-circle-o', '6');
INSERT INTO `sys_menu` VALUES ('101', '0', '关于我们', 'admin/callme.html', null, '1', 'fa fa-circle-o', '6');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('2', 'admin', '管理员', '-1', '2021-04-12 09:26:51');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('154', '2', '1');
INSERT INTO `sys_role_menu` VALUES ('155', '2', '3');
INSERT INTO `sys_role_menu` VALUES ('156', '2', '19');
INSERT INTO `sys_role_menu` VALUES ('157', '2', '20');
INSERT INTO `sys_role_menu` VALUES ('158', '2', '21');
INSERT INTO `sys_role_menu` VALUES ('159', '2', '22');
INSERT INTO `sys_role_menu` VALUES ('160', '2', '4');
INSERT INTO `sys_role_menu` VALUES ('161', '2', '23');
INSERT INTO `sys_role_menu` VALUES ('162', '2', '24');
INSERT INTO `sys_role_menu` VALUES ('163', '2', '25');
INSERT INTO `sys_role_menu` VALUES ('164', '2', '26');
INSERT INTO `sys_role_menu` VALUES ('165', '2', '7');
INSERT INTO `sys_role_menu` VALUES ('166', '2', '8');
INSERT INTO `sys_role_menu` VALUES ('167', '2', '9');
INSERT INTO `sys_role_menu` VALUES ('168', '2', '10');
INSERT INTO `sys_role_menu` VALUES ('169', '2', '11');
INSERT INTO `sys_role_menu` VALUES ('170', '2', '12');
INSERT INTO `sys_role_menu` VALUES ('171', '2', '13');
INSERT INTO `sys_role_menu` VALUES ('172', '2', '14');
INSERT INTO `sys_role_menu` VALUES ('174', '2', '15');
INSERT INTO `sys_role_menu` VALUES ('175', '2', '16');
INSERT INTO `sys_role_menu` VALUES ('176', '2', '17');
INSERT INTO `sys_role_menu` VALUES ('177', '2', '18');
INSERT INTO `sys_role_menu` VALUES ('179', '2', '66');
INSERT INTO `sys_role_menu` VALUES ('180', '2', '67');
INSERT INTO `sys_role_menu` VALUES ('181', '2', '68');
INSERT INTO `sys_role_menu` VALUES ('182', '2', '69');
INSERT INTO `sys_role_menu` VALUES ('184', '2', '71');
INSERT INTO `sys_role_menu` VALUES ('185', '2', '72');
INSERT INTO `sys_role_menu` VALUES ('186', '2', '73');
INSERT INTO `sys_role_menu` VALUES ('187', '2', '74');
INSERT INTO `sys_role_menu` VALUES ('188', '2', '77');
INSERT INTO `sys_role_menu` VALUES ('189', '2', '78');
INSERT INTO `sys_role_menu` VALUES ('190', '2', '79');
INSERT INTO `sys_role_menu` VALUES ('191', '2', '80');
INSERT INTO `sys_role_menu` VALUES ('193', '2', '82');
INSERT INTO `sys_role_menu` VALUES ('194', '2', '83');
INSERT INTO `sys_role_menu` VALUES ('195', '2', '84');
INSERT INTO `sys_role_menu` VALUES ('196', '2', '85');
INSERT INTO `sys_role_menu` VALUES ('198', '2', '87');
INSERT INTO `sys_role_menu` VALUES ('199', '2', '88');
INSERT INTO `sys_role_menu` VALUES ('200', '2', '89');
INSERT INTO `sys_role_menu` VALUES ('201', '2', '90');
INSERT INTO `sys_role_menu` VALUES ('204', '2', '93');
INSERT INTO `sys_role_menu` VALUES ('205', '2', '94');
INSERT INTO `sys_role_menu` VALUES ('206', '2', '95');
INSERT INTO `sys_role_menu` VALUES ('207', '2', '96');
INSERT INTO `sys_role_menu` VALUES ('209', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('210', '1', '8');
INSERT INTO `sys_role_menu` VALUES ('211', '1', '9');
INSERT INTO `sys_role_menu` VALUES ('212', '1', '10');
INSERT INTO `sys_role_menu` VALUES ('213', '1', '11');
INSERT INTO `sys_role_menu` VALUES ('214', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('215', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('216', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('218', '1', '66');
INSERT INTO `sys_role_menu` VALUES ('220', '1', '71');
INSERT INTO `sys_role_menu` VALUES ('221', '1', '77');
INSERT INTO `sys_role_menu` VALUES ('222', '1', '78');
INSERT INTO `sys_role_menu` VALUES ('223', '1', '79');
INSERT INTO `sys_role_menu` VALUES ('224', '1', '80');
INSERT INTO `sys_role_menu` VALUES ('226', '1', '82');
INSERT INTO `sys_role_menu` VALUES ('228', '1', '87');
INSERT INTO `sys_role_menu` VALUES ('229', '1', '88');
INSERT INTO `sys_role_menu` VALUES ('230', '1', '89');
INSERT INTO `sys_role_menu` VALUES ('231', '1', '90');
INSERT INTO `sys_role_menu` VALUES ('233', '1', '93');
INSERT INTO `sys_role_menu` VALUES ('234', '1', '94');
INSERT INTO `sys_role_menu` VALUES ('235', '1', '95');
INSERT INTO `sys_role_menu` VALUES ('236', '1', '96');
INSERT INTO `sys_role_menu` VALUES ('237', '1', '98');
INSERT INTO `sys_role_menu` VALUES ('238', '1', '101');
INSERT INTO `sys_role_menu` VALUES ('239', '1', '100');
INSERT INTO `sys_role_menu` VALUES ('240', '2', '99');
INSERT INTO `sys_role_menu` VALUES ('241', '2', '101');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `status` tinyint DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `room` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('-1', 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '131234@qq.com', '18227465532', '1', null, '2021-04-12 09:26:51', null, null);
INSERT INTO `sys_user` VALUES ('30', '普通用户', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', null, null, '1', null, '2022-06-27 04:29:55', null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('7', '-1', '2');
INSERT INTO `sys_user_role` VALUES ('8', '30', '1');

-- ----------------------------
-- Table structure for ts
-- ----------------------------
DROP TABLE IF EXISTS `ts`;
CREATE TABLE `ts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '投诉标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详情',
  `user` bigint DEFAULT NULL COMMENT '投诉人',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物业完成状态',
  `ustate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户确认状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='投诉信息';

-- ----------------------------
-- Records of ts
-- ----------------------------
INSERT INTO `ts` VALUES ('1', 'fdajkfdaskj', 'kfdjaskfdas', '1', '待确认', '已完成');
INSERT INTO `ts` VALUES ('2', 'fdafdasf', '发发大水发大水分', '9', '已完成', '已完成');
INSERT INTO `ts` VALUES ('3', '垃圾未送走', '今日垃圾未及时送走。', '8', '已完成', null);
