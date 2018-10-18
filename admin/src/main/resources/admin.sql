/*
 Navicat Premium Data Transfer

 Source Server         : 47.104.87.108
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 47.104.87.108:3306
 Source Schema         : admin

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 18/10/2018 14:24:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `DICT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典ID',
  `KEYY` bigint(20) NOT NULL COMMENT '键',
  `VALUEE` varchar(100) NOT NULL COMMENT '值',
  `FIELD_NAME` varchar(100) NOT NULL COMMENT '字段名称',
  `TABLE_NAME` varchar(100) NOT NULL COMMENT '表名',
  PRIMARY KEY (`DICT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
BEGIN;
INSERT INTO `t_dict` VALUES (1, 0, '男', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES (2, 1, '女', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES (3, 2, '保密', 'ssex', 't_user');
INSERT INTO `t_dict` VALUES (4, 1, '有效', 'status', 't_user');
INSERT INTO `t_dict` VALUES (5, 0, '锁定', 'status', 't_user');
INSERT INTO `t_dict` VALUES (6, 0, '菜单', 'type', 't_menu');
INSERT INTO `t_dict` VALUES (7, 1, '按钮', 'type', 't_menu');
COMMIT;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text COMMENT '操作方法',
  `PARAMS` text COMMENT '方法参数',
  `IP` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
BEGIN;
INSERT INTO `t_log` VALUES (1026, 'admin', '获取在线用户信息', 0, 'com.uton.admin.system.controller.SessionController.online()', '', '127.0.0.1', '2018-10-18 11:55:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1027, 'admin', '获取字典信息', 6, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 11:55:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1028, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 11:55:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1029, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 11:55:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1030, 'admin', '获取部门信息', 4, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 11:56:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1031, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 11:56:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1032, 'admin', '获取系统所有URL', 3, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 11:56:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1033, 'admin', '获取角色信息', 6, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 11:56:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1034, 'admin', '获取用户信息', 62, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 11:56:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1035, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 11:56:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1036, 'admin', '访问系统', 3, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 11:50:34 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 12:00:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1037, 'admin', '获取字典信息', 6, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:00:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1038, 'admin', '获取部门信息', 5, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 12:01:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1039, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 12:01:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1040, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 12:01:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1041, 'admin', '获取系统所有URL', 3, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 12:01:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1042, 'admin', '获取角色信息', 8, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 12:01:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1043, 'admin', '获取用户信息', 62, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 12:01:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1044, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:01:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1045, 'admin', '获取字典信息', 1, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:02:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1046, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 11:50:34 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 12:04:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1047, 'admin', '获取字典信息', 1, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:04:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1048, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:04:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1049, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:05:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1050, 'admin', '访问系统', 3, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 11:50:34 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 12:11:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1051, 'admin', '获取字典信息', 7, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:12:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1052, 'admin', '获取字典信息', 1, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:12:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1053, 'admin', '获取部门信息', 7, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 12:12:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1054, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:12:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1055, 'admin', '访问系统', 3, 'cc.mrbird.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 11:50:49 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 12:43:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1056, 'admin', '获取字典信息', 2, 'cc.mrbird.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:43:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1057, 'admin', '获取字典信息', 0, 'cc.mrbird.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:44:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1058, 'admin', '获取字典信息', 0, 'cc.mrbird.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:46:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1059, 'admin', '访问系统', 7, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:43:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 12:48:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1060, 'admin', '获取字典信息', 9, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:48:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1061, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:49:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1062, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:49:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1063, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 12:49:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1064, 'admin', '获取系统所有URL', 2, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 12:49:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1065, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 12:49:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1066, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 12:49:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1067, 'admin', '获取角色信息', 6, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 12:49:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1068, 'admin', '获取用户信息', 51, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 12:49:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1069, 'admin', '获取用户信息', 61, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 12:50:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1070, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 12:50:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1071, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 12:50:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1072, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 12:50:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1073, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 12:50:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1074, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 12:50:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1075, 'admin', '删除字典', 237, 'com.uton.admin.system.controller.DictController.deleteDicts()', 'ids: \"31,32\"', '127.0.0.1', '2018-10-18 12:51:14', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1076, 'admin', '删除字典', 418, 'com.uton.admin.system.controller.DictController.deleteDicts()', 'ids: \"30,33\"', '127.0.0.1', '2018-10-18 12:51:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1077, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:43:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 12:51:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1078, 'admin', '获取在线用户信息', 4, 'com.uton.admin.system.controller.SessionController.online()', '', '127.0.0.1', '2018-10-18 12:51:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1079, 'admin', '获取在线用户信息', 0, 'com.uton.admin.system.controller.SessionController.online()', '', '127.0.0.1', '2018-10-18 12:52:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1080, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 12:52:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1081, 'admin', '更换主题', 101, 'com.uton.admin.system.controller.UserController.updateTheme()', 'user: \"User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'blue\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 12:53:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1082, 'admin', '更换主题', 76, 'com.uton.admin.system.controller.UserController.updateTheme()', 'user: \"User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'teal\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 12:53:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1083, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 12:55:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1084, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 12:55:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1085, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 12:55:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1086, 'admin', '修改菜单/按钮', 46, 'com.uton.admin.system.controller.MenuController.updateMenu()', 'menu: \"com.uton.admin.system.domain.Menu@5316f9df\"', '127.0.0.1', '2018-10-18 13:00:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1087, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:00:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1088, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:00:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1089, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:00:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1090, 'admin', '获取用户信息', 72, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:01:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1091, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:03:40', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1092, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:03:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1093, 'admin', '获取用户信息', 53, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:03:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1094, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:03:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1095, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:03:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1096, 'admin', '修改菜单/按钮', 39, 'com.uton.admin.system.controller.MenuController.updateMenu()', 'menu: \"com.uton.admin.system.domain.Menu@a04cdf3\"', '127.0.0.1', '2018-10-18 13:04:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1097, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:04:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1098, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:04:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1099, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:04:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1100, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 13:04:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1101, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 13:04:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1102, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:04:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1103, 'admin', '获取系统所有URL', 0, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:04:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1104, 'admin', '修改菜单/按钮', 57, 'com.uton.admin.system.controller.MenuController.updateMenu()', 'menu: \"com.uton.admin.system.domain.Menu@6f82e89a\"', '127.0.0.1', '2018-10-18 13:07:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1105, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:07:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1106, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 13:07:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1107, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:07:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1108, 'admin', '获取系统所有URL', 0, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:07:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1109, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 13:07:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1110, 'admin', '获取用户信息', 38, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:07:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1111, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 13:07:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1112, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:07:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1113, 'admin', '获取系统所有URL', 0, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:07:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1114, 'admin', '修改菜单/按钮', 66, 'com.uton.admin.system.controller.MenuController.updateMenu()', 'menu: \"com.uton.admin.system.domain.Menu@150af5a\"', '127.0.0.1', '2018-10-18 13:10:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1115, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:10:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1116, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 13:11:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1117, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 13:11:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1118, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:11:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1119, 'admin', '获取系统所有URL', 0, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:11:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1120, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 13:11:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1121, 'admin', '获取用户信息', 70, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:11:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1122, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 13:11:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1123, 'admin', '删除部门', 174, 'com.uton.admin.system.controller.DeptController.deleteDepts()', 'ids: \"1,2,3,4,5,6\"', '127.0.0.1', '2018-10-18 13:11:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1124, 'admin', '获取用户信息', 40, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:11:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1125, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 13:11:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1126, 'admin', '修改角色', 1379, 'com.uton.admin.system.controller.RoleController.updateRole()', 'role: \"com.uton.admin.system.domain.Role@66309bac\"  menuId: \"[Ljava.lang.Long;@4da471fc\"', '127.0.0.1', '2018-10-18 13:11:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1127, 'admin', '获取用户信息', 41, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:11:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1128, 'admin', '获取用户信息', 83, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:11:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1129, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 13:11:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1130, 'admin', '获取用户信息', 48, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:12:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1131, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:12:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1132, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:12:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1133, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 13:12:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1134, 'admin', '获取在线用户信息', 0, 'com.uton.admin.system.controller.SessionController.online()', '', '127.0.0.1', '2018-10-18 13:12:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1135, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:12:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1136, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:12:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1137, 'admin', '修改菜单/按钮', 68, 'com.uton.admin.system.controller.MenuController.updateMenu()', 'menu: \"com.uton.admin.system.domain.Menu@787243a0\"', '127.0.0.1', '2018-10-18 13:13:41', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1138, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:13:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1139, 'admin', '获取在线用户信息', 0, 'com.uton.admin.system.controller.SessionController.online()', '', '127.0.0.1', '2018-10-18 13:13:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1140, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 13:13:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1141, 'admin', '获取用户信息', 193, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:13:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1142, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:13:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1143, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:13:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1144, 'admin', '修改菜单/按钮', 84, 'com.uton.admin.system.controller.MenuController.updateMenu()', 'menu: \"com.uton.admin.system.domain.Menu@749d6b72\"', '127.0.0.1', '2018-10-18 13:14:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1145, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:14:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1146, 'admin', '获取在线用户信息', 0, 'com.uton.admin.system.controller.SessionController.online()', '', '127.0.0.1', '2018-10-18 13:14:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1147, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:15:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1148, 'admin', '获取系统所有URL', 0, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:15:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1149, 'admin', '修改菜单/按钮', 42, 'com.uton.admin.system.controller.MenuController.updateMenu()', 'menu: \"com.uton.admin.system.domain.Menu@13625b54\"', '127.0.0.1', '2018-10-18 13:15:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1150, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:15:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1151, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:15:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1152, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:18:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1153, 'admin', '更换主题', 82, 'com.uton.admin.system.controller.UserController.updateTheme()', 'user: \"User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'teal\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:18:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1154, 'admin', '更换主题', 83, 'com.uton.admin.system.controller.UserController.updateTheme()', 'user: \"User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'blue-grey\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:18:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1155, 'admin', '更换主题', 94, 'com.uton.admin.system.controller.UserController.updateTheme()', 'user: \"User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'red\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:18:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1156, 'admin', '更换主题', 88, 'com.uton.admin.system.controller.UserController.updateTheme()', 'user: \"User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'green\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:18:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1157, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:18:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1158, 'admin', '获取用户信息', 83, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:18:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1159, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:19:36', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1160, 'admin', '访问系统', 1, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:19:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1161, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 12:48:15 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:20:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1162, 'admin', '获取用户信息', 307, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:21:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1163, 'admin', '获取在线用户信息', 0, 'com.uton.admin.system.controller.SessionController.online()', '', '127.0.0.1', '2018-10-18 13:21:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1164, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 13:18:11 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:21:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1165, 'admin', '获取用户信息', 174, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:21:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1166, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 13:21:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1167, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:22:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1168, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:22:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1169, 'admin', '获取用户信息', 149, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:30:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1170, 'admin', '获取用户信息', 44, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:30:03', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1171, 'admin', '获取用户信息', 52, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:30:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1172, 'admin', '获取用户信息', 62, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:30:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1173, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 13:30:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1174, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:30:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1175, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:30:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1176, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 13:30:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1177, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 13:30:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1178, 'admin', '获取用户信息', 1242, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:35:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1179, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 13:35:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1180, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 13:35:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1181, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 13:35:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1182, 'admin', '获取用户信息', 40, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 13:35:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1183, 'admin', '访问系统', 8, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 13:18:11 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 13:41:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1184, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 13:21:50 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '192.168.200.25', '2018-10-18 13:45:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1185, 'admin', '获取用户信息', 72, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '192.168.200.25', '2018-10-18 13:45:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1186, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '192.168.200.25', '2018-10-18 13:45:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1187, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '192.168.200.25', '2018-10-18 13:45:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1188, 'admin', '获取系统所有URL', 3, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '192.168.200.25', '2018-10-18 13:45:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1189, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '192.168.200.25', '2018-10-18 13:45:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1190, 'admin', '获取字典信息', 10, 'com.uton.admin.system.controller.DictController.index()', '', '192.168.200.25', '2018-10-18 13:45:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1191, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '192.168.200.25', '2018-10-18 13:45:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1192, 'admin', '获取系统所有URL', 2, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '192.168.200.25', '2018-10-18 13:45:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1193, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '192.168.200.25', '2018-10-18 13:45:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1194, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '192.168.200.25', '2018-10-18 13:45:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1195, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '192.168.200.25', '2018-10-18 13:45:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1196, 'admin', '获取字典信息', 0, 'com.uton.admin.system.controller.DictController.index()', '', '192.168.200.25', '2018-10-18 13:46:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1197, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '192.168.200.25', '2018-10-18 13:46:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1198, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '192.168.200.25', '2018-10-18 13:46:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1199, 'admin', '获取系统所有URL', 2, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '192.168.200.25', '2018-10-18 13:46:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1200, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '192.168.200.25', '2018-10-18 13:46:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1201, 'admin', '获取用户信息', 43, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '192.168.200.25', '2018-10-18 13:46:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1202, 'admin', '获取角色信息', 1, 'com.uton.admin.system.controller.RoleController.index()', '', '192.168.200.25', '2018-10-18 13:46:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1203, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '192.168.200.25', '2018-10-18 13:46:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1204, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '192.168.200.25', '2018-10-18 13:46:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1205, 'admin', '获取在线用户信息', 6, 'com.uton.admin.system.controller.SessionController.online()', '', '192.168.200.25', '2018-10-18 13:47:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1206, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 13:45:32 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '192.168.200.102', '2018-10-18 13:48:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1207, 'admin', '获取用户信息', 40, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '192.168.200.102', '2018-10-18 13:48:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1208, 'admin', '获取在线用户信息', 1, 'com.uton.admin.system.controller.SessionController.online()', '', '192.168.200.102', '2018-10-18 13:48:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1209, 'admin', '访问系统', 0, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 13:48:08 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '192.168.200.102', '2018-10-18 13:48:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1210, 'admin', '获取用户信息', 41, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '192.168.200.102', '2018-10-18 13:48:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1211, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '192.168.200.102', '2018-10-18 13:48:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1212, 'admin', '获取菜单信息', 7, 'com.uton.admin.system.controller.MenuController.index()', '', '192.168.200.102', '2018-10-18 13:48:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1213, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '192.168.200.102', '2018-10-18 13:48:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1214, 'admin', '获取在线用户信息', 0, 'com.uton.admin.system.controller.SessionController.online()', '', '192.168.200.102', '2018-10-18 13:49:49', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1215, 'admin', '获取在线用户信息', 0, 'com.uton.admin.system.controller.SessionController.online()', '', '192.168.200.102', '2018-10-18 13:58:38', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1216, 'admin', '获取用户信息', 44, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '192.168.200.102', '2018-10-18 14:01:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1217, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '192.168.200.102', '2018-10-18 14:01:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1218, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '192.168.200.102', '2018-10-18 14:01:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1219, 'admin', '获取系统所有URL', 0, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '192.168.200.102', '2018-10-18 14:01:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1220, 'admin', '获取在线用户信息', 1, 'com.uton.admin.system.controller.SessionController.online()', '', '192.168.200.102', '2018-10-18 14:01:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1221, 'admin', '访问系统', 7, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 13:48:42 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 14:14:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1222, 'admin', '获取用户信息', 96, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 14:14:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1223, 'admin', '获取角色信息', 1, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 14:14:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1224, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 14:14:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1225, 'admin', '获取系统所有URL', 5, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 14:14:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1226, 'admin', '获取部门信息', 0, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 14:14:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1227, 'admin', '获取用户信息', 47, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 14:14:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1228, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 14:14:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1229, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 14:14:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1230, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 14:14:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1231, 'admin', '获取用户信息', 39, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 14:15:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1232, 'admin', '获取用户信息', 44, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 14:15:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1233, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 14:15:51', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1234, 'admin', '获取部门信息', 1, 'com.uton.admin.system.controller.DeptController.index()', '', '127.0.0.1', '2018-10-18 14:16:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1235, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 14:16:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1236, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 14:16:13', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1237, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 14:17:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1238, 'admin', '获取用户信息', 63, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 14:17:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1239, 'admin', '获取角色信息', 0, 'com.uton.admin.system.controller.RoleController.index()', '', '127.0.0.1', '2018-10-18 14:17:23', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1240, 'admin', '获取菜单信息', 0, 'com.uton.admin.system.controller.MenuController.index()', '', '127.0.0.1', '2018-10-18 14:17:25', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1241, 'admin', '获取系统所有URL', 1, 'com.uton.admin.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2018-10-18 14:17:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1242, 'admin', '访问系统', 3, 'com.uton.admin.system.controller.LoginController.index()', 'user: \"User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'\', mobile=\'\', status=\'1\', crateTime=Wed Oct 17 17:03:57 CST 2018, modifyTime=null, lastLoginTime=Thu Oct 18 13:48:42 CST 2018, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}\"  org.springframework.validation.BindingResult.user: \"org.springframework.validation.BeanPropertyBindingResult: 0 errors\"', '127.0.0.1', '2018-10-18 14:21:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1243, 'admin', '获取用户信息', 69, 'com.uton.admin.system.controller.UserController.userList()', 'request: \"QueryRequest{pageSize=10, pageNum=1}\"  user: \"User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}\"', '127.0.0.1', '2018-10-18 14:22:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1244, 'admin', '获取字典信息', 7, 'com.uton.admin.system.controller.DictController.index()', '', '127.0.0.1', '2018-10-18 14:22:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1245, 'admin', '获取在线用户信息', 6, 'com.uton.admin.system.controller.SessionController.online()', '', '127.0.0.1', '2018-10-18 14:22:11', '内网IP|0|0|内网IP|内网IP');
COMMIT;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(100) DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
BEGIN;
INSERT INTO `t_menu` VALUES (1, 0, '系统管理', NULL, NULL, 'zmdi zmdi-settings', '0', 1, '2017-12-27 16:39:07', NULL);
INSERT INTO `t_menu` VALUES (2, 0, '系统监控', NULL, NULL, 'zmdi zmdi-shield-security', '0', 2, '2017-12-27 16:45:51', '2018-01-17 17:08:28');
INSERT INTO `t_menu` VALUES (3, 1, '用户管理', 'user', 'user:list', 'zmdi zmdi-account-circle', '0', 1, '2017-12-27 16:47:13', '2018-10-17 17:10:11');
INSERT INTO `t_menu` VALUES (4, 1, '角色管理', 'role', 'role:list', 'zmdi zmdi-accounts', '0', 2, '2017-12-27 16:48:09', '2018-10-17 17:15:03');
INSERT INTO `t_menu` VALUES (5, 1, '菜单管理', 'menu', 'menu:list', 'zmdi zmdi-menu', '0', 3, '2017-12-27 16:48:57', '2018-10-18 13:04:34');
INSERT INTO `t_menu` VALUES (6, 1, '部门管理', 'dept', 'dept:list', 'zmdi zmdi-nature-people', '0', 4, '2017-12-27 16:57:33', '2018-10-18 13:07:26');
INSERT INTO `t_menu` VALUES (8, 2, '在线用户', 'session', 'session:list', 'zmdi zmdi-time', '0', 1, '2017-12-27 16:59:33', '2018-10-18 13:14:55');
INSERT INTO `t_menu` VALUES (10, 2, '系统日志', 'log', 'log:list', 'zmdi zmdi-assignment', '0', 3, '2017-12-27 17:00:50', '2018-10-18 13:15:27');
INSERT INTO `t_menu` VALUES (11, 3, '新增用户', NULL, 'user:add', NULL, '1', NULL, '2017-12-27 17:02:58', NULL);
INSERT INTO `t_menu` VALUES (12, 3, '修改用户', NULL, 'user:update', NULL, '1', NULL, '2017-12-27 17:04:07', NULL);
INSERT INTO `t_menu` VALUES (13, 3, '删除用户', NULL, 'user:delete', NULL, '1', NULL, '2017-12-27 17:04:58', NULL);
INSERT INTO `t_menu` VALUES (14, 4, '新增角色', NULL, 'role:add', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (15, 4, '修改角色', NULL, 'role:update', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (16, 4, '删除角色', NULL, 'role:delete', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (17, 5, '新增菜单', NULL, 'menu:add', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (18, 5, '修改菜单', NULL, 'menu:update', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (19, 5, '删除菜单', NULL, 'menu:delete', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (20, 6, '新增部门', NULL, 'dept:add', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (21, 6, '修改部门', NULL, 'dept:update', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (22, 6, '删除部门', NULL, 'dept:delete', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (23, 8, '踢出用户', NULL, 'user:kickout', NULL, '1', NULL, '2017-12-27 17:11:13', NULL);
INSERT INTO `t_menu` VALUES (24, 10, '删除日志', NULL, 'log:delete', NULL, '1', NULL, '2017-12-27 17:11:45', NULL);
INSERT INTO `t_menu` VALUES (64, 1, '字典管理', 'dict', 'dict:list', 'zmdi zmdi-font', '0', NULL, '2018-01-18 10:38:25', '2018-10-18 13:10:54');
INSERT INTO `t_menu` VALUES (65, 64, '新增字典', NULL, 'dict:add', NULL, '1', NULL, '2018-01-18 19:10:08', NULL);
INSERT INTO `t_menu` VALUES (66, 64, '修改字典', NULL, 'dict:update', NULL, '1', NULL, '2018-01-18 19:10:27', NULL);
INSERT INTO `t_menu` VALUES (67, 64, '删除字典', NULL, 'dict:delete', NULL, '1', NULL, '2018-01-18 19:10:47', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO `t_role` VALUES (1, 'admin', '管理员', '2017-12-27 16:23:11', '2018-10-18 13:11:34');
COMMIT;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `t_role_menu` VALUES (1, 1);
INSERT INTO `t_role_menu` VALUES (1, 2);
INSERT INTO `t_role_menu` VALUES (1, 3);
INSERT INTO `t_role_menu` VALUES (1, 4);
INSERT INTO `t_role_menu` VALUES (1, 5);
INSERT INTO `t_role_menu` VALUES (1, 6);
INSERT INTO `t_role_menu` VALUES (1, 8);
INSERT INTO `t_role_menu` VALUES (1, 10);
INSERT INTO `t_role_menu` VALUES (1, 11);
INSERT INTO `t_role_menu` VALUES (1, 12);
INSERT INTO `t_role_menu` VALUES (1, 13);
INSERT INTO `t_role_menu` VALUES (1, 14);
INSERT INTO `t_role_menu` VALUES (1, 15);
INSERT INTO `t_role_menu` VALUES (1, 16);
INSERT INTO `t_role_menu` VALUES (1, 17);
INSERT INTO `t_role_menu` VALUES (1, 18);
INSERT INTO `t_role_menu` VALUES (1, 19);
INSERT INTO `t_role_menu` VALUES (1, 20);
INSERT INTO `t_role_menu` VALUES (1, 21);
INSERT INTO `t_role_menu` VALUES (1, 22);
INSERT INTO `t_role_menu` VALUES (1, 23);
INSERT INTO `t_role_menu` VALUES (1, 24);
INSERT INTO `t_role_menu` VALUES (1, 64);
INSERT INTO `t_role_menu` VALUES (1, 65);
INSERT INTO `t_role_menu` VALUES (1, 66);
INSERT INTO `t_role_menu` VALUES (1, 67);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CRATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女',
  `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (167, 'admin', '1fedc5a36d03c185065dd2b323886aa5', NULL, '', '', '1', '2018-10-17 17:03:57', NULL, '2018-10-18 14:14:11', '0', 'green', 'default.jpg', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
BEGIN;
INSERT INTO `t_user_role` VALUES (167, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
