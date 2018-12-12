/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 127.0.0.1:3306
 Source Schema         : yii2cms

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 12/12/2018 16:16:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yunmei_admin
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_admin`;
CREATE TABLE `yunmei_admin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `series_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户唯一标识',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型1(普通用户)用户2(广告商)',
  `type_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户类别名称',
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `reg_ip` int(11) NOT NULL DEFAULT 0 COMMENT '创建或注册IP',
  `last_login_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `last_login_ip` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录IP',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '用户状态 1正常 0禁用',
  `created_at` int(11) NOT NULL COMMENT '创建或注册时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_admin
-- ----------------------------
INSERT INTO `yunmei_admin` VALUES (1, 'admin', 'admin', 0, 'admin', 'SbSY36BLw3V2lU-GB7ZAzCVJKDFx82IJ', '$2y$13$0UVcG.mXF6Og0rnjfwJd2.wixT2gdn.wDO9rN44jGtIGc6JvBqR7i', '771405950@qq.com', 2130706433, 1544585782, 2130706433, 1, 1482305564, 1544585782);
INSERT INTO `yunmei_admin` VALUES (24, 'haohao', '包_1540785158_8970', 1, '用户', '1np_dk65kthojBzqfva9Gq8waUrW0vlQ', '$2y$13$ErvwH2ANdbdDAHeqnTiX4ONB01s2jQ.d.V1nu8XObDZ2d4sOkbo1O', '693310424@qq.com', 2130706433, 1540785602, 2130706433, 1, 1540785158, 1540785602);
INSERT INTO `yunmei_admin` VALUES (25, '苪锦文', '宣_1540785299_32551', 1, '用户', '48Dg9hxroQYIwPzYGg4EWQDLRrMzpuw_', '$2y$13$xq/tlbFeMBKZ3824HHWdie8uNtKOPeAKikKDr0wzPmrETKHjkGMwS', 'bingjinwen@qq.com', 2130706433, 0, 0, 1, 1540785300, 1540785300);
INSERT INTO `yunmei_admin` VALUES (26, 'ceshi', '鲁_1540975534_11921', 1, '用户', 'WGGMdHwxXiGNguOJ-eqmGkRPxztCPt8x', '$2y$13$Tsn7p0uaQUEqAVcZP3sI6e874EUpYMHVhfN92RQn1B5qSRE0CUfTK', '111221111@qq.com', 2130706433, 0, 0, 1, 1540975535, 1540975535);
INSERT INTO `yunmei_admin` VALUES (27, '11111', '包_1541067276_48407', 1, '用户', 'nee_Y_dEdYo9IpvIoQ4d6EetFRXcsLp3', '$2y$13$6degfvCA7.PWjRBuq50eluqqnxaWu.X6VCnQK1rM6yciDiYIGptwC', '11111111@qq.com', 2130706433, 0, 0, 1, 1541067277, 1541067277);
INSERT INTO `yunmei_admin` VALUES (28, 'haohao123', '姬_1541553747_24561', 1, '用户', '1KtZ1zbb5S2ASvUFj8rnpfzIJl94ahIo', '$2y$13$jMFxSNsQPQvZO72moAnEh.UwPNwY6cNFGV1TOsrWID3LT4dLNmIPK', '384903890@qq.com', 2130706433, 1541553854, 2130706433, 1, 1541553748, 1541553854);
INSERT INTO `yunmei_admin` VALUES (29, '111111', '陈_1543914289_35259', 1, '用户', 'hW8SJ3M69UGmonvKhE-waM9pI20r5l0m', '$2y$13$yVztkZP26Sh9oOfVfPZUMehzjM5AFf4x37xDWWDeM4/NVPWr5Vj9u', '13123123@qq.com', 2130706433, 0, 0, 1, 1543914289, 1543914289);

-- ----------------------------
-- Table structure for yunmei_adtylenum
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_adtylenum`;
CREATE TABLE `yunmei_adtylenum`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `adtyle_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '广告类型名称',
  `soft_delete` int(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1(显示)2(不显示)',
  `adtyle_created_at` int(11) NOT NULL COMMENT '创建时间',
  `adtyle_updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_adtylenum
-- ----------------------------
INSERT INTO `yunmei_adtylenum` VALUES (6, '固定位', 1, 1540867840, 0);
INSERT INTO `yunmei_adtylenum` VALUES (7, '跳转类型', 1, 1540867866, 1540867884);
INSERT INTO `yunmei_adtylenum` VALUES (8, '固定位', 1, 1540867971, 0);
INSERT INTO `yunmei_adtylenum` VALUES (9, '跳转类型', 1, 1540869482, 0);

