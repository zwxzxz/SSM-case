/*
 Navicat Premium Data Transfer
 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : ssm_crud

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 26/06/2022 16:11:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept`  (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES (1, '人事部');
INSERT INTO `t_dept` VALUES (2, '财务部');
INSERT INTO `t_dept` VALUES (3, '销售部');
INSERT INTO `t_dept` VALUES (4, '企划部');
INSERT INTO `t_dept` VALUES (5, '采购部');
INSERT INTO `t_dept` VALUES (6, '工程部');
INSERT INTO `t_dept` VALUES (7, '行政部');
INSERT INTO `t_dept` VALUES (8, '技术部');
INSERT INTO `t_dept` VALUES (9, '行政部');
INSERT INTO `t_dept` VALUES (10, '财务部');

-- ----------------------------
-- Table structure for t_emp
-- ----------------------------
DROP TABLE IF EXISTS `t_emp`;
CREATE TABLE `t_emp`  (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE,
  INDEX `fk_emp_dept`(`d_id`) USING BTREE,
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `t_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 306 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_emp
-- ----------------------------
INSERT INTO `t_emp` VALUES (1, '潘伟祺', '女', '520954216@gmail.com', 2);
INSERT INTO `t_emp` VALUES (2, '何昊天', '男', '223704285@yahoo.com', 3);
INSERT INTO `t_emp` VALUES (3, '赖子轩', '男', '898711655@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (4, '阎鹏涛', '男', '351293665@gmail.com', 1);
INSERT INTO `t_emp` VALUES (5, '陶涛', '女', '602402665@gmail.com', 2);
INSERT INTO `t_emp` VALUES (6, '赖楷瑞', '男', '227340880@gmail.com', 6);
INSERT INTO `t_emp` VALUES (7, '覃鹏煊', '男', '128114274@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (8, '覃文博', '女', '502924936@gmail.com', 8);
INSERT INTO `t_emp` VALUES (9, '谭文', '女', '201766060@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (10, '蒋聪健', '男', '425936600@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (11, '戴鑫磊', '男', '502953146@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (12, '黄鹏煊', '女', '713404708@gmail.com', 5);
INSERT INTO `t_emp` VALUES (13, '沈弘文', '男', '645714494@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (14, '陶睿渊', '男', '586846989@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (15, '严伟泽', '女', '474977161@yahoo.com', 2);
INSERT INTO `t_emp` VALUES (16, '周思', '女', '37821919@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (17, '毛文昊', '男', '381186301@gmail.com', 3);
INSERT INTO `t_emp` VALUES (18, '邹志泽', '男', '272668624@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (19, '蒋皓轩', '女', '839354542@gmail.com', 6);
INSERT INTO `t_emp` VALUES (20, '曾哲瀚', '女', '364741708@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (21, '秦明', '女', '62998504@hotmail.com', 8);
INSERT INTO `t_emp` VALUES (22, '顾子默', '女', '191356452@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (23, '王致远', '女', '203649682@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (24, '魏君浩', '男', '95263971@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (25, '钟鹭洋', '女', '82314485@gmail.com', 1);
INSERT INTO `t_emp` VALUES (26, '田正豪', '男', '926274686@yahoo.com', 8);
INSERT INTO `t_emp` VALUES (27, '陆耀杰', '女', '894731217@yahoo.com', 3);
INSERT INTO `t_emp` VALUES (28, '吴明哲', '女', '236419718@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (29, '陶浩宇', '女', '616725327@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (30, '顾昊天', '女', '782011073@gmail.com', 4);
INSERT INTO `t_emp` VALUES (31, '董晟睿', '男', '733638981@gmail.com', 9);
INSERT INTO `t_emp` VALUES (32, '郑思远', '女', '43479125@yahoo.com', 3);
INSERT INTO `t_emp` VALUES (33, '吕子涵', '男', '163779694@gmail.com', 2);
INSERT INTO `t_emp` VALUES (34, '马弘文', '男', '659028044@hotmail.com', 1);
INSERT INTO `t_emp` VALUES (35, '贾博文', '男', '328420507@gmail.com', 9);
INSERT INTO `t_emp` VALUES (36, '范峻熙', '男', '327405930@hotmail.com', 2);
INSERT INTO `t_emp` VALUES (37, '董炎彬', '女', '500360185@hotmail.com', 1);
INSERT INTO `t_emp` VALUES (38, '戴鹏飞', '男', '26007731@gmail.com', 2);
INSERT INTO `t_emp` VALUES (39, '刘晓博', '女', '203206849@gmail.com', 5);
INSERT INTO `t_emp` VALUES (40, '魏嘉熙', '女', '417768543@hotmail.com', 7);
INSERT INTO `t_emp` VALUES (41, '周思聪', '男', '46767418@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (42, '杜煜祺', '女', '134945513@hotmail.com', 7);
INSERT INTO `t_emp` VALUES (43, '严伟祺', '女', '921020641@gmail.com', 7);
INSERT INTO `t_emp` VALUES (44, '袁昊焱', '女', '248086417@gmail.com', 8);
INSERT INTO `t_emp` VALUES (45, '宋烨霖', '女', '65901093@gmail.com', 5);
INSERT INTO `t_emp` VALUES (46, '赖鸿煊', '女', '858707902@gmail.com', 7);
INSERT INTO `t_emp` VALUES (47, '洪明辉', '男', '737312779@yahoo.com', 2);
INSERT INTO `t_emp` VALUES (48, '徐梓晨', '男', '190505122@gmail.com', 3);
INSERT INTO `t_emp` VALUES (49, '孙智辉', '男', '297185264@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (50, '方瑾瑜', '女', '379240800@gmail.com', 8);
INSERT INTO `t_emp` VALUES (51, '苏雨泽', '男', '775088502@gmail.com', 4);
INSERT INTO `t_emp` VALUES (52, '徐志泽', '女', '505307497@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (53, '赵振家', '女', '232384545@gmail.com', 5);
INSERT INTO `t_emp` VALUES (54, '姚天宇', '男', '881349673@hotmail.com', 2);
INSERT INTO `t_emp` VALUES (55, '谭明轩', '男', '38983697@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (56, '雷潇然', '男', '769296544@gmail.com', 3);
INSERT INTO `t_emp` VALUES (57, '梁语堂', '女', '36928086@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (58, '姜子涵', '男', '685653813@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (59, '丁潇然', '女', '387576371@hotmail.com', 8);
INSERT INTO `t_emp` VALUES (60, '陶楷瑞', '女', '721331907@gmail.com', 7);
INSERT INTO `t_emp` VALUES (61, '吕立诚', '男', '527715786@yahoo.com', 3);
INSERT INTO `t_emp` VALUES (62, '黎烨霖', '女', '878628820@gmail.com', 8);
INSERT INTO `t_emp` VALUES (63, '卢思', '女', '555799658@gmail.com', 9);
INSERT INTO `t_emp` VALUES (64, '丁弘文', '女', '632636477@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (65, '邓立诚', '男', '539924811@gmail.com', 6);
INSERT INTO `t_emp` VALUES (66, '姜文轩', '女', '396525736@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (67, '马雪松', '男', '689756356@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (68, '白文博', '男', '612291974@gmail.com', 5);
INSERT INTO `t_emp` VALUES (69, '邱明杰', '男', '825205748@gmail.com', 5);
INSERT INTO `t_emp` VALUES (70, '史晟睿', '女', '52026433@yahoo.com', 2);
INSERT INTO `t_emp` VALUES (71, '冯嘉熙', '男', '660152392@hotmail.com', 3);
INSERT INTO `t_emp` VALUES (72, '魏天磊', '男', '723001694@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (73, '段子默', '女', '628422398@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (74, '何风华', '女', '599573201@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (75, '熊志强', '男', '787406640@yahoo.com', 7);
INSERT INTO `t_emp` VALUES (76, '阎皓轩', '女', '892106870@hotmail.com', 1);
INSERT INTO `t_emp` VALUES (77, '胡鑫磊', '男', '781533416@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (78, '刘风华', '女', '205208103@gmail.com', 6);
INSERT INTO `t_emp` VALUES (79, '方钰轩', '男', '359984266@hotmail.com', 1);
INSERT INTO `t_emp` VALUES (80, '唐天宇', '男', '35489582@hotmail.com', 1);
INSERT INTO `t_emp` VALUES (81, '龚立诚', '女', '771950976@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (82, '郝子骞', '女', '89328462@hotmail.com', 8);
INSERT INTO `t_emp` VALUES (83, '姚睿渊', '女', '876629013@gmail.com', 6);
INSERT INTO `t_emp` VALUES (84, '苏擎宇', '女', '648907621@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (85, '侯煜城', '男', '435669718@yahoo.com', 7);
INSERT INTO `t_emp` VALUES (86, '白越泽', '女', '380509658@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (87, '陈越彬', '女', '133857066@hotmail.com', 3);
INSERT INTO `t_emp` VALUES (88, '彭烨伟', '女', '839564064@gmail.com', 5);
INSERT INTO `t_emp` VALUES (89, '曹昊焱', '男', '411371054@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (90, '任思远', '女', '124998737@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (91, '沈果', '女', '644494069@gmail.com', 8);
INSERT INTO `t_emp` VALUES (92, '严博超', '男', '830705676@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (93, '邱修杰', '女', '189124130@yahoo.com', 7);
INSERT INTO `t_emp` VALUES (94, '武明杰', '男', '329503576@hotmail.com', 1);
INSERT INTO `t_emp` VALUES (95, '任子骞', '男', '492523688@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (96, '高绍齐', '女', '822605354@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (97, '白聪健', '男', '110166035@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (98, '侯鹏煊', '男', '61910183@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (99, '段煜城', '男', '883600850@hotmail.com', 3);
INSERT INTO `t_emp` VALUES (100, '郭果', '男', '254846584@gmail.com', 2);
INSERT INTO `t_emp` VALUES (101, '熊瑞霖', '女', '897555175@yahoo.com', 2);
INSERT INTO `t_emp` VALUES (102, '阎越彬', '男', '255349944@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (103, '何浩然', '男', '888534903@gmail.com', 6);
INSERT INTO `t_emp` VALUES (104, '谢天宇', '女', '30805239@gmail.com', 3);
INSERT INTO `t_emp` VALUES (105, '韦擎宇', '男', '490609266@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (106, '方俊驰', '女', '784668311@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (107, '郑雨泽', '男', '136284250@hotmail.com', 3);
INSERT INTO `t_emp` VALUES (108, '赖绍齐', '男', '165117356@yahoo.com', 1);
INSERT INTO `t_emp` VALUES (109, '姜昊焱', '女', '199148788@gmail.com', 2);
INSERT INTO `t_emp` VALUES (110, '田峻熙', '男', '92783633@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (111, '薛晓啸', '女', '1104500@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (112, '王明杰', '女', '709826139@gmail.com', 6);
INSERT INTO `t_emp` VALUES (113, '钱健柏', '女', '365341663@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (114, '潘思聪', '男', '896659557@yahoo.com', 7);
INSERT INTO `t_emp` VALUES (115, '林梓晨', '男', '157833468@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (116, '谭烨华', '女', '169380755@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (117, '蒋弘文', '男', '242636061@hotmail.com', 3);
INSERT INTO `t_emp` VALUES (118, '孙炫明', '男', '561168733@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (119, '白志泽', '男', '636670160@hotmail.com', 2);
INSERT INTO `t_emp` VALUES (120, '薛胤祥', '女', '557516361@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (121, '崔志泽', '女', '344155109@gmail.com', 5);
INSERT INTO `t_emp` VALUES (122, '尹明辉', '男', '533945757@yahoo.com', 2);
INSERT INTO `t_emp` VALUES (123, '林子涵', '女', '812374922@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (124, '曹哲瀚', '女', '969742131@yahoo.com', 7);
INSERT INTO `t_emp` VALUES (125, '陆鹏煊', '女', '2651608@yahoo.com', 7);
INSERT INTO `t_emp` VALUES (126, '冯涛', '男', '376359755@hotmail.com', 7);
INSERT INTO `t_emp` VALUES (127, '龚烨伟', '女', '575739544@hotmail.com', 7);
INSERT INTO `t_emp` VALUES (128, '阎绍辉', '女', '807915848@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (129, '范立诚', '女', '435797385@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (130, '万子涵', '男', '906631592@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (131, '贺明哲', '男', '471877227@yahoo.com', 8);
INSERT INTO `t_emp` VALUES (132, '薛风华', '女', '785819810@hotmail.com', 5);
INSERT INTO `t_emp` VALUES (133, '江越彬', '男', '513304056@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (134, '贾烨霖', '男', '397794579@yahoo.com', 1);
INSERT INTO `t_emp` VALUES (135, '阎致远', '女', '384733586@gmail.com', 7);
INSERT INTO `t_emp` VALUES (136, '侯昊强', '女', '418741534@yahoo.com', 1);
INSERT INTO `t_emp` VALUES (137, '阎靖琪', '女', '534197827@gmail.com', 9);
INSERT INTO `t_emp` VALUES (138, '程煜城', '女', '25197066@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (139, '潘鹤轩', '女', '655062657@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (140, '戴烨伟', '女', '789992460@hotmail.com', 2);
INSERT INTO `t_emp` VALUES (141, '郑胤祥', '女', '748127448@yahoo.com', 1);
INSERT INTO `t_emp` VALUES (142, '余炎彬', '男', '698894355@hotmail.com', 7);
INSERT INTO `t_emp` VALUES (143, '杨文', '男', '251097660@gmail.com', 8);
INSERT INTO `t_emp` VALUES (144, '莫文昊', '女', '361474576@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (145, '周天翊', '男', '453089668@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (146, '石绍辉', '女', '478741540@gmail.com', 6);
INSERT INTO `t_emp` VALUES (147, '叶智宸', '女', '132751072@gmail.com', 5);
INSERT INTO `t_emp` VALUES (148, '李雪松', '女', '836698434@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (149, '高健柏', '男', '860660788@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (150, '王健柏', '女', '918062458@hotmail.com', 3);
INSERT INTO `t_emp` VALUES (151, '高鹏飞', '男', '808915899@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (152, '龚果', '男', '359822446@yahoo.com', 2);
INSERT INTO `t_emp` VALUES (153, '赵语堂', '男', '962885203@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (154, '彭浩然', '女', '36232175@hotmail.com', 7);
INSERT INTO `t_emp` VALUES (155, '郝博超', '女', '468436564@gmail.com', 6);
INSERT INTO `t_emp` VALUES (156, '钟果', '女', '569821588@gmail.com', 7);
INSERT INTO `t_emp` VALUES (157, '贾子默', '男', '371584103@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (158, '邓弘文', '女', '885232730@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (159, '毛越彬', '女', '613448782@yahoo.com', 7);
INSERT INTO `t_emp` VALUES (160, '潘智渊', '男', '152842205@gmail.com', 4);
INSERT INTO `t_emp` VALUES (161, '蔡鑫磊', '女', '240164035@gmail.com', 7);
INSERT INTO `t_emp` VALUES (162, '杨雨泽', '男', '513868038@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (163, '邹明辉', '男', '481008474@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (164, '马子涵', '男', '659214092@gmail.com', 4);
INSERT INTO `t_emp` VALUES (165, '覃智渊', '女', '436468917@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (166, '林天磊', '男', '739514379@gmail.com', 2);
INSERT INTO `t_emp` VALUES (167, '许智渊', '男', '320304681@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (168, '魏文昊', '男', '585440741@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (169, '董晓博', '男', '973475302@gmail.com', 8);
INSERT INTO `t_emp` VALUES (170, '夏志强', '女', '306976288@gmail.com', 3);
INSERT INTO `t_emp` VALUES (171, '田志强', '男', '744380878@gmail.com', 9);
INSERT INTO `t_emp` VALUES (172, '郝嘉熙', '男', '396847496@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (173, '苏鹤轩', '男', '444818843@hotmail.com', 1);
INSERT INTO `t_emp` VALUES (174, '孔弘文', '男', '310061704@yahoo.com', 8);
INSERT INTO `t_emp` VALUES (175, '卢峻熙', '男', '918011199@gmail.com', 2);
INSERT INTO `t_emp` VALUES (176, '武梓晨', '女', '453747060@gmail.com', 4);
INSERT INTO `t_emp` VALUES (177, '孙弘文', '女', '809667832@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (178, '郑晋鹏', '女', '571427131@hotmail.com', 8);
INSERT INTO `t_emp` VALUES (179, '黄文昊', '女', '945324359@hotmail.com', 2);
INSERT INTO `t_emp` VALUES (180, '孙健雄', '男', '12826097@hotmail.com', 1);
INSERT INTO `t_emp` VALUES (181, '黄懿轩', '女', '981868800@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (182, '贺嘉熙', '女', '823446966@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (183, '江正豪', '女', '657292692@yahoo.com', 1);
INSERT INTO `t_emp` VALUES (184, '韩志泽', '男', '301238757@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (185, '唐晋鹏', '男', '866907306@gmail.com', 2);
INSERT INTO `t_emp` VALUES (186, '赖笑愚', '男', '243884900@gmail.com', 6);
INSERT INTO `t_emp` VALUES (187, '田楷瑞', '女', '376033804@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (188, '戴皓轩', '女', '572653554@gmail.com', 8);
INSERT INTO `t_emp` VALUES (189, '冯昊强', '男', '72577138@gmail.com', 9);
INSERT INTO `t_emp` VALUES (190, '余志泽', '男', '668407275@gmail.com', 8);
INSERT INTO `t_emp` VALUES (191, '雷航', '女', '537297615@gmail.com', 3);
INSERT INTO `t_emp` VALUES (192, '董子涵', '女', '165359202@hotmail.com', 7);
INSERT INTO `t_emp` VALUES (193, '贾烨磊', '男', '752939660@gmail.com', 9);
INSERT INTO `t_emp` VALUES (194, '魏智辉', '女', '522542107@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (195, '于建辉', '女', '624391160@yahoo.com', 4);
INSERT INTO `t_emp` VALUES (196, '朱立轩', '男', '496704471@gmail.com', 6);
INSERT INTO `t_emp` VALUES (197, '方思源', '女', '775623853@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (198, '钟风华', '男', '166938709@gmail.com', 1);
INSERT INTO `t_emp` VALUES (199, '姜峻熙', '男', '70067229@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (200, '陈伟诚', '女', '303306378@yahoo.com', 8);
INSERT INTO `t_emp` VALUES (201, '陈子骞', '男', '733030253@gmail.com', 9);
INSERT INTO `t_emp` VALUES (202, '薛哲瀚', '女', '115192600@yahoo.com', 1);
INSERT INTO `t_emp` VALUES (203, '贾文', '男', '300361643@hotmail.com', 4);
INSERT INTO `t_emp` VALUES (204, '王梓晨', '女', '165121824@hotmail.com', 3);
INSERT INTO `t_emp` VALUES (205, '熊荣轩', '男', '833265934@yahoo.com', 2);
INSERT INTO `t_emp` VALUES (206, '赖泽洋', '男', '259187943@gmail.com', 1);
INSERT INTO `t_emp` VALUES (207, '陶鹏飞', '女', '538883300@gmail.com', 4);
INSERT INTO `t_emp` VALUES (208, '毛文昊', '女', '486985688@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (209, '万志泽', '男', '261802070@gmail.com', 2);
INSERT INTO `t_emp` VALUES (210, '方弘文', '女', '419247887@yahoo.com', 8);
INSERT INTO `t_emp` VALUES (211, '郝楷瑞', '男', '421487579@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (212, '阎振家', '女', '334985573@hotmail.com', 6);
INSERT INTO `t_emp` VALUES (213, '王语堂', '男', '482126563@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (214, '郭健雄', '男', '844493170@yahoo.com', 2);
INSERT INTO `t_emp` VALUES (215, '蒋鑫鹏', '女', '526436634@yahoo.com', 5);
INSERT INTO `t_emp` VALUES (216, '姜文博', '男', '362761002@hotmail.com', 2);
INSERT INTO `t_emp` VALUES (217, '石鹏涛', '男', '49620274@hotmail.com', 9);
INSERT INTO `t_emp` VALUES (218, '朱浩', '男', '282088215@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (219, '钱瑞霖', '男', '437931824@hotmail.com', 8);
INSERT INTO `t_emp` VALUES (220, '赖立诚', '男', '301592836@yahoo.com', 6);
INSERT INTO `t_emp` VALUES (221, '杨昊焱', '女', '133935621@yahoo.com', 8);
INSERT INTO `t_emp` VALUES (222, '徐黎昕', '男', '347342993@yahoo.com', 9);
INSERT INTO `t_emp` VALUES (223, '丁煜祺', '女', '234733983@gmail.com', 2);
INSERT INTO `t_emp` VALUES (228, '郝凯瑞', '女', '380485191@gmail.com', 1);

SET FOREIGN_KEY_CHECKS = 1;
