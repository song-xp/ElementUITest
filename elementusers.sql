/*
 Navicat Premium Data Transfer

 Source Server         : 20190106
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : elementusers

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 01/12/2020 22:19:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` datetime(0) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '王阳', '2000-03-08 00:00:00', '湖南省长沙市望城区湖南信息职业技术学院北八245', '男');
INSERT INTO `users` VALUES (2, '唐志鹏', '2000-03-08 00:00:00', '湖南省长沙市望城区湖南信息职业技术学院北八245', '男');
INSERT INTO `users` VALUES (3, '刘宏华', '2000-03-08 00:00:00', '湖南省长沙市望城区湖南信息职业技术学院北八245', '男');
INSERT INTO `users` VALUES (4, '舒鸿佳', '2000-03-08 00:00:00', '湖南省长沙市望城区湖南信息职业技术学院北八245', '男');

SET FOREIGN_KEY_CHECKS = 1;
