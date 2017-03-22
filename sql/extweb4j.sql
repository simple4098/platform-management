/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : extweb4j

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-11 12:50:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ext_dept`
-- ----------------------------
DROP TABLE IF EXISTS `ext_dept`;
CREATE TABLE `ext_dept` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `dept_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `dept_desc` varchar(500) DEFAULT NULL COMMENT '部门职能描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_dept
-- ----------------------------
INSERT INTO `ext_dept` VALUES ('9986c2aec313412a85e1a01038e430c5', '产品部', '产品开发和维护');
INSERT INTO `ext_dept` VALUES ('abb039b4e6ae4b8b8f5603743f3cf6ae', '技术部', '技术部门描述');
INSERT INTO `ext_dept` VALUES ('de227cd134b0471ebf8f1a774f0b5111', '运维组', '专业维护');
INSERT INTO `ext_dept` VALUES ('ed95178e03a34f139d378f5453eef5d4', '信息中心', '描述');

-- ----------------------------
-- Table structure for `ext_log`
-- ----------------------------
DROP TABLE IF EXISTS `ext_log`;
CREATE TABLE`ext_log` (
	`id` varchar (150),
	`user_name` varchar (900),
	`action_text` varchar (1500),
	`method` varchar (150),
	`log_url` varchar (1500),
	`log_params` text ,
	`create_time` datetime 
); 
-- ----------------------------
-- Records of ext_log
-- ----------------------------
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('0774e73b19c3434399878b2153a163dd','admin','重置用户密码','POST','/user/resetpwd','{\"new_pwd\":[\"123456\"],\"id\":[\"fa72ed734b7b48e1b09ceba1ffadb724\"]}','2016-07-19 13:52:00');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('0fb704de20c5447a9bf7c5777292c1f9','admin','编辑部门','POST','/dept/edit','{\"dept_desc\":[\"\"],\"dept_name\":[\"企业文化建设部\"],\"id\":[\"cf5e30d832d34897bda1b5c601e2c90a\"]}','2016-07-19 13:48:15');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('1a196fa5d1f8430094181711637499c5','admin','编辑部门','POST','/dept/edit','{\"dept_desc\":[\"\"],\"dept_name\":[\"财务部\"],\"id\":[\"04451f90c2814f8e8f34e125e26a6519\"]}','2016-07-19 13:48:22');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('20a73a3481df4b859875baa8efb14f59','admin','编辑菜单','POST','/menu/edit','{\"deep\":[\"1\"],\"pname\":[\"顶级菜单\"],\"view_type\":[\"\"],\"action\":[\"\"],\"pid\":[\"0\"],\"id\":[\"36634b3a36ae4ef0ac566432c98ed7a7\"],\"text\":[\"系统管理\"],\"sort\":[\"1\"],\"row_cls\":[\"\"],\"icon_cls\":[\"x-fa fa-gears\"],\"status\":[\"1\"]}','2016-07-19 13:48:28');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('3750e8f962d6483e825119ef6fe2dacf','admin','编辑菜单','POST','/menu/edit','{\"deep\":[\"1\"],\"pname\":[\"顶级菜单\"],\"view_type\":[\"dashboard\"],\"action\":[\"\"],\"pid\":[\"0\"],\"id\":[\"6a287b7360e6402580a4c90977c45bdc\"],\"text\":[\"主页\"],\"sort\":[\"0\"],\"row_cls\":[\"nav-tree-badge nav-tree-badge-hot\"],\"icon_cls\":[\"x-fa fa-desktop\"],\"status\":[\"1\"]}','2016-07-19 16:34:37');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('495d8955e4924943aa71866501ad6d6f','admin','编辑部门','POST','/dept/edit','{\"dept_desc\":[\"\"],\"dept_name\":[\"运营部\"],\"id\":[\"46d992c41ba4417487ddfb1b10288d13\"]}','2016-07-19 13:48:20');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('5687acbd9aad4281b3486d1f73edef87','admin','删除部门','POST','/dept/delete','{\"id\":[\"ed95178e03a34f139d378f5453eef5d4\"]}','2016-07-19 13:41:24');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('5ad85c2e217d49e296a99853eb64ca56','admin','编辑菜单','POST','/menu/edit','{\"deep\":[\"1\"],\"pname\":[\"顶级菜单\"],\"view_type\":[\"dashboard\"],\"action\":[\"\"],\"pid\":[\"0\"],\"id\":[\"6a287b7360e6402580a4c90977c45bdc\"],\"text\":[\"主页\"],\"sort\":[\"0\"],\"row_cls\":[\"nav-tree-badge nav-tree-badge-hot\"],\"icon_cls\":[\"x-fa fa-home\"],\"status\":[\"1\"]}','2016-07-19 16:33:15');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('714b4f364978447dbfeb49379645a5aa','admin','编辑部门','POST','/dept/edit','{\"dept_desc\":[\"技术部门描述\"],\"dept_name\":[\"技术部\"],\"id\":[\"abb039b4e6ae4b8b8f5603743f3cf6ae\"]}','2016-07-19 13:48:10');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('763da10da10147dc9104389affe08362','admin','编辑部门','POST','/dept/edit','{\"dept_desc\":[\"\"],\"dept_name\":[\"测试部门\"],\"id\":[\"744364e3bea241088b92a52c26c2a779\"]}','2016-07-19 13:48:07');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('7cb14eeec83b4913adb2e8113ab84fef','admin','编辑角色','POST','/role/edit','{\"role_name\":[\"仓库管理员\"],\"role_desc\":[\"角色描述\"],\"id\":[\"40a58302073642dabd178ddb36f2d2cc\"],\"row_status\":[\"0\"]}','2016-07-19 14:04:05');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('8b0af2945b2248e780d3a66e22341912','admin','编辑部门','POST','/dept/edit','{\"dept_desc\":[\"产品开发和维护\"],\"dept_name\":[\"产品部\"],\"id\":[\"9986c2aec313412a85e1a01038e430c5\"]}','2016-07-19 13:41:26');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('90b85285158a42dea8add8cbf5ac5414','admin','创建部门','POST','/dept/add','{\"dept_desc\":[\"\"],\"dept_name\":[\"测试部门\"],\"id\":[\"\"]}','2016-07-19 13:41:33');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('c1d117dde02746f38bb00d2949174871','admin','编辑用户','POST','/user/edit','{\"user_desc\":[\"工作要肯拼，生活要欢乐。\"],\"user_email\":[\"admin@qq.com\"],\"user_id\":[\"admin\"],\"role_id\":[\"380dc2536c554eae9655ccc05f16374f\"],\"user_name\":[\"Admin管理员\"],\"id\":[\"fa72ed734b7b48e1b09ceba1ffadb724\"],\"dept_id\":[\"9986c2aec313412a85e1a01038e430c5\"],\"row_status\":[\"0\"]}','2016-07-19 13:46:28');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('d6c903073baf448ba41b375305ae7f05','admin','编辑菜单','POST','/menu/edit','{\"deep\":[\"1\"],\"pname\":[\"顶级菜单\"],\"view_type\":[\"dashboard\"],\"action\":[\"\"],\"pid\":[\"0\"],\"id\":[\"6a287b7360e6402580a4c90977c45bdc\"],\"text\":[\"主页\"],\"sort\":[\"0\"],\"row_cls\":[\"nav-tree-badge nav-tree-badge-hot\"],\"icon_cls\":[\"x-fa fa-desktop\"],\"status\":[\"1\"]}','2016-07-19 16:34:03');
INSERT INTO `ext_log` (`id`, `user_name`, `action_text`, `method`, `log_url`, `log_params`, `create_time`) values('f215fa76d88e4680bf49e217d0a27bbd','admin','编辑角色','POST','/role/edit','{\"role_name\":[\"市场总监\"],\"role_desc\":[\"角色描述\"],\"id\":[\"8129351fb10f4cb4a6d4546a361d25cc\"],\"row_status\":[\"0\"]}','2016-07-19 14:04:07');