-- ----------------------------
-- Table structure for yunmei_adver_js
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_adver_js`;
CREATE TABLE `yunmei_adver_js`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `admin_id` int(11) NOT NULL COMMENT '用户id',
  `enum_id` int(11) NOT NULL COMMENT '广告类型id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需要生成的url或者js',
  `content_js` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生成后的js代码',
  `created_at` int(11) NOT NULL COMMENT '添加时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yunmei_adver_js
-- ----------------------------
INSERT INTO `yunmei_adver_js` VALUES (4, 24, 6, 'http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190', '<script type=\'text/javascript\'  src = \"http://adcyii.com/statics/themes/admin/adverjs/cjtcl.js\"></script>', 1543915024, 1543915024);
INSERT INTO `yunmei_adver_js` VALUES (2, 24, 6, 'http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190', '<script type=\'text/javascript\'  src = \"http://adcyii.com/statics/themes/admin/adverjs/ekwtx.js\"></script>', 0, 0);
INSERT INTO `yunmei_adver_js` VALUES (5, 26, 8, 'http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190', '<script type=\'text/javascript\'  src = \"http://adcyii.com/statics/themes/admin/adverjs/nfwia.js\"></script>', 1543915296, 1543915296);
INSERT INTO `yunmei_adver_js` VALUES (6, 24, 6, 'http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190', '<script type=\'text/javascript\'  src = \"http://adcyii.com/statics/themes/admin/adverjs/skkkv.js\"></script>', 1543915681, 1543915681);
INSERT INTO `yunmei_adver_js` VALUES (7, 24, 6, 'http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190', '<script type=\'text/javascript\'  src = \"http://adcyii.com/statics/themes/admin/adverjs/vpnlw.js\"></script>', 1543917047, 1543917047);
INSERT INTO `yunmei_adver_js` VALUES (8, 24, 6, 'http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190', '<script type=\'text/javascript\'  src = \"http://adcyii.com/statics/themes/admin/adverjs/luuzc.js\"></script>', 1543917117, 1543917117);
INSERT INTO `yunmei_adver_js` VALUES (9, 24, 6, 'http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190-http://images.hnguangyuan.cn/react.js?id=1190', '<script type=\'text/javascript\'  src = \"http://adcyii.com/statics/themes/admin/adverjs/ttyph.js\"></script>', 1544000586, 1544000586);

-- ----------------------------
-- Table structure for yunmei_advert_content
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_advert_content`;
CREATE TABLE `yunmei_advert_content`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `admin_id` int(11) NOT NULL COMMENT '用户id',
  `enum_id` int(11) NOT NULL COMMENT '广告类型id',
  `content_js` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生成的js文件',
  `content_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `content_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址路径',
  `content_created_at` int(11) NOT NULL COMMENT '添加时间',
  `content_updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_advert_content
-- ----------------------------
INSERT INTO `yunmei_advert_content` VALUES (225, 24, 9, '', '', '111112222', 1541140281, 0);
INSERT INTO `yunmei_advert_content` VALUES (226, 25, 6, '', '/statics/themes/admin/uploads/images/20181102/20181102072814_79211.jpg', '22222', 1541140281, 0);
INSERT INTO `yunmei_advert_content` VALUES (227, 26, 8, '', '/statics/themes/admin/uploads/images/20181102/20181102073924_87415.jpg', '333335', 1541140281, 0);

-- ----------------------------
-- Table structure for yunmei_android
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_android`;
CREATE TABLE `yunmei_android`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机器型号',
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '状态',
  `canclickad` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0不可点击1可点击',
  `created_at` int(11) NOT NULL COMMENT '添加时间',
  `updated_at` int(11) NOT NULL COMMENT '重启最新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yunmei_android
-- ----------------------------
INSERT INTO `yunmei_android` VALUES (1, '12312', '0', '1奥术大师', 0, 0);
INSERT INTO `yunmei_android` VALUES (2, 'qeqweq', '1111', '1', 1544509013, 1544509013);
INSERT INTO `yunmei_android` VALUES (3, '12312312', '1', '0', 1544510213, 1544510213);
INSERT INTO `yunmei_android` VALUES (4, '安傻打死打死', '1', '0', 1544510521, 1544510521);
INSERT INTO `yunmei_android` VALUES (5, '格力', '1', '0', 1544517254, 1544519577);
INSERT INTO `yunmei_android` VALUES (6, '格力2', '1', '0', 1544517623, 1544519610);
INSERT INTO `yunmei_android` VALUES (10, '格力222222222', '1', '0', 1544579947, 0);
INSERT INTO `yunmei_android` VALUES (11, '格力2222233333', '1', '0', 1544580110, 1544580459);
INSERT INTO `yunmei_android` VALUES (12, '格力2qweqwe', '1', '0', 1544581176, 1544582511);
INSERT INTO `yunmei_android` VALUES (13, '格ppppp', '1', '0', 1544582541, 0);
INSERT INTO `yunmei_android` VALUES (14, '格pp7777', '1', '0', 1544582560, 0);
INSERT INTO `yunmei_android` VALUES (15, '格pp77771111', '1', '0', 1544583802, 0);

-- ----------------------------
-- Table structure for yunmei_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_auth_assignment`;
CREATE TABLE `yunmei_auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  CONSTRAINT `yunmei_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `yunmei_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_auth_assignment
-- ----------------------------
INSERT INTO `yunmei_auth_assignment` VALUES ('1111', '28', 1541553759);
INSERT INTO `yunmei_auth_assignment` VALUES ('administors', '1', 1484712737);

-- ----------------------------
-- Table structure for yunmei_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_auth_item`;
CREATE TABLE `yunmei_auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  CONSTRAINT `yunmei_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `yunmei_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_auth_item
-- ----------------------------
INSERT INTO `yunmei_auth_item` VALUES ('1111', 1, '11', NULL, NULL, 1541411725, 1541411725);
INSERT INTO `yunmei_auth_item` VALUES ('admin/auth', 2, '', 'admin/auth', NULL, 1484734191, 1541553827);
INSERT INTO `yunmei_auth_item` VALUES ('admin/create', 2, '', 'admin/create', NULL, 1484734191, 1541553827);
INSERT INTO `yunmei_auth_item` VALUES ('admin/delete', 2, '', 'admin/delete', NULL, 1484734191, 1541553827);
INSERT INTO `yunmei_auth_item` VALUES ('admin/index', 2, '', 'admin/index', NULL, 1484734191, 1541553827);
INSERT INTO `yunmei_auth_item` VALUES ('admin/update', 2, '', 'admin/update', NULL, 1484734191, 1541553827);
INSERT INTO `yunmei_auth_item` VALUES ('administors', 1, '授权所有权限', NULL, NULL, 1484712662, 1484712662);
INSERT INTO `yunmei_auth_item` VALUES ('adtylenum/index', 2, '', 'adtylenum/index', NULL, 1540799043, 1540799043);
INSERT INTO `yunmei_auth_item` VALUES ('config/attachment', 2, '', 'config/attachment', NULL, 1484734191, 1541553826);
INSERT INTO `yunmei_auth_item` VALUES ('config/basic', 2, '', 'config/basic', NULL, 1484734191, 1541553825);
INSERT INTO `yunmei_auth_item` VALUES ('config/send-mail', 2, '', 'config/send-mail', NULL, 1484734191, 1541553825);
INSERT INTO `yunmei_auth_item` VALUES ('database/export', 2, '', 'database/export', NULL, 1484734305, 1540799043);
INSERT INTO `yunmei_auth_item` VALUES ('index/index', 2, '', 'index/index', NULL, 1484734191, 1541553825);
INSERT INTO `yunmei_auth_item` VALUES ('menu/create', 2, '', 'menu/create', NULL, 1484734191, 1541553826);
INSERT INTO `yunmei_auth_item` VALUES ('menu/delete', 2, '', 'menu/delete', NULL, 1484734191, 1541553826);
INSERT INTO `yunmei_auth_item` VALUES ('menu/index', 2, '', 'menu/index', NULL, 1484734191, 1541553826);
INSERT INTO `yunmei_auth_item` VALUES ('menu/update', 2, '', 'menu/update', NULL, 1484734191, 1541553826);
INSERT INTO `yunmei_auth_item` VALUES ('role/auth', 2, '', 'role/auth', NULL, 1484734191, 1541553828);
INSERT INTO `yunmei_auth_item` VALUES ('role/create', 2, '', 'role/create', NULL, 1484734191, 1541553827);
INSERT INTO `yunmei_auth_item` VALUES ('role/delete', 2, '', 'role/delete', NULL, 1484734191, 1541553828);
INSERT INTO `yunmei_auth_item` VALUES ('role/index', 2, '', 'role/index', NULL, 1484734191, 1541553827);
INSERT INTO `yunmei_auth_item` VALUES ('role/update', 2, '', 'role/update', NULL, 1484734191, 1541553828);
INSERT INTO `yunmei_auth_item` VALUES ('syslog/index', 2, '', 'syslog/index', NULL, 1541553795, 1541553825);

