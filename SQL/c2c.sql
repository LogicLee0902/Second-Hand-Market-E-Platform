DROP DATABASE IF EXISTS `c2c`;
CREATE DATABASE /*!32312 IF NOT EXISTS */ `c2c` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `c2c`;

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admininformation
-- ----------------------------
DROP TABLE IF EXISTS `admininformation`;
CREATE TABLE `admininformation`
(
    `id`                                       int(11)  NOT NULL,
    `ano`                                      char(12) NOT NULL,
                                    `password` char(24) NOT NULL,
                                    `modified` datetime DEFAULT NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for adminoperation
-- ----------------------------
DROP TABLE IF EXISTS `adminoperation`;
CREATE TABLE `adminoperation` (
                                  `id` int(11) NOT NULL,
                                  `aid` int(11) NOT NULL,
                                  `modified` datetime DEFAULT NULL,
                                  `operation` varchar(255) NOT NULL,
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for allkinds
-- ----------------------------
DROP TABLE IF EXISTS `allkinds`;
CREATE TABLE `allkinds`
(
    `id`       int(11)     NOT NULL AUTO_INCREMENT,
    `name`     varchar(50) NOT NULL,
    `modified` datetime DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of allkinds
-- ----------------------------
INSERT INTO `allkinds`
VALUES ('1', '数码科技', null);
INSERT INTO `allkinds`
VALUES ('2', '影音家电', null);
INSERT INTO `allkinds`
VALUES ('3', '鞋服配饰', null);
INSERT INTO `allkinds`
VALUES ('4', '运动代步', null);
INSERT INTO `allkinds`
VALUES ('5', '书籍文具', null);
INSERT INTO `allkinds`
VALUES ('6', '其他类别', null);

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`
(
    `id`       int(11)     NOT NULL AUTO_INCREMENT,
    `name`     varchar(50) NOT NULL,
    `modified` datetime DEFAULT NULL,
    `aid`      int(11)     NOT NULL,
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '手机', null, '1');
INSERT INTO `classification` VALUES ('2', '相机', null, '1');
INSERT INTO `classification` VALUES ('3', '电脑', null, '1');
INSERT INTO `classification` VALUES ('4', '家电', null, '2');
INSERT INTO `classification` VALUES ('5', '影音', null, '2');
INSERT INTO `classification` VALUES ('6', '女装', null, '3');
INSERT INTO `classification` VALUES ('7', '男装', null, '3');
INSERT INTO `classification` VALUES ('8', '女鞋', null, '3');
INSERT INTO `classification`
VALUES ('9', '男鞋', null, '3');
INSERT INTO `classification`
VALUES ('10', '箱包', null, '3');
INSERT INTO `classification`
VALUES ('11', '手表', null, '3');
INSERT INTO `classification`
VALUES ('12', '器材', null, '4');
INSERT INTO `classification`
VALUES ('13', '代步', null, '4');
INSERT INTO `classification`
VALUES ('14', '修养', null, '5');
INSERT INTO `classification`
VALUES ('15', '专业', null, '5');
INSERT INTO `classification`
VALUES ('16', '文具', null, '5');
INSERT INTO `classification`
VALUES ('17', '其他', null, '6');

-- ----------------------------
-- Table structure for specifickinds
-- ----------------------------
DROP TABLE IF EXISTS `specifickinds`;
CREATE TABLE `specifickinds`
(
    `id`       int(11)     NOT NULL AUTO_INCREMENT,
    `name`     varchar(50) NOT NULL,
    `modified` datetime DEFAULT NULL,
    `cid`      int(11)     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 95
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of specifickinds
-- ----------------------------
INSERT INTO `specifickinds`
VALUES ('1', '苹果', null, '1');
INSERT INTO `specifickinds`
VALUES ('2', '三星', null, '1');
INSERT INTO `specifickinds`
VALUES ('3', '小米', null, '1');
INSERT INTO `specifickinds`
VALUES ('4', '华为', null, '1');
INSERT INTO `specifickinds`
VALUES ('5', '中兴', null, '1');
INSERT INTO `specifickinds`
VALUES ('6', '联想', null, '1');
INSERT INTO `specifickinds`
VALUES ('7', '魅族', null, '1');
INSERT INTO `specifickinds`
VALUES ('8', '其他', null, '1');
INSERT INTO `specifickinds`
VALUES ('9', '耳机', null, '1');
INSERT INTO `specifickinds`
VALUES ('10', '普通相机', null, '2');
INSERT INTO `specifickinds`
VALUES ('11', '单反', null, '2');
INSERT INTO `specifickinds`
VALUES ('12', '其他', null, '2');
INSERT INTO `specifickinds`
VALUES ('13', '笔记本', null, '3');
INSERT INTO `specifickinds`
VALUES ('14', '平板电脑', null, '3');
INSERT INTO `specifickinds`
VALUES ('15', '台式机', null, '3');
INSERT INTO `specifickinds`
VALUES ('16', '显示器', null, '3');
INSERT INTO `specifickinds`
VALUES ('17', '鼠标', null, '3');
INSERT INTO `specifickinds`
VALUES ('18', '硬盘', null, '3');
INSERT INTO `specifickinds`
VALUES ('19', 'U盘', null, '3');
INSERT INTO `specifickinds`
VALUES ('20', '移动硬盘', null, '3');
INSERT INTO `specifickinds`
VALUES ('21', '其他', null, '3');
INSERT INTO `specifickinds`
VALUES ('22', '洗衣机', null, '4');
INSERT INTO `specifickinds`
VALUES ('23', '饮水机', null, '4');
INSERT INTO `specifickinds`
VALUES ('24', '吹风机', null, '4');
INSERT INTO `specifickinds`
VALUES ('25', '剃须刀', null, '4');
INSERT INTO `specifickinds`
VALUES ('26', '风扇', null, '4');
INSERT INTO `specifickinds`
VALUES ('27', '煮蛋器', null, '4');
INSERT INTO `specifickinds`
VALUES ('28', '电磁炉', null, '4');
INSERT INTO `specifickinds`
VALUES ('29', '电饭煲', null, '4');
INSERT INTO `specifickinds`
VALUES ('30', '其他', null, '4');
INSERT INTO `specifickinds`
VALUES ('31', '耳机', null, '5');
INSERT INTO `specifickinds`
VALUES ('32', '音响', null, '5');
INSERT INTO `specifickinds`
VALUES ('33', '功放', null, '5');
INSERT INTO `specifickinds`
VALUES ('34', '低音炮', null, '5');
INSERT INTO `specifickinds`
VALUES ('35', '麦克风', null, '5');
INSERT INTO `specifickinds`
VALUES ('36', '上衣', null, '6');
INSERT INTO `specifickinds`
VALUES ('37', '裤子', null, '6');
INSERT INTO `specifickinds`
VALUES ('38', '裙子', null, '6');
INSERT INTO `specifickinds`
VALUES ('39', '其他', null, '6');
INSERT INTO `specifickinds`
VALUES ('40', '上衣', null, '7');
INSERT INTO `specifickinds`
VALUES ('41', '裤子', null, '7');
INSERT INTO `specifickinds`
VALUES ('42', '其他', null, '7');
INSERT INTO `specifickinds`
VALUES ('43', '运动鞋', null, '8');
INSERT INTO `specifickinds`
VALUES ('44', '皮鞋', null, '8');
INSERT INTO `specifickinds`
VALUES ('45', '帆布鞋', null, '8');
INSERT INTO `specifickinds`
VALUES ('46', '球鞋', null, '8');
INSERT INTO `specifickinds`
VALUES ('47', '板鞋', null, '8');
INSERT INTO `specifickinds`
VALUES ('48', '其他', null, '8');
INSERT INTO `specifickinds`
VALUES ('49', '运动鞋', null, '9');
INSERT INTO `specifickinds`
VALUES ('50', '皮鞋', null, '9');
INSERT INTO `specifickinds`
VALUES ('51', '帆布鞋', null, '9');
INSERT INTO `specifickinds`
VALUES ('52', '球鞋', null, '9');
INSERT INTO `specifickinds`
VALUES ('53', '板鞋', null, '9');
INSERT INTO `specifickinds`
VALUES ('54', '其他', null, '9');
INSERT INTO `specifickinds`
VALUES ('55', '背包', null, '10');
INSERT INTO `specifickinds`
VALUES ('56', '旅行箱', null, '10');
INSERT INTO `specifickinds`
VALUES ('57', '其他', null, '10');
INSERT INTO `specifickinds`
VALUES ('58', '机械表', null, '11');
INSERT INTO `specifickinds`
VALUES ('59', '石英表', null, '11');
INSERT INTO `specifickinds`
VALUES ('60', '电子表', null, '11');
INSERT INTO `specifickinds`
VALUES ('61', '其他', null, '11');
INSERT INTO `specifickinds`
VALUES ('62', '足球', null, '12');
INSERT INTO `specifickinds`
VALUES ('63', '羽毛球拍', null, '12');
INSERT INTO `specifickinds`
VALUES ('64', '网球拍', null, '12');
INSERT INTO `specifickinds`
VALUES ('65', '篮球', null, '12');
INSERT INTO `specifickinds`
VALUES ('66', '滑轮', null, '12');
INSERT INTO `specifickinds`
VALUES ('67', '乒乓球拍', null, '12');
INSERT INTO `specifickinds`
VALUES ('68', '滑板', null, '12');
INSERT INTO `specifickinds`
VALUES ('69', '其他', null, '12');
INSERT INTO `specifickinds`
VALUES ('70', '自行车', null, '13');
INSERT INTO `specifickinds`
VALUES ('71', '电动车', null, '13');
INSERT INTO `specifickinds`
VALUES ('72', '其他', null, '13');
INSERT INTO `specifickinds`
VALUES ('73', '文学', null, '14');
INSERT INTO `specifickinds`
VALUES ('74', '漫画', null, '14');
INSERT INTO `specifickinds`
VALUES ('75', '小说', null, '14');
INSERT INTO `specifickinds`
VALUES ('76', '其他', null, '14');
INSERT INTO `specifickinds`
VALUES ('77', '生物', null, '15');
INSERT INTO `specifickinds`
VALUES ('78', '化学', null, '15');
INSERT INTO `specifickinds`
VALUES ('79', '物理', null, '15');
INSERT INTO `specifickinds`
VALUES ('80', '语文', null, '15');
INSERT INTO `specifickinds`
VALUES ('81', '外语', null, '15');
INSERT INTO `specifickinds`
VALUES ('82', '数学', null, '15');
INSERT INTO `specifickinds`
VALUES ('83', '政治', null, '15');
INSERT INTO `specifickinds`
VALUES ('84', '历史', null, '15');
INSERT INTO `specifickinds`
VALUES ('85', '地理', null, '15');
INSERT INTO `specifickinds`
VALUES ('86', '计算机', null, '15');
INSERT INTO `specifickinds`
VALUES ('87', '机械', null, '15');
INSERT INTO `specifickinds`
VALUES ('88', '土木', null, '15');
INSERT INTO `specifickinds`
VALUES ('89', '艺术', null, '15');
INSERT INTO `specifickinds`
VALUES ('90', '其他', null, '15');
INSERT INTO `specifickinds`
VALUES ('91', '笔', null, '16');
INSERT INTO `specifickinds`
VALUES ('92', '其他', null, '16');
INSERT INTO `specifickinds`
VALUES ('93', '其他', null, '5');
INSERT INTO `specifickinds`
VALUES ('94', '其他', null, '17');

-- ----------------------------
-- Table structure for boughtshop
-- ----------------------------
DROP TABLE IF EXISTS `boughtshop`;
CREATE TABLE `boughtshop`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `modified` datetime DEFAULT NULL,
    `state`    int(11) NOT NULL,
    `uid`      int(11) NOT NULL,
    `sid`      int(11) NOT NULL,
    `quantity` int(11) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Table structure for goodscar
-- ----------------------------
DROP TABLE IF EXISTS `goodscar`;
CREATE TABLE `goodscar`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `modified` datetime         DEFAULT NULL,
    `sid`      int(11) NOT NULL,
    `uid`      int(11) NOT NULL,
    `quantity` int(11) NOT NULL,
    `display`  int(11) NOT NULL DEFAULT '1',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Table structure for goodsoforderform
-- ----------------------------
DROP TABLE IF EXISTS `goodsoforderform`;
CREATE TABLE `goodsoforderform`
(
    `id`                                       int(11) NOT NULL AUTO_INCREMENT,
    `ofid`                                     int(11) NOT NULL,
    `sid`                                      int(11) NOT NULL,
    `modified`                                 datetime        DEFAULT NULL,
                                    `quantity` int(11) NOT NULL,
                                    `display` int(11) NOT NULL DEFAULT '1',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `modified` datetime DEFAULT NULL,
                             `display` int(11) NOT NULL DEFAULT '1',
                             `uid` int(11) NOT NULL,
                             `address` varchar(255) NOT NULL,
                             `context` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `modified` datetime DEFAULT NULL,
                           `display` int(11) NOT NULL DEFAULT '1',
                           `uid` int(11) NOT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shopcontext
-- ----------------------------
DROP TABLE IF EXISTS `shopcontext`;
CREATE TABLE `shopcontext`
(
    `id`       int(11)      NOT NULL AUTO_INCREMENT,
    `modified` datetime              DEFAULT NULL,
    `sid`      int(11)      NOT NULL,
    `context`  varchar(255) NOT NULL,
    `display`  int(11)      NOT NULL DEFAULT '1',
    `uid`      int(11)      NOT NULL DEFAULT '1',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8;


-- ----------------------------
-- Records of shopcontext
-- ----------------------------
INSERT INTO `shopcontext`
VALUES ('1', '2022-12-06 16:09:35', '108', '同学推荐的，买来看看。', '1', '2');
INSERT INTO `shopcontext`
VALUES ('2', '2022-12-06 19:30:12', '108', '看完了，受益匪浅的一本书！', '1', '2');
INSERT INTO `shopcontext`
VALUES ('3', '2022-12-06 16:38:44', '108', '封面有点损坏了，总体还可以。', '1', '3');
INSERT INTO `shopcontext`
VALUES ('4', '2022-12-06 19:29:25', '108', '很好的一本书！！！', '1', '4');

-- ----------------------------
-- Table structure for shopinformation
-- ----------------------------
DROP TABLE IF EXISTS `shopinformation`;
CREATE TABLE `shopinformation`
(
    `id`          int(11)       NOT NULL AUTO_INCREMENT,
    `modified`    datetime               DEFAULT NULL,
    `name`        varchar(50)   NOT NULL,
    `level`       int(11)       NOT NULL,
    `remark`      varchar(255)  NOT NULL,
    `price`       decimal(10,2) NOT NULL,
    `sort`        int(11)       NOT NULL,
    `display`     int(11)       NOT NULL DEFAULT '1',
    `quantity`    int(11)       NOT NULL,
    `transaction` int(11)       NOT NULL DEFAULT '1',
    `sales`       int(11)                DEFAULT '0',
    `uid`         int(11)       NOT NULL,
    `image`       varchar(255)           DEFAULT NULL,
    `thumbnails`  varchar(255)           DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `index_uid` (`uid`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 109
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of shopinformation
-- ----------------------------
INSERT INTO `shopinformation`
VALUES ('1', '2022-12-10 15:29:20', 'c', '4', 'sdf', '12.00', '33', '1', '3', '0', '1', '1',
        '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('2', '2022-12-10 15:30:36', '算法导论', '9', '计算机人不得不读的一本书', '70.00', '86', '1', '1', '1', '2', '1',
        '/images/goods/algorithm.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('3', '2022-12-10 15:31:26', '爱我的人', '3', '爱', '12.00', '3', '1', '3', '1', '0', '4',
        '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('4', '2022-12-10 15:33:27', '729乒乓球拍', '5', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '77.56', '67', '1', '3', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('5', '2022-12-10 15:34:33', '苹果6S', '5', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '5000.00',
        '1', '1', '3', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('6', '2022-12-10 15:35:19', '三星5A', '5', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '4000.12',
        '2', '1', '3', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('7', '2022-12-10 15:36:09', '小米6', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '3000.56',
        '3', '1', '3', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('8', '2022-12-10 15:36:38', '华为8', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '3000.57',
        '4', '1', '3', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('9', '2022-12-10 15:37:08', '中兴8', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '3000.57',
        '5', '1', '3', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('10', '2022-12-10 15:37:31', '联系9', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '4654.00',
        '6', '1', '3', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('11', '2022-12-10 15:37:51', '魅族7S', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '4434.00', '7', '1', '3', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('12', '2022-12-10 15:38:19', '索爱8', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '4434.33',
        '8', '1', '3', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('13', '2022-12-10 15:38:42', '苹果耳机', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '100.00', '9', '1', '34', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('14', '2022-12-10 15:39:06', '普通相机10', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '5100.00', '10', '1', '34', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('15', '2022-12-10 15:39:30', '贾尼单反', '5', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '5100.00', '11', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('16', '2022-12-10 15:39:49', '其他东东', '5', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '5100.00', '12', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('17', '2022-12-10 15:40:10', '笔记本宏碁13', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '5100.00', '13', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('18', '2022-12-10 15:40:37', '苹果平板5', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '5100.00', '14', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('19', '2022-12-10 15:41:02', 'HP台式电脑', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '4100.00', '15', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('20', '2022-12-10 15:41:26', '戴尔显示器', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1100.00', '16', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('21', '2022-12-10 15:49:33', '雷蛇鼠标', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1100.00', '17', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('22', '2022-12-10 15:49:47', '雷神键盘', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1100.00', '18', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('23', '2022-12-10 15:50:33', 'U盘金士顿64G', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '200.00', '19', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('24', '2022-12-10 15:51:02', '爱国者移动硬盘1T', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '500.90', '20', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('25', '2022-12-10 15:51:22', '爱？', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '500.90',
        '21', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('26', '2022-12-10 15:52:02', '小天鹅洗衣机', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '700.00', '22', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('27', '2022-12-10 15:52:17', '饮水机', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '700.00',
        '23', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('28', '2022-12-10 15:52:34', '吹风机', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '40.00',
        '24', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('29', '2022-12-10 15:52:44', '剃须刀', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '40.00',
        '25', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('30', '2022-12-10 15:53:01', '小型风扇', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '40.00', '26', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('31', '2022-12-10 15:53:11', '煮蛋器', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '40.00',
        '27', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('32', '2022-12-10 15:53:34', '电磁炉 美的', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '100.00', '28', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('33', '2022-12-10 15:53:50', '电饭煲格力', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '100.00', '29', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('34', '2022-12-10 15:54:02', '超级耳机', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '100.00', '30', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('35', '2022-12-10 15:54:27', '很好的音响', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '120.58', '31', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('36', '2022-12-10 15:55:01', '功放？', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '120.58',
        '32', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('37', '2022-12-10 15:55:15', '低音炮', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '120.58',
        '33', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('38', '2022-12-10 15:55:25', '麦克风', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '120.58',
        '34', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('39', '2022-12-10 15:56:12', '超好看的上衣', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '120.58', '35', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('40', '2022-12-10 15:56:28', '炫酷短裤', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '120.58', '36', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('41', '2022-12-10 15:56:46', '百褶裙', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '55.00',
        '37', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('42', '2022-12-10 15:57:06', '短上衣', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '55.00',
        '38', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('43', '2022-12-10 15:57:20', '长裤', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '55.00',
        '39', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('44', '2022-12-10 15:57:49', '运动鞋耐克', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1200.00', '40', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('45', '2022-12-10 15:58:06', '皮鞋安踏', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '200.00', '41', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('46', '2022-12-10 15:58:43', '帆布鞋', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '200.00',
        '45', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('47', '2022-12-10 15:59:26', '球鞋', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '200.00',
        '46', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('48', '2022-12-10 15:59:35', '板鞋', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '200.00',
        '47', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('49', '2022-12-10 15:59:50', '男生运动鞋', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '200.00', '49', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('50', '2022-12-10 16:00:07', '男生皮鞋', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '500.00', '50', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('51', '2022-12-10 16:00:20', '男生帆布鞋', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '10.00', '51', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('52', '2022-12-10 16:00:36', '男生球鞋', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1000.00', '52', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('53', '2022-12-10 16:00:58', 'LV背包', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1000.00', '55', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('54', '2022-12-10 16:01:13', '超级旅行包', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '200.00', '56', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('55', '2022-12-10 16:01:40', '呆板机械表', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '400.00', '58', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('56', '2022-12-10 16:01:58', '好看的石英表', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '400.00', '59', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('57', '2022-12-10 16:02:10', '一般电子版', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '100.00', '60', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('58', '2022-12-10 16:03:08', '足球', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '100.00',
        '62', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('59', '2022-12-10 16:03:19', '羽毛球拍', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '100.00', '63', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('60', '2022-12-10 16:03:29', '网球拍', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '100.00',
        '64', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('61', '2022-12-10 16:03:37', '篮球', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '100.00',
        '65', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('62', '2022-12-10 16:03:46', '滑轮', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '100.00',
        '66', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('63', '2022-12-10 16:04:01', '乒乓球拍', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '100.00', '67', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('64', '2022-12-10 16:04:15', '滑板', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '100.00',
        '68', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('65', '2022-12-10 16:04:28', '自行车', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '300.00',
        '70', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('66', '2022-12-10 16:04:45', '电动车', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '800.85',
        '71', '1', '4', '1', '0', '4', '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('67', '2022-12-10 16:05:02', '傲慢与偏见', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '20.00', '73', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('68', '2022-12-10 16:05:22', '海贼王漫画', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '20.00', '74', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('69', '2022-12-10 16:05:49', '爱尔兰的野马', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '20.00', '75', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('70', '2022-12-10 16:06:10', '生命的起源', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '25.00', '77', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('71', '2022-12-10 16:06:35', '神奇的化学变化', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '25.00', '78', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('72', '2022-12-10 16:06:59', '黑洞与白洞', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '79', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('73', '2022-12-10 16:07:17', '诗经全集', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '80', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('74', '2022-12-10 16:07:40', '小语种-莫拉语', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '81', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('75', '2022-12-10 16:08:20', '真：五元十次方程详细解法', '8',
        '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '51.00', '82', '1', '4', '1', '0', '4',
        '/images/goods/default.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('76', '2022-12-10 16:08:35', '国家的安定', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '83', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('77', '2022-12-10 16:09:22', '曼陀罗消亡史', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '84', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('78', '2022-12-10 16:09:38', '神奇的广东', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '85', '1', '4', '1', '0', '4', '/images/goods/default.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('79', '2022-12-10 16:10:11', 'Spring实战', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '86', '1', '4', '1', '0', '4', '\\image/1.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('80', '2022-12-10 16:10:29', 'ACD画图', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '51.00',
        '87', '1', '4', '1', '0', '4', '/image/aug1NiTT40tXd3Zy1ZWL20161215.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('81', '2022-12-10 16:10:51', '建房子容易倒塌', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '88', '1', '4', '1', '0', '4', '/image/bvmE7d8698C3VdjSMjHm20161225.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('82', '2022-12-10 16:11:07', '算法设计艺术', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '51.00', '89', '1', '4', '1', '0', '4', '/image/goods/algorithmart.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('83', '2022-12-10 16:11:38', '狼毫笔', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '25.00',
        '91', '1', '4', '1', '0', '4', '/image/langhaobi.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('84', '2022-12-10 16:12:06', '景德镇陶瓷', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '52225.50', '92', '1', '4', '1', '0', '4', '/image/jingdezheng.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('87', '2022-12-10 20:04:41', '华为P10', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '525.50', '1', '1', '4', '1', '0', '4', '/image/huawei.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('88', '2022-12-10 20:07:48', '苹果6SPLUS', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '525.50', '1', '1', '4', '1', '0', '4', '/image/apple6plus.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('89', '2022-12-10 20:14:10', '小米5', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '525.50',
        '1', '1', '4', '1', '0', '4', '/image/xiaomi5.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('90', '2022-12-10 20:15:29', '苹果6S', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '5525.50', '1', '1', '4', '1', '0', '4', '/image/apple6s.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('91', '2022-12-10 16:05:48', '百年孤独', '6', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '203.45', '1', '1', '9', '1', '0', '4', '/image/goods/bainiangudu.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('92', '2022-12-10 15:30:36', '算法导论', '8', '计算机人不得不读的一本书', '70.00', '86', '1', '1', '1', '2',
        '1', '/images/goods/algorithm.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('93', '2022-12-10 15:40:10', '苹果电脑macbook air', '8',
        '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '11000.00', '13', '1', '4', '1', '0', '4',
        '/images/goods/macbook.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('94', '2022-12-10 15:38:42', '苹果耳机airpods2', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '699.00', '9', '1', '34', '1', '0', '4', '/images/goods/airpods2.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('95', '2022-12-10 19:06:57', '傲慢与偏见', '9', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '24.00', '73', '1', '1', '1', '0', '4', 'image/goods/Pride_&_Prejudice_post.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('96', '2022-12-10 16:01:40', '劳力士机械表', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '40000.00', '58', '1', '4', '1', '0', '4', '/images/goods/rolex.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('97', '2022-12-10 16:02:10', '卡西欧电子表', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1500.00', '60', '1', '4', '1', '0', '4', '/images/goods/casio.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('98', '2022-12-10 15:40:10', '外星人手提电脑', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '20500.00', '13', '1', '4', '1', '0', '4', '/images/goods/alienware.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('99', '2022-12-10 15:53:34', '美的电磁炉', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '800.00', '28', '1', '4', '1', '0', '4', '/images/goods/electroven.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('100', '2022-12-10 15:59:35', 'nike dunk板鞋', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1199.00', '47', '1', '4', '1', '0', '4', '/images/goods/dunksb.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('101', '2022-12-10 20:04:41', '华为手机', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '5925.50', '1', '1', '4', '1', '0', '4', '/images/goods/huawei.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('102', '2022-12-10 15:49:33', '罗技鼠标', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '380.00', '17', '1', '4', '1', '0', '4', '/images/goods/mouse.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('103', '2022-12-10 15:49:47', '蓝牙键盘', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '888.00', '18', '1', '4', '1', '0', '4', '/images/goods/keyboard.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('104', '2022-12-10 15:56:12', 'supreme外套', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '2200.00', '40', '1', '4', '1', '0', '4', '/images/goods/supreme.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('105', '2022-12-10 20:04:41', '苹果手机iphone13粉色', '8',
        '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西', '4499.50', '1', '1', '4', '1', '0', '4',
        '/images/goods/iphone13.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('106', '2022-12-10 15:38:42', '蓝牙耳机', '7', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '450.00', '9', '1', '34', '1', '0', '4', '/images/goods/earphone.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('107', '2022-12-10 16:00:58', '男士背包', '8', '卖家自用闲置品，成色很好，物美价廉，如要小刀请联系咪西迪西',
        '1000.00', '55', '1', '4', '1', '0', '4', '/images/goods/backpack.jpg',
        '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation`
VALUES ('108', '2022-12-10 15:30:36', '数据库系统概论', '9', '学长学姐们的祖传教材，低价出给有缘人', '45.00', '86', '1',
        '10', '1', '2', '1', '/images/goods/database.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');


-- ----------------------------
-- Table structure for shoppicture
-- ----------------------------
DROP TABLE IF EXISTS `shoppicture`;
CREATE TABLE `shoppicture`
(
    `id`       int(11)      NOT NULL AUTO_INCREMENT,
    `modified` datetime              DEFAULT NULL,
    `sid`      int(11)      NOT NULL,
    `picture`  varchar(200) NOT NULL,
    `display`  int(11)      NOT NULL DEFAULT '1',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 89
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of shoppicture
-- ----------------------------
INSERT INTO `shoppicture`
VALUES ('1', null, '1', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('2', null, '2', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('3', null, '3', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('4', null, '4', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('5', null, '5', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('6', null, '6', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('7', null, '7', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('8', null, '8', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('9', null, '9', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('10', null, '10', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('11', null, '11', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('12', null, '12', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('13', null, '13', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('14', null, '14', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('15', null, '15', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('16', null, '16', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('17', null, '17', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('18', null, '18', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('19', null, '19', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('20', null, '20', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('21', null, '21', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('22', null, '22', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('23', null, '23', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('24', null, '24', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('25', null, '25', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('26', null, '26', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('27', null, '27', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('28', null, '28', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('29', null, '29', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('30', null, '30', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('31', null, '31', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('32', null, '32', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('33', null, '33', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('34', null, '34', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('35', null, '35', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('36', null, '36', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('37', null, '37', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('38', null, '38', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('39', null, '39', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('40', null, '40', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('41', null, '41', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('42', null, '42', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('43', null, '43', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('44', null, '44', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('45', null, '45', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('46', null, '46', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('47', null, '47', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('48', null, '48', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('49', null, '49', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('50', null, '50', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('51', null, '51', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('52', null, '52', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('53', null, '53', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('54', null, '54', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('55', null, '55', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('56', null, '56', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('57', null, '57', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('58', null, '58', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('59', null, '59', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('60', null, '60', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('61', null, '61', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('62', null, '62', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('63', null, '63', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('64', null, '64', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('65', null, '65', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('66', null, '66', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('67', null, '67', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('68', null, '68', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('69', null, '69', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('70', null, '70', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('71', null, '71', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('72', null, '72', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('73', null, '73', '/image/1.jpg', '1');
INSERT INTO `shoppicture` VALUES ('74', null, '74', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('75', null, '75', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('76', null, '76', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('77', null, '77', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('78', null, '78', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('79', null, '79', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('80', null, '80', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('81', null, '81', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('82', null, '82', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('83', null, '83', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('84', null, '84', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('85', null, '87', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('86', null, '88', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('87', null, '89', '/image/1.jpg', '1');
INSERT INTO `shoppicture`
VALUES ('88', null, '90', '/image/1.jpg', '1');

-- ----------------------------
-- Table structure for userinformation
-- ----------------------------
DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE `userinformation`
(
    `id`         int(11)     NOT NULL AUTO_INCREMENT,
    `modified`   datetime     DEFAULT NULL,
    `username`   varchar(50) NOT NULL,
    `phone`      char(11)    NOT NULL,
    `realname`   varchar(50)  DEFAULT NULL,
    `clazz`      varchar(50)  DEFAULT NULL,
    `sno`        char(12)     DEFAULT NULL,
    `dormitory`  varchar(50)  DEFAULT NULL,
    `gender`     char(2)      DEFAULT NULL,
    `createtime` datetime     DEFAULT NULL,
    `avatar`     varchar(200) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `index_id` (`id`) USING BTREE,
    KEY `selectByPhone` (`phone`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of userinformation
-- ----------------------------
INSERT INTO `userinformation`
VALUES ('1', '2022-12-04 13:56:04', 'admin', '123456', null, null, null, null, null, '2022-12-04 13:56:04', null);
INSERT INTO `userinformation`
VALUES ('2', '2022-12-04 14:00:13', 'ollie', '123456', null, null, null, null, null, '2022-12-04 14:00:14', null);
INSERT INTO `userinformation`
VALUES ('3', '2022-12-04 14:55:28', 'siuuuuuuuuuu', '123456', null, null, null, null, null, '2022-12-04 14:55:28',
        null);
INSERT INTO `userinformation`
VALUES ('4', '2022-12-04 15:55:28', 'factos', '123456', null, null, null, null, null, '2022-12-04', null);

-- ----------------------------
-- Table structure for userpassword
-- ----------------------------
DROP TABLE IF EXISTS `userpassword`;
CREATE TABLE `userpassword`
(
    `id`       int(11)     NOT NULL AUTO_INCREMENT,
    `modified` datetime DEFAULT NULL,
    `password` varchar(50) NOT NULL,
    `uid`      int(11)     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of userpassword
-- ----------------------------
INSERT INTO `userpassword`
VALUES ('1', '2022-12-04 13:56:05', 'e10adc3949ba59abbe56e057f20f883e', '1');
INSERT INTO `userpassword`
VALUES ('2', '2022-12-04 14:00:49', 'e10adc3949ba59abbe56e057f20f883e', '2');
INSERT INTO `userpassword`
VALUES ('3', '2022-12-04 14:55:29', 'e10adc3949ba59abbe56e057f20f883e', '3');
INSERT INTO `userpassword`
VALUES ('4', '2022-12-04 15:56:11', 'e10adc3949ba59abbe56e057f20f883e', '4');

-- ----------------------------
-- Table structure for usercollection
-- ----------------------------
DROP TABLE IF EXISTS `usercollection`;
CREATE TABLE `usercollection`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `modified` datetime         DEFAULT NULL,
    `uid`      int(11) NOT NULL,
    `sid`      int(11) NOT NULL,
    `display`  int(11) NOT NULL DEFAULT '1',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Table structure for userrelease
-- ----------------------------
DROP TABLE IF EXISTS `userrelease`;
CREATE TABLE `userrelease`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `modified` datetime         DEFAULT NULL,
    `display`  int(11) NOT NULL DEFAULT '1',
    `uid`      int(11) NOT NULL,
    `sid`      int(11) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of userrelease
-- ----------------------------
INSERT INTO `userrelease`
VALUES ('1', '2022-12-10 15:55:37', '1', '1', '1');
INSERT INTO `userrelease`
VALUES ('2', '2022-12-10 19:07:34', '1', '1', '2');
INSERT INTO `userrelease`
VALUES ('3', '2022-12-10 16:08:37', '1', '1', '3');
INSERT INTO `userrelease`
VALUES ('4', '2022-12-10 16:08:40', '1', '1', '4');
INSERT INTO `userrelease`
VALUES ('5', '2022-12-10 16:08:40', '1', '1', '5');
INSERT INTO `userrelease`
VALUES ('6', '2022-12-10 16:08:40', '1', '1', '6');
INSERT INTO `userrelease`
VALUES ('7', '2022-12-10 16:08:40', '1', '1', '7');
INSERT INTO `userrelease`
VALUES ('8', '2022-12-10 16:08:40', '1', '1', '8');
INSERT INTO `userrelease`
VALUES ('9', '2022-12-10 16:08:40', '1', '1', '9');
INSERT INTO `userrelease`
VALUES ('10', '2022-12-10 16:08:40', '1', '1', '10');
INSERT INTO `userrelease`
VALUES ('11', '2022-12-10 16:08:40', '1', '1', '11');
INSERT INTO `userrelease`
VALUES ('12', '2022-12-10 16:08:40', '1', '1', '12');
INSERT INTO `userrelease`
VALUES ('13', '2022-12-10 16:08:40', '1', '1', '13');
INSERT INTO `userrelease`
VALUES ('14', '2022-12-10 16:08:40', '1', '1', '14');
INSERT INTO `userrelease`
VALUES ('15', '2022-12-10 16:08:40', '1', '1', '15');
INSERT INTO `userrelease`
VALUES ('16', '2022-12-10 16:08:40', '1', '1', '16');
INSERT INTO `userrelease`
VALUES ('17', '2022-12-10 16:08:40', '1', '1', '17');
INSERT INTO `userrelease`
VALUES ('18', '2022-12-10 16:08:41', '1', '1', '18');
INSERT INTO `userrelease`
VALUES ('19', '2022-12-10 16:08:41', '1', '1', '19');
INSERT INTO `userrelease`
VALUES ('20', '2022-12-10 16:08:41', '1', '1', '20');
INSERT INTO `userrelease`
VALUES ('21', '2022-12-10 16:08:41', '1', '1', '21');
INSERT INTO `userrelease`
VALUES ('22', '2022-12-10 16:08:41', '1', '1', '22');
INSERT INTO `userrelease`
VALUES ('23', '2022-12-10 16:08:41', '1', '1', '23');
INSERT INTO `userrelease`
VALUES ('24', '2022-12-10 16:08:41', '1', '1', '24');
INSERT INTO `userrelease`
VALUES ('25', '2022-12-10 16:08:41', '1', '1', '25');
INSERT INTO `userrelease`
VALUES ('26', '2022-12-10 16:08:41', '1', '1', '26');
INSERT INTO `userrelease`
VALUES ('27', '2022-12-10 16:08:41', '1', '1', '27');
INSERT INTO `userrelease`
VALUES ('28', '2022-12-10 16:08:41', '1', '1', '28');
INSERT INTO `userrelease`
VALUES ('29', '2022-12-10 16:08:41', '1', '1', '29');
INSERT INTO `userrelease`
VALUES ('30', '2022-12-10 16:08:41', '1', '1', '30');
INSERT INTO `userrelease`
VALUES ('31', '2022-12-10 16:08:41', '1', '1', '31');
INSERT INTO `userrelease`
VALUES ('32', '2022-12-10 16:08:41', '1', '1', '32');
INSERT INTO `userrelease`
VALUES ('33', '2022-12-10 16:08:41', '1', '1', '33');
INSERT INTO `userrelease`
VALUES ('34', '2022-12-10 16:08:41', '1', '1', '34');
INSERT INTO `userrelease`
VALUES ('35', '2022-12-10 16:08:41', '1', '1', '35');
INSERT INTO `userrelease`
VALUES ('36', '2022-12-10 16:08:41', '1', '1', '36');
INSERT INTO `userrelease`
VALUES ('37', '2022-12-10 16:08:41', '1', '1', '37');
INSERT INTO `userrelease`
VALUES ('38', '2022-12-10 16:08:41', '1', '1', '38');
INSERT INTO `userrelease`
VALUES ('39', '2022-12-10 16:08:41', '1', '1', '39');
INSERT INTO `userrelease`
VALUES ('40', '2022-12-10 16:08:41', '1', '1', '40');
INSERT INTO `userrelease`
VALUES ('41', '2022-12-10 16:08:41', '1', '1', '41');
INSERT INTO `userrelease`
VALUES ('42', '2022-12-10 16:08:41', '1', '1', '42');
INSERT INTO `userrelease`
VALUES ('43', '2022-12-10 16:08:41', '1', '1', '43');
INSERT INTO `userrelease`
VALUES ('44', '2022-12-10 16:08:41', '1', '1', '44');
INSERT INTO `userrelease`
VALUES ('45', '2022-12-10 16:08:41', '1', '1', '45');
INSERT INTO `userrelease`
VALUES ('46', '2022-12-10 16:08:41', '1', '1', '46');
INSERT INTO `userrelease`
VALUES ('47', '2022-12-10 16:08:41', '1', '1', '47');
INSERT INTO `userrelease`
VALUES ('48', '2022-12-10 16:08:41', '1', '1', '48');
INSERT INTO `userrelease`
VALUES ('49', '2022-12-10 16:08:41', '1', '1', '49');
INSERT INTO `userrelease`
VALUES ('50', '2022-12-10 16:08:41', '1', '1', '50');
INSERT INTO `userrelease`
VALUES ('51', '2022-12-10 16:08:41', '1', '1', '51');
INSERT INTO `userrelease`
VALUES ('52', '2022-12-10 16:08:41', '1', '1', '52');
INSERT INTO `userrelease`
VALUES ('53', '2022-12-10 16:08:41', '1', '1', '53');
INSERT INTO `userrelease`
VALUES ('54', '2022-12-10 16:08:41', '1', '1', '54');
INSERT INTO `userrelease`
VALUES ('55', '2022-12-10 16:08:41', '1', '1', '55');
INSERT INTO `userrelease`
VALUES ('56', '2022-12-10 16:08:41', '1', '1', '56');
INSERT INTO `userrelease`
VALUES ('57', '2022-12-10 16:08:41', '1', '1', '57');
INSERT INTO `userrelease`
VALUES ('58', '2022-12-10 16:08:41', '1', '1', '58');
INSERT INTO `userrelease`
VALUES ('59', '2022-12-10 16:08:41', '1', '1', '59');
INSERT INTO `userrelease`
VALUES ('60', '2022-12-10 16:08:41', '1', '1', '60');
INSERT INTO `userrelease`
VALUES ('61', '2022-12-10 16:08:41', '1', '1', '61');
INSERT INTO `userrelease`
VALUES ('62', '2022-12-10 16:08:41', '1', '1', '62');
INSERT INTO `userrelease`
VALUES ('63', '2022-12-10 16:08:41', '1', '1', '63');
INSERT INTO `userrelease`
VALUES ('64', '2022-12-10 16:08:41', '1', '1', '64');
INSERT INTO `userrelease`
VALUES ('65', '2022-12-10 16:08:41', '1', '1', '65');
INSERT INTO `userrelease`
VALUES ('66', '2022-12-10 16:08:41', '1', '1', '66');
INSERT INTO `userrelease`
VALUES ('67', '2022-12-10 16:08:41', '1', '1', '67');
INSERT INTO `userrelease`
VALUES ('68', '2022-12-10 16:08:41', '1', '1', '68');
INSERT INTO `userrelease`
VALUES ('69', '2022-12-10 16:08:41', '1', '1', '69');
INSERT INTO `userrelease`
VALUES ('70', '2022-12-10 16:08:41', '1', '1', '70');
INSERT INTO `userrelease`
VALUES ('71', '2022-12-10 16:08:41', '1', '1', '71');
INSERT INTO `userrelease`
VALUES ('72', '2022-12-10 16:08:41', '1', '1', '72');
INSERT INTO `userrelease`
VALUES ('73', '2022-12-10 16:08:41', '1', '1', '73');
INSERT INTO `userrelease`
VALUES ('74', '2022-12-10 16:08:41', '1', '1', '74');
INSERT INTO `userrelease`
VALUES ('75', '2022-12-10 16:08:41', '1', '1', '75');
INSERT INTO `userrelease`
VALUES ('76', '2022-12-10 16:08:41', '1', '1', '76');
INSERT INTO `userrelease`
VALUES ('77', '2022-12-10 16:08:41', '1', '1', '77');
INSERT INTO `userrelease`
VALUES ('78', '2022-12-10 16:08:41', '1', '1', '78');
INSERT INTO `userrelease`
VALUES ('79', '2022-12-10 16:08:41', '1', '1', '79');
INSERT INTO `userrelease`
VALUES ('80', '2022-12-10 16:08:41', '1', '1', '80');
INSERT INTO `userrelease`
VALUES ('81', '2022-12-10 16:08:41', '1', '1', '81');
INSERT INTO `userrelease`
VALUES ('82', '2022-12-10 16:08:41', '1', '1', '82');
INSERT INTO `userrelease`
VALUES ('83', '2022-12-10 16:08:41', '1', '1', '83');
INSERT INTO `userrelease`
VALUES ('84', '2022-12-10 16:08:41', '1', '1', '84');
INSERT INTO `userrelease`
VALUES ('85', '2022-12-10 16:08:41', '1', '1', '85');
INSERT INTO `userrelease`
VALUES ('86', '2022-12-10 16:08:41', '1', '1', '86');
INSERT INTO `userrelease`
VALUES ('87', '2022-12-10 16:08:41', '1', '1', '87');
INSERT INTO `userrelease`
VALUES ('88', '2022-12-10 16:08:41', '1', '1', '88');
INSERT INTO `userrelease`
VALUES ('89', '2022-12-10 16:08:41', '1', '1', '89');
INSERT INTO `userrelease`
VALUES ('90', '2022-12-10 16:08:41', '1', '1', '90');
INSERT INTO `userrelease`
VALUES ('91', '2022-12-10 16:08:41', '1', '1', '91');
INSERT INTO `userrelease`
VALUES ('92', '2022-12-10 16:08:41', '1', '1', '92');
INSERT INTO `userrelease`
VALUES ('93', '2022-12-10 16:08:41', '1', '1', '93');
INSERT INTO `userrelease`
VALUES ('94', '2022-12-10 16:08:41', '1', '1', '94');
INSERT INTO `userrelease`
VALUES ('95', '2022-12-10 16:08:41', '1', '1', '95');
INSERT INTO `userrelease`
VALUES ('96', '2022-12-10 16:08:41', '1', '1', '96');
INSERT INTO `userrelease`
VALUES ('97', '2022-12-10 16:08:41', '1', '1', '97');
INSERT INTO `userrelease`
VALUES ('98', '2022-12-10 16:08:41', '1', '1', '98');
INSERT INTO `userrelease`
VALUES ('99', '2022-12-10 16:08:41', '1', '1', '99');
INSERT INTO `userrelease`
VALUES ('100', '2022-12-10 16:08:41', '1', '1', '100');
INSERT INTO `userrelease`
VALUES ('101', '2022-12-10 16:08:41', '1', '1', '101');
INSERT INTO `userrelease`
VALUES ('102', '2022-12-10 16:08:41', '1', '1', '102');
INSERT INTO `userrelease`
VALUES ('103', '2022-12-10 16:08:41', '1', '1', '103');
INSERT INTO `userrelease`
VALUES ('104', '2022-12-10 16:08:41', '1', '1', '104');
INSERT INTO `userrelease`
VALUES ('105', '2022-12-10 16:08:41', '1', '1', '105');
INSERT INTO `userrelease`
VALUES ('106', '2022-12-10 16:08:41', '1', '1', '106');
INSERT INTO `userrelease`
VALUES ('107', '2022-12-10 16:08:41', '1', '1', '107');
INSERT INTO `userrelease`
VALUES ('108', '2022-12-10 16:08:41', '1', '1', '108');

-- ----------------------------
-- Table structure for userstate
-- ----------------------------
DROP TABLE IF EXISTS `userstate`;
CREATE TABLE `userstate`
(
    `id`                           int(11)        NOT NULL AUTO_INCREMENT,
    `credit`                       int(11)        NOT NULL DEFAULT '80',
    `balance`                      decimal(10, 2) NOT NULL DEFAULT '0.00',
    `modified`                     datetime                DEFAULT NULL,
                             `uid` int(11) NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for userwant
-- ----------------------------
DROP TABLE IF EXISTS `userwant`;
CREATE TABLE `userwant` (
                            `id`       int(11)        NOT NULL AUTO_INCREMENT,
                            `modified` datetime                DEFAULT NULL,
                            `display`  int(11)        NOT NULL DEFAULT '1',
                            `name`     varchar(50)    NOT NULL,
                            `sort`     int(100)       NOT NULL,
                            `quantity` int(11)        NOT NULL,
                            `price`    decimal(10, 2) NOT NULL,
                            `remark`   varchar(255)            DEFAULT NULL,
                            `uid`      int(11)        NOT NULL,
                            PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of userwant
-- ----------------------------
INSERT INTO `userwant`
VALUES ('1', '2022-12-05 21:03:38', '1', 'airpods2', '31', '1', '750.00',
        '急急急急急，请联系手机/微信：189xxxxxxxx，价钱都好说！', '2');
INSERT INTO `userwant`
VALUES ('2', '2022-12-05 21:03:38', '1', '华为13promax冷锋蓝', '4', '1', '9999.99',
        '急急急急急，请联系手机/微信：189xxxxxxxx，价钱都好说！', '3');
INSERT INTO `userwant`
VALUES ('3', '2022-12-05 21:03:38', '1', 'nike实战篮球鞋', '46', '1', '800.00',
        '急急急急急，请联系手机/微信：189xxxxxxxx，价钱都好说！', '2');
INSERT INTO `userwant`
VALUES ('4', '2022-12-05 21:03:38', '1', '乒乓球拍', '67', '2', '150.00',
        '急急急急急，请联系手机/微信：189xxxxxxxx，价钱都好说！', '3');
INSERT INTO `userwant`
VALUES ('5', '2022-12-05 21:03:38', '1', '深入浅出Spring Boot 2.x', '86', '1', '50.00',
        '急急急急急，请联系手机/微信：189xxxxxxxx，价钱都好说！', '2');
INSERT INTO `userwant`
VALUES ('6', '2022-12-05 21:03:38', '1', 'JavaScript DOM编程艺术', '86', '1', '50.00',
        '急急急急急，请联系手机/微信：189xxxxxxxx，价钱都好说！', '3');

-- ----------------------------
-- Table structure for wantcontext
-- ----------------------------
DROP TABLE IF EXISTS `wantcontext`;
CREATE TABLE `wantcontext` (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `modified` datetime DEFAULT NULL,
                               `uwid` int(11) NOT NULL,
                               `context` varchar(255) NOT NULL,
                               `display` int(11) NOT NULL DEFAULT '1',
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wantcontext
-- ----------------------------

# SET FOREIGN_KEY_CHECKS=1;