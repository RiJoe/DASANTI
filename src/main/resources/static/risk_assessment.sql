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

 Date: 07/08/2020 17:34:08
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
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_message
-- ----------------------------
INSERT INTO `input_message` VALUES (75, 25, 1, '重大危险源', '一级', 10, '观湖街道工业企业点位风险评估表', '一级图片');
INSERT INTO `input_message` VALUES (76, 25, 1, '重大危险源', '二级', 7, '观湖街道工业企业点位风险评估表', '二级图片');
INSERT INTO `input_message` VALUES (77, 25, 1, '重大危险源', '三级', 5, '观湖街道工业企业点位风险评估表', '三级图片');
INSERT INTO `input_message` VALUES (78, 25, 1, '重大危险源', '四级', 1, '观湖街道工业企业点位风险评估表', '四级图片');
INSERT INTO `input_message` VALUES (79, 25, 1, '重大危险源', '否', 1, '观湖街道工业企业点位风险评估表', '否图片');
INSERT INTO `input_message` VALUES (80, 25, 1, '特种设备', '锅炉', 10, '观湖街道工业企业点位风险评估表', '锅炉图片');
INSERT INTO `input_message` VALUES (81, 25, 1, '特种设备', '压力容器', 7, '观湖街道工业企业点位风险评估表', '压力容器图片');
INSERT INTO `input_message` VALUES (82, 25, 1, '特种设备', '其他（电梯）', 4, '观湖街道工业企业点位风险评估表', '其他（电梯）图片');
INSERT INTO `input_message` VALUES (83, 25, 1, '特种设备', '无', 1, '观湖街道工业企业点位风险评估表', '无图片');
INSERT INTO `input_message` VALUES (84, 25, 2, '安全生产标准化', '未达标', 2, '观湖街道工业企业点位风险评估表', '未达标图片');
INSERT INTO `input_message` VALUES (85, 25, 2, '安全生产标准化', '达标但记录不完善', 2, '观湖街道工业企业点位风险评估表', '达标但记录不完善图片');
INSERT INTO `input_message` VALUES (86, 25, 2, '安全生产标准化', '达标且有效运行', 1, '观湖街道工业企业点位风险评估表', '达标且有效运行图片');
INSERT INTO `input_message` VALUES (87, 25, 3, '从业人数 （每班）', '≥300', 10, '观湖街道工业企业点位风险评估表', '≥300图片');
INSERT INTO `input_message` VALUES (88, 25, 3, '从业人数 （每班）', '30～100', 4, '观湖街道工业企业点位风险评估表', '30～100图片');
INSERT INTO `input_message` VALUES (89, 25, 3, '从业人数 （每班）', '100～30', 7, '观湖街道工业企业点位风险评估表', '100～30图片');
INSERT INTO `input_message` VALUES (90, 25, 3, '从业人数 （每班）', '<30', 1, '观湖街道工业企业点位风险评估表', '<30图片');

-- ----------------------------
-- Table structure for input_table
-- ----------------------------
DROP TABLE IF EXISTS `input_table`;
CREATE TABLE `input_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of input_table
-- ----------------------------
INSERT INTO `input_table` VALUES (1, 'hey');
INSERT INTO `input_table` VALUES (2, 'hey');
INSERT INTO `input_table` VALUES (3, NULL);
INSERT INTO `input_table` VALUES (4, 'hello');
INSERT INTO `input_table` VALUES (5, 'hey');
INSERT INTO `input_table` VALUES (6, 'hello');
INSERT INTO `input_table` VALUES (7, 'rr');
INSERT INTO `input_table` VALUES (8, 'ff');
INSERT INTO `input_table` VALUES (9, '观湖');
INSERT INTO `input_table` VALUES (10, '地方');
INSERT INTO `input_table` VALUES (11, '啊');
INSERT INTO `input_table` VALUES (12, '阿');
INSERT INTO `input_table` VALUES (13, '算法');
INSERT INTO `input_table` VALUES (14, '广泛大概');
INSERT INTO `input_table` VALUES (15, 'ds');
INSERT INTO `input_table` VALUES (16, 's');
INSERT INTO `input_table` VALUES (17, '哦i');
INSERT INTO `input_table` VALUES (18, '广东');
INSERT INTO `input_table` VALUES (19, '和');
INSERT INTO `input_table` VALUES (20, 'hello');
INSERT INTO `input_table` VALUES (21, '古典风格');
INSERT INTO `input_table` VALUES (22, '的');
INSERT INTO `input_table` VALUES (23, '观湖');
INSERT INTO `input_table` VALUES (24, '欢呼');
INSERT INTO `input_table` VALUES (25, '观湖街道工业企业点位风险评估表');

-- ----------------------------
-- Table structure for input_table_details
-- ----------------------------
DROP TABLE IF EXISTS `input_table_details`;
CREATE TABLE `input_table_details`  (
  `id` int(11) NOT NULL,
  `table_id` int(11) NULL DEFAULT NULL,
  `influence_factor_id` int(11) NULL DEFAULT NULL,
  `determine_factor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