-- ----------------------------
-- Table structure for yunmei_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_auth_item_child`;
CREATE TABLE `yunmei_auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child`) USING BTREE,
  CONSTRAINT `yunmei_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `yunmei_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `yunmei_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `yunmei_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_auth_item_child
-- ----------------------------
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'admin/auth');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'admin/auth');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'admin/create');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'admin/create');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'admin/delete');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'admin/delete');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'admin/index');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'admin/index');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'admin/update');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'admin/update');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'config/attachment');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'config/attachment');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'config/basic');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'config/basic');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'config/send-mail');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'config/send-mail');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'database/export');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'index/index');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'index/index');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'menu/create');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'menu/create');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'menu/delete');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'menu/delete');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'menu/index');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'menu/index');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'menu/update');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'menu/update');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'role/auth');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'role/auth');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'role/create');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'role/create');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'role/delete');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'role/delete');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'role/index');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'role/index');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'role/update');
INSERT INTO `yunmei_auth_item_child` VALUES ('administors', 'role/update');
INSERT INTO `yunmei_auth_item_child` VALUES ('1111', 'syslog/index');

-- ----------------------------
-- Table structure for yunmei_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_auth_rule`;
CREATE TABLE `yunmei_auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_auth_rule
-- ----------------------------
INSERT INTO `yunmei_auth_rule` VALUES ('', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:0:\"\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553796;}', 1484734191, 1541553796);
INSERT INTO `yunmei_auth_rule` VALUES ('admin/auth', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:10:\"admin/auth\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553827;}', 1484734191, 1541553827);
INSERT INTO `yunmei_auth_rule` VALUES ('admin/create', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:12:\"admin/create\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553827;}', 1484734191, 1541553827);
INSERT INTO `yunmei_auth_rule` VALUES ('admin/delete', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:12:\"admin/delete\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553827;}', 1484734191, 1541553827);
INSERT INTO `yunmei_auth_rule` VALUES ('admin/index', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:11:\"admin/index\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553826;}', 1484734191, 1541553826);
INSERT INTO `yunmei_auth_rule` VALUES ('admin/update', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:12:\"admin/update\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553827;}', 1484734191, 1541553827);
INSERT INTO `yunmei_auth_rule` VALUES ('adtylenum/index', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:15:\"adtylenum/index\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1540799043;s:9:\"updatedAt\";i:1540799043;}', 1540799043, 1540799043);
INSERT INTO `yunmei_auth_rule` VALUES ('config/attachment', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:17:\"config/attachment\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553826;}', 1484734191, 1541553826);
INSERT INTO `yunmei_auth_rule` VALUES ('config/basic', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:12:\"config/basic\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553825;}', 1484734191, 1541553825);
INSERT INTO `yunmei_auth_rule` VALUES ('config/send-mail', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:16:\"config/send-mail\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553825;}', 1484734191, 1541553825);
INSERT INTO `yunmei_auth_rule` VALUES ('database/export', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:15:\"database/export\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734305;s:9:\"updatedAt\";i:1540799043;}', 1484734305, 1540799043);
INSERT INTO `yunmei_auth_rule` VALUES ('index/index', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:11:\"index/index\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553825;}', 1484734191, 1541553825);
INSERT INTO `yunmei_auth_rule` VALUES ('menu/create', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:11:\"menu/create\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553826;}', 1484734191, 1541553826);
INSERT INTO `yunmei_auth_rule` VALUES ('menu/delete', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:11:\"menu/delete\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553826;}', 1484734191, 1541553826);
INSERT INTO `yunmei_auth_rule` VALUES ('menu/index', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:10:\"menu/index\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553826;}', 1484734191, 1541553826);
INSERT INTO `yunmei_auth_rule` VALUES ('menu/update', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:11:\"menu/update\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553826;}', 1484734191, 1541553826);
INSERT INTO `yunmei_auth_rule` VALUES ('role/auth', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:9:\"role/auth\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553828;}', 1484734191, 1541553828);
INSERT INTO `yunmei_auth_rule` VALUES ('role/create', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:11:\"role/create\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553827;}', 1484734191, 1541553827);
INSERT INTO `yunmei_auth_rule` VALUES ('role/delete', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:11:\"role/delete\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553828;}', 1484734191, 1541553828);
INSERT INTO `yunmei_auth_rule` VALUES ('role/index', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:10:\"role/index\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553827;}', 1484734191, 1541553827);
INSERT INTO `yunmei_auth_rule` VALUES ('role/update', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:11:\"role/update\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1484734191;s:9:\"updatedAt\";i:1541553828;}', 1484734191, 1541553828);
INSERT INTO `yunmei_auth_rule` VALUES ('syslog/index', 'O:23:\"backend\\models\\AuthRule\":4:{s:4:\"name\";s:12:\"syslog/index\";s:30:\"\0backend\\models\\AuthRule\0_rule\";r:1;s:9:\"createdAt\";i:1541553795;s:9:\"updatedAt\";i:1541553825;}', 1541553795, 1541553825);

-- ----------------------------
-- Table structure for yunmei_config
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_config`;
CREATE TABLE `yunmei_config`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `keyid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `keyid`(`keyid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_config
-- ----------------------------
INSERT INTO `yunmei_config` VALUES (1, 'basic', '', '{\"sitename\":\"Yii2 CMS\",\"url\":\"http:\\/\\/www.test-yii2cms.com\",\"logo\":\"\\/statics\\/themes\\/admin\\/images\\/logo.png\",\"seo_keywords\":\"Yii2,CMS\",\"seo_description\":\"Yii2,CMS\",\"copyright\":\"@Yii2 CMS\",\"statcode\":\"\",\"close\":\"0\",\"close_reason\":\"\\u7ad9\\u70b9\\u5347\\u7ea7\\u4e2d, \\u8bf7\\u7a0d\\u540e\\u8bbf\\u95ee!\"}');
INSERT INTO `yunmei_config` VALUES (2, 'sendmail', '', '{\"mail_type\":\"0\",\"smtp_server\":\"smtp.qq.com\",\"smtp_port\":\"25\",\"auth\":\"1\",\"openssl\":\"1\",\"smtp_user\":\"771405950\",\"smtp_pwd\":\"qiaoBo1989122\",\"send_email\":\"771405950@qq.com\",\"nickname\":\"\\u8fb9\\u8d70\\u8fb9\\u4e54\",\"sign\":\"<hr \\/>\\r\\n\\u90ae\\u4ef6\\u7b7e\\u540d\\uff1a\\u6b22\\u8fce\\u8bbf\\u95ee <a href=\\\"http:\\/\\/www.test-yii2cms.com\\\" target=\\\"_blank\\\">Yii2 CMS<\\/a>\"}');
INSERT INTO `yunmei_config` VALUES (3, 'attachment', '', '{\"attachment_size\":\"2048\",\"attachment_suffix\":\"jpg|jpeg|gif|bmp|png\",\"watermark_enable\":\"1\",\"watermark_pos\":\"0\",\"watermark_text\":\"Yii2 CMS\"}');

