/*
Navicat MySQL Data Transfer

Source Server         : 134.175.142.67
Source Server Version : 50717
Source Host           : 134.175.142.67:3306
Source Database       : fresh_direct

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-05-30 12:19:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_f_ad`
-- ----------------------------
DROP TABLE IF EXISTS `t_f_ad`;
CREATE TABLE `t_f_ad` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `gid` int(5) NOT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '活动的url',
  `isdisplay` int(2) DEFAULT '0' COMMENT '是否展示(0：不展示；1展示)',
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除；1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_f_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `t_g_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_g_info`;
CREATE TABLE `t_g_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `typeid` int(2) NOT NULL,
  `goods_name` varchar(50) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `now_price` double NOT NULL COMMENT '现价',
  `old_price` double NOT NULL COMMENT '原价',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `sell_count` int(10) DEFAULT '0' COMMENT '销量',
  `isenable` int(2) DEFAULT '1' COMMENT '商品是否上架（0：未上架；1：上架）',
  `clickcount` int(10) DEFAULT '0' COMMENT '商品的点击次数',
  `stock` int(10) NOT NULL COMMENT '商品的库存',
  `operator_name` varchar(30) NOT NULL COMMENT '操作员名字',
  `isdeleted` int(2) DEFAULT '0' COMMENT '是否删除（0：未删除；1：已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_g_info
-- ----------------------------
INSERT INTO `t_g_info` VALUES ('1', '16', '油麦菜', '/upload/item/goods/1554555467764552365.jpg', '很好吃的一种蔬菜', '3', '5', '2019-04-06 20:58:19', '2019-04-06 20:58:19', '0', '1', '12', '100', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('2', '16', '大白菜', '/upload/item/goods/1554555549246210723.jpg', '一种蔬菜', '8', '8', '2019-04-06 20:59:31', '2019-04-06 20:59:31', '6', '1', '0', '35', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('3', '19', '鱼', '/upload/item/goods/1554555583884371153.jpg', '水产的一种', '12', '15', '2019-04-06 21:00:07', '2019-04-06 21:00:07', '6', '1', '1', '65', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('4', '19', '海鱼', '/upload/item/goods/1554555616872097409.jpg', '没有刺', '12', '15', '2019-04-06 21:00:27', '2019-04-06 21:00:27', '6', '1', '0', '65', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('5', '18', '猪肉', '/upload/item/goods/1554555634901582353.jpg', '长胖', '8', '20', '2019-04-06 21:00:53', '2019-04-06 21:00:53', '6', '1', '20', '80', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('6', '18', '腊肉', '/upload/item/goods/1554555665197294150.jpg', '也长胖', '22', '33', '2019-04-06 21:01:22', '2019-04-06 21:01:22', '6', '0', '0', '10', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('7', '21', '牛奶', '/upload/item/goods/1554555717843755140.jpg', '健康', '55', '88', '2019-04-06 21:02:16', '2019-04-06 21:02:16', '6', '1', '0', '10', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('8', '21', '酸奶', '/upload/item/goods/1554555745186118267.jpg', '酸甜健康', '55', '99', '2019-04-06 21:02:43', '2019-04-08 23:17:48', '6', '1', '1', '103', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('9', '20', '鸡蛋', '/upload/item/goods/1554555745186118267.jpg', '圆圆的', '6', '3', '2019-04-06 21:03:28', '2019-04-06 21:03:28', '6', '1', '4', '566', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('10', '17', '苹果', '/upload/item/goods/1554555822013930236.jpg', '一天一个苹果，远离医生', '9', '8', '2019-04-06 21:04:18', '2019-04-06 21:04:18', '6', '1', '75', '296', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('11', '19', '虾', '/upload/item/goods/1554701795141410311.jpg', '营养丰富', '200', '100', '2019-04-06 22:54:23', '2019-04-08 13:36:55', '4', '0', '0', '2', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('12', '17', '橙子', '/upload/item/goods/1555261162346122385.jpg', '营养丰富', '8', '12', '2019-04-15 00:59:53', '2019-04-15 00:59:53', '4', '1', '5', '300', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('13', '21', '冲剂奶粉', '/upload/item/goods/1555261201418116085.jpg', '营养丰富', '116', '120', '2019-04-15 01:00:31', '2019-05-04 14:54:31', '4', '1', '50', '500', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('14', '21', '纯牛奶', '/upload/item/goods/1555261237289924426.jpg', '营养丰富,美味可口', '75', '88', '2019-04-15 01:01:49', '2019-05-04 14:54:45', '9', '1', '21', '314', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('15', '18', '猪肉', '/upload/item/goods/1555261317425613248.jpg', '猪肉作为餐桌上重要的动物性食品之一，因为纤维较为细软，结缔组织较少，肌肉组织中含有较多的肌间脂肪，因此，经过烹调加工后肉味特别鲜美。', '12', '15', '2019-04-15 01:02:22', '2019-05-09 20:44:55', '5', '1', '4', '34', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('16', '18', '牛肉', '/upload/item/goods/1555261351549892190.jpg', '精选优质牛', '38', '45', '2019-04-15 01:02:54', '2019-04-15 01:02:54', '4', '1', '2', '67', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('17', '19', '龙虾', '/upload/item/goods/1555261379530737846.jpg', '来自干净的水源', '46', '55', '2019-04-15 01:03:30', '2019-04-15 01:03:30', '5', '1', '3', '109', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('18', '19', '鱼', '/upload/item/goods/1555261415788612452.jpg', '来自干净的水源', '10', '15', '2019-04-15 01:04:02', '2019-04-15 01:04:02', '6', '1', '21', '31', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('19', '20', '鸭蛋', '/upload/item/goods/1555261448611821248.jpg', '营养丰富', '2', '3', '2019-04-15 01:04:47', '2019-04-15 01:04:47', '4', '1', '3', '122', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('20', '20', '土鸡蛋', '/upload/item/goods/1555261494137782994.jpg', '鸡蛋有很高的营养价值，是优质蛋白质、B族维生素的良好来源，还能提供一定数量的脂肪、维生素A和矿物质。一个中等大小的鸡蛋可提供6克左右的优质蛋白质，是各种食物中所含蛋白质最高的。', '1', '2', '2019-04-15 01:05:17', '2019-04-15 01:05:17', '4', '1', '105', '455', 'yilia', '1');
INSERT INTO `t_g_info` VALUES ('21', '20', '皮蛋', '/upload/item/goods/1555261526530385930.jpg', '夏天必备', '1', '2', '2019-04-15 01:05:46', '2019-04-15 01:05:46', '26', '1', '3', '34', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('22', '16', '茄子', '/upload/item/goods/1555261556927232109.jpg', '营养丰富', '6', '8', '2019-04-15 01:06:23', '2019-04-15 01:06:44', '26', '1', '2', '34', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('23', '17', '猕猴桃', '/upload/item/goods/1555261651764324335.jpg', '一天一个水果，远离医生', '17', '23', '2019-04-15 01:08:01', '2019-04-15 01:08:01', '26', '1', '5', '231', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('24', '17', '樱桃', '/upload/item/goods/1555261693716401029.jpg', '酸酸甜甜就是它', '17', '23', '2019-04-15 01:08:33', '2019-04-15 01:08:33', '26', '1', '5', '234', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('25', '16', '辣椒', '/upload/item/goods/1555261717727731408.jpg', '厨房佳品', '3', '6', '2019-04-15 01:09:07', '2019-04-15 01:09:07', '26', '1', '3', '11', 'yilia', '0');
INSERT INTO `t_g_info` VALUES ('26', '17', '西瓜', '/upload/item/goods/1557304291042401533.jpg', '清凉', '10', '13', '2019-05-08 16:32:20', '2019-05-08 16:32:30', '26', '1', '8', '398', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('27', '16', '小白菜', '/upload/item/goods/1557407307339743066.jpg', '小白菜是一种原产东亚的蔬菜，俗称青菜，又称胶菜、瓢儿菜、瓢儿白、油菜（中国东北某些地区）、油白菜等，与大白菜（结球白菜）是近亲，同属芸薹一种，和西方的圆白菜也较近，同属十字花科芸薹属。', '3', '3', '2019-05-09 21:08:54', '2019-05-09 21:08:54', '27', '1', '3', '198', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('28', '16', '冬瓜', '/upload/item/goods/1557407355001013293.jpg', '冬瓜果实除作蔬菜外，也可浸渍为各种糖果；果皮和种子药用，有消炎、利尿、消肿的功效', '2', '2', '2019-05-09 21:11:06', '2019-05-09 21:11:06', '26', '1', '2', '122', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('29', '16', '山药', '/upload/item/goods/1557407501489663236.jpg', '块茎为常用中药“怀山药”，块茎富含淀粉，可供蔬食；入药能清热解毒、补脾胃亏损，治气虚衰弱、消化不良、遗精、遗尿及无名肿毒等。', '7', '8', '2019-05-09 21:12:32', '2019-05-09 21:12:32', '27', '1', '4', '30', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('30', '16', '红辣椒', '/upload/item/goods/1557407567462509739.jpg', '辣椒属为一年生草本植物。茎直立，多分枝。单叶互生，叶片广卵形，先端渐尖，叶柄较长。', '3', '3', '2019-05-09 21:13:28', '2019-05-15 10:41:18', '26', '0', '2', '233', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('31', '16', '包菜', '/upload/item/goods/1557407623953354811.jpg', '包菜的水分含量大约有90%,维生素C的含量比白菜高出一倍左右', '2', '2', '2019-05-09 21:15:44', '2019-05-15 10:44:32', '35', '1', '2', '12', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('32', '16', '胡萝卜', '/upload/item/goods/1557408677864247198.jpg', '富含丰富的维生素', '4', '5', '2019-05-21 21:31:56', '2019-05-09 21:31:56', '38', '1', '5', '86', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('33', '16', '红薯', '/upload/item/goods/1557408773283102650.jpg', '粗粮，助消化', '2', '2', '2019-05-09 21:33:32', '2019-05-09 21:33:32', '36', '1', '3', '357', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('34', '17', '火龙果', '/upload/item/goods/1557408831563047996.jpg', '该种分枝扦插容易成活，常作嫁接蟹爪属，仙人棒属和多种仙人球的砧木，花可作蔬菜，浆果可食，商品名“火龙果”。', '11', '12', '2019-05-21 21:34:37', '2019-05-09 21:36:13', '35', '1', '4', '57', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('35', '17', '石榴', '/upload/item/goods/1557408888199856823.jpg', '性味甘、酸涩、温，具有杀虫、收敛、涩肠、止痢等功效。石榴果实营养丰富，维生素C含量比苹果、梨要高出一二倍。', '8', '8', '2019-05-09 21:35:39', '2019-05-09 21:35:39', '35', '1', '2', '456', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('36', '17', '香蕉', '/upload/item/goods/1557408985212762322.jpg', '芭蕉科芭蕉属植物，又指其果实，热带地区广泛种植。香蕉味香、富含营养', '4', '5', '2019-05-09 21:37:01', '2019-05-09 21:38:20', '35', '1', '2', '32', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('37', '17', '草莓', '/upload/item/goods/1557409034837375269.jpg', '营养丰富，酸酸甜甜', '20', '20', '2019-05-21 21:37:53', '2019-05-09 21:37:53', '35', '1', '2', '30', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('38', '18', '肥牛', '/upload/item/goods/1557409124540084985.jpg', '既不是一种牛的品种，也不是单纯育肥后屠宰的牛，更不是肥的牛。而是经过排酸处理后切成薄片在火锅内涮食的部位，被称为“肥牛”。', '30', '30', '2019-05-09 21:39:27', '2019-05-09 21:40:53', '35', '1', '2', '321', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('39', '18', '精牛肉', '/upload/item/goods/1557409178654525446.jpg', '来源可以是奶牛、公牛、小母牛。牛的肌肉部分可以切成牛排、牛肉块或牛仔骨，也可以与其他的肉混合做成香肠或血肠。', '60', '60', '2019-05-09 21:40:26', '2019-05-09 21:40:40', '35', '1', '2', '900', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('40', '20', '鹌鹑蛋', '/upload/item/goods/1557409277600131871.jpg', '滋补食疗品。鹌鹑蛋在营养上有独特之处，故有\"卵中佳品\"之称。', '24', '24', '2019-05-09 21:47:11', '2019-05-09 21:47:11', '35', '1', '2', '68', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('41', '19', '小龙虾', '/upload/item/goods/1557409642733119475.jpg', '淡水经济虾类，因肉味鲜美广受人们欢迎。因其杂食性、生长速度快、适应能力强而在当地生态环境中形成绝对的竞争优势', '27', '27', '2019-05-09 21:48:17', '2019-05-09 21:51:56', '40', '1', '1', '35', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('42', '21', '咖啡', '/upload/item/goods/1557409706364241713.jpg', '咖啡是世界三大饮料之一，是用经过烘焙的咖啡豆制作出来的饮料，与可可、茶同为流行于世界的主要饮品。', '88', '88', '2019-05-09 21:49:08', '2019-05-09 21:49:08', '43', '1', '3', '442', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('43', '21', '红牛', '/upload/item/goods/1557409761753246134.jpg', '以“功能饮料市场先入者”的地位和优势，红牛饮料快速打开中国市场，逐步发展成为中国饮料行业的领军品牌。', '7', '7', '2019-05-09 21:49:52', '2019-05-09 21:49:52', '40', '1', '1', '1465', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('44', '18', '鸡翅', '/upload/item/goods/1557409800812779893.jpg', '鸡翅又名鸡翼、大转弯，肉少、皮富胶质，又分“鸡膀”“膀尖”两种。鸡膀，连接鸡体至鸡翅的第一关节处，肉质较多；鸡翅有温中益气、补精添髓、强腰健胃等功效，鸡中翅相对翅尖和翅根来说，它的胶原蛋白含量丰富，对于保持皮肤光泽、增强皮肤弹性均有好处。', '18', '18', '2019-05-09 21:50:39', '2019-05-09 21:50:39', '40', '1', '1', '89', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('45', '21', '脉动', '/upload/item/goods/1557409867716261983.jpg', '脉动是一款运动维生素饮料，于2003年上市。以居住在城市的年轻人，年龄约18-35之间，由于工作需求，经常在户外活动的人群为消费主体。', '5', '5', '2019-05-09 21:51:43', '2019-05-09 21:51:43', '40', '1', '2', '3264', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('46', '18', '羊肉', '/upload/item/goods/1557409937098275403.jpg', '它既能御风寒，又可补身体，对一般风寒咳嗽、慢性气管炎、虚寒哮喘、肾亏阳痿、腹部冷痛、体虚怕冷、腰膝酸软、面黄肌瘦、气血两亏、病后或产后身体虚亏等一切虚状均有治疗和补益效果，最适宜于冬季食用，故被称为冬令补品，深受人们欢迎。', '45', '45', '2019-05-21 21:52:49', '2019-05-09 21:52:49', '40', '1', '5', '325', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('47', '21', '碳酸饮料', '/upload/item/goods/1557409981323065248.jpg', '肥宅快乐水', '4', '4', '2019-05-09 21:53:38', '2019-05-09 21:53:38', '50', '1', '3', '434', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('48', '21', '真果粒', '/upload/item/goods/1557410025707509403.jpg', '富含丰富的果粒', '48', '50', '2019-05-09 21:54:24', '2019-05-09 21:54:24', '43', '1', '3', '232', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('49', '20', '精选鸭蛋', '/upload/item/goods/1557410077741559630.jpg', '营养丰富', '3', '3', '2019-05-15 21:55:17', '2019-05-09 21:55:17', '45', '1', '4', '234', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('50', '18', '鸭', '/upload/item/goods/1557410128108855949.jpg', '鸭是为餐桌上的上乘肴馔，也是人们进补的优良食品。鸭肉的营养价值与鸡肉相仿。但在中医看来，鸭子吃的食物多为水生物，故其肉性味甘、寒，入肺胃肾经，有滋补、养胃、补肾、除痨热骨蒸、消水肿、止热痢、止咳化痰等作用。', '35', '35', '2019-05-15 21:56:13', '2019-05-09 21:56:13', '40', '1', '3', '346', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('51', '21', '东方树叶', '/upload/item/goods/1557410187109029498.jpg', '东方树叶是农夫山泉公司最新出品的一款茶饮料，用农夫山泉泡制，主打0卡路里。1610年中国茶叶乘着东印度公司的商船漂洋过海，饮茶之风迅速传遍欧洲大陆。因一时不知如何命名，且其来自神秘的东方，故被称为“神奇的东方树叶”。', '6', '6', '2019-05-21 21:57:05', '2019-05-09 21:57:05', '17', '1', '6', '463', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('52', '21', '果汁', '/upload/item/goods/1557410234310605768.jpg', '美味新鲜', '15', '15', '2019-05-09 21:58:00', '2019-05-09 21:58:00', '15', '1', '3', '455', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('53', '19', '鲫鱼', '/upload/item/goods/1557410788040552884.jpg', '鲫鱼主要是以植物为食的杂食性鱼，喜群集而行，择食而居。肉质细嫩，营养价值很高，每百克肉含蛋白质13克、脂肪11克，并含有大量的钙、磷、铁等矿物质。', '8', '8', '2019-05-09 22:07:11', '2019-05-09 22:07:11', '15', '1', '1', '78', 'yanjin', '0');
INSERT INTO `t_g_info` VALUES ('54', '21', '111', '/upload/item/goods/1557538476978438566.jpg', '营养丰富', '21', '22', '2019-05-21 09:35:24', '2019-05-11 09:35:24', '0', '1', '3', '133', 'yanjin', '0');

-- ----------------------------
-- Table structure for `t_g_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_g_type`;
CREATE TABLE `t_g_type` (
  `typeid` int(2) NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL,
  `parent_id` int(2) DEFAULT NULL COMMENT '当parent_id为null时说明是大类，否则是小分类',
  `add_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `operator_name` varchar(30) NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除；1：已删除',
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_g_type
-- ----------------------------
INSERT INTO `t_g_type` VALUES ('16', '蔬菜', null, '2019-04-06 17:22:05', '2019-04-06 17:22:12', 'yilia', '0');
INSERT INTO `t_g_type` VALUES ('17', '水果', null, '2019-04-06 17:23:20', '2019-04-06 17:23:22', 'yilia', '0');
INSERT INTO `t_g_type` VALUES ('18', ' 肉类', null, '2019-04-06 17:23:43', '2019-04-06 17:23:48', 'yilia', '0');
INSERT INTO `t_g_type` VALUES ('19', '水产', null, '2019-04-06 17:24:04', '2019-04-06 17:24:07', 'yilia', '0');
INSERT INTO `t_g_type` VALUES ('20', '蛋类', null, '2019-04-06 17:24:25', '2019-04-06 17:24:27', 'yilia', '0');
INSERT INTO `t_g_type` VALUES ('21', '饮料冲调', null, '2019-04-06 17:25:10', '2019-04-06 17:25:12', 'yilia', '0');

-- ----------------------------
-- Table structure for `t_o_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_o_detail`;
CREATE TABLE `t_o_detail` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ono` varchar(255) NOT NULL,
  `gid` int(5) NOT NULL,
  `count` int(5) NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除；1：已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_o_detail
-- ----------------------------
INSERT INTO `t_o_detail` VALUES ('1', '1555149145525', '10', '5', '1');
INSERT INTO `t_o_detail` VALUES ('2', '1555149145525', '1', '2', '1');
INSERT INTO `t_o_detail` VALUES ('3', '1555149275153', '10', '1', '0');
INSERT INTO `t_o_detail` VALUES ('4', '1555149496750', '10', '1', '0');
INSERT INTO `t_o_detail` VALUES ('5', '1555149782398', '10', '1', '1');
INSERT INTO `t_o_detail` VALUES ('6', '1555149819845', '1', '1', '1');
INSERT INTO `t_o_detail` VALUES ('7', '1555149852469', '1', '1', '0');
INSERT INTO `t_o_detail` VALUES ('8', '1555152007743', '10', '1', '0');
INSERT INTO `t_o_detail` VALUES ('9', '1555262854947', '25', '1', '0');
INSERT INTO `t_o_detail` VALUES ('10', '1555262854947', '17', '1', '0');
INSERT INTO `t_o_detail` VALUES ('11', '1557303972331', '23', '2', '0');
INSERT INTO `t_o_detail` VALUES ('12', '1557304001494', '23', '1', '1');
INSERT INTO `t_o_detail` VALUES ('13', '1557304060145', '24', '1', '0');
INSERT INTO `t_o_detail` VALUES ('14', '1557373398231', '26', '2', '0');
INSERT INTO `t_o_detail` VALUES ('15', '1557373398231', '14', '1', '0');
INSERT INTO `t_o_detail` VALUES ('16', '1557411271862', '29', '1', '0');
INSERT INTO `t_o_detail` VALUES ('17', '1557411271862', '27', '1', '0');
INSERT INTO `t_o_detail` VALUES ('18', '1557411450203', '35', '1', '0');
INSERT INTO `t_o_detail` VALUES ('19', '1557481095553', '51', '1', '0');
INSERT INTO `t_o_detail` VALUES ('20', '1557481095553', '42', '1', '0');
INSERT INTO `t_o_detail` VALUES ('21', '1557505774773', '27', '1', '0');
INSERT INTO `t_o_detail` VALUES ('22', '1557505774773', '29', '1', '0');
INSERT INTO `t_o_detail` VALUES ('23', '1557505774773', '32', '2', '0');
INSERT INTO `t_o_detail` VALUES ('24', '1557538362518', '14', '3', '0');
INSERT INTO `t_o_detail` VALUES ('25', '1557538362518', '42', '2', '0');
INSERT INTO `t_o_detail` VALUES ('26', '1557538362518', '51', '1', '0');
INSERT INTO `t_o_detail` VALUES ('27', '1557538362518', '33', '1', '0');
INSERT INTO `t_o_detail` VALUES ('28', '1557848569724', '18', '1', '0');
INSERT INTO `t_o_detail` VALUES ('29', '1557849147021', '15', '1', '0');
INSERT INTO `t_o_detail` VALUES ('30', '1557886485896', '48', '3', '0');
INSERT INTO `t_o_detail` VALUES ('31', '1557886843287', '19', '2', '0');
INSERT INTO `t_o_detail` VALUES ('32', '1558486350568', '14', '2', '1');
INSERT INTO `t_o_detail` VALUES ('33', '1558486571740', '18', '1', '1');
INSERT INTO `t_o_detail` VALUES ('34', '1558486589412', '14', '1', '0');
INSERT INTO `t_o_detail` VALUES ('35', '1558507775130', '17', '1', '0');
INSERT INTO `t_o_detail` VALUES ('36', '1558507775130', '32', '1', '0');

-- ----------------------------
-- Table structure for `t_o_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_o_info`;
CREATE TABLE `t_o_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ono` varchar(255) NOT NULL,
  `uid` int(5) NOT NULL,
  `allprice` double NOT NULL,
  `state` int(2) DEFAULT '0' COMMENT '订单的状态（0：未完成；1：已完成）',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address_id` int(2) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除；1：已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_o_info
-- ----------------------------
INSERT INTO `t_o_info` VALUES ('1', '1555149145525', '5', '51', '0', '2019-04-13 17:52:26', '2019-04-13 17:52:26', '13', '', '1');
INSERT INTO `t_o_info` VALUES ('2', '1555149275153', '5', '9', '1', '2019-04-13 17:54:35', '2019-04-13 17:54:35', '13', '', '0');
INSERT INTO `t_o_info` VALUES ('3', '1555149496750', '5', '9', '1', '2019-04-13 17:58:17', '2019-04-13 17:58:17', '13', '', '0');
INSERT INTO `t_o_info` VALUES ('4', '1555149782398', '5', '9', '1', '2019-04-13 18:03:02', '2019-04-13 18:03:02', '13', '', '1');
INSERT INTO `t_o_info` VALUES ('5', '1555149819845', '5', '3', '0', '2019-04-13 18:03:40', '2019-04-13 18:03:40', '1', '', '1');
INSERT INTO `t_o_info` VALUES ('6', '1555149852469', '5', '3', '0', '2019-04-13 18:04:12', '2019-04-13 18:04:12', '13', '', '0');
INSERT INTO `t_o_info` VALUES ('7', '1555152007743', '5', '9', '1', '2019-04-13 18:40:08', '2019-04-13 18:40:08', '13', '', '0');
INSERT INTO `t_o_info` VALUES ('8', '1555262854947', '5', '49', '1', '2019-04-15 01:27:35', '2019-04-15 01:27:35', '13', '保证质感', '0');
INSERT INTO `t_o_info` VALUES ('9', '1557303972331', '7', '34', '1', '2019-05-08 16:26:12', '2019-05-08 16:26:12', '17', '尽快送达', '0');
INSERT INTO `t_o_info` VALUES ('10', '1557304001494', '7', '17', '1', '2019-05-08 16:26:41', '2019-05-08 16:26:41', '16', '', '1');
INSERT INTO `t_o_info` VALUES ('11', '1557304060145', '7', '17', '0', '2019-05-08 16:27:40', '2019-05-08 16:27:40', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('12', '1557373398231', '7', '95', '1', '2019-05-09 11:43:18', '2019-05-09 11:43:18', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('13', '1557411271862', '8', '10', '1', '2019-05-09 22:14:32', '2019-05-09 22:14:32', '18', '', '0');
INSERT INTO `t_o_info` VALUES ('14', '1557411450203', '8', '8', '0', '2019-05-09 22:17:30', '2019-05-09 22:17:30', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('15', '1557481095553', '8', '94', '1', '2019-05-10 17:38:16', '2019-05-10 17:38:16', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('16', '1557505774773', '8', '18', '1', '2019-05-11 00:29:35', '2019-05-11 00:29:35', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('17', '1557538362518', '8', '409', '1', '2019-05-11 09:32:43', '2019-05-11 09:32:43', '19', '', '0');
INSERT INTO `t_o_info` VALUES ('18', '1557848569724', '8', '10', '1', '2019-05-14 23:42:50', '2019-05-14 23:42:50', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('19', '1557849147021', '8', '12', '1', '2019-05-14 23:52:27', '2019-05-14 23:52:27', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('20', '1557886485896', '8', '144', '1', '2019-05-15 10:14:46', '2019-05-15 10:14:46', '20', '', '0');
INSERT INTO `t_o_info` VALUES ('21', '1557886843287', '8', '4', '0', '2019-05-15 10:20:43', '2019-05-15 10:20:43', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('22', '1558486350568', '9', '150', '1', '2019-05-22 08:52:31', '2019-05-22 08:52:31', '21', '', '1');
INSERT INTO `t_o_info` VALUES ('23', '1558486571740', '9', '10', '1', '2019-05-22 08:56:12', '2019-05-22 08:56:12', '16', '', '1');
INSERT INTO `t_o_info` VALUES ('24', '1558486589412', '9', '75', '0', '2019-05-22 08:56:29', '2019-05-22 08:56:29', '16', '', '0');
INSERT INTO `t_o_info` VALUES ('25', '1558507775130', '9', '50', '1', '2019-05-22 14:49:35', '2019-05-22 14:49:35', '22', '', '0');

-- ----------------------------
-- Table structure for `t_u_address`
-- ----------------------------
DROP TABLE IF EXISTS `t_u_address`;
CREATE TABLE `t_u_address` (
  `address_id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '收货人的姓名',
  `phone` varchar(30) NOT NULL COMMENT '收货人的电话',
  `address` varchar(255) NOT NULL COMMENT '收货人的地址',
  `isdefault` int(2) DEFAULT '0' COMMENT '是否为默认地址（1：默认；0：非默认）',
  `use_count` int(5) DEFAULT '0' COMMENT '使用次数',
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除；1：已删除',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_u_address
-- ----------------------------
INSERT INTO `t_u_address` VALUES ('1', '5', '111', '123456789', 'address', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('2', '5', '222', '12345432', '请问', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('3', '5', '333', '13654215478', '北京市北京城区东城区所发生的', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('4', '5', '333', '13654215478', '北京市北京城区东城区一号楼', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('5', '5', 'srs', '13654215478', '北京市北京城区东城区一号楼', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('6', '5', 'yilia', '13654215478', '北京市北京城区东城区一号楼', '0', '0', '0');
INSERT INTO `t_u_address` VALUES ('7', '5', '333', '13654215478', '北京市北京城区东城区所发生的', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('8', '5', 'cff', '13654215478', '北京市北京城区东城区一号楼', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('9', '5', '333', '13654215478', '北京市北京城区东城区s ', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('10', '5', 'cff', '13654215478', '北京市北京城区东城区所发生的', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('11', '5', 'cff', '13654215478', '北京市北京城区东城区所发生的', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('12', '5', 'cff', '13654215478', '北京市北京城区东城区一号楼s ', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('13', '5', 'cff', '13654215478', '北京市北京城区东城区一号楼s s ', '0', '0', '0');
INSERT INTO `t_u_address` VALUES ('14', '5', 'cff', '13654215478', '北京市北京城区东城区一号楼', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('15', '5', 'srs', '13654215478', '北京市北京城区东城区所发生的', '0', '0', '1');
INSERT INTO `t_u_address` VALUES ('16', '5', '严瑾瑾', '15935232456', '湖北省武汉市洪山区白沙洲武昌工学院', '1', '0', '0');
INSERT INTO `t_u_address` VALUES ('17', '7', '李老师', '13654215478', '广东省清远市佛冈县环水花园', '0', '0', '0');
INSERT INTO `t_u_address` VALUES ('18', '8', 'yilia', '15927537656', '广东省深圳市南山区海王银河科技大厦', '0', '0', '0');
INSERT INTO `t_u_address` VALUES ('19', '8', 'ylia22', '15965325654', '北京市北京城区东城区222', '0', '0', '0');
INSERT INTO `t_u_address` VALUES ('20', '8', '徐利良', '13654215479', '安徽省黄山市徽州区附一栋', '0', '0', '0');
INSERT INTO `t_u_address` VALUES ('21', '9', '11', '13477556787', '山东省滨州市沾化区111111', '1', '0', '0');
INSERT INTO `t_u_address` VALUES ('22', '9', '22', '13477668765', '安徽省黄山市徽州区33', '0', '0', '0');

-- ----------------------------
-- Table structure for `t_u_collections`
-- ----------------------------
DROP TABLE IF EXISTS `t_u_collections`;
CREATE TABLE `t_u_collections` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) NOT NULL COMMENT '用户id',
  `gid` int(5) NOT NULL COMMENT '收藏商品的id',
  `add_time` datetime NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除；1：已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_u_collections
-- ----------------------------
INSERT INTO `t_u_collections` VALUES ('1', '5', '8', '2019-04-09 23:51:59', '1');
INSERT INTO `t_u_collections` VALUES ('2', '5', '8', '2019-04-09 23:53:30', '1');
INSERT INTO `t_u_collections` VALUES ('3', '5', '8', '2019-04-09 23:54:18', '1');
INSERT INTO `t_u_collections` VALUES ('4', '5', '9', '2019-04-09 23:57:30', '1');
INSERT INTO `t_u_collections` VALUES ('5', '5', '9', '2019-04-10 00:03:04', '1');
INSERT INTO `t_u_collections` VALUES ('6', '5', '10', '2019-04-11 23:50:56', '1');
INSERT INTO `t_u_collections` VALUES ('7', '5', '5', '2019-04-13 22:41:20', '1');
INSERT INTO `t_u_collections` VALUES ('8', '5', '21', '2019-04-15 22:22:12', '1');
INSERT INTO `t_u_collections` VALUES ('9', '5', '19', '2019-04-15 22:22:16', '0');
INSERT INTO `t_u_collections` VALUES ('10', '5', '20', '2019-04-15 22:22:20', '0');
INSERT INTO `t_u_collections` VALUES ('11', '5', '12', '2019-04-15 22:22:24', '0');
INSERT INTO `t_u_collections` VALUES ('12', '5', '24', '2019-04-15 22:22:27', '0');
INSERT INTO `t_u_collections` VALUES ('13', '5', '23', '2019-04-15 22:22:30', '0');
INSERT INTO `t_u_collections` VALUES ('14', '5', '18', '2019-04-15 22:22:37', '0');
INSERT INTO `t_u_collections` VALUES ('15', '5', '17', '2019-04-15 22:22:39', '0');
INSERT INTO `t_u_collections` VALUES ('16', '7', '23', '2019-05-08 16:24:05', '0');
INSERT INTO `t_u_collections` VALUES ('17', '7', '24', '2019-05-08 16:24:34', '0');
INSERT INTO `t_u_collections` VALUES ('18', '7', '26', '2019-05-08 19:57:01', '0');
INSERT INTO `t_u_collections` VALUES ('19', '8', '29', '2019-05-09 22:13:14', '0');
INSERT INTO `t_u_collections` VALUES ('20', '8', '27', '2019-05-10 10:49:35', '0');
INSERT INTO `t_u_collections` VALUES ('21', '7', '48', '2019-05-10 11:56:46', '0');
INSERT INTO `t_u_collections` VALUES ('22', '8', '42', '2019-05-11 00:25:27', '0');
INSERT INTO `t_u_collections` VALUES ('23', '8', '52', '2019-05-11 00:25:34', '0');
INSERT INTO `t_u_collections` VALUES ('24', '8', '33', '2019-05-11 09:30:57', '1');
INSERT INTO `t_u_collections` VALUES ('25', '8', '18', '2019-05-15 10:10:15', '1');
INSERT INTO `t_u_collections` VALUES ('26', '8', '18', '2019-05-15 10:10:25', '1');
INSERT INTO `t_u_collections` VALUES ('27', '9', '46', '2019-05-22 08:49:50', '1');
INSERT INTO `t_u_collections` VALUES ('28', '9', '46', '2019-05-22 08:49:53', '1');
INSERT INTO `t_u_collections` VALUES ('29', '9', '14', '2019-05-22 08:56:25', '0');
INSERT INTO `t_u_collections` VALUES ('30', '9', '17', '2019-05-22 08:58:24', '0');
INSERT INTO `t_u_collections` VALUES ('31', '9', '18', '2019-05-22 14:47:59', '1');
INSERT INTO `t_u_collections` VALUES ('32', '9', '18', '2019-05-22 14:48:05', '0');

-- ----------------------------
-- Table structure for `t_u_shopcar`
-- ----------------------------
DROP TABLE IF EXISTS `t_u_shopcar`;
CREATE TABLE `t_u_shopcar` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) NOT NULL,
  `gid` int(5) NOT NULL,
  `count` int(5) NOT NULL,
  `add_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除；1：已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_u_shopcar
-- ----------------------------
INSERT INTO `t_u_shopcar` VALUES ('1', '5', '10', '11', '2019-04-10 22:27:13', '2019-04-10 23:00:34', '1');
INSERT INTO `t_u_shopcar` VALUES ('2', '5', '9', '2', '2019-04-10 23:14:41', '2019-04-10 23:20:16', '1');
INSERT INTO `t_u_shopcar` VALUES ('3', '5', '9', '1', '2019-04-10 23:21:00', '2019-04-10 23:21:00', '1');
INSERT INTO `t_u_shopcar` VALUES ('4', '5', '9', '1', '2019-04-10 23:21:49', '2019-04-10 23:21:49', '1');
INSERT INTO `t_u_shopcar` VALUES ('5', '5', '1', '1', '2019-04-10 23:21:56', '2019-04-10 23:21:56', '1');
INSERT INTO `t_u_shopcar` VALUES ('6', '5', '8', '1', '2019-04-10 23:22:06', '2019-04-10 23:22:06', '1');
INSERT INTO `t_u_shopcar` VALUES ('7', '5', '8', '1', '2019-04-10 23:23:19', '2019-04-10 23:23:19', '1');
INSERT INTO `t_u_shopcar` VALUES ('8', '5', '8', '1', '2019-04-10 23:24:42', '2019-04-10 23:24:42', '1');
INSERT INTO `t_u_shopcar` VALUES ('9', '5', '8', '1', '2019-04-10 23:24:48', '2019-04-10 23:24:48', '1');
INSERT INTO `t_u_shopcar` VALUES ('10', '5', '1', '1', '2019-04-10 23:24:54', '2019-04-10 23:24:54', '1');
INSERT INTO `t_u_shopcar` VALUES ('11', '5', '1', '6', '2019-04-10 23:28:50', '2019-04-11 21:41:10', '1');
INSERT INTO `t_u_shopcar` VALUES ('12', '5', '10', '5', '2019-04-11 21:39:34', '2019-04-11 23:01:14', '1');
INSERT INTO `t_u_shopcar` VALUES ('13', '5', '9', '6', '2019-04-11 21:46:33', '2019-04-11 22:00:33', '1');
INSERT INTO `t_u_shopcar` VALUES ('14', '5', '1', '4', '2019-04-11 23:01:21', '2019-04-11 23:22:54', '1');
INSERT INTO `t_u_shopcar` VALUES ('15', '5', '10', '1', '2019-04-11 23:03:02', '2019-04-11 23:03:02', '1');
INSERT INTO `t_u_shopcar` VALUES ('16', '5', '10', '1', '2019-04-11 23:04:18', '2019-04-11 23:04:18', '1');
INSERT INTO `t_u_shopcar` VALUES ('17', '5', '10', '1', '2019-04-11 23:04:52', '2019-04-11 23:04:52', '1');
INSERT INTO `t_u_shopcar` VALUES ('18', '5', '10', '1', '2019-04-11 23:05:04', '2019-04-11 23:05:04', '1');
INSERT INTO `t_u_shopcar` VALUES ('19', '5', '10', '1', '2019-04-11 23:08:37', '2019-04-11 23:08:37', '1');
INSERT INTO `t_u_shopcar` VALUES ('20', '5', '10', '2', '2019-04-11 23:13:07', '2019-04-11 23:13:18', '1');
INSERT INTO `t_u_shopcar` VALUES ('21', '5', '10', '1', '2019-04-11 23:15:37', '2019-04-11 23:15:37', '1');
INSERT INTO `t_u_shopcar` VALUES ('22', '5', '10', '1', '2019-04-11 23:20:07', '2019-04-11 23:20:07', '1');
INSERT INTO `t_u_shopcar` VALUES ('23', '5', '10', '1', '2019-04-11 23:22:47', '2019-04-11 23:22:47', '1');
INSERT INTO `t_u_shopcar` VALUES ('24', '5', '10', '1', '2019-04-11 23:23:12', '2019-04-11 23:23:12', '1');
INSERT INTO `t_u_shopcar` VALUES ('25', '5', '10', '5', '2019-04-12 22:28:38', '2019-04-13 16:13:02', '1');
INSERT INTO `t_u_shopcar` VALUES ('26', '5', '1', '1', '2019-04-12 22:29:17', '2019-04-12 22:30:53', '1');
INSERT INTO `t_u_shopcar` VALUES ('27', '5', '1', '2', '2019-04-12 22:31:14', '2019-04-13 12:14:37', '1');
INSERT INTO `t_u_shopcar` VALUES ('28', '5', '10', '1', '2019-04-13 17:54:11', '2019-04-13 17:54:11', '1');
INSERT INTO `t_u_shopcar` VALUES ('29', '5', '10', '1', '2019-04-13 17:55:12', '2019-04-13 17:55:12', '1');
INSERT INTO `t_u_shopcar` VALUES ('30', '5', '10', '1', '2019-04-13 18:02:38', '2019-04-13 18:02:38', '1');
INSERT INTO `t_u_shopcar` VALUES ('31', '5', '1', '1', '2019-04-13 18:03:31', '2019-04-13 18:03:31', '1');
INSERT INTO `t_u_shopcar` VALUES ('32', '5', '1', '1', '2019-04-13 18:04:06', '2019-04-13 18:04:06', '1');
INSERT INTO `t_u_shopcar` VALUES ('33', '5', '10', '1', '2019-04-13 18:40:04', '2019-04-13 18:40:04', '1');
INSERT INTO `t_u_shopcar` VALUES ('34', '5', '10', '2', '2019-04-13 22:45:12', '2019-04-13 23:11:05', '1');
INSERT INTO `t_u_shopcar` VALUES ('35', '5', '3', '1', '2019-04-13 23:13:04', '2019-04-13 23:13:04', '1');
INSERT INTO `t_u_shopcar` VALUES ('36', '5', '22', '2', '2019-04-15 01:20:38', '2019-04-15 01:21:27', '1');
INSERT INTO `t_u_shopcar` VALUES ('37', '5', '25', '1', '2019-04-15 01:21:43', '2019-04-15 01:21:43', '1');
INSERT INTO `t_u_shopcar` VALUES ('38', '5', '18', '1', '2019-04-15 01:25:04', '2019-04-15 01:25:04', '1');
INSERT INTO `t_u_shopcar` VALUES ('39', '5', '17', '1', '2019-04-15 01:25:58', '2019-04-15 01:25:58', '1');
INSERT INTO `t_u_shopcar` VALUES ('40', '5', '20', '1', '2019-04-15 01:26:07', '2019-04-15 01:26:07', '1');
INSERT INTO `t_u_shopcar` VALUES ('41', '5', '24', '1', '2019-04-15 22:25:40', '2019-04-15 22:25:40', '0');
INSERT INTO `t_u_shopcar` VALUES ('42', '5', '23', '1', '2019-04-15 22:25:47', '2019-04-15 22:25:47', '0');
INSERT INTO `t_u_shopcar` VALUES ('43', '7', '23', '2', '2019-05-08 16:24:40', '2019-05-08 16:24:42', '1');
INSERT INTO `t_u_shopcar` VALUES ('44', '7', '24', '3', '2019-05-08 16:24:52', '2019-05-08 16:24:56', '1');
INSERT INTO `t_u_shopcar` VALUES ('45', '7', '23', '1', '2019-05-08 16:26:36', '2019-05-08 16:26:36', '1');
INSERT INTO `t_u_shopcar` VALUES ('46', '7', '24', '1', '2019-05-08 16:27:37', '2019-05-08 16:27:37', '1');
INSERT INTO `t_u_shopcar` VALUES ('47', '7', '26', '2', '2019-05-08 16:38:45', '2019-05-08 19:57:02', '1');
INSERT INTO `t_u_shopcar` VALUES ('48', '7', '14', '1', '2019-05-09 11:42:31', '2019-05-09 11:42:31', '1');
INSERT INTO `t_u_shopcar` VALUES ('49', '8', '29', '1', '2019-05-09 22:13:16', '2019-05-09 22:13:16', '1');
INSERT INTO `t_u_shopcar` VALUES ('50', '8', '27', '1', '2019-05-09 22:13:25', '2019-05-09 22:13:25', '1');
INSERT INTO `t_u_shopcar` VALUES ('51', '8', '35', '1', '2019-05-09 22:17:26', '2019-05-09 22:17:26', '1');
INSERT INTO `t_u_shopcar` VALUES ('52', '8', '51', '1', '2019-05-10 10:45:50', '2019-05-10 10:45:50', '1');
INSERT INTO `t_u_shopcar` VALUES ('53', '8', '42', '1', '2019-05-10 17:37:48', '2019-05-10 17:37:48', '1');
INSERT INTO `t_u_shopcar` VALUES ('54', '8', '27', '1', '2019-05-11 00:25:51', '2019-05-11 00:25:51', '1');
INSERT INTO `t_u_shopcar` VALUES ('55', '8', '29', '1', '2019-05-11 00:25:57', '2019-05-11 00:28:42', '1');
INSERT INTO `t_u_shopcar` VALUES ('56', '8', '32', '2', '2019-05-11 00:26:03', '2019-05-11 00:28:38', '1');
INSERT INTO `t_u_shopcar` VALUES ('57', '8', '14', '3', '2019-05-11 00:31:35', '2019-05-11 09:31:51', '1');
INSERT INTO `t_u_shopcar` VALUES ('58', '8', '42', '2', '2019-05-11 00:31:43', '2019-05-11 09:31:52', '1');
INSERT INTO `t_u_shopcar` VALUES ('59', '8', '51', '1', '2019-05-11 00:31:52', '2019-05-11 00:31:52', '1');
INSERT INTO `t_u_shopcar` VALUES ('60', '8', '33', '1', '2019-05-11 09:31:38', '2019-05-11 09:31:38', '1');
INSERT INTO `t_u_shopcar` VALUES ('61', '8', '18', '1', '2019-05-14 23:42:45', '2019-05-14 23:42:45', '1');
INSERT INTO `t_u_shopcar` VALUES ('62', '8', '15', '1', '2019-05-14 23:52:22', '2019-05-14 23:52:22', '1');
INSERT INTO `t_u_shopcar` VALUES ('63', '8', '48', '3', '2019-05-15 10:11:57', '2019-05-15 10:12:06', '1');
INSERT INTO `t_u_shopcar` VALUES ('64', '8', '19', '2', '2019-05-15 10:19:34', '2019-05-15 10:20:11', '1');
INSERT INTO `t_u_shopcar` VALUES ('65', '9', '14', '2', '2019-05-22 08:51:26', '2019-05-22 08:51:31', '1');
INSERT INTO `t_u_shopcar` VALUES ('66', '9', '18', '1', '2019-05-22 08:53:34', '2019-05-22 08:53:34', '1');
INSERT INTO `t_u_shopcar` VALUES ('67', '9', '14', '1', '2019-05-22 08:56:26', '2019-05-22 08:56:26', '1');
INSERT INTO `t_u_shopcar` VALUES ('68', '9', '17', '1', '2019-05-22 08:58:25', '2019-05-22 08:58:25', '1');
INSERT INTO `t_u_shopcar` VALUES ('69', '9', '32', '1', '2019-05-22 14:48:27', '2019-05-22 14:48:40', '1');
INSERT INTO `t_u_shopcar` VALUES ('70', '9', '46', '1', '2019-05-22 14:50:37', '2019-05-22 14:50:37', '0');

-- ----------------------------
-- Table structure for `t_u_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_u_type`;
CREATE TABLE `t_u_type` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usagetype` int(2) NOT NULL,
  `typename` varchar(50) NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除；1：已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_u_type
-- ----------------------------

-- ----------------------------
-- Table structure for `t_u_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_u_user`;
CREATE TABLE `t_u_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `sex` char(2) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usagetype` int(2) DEFAULT '0' COMMENT '用户的类型（0：会员；1：管理员；2：超级管理员）',
  `image_path` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `birthday` date NOT NULL,
  `sign_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `isenable` int(2) DEFAULT '1' COMMENT '账号是否可用（0：不可用；1：可用）',
  `isdeleted` int(2) DEFAULT '0' COMMENT '是否删除（0：未删除；1已删除）',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_u_user
-- ----------------------------
INSERT INTO `t_u_user` VALUES ('1', 'yjj', '13567878987', '女', 'tQu0n1Ak8K47BrIlfAUZakF=dcPmkvhfBvs92GBqKxZIQi52dYHhyDehrwCaxhx7Mi52ktV6136', '0', '/test/test', '2019-03-05', '2019-03-02 15:45:33', '2019-05-11 09:35:57', '0', '0', '用户对信息进行了修改');
INSERT INTO `t_u_user` VALUES ('2', 'yjj2', '', '女', 'xQZ0x12kzK37srblSAbZik7=y6XloldN8t6NGpfw1pfEMnyhaWp7nR3CAZFoFD2Q8OLx71US9k9', '0', '/test/test', '2019-03-05', '2019-03-09 22:52:16', '2019-05-09 11:16:06', '0', '0', '用户对信息进行了修改');
INSERT INTO `t_u_user` VALUES ('4', 'CFX', '15871705402', '男', 'CQ50t1RkbKt76rRlKAoZ9kM=WMBlKRrW9owDBfeDsmVgcO4KAJGgSU4kh8Kl206Z9BKViqxgc9t', '0', '/test/test', '2019-03-14', '2019-03-30 17:40:17', '2019-03-30 17:40:17', '1', '0', null);
INSERT INTO `t_u_user` VALUES ('6', 'yanjin', '15927537657', '女', 'nQ60y14kCKn72rblUAJZPkG=XCf2Ta2V0RlR4HpxaydsOe4SeX7B1sppNx7YTSlv5kLDWCDbn1s', '1', '/test/test', '1998-03-06', '2019-05-04 14:42:16', '2019-05-04 14:42:16', '1', '0', null);
INSERT INTO `t_u_user` VALUES ('7', '李老师', '13545211503', '女', 'EQsAdHDlwVcoUUIcH4B93wg=F50V5WWKjI7mSnvH52L2TTT7K9Nng5SFFpeckMereNfyBBUrpmq', '0', '/test/test', '2019-05-25', '2019-05-08 16:23:31', '2019-05-09 19:14:19', '1', '0', '用户对信息进行了修改');
INSERT INTO `t_u_user` VALUES ('8', 'yilia', '15927537656', '女', 'zQK0p1JkFKy70rPlqAaZgkE=4ab8p0lz7otLkk3y2uEAcvLpGn1z1CCmBy5xMXNzGH3ljRVfFPa', '0', '/test/test', '1999-01-01', '2019-05-09 22:12:01', '2019-05-09 22:12:01', '1', '0', null);
INSERT INTO `t_u_user` VALUES ('9', '15064040108', '18671340827', '男', 'cQO0W1jkeKG7Trul5AXZTkX=NBk2csiLSpwi0rXKwdIa4xGI3bnEaoFtnVmUvIrzZgRfCVaOAe9', '0', '/test/test', '2019-05-16', '2019-05-16 11:27:16', '2019-05-16 11:27:16', '1', '0', null);
