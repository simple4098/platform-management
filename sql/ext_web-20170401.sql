/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.2
Source Server Version : 50534
Source Host           : 192.168.0.2:3306
Source Database       : zhanglin_bd2

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2017-04-01 18:20:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ext_dept
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
-- Table structure for ext_icon
-- ----------------------------
DROP TABLE IF EXISTS `ext_icon`;
CREATE TABLE `ext_icon` (
  `id` int(11) DEFAULT NULL,
  `icon_name` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_icon
-- ----------------------------
INSERT INTO `ext_icon` VALUES ('1', 'x-fa fa-glass');
INSERT INTO `ext_icon` VALUES ('2', 'x-fa fa-music');
INSERT INTO `ext_icon` VALUES ('3', 'x-fa fa-search');
INSERT INTO `ext_icon` VALUES ('4', 'x-fa fa-envelope-o');
INSERT INTO `ext_icon` VALUES ('5', 'x-fa fa-heart');
INSERT INTO `ext_icon` VALUES ('6', 'x-fa fa-star');
INSERT INTO `ext_icon` VALUES ('7', 'x-fa fa-star-o');
INSERT INTO `ext_icon` VALUES ('8', 'x-fa fa-user');
INSERT INTO `ext_icon` VALUES ('9', 'x-fa fa-film');
INSERT INTO `ext_icon` VALUES ('10', 'x-fa fa-th-large');
INSERT INTO `ext_icon` VALUES ('11', 'x-fa fa-th');
INSERT INTO `ext_icon` VALUES ('12', 'x-fa fa-th-list');
INSERT INTO `ext_icon` VALUES ('13', 'x-fa fa-check');
INSERT INTO `ext_icon` VALUES ('14', 'x-fa fa-remove');
INSERT INTO `ext_icon` VALUES ('15', 'x-fa fa-close');
INSERT INTO `ext_icon` VALUES ('16', 'x-fa fa-times');
INSERT INTO `ext_icon` VALUES ('17', 'x-fa fa-search-plus');
INSERT INTO `ext_icon` VALUES ('18', 'x-fa fa-search-minus');
INSERT INTO `ext_icon` VALUES ('19', 'x-fa fa-power-off');
INSERT INTO `ext_icon` VALUES ('20', 'x-fa fa-signal');
INSERT INTO `ext_icon` VALUES ('21', 'x-fa fa-gear');
INSERT INTO `ext_icon` VALUES ('22', 'x-fa fa-cog');
INSERT INTO `ext_icon` VALUES ('23', 'x-fa fa-trash-o');
INSERT INTO `ext_icon` VALUES ('24', 'x-fa fa-home');
INSERT INTO `ext_icon` VALUES ('25', 'x-fa fa-file-o');
INSERT INTO `ext_icon` VALUES ('26', 'x-fa fa-clock-o');
INSERT INTO `ext_icon` VALUES ('27', 'x-fa fa-road');
INSERT INTO `ext_icon` VALUES ('28', 'x-fa fa-download');
INSERT INTO `ext_icon` VALUES ('29', 'x-fa fa-arrow-circle-o-down');
INSERT INTO `ext_icon` VALUES ('30', 'x-fa fa-arrow-circle-o-up');
INSERT INTO `ext_icon` VALUES ('31', 'x-fa fa-inbox');
INSERT INTO `ext_icon` VALUES ('32', 'x-fa fa-play-circle-o');
INSERT INTO `ext_icon` VALUES ('33', 'x-fa fa-rotate-right');
INSERT INTO `ext_icon` VALUES ('34', 'x-fa fa-repeat');
INSERT INTO `ext_icon` VALUES ('35', 'x-fa fa-refresh');
INSERT INTO `ext_icon` VALUES ('36', 'x-fa fa-list-alt');
INSERT INTO `ext_icon` VALUES ('37', 'x-fa fa-lock');
INSERT INTO `ext_icon` VALUES ('38', 'x-fa fa-flag');
INSERT INTO `ext_icon` VALUES ('39', 'x-fa fa-headphones');
INSERT INTO `ext_icon` VALUES ('40', 'x-fa fa-volume-off');
INSERT INTO `ext_icon` VALUES ('41', 'x-fa fa-volume-down');
INSERT INTO `ext_icon` VALUES ('42', 'x-fa fa-volume-up');
INSERT INTO `ext_icon` VALUES ('43', 'x-fa fa-qrcode');
INSERT INTO `ext_icon` VALUES ('44', 'x-fa fa-barcode');
INSERT INTO `ext_icon` VALUES ('45', 'x-fa fa-tag');
INSERT INTO `ext_icon` VALUES ('46', 'x-fa fa-tags');
INSERT INTO `ext_icon` VALUES ('47', 'x-fa fa-book');
INSERT INTO `ext_icon` VALUES ('48', 'x-fa fa-bookmark');
INSERT INTO `ext_icon` VALUES ('49', 'x-fa fa-print');
INSERT INTO `ext_icon` VALUES ('50', 'x-fa fa-camera');
INSERT INTO `ext_icon` VALUES ('51', 'x-fa fa-font');
INSERT INTO `ext_icon` VALUES ('52', 'x-fa fa-bold');
INSERT INTO `ext_icon` VALUES ('53', 'x-fa fa-italic');
INSERT INTO `ext_icon` VALUES ('54', 'x-fa fa-text-height');
INSERT INTO `ext_icon` VALUES ('55', 'x-fa fa-text-width');
INSERT INTO `ext_icon` VALUES ('56', 'x-fa fa-align-left');
INSERT INTO `ext_icon` VALUES ('57', 'x-fa fa-align-center');
INSERT INTO `ext_icon` VALUES ('58', 'x-fa fa-align-right');
INSERT INTO `ext_icon` VALUES ('59', 'x-fa fa-align-justify');
INSERT INTO `ext_icon` VALUES ('60', 'x-fa fa-list');
INSERT INTO `ext_icon` VALUES ('61', 'x-fa fa-dedent');
INSERT INTO `ext_icon` VALUES ('62', 'x-fa fa-outdent');
INSERT INTO `ext_icon` VALUES ('63', 'x-fa fa-indent');
INSERT INTO `ext_icon` VALUES ('64', 'x-fa fa-video-camera');
INSERT INTO `ext_icon` VALUES ('65', 'x-fa fa-photo');
INSERT INTO `ext_icon` VALUES ('66', 'x-fa fa-image');
INSERT INTO `ext_icon` VALUES ('67', 'x-fa fa-picture-o');
INSERT INTO `ext_icon` VALUES ('68', 'x-fa fa-pencil');
INSERT INTO `ext_icon` VALUES ('69', 'x-fa fa-map-marker');
INSERT INTO `ext_icon` VALUES ('70', 'x-fa fa-adjust');
INSERT INTO `ext_icon` VALUES ('71', 'x-fa fa-tint');
INSERT INTO `ext_icon` VALUES ('72', 'x-fa fa-edit');
INSERT INTO `ext_icon` VALUES ('73', 'x-fa fa-pencil-square-o');
INSERT INTO `ext_icon` VALUES ('74', 'x-fa fa-share-square-o');
INSERT INTO `ext_icon` VALUES ('75', 'x-fa fa-check-square-o');
INSERT INTO `ext_icon` VALUES ('76', 'x-fa fa-arrows');
INSERT INTO `ext_icon` VALUES ('77', 'x-fa fa-step-backward');
INSERT INTO `ext_icon` VALUES ('78', 'x-fa fa-fast-backward');
INSERT INTO `ext_icon` VALUES ('79', 'x-fa fa-backward');
INSERT INTO `ext_icon` VALUES ('80', 'x-fa fa-play');
INSERT INTO `ext_icon` VALUES ('81', 'x-fa fa-pause');
INSERT INTO `ext_icon` VALUES ('82', 'x-fa fa-stop');
INSERT INTO `ext_icon` VALUES ('83', 'x-fa fa-forward');
INSERT INTO `ext_icon` VALUES ('84', 'x-fa fa-fast-forward');
INSERT INTO `ext_icon` VALUES ('85', 'x-fa fa-step-forward');
INSERT INTO `ext_icon` VALUES ('86', 'x-fa fa-eject');
INSERT INTO `ext_icon` VALUES ('87', 'x-fa fa-chevron-left');
INSERT INTO `ext_icon` VALUES ('88', 'x-fa fa-chevron-right');
INSERT INTO `ext_icon` VALUES ('89', 'x-fa fa-plus-circle');
INSERT INTO `ext_icon` VALUES ('90', 'x-fa fa-minus-circle');
INSERT INTO `ext_icon` VALUES ('91', 'x-fa fa-times-circle');
INSERT INTO `ext_icon` VALUES ('92', 'x-fa fa-check-circle');
INSERT INTO `ext_icon` VALUES ('93', 'x-fa fa-question-circle');
INSERT INTO `ext_icon` VALUES ('94', 'x-fa fa-info-circle');
INSERT INTO `ext_icon` VALUES ('95', 'x-fa fa-crosshairs');
INSERT INTO `ext_icon` VALUES ('96', 'x-fa fa-times-circle-o');
INSERT INTO `ext_icon` VALUES ('97', 'x-fa fa-check-circle-o');
INSERT INTO `ext_icon` VALUES ('98', 'x-fa fa-ban');
INSERT INTO `ext_icon` VALUES ('99', 'x-fa fa-arrow-left');
INSERT INTO `ext_icon` VALUES ('100', 'x-fa fa-arrow-right');
INSERT INTO `ext_icon` VALUES ('101', 'x-fa fa-arrow-up');
INSERT INTO `ext_icon` VALUES ('102', 'x-fa fa-arrow-down');
INSERT INTO `ext_icon` VALUES ('103', 'x-fa fa-mail-forward');
INSERT INTO `ext_icon` VALUES ('104', 'x-fa fa-share');
INSERT INTO `ext_icon` VALUES ('105', 'x-fa fa-expand');
INSERT INTO `ext_icon` VALUES ('106', 'x-fa fa-compress');
INSERT INTO `ext_icon` VALUES ('107', 'x-fa fa-plus');
INSERT INTO `ext_icon` VALUES ('108', 'x-fa fa-minus');
INSERT INTO `ext_icon` VALUES ('109', 'x-fa fa-asterisk');
INSERT INTO `ext_icon` VALUES ('110', 'x-fa fa-exclamation-circle');
INSERT INTO `ext_icon` VALUES ('111', 'x-fa fa-gift');
INSERT INTO `ext_icon` VALUES ('112', 'x-fa fa-leaf');
INSERT INTO `ext_icon` VALUES ('113', 'x-fa fa-fire');
INSERT INTO `ext_icon` VALUES ('114', 'x-fa fa-eye');
INSERT INTO `ext_icon` VALUES ('115', 'x-fa fa-eye-slash');
INSERT INTO `ext_icon` VALUES ('116', 'x-fa fa-warning');
INSERT INTO `ext_icon` VALUES ('117', 'x-fa fa-exclamation-triangle');
INSERT INTO `ext_icon` VALUES ('118', 'x-fa fa-plane');
INSERT INTO `ext_icon` VALUES ('119', 'x-fa fa-calendar');
INSERT INTO `ext_icon` VALUES ('120', 'x-fa fa-random');
INSERT INTO `ext_icon` VALUES ('121', 'x-fa fa-comment');
INSERT INTO `ext_icon` VALUES ('122', 'x-fa fa-magnet');
INSERT INTO `ext_icon` VALUES ('123', 'x-fa fa-chevron-up');
INSERT INTO `ext_icon` VALUES ('124', 'x-fa fa-chevron-down');
INSERT INTO `ext_icon` VALUES ('125', 'x-fa fa-retweet');
INSERT INTO `ext_icon` VALUES ('126', 'x-fa fa-shopping-cart');
INSERT INTO `ext_icon` VALUES ('127', 'x-fa fa-folder');
INSERT INTO `ext_icon` VALUES ('128', 'x-fa fa-folder-open');
INSERT INTO `ext_icon` VALUES ('129', 'x-fa fa-arrows-v');
INSERT INTO `ext_icon` VALUES ('130', 'x-fa fa-arrows-h');
INSERT INTO `ext_icon` VALUES ('131', 'x-fa fa-bar-chart-o');
INSERT INTO `ext_icon` VALUES ('132', 'x-fa fa-bar-chart');
INSERT INTO `ext_icon` VALUES ('133', 'x-fa fa-twitter-square');
INSERT INTO `ext_icon` VALUES ('134', 'x-fa fa-facebook-square');
INSERT INTO `ext_icon` VALUES ('135', 'x-fa fa-camera-retro');
INSERT INTO `ext_icon` VALUES ('136', 'x-fa fa-key');
INSERT INTO `ext_icon` VALUES ('137', 'x-fa fa-gears');
INSERT INTO `ext_icon` VALUES ('138', 'x-fa fa-cogs');
INSERT INTO `ext_icon` VALUES ('139', 'x-fa fa-comments');
INSERT INTO `ext_icon` VALUES ('140', 'x-fa fa-thumbs-o-up');
INSERT INTO `ext_icon` VALUES ('141', 'x-fa fa-thumbs-o-down');
INSERT INTO `ext_icon` VALUES ('142', 'x-fa fa-star-half');
INSERT INTO `ext_icon` VALUES ('143', 'x-fa fa-heart-o');
INSERT INTO `ext_icon` VALUES ('144', 'x-fa fa-sign-out');
INSERT INTO `ext_icon` VALUES ('145', 'x-fa fa-linkedin-square');
INSERT INTO `ext_icon` VALUES ('146', 'x-fa fa-thumb-tack');
INSERT INTO `ext_icon` VALUES ('147', 'x-fa fa-external-link');
INSERT INTO `ext_icon` VALUES ('148', 'x-fa fa-sign-in');
INSERT INTO `ext_icon` VALUES ('149', 'x-fa fa-trophy');
INSERT INTO `ext_icon` VALUES ('150', 'x-fa fa-github-square');
INSERT INTO `ext_icon` VALUES ('151', 'x-fa fa-upload');
INSERT INTO `ext_icon` VALUES ('152', 'x-fa fa-lemon-o');
INSERT INTO `ext_icon` VALUES ('153', 'x-fa fa-phone');
INSERT INTO `ext_icon` VALUES ('154', 'x-fa fa-square-o');
INSERT INTO `ext_icon` VALUES ('155', 'x-fa fa-bookmark-o');
INSERT INTO `ext_icon` VALUES ('156', 'x-fa fa-phone-square');
INSERT INTO `ext_icon` VALUES ('157', 'x-fa fa-twitter');
INSERT INTO `ext_icon` VALUES ('158', 'x-fa fa-facebook');
INSERT INTO `ext_icon` VALUES ('159', 'x-fa fa-github');
INSERT INTO `ext_icon` VALUES ('160', 'x-fa fa-unlock');
INSERT INTO `ext_icon` VALUES ('161', 'x-fa fa-credit-card');
INSERT INTO `ext_icon` VALUES ('162', 'x-fa fa-rss');
INSERT INTO `ext_icon` VALUES ('163', 'x-fa fa-hdd-o');
INSERT INTO `ext_icon` VALUES ('164', 'x-fa fa-bullhorn');
INSERT INTO `ext_icon` VALUES ('165', 'x-fa fa-bell');
INSERT INTO `ext_icon` VALUES ('166', 'x-fa fa-certificate');
INSERT INTO `ext_icon` VALUES ('167', 'x-fa fa-hand-o-right');
INSERT INTO `ext_icon` VALUES ('168', 'x-fa fa-hand-o-left');
INSERT INTO `ext_icon` VALUES ('169', 'x-fa fa-hand-o-up');
INSERT INTO `ext_icon` VALUES ('170', 'x-fa fa-hand-o-down');
INSERT INTO `ext_icon` VALUES ('171', 'x-fa fa-arrow-circle-left');
INSERT INTO `ext_icon` VALUES ('172', 'x-fa fa-arrow-circle-right');
INSERT INTO `ext_icon` VALUES ('173', 'x-fa fa-arrow-circle-up');
INSERT INTO `ext_icon` VALUES ('174', 'x-fa fa-arrow-circle-down');
INSERT INTO `ext_icon` VALUES ('175', 'x-fa fa-globe');
INSERT INTO `ext_icon` VALUES ('176', 'x-fa fa-wrench');
INSERT INTO `ext_icon` VALUES ('177', 'x-fa fa-tasks');
INSERT INTO `ext_icon` VALUES ('178', 'x-fa fa-filter');
INSERT INTO `ext_icon` VALUES ('179', 'x-fa fa-briefcase');
INSERT INTO `ext_icon` VALUES ('180', 'x-fa fa-arrows-alt');
INSERT INTO `ext_icon` VALUES ('181', 'x-fa fa-group');
INSERT INTO `ext_icon` VALUES ('182', 'x-fa fa-users');
INSERT INTO `ext_icon` VALUES ('183', 'x-fa fa-chain');
INSERT INTO `ext_icon` VALUES ('184', 'x-fa fa-link');
INSERT INTO `ext_icon` VALUES ('185', 'x-fa fa-cloud');
INSERT INTO `ext_icon` VALUES ('186', 'x-fa fa-flask');
INSERT INTO `ext_icon` VALUES ('187', 'x-fa fa-cut');
INSERT INTO `ext_icon` VALUES ('188', 'x-fa fa-scissors');
INSERT INTO `ext_icon` VALUES ('189', 'x-fa fa-copy');
INSERT INTO `ext_icon` VALUES ('190', 'x-fa fa-files-o');
INSERT INTO `ext_icon` VALUES ('191', 'x-fa fa-paperclip');
INSERT INTO `ext_icon` VALUES ('192', 'x-fa fa-save');
INSERT INTO `ext_icon` VALUES ('193', 'x-fa fa-floppy-o');
INSERT INTO `ext_icon` VALUES ('194', 'x-fa fa-square');
INSERT INTO `ext_icon` VALUES ('195', 'x-fa fa-navicon');
INSERT INTO `ext_icon` VALUES ('196', 'x-fa fa-reorder');
INSERT INTO `ext_icon` VALUES ('197', 'x-fa fa-bars');
INSERT INTO `ext_icon` VALUES ('198', 'x-fa fa-list-ul');
INSERT INTO `ext_icon` VALUES ('199', 'x-fa fa-list-ol');
INSERT INTO `ext_icon` VALUES ('200', 'x-fa fa-strikethrough');
INSERT INTO `ext_icon` VALUES ('201', 'x-fa fa-underline');
INSERT INTO `ext_icon` VALUES ('202', 'x-fa fa-table');
INSERT INTO `ext_icon` VALUES ('203', 'x-fa fa-magic');
INSERT INTO `ext_icon` VALUES ('204', 'x-fa fa-truck');
INSERT INTO `ext_icon` VALUES ('205', 'x-fa fa-pinterest');
INSERT INTO `ext_icon` VALUES ('206', 'x-fa fa-pinterest-square');
INSERT INTO `ext_icon` VALUES ('207', 'x-fa fa-google-plus-square');
INSERT INTO `ext_icon` VALUES ('208', 'x-fa fa-google-plus');
INSERT INTO `ext_icon` VALUES ('209', 'x-fa fa-money');
INSERT INTO `ext_icon` VALUES ('210', 'x-fa fa-caret-down');
INSERT INTO `ext_icon` VALUES ('211', 'x-fa fa-caret-up');
INSERT INTO `ext_icon` VALUES ('212', 'x-fa fa-caret-left');
INSERT INTO `ext_icon` VALUES ('213', 'x-fa fa-caret-right');
INSERT INTO `ext_icon` VALUES ('214', 'x-fa fa-columns');
INSERT INTO `ext_icon` VALUES ('215', 'x-fa fa-unsorted');
INSERT INTO `ext_icon` VALUES ('216', 'x-fa fa-sort');
INSERT INTO `ext_icon` VALUES ('217', 'x-fa fa-sort-down');
INSERT INTO `ext_icon` VALUES ('218', 'x-fa fa-sort-desc');
INSERT INTO `ext_icon` VALUES ('219', 'x-fa fa-sort-up');
INSERT INTO `ext_icon` VALUES ('220', 'x-fa fa-sort-asc');
INSERT INTO `ext_icon` VALUES ('221', 'x-fa fa-envelope');
INSERT INTO `ext_icon` VALUES ('222', 'x-fa fa-linkedin');
INSERT INTO `ext_icon` VALUES ('223', 'x-fa fa-rotate-left');
INSERT INTO `ext_icon` VALUES ('224', 'x-fa fa-undo');
INSERT INTO `ext_icon` VALUES ('225', 'x-fa fa-legal');
INSERT INTO `ext_icon` VALUES ('226', 'x-fa fa-gavel');
INSERT INTO `ext_icon` VALUES ('227', 'x-fa fa-dashboard');
INSERT INTO `ext_icon` VALUES ('228', 'x-fa fa-tachometer');
INSERT INTO `ext_icon` VALUES ('229', 'x-fa fa-comment-o');
INSERT INTO `ext_icon` VALUES ('230', 'x-fa fa-comments-o');
INSERT INTO `ext_icon` VALUES ('231', 'x-fa fa-flash');
INSERT INTO `ext_icon` VALUES ('232', 'x-fa fa-bolt');
INSERT INTO `ext_icon` VALUES ('233', 'x-fa fa-sitemap');
INSERT INTO `ext_icon` VALUES ('234', 'x-fa fa-umbrella');
INSERT INTO `ext_icon` VALUES ('235', 'x-fa fa-paste');
INSERT INTO `ext_icon` VALUES ('236', 'x-fa fa-clipboard');
INSERT INTO `ext_icon` VALUES ('237', 'x-fa fa-lightbulb-o');
INSERT INTO `ext_icon` VALUES ('238', 'x-fa fa-exchange');
INSERT INTO `ext_icon` VALUES ('239', 'x-fa fa-cloud-download');
INSERT INTO `ext_icon` VALUES ('240', 'x-fa fa-cloud-upload');
INSERT INTO `ext_icon` VALUES ('241', 'x-fa fa-user-md');
INSERT INTO `ext_icon` VALUES ('242', 'x-fa fa-stethoscope');
INSERT INTO `ext_icon` VALUES ('243', 'x-fa fa-suitcase');
INSERT INTO `ext_icon` VALUES ('244', 'x-fa fa-bell-o');
INSERT INTO `ext_icon` VALUES ('245', 'x-fa fa-coffee');
INSERT INTO `ext_icon` VALUES ('246', 'x-fa fa-cutlery');
INSERT INTO `ext_icon` VALUES ('247', 'x-fa fa-file-text-o');
INSERT INTO `ext_icon` VALUES ('248', 'x-fa fa-building-o');
INSERT INTO `ext_icon` VALUES ('249', 'x-fa fa-hospital-o');
INSERT INTO `ext_icon` VALUES ('250', 'x-fa fa-ambulance');
INSERT INTO `ext_icon` VALUES ('251', 'x-fa fa-medkit');
INSERT INTO `ext_icon` VALUES ('252', 'x-fa fa-fighter-jet');
INSERT INTO `ext_icon` VALUES ('253', 'x-fa fa-beer');
INSERT INTO `ext_icon` VALUES ('254', 'x-fa fa-h-square');
INSERT INTO `ext_icon` VALUES ('255', 'x-fa fa-plus-square');
INSERT INTO `ext_icon` VALUES ('256', 'x-fa fa-angle-double-left');
INSERT INTO `ext_icon` VALUES ('257', 'x-fa fa-angle-double-right');
INSERT INTO `ext_icon` VALUES ('258', 'x-fa fa-angle-double-up');
INSERT INTO `ext_icon` VALUES ('259', 'x-fa fa-angle-double-down');
INSERT INTO `ext_icon` VALUES ('260', 'x-fa fa-angle-left');
INSERT INTO `ext_icon` VALUES ('261', 'x-fa fa-angle-right');
INSERT INTO `ext_icon` VALUES ('262', 'x-fa fa-angle-up');
INSERT INTO `ext_icon` VALUES ('263', 'x-fa fa-angle-down');
INSERT INTO `ext_icon` VALUES ('264', 'x-fa fa-desktop');
INSERT INTO `ext_icon` VALUES ('265', 'x-fa fa-laptop');
INSERT INTO `ext_icon` VALUES ('266', 'x-fa fa-tablet');
INSERT INTO `ext_icon` VALUES ('267', 'x-fa fa-mobile-phone');
INSERT INTO `ext_icon` VALUES ('268', 'x-fa fa-mobile');
INSERT INTO `ext_icon` VALUES ('269', 'x-fa fa-circle-o');
INSERT INTO `ext_icon` VALUES ('270', 'x-fa fa-quote-left');
INSERT INTO `ext_icon` VALUES ('271', 'x-fa fa-quote-right');
INSERT INTO `ext_icon` VALUES ('272', 'x-fa fa-spinner');
INSERT INTO `ext_icon` VALUES ('273', 'x-fa fa-circle');
INSERT INTO `ext_icon` VALUES ('274', 'x-fa fa-mail-reply');
INSERT INTO `ext_icon` VALUES ('275', 'x-fa fa-reply');
INSERT INTO `ext_icon` VALUES ('276', 'x-fa fa-github-alt');
INSERT INTO `ext_icon` VALUES ('277', 'x-fa fa-folder-o');
INSERT INTO `ext_icon` VALUES ('278', 'x-fa fa-folder-open-o');
INSERT INTO `ext_icon` VALUES ('279', 'x-fa fa-smile-o');
INSERT INTO `ext_icon` VALUES ('280', 'x-fa fa-frown-o');
INSERT INTO `ext_icon` VALUES ('281', 'x-fa fa-meh-o');
INSERT INTO `ext_icon` VALUES ('282', 'x-fa fa-gamepad');
INSERT INTO `ext_icon` VALUES ('283', 'x-fa fa-keyboard-o');
INSERT INTO `ext_icon` VALUES ('284', 'x-fa fa-flag-o');
INSERT INTO `ext_icon` VALUES ('285', 'x-fa fa-flag-checkered');
INSERT INTO `ext_icon` VALUES ('286', 'x-fa fa-terminal');
INSERT INTO `ext_icon` VALUES ('287', 'x-fa fa-code');
INSERT INTO `ext_icon` VALUES ('288', 'x-fa fa-mail-reply-all');
INSERT INTO `ext_icon` VALUES ('289', 'x-fa fa-reply-all');
INSERT INTO `ext_icon` VALUES ('290', 'x-fa fa-star-half-empty');
INSERT INTO `ext_icon` VALUES ('291', 'x-fa fa-star-half-full');
INSERT INTO `ext_icon` VALUES ('292', 'x-fa fa-star-half-o');
INSERT INTO `ext_icon` VALUES ('293', 'x-fa fa-location-arrow');
INSERT INTO `ext_icon` VALUES ('294', 'x-fa fa-crop');
INSERT INTO `ext_icon` VALUES ('295', 'x-fa fa-code-fork');
INSERT INTO `ext_icon` VALUES ('296', 'x-fa fa-unlink');
INSERT INTO `ext_icon` VALUES ('297', 'x-fa fa-chain-broken');
INSERT INTO `ext_icon` VALUES ('298', 'x-fa fa-question');
INSERT INTO `ext_icon` VALUES ('299', 'x-fa fa-info');
INSERT INTO `ext_icon` VALUES ('300', 'x-fa fa-exclamation');
INSERT INTO `ext_icon` VALUES ('301', 'x-fa fa-superscript');
INSERT INTO `ext_icon` VALUES ('302', 'x-fa fa-subscript');
INSERT INTO `ext_icon` VALUES ('303', 'x-fa fa-eraser');
INSERT INTO `ext_icon` VALUES ('304', 'x-fa fa-puzzle-piece');
INSERT INTO `ext_icon` VALUES ('305', 'x-fa fa-microphone');
INSERT INTO `ext_icon` VALUES ('306', 'x-fa fa-microphone-slash');
INSERT INTO `ext_icon` VALUES ('307', 'x-fa fa-shield');
INSERT INTO `ext_icon` VALUES ('308', 'x-fa fa-calendar-o');
INSERT INTO `ext_icon` VALUES ('309', 'x-fa fa-fire-extinguisher');
INSERT INTO `ext_icon` VALUES ('310', 'x-fa fa-rocket');
INSERT INTO `ext_icon` VALUES ('311', 'x-fa fa-maxcdn');
INSERT INTO `ext_icon` VALUES ('312', 'x-fa fa-chevron-circle-left');
INSERT INTO `ext_icon` VALUES ('313', 'x-fa fa-chevron-circle-right');
INSERT INTO `ext_icon` VALUES ('314', 'x-fa fa-chevron-circle-up');
INSERT INTO `ext_icon` VALUES ('315', 'x-fa fa-chevron-circle-down');
INSERT INTO `ext_icon` VALUES ('316', 'x-fa fa-html5');
INSERT INTO `ext_icon` VALUES ('317', 'x-fa fa-css3');
INSERT INTO `ext_icon` VALUES ('318', 'x-fa fa-anchor');
INSERT INTO `ext_icon` VALUES ('319', 'x-fa fa-unlock-alt');
INSERT INTO `ext_icon` VALUES ('320', 'x-fa fa-bullseye');
INSERT INTO `ext_icon` VALUES ('321', 'x-fa fa-ellipsis-h');
INSERT INTO `ext_icon` VALUES ('322', 'x-fa fa-ellipsis-v');
INSERT INTO `ext_icon` VALUES ('323', 'x-fa fa-rss-square');
INSERT INTO `ext_icon` VALUES ('324', 'x-fa fa-play-circle');
INSERT INTO `ext_icon` VALUES ('325', 'x-fa fa-ticket');
INSERT INTO `ext_icon` VALUES ('326', 'x-fa fa-minus-square');
INSERT INTO `ext_icon` VALUES ('327', 'x-fa fa-minus-square-o');
INSERT INTO `ext_icon` VALUES ('328', 'x-fa fa-level-up');
INSERT INTO `ext_icon` VALUES ('329', 'x-fa fa-level-down');
INSERT INTO `ext_icon` VALUES ('330', 'x-fa fa-check-square');
INSERT INTO `ext_icon` VALUES ('331', 'x-fa fa-pencil-square');
INSERT INTO `ext_icon` VALUES ('332', 'x-fa fa-external-link-square');
INSERT INTO `ext_icon` VALUES ('333', 'x-fa fa-share-square');
INSERT INTO `ext_icon` VALUES ('334', 'x-fa fa-compass');
INSERT INTO `ext_icon` VALUES ('335', 'x-fa fa-toggle-down');
INSERT INTO `ext_icon` VALUES ('336', 'x-fa fa-caret-square-o-down');
INSERT INTO `ext_icon` VALUES ('337', 'x-fa fa-toggle-up');
INSERT INTO `ext_icon` VALUES ('338', 'x-fa fa-caret-square-o-up');
INSERT INTO `ext_icon` VALUES ('339', 'x-fa fa-toggle-right');
INSERT INTO `ext_icon` VALUES ('340', 'x-fa fa-caret-square-o-right');
INSERT INTO `ext_icon` VALUES ('341', 'x-fa fa-euro');
INSERT INTO `ext_icon` VALUES ('342', 'x-fa fa-eur');
INSERT INTO `ext_icon` VALUES ('343', 'x-fa fa-gbp');
INSERT INTO `ext_icon` VALUES ('344', 'x-fa fa-dollar');
INSERT INTO `ext_icon` VALUES ('345', 'x-fa fa-usd');
INSERT INTO `ext_icon` VALUES ('346', 'x-fa fa-rupee');
INSERT INTO `ext_icon` VALUES ('347', 'x-fa fa-inr');
INSERT INTO `ext_icon` VALUES ('348', 'x-fa fa-cny');
INSERT INTO `ext_icon` VALUES ('349', 'x-fa fa-rmb');
INSERT INTO `ext_icon` VALUES ('350', 'x-fa fa-yen');
INSERT INTO `ext_icon` VALUES ('351', 'x-fa fa-jpy');
INSERT INTO `ext_icon` VALUES ('352', 'x-fa fa-ruble');
INSERT INTO `ext_icon` VALUES ('353', 'x-fa fa-rouble');
INSERT INTO `ext_icon` VALUES ('354', 'x-fa fa-rub');
INSERT INTO `ext_icon` VALUES ('355', 'x-fa fa-won');
INSERT INTO `ext_icon` VALUES ('356', 'x-fa fa-krw');
INSERT INTO `ext_icon` VALUES ('357', 'x-fa fa-bitcoin');
INSERT INTO `ext_icon` VALUES ('358', 'x-fa fa-btc');
INSERT INTO `ext_icon` VALUES ('359', 'x-fa fa-file');
INSERT INTO `ext_icon` VALUES ('360', 'x-fa fa-file-text');
INSERT INTO `ext_icon` VALUES ('361', 'x-fa fa-sort-alpha-asc');
INSERT INTO `ext_icon` VALUES ('362', 'x-fa fa-sort-alpha-desc');
INSERT INTO `ext_icon` VALUES ('363', 'x-fa fa-sort-amount-asc');
INSERT INTO `ext_icon` VALUES ('364', 'x-fa fa-sort-amount-desc');
INSERT INTO `ext_icon` VALUES ('365', 'x-fa fa-sort-numeric-asc');
INSERT INTO `ext_icon` VALUES ('366', 'x-fa fa-sort-numeric-desc');
INSERT INTO `ext_icon` VALUES ('367', 'x-fa fa-thumbs-up');
INSERT INTO `ext_icon` VALUES ('368', 'x-fa fa-thumbs-down');
INSERT INTO `ext_icon` VALUES ('369', 'x-fa fa-youtube-square');
INSERT INTO `ext_icon` VALUES ('370', 'x-fa fa-youtube');
INSERT INTO `ext_icon` VALUES ('371', 'x-fa fa-xing');
INSERT INTO `ext_icon` VALUES ('372', 'x-fa fa-xing-square');
INSERT INTO `ext_icon` VALUES ('373', 'x-fa fa-youtube-play');
INSERT INTO `ext_icon` VALUES ('374', 'x-fa fa-dropbox');
INSERT INTO `ext_icon` VALUES ('375', 'x-fa fa-stack-overflow');
INSERT INTO `ext_icon` VALUES ('376', 'x-fa fa-instagram');
INSERT INTO `ext_icon` VALUES ('377', 'x-fa fa-flickr');
INSERT INTO `ext_icon` VALUES ('378', 'x-fa fa-adn');
INSERT INTO `ext_icon` VALUES ('379', 'x-fa fa-bitbucket');
INSERT INTO `ext_icon` VALUES ('380', 'x-fa fa-bitbucket-square');
INSERT INTO `ext_icon` VALUES ('381', 'x-fa fa-tumblr');
INSERT INTO `ext_icon` VALUES ('382', 'x-fa fa-tumblr-square');
INSERT INTO `ext_icon` VALUES ('383', 'x-fa fa-long-arrow-down');
INSERT INTO `ext_icon` VALUES ('384', 'x-fa fa-long-arrow-up');
INSERT INTO `ext_icon` VALUES ('385', 'x-fa fa-long-arrow-left');
INSERT INTO `ext_icon` VALUES ('386', 'x-fa fa-long-arrow-right');
INSERT INTO `ext_icon` VALUES ('387', 'x-fa fa-apple');
INSERT INTO `ext_icon` VALUES ('388', 'x-fa fa-windows');
INSERT INTO `ext_icon` VALUES ('389', 'x-fa fa-android');
INSERT INTO `ext_icon` VALUES ('390', 'x-fa fa-linux');
INSERT INTO `ext_icon` VALUES ('391', 'x-fa fa-dribbble');
INSERT INTO `ext_icon` VALUES ('392', 'x-fa fa-skype');
INSERT INTO `ext_icon` VALUES ('393', 'x-fa fa-foursquare');
INSERT INTO `ext_icon` VALUES ('394', 'x-fa fa-trello');
INSERT INTO `ext_icon` VALUES ('395', 'x-fa fa-female');
INSERT INTO `ext_icon` VALUES ('396', 'x-fa fa-male');
INSERT INTO `ext_icon` VALUES ('397', 'x-fa fa-gittip');
INSERT INTO `ext_icon` VALUES ('398', 'x-fa fa-sun-o');
INSERT INTO `ext_icon` VALUES ('399', 'x-fa fa-moon-o');
INSERT INTO `ext_icon` VALUES ('400', 'x-fa fa-archive');
INSERT INTO `ext_icon` VALUES ('401', 'x-fa fa-bug');
INSERT INTO `ext_icon` VALUES ('402', 'x-fa fa-vk');
INSERT INTO `ext_icon` VALUES ('403', 'x-fa fa-weibo');
INSERT INTO `ext_icon` VALUES ('404', 'x-fa fa-renren');
INSERT INTO `ext_icon` VALUES ('405', 'x-fa fa-pagelines');
INSERT INTO `ext_icon` VALUES ('406', 'x-fa fa-stack-exchange');
INSERT INTO `ext_icon` VALUES ('407', 'x-fa fa-arrow-circle-o-right');
INSERT INTO `ext_icon` VALUES ('408', 'x-fa fa-arrow-circle-o-left');
INSERT INTO `ext_icon` VALUES ('409', 'x-fa fa-toggle-left');
INSERT INTO `ext_icon` VALUES ('410', 'x-fa fa-caret-square-o-left');
INSERT INTO `ext_icon` VALUES ('411', 'x-fa fa-dot-circle-o');
INSERT INTO `ext_icon` VALUES ('412', 'x-fa fa-wheelchair');
INSERT INTO `ext_icon` VALUES ('413', 'x-fa fa-vimeo-square');
INSERT INTO `ext_icon` VALUES ('414', 'x-fa fa-turkish-lira');
INSERT INTO `ext_icon` VALUES ('415', 'x-fa fa-try');
INSERT INTO `ext_icon` VALUES ('416', 'x-fa fa-plus-square-o');
INSERT INTO `ext_icon` VALUES ('417', 'x-fa fa-space-shuttle');
INSERT INTO `ext_icon` VALUES ('418', 'x-fa fa-slack');
INSERT INTO `ext_icon` VALUES ('419', 'x-fa fa-envelope-square');
INSERT INTO `ext_icon` VALUES ('420', 'x-fa fa-wordpress');
INSERT INTO `ext_icon` VALUES ('421', 'x-fa fa-openid');
INSERT INTO `ext_icon` VALUES ('422', 'x-fa fa-institution');
INSERT INTO `ext_icon` VALUES ('423', 'x-fa fa-bank');
INSERT INTO `ext_icon` VALUES ('424', 'x-fa fa-university');
INSERT INTO `ext_icon` VALUES ('425', 'x-fa fa-mortar-board');
INSERT INTO `ext_icon` VALUES ('426', 'x-fa fa-graduation-cap');
INSERT INTO `ext_icon` VALUES ('427', 'x-fa fa-yahoo');
INSERT INTO `ext_icon` VALUES ('428', 'x-fa fa-google');
INSERT INTO `ext_icon` VALUES ('429', 'x-fa fa-reddit');
INSERT INTO `ext_icon` VALUES ('430', 'x-fa fa-reddit-square');
INSERT INTO `ext_icon` VALUES ('431', 'x-fa fa-stumbleupon-circle');
INSERT INTO `ext_icon` VALUES ('432', 'x-fa fa-stumbleupon');
INSERT INTO `ext_icon` VALUES ('433', 'x-fa fa-delicious');
INSERT INTO `ext_icon` VALUES ('434', 'x-fa fa-digg');
INSERT INTO `ext_icon` VALUES ('435', 'x-fa fa-pied-piper');
INSERT INTO `ext_icon` VALUES ('436', 'x-fa fa-pied-piper-alt');
INSERT INTO `ext_icon` VALUES ('437', 'x-fa fa-drupal');
INSERT INTO `ext_icon` VALUES ('438', 'x-fa fa-joomla');
INSERT INTO `ext_icon` VALUES ('439', 'x-fa fa-language');
INSERT INTO `ext_icon` VALUES ('440', 'x-fa fa-fax');
INSERT INTO `ext_icon` VALUES ('441', 'x-fa fa-building');
INSERT INTO `ext_icon` VALUES ('442', 'x-fa fa-child');
INSERT INTO `ext_icon` VALUES ('443', 'x-fa fa-paw');
INSERT INTO `ext_icon` VALUES ('444', 'x-fa fa-spoon');
INSERT INTO `ext_icon` VALUES ('445', 'x-fa fa-cube');
INSERT INTO `ext_icon` VALUES ('446', 'x-fa fa-cubes');
INSERT INTO `ext_icon` VALUES ('447', 'x-fa fa-behance');
INSERT INTO `ext_icon` VALUES ('448', 'x-fa fa-behance-square');
INSERT INTO `ext_icon` VALUES ('449', 'x-fa fa-steam');
INSERT INTO `ext_icon` VALUES ('450', 'x-fa fa-steam-square');
INSERT INTO `ext_icon` VALUES ('451', 'x-fa fa-recycle');
INSERT INTO `ext_icon` VALUES ('452', 'x-fa fa-automobile');
INSERT INTO `ext_icon` VALUES ('453', 'x-fa fa-car');
INSERT INTO `ext_icon` VALUES ('454', 'x-fa fa-cab');
INSERT INTO `ext_icon` VALUES ('455', 'x-fa fa-taxi');
INSERT INTO `ext_icon` VALUES ('456', 'x-fa fa-tree');
INSERT INTO `ext_icon` VALUES ('457', 'x-fa fa-spotify');
INSERT INTO `ext_icon` VALUES ('458', 'x-fa fa-deviantart');
INSERT INTO `ext_icon` VALUES ('459', 'x-fa fa-soundcloud');
INSERT INTO `ext_icon` VALUES ('460', 'x-fa fa-database');
INSERT INTO `ext_icon` VALUES ('461', 'x-fa fa-file-pdf-o');
INSERT INTO `ext_icon` VALUES ('462', 'x-fa fa-file-word-o');
INSERT INTO `ext_icon` VALUES ('463', 'x-fa fa-file-excel-o');
INSERT INTO `ext_icon` VALUES ('464', 'x-fa fa-file-powerpoint-o');
INSERT INTO `ext_icon` VALUES ('465', 'x-fa fa-file-photo-o');
INSERT INTO `ext_icon` VALUES ('466', 'x-fa fa-file-picture-o');
INSERT INTO `ext_icon` VALUES ('467', 'x-fa fa-file-image-o');
INSERT INTO `ext_icon` VALUES ('468', 'x-fa fa-file-zip-o');
INSERT INTO `ext_icon` VALUES ('469', 'x-fa fa-file-archive-o');
INSERT INTO `ext_icon` VALUES ('470', 'x-fa fa-file-sound-o');
INSERT INTO `ext_icon` VALUES ('471', 'x-fa fa-file-audio-o');
INSERT INTO `ext_icon` VALUES ('472', 'x-fa fa-file-movie-o');
INSERT INTO `ext_icon` VALUES ('473', 'x-fa fa-file-video-o');
INSERT INTO `ext_icon` VALUES ('474', 'x-fa fa-file-code-o');
INSERT INTO `ext_icon` VALUES ('475', 'x-fa fa-vine');
INSERT INTO `ext_icon` VALUES ('476', 'x-fa fa-codepen');
INSERT INTO `ext_icon` VALUES ('477', 'x-fa fa-jsfiddle');
INSERT INTO `ext_icon` VALUES ('478', 'x-fa fa-life-bouy');
INSERT INTO `ext_icon` VALUES ('479', 'x-fa fa-life-buoy');
INSERT INTO `ext_icon` VALUES ('480', 'x-fa fa-life-saver');
INSERT INTO `ext_icon` VALUES ('481', 'x-fa fa-support');
INSERT INTO `ext_icon` VALUES ('482', 'x-fa fa-life-ring');
INSERT INTO `ext_icon` VALUES ('483', 'x-fa fa-circle-o-notch');
INSERT INTO `ext_icon` VALUES ('484', 'x-fa fa-ra');
INSERT INTO `ext_icon` VALUES ('485', 'x-fa fa-rebel');
INSERT INTO `ext_icon` VALUES ('486', 'x-fa fa-ge');
INSERT INTO `ext_icon` VALUES ('487', 'x-fa fa-empire');
INSERT INTO `ext_icon` VALUES ('488', 'x-fa fa-git-square');
INSERT INTO `ext_icon` VALUES ('489', 'x-fa fa-git');
INSERT INTO `ext_icon` VALUES ('490', 'x-fa fa-hacker-news');
INSERT INTO `ext_icon` VALUES ('491', 'x-fa fa-tencent-weibo');
INSERT INTO `ext_icon` VALUES ('492', 'x-fa fa-qq');
INSERT INTO `ext_icon` VALUES ('493', 'x-fa fa-wechat');
INSERT INTO `ext_icon` VALUES ('494', 'x-fa fa-weixin');
INSERT INTO `ext_icon` VALUES ('495', 'x-fa fa-send');
INSERT INTO `ext_icon` VALUES ('496', 'x-fa fa-paper-plane');
INSERT INTO `ext_icon` VALUES ('497', 'x-fa fa-send-o');
INSERT INTO `ext_icon` VALUES ('498', 'x-fa fa-paper-plane-o');
INSERT INTO `ext_icon` VALUES ('499', 'x-fa fa-history');
INSERT INTO `ext_icon` VALUES ('500', 'x-fa fa-circle-thin');
INSERT INTO `ext_icon` VALUES ('501', 'x-fa fa-header');
INSERT INTO `ext_icon` VALUES ('502', 'x-fa fa-paragraph');
INSERT INTO `ext_icon` VALUES ('503', 'x-fa fa-sliders');
INSERT INTO `ext_icon` VALUES ('504', 'x-fa fa-share-alt');
INSERT INTO `ext_icon` VALUES ('505', 'x-fa fa-share-alt-square');
INSERT INTO `ext_icon` VALUES ('506', 'x-fa fa-bomb');
INSERT INTO `ext_icon` VALUES ('507', 'x-fa fa-soccer-ball-o');
INSERT INTO `ext_icon` VALUES ('508', 'x-fa fa-futbol-o');
INSERT INTO `ext_icon` VALUES ('509', 'x-fa fa-tty');
INSERT INTO `ext_icon` VALUES ('510', 'x-fa fa-binoculars');
INSERT INTO `ext_icon` VALUES ('511', 'x-fa fa-plug');
INSERT INTO `ext_icon` VALUES ('512', 'x-fa fa-slideshare');
INSERT INTO `ext_icon` VALUES ('513', 'x-fa fa-twitch');
INSERT INTO `ext_icon` VALUES ('514', 'x-fa fa-yelp');
INSERT INTO `ext_icon` VALUES ('515', 'x-fa fa-newspaper-o');
INSERT INTO `ext_icon` VALUES ('516', 'x-fa fa-wifi');
INSERT INTO `ext_icon` VALUES ('517', 'x-fa fa-calculator');
INSERT INTO `ext_icon` VALUES ('518', 'x-fa fa-paypal');
INSERT INTO `ext_icon` VALUES ('519', 'x-fa fa-google-wallet');
INSERT INTO `ext_icon` VALUES ('520', 'x-fa fa-cc-visa');
INSERT INTO `ext_icon` VALUES ('521', 'x-fa fa-cc-mastercard');
INSERT INTO `ext_icon` VALUES ('522', 'x-fa fa-cc-discover');
INSERT INTO `ext_icon` VALUES ('523', 'x-fa fa-cc-amex');
INSERT INTO `ext_icon` VALUES ('524', 'x-fa fa-cc-paypal');
INSERT INTO `ext_icon` VALUES ('525', 'x-fa fa-cc-stripe');
INSERT INTO `ext_icon` VALUES ('526', 'x-fa fa-bell-slash');
INSERT INTO `ext_icon` VALUES ('527', 'x-fa fa-bell-slash-o');
INSERT INTO `ext_icon` VALUES ('528', 'x-fa fa-trash');
INSERT INTO `ext_icon` VALUES ('529', 'x-fa fa-copyright');
INSERT INTO `ext_icon` VALUES ('530', 'x-fa fa-at');
INSERT INTO `ext_icon` VALUES ('531', 'x-fa fa-eyedropper');
INSERT INTO `ext_icon` VALUES ('532', 'x-fa fa-paint-brush');
INSERT INTO `ext_icon` VALUES ('533', 'x-fa fa-birthday-cake');
INSERT INTO `ext_icon` VALUES ('534', 'x-fa fa-area-chart');
INSERT INTO `ext_icon` VALUES ('535', 'x-fa fa-pie-chart');
INSERT INTO `ext_icon` VALUES ('536', 'x-fa fa-line-chart');
INSERT INTO `ext_icon` VALUES ('537', 'x-fa fa-lastfm');
INSERT INTO `ext_icon` VALUES ('538', 'x-fa fa-lastfm-square');
INSERT INTO `ext_icon` VALUES ('539', 'x-fa fa-toggle-off');
INSERT INTO `ext_icon` VALUES ('540', 'x-fa fa-toggle-on');
INSERT INTO `ext_icon` VALUES ('541', 'x-fa fa-bicycle');
INSERT INTO `ext_icon` VALUES ('542', 'x-fa fa-bus');
INSERT INTO `ext_icon` VALUES ('543', 'x-fa fa-ioxhost');
INSERT INTO `ext_icon` VALUES ('544', 'x-fa fa-angellist');
INSERT INTO `ext_icon` VALUES ('545', 'x-fa fa-cc');
INSERT INTO `ext_icon` VALUES ('546', 'x-fa fa-shekel');
INSERT INTO `ext_icon` VALUES ('547', 'x-fa fa-sheqel');
INSERT INTO `ext_icon` VALUES ('548', 'x-fa fa-ils');
INSERT INTO `ext_icon` VALUES ('549', 'x-fa fa-meanpath');

-- ----------------------------
-- Table structure for ext_log
-- ----------------------------
DROP TABLE IF EXISTS `ext_log`;
CREATE TABLE `ext_log` (
  `id` varchar(150) DEFAULT NULL,
  `user_name` varchar(900) DEFAULT NULL,
  `action_text` varchar(1500) DEFAULT NULL,
  `method` varchar(150) DEFAULT NULL,
  `log_url` varchar(1500) DEFAULT NULL,
  `log_params` text,
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_log
-- ----------------------------
INSERT INTO `ext_log` VALUES ('0774e73b19c3434399878b2153a163dd', 'admin', '重置用户密码', 'POST', '/user/resetpwd', '{\"new_pwd\":[\"123456\"],\"id\":[\"fa72ed734b7b48e1b09ceba1ffadb724\"]}', '2016-07-19 13:52:00');
INSERT INTO `ext_log` VALUES ('0fb704de20c5447a9bf7c5777292c1f9', 'admin', '编辑部门', 'POST', '/dept/edit', '{\"dept_desc\":[\"\"],\"dept_name\":[\"企业文化建设部\"],\"id\":[\"cf5e30d832d34897bda1b5c601e2c90a\"]}', '2016-07-19 13:48:15');
INSERT INTO `ext_log` VALUES ('1a196fa5d1f8430094181711637499c5', 'admin', '编辑部门', 'POST', '/dept/edit', '{\"dept_desc\":[\"\"],\"dept_name\":[\"财务部\"],\"id\":[\"04451f90c2814f8e8f34e125e26a6519\"]}', '2016-07-19 13:48:22');
INSERT INTO `ext_log` VALUES ('20a73a3481df4b859875baa8efb14f59', 'admin', '编辑菜单', 'POST', '/menu/edit', '{\"deep\":[\"1\"],\"pname\":[\"顶级菜单\"],\"view_type\":[\"\"],\"action\":[\"\"],\"pid\":[\"0\"],\"id\":[\"36634b3a36ae4ef0ac566432c98ed7a7\"],\"text\":[\"系统管理\"],\"sort\":[\"1\"],\"row_cls\":[\"\"],\"icon_cls\":[\"x-fa fa-gears\"],\"status\":[\"1\"]}', '2016-07-19 13:48:28');
INSERT INTO `ext_log` VALUES ('3750e8f962d6483e825119ef6fe2dacf', 'admin', '编辑菜单', 'POST', '/menu/edit', '{\"deep\":[\"1\"],\"pname\":[\"顶级菜单\"],\"view_type\":[\"dashboard\"],\"action\":[\"\"],\"pid\":[\"0\"],\"id\":[\"6a287b7360e6402580a4c90977c45bdc\"],\"text\":[\"主页\"],\"sort\":[\"0\"],\"row_cls\":[\"nav-tree-badge nav-tree-badge-hot\"],\"icon_cls\":[\"x-fa fa-desktop\"],\"status\":[\"1\"]}', '2016-07-19 16:34:37');
INSERT INTO `ext_log` VALUES ('495d8955e4924943aa71866501ad6d6f', 'admin', '编辑部门', 'POST', '/dept/edit', '{\"dept_desc\":[\"\"],\"dept_name\":[\"运营部\"],\"id\":[\"46d992c41ba4417487ddfb1b10288d13\"]}', '2016-07-19 13:48:20');
INSERT INTO `ext_log` VALUES ('5687acbd9aad4281b3486d1f73edef87', 'admin', '删除部门', 'POST', '/dept/delete', '{\"id\":[\"ed95178e03a34f139d378f5453eef5d4\"]}', '2016-07-19 13:41:24');
INSERT INTO `ext_log` VALUES ('5ad85c2e217d49e296a99853eb64ca56', 'admin', '编辑菜单', 'POST', '/menu/edit', '{\"deep\":[\"1\"],\"pname\":[\"顶级菜单\"],\"view_type\":[\"dashboard\"],\"action\":[\"\"],\"pid\":[\"0\"],\"id\":[\"6a287b7360e6402580a4c90977c45bdc\"],\"text\":[\"主页\"],\"sort\":[\"0\"],\"row_cls\":[\"nav-tree-badge nav-tree-badge-hot\"],\"icon_cls\":[\"x-fa fa-home\"],\"status\":[\"1\"]}', '2016-07-19 16:33:15');
INSERT INTO `ext_log` VALUES ('714b4f364978447dbfeb49379645a5aa', 'admin', '编辑部门', 'POST', '/dept/edit', '{\"dept_desc\":[\"技术部门描述\"],\"dept_name\":[\"技术部\"],\"id\":[\"abb039b4e6ae4b8b8f5603743f3cf6ae\"]}', '2016-07-19 13:48:10');
INSERT INTO `ext_log` VALUES ('763da10da10147dc9104389affe08362', 'admin', '编辑部门', 'POST', '/dept/edit', '{\"dept_desc\":[\"\"],\"dept_name\":[\"测试部门\"],\"id\":[\"744364e3bea241088b92a52c26c2a779\"]}', '2016-07-19 13:48:07');
INSERT INTO `ext_log` VALUES ('7cb14eeec83b4913adb2e8113ab84fef', 'admin', '编辑角色', 'POST', '/role/edit', '{\"role_name\":[\"仓库管理员\"],\"role_desc\":[\"角色描述\"],\"id\":[\"40a58302073642dabd178ddb36f2d2cc\"],\"row_status\":[\"0\"]}', '2016-07-19 14:04:05');
INSERT INTO `ext_log` VALUES ('8b0af2945b2248e780d3a66e22341912', 'admin', '编辑部门', 'POST', '/dept/edit', '{\"dept_desc\":[\"产品开发和维护\"],\"dept_name\":[\"产品部\"],\"id\":[\"9986c2aec313412a85e1a01038e430c5\"]}', '2016-07-19 13:41:26');
INSERT INTO `ext_log` VALUES ('90b85285158a42dea8add8cbf5ac5414', 'admin', '创建部门', 'POST', '/dept/add', '{\"dept_desc\":[\"\"],\"dept_name\":[\"测试部门\"],\"id\":[\"\"]}', '2016-07-19 13:41:33');
INSERT INTO `ext_log` VALUES ('c1d117dde02746f38bb00d2949174871', 'admin', '编辑用户', 'POST', '/user/edit', '{\"user_desc\":[\"工作要肯拼，生活要欢乐。\"],\"user_email\":[\"admin@qq.com\"],\"user_id\":[\"admin\"],\"role_id\":[\"380dc2536c554eae9655ccc05f16374f\"],\"user_name\":[\"Admin管理员\"],\"id\":[\"fa72ed734b7b48e1b09ceba1ffadb724\"],\"dept_id\":[\"9986c2aec313412a85e1a01038e430c5\"],\"row_status\":[\"0\"]}', '2016-07-19 13:46:28');
INSERT INTO `ext_log` VALUES ('d6c903073baf448ba41b375305ae7f05', 'admin', '编辑菜单', 'POST', '/menu/edit', '{\"deep\":[\"1\"],\"pname\":[\"顶级菜单\"],\"view_type\":[\"dashboard\"],\"action\":[\"\"],\"pid\":[\"0\"],\"id\":[\"6a287b7360e6402580a4c90977c45bdc\"],\"text\":[\"主页\"],\"sort\":[\"0\"],\"row_cls\":[\"nav-tree-badge nav-tree-badge-hot\"],\"icon_cls\":[\"x-fa fa-desktop\"],\"status\":[\"1\"]}', '2016-07-19 16:34:03');
INSERT INTO `ext_log` VALUES ('f215fa76d88e4680bf49e217d0a27bbd', 'admin', '编辑角色', 'POST', '/role/edit', '{\"role_name\":[\"市场总监\"],\"role_desc\":[\"角色描述\"],\"id\":[\"8129351fb10f4cb4a6d4546a361d25cc\"],\"row_status\":[\"0\"]}', '2016-07-19 14:04:07');

-- ----------------------------
-- Table structure for ext_menu
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
  `status` int(1) DEFAULT '1' COMMENT '1-启用,0-禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_menu
-- ----------------------------
INSERT INTO `ext_menu` VALUES ('020d9e228c0148ec808f6360153df917', '统计', '1', '0', 'chart', '2016-05-31 18:29:24', 'x-fa fa-line-chart', 'nav-tree-badge nav-tree-badge-new', '1', '8', null, '1');
INSERT INTO `ext_menu` VALUES ('05a8e26fd0a047eea8fe796587ad6dd0', '新增部门', '1', 'b467700c293a4a549206b5438b93a771', null, '2016-06-27 10:27:03', null, null, '3', '1', '/dept/add', '1');
INSERT INTO `ext_menu` VALUES ('0d7e4107e7e74ed28bb0ee5f1d9641ff', 'EXT基础表单', '1', 'f18713ab6e9d49b5ae2faed0e8f60e45', 'widget-form', '2016-07-09 15:24:18', 'x-fa fa-tasks', null, '2', '0', null, '0');
INSERT INTO `ext_menu` VALUES ('10da6b9f2dc144ff9e4e05aca9de1c6a', '系统日志', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'log-view', '2016-05-30 20:45:04', 'x-fa fa-info', null, '2', '4', null, '1');
INSERT INTO `ext_menu` VALUES ('13581421dc3c4ab0a9d9464a52511a69', '菜单列表', '1', 'a98a684b73e24174b1718dd6495ad4b0', null, '2016-07-11 10:52:53', null, null, '3', '0', '/menu/list', '1');
INSERT INTO `ext_menu` VALUES ('1f734e10322e41929b04f8660f372fcc', '新增菜单', '1', 'a98a684b73e24174b1718dd6495ad4b0', null, '2016-07-11 10:53:30', null, null, '3', '1', '/menu/add', '1');
INSERT INTO `ext_menu` VALUES ('220b1e3fa78b4a7db0d213dc56700837', '日志查询', '1', '10da6b9f2dc144ff9e4e05aca9de1c6a', null, '2016-06-02 08:54:01', null, null, '3', '0', '/log/list', '1');
INSERT INTO `ext_menu` VALUES ('24f4bfc473d8438faa06de8369c7ab92', '用户管理', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'user-view', '2016-05-30 20:43:58', 'x-fa fa-user', null, '2', '0', null, '1');
INSERT INTO `ext_menu` VALUES ('36634b3a36ae4ef0ac566432c98ed7a7', '系统管理', '0', '0', null, '2016-05-30 20:44:00', 'x-fa fa-gears', null, '1', '1', null, '1');
INSERT INTO `ext_menu` VALUES ('402880115afad11b015afad800c10012', '教职工管理', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'ext-employee', '2017-03-23 19:06:22', 'x-fa fa-search', '', '2', '6', '/employee/list', '1');
INSERT INTO `ext_menu` VALUES ('402880115afad11b01edssss800c23111', '学生管理', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'ext-stu', '2017-03-23 19:06:22', 'x-fa fa-search', '', '2', '6', '/stu/list', '1');
INSERT INTO `ext_menu` VALUES ('402880115afad11b01edssss800c23s3sds211', '插件类型', '0', 'f18713ab6e9d49b5ae2faed0e8f6023232', 'ext-plugin-type', '2017-03-23 19:06:22', 'x-fa fa-info', '', '2', '2', '', '1');
INSERT INTO `ext_menu` VALUES ('402880115afad11b01edssss800c23ssds11s', '插件管理', '0', 'f18713ab6e9d49b5ae2faed0e8f6023232', 'ext-plugin', '2017-03-23 19:06:22', 'x-fa fa-tasks', '', '2', '1', null, '1');
INSERT INTO `ext_menu` VALUES ('402880115afad11b2sdssss800c23ssd111', '插件授权', '0', 'f18713ab6e9d49b5ae2faed0e8f6023232', 'ext-plugin-auth', '2017-03-23 19:06:22', 'x-fa fa-users', '', '2', '0', '', '1');
INSERT INTO `ext_menu` VALUES ('402880115afad6ab015afad800c10000', '学校管理', '0', '36634b3a36ae4ef0ac566432c98ed7a7', 'ext-school', '2017-03-23 19:06:22', 'x-fa fa-search', '', '2', '6', '/school/list', '1');
INSERT INTO `ext_menu` VALUES ('40b9f6dfed2543f9a917e6846df9ce6a', 'Kindeditor编辑器', '1', 'f18713ab6e9d49b5ae2faed0e8f60e45', 'widget-kindeditor', '2016-07-09 15:59:43', 'x-fa fa-edit', null, '2', '1', null, '0');
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
INSERT INTO `ext_menu` VALUES ('f18713ab6e9d49b5ae2faed0e8f6023232', '插件', '0', '0', '', '2016-07-09 15:05:03', 'x-fa fa-list', '', '1', '2', '', '1');
INSERT INTO `ext_menu` VALUES ('f18713ab6e9d49b5ae2faed0e8f60e45', '组件实例', '0', '0', null, '2016-07-09 15:05:03', 'x-fa fa-list', null, '1', '2', null, '0');

-- ----------------------------
-- Table structure for ext_msg
-- ----------------------------
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

-- ----------------------------
-- Records of ext_msg
-- ----------------------------

-- ----------------------------
-- Table structure for ext_role
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
INSERT INTO `ext_role` VALUES ('27d24587016141d0ae777fd70f12c9ac', 'test角色', '2017-03-31 17:53:56', '角色描述', '0');
INSERT INTO `ext_role` VALUES ('380dc2536c554eae9655ccc05f16374f', '超级管理员', '2016-06-08 14:40:54', '拥有所有权限', '0');
INSERT INTO `ext_role` VALUES ('6a287b7360e6402580a4c90977c45bdc', '普通管理员', '2016-06-08 21:47:04', '拥有系统基本权限', '2');
INSERT INTO `ext_role` VALUES ('6abdd6fe57694c4b992be3d5a554ca11', '普通管理员1', '2016-06-11 11:39:16', '普通管理员', '0');
INSERT INTO `ext_role` VALUES ('e2f26329c49e4e9fbb36fb74a1cedb1e', '查询角色1', '2016-07-11 10:50:15', '用于所有查询权限', '0');

-- ----------------------------
-- Table structure for ext_role_menu
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
INSERT INTO `ext_role_menu` VALUES ('1ffd1792dd4544158a0c9975b68f2d111', '380dc2536c554eae9655ccc05f16374f', '402880115afad11b2sdssss800c23ssd111');
INSERT INTO `ext_role_menu` VALUES ('25407edc9c7b4c46869b48044ab8f18c', 'e2f26329c49e4e9fbb36fb74a1cedb1e', 'd08d362db39e43269fbd7f4ae6a464d0');
INSERT INTO `ext_role_menu` VALUES ('2d48ded97bb1447fae541b3308ee4c4d', '380dc2536c554eae9655ccc05f16374f', '40b9f6dfed2543f9a917e6846df9ce6a');
INSERT INTO `ext_role_menu` VALUES ('2dabea4b5b394fd2a6293d9c51a7afcd', '380dc2536c554eae9655ccc05f16374f', 'd557c1f9fbe14c169a86186fa8be0bfb');
INSERT INTO `ext_role_menu` VALUES ('30d77f9f44e64a0c97c95cc618862e2a', '380dc2536c554eae9655ccc05f16374f', 'a98a684b73e24174b1718dd6495ad4b0');
INSERT INTO `ext_role_menu` VALUES ('338cbd0d2d4b43e1afcaba1ae7338da3', 'e2f26329c49e4e9fbb36fb74a1cedb1e', 'f18713ab6e9d49b5ae2faed0e8f60e45');
INSERT INTO `ext_role_menu` VALUES ('380www11wwww54eae9655ccc05f1111ss', '380dc2536c554eae9655ccc05f16374f', '402880115afad11b01edssss800c23ssds11s');
INSERT INTO `ext_role_menu` VALUES ('380www11wwww54eae9655ccc05f16374f', '380dc2536c554eae9655ccc05f16374f', 'f18713ab6e9d49b5ae2faed0e8f6023232');
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
INSERT INTO `ext_role_menu` VALUES ('ffd1792dd4544158a0c9975b68f1121a', '380dc2536c554eae9655ccc05f16374f', '402880115afad6ab015afad800c10000');
INSERT INTO `ext_role_menu` VALUES ('ffd1792dd4544158a0c9975b68f13221b', '380dc2536c554eae9655ccc05f16374f', '402880115afad11b015afad800c10012');
INSERT INTO `ext_role_menu` VALUES ('ffd1792dd4544158a0c9975b68f1d03d', '380dc2536c554eae9655ccc05f16374f', '10da6b9f2dc144ff9e4e05aca9de1c6a');
INSERT INTO `ext_role_menu` VALUES ('ffd1792dd4544158a0c9975b68f2dsdfg', '380dc2536c554eae9655ccc05f16374f', '402880115afad11b01edssss800c23111');
INSERT INTO `ext_role_menu` VALUES ('qasa', '380dc2536c554eae9655ccc05f16374f', '402880115afad11b01edssss800c23s3sds211');

-- ----------------------------
-- Table structure for ext_user
-- ----------------------------
DROP TABLE IF EXISTS `ext_user`;
CREATE TABLE `ext_user` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户登录ID',
  `user_pwd` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `user_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `row_status` char(1) DEFAULT '0' COMMENT '状态,0-启用，1-禁用，2-删除',
  `user_desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `dept_id` varchar(50) DEFAULT NULL COMMENT '部门ID',
  `user_phone` varchar(255) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  `short_pinyin` varchar(255) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_date` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_user
-- ----------------------------
INSERT INTO `ext_user` VALUES ('805c8fdd191d45b88aed43b2614260ea', 'test', 'E10ADC3949BA59ABBE56E057F20F883E', 'Test22', '111111111@qq.com', '0', '工作要肯拼,生活要欢乐！', '9986c2aec313412a85e1a01038e430c5', '15281017068', 'Test22', 'Test22', '2017-03-29 15:26:27', '2017-03-29 15:24:12', null, '\0');
INSERT INTO `ext_user` VALUES ('b4e6e5259b7b4d56aafcd6b3073771db', 'zhangsan', 'E10ADC3949BA59ABBE56E057F20F883E', '张三', 'zhangsan@vaco.com', '2', 'uuuuu', 'abb039b4e6ae4b8b8f5603743f3cf6ae', null, null, null, '2017-03-29 15:26:29', '2017-03-29 15:24:14', null, '\0');
INSERT INTO `ext_user` VALUES ('fa72ed734b7b48e1b09ceba1ffadb724', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', 'Admin管理员', 'admin@qq.com', '0', '工作要肯拼，生活要欢乐。', '9986c2aec313412a85e1a01038e430c5', '181232802211', null, null, '2017-03-29 16:20:57', '2017-03-29 15:24:18', null, '\0');

-- ----------------------------
-- Table structure for ext_user_role
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
INSERT INTO `ext_user_role` VALUES ('48d69d194697494d9160fecd22fd35ab', '805c8fdd191d45b88aed43b2614260ea', '27d24587016141d0ae777fd70f12c9ac');
INSERT INTO `ext_user_role` VALUES ('845f730d77cf4677adc34d02d0fdf2ec', '805c8fdd191d45b88aed43b2614260ea', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_user_role` VALUES ('87ec121412ab4a0cabd941228f498ddc', 'c46f6c7913374ade8565d9d412a385c1', '6abdd6fe57694c4b992be3d5a554ca11');
INSERT INTO `ext_user_role` VALUES ('8da5a65835c346e3a2b8015780a88189', '25b29869ef2d40f5a3ce8eaa589fea35', '6abdd6fe57694c4b992be3d5a554ca11');
INSERT INTO `ext_user_role` VALUES ('99dd910cfa9e4142acefdae9bd98d2fc', '7b7c4d46de6744f99a0031ed01f4346f', '380dc2536c554eae9655ccc05f16374f');
INSERT INTO `ext_user_role` VALUES ('a039cd21a8494e3a9bfbe6ffa81d9140', 'c46f6c7913374ade8565d9d412a385c1', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_user_role` VALUES ('a8bb350d28d547c597ba5c36dc3551ad', '251b866b0b3e45b0b3979c02318289f7', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_user_role` VALUES ('b8dc64d8f1634c8d9fc373cde52ad7e0', '25b29869ef2d40f5a3ce8eaa589fea35', '6a287b7360e6402580a4c90977c45bdc');
INSERT INTO `ext_user_role` VALUES ('dcfc61946feb4c17a2e638443c9bd152', 'fa72ed734b7b48e1b09ceba1ffadb724', '380dc2536c554eae9655ccc05f16374f');
INSERT INTO `ext_user_role` VALUES ('dfd0986319e94742966f7c506083f4ff', '34ddcbdcbe3c4b15b554680f176ad587', '6abdd6fe57694c4b992be3d5a554ca11');
INSERT INTO `ext_user_role` VALUES ('eeeedb0c67244e69baf9b8c10e5f8aa5', '805c8fdd191d45b88aed43b2614260ea', 'e2f26329c49e4e9fbb36fb74a1cedb1e');
INSERT INTO `ext_user_role` VALUES ('fac23af953fc46d6a2bb122ffaf3705c', '805c8fdd191d45b88aed43b2614260ea', '380dc2536c554eae9655ccc05f16374f');

-- ----------------------------
-- Table structure for plugin
-- ----------------------------
DROP TABLE IF EXISTS `plugin`;
CREATE TABLE `plugin` (
  `id` varchar(64) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `failue_time` date DEFAULT NULL,
  `plugin_name` varchar(255) DEFAULT NULL,
  `plugin_url` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `version_num` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `plugin_type_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_type_id` (`plugin_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plugin
-- ----------------------------
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03c04c0000', '2017-03-24 14:32:00', '2017-03-31 17:16:23', '2018-03-21', '打卡插件', 'http://www.baidu.com', '小雨科技', '', 'v1.0.0', '\0', '402880115b23586a015b235c3d870000');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03c04c0ss', '2017-03-28 11:04:31', '2017-03-31 16:46:45', '2018-03-21', '打卡插件6', 'http://www.baidu.com', '小雨科技', '', 'v1.0.0', '\0', '402880115b23586a015b235c3d870000');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03ss42211', '2017-03-26 14:32:00', '2017-03-31 17:16:08', '2017-03-27', '打卡插件4', 'http://www.baidu.com1', '小雨科技1', '', 'v1.0.01', '\0', '402880115b232164015b2321dcd00000');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03ss42dfbxs', '2017-03-28 11:18:31', '2017-03-31 17:24:19', '2017-03-31', '常用插件9', 'http://www.baidu.com1', '小雨科技1', '\0', 'v1.0.01', '\0', '402880115b232164015b2321dcd00000');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03ss466442', '2017-03-26 14:32:00', '2017-03-31 17:16:17', '2017-03-27', '打卡插件5', 'http://www.baidu.com1', '小雨科技1', '', 'v1.0.01', '\0', '1');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03ss466rdww4', '2017-03-28 11:05:05', '2017-03-31 16:28:52', '2017-03-27', '常用插件10', 'http://www.baidu.com1', '小雨科技1', '', 'v1.0.01', '\0', '1');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03ss4c1111', '2017-03-27 18:40:45', '2017-04-01 14:45:58', '2018-03-29', '打卡插件2', 'http://www.baidu.com', '小雨科技', '', 'v1.0.0', '\0', '402880115b23586a015b235c3d870000');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03ss4c1ers', '2017-03-30 16:45:49', '2017-03-31 16:27:17', '2017-03-30', '1常用插件71', 'http://www.baidu.com', '小雨科技', '', 'v1.0.0', '\0', '1');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03ss4c222', '2017-03-26 14:32:00', '2017-03-31 16:46:17', '2017-03-27', '打卡插件3', 'http://www.baidu.com1', '小雨科技1', '', 'v1.0.01', '\0', '402880115b232164015b2321dcd00000');
INSERT INTO `plugin` VALUES ('402880115aff039c015aff03ss4c2432', '2017-03-28 11:04:59', '2017-03-31 17:15:49', '2017-03-27', '常用插件8', 'http://www.baidu.com1', '小雨科技1', '', 'v1.0.01', '\0', '402880115b232164015b2321dcd00000');
INSERT INTO `plugin` VALUES ('402880115b12fe06015b12ff24d10000', '2017-03-28 11:41:55', '2017-04-01 14:46:13', '2017-03-29', '我的插件', 'http://xiaoyu.com', '小雨科技', '', '12', '\0', '402880115b232164015b2321dcd00000');
INSERT INTO `plugin` VALUES ('402880115b23a360015b23a5b5e00000', '2017-03-31 17:15:14', '2017-03-31 17:15:14', '2022-04-06', '公文录入', 'http://xiaoyu.com', '小雨科技', '', '1.0.1', '\0', '402880115b232164015b2321dcd00000');

-- ----------------------------
-- Table structure for plugin_auth
-- ----------------------------
DROP TABLE IF EXISTS `plugin_auth`;
CREATE TABLE `plugin_auth` (
  `id` varchar(64) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `business_id` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `failue_time` date DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `plugin_id` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_id` (`business_id`,`plugin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plugin_auth
-- ----------------------------
INSERT INTO `plugin_auth` VALUES ('402880115b14c438015b14c4f9b80000', '2017-03-28 19:55:01', '2017-03-28 19:55:05', '4228019918668800', '算算', 'SCHOOL', '2017-03-30', '', null, '\0', null, '0');
INSERT INTO `plugin_auth` VALUES ('402880115b221068015b22124cdd0000', '2017-03-31 09:54:36', '2017-03-31 09:54:36', '4227769505416194', '柳树中学', 'SCHOOL', '2017-03-31', '', null, '\0', null, '0');

-- ----------------------------
-- Table structure for plugin_auth_res
-- ----------------------------
DROP TABLE IF EXISTS `plugin_auth_res`;
CREATE TABLE `plugin_auth_res` (
  `id` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL,
  `deleted` int(11) NOT NULL,
  `updated_time` datetime NOT NULL,
  `plugin_auth_id` varchar(255) DEFAULT NULL,
  `plugin_id` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_auth_id` (`plugin_auth_id`,`plugin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plugin_auth_res
-- ----------------------------
INSERT INTO `plugin_auth_res` VALUES ('402880115b2847ab015b2848c9f80000', '2017-04-01 14:51:50', '1', '2017-04-01 14:51:50', '402880115b221068015b22124cdd0000', '402880115aff039c015aff03ss466rdww4', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b2847ab015b2848c9fd0001', '2017-04-01 14:51:50', '1', '2017-04-01 14:51:50', '402880115b221068015b22124cdd0000', '402880115aff039c015aff03c04c0000', '1');
INSERT INTO `plugin_auth_res` VALUES ('402880115b2847ab015b2848c9fd0002', '2017-04-01 14:51:50', '1', '2017-04-01 14:51:50', '402880115b221068015b22124cdd0000', '402880115aff039c015aff03ss4c1111', '2');
INSERT INTO `plugin_auth_res` VALUES ('402880115b2847ab015b2848c9fd0003', '2017-04-01 14:51:50', '1', '2017-04-01 14:51:50', '402880115b221068015b22124cdd0000', '402880115aff039c015aff03ss4c2432', '3');
INSERT INTO `plugin_auth_res` VALUES ('402880115b2847ab015b284980a60004', '2017-04-01 14:52:37', '0', '2017-04-01 14:52:37', '402880115b221068015b22124cdd0000', '402880115aff039c015aff03ss466rdww4', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b2847ab015b284980a70005', '2017-04-01 14:52:37', '0', '2017-04-01 14:52:37', '402880115b221068015b22124cdd0000', '402880115aff039c015aff03c04c0000', '1');
INSERT INTO `plugin_auth_res` VALUES ('402880115b2847ab015b284980a70006', '2017-04-01 14:52:37', '0', '2017-04-01 14:52:37', '402880115b221068015b22124cdd0000', '402880115aff039c015aff03ss4c1111', '2');
INSERT INTO `plugin_auth_res` VALUES ('402880115b2847ab015b284980a70007', '2017-04-01 14:52:37', '0', '2017-04-01 14:52:37', '402880115b221068015b22124cdd0000', '402880115aff039c015aff03ss4c2432', '3');
INSERT INTO `plugin_auth_res` VALUES ('402880115b284ea7015b284fe93a0000', '2017-04-01 14:59:37', '1', '2017-04-01 14:59:37', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss4c2432', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b284ea7015b284fe93f0001', '2017-04-01 14:59:37', '1', '2017-04-01 14:59:37', '402880115b14c438015b14c4f9b80000', '402880115b12fe06015b12ff24d10000', '1');
INSERT INTO `plugin_auth_res` VALUES ('402880115b284ea7015b284fe93f0002', '2017-04-01 14:59:37', '1', '2017-04-01 14:59:37', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss466rdww4', '2');
INSERT INTO `plugin_auth_res` VALUES ('402880115b284ea7015b284fe93f0003', '2017-04-01 14:59:37', '1', '2017-04-01 14:59:37', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss42211', '3');
INSERT INTO `plugin_auth_res` VALUES ('402880115b284ea7015b28504b830004', '2017-04-01 15:00:02', '1', '2017-04-01 15:00:02', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss4c2432', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b284ea7015b28504b840005', '2017-04-01 15:00:02', '1', '2017-04-01 15:00:02', '402880115b14c438015b14c4f9b80000', '402880115b12fe06015b12ff24d10000', '1');
INSERT INTO `plugin_auth_res` VALUES ('402880115b284ea7015b28504b840006', '2017-04-01 15:00:02', '1', '2017-04-01 15:00:02', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss466rdww4', '2');
INSERT INTO `plugin_auth_res` VALUES ('402880115b284ea7015b28504b840007', '2017-04-01 15:00:02', '1', '2017-04-01 15:00:02', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss42211', '3');
INSERT INTO `plugin_auth_res` VALUES ('402880115b285886015b285982410000', '2017-04-01 15:10:06', '1', '2017-04-01 15:10:06', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss4c2432', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b285886015b2859824b0001', '2017-04-01 15:10:06', '1', '2017-04-01 15:10:06', '402880115b14c438015b14c4f9b80000', '402880115b12fe06015b12ff24d10000', '1');
INSERT INTO `plugin_auth_res` VALUES ('402880115b285886015b2859824c0002', '2017-04-01 15:10:06', '1', '2017-04-01 15:10:06', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss466rdww4', '2');
INSERT INTO `plugin_auth_res` VALUES ('402880115b285886015b2859824c0003', '2017-04-01 15:10:06', '1', '2017-04-01 15:10:06', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss42211', '3');
INSERT INTO `plugin_auth_res` VALUES ('402880115b286dca015b286f80f70000', '2017-04-01 15:34:07', '1', '2017-04-01 15:34:07', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss4c2432', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b286dca015b286f81020001', '2017-04-01 15:34:07', '1', '2017-04-01 15:34:07', '402880115b14c438015b14c4f9b80000', '402880115b12fe06015b12ff24d10000', '1');
INSERT INTO `plugin_auth_res` VALUES ('402880115b286dca015b286f81020002', '2017-04-01 15:34:07', '1', '2017-04-01 15:34:07', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss466rdww4', '2');
INSERT INTO `plugin_auth_res` VALUES ('402880115b286dca015b286f81030003', '2017-04-01 15:34:07', '1', '2017-04-01 15:34:07', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss42211', '3');
INSERT INTO `plugin_auth_res` VALUES ('402880115b28793a015b287a9b510000', '2017-04-01 15:46:15', '1', '2017-04-01 15:46:15', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss4c2432', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b28793a015b287a9b5c0001', '2017-04-01 15:46:15', '1', '2017-04-01 15:46:15', '402880115b14c438015b14c4f9b80000', '402880115b12fe06015b12ff24d10000', '1');
INSERT INTO `plugin_auth_res` VALUES ('402880115b28793a015b287a9b5c0002', '2017-04-01 15:46:15', '1', '2017-04-01 15:46:15', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss466rdww4', '2');
INSERT INTO `plugin_auth_res` VALUES ('402880115b287c00015b287dc1000000', '2017-04-01 15:49:41', '1', '2017-04-01 15:49:41', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss466rdww4', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b287c00015b287dc10a0001', '2017-04-01 15:49:41', '1', '2017-04-01 15:49:41', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss4c2432', '1');
INSERT INTO `plugin_auth_res` VALUES ('402880115b28d054015b28d149660000', '2017-04-01 17:20:56', '1', '2017-04-01 17:20:56', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss466rdww4', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b28d054015b28d2ba4d0001', '2017-04-01 17:22:30', '0', '2017-04-01 17:22:30', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss4c2432', '0');
INSERT INTO `plugin_auth_res` VALUES ('402880115b28d054015b28d2ba4d0002', '2017-04-01 17:22:30', '0', '2017-04-01 17:22:30', '402880115b14c438015b14c4f9b80000', '402880115aff039c015aff03ss466rdww4', '1');

-- ----------------------------
-- Table structure for plugin_type
-- ----------------------------
DROP TABLE IF EXISTS `plugin_type`;
CREATE TABLE `plugin_type` (
  `id` varchar(255) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` int(11) NOT NULL,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `plugin_type_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_type_name` (`plugin_type_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plugin_type
-- ----------------------------
INSERT INTO `plugin_type` VALUES ('1', '2017-03-31 14:47:35', '0', '2017-04-01 14:34:46', '统计', '1');
INSERT INTO `plugin_type` VALUES ('2', '2017-03-31 15:49:01', '1', '2017-04-01 14:34:44', '教务1', '1');
INSERT INTO `plugin_type` VALUES ('402880115b232164015b2321dcd00000', '2017-03-31 14:51:13', '0', '2017-04-01 14:34:44', '教务', '1');
INSERT INTO `plugin_type` VALUES ('402880115b23586a015b235c3d870000', '2017-03-31 15:54:59', '0', '2017-03-31 15:58:50', '通知插件', '1');
INSERT INTO `plugin_type` VALUES ('402880115b28e5d9015b28ec03240000', '2017-04-01 17:50:07', '1', '2017-04-01 17:52:29', 'test', '1');
INSERT INTO `plugin_type` VALUES ('402880115b28e5d9015b28ecadb00001', '2017-04-01 17:50:51', '1', '2017-04-01 17:53:10', 'test', '1');
