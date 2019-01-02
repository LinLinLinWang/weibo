/*
 Navicat Premium Data Transfer

 Source Server         : yuyingluntan
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : yuying

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 02/01/2019 18:23:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chatwithpeople
-- ----------------------------
DROP TABLE IF EXISTS `chatwithpeople`;
CREATE TABLE `chatwithpeople`  (
  `SendPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ReceivePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` timestamp(3) NOT NULL,
  PRIMARY KEY (`SendPhone`, `ReceivePhone`, `time`) USING BTREE,
  INDEX `ReceivePhone`(`ReceivePhone`) USING BTREE,
  CONSTRAINT `chatwithpeople_ibfk_1` FOREIGN KEY (`SendPhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chatwithpeople_ibfk_2` FOREIGN KEY (`ReceivePhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chatwithpeople
-- ----------------------------
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'rewewewew', '2018-12-29 07:27:53.858');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 're', '2018-12-29 07:27:56.309');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:27:59.095');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:31:04.160');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:31:14.256');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:33:59.157');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:10.418');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:10.596');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:10.743');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:10.878');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.019');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.172');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.327');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.468');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.646');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.793');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:11.958');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.120');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.279');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.452');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.620');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.784');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:12.972');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:13.166');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:13.359');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:13.569');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:13.789');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:14.027');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:14.280');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:14.543');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:14.798');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:15.081');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:15.396');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:34:15.750');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:39:09.100');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:39:10.285');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:15.018');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:15.379');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:15.730');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:16.119');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:16.524');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'gf', '2018-12-29 07:40:16.944');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'dddddd', '2018-12-29 07:45:20.356');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'dddddd', '2018-12-29 07:45:21.141');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'dddddd', '2018-12-29 07:45:21.306');
INSERT INTO `chatwithpeople` VALUES ('15964245533', '15964245599', 'dddddd', '2018-12-29 07:45:21.448');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:07.027');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:13.618');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:13.791');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:13.962');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:14.112');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:14.265');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', '和肉体和风格化风格化', '2018-12-30 14:03:14.407');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfg', '2019-01-02 10:21:39.055');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrw', '2019-01-02 10:21:47.686');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerw', '2019-01-02 10:21:48.859');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwwr', '2019-01-02 10:21:49.643');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwwrwerwe', '2019-01-02 10:21:50.468');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwrrewrwerwe', '2019-01-02 10:21:50.953');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwrrewrwerwe', '2019-01-02 10:21:51.124');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwrrewrwerwe', '2019-01-02 10:21:51.266');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwrrewrwerwe', '2019-01-02 10:21:51.418');
INSERT INTO `chatwithpeople` VALUES ('15964245555', '15964245533', 'fgdgdfgwerwrwwerwrrewrwerwe', '2019-01-02 10:21:51.571');

-- ----------------------------
-- Table structure for historypostingrecord
-- ----------------------------
DROP TABLE IF EXISTS `historypostingrecord`;
CREATE TABLE `historypostingrecord`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContentType` tinyint(4) NULL DEFAULT 0,
  `Time` timestamp(0) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `Phone`(`Phone`) USING BTREE,
  CONSTRAINT `historypostingrecord_ibfk_1` FOREIGN KEY (`Phone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of historypostingrecord
-- ----------------------------
INSERT INTO `historypostingrecord` VALUES (8, '15964245533', '1', 0, '2018-12-30 11:05:49');
INSERT INTO `historypostingrecord` VALUES (9, '15964245533', '1', 0, '2018-12-30 11:12:48');

-- ----------------------------
-- Table structure for recordsofhistoricalexchanges
-- ----------------------------
DROP TABLE IF EXISTS `recordsofhistoricalexchanges`;
CREATE TABLE `recordsofhistoricalexchanges`  (
  `id` bigint(20) NOT NULL,
  `SendPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ReceivePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` timestamp(0) NOT NULL,
  PRIMARY KEY (`SendPhone`, `ReceivePhone`, `time`, `id`) USING BTREE,
  INDEX `recordsofhistoricalexchanges_ibfk_2`(`ReceivePhone`) USING BTREE,
  CONSTRAINT `recordsofhistoricalexchanges_ibfk_1` FOREIGN KEY (`SendPhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recordsofhistoricalexchanges_ibfk_2` FOREIGN KEY (`ReceivePhone`) REFERENCES `userinfo` (`phone`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `Phone` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无名氏哦',
  `UPwd` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UGender` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '可怕的未知性别',
  `UPhoto` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '默认的地址',
  `UAge` tinyint(4) NULL DEFAULT 0,
  `UConnect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UState` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`Phone`) USING BTREE,
  INDEX `Phone`(`Phone`) USING BTREE,
  INDEX `Phone_2`(`Phone`) USING BTREE,
  INDEX `Phone_3`(`Phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('15964245533', '王林', 'llVP/Y+N7l1aECOoRPlAZQ==', '女', '默认的地址', 2, 'PAlqucYzYpSDB/HKyorWfA==', 0);
INSERT INTO `userinfo` VALUES ('15964245544', '王虎', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'dCzhjZejPFxwi9ok4CKIpA==', 0);
INSERT INTO `userinfo` VALUES ('15964245555', 'd\'f\'s\'f', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, '5xqxFXkKshU1VUOhzhNizw==', 2);
INSERT INTO `userinfo` VALUES ('15964245566', '王虎', 'llVP/Y+N7l1aECOoRPlAZQ==', '可怕的未知性别', '默认的地址', 0, 'KAsqnrA+2mH4F1pXronGww==', 2);
INSERT INTO `userinfo` VALUES ('15964245599', '水水水水', 'llVP/Y+N7l1aECOoRPlAZQ==', '女', '默认的地址', 0, 'O7Jbku4L42WS8yWrbDKwkA==', 0);

SET FOREIGN_KEY_CHECKS = 1;