-- ----------------------------
-- Table structure for `ext_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ext_menu`;
CREATE TABLE `ext_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `text` varchar(50) DEFAULT NULL COMMENT '菜单标题',
  `leaf` char(1) DEFAULT '0' COMMENT '是否是叶子节点,0-不是,1-是',
  `pid` varchar(50) DEFAULT '0' COMMENT '父节点ID',
  `view_type` varchar(255) DEFAULT NULL COMMENT '渲染界面',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `icon_cls` varchar(100) DEFAULT NULL,
  `row_cls` varchar(100) DEFAULT NULL,
  `deep` char(11) DEFAULT '1' COMMENT '深度',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `action` varchar(255) DEFAULT '#' COMMENT '资源路径',
  `status` char(1) DEFAULT '1' COMMENT '1-启用,0-禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_menu
-- ----------------------------
INSERT INTO `ext_menu` VALUES ('020d9e228c0148ec808f6360153df917', '统计', '1', '0', 'chart', '2016-05-31 18:29:24', 'x-fa fa-line-chart', 'nav-tree-badge nav-tree-badge-new', '1', '8', null, '1');
INSERT INTO `ext_menu` VALUES ('05a8e26fd0a047eea8fe796587ad6dd0', '新增部门', '1', 'b467700c293a4a549206b5438b93a771', null, '2016-06-27 10:27:03', null, null, '3', '1', '/dept/add', '1');
INSERT INTO `ext_menu` VALUES ('0d7e4107e7e74ed28bb0ee5f1d9641ff', 'EXT基础表单', '1', 'f18713ab6e9d49b5ae2faed0e8f60e45', 'widget-form', '2016-07-09 15:24:18', 'x-fa fa-tasks', null, '2', '0', null, '1');
INSERT INTO `ext_menu` VALUES ('10da6b9f2dc144ff9e4e05aca9de1c6a', '系统日志', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'log-view', '2016-05-30 20:45:04', 'x-fa fa-info', null, '2', '4', null, '1');
INSERT INTO `ext_menu` VALUES ('13581421dc3c4ab0a9d9464a52511a69', '菜单列表', '1', 'a98a684b73e24174b1718dd6495ad4b0', null, '2016-07-11 10:52:53', null, null, '3', '0', '/menu/list', '1');
INSERT INTO `ext_menu` VALUES ('1f734e10322e41929b04f8660f372fcc', '新增菜单', '1', 'a98a684b73e24174b1718dd6495ad4b0', null, '2016-07-11 10:53:30', null, null, '3', '1', '/menu/add', '1');
INSERT INTO `ext_menu` VALUES ('220b1e3fa78b4a7db0d213dc56700837', '日志查询', '1', '10da6b9f2dc144ff9e4e05aca9de1c6a', null, '2016-06-02 08:54:01', null, null, '3', '0', '/log/list', '1');
INSERT INTO `ext_menu` VALUES ('24f4bfc473d8438faa06de8369c7ab92', '用户管理', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'user-view', '2016-05-30 20:43:58', 'x-fa fa-user', null, '2', '0', null, '1');
INSERT INTO `ext_menu` VALUES ('36634b3a36ae4ef0ac566432c98ed7a7', '系统管理', '0', '0', null, '2016-05-30 20:44:00', 'x-fa fa-gears', null, '1', '1', null, '1');
INSERT INTO `ext_menu` VALUES ('40b9f6dfed2543f9a917e6846df9ce6a', 'Kindeditor编辑器', '1', 'f18713ab6e9d49b5ae2faed0e8f60e45', 'widget-kindeditor', '2016-07-09 15:59:43', 'x-fa fa-edit', null, '2', '1', null, '1');
INSERT INTO `ext_menu` VALUES ('4aaa67985ebd423196e70f2a973ecc5d', '编辑部门', '1', 'b467700c293a4a549206b5438b93a771', null, '2016-06-27 10:27:39', null, null, '3', '2', '/dept/edit', '1');
INSERT INTO `ext_menu` VALUES ('4c767b293512465d8cf6b677ad520d82', '编辑菜单', '1', 'a98a684b73e24174b1718dd6495ad4b0', null, '2016-07-11 10:53:57', null, null, '3', '2', '/menu/edit', '1');
INSERT INTO `ext_menu` VALUES ('61e9f8e07e3449969fe7a9f849bac30a', '角色管理', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'role-view', '2016-05-30 20:43:58', 'x-fa fa-users', null, '2', '1', null, '1');
INSERT INTO `ext_menu` VALUES ('63e1cca5fae4488182080eb3f5e4c1c8', '删除角色', '1', '61e9f8e07e3449969fe7a9f849bac30a', null, '2016-06-27 10:16:35', null, null, '3', '3', '/role/delete', '1');
INSERT INTO `ext_menu` VALUES ('6a287b7360e6402580a4c90977c45bdc', '主页', '1', '0', 'dashboard', '2016-05-30 20:41:15', 'x-fa fa-desktop', 'nav-tree-badge nav-tree-badge-hot', '1', '0', null, '1');
INSERT INTO `ext_menu` VALUES ('787a3559dca54c2b896c06b4d17f64fa', '重置密码', '1', '24f4bfc473d8438faa06de8369c7ab92', null, '2016-06-27 09:42:41', null, null, '3', '5', '/user/resetpwd', '1');
INSERT INTO `ext_menu` VALUES ('78a4bb7927c5459ba21af076465014a6', '编辑用户', '1', '24f4bfc473d8438faa06de8369c7ab92', null, '2016-05-30 20:43:58', null, null, '3', '2', '/user/edit', '1');
INSERT INTO `ext_menu` VALUES ('8cad5b44cc644edead242431c644f499', '删除部门', '1', 'b467700c293a4a549206b5438b93a771', null, '2016-06-27 10:28:02', null, null, '3', '3', '/dept/delete', '1');
INSERT INTO `ext_menu` VALUES ('93c6613b01fc4ca3abb81482078d1c3f', '删除菜单', '1', 'a98a684b73e24174b1718dd6495ad4b0', null, '2016-07-11 10:54:22', null, null, '3', '3', '/menu/delete', '1');
INSERT INTO `ext_menu` VALUES ('a0bda115335f4464bf34c75ef96c18af', '编辑角色', '1', '61e9f8e07e3449969fe7a9f849bac30a', null, '2016-06-27 10:16:12', null, null, '3', '2', '/role/edit', '1');
INSERT INTO `ext_menu` VALUES ('a98a684b73e24174b1718dd6495ad4b0', '菜单&资源', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'tree-menu', '2016-05-30 20:43:58', 'x-fa fa-navicon', null, '2', '3', null, '1');
INSERT INTO `ext_menu` VALUES ('b157d8a09742472bb02cc48ea784b18c', '删除用户', '1', '24f4bfc473d8438faa06de8369c7ab92', null, '2016-06-08 13:07:30', null, null, '3', '4', '/user/delete', '1');
INSERT INTO `ext_menu` VALUES ('b467700c293a4a549206b5438b93a771', '部门管理', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'dept-view', '2016-06-16 16:56:56', 'x-fa fa-graduation-cap', null, '2', '2', null, '1');
INSERT INTO `ext_menu` VALUES ('c089ed68fe6b47da85e5cb1abb6ec24d', '创建角色', '1', '61e9f8e07e3449969fe7a9f849bac30a', null, '2016-06-27 10:15:52', null, null, '3', '1', '/role/add', '1');
INSERT INTO `ext_menu` VALUES ('c948820b5cd040109567ee5a22369f95', '修改密码', '1', '24f4bfc473d8438faa06de8369c7ab92', null, '2016-07-11 11:56:34', null, null, '3', '6', '/user/updatepwd', '1');
INSERT INTO `ext_menu` VALUES ('d08d362db39e43269fbd7f4ae6a464d0', '部门列表', '1', 'b467700c293a4a549206b5438b93a771', null, '2016-06-27 10:26:45', null, null, '3', '0', '/dept/list', '1');
INSERT INTO `ext_menu` VALUES ('d442ead2915444eea92133d36dcf0a7a', '分配权限', '1', '61e9f8e07e3449969fe7a9f849bac30a', null, '2016-06-27 10:17:26', null, null, '3', '2', '/role/doAuth', '1');
INSERT INTO `ext_menu` VALUES ('d557c1f9fbe14c169a86186fa8be0bfb', '查询用户', '1', '24f4bfc473d8438faa06de8369c7ab92', null, '2016-06-02 09:37:12', null, null, '3', '0', '/user/list', '1');
INSERT INTO `ext_menu` VALUES ('df2defffefb7484bb07f0fc31543be4e', '新增用户', '1', '24f4bfc473d8438faa06de8369c7ab92', null, '2016-05-30 20:43:58', null, null, '3', '1', '/user/add', '1');
INSERT INTO `ext_menu` VALUES ('e396382bd397462596ae1a7f6bf3efc1', '角色列表', '1', '61e9f8e07e3449969fe7a9f849bac30a', null, '2016-06-27 10:15:09', null, null, '3', '0', '/role/list', '1');
INSERT INTO `ext_menu` VALUES ('f18713ab6e9d49b5ae2faed0e8f60e45', '组件实例', '0', '0', null, '2016-07-09 15:05:03', 'x-fa fa-list', null, '1', '2', null, '1');

-- ----------------------------
-- Table structure for `ext_role`
-- ----------------------------
DROP TABLE IF EXISTS `ext_role`;
CREATE TABLE `ext_role` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `role_desc` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `row_status` char(11) DEFAULT '0' COMMENT '状态,0-启用，1-禁用，2-删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_role
-- ----------------------------
INSERT INTO `ext_role` VALUES ('380dc2536c554eae9655ccc05f16374f', '超级管理员', '2016-06-08 14:40:54', '拥有所有权限', '0');
INSERT INTO `ext_role` VALUES ('6a287b7360e6402580a4c90977c45bdc', '普通管理员', '2016-06-08 21:47:04', '拥有系统基本权限', '2');
INSERT INTO `ext_role` VALUES ('6abdd6fe57694c4b992be3d5a554ca11', '普通管理员', '2016-06-11 11:39:16', '普通管理员', '0');
INSERT INTO `ext_role` VALUES ('e2f26329c49e4e9fbb36fb74a1cedb1e', '查询角色', '2016-07-11 10:50:15', '用于所有查询权限', '0');

-- ----------------------------
-- Table structure for `ext_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ext_role_menu`;
CREATE TABLE `ext_role_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `role_id` varchar(50) DEFAULT NULL COMMENT '角色ID',
  `menu_id` varchar(50) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_role_menu
