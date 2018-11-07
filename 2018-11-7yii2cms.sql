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

 Date: 07/11/2018 10:30:38
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
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yunmei_admin
-- ----------------------------
INSERT INTO `yunmei_admin` VALUES (1, 'admin', 'admin', 0, 'admin', 'SbSY36BLw3V2lU-GB7ZAzCVJKDFx82IJ', '$2y$13$0UVcG.mXF6Og0rnjfwJd2.wixT2gdn.wDO9rN44jGtIGc6JvBqR7i', '771405950@qq.com', 2130706433, 1541553888, 2130706433, 1, 1482305564, 1541553888);
INSERT INTO `yunmei_admin` VALUES (24, 'haohao', '包_1540785158_8970', 1, '用户', '1np_dk65kthojBzqfva9Gq8waUrW0vlQ', '$2y$13$ErvwH2ANdbdDAHeqnTiX4ONB01s2jQ.d.V1nu8XObDZ2d4sOkbo1O', '693310424@qq.com', 2130706433, 1540785602, 2130706433, 1, 1540785158, 1540785602);
INSERT INTO `yunmei_admin` VALUES (25, '苪锦文', '宣_1540785299_32551', 1, '用户', '48Dg9hxroQYIwPzYGg4EWQDLRrMzpuw_', '$2y$13$xq/tlbFeMBKZ3824HHWdie8uNtKOPeAKikKDr0wzPmrETKHjkGMwS', 'bingjinwen@qq.com', 2130706433, 0, 0, 1, 1540785300, 1540785300);
INSERT INTO `yunmei_admin` VALUES (26, 'ceshi', '鲁_1540975534_11921', 1, '用户', 'WGGMdHwxXiGNguOJ-eqmGkRPxztCPt8x', '$2y$13$Tsn7p0uaQUEqAVcZP3sI6e874EUpYMHVhfN92RQn1B5qSRE0CUfTK', '111221111@qq.com', 2130706433, 0, 0, 1, 1540975535, 1540975535);
INSERT INTO `yunmei_admin` VALUES (27, '11111', '包_1541067276_48407', 1, '用户', 'nee_Y_dEdYo9IpvIoQ4d6EetFRXcsLp3', '$2y$13$6degfvCA7.PWjRBuq50eluqqnxaWu.X6VCnQK1rM6yciDiYIGptwC', '11111111@qq.com', 2130706433, 0, 0, 1, 1541067277, 1541067277);
INSERT INTO `yunmei_admin` VALUES (28, 'haohao123', '姬_1541553747_24561', 1, '用户', '1KtZ1zbb5S2ASvUFj8rnpfzIJl94ahIo', '$2y$13$jMFxSNsQPQvZO72moAnEh.UwPNwY6cNFGV1TOsrWID3LT4dLNmIPK', '384903890@qq.com', 2130706433, 1541553854, 2130706433, 1, 1541553748, 1541553854);

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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `yunmei_session` VALUES ('7qs4otc2h7rbl1u6m1u71o3sv3', 1541496905, 0x5F5F666C6173687C613A303A7B7D5F5F69647C733A313A2231223B);
INSERT INTO `yunmei_session` VALUES ('c07av5b8sr0bscp3qg6qm0ta63', 1541412244, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32353A222F61646D696E2E7068703F723D726F6C65253246696E646578223B5F5F69647C733A313A2231223B);
INSERT INTO `yunmei_session` VALUES ('d29m812mssmn9r2eojq6mp33m7', 1541411923, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31303A222F61646D696E2E706870223B5F5F69647C733A313A2231223B);
INSERT INTO `yunmei_session` VALUES ('jossmfgpqe78oc0vs158c5c887', 1541413305, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32353A222F61646D696E2E7068703F723D726F6C65253246696E646578223B5F5F69647C733A313A2231223B);
INSERT INTO `yunmei_session` VALUES ('u74b3fefhirrdodo4ohd7j04e1', 1541557975, 0x5F5F666C6173687C613A303A7B7D5F5F69647C733A313A2231223B);

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
) ENGINE = MyISAM AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