-- ----------------------------
-- Table structure for yunmei_menu
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_menu`;
CREATE TABLE `yunmei_menu`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `icon_style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `display` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_menu
-- ----------------------------
INSERT INTO `yunmei_menu` VALUES (1, 0, '我的面板', 'index/index', 'fa-home', 1, 0);
INSERT INTO `yunmei_menu` VALUES (2, 0, '站点设置', 'config/basic', 'fa-cogs', 1, 0);
INSERT INTO `yunmei_menu` VALUES (3, 0, '管理员设置', 'admin/index', 'fa-user', 1, 0);
INSERT INTO `yunmei_menu` VALUES (4, 0, '内容设置', '', 'fa-edit', 1, 0);
INSERT INTO `yunmei_menu` VALUES (5, 0, '用户设置', '', 'fa-users', 1, 0);
INSERT INTO `yunmei_menu` VALUES (6, 0, '数据库设置', 'database/export', 'fa-hdd-o', 1, 0);
INSERT INTO `yunmei_menu` VALUES (7, 0, '界面设置', '', 'fa-picture-o', 1, 0);
INSERT INTO `yunmei_menu` VALUES (8, 1, '系统信息', 'index/index', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (9, 2, '站点配置', 'config/basic', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (10, 2, '后台菜单管理', 'menu/index', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (11, 3, '管理员管理', 'admin/index', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (12, 3, '角色管理', 'role/index', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (13, 4, '内容管理', '', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (14, 4, '栏目管理', '', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (15, 4, '模型管理', '', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (16, 5, '用户管理', '', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (17, 6, '数据库管理', 'database/export', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (18, 7, '主题管理', '', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (19, 7, '模板管理', '', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (20, 9, '基本配置', 'config/basic', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (21, 9, '邮箱配置', 'config/send-mail', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (22, 9, '附件配置', 'config/attachment', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (23, 10, '添加菜单', 'menu/create', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (24, 10, '更新', 'menu/update', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (25, 10, '删除', 'menu/delete', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (26, 11, '添加', 'admin/create', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (27, 11, '更新', 'admin/update', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (28, 11, '授权', 'admin/auth', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (29, 11, '删除', 'admin/delete', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (30, 12, '添加', 'role/create', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (31, 12, '更新', 'role/update', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (32, 12, '授权', 'role/auth', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (33, 12, '删除', 'role/delete', '', 1, 0);
INSERT INTO `yunmei_menu` VALUES (34, 0, '广告模块', '', 'fa-home', 1, 0);
INSERT INTO `yunmei_menu` VALUES (35, 34, '广告类型', 'adtylenum/index', 'fa-home', 1, 0);
INSERT INTO `yunmei_menu` VALUES (36, 34, '广告内容', 'advertcontent/index', 'fa-home', 1, 0);
INSERT INTO `yunmei_menu` VALUES (37, 1, '系统日志', 'syslog/index', 'fa-home', 1, 0);
INSERT INTO `yunmei_menu` VALUES (38, 34, '统计广告数据', 'statistics/index', 'fa-home', 1, 0);
INSERT INTO `yunmei_menu` VALUES (39, 34, '广告生成js', 'adverjs/index', 'fa-home', 1, 0);
INSERT INTO `yunmei_menu` VALUES (40, 34, 'android内容', 'android/index', 'fa-home', 1, 1);

-- ----------------------------
-- Table structure for yunmei_migration
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_migration`;
CREATE TABLE `yunmei_migration`  (
  `version` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apply_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_migration
-- ----------------------------
INSERT INTO `yunmei_migration` VALUES ('m000000_000000_base', 1482231528);
INSERT INTO `yunmei_migration` VALUES ('m130524_201442_init', 1482231534);

-- ----------------------------
-- Table structure for yunmei_session
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_session`;
CREATE TABLE `yunmei_session`  (
  `id` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire` int(11) NULL DEFAULT NULL,
  `data` blob NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_session
-- ----------------------------
INSERT INTO `yunmei_session` VALUES ('9uet703cvec3df0s5n62dhbrt1', 1544515166, 0x5F5F666C6173687C613A303A7B7D5F5F69647C733A313A2231223B);
INSERT INTO `yunmei_session` VALUES ('fq6elrq3eu038cdfa93tpsbu7d', 1544002029, 0x5F5F666C6173687C613A303A7B7D5F5F69647C733A313A2231223B);
INSERT INTO `yunmei_session` VALUES ('jlec58nqfofr36vtkdcbiepa05', 1544175339, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31303A222F61646D696E2E706870223B5F5F69647C733A313A2231223B);
INSERT INTO `yunmei_session` VALUES ('o80aem3b3f1kvkf38tiq659jnh', 1543992839, 0x5F5F666C6173687C613A303A7B7D5F5F69647C733A313A2231223B);
INSERT INTO `yunmei_session` VALUES ('qvgerj9kat9p0ummmd8m9uet19', 1543995349, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32363A222F61646D696E2E7068703F723D61646D696E253246696E646578223B);
INSERT INTO `yunmei_session` VALUES ('t5btvifra0gdsa6elrc5l8823p', 1544599801, 0x5F5F666C6173687C613A303A7B7D5F5F69647C733A313A2231223B);

-- ----------------------------
-- Table structure for yunmei_statistics
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_statistics`;
CREATE TABLE `yunmei_statistics`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `admin_id` int(11) NOT NULL COMMENT '用户id',
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ip',
  `created_at` int(11) NOT NULL COMMENT '添加时间',
  `phone_model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机型号',
  `phone_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机尺寸',
  `phone_pc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是pc还是phone',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_statistics
-- ----------------------------
INSERT INTO `yunmei_statistics` VALUES (1, 24, '6', '180.109.34.152', 1543917783, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (2, 24, '6', '180.109.34.152', 1543917783, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (3, 24, '6', '180.109.34.152', 1543917782, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (4, 24, '6', '180.109.34.152', 1543917782, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (5, 24, '6', '180.109.34.152', 1543917781, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (6, 24, '6', '180.109.34.152', 1543917781, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (7, 24, '6', '180.109.34.152', 1543917780, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (8, 24, '6', '180.109.34.152', 1543917779, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (9, 24, '6', '180.109.34.152', 1543917778, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (10, 24, '6', '180.109.34.152', 1543917778, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (11, 24, '6', '180.109.34.152', 1543919240, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (12, 24, '6', '180.109.34.152', 1543919240, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (13, 24, '6', '180.109.34.152', 1543919240, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (14, 24, '6', '180.109.34.152', 1543919239, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (15, 24, '6', '180.109.34.152', 1543919239, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (16, 24, '6', '180.109.34.152', 1543919239, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (17, 24, '6', '180.109.34.152', 1543919239, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (18, 24, '6', '180.109.34.152', 1543919238, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (19, 24, '6', '180.109.34.152', 1543919238, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (20, 24, '6', '180.109.34.152', 1543919238, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (21, 24, '6', '180.109.34.152', 1543919238, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (22, 24, '6', '180.109.34.152', 1543919238, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (23, 24, '6', '180.109.34.152', 1543919237, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (24, 24, '6', '180.109.34.152', 1543919237, 'null', '1080X1920', 'pc');
INSERT INTO `yunmei_statistics` VALUES (25, 24, '6', '180.109.34.152', 1543919237, 'null', '1080X1920', 'pc');

-- ----------------------------
-- Table structure for yunmei_syslog
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_syslog`;
CREATE TABLE `yunmei_syslog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `controller` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '控制器',
  `models` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块',
  `action` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法',
  `create_at` int(11) NOT NULL COMMENT '添加时间',
  `ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ip',
  `modulee` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 330 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yunmei_syslog
-- ----------------------------
INSERT INTO `yunmei_syslog` VALUES (41, 1, 'admin', '', '系统日志', '访问了日志列表', 1541410114, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (40, 1, 'admin', '', '角色管理', '访问角色管理', 1541409963, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (39, 1, 'admin', '', '角色管理', '更新角色:administors', 1541409892, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (38, 1, 'admin', '', '角色管理', '访问角色管理', 1541409757, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (37, 1, 'admin', '', '角色管理', '访问角色管理', 1541409716, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (36, 1, 'admin', '', '角色管理', '添加角色', 1541409716, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (35, 1, 'admin', '', '角色管理', '添加角色', 1541409712, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (34, 1, 'admin', '', '角色管理', '访问角色管理', 1541409178, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (33, 1, 'admin', '', '角色管理', '访问角色管理', 1541409176, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (32, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541408481, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (31, 1, 'admin', '', '后台菜单管理', '添加子菜单:1....1', 1541408477, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (30, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541408474, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (29, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541408384, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (28, 1, 'admin', '', '后台菜单管理', '添加菜单', 1541408131, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (27, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541408122, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (26, 1, 'admin', '', '后台菜单管理', '添加菜单', 1541407964, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (25, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541407960, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (24, 1, 'admin', '', '系统日志', '访问了日志列表', 1541403771, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (42, 1, 'admin', '', '角色管理', '访问角色管理', 1541410133, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (43, 1, 'admin', '', '角色管理', '删除角色:1·11', 1541410139, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (44, 1, 'admin', '', '角色管理', '访问角色管理', 1541410139, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (45, 1, 'admin', '', '角色管理', '删除角色:administors', 1541410140, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (46, 1, 'admin', '', '系统日志', '访问了日志列表', 1541410146, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (47, 1, 'admin', '', '广告内容', '访问广告内容', 1541410187, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (48, 1, 'admin', '', '系统日志', '访问了日志列表', 1541410509, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (49, 1, 'admin', '', '系统日志', '访问了日志列表', 1541410528, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (50, 1, 'admin', '', '管理员管理', '访问管理员', 1541411101, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (51, 1, 'admin', '', '管理员管理', '访问管理员', 1541411104, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (52, 1, 'admin', '', '角色管理', '访问角色管理', 1541411106, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (53, 1, 'admin', '', '角色管理', '访问角色管理', 1541411135, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (54, 1, 'admin', '', '系统日志', '访问了日志列表', 1541411156, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (55, 1, 'admin', '', '管理员管理', '访问管理员', 1541411267, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (56, 1, 'admin', '', '角色管理', '访问角色管理', 1541411269, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (57, 1, 'admin', '', '角色管理', '删除角色:editors', 1541411498, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (58, 1, 'admin', '', '管理员管理', '访问管理员', 1541411505, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (59, 1, 'admin', '', '角色管理', '访问角色管理', 1541411590, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (60, 1, 'admin', '', '角色管理', '访问角色管理', 1541411649, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (61, 1, 'admin', '', '角色管理', '添加角色', 1541411721, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (62, 1, 'admin', '', '角色管理', '添加角色', 1541411725, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (63, 1, 'admin', '', '角色管理', '访问角色管理', 1541411725, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (64, 1, 'admin', '', '角色管理', '访问角色管理', 1541411747, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (65, 1, 'admin', '', '管理员管理', '访问管理员', 1541411836, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (66, 1, 'admin', '', '管理员管理', '访问管理员', 1541411845, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (67, 1, 'admin', '', '管理员管理', '访问管理员', 1541411849, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (68, 1, 'admin', '', '管理员管理', '更新管理员:admin', 1541411854, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (69, 1, 'admin', '', '管理员管理', '访问管理员', 1541411859, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (70, 1, 'admin', '', '管理员管理', '访问管理员', 1541411864, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (71, 1, 'admin', '', '管理员管理', '访问管理员', 1541495375, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (72, 1, 'admin', '', '系统日志', '访问了日志列表', 1541495380, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (73, 1, 'admin', '', '系统日志', '访问了日志列表', 1541495464, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (74, 1, 'admin', '', '管理员管理', '访问管理员', 1541553450, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (75, 1, 'admin', '', '系统日志', '访问了日志列表', 1541553455, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (76, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541553468, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (77, 1, 'admin', '', '后台菜单管理', '更新子菜单:1....37', 1541553472, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (78, 1, 'admin', '', '后台菜单管理', '更新子菜单:1....37', 1541553483, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (79, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541553483, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (80, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541553622, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (81, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541553647, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (82, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541553655, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (83, 1, 'admin', '', '广告内容', '访问广告内容', 1541553658, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (84, 1, 'admin', '', '广告类型', '访问广告类型', 1541553660, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (85, 1, 'admin', '', '广告内容', '访问广告内容', 1541553662, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (86, 1, 'admin', '', '广告类型', '访问广告类型', 1541553662, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (87, 1, 'admin', '', '广告类型', '更新广告类型:6....固定位', 1541553664, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (88, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541553691, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (89, 1, 'admin', '', '角色管理', '访问角色管理', 1541553713, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (90, 1, 'admin', '', '管理员管理', '访问管理员', 1541553718, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (91, 1, 'admin', '', '管理员管理', '添加管理员', 1541553722, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (92, 1, 'admin', '', '管理员管理', '添加管理员', 1541553748, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (93, 1, 'admin', '', '管理员管理', '访问管理员', 1541553748, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (94, 1, 'admin', '', '管理员管理', '管理员授权::haohao123', 1541553759, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (95, 1, 'admin', '', '角色管理', '访问角色管理', 1541553761, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (96, 1, 'admin', '', '角色管理', '授权角色:1111', 1541553766, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (97, 1, 'admin', '', '角色管理', '授权角色:1111', 1541553814, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (98, 1, 'admin', '', '角色管理', '授权角色:1111', 1541553828, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (99, 28, 'haohao123', '', '系统日志', '访问了系统日志列表', 1541553859, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (100, 28, 'haohao123', '', '站点配置', '基本配置', 1541553863, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (101, 28, 'haohao123', '', '系统日志', '访问了系统日志列表', 1541553865, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (102, 1, 'admin', '', '广告内容', '访问广告内容', 1541555517, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (103, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541555520, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (104, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541555522, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (105, 1, 'admin', '', '广告内容', '访问广告内容', 1541555842, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (106, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541555844, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (107, 1, 'admin', '', '广告内容', '访问广告内容', 1541555849, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (108, 1, 'admin', '', '广告内容', '添加广告', 1541555851, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (109, 1, 'admin', '', '广告类型', '更新广告类型:6....固定位', 1541556531, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (110, 1, 'admin', '', '广告类型', '访问广告类型', 1541556533, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (111, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574700, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (112, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574823, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (113, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574827, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (114, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541574830, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (115, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574832, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (116, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574836, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (117, 1, 'admin', '', '角色管理', '访问角色管理', 1541574837, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (118, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574839, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (119, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574978, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (120, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574980, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (121, 1, 'admin', '', '广告类型', '访问广告类型', 1541574985, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (122, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541574986, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (123, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541575002, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (124, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541575006, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (125, 1, 'admin', '', '角色管理', '访问角色管理', 1541575008, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (126, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541575010, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (127, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541575051, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (128, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541575609, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (129, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541575655, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (130, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541575684, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (131, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541575694, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (132, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541580575, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (133, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541585362, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (134, 1, 'admin', '', '广告类型', '访问广告类型', 1541639276, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (135, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541639279, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (136, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541639289, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (137, 1, 'admin', '', '管理员管理', '访问管理员', 1541639295, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (138, 1, 'admin', '', '角色管理', '访问角色管理', 1541639296, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (139, 1, 'admin', '', '管理员管理', '访问管理员', 1541639297, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (140, 1, 'admin', '', '角色管理', '访问角色管理', 1541639298, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (141, 1, 'admin', '', '管理员管理', '访问管理员', 1541639299, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (142, 1, 'admin', '', '角色管理', '访问角色管理', 1541639299, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (143, 1, 'admin', '', '角色管理', '访问角色管理', 1541645004, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (144, 1, 'admin', '', '角色管理', '访问角色管理', 1541645006, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (145, 1, 'admin', '', '角色管理', '访问角色管理', 1541645007, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (146, 1, 'admin', '', '角色管理', '访问角色管理', 1541645008, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (147, 1, 'admin', '', '角色管理', '访问角色管理', 1541645009, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (148, 1, 'admin', '', '角色管理', '访问角色管理', 1541645049, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (149, 1, 'admin', '', '角色管理', '访问角色管理', 1541645548, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (150, 1, 'admin', '', '角色管理', '访问角色管理', 1541645551, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (151, 1, 'admin', '', '角色管理', '访问角色管理', 1541645552, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (152, 1, 'admin', '', '角色管理', '访问角色管理', 1541645552, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (153, 1, 'admin', '', '管理员管理', '访问管理员', 1541645553, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (154, 1, 'admin', '', '角色管理', '访问角色管理', 1541645555, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (155, 1, 'admin', '', '角色管理', '访问角色管理', 1541645557, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (156, 1, 'admin', '', '角色管理', '访问角色管理', 1541645557, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (157, 1, 'admin', '', '角色管理', '访问角色管理', 1541645560, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (158, 1, 'admin', '', '角色管理', '访问角色管理', 1541645562, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (159, 1, 'admin', '', '广告类型', '访问广告类型', 1541645565, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (160, 1, 'admin', '', '广告内容', '访问广告内容', 1541645584, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (161, 1, 'admin', '', '广告内容', '访问广告内容', 1541646339, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (162, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541646342, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (163, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541646344, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (164, 1, 'admin', '', '站点配置', '基本配置', 1541646345, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (165, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541648321, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (166, 1, 'admin', '', '站点配置', '基本配置', 1541648322, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (167, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541648323, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (168, 1, 'admin', '', '角色管理', '访问角色管理', 1541648325, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (169, 1, 'admin', '', '角色管理', '访问角色管理', 1541648460, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (170, 1, 'admin', '', '角色管理', '访问角色管理', 1541648461, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (171, 1, 'admin', '', '角色管理', '访问角色管理', 1541648462, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (172, 1, 'admin', '', '角色管理', '访问角色管理', 1541648462, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (173, 1, 'admin', '', '角色管理', '访问角色管理', 1541648462, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (174, 1, 'admin', '', '角色管理', '访问角色管理', 1541648463, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (175, 1, 'admin', '', '角色管理', '访问角色管理', 1541648473, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (176, 1, 'admin', '', '角色管理', '访问角色管理', 1541648473, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (177, 1, 'admin', '', '角色管理', '访问角色管理', 1541648473, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (178, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541648486, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (179, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541648559, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (180, 1, 'admin', '', '管理员管理', '访问管理员', 1541648562, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (181, 1, 'admin', '', '角色管理', '访问角色管理', 1541648563, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (182, 1, 'admin', '', '角色管理', '访问角色管理', 1541648565, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (183, 1, 'admin', '', '管理员管理', '访问管理员', 1541648567, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (184, 1, 'admin', '', '管理员管理', '访问管理员', 1541648569, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (185, 1, 'admin', '', '角色管理', '访问角色管理', 1541648570, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (186, 1, 'admin', '', '角色管理', '访问角色管理', 1541649315, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (187, 1, 'admin', '', '角色管理', '访问角色管理', 1541649317, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (188, 1, 'admin', '', '角色管理', '访问角色管理', 1541649416, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (189, 1, 'admin', '', '站点配置', '基本配置', 1541649420, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (190, 1, 'admin', '', '站点配置', '基本配置', 1541656377, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (191, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541659379, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (192, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541663475, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (193, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541663477, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (194, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1541663658, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (195, 1, 'admin', '', '广告内容', '访问广告内容', 1541726627, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (196, 1, 'admin', '', '广告内容', '访问广告内容', 1541743062, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (197, 1, 'admin', '', '广告内容', '添加广告', 1541743077, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (198, 1, 'admin', '', '广告内容', '访问广告内容', 1541743080, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (199, 1, 'admin', '', '广告内容', '访问广告内容', 1541743435, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (200, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541743534, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (201, 1, 'admin', '', '后台菜单管理', '添加子菜单:34....34', 1541743542, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (202, 1, 'admin', '', '后台菜单管理', '添加菜单', 1541743570, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (203, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541743571, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (204, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541743575, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (205, 1, 'admin', '', '广告内容', '访问广告内容', 1541748172, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (206, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541748183, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (207, 1, 'admin', '', '后台菜单管理', '添加子菜单:34....34', 1541748190, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (208, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541749273, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (209, 1, 'admin', '', '后台菜单管理', '添加子菜单:34....34', 1541749279, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (210, 1, 'admin', '', '后台菜单管理', '添加菜单', 1541749301, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (211, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541749303, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (212, 1, 'admin', '', '广告内容', '访问广告内容', 1541750367, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (213, 1, 'admin', '', '广告类型', '访问广告类型', 1541750371, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (214, 1, 'admin', '', '广告内容', '访问广告内容', 1541750392, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (215, 1, 'admin', '', '广告类型', '访问广告类型', 1541750396, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (216, 1, 'admin', '', '广告内容', '访问广告内容', 1541750798, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (217, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541750802, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (218, 1, 'admin', '', '广告内容', '访问广告内容', 1541750804, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (219, 1, 'admin', '', '广告内容', '添加广告', 1541750806, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (220, 1, 'admin', '', '广告内容', '访问广告内容', 1541750811, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (221, 1, 'admin', '', '管理员管理', '访问管理员', 1541751503, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (222, 1, 'admin', '', '管理员管理', '添加管理员', 1541751505, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (223, 1, 'admin', '', '管理员管理', '访问管理员', 1541751512, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (224, 1, 'admin', '', '广告类型', '访问广告类型', 1541751517, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (225, 1, 'admin', '', '广告类型', '添加广告类型', 1541751518, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (226, 1, 'admin', '', '广告类型', '访问广告类型', 1541751521, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (227, 1, 'admin', '', '广告内容', '访问广告内容', 1541751616, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (228, 1, 'admin', '', '广告内容', '添加广告', 1541751618, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (229, 1, 'admin', '', '广告内容', '添加广告', 1541751725, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (230, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541751730, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (231, 1, 'admin', '', '后台菜单管理', '更新子菜单:0....1', 1541751732, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (232, 1, 'admin', '', '后台菜单管理', '更新子菜单:0....1', 1541751744, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (233, 1, 'admin', '', '广告类型', '访问广告类型', 1541751749, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (234, 1, 'admin', '', '广告类型', '更新广告类型:6....固定位', 1541751752, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (235, 1, 'admin', '', '广告内容', '访问广告内容', 1541751755, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (236, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541751757, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (237, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541751797, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (238, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541751841, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (239, 1, 'admin', '', '广告类型', '访问广告类型', 1541751871, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (240, 1, 'admin', '', '广告类型', '更新广告类型:6....固定位', 1541751875, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (241, 1, 'admin', '', '广告类型', '访问广告类型', 1541751893, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (242, 1, 'admin', '', '广告内容', '访问广告内容', 1541751911, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (243, 1, 'admin', '', '广告内容', '添加广告', 1541751933, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (244, 1, 'admin', '', '广告类型', '添加广告类型', 1541751937, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (245, 1, 'admin', '', '广告类型', '访问广告类型', 1541751940, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (246, 1, 'admin', '', '广告内容', '访问广告内容', 1541751944, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (247, 1, 'admin', '', '广告类型', '更新广告类型:6....固定位', 1541751948, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (248, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541751952, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (249, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541752094, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (250, 1, 'admin', '', '广告内容', '更新广告内容:225', 1541752152, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (251, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541752372, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (252, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541752407, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (253, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541752410, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (254, 1, 'admin', '', '后台菜单管理', '添加子菜单:37....37', 1541752415, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (255, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541752419, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (256, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541752428, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (257, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541752502, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (258, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541752565, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (259, 1, 'admin', '', '后台菜单管理', '添加菜单', 1541752567, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (260, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1541752607, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (261, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1542681181, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (262, 1, 'admin', '', '站点配置', '基本配置', 1542681194, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (263, 1, 'admin', '', '站点配置', '访问邮箱配置', 1542681204, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (264, 1, 'admin', '', '管理员管理', '访问管理员', 1542681265, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (265, 1, 'admin', '', '管理员管理', '访问管理员', 1542681279, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (266, 1, 'admin', '', '角色管理', '访问角色管理', 1542681281, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (267, 1, 'admin', '', '角色管理', '访问角色管理', 1542681285, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (268, 1, 'admin', '', '角色管理', '访问角色管理', 1542681287, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (269, 1, 'admin', '', '角色管理', '访问角色管理', 1542681288, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (270, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1543284439, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (271, 1, 'admin', '', '广告内容', '访问广告内容', 1543306334, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (272, 1, 'admin', '', '广告内容', '访问广告内容', 1543367455, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (273, 1, 'admin', '', '广告内容', '访问广告内容', 1543387125, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (274, 1, 'admin', '', '广告内容', '添加广告', 1543387129, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (275, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1543454989, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (276, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1543910886, '192.168.83.6', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (277, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1543910887, '192.168.83.6', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (278, 1, 'admin', '', '管理员管理', '访问管理员', 1543913723, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (279, 1, 'admin', '', '管理员管理', '添加管理员', 1543913742, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (280, 1, 'admin', '', '管理员管理', '添加管理员', 1543914280, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (281, 1, 'admin', '', '管理员管理', '添加管理员', 1543914289, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (282, 1, 'admin', '', '管理员管理', '访问管理员', 1543914290, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (283, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1543974599, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (284, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1543974614, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (285, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1543974619, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (286, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1543974648, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (287, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1543974878, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (288, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1543975349, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (289, 1, 'admin', '', '管理员管理', '访问管理员', 1543975354, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (290, 1, 'admin', '', '管理员管理', '访问管理员', 1543975458, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (291, 1, 'admin', '', '管理员管理', '访问管理员', 1543975465, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (292, 1, 'admin', '', '管理员管理', '访问管理员', 1543975472, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (293, 1, 'admin', '', '管理员管理', '访问管理员', 1543976688, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (294, 1, 'admin', '', '角色管理', '访问角色管理', 1543976719, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (295, 1, 'admin', '', '角色管理', '访问角色管理', 1543976723, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (296, 1, 'admin', '', '角色管理', '访问角色管理', 1543977097, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (297, 1, 'admin', '', '角色管理', '访问角色管理', 1543977124, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (298, 1, 'admin', '', '管理员管理', '访问管理员', 1543977256, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (299, 1, 'admin', '', '管理员管理', '访问管理员', 1543977462, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (300, 1, 'admin', '', '管理员管理', '访问管理员', 1543977466, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (301, 1, 'admin', '', '管理员管理', '访问管理员', 1543977526, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (302, 1, 'admin', '', '管理员管理', '访问管理员', 1543977619, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (303, 1, 'admin', '', '管理员管理', '访问管理员', 1543978062, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (304, 1, 'admin', '', '管理员管理', '访问管理员', 1543978066, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (305, 1, 'admin', '', '管理员管理', '访问管理员', 1543978087, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (306, 1, 'admin', '', '管理员管理', '访问管理员', 1543978090, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (307, 1, 'admin', '', '管理员管理', '访问管理员', 1543979077, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (308, 1, 'admin', '', '管理员管理', '访问管理员', 1543979099, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (309, 1, 'admin', '', '管理员管理', '访问管理员', 1543979105, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (310, 1, 'admin', '', '管理员管理', '访问管理员', 1543979122, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (311, 1, 'admin', '', '管理员管理', '访问管理员', 1543981747, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (312, 1, 'admin', '', '管理员管理', '访问管理员', 1543991397, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (313, 1, 'admin', '', '广告内容', '访问广告内容', 1544172987, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (314, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1544509200, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (315, 1, 'admin', '', '后台菜单管理', '添加菜单', 1544509207, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (316, 1, 'admin', '', '后台菜单管理', '添加菜单', 1544509251, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (317, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1544509252, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (318, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1544509256, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (319, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1544585787, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (320, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1544586117, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (321, 1, 'admin', '', '系统日志', '访问了系统日志列表', 1544586895, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (322, 1, 'admin', '', '广告内容', '访问广告内容', 1544593598, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (323, 1, 'admin', '', '广告内容', '添加广告', 1544593601, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (324, 1, 'admin', '', '广告类型', '访问广告类型', 1544593616, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (325, 1, 'admin', '', '广告类型', '添加广告类型', 1544593618, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (326, 1, 'admin', '', '后台菜单管理', '访问菜单管理', 1544597930, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (327, 1, 'admin', '', '后台菜单管理', '菜单排序', 1544597937, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (328, 1, 'admin', '', '后台菜单管理', '菜单排序', 1544597945, '127.0.0.1', 'app-backend');
INSERT INTO `yunmei_syslog` VALUES (329, 1, 'admin', '', '后台菜单管理', '菜单排序', 1544597981, '127.0.0.1', 'app-backend');

-- ----------------------------
-- Table structure for yunmei_user
-- ----------------------------
DROP TABLE IF EXISTS `yunmei_user`;
CREATE TABLE `yunmei_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
