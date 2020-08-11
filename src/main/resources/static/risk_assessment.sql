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

 Date: 11/08/2020 17:41:47
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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprise_inform
-- ----------------------------
INSERT INTO `enterprise_inform` VALUES (1, 60, '深圳大三体安全科技有限公司', 'Regina', '深圳中海信创新产业城', 'joe', '19845475415', '', '', 500, 500, '200', '硫酸', '硫酸');
INSERT INTO `enterprise_inform` VALUES (2, 58, '深圳云央科技', 'joe', '深圳云央科技', 'joe', '1878784541', '', '', 4, 200, '200', '', '');
INSERT INTO `enterprise_inform` VALUES (3, 58, '深圳云央科技', 'joe', '深圳云央科技', 'joe', '1878784541', '', '', 4, 200, '200', '', '');
INSERT INTO `enterprise_inform` VALUES (4, 59, 'heool', '', '', '', '', '', '', NULL, 450, '', '', '');
INSERT INTO `enterprise_inform` VALUES (5, 59, 'guanhu', '', '', '', '', '', '', NULL, 500, '', '', '');
INSERT INTO `enterprise_inform` VALUES (6, 59, '深圳', '', '', '', '', '', '', NULL, 500, '', '', '');
INSERT INTO `enterprise_inform` VALUES (7, 58, '广州', '', '', '', '', '', '', NULL, 300, '', '', '');
INSERT INTO `enterprise_inform` VALUES (8, 59, '上海', '', '', '', '', '', '', NULL, 100, '', '', '');
INSERT INTO `enterprise_inform` VALUES (9, 59, '阿萨', '', '', '', '', '', '', NULL, 70, '', '', '');
INSERT INTO `enterprise_inform` VALUES (10, 59, '地方', '', '', '', '', '', '', NULL, 10, '', '', '');
INSERT INTO `enterprise_inform` VALUES (11, 59, '观湖', '', '', '', '', '', '', NULL, 20, '', '', '');
INSERT INTO `enterprise_inform` VALUES (12, 60, 'hello', '', '', '', '', '', '', NULL, 20, '', '', '');
INSERT INTO `enterprise_inform` VALUES (13, 59, 'df ', '', '', '', '', '', '', NULL, 10, '', '', '');
INSERT INTO `enterprise_inform` VALUES (14, 59, 'asd', '', '', '', '', '', '', NULL, 12, '', '', '');
INSERT INTO `enterprise_inform` VALUES (15, 58, 'adf', '', '', '', '', '', '', NULL, 2, '', '', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_message
-- ----------------------------
INSERT INTO `input_message` VALUES (123, 58, 1, '重大危险源', '一级', 10, '观湖企业点位风险评估模板', '一级图片');
INSERT INTO `input_message` VALUES (124, 58, 1, '重大危险源', '二级', 7, '观湖企业点位风险评估模板', '二级图片');
INSERT INTO `input_message` VALUES (125, 58, 1, '重大危险源', '三级', 5, '观湖企业点位风险评估模板', '三级图片');
INSERT INTO `input_message` VALUES (126, 58, 1, '重大危险源', '四级', 3, '观湖企业点位风险评估模板', '四级图片');
INSERT INTO `input_message` VALUES (127, 58, 1, '重大危险源', '否', 1, '观湖企业点位风险评估模板', '否图片');
INSERT INTO `input_message` VALUES (128, 58, 1, '特种设备', '锅炉', 10, '观湖企业点位风险评估模板', '锅炉图片');
INSERT INTO `input_message` VALUES (129, 58, 1, '特种设备', '压力容器', 7, '观湖企业点位风险评估模板', '压力容器图片');
INSERT INTO `input_message` VALUES (130, 58, 1, '特种设备', '其他（电梯）', 4, '观湖企业点位风险评估模板', '其他（电梯）图片');
INSERT INTO `input_message` VALUES (131, 58, 1, '特种设备', '无', 1, '观湖企业点位风险评估模板', '无图片');
INSERT INTO `input_message` VALUES (132, 58, 2, '安全生产标准化', '未达标', 5, '观湖企业点位风险评估模板', '未达标图片');
INSERT INTO `input_message` VALUES (133, 58, 2, '安全生产标准化', '达标但记录不完善', 2, '观湖企业点位风险评估模板', '达标但记录不完善图片');
INSERT INTO `input_message` VALUES (134, 58, 2, '安全生产标准化', '达标且有效运行', 1, '观湖企业点位风险评估模板', '达标且有效运行图片');
INSERT INTO `input_message` VALUES (135, 59, 1, '防火间距情况', '满足', 1, '观湖城中村点位风险评估模板', '满足图片');
INSERT INTO `input_message` VALUES (136, 59, 1, '防火间距情况', '基本满足', 2, '观湖城中村点位风险评估模板', '基本满足图片');
INSERT INTO `input_message` VALUES (137, 59, 1, '防火间距情况', '不满足', 4, '观湖城中村点位风险评估模板', '不满足图片');
INSERT INTO `input_message` VALUES (138, 59, 2, '人员密度', '极高：P≧25000人/km2', 8, '观湖城中村点位风险评估模板', '极高：P≧25000人/km2图片');
INSERT INTO `input_message` VALUES (139, 59, 2, '人员密度', '高：P≧20000人/km2', 4, '观湖城中村点位风险评估模板', '高：P≧20000人/km2图片');
INSERT INTO `input_message` VALUES (140, 59, 2, '人员密度', '中：P≧10000人/km2', 2, '观湖城中村点位风险评估模板', '中：P≧10000人/km2图片');
INSERT INTO `input_message` VALUES (141, 59, 2, '人员密度', '低：P＜10000人/km2', 1, '观湖城中村点位风险评估模板', '低：P＜10000人/km2图片');
INSERT INTO `input_message` VALUES (142, 60, 1, '建筑高度', '大于 100 米小于等于150米', 6, '观湖超高层建筑点位风险评估模板', '大于 100 米小于等于150米图片');
INSERT INTO `input_message` VALUES (143, 60, 1, '建筑高度', '150 米~250 米以上', 8, '观湖超高层建筑点位风险评估模板', '150 米~250 米以上图片');
INSERT INTO `input_message` VALUES (144, 60, 1, '建筑高度', '250 米以上', 10, '观湖超高层建筑点位风险评估模板', '250 米以上图片');
INSERT INTO `input_message` VALUES (145, 60, 2, '人的因素', '人员证书不全，且员工未经三级教育培训上岗', 5, '观湖超高层建筑点位风险评估模板', '人员证书不全，且员工未经三级教育培训上岗图片');
INSERT INTO `input_message` VALUES (146, 60, 2, '人的因素', '人员证书不全，或员工三级教育不完善', 2, '观湖超高层建筑点位风险评估模板', '人员证书不全，或员工三级教育不完善图片');
INSERT INTO `input_message` VALUES (147, 60, 2, '人的因素', '人员证书齐全，且三级教育记录完善', 1, '观湖超高层建筑点位风险评估模板', '人员证书齐全，且三级教育记录完善图片');
INSERT INTO `input_message` VALUES (148, 60, 3, '人员密度', '极高', 10, '观湖超高层建筑点位风险评估模板', '极高图片');
INSERT INTO `input_message` VALUES (149, 60, 3, '人员密度', '高', 6, '观湖超高层建筑点位风险评估模板', '高图片');
INSERT INTO `input_message` VALUES (150, 60, 3, '人员密度', '中', 3, '观湖超高层建筑点位风险评估模板', '中图片');
INSERT INTO `input_message` VALUES (151, 60, 3, '人员密度', '低', 1, '观湖超高层建筑点位风险评估模板', '低图片');
INSERT INTO `input_message` VALUES (152, 61, 1, '商场位置', '高层建筑内', 8, '观湖大型商场点位风险评估模板', '高层建筑内图片');
INSERT INTO `input_message` VALUES (153, 61, 1, '商场位置', '单多层建筑内', 6, '观湖大型商场点位风险评估模板', '单多层建筑内图片');
INSERT INTO `input_message` VALUES (154, 61, 1, '商场位置', '地下一层或地下二层', 10, '观湖大型商场点位风险评估模板', '地下一层或地下二层图片');
INSERT INTO `input_message` VALUES (155, 61, 2, '人的因素', '人员证书不全，且员工未经三级教育培训上岗', 5, '观湖大型商场点位风险评估模板', '人员证书不全，且员工未经三级教育培训上岗图片');
INSERT INTO `input_message` VALUES (156, 61, 2, '人的因素', '人员证书不全，或员工三级教育不完善', 2, '观湖大型商场点位风险评估模板', '人员证书不全，或员工三级教育不完善图片');
INSERT INTO `input_message` VALUES (157, 61, 2, '人的因素', '人员证书齐全，且三级教育记录完善', 1, '观湖大型商场点位风险评估模板', '人员证书齐全，且三级教育记录完善图片');
INSERT INTO `input_message` VALUES (158, 61, 3, '高峰时段人员密度', '极高', 10, '观湖大型商场点位风险评估模板', '极高图片');
INSERT INTO `input_message` VALUES (159, 61, 3, '高峰时段人员密度', '高', 6, '观湖大型商场点位风险评估模板', '高图片');
INSERT INTO `input_message` VALUES (160, 61, 3, '高峰时段人员密度', '中', 3, '观湖大型商场点位风险评估模板', '中图片');
INSERT INTO `input_message` VALUES (161, 61, 3, '高峰时段人员密度', '低', 1, '观湖大型商场点位风险评估模板', '低图片');

-- ----------------------------
-- Table structure for input_table
-- ----------------------------
DROP TABLE IF EXISTS `input_table`;
CREATE TABLE `input_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_table
-- ----------------------------
INSERT INTO `input_table` VALUES (58, '观湖企业点位风险评估模板');
INSERT INTO `input_table` VALUES (59, '观湖城中村点位风险评估模板');
INSERT INTO `input_table` VALUES (60, '观湖超高层建筑点位风险评估模板');
INSERT INTO `input_table` VALUES (61, '观湖大型商场点位风险评估模板');

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
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_table_details
-- ----------------------------
INSERT INTO `input_table_details` VALUES (23, 58, '重大危险源', 1, '观湖企业点位风险评估模板');
INSERT INTO `input_table_details` VALUES (24, 58, '安全生产标准化', 2, '观湖企业点位风险评估模板');
INSERT INTO `input_table_details` VALUES (25, 59, '防火间距情况', 1, '观湖城中村点位风险评估模板');
INSERT INTO `input_table_details` VALUES (26, 59, '人员密度', 2, '观湖城中村点位风险评估模板');
INSERT INTO `input_table_details` VALUES (27, 60, '建筑高度', 1, '观湖超高层建筑点位风险评估模板');
INSERT INTO `input_table_details` VALUES (28, 60, '人的因素', 2, '观湖超高层建筑点位风险评估模板');
INSERT INTO `input_table_details` VALUES (29, 60, '人员密度', 3, '观湖超高层建筑点位风险评估模板');
INSERT INTO `input_table_details` VALUES (30, 61, '商场位置', 1, '观湖大型商场点位风险评估模板');
INSERT INTO `input_table_details` VALUES (31, 61, '人的因素', 2, '观湖大型商场点位风险评估模板');
INSERT INTO `input_table_details` VALUES (32, 61, '高峰时段人员密度', 3, '观湖大型商场点位风险评估模板');

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

SET FOREIGN_KEY_CHECKS = 1;
