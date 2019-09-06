/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 47.96.233.26:3306
 Source Schema         : examination

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 06/09/2019 16:42:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_answer_record
-- ----------------------------
DROP TABLE IF EXISTS `t_answer_record`;
CREATE TABLE `t_answer_record`  (
  `answer_record_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int(40) NOT NULL,
  `user_answer` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question_id` int(40) NOT NULL,
  `type_id` int(40) NULL DEFAULT NULL,
  `result` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答题结果',
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '有没有改',
  `paper_id` int(11) NULL DEFAULT NULL,
  `score` int(10) NULL DEFAULT NULL COMMENT '得分',
  `exam_id` int(10) NULL DEFAULT NULL COMMENT '考试场次ID',
  PRIMARY KEY (`answer_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_answer_record
-- ----------------------------
INSERT INTO `t_answer_record` VALUES (169, '123512', 1, '[D]', 2, 1, '错', '已改', 23, 0, 39);
INSERT INTO `t_answer_record` VALUES (170, '123512', 1, '[B]', 12, 1, '错', '已改', 23, 0, 39);
INSERT INTO `t_answer_record` VALUES (171, '123512', 1, '[B]', 9, 1, '错', '已改', 23, 0, 39);
INSERT INTO `t_answer_record` VALUES (172, '123512', 1, '[B]', 8, 1, '对', '已改', 23, 5, 39);
INSERT INTO `t_answer_record` VALUES (173, '123512', 1, '[C]', 7, 1, '对', '已改', 23, 5, 39);
INSERT INTO `t_answer_record` VALUES (174, '123512', 1, '[A]', 15, 1, '对', '已改', 23, 5, 39);
INSERT INTO `t_answer_record` VALUES (175, '123512', 1, '[A]', 6, 1, '错', '已改', 23, 0, 39);
INSERT INTO `t_answer_record` VALUES (176, '123512', 1, '[B]', 14, 1, '对', '已改', 23, 5, 39);
INSERT INTO `t_answer_record` VALUES (177, '123512', 1, '[B]', 3, 1, '错', '已改', 23, 0, 39);
INSERT INTO `t_answer_record` VALUES (178, '123512', 1, '[A]', 13, 1, '对', '已改', 23, 5, 39);
INSERT INTO `t_answer_record` VALUES (179, '123512', 1, '[A, B, C]', 48, 2, '错', '已改', 23, 0, 39);
INSERT INTO `t_answer_record` VALUES (180, '123512', 1, '[A, B, C]', 36, 2, '错', '已改', 23, 0, 39);
INSERT INTO `t_answer_record` VALUES (181, '123512', 1, '[asdgjpamhgasdl;hf]', 62, 5, NULL, '已改', 23, 15, 39);
INSERT INTO `t_answer_record` VALUES (182, '123512', 1, '[安抚哈的发挥教师的吗，就好了凭感觉，了]', 61, 5, NULL, '已改', 23, 15, 39);
INSERT INTO `t_answer_record` VALUES (183, '1235123', 1, '[C]', 15, 1, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (184, '1235123', 1, '[A]', 6, 1, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (185, '1235123', 1, '[A]', 14, 1, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (186, '1235123', 1, '[A]', 3, 1, '对', '已改', 23, 5, 40);
INSERT INTO `t_answer_record` VALUES (187, '1235123', 1, '[A]', 13, 1, '对', '已改', 23, 5, 40);
INSERT INTO `t_answer_record` VALUES (188, '1235123', 1, '[A]', 2, 1, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (189, '1235123', 1, '[A]', 12, 1, '对', '已改', 23, 5, 40);
INSERT INTO `t_answer_record` VALUES (190, '1235123', 1, '[A]', 9, 1, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (191, '1235123', 1, '[A]', 8, 1, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (192, '1235123', 1, '[A]', 7, 1, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (193, '1235123', 1, '[A, B, C]', 48, 2, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (194, '1235123', 1, '[A, B, C]', 36, 2, '错', '已改', 23, 0, 40);
INSERT INTO `t_answer_record` VALUES (195, '1235123', 1, '[sdhfdgjdtyjk]', 62, 5, NULL, '已改', 23, 10, 40);
INSERT INTO `t_answer_record` VALUES (196, '1235123', 1, '[ghkfghjlkgjh;lg]', 61, 5, NULL, '已改', 23, 15, 40);
INSERT INTO `t_answer_record` VALUES (197, '123512', 1, '[A]', 9, 1, '错', '已改', 23, 0, 41);
INSERT INTO `t_answer_record` VALUES (198, '123512', 1, '[A]', 8, 1, '错', '已改', 23, 0, 41);
INSERT INTO `t_answer_record` VALUES (199, '123512', 1, '[A]', 7, 1, '错', '已改', 23, 0, 41);
INSERT INTO `t_answer_record` VALUES (200, '123512', 1, '[A]', 15, 1, '对', '已改', 23, 5, 41);
INSERT INTO `t_answer_record` VALUES (201, '123512', 1, '[A]', 6, 1, '错', '已改', 23, 0, 41);
INSERT INTO `t_answer_record` VALUES (202, '123512', 1, '[A]', 14, 1, '错', '已改', 23, 0, 41);
INSERT INTO `t_answer_record` VALUES (203, '123512', 1, '[A]', 3, 1, '对', '已改', 23, 5, 41);
INSERT INTO `t_answer_record` VALUES (204, '123512', 1, '[A]', 13, 1, '对', '已改', 23, 5, 41);
INSERT INTO `t_answer_record` VALUES (205, '123512', 1, '[A]', 2, 1, '错', '已改', 23, 0, 41);
INSERT INTO `t_answer_record` VALUES (206, '123512', 1, '[A]', 12, 1, '对', '已改', 23, 5, 41);
INSERT INTO `t_answer_record` VALUES (207, '123512', 1, '[A, B, C]', 48, 2, '错', '已改', 23, 0, 41);
INSERT INTO `t_answer_record` VALUES (208, '123512', 1, '[A, B, C]', 36, 2, '错', '已改', 23, 0, 41);
INSERT INTO `t_answer_record` VALUES (209, '123512', 1, '[asghhasdfhfgdj]', 62, 5, NULL, '已改', 23, 15, 41);
INSERT INTO `t_answer_record` VALUES (210, '123512', 1, '[xcvbsrtyhuerj]', 61, 5, NULL, '已改', 23, 15, 41);
INSERT INTO `t_answer_record` VALUES (211, '123512', 1, '[A]', 15, 1, '对', '已改', 21, 5, 42);
INSERT INTO `t_answer_record` VALUES (212, '123512', 1, '[A]', 6, 1, '错', '已改', 21, 0, 42);
INSERT INTO `t_answer_record` VALUES (213, '123512', 1, '[A]', 3, 1, '对', '已改', 23, 5, 43);
INSERT INTO `t_answer_record` VALUES (214, '123512', 1, '[A]', 13, 1, '对', '已改', 23, 5, 43);
INSERT INTO `t_answer_record` VALUES (215, '123512', 1, '[A]', 2, 1, '错', '已改', 23, 0, 43);
INSERT INTO `t_answer_record` VALUES (216, '123512', 1, '[A]', 12, 1, '对', '已改', 23, 5, 43);
INSERT INTO `t_answer_record` VALUES (217, '123512', 1, '[A]', 9, 1, '错', '已改', 23, 0, 43);
INSERT INTO `t_answer_record` VALUES (218, '123512', 1, '[A]', 8, 1, '错', '已改', 23, 0, 43);
INSERT INTO `t_answer_record` VALUES (219, '123512', 1, '[A]', 7, 1, '错', '已改', 23, 0, 43);
INSERT INTO `t_answer_record` VALUES (220, '123512', 1, '[A]', 15, 1, '对', '已改', 23, 5, 43);
INSERT INTO `t_answer_record` VALUES (221, '123512', 1, '[A]', 6, 1, '错', '已改', 23, 0, 43);
INSERT INTO `t_answer_record` VALUES (222, '123512', 1, '[A]', 14, 1, '错', '已改', 23, 0, 43);
INSERT INTO `t_answer_record` VALUES (223, '123512', 1, '[A, B, C]', 48, 2, '错', '已改', 23, 0, 43);
INSERT INTO `t_answer_record` VALUES (224, '123512', 1, '[A, B, C]', 36, 2, '错', '已改', 23, 0, 43);
INSERT INTO `t_answer_record` VALUES (225, '123512', 1, '[1]', 62, 5, NULL, '已改', 23, 15, 43);
INSERT INTO `t_answer_record` VALUES (226, '123512', 1, '[2]', 61, 5, NULL, '已改', 23, 15, 43);
INSERT INTO `t_answer_record` VALUES (227, '123', 1, '[A]', 13, 1, '对', '已改', 23, 5, 44);
INSERT INTO `t_answer_record` VALUES (228, '123', 1, '[A]', 2, 1, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (229, '123', 1, '[B]', 12, 1, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (230, '123', 1, '[D]', 9, 1, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (231, '123', 1, '[D]', 8, 1, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (232, '123', 1, '[A]', 7, 1, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (233, '123', 1, '[A]', 15, 1, '对', '已改', 23, 5, 44);
INSERT INTO `t_answer_record` VALUES (234, '123', 1, '[A]', 6, 1, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (235, '123', 1, '[B]', 14, 1, '对', '已改', 23, 5, 44);
INSERT INTO `t_answer_record` VALUES (236, '123', 1, '[C]', 3, 1, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (237, '123', 1, '[A, B]', 48, 2, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (238, '123', 1, '[A, B, C]', 36, 2, '错', '已改', 23, 0, 44);
INSERT INTO `t_answer_record` VALUES (239, '123', 1, '[serdhertyyjeyrtd]', 62, 5, NULL, '已改', 23, 15, 44);
INSERT INTO `t_answer_record` VALUES (240, '123', 1, '[asdfhbsfgjhdtgyhk]', 61, 5, NULL, '已改', 23, 15, 44);
INSERT INTO `t_answer_record` VALUES (241, '123', 1, '[A]', 15, 1, '对', '已改', 5, 5, 115);
INSERT INTO `t_answer_record` VALUES (242, '123', 1, '[A]', 7, 1, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (243, '123', 1, '[B]', 4, 1, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (244, '123', 1, '[A]', 2, 1, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (245, '123', 1, '[ft]', 19, 4, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (246, '123', 1, '[f]', 17, 4, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (247, '123', 1, '[f]', 32, 4, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (248, '123', 1, '[f]', 24, 4, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (249, '123', 1, '[f]', 22, 4, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (250, '123', 1, '[f]', 21, 4, '错', '已改', 5, 0, 115);
INSERT INTO `t_answer_record` VALUES (251, '123512', 1, '[]', 61, 5, NULL, '已改', 23, 0, 116);
INSERT INTO `t_answer_record` VALUES (252, '123512', 1, '[]', 62, 5, NULL, '已改', 23, 0, 116);
INSERT INTO `t_answer_record` VALUES (253, '123512', 1, '[C]', 3, 1, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (254, '123512', 1, '[A]', 7, 1, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (255, '123512', 1, '[A]', 2, 1, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (256, '123512', 1, '[A]', 6, 1, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (257, '123512', 1, '[A]', 11, 1, '对', '已改', 29, 5, 117);
INSERT INTO `t_answer_record` VALUES (258, '123512', 1, '[A]', 5, 1, '对', '已改', 29, 5, 117);
INSERT INTO `t_answer_record` VALUES (259, '123512', 1, '[A]', 66, 1, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (260, '123512', 1, '[A]', 9, 1, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (261, '123512', 1, '[A]', 4, 1, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (262, '123512', 1, '[A]', 8, 1, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (263, '123512', 1, '[A, B]', 46, 2, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (264, '123512', 1, '[A, B]', 39, 2, '错', '已改', 29, 0, 117);
INSERT INTO `t_answer_record` VALUES (265, '123512', 1, '[B]', 13, 3, '对', '已改', 29, 5, 117);
INSERT INTO `t_answer_record` VALUES (266, '123512', 1, '[A]', 15, 3, '对', '已改', 29, 5, 117);
INSERT INTO `t_answer_record` VALUES (267, '123512', 1, '[awsgasdfg]', 61, 5, NULL, '未改', 29, NULL, 117);
INSERT INTO `t_answer_record` VALUES (268, '123512', 1, '[adfhadfh]', 62, 5, NULL, '未改', 29, NULL, 117);
INSERT INTO `t_answer_record` VALUES (269, '123512', 1, '[B]', 3, 1, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (270, '123512', 1, '[A]', 7, 1, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (271, '123512', 1, '[A]', 11, 1, '对', '已改', 30, 5, 118);
INSERT INTO `t_answer_record` VALUES (272, '123512', 1, '[A]', 2, 1, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (273, '123512', 1, '[A]', 6, 1, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (274, '123512', 1, '[A]', 10, 1, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (275, '123512', 1, '[A]', 5, 1, '对', '已改', 30, 5, 118);
INSERT INTO `t_answer_record` VALUES (276, '123512', 1, '[A]', 71, 1, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (277, '123512', 1, '[A]', 4, 1, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (278, '123512', 1, '[A]', 9, 1, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (279, '123512', 1, '[A, B]', 49, 2, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (280, '123512', 1, '[A, B]', 46, 2, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (281, '123512', 1, '[A]', 12, 3, '对', '已改', 30, 5, 118);
INSERT INTO `t_answer_record` VALUES (282, '123512', 1, '[A]', 13, 3, '错', '已改', 30, 0, 118);
INSERT INTO `t_answer_record` VALUES (283, '123512', 1, '[在西部中部]', 61, 5, NULL, '已改', 30, 15, 118);
INSERT INTO `t_answer_record` VALUES (284, '123512', 1, '[多好多好]', 62, 5, NULL, '已改', 30, 10, 118);

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course`  (
  `course_id` int(5) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_state_id` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES (1, 'java', '0');
INSERT INTO `t_course` VALUES (2, 'C++', '0');
INSERT INTO `t_course` VALUES (3, 'Python', '0');

-- ----------------------------
-- Table structure for t_exam_record
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_record`;
CREATE TABLE `t_exam_record`  (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试的用户',
  `paper_id` int(10) NULL DEFAULT NULL COMMENT '考试的试卷',
  `begin_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `score` int(10) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态：改没改完',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_exam_record
-- ----------------------------
INSERT INTO `t_exam_record` VALUES (100, 'java测试四', '123512', 28, '2018-12-30 16:14:45', '2019-09-05 21:03:38', 65, NULL, '已改');
INSERT INTO `t_exam_record` VALUES (103, 'java测试四', '123512', 28, '2018-12-30 16:14:45', '2019-09-05 21:03:40', 96, NULL, '已改');
INSERT INTO `t_exam_record` VALUES (104, 'java测试四', '123512', 28, '2018-12-30 16:14:45', '2019-09-05 21:03:40', 77, NULL, '已改');
INSERT INTO `t_exam_record` VALUES (105, 'java测试四', '123512', 28, '2018-12-30 16:14:45', '2019-09-05 21:03:40', 55, NULL, '已改');
INSERT INTO `t_exam_record` VALUES (117, 'Java考试三', '123512', 29, '2018-12-30 11:50:05', '2019-09-06 11:50:11', 20, NULL, '未改');
INSERT INTO `t_exam_record` VALUES (118, '测试一', '123512', 30, '2018-12-30 16:29:16', '2019-09-06 16:29:23', 40, NULL, '已改');

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade`  (
  `grade_id` int(5) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`grade_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES (1, '高一', '1,2,3');
INSERT INTO `t_grade` VALUES (2, '高二', '1,2,3');
INSERT INTO `t_grade` VALUES (3, '高三', '1,2,3');

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper`  (
  `paper_id` int(20) NOT NULL AUTO_INCREMENT,
  `paper_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int(40) NOT NULL,
  `question_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `paper_state` int(10) NOT NULL DEFAULT 0,
  `allow_time` int(11) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(10) NOT NULL,
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES (27, 'java考试一', 1, '1,9,5,68,6,8,10,66,3,7,38,57,15,13,62,61', 0, 120, NULL, 100);
INSERT INTO `t_paper` VALUES (28, 'java考试二', 1, '68,7,10,4,8,3,11,2,67,9,46,47,14,15,61,62', 0, 120, NULL, 100);
INSERT INTO `t_paper` VALUES (29, 'Java考试三', 1, '66,3,8,11,4,7,2,9,6,5,39,46,15,13,62,61', 0, 120, NULL, 100);
INSERT INTO `t_paper` VALUES (30, '测试一', 1, '5,2,3,7,71,9,4,11,6,10,46,49,13,12,61,62', 0, 120, NULL, 100);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `resource_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (13, 1, 5);
INSERT INTO `t_permission` VALUES (14, 1, 14);
INSERT INTO `t_permission` VALUES (15, 1, 15);
INSERT INTO `t_permission` VALUES (16, 1, 16);
INSERT INTO `t_permission` VALUES (17, 1, 17);
INSERT INTO `t_permission` VALUES (18, 2, 2);
INSERT INTO `t_permission` VALUES (19, 2, 8);
INSERT INTO `t_permission` VALUES (20, 2, 9);
INSERT INTO `t_permission` VALUES (21, 2, 10);
INSERT INTO `t_permission` VALUES (22, 2, 11);
INSERT INTO `t_permission` VALUES (23, 2, 3);
INSERT INTO `t_permission` VALUES (24, 2, 12);
INSERT INTO `t_permission` VALUES (25, 2, 13);
INSERT INTO `t_permission` VALUES (26, 2, 4);
INSERT INTO `t_permission` VALUES (27, 2, 5);
INSERT INTO `t_permission` VALUES (28, 2, 14);
INSERT INTO `t_permission` VALUES (29, 2, 15);
INSERT INTO `t_permission` VALUES (30, 2, 16);
INSERT INTO `t_permission` VALUES (31, 2, 17);
INSERT INTO `t_permission` VALUES (32, 3, 1);
INSERT INTO `t_permission` VALUES (33, 3, 6);
INSERT INTO `t_permission` VALUES (34, 3, 7);
INSERT INTO `t_permission` VALUES (35, 3, 2);
INSERT INTO `t_permission` VALUES (36, 3, 8);
INSERT INTO `t_permission` VALUES (37, 3, 9);
INSERT INTO `t_permission` VALUES (38, 3, 10);
INSERT INTO `t_permission` VALUES (39, 3, 11);
INSERT INTO `t_permission` VALUES (40, 3, 3);
INSERT INTO `t_permission` VALUES (41, 3, 12);
INSERT INTO `t_permission` VALUES (42, 3, 13);
INSERT INTO `t_permission` VALUES (43, 3, 4);
INSERT INTO `t_permission` VALUES (44, 3, 5);
INSERT INTO `t_permission` VALUES (45, 3, 14);
INSERT INTO `t_permission` VALUES (46, 3, 15);
INSERT INTO `t_permission` VALUES (47, 3, 16);
INSERT INTO `t_permission` VALUES (48, 3, 17);

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question`  (
  `question_id` int(10) NOT NULL AUTO_INCREMENT,
  `question_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_b` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_c` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_d` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer_detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_id` int(20) NOT NULL,
  `type_id` int(20) NOT NULL,
  `difficulty` int(10) NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(10) NULL DEFAULT NULL COMMENT '题目分值',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES (2, '下列语句哪一个正确()', 'A. java程序经编译后会产生machine code', 'B．java程序经编译后产生byte code', 'C．java程序编译后产生DLL', 'D．以上都不正确', 'B', '', 1, 1, 0, '', 5);
INSERT INTO `t_question` VALUES (3, '下列说法正确的有()', 'A．class中的constructor不可省略', 'B．constructor必须与class同名，但方法不能与class同名', 'C．constructor在一个对象被new时执行', 'D．近年来，广袤蜀地的新村建设全面推进，大巴山区漂亮民居星罗棋雍，大凉山上彝家    新寨鳞次栉比，西部高原羌寨碉楼拔地而起。', 'A', '', 1, 1, 0, '', 5);
INSERT INTO `t_question` VALUES (4, 'JAVA所定义的版本=中不包括：()', 'A. JAVA2 EE', 'B. JAVA2 Card', 'C. JAVA2 ME\r\n', 'D. JAVA2 HE', 'D', '', 1, 1, 1, '', 5);
INSERT INTO `t_question` VALUES (5, '下列说法正确的是()', 'A. JAVA程序的main方法必须写在类里面吗', 'B. JAVA程序中可以有多个main方法', 'C. JAVA程序中类名必须与文件名一样', 'D. JAVA程序的main方法中如果只有一条语句，可以不用{} (大括号)括起来', 'A', NULL, 1, 1, 0, NULL, 5);
INSERT INTO `t_question` VALUES (6, '变量命令规范说法正确的是()', 'A. 变量由字母、下划线、数字、$符号随意组成', 'B. 变量不能以数字作为开头', 'C. A 和 a在java中是同一个变量', 'D. 不同类型的变量，可以起相同的名字', 'B', NULL, 1, 1, 0, NULL, 5);
INSERT INTO `t_question` VALUES (7, '下列javaDoc注释正确的是()', 'A. /*我爱北京天安门*/', 'B. //我爱北京天安门*/', 'C. /**我爱北京天安门*/', 'D. /*我爱北京天安门**/', 'C', NULL, 1, 1, 0, NULL, 5);
INSERT INTO `t_question` VALUES (8, '为一个boolean类型变量的赋值时，可以使用()方式', 'A. boolean = 1;', 'B. boolean a = (9 >= 10);', 'C. boolean a = \"真\";', 'D. boolean a = = false; ', 'B', NULL, 1, 1, 0, NULL, 5);
INSERT INTO `t_question` VALUES (9, '以下()不是合法的标识符', 'A. STRING', 'B. x3x', 'C. void', 'D. de$f', 'C', NULL, 1, 1, 0, NULL, 5);
INSERT INTO `t_question` VALUES (10, '表达式(11+3*8)/4%3的值是()', 'A. 31', 'B. 0', 'C. 1', 'D. 2\r\n', 'D', NULL, 1, 1, 0, NULL, 5);
INSERT INTO `t_question` VALUES (11, '()表达式不可以作为循环条件', 'A. i++', 'B. i>5', 'C. bEqual = str.equals(\"q\")', 'D. count = = i;', 'A', NULL, 1, 1, 0, NULL, 5);
INSERT INTO `t_question` VALUES (12, 'static是java关键字', 'A. 对', 'B. 错', 'C. 由高向低分别是:()、算术运算符、逻辑运算符、关系运算符、!、赋值运算符', 'D. 由高向低分别是:()、!、关系运算符、赋值运算符、算术运算符、逻辑运算符', 'A', NULL, 1, 3, 0, NULL, 5);
INSERT INTO `t_question` VALUES (13, 'java有时一门面向过程的语言', 'A. 对', 'B. 错', 'C. 在for循环中，不能使用break语句跳出循环', 'D. for循环是先执行循环体语句，后进行条件判断', 'B', NULL, 1, 3, 0, NULL, 5);
INSERT INTO `t_question` VALUES (14, '对象的特征在类中表示为变量，称为类的方法', 'A. 对', 'B. 错', 'C. 方法', 'D. 数据类型', 'B', NULL, 1, 3, 0, NULL, 5);
INSERT INTO `t_question` VALUES (15, 'Java可以进行隐式的类型转换', 'A. 对', 'B. 错', 'C. double类型可以自动转换为int', 'D. char + int + double +结果一定是double', 'A', NULL, 1, 3, 0, NULL, 5);
INSERT INTO `t_question` VALUES (16, '面向对象程序设计的三个特征是 __________、__________、__________。', '', '', '', '', '封装, 多态, 继承', NULL, 1, 4, 0, NULL, 5);
INSERT INTO `t_question` VALUES (17, 'Java语言的主要特点有 __________、__________、__________、__________。', NULL, NULL, NULL, NULL, '简单性，安全性，面向对象，平台无关性', NULL, 1, 4, 0, NULL, 5);
INSERT INTO `t_question` VALUES (18, 'Java是面向对象语言，类是客观事物的__________、而对象是类的__________。', NULL, NULL, NULL, NULL, '抽象;实例', NULL, 1, 4, 0, NULL, 5);
INSERT INTO `t_question` VALUES (19, '______是Java程序中基本的结构单位。', NULL, NULL, NULL, NULL, '类', NULL, 1, 4, 0, NULL, 5);
INSERT INTO `t_question` VALUES (20, 'Java语言是一种完全的_________程序设计语言。', '', '', '', '', '面向对象', 'B项“应”C项“宿”D项“吐”', 1, 4, 0, NULL, 5);
INSERT INTO `t_question` VALUES (21, '布尔型常量有两个值，它们分别是______、_______', '', '', '', '', 'true， false', 'A项“耸”应为“悚”，“练”应为“炼”B项“励”应为“厉”“梁”应为“粱”“妄”为“枉”；C项“堰”应为“揠”“园”应为“圆”', 1, 4, 0, NULL, 5);
INSERT INTO `t_question` VALUES (22, '表达式1/2*9的计算结果是______。', '', '', '', '', '0', 'B“对大家”后加“来说”；C句不明确，“就像”前加“待他们”；D“无论”与“和”不搭配，“和”应为“或”。', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (23, '表达式\"b\" +10 的值为______,  \"b + 10\"的值为_____', '', '', '', '', 'b10,108', 'A项“扼”B项“强”D项“供”', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (24, 'String s1=\"Chain\"; int n = s1.length(); n的值为_____', '', '', '', '', '5', 'A项“忧”应为“尤”B项“敬”应为“儆”或“警”C项“装”应为“妆”', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (25, '______必须完全大写', '', '', '', '', '常量名', 'A项“哺”B项“歼”C项“拓”1', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (26, 'Java中用于定义整形变量的关键字有四个: _____、_____、_____、_____。', '', '', '', '', 'byte,short,int,long', 'A项“躬”应为“恭”B项“记”应为“计”D项“悬”应为“玄”', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (27, '在Java语言中，简单数据类型包括:__________、_________、_________、_________。', '', '', '', '', '整数 类型、浮点类型、字符类型、布尔类型', 'A“自从”应放在“中国人民”前面；B去掉“改革和”；C“寻求”缺少宾语，应改为“以寻求解决两国间矛盾的办法”。', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (28, 'Java的类型、单精度浮点型、布尔型数据的保留字分别是:_______、______。', '', '', '', '', 'float、boolean', 'B项“强词夺理”的“强”C项“俯首贴耳”的“贴”D项“累赘”的“累”', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (29, 'Java语言中提供了两种类型的字符串来处理字符串，它们是:______和______', '', '', '', '', 'String, StringBuffer类', 'A项“上”应为“尚”C项“急”应为“及”D项“凭”应为“平”', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (30, 'Java程序的种类有：内嵌于_______文件中，由浏览器来观看_______,必须继承________；可独立运行的________,必须包含______。\r\n__', '', '', '', '', 'HTML，applet,Applet,addlication,main()方法', 'A“能劳动”“有科学文化知识”前分别加“是否”；B应改为“不但不吃国家的供应粮了，而且向国家交售了六万斤谷子”；C“两个”有歧义，可改为“两名工人的合理化建议”或“工人的两个合理化建议”。', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (31, 'Java语言中，所有类的都是____的子类，Java的窗口通常是____子类，______类只能定义但不能被实例化，_____类不能被继承，异常类都是______的子类\r\n————', '', '', '', '', 'Object,JFrame,抽象，最终，Exception', 'A项“群雄角逐”的“角”B项“烟笼雾锁”的“笼”C项“量体裁衣”的“量”', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (32, 'Java源程序文件和字节码文件的扩展名分别为_______和_______', '', '', '', '', '.java ,  .class', 'B项“消”应为“销”C项“型”应为“形”D项“必”应为“毕”', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (33, '一般Java程序的类体由两部分组成: 一部分是______,另一部分是_______', '', '', '', '', '属性，方法', 'B项比喻流离失所的灾民；C项形容时间过得快，与句意不符；D项是指恨一辈子，与句意不符。', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (34, '子类对父类继承来的属性重新定义称为______。子类对自身拥有的同名方法的重新定义称______。', '', '', '', '', '重写，重载', 'A“非常”与“至关”重复；B项有歧义；C项“志趣”与“发挥”不搭配。', 1, 4, 1, NULL, 5);
INSERT INTO `t_question` VALUES (35, '分别用______关键字来定义类，用_____关键字来分配实例存储空间。', '', '', '', '', 'class,   new ', 'A．埋 mán， B．跄 qiàng C.梗gěng', 1, 4, 0, '本题考察的都是基础字音，没有出现偏难怪的字音', 5);
INSERT INTO `t_question` VALUES (36, '下面说法正确的是()', 'A．final 可修饰类、属性(变量)、方法。', 'B．abstract 可修饰类、方法。', 'C. 抽象方法只有方法头，没有方法体。', 'D．关键字final和anstract不能同时使用。', 'A,B,C,D', 'B.文武之道，一张一弛；C.寻章摘句；D.斐然', 1, 2, 0, '本题考察的都是高考高频字形。', 5);
INSERT INTO `t_question` VALUES (37, '下面关于java中输入/输出流的说法正确的是().', 'A. FilelnputStream与FileOutStream类用读、写字节流。', 'B．Reader与Writer类用来读，写字符流。', 'C．RandomAccessFile既可以用来读文件，也可以用来写文件。', 'D．File类用来处理与文件相关的操作。', 'A,B,C,D', '届时是“到时候”的意思，而本句所叙述的是已经发生了的事实。', 1, 2, 0, '本题考察的是词语和成语运用。都是考纲内的高频词语辨析和成语分析，难度不大。', 5);
INSERT INTO `t_question` VALUES (38, '下面说法正确的是()\r\n', 'A. 如果某公共接口被声明在一个源文件中，则接口必须与源文件具有相同名字。', 'B. 如果源文件包含import语句，则该语句必须是除空行和注释行外的第一个语句行。', 'C. 如果某源文件包含package语句，则该语句必须是第一个非空、非注释行。', 'D. 接口中的方法必定是抽象方法，但可以不用关键字abstract修饰。', 'A,B,C,D', NULL, 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (39, '下面关于Java中异常处理try块的说法正确的是()', 'A. try块后通常有一个catch块，用来处理try块中抛出的异常。', 'B. catch块必须有finally块。', 'C. 可能抛出异常的方法调用应放在try块中。', 'D. 对【抛出的异常的处理必须放在try块中。', 'A,C', NULL, 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (40, '下面关于线程、线程的说法正确的是()', 'A. 进程是程序的一次动态执行过程，一个进程在其执行过程中，可以产生多个线程————多线程，形成多条执行线索。', 'B. 线程是比进程更小的执行单位，是在一个进程中独立的控制流，即程序内部的控制流。线程本身不能自动运行，栖身于某个进程之中，由进程启动执行。', 'C. Java多线程的运行与平台相关。', 'D. 对于单处理器系统，多个线程分时间片获取CPU或其他系统资源来运行。对于多处理器系统，线程可以分配到多个处理器中，从而真正的并发执行多任务。', 'A,B,C,D', NULL, 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (41, '关于BufferedReader类的readLine()方法，以下说法正确的是()', 'A. 方法readLine()每次读取一行数据', 'B. 方法readLine()每次读取一个字节', 'C. 该方法可能抛出IOException异常，调用该方法时通常应将它放到try块中。并通过catch快处理异常。', 'D. 如果读到流的末尾，该方法返回的结果为null。', 'A,C,D', NULL, 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (42, '下面关于Java中异常处理try块的说法正确的是()', 'A. try块后通常应有一个catch块，用来处理try块中抛出的异常。', 'B. catch块后必须有finally块。', 'C. 可能抛出异常的方法调用应放在try块中。', 'D. 对抛出的异常的处理必须放在try块中。', 'A,C', NULL, 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (43, '线程对象的生命周期中，通常经历下面哪些状态().', 'A. 新建', 'B. 运行', 'C. 就绪', 'D. 死亡', 'A,B,C,D', NULL, 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (44, '定义如下的二维数组b，下面的说法正确的是()\r\n  int b[][]={{1,2,3}, {4,5}, {6,7,8}}};', 'A. b.length的值是3', 'B. b[1].length的值是3', 'C. b[1][1]的值是5', 'D. 二维数组b的第一行有3个元素', 'A,C,D', NULL, 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (45, '类B是一个抽象类，类C是类B的非抽象子类，下列创建对象*1的语句中正确的是()', 'A. B * 1=new B()', 'B. B * 1= new C()', 'C. C * 1=new  C()', 'D. C * 1=new B()', 'B, C', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (46, '下面关于进程、线程的说法正确的是()', 'A. 进程是程序的一次动态执行过程，一个进程在其执行过程中，可以产生多个线程——————多线程，形成多条执行线索。', 'B. 线程是比进程更小的执行单位，是在一个进程中独立的控制流，即程序内部的控制流。线程本身不能自动运行，栖身于某个进程之中，由进程启动执行。', 'C. Java多线程的运行与平台相关。', 'D. 对于单处理器系统，多个线程分时间片获取CPU或其他系统资源来运行。对于多处理器系统，线程可以分配到多个处理器中，从而真正的并发执行多任务。', 'A,B,C,D', '', 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (47, '下面关于外部类和内部类成员的相互访问的规则中，正确的选项是()', 'A. 内部类可以直接访问外部类的成员', 'B. 外部类可以直接访问内部类的成员', 'C. 外部类不能访问内部类的成员', 'D. 外部类可通过创建内部类的是咧来访问内部类的成员', 'A,C', NULL, 1, 2, 0, NULL, 5);
INSERT INTO `t_question` VALUES (48, '下面正确声明一个一维数组的是()', 'A. String[] a', 'B. String a[]', 'C. char a[][]', 'D. String a[10]', 'A,B', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (49, '下面哪几项在编译时候，会出现错误提示()', 'A. int a=Integer.parseInt(abc789)', 'int a=(int)\'我\'', 'C. int a=int(\'我\')', 'D. int a=Integer.parseInt(\'a\')', 'A,,C,D', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (50, '下面关于Java语言中实例方法和类方法的说法，哪几项是对的()', 'A. 实例方法可以直接通过类名调用', 'B. 类方法可以直接通过类名调用', 'C. 实例方法可以操作实例变量也可以操作类变量', 'D. 类方法可以操作实例变量也可以操作类变量', 'B,C ', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (51, '下面关于Java语言说法正确的是()', 'A. Java语言是面向对象的、解释执行的网络编程语言。', 'B. Java语言具有可移植性，是与平台无关的编程语言。', 'C. Java语言可对内存垃圾自动收集', 'D. Java语言编程的程序虽然是\"一次编译，到处运行\"，但必须要有Java的运行环境。', 'A,B,C,D', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (52, '浏览器禁止Apple执行下列哪些操作()\r\n', 'A. 在运行时调用其他程序.', 'B. 文件读写操作\r\n', 'C. 装载动态链接库和调用库任何本地方法', 'D. 试图打开一个socket进行网络通信，但是所连接的主机并不是提供Apple的主机\r\n', 'A,B,C,D', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (53, '下面关于布局管理器说法正确的是()', 'A. 布局管理器用来管理组件放置在容器中的位置和大小。', 'B. 每个容器都有一个布局管理器', 'C. 使用布局管理器可以使Java生成的图形用户界面具有平台无关性。', 'D. 布局管理器LayoutManager本身是一个接口，通常使用的是实现了该接口的类', 'A,B,C,D\r\n', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (54, '下面哪些说法是正确的()', 'A. JAVA语言是真正的面向对象的语言，任何代码都是类的一部分', 'B. 运行java程序必须需要java运行环境的支持，列如需要java虚拟机的JVM', 'C. 使用Visual J++在windows下发的所有java程序可以不加修改的在Unix下运行，这是java程序\"一次编写，到处运行\"的特点决定的。', 'D. java语言的类加载器可以实现从互联网上加载javaa程序。', 'B,C,D', '', 1, 2, 0, '<null>', 5);
INSERT INTO `t_question` VALUES (55, '下面哪些说法是错误的()', 'A. 用New运算符来创建的对象，在JVM退出时才会被做垃圾回收。', 'B. 判断一个对象是否可以被垃圾回收的条件是否还有该对象的引用。', 'C. java函数的参数传递规定，所有的原始类型(如整数)和对象(使用new来创建的)都为地址传递\r\n', 'D. java函数支持重载，但函数必须至少有一个参数或返回值的类型不同或个数不同。', 'A,B,C,D', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (56, '下列是jsp作用域的通信对象得有()', 'A. Session', 'B. application', 'C. pageContext', 'D. cookie', 'A,B,C', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (57, '下面哪些不是java的简单数据类型()', 'A. short', 'B. Boolean', 'C. Double', 'D. float', 'B,C', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (58, '哪两个说明是正确的()', 'A. B类的构造器应该是public', 'B. B类的构造器应该是没有参数', 'C. B类的构造器应该调用this()', 'D. B类的构造器应该调用super()', 'B,D', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (59, '下列属于J2EE的体系是()', 'A. JSP', 'B. JAVA', 'C. Servlet', 'D. WebServlet', 'A, C', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (60, '下面关于继承的叙述哪些是正确的()', 'A. 在java中只允许单一继承', 'B. 在java中一个类只能实现一个', 'C. 在java中一个类不能同时继承一个类和实现一个接口', 'D. java的单一继承使代码更可靠。', 'A,D', '', 1, 2, 0, '', 5);
INSERT INTO `t_question` VALUES (61, 'java语言有哪些特点？', NULL, NULL, NULL, NULL, '简单性、面向对象、分布式、解释型、健壮、安全、与体系结构无关、可移植、高性能、多线程和动态执行。', '', 1, 5, 0, '', 15);
INSERT INTO `t_question` VALUES (62, 'Java编程规范?', NULL, NULL, NULL, NULL, '(1)有多个import语句时，先写java包，后写javax，最后写其他公司和自己定义的包。\r\n(2)命名规范:\r\n   包名中的字母小写。\r\n   类名、接口名中每个单词首字母大写。\r\n   方法名、变量名第一个单词首字母小写，后面单词首字母大写。\r\n   常量中每个字母大写。\r\n(3)适当保持缩进，便于阅读。\r\n(4)有一定的注释量(20%--50%)\r\n', '', 1, 5, 0, '15', 15);
INSERT INTO `t_question` VALUES (71, 'asdfjgiaodfgh', 'asdgas', 'asdfgha', 'asdfhasd', 'asdfghad', 'D', 'asdfhasdfh', 1, 1, 0, 'dgsf ', 5);

-- ----------------------------
-- Table structure for t_question_type
-- ----------------------------
DROP TABLE IF EXISTS `t_question_type`;
CREATE TABLE `t_question_type`  (
  `type_id` int(5) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(5) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_question_type
-- ----------------------------
INSERT INTO `t_question_type` VALUES (1, '单选题', 5, '每个题目只有一个正确选项');
INSERT INTO `t_question_type` VALUES (2, '多选题', 5, '每个题目至少有两个正确选项');
INSERT INTO `t_question_type` VALUES (3, '判断题', 5, '请判断对错');
INSERT INTO `t_question_type` VALUES (4, '填空题', 5, '请填入正确内容');
INSERT INTO `t_question_type` VALUES (5, '简答题', 5, '简要描述，字数在100-200字以内');
INSERT INTO `t_question_type` VALUES (6, '操作题', 5, '功能暂未实现');

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource`  (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resource_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `resource_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`resource_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_resource
-- ----------------------------
INSERT INTO `t_resource` VALUES (1, '系统管理', 'menu', 0, NULL);
INSERT INTO `t_resource` VALUES (2, '试题管理', 'menu', 0, NULL);
INSERT INTO `t_resource` VALUES (3, '考试管理', 'menu', 0, NULL);
INSERT INTO `t_resource` VALUES (4, '成绩管理', 'menu', 0, NULL);
INSERT INTO `t_resource` VALUES (5, '统计', 'menu', 0, NULL);
INSERT INTO `t_resource` VALUES (6, '用户管理', 'menu', 1, NULL);
INSERT INTO `t_resource` VALUES (7, '角色管理', 'menu', 1, NULL);
INSERT INTO `t_resource` VALUES (8, '试题管理', 'menu', 2, NULL);
INSERT INTO `t_resource` VALUES (9, '试题分类', 'menu', 2, NULL);
INSERT INTO `t_resource` VALUES (10, '试题导入', 'menu', 2, NULL);
INSERT INTO `t_resource` VALUES (11, '生成试卷', 'menu', 2, NULL);
INSERT INTO `t_resource` VALUES (12, '考试场次管理', 'menu', 3, NULL);
INSERT INTO `t_resource` VALUES (13, '判卷', 'menu', 3, NULL);
INSERT INTO `t_resource` VALUES (14, '学生历史成绩', 'menu', 5, NULL);
INSERT INTO `t_resource` VALUES (15, '学生平均成绩', 'menu', 5, NULL);
INSERT INTO `t_resource` VALUES (16, '学科平均成绩', 'menu', 5, NULL);
INSERT INTO `t_resource` VALUES (17, '试卷平均成绩', 'menu', 5, NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `role_id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '考生');
INSERT INTO `t_role` VALUES (2, '教师');
INSERT INTO `t_role` VALUES (3, '管理员');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pwd` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` int(2) NOT NULL DEFAULT 1,
  `user_state_id` int(2) NOT NULL DEFAULT 1,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('', '杰森', '1', 0, 1, 'jiesen.163.com', '1858566', NULL);
INSERT INTO `t_user` VALUES ('123', '123', '123', 2, 1, '123@qq.com', '1234567890123', NULL);
INSERT INTO `t_user` VALUES ('123512', '杰龙', '123', 1, 1, 'jl@163.com', '123456', '123456');
INSERT INTO `t_user` VALUES ('1235123', '娟娟', '123', 1, 1, 'jj@163.com', '123456', '测试');
INSERT INTO `t_user` VALUES ('123512312', '赵雯', '123', 0, 1, 'zhaowen@163.com', '123456', '111');
INSERT INTO `t_user` VALUES ('1235123451', '可可', '123', 2, 1, 'kk@163.com', '123456', '123456');
INSERT INTO `t_user` VALUES ('1235123451423', '张三', '123', 2, 1, 'zhangsan@163.com', '123456', NULL);
INSERT INTO `t_user` VALUES ('12351235', 'admin', '123', 3, 1, 'admin@163.com', '123456', '');
INSERT INTO `t_user` VALUES ('1235123512', '侧翼', '123', 1, 1, 'ceyi@163.com', '123456', 'cs');
INSERT INTO `t_user` VALUES ('12351235123', '赵四', '123', 1, 1, 'zhaosi@163.com', '123456', '11');
INSERT INTO `t_user` VALUES ('123512352', '弘毅', '123', 2, 1, 'hy@163.com', '123456', '123456');
INSERT INTO `t_user` VALUES ('147525252', '月下皇冠', '54454554', 1, 1, '1.163.com', '45555', NULL);
INSERT INTO `t_user` VALUES ('19', '123456', '123456', 1, 1, '123@qq.com', '123456', NULL);
INSERT INTO `t_user` VALUES ('20', ',zz123', ',zz123', 1, 1, '1244@qq.com', NULL, NULL);
INSERT INTO `t_user` VALUES ('21', ',zz123', ',zz123', 1, 1, '1244@qq.com', NULL, NULL);
INSERT INTO `t_user` VALUES ('22', ',ZZ123', ',zz123', 1, 1, '1244@qq.com', NULL, NULL);
INSERT INTO `t_user` VALUES ('22222222', '永江', '22222', 0, 1, 'yongjiang.163.com', '645654645', NULL);
INSERT INTO `t_user` VALUES ('23', ',zz123', ',zz123', 1, 1, '1244@qq.com', NULL, NULL);
INSERT INTO `t_user` VALUES ('24', 'zz123456', ',123', 1, 1, '123@qq.com', NULL, NULL);
INSERT INTO `t_user` VALUES ('520520', '小江江', '521', 1, 1, 'xiaojiangjiang@163.com', '123456', NULL);
INSERT INTO `t_user` VALUES ('521521', '小森森', '520', 2, 1, 'xiaosensen@162.com', '123456', NULL);
INSERT INTO `t_user` VALUES ('666666', '老闫丝滑', '6666666', 2, 1, '2.163.com', '6666666', NULL);
INSERT INTO `t_user` VALUES ('88888', '小霸王', '8888', 1, 1, '4.163.com', '888888', NULL);
INSERT INTO `t_user` VALUES ('9999', '旭旭宝宝', '9999', 1, 1, '3.163.com', '9999', NULL);

-- ----------------------------
-- Table structure for t_user_state
-- ----------------------------
DROP TABLE IF EXISTS `t_user_state`;
CREATE TABLE `t_user_state`  (
  `user_sate_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_state_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_sate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_state
-- ----------------------------
INSERT INTO `t_user_state` VALUES (1, '正常');
INSERT INTO `t_user_state` VALUES (2, '黑名单');

SET FOREIGN_KEY_CHECKS = 1;