-- ----------------------------
INSERT INTO `ext_role_menu` VALUES ('02e74b6b95ed41248050cfeeb406642b', '380dc2536c554eae9655ccc05f16374f', '36634b3a36ae4ef0ac566432c98ed7a7');
INSERT INTO `ext_role_menu` VALUES ('06b1e5e7c5e441e0b8171e10e8f2ef58', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '13581421dc3c4ab0a9d9464a52511a69');
INSERT INTO `ext_role_menu` VALUES ('07754613867b43e29b0ab1b25f321679', '380dc2536c554eae9655ccc05f16374f', 'd442ead2915444eea92133d36dcf0a7a');
INSERT INTO `ext_role_menu` VALUES ('1380326242e943a88a2bcd604de2459d', '380dc2536c554eae9655ccc05f16374f', '220b1e3fa78b4a7db0d213dc56700837');
INSERT INTO `ext_role_menu` VALUES ('199954fd2968450e8754af7d9ebb292c', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_role_menu` VALUES ('25407edc9c7b4c46869b48044ab8f18c', 'e2f26329c49e4e9fbb36fb74a1cedb1e', 'd08d362db39e43269fbd7f4ae6a464d0');
INSERT INTO `ext_role_menu` VALUES ('2d48ded97bb1447fae541b3308ee4c4d', '380dc2536c554eae9655ccc05f16374f', '40b9f6dfed2543f9a917e6846df9ce6a');
INSERT INTO `ext_role_menu` VALUES ('2dabea4b5b394fd2a6293d9c51a7afcd', '380dc2536c554eae9655ccc05f16374f', 'd557c1f9fbe14c169a86186fa8be0bfb');
INSERT INTO `ext_role_menu` VALUES ('30d77f9f44e64a0c97c95cc618862e2a', '380dc2536c554eae9655ccc05f16374f', 'a98a684b73e24174b1718dd6495ad4b0');
INSERT INTO `ext_role_menu` VALUES ('338cbd0d2d4b43e1afcaba1ae7338da3', 'e2f26329c49e4e9fbb36fb74a1cedb1e', 'f18713ab6e9d49b5ae2faed0e8f60e45');
INSERT INTO `ext_role_menu` VALUES ('386ed2fff1604511bb147799fbf9fd0c', '380dc2536c554eae9655ccc05f16374f', 'e396382bd397462596ae1a7f6bf3efc1');
INSERT INTO `ext_role_menu` VALUES ('39afacfcb64b4a3d8dad3c17370707f3', '380dc2536c554eae9655ccc05f16374f', '78a4bb7927c5459ba21af076465014a6');
INSERT INTO `ext_role_menu` VALUES ('3a0a6e20565c46218341f496034ba7e5', '380dc2536c554eae9655ccc05f16374f', 'df2defffefb7484bb07f0fc31543be4e');
INSERT INTO `ext_role_menu` VALUES ('3f1a054041d949d2878a66319629dc06', '380dc2536c554eae9655ccc05f16374f', 'c089ed68fe6b47da85e5cb1abb6ec24d');
INSERT INTO `ext_role_menu` VALUES ('49d6d460ce5a4c1eb575ea0307129594', '380dc2536c554eae9655ccc05f16374f', 'f18713ab6e9d49b5ae2faed0e8f60e45');
INSERT INTO `ext_role_menu` VALUES ('540a55dd557a4aebb8c7be065fde1c5b', '6abdd6fe57694c4b992be3d5a554ca11', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_role_menu` VALUES ('5eeaaadc3bd54e409f9e08e64596f11d', 'e2f26329c49e4e9fbb36fb74a1cedb1e', 'a98a684b73e24174b1718dd6495ad4b0');
INSERT INTO `ext_role_menu` VALUES ('5f4718cfd8c0467bbb81fb84111e85e9', '6abdd6fe57694c4b992be3d5a554ca11', '020d9e228c0148ec808f6360153df917');
INSERT INTO `ext_role_menu` VALUES ('6236002dadfe426f8e7b209fe021667e', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '61e9f8e07e3449969fe7a9f849bac30a');
INSERT INTO `ext_role_menu` VALUES ('62fded562ed24d73b0ecbadb17ee59c6', '380dc2536c554eae9655ccc05f16374f', '93c6613b01fc4ca3abb81482078d1c3f');
INSERT INTO `ext_role_menu` VALUES ('649db73a0e354eb7951f3565d961e06d', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '10da6b9f2dc144ff9e4e05aca9de1c6a');
INSERT INTO `ext_role_menu` VALUES ('6559b7fe546141848b2d6505d1e94ed7', '6abdd6fe57694c4b992be3d5a554ca11', '10da6b9f2dc144ff9e4e05aca9de1c6a');
INSERT INTO `ext_role_menu` VALUES ('68c174999b624d988f6284f4cb229678', '380dc2536c554eae9655ccc05f16374f', '020d9e228c0148ec808f6360153df917');
INSERT INTO `ext_role_menu` VALUES ('70a90114710b4b89a922bef0e952389d', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '020d9e228c0148ec808f6360153df917');
INSERT INTO `ext_role_menu` VALUES ('7c4e075871644cc8820eeb393d5c8dca', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '24f4bfc473d8438faa06de8369c7ab92');
INSERT INTO `ext_role_menu` VALUES ('82bae9ca7d3749cda0eed7ec8e01cbb1', '380dc2536c554eae9655ccc05f16374f', '61e9f8e07e3449969fe7a9f849bac30a');
INSERT INTO `ext_role_menu` VALUES ('83d52900621845889b3d3eb5db7840ac', '380dc2536c554eae9655ccc05f16374f', '8cad5b44cc644edead242431c644f499');
INSERT INTO `ext_role_menu` VALUES ('950a09f4d5d44c5abdcf845ae6d3543a', '6abdd6fe57694c4b992be3d5a554ca11', '36634b3a36ae4ef0ac566432c98ed7a7');
INSERT INTO `ext_role_menu` VALUES ('9b1df6fe387449c0814e25f43d51d80b', '380dc2536c554eae9655ccc05f16374f', '4aaa67985ebd423196e70f2a973ecc5d');
INSERT INTO `ext_role_menu` VALUES ('9d26eb63e94b4870b0524b9fc644f431', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '0d7e4107e7e74ed28bb0ee5f1d9641ff');
INSERT INTO `ext_role_menu` VALUES ('a22b9cfa5b9b4fb488f9cdd7d1f2a1fd', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '36634b3a36ae4ef0ac566432c98ed7a7');
INSERT INTO `ext_role_menu` VALUES ('a533eac06c6740ef96ac3db5fcee3ad6', '380dc2536c554eae9655ccc05f16374f', 'c948820b5cd040109567ee5a22369f95');
INSERT INTO `ext_role_menu` VALUES ('a6ab7e040081461c9c624cc4cf15a620', 'e2f26329c49e4e9fbb36fb74a1cedb1e', 'd557c1f9fbe14c169a86186fa8be0bfb');
INSERT INTO `ext_role_menu` VALUES ('aa1c3c1f00de442e93fa17484eefbdd5', '380dc2536c554eae9655ccc05f16374f', '13581421dc3c4ab0a9d9464a52511a69');
INSERT INTO `ext_role_menu` VALUES ('abcbc150a1aa407ba6cc795b356ffddf', '380dc2536c554eae9655ccc05f16374f', '63e1cca5fae4488182080eb3f5e4c1c8');
INSERT INTO `ext_role_menu` VALUES ('b238afc02a5b415cb5b89e4b62010d1a', '380dc2536c554eae9655ccc05f16374f', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_role_menu` VALUES ('b42f2a203e4c4924b40f3adc98ad52db', '380dc2536c554eae9655ccc05f16374f', 'b157d8a09742472bb02cc48ea784b18c');
INSERT INTO `ext_role_menu` VALUES ('c06cedef6d704b2bb1ca2952c29b9075', '380dc2536c554eae9655ccc05f16374f', '4c767b293512465d8cf6b677ad520d82');
INSERT INTO `ext_role_menu` VALUES ('c3cd488a5dbc423e89fe131505743927', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '40b9f6dfed2543f9a917e6846df9ce6a');
INSERT INTO `ext_role_menu` VALUES ('cc8d3fff756444c2b634a52cf41ea925', 'e2f26329c49e4e9fbb36fb74a1cedb1e', 'b467700c293a4a549206b5438b93a771');
INSERT INTO `ext_role_menu` VALUES ('d280dba56ca04ce19a0c16eae09a6a80', '380dc2536c554eae9655ccc05f16374f', '0d7e4107e7e74ed28bb0ee5f1d9641ff');
INSERT INTO `ext_role_menu` VALUES ('da1c583d8b54465d94d55b4e24647a2e', '380dc2536c554eae9655ccc05f16374f', '787a3559dca54c2b896c06b4d17f64fa');
INSERT INTO `ext_role_menu` VALUES ('e448a59cd2ea43e6b56eaf4087fe078f', '380dc2536c554eae9655ccc05f16374f', '1f734e10322e41929b04f8660f372fcc');
INSERT INTO `ext_role_menu` VALUES ('e4eaf8c67be6450a96c279f9a59f01cb', '380dc2536c554eae9655ccc05f16374f', 'd08d362db39e43269fbd7f4ae6a464d0');
INSERT INTO `ext_role_menu` VALUES ('e8c191d60d7c4f0390e68f5cb332d377', 'e2f26329c49e4e9fbb36fb74a1cedb1e', '220b1e3fa78b4a7db0d213dc56700837');
INSERT INTO `ext_role_menu` VALUES ('ec3692dfbbe74055ba4ab795020c5621', '380dc2536c554eae9655ccc05f16374f', '05a8e26fd0a047eea8fe796587ad6dd0');
INSERT INTO `ext_role_menu` VALUES ('f1fbfe72884d439dbf8f81a4d40013eb', 'e2f26329c49e4e9fbb36fb74a1cedb1e', 'e396382bd397462596ae1a7f6bf3efc1');
INSERT INTO `ext_role_menu` VALUES ('f5d56366d13142ddbf8e622b4aa8e52c', '380dc2536c554eae9655ccc05f16374f', '24f4bfc473d8438faa06de8369c7ab92');
INSERT INTO `ext_role_menu` VALUES ('f9c4e6875a884794acd0931342dc6d0a', '6abdd6fe57694c4b992be3d5a554ca11', '220b1e3fa78b4a7db0d213dc56700837');
INSERT INTO `ext_role_menu` VALUES ('fa028e73ed4f4adea7a273b72e1af274', '380dc2536c554eae9655ccc05f16374f', 'b467700c293a4a549206b5438b93a771');
INSERT INTO `ext_role_menu` VALUES ('ff658aec62db464fba5c5162395d164d', '380dc2536c554eae9655ccc05f16374f', 'a0bda115335f4464bf34c75ef96c18af');
INSERT INTO `ext_role_menu` VALUES ('ffd1792dd4544158a0c9975b68f1d03d', '380dc2536c554eae9655ccc05f16374f', '10da6b9f2dc144ff9e4e05aca9de1c6a');

-- ----------------------------
-- Table structure for `ext_user`
-- ----------------------------
DROP TABLE IF EXISTS `ext_user`;
CREATE TABLE `ext_user` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户登录ID',
  `user_pwd` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `user_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `row_status` char(1) DEFAULT '0' COMMENT '状态,0-启用，1-禁用，2-删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `user_desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `dept_id` varchar(50) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_user
-- ----------------------------
INSERT INTO `ext_user` VALUES ('805c8fdd191d45b88aed43b2614260ea', 'test', 'E10ADC3949BA59ABBE56E057F20F883E', 'Test', '111111111@qq.com', '0', '2016-07-11 10:49:53', '工作要肯拼,生活要欢乐！', '9986c2aec313412a85e1a01038e430c5');
INSERT INTO `ext_user` VALUES ('b4e6e5259b7b4d56aafcd6b3073771db', 'zhangsan', 'E10ADC3949BA59ABBE56E057F20F883E', '张三', 'zhangsan@vaco.com', '2', '2016-06-08 20:55:36', 'uuuuu', 'abb039b4e6ae4b8b8f5603743f3cf6ae');
INSERT INTO `ext_user` VALUES ('fa72ed734b7b48e1b09ceba1ffadb724', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', 'Admin管理员', 'admin@qq.com', '0', '2016-06-08 18:13:25', '工作要肯拼，生活要欢乐。', '9986c2aec313412a85e1a01038e430c5');

-- ----------------------------
-- Table structure for `ext_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `ext_user_role`;
CREATE TABLE `ext_user_role` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户主键',
  `role_id` varchar(50) DEFAULT NULL COMMENT '角色主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_user_role
-- ----------------------------
INSERT INTO `ext_user_role` VALUES ('0c555ffcf05645019ef27a6fb37cc77f', 'a84a2f53682645cd93adbc96c0c33f1e', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_user_role` VALUES ('466b75401408467fa01e40b944e9e317', 'b4e6e5259b7b4d56aafcd6b3073771db', '6abdd6fe57694c4b992be3d5a554ca11');
INSERT INTO `ext_user_role` VALUES ('87ec121412ab4a0cabd941228f498ddc', 'c46f6c7913374ade8565d9d412a385c1', '6abdd6fe57694c4b992be3d5a554ca11');
INSERT INTO `ext_user_role` VALUES ('8da5a65835c346e3a2b8015780a88189', '25b29869ef2d40f5a3ce8eaa589fea35', '6abdd6fe57694c4b992be3d5a554ca11');
INSERT INTO `ext_user_role` VALUES ('99dd910cfa9e4142acefdae9bd98d2fc', '7b7c4d46de6744f99a0031ed01f4346f', '380dc2536c554eae9655ccc05f16374f');
INSERT INTO `ext_user_role` VALUES ('a039cd21a8494e3a9bfbe6ffa81d9140', 'c46f6c7913374ade8565d9d412a385c1', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_user_role` VALUES ('a8bb350d28d547c597ba5c36dc3551ad', '251b866b0b3e45b0b3979c02318289f7', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_user_role` VALUES ('b8dc64d8f1634c8d9fc373cde52ad7e0', '25b29869ef2d40f5a3ce8eaa589fea35', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_user_role` VALUES ('bbd3919dc9ec40618f5316c21627a6d4', '805c8fdd191d45b88aed43b2614260ea', 'e2f26329c49e4e9fbb36fb74a1cedb1e');
INSERT INTO `ext_user_role` VALUES ('dfd0986319e94742966f7c506083f4ff', '34ddcbdcbe3c4b15b554680f176ad587', '6abdd6fe57694c4b992be3d5a554ca11');
INSERT INTO `ext_user_role` VALUES ('fb058462cf6147ac9598e1cebbaa943a', 'fa72ed734b7b48e1b09ceba1ffadb724', '380dc2536c554eae9655ccc05f16374f');

DROP TABLE IF EXISTS `ext_icon`;
CREATE TABLE `ext_icon` (
	`id` int (11),
	`icon_name` varchar (765)
); 
INSERT INTO `ext_icon` (`id`, `icon_name`) values('1','x-fa fa-glass');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('2','x-fa fa-music');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('3','x-fa fa-search');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('4','x-fa fa-envelope-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('5','x-fa fa-heart');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('6','x-fa fa-star');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('7','x-fa fa-star-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('8','x-fa fa-user');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('9','x-fa fa-film');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('10','x-fa fa-th-large');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('11','x-fa fa-th');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('12','x-fa fa-th-list');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('13','x-fa fa-check');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('14','x-fa fa-remove');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('15','x-fa fa-close');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('16','x-fa fa-times');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('17','x-fa fa-search-plus');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('18','x-fa fa-search-minus');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('19','x-fa fa-power-off');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('20','x-fa fa-signal');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('21','x-fa fa-gear');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('22','x-fa fa-cog');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('23','x-fa fa-trash-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('24','x-fa fa-home');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('25','x-fa fa-file-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('26','x-fa fa-clock-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('27','x-fa fa-road');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('28','x-fa fa-download');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('29','x-fa fa-arrow-circle-o-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('30','x-fa fa-arrow-circle-o-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('31','x-fa fa-inbox');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('32','x-fa fa-play-circle-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('33','x-fa fa-rotate-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('34','x-fa fa-repeat');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('35','x-fa fa-refresh');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('36','x-fa fa-list-alt');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('37','x-fa fa-lock');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('38','x-fa fa-flag');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('39','x-fa fa-headphones');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('40','x-fa fa-volume-off');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('41','x-fa fa-volume-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('42','x-fa fa-volume-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('43','x-fa fa-qrcode');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('44','x-fa fa-barcode');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('45','x-fa fa-tag');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('46','x-fa fa-tags');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('47','x-fa fa-book');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('48','x-fa fa-bookmark');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('49','x-fa fa-print');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('50','x-fa fa-camera');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('51','x-fa fa-font');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('52','x-fa fa-bold');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('53','x-fa fa-italic');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('54','x-fa fa-text-height');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('55','x-fa fa-text-width');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('56','x-fa fa-align-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('57','x-fa fa-align-center');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('58','x-fa fa-align-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('59','x-fa fa-align-justify');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('60','x-fa fa-list');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('61','x-fa fa-dedent');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('62','x-fa fa-outdent');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('63','x-fa fa-indent');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('64','x-fa fa-video-camera');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('65','x-fa fa-photo');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('66','x-fa fa-image');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('67','x-fa fa-picture-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('68','x-fa fa-pencil');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('69','x-fa fa-map-marker');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('70','x-fa fa-adjust');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('71','x-fa fa-tint');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('72','x-fa fa-edit');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('73','x-fa fa-pencil-square-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('74','x-fa fa-share-square-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('75','x-fa fa-check-square-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('76','x-fa fa-arrows');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('77','x-fa fa-step-backward');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('78','x-fa fa-fast-backward');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('79','x-fa fa-backward');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('80','x-fa fa-play');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('81','x-fa fa-pause');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('82','x-fa fa-stop');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('83','x-fa fa-forward');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('84','x-fa fa-fast-forward');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('85','x-fa fa-step-forward');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('86','x-fa fa-eject');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('87','x-fa fa-chevron-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('88','x-fa fa-chevron-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('89','x-fa fa-plus-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('90','x-fa fa-minus-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('91','x-fa fa-times-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('92','x-fa fa-check-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('93','x-fa fa-question-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('94','x-fa fa-info-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('95','x-fa fa-crosshairs');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('96','x-fa fa-times-circle-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('97','x-fa fa-check-circle-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('98','x-fa fa-ban');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('99','x-fa fa-arrow-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('100','x-fa fa-arrow-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('101','x-fa fa-arrow-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('102','x-fa fa-arrow-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('103','x-fa fa-mail-forward');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('104','x-fa fa-share');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('105','x-fa fa-expand');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('106','x-fa fa-compress');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('107','x-fa fa-plus');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('108','x-fa fa-minus');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('109','x-fa fa-asterisk');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('110','x-fa fa-exclamation-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('111','x-fa fa-gift');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('112','x-fa fa-leaf');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('113','x-fa fa-fire');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('114','x-fa fa-eye');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('115','x-fa fa-eye-slash');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('116','x-fa fa-warning');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('117','x-fa fa-exclamation-triangle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('118','x-fa fa-plane');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('119','x-fa fa-calendar');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('120','x-fa fa-random');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('121','x-fa fa-comment');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('122','x-fa fa-magnet');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('123','x-fa fa-chevron-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('124','x-fa fa-chevron-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('125','x-fa fa-retweet');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('126','x-fa fa-shopping-cart');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('127','x-fa fa-folder');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('128','x-fa fa-folder-open');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('129','x-fa fa-arrows-v');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('130','x-fa fa-arrows-h');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('131','x-fa fa-bar-chart-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('132','x-fa fa-bar-chart');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('133','x-fa fa-twitter-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('134','x-fa fa-facebook-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('135','x-fa fa-camera-retro');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('136','x-fa fa-key');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('137','x-fa fa-gears');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('138','x-fa fa-cogs');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('139','x-fa fa-comments');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('140','x-fa fa-thumbs-o-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('141','x-fa fa-thumbs-o-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('142','x-fa fa-star-half');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('143','x-fa fa-heart-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('144','x-fa fa-sign-out');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('145','x-fa fa-linkedin-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('146','x-fa fa-thumb-tack');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('147','x-fa fa-external-link');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('148','x-fa fa-sign-in');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('149','x-fa fa-trophy');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('150','x-fa fa-github-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('151','x-fa fa-upload');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('152','x-fa fa-lemon-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('153','x-fa fa-phone');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('154','x-fa fa-square-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('155','x-fa fa-bookmark-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('156','x-fa fa-phone-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('157','x-fa fa-twitter');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('158','x-fa fa-facebook');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('159','x-fa fa-github');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('160','x-fa fa-unlock');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('161','x-fa fa-credit-card');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('162','x-fa fa-rss');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('163','x-fa fa-hdd-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('164','x-fa fa-bullhorn');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('165','x-fa fa-bell');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('166','x-fa fa-certificate');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('167','x-fa fa-hand-o-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('168','x-fa fa-hand-o-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('169','x-fa fa-hand-o-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('170','x-fa fa-hand-o-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('171','x-fa fa-arrow-circle-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('172','x-fa fa-arrow-circle-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('173','x-fa fa-arrow-circle-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('174','x-fa fa-arrow-circle-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('175','x-fa fa-globe');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('176','x-fa fa-wrench');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('177','x-fa fa-tasks');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('178','x-fa fa-filter');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('179','x-fa fa-briefcase');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('180','x-fa fa-arrows-alt');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('181','x-fa fa-group');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('182','x-fa fa-users');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('183','x-fa fa-chain');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('184','x-fa fa-link');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('185','x-fa fa-cloud');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('186','x-fa fa-flask');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('187','x-fa fa-cut');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('188','x-fa fa-scissors');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('189','x-fa fa-copy');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('190','x-fa fa-files-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('191','x-fa fa-paperclip');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('192','x-fa fa-save');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('193','x-fa fa-floppy-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('194','x-fa fa-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('195','x-fa fa-navicon');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('196','x-fa fa-reorder');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('197','x-fa fa-bars');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('198','x-fa fa-list-ul');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('199','x-fa fa-list-ol');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('200','x-fa fa-strikethrough');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('201','x-fa fa-underline');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('202','x-fa fa-table');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('203','x-fa fa-magic');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('204','x-fa fa-truck');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('205','x-fa fa-pinterest');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('206','x-fa fa-pinterest-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('207','x-fa fa-google-plus-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('208','x-fa fa-google-plus');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('209','x-fa fa-money');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('210','x-fa fa-caret-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('211','x-fa fa-caret-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('212','x-fa fa-caret-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('213','x-fa fa-caret-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('214','x-fa fa-columns');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('215','x-fa fa-unsorted');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('216','x-fa fa-sort');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('217','x-fa fa-sort-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('218','x-fa fa-sort-desc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('219','x-fa fa-sort-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('220','x-fa fa-sort-asc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('221','x-fa fa-envelope');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('222','x-fa fa-linkedin');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('223','x-fa fa-rotate-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('224','x-fa fa-undo');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('225','x-fa fa-legal');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('226','x-fa fa-gavel');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('227','x-fa fa-dashboard');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('228','x-fa fa-tachometer');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('229','x-fa fa-comment-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('230','x-fa fa-comments-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('231','x-fa fa-flash');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('232','x-fa fa-bolt');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('233','x-fa fa-sitemap');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('234','x-fa fa-umbrella');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('235','x-fa fa-paste');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('236','x-fa fa-clipboard');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('237','x-fa fa-lightbulb-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('238','x-fa fa-exchange');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('239','x-fa fa-cloud-download');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('240','x-fa fa-cloud-upload');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('241','x-fa fa-user-md');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('242','x-fa fa-stethoscope');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('243','x-fa fa-suitcase');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('244','x-fa fa-bell-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('245','x-fa fa-coffee');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('246','x-fa fa-cutlery');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('247','x-fa fa-file-text-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('248','x-fa fa-building-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('249','x-fa fa-hospital-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('250','x-fa fa-ambulance');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('251','x-fa fa-medkit');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('252','x-fa fa-fighter-jet');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('253','x-fa fa-beer');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('254','x-fa fa-h-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('255','x-fa fa-plus-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('256','x-fa fa-angle-double-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('257','x-fa fa-angle-double-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('258','x-fa fa-angle-double-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('259','x-fa fa-angle-double-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('260','x-fa fa-angle-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('261','x-fa fa-angle-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('262','x-fa fa-angle-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('263','x-fa fa-angle-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('264','x-fa fa-desktop');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('265','x-fa fa-laptop');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('266','x-fa fa-tablet');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('267','x-fa fa-mobile-phone');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('268','x-fa fa-mobile');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('269','x-fa fa-circle-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('270','x-fa fa-quote-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('271','x-fa fa-quote-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('272','x-fa fa-spinner');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('273','x-fa fa-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('274','x-fa fa-mail-reply');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('275','x-fa fa-reply');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('276','x-fa fa-github-alt');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('277','x-fa fa-folder-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('278','x-fa fa-folder-open-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('279','x-fa fa-smile-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('280','x-fa fa-frown-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('281','x-fa fa-meh-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('282','x-fa fa-gamepad');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('283','x-fa fa-keyboard-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('284','x-fa fa-flag-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('285','x-fa fa-flag-checkered');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('286','x-fa fa-terminal');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('287','x-fa fa-code');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('288','x-fa fa-mail-reply-all');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('289','x-fa fa-reply-all');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('290','x-fa fa-star-half-empty');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('291','x-fa fa-star-half-full');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('292','x-fa fa-star-half-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('293','x-fa fa-location-arrow');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('294','x-fa fa-crop');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('295','x-fa fa-code-fork');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('296','x-fa fa-unlink');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('297','x-fa fa-chain-broken');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('298','x-fa fa-question');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('299','x-fa fa-info');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('300','x-fa fa-exclamation');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('301','x-fa fa-superscript');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('302','x-fa fa-subscript');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('303','x-fa fa-eraser');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('304','x-fa fa-puzzle-piece');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('305','x-fa fa-microphone');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('306','x-fa fa-microphone-slash');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('307','x-fa fa-shield');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('308','x-fa fa-calendar-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('309','x-fa fa-fire-extinguisher');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('310','x-fa fa-rocket');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('311','x-fa fa-maxcdn');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('312','x-fa fa-chevron-circle-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('313','x-fa fa-chevron-circle-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('314','x-fa fa-chevron-circle-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('315','x-fa fa-chevron-circle-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('316','x-fa fa-html5');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('317','x-fa fa-css3');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('318','x-fa fa-anchor');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('319','x-fa fa-unlock-alt');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('320','x-fa fa-bullseye');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('321','x-fa fa-ellipsis-h');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('322','x-fa fa-ellipsis-v');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('323','x-fa fa-rss-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('324','x-fa fa-play-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('325','x-fa fa-ticket');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('326','x-fa fa-minus-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('327','x-fa fa-minus-square-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('328','x-fa fa-level-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('329','x-fa fa-level-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('330','x-fa fa-check-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('331','x-fa fa-pencil-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('332','x-fa fa-external-link-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('333','x-fa fa-share-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('334','x-fa fa-compass');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('335','x-fa fa-toggle-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('336','x-fa fa-caret-square-o-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('337','x-fa fa-toggle-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('338','x-fa fa-caret-square-o-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('339','x-fa fa-toggle-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('340','x-fa fa-caret-square-o-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('341','x-fa fa-euro');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('342','x-fa fa-eur');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('343','x-fa fa-gbp');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('344','x-fa fa-dollar');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('345','x-fa fa-usd');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('346','x-fa fa-rupee');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('347','x-fa fa-inr');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('348','x-fa fa-cny');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('349','x-fa fa-rmb');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('350','x-fa fa-yen');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('351','x-fa fa-jpy');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('352','x-fa fa-ruble');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('353','x-fa fa-rouble');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('354','x-fa fa-rub');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('355','x-fa fa-won');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('356','x-fa fa-krw');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('357','x-fa fa-bitcoin');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('358','x-fa fa-btc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('359','x-fa fa-file');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('360','x-fa fa-file-text');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('361','x-fa fa-sort-alpha-asc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('362','x-fa fa-sort-alpha-desc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('363','x-fa fa-sort-amount-asc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('364','x-fa fa-sort-amount-desc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('365','x-fa fa-sort-numeric-asc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('366','x-fa fa-sort-numeric-desc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('367','x-fa fa-thumbs-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('368','x-fa fa-thumbs-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('369','x-fa fa-youtube-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('370','x-fa fa-youtube');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('371','x-fa fa-xing');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('372','x-fa fa-xing-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('373','x-fa fa-youtube-play');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('374','x-fa fa-dropbox');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('375','x-fa fa-stack-overflow');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('376','x-fa fa-instagram');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('377','x-fa fa-flickr');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('378','x-fa fa-adn');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('379','x-fa fa-bitbucket');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('380','x-fa fa-bitbucket-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('381','x-fa fa-tumblr');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('382','x-fa fa-tumblr-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('383','x-fa fa-long-arrow-down');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('384','x-fa fa-long-arrow-up');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('385','x-fa fa-long-arrow-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('386','x-fa fa-long-arrow-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('387','x-fa fa-apple');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('388','x-fa fa-windows');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('389','x-fa fa-android');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('390','x-fa fa-linux');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('391','x-fa fa-dribbble');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('392','x-fa fa-skype');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('393','x-fa fa-foursquare');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('394','x-fa fa-trello');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('395','x-fa fa-female');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('396','x-fa fa-male');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('397','x-fa fa-gittip');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('398','x-fa fa-sun-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('399','x-fa fa-moon-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('400','x-fa fa-archive');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('401','x-fa fa-bug');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('402','x-fa fa-vk');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('403','x-fa fa-weibo');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('404','x-fa fa-renren');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('405','x-fa fa-pagelines');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('406','x-fa fa-stack-exchange');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('407','x-fa fa-arrow-circle-o-right');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('408','x-fa fa-arrow-circle-o-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('409','x-fa fa-toggle-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('410','x-fa fa-caret-square-o-left');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('411','x-fa fa-dot-circle-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('412','x-fa fa-wheelchair');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('413','x-fa fa-vimeo-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('414','x-fa fa-turkish-lira');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('415','x-fa fa-try');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('416','x-fa fa-plus-square-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('417','x-fa fa-space-shuttle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('418','x-fa fa-slack');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('419','x-fa fa-envelope-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('420','x-fa fa-wordpress');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('421','x-fa fa-openid');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('422','x-fa fa-institution');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('423','x-fa fa-bank');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('424','x-fa fa-university');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('425','x-fa fa-mortar-board');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('426','x-fa fa-graduation-cap');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('427','x-fa fa-yahoo');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('428','x-fa fa-google');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('429','x-fa fa-reddit');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('430','x-fa fa-reddit-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('431','x-fa fa-stumbleupon-circle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('432','x-fa fa-stumbleupon');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('433','x-fa fa-delicious');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('434','x-fa fa-digg');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('435','x-fa fa-pied-piper');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('436','x-fa fa-pied-piper-alt');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('437','x-fa fa-drupal');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('438','x-fa fa-joomla');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('439','x-fa fa-language');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('440','x-fa fa-fax');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('441','x-fa fa-building');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('442','x-fa fa-child');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('443','x-fa fa-paw');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('444','x-fa fa-spoon');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('445','x-fa fa-cube');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('446','x-fa fa-cubes');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('447','x-fa fa-behance');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('448','x-fa fa-behance-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('449','x-fa fa-steam');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('450','x-fa fa-steam-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('451','x-fa fa-recycle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('452','x-fa fa-automobile');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('453','x-fa fa-car');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('454','x-fa fa-cab');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('455','x-fa fa-taxi');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('456','x-fa fa-tree');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('457','x-fa fa-spotify');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('458','x-fa fa-deviantart');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('459','x-fa fa-soundcloud');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('460','x-fa fa-database');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('461','x-fa fa-file-pdf-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('462','x-fa fa-file-word-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('463','x-fa fa-file-excel-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('464','x-fa fa-file-powerpoint-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('465','x-fa fa-file-photo-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('466','x-fa fa-file-picture-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('467','x-fa fa-file-image-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('468','x-fa fa-file-zip-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('469','x-fa fa-file-archive-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('470','x-fa fa-file-sound-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('471','x-fa fa-file-audio-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('472','x-fa fa-file-movie-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('473','x-fa fa-file-video-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('474','x-fa fa-file-code-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('475','x-fa fa-vine');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('476','x-fa fa-codepen');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('477','x-fa fa-jsfiddle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('478','x-fa fa-life-bouy');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('479','x-fa fa-life-buoy');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('480','x-fa fa-life-saver');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('481','x-fa fa-support');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('482','x-fa fa-life-ring');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('483','x-fa fa-circle-o-notch');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('484','x-fa fa-ra');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('485','x-fa fa-rebel');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('486','x-fa fa-ge');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('487','x-fa fa-empire');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('488','x-fa fa-git-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('489','x-fa fa-git');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('490','x-fa fa-hacker-news');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('491','x-fa fa-tencent-weibo');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('492','x-fa fa-qq');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('493','x-fa fa-wechat');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('494','x-fa fa-weixin');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('495','x-fa fa-send');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('496','x-fa fa-paper-plane');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('497','x-fa fa-send-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('498','x-fa fa-paper-plane-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('499','x-fa fa-history');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('500','x-fa fa-circle-thin');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('501','x-fa fa-header');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('502','x-fa fa-paragraph');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('503','x-fa fa-sliders');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('504','x-fa fa-share-alt');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('505','x-fa fa-share-alt-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('506','x-fa fa-bomb');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('507','x-fa fa-soccer-ball-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('508','x-fa fa-futbol-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('509','x-fa fa-tty');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('510','x-fa fa-binoculars');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('511','x-fa fa-plug');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('512','x-fa fa-slideshare');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('513','x-fa fa-twitch');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('514','x-fa fa-yelp');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('515','x-fa fa-newspaper-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('516','x-fa fa-wifi');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('517','x-fa fa-calculator');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('518','x-fa fa-paypal');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('519','x-fa fa-google-wallet');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('520','x-fa fa-cc-visa');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('521','x-fa fa-cc-mastercard');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('522','x-fa fa-cc-discover');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('523','x-fa fa-cc-amex');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('524','x-fa fa-cc-paypal');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('525','x-fa fa-cc-stripe');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('526','x-fa fa-bell-slash');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('527','x-fa fa-bell-slash-o');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('528','x-fa fa-trash');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('529','x-fa fa-copyright');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('530','x-fa fa-at');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('531','x-fa fa-eyedropper');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('532','x-fa fa-paint-brush');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('533','x-fa fa-birthday-cake');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('534','x-fa fa-area-chart');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('535','x-fa fa-pie-chart');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('536','x-fa fa-line-chart');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('537','x-fa fa-lastfm');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('538','x-fa fa-lastfm-square');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('539','x-fa fa-toggle-off');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('540','x-fa fa-toggle-on');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('541','x-fa fa-bicycle');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('542','x-fa fa-bus');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('543','x-fa fa-ioxhost');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('544','x-fa fa-angellist');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('545','x-fa fa-cc');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('546','x-fa fa-shekel');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('547','x-fa fa-sheqel');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('548','x-fa fa-ils');
INSERT INTO `ext_icon` (`id`, `icon_name`) values('549','x-fa fa-meanpath');

DROP TABLE IF EXISTS `ext_msg`;
CREATE TABLE `ext_msg` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `msg_title` varchar(50) DEFAULT NULL COMMENT '消息标题',
  `msg_content` varchar(300) DEFAULT NULL COMMENT '消息内容',
  `create_time` datetime DEFAULT NULL COMMENT '消息创建时间',
  `action_time` datetime DEFAULT NULL COMMENT '消息处理时间',
  `status` char(1) DEFAULT NULL COMMENT '消息状态,0-待处理,1-已完成',
  `level` char(1) DEFAULT NULL COMMENT '0-普通,1-警告',
  `uid` varchar(50) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
