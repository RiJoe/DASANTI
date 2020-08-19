/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.163.129_3306
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 192.168.163.133:3306
 Source Schema         : risk_assessment

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 19/08/2020 10:25:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for concrete_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `concrete_evaluation`;
CREATE TABLE `concrete_evaluation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `influence_factor_id` int(11) NULL DEFAULT NULL,
  `determine_factor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(255) NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of concrete_evaluation
-- ----------------------------
INSERT INTO `concrete_evaluation` VALUES (101, 2, 1, 1, '三级', 5, 'http://localhost:9000/uploadFile/2cee3be4-d030-4811-a74f-bcb2013565f4202003102052080556.jpg', NULL);
INSERT INTO `concrete_evaluation` VALUES (102, 2, 1, 2, '压力容器', 7, 'http://localhost:9000/uploadFile/67a4aa47-950f-41ce-8b0e-de7b9f18ee65dingdangmao.jpg', NULL);
INSERT INTO `concrete_evaluation` VALUES (103, 2, 1, 3, '冲剪压机械', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (104, 2, 1, 4, '无', 1, '', '');
INSERT INTO `concrete_evaluation` VALUES (105, 2, 1, 5, '有限空间', 5, 'http://localhost:9000/uploadFile/082e885d-c574-4caa-87eb-9a9832b3089eIMGL7498.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (106, 2, 1, 6, '有预案无演练', 1, 'http://localhost:9000/uploadFile/1fcf821c-167a-4ac2-8615-30d686141e0bIMGL7506.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (107, 2, 2, 7, '达标但记录不完善', 2, 'http://localhost:9000/uploadFile/ad6fb960-17a2-4344-ae81-bf0cba7ca392IMGL7483.JPG,http://localhost:9000/uploadFile/27bf4b10-5da9-44d8-ae4b-c396869ccfceIMGL7478.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (108, 2, 2, 8, '有自查自报，但未上传', 2, 'http://localhost:9000/uploadFile/7808ea89-a989-4c04-9f1c-370a0539e69fIMGL7496.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (109, 2, 2, 9, '三级培训完善', 1, 'http://localhost:9000/uploadFile/6b18be8d-9140-4541-9d19-80f2ceda6c34IMGL7488.JPG,http://localhost:9000/uploadFile/678adba3-b2ad-493b-8d47-224af2e5e361IMGL7507.JPG,http://127.0.0.1:8089/4beb495c-5c73-4d5b-842d-21eceec317cbIMGL7518.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (110, 2, 3, 10, '<30', 1, '', '11');
INSERT INTO `concrete_evaluation` VALUES (122, 5, 1, 1, '三级', 5, 'http://localhost:9000/uploadFile/05c67aad-77c2-4fb6-9a68-298f2dd10dc6dingdangmao.png', NULL);
INSERT INTO `concrete_evaluation` VALUES (123, 5, 1, 2, '压力容器', 7, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (124, 5, 1, 3, '冲剪压机械', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (125, 5, 1, 4, '危险化学品', 5, '', '');
INSERT INTO `concrete_evaluation` VALUES (126, 5, 1, 5, '铝镁粉尘', 10, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (127, 5, 1, 6, '有预案有演练', -2, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (128, 5, 2, 7, '达标但记录不完善', 2, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (129, 5, 2, 8, '有自查自报并上传到系统', 1, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (130, 5, 2, 9, '有三级培训但不完善', 2, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (131, 5, 3, 10, '<30', 1, '', '11');
INSERT INTO `concrete_evaluation` VALUES (132, 6, 1, 1, '三级', 5, 'http://127.0.0.1:9000/uploadFile/fea8085d-0790-4427-bcfc-f6a061a1c34bIMGL7505.JPG,http://127.0.0.1:9000/uploadFile/08ac08a8-4780-4915-878e-c602673b7648IMGL7509.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (133, 6, 1, 2, '压力容器', 7, 'http://127.0.0.1:9000/uploadFile/26ff2e49-ec86-4feb-be71-fb8bf73ee2bdIMGL7498.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (134, 6, 1, 3, '砂光机', 5, 'http://127.0.0.1:9000/uploadFile/e31eb7e3-165c-4183-83c9-179c092fd08bIMGL7571.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (135, 6, 1, 3, '冲剪压机械', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (136, 6, 1, 4, '无', 1, '', '');
INSERT INTO `concrete_evaluation` VALUES (137, 6, 1, 5, '涉氨', 5, 'http://127.0.0.1:9000/uploadFile/1d8a9630-74c7-4b17-bf01-25aad109d7c3IMGL7599.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (138, 6, 1, 5, '无', 1, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (139, 6, 1, 5, '涂层烘干', 5, 'http://127.0.0.1:9000/uploadFile/89a324cd-c045-46cc-8536-381dcd53c44dIMGL7499.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (140, 6, 1, 6, '有预案无演练', 1, 'http://127.0.0.1:9000/uploadFile/043d9c35-7d5e-4a72-a257-7b616306460cIMGL7489.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (141, 6, 2, 7, '达标且有效运行', 1, 'http://127.0.0.1:9000/uploadFile/3361d58b-f253-45da-9b30-4abb57f347c1IMGL7511.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (142, 6, 2, 8, '未进行自查自报', 5, 'http://127.0.0.1:9000/uploadFile/dde4ad30-bd78-40d9-95ca-735030e15755IMGL7490.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (143, 6, 2, 9, '有三级培训但不完善', 2, 'http://127.0.0.1:9000/uploadFile/c39cb26c-8d0a-4d7e-b713-0f3d3279ac3bIMGL7489.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (144, 6, 3, 10, '<30', 1, '', '70');
INSERT INTO `concrete_evaluation` VALUES (145, 7, 1, 1, '三级', 5, 'http://127.0.0.1:9000/uploadFile/6135ada8-b77b-49b4-9a7d-da1c96411729IMGL7480.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (146, 7, 1, 2, '锅炉', 10, 'http://127.0.0.1:9000/uploadFile/19178644-e9d0-4e3e-996e-0fcdde0f12f9IMGL7542.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (147, 7, 1, 2, '压力容器', 7, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (148, 7, 1, 2, '其他', 4, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (149, 7, 1, 3, '砂光机', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (150, 7, 1, 3, '冲剪压机械', 5, 'http://127.0.0.1:9000/uploadFile/76b7e4c2-b7c1-47bf-9c37-97b50c7a6908IMGL7519.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (151, 7, 1, 4, '危险化学品', 5, 'http://127.0.0.1:9000/uploadFile/e4b6f1cd-13f1-43fd-a463-c6b87bd984ebIMGL7483.JPG', '钠');
INSERT INTO `concrete_evaluation` VALUES (152, 7, 1, 5, '铝镁粉尘', 10, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (153, 7, 1, 5, '木粉尘', 7, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (154, 7, 1, 5, '涉氨', 5, 'http://127.0.0.1:9000/uploadFile/f67d92fa-53d9-4770-9331-6367957eaf0dIMGL7501.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (155, 7, 1, 5, '喷漆喷油', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (156, 7, 1, 6, '无预案无演练', 3, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (157, 7, 2, 7, '未达标', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (158, 7, 2, 8, '有自查自报并上传到系统', 1, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (159, 7, 2, 9, '无三级培训', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (160, 7, 3, 10, '100～300', 7, '', '70');
INSERT INTO `concrete_evaluation` VALUES (161, 8, 1, 1, '一级', 10, 'http://127.0.0.1:9000/uploadFile/c132c291-4283-4c7a-8908-46e2a7b17491IMGL7483.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (162, 8, 1, 2, '锅炉', 10, 'http://127.0.0.1:9000/uploadFile/7e5fd4e4-1452-4ebf-93eb-e714025c2306IMGL7488.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (163, 8, 1, 3, '洁净车间', 7, 'http://127.0.0.1:9000/uploadFile/e7c2e69c-5aa0-4ee5-9f35-01959b0c29f7IMGL7509.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (164, 8, 1, 4, '危险化学品', 5, 'http://127.0.0.1:9000/uploadFile/8e07b83a-63ab-4175-8918-ab98e8e1b9eaIMGL7498.JPG', '');
INSERT INTO `concrete_evaluation` VALUES (165, 8, 1, 5, '铝镁粉尘', 10, 'http://127.0.0.1:9000/uploadFile/2db790d2-c066-4d0f-971d-cd2f17b89e9aIMGL7483.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (166, 8, 1, 6, '有预案有演练', -2, 'http://127.0.0.1:9000/uploadFile/3158b8e2-4c3a-4704-b6b9-4b1f0b5bccfdIMGL7483.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (167, 8, 2, 7, '达标且有效运行', 1, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (168, 8, 2, 8, '未进行自查自报', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (169, 8, 2, 9, '三级培训完善', 1, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (170, 8, 3, 10, '30～100', 4, '', '70');
INSERT INTO `concrete_evaluation` VALUES (171, 9, 1, 1, '二级', 7, 'http://127.0.0.1:9000/uploadFile/c7c75d5e-9f70-4b05-951f-613d7a29b6d8IMGL7492.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (172, 9, 1, 2, '其他', 4, 'http://127.0.0.1:9000/uploadFile/b0a4af16-bc95-4f87-b740-f8de915ba5c2IMGL7521.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (173, 9, 1, 2, '压力容器', 7, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (174, 9, 1, 3, '砂光机', 5, 'http://127.0.0.1:9000/uploadFile/9c455c29-298a-4f2a-a3b3-def1c266a8a8IMGL7540.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (175, 9, 1, 4, '无', 1, '', '');
INSERT INTO `concrete_evaluation` VALUES (176, 9, 1, 5, '喷漆喷油', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (177, 9, 1, 6, '有预案无演练', 1, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (178, 9, 2, 7, '达标但记录不完善', 2, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (179, 9, 2, 8, '未进行自查自报', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (180, 9, 2, 9, '无三级培训', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (181, 9, 3, 10, '<30', 1, '', '22');
INSERT INTO `concrete_evaluation` VALUES (182, 10, 1, 1, '二级', 7, 'http://127.0.0.1:9000/uploadFile/638708d2-4b55-4a6d-9c1d-46ffcb3a0236IMGL7480.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (183, 10, 1, 2, '锅炉', 10, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (184, 10, 1, 2, '其他', 4, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (185, 10, 1, 3, '洁净车间', 7, 'http://127.0.0.1:9000/uploadFile/111af49c-4354-4485-a552-fd03fce9171aIMGL7498.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (186, 10, 1, 4, '无', 1, '', '');
INSERT INTO `concrete_evaluation` VALUES (187, 10, 1, 5, '涉氨', 5, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (188, 10, 1, 6, '无预案无演练', 3, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (189, 10, 2, 7, '达标但记录不完善', 2, 'http://127.0.0.1:9000/uploadFile/99e94a20-c60a-4727-867a-b51e5d1c0d42IMGL7483.JPG', NULL);
INSERT INTO `concrete_evaluation` VALUES (190, 10, 2, 8, '有自查自报，但未上传', 2, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (191, 10, 2, 9, '有三级培训但不完善', 2, '', NULL);
INSERT INTO `concrete_evaluation` VALUES (192, 10, 3, 10, '30～100', 4, '', '70');

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `principal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fill_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fill_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employee_number` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `risk_score` int(11) NULL DEFAULT NULL,
  `strengthen_training` int(11) NULL DEFAULT NULL,
  `major_source_of_danger` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_risk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprise
-- ----------------------------
INSERT INTO `enterprise` VALUES (2, '深圳中海信', 'ds', 'mark', '13138265515', 300, '深圳大三体安全科技有限公司', '114.1237591527306', '22.655737865535993', '无', 120, 232, '硫酸', '喷油');
INSERT INTO `enterprise` VALUES (5, 'ds', '', '', '', NULL, '', '', '', '无', 150, NULL, '', '');
INSERT INTO `enterprise` VALUES (6, '广东', 'chirs', 'chirs', '19845125451', 300, '深圳布吉街', '114.1174630192438', '22.625994637830967', '无', 280, 232, '硫酸', '喷油');
INSERT INTO `enterprise` VALUES (7, '深圳大三体安全科技有限公司', 'joe', 'joe', '16881551551', 1000, '福城', '114.26228693520909', '22.71565981532289', '无', 5467, 232, '硫酸', '喷油');
INSERT INTO `enterprise` VALUES (8, 'Google', 'miss', 'joe', '16886886888', 30000, '龙华', '114.04852876121132', '22.75759664922203', '无', 1120, 333, '硫酸', '喷油');
INSERT INTO `enterprise` VALUES (9, '华为', 'mark', 'mark', '19845125451', 1000, '深圳甘坑新村', '114.1131079443023', '22.663101701837288', '无', 360, 333, '硫酸', '喷油');
INSERT INTO `enterprise` VALUES (10, '北京科技', 'chirs', 'mark', '19845125451', 1000, '深圳观湖街道办', '114.079244183741', '22.69930893327341', '无', 888, 232, '硫酸', '喷油');

-- ----------------------------
-- Table structure for enterprise_inform
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_inform`;
CREATE TABLE `enterprise_inform`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_type` int(11) NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `principal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `informant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `informant_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_number` int(11) NULL DEFAULT NULL,
  `risk_value` int(11) NULL DEFAULT NULL,
  `measure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major_danger` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major_risk_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprise_inform
-- ----------------------------
INSERT INTO `enterprise_inform` VALUES (118, 64, '深圳大三体安全科技有限公司', 'mark', '深圳中海信创新产业城', 'joe', '13035810522', '', '', 500, 600, '200', '', '');
INSERT INTO `enterprise_inform` VALUES (119, 65, 'Google', 'mark', '深圳北站', 'joe', '13035810522', '', '', 500, 600, '200', '', '');
INSERT INTO `enterprise_inform` VALUES (120, 66, '华为', 'Joe', '深圳北站', 'joe', '13035810522', '', '', 500, 400, '200', '', '');

-- ----------------------------
-- Table structure for factor_score
-- ----------------------------
DROP TABLE IF EXISTS `factor_score`;
CREATE TABLE `factor_score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of factor_score
-- ----------------------------
INSERT INTO `factor_score` VALUES (1, '一级', 10);
INSERT INTO `factor_score` VALUES (2, '二级', 7);
INSERT INTO `factor_score` VALUES (3, '三级', 5);
INSERT INTO `factor_score` VALUES (4, '四级', 3);
INSERT INTO `factor_score` VALUES (5, '否', 1);
INSERT INTO `factor_score` VALUES (6, '锅炉', 10);
INSERT INTO `factor_score` VALUES (7, '压力容器', 7);
INSERT INTO `factor_score` VALUES (8, '其他', 4);
INSERT INTO `factor_score` VALUES (9, '无', 1);
INSERT INTO `factor_score` VALUES (10, '洁净车间', 7);
INSERT INTO `factor_score` VALUES (11, '砂光机', 5);
INSERT INTO `factor_score` VALUES (12, '烤箱', 3);
INSERT INTO `factor_score` VALUES (14, '危险化学品', 5);
INSERT INTO `factor_score` VALUES (16, '铝镁粉尘', 10);
INSERT INTO `factor_score` VALUES (17, '木粉尘', 7);
INSERT INTO `factor_score` VALUES (18, '涉氨', 5);
INSERT INTO `factor_score` VALUES (19, '有限空间', 5);
INSERT INTO `factor_score` VALUES (20, '喷漆喷油', 5);
INSERT INTO `factor_score` VALUES (21, '涂层烘干', 5);
INSERT INTO `factor_score` VALUES (22, '锂离子电池', 5);
INSERT INTO `factor_score` VALUES (23, '高温熔融', 5);
INSERT INTO `factor_score` VALUES (24, '使用排风管道', 3);
INSERT INTO `factor_score` VALUES (26, '无预案无演练', 3);
INSERT INTO `factor_score` VALUES (27, '有预案无演练', 1);
INSERT INTO `factor_score` VALUES (28, '有预案有演练', -2);
INSERT INTO `factor_score` VALUES (29, '未达标', 5);
INSERT INTO `factor_score` VALUES (30, '达标但记录不完善', 2);
INSERT INTO `factor_score` VALUES (31, '达标且有效运行', 1);
INSERT INTO `factor_score` VALUES (32, '有自查自报并上传到系统', 1);
INSERT INTO `factor_score` VALUES (33, '有自查自报，但未上传', 2);
INSERT INTO `factor_score` VALUES (34, '未进行自查自报', 5);
INSERT INTO `factor_score` VALUES (35, '无三级培训', 5);
INSERT INTO `factor_score` VALUES (36, '有三级培训但不完善', 2);
INSERT INTO `factor_score` VALUES (37, '三级培训完善', 1);
INSERT INTO `factor_score` VALUES (38, '≥300', 10);
INSERT INTO `factor_score` VALUES (39, '100～300', 7);
INSERT INTO `factor_score` VALUES (40, '30～100', 4);
INSERT INTO `factor_score` VALUES (41, '<30', 1);
INSERT INTO `factor_score` VALUES (44, '冲剪压机械', 5);

-- ----------------------------
-- Table structure for influence_factor_details
-- ----------------------------
DROP TABLE IF EXISTS `influence_factor_details`;
CREATE TABLE `influence_factor_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `determine_factor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of influence_factor_details
-- ----------------------------
INSERT INTO `influence_factor_details` VALUES (137, 118, 1, '二级', 7, 'http://127.0.0.1:7000/uploadFile/1597651915199003.jpg');
INSERT INTO `influence_factor_details` VALUES (138, 118, 1, '其他（电梯）', 4, '');
INSERT INTO `influence_factor_details` VALUES (139, 118, 1, '砂光机', 5, '');
INSERT INTO `influence_factor_details` VALUES (140, 118, 1, '冲剪压机械', 5, '');
INSERT INTO `influence_factor_details` VALUES (141, 118, 1, '危险化学品名称（闪点）、最大存量、MSDS', 5, '');
INSERT INTO `influence_factor_details` VALUES (142, 118, 1, '有限空间', 5, '');
INSERT INTO `influence_factor_details` VALUES (143, 118, 1, '喷漆喷油', 5, '');
INSERT INTO `influence_factor_details` VALUES (144, 118, 1, '有预案有演练', -2, 'http://127.0.0.1:7000/uploadFile/1597651945404dingdangmao.jpg,http://127.0.0.1:7000/uploadFile/1597651939688003.jpg');
INSERT INTO `influence_factor_details` VALUES (145, 118, 2, '达标但记录不完善', 2, '');
INSERT INTO `influence_factor_details` VALUES (146, 118, 2, '有自查自报，但未上传', 2, '');
INSERT INTO `influence_factor_details` VALUES (147, 118, 2, '无三级培训', 5, '');
INSERT INTO `influence_factor_details` VALUES (148, 118, 3, '100～300', 7, '');
INSERT INTO `influence_factor_details` VALUES (149, 119, 1, '基本满足', 2, '');
INSERT INTO `influence_factor_details` VALUES (150, 119, 1, '框架', 1, '');
INSERT INTO `influence_factor_details` VALUES (151, 119, 1, '可燃', 4, '');
INSERT INTO `influence_factor_details` VALUES (152, 119, 1, '较少', 2, '');
INSERT INTO `influence_factor_details` VALUES (153, 119, 1, '大部分占用', 4, '');
INSERT INTO `influence_factor_details` VALUES (154, 119, 1, '有室内外消防栓系统', 1, '');
INSERT INTO `influence_factor_details` VALUES (155, 119, 1, '无消防救援队', 4, '');
INSERT INTO `influence_factor_details` VALUES (156, 119, 2, '人员证书不全', 2, '');
INSERT INTO `influence_factor_details` VALUES (157, 119, 2, '安全防护设备设施配备不到位等', 4, '');
INSERT INTO `influence_factor_details` VALUES (158, 119, 2, '无电动自行车集中充电站', 4, '');
INSERT INTO `influence_factor_details` VALUES (159, 119, 2, '“三小”场所存在“三合一”现象', 4, '');
INSERT INTO `influence_factor_details` VALUES (160, 119, 2, '出租屋有人员管理（门禁、人员登记），且有安全宣传栏', 1, '');
INSERT INTO `influence_factor_details` VALUES (161, 119, 3, '高：P≧20000人/km2', 4, '');
INSERT INTO `influence_factor_details` VALUES (162, 119, 3, '外来人员 75%-50%', 6, '');
INSERT INTO `influence_factor_details` VALUES (163, 120, 1, '大于100米小于等于150米', 6, '');
INSERT INTO `influence_factor_details` VALUES (164, 120, 1, '宿舍、公寓建筑', 3, '');
INSERT INTO `influence_factor_details` VALUES (165, 120, 1, '可燃', 6, '');
INSERT INTO `influence_factor_details` VALUES (166, 120, 1, '多', 6, '');
INSERT INTO `influence_factor_details` VALUES (167, 120, 1, '无预案无演练', 3, '');
INSERT INTO `influence_factor_details` VALUES (168, 120, 2, '人员证书不全，且员工未经三级教育培训上岗', 5, '');
INSERT INTO `influence_factor_details` VALUES (169, 120, 2, '安全防护设备设施配备不到位等', 6, '');
INSERT INTO `influence_factor_details` VALUES (170, 120, 2, '作业环境不规范，无隐患自查自报及整改制度等', 6, '');
INSERT INTO `influence_factor_details` VALUES (171, 120, 2, '未定期进行安全宣传', 2, '');
INSERT INTO `influence_factor_details` VALUES (172, 120, 3, '高', 6, '');

-- ----------------------------
-- Table structure for input_message
-- ----------------------------
DROP TABLE IF EXISTS `input_message`;
CREATE TABLE `input_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `influence_factor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `determine_factor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 288 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_message
-- ----------------------------
INSERT INTO `input_message` VALUES (163, 64, 1, '重大危险源', '一级', 10, '2020年观湖街道工业企业点位风险评估表', '一级图片');
INSERT INTO `input_message` VALUES (164, 64, 1, '重大危险源', '二级', 7, '2020年观湖街道工业企业点位风险评估表', '二级图片');
INSERT INTO `input_message` VALUES (165, 64, 1, '重大危险源', '三级', 5, '2020年观湖街道工业企业点位风险评估表', '三级图片');
INSERT INTO `input_message` VALUES (166, 64, 1, '重大危险源', '四级', 3, '2020年观湖街道工业企业点位风险评估表', '四级图片');
INSERT INTO `input_message` VALUES (167, 64, 1, '重大危险源', '否', 1, '2020年观湖街道工业企业点位风险评估表', '否图片');
INSERT INTO `input_message` VALUES (168, 64, 1, '特种设备', '锅炉', 10, '2020年观湖街道工业企业点位风险评估表', '锅炉图片');
INSERT INTO `input_message` VALUES (169, 64, 1, '特种设备', '压力容器', 7, '2020年观湖街道工业企业点位风险评估表', '压力容器图片');
INSERT INTO `input_message` VALUES (170, 64, 1, '特种设备', '其他（电梯）', 4, '2020年观湖街道工业企业点位风险评估表', '其他（电梯）图片');
INSERT INTO `input_message` VALUES (171, 64, 1, '特种设备', '无', 1, '2020年观湖街道工业企业点位风险评估表', '无图片');
INSERT INTO `input_message` VALUES (172, 64, 1, '危险设备、设施', '洁净车间', 7, '2020年观湖街道工业企业点位风险评估表', '洁净车间图片');
INSERT INTO `input_message` VALUES (173, 64, 1, '危险设备、设施', '砂光机', 5, '2020年观湖街道工业企业点位风险评估表', '砂光机图片');
INSERT INTO `input_message` VALUES (174, 64, 1, '危险设备、设施', '冲剪压机械', 5, '2020年观湖街道工业企业点位风险评估表', '冲剪压机械图片');
INSERT INTO `input_message` VALUES (175, 64, 1, '危险设备、设施', '烤箱', 3, '2020年观湖街道工业企业点位风险评估表', '烤箱图片');
INSERT INTO `input_message` VALUES (176, 64, 1, '危险设备、设施', '无', 1, '2020年观湖街道工业企业点位风险评估表', '无图片');
INSERT INTO `input_message` VALUES (177, 64, 1, '危险化学品', '危险化学品名称（闪点）、最大存量、MSDS', 5, '2020年观湖街道工业企业点位风险评估表', '危险化学品名称（闪点）、最大存量、MSDS图片');
INSERT INTO `input_message` VALUES (178, 64, 1, '危险化学品', '无', 1, '2020年观湖街道工业企业点位风险评估表', '无图片');
INSERT INTO `input_message` VALUES (179, 64, 1, '危险工艺', '铝镁粉尘', 10, '2020年观湖街道工业企业点位风险评估表', '铝镁粉尘图片');
INSERT INTO `input_message` VALUES (180, 64, 1, '危险工艺', '其他粉尘', 7, '2020年观湖街道工业企业点位风险评估表', '其他粉尘图片');
INSERT INTO `input_message` VALUES (181, 64, 1, '危险工艺', '涉氨', 5, '2020年观湖街道工业企业点位风险评估表', '涉氨图片');
INSERT INTO `input_message` VALUES (182, 64, 1, '危险工艺', '有限空间', 5, '2020年观湖街道工业企业点位风险评估表', '有限空间图片');
INSERT INTO `input_message` VALUES (183, 64, 1, '危险工艺', '喷漆喷油', 5, '2020年观湖街道工业企业点位风险评估表', '喷漆喷油图片');
INSERT INTO `input_message` VALUES (184, 64, 1, '危险工艺', '涂层烘干', 5, '2020年观湖街道工业企业点位风险评估表', '涂层烘干图片');
INSERT INTO `input_message` VALUES (185, 64, 1, '危险工艺', '锂离子电池', 5, '2020年观湖街道工业企业点位风险评估表', '锂离子电池图片');
INSERT INTO `input_message` VALUES (186, 64, 1, '危险工艺', '高温熔融', 5, '2020年观湖街道工业企业点位风险评估表', '高温熔融图片');
INSERT INTO `input_message` VALUES (187, 64, 1, '危险工艺', '使用排风管道', 3, '2020年观湖街道工业企业点位风险评估表', '使用排风管道图片');
INSERT INTO `input_message` VALUES (188, 64, 1, '危险工艺', '无', 1, '2020年观湖街道工业企业点位风险评估表', '无图片');
INSERT INTO `input_message` VALUES (189, 64, 1, '应急反应', '无预案无演练', 3, '2020年观湖街道工业企业点位风险评估表', '无预案无演练图片');
INSERT INTO `input_message` VALUES (190, 64, 1, '应急反应', '有预案无演练', 1, '2020年观湖街道工业企业点位风险评估表', '有预案无演练图片');
INSERT INTO `input_message` VALUES (191, 64, 1, '应急反应', '有预案有演练', -2, '2020年观湖街道工业企业点位风险评估表', '有预案有演练图片');
INSERT INTO `input_message` VALUES (192, 64, 2, '安全生产标准化', '未达标', 5, '2020年观湖街道工业企业点位风险评估表', '未达标图片');
INSERT INTO `input_message` VALUES (193, 64, 2, '安全生产标准化', '达标但记录不完善', 2, '2020年观湖街道工业企业点位风险评估表', '达标但记录不完善图片');
INSERT INTO `input_message` VALUES (194, 64, 2, '安全生产标准化', '达标且有效运行', 1, '2020年观湖街道工业企业点位风险评估表', '达标且有效运行图片');
INSERT INTO `input_message` VALUES (195, 64, 2, '隐患自查自报', '有自查自报并上传到系统', 1, '2020年观湖街道工业企业点位风险评估表', '有自查自报并上传到系统图片');
INSERT INTO `input_message` VALUES (196, 64, 2, '隐患自查自报', '有自查自报，但未上传', 2, '2020年观湖街道工业企业点位风险评估表', '有自查自报，但未上传图片');
INSERT INTO `input_message` VALUES (197, 64, 2, '隐患自查自报', '未进行自查自报', 5, '2020年观湖街道工业企业点位风险评估表', '未进行自查自报图片');
INSERT INTO `input_message` VALUES (198, 64, 2, '安全教育', '无三级培训', 5, '2020年观湖街道工业企业点位风险评估表', '无三级培训图片');
INSERT INTO `input_message` VALUES (199, 64, 2, '安全教育', '有三级培训但不完善', 2, '2020年观湖街道工业企业点位风险评估表', '有三级培训但不完善图片');
INSERT INTO `input_message` VALUES (200, 64, 2, '安全教育', '三级培训完善', 1, '2020年观湖街道工业企业点位风险评估表', '三级培训完善图片');
INSERT INTO `input_message` VALUES (201, 64, 3, '从业人数（每班）', '≥300', 10, '2020年观湖街道工业企业点位风险评估表', '≥300图片');
INSERT INTO `input_message` VALUES (202, 64, 3, '从业人数（每班）', '100～300', 7, '2020年观湖街道工业企业点位风险评估表', '100～300图片');
INSERT INTO `input_message` VALUES (203, 64, 3, '从业人数（每班）', '30～100', 4, '2020年观湖街道工业企业点位风险评估表', '30～100图片');
INSERT INTO `input_message` VALUES (204, 64, 3, '从业人数（每班）', '<30', 1, '2020年观湖街道工业企业点位风险评估表', '<30图片');
INSERT INTO `input_message` VALUES (205, 65, 1, '防火间距情况', '满足', 1, '2020年观湖街道城中村点位风险评估表', '满足图片');
INSERT INTO `input_message` VALUES (206, 65, 1, '防火间距情况', '基本满足', 2, '2020年观湖街道城中村点位风险评估表', '基本满足图片');
INSERT INTO `input_message` VALUES (207, 65, 1, '防火间距情况', '不满足', 4, '2020年观湖街道城中村点位风险评估表', '不满足图片');
INSERT INTO `input_message` VALUES (208, 65, 1, '主要房屋建筑类型', '框架', 1, '2020年观湖街道城中村点位风险评估表', '框架图片');
INSERT INTO `input_message` VALUES (209, 65, 1, '主要房屋建筑类型', '砖混', 2, '2020年观湖街道城中村点位风险评估表', '砖混图片');
INSERT INTO `input_message` VALUES (210, 65, 1, '主要房屋建筑类型', '砖瓦木制及违建', 4, '2020年观湖街道城中村点位风险评估表', '砖瓦木制及违建图片');
INSERT INTO `input_message` VALUES (211, 65, 1, '可燃物燃烧性能', '易燃', 8, '2020年观湖街道城中村点位风险评估表', '易燃图片');
INSERT INTO `input_message` VALUES (212, 65, 1, '可燃物燃烧性能', '可燃', 4, '2020年观湖街道城中村点位风险评估表', '可燃图片');
INSERT INTO `input_message` VALUES (213, 65, 1, '可燃物燃烧性能', '难燃', 2, '2020年观湖街道城中村点位风险评估表', '难燃图片');
INSERT INTO `input_message` VALUES (214, 65, 1, '可燃物燃烧性能', '不燃', 1, '2020年观湖街道城中村点位风险评估表', '不燃图片');
INSERT INTO `input_message` VALUES (215, 65, 1, '可燃物数量', '极多', 8, '2020年观湖街道城中村点位风险评估表', '极多图片');
INSERT INTO `input_message` VALUES (216, 65, 1, '可燃物数量', '多', 4, '2020年观湖街道城中村点位风险评估表', '多图片');
INSERT INTO `input_message` VALUES (217, 65, 1, '可燃物数量', '较少', 2, '2020年观湖街道城中村点位风险评估表', '较少图片');
INSERT INTO `input_message` VALUES (218, 65, 1, '可燃物数量', '少', 1, '2020年观湖街道城中村点位风险评估表', '少图片');
INSERT INTO `input_message` VALUES (219, 65, 1, '疏散条件', '大部分占用', 4, '2020年观湖街道城中村点位风险评估表', '大部分占用图片');
INSERT INTO `input_message` VALUES (220, 65, 1, '疏散条件', '少量占用', 2, '2020年观湖街道城中村点位风险评估表', '少量占用图片');
INSERT INTO `input_message` VALUES (221, 65, 1, '疏散条件', '无占用', 1, '2020年观湖街道城中村点位风险评估表', '无占用图片');
INSERT INTO `input_message` VALUES (222, 65, 1, '消防设备配备情况（1）', '有室内外消防栓系统', 1, '2020年观湖街道城中村点位风险评估表', '有室内外消防栓系统图片');
INSERT INTO `input_message` VALUES (223, 65, 1, '消防设备配备情况（1）', '无室内或外消防栓系统', 4, '2020年观湖街道城中村点位风险评估表', '无室内或外消防栓系统图片');
INSERT INTO `input_message` VALUES (224, 65, 1, '应急反应（1）', '有消防救援队', 1, '2020年观湖街道城中村点位风险评估表', '有消防救援队图片');
INSERT INTO `input_message` VALUES (225, 65, 1, '应急反应（1）', '无消防救援队', 4, '2020年观湖街道城中村点位风险评估表', '无消防救援队图片');
INSERT INTO `input_message` VALUES (226, 65, 1, '应急反应（2）', '无预案无演练', 3, '2020年观湖街道城中村点位风险评估表', '无预案无演练图片');
INSERT INTO `input_message` VALUES (227, 65, 1, '应急反应（2）', '有预案无演练', 1, '2020年观湖街道城中村点位风险评估表', '有预案无演练图片');
INSERT INTO `input_message` VALUES (228, 65, 1, '应急反应（2）', '有预案有演练', -2, '2020年观湖街道城中村点位风险评估表', '有预案有演练图片');
INSERT INTO `input_message` VALUES (229, 65, 2, '人的因素', '人员未持证上岗', 4, '2020年观湖街道城中村点位风险评估表', '人员未持证上岗图片');
INSERT INTO `input_message` VALUES (230, 65, 2, '人的因素', '人员证书不全', 2, '2020年观湖街道城中村点位风险评估表', '人员证书不全图片');
INSERT INTO `input_message` VALUES (231, 65, 2, '人的因素', '人员证书齐全', 1, '2020年观湖街道城中村点位风险评估表', '人员证书齐全图片');
INSERT INTO `input_message` VALUES (232, 65, 2, '物的因素（1）', '安全防护设备设施配备不到位等', 4, '2020年观湖街道城中村点位风险评估表', '安全防护设备设施配备不到位等图片');
INSERT INTO `input_message` VALUES (233, 65, 2, '物的因素（1）', '无不合格情况', 1, '2020年观湖街道城中村点位风险评估表', '无不合格情况图片');
INSERT INTO `input_message` VALUES (234, 65, 2, '物的因素（2）', '无电动自行车集中充电站', 4, '2020年观湖街道城中村点位风险评估表', '无电动自行车集中充电站图片');
INSERT INTO `input_message` VALUES (235, 65, 2, '物的因素（2）', '有电动自行车集中充电站', 1, '2020年观湖街道城中村点位风险评估表', '有电动自行车集中充电站图片');
INSERT INTO `input_message` VALUES (236, 65, 2, '环境因素', '作业环境不规范，无隐患自查自报及整改制度等', 4, '2020年观湖街道城中村点位风险评估表', '作业环境不规范，无隐患自查自报及整改制度等图片');
INSERT INTO `input_message` VALUES (237, 65, 2, '环境因素', '无不合格情况', 1, '2020年观湖街道城中村点位风险评估表', '无不合格情况图片');
INSERT INTO `input_message` VALUES (238, 65, 2, '管理因素（1）', '“三小”场所存在“三合一”现象', 4, '2020年观湖街道城中村点位风险评估表', '“三小”场所存在“三合一”现象图片');
INSERT INTO `input_message` VALUES (239, 65, 2, '管理因素（1）', '不存在“三小”场所“三合一”现象', 1, '2020年观湖街道城中村点位风险评估表', '不存在“三小”场所“三合一”现象图片');
INSERT INTO `input_message` VALUES (240, 65, 2, '管理因素（2）', '出租屋无人员管理（门禁、人员登记），且无安全宣传栏', 3, '2020年观湖街道城中村点位风险评估表', '出租屋无人员管理（门禁、人员登记），且无安全宣传栏图片');
INSERT INTO `input_message` VALUES (241, 65, 2, '管理因素（2）', '出租屋无人员管理（门禁、人员登记），或无安全宣传栏', 2, '2020年观湖街道城中村点位风险评估表', '出租屋无人员管理（门禁、人员登记），或无安全宣传栏图片');
INSERT INTO `input_message` VALUES (242, 65, 2, '管理因素（2）', '出租屋有人员管理（门禁、人员登记），且有安全宣传栏', 1, '2020年观湖街道城中村点位风险评估表', '出租屋有人员管理（门禁、人员登记），且有安全宣传栏图片');
INSERT INTO `input_message` VALUES (243, 65, 3, '人员密度', '极高：P≧25000人/km2', 8, '2020年观湖街道城中村点位风险评估表', '极高：P≧25000人/km2图片');
INSERT INTO `input_message` VALUES (244, 65, 3, '人员密度', '高：P≧20000人/km2', 4, '2020年观湖街道城中村点位风险评估表', '高：P≧20000人/km2图片');
INSERT INTO `input_message` VALUES (245, 65, 3, '人员密度', '中：P≧10000人/km2', 2, '2020年观湖街道城中村点位风险评估表', '中：P≧10000人/km2图片');
INSERT INTO `input_message` VALUES (246, 65, 3, '人员密度', '低：P＜10000人/km2', 1, '2020年观湖街道城中村点位风险评估表', '低：P＜10000人/km2图片');
INSERT INTO `input_message` VALUES (247, 65, 3, '人员组成情况', '外来人员大于等于75%', 8, '2020年观湖街道城中村点位风险评估表', '外来人员大于等于75%图片');
INSERT INTO `input_message` VALUES (248, 65, 3, '人员组成情况', '外来人员 75%-50%', 6, '2020年观湖街道城中村点位风险评估表', '外来人员 75%-50%图片');
INSERT INTO `input_message` VALUES (249, 65, 3, '人员组成情况', '外来人员 50%-25%', 4, '2020年观湖街道城中村点位风险评估表', '外来人员 50%-25%图片');
INSERT INTO `input_message` VALUES (250, 65, 3, '人员组成情况', '外来人员 25%以下', 2, '2020年观湖街道城中村点位风险评估表', '外来人员 25%以下图片');
INSERT INTO `input_message` VALUES (251, 66, 1, '建筑高度', '大于100米小于等于150米', 6, '2020年观湖街道超高层建筑点位风险评估表', '大于100米小于等于150米图片');
INSERT INTO `input_message` VALUES (252, 66, 1, '建筑高度', '150米~250米以上', 8, '2020年观湖街道超高层建筑点位风险评估表', '150米~250米以上图片');
INSERT INTO `input_message` VALUES (253, 66, 1, '建筑高度', '250米以上', 10, '2020年观湖街道超高层建筑点位风险评估表', '250米以上图片');
INSERT INTO `input_message` VALUES (254, 66, 1, '建筑面积', '大于10000m2', 8, '2020年观湖街道超高层建筑点位风险评估表', '大于10000m2图片');
INSERT INTO `input_message` VALUES (255, 66, 1, '建筑面积', '小于等于10000m2', 3, '2020年观湖街道超高层建筑点位风险评估表', '小于等于10000m2图片');
INSERT INTO `input_message` VALUES (256, 66, 1, '建筑用途', '住宅（包括商业服务网点的住宅建筑）', 3, '2020年观湖街道超高层建筑点位风险评估表', '住宅（包括商业服务网点的住宅建筑）图片');
INSERT INTO `input_message` VALUES (257, 66, 1, '建筑用途', '宿舍、公寓建筑', 3, '2020年观湖街道超高层建筑点位风险评估表', '宿舍、公寓建筑图片');
INSERT INTO `input_message` VALUES (258, 66, 1, '建筑用途', '多功能组合建筑（三种功能及以上）', 5, '2020年观湖街道超高层建筑点位风险评估表', '多功能组合建筑（三种功能及以上）图片');
INSERT INTO `input_message` VALUES (259, 66, 1, '建筑用途', '医疗建筑、重要公共建筑', 7, '2020年观湖街道超高层建筑点位风险评估表', '医疗建筑、重要公共建筑图片');
INSERT INTO `input_message` VALUES (260, 66, 1, '建筑用途', '省级以上的广播电视和防灾指挥调度建筑、网局级和省级电力调度建筑', 8, '2020年观湖街道超高层建筑点位风险评估表', '省级以上的广播电视和防灾指挥调度建筑、网局级和省级电力调度建筑图片');
INSERT INTO `input_message` VALUES (261, 66, 1, '可燃物燃烧性能', '易燃', 10, '2020年观湖街道超高层建筑点位风险评估表', '易燃图片');
INSERT INTO `input_message` VALUES (262, 66, 1, '可燃物燃烧性能', '可燃', 6, '2020年观湖街道超高层建筑点位风险评估表', '可燃图片');
INSERT INTO `input_message` VALUES (263, 66, 1, '可燃物燃烧性能', '难燃', 3, '2020年观湖街道超高层建筑点位风险评估表', '难燃图片');
INSERT INTO `input_message` VALUES (264, 66, 1, '可燃物燃烧性能', '不燃', 1, '2020年观湖街道超高层建筑点位风险评估表', '不燃图片');
INSERT INTO `input_message` VALUES (265, 66, 1, '可燃物数量', '极多', 10, '2020年观湖街道超高层建筑点位风险评估表', '极多图片');
INSERT INTO `input_message` VALUES (266, 66, 1, '可燃物数量', '多', 6, '2020年观湖街道超高层建筑点位风险评估表', '多图片');
INSERT INTO `input_message` VALUES (267, 66, 1, '可燃物数量', '较少', 3, '2020年观湖街道超高层建筑点位风险评估表', '较少图片');
INSERT INTO `input_message` VALUES (268, 66, 1, '可燃物数量', '少', 1, '2020年观湖街道超高层建筑点位风险评估表', '少图片');
INSERT INTO `input_message` VALUES (269, 66, 1, '应急反应', '无预案无演练', 3, '2020年观湖街道超高层建筑点位风险评估表', '有预案无演练图片');
INSERT INTO `input_message` VALUES (270, 66, 1, '应急反应', '有预案无演练', 1, '2020年观湖街道超高层建筑点位风险评估表', '无预案无演练图片');
INSERT INTO `input_message` VALUES (271, 66, 1, '应急反应', '有预案有演练', -2, '2020年观湖街道超高层建筑点位风险评估表', '有预案有演练图片');
INSERT INTO `input_message` VALUES (272, 66, 2, '人的因素', '人员证书不全，且员工未经三级教育培训上岗', 5, '2020年观湖街道超高层建筑点位风险评估表', '人员证书不全，且员工未经三级教育培训上岗图片');
INSERT INTO `input_message` VALUES (273, 66, 2, '人的因素', '人员证书不全，或员工三级教育不完善', 2, '2020年观湖街道超高层建筑点位风险评估表', '人员证书不全，或员工三级教育不完善图片');
INSERT INTO `input_message` VALUES (274, 66, 2, '人的因素', '人员证书齐全，且三级教育记录完善', 1, '2020年观湖街道超高层建筑点位风险评估表', '人员证书齐全，且三级教育记录完善图片');
INSERT INTO `input_message` VALUES (275, 66, 2, '物的因素', '安全防护设备设施配备不到位等', 6, '2020年观湖街道超高层建筑点位风险评估表', '安全防护设备设施配备不到位等图片');
INSERT INTO `input_message` VALUES (276, 66, 2, '物的因素', '无不合格情况', 1, '2020年观湖街道超高层建筑点位风险评估表', '无不合格情况图片');
INSERT INTO `input_message` VALUES (277, 66, 2, '环境因素', '作业环境不规范，无隐患自查自报及整改制度等', 6, '2020年观湖街道超高层建筑点位风险评估表', '作业环境不规范，无隐患自查自报及整改制度等图片');
INSERT INTO `input_message` VALUES (278, 66, 2, '环境因素', '无不合格情况', 1, '2020年观湖街道超高层建筑点位风险评估表', '无不合格情况图片');
INSERT INTO `input_message` VALUES (279, 66, 2, '管理因素', '安全管理制度不健全', 5, '2020年观湖街道超高层建筑点位风险评估表', '安全管理制度不健全图片');
INSERT INTO `input_message` VALUES (280, 66, 2, '管理因素', '安全管理制度健全，但记录不完善', 2, '2020年观湖街道超高层建筑点位风险评估表', '安全管理制度健全，但记录不完善图片');
INSERT INTO `input_message` VALUES (281, 66, 2, '管理因素', '安全管理制度健全，且有效运行', 1, '2020年观湖街道超高层建筑点位风险评估表', '安全管理制度健全，且有效运行图片');
INSERT INTO `input_message` VALUES (282, 66, 2, '宣传教育', '未定期进行安全宣传', 2, '2020年观湖街道超高层建筑点位风险评估表', '未定期进行安全宣传图片');
INSERT INTO `input_message` VALUES (283, 66, 2, '宣传教育', '定期进行安全宣传', 1, '2020年观湖街道超高层建筑点位风险评估表', '定期进行安全宣传图片');
INSERT INTO `input_message` VALUES (284, 66, 3, '人员密度', '极高', 10, '2020年观湖街道超高层建筑点位风险评估表', '极高图片');
INSERT INTO `input_message` VALUES (285, 66, 3, '人员密度', '高', 6, '2020年观湖街道超高层建筑点位风险评估表', '高图片');
INSERT INTO `input_message` VALUES (286, 66, 3, '人员密度', '中', 3, '2020年观湖街道超高层建筑点位风险评估表', '中图片');
INSERT INTO `input_message` VALUES (287, 66, 3, '人员密度', '低', 1, '2020年观湖街道超高层建筑点位风险评估表', '低图片');

-- ----------------------------
-- Table structure for input_table
-- ----------------------------
DROP TABLE IF EXISTS `input_table`;
CREATE TABLE `input_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_table
-- ----------------------------
INSERT INTO `input_table` VALUES (64, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table` VALUES (65, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table` VALUES (66, '2020年观湖街道超高层建筑点位风险评估表');

-- ----------------------------
-- Table structure for input_table_details
-- ----------------------------
DROP TABLE IF EXISTS `input_table_details`;
CREATE TABLE `input_table_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NULL DEFAULT NULL,
  `influence_factor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_table_details
-- ----------------------------
INSERT INTO `input_table_details` VALUES (34, 64, '重大危险源', 1, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (35, 64, '特种设备', 1, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (36, 64, '危险设备、设施', 1, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (37, 64, '危险化学品', 1, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (38, 64, '危险工艺', 1, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (39, 64, '应急反应', 1, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (40, 64, '安全生产标准化', 2, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (41, 64, '隐患自查自报', 2, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (42, 64, '安全教育', 2, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (43, 64, '从业人数（每班）', 3, '2020年观湖街道工业企业点位风险评估表');
INSERT INTO `input_table_details` VALUES (44, 65, '防火间距情况', 1, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (45, 65, '主要房屋建筑类型', 1, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (46, 65, '可燃物燃烧性能', 1, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (47, 65, '可燃物数量', 1, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (48, 65, '疏散条件', 1, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (49, 65, '消防设备配备情况（1）', 1, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (50, 65, '应急反应（1）', 1, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (51, 65, '人的因素', 2, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (52, 65, '物的因素（1）', 2, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (53, 65, '物的因素（2）', 2, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (54, 65, '管理因素（1）', 2, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (55, 65, '管理因素（2）', 2, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (56, 65, '人员密度', 3, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (57, 65, '人员组成情况', 3, '2020年观湖街道城中村点位风险评估表');
INSERT INTO `input_table_details` VALUES (58, 66, '建筑高度', 1, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (59, 66, '建筑用途', 1, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (60, 66, '可燃物燃烧性能', 1, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (61, 66, '可燃物数量', 1, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (62, 66, '应急反应', 1, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (63, 66, '人的因素', 2, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (64, 66, '物的因素', 2, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (65, 66, '环境因素', 2, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (66, 66, '宣传教育', 2, '2020年观湖街道超高层建筑点位风险评估表');
INSERT INTO `input_table_details` VALUES (67, 66, '人员密度', 3, '2020年观湖街道超高层建筑点位风险评估表');

-- ----------------------------
-- Table structure for other_influence
-- ----------------------------
DROP TABLE IF EXISTS `other_influence`;
CREATE TABLE `other_influence`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NULL DEFAULT NULL,
  `valuation_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major_risk_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `judge_l` int(11) NULL DEFAULT NULL,
  `judge_e` int(11) NULL DEFAULT NULL,
  `judge_c` int(11) NULL DEFAULT NULL,
  `judge_r` int(11) NULL DEFAULT NULL,
  `risk_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for risk_determination
-- ----------------------------
DROP TABLE IF EXISTS `risk_determination`;
CREATE TABLE `risk_determination`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NULL DEFAULT NULL,
  `risk_value` int(11) NULL DEFAULT NULL,
  `risk_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `risk_measure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of risk_determination
-- ----------------------------
INSERT INTO `risk_determination` VALUES (1, 118, 600, '一般风险', '需要整改，整改、检查', 'yellow', 'http://localhost:7000/uploadFile/yellow1.png');
INSERT INTO `risk_determination` VALUES (2, 119, 600, '低风险', '需要注意，培训、检查', 'blue', 'http://localhost:7000/uploadFile/blue1.png');
INSERT INTO `risk_determination` VALUES (3, 120, 400, '重大风险', '不可容许、停工', 'red', 'http://localhost:7000/uploadFile/red1.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for word_details
-- ----------------------------
DROP TABLE IF EXISTS `word_details`;
CREATE TABLE `word_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) NULL DEFAULT NULL,
  `word_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of word_details
-- ----------------------------
INSERT INTO `word_details` VALUES (11, 118, 'http://127.0.0.1:7000/uploadFile/1597651973081000观湖企业风险评估.docx');
INSERT INTO `word_details` VALUES (12, 119, 'http://127.0.0.1:7000/uploadFile/159765215572211、151、231 深圳市曼园实业有限公司(2020.4.30).docx');
INSERT INTO `word_details` VALUES (13, 120, 'http://127.0.0.1:7000/uploadFile/1597652230188000观湖企业风险评估.docx');

SET FOREIGN_KEY_CHECKS = 1;
