/*
 Navicat Premium Data Transfer

 Source Server         : 82
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : 82.156.178.48:3306
 Source Schema         : vol_pro_main

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 12/06/2023 14:27:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Demo_Catalog
-- ----------------------------
DROP TABLE IF EXISTS `Demo_Catalog`;
CREATE TABLE `Demo_Catalog`  (
  `CatalogId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品分類',
  `CatalogName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分類名稱',
  `CatalogCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分類編號',
  `ParentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上級分類',
  `Img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '分類圖片',
  `Enable` int NULL DEFAULT NULL COMMENT '是否可用',
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '備注',
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '創建人',
  `CreateDate` datetime(0) NULL DEFAULT NULL COMMENT '創建時間',
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`CatalogId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Demo_Catalog
-- ----------------------------
INSERT INTO `Demo_Catalog` VALUES ('1E8CBA43-3542-43AB-9E70-A5A9EFBCBBAA', '二級分類', '002', 'C125770A-B804-43CE-AFFC-8E7A61C3B436', 'Upload/Tables/Demo_Catalog/202305191524477806/wechat.jpg', 0, '123456', 1, '超級管理員', '2022-03-03 23:27:05', 1, '超級管理員', '2023-05-19 15:24:47');
INSERT INTO `Demo_Catalog` VALUES ('3D19E62A-A4A4-461A-9A39-FB9DDD9270D0', '電腦辦公', 'c-003', NULL, 'Upload/Tables/Demo_Catalog/202305191524073079/wechat.jpg', 1, NULL, 1, '超級管理員', '2022-04-01 00:14:13', 1, '超級管理員', '2023-05-19 15:24:08');
INSERT INTO `Demo_Catalog` VALUES ('BF8A9BD1-2C6D-47AB-868C-72771D6BDFF8', '筆記本', 'c-005', '3D19E62A-A4A4-461A-9A39-FB9DDD9270D0', 'Upload/Tables/Demo_Catalog/202305191524242077/wechat.jpg', 0, NULL, 1, '超級管理員', '2022-04-01 00:14:56', 1, '超級管理員', '2023-05-19 15:24:25');
INSERT INTO `Demo_Catalog` VALUES ('C125770A-B804-43CE-AFFC-8E7A61C3B436', '一級分類', '001', NULL, 'Upload/Tables/Demo_Catalog/202305191524407025/wechat.jpg', 1, NULL, 1, '超級管理員', '2022-03-02 23:54:28', 1, '超級管理員', '2023-05-19 15:24:41');
INSERT INTO `Demo_Catalog` VALUES ('FA6D58C1-6EDA-43A3-B5D3-E92B19FDAD00', '游戲本', 'c-004', '3D19E62A-A4A4-461A-9A39-FB9DDD9270D0', 'Upload/Tables/Demo_Catalog/202305191524333689/wechat.jpg', 0, NULL, 1, '超級管理員', '2022-04-01 00:15:25', 1, '超級管理員', '2023-05-19 15:24:33');

-- ----------------------------
-- Table structure for Demo_Customer
-- ----------------------------
DROP TABLE IF EXISTS `Demo_Customer`;
CREATE TABLE `Demo_Customer`  (
  `Customer_Id` int NOT NULL,
  `Customer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客戶',
  `PhoneNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手機',
  `Province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省',
  `City` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '市',
  `DetailAddress` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '詳細地址',
  `Remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `County` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Customer_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Demo_Customer
-- ----------------------------
INSERT INTO `Demo_Customer` VALUES (1, '張三豐', '13699909001', '150000', '150100', '白馬寺路', '無', 1, '超級管理員', '2022-03-28 23:08:54', 1, '超級管理員', '2022-04-09 22:36:31', '150122');
INSERT INTO `Demo_Customer` VALUES (2, '張無忌', '18912009110', '110000', '110100', '靈境胡同', '還沒想好', 1, '超級管理員', '2022-03-28 23:10:50', 1, '超級管理員', '2022-04-09 22:05:41', '110106');
INSERT INTO `Demo_Customer` VALUES (3, '李四', '18912009150', '130000', '130100', '001號院', '123', 1, '超級管理員', '2022-04-09 22:10:17', 1, '超級管理員', '2022-04-09 22:36:56', '130107');

-- ----------------------------
-- Table structure for Demo_Goods
-- ----------------------------
DROP TABLE IF EXISTS `Demo_Goods`;
CREATE TABLE `Demo_Goods`  (
  `GoodsId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品ID',
  `CatalogId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所屬分類',
  `GoodsName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名稱',
  `GoodsCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品編號',
  `Img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '商品圖片',
  `Specs` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品規格',
  `Price` decimal(10, 2) NOT NULL COMMENT '單價',
  `Enable` int NULL DEFAULT NULL COMMENT '是否可用',
  `Remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '備注',
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '創建人',
  `CreateDate` datetime(0) NULL DEFAULT NULL COMMENT '創建時間',
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`GoodsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Demo_Goods
-- ----------------------------
INSERT INTO `Demo_Goods` VALUES ('1D872556-C3CD-4861-9108-C180F19E59DC', 'C125770A-B804-43CE-AFFC-8E7A61C3B436', '羅蒙（ROMON）襯衫男長袖純色商務職業正裝', '100047650374', 'Upload/Tables/Demo_Goods/202306031426028660/QQ圖片20230603142403.png', '襯衫*1', 9.90, 1, '羅蒙（ROMON）襯衫男長袖純色商務職業正裝', 1, '超級管理員', '2023-05-19 15:28:23', 1, '超級管理員', '2023-06-03 14:26:03');
INSERT INTO `Demo_Goods` VALUES ('75AC2E2E-21F2-47C2-B81E-6751CD01B0E3', 'BF8A9BD1-2C6D-47AB-868C-72771D6BDFF8', '惠普(HP)戰66 六代2023', '100055335683', 'Upload/Tables/Demo_Goods/202306031425489688/QQ圖片20230603142337.png', '臺', 4899.00, 1, '當季新品 惠普(HP)戰66 六代2023酷睿15.6英寸(英特爾13代i5-1340P 16G 1T 2.5K高色域屏120HZ)高性能輕薄本筆記本電腦', 1, '超級管理員', '2023-05-19 15:31:57', 1, '超級管理員', '2023-06-03 14:25:49');
INSERT INTO `Demo_Goods` VALUES ('D774EC4D-AD2E-402C-B925-5A1C83DAF321', '1E8CBA43-3542-43AB-9E70-A5A9EFBCBBAA', 'Apple iPhone 13 (A2634)128GB 綠色', '100034710036', 'Upload/Tables/Demo_Goods/202306031425544867/QQ圖片20230603142247.png', '紿', 4999.00, 1, 'Apple iPhone 13 (A2634)128GB 綠色 支持移動聯通電信5G 雙卡雙待手機', 1, '超級管理員', '2023-05-19 15:30:15', 1, '超級管理員', '2023-06-03 14:25:55');

-- ----------------------------
-- Table structure for Demo_Order
-- ----------------------------
DROP TABLE IF EXISTS `Demo_Order`;
CREATE TABLE `Demo_Order`  (
  `Order_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `OrderNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '訂單編號',
  `OrderType` int NOT NULL COMMENT '訂單類型',
  `TotalPrice` decimal(18, 2) NULL DEFAULT NULL COMMENT '總價',
  `TotalQty` int NULL DEFAULT NULL COMMENT '總數量',
  `OrderDate` datetime(0) NOT NULL COMMENT '訂單日期',
  `CustomerId` int NULL DEFAULT NULL COMMENT '客戶',
  `Customer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客戶',
  `PhoneNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手機',
  `OrderStatus` int NOT NULL COMMENT '訂單狀態',
  `Remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '備注',
  `AuditId` int NULL DEFAULT NULL,
  `Auditor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AuditStatus` int NULL DEFAULT NULL,
  `AuditDate` datetime(0) NULL DEFAULT NULL,
  `AuditReason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Order_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Demo_Order
-- ----------------------------
INSERT INTO `Demo_Order` VALUES ('12B6B10A-086F-459E-9D14-6092331BDF87', 'D2022042100002', 1, 8000.00, 10, '2022-04-21 00:00:00', NULL, '李四', '18912009150', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '超級管理員', '2022-04-21 22:33:54', 1, '超級管理員', '2022-04-21 22:34:13');
INSERT INTO `Demo_Order` VALUES ('222A938E-8DE4-4876-B4BE-AB7E6FF09901', 'D2022042100003', 2, 9000.00, 45, '2022-04-21 00:00:00', NULL, '張三豐', '13699909001', 1, '90000', NULL, NULL, NULL, NULL, NULL, 1, '超級管理員', '2022-04-21 22:35:49', 1, '超級管理員', '2023-05-19 15:34:32');
INSERT INTO `Demo_Order` VALUES ('2981110C-D0F7-411E-AF1D-E5704DBF7A4D', 'D2022040600001', 2, 100.00, 100, '2022-04-06 00:00:00', NULL, '張無忌', '18912009110', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, '超級管理員', '2022-04-06 01:14:00', 1, '超級管理員', '2022-04-06 01:16:34');
INSERT INTO `Demo_Order` VALUES ('EF2CA990-9C24-4955-942D-FAD1F97DC08D', 'D2022040600002', 3, 200.00, 200, '2022-04-06 00:00:00', NULL, '張三豐', '13699909001', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, '超級管理員', '2022-04-06 02:03:30', 1, '超級管理員', '2022-04-07 00:16:00');
INSERT INTO `Demo_Order` VALUES ('F9ADF4BE-4E39-45B1-BA17-757535E650D5', 'D2022042100001', 1, 2000.00, 2, '2022-04-22 00:00:00', NULL, '張三豐', '13699909001', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '超級管理員', '2022-04-21 22:33:30', 1, '超級管理員', '2022-04-21 22:34:27');

-- ----------------------------
-- Table structure for Demo_OrderList
-- ----------------------------
DROP TABLE IF EXISTS `Demo_OrderList`;
CREATE TABLE `Demo_OrderList`  (
  `OrderList_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Order_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `GoodsId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `GoodsCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品編號',
  `GoodsName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名稱',
  `Img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '商品圖片',
  `Specs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品規格',
  `Price` decimal(18, 2) NOT NULL COMMENT '單價',
  `Qty` int NOT NULL COMMENT '數量',
  `Remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '備注',
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`OrderList_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Demo_OrderList
-- ----------------------------
INSERT INTO `Demo_OrderList` VALUES ('27BD0944-C8C4-4368-6344-08DA172E9748', 'EF2CA990-9C24-4955-942D-FAD1F97DC08D', 'E7D8704D-3B82-47A0-8E27-E738B5EB5C4C', '100016777690', ' 戴爾DELL成就3400', 'Upload/Tables/Demo_Goods/202204010021279410/img11.png', '件', 3899.00, 12, NULL, 1, '超級管理員', '2022-04-06 02:03:30', 1, '超級管理員', '2022-04-07 00:16:00');
INSERT INTO `Demo_OrderList` VALUES ('34BF4F61-0576-47CB-6343-08DA172E9748', 'EF2CA990-9C24-4955-942D-FAD1F97DC08D', 'DB02BBAB-3757-44C2-83CF-8473D2E245A3', '100016960357', '華為筆記本MateBook ', 'Upload/Tables/Demo_Goods/202204010019276906/img10.png', '件', 4699.00, 15, NULL, 1, '超級管理員', '2022-04-06 02:03:30', 1, '超級管理員', '2022-04-07 00:16:00');
INSERT INTO `Demo_OrderList` VALUES ('3FB7BE7B-3293-4B69-B15F-2F7CE9108A04', 'F9ADF4BE-4E39-45B1-BA17-757535E650D5', 'B8801BF7-D8E2-43D1-B8C5-F7D6DA2A3248', '100020877745', '分類分類商品', 'Upload/Tables/Demo_Goods/202204052348185890/img12.png', '件', 120.00, 0, NULL, 1, '超級管理員', '2022-04-21 22:34:27', NULL, NULL, NULL);
INSERT INTO `Demo_OrderList` VALUES ('483E438D-11ED-42BA-BAEF-6274FC0031A6', '2981110C-D0F7-411E-AF1D-E5704DBF7A4D', 'DB02BBAB-3757-44C2-83CF-8473D2E245A3', '100016960357', '華為筆記本MateBook ', 'Upload/Tables/Demo_Goods/202204010019276906/img10.png', '件', 4699.00, 0, NULL, 1, '超級管理員', '2022-04-06 01:16:34', NULL, NULL, NULL);
INSERT INTO `Demo_OrderList` VALUES ('5A86F07A-3E82-4C90-E69B-08DA23A3F5D4', '12B6B10A-086F-459E-9D14-6092331BDF87', 'E7D8704D-3B82-47A0-8E27-E738B5EB5C4C', '100016777690', '戴爾DELL成就3400', 'Upload/Tables/Demo_Goods/202204010021279410/img11.png', '件', 3899.00, 0, NULL, 1, '超級管理員', '2022-04-21 22:33:54', 1, '超級管理員', '2022-04-21 22:34:13');
INSERT INTO `Demo_OrderList` VALUES ('E93942B6-417F-4946-E69A-08DA23A3F5D4', '12B6B10A-086F-459E-9D14-6092331BDF87', 'F4A462FB-D958-46B7-9704-EB641E209069', '100020877742', '聯想小新Air14 ', 'Upload/Tables/Demo_Goods/202204010023544138/img12.png', '件', 4999.00, 0, NULL, 1, '超級管理員', '2022-04-21 22:33:54', 1, '超級管理員', '2022-04-21 22:34:13');

-- ----------------------------
-- Table structure for Demo_Product
-- ----------------------------
DROP TABLE IF EXISTS `Demo_Product`;
CREATE TABLE `Demo_Product`  (
  `ProductId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ProductName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名稱',
  `ProductCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品編號',
  `Price` decimal(18, 2) NOT NULL COMMENT '價格',
  `AuditStatus` int NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '備注',
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '創建人',
  `CreateDate` datetime(0) NULL DEFAULT NULL COMMENT '創建時間',
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `ModifyDate` datetime(0) NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`ProductId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Demo_Product
-- ----------------------------
INSERT INTO `Demo_Product` VALUES ('63800619-74E8-4EB9-A540-6B0DD58DD9E4', '花花公子男外套男情侶裝冰絲速干皮膚衣上衣', '10044464880643', 139.00, NULL, '花花公子專賣店', 1, '超級管理員', '2022-07-04 00:25:29', 1, '超級管理員', '2022-07-06 22:58:15');
INSERT INTO `Demo_Product` VALUES ('67A49246-9AF5-4103-BEA4-494EBDCB1491', '節點控制測試', '00111', 200.00, 0, NULL, 1, '超級管理員', '2022-08-18 01:58:51', NULL, NULL, NULL);
INSERT INTO `Demo_Product` VALUES ('DE0771A2-0F79-4781-9BD0-2B7179A20F0E', '南極人冰絲短袖t恤男2022夏季滑料冰感半袖體恤', '10053965809814', 60.00, NULL, ' 南極人速麥專賣店', 1, '超級管理員', '2022-07-04 00:23:16', 1, '超級管理員', '2022-07-06 22:58:30');
INSERT INTO `Demo_Product` VALUES ('E59B385C-F88F-4BA4-80AC-131F1E48A24C', '真維斯短袖t恤男2022春夏季青少年寬松學生百搭', '10043785248188', 45.00, NULL, '真維斯韜客專賣店', 1, '超級管理員', '2022-07-04 00:24:09', 1, '超級管理員', '2022-07-04 00:25:31');

-- ----------------------------
-- Table structure for Demo_ProductColor
-- ----------------------------
DROP TABLE IF EXISTS `Demo_ProductColor`;
CREATE TABLE `Demo_ProductColor`  (
  `ProductColorId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ProductId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `Color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '顏色',
  `Qty` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '數量',
  `Unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '單位',
  `Img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '圖片',
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '備注',
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ProductColorId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Demo_ProductColor
-- ----------------------------
INSERT INTO `Demo_ProductColor` VALUES ('D5784DE1-9F45-4B13-8DC0-43568D4DD1BF', '63800619-74E8-4EB9-A540-6B0DD58DD9E4', '黑色', '120', '件', 'Upload/Tables/Demo_ProductColor/202207062316363990/11aa.11s - 副本.jpg', '8888888888', 1, '超級管理員', '2022-07-06 23:16:36', NULL, NULL, NULL);
INSERT INTO `Demo_ProductColor` VALUES ('D80CF425-21C6-41DE-9E04-5C3FC6CE6BF1', 'DE0771A2-0F79-4781-9BD0-2B7179A20F0E', '黑色', '11', '件', 'Upload/Tables/Demo_ProductColor/202207070011127536/11aa.11s - 副本.jpg', '11', 1, '超級管理員', '2022-07-07 00:11:40', NULL, NULL, NULL);
INSERT INTO `Demo_ProductColor` VALUES ('DFF8914D-7852-4B2E-957F-94DE9398A969', '63800619-74E8-4EB9-A540-6B0DD58DD9E4', '黑色', '200', '條', 'Upload/Tables/Demo_ProductColor/202207070007025140/11aa.11s - 副本.jpg', '11', 1, '超級管理員', '2022-07-07 00:07:02', 1, '超級管理員', '2022-07-07 00:07:11');

-- ----------------------------
-- Table structure for Demo_ProductSize
-- ----------------------------
DROP TABLE IF EXISTS `Demo_ProductSize`;
CREATE TABLE `Demo_ProductSize`  (
  `ProductSizeId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ProductId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `Size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '尺寸',
  `Unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '單位',
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '備注',
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '創建人',
  `CreateDate` datetime(0) NULL DEFAULT NULL COMMENT '創建時間',
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `ModifyDate` datetime(0) NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`ProductSizeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Demo_ProductSize
-- ----------------------------
INSERT INTO `Demo_ProductSize` VALUES ('7C1FFFDB-AA07-4AA1-807F-400CB495DC67', 'DE0771A2-0F79-4781-9BD0-2B7179A20F0E', 'XXL', '件', '12345', 1, '超級管理員', '2022-07-06 23:16:05', NULL, NULL, NULL);
INSERT INTO `Demo_ProductSize` VALUES ('AF3A2475-166E-4430-AB55-758D2964C172', NULL, '222', '22', '21', 1, '超級管理員', '2022-07-04 01:12:42', NULL, NULL, NULL);
INSERT INTO `Demo_ProductSize` VALUES ('FD093E64-5D46-4D3F-855B-5CB437B3DBAB', '63800619-74E8-4EB9-A540-6B0DD58DD9E4', 'XL', '條', '6666666666666', 1, '超級管理員', '2022-07-06 23:16:47', 1, '超級管理員', '2022-07-06 23:16:50');

-- ----------------------------
-- Table structure for FormCollectionObject
-- ----------------------------
DROP TABLE IF EXISTS `FormCollectionObject`;
CREATE TABLE `FormCollectionObject`  (
  `FormCollectionId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FormId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `FormData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  PRIMARY KEY (`FormCollectionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of FormCollectionObject
-- ----------------------------
INSERT INTO `FormCollectionObject` VALUES ('90513C4C-B639-4D0D-8C9D-FB69B77620F8', '0431A578-BFC9-407F-B95E-321C350F10CB', NULL, '{\"FormId\":\"0431a578-bfc9-407f-b95e-321c350f10cb\",\"field1640871905593\":\"1\",\"field1640871902689\":\"2022-01-05\",\"field1641207457900\":null,\"field1641207424694\":\"\"}', '2022-01-03 19:06:50', 1, '超級管理員', NULL, NULL, NULL);
INSERT INTO `FormCollectionObject` VALUES ('A37C1956-DDC0-457B-8F0A-93CDC44C257D', '8E6D9E7C-16C2-48B8-9D67-F1A1A19453DA', NULL, '{\"FormId\":\"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da\",\"field1641205615398\":\"1\",\"field1641206170991\":\"十分滿意,相當滿意\",\"field1641205647957\":\"相當滿意\",\"field1641206608182\":\"沒有意見\"}', '2022-01-03 19:05:46', 1, '超級管理員', NULL, NULL, NULL);
INSERT INTO `FormCollectionObject` VALUES ('CCCC519C-C448-4292-85D1-6A0AC2828FD9', '0431A578-BFC9-407F-B95E-321C350F10CB', NULL, '{\"FormId\":\"0431a578-bfc9-407f-b95e-321c350f10cb\",\"field1640871905593\":\"1\",\"field1640871902689\":\"2022-01-04\",\"field1641207457900\":\"123456\",\"field1641207424694\":\"\"}', '2022-01-03 19:09:53', 1, '超級管理員', NULL, NULL, NULL);
INSERT INTO `FormCollectionObject` VALUES ('E913389C-E11A-4675-B8EB-A25C75086E37', '8E6D9E7C-16C2-48B8-9D67-F1A1A19453DA', NULL, '{\"FormId\":\"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da\",\"field1641205615398\":\"1\",\"field1641206170991\":\"非常滿意,十分滿意,相當滿意\",\"field1641205647957\":\"非常滿意\",\"field1641206608182\":\"1111\"}', '2022-01-03 19:09:45', 1, '超級管理員', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for FormDesignOptions
-- ----------------------------
DROP TABLE IF EXISTS `FormDesignOptions`;
CREATE TABLE `FormDesignOptions`  (
  `FormId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DaraggeOptions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `FormOptions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `FormConfig` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `FormFields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `TableConfig` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  PRIMARY KEY (`FormId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of FormDesignOptions
-- ----------------------------
INSERT INTO `FormDesignOptions` VALUES ('0431A578-BFC9-407F-B95E-321C350F10CB', '2021開發語言使用調查', '[{\"id\":5,\"name\":\"是否同時使用多種語言開發\",\"type\":\"radio\",\"icon\":\"el-icon-aim\",\"value\":0,\"data\":[{\"key\":\"0\",\"value\":\"否\"},{\"key\":\"2\",\"value\":\"xx11\"},{\"key\":\"1\",\"value\":\"是\"}],\"key\":\"enable\",\"field\":\"field1640871905593\",\"width\":100,\"readonly\":false,\"required\":true,\"values\":[\"否\"]},{\"id\":3,\"name\":\"從什么時候開始做開發?\",\"type\":\"date\",\"icon\":\"el-icon-date\",\"value\":null,\"field\":\"field1640871902689\",\"width\":100,\"readonly\":false,\"required\":true},{\"id\":2,\"name\":\"說點什么\",\"type\":\"textarea\",\"value\":\"\",\"icon\":\"el-icon-document-copy\",\"field\":\"field1641207457900\",\"width\":100,\"readonly\":false,\"required\":false},{\"id\":9,\"name\":\"圖片上傳\",\"type\":\"img\",\"url\":\"\",\"maxSize\":3,\"fileInfo\":[],\"multiple\":false,\"autoUpload\":false,\"maxFile\":5,\"icon\":\"el-icon-picture-outline\",\"field\":\"field1641207424694\",\"width\":100,\"readonly\":false,\"required\":false}]', '{\"fields\":{\"field1640871905593\":[],\"field1640871902689\":null,\"field1641207457900\":null,\"field1641207424694\":null},\"formOptions\":[[{\"field\":\"field1640871905593\",\"title\":\"是否同時使用多種語言開發\",\"type\":\"radio\",\"required\":true,\"readonly\":false,\"colSize\":12,\"data\":[{\"key\":\"0\",\"value\":\"否\"},{\"key\":\"2\",\"value\":\"xx11\"},{\"key\":\"1\",\"value\":\"是\"}],\"dataKey\":\"enable\"}],[{\"field\":\"field1640871902689\",\"title\":\"從什么時候開始做開發?\",\"type\":\"date\",\"required\":true,\"readonly\":false,\"colSize\":12}],[{\"field\":\"field1641207457900\",\"title\":\"說點什么\",\"type\":\"textarea\",\"required\":false,\"readonly\":false,\"colSize\":12}],[{\"field\":\"field1641207424694\",\"title\":\"圖片上傳\",\"type\":\"img\",\"required\":false,\"readonly\":false,\"colSize\":12,\"maxSize\":3,\"fileInfo\":[],\"multiple\":false,\"autoUpload\":false,\"maxFile\":5,\"url\":\"\"}]],\"tables\":[],\"tabs\":[]}', '[{\"field\":\"field1640871905593\",\"title\":\"是否同時使用多種語言開發\",\"type\":\"radio\",\"required\":true,\"readonly\":false,\"colSize\":12,\"data\":[{\"key\":\"0\",\"value\":\"否\"},{\"key\":\"2\",\"value\":\"xx11\"},{\"key\":\"1\",\"value\":\"是\"}],\"dataKey\":\"enable\"},{\"field\":\"field1640871902689\",\"title\":\"從什么時候開始做開發?\",\"type\":\"date\",\"required\":true,\"readonly\":false,\"colSize\":12},{\"field\":\"field1641207457900\",\"title\":\"說點什么\",\"type\":\"textarea\",\"required\":false,\"readonly\":false,\"colSize\":12},{\"field\":\"field1641207424694\",\"title\":\"圖片上傳\",\"type\":\"img\",\"required\":false,\"readonly\":false,\"colSize\":12,\"maxSize\":3,\"fileInfo\":[],\"multiple\":false,\"autoUpload\":false,\"maxFile\":5,\"url\":\"\"}]', NULL, '[]', '2021-12-29 23:39:22', 1, '超級管理員', '超級管理員', '2022-01-03 19:00:30', 1);
INSERT INTO `FormDesignOptions` VALUES ('8E6D9E7C-16C2-48B8-9D67-F1A1A19453DA', '2021雙減政策調查', '[{\"id\":5,\"name\":\"您的孩子放學后是否有學校布置的書面作業?\",\"type\":\"radio\",\"icon\":\"el-icon-aim\",\"value\":0,\"data\":[{\"key\":\"0\",\"value\":\"否\"},{\"key\":\"2\",\"value\":\"xx11\"},{\"key\":\"1\",\"value\":\"是\"}],\"key\":\"enable\",\"field\":\"field1641205615398\",\"width\":100,\"readonly\":false,\"required\":true,\"values\":[\"否\"]},{\"id\":6,\"name\":\"您認為放學后作業對孩子的負擔怎樣?\",\"values\":[\"非常滿意\"],\"type\":\"checkbox\",\"key\":\"滿意度\",\"data\":[{\"key\":\"非常滿意\",\"value\":\"非常滿意\"},{\"key\":\"十分滿意\",\"value\":\"十分滿意\"},{\"key\":\"相當滿意\",\"value\":\"相當滿意\"}],\"icon\":\"el-icon-circle-check\",\"field\":\"field1641206170991\",\"width\":100,\"readonly\":false,\"required\":true},{\"id\":5,\"name\":\"作為家長,對當前雙減政策是否滿意？\",\"type\":\"radio\",\"icon\":\"el-icon-aim\",\"value\":0,\"data\":[{\"key\":\"非常滿意\",\"value\":\"非常滿意\"},{\"key\":\"十分滿意\",\"value\":\"十分滿意\"},{\"key\":\"相當滿意\",\"value\":\"相當滿意\"}],\"key\":\"滿意度\",\"field\":\"field1641205647957\",\"width\":100,\"readonly\":false,\"required\":true,\"values\":[\"非常滿意\"]},{\"id\":2,\"name\":\"其他意見\",\"type\":\"textarea\",\"value\":\"\",\"icon\":\"el-icon-document-copy\",\"field\":\"field1641206608182\",\"width\":100,\"readonly\":false,\"required\":false}]', '{\"fields\":{\"field1641205615398\":[],\"field1641206170991\":[],\"field1641205647957\":[],\"field1641206608182\":null},\"formOptions\":[[{\"field\":\"field1641205615398\",\"title\":\"您的孩子放學后是否有學校布置的書面作業?\",\"type\":\"radio\",\"required\":true,\"readonly\":false,\"colSize\":12,\"data\":[{\"key\":\"0\",\"value\":\"否\"},{\"key\":\"2\",\"value\":\"xx11\"},{\"key\":\"1\",\"value\":\"是\"}],\"dataKey\":\"enable\"}],[{\"field\":\"field1641206170991\",\"title\":\"您認為放學后作業對孩子的負擔怎樣?\",\"type\":\"checkbox\",\"required\":true,\"readonly\":false,\"colSize\":12,\"data\":[{\"key\":\"非常滿意\",\"value\":\"非常滿意\"},{\"key\":\"十分滿意\",\"value\":\"十分滿意\"},{\"key\":\"相當滿意\",\"value\":\"相當滿意\"}],\"dataKey\":\"滿意度\"}],[{\"field\":\"field1641205647957\",\"title\":\"作為家長,對當前雙減政策是否滿意？\",\"type\":\"radio\",\"required\":true,\"readonly\":false,\"colSize\":12,\"data\":[{\"key\":\"非常滿意\",\"value\":\"非常滿意\"},{\"key\":\"十分滿意\",\"value\":\"十分滿意\"},{\"key\":\"相當滿意\",\"value\":\"相當滿意\"}],\"dataKey\":\"滿意度\"}],[{\"field\":\"field1641206608182\",\"title\":\"其他意見\",\"type\":\"textarea\",\"required\":false,\"readonly\":false,\"colSize\":12}]],\"tables\":[],\"tabs\":[]}', '[{\"field\":\"field1641205615398\",\"title\":\"您的孩子放學后是否有學校布置的書面作業?\",\"type\":\"radio\",\"required\":true,\"readonly\":false,\"colSize\":12,\"data\":[{\"key\":\"0\",\"value\":\"否\"},{\"key\":\"2\",\"value\":\"xx11\"},{\"key\":\"1\",\"value\":\"是\"}],\"dataKey\":\"enable\"},{\"field\":\"field1641206170991\",\"title\":\"您認為放學后作業對孩子的負擔怎樣?\",\"type\":\"checkbox\",\"required\":true,\"readonly\":false,\"colSize\":12,\"data\":[{\"key\":\"非常滿意\",\"value\":\"非常滿意\"},{\"key\":\"十分滿意\",\"value\":\"十分滿意\"},{\"key\":\"相當滿意\",\"value\":\"相當滿意\"}],\"dataKey\":\"滿意度\"},{\"field\":\"field1641205647957\",\"title\":\"作為家長,對當前雙減政策是否滿意？\",\"type\":\"radio\",\"required\":true,\"readonly\":false,\"colSize\":12,\"data\":[{\"key\":\"非常滿意\",\"value\":\"非常滿意\"},{\"key\":\"十分滿意\",\"value\":\"十分滿意\"},{\"key\":\"相當滿意\",\"value\":\"相當滿意\"}],\"dataKey\":\"滿意度\"},{\"field\":\"field1641206608182\",\"title\":\"其他意見\",\"type\":\"textarea\",\"required\":false,\"readonly\":false,\"colSize\":12}]', NULL, '[]', '2021-12-30 21:45:16', 1, '超級管理員', '超級管理員', '2022-01-03 18:43:46', 1);

-- ----------------------------
-- Table structure for Sys_City
-- ----------------------------
DROP TABLE IF EXISTS `Sys_City`;
CREATE TABLE `Sys_City`  (
  `CityId` int NOT NULL,
  `CityCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CityName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ProvinceCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CityId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_City
-- ----------------------------
INSERT INTO `Sys_City` VALUES (1, '110100', '市轄區', '110000');
INSERT INTO `Sys_City` VALUES (2, '110200', '縣', '110000');
INSERT INTO `Sys_City` VALUES (3, '120100', '市轄區', '120000');
INSERT INTO `Sys_City` VALUES (4, '120200', '縣', '120000');
INSERT INTO `Sys_City` VALUES (5, '130100', '石家莊市', '130000');
INSERT INTO `Sys_City` VALUES (6, '130200', '唐山市', '130000');
INSERT INTO `Sys_City` VALUES (7, '130300', '秦皇島市', '130000');
INSERT INTO `Sys_City` VALUES (8, '130400', '邯鄲市', '130000');
INSERT INTO `Sys_City` VALUES (9, '130500', '邢臺市', '130000');
INSERT INTO `Sys_City` VALUES (10, '130600', '保定市', '130000');
INSERT INTO `Sys_City` VALUES (11, '130700', '張家口市', '130000');
INSERT INTO `Sys_City` VALUES (12, '130800', '承德市', '130000');
INSERT INTO `Sys_City` VALUES (13, '130900', '滄州市', '130000');
INSERT INTO `Sys_City` VALUES (14, '131000', '廊坊市', '130000');
INSERT INTO `Sys_City` VALUES (15, '131100', '衡水市', '130000');
INSERT INTO `Sys_City` VALUES (16, '140100', '太原市', '140000');
INSERT INTO `Sys_City` VALUES (17, '140200', '大同市', '140000');
INSERT INTO `Sys_City` VALUES (18, '140300', '陽泉市', '140000');
INSERT INTO `Sys_City` VALUES (19, '140400', '長治市', '140000');
INSERT INTO `Sys_City` VALUES (20, '140500', '晉城市', '140000');
INSERT INTO `Sys_City` VALUES (21, '140600', '朔州市', '140000');
INSERT INTO `Sys_City` VALUES (22, '140700', '晉中市', '140000');
INSERT INTO `Sys_City` VALUES (23, '140800', '運城市', '140000');
INSERT INTO `Sys_City` VALUES (24, '140900', '忻州市', '140000');
INSERT INTO `Sys_City` VALUES (25, '141000', '臨汾市', '140000');
INSERT INTO `Sys_City` VALUES (26, '141100', '呂梁市', '140000');
INSERT INTO `Sys_City` VALUES (27, '150100', '呼和浩特市', '150000');
INSERT INTO `Sys_City` VALUES (28, '150200', '包頭市', '150000');
INSERT INTO `Sys_City` VALUES (29, '150300', '烏海市', '150000');
INSERT INTO `Sys_City` VALUES (30, '150400', '赤峰市', '150000');
INSERT INTO `Sys_City` VALUES (31, '150500', '通遼市', '150000');
INSERT INTO `Sys_City` VALUES (32, '150600', '鄂爾多斯市', '150000');
INSERT INTO `Sys_City` VALUES (33, '150700', '呼倫貝爾市', '150000');
INSERT INTO `Sys_City` VALUES (34, '150800', '巴彥淖爾市', '150000');
INSERT INTO `Sys_City` VALUES (35, '150900', '烏蘭察布市', '150000');
INSERT INTO `Sys_City` VALUES (36, '152200', '興安盟', '150000');
INSERT INTO `Sys_City` VALUES (37, '152500', '錫林郭勒盟', '150000');
INSERT INTO `Sys_City` VALUES (38, '152900', '阿拉善盟', '150000');
INSERT INTO `Sys_City` VALUES (39, '210100', '沈陽市', '210000');
INSERT INTO `Sys_City` VALUES (40, '210200', '大連市', '210000');
INSERT INTO `Sys_City` VALUES (41, '210300', '鞍山市', '210000');
INSERT INTO `Sys_City` VALUES (42, '210400', '撫順市', '210000');
INSERT INTO `Sys_City` VALUES (43, '210500', '本溪市', '210000');
INSERT INTO `Sys_City` VALUES (44, '210600', '丹東市', '210000');
INSERT INTO `Sys_City` VALUES (45, '210700', '錦州市', '210000');
INSERT INTO `Sys_City` VALUES (46, '210800', '營口市', '210000');
INSERT INTO `Sys_City` VALUES (47, '210900', '阜新市', '210000');
INSERT INTO `Sys_City` VALUES (48, '211000', '遼陽市', '210000');
INSERT INTO `Sys_City` VALUES (49, '211100', '盤錦市', '210000');
INSERT INTO `Sys_City` VALUES (50, '211200', '鐵嶺市', '210000');
INSERT INTO `Sys_City` VALUES (51, '211300', '朝陽市', '210000');
INSERT INTO `Sys_City` VALUES (52, '211400', '葫蘆島市', '210000');
INSERT INTO `Sys_City` VALUES (53, '220100', '長春市', '220000');
INSERT INTO `Sys_City` VALUES (54, '220200', '吉林市', '220000');
INSERT INTO `Sys_City` VALUES (55, '220300', '四平市', '220000');
INSERT INTO `Sys_City` VALUES (56, '220400', '遼源市', '220000');
INSERT INTO `Sys_City` VALUES (57, '220500', '通化市', '220000');
INSERT INTO `Sys_City` VALUES (58, '220600', '白山市', '220000');
INSERT INTO `Sys_City` VALUES (59, '220700', '松原市', '220000');
INSERT INTO `Sys_City` VALUES (60, '220800', '白城市', '220000');
INSERT INTO `Sys_City` VALUES (61, '222400', '延邊朝鮮族自治州', '220000');
INSERT INTO `Sys_City` VALUES (62, '230100', '哈爾濱市', '230000');
INSERT INTO `Sys_City` VALUES (63, '230200', '齊齊哈爾市', '230000');
INSERT INTO `Sys_City` VALUES (64, '230300', '雞西市', '230000');
INSERT INTO `Sys_City` VALUES (65, '230400', '鶴崗市', '230000');
INSERT INTO `Sys_City` VALUES (66, '230500', '雙鴨山市', '230000');
INSERT INTO `Sys_City` VALUES (67, '230600', '大慶市', '230000');
INSERT INTO `Sys_City` VALUES (68, '230700', '伊春市', '230000');
INSERT INTO `Sys_City` VALUES (69, '230800', '佳木斯市', '230000');
INSERT INTO `Sys_City` VALUES (70, '230900', '七臺河市', '230000');
INSERT INTO `Sys_City` VALUES (71, '231000', '牡丹江市', '230000');
INSERT INTO `Sys_City` VALUES (72, '231100', '黑河市', '230000');
INSERT INTO `Sys_City` VALUES (73, '231200', '綏化市', '230000');
INSERT INTO `Sys_City` VALUES (74, '232700', '大興安嶺地區', '230000');
INSERT INTO `Sys_City` VALUES (75, '310100', '市轄區', '310000');
INSERT INTO `Sys_City` VALUES (76, '310200', '縣', '310000');
INSERT INTO `Sys_City` VALUES (77, '320100', '南京市', '320000');
INSERT INTO `Sys_City` VALUES (78, '320200', '無錫市', '320000');
INSERT INTO `Sys_City` VALUES (79, '320300', '徐州市', '320000');
INSERT INTO `Sys_City` VALUES (80, '320400', '常州市', '320000');
INSERT INTO `Sys_City` VALUES (81, '320500', '蘇州市', '320000');
INSERT INTO `Sys_City` VALUES (82, '320600', '南通市', '320000');
INSERT INTO `Sys_City` VALUES (83, '320700', '連云港市', '320000');
INSERT INTO `Sys_City` VALUES (84, '320800', '淮安市', '320000');
INSERT INTO `Sys_City` VALUES (85, '320900', '鹽城市', '320000');
INSERT INTO `Sys_City` VALUES (86, '321000', '揚州市', '320000');
INSERT INTO `Sys_City` VALUES (87, '321100', '鎮江市', '320000');
INSERT INTO `Sys_City` VALUES (88, '321200', '泰州市', '320000');
INSERT INTO `Sys_City` VALUES (89, '321300', '宿遷市', '320000');
INSERT INTO `Sys_City` VALUES (90, '330100', '杭州市', '330000');
INSERT INTO `Sys_City` VALUES (91, '330200', '寧波市', '330000');
INSERT INTO `Sys_City` VALUES (92, '330300', '溫州市', '330000');
INSERT INTO `Sys_City` VALUES (93, '330400', '嘉興市', '330000');
INSERT INTO `Sys_City` VALUES (94, '330500', '湖州市', '330000');
INSERT INTO `Sys_City` VALUES (95, '330600', '紹興市', '330000');
INSERT INTO `Sys_City` VALUES (96, '330700', '金華市', '330000');
INSERT INTO `Sys_City` VALUES (97, '330800', '衢州市', '330000');
INSERT INTO `Sys_City` VALUES (98, '330900', '舟山市', '330000');
INSERT INTO `Sys_City` VALUES (99, '331000', '臺州市', '330000');
INSERT INTO `Sys_City` VALUES (100, '331100', '麗水市', '330000');
INSERT INTO `Sys_City` VALUES (101, '340100', '合肥市', '340000');
INSERT INTO `Sys_City` VALUES (102, '340200', '蕪湖市', '340000');
INSERT INTO `Sys_City` VALUES (103, '340300', '蚌埠市', '340000');
INSERT INTO `Sys_City` VALUES (104, '340400', '淮南市', '340000');
INSERT INTO `Sys_City` VALUES (105, '340500', '馬鞍山市', '340000');
INSERT INTO `Sys_City` VALUES (106, '340600', '淮北市', '340000');
INSERT INTO `Sys_City` VALUES (107, '340700', '銅陵市', '340000');
INSERT INTO `Sys_City` VALUES (108, '340800', '安慶市', '340000');
INSERT INTO `Sys_City` VALUES (109, '341000', '黃山市', '340000');
INSERT INTO `Sys_City` VALUES (110, '341100', '滁州市', '340000');
INSERT INTO `Sys_City` VALUES (111, '341200', '阜陽市', '340000');
INSERT INTO `Sys_City` VALUES (112, '341300', '宿州市', '340000');
INSERT INTO `Sys_City` VALUES (113, '341400', '巢湖市', '340000');
INSERT INTO `Sys_City` VALUES (114, '341500', '六安市', '340000');
INSERT INTO `Sys_City` VALUES (115, '341600', '亳州市', '340000');
INSERT INTO `Sys_City` VALUES (116, '341700', '池州市', '340000');
INSERT INTO `Sys_City` VALUES (117, '341800', '宣城市', '340000');
INSERT INTO `Sys_City` VALUES (118, '350100', '福州市', '350000');
INSERT INTO `Sys_City` VALUES (119, '350200', '廈門市', '350000');
INSERT INTO `Sys_City` VALUES (120, '350300', '莆田市', '350000');
INSERT INTO `Sys_City` VALUES (121, '350400', '三明市', '350000');
INSERT INTO `Sys_City` VALUES (122, '350500', '泉州市', '350000');
INSERT INTO `Sys_City` VALUES (123, '350600', '漳州市', '350000');
INSERT INTO `Sys_City` VALUES (124, '350700', '南平市', '350000');
INSERT INTO `Sys_City` VALUES (125, '350800', '龍巖市', '350000');
INSERT INTO `Sys_City` VALUES (126, '350900', '寧德市', '350000');
INSERT INTO `Sys_City` VALUES (127, '360100', '南昌市', '360000');
INSERT INTO `Sys_City` VALUES (128, '360200', '景德鎮市', '360000');
INSERT INTO `Sys_City` VALUES (129, '360300', '萍鄉市', '360000');
INSERT INTO `Sys_City` VALUES (130, '360400', '九江市', '360000');
INSERT INTO `Sys_City` VALUES (131, '360500', '新余市', '360000');
INSERT INTO `Sys_City` VALUES (132, '360600', '鷹潭市', '360000');
INSERT INTO `Sys_City` VALUES (133, '360700', '贛州市', '360000');
INSERT INTO `Sys_City` VALUES (134, '360800', '吉安市', '360000');
INSERT INTO `Sys_City` VALUES (135, '360900', '宜春市', '360000');
INSERT INTO `Sys_City` VALUES (136, '361000', '撫州市', '360000');
INSERT INTO `Sys_City` VALUES (137, '361100', '上饒市', '360000');
INSERT INTO `Sys_City` VALUES (138, '370100', '濟南市', '370000');
INSERT INTO `Sys_City` VALUES (139, '370200', '青島市', '370000');
INSERT INTO `Sys_City` VALUES (140, '370300', '淄博市', '370000');
INSERT INTO `Sys_City` VALUES (141, '370400', '棗莊市', '370000');
INSERT INTO `Sys_City` VALUES (142, '370500', '東營市', '370000');
INSERT INTO `Sys_City` VALUES (143, '370600', '煙臺市', '370000');
INSERT INTO `Sys_City` VALUES (144, '370700', '濰坊市', '370000');
INSERT INTO `Sys_City` VALUES (145, '370800', '濟寧市', '370000');
INSERT INTO `Sys_City` VALUES (146, '370900', '泰安市', '370000');
INSERT INTO `Sys_City` VALUES (147, '371000', '威海市', '370000');
INSERT INTO `Sys_City` VALUES (148, '371100', '日照市', '370000');
INSERT INTO `Sys_City` VALUES (149, '371200', '萊蕪市', '370000');
INSERT INTO `Sys_City` VALUES (150, '371300', '臨沂市', '370000');
INSERT INTO `Sys_City` VALUES (151, '371400', '德州市', '370000');
INSERT INTO `Sys_City` VALUES (152, '371500', '聊城市', '370000');
INSERT INTO `Sys_City` VALUES (153, '371600', '濱州市', '370000');
INSERT INTO `Sys_City` VALUES (154, '371700', '荷澤市', '370000');
INSERT INTO `Sys_City` VALUES (155, '410100', '鄭州市', '410000');
INSERT INTO `Sys_City` VALUES (156, '410200', '開封市', '410000');
INSERT INTO `Sys_City` VALUES (157, '410300', '洛陽市', '410000');
INSERT INTO `Sys_City` VALUES (158, '410400', '平頂山市', '410000');
INSERT INTO `Sys_City` VALUES (159, '410500', '安陽市', '410000');
INSERT INTO `Sys_City` VALUES (160, '410600', '鶴壁市', '410000');
INSERT INTO `Sys_City` VALUES (161, '410700', '新鄉市', '410000');
INSERT INTO `Sys_City` VALUES (162, '410800', '焦作市', '410000');
INSERT INTO `Sys_City` VALUES (163, '410900', '濮陽市', '410000');
INSERT INTO `Sys_City` VALUES (164, '411000', '許昌市', '410000');
INSERT INTO `Sys_City` VALUES (165, '411100', '漯河市', '410000');
INSERT INTO `Sys_City` VALUES (166, '411200', '三門峽市', '410000');
INSERT INTO `Sys_City` VALUES (167, '411300', '南陽市', '410000');
INSERT INTO `Sys_City` VALUES (168, '411400', '商丘市', '410000');
INSERT INTO `Sys_City` VALUES (169, '411500', '信陽市', '410000');
INSERT INTO `Sys_City` VALUES (170, '411600', '周口市', '410000');
INSERT INTO `Sys_City` VALUES (171, '411700', '駐馬店市', '410000');
INSERT INTO `Sys_City` VALUES (172, '420100', '武漢市', '420000');
INSERT INTO `Sys_City` VALUES (173, '420200', '黃石市', '420000');
INSERT INTO `Sys_City` VALUES (174, '420300', '十堰市', '420000');
INSERT INTO `Sys_City` VALUES (175, '420500', '宜昌市', '420000');
INSERT INTO `Sys_City` VALUES (176, '420600', '襄樊市', '420000');
INSERT INTO `Sys_City` VALUES (177, '420700', '鄂州市', '420000');
INSERT INTO `Sys_City` VALUES (178, '420800', '荊門市', '420000');
INSERT INTO `Sys_City` VALUES (179, '420900', '孝感市', '420000');
INSERT INTO `Sys_City` VALUES (180, '421000', '荊州市', '420000');
INSERT INTO `Sys_City` VALUES (181, '421100', '黃岡市', '420000');
INSERT INTO `Sys_City` VALUES (182, '421200', '咸寧市', '420000');
INSERT INTO `Sys_City` VALUES (183, '421300', '隨州市', '420000');
INSERT INTO `Sys_City` VALUES (184, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `Sys_City` VALUES (185, '429000', '省直轄行政單位', '420000');
INSERT INTO `Sys_City` VALUES (186, '430100', '長沙市', '430000');
INSERT INTO `Sys_City` VALUES (187, '430200', '株洲市', '430000');
INSERT INTO `Sys_City` VALUES (188, '430300', '湘潭市', '430000');
INSERT INTO `Sys_City` VALUES (189, '430400', '衡陽市', '430000');
INSERT INTO `Sys_City` VALUES (190, '430500', '邵陽市', '430000');
INSERT INTO `Sys_City` VALUES (191, '430600', '岳陽市', '430000');
INSERT INTO `Sys_City` VALUES (192, '430700', '常德市', '430000');
INSERT INTO `Sys_City` VALUES (193, '430800', '張家界市', '430000');
INSERT INTO `Sys_City` VALUES (194, '430900', '益陽市', '430000');
INSERT INTO `Sys_City` VALUES (195, '431000', '郴州市', '430000');
INSERT INTO `Sys_City` VALUES (196, '431100', '永州市', '430000');
INSERT INTO `Sys_City` VALUES (197, '431200', '懷化市', '430000');
INSERT INTO `Sys_City` VALUES (198, '431300', '婁底市', '430000');
INSERT INTO `Sys_City` VALUES (199, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `Sys_City` VALUES (200, '440100', '廣州市', '440000');
INSERT INTO `Sys_City` VALUES (201, '440200', '韶關市', '440000');
INSERT INTO `Sys_City` VALUES (202, '440300', '深圳市', '440000');
INSERT INTO `Sys_City` VALUES (203, '440400', '珠海市', '440000');
INSERT INTO `Sys_City` VALUES (204, '440500', '汕頭市', '440000');
INSERT INTO `Sys_City` VALUES (205, '440600', '佛山市', '440000');
INSERT INTO `Sys_City` VALUES (206, '440700', '江門市', '440000');
INSERT INTO `Sys_City` VALUES (207, '440800', '湛江市', '440000');
INSERT INTO `Sys_City` VALUES (208, '440900', '茂名市', '440000');
INSERT INTO `Sys_City` VALUES (209, '441200', '肇慶市', '440000');
INSERT INTO `Sys_City` VALUES (210, '441300', '惠州市', '440000');
INSERT INTO `Sys_City` VALUES (211, '441400', '梅州市', '440000');
INSERT INTO `Sys_City` VALUES (212, '441500', '汕尾市', '440000');
INSERT INTO `Sys_City` VALUES (213, '441600', '河源市', '440000');
INSERT INTO `Sys_City` VALUES (214, '441700', '陽江市', '440000');
INSERT INTO `Sys_City` VALUES (215, '441800', '清遠市', '440000');
INSERT INTO `Sys_City` VALUES (216, '441900', '東莞市', '440000');
INSERT INTO `Sys_City` VALUES (217, '442000', '中山市', '440000');
INSERT INTO `Sys_City` VALUES (218, '445100', '潮州市', '440000');
INSERT INTO `Sys_City` VALUES (219, '445200', '揭陽市', '440000');
INSERT INTO `Sys_City` VALUES (220, '445300', '云浮市', '440000');
INSERT INTO `Sys_City` VALUES (221, '450100', '南寧市', '450000');
INSERT INTO `Sys_City` VALUES (222, '450200', '柳州市', '450000');
INSERT INTO `Sys_City` VALUES (223, '450300', '桂林市', '450000');
INSERT INTO `Sys_City` VALUES (224, '450400', '梧州市', '450000');
INSERT INTO `Sys_City` VALUES (225, '450500', '北海市', '450000');
INSERT INTO `Sys_City` VALUES (226, '450600', '防城港市', '450000');
INSERT INTO `Sys_City` VALUES (227, '450700', '欽州市', '450000');
INSERT INTO `Sys_City` VALUES (228, '450800', '貴港市', '450000');
INSERT INTO `Sys_City` VALUES (229, '450900', '玉林市', '450000');
INSERT INTO `Sys_City` VALUES (230, '451000', '百色市', '450000');
INSERT INTO `Sys_City` VALUES (231, '451100', '賀州市', '450000');
INSERT INTO `Sys_City` VALUES (232, '451200', '河池市', '450000');
INSERT INTO `Sys_City` VALUES (233, '451300', '來賓市', '450000');
INSERT INTO `Sys_City` VALUES (234, '451400', '崇左市', '450000');
INSERT INTO `Sys_City` VALUES (235, '460100', '海口市', '460000');
INSERT INTO `Sys_City` VALUES (236, '460200', '三亞市', '460000');
INSERT INTO `Sys_City` VALUES (237, '469000', '省直轄縣級行政單位', '460000');
INSERT INTO `Sys_City` VALUES (238, '500100', '市轄區', '500000');
INSERT INTO `Sys_City` VALUES (239, '500200', '縣', '500000');
INSERT INTO `Sys_City` VALUES (240, '500300', '市', '500000');
INSERT INTO `Sys_City` VALUES (241, '510100', '成都市', '510000');
INSERT INTO `Sys_City` VALUES (242, '510300', '自貢市', '510000');
INSERT INTO `Sys_City` VALUES (243, '510400', '攀枝花市', '510000');
INSERT INTO `Sys_City` VALUES (244, '510500', '瀘州市', '510000');
INSERT INTO `Sys_City` VALUES (245, '510600', '德陽市', '510000');
INSERT INTO `Sys_City` VALUES (246, '510700', '綿陽市', '510000');
INSERT INTO `Sys_City` VALUES (247, '510800', '廣元市', '510000');
INSERT INTO `Sys_City` VALUES (248, '510900', '遂寧市', '510000');
INSERT INTO `Sys_City` VALUES (249, '511000', '內江市', '510000');
INSERT INTO `Sys_City` VALUES (250, '511100', '樂山市', '510000');
INSERT INTO `Sys_City` VALUES (251, '511300', '南充市', '510000');
INSERT INTO `Sys_City` VALUES (252, '511400', '眉山市', '510000');
INSERT INTO `Sys_City` VALUES (253, '511500', '宜賓市', '510000');
INSERT INTO `Sys_City` VALUES (254, '511600', '廣安市', '510000');
INSERT INTO `Sys_City` VALUES (255, '511700', '達州市', '510000');
INSERT INTO `Sys_City` VALUES (256, '511800', '雅安市', '510000');
INSERT INTO `Sys_City` VALUES (257, '511900', '巴中市', '510000');
INSERT INTO `Sys_City` VALUES (258, '512000', '資陽市', '510000');
INSERT INTO `Sys_City` VALUES (259, '513200', '阿壩藏族羌族自治州', '510000');
INSERT INTO `Sys_City` VALUES (260, '513300', '甘孜藏族自治州', '510000');
INSERT INTO `Sys_City` VALUES (261, '513400', '涼山彝族自治州', '510000');
INSERT INTO `Sys_City` VALUES (262, '520100', '貴陽市', '520000');
INSERT INTO `Sys_City` VALUES (263, '520200', '六盤水市', '520000');
INSERT INTO `Sys_City` VALUES (264, '520300', '遵義市', '520000');
INSERT INTO `Sys_City` VALUES (265, '520400', '安順市', '520000');
INSERT INTO `Sys_City` VALUES (266, '522200', '銅仁地區', '520000');
INSERT INTO `Sys_City` VALUES (267, '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `Sys_City` VALUES (268, '522400', '畢節地區', '520000');
INSERT INTO `Sys_City` VALUES (269, '522600', '黔東南苗族侗族自治州', '520000');
INSERT INTO `Sys_City` VALUES (270, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `Sys_City` VALUES (271, '530100', '昆明市', '530000');
INSERT INTO `Sys_City` VALUES (272, '530300', '曲靖市', '530000');
INSERT INTO `Sys_City` VALUES (273, '530400', '玉溪市', '530000');
INSERT INTO `Sys_City` VALUES (274, '530500', '保山市', '530000');
INSERT INTO `Sys_City` VALUES (275, '530600', '昭通市', '530000');
INSERT INTO `Sys_City` VALUES (276, '530700', '麗江市', '530000');
INSERT INTO `Sys_City` VALUES (277, '530800', '思茅市', '530000');
INSERT INTO `Sys_City` VALUES (278, '530900', '臨滄市', '530000');
INSERT INTO `Sys_City` VALUES (279, '532300', '楚雄彝族自治州', '530000');
INSERT INTO `Sys_City` VALUES (280, '532500', '紅河哈尼族彝族自治州', '530000');
INSERT INTO `Sys_City` VALUES (281, '532600', '文山壯族苗族自治州', '530000');
INSERT INTO `Sys_City` VALUES (282, '532800', '西雙版納傣族自治州', '530000');
INSERT INTO `Sys_City` VALUES (283, '532900', '大理白族自治州', '530000');
INSERT INTO `Sys_City` VALUES (284, '533100', '德宏傣族景頗族自治州', '530000');
INSERT INTO `Sys_City` VALUES (285, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `Sys_City` VALUES (286, '533400', '迪慶藏族自治州', '530000');
INSERT INTO `Sys_City` VALUES (287, '540100', '拉薩市', '540000');
INSERT INTO `Sys_City` VALUES (288, '542100', '昌都地區', '540000');
INSERT INTO `Sys_City` VALUES (289, '542200', '山南地區', '540000');
INSERT INTO `Sys_City` VALUES (290, '542300', '日喀則地區', '540000');
INSERT INTO `Sys_City` VALUES (291, '542400', '那曲地區', '540000');
INSERT INTO `Sys_City` VALUES (292, '542500', '阿里地區', '540000');
INSERT INTO `Sys_City` VALUES (293, '542600', '林芝地區', '540000');
INSERT INTO `Sys_City` VALUES (294, '610100', '西安市', '610000');
INSERT INTO `Sys_City` VALUES (295, '610200', '銅川市', '610000');
INSERT INTO `Sys_City` VALUES (296, '610300', '寶雞市', '610000');
INSERT INTO `Sys_City` VALUES (297, '610400', '咸陽市', '610000');
INSERT INTO `Sys_City` VALUES (298, '610500', '渭南市', '610000');
INSERT INTO `Sys_City` VALUES (299, '610600', '延安市', '610000');
INSERT INTO `Sys_City` VALUES (300, '610700', '漢中市', '610000');
INSERT INTO `Sys_City` VALUES (301, '610800', '榆林市', '610000');
INSERT INTO `Sys_City` VALUES (302, '610900', '安康市', '610000');
INSERT INTO `Sys_City` VALUES (303, '611000', '商洛市', '610000');
INSERT INTO `Sys_City` VALUES (304, '620100', '蘭州市', '620000');
INSERT INTO `Sys_City` VALUES (305, '620200', '嘉峪關市', '620000');
INSERT INTO `Sys_City` VALUES (306, '620300', '金昌市', '620000');
INSERT INTO `Sys_City` VALUES (307, '620400', '白銀市', '620000');
INSERT INTO `Sys_City` VALUES (308, '620500', '天水市', '620000');
INSERT INTO `Sys_City` VALUES (309, '620600', '武威市', '620000');
INSERT INTO `Sys_City` VALUES (310, '620700', '張掖市', '620000');
INSERT INTO `Sys_City` VALUES (311, '620800', '平涼市', '620000');
INSERT INTO `Sys_City` VALUES (312, '620900', '酒泉市', '620000');
INSERT INTO `Sys_City` VALUES (313, '621000', '慶陽市', '620000');
INSERT INTO `Sys_City` VALUES (314, '621100', '定西市', '620000');
INSERT INTO `Sys_City` VALUES (315, '621200', '隴南市', '620000');
INSERT INTO `Sys_City` VALUES (316, '622900', '臨夏回族自治州', '620000');
INSERT INTO `Sys_City` VALUES (317, '623000', '甘南藏族自治州', '620000');
INSERT INTO `Sys_City` VALUES (318, '630100', '西寧市', '630000');
INSERT INTO `Sys_City` VALUES (319, '632100', '海東地區', '630000');
INSERT INTO `Sys_City` VALUES (320, '632200', '海北藏族自治州', '630000');
INSERT INTO `Sys_City` VALUES (321, '632300', '黃南藏族自治州', '630000');
INSERT INTO `Sys_City` VALUES (322, '632500', '海南藏族自治州', '630000');
INSERT INTO `Sys_City` VALUES (323, '632600', '果洛藏族自治州', '630000');
INSERT INTO `Sys_City` VALUES (324, '632700', '玉樹藏族自治州', '630000');
INSERT INTO `Sys_City` VALUES (325, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `Sys_City` VALUES (326, '640100', '銀川市', '640000');
INSERT INTO `Sys_City` VALUES (327, '640200', '石嘴山市', '640000');
INSERT INTO `Sys_City` VALUES (328, '640300', '吳忠市', '640000');
INSERT INTO `Sys_City` VALUES (329, '640400', '固原市', '640000');
INSERT INTO `Sys_City` VALUES (330, '640500', '中衛市', '640000');
INSERT INTO `Sys_City` VALUES (331, '650100', '烏魯木齊市', '650000');
INSERT INTO `Sys_City` VALUES (332, '650200', '克拉瑪依市', '650000');
INSERT INTO `Sys_City` VALUES (333, '652100', '吐魯番地區', '650000');
INSERT INTO `Sys_City` VALUES (334, '652200', '哈密地區', '650000');
INSERT INTO `Sys_City` VALUES (335, '652300', '昌吉回族自治州', '650000');
INSERT INTO `Sys_City` VALUES (336, '652700', '博爾塔拉蒙古自治州', '650000');
INSERT INTO `Sys_City` VALUES (337, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `Sys_City` VALUES (338, '652900', '阿克蘇地區', '650000');
INSERT INTO `Sys_City` VALUES (339, '653000', '克孜勒蘇柯爾克孜自治州', '650000');
INSERT INTO `Sys_City` VALUES (340, '653100', '喀什地區', '650000');
INSERT INTO `Sys_City` VALUES (341, '653200', '和田地區', '650000');
INSERT INTO `Sys_City` VALUES (342, '654000', '伊犁哈薩克自治州', '650000');
INSERT INTO `Sys_City` VALUES (343, '654200', '塔城地區', '650000');
INSERT INTO `Sys_City` VALUES (344, '654300', '阿勒泰地區', '650000');
INSERT INTO `Sys_City` VALUES (345, '659000', '省直轄行政單位', '650000');

-- ----------------------------
-- Table structure for Sys_DbService
-- ----------------------------
DROP TABLE IF EXISTS `Sys_DbService`;
CREATE TABLE `Sys_DbService`  (
  `DbServiceId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DbServiceName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `GroupId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DbIpAddress` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `DatabaseName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UserId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Pwd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `PhoneNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Enable` int NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`DbServiceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_DbService
-- ----------------------------
INSERT INTO `Sys_DbService` VALUES ('5C162AE0-6DF8-494A-9D00-0DB468A706AF', '迪爾康集團上海分部', '3E1526B1-A3FD-4E89-A7F6-AD6674B1D0EF', '127.0.0.1', 'vol_service202301', 'sa', NULL, '13838119040', '上海市', NULL, NULL, 1, '超級管理員', '2023-05-04 02:56:00', 1, '超級管理員', '2023-06-09 10:48:31');
INSERT INTO `Sys_DbService` VALUES ('959BE257-A0AE-4705-BA1D-735977999417', '阿詩瑪集團南京二部', '3E1526B1-A3FD-4E89-A7F6-AD6674B1D0EF', '127.0.0.1', 'vol_service202303', 'sa', NULL, '13838119040', '南京市', NULL, NULL, 1, '超級管理員', '2023-06-09 10:47:34', 1, '超級管理員', '2023-06-09 10:48:40');
INSERT INTO `Sys_DbService` VALUES ('A88E77A2-37B7-44AC-8725-E53A5CD70491', '阿詩瑪集團深圳一部', '7A0F2D9F-E9B4-49F7-801E-A39E4936B03F', '127.0.0.1', 'vol_service202302', 'sa', NULL, '13838119040', '深圳市	', NULL, NULL, 1, '超級管理員', '2023-05-04 21:03:22', 1, '超級管理員', '2023-06-09 10:48:23');

-- ----------------------------
-- Table structure for Sys_Department
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Department`;
CREATE TABLE `Sys_Department`  (
  `DepartmentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DepartmentName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DepartmentCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ParentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DepartmentType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` int NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `DbServiceId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DepartmentId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Department
-- ----------------------------
INSERT INTO `Sys_Department` VALUES ('5852BCBE-97FB-4492-A918-B65AC87B64F1', '人事部', '002', 'DCE91CEE-4A39-4A0F-B50C-339B92A6AADA', '2', 1, '人事部人事部', 1, '超級管理員', '2023-05-04 02:08:26', 1, '超級管理員', '2023-05-19 01:25:50', NULL);
INSERT INTO `Sys_Department` VALUES ('DCE91CEE-4A39-4A0F-B50C-339B92A6AADA', '行政部', '001', NULL, '1', 1, '行政部行政部', 1, '超級管理員', '2023-05-04 02:07:44', 1, '超級管理員', '2023-05-19 01:24:06', NULL);

-- ----------------------------
-- Table structure for Sys_Dictionary
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Dictionary`;
CREATE TABLE `Sys_Dictionary`  (
  `Dic_ID` int NOT NULL AUTO_INCREMENT,
  `Config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DBServer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `DbSql` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `DicName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DicNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Enable` tinyint NOT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `OrderNo` int NULL DEFAULT NULL,
  `ParentId` int NOT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`Dic_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Dictionary
-- ----------------------------
INSERT INTO `Sys_Dictionary` VALUES (3, '{valueField: \'Enable\',\r\ntextField: \'Enable\',\r\n containField: null,\r\n  handler: null }', '2019-07-05 17:36:23', NULL, 'admin', '1', NULL, '是否值', 'enable', 1, '超級管理員', '2023-05-04 02:07:57', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (30, '{valueField: \'Success\',\r\n textField: \'Success\', \r\n containField: null,\r\n handler: null }\r\n', '2018-06-11 18:26:05', 0, '測試超級管理員', NULL, NULL, '響應狀態', 'restatus', 1, '測試超級管理員', '2018-06-12 10:21:48', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (31, '{valueField: \'LogType\',\r\n textField: \'LogType\', \r\n containField: null,\r\n handler: null }\r\n', '2018-06-12 14:46:07', NULL, '測試超級管理員', NULL, NULL, '日志類型', 'log', 1, '超級管理員', '2023-05-07 17:42:57', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (32, '{valueField: \'Role_Id\',\r\n textField: \'RoleName\', \r\n containField: [\'Role_Id\',\'RoleName\'],\r\n handler: null }\r\n', '2018-06-14 16:48:35', NULL, '測試超級管理員', NULL, 'SELECT Role_Id as \'key\',RoleName as \'value\' FROM Sys_Role WHERE Enable=1\r\n', '角色列表', 'roles', 1, '測試超級管理員', '2018-07-13 15:03:53', 1, 123, 0, 'sql語句需要key,value列，界面才能綁定數據源');
INSERT INTO `Sys_Dictionary` VALUES (35, '{\r\n valueField: \'AuditStatus\',\r\n textField: \'AuditStatus\',\r\n  containField:null \r\n}', '2018-07-10 10:51:37', NULL, '測試超級管理員', NULL, NULL, '審核狀態', 'audit', 1, '測試超級管理員', '2018-07-10 11:02:59', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (38, '{\r\n valueField: \'City\',\r\n textField: \'City\',\r\n  containField:null \r\n}', '2018-07-10 14:18:25', NULL, '測試超級管理員', NULL, '\r\nSELECT  CASE WHEN  CityName=\'市轄區\' THEN  ProvinceName ELSE CityName end  as  \'key\',CASE WHEN  CityName=\'市轄區\' THEN  ProvinceName ELSE CityName end  as  \'value\'  FROM Sys_City AS a \r\nINNER JOIN Sys_Province AS b \r\nON a.ProvinceCode=b.ProvinceCode\r\nWHERE a.CityName<> \'縣\'', '城市', 'city', 1, '超級管理員', '2020-02-01 22:27:08', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (46, '{\r\n valueField: \'ProvinceName\',\r\n textField: \'ProvinceName\',\r\n  containField:null \r\n}', '2018-07-16 13:27:34', NULL, '測試超級管理員', NULL, '\r\nSELECT  CASE WHEN  CityName=\'市轄區\' THEN  ProvinceName ELSE CityName end  as  \'key\',CASE WHEN  CityName=\'市轄區\' THEN  ProvinceName ELSE CityName end  as  \'value\'  FROM Sys_City AS a \r\nINNER JOIN Sys_Province AS b \r\nON a.ProvinceCode=b.ProvinceCode\r\nWHERE a.CityName<> \'縣\'', '省列表', 'pro', 1, '超級管理員', '2020-02-01 22:26:59', 1, NULL, 0, 'sql語句需要key,value列，界面才能綁定數據源');
INSERT INTO `Sys_Dictionary` VALUES (49, '{\r\n valueField: \'Gender\',\r\n textField: \'Gender\',\r\n  containField:null \r\n}', '2018-07-23 10:04:45', NULL, '測試超級管理員', NULL, NULL, '性別', 'gender', 1, '測試超級管理員', '2018-07-23 11:10:28', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (50, '{\r\n valueField: \'Enable\',\r\n textField: \'Enable\',\r\n  containField:null \r\n}', '2018-07-23 15:36:43', 1, '測試超級管理員', NULL, NULL, '啟用狀態', 'status', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (66, NULL, '2020-12-29 21:50:16', 1, '超級管理員', NULL, 'SELECT Role_Id AS id,parentId,Role_Id AS  \'key\',RoleName AS value FROM Sys_Role\n', '級聯角色', 'tree_roles', 1, '超級管理員', '2023-05-19 01:19:59', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (67, NULL, '2023-05-04 02:13:14', 1, '超級管理員', NULL, 'SELECT DepartmentId AS id,DepartmentId AS \'key\',ParentId AS parentId,DepartmentName AS value FROM Sys_Department', '部門級聯', '部門級聯', 1, '超級管理員', '2023-05-17 17:39:37', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (68, NULL, '2023-05-04 02:54:50', 1, '超級管理員', 'SysDbContext', 'SELECT [GroupId] AS [key],GroupName AS value FROM Sys_Group', '集團', '集團', 1, '超級管理員', '2023-05-07 18:09:09', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (69, NULL, '2023-05-07 18:05:48', 1, '超級管理員', NULL, NULL, '所在數據庫', 'dbServer', 1, '超級管理員', '2023-05-07 18:06:56', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (70, NULL, '2023-05-19 01:20:29', 1, '超級管理員', 'SysDbContext', NULL, '組織類型', '組織類型', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (71, NULL, '2023-05-19 15:15:42', 1, '超級管理員', NULL, NULL, '商品分類可用', '商品分類可用', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (72, NULL, '2023-05-19 15:16:06', 1, '超級管理員', NULL, 'select CatalogId as id, CatalogId as [key],[CatalogName] as [value],ParentId as parentId from [dbo].[Demo_Catalog]', '分類級聯', '分類級聯', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (73, NULL, '2023-05-19 15:16:34', 1, '超級管理員', NULL, NULL, '訂單類型', '訂單類型', 1, '超級管理員', '2023-05-19 15:33:00', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (74, NULL, '2023-05-19 15:17:45', 1, '超級管理員', NULL, 'SELECT User_Id AS [key],UserTrueName AS value FROM sys_user	', '客戶', '客戶', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (75, NULL, '2023-05-19 15:18:13', 1, '超級管理員', NULL, NULL, '商品規格', '商品規格', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (76, NULL, '2023-05-19 15:18:35', 1, '超級管理員', NULL, 'SELECT code AS \'key\',name AS value FROM Sys_Region AS a WHERE a.level=3', '縣', '縣', 1, '超級管理員', '2023-05-19 15:23:28', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (77, NULL, '2023-05-19 15:19:11', 1, '超級管理員', NULL, 'SELECT code AS \'key\',name AS value FROM Sys_Region AS a WHERE a.level=2', '市', '市', 1, '超級管理員', '2023-05-19 15:23:22', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (78, NULL, '2023-05-19 15:19:57', 1, '超級管理員', NULL, 'SELECT code AS \'key\',name AS value FROM Sys_Region AS a WHERE a.level=1', '省', '省', 1, '超級管理員', '2023-05-19 15:23:18', 1, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (79, NULL, '2023-05-19 15:20:16', 1, '超級管理員', NULL, NULL, '尺寸	', '尺寸	', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (80, NULL, '2023-05-19 15:20:36', 1, '超級管理員', NULL, NULL, '單位	', '單位	', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (81, NULL, '2023-05-19 15:20:57', 1, '超級管理員', NULL, NULL, '顏色', '顏色', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `Sys_Dictionary` VALUES (82, NULL, '2023-05-19 15:33:52', 1, '超級管理員', NULL, NULL, '訂單狀態', '訂單狀態', 1, '超級管理員', '2023-05-19 15:34:14', 1, NULL, 0, NULL);

-- ----------------------------
-- Table structure for Sys_DictionaryList
-- ----------------------------
DROP TABLE IF EXISTS `Sys_DictionaryList`;
CREATE TABLE `Sys_DictionaryList`  (
  `DicList_ID` int NOT NULL AUTO_INCREMENT,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DicName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DicValue` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Dic_ID` int NULL DEFAULT NULL,
  `Enable` tinyint NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `OrderNo` int NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`DicList_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_DictionaryList
-- ----------------------------
INSERT INTO `Sys_DictionaryList` VALUES (3, NULL, 1, 'admin', '否', '0', 3, NULL, '超級管理員', '2023-05-04 02:07:57', 1, 2, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (4, NULL, 1, 'xxx', '是', '1', 3, NULL, '超級管理員', '2023-05-04 02:07:57', 1, 1, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (22, '2018-06-11 18:26:05', 1, '測試超級管理員', '其他', '0', 30, NULL, '超級管理員', '2019-08-21 16:49:43', 1, 10, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (23, '2018-06-11 18:26:05', 1, '測試超級管理員', '成功', '1', 30, NULL, '超級管理員', '2019-08-21 16:49:43', 1, 100, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (24, '2018-06-12 09:41:58', 1, '測試超級管理員', '異常', '2', 30, NULL, '超級管理員', '2019-08-21 16:49:43', 1, 50, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (25, '2018-06-12 14:46:08', 1, '測試超級管理員', '系統', 'System', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, 100, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (26, '2018-06-12 14:47:32', 1, '測試超級管理員', '登陸', 'Login', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, 90, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (27, '2018-06-15 15:29:58', 1, '測試超級管理員', '新建', 'Add', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (28, '2018-06-15 15:29:58', 1, '測試超級管理員', '刪除', 'Del', 31, 1, '超級管理員', '2023-05-07 17:42:58', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (29, '2018-06-15 15:30:34', 1, '測試超級管理員', '編輯', 'Edit', 31, 1, '超級管理員', '2023-05-07 17:42:58', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (37, '2018-07-10 10:51:38', 1, '測試超級管理員', '審核中', '0', 35, NULL, '測試超級管理員', '2018-07-10 11:02:59', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (38, '2018-07-10 10:51:38', 1, '測試超級管理員', '審核通過', '1', 35, NULL, '測試超級管理員', '2018-07-10 11:02:59', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (39, '2018-07-10 10:51:38', 1, '測試超級管理員', '審核未通過', '2', 35, NULL, '測試超級管理員', '2018-07-10 11:02:59', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (71, '2018-07-11 17:11:19', 1, '測試超級管理員', 'PC請求異常', 'Exception', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (90, '2018-07-23 10:04:45', 1, '測試超級管理員', '男', '0', 49, NULL, '測試超級管理員', '2018-07-23 11:10:28', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (91, '2018-07-23 10:04:45', 1, '測試超級管理員', '女', '1', 49, NULL, '測試超級管理員', '2018-07-23 11:10:28', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (96, '2018-07-23 15:36:43', 1, '測試超級管理員', '未啟用', '0', 50, 1, '超級管理員', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (97, '2018-07-23 15:36:43', 1, '測試超級管理員', '已啟用', '1', 50, 1, '超級管理員', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (98, '2018-07-23 15:36:43', 1, '測試超級管理員', '已刪除', '2', 50, 1, '超級管理員', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (144, '2019-08-21 16:40:50', 1, '超級管理員', '刷新Token', 'ReplaceToeken', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, 110, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (145, '2019-08-21 16:49:43', 1, '超級管理員', 'Info', '3', 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (423, '2023-05-07 18:05:48', 1, '超級管理員', '系統庫SysDbContext', 'SysDbContext', 69, 0, '超級管理員', '2023-05-07 18:06:56', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (424, '2023-05-07 18:05:48', 1, '超級管理員', '業務庫ServiceDbContext', 'ServiceDbContext', 69, 0, '超級管理員', '2023-05-07 18:06:56', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (425, '2023-05-07 18:05:48', 1, '超級管理員', '測試庫TestDbContext', 'TestDbContext', 69, 0, '超級管理員', '2023-05-07 18:06:56', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (426, '2023-05-19 01:20:29', 1, '超級管理員', '組織', '1', 70, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (427, '2023-05-19 01:20:29', 1, '超級管理員', '部門', '2', 70, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (428, '2023-05-19 15:15:42', 1, '超級管理員', '否', '0', 71, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (429, '2023-05-19 15:15:42', 1, '超級管理員', '是', '1', 71, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (430, '2023-05-19 15:16:34', 1, '超級管理員', '銷售訂單', '1', 73, 0, '超級管理員', '2023-05-19 15:33:00', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (431, '2023-05-19 15:16:34', 1, '超級管理員', '采購訂單', '2', 73, 0, '超級管理員', '2023-05-19 15:33:00', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (432, '2023-05-19 15:17:28', 1, '超級管理員', '退貨訂單', '3', 73, 0, '超級管理員', '2023-05-19 15:33:00', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (433, '2023-05-19 15:18:13', 1, '超級管理員', '件', '件', 75, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (434, '2023-05-19 15:18:13', 1, '超級管理員', 'KG', 'KG', 75, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (435, '2023-05-19 15:18:13', 1, '超級管理員', '噸', '噸', 75, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (436, '2023-05-19 15:20:16', 1, '超級管理員', 'X', 'X', 79, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (437, '2023-05-19 15:20:16', 1, '超級管理員', 'XL', 'XL', 79, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (438, '2023-05-19 15:20:36', 1, '超級管理員', '件', '件', 80, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (439, '2023-05-19 15:20:36', 1, '超級管理員', '條', '條', 80, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (440, '2023-05-19 15:20:57', 1, '超級管理員', '黑色', '黑色', 81, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (441, '2023-05-19 15:20:57', 1, '超級管理員', '白色', '白色', 81, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (442, '2023-05-19 15:33:52', 1, '超級管理員', '已發貨', '1', 82, 0, '超級管理員', '2023-05-19 15:34:14', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (443, '2023-05-19 15:33:52', 1, '超級管理員', '已收貨', '2', 82, 0, '超級管理員', '2023-05-19 15:34:14', 1, NULL, NULL);
INSERT INTO `Sys_DictionaryList` VALUES (444, '2023-05-19 15:34:14', 1, '超級管理員', '已簽收', '3', 82, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_Group
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Group`;
CREATE TABLE `Sys_Group`  (
  `GroupId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `GroupName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PhoneNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Enable` int NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`GroupId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Group
-- ----------------------------
INSERT INTO `Sys_Group` VALUES ('3E1526B1-A3FD-4E89-A7F6-AD6674B1D0EF', '阿詩瑪集團', '18612009055', '北京市', NULL, '北京市', 1, '超級管理員', '2023-05-04 21:06:14', 1, '超級管理員', '2023-06-09 10:45:50');
INSERT INTO `Sys_Group` VALUES ('7A0F2D9F-E9B4-49F7-801E-A39E4936B03F', '迪爾康集團', '18612009022', '北京市', NULL, '北京市', 1, '超級管理員', '2023-05-04 02:53:48', 1, '超級管理員', '2023-05-20 12:40:12');

-- ----------------------------
-- Table structure for Sys_Language
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Language`;
CREATE TABLE `Sys_Language`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ZHCN` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ZHTW` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `English` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `French` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Spanish` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Russian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Arabic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `IsPackageContent` int NULL DEFAULT NULL,
  `CreateId` int NULL DEFAULT NULL,
  `Creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyId` int NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Thai` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Vietnamese` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Language
-- ----------------------------
INSERT INTO `Sys_Language` VALUES (1, '驗證碼已失效', '驗證碼已失效', 'The code has expired', NULL, 'incorrect code', NULL, NULL, NULL, 0, 1, 'admi', '2020-06-17 18:48:02', NULL, '2021-04-15 10:32:42', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (2, '數據驗證未通過', NULL, 'Data validation failed', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-13 05:08:51', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (3, '上傳中...', NULL, 'Uploading...', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:08:33', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (4, '最多只能選[5]張圖片', NULL, 'You can only select [5] pictures at most', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:13:31', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (5, '最多只能選[5]個文件', NULL, 'Only [5] files can be selected at most', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:13:45', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (6, '只能選擇excel文件', NULL, 'Only Excel files can be selected', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:15:30', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (7, '文件大小不能超過', NULL, 'The file size cannot exceed ', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:17:40', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (8, '最多可輸入[{$ts}]個字符', NULL, 'a maximum of [{$ts}] characters can be entered', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:44:24', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (9, '第[{$ts}]行,[{$ts}]驗證未通過', NULL, 'Line [{$ts},{$ts}] failed verificatio', NULL, NULL, NULL, NULL, '存儲過程返回', 0, NULL, 'admi', '2021-04-15 06:47:55', NULL, '2021-04-16 06:44:22', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (10, '刪除成功,共[{$ts}]條數據', NULL, 'Deletion succeeded, with a total of [{$ts}] data', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 11:36:44', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (11, '[{$ts}]不能為空', NULL, '[{$ts}] is required', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-16 05:34:04', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (12, '[{$ts},{$ts}]不能為空', NULL, '[{$ts},{$ts}] is required', NULL, NULL, NULL, NULL, '存儲過程返回', 0, NULL, 'admi', '2021-04-16 05:34:31', NULL, '2021-04-19 02:13:17', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (13, '無數據', NULL, 'No data', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-19 05:26:52', NULL, '2021-04-19 05:27:13', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (14, '[{$ts}]重復', NULL, '[{$ts}] repeated', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-19 06:31:30', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (15, '搜索', NULL, 'Search', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-22 05:12:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (16, '詳情', NULL, 'Details', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-22 08:51:11', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (17, '重復', NULL, 'repeated', NULL, NULL, NULL, NULL, '存儲過程返回', 0, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (18, '重復記錄', NULL, 'Repeated recording', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (19, '重置', NULL, 'Reset', NULL, 'Reset', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (20, '重置篩選條件', NULL, 'Reset filter', NULL, 'Reset filter', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (21, '角色管理', NULL, 'Role info', NULL, 'Role info', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:42:30', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (22, '角色名稱', NULL, 'Role', NULL, 'Role', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:42:15', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (23, '角色', NULL, 'Role', NULL, 'Role', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:42:41', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (24, '設置', NULL, 'Setting', NULL, 'Einstellung', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (25, '保存篩選條件', NULL, 'Save filter', NULL, 'Save filter', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (26, '保存成功,共{$ts}條數據', NULL, 'Saved successfully, {$ts} item in total', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (27, '選擇', NULL, 'Select', NULL, 'Select', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (28, '選擇文件', NULL, 'Select file', NULL, 'Select file', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (29, '請選擇行', NULL, 'Please select rows', NULL, 'Please select rows', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (30, '修改人', NULL, 'Modifier', NULL, 'Modifier', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (31, '修改密碼', NULL, 'Password', NULL, 'Modify Password', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-12 02:36:34', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (32, '修改時間', NULL, 'Modify time', NULL, 'Modify time', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-12 02:36:45', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (33, '模塊', NULL, 'Module', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (34, '月', NULL, 'Months', NULL, NULL, NULL, NULL, '繁殖參數', 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (35, '更多', NULL, 'More', NULL, 'More', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (36, '名字', NULL, 'Name', NULL, 'Name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (37, '郵箱', NULL, 'Mail', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (38, '女', NULL, 'Male', NULL, 'Male', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (39, '男', NULL, 'Ma', NULL, 'Ma', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (40, '菜單', NULL, 'Menu', NULL, 'Menu', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (41, '菜單名稱', NULL, 'Menu name', NULL, 'Menu name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-13 06:27:00', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (42, '菜單設置', NULL, 'Menu', NULL, 'Menu', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-13 06:27:05', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (43, '提示', NULL, 'Message', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (44, '否', NULL, 'No', NULL, 'Nei', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (45, '父級ID', NULL, 'Parent ID', NULL, 'Parent ID', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (46, '上級角色', NULL, 'Parent role', NULL, 'Parent role', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-12 01:41:59', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (47, '密碼', NULL, 'Password', NULL, 'Password', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (48, '權限', NULL, 'Permissio', NULL, 'Permissio', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (49, '個人中心', NULL, 'Personal Center', NULL, 'Pers?nliches Zentrum', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (50, '請輸入', NULL, 'Please input', NULL, 'Please input', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (51, '請選擇', NULL, 'Please select', NULL, 'Please select', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (52, '請選擇文件', NULL, 'Please select file', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (53, '其他', NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (54, '必須是數字', NULL, 'not a number', NULL, 'not a number', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (55, '備注', NULL, 'Notes', NULL, 'Notize', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (56, '確認', NULL, 'OK', NULL, 'OK', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (57, '是', NULL, 'Yes', NULL, 'Ja', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (58, '不存在', NULL, 'does not exist', NULL, NULL, NULL, NULL, '存儲過程返回', 0, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (59, '系統', NULL, 'System', NULL, 'System', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (60, '表名', NULL, 'Table Name', NULL, 'Table Name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (61, '電話', NULL, 'Tel', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (62, '時間', NULL, 'Time', NULL, 'Zeit', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (63, '排序號', NULL, 'Sort NO', NULL, 'Sort NO', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (64, '狀態', NULL, 'Status', NULL, 'Status', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (65, '操作成功', NULL, 'Success', NULL, 'Success', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (66, '刪除成功', NULL, 'Successfully Delete', NULL, 'Successfully Delete', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-08 06:24:50', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (67, '保存成功', NULL, 'Successfully save', NULL, 'Successfully save', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-08 06:28:19', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (68, '摘要', NULL, 'Summary', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (69, '超級管理員', NULL, 'Super Admi', NULL, 'Super Admi', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (70, '確定', NULL, 'Confirm', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-15 01:44:59', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (71, '用戶管理', NULL, 'User info', NULL, 'User info', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:40:25', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (72, '用戶名', NULL, 'Account', NULL, 'Account', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:40:17', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (73, '用戶權限', NULL, 'User permission', NULL, 'User permissio', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-19 01:38:28', 'Admin', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (74, '用戶基礎信息', NULL, 'User info', NULL, 'User info', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:40:47', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (75, '用戶名或密碼錯誤', NULL, 'Account or password incorrect', NULL, 'Account or password incorrect', NULL, NULL, NULL, 0, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:39:57', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (76, '值', NULL, 'Value', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (77, '查看', NULL, 'View', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (78, '警告', NULL, 'Warning', NULL, 'Warning', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (79, '最多{$ts}個字符', NULL, 'Up to {$ts} characters', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (80, '上傳文件', NULL, 'Upload', NULL, 'Upload', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (81, '上傳', NULL, 'Upload', NULL, 'Upload', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (82, '文件上傳成功', NULL, 'Upload succeeded', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (83, '登陸成功', NULL, 'Login Succeeded', NULL, 'Login Succeeded', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (84, '代碼生成', NULL, 'Coder', NULL, 'Coder', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (85, '公司名稱', NULL, 'Company', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (86, '公司地址', NULL, 'Company address', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (87, '公司管理', NULL, 'Company info', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (88, '所屬公司', NULL, 'Company name', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (89, '公司類別', NULL, 'Company type', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (90, '保存后繼續添加', NULL, 'Continue adding after saving', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (91, '成本', NULL, 'Cost', NULL, 'Koste', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (92, '國家', NULL, 'Country', NULL, 'Country', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (93, '國家代碼', NULL, 'CountryCode', NULL, 'CountryCode', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (94, '創建時間', NULL, 'Create time', NULL, 'Create Time', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-15 14:25:18', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (95, '創建人', NULL, 'Creator', NULL, 'Creator', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (96, '驗證碼', NULL, 'code', NULL, 'Code', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (97, '關閉', NULL, 'Close', NULL, 'Close', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (98, '只能是日期格式', NULL, 'Can only be in date format', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (99, '取消', NULL, 'Cancel', NULL, 'Abbreche', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (100, '不能大于', NULL, 'cannot be greater tha', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (101, '不能小于', NULL, 'cannot be less tha', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (102, '選中checkbox隱藏/顯示列數據', NULL, 'Check box to hide / show column data', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (103, '中國', NULL, 'China', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (104, '中文', NULL, 'Chinese', NULL, 'Chinese', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (105, '描述', NULL, 'Descriptio', NULL, 'Descriptio', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (106, '數據字典', NULL, 'Dictionary', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (107, '字典名稱', NULL, 'Dictionary Name', NULL, 'Dictionary Name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (108, '字典編號', NULL, 'Dictionary Number', NULL, 'Dictionary Number', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (109, '完成', NULL, 'Done', NULL, 'Erledigt', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (110, '字典數據', NULL, 'Data Source', NULL, 'Data Source', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (111, '數據源', NULL, 'Data Source', NULL, 'Data Source', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (112, '下拉框綁定設置', NULL, 'Data source', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-19 01:14:38', '超級管理員', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (113, '日期', NULL, 'Date', NULL, 'Datum', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (114, '刪除', NULL, 'Delete', NULL, 'L?sche', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (115, '天', NULL, 'Days', NULL, NULL, NULL, NULL, '繁殖參數', 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (116, '帳號', NULL, 'Account', NULL, 'Account', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (117, '操作類型', NULL, 'Action type', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (118, '新建', NULL, 'Add', NULL, 'Add', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (119, '添加子級', NULL, 'Add a subset', NULL, 'Add a subset', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (120, '添加備注', NULL, 'Add note', NULL, 'Notiz anlege', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (121, '添加行', NULL, 'Add Row', NULL, 'Add Row', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (122, '添加同級', NULL, 'Add Siblings', NULL, 'Add Siblings', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (123, '地址', NULL, 'Address', NULL, 'Address', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (124, '全選', NULL, 'All', NULL, 'All', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (125, '不能為空', NULL, ' is required', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (126, '參數設置', NULL, ' Parameters', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (127, '真實姓名', NULL, ' Real Name', NULL, ' Real Name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (128, '【{$ts}】不是模板中的列', NULL, '【{$ts}】 is not a column in the template', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (129, '第[{$ts}]行,[{$ts}]驗證未通過,必須是日期格式', NULL, 'Line [{$ts},{$ts}] validation failed, must be in date format	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:09:42', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (130, '第[{$ts}]行,[{$ts}]驗證未通過,不能為空', NULL, 'Line [{$ts},{$ts}] failed verification, cannot be empty	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:12:38', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (131, '[{$ts}]數據字典缺失', NULL, '[{$ts}] no data source is configured	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:14:11', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (132, '第[{$ts}]行,[{$ts}]驗證未通過,只能輸入', NULL, 'Line [{$ts},{$ts}] failed verification, only input	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:15:18', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (133, '賬號登錄', NULL, 'Login account', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:19:01', NULL, '2022-05-16 15:29:13', '超級管理員', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (134, '正在登陸', NULL, 'Logging', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 11:21:12', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (135, '登錄', NULL, 'Login', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 11:21:21', NULL, '2023-01-18 14:16:52', '超級管理員', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (136, '登陸成功', NULL, 'Login succeeded', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 11:22:42', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (137, '保存后繼續添加', NULL, 'Continue adding after saving', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 11:34:35', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (138, '語言設置', NULL, 'Language', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:21:48', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (139, '系統設置', NULL, 'System', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:22:17', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (140, '日志管理', NULL, 'Logger', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:22:41', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (141, '英文', NULL, 'English', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:23:42', NULL, '2021-05-15 14:24:18', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (142, '德語', NULL, 'Deutsch', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:24:09', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (143, '印尼語', NULL, 'Indonesia', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:24:52', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (144, '語言包', NULL, 'Package', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:25:02', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (145, '權限管理', NULL, 'Permission', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:29:10', NULL, '2021-05-19 01:38:32', 'Admin', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (146, '保存后繼續添加', NULL, 'Continue adding after saving', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:29:35', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (147, '其他權限', NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:32:37', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (148, '菜單列表', NULL, 'Menu list', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:34:23', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (149, '確認要刪除選擇的數據嗎?', NULL, 'Are you sure you want to delete the selected data?	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:45:22', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (150, '正在處理', NULL, 'Processing', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:47:05', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (151, '查詢', NULL, 'Search', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:47:31', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (152, '編輯', NULL, 'Edit', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:47:42', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (153, '生成語言包', NULL, 'Create package', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:48:03', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (154, '導入', NULL, 'Import', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:48:15', NULL, '2021-05-15 14:48:58', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (155, '導出', NULL, 'Export', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:48:25', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (156, '新增', NULL, 'Add', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:53:10', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (157, '請輸入正確的手機號', NULL, 'Please input the correct mobile phone number', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:01:44', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (158, '密碼長度不能小于6位', NULL, 'The password length cannot be less than 6 digits', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:02:06', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (159, '數據驗證未通過', NULL, 'Data validation failed', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:03:04', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (160, '只能是整數', NULL, 'required is an integer', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:05:14', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (161, '只能是日期格式', NULL, 'Can only be in date format', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:05:35', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (162, '只能是數字', NULL, 'required are numbers', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:05:48', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (163, '不能小于', NULL, 'cannot be less than	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:06:12', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (164, '不能大于', NULL, 'cannot be greater tha', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:06:30', NULL, '2021-05-15 15:22:32', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (165, '不能為空', NULL, 'is required', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:07:49', NULL, '2021-05-15 15:07:53', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (166, '必須是一個郵箱地址', NULL, 'It must be an email address', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:08:13', NULL, '2021-05-15 15:08:22', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (167, '是否啟用', NULL, 'Enable', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:24:28', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (168, 'sql語句', NULL, 'Sql', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:24:48', NULL, '2021-05-15 15:24:55', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (169, '舊密碼不能為空', NULL, 'Old password cannot be empty\\r\\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:34:55', NULL, '2021-05-15 22:35:00', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (170, '新密碼不能為空', NULL, 'New password cannot be empty', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:35:18', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (171, '舊密碼不正確', NULL, 'The old password is incorrect', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:36:08', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (172, '新密碼不能與舊密碼相同', NULL, 'The new password cannot be the same as the old password', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:36:27', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (173, '密碼修改成功\\r\\n', NULL, 'Password modified successfully', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:37:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (174, '不能選擇此角色', NULL, 'This role cannot be selected', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:38:21', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (175, '用戶名已經被注冊\\r\\n', NULL, 'The user name has been registered', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:38:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (176, '用戶新建成功.帳號[{$ts}],密碼[{$ts}]', NULL, 'User created successfully. Account number [{$ts}], password [{$ts}]', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:42:50', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (177, '沒有權限', NULL, 'No permission', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:43:49', NULL, '2021-05-19 01:38:24', 'Admin', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (178, '不能修改自己的角色', NULL, 'You cannot modify your own role', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:44:47', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (179, '角色名【{$ts}】已存在', NULL, 'Role name [{$ts}] already exists\\r\\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:46:38', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (180, '上級角色不能選擇自己', NULL, 'Superior roles cannot choose themselves', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:48:07', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (181, '不能選擇此上級角色，選擇的上級角色與當前角色形成依賴關系', NULL, 'This superior role cannot be selected. The selected superior role is dependent on the current role', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:49:07', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (182, '服務器處理出現異常', NULL, 'Server processing exceptio', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:50:09', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (183, '未找到上傳的文件', NULL, 'Upload file not found', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:51:45', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (184, '[{$ts}]不是模板中的列', NULL, '[{$ts}] is not a column in the template', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:53:59', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (185, '[{$ts}]列名重復', NULL, 'Duplicate column name [{$ts}]', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:54:16', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (186, '導入文件列必須與導入模板相同', NULL, 'The import file columns must be the same as the import template', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:54:41', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (187, '下載模板', NULL, 'Download template', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:14:22', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (188, '上傳結果', NULL, 'Import result', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:18:28', NULL, '2021-05-15 23:18:47', 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (189, '保存', NULL, 'Save', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:18:59', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (190, '請上傳文件', NULL, 'Please upload the file', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:28:47', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (191, '上傳失敗', NULL, 'Upload failed', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:29:20', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (192, '字典編號[{$ts}]已存在', NULL, 'Dictionary number [{$ts}] already exists', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:47:59', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (193, '【字典項名稱】不能有重復的值', NULL, '[dictionary item name] cannot have duplicate values', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:48:32', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (194, '【字典項Key】不能有重復的值', NULL, 'Dictionary key cannot have duplicate values', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:48:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (195, '皮膚', NULL, 'Theme', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:53:49', NULL, '2021-05-15 23:54:03', '超級管理員', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (196, '框架文檔', NULL, 'Document', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:55:58', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (197, '安全退出', NULL, 'Log out', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:59:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (198, '首頁', NULL, 'Home', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:06:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (199, '角色ID', NULL, 'Role ID', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:06:18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (200, '部門名稱', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:06:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (201, '刪除行', NULL, 'Delete row', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:18:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (202, '刷新', NULL, 'Refresh', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:18:56', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (203, '字典明細', NULL, 'Dictionary details', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:19:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (204, '是否可用', NULL, 'Enable', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:19:57', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (205, '數據源Text', NULL, 'Text', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:20:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (206, '數據源Value', NULL, 'Value', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:20:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (207, '數據源ID', NULL, 'ID', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:20:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (208, '系統日志', NULL, 'Logger', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:45:32', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (209, '開始時間', NULL, 'Start time', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:45:52', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (210, '用戶名稱', NULL, 'Name', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:46:04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (211, '請求地址', NULL, 'Url', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:46:22', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (212, '日志類型', NULL, 'Log type', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:46:44', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (213, '響應狀態', NULL, 'Status', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:47:18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (214, '時長', NULL, 'Duratio', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:47:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (215, '請求參數', NULL, 'Request', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:48:08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (216, '響應參數', NULL, 'Response', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:48:42', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (217, '異常信息', NULL, 'Exception', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:50:04', NULL, '2021-05-24 12:47:17', 'Admin', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (218, '用戶IP', NULL, 'IP', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:50:18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (219, '瀏覽器類型', NULL, 'Browser', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:50:39', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (220, '性別', NULL, 'Gender', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:22:21', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (221, '操作', NULL, 'Actio', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:22:46', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (222, '頭像', NULL, 'Header', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:23:34', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (223, '注冊時間', NULL, 'Reg time', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:23:59', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (224, '審核', NULL, 'Audit', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:24:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (225, '修改密碼', NULL, 'Password', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 12:09:36', NULL, '2021-05-19 01:22:07', 'Admin test', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (226, '視圖/表名', NULL, 'Table/View', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin117771', '2021-05-16 14:32:18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (227, '菜單ID', NULL, 'ID', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin117771', '2021-05-16 14:32:27', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (228, '用戶信息', NULL, 'User info', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin test', '2021-05-19 01:21:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (229, '驗證碼不正確', NULL, 'Incorrect verification code', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin test', '2021-05-19 01:21:37', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (230, '手機用戶', NULL, 'Mobile users', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', '2022-03-01 16:41:25', NULL, '2022-03-01 16:41:48', 'Admin', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (231, '語言管理', NULL, 'Language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:13:47', NULL, '2022-05-16 13:17:36', '超級管理員', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (232, '簡體中文', NULL, 'zh-cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:14:27', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (233, '繁體中文', NULL, 'zh-tw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:14:37', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (234, '英語', NULL, 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:15:14', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (235, '法語', NULL, 'French', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:15:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (236, '西班牙語', NULL, 'Spanish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:15:42', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (237, '俄語', NULL, 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:15:54', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (238, '高級查詢', NULL, 'Query', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:16:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (239, '角色列表', NULL, 'Role list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:21:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (240, '姓名', NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:35:31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (241, '阿拉伯語', NULL, 'Arabic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:35:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (242, '只能上傳excel文件,文件大小不超過5M', NULL, 'Only Excel files can be uploaded, and the file size shall not exceed 5m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:36:38', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (243, '選擇的文件【{$ts}】只能是excel文件', NULL, 'The selected file [{$ts}] can only be an excel file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:52:27', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (244, '選擇的文件【{$ts}】只能是圖片格式', NULL, 'The selected file [{$ts}] can only be in picture format', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:52:57', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (245, '最多只能選【{$ts}】張圖片', NULL, 'You can only select [{$ts}] pictures at most', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:54:24', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (246, '最多只能選【{$ts}】個文件', NULL, 'You can only select [{$ts}] files at most', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:54:46', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (247, '不支持此文件格式', NULL, 'This file format is not supported', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:56:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (248, '文件不能超過[{$ts}]m', NULL, 'File cannot exceed [{$ts}] m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:57:31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (249, '上傳中', NULL, 'Uploading', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:00:26', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (250, '文件列表', NULL, 'File list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:01:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (251, '文件名', NULL, 'Filen name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:01:34', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (252, '大小', NULL, 'Size', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:01:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (253, '未能處理導入的文件,請檢查導入的文件是否正確', NULL, 'Failed to process the imported file. Please check whether the imported file is correct', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:05:47', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (254, 'Token已過期', NULL, 'The token has expired', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:09:01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (255, '密碼長度不能少于6位', NULL, 'Password length cannot be less than 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:21:59', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (256, '密碼修改成功', NULL, 'Password modified successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:22:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (257, '用戶不存在', NULL, 'user does not exist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:23:22', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (258, '當前菜單存在子菜單,請先刪除子菜單', NULL, 'There are sub menus in the current menu. Please delete the sub menu first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:26:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (259, '【字典項名稱】不能有重復的值', NULL, '[dictionary item name] cannot have duplicate values', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:28:41', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (260, '【字典項Key】不能有重復的值', NULL, '[dictionary key] cannot have duplicate values', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:29:09', NULL, '2022-05-16 15:18:05', '超級管理員', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (261, '字典編號[{$ts}]已存在', NULL, 'Dictionary number [{$ts}] already exists\\n\\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:30:31', NULL, '2022-05-16 15:18:22', '超級管理員', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (262, '賬號', NULL, 'account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 15:30:33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (263, '越南語', NULL, 'Vietnamese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-03-05 23:45:34', NULL, '2023-03-05 23:53:01', '超級管理員', NULL, 'Ti?ng Vi?t');
INSERT INTO `Sys_Language` VALUES (264, '泰語', NULL, 'Thai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-03-05 23:46:06', NULL, '2023-03-05 23:52:40', '超級管理員', '???????', NULL);
INSERT INTO `Sys_Language` VALUES (265, '結束時間', NULL, 'End time', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2023-03-06 00:00:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (266, '是否顯示', NULL, 'Show or not', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2023-03-06 00:01:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (267, '列名', NULL, 'Field', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-03-06 00:01:38', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (268, '拖動列名可調整表格列顯示順序', NULL, 'Drag column names to adjust the display order of table columns', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2023-03-06 00:01:57', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (269, '集團租戶', NULL, 'Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-07 20:51:38', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (270, '組織構架', NULL, '\nOrganizational', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:31:32', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (271, '集團管理', NULL, 'Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:33:38', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (272, '數據分庫', NULL, 'Database', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:34:04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (273, '演示菜單', NULL, 'Example', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:34:26', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (274, '表單設計', NULL, 'Form Design', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:34:51', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (275, '流程管理', NULL, 'Workflow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:35:15', NULL, '2023-05-19 11:37:00', '超級管理員', NULL, NULL);
INSERT INTO `Sys_Language` VALUES (276, '一對多生成', NULL, 'Multiple Tables', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:35:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (277, '新窗口編輯', NULL, 'New Tab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:35:58', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (278, '打印設計', NULL, 'Print', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:36:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (279, '消息推送', NULL, 'Message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:36:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (280, '定時任務', NULL, 'Tasks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:36:47', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (281, '名稱', NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:37:52', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (282, '編號', NULL, 'Code', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:38:01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (283, '類型', NULL, 'Type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:38:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Language` VALUES (284, '集團名稱', NULL, 'Group name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-19 11:38:50', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_Log
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Log`;
CREATE TABLE `Sys_Log`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `BeginDate` datetime(0) NULL DEFAULT NULL,
  `BrowserType` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ElapsedTime` int NULL DEFAULT NULL,
  `EndDate` datetime(0) NULL DEFAULT NULL,
  `ExceptionInfo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `LogType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RequestParameter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ResponseParameter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Role_Id` int NULL DEFAULT NULL,
  `ServiceIP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Success` int NULL DEFAULT NULL,
  `Url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `UserIP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UserName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `User_Id` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Log
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Menu
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Menu`;
CREATE TABLE `Sys_Menu`  (
  `Menu_Id` int NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Auth` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` tinyint NULL DEFAULT NULL,
  `OrderNo` int NULL DEFAULT NULL,
  `TableName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ParentId` int NOT NULL,
  `Url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MenuType` int NULL DEFAULT NULL,
  `LinkType` int NULL DEFAULT NULL,
  `AuthData` int NULL DEFAULT NULL,
  PRIMARY KEY (`Menu_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Menu
-- ----------------------------
INSERT INTO `Sys_Menu` VALUES (2, '用戶管理', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-user', NULL, 1, 9700, '.', 0, NULL, '2017-08-28 12:21:13', '2017-08-28 11:12:45', '2023-05-19 01:30:55', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (3, '角色管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 900, 'Sys_Role', 2, '/Sys_Role', '2017-09-12 16:20:02', '2017-08-28 14:19:13', '2023-06-03 12:18:35', '超級管理員', 0, NULL, 40);
INSERT INTO `Sys_Menu` VALUES (9, '用戶管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導入\",\"value\":\"Import\"},{\"text\":\"導出\",\"value\":\"Export\"},{\"text\":\"上傳\",\"value\":\"Upload\"}]', '', NULL, 1, 1500, 'Sys_User', 2, '/Sys_User', NULL, NULL, '2023-06-03 12:18:22', '超級管理員', 0, 0, 40);
INSERT INTO `Sys_Menu` VALUES (61, '系統設置', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-setting', NULL, 1, 9400, '系統', 0, '/', '2019-07-12 14:04:04', '超級管理員', '2023-05-19 01:33:59', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (62, '菜單設置', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', '', NULL, 1, 150, 'Sys_Menu', 61, '/sysmenu', '2019-07-12 14:04:35', '超級管理員', '2023-05-07 21:04:18', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (63, '數據字典', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 100, 'Sys_Dictionary', 61, '/Sys_Dictionary', '2019-07-12 14:05:58', '超級管理員', '2023-05-07 21:04:22', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (64, '代碼生成', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-document', NULL, 1, 1500, '代碼在線生成器', 0, '/coding', '2019-07-12 14:07:55', '超級管理員', '2022-04-22 20:02:57', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (65, '代碼生成', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"}]', '', NULL, 1, 10, '/', 64, '/coder', '2019-07-12 14:08:58', '超級管理員', '2022-04-22 20:02:27', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (71, '權限管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"編輯\",\"value\":\"Update\"}]', 'ivu-icon ivu-icon-ios-boat', NULL, 2, 1000, 'Sys_Role1', 2, '/permission', '2019-08-10 10:25:36', '超級管理員', '2023-05-05 22:14:16', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (95, '放此節點下', '', '', NULL, 1, 1, '/', 45, '', '2020-05-05 13:20:31', '超級管理員', '2019-09-20 09:54:26', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (96, '日志管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"導出\",\"value\":\"Export\"}]', 'el-icon-set-up', NULL, 1, 0, '.', 0, '', '2020-11-08 21:55:28', '超級管理員', '2022-04-22 20:03:33', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (97, '日志管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 0, 'Sys_Log', 96, '/Sys_Log', '2020-11-08 21:56:01', '超級管理員', '2020-11-08 21:57:04', '超級管理員', NULL, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (98, '消息推送', '', 'el-icon-chat-line-round', NULL, 0, 1700, '.', 0, '/signalR', '2022-05-04 12:00:00', '超級管理員', '2023-05-07 20:51:09', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (99, '語言設置', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導入\",\"value\":\"Import\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 200, 'Sys_Language', 61, '/Sys_Language', '2023-01-18 12:12:33', '超級管理員', '2023-06-12 00:35:02', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (100, '組織構架', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 2000, 'Sys_Department', 2, '/Sys_Department', '2023-05-04 01:45:46', '超級管理員', '2023-06-03 12:18:28', '超級管理員', 0, NULL, 20);
INSERT INTO `Sys_Menu` VALUES (101, '集團管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"}]', '', NULL, 1, 500, 'Sys_Group', 103, '/Sys_Group', '2023-05-04 02:50:18', '超級管理員', '2023-05-07 20:36:21', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (102, '租戶管理(動態無限分庫)', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"}]', '', NULL, 1, 400, 'Sys_DbService', 103, '/Sys_DbService', '2023-05-04 02:51:02', '超級管理員', '2023-05-19 01:09:08', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (103, '集團租戶', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-office-building', NULL, 1, 9500, '.', 0, '.', '2023-05-07 20:36:00', '超級管理員', '2023-05-19 01:31:02', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (104, '省市區縣', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 1800, 'Sys_Region', 127, '/Sys_Region', '2023-05-07 21:04:44', '超級管理員', '2023-05-19 02:15:07', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (105, '數據分庫', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-news', NULL, 1, 8900, '.', 0, '', '2023-05-07 21:53:53', '超級管理員', '2023-05-19 01:32:59', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (106, '業務庫數據', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導入\",\"value\":\"Import\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 200, 'TestService', 105, '/TestService', '2023-05-07 21:54:15', '超級管理員', '2023-05-19 01:19:12', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (107, '測試庫數據', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導入\",\"value\":\"Import\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 0, 'TestDb', 105, '/TestDb', '2023-05-07 21:54:38', '超級管理員', '2023-05-19 01:19:17', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (108, '表單設計', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"}]', 'el-icon-postcard', NULL, 1, 8600, '.', 0, '.', '2023-05-19 00:34:50', '超級管理員', '2023-05-19 02:04:55', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (109, '表單配置', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"}]', '', NULL, 1, 600, 'FormDesignOptions', 108, '/FormDesignOptions', '2023-05-19 00:35:58', '超級管理員', '2023-05-19 00:36:59', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (110, '表單設計', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', '', NULL, 1, 700, '.', 108, '/formDraggable', '2023-05-19 00:36:51', '超級管理員', '2023-05-19 00:36:29', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (111, '數據采集', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 500, '.', 108, '/formCollectionResultTree', '2023-05-19 00:37:19', '超級管理員', '2023-05-19 00:36:29', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (112, '流程管理', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-mobile', NULL, 1, 8500, '.', 0, '', '2023-05-19 00:39:20', '超級管理員', '2023-05-19 00:39:58', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (113, '流程管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 0, 'Sys_WorkFlow', 112, '/Sys_WorkFlow', '2023-05-19 00:40:19', '超級管理員', '2023-05-19 00:39:34', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (114, '我的審批', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"刪除\",\"value\":\"Delete\"}]', '', NULL, 1, 400, 'Sys_WorkFlowTable', 112, '/Sys_WorkFlowTable', '2023-05-19 00:40:44', '超級管理員', '2023-05-19 00:39:34', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (115, '定時任務', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-alarm-clock', NULL, 1, 6000, '.', 0, '', '2023-05-19 00:41:51', '超級管理員', '2023-05-19 00:50:29', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (116, '任務配置', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"}]', '', NULL, 1, 600, 'Sys_QuartzOptions', 115, '/Sys_QuartzOptions', '2023-05-19 00:43:12', '超級管理員', '2023-05-19 00:43:34', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (117, '執行記錄', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"刪除\",\"value\":\"Delete\"}]', '', NULL, 1, 500, 'Sys_QuartzLog', 115, '/Sys_QuartzLog', '2023-05-19 00:43:26', '超級管理員', '2023-05-19 00:43:37', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (118, '一對多生成', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-date', NULL, 1, 8000, '.', 0, '', '2023-05-19 00:51:19', '超級管理員', '2023-05-19 00:39:57', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (119, '主從一對多', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 600, '.', 118, '', '2023-05-19 00:51:54', '超級管理員', '2023-05-19 00:39:57', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (120, '新窗口編輯', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-monitor', NULL, 1, 8800, '.', 0, '', '2023-05-19 00:54:44', '超級管理員', '2023-06-03 14:27:36', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (121, '新窗口編輯', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"}]', '', NULL, 0, 0, '.', 120, '', '2023-05-19 00:54:59', '超級管理員', '2023-06-03 14:09:26', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (122, '打印設計', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-printer', NULL, 1, 7000, '.', 0, '', '2023-05-19 01:08:03', '超級管理員', '2023-05-19 00:39:57', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (123, '打印設計', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', '', NULL, 1, 600, '.', 122, '', '2023-05-19 01:08:15', '超級管理員', '2023-05-19 00:39:57', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (124, '數據庫腳本管理', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', '', NULL, 1, 300, 'db', 103, '/db', '2023-05-19 01:10:02', '超級管理員', '2023-05-19 01:10:20', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (125, '消息推送', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-chat-dot-round', NULL, 1, 6500, '.', 0, '', '2023-05-19 01:15:23', '超級管理員', '2023-05-19 01:15:23', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (126, '消息推送', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"}]', '', NULL, 1, 0, '.', 125, '/message', '2023-05-19 01:15:38', '超級管理員', '2023-05-19 01:15:23', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (127, '演示菜單', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', 'el-icon-data-analysis', NULL, 1, 8700, '.', 0, '', '2023-05-19 02:05:52', '超級管理員', '2023-05-19 00:35:31', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (128, '商品分類', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導入\",\"value\":\"Import\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 1000, 'Demo_Catalog', 127, '/Demo_Catalog', '2023-05-19 02:06:40', '超級管理員', '2023-05-19 02:07:54', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (129, '商品信息', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 900, 'Demo_Goods2', 120, '/Demo_Goods', '2023-05-19 02:08:20', '超級管理員', '2023-06-03 14:09:17', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (130, '樹形結構', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 800, 'Demo_Goods', 127, '/Demo_GoodsTree', '2023-05-19 02:09:50', '超級管理員', '2023-05-19 02:09:56', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (131, '訂單管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"},{\"text\":\"審核\",\"value\":\"Audit\"}]', '', NULL, 1, 1600, 'Demo_Order', 127, '/Demo_Order', '2023-05-19 02:10:49', '超級管理員', '2023-05-19 15:35:57', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (132, '新訂單', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 0, 600, 'Demo_Order_New', 127, '/Demo_Order_New', '2023-05-19 02:11:24', '超級管理員', '2023-05-19 02:13:23', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (133, '產品管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"}]', '', NULL, 1, 400, 'Demo_Product', 127, '/Demo_Product', '2023-05-19 02:12:12', '超級管理員', '2023-05-19 02:09:55', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (134, '產品顏色', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"}]', '', NULL, 2, 350, 'Demo_ProductColor', 127, '/Demo_ProductColor', '2023-05-19 02:12:30', '超級管理員', '2023-05-19 02:14:35', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (135, '產品尺寸', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 0, 300, 'Demo_ProductSize', 127, '/Demo_ProductSize', '2023-05-19 02:12:48', '超級管理員', '2023-05-19 02:14:37', '超級管理員', 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (136, '客戶管理', '[{\"text\":\"查詢\",\"value\":\"Search\"},{\"text\":\"新建\",\"value\":\"Add\"},{\"text\":\"刪除\",\"value\":\"Delete\"},{\"text\":\"編輯\",\"value\":\"Update\"},{\"text\":\"導入\",\"value\":\"Import\"},{\"text\":\"導出\",\"value\":\"Export\"}]', '', NULL, 1, 1500, 'Demo_Customer', 127, '/Demo_Customer', '2023-05-19 02:13:55', '超級管理員', '2023-05-19 02:07:54', NULL, 0, NULL, NULL);
INSERT INTO `Sys_Menu` VALUES (137, '外部鏈接', '[{\"text\":\"查詢\",\"value\":\"Search\"}]', '', NULL, 1, 200, '.', 127, 'https://www.baidu.com/', '2023-06-03 12:19:26', '超級管理員', '2023-06-03 12:23:29', '超級管理員', 0, 1, NULL);

-- ----------------------------
-- Table structure for Sys_Post
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Post`;
CREATE TABLE `Sys_Post`  (
  `PostId` int NOT NULL AUTO_INCREMENT,
  `PostName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DeptCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` int NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`PostId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Post
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Province
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Province`;
CREATE TABLE `Sys_Province`  (
  `ProvinceId` int NOT NULL AUTO_INCREMENT,
  `ProvinceCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ProvinceName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RegionCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ProvinceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Province
-- ----------------------------
INSERT INTO `Sys_Province` VALUES (1, '110000', '北京市', '華北');
INSERT INTO `Sys_Province` VALUES (2, '120000', '天津市', '華北');
INSERT INTO `Sys_Province` VALUES (3, '130000', '河北省', '華北');
INSERT INTO `Sys_Province` VALUES (4, '140000', '山西省', '華北');
INSERT INTO `Sys_Province` VALUES (5, '150000', '內蒙古自治區', '華北');
INSERT INTO `Sys_Province` VALUES (6, '210000', '遼寧省', '東北');
INSERT INTO `Sys_Province` VALUES (7, '220000', '吉林省', '東北');
INSERT INTO `Sys_Province` VALUES (8, '230000', '黑龍江省', '東北');
INSERT INTO `Sys_Province` VALUES (9, '310000', '上海市', '華東');
INSERT INTO `Sys_Province` VALUES (10, '320000', '江蘇省', '華東');
INSERT INTO `Sys_Province` VALUES (11, '330000', '浙江省', '華東');
INSERT INTO `Sys_Province` VALUES (12, '340000', '安徽省', '華東');
INSERT INTO `Sys_Province` VALUES (13, '350000', '福建省', '華東');
INSERT INTO `Sys_Province` VALUES (14, '360000', '江西省', '華東');
INSERT INTO `Sys_Province` VALUES (15, '370000', '山東省', '華東');
INSERT INTO `Sys_Province` VALUES (16, '410000', '河南省', '華中');
INSERT INTO `Sys_Province` VALUES (17, '420000', '湖北省', '華中');
INSERT INTO `Sys_Province` VALUES (18, '430000', '湖南省', '華中');
INSERT INTO `Sys_Province` VALUES (19, '440000', '廣東省', '華南');
INSERT INTO `Sys_Province` VALUES (20, '450000', '廣西壯族自治區', '華南');
INSERT INTO `Sys_Province` VALUES (21, '460000', '海南省', '華南');
INSERT INTO `Sys_Province` VALUES (22, '500000', '重慶市', '西南');
INSERT INTO `Sys_Province` VALUES (23, '510000', '四川省', '西南');
INSERT INTO `Sys_Province` VALUES (24, '520000', '貴州省', '西南');
INSERT INTO `Sys_Province` VALUES (25, '530000', '云南省', '西南');
INSERT INTO `Sys_Province` VALUES (26, '540000', '西藏自治區', '西南');
INSERT INTO `Sys_Province` VALUES (27, '610000', '陜西省', '西北');
INSERT INTO `Sys_Province` VALUES (28, '620000', '甘肅省', '西北');
INSERT INTO `Sys_Province` VALUES (29, '630000', '青海省', '西北');
INSERT INTO `Sys_Province` VALUES (30, '640000', '寧夏回族自治區', '西北');
INSERT INTO `Sys_Province` VALUES (31, '650000', '新疆維吾爾自治區', '西北');
INSERT INTO `Sys_Province` VALUES (32, '710000', '臺灣省', '港澳臺');
INSERT INTO `Sys_Province` VALUES (33, '810000', '香港特別行政區', '港澳臺');
INSERT INTO `Sys_Province` VALUES (34, '820000', '澳門特別行政區', '港澳臺');
INSERT INTO `Sys_Province` VALUES (35, 'thd', '桃花島', '東北');
INSERT INTO `Sys_Province` VALUES (43, '測試1', '測試1', '港澳臺');

-- ----------------------------
-- Table structure for Sys_QuartzLog
-- ----------------------------
DROP TABLE IF EXISTS `Sys_QuartzLog`;
CREATE TABLE `Sys_QuartzLog`  (
  `LogId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TaskName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '任務名稱',
  `ElapsedTime` int NULL DEFAULT NULL COMMENT '耗時(秒)',
  `StratDate` datetime(0) NULL DEFAULT NULL COMMENT '開始時間',
  `EndDate` datetime(0) NULL DEFAULT NULL COMMENT '結束時間',
  `Result` int NULL DEFAULT NULL COMMENT '執行結果',
  `ResponseContent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回內容',
  `ErrorMsg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`LogId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_QuartzLog
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_QuartzOptions
-- ----------------------------
DROP TABLE IF EXISTS `Sys_QuartzOptions`;
CREATE TABLE `Sys_QuartzOptions`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TaskName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任務名稱',
  `GroupName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任務分組',
  `CronExpression` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Corn表達式',
  `Method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '請求方式',
  `ApiUrl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'Url地址',
  `AuthKey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AuthValue` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '描述',
  `LastRunTime` datetime(0) NULL DEFAULT NULL COMMENT '最后執行執行',
  `Status` int NULL DEFAULT NULL COMMENT '運行狀態',
  `PostData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'post參數',
  `TimeOut` int NULL DEFAULT NULL COMMENT '超時時間(秒)',
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL COMMENT '創建時間',
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_QuartzOptions
-- ----------------------------
INSERT INTO `Sys_QuartzOptions` VALUES ('7D223549-C8EE-461D-80A9-E4601EEB5C0A', '1小時執行一次', '測試', '0 0 */1 * * ?', 'get', 'http://localhost:9100/api/Sys_QuartzOptions/test', NULL, NULL, NULL, '2023-06-12 14:00:00', 0, NULL, 180, 1, '超級管理員', '2022-09-07 01:45:04', 1, '超級管理員', '2023-05-19 00:44:53');

-- ----------------------------
-- Table structure for Sys_Region
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Region`;
CREATE TABLE `Sys_Region`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parentId` int NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `mername` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Lng` double NULL DEFAULT NULL,
  `Lat` double NULL DEFAULT NULL,
  `pinyin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Region
-- ----------------------------
INSERT INTO `Sys_Region` VALUES (1, '100000', '中國', 0, 0, '中國', 116.368, 39.9151, 'China');
INSERT INTO `Sys_Region` VALUES (2, '110000', '北京市', 100000, 1, '中國,北京', 116.405, 39.905, 'Beijing');
INSERT INTO `Sys_Region` VALUES (3, '110100', '北京市', 110000, 2, '中國,北京,北京市', 116.405, 39.905, 'Beijing');
INSERT INTO `Sys_Region` VALUES (4, '110101', '東城區', 110100, 3, '中國,北京,北京市,東城區', 116.41, 39.9316, 'Dongcheng');
INSERT INTO `Sys_Region` VALUES (5, '110102', '西城區', 110100, 3, '中國,北京,北京市,西城區', 116.36, 39.9305, 'Xicheng');
INSERT INTO `Sys_Region` VALUES (6, '110105', '朝陽區', 110100, 3, '中國,北京,北京市,朝陽區', 116.485, 39.9484, 'Chaoyang');
INSERT INTO `Sys_Region` VALUES (7, '110106', '豐臺區', 110100, 3, '中國,北京,北京市,豐臺區', 116.286, 39.8585, 'Fengtai');
INSERT INTO `Sys_Region` VALUES (8, '110107', '石景山區', 110100, 3, '中國,北京,北京市,石景山區', 116.223, 39.9056, 'Shijingshan');
INSERT INTO `Sys_Region` VALUES (9, '110108', '海淀區', 110100, 3, '中國,北京,北京市,海淀區', 116.298, 39.9593, 'Haidian');
INSERT INTO `Sys_Region` VALUES (10, '110109', '門頭溝區', 110100, 3, '中國,北京,北京市,門頭溝區', 116.101, 39.9404, 'Mentougou');
INSERT INTO `Sys_Region` VALUES (11, '110111', '房山區', 110100, 3, '中國,北京,北京市,房山區', 116.143, 39.7479, 'Fangshan');
INSERT INTO `Sys_Region` VALUES (12, '110112', '通州區', 110100, 3, '中國,北京,北京市,通州區', 116.657, 39.9097, 'Tongzhou');
INSERT INTO `Sys_Region` VALUES (13, '110113', '順義區', 110100, 3, '中國,北京,北京市,順義區', 116.654, 40.1302, 'Shunyi');
INSERT INTO `Sys_Region` VALUES (14, '110114', '昌平區', 110100, 3, '中國,北京,北京市,昌平區', 116.231, 40.2207, 'Changping');
INSERT INTO `Sys_Region` VALUES (15, '110115', '大興區', 110100, 3, '中國,北京,北京市,大興區', 116.341, 39.7267, 'Daxing');
INSERT INTO `Sys_Region` VALUES (16, '110116', '懷柔區', 110100, 3, '中國,北京,北京市,懷柔區', 116.632, 40.316, 'Huairou');
INSERT INTO `Sys_Region` VALUES (17, '110117', '平谷區', 110100, 3, '中國,北京,北京市,平谷區', 117.121, 40.1406, 'Pinggu');
INSERT INTO `Sys_Region` VALUES (18, '110228', '密云縣', 110100, 3, '中國,北京,北京市,密云縣', 116.843, 40.3762, 'Miyun');
INSERT INTO `Sys_Region` VALUES (19, '110229', '延慶縣', 110100, 3, '中國,北京,北京市,延慶縣', 115.975, 40.4567, 'Yanqing');
INSERT INTO `Sys_Region` VALUES (20, '120000', '天津市', 100000, 1, '中國,天津', 117.19, 39.1256, 'Tianjin');
INSERT INTO `Sys_Region` VALUES (21, '120100', '天津市', 120000, 2, '中國,天津,天津市', 117.19, 39.1256, 'Tianjin');
INSERT INTO `Sys_Region` VALUES (22, '120101', '和平區', 120100, 3, '中國,天津,天津市,和平區', 117.215, 39.1172, 'Heping');
INSERT INTO `Sys_Region` VALUES (23, '120102', '河東區', 120100, 3, '中國,天津,天津市,河東區', 117.226, 39.1232, 'Hedong');
INSERT INTO `Sys_Region` VALUES (24, '120103', '河西區', 120100, 3, '中國,天津,天津市,河西區', 117.223, 39.1096, 'Hexi');
INSERT INTO `Sys_Region` VALUES (25, '120104', '南開區', 120100, 3, '中國,天津,天津市,南開區', 117.151, 39.1382, 'Nankai');
INSERT INTO `Sys_Region` VALUES (26, '120105', '河北區', 120100, 3, '中國,天津,天津市,河北區', 117.197, 39.1482, 'Hebei');
INSERT INTO `Sys_Region` VALUES (27, '120106', '紅橋區', 120100, 3, '中國,天津,天津市,紅橋區', 117.151, 39.1671, 'Hongqiao');
INSERT INTO `Sys_Region` VALUES (28, '120110', '東麗區', 120100, 3, '中國,天津,天津市,東麗區', 117.314, 39.0863, 'Dongli');
INSERT INTO `Sys_Region` VALUES (29, '120111', '西青區', 120100, 3, '中國,天津,天津市,西青區', 117.009, 39.1412, 'Xiqing');
INSERT INTO `Sys_Region` VALUES (30, '120112', '津南區', 120100, 3, '中國,天津,天津市,津南區', 117.385, 38.9914, 'Jinnan');
INSERT INTO `Sys_Region` VALUES (31, '120113', '北辰區', 120100, 3, '中國,天津,天津市,北辰區', 117.132, 39.2213, 'Beichen');
INSERT INTO `Sys_Region` VALUES (32, '120114', '武清區', 120100, 3, '中國,天津,天津市,武清區', 117.044, 39.3842, 'Wuqing');
INSERT INTO `Sys_Region` VALUES (33, '120115', '寶坻區', 120100, 3, '中國,天津,天津市,寶坻區', 117.31, 39.7176, 'Baodi');
INSERT INTO `Sys_Region` VALUES (34, '120116', '濱海新區', 120100, 3, '中國,天津,天津市,濱海新區', 117.702, 39.0267, 'Binhaixinqu');
INSERT INTO `Sys_Region` VALUES (35, '120221', '寧河縣', 120100, 3, '中國,天津,天津市,寧河縣', 117.826, 39.3305, 'Ninghe');
INSERT INTO `Sys_Region` VALUES (36, '120223', '靜海縣', 120100, 3, '中國,天津,天津市,靜海縣', 116.974, 38.9458, 'Jinghai');
INSERT INTO `Sys_Region` VALUES (37, '120225', '薊縣', 120100, 3, '中國,天津,天津市,薊縣', 117.408, 40.0457, 'Jixian');
INSERT INTO `Sys_Region` VALUES (38, '130000', '河北省', 100000, 1, '中國,河北省', 114.502, 38.0455, 'Hebei');
INSERT INTO `Sys_Region` VALUES (39, '130100', '石家莊市', 130000, 2, '中國,河北省,石家莊市', 114.502, 38.0455, 'Shijiazhuang');
INSERT INTO `Sys_Region` VALUES (40, '130102', '長安區', 130100, 3, '中國,河北省,石家莊市,長安區', 114.539, 38.0367, 'Changan');
INSERT INTO `Sys_Region` VALUES (41, '130104', '橋西區', 130100, 3, '中國,河北省,石家莊市,橋西區', 114.47, 38.0322, 'Qiaoxi');
INSERT INTO `Sys_Region` VALUES (42, '130105', '新華區', 130100, 3, '中國,河北省,石家莊市,新華區', 114.463, 38.0509, 'Xinhua');
INSERT INTO `Sys_Region` VALUES (43, '130107', '井陘礦區', 130100, 3, '中國,河北省,石家莊市,井陘礦區', 114.065, 38.0671, 'Jingxingkuangqu');
INSERT INTO `Sys_Region` VALUES (44, '130108', '裕華區', 130100, 3, '中國,河北省,石家莊市,裕華區', 114.531, 38.006, 'Yuhua');
INSERT INTO `Sys_Region` VALUES (45, '130109', '藁城區', 130100, 3, '中國,河北省,石家莊市,藁城區', 114.847, 38.0216, 'Gaocheng');
INSERT INTO `Sys_Region` VALUES (46, '130110', '鹿泉區', 130100, 3, '中國,河北省,石家莊市,鹿泉區', 114.313, 38.0878, 'Luquan');
INSERT INTO `Sys_Region` VALUES (47, '130111', '欒城區', 130100, 3, '中國,河北省,石家莊市,欒城區', 114.648, 37.9002, 'Luancheng');
INSERT INTO `Sys_Region` VALUES (48, '130121', '井陘縣', 130100, 3, '中國,河北省,石家莊市,井陘縣', 114.143, 38.0369, 'Jingxing');
INSERT INTO `Sys_Region` VALUES (49, '130123', '正定縣', 130100, 3, '中國,河北省,石家莊市,正定縣', 114.573, 38.1445, 'Zhengding');
INSERT INTO `Sys_Region` VALUES (50, '130125', '行唐縣', 130100, 3, '中國,河北省,石家莊市,行唐縣', 114.553, 38.4365, 'Xingtang');
INSERT INTO `Sys_Region` VALUES (51, '130126', '靈壽縣', 130100, 3, '中國,河北省,石家莊市,靈壽縣', 114.383, 38.3084, 'Lingshou');
INSERT INTO `Sys_Region` VALUES (52, '130127', '高邑縣', 130100, 3, '中國,河北省,石家莊市,高邑縣', 114.611, 37.6156, 'Gaoyi');
INSERT INTO `Sys_Region` VALUES (53, '130128', '深澤縣', 130100, 3, '中國,河北省,石家莊市,深澤縣', 115.204, 38.1835, 'Shenze');
INSERT INTO `Sys_Region` VALUES (54, '130129', '贊皇縣', 130100, 3, '中國,河北省,石家莊市,贊皇縣', 114.388, 37.6614, 'Zanhuang');
INSERT INTO `Sys_Region` VALUES (55, '130130', '無極縣', 130100, 3, '中國,河北省,石家莊市,無極縣', 114.975, 38.1765, 'Wuji');
INSERT INTO `Sys_Region` VALUES (56, '130131', '平山縣', 130100, 3, '中國,河北省,石家莊市,平山縣', 114.186, 38.2599, 'Pingshan');
INSERT INTO `Sys_Region` VALUES (57, '130132', '元氏縣', 130100, 3, '中國,河北省,石家莊市,元氏縣', 114.525, 37.7667, 'Yuanshi');
INSERT INTO `Sys_Region` VALUES (58, '130133', '趙縣', 130100, 3, '中國,河北省,石家莊市,趙縣', 114.776, 37.7563, 'Zhaoxian');
INSERT INTO `Sys_Region` VALUES (59, '130181', '辛集市', 130100, 3, '中國,河北省,石家莊市,辛集市', 115.206, 37.9408, 'Xinji');
INSERT INTO `Sys_Region` VALUES (60, '130183', '晉州市', 130100, 3, '中國,河北省,石家莊市,晉州市', 115.043, 38.0313, 'Jinzhou');
INSERT INTO `Sys_Region` VALUES (61, '130184', '新樂市', 130100, 3, '中國,河北省,石家莊市,新樂市', 114.69, 38.3442, 'Xinle');
INSERT INTO `Sys_Region` VALUES (62, '130200', '唐山市', 130000, 2, '中國,河北省,唐山市', 118.175, 39.6351, 'Tangshan');
INSERT INTO `Sys_Region` VALUES (63, '130202', '路南區', 130200, 3, '中國,河北省,唐山市,路南區', 118.154, 39.625, 'Lunan');
INSERT INTO `Sys_Region` VALUES (64, '130203', '路北區', 130200, 3, '中國,河北省,唐山市,路北區', 118.201, 39.6244, 'Lubei');
INSERT INTO `Sys_Region` VALUES (65, '130204', '古冶區', 130200, 3, '中國,河北省,唐山市,古冶區', 118.458, 39.7199, 'Guye');
INSERT INTO `Sys_Region` VALUES (66, '130205', '開平區', 130200, 3, '中國,河北省,唐山市,開平區', 118.262, 39.6713, 'Kaiping');
INSERT INTO `Sys_Region` VALUES (67, '130207', '豐南區', 130200, 3, '中國,河北省,唐山市,豐南區', 118.113, 39.5648, 'Fengnan');
INSERT INTO `Sys_Region` VALUES (68, '130208', '豐潤區', 130200, 3, '中國,河北省,唐山市,豐潤區', 118.13, 39.8244, 'Fengrun');
INSERT INTO `Sys_Region` VALUES (69, '130209', '曹妃甸區', 130200, 3, '中國,河北省,唐山市,曹妃甸區', 118.46, 39.2731, 'Caofeidian');
INSERT INTO `Sys_Region` VALUES (70, '130223', '灤縣', 130200, 3, '中國,河北省,唐山市,灤縣', 118.703, 39.7406, 'Luanxian');
INSERT INTO `Sys_Region` VALUES (71, '130224', '灤南縣', 130200, 3, '中國,河北省,唐山市,灤南縣', 118.674, 39.5039, 'Luannan');
INSERT INTO `Sys_Region` VALUES (72, '130225', '樂亭縣', 130200, 3, '中國,河北省,唐山市,樂亭縣', 118.912, 39.4256, 'Laoting');
INSERT INTO `Sys_Region` VALUES (73, '130227', '遷西縣', 130200, 3, '中國,河北省,唐山市,遷西縣', 118.316, 40.1459, 'Qianxi');
INSERT INTO `Sys_Region` VALUES (74, '130229', '玉田縣', 130200, 3, '中國,河北省,唐山市,玉田縣', 117.739, 39.9005, 'Yutian');
INSERT INTO `Sys_Region` VALUES (75, '130281', '遵化市', 130200, 3, '中國,河北省,唐山市,遵化市', 117.964, 40.1874, 'Zunhua');
INSERT INTO `Sys_Region` VALUES (76, '130283', '遷安市', 130200, 3, '中國,河北省,唐山市,遷安市', 118.701, 39.9983, 'Qianan');
INSERT INTO `Sys_Region` VALUES (77, '130300', '秦皇島市', 130000, 2, '中國,河北省,秦皇島市', 119.587, 39.9425, 'Qinhuangdao');
INSERT INTO `Sys_Region` VALUES (78, '130302', '海港區', 130300, 3, '中國,河北省,秦皇島市,海港區', 119.61, 39.9345, 'Haigang');
INSERT INTO `Sys_Region` VALUES (79, '130303', '山海關區', 130300, 3, '中國,河北省,秦皇島市,山海關區', 119.776, 39.9787, 'Shanhaiguan');
INSERT INTO `Sys_Region` VALUES (80, '130304', '北戴河區', 130300, 3, '中國,河北省,秦皇島市,北戴河區', 119.484, 39.8341, 'Beidaihe');
INSERT INTO `Sys_Region` VALUES (81, '130321', '青龍滿族自治縣', 130300, 3, '中國,河北省,秦皇島市,青龍滿族自治縣', 118.952, 40.4074, 'Qinglong');
INSERT INTO `Sys_Region` VALUES (82, '130322', '昌黎縣', 130300, 3, '中國,河北省,秦皇島市,昌黎縣', 119.166, 39.7088, 'Changli');
INSERT INTO `Sys_Region` VALUES (83, '130323', '撫寧縣', 130300, 3, '中國,河北省,秦皇島市,撫寧縣', 119.245, 39.8754, 'Funing');
INSERT INTO `Sys_Region` VALUES (84, '130324', '盧龍縣', 130300, 3, '中國,河北省,秦皇島市,盧龍縣', 118.893, 39.8918, 'Lulong');
INSERT INTO `Sys_Region` VALUES (85, '130400', '邯鄲市', 130000, 2, '中國,河北省,邯鄲市', 114.491, 36.6123, 'Handan');
INSERT INTO `Sys_Region` VALUES (86, '130402', '邯山區', 130400, 3, '中國,河北省,邯鄲市,邯山區', 114.484, 36.6001, 'Hanshan');
INSERT INTO `Sys_Region` VALUES (87, '130403', '叢臺區', 130400, 3, '中國,河北省,邯鄲市,叢臺區', 114.493, 36.6185, 'Congtai');
INSERT INTO `Sys_Region` VALUES (88, '130404', '復興區', 130400, 3, '中國,河北省,邯鄲市,復興區', 114.459, 36.6113, 'Fuxing');
INSERT INTO `Sys_Region` VALUES (89, '130406', '峰峰礦區', 130400, 3, '中國,河北省,邯鄲市,峰峰礦區', 114.211, 36.4194, 'Fengfengkuangqu');
INSERT INTO `Sys_Region` VALUES (90, '130421', '邯鄲縣', 130400, 3, '中國,河北省,邯鄲市,邯鄲縣', 114.531, 36.5938, 'Handan');
INSERT INTO `Sys_Region` VALUES (91, '130423', '臨漳縣', 130400, 3, '中國,河北省,邯鄲市,臨漳縣', 114.619, 36.3346, 'Linzhang');
INSERT INTO `Sys_Region` VALUES (92, '130424', '成安縣', 130400, 3, '中國,河北省,邯鄲市,成安縣', 114.67, 36.4441, 'Chengan');
INSERT INTO `Sys_Region` VALUES (93, '130425', '大名縣', 130400, 3, '中國,河北省,邯鄲市,大名縣', 115.154, 36.2799, 'Daming');
INSERT INTO `Sys_Region` VALUES (94, '130426', '涉縣', 130400, 3, '中國,河北省,邯鄲市,涉縣', 113.692, 36.5807, 'Shexian');
INSERT INTO `Sys_Region` VALUES (95, '130427', '磁縣', 130400, 3, '中國,河北省,邯鄲市,磁縣', 114.374, 36.3739, 'Cixian');
INSERT INTO `Sys_Region` VALUES (96, '130428', '肥鄉縣', 130400, 3, '中國,河北省,邯鄲市,肥鄉縣', 114.8, 36.5481, 'Feixiang');
INSERT INTO `Sys_Region` VALUES (97, '130429', '永年縣', 130400, 3, '中國,河北省,邯鄲市,永年縣', 114.489, 36.7836, 'Yongnian');
INSERT INTO `Sys_Region` VALUES (98, '130430', '邱縣', 130400, 3, '中國,河北省,邯鄲市,邱縣', 115.174, 36.8208, 'Qiuxian');
INSERT INTO `Sys_Region` VALUES (99, '130431', '雞澤縣', 130400, 3, '中國,河北省,邯鄲市,雞澤縣', 114.874, 36.9237, 'Jize');
INSERT INTO `Sys_Region` VALUES (100, '130432', '廣平縣', 130400, 3, '中國,河北省,邯鄲市,廣平縣', 114.947, 36.4805, 'Guangping');
INSERT INTO `Sys_Region` VALUES (101, '130433', '館陶縣', 130400, 3, '中國,河北省,邯鄲市,館陶縣', 115.299, 36.5372, 'Guantao');
INSERT INTO `Sys_Region` VALUES (102, '130434', '魏縣', 130400, 3, '中國,河北省,邯鄲市,魏縣', 114.935, 36.3617, 'Weixian');
INSERT INTO `Sys_Region` VALUES (103, '130435', '曲周縣', 130400, 3, '中國,河北省,邯鄲市,曲周縣', 114.952, 36.7767, 'Quzhou');
INSERT INTO `Sys_Region` VALUES (104, '130481', '武安市', 130400, 3, '中國,河北省,邯鄲市,武安市', 114.202, 36.6928, 'Wuan');
INSERT INTO `Sys_Region` VALUES (105, '130500', '邢臺市', 130000, 2, '中國,河北省,邢臺市', 114.509, 37.0682, 'Xingtai');
INSERT INTO `Sys_Region` VALUES (106, '130502', '橋東區', 130500, 3, '中國,河北省,邢臺市,橋東區', 114.507, 37.068, 'Qiaodong');
INSERT INTO `Sys_Region` VALUES (107, '130503', '橋西區', 130500, 3, '中國,河北省,邢臺市,橋西區', 114.468, 37.0598, 'Qiaoxi');
INSERT INTO `Sys_Region` VALUES (108, '130521', '邢臺縣', 130500, 3, '中國,河北省,邢臺市,邢臺縣', 114.566, 37.0456, 'Xingtai');
INSERT INTO `Sys_Region` VALUES (109, '130522', '臨城縣', 130500, 3, '中國,河北省,邢臺市,臨城縣', 114.504, 37.4398, 'Lincheng');
INSERT INTO `Sys_Region` VALUES (110, '130523', '內丘縣', 130500, 3, '中國,河北省,邢臺市,內丘縣', 114.512, 37.2867, 'Neiqiu');
INSERT INTO `Sys_Region` VALUES (111, '130524', '柏鄉縣', 130500, 3, '中國,河北省,邢臺市,柏鄉縣', 114.693, 37.4824, 'Baixiang');
INSERT INTO `Sys_Region` VALUES (112, '130525', '隆堯縣', 130500, 3, '中國,河北省,邢臺市,隆堯縣', 114.776, 37.3535, 'Longyao');
INSERT INTO `Sys_Region` VALUES (113, '130526', '任縣', 130500, 3, '中國,河北省,邢臺市,任縣', 114.684, 37.1258, 'Renxian');
INSERT INTO `Sys_Region` VALUES (114, '130527', '南和縣', 130500, 3, '中國,河北省,邢臺市,南和縣', 114.684, 37.0049, 'Nanhe');
INSERT INTO `Sys_Region` VALUES (115, '130528', '寧晉縣', 130500, 3, '中國,河北省,邢臺市,寧晉縣', 114.921, 37.617, 'Ningjin');
INSERT INTO `Sys_Region` VALUES (116, '130529', '巨鹿縣', 130500, 3, '中國,河北省,邢臺市,巨鹿縣', 115.035, 37.218, 'Julu');
INSERT INTO `Sys_Region` VALUES (117, '130530', '新河縣', 130500, 3, '中國,河北省,邢臺市,新河縣', 115.25, 37.5272, 'Xinhe');
INSERT INTO `Sys_Region` VALUES (118, '130531', '廣宗縣', 130500, 3, '中國,河北省,邢臺市,廣宗縣', 115.143, 37.0746, 'Guangzong');
INSERT INTO `Sys_Region` VALUES (119, '130532', '平鄉縣', 130500, 3, '中國,河北省,邢臺市,平鄉縣', 115.03, 37.0632, 'Pingxiang');
INSERT INTO `Sys_Region` VALUES (120, '130533', '威縣', 130500, 3, '中國,河北省,邢臺市,威縣', 115.264, 36.9768, 'Weixian');
INSERT INTO `Sys_Region` VALUES (121, '130534', '清河縣', 130500, 3, '中國,河北省,邢臺市,清河縣', 115.665, 37.0712, 'Qinghe');
INSERT INTO `Sys_Region` VALUES (122, '130535', '臨西縣', 130500, 3, '中國,河北省,邢臺市,臨西縣', 115.501, 36.8708, 'Linxi');
INSERT INTO `Sys_Region` VALUES (123, '130581', '南宮市', 130500, 3, '中國,河北省,邢臺市,南宮市', 115.391, 37.358, 'Nangong');
INSERT INTO `Sys_Region` VALUES (124, '130582', '沙河市', 130500, 3, '中國,河北省,邢臺市,沙河市', 114.498, 36.8577, 'Shahe');
INSERT INTO `Sys_Region` VALUES (125, '130600', '保定市', 130000, 2, '中國,河北省,保定市', 115.482, 38.8677, 'Baoding');
INSERT INTO `Sys_Region` VALUES (126, '130602', '新市區', 130600, 3, '中國,河北省,保定市,新市區', 115.459, 38.8775, 'Xinshi');
INSERT INTO `Sys_Region` VALUES (127, '130603', '北市區', 130600, 3, '中國,河北省,保定市,北市區', 115.497, 38.8832, 'Beishi');
INSERT INTO `Sys_Region` VALUES (128, '130604', '南市區', 130600, 3, '中國,河北省,保定市,南市區', 115.529, 38.8545, 'Nanshi');
INSERT INTO `Sys_Region` VALUES (129, '130621', '滿城縣', 130600, 3, '中國,河北省,保定市,滿城縣', 115.323, 38.9497, 'Mancheng');
INSERT INTO `Sys_Region` VALUES (130, '130622', '清苑縣', 130600, 3, '中國,河北省,保定市,清苑縣', 115.493, 38.7671, 'Qingyuan');
INSERT INTO `Sys_Region` VALUES (131, '130623', '淶水縣', 130600, 3, '中國,河北省,保定市,淶水縣', 115.715, 39.394, 'Laishui');
INSERT INTO `Sys_Region` VALUES (132, '130624', '阜平縣', 130600, 3, '中國,河北省,保定市,阜平縣', 114.197, 38.8476, 'Fuping');
INSERT INTO `Sys_Region` VALUES (133, '130625', '徐水縣', 130600, 3, '中國,河北省,保定市,徐水縣', 115.658, 39.021, 'Xushui');
INSERT INTO `Sys_Region` VALUES (134, '130626', '定興縣', 130600, 3, '中國,河北省,保定市,定興縣', 115.808, 39.2631, 'Dingxing');
INSERT INTO `Sys_Region` VALUES (135, '130627', '唐縣', 130600, 3, '中國,河北省,保定市,唐縣', 114.985, 38.7451, 'Tangxian');
INSERT INTO `Sys_Region` VALUES (136, '130628', '高陽縣', 130600, 3, '中國,河北省,保定市,高陽縣', 115.779, 38.7, 'Gaoyang');
INSERT INTO `Sys_Region` VALUES (137, '130629', '容城縣', 130600, 3, '中國,河北省,保定市,容城縣', 115.872, 39.0535, 'Rongcheng');
INSERT INTO `Sys_Region` VALUES (138, '130630', '淶源縣', 130600, 3, '中國,河北省,保定市,淶源縣', 114.691, 39.3539, 'Laiyuan');
INSERT INTO `Sys_Region` VALUES (139, '130631', '望都縣', 130600, 3, '中國,河北省,保定市,望都縣', 115.157, 38.71, 'Wangdu');
INSERT INTO `Sys_Region` VALUES (140, '130632', '安新縣', 130600, 3, '中國,河北省,保定市,安新縣', 115.936, 38.9353, 'Anxin');
INSERT INTO `Sys_Region` VALUES (141, '130633', '易縣', 130600, 3, '中國,河北省,保定市,易縣', 115.498, 39.3489, 'Yixian');
INSERT INTO `Sys_Region` VALUES (142, '130634', '曲陽縣', 130600, 3, '中國,河北省,保定市,曲陽縣', 114.701, 38.6215, 'Quyang');
INSERT INTO `Sys_Region` VALUES (143, '130635', '蠡縣', 130600, 3, '中國,河北省,保定市,蠡縣', 115.577, 38.4897, 'Lixian');
INSERT INTO `Sys_Region` VALUES (144, '130636', '順平縣', 130600, 3, '中國,河北省,保定市,順平縣', 115.135, 38.8385, 'Shunping');
INSERT INTO `Sys_Region` VALUES (145, '130637', '博野縣', 130600, 3, '中國,河北省,保定市,博野縣', 115.47, 38.4564, 'Boye');
INSERT INTO `Sys_Region` VALUES (146, '130638', '雄縣', 130600, 3, '中國,河北省,保定市,雄縣', 116.109, 38.9944, 'Xiongxian');
INSERT INTO `Sys_Region` VALUES (147, '130681', '涿州市', 130600, 3, '中國,河北省,保定市,涿州市', 115.981, 39.4862, 'Zhuozhou');
INSERT INTO `Sys_Region` VALUES (148, '130682', '定州市', 130600, 3, '中國,河北省,保定市,定州市', 114.99, 38.5162, 'Dingzhou');
INSERT INTO `Sys_Region` VALUES (149, '130683', '安國市', 130600, 3, '中國,河北省,保定市,安國市', 115.323, 38.4139, 'Anguo');
INSERT INTO `Sys_Region` VALUES (150, '130684', '高碑店市', 130600, 3, '中國,河北省,保定市,高碑店市', 115.874, 39.3265, 'Gaobeidian');
INSERT INTO `Sys_Region` VALUES (151, '130700', '張家口市', 130000, 2, '中國,河北省,張家口市', 114.884, 40.8119, 'Zhangjiakou');
INSERT INTO `Sys_Region` VALUES (152, '130702', '橋東區', 130700, 3, '中國,河北省,張家口市,橋東區', 114.894, 40.7884, 'Qiaodong');
INSERT INTO `Sys_Region` VALUES (153, '130703', '橋西區', 130700, 3, '中國,河北省,張家口市,橋西區', 114.87, 40.8195, 'Qiaoxi');
INSERT INTO `Sys_Region` VALUES (154, '130705', '宣化區', 130700, 3, '中國,河北省,張家口市,宣化區', 115.065, 40.6096, 'Xuanhua');
INSERT INTO `Sys_Region` VALUES (155, '130706', '下花園區', 130700, 3, '中國,河北省,張家口市,下花園區', 115.287, 40.5024, 'Xiahuayuan');
INSERT INTO `Sys_Region` VALUES (156, '130721', '宣化縣', 130700, 3, '中國,河北省,張家口市,宣化縣', 115.155, 40.5662, 'Xuanhua');
INSERT INTO `Sys_Region` VALUES (157, '130722', '張北縣', 130700, 3, '中國,河北省,張家口市,張北縣', 114.714, 41.1598, 'Zhangbei');
INSERT INTO `Sys_Region` VALUES (158, '130723', '康保縣', 130700, 3, '中國,河北省,張家口市,康保縣', 114.6, 41.8522, 'Kangbao');
INSERT INTO `Sys_Region` VALUES (159, '130724', '沽源縣', 130700, 3, '中國,河北省,張家口市,沽源縣', 115.689, 41.6696, 'Guyuan');
INSERT INTO `Sys_Region` VALUES (160, '130725', '尚義縣', 130700, 3, '中國,河北省,張家口市,尚義縣', 113.971, 41.0778, 'Shangyi');
INSERT INTO `Sys_Region` VALUES (161, '130726', '蔚縣', 130700, 3, '中國,河北省,張家口市,蔚縣', 114.589, 39.8407, 'Yuxian');
INSERT INTO `Sys_Region` VALUES (162, '130727', '陽原縣', 130700, 3, '中國,河北省,張家口市,陽原縣', 114.151, 40.1036, 'Yangyuan');
INSERT INTO `Sys_Region` VALUES (163, '130728', '懷安縣', 130700, 3, '中國,河北省,張家口市,懷安縣', 114.386, 40.6743, 'Huaian');
INSERT INTO `Sys_Region` VALUES (164, '130729', '萬全縣', 130700, 3, '中國,河北省,張家口市,萬全縣', 114.741, 40.7669, 'Wanquan');
INSERT INTO `Sys_Region` VALUES (165, '130730', '懷來縣', 130700, 3, '中國,河北省,張家口市,懷來縣', 115.518, 40.4154, 'Huailai');
INSERT INTO `Sys_Region` VALUES (166, '130731', '涿鹿縣', 130700, 3, '中國,河北省,張家口市,涿鹿縣', 115.224, 40.3764, 'Zhuolu');
INSERT INTO `Sys_Region` VALUES (167, '130732', '赤城縣', 130700, 3, '中國,河北省,張家口市,赤城縣', 115.832, 40.9144, 'Chicheng');
INSERT INTO `Sys_Region` VALUES (168, '130733', '崇禮縣', 130700, 3, '中國,河北省,張家口市,崇禮縣', 115.28, 40.9752, 'Chongli');
INSERT INTO `Sys_Region` VALUES (169, '130800', '承德市', 130000, 2, '中國,河北省,承德市', 117.939, 40.9762, 'Chengde');
INSERT INTO `Sys_Region` VALUES (170, '130802', '雙橋區', 130800, 3, '中國,河北省,承德市,雙橋區', 117.943, 40.9747, 'Shuangqiao');
INSERT INTO `Sys_Region` VALUES (171, '130803', '雙灤區', 130800, 3, '中國,河北省,承德市,雙灤區', 117.745, 40.9538, 'Shuangluan');
INSERT INTO `Sys_Region` VALUES (172, '130804', '鷹手營子礦區', 130800, 3, '中國,河北省,承德市,鷹手營子礦區', 117.66, 40.5474, 'Yingshouyingzikuangqu');
INSERT INTO `Sys_Region` VALUES (173, '130821', '承德縣', 130800, 3, '中國,河北省,承德市,承德縣', 118.176, 40.7699, 'Chengde');
INSERT INTO `Sys_Region` VALUES (174, '130822', '興隆縣', 130800, 3, '中國,河北省,承德市,興隆縣', 117.501, 40.4171, 'Xinglong');
INSERT INTO `Sys_Region` VALUES (175, '130823', '平泉縣', 130800, 3, '中國,河北省,承德市,平泉縣', 118.702, 41.0184, 'Pingquan');
INSERT INTO `Sys_Region` VALUES (176, '130824', '灤平縣', 130800, 3, '中國,河北省,承德市,灤平縣', 117.333, 40.9415, 'Luanping');
INSERT INTO `Sys_Region` VALUES (177, '130825', '隆化縣', 130800, 3, '中國,河北省,承德市,隆化縣', 117.73, 41.3141, 'Longhua');
INSERT INTO `Sys_Region` VALUES (178, '130826', '豐寧滿族自治縣', 130800, 3, '中國,河北省,承德市,豐寧滿族自治縣', 116.649, 41.2048, 'Fengning');
INSERT INTO `Sys_Region` VALUES (179, '130827', '寬城滿族自治縣', 130800, 3, '中國,河北省,承德市,寬城滿族自治縣', 118.492, 40.6083, 'Kuancheng');
INSERT INTO `Sys_Region` VALUES (180, '130828', '圍場滿族蒙古族自治縣', 130800, 3, '中國,河北省,承德市,圍場滿族蒙古族自治縣', 117.76, 41.9437, 'Weichang');
INSERT INTO `Sys_Region` VALUES (181, '130900', '滄州市', 130000, 2, '中國,河北省,滄州市', 116.857, 38.3106, 'Cangzhou');
INSERT INTO `Sys_Region` VALUES (182, '130902', '新華區', 130900, 3, '中國,河北省,滄州市,新華區', 116.866, 38.3144, 'Xinhua');
INSERT INTO `Sys_Region` VALUES (183, '130903', '運河區', 130900, 3, '中國,河北省,滄州市,運河區', 116.857, 38.3135, 'Yunhe');
INSERT INTO `Sys_Region` VALUES (184, '130921', '滄縣', 130900, 3, '中國,河北省,滄州市,滄縣', 116.878, 38.2936, 'Cangxian');
INSERT INTO `Sys_Region` VALUES (185, '130922', '青縣', 130900, 3, '中國,河北省,滄州市,青縣', 116.803, 38.5835, 'Qingxian');
INSERT INTO `Sys_Region` VALUES (186, '130923', '東光縣', 130900, 3, '中國,河北省,滄州市,東光縣', 116.537, 37.8857, 'Dongguang');
INSERT INTO `Sys_Region` VALUES (187, '130924', '海興縣', 130900, 3, '中國,河北省,滄州市,海興縣', 117.498, 38.1396, 'Haixing');
INSERT INTO `Sys_Region` VALUES (188, '130925', '鹽山縣', 130900, 3, '中國,河北省,滄州市,鹽山縣', 117.231, 38.0565, 'Yanshan');
INSERT INTO `Sys_Region` VALUES (189, '130926', '肅寧縣', 130900, 3, '中國,河北省,滄州市,肅寧縣', 115.83, 38.4227, 'Suning');
INSERT INTO `Sys_Region` VALUES (190, '130927', '南皮縣', 130900, 3, '中國,河北省,滄州市,南皮縣', 116.702, 38.0411, 'Nanpi');
INSERT INTO `Sys_Region` VALUES (191, '130928', '吳橋縣', 130900, 3, '中國,河北省,滄州市,吳橋縣', 116.385, 37.6255, 'Wuqiao');
INSERT INTO `Sys_Region` VALUES (192, '130929', '獻縣', 130900, 3, '中國,河北省,滄州市,獻縣', 116.127, 38.1923, 'Xianxian');
INSERT INTO `Sys_Region` VALUES (193, '130930', '孟村回族自治縣', 130900, 3, '中國,河北省,滄州市,孟村回族自治縣', 117.104, 38.0534, 'Mengcun');
INSERT INTO `Sys_Region` VALUES (194, '130981', '泊頭市', 130900, 3, '中國,河北省,滄州市,泊頭市', 116.578, 38.0836, 'Botou');
INSERT INTO `Sys_Region` VALUES (195, '130982', '任丘市', 130900, 3, '中國,河北省,滄州市,任丘市', 116.103, 38.7112, 'Renqiu');
INSERT INTO `Sys_Region` VALUES (196, '130983', '黃驊市', 130900, 3, '中國,河北省,滄州市,黃驊市', 117.339, 38.3706, 'Huanghua');
INSERT INTO `Sys_Region` VALUES (197, '130984', '河間市', 130900, 3, '中國,河北省,滄州市,河間市', 116.099, 38.4455, 'Hejian');
INSERT INTO `Sys_Region` VALUES (198, '131000', '廊坊市', 130000, 2, '中國,河北省,廊坊市', 116.714, 39.5292, 'Langfang');
INSERT INTO `Sys_Region` VALUES (199, '131002', '安次區', 131000, 3, '中國,河北省,廊坊市,安次區', 116.703, 39.5206, 'Anci');
INSERT INTO `Sys_Region` VALUES (200, '131003', '廣陽區', 131000, 3, '中國,河北省,廊坊市,廣陽區', 116.711, 39.5228, 'Guangyang');
INSERT INTO `Sys_Region` VALUES (201, '131022', '固安縣', 131000, 3, '中國,河北省,廊坊市,固安縣', 116.299, 39.4383, 'Guan');
INSERT INTO `Sys_Region` VALUES (202, '131023', '永清縣', 131000, 3, '中國,河北省,廊坊市,永清縣', 116.501, 39.3207, 'Yongqing');
INSERT INTO `Sys_Region` VALUES (203, '131024', '香河縣', 131000, 3, '中國,河北省,廊坊市,香河縣', 117.006, 39.7613, 'Xianghe');
INSERT INTO `Sys_Region` VALUES (204, '131025', '大城縣', 131000, 3, '中國,河北省,廊坊市,大城縣', 116.654, 38.7053, 'Daicheng');
INSERT INTO `Sys_Region` VALUES (205, '131026', '文安縣', 131000, 3, '中國,河北省,廊坊市,文安縣', 116.458, 38.8732, 'Wenan');
INSERT INTO `Sys_Region` VALUES (206, '131028', '大廠回族自治縣', 131000, 3, '中國,河北省,廊坊市,大廠回族自治縣', 116.989, 39.8865, 'Dachang');
INSERT INTO `Sys_Region` VALUES (207, '131081', '霸州市', 131000, 3, '中國,河北省,廊坊市,霸州市', 116.392, 39.1257, 'Bazhou');
INSERT INTO `Sys_Region` VALUES (208, '131082', '三河市', 131000, 3, '中國,河北省,廊坊市,三河市', 117.072, 39.9836, 'Sanhe');
INSERT INTO `Sys_Region` VALUES (209, '131100', '衡水市', 130000, 2, '中國,河北省,衡水市', 115.666, 37.7351, 'Hengshui');
INSERT INTO `Sys_Region` VALUES (210, '131102', '桃城區', 131100, 3, '中國,河北省,衡水市,桃城區', 115.675, 37.735, 'Taocheng');
INSERT INTO `Sys_Region` VALUES (211, '131121', '棗強縣', 131100, 3, '中國,河北省,衡水市,棗強縣', 115.726, 37.5103, 'Zaoqiang');
INSERT INTO `Sys_Region` VALUES (212, '131122', '武邑縣', 131100, 3, '中國,河北省,衡水市,武邑縣', 115.887, 37.8018, 'Wuyi');
INSERT INTO `Sys_Region` VALUES (213, '131123', '武強縣', 131100, 3, '中國,河北省,衡水市,武強縣', 115.982, 38.0414, 'Wuqiang');
INSERT INTO `Sys_Region` VALUES (214, '131124', '饒陽縣', 131100, 3, '中國,河北省,衡水市,饒陽縣', 115.726, 38.2353, 'Raoyang');
INSERT INTO `Sys_Region` VALUES (215, '131125', '安平縣', 131100, 3, '中國,河北省,衡水市,安平縣', 115.519, 38.2339, 'Anping');
INSERT INTO `Sys_Region` VALUES (216, '131126', '故城縣', 131100, 3, '中國,河北省,衡水市,故城縣', 115.971, 37.3477, 'Gucheng');
INSERT INTO `Sys_Region` VALUES (217, '131127', '景縣', 131100, 3, '中國,河北省,衡水市,景縣', 116.269, 37.6926, 'Jingxian');
INSERT INTO `Sys_Region` VALUES (218, '131128', '阜城縣', 131100, 3, '中國,河北省,衡水市,阜城縣', 116.144, 37.8688, 'Fucheng');
INSERT INTO `Sys_Region` VALUES (219, '131181', '冀州市', 131100, 3, '中國,河北省,衡水市,冀州市', 115.579, 37.5508, 'Jizhou');
INSERT INTO `Sys_Region` VALUES (220, '131182', '深州市', 131100, 3, '中國,河北省,衡水市,深州市', 115.56, 38.0011, 'Shenzhou');
INSERT INTO `Sys_Region` VALUES (221, '140000', '山西省', 100000, 1, '中國,山西省', 112.549, 37.857, 'Shanxi');
INSERT INTO `Sys_Region` VALUES (222, '140100', '太原市', 140000, 2, '中國,山西省,太原市', 112.549, 37.857, 'Taiyuan');
INSERT INTO `Sys_Region` VALUES (223, '140105', '小店區', 140100, 3, '中國,山西省,太原市,小店區', 112.569, 37.7356, 'Xiaodian');
INSERT INTO `Sys_Region` VALUES (224, '140106', '迎澤區', 140100, 3, '中國,山西省,太原市,迎澤區', 112.563, 37.8633, 'Yingze');
INSERT INTO `Sys_Region` VALUES (225, '140107', '杏花嶺區', 140100, 3, '中國,山西省,太原市,杏花嶺區', 112.562, 37.8843, 'Xinghualing');
INSERT INTO `Sys_Region` VALUES (226, '140108', '尖草坪區', 140100, 3, '中國,山西省,太原市,尖草坪區', 112.487, 37.9419, 'Jiancaoping');
INSERT INTO `Sys_Region` VALUES (227, '140109', '萬柏林區', 140100, 3, '中國,山西省,太原市,萬柏林區', 112.516, 37.8592, 'Wanbailin');
INSERT INTO `Sys_Region` VALUES (228, '140110', '晉源區', 140100, 3, '中國,山西省,太原市,晉源區', 112.48, 37.7248, 'Jinyuan');
INSERT INTO `Sys_Region` VALUES (229, '140121', '清徐縣', 140100, 3, '中國,山西省,太原市,清徐縣', 112.359, 37.6076, 'Qingxu');
INSERT INTO `Sys_Region` VALUES (230, '140122', '陽曲縣', 140100, 3, '中國,山西省,太原市,陽曲縣', 112.679, 38.0599, 'Yangqu');
INSERT INTO `Sys_Region` VALUES (231, '140123', '婁煩縣', 140100, 3, '中國,山西省,太原市,婁煩縣', 111.795, 38.0669, 'Loufan');
INSERT INTO `Sys_Region` VALUES (232, '140181', '古交市', 140100, 3, '中國,山西省,太原市,古交市', 112.169, 37.9098, 'Gujiao');
INSERT INTO `Sys_Region` VALUES (233, '140200', '大同市', 140000, 2, '中國,山西省,大同市', 113.295, 40.0903, 'Datong');
INSERT INTO `Sys_Region` VALUES (234, '140202', '城區', 140200, 3, '中國,山西省,大同市,城區', 113.298, 40.0757, 'Chengqu');
INSERT INTO `Sys_Region` VALUES (235, '140203', '礦區', 140200, 3, '中國,山西省,大同市,礦區', 113.177, 40.0368, 'Kuangqu');
INSERT INTO `Sys_Region` VALUES (236, '140211', '南郊區', 140200, 3, '中國,山西省,大同市,南郊區', 113.149, 40.0054, 'Nanjiao');
INSERT INTO `Sys_Region` VALUES (237, '140212', '新榮區', 140200, 3, '中國,山西省,大同市,新榮區', 113.135, 40.2562, 'Xinrong');
INSERT INTO `Sys_Region` VALUES (238, '140221', '陽高縣', 140200, 3, '中國,山西省,大同市,陽高縣', 113.75, 40.3626, 'Yanggao');
INSERT INTO `Sys_Region` VALUES (239, '140222', '天鎮縣', 140200, 3, '中國,山西省,大同市,天鎮縣', 114.093, 40.423, 'Tianzhen');
INSERT INTO `Sys_Region` VALUES (240, '140223', '廣靈縣', 140200, 3, '中國,山西省,大同市,廣靈縣', 114.282, 39.7608, 'Guangling');
INSERT INTO `Sys_Region` VALUES (241, '140224', '靈丘縣', 140200, 3, '中國,山西省,大同市,靈丘縣', 114.237, 39.4404, 'Lingqiu');
INSERT INTO `Sys_Region` VALUES (242, '140225', '渾源縣', 140200, 3, '中國,山西省,大同市,渾源縣', 113.696, 39.6996, 'Hunyuan');
INSERT INTO `Sys_Region` VALUES (243, '140226', '左云縣', 140200, 3, '中國,山西省,大同市,左云縣', 112.703, 40.0134, 'Zuoyun');
INSERT INTO `Sys_Region` VALUES (244, '140227', '大同縣', 140200, 3, '中國,山西省,大同市,大同縣', 113.612, 40.0401, 'Datong');
INSERT INTO `Sys_Region` VALUES (245, '140300', '陽泉市', 140000, 2, '中國,山西省,陽泉市', 113.583, 37.8612, 'Yangquan');
INSERT INTO `Sys_Region` VALUES (246, '140302', '城區', 140300, 3, '中國,山西省,陽泉市,城區', 113.601, 37.8474, 'Chengqu');
INSERT INTO `Sys_Region` VALUES (247, '140303', '礦區', 140300, 3, '中國,山西省,陽泉市,礦區', 113.557, 37.8689, 'Kuangqu');
INSERT INTO `Sys_Region` VALUES (248, '140311', '郊區', 140300, 3, '中國,山西省,陽泉市,郊區', 113.585, 37.9414, 'Jiaoqu');
INSERT INTO `Sys_Region` VALUES (249, '140321', '平定縣', 140300, 3, '中國,山西省,陽泉市,平定縣', 113.658, 37.786, 'Pingding');
INSERT INTO `Sys_Region` VALUES (250, '140322', '盂縣', 140300, 3, '中國,山西省,陽泉市,盂縣', 113.412, 38.0858, 'Yuxian');
INSERT INTO `Sys_Region` VALUES (251, '140400', '長治市', 140000, 2, '中國,山西省,長治市', 113.114, 36.1911, 'Changzhi');
INSERT INTO `Sys_Region` VALUES (252, '140402', '城區', 140400, 3, '中國,山西省,長治市,城區', 113.123, 36.2035, 'Chengqu');
INSERT INTO `Sys_Region` VALUES (253, '140411', '郊區', 140400, 3, '中國,山西省,長治市,郊區', 113.127, 36.1992, 'Jiaoqu');
INSERT INTO `Sys_Region` VALUES (254, '140421', '長治縣', 140400, 3, '中國,山西省,長治市,長治縣', 113.048, 36.0472, 'Changzhi');
INSERT INTO `Sys_Region` VALUES (255, '140423', '襄垣縣', 140400, 3, '中國,山西省,長治市,襄垣縣', 113.052, 36.5353, 'Xiangyuan');
INSERT INTO `Sys_Region` VALUES (256, '140424', '屯留縣', 140400, 3, '中國,山西省,長治市,屯留縣', 112.892, 36.3158, 'Tunliu');
INSERT INTO `Sys_Region` VALUES (257, '140425', '平順縣', 140400, 3, '中國,山西省,長治市,平順縣', 113.436, 36.2001, 'Pingshun');
INSERT INTO `Sys_Region` VALUES (258, '140426', '黎城縣', 140400, 3, '中國,山西省,長治市,黎城縣', 113.388, 36.503, 'Licheng');
INSERT INTO `Sys_Region` VALUES (259, '140427', '壺關縣', 140400, 3, '中國,山西省,長治市,壺關縣', 113.207, 36.113, 'Huguan');
INSERT INTO `Sys_Region` VALUES (260, '140428', '長子縣', 140400, 3, '中國,山西省,長治市,長子縣', 112.877, 36.1213, 'Zhangzi');
INSERT INTO `Sys_Region` VALUES (261, '140429', '武鄉縣', 140400, 3, '中國,山西省,長治市,武鄉縣', 112.863, 36.8369, 'Wuxiang');
INSERT INTO `Sys_Region` VALUES (262, '140430', '沁縣', 140400, 3, '中國,山西省,長治市,沁縣', 112.699, 36.7563, 'Qinxian');
INSERT INTO `Sys_Region` VALUES (263, '140431', '沁源縣', 140400, 3, '中國,山西省,長治市,沁源縣', 112.338, 36.5001, 'Qinyuan');
INSERT INTO `Sys_Region` VALUES (264, '140481', '潞城市', 140400, 3, '中國,山西省,長治市,潞城市', 113.229, 36.3341, 'Lucheng');
INSERT INTO `Sys_Region` VALUES (265, '140500', '晉城市', 140000, 2, '中國,山西省,晉城市', 112.851, 35.4976, 'Jincheng');
INSERT INTO `Sys_Region` VALUES (266, '140502', '城區', 140500, 3, '中國,山西省,晉城市,城區', 112.853, 35.5018, 'Chengqu');
INSERT INTO `Sys_Region` VALUES (267, '140521', '沁水縣', 140500, 3, '中國,山西省,晉城市,沁水縣', 112.187, 35.691, 'Qinshui');
INSERT INTO `Sys_Region` VALUES (268, '140522', '陽城縣', 140500, 3, '中國,山西省,晉城市,陽城縣', 112.415, 35.4861, 'Yangcheng');
INSERT INTO `Sys_Region` VALUES (269, '140524', '陵川縣', 140500, 3, '中國,山西省,晉城市,陵川縣', 113.281, 35.7753, 'Lingchuan');
INSERT INTO `Sys_Region` VALUES (270, '140525', '澤州縣', 140500, 3, '中國,山西省,晉城市,澤州縣', 112.839, 35.5079, 'Zezhou');
INSERT INTO `Sys_Region` VALUES (271, '140581', '高平市', 140500, 3, '中國,山西省,晉城市,高平市', 112.923, 35.7971, 'Gaoping');
INSERT INTO `Sys_Region` VALUES (272, '140600', '朔州市', 140000, 2, '中國,山西省,朔州市', 112.433, 39.3313, 'Shuozhou');
INSERT INTO `Sys_Region` VALUES (273, '140602', '朔城區', 140600, 3, '中國,山西省,朔州市,朔城區', 112.432, 39.3198, 'Shuocheng');
INSERT INTO `Sys_Region` VALUES (274, '140603', '平魯區', 140600, 3, '中國,山西省,朔州市,平魯區', 112.288, 39.5116, 'Pinglu');
INSERT INTO `Sys_Region` VALUES (275, '140621', '山陰縣', 140600, 3, '中國,山西省,朔州市,山陰縣', 112.817, 39.527, 'Shanyin');
INSERT INTO `Sys_Region` VALUES (276, '140622', '應縣', 140600, 3, '中國,山西省,朔州市,應縣', 113.191, 39.5528, 'Yingxian');
INSERT INTO `Sys_Region` VALUES (277, '140623', '右玉縣', 140600, 3, '中國,山西省,朔州市,右玉縣', 112.469, 39.9901, 'Youyu');
INSERT INTO `Sys_Region` VALUES (278, '140624', '懷仁縣', 140600, 3, '中國,山西省,朔州市,懷仁縣', 113.1, 39.8281, 'Huairen');
INSERT INTO `Sys_Region` VALUES (279, '140700', '晉中市', 140000, 2, '中國,山西省,晉中市', 112.736, 37.6965, 'Jinzhong');
INSERT INTO `Sys_Region` VALUES (280, '140702', '榆次區', 140700, 3, '中國,山西省,晉中市,榆次區', 112.708, 37.6978, 'Yuci');
INSERT INTO `Sys_Region` VALUES (281, '140721', '榆社縣', 140700, 3, '中國,山西省,晉中市,榆社縣', 112.976, 37.0721, 'Yushe');
INSERT INTO `Sys_Region` VALUES (282, '140722', '左權縣', 140700, 3, '中國,山西省,晉中市,左權縣', 113.379, 37.0824, 'Zuoquan');
INSERT INTO `Sys_Region` VALUES (283, '140723', '和順縣', 140700, 3, '中國,山西省,晉中市,和順縣', 113.57, 37.3296, 'Heshun');
INSERT INTO `Sys_Region` VALUES (284, '140724', '昔陽縣', 140700, 3, '中國,山西省,晉中市,昔陽縣', 113.705, 37.6186, 'Xiyang');
INSERT INTO `Sys_Region` VALUES (285, '140725', '壽陽縣', 140700, 3, '中國,山西省,晉中市,壽陽縣', 113.175, 37.889, 'Shouyang');
INSERT INTO `Sys_Region` VALUES (286, '140726', '太谷縣', 140700, 3, '中國,山西省,晉中市,太谷縣', 112.552, 37.4216, 'Taigu');
INSERT INTO `Sys_Region` VALUES (287, '140727', '祁縣', 140700, 3, '中國,山西省,晉中市,祁縣', 112.334, 37.3579, 'Qixian');
INSERT INTO `Sys_Region` VALUES (288, '140728', '平遙縣', 140700, 3, '中國,山西省,晉中市,平遙縣', 112.176, 37.1892, 'Pingyao');
INSERT INTO `Sys_Region` VALUES (289, '140729', '靈石縣', 140700, 3, '中國,山西省,晉中市,靈石縣', 111.777, 36.8481, 'Lingshi');
INSERT INTO `Sys_Region` VALUES (290, '140781', '介休市', 140700, 3, '中國,山西省,晉中市,介休市', 111.918, 37.0277, 'Jiexiu');
INSERT INTO `Sys_Region` VALUES (291, '140800', '運城市', 140000, 2, '中國,山西省,運城市', 111.004, 35.0228, 'Yuncheng');
INSERT INTO `Sys_Region` VALUES (292, '140802', '鹽湖區', 140800, 3, '中國,山西省,運城市,鹽湖區', 110.998, 35.0151, 'Yanhu');
INSERT INTO `Sys_Region` VALUES (293, '140821', '臨猗縣', 140800, 3, '中國,山西省,運城市,臨猗縣', 110.774, 35.1446, 'Linyi');
INSERT INTO `Sys_Region` VALUES (294, '140822', '萬榮縣', 140800, 3, '中國,山西省,運城市,萬榮縣', 110.837, 35.4156, 'Wanrong');
INSERT INTO `Sys_Region` VALUES (295, '140823', '聞喜縣', 140800, 3, '中國,山西省,運城市,聞喜縣', 111.223, 35.3555, 'Wenxi');
INSERT INTO `Sys_Region` VALUES (296, '140824', '稷山縣', 140800, 3, '中國,山西省,運城市,稷山縣', 110.979, 35.5999, 'Jishan');
INSERT INTO `Sys_Region` VALUES (297, '140825', '新絳縣', 140800, 3, '中國,山西省,運城市,新絳縣', 111.225, 35.6157, 'Xinjiang');
INSERT INTO `Sys_Region` VALUES (298, '140826', '絳縣', 140800, 3, '中國,山西省,運城市,絳縣', 111.567, 35.491, 'Jiangxian');
INSERT INTO `Sys_Region` VALUES (299, '140827', '垣曲縣', 140800, 3, '中國,山西省,運城市,垣曲縣', 111.672, 35.2992, 'Yuanqu');
INSERT INTO `Sys_Region` VALUES (300, '140828', '夏縣', 140800, 3, '中國,山西省,運城市,夏縣', 111.22, 35.1412, 'Xiaxian');
INSERT INTO `Sys_Region` VALUES (301, '140829', '平陸縣', 140800, 3, '中國,山西省,運城市,平陸縣', 111.217, 34.8377, 'Pinglu');
INSERT INTO `Sys_Region` VALUES (302, '140830', '芮城縣', 140800, 3, '中國,山西省,運城市,芮城縣', 110.695, 34.6938, 'Ruicheng');
INSERT INTO `Sys_Region` VALUES (303, '140881', '永濟市', 140800, 3, '中國,山西省,運城市,永濟市', 110.445, 34.8656, 'Yongji');
INSERT INTO `Sys_Region` VALUES (304, '140882', '河津市', 140800, 3, '中國,山西省,運城市,河津市', 110.712, 35.5948, 'Hejin');
INSERT INTO `Sys_Region` VALUES (305, '140900', '忻州市', 140000, 2, '中國,山西省,忻州市', 112.734, 38.4177, 'Xinzhou');
INSERT INTO `Sys_Region` VALUES (306, '140902', '忻府區', 140900, 3, '中國,山西省,忻州市,忻府區', 112.746, 38.4041, 'Xinfu');
INSERT INTO `Sys_Region` VALUES (307, '140921', '定襄縣', 140900, 3, '中國,山西省,忻州市,定襄縣', 112.957, 38.4739, 'Dingxiang');
INSERT INTO `Sys_Region` VALUES (308, '140922', '五臺縣', 140900, 3, '中國,山西省,忻州市,五臺縣', 113.253, 38.7277, 'Wutai');
INSERT INTO `Sys_Region` VALUES (309, '140923', '代縣', 140900, 3, '中國,山西省,忻州市,代縣', 112.959, 39.0672, 'Daixian');
INSERT INTO `Sys_Region` VALUES (310, '140924', '繁峙縣', 140900, 3, '中國,山西省,忻州市,繁峙縣', 113.263, 39.1889, 'Fanshi');
INSERT INTO `Sys_Region` VALUES (311, '140925', '寧武縣', 140900, 3, '中國,山西省,忻州市,寧武縣', 112.304, 39.0021, 'Ningwu');
INSERT INTO `Sys_Region` VALUES (312, '140926', '靜樂縣', 140900, 3, '中國,山西省,忻州市,靜樂縣', 111.942, 38.3602, 'Jingle');
INSERT INTO `Sys_Region` VALUES (313, '140927', '神池縣', 140900, 3, '中國,山西省,忻州市,神池縣', 112.205, 39.09, 'Shenchi');
INSERT INTO `Sys_Region` VALUES (314, '140928', '五寨縣', 140900, 3, '中國,山西省,忻州市,五寨縣', 111.849, 38.9076, 'Wuzhai');
INSERT INTO `Sys_Region` VALUES (315, '140929', '岢嵐縣', 140900, 3, '中國,山西省,忻州市,岢嵐縣', 111.574, 38.7045, 'Kelan');
INSERT INTO `Sys_Region` VALUES (316, '140930', '河曲縣', 140900, 3, '中國,山西省,忻州市,河曲縣', 111.138, 39.3844, 'Hequ');
INSERT INTO `Sys_Region` VALUES (317, '140931', '保德縣', 140900, 3, '中國,山西省,忻州市,保德縣', 111.087, 39.0225, 'Baode');
INSERT INTO `Sys_Region` VALUES (318, '140932', '偏關縣', 140900, 3, '中國,山西省,忻州市,偏關縣', 111.509, 39.4361, 'Pianguan');
INSERT INTO `Sys_Region` VALUES (319, '140981', '原平市', 140900, 3, '中國,山西省,忻州市,原平市', 112.706, 38.7318, 'Yuanping');
INSERT INTO `Sys_Region` VALUES (320, '141000', '臨汾市', 140000, 2, '中國,山西省,臨汾市', 111.518, 36.0841, 'Linfen');
INSERT INTO `Sys_Region` VALUES (321, '141002', '堯都區', 141000, 3, '中國,山西省,臨汾市,堯都區', 111.579, 36.083, 'Yaodu');
INSERT INTO `Sys_Region` VALUES (322, '141021', '曲沃縣', 141000, 3, '中國,山西省,臨汾市,曲沃縣', 111.475, 35.6412, 'Quwo');
INSERT INTO `Sys_Region` VALUES (323, '141022', '翼城縣', 141000, 3, '中國,山西省,臨汾市,翼城縣', 111.718, 35.7388, 'Yicheng');
INSERT INTO `Sys_Region` VALUES (324, '141023', '襄汾縣', 141000, 3, '中國,山西省,臨汾市,襄汾縣', 111.442, 35.8771, 'Xiangfen');
INSERT INTO `Sys_Region` VALUES (325, '141024', '洪洞縣', 141000, 3, '中國,山西省,臨汾市,洪洞縣', 111.675, 36.2542, 'Hongtong');
INSERT INTO `Sys_Region` VALUES (326, '141025', '古縣', 141000, 3, '中國,山西省,臨汾市,古縣', 111.92, 36.2669, 'Guxian');
INSERT INTO `Sys_Region` VALUES (327, '141026', '安澤縣', 141000, 3, '中國,山西省,臨汾市,安澤縣', 112.25, 36.148, 'Anze');
INSERT INTO `Sys_Region` VALUES (328, '141027', '浮山縣', 141000, 3, '中國,山西省,臨汾市,浮山縣', 111.847, 35.9685, 'Fushan');
INSERT INTO `Sys_Region` VALUES (329, '141028', '吉縣', 141000, 3, '中國,山西省,臨汾市,吉縣', 110.681, 36.0987, 'Jixian');
INSERT INTO `Sys_Region` VALUES (330, '141029', '鄉寧縣', 141000, 3, '中國,山西省,臨汾市,鄉寧縣', 110.847, 35.9707, 'Xiangning');
INSERT INTO `Sys_Region` VALUES (331, '141030', '大寧縣', 141000, 3, '中國,山西省,臨汾市,大寧縣', 110.752, 36.4662, 'Daning');
INSERT INTO `Sys_Region` VALUES (332, '141031', '隰縣', 141000, 3, '中國,山西省,臨汾市,隰縣', 110.939, 36.6926, 'Xixian');
INSERT INTO `Sys_Region` VALUES (333, '141032', '永和縣', 141000, 3, '中國,山西省,臨汾市,永和縣', 110.632, 36.7584, 'Yonghe');
INSERT INTO `Sys_Region` VALUES (334, '141033', '蒲縣', 141000, 3, '中國,山西省,臨汾市,蒲縣', 111.097, 36.4124, 'Puxian');
INSERT INTO `Sys_Region` VALUES (335, '141034', '汾西縣', 141000, 3, '中國,山西省,臨汾市,汾西縣', 111.568, 36.6506, 'Fenxi');
INSERT INTO `Sys_Region` VALUES (336, '141081', '侯馬市', 141000, 3, '中國,山西省,臨汾市,侯馬市', 111.372, 35.619, 'Houma');
INSERT INTO `Sys_Region` VALUES (337, '141082', '霍州市', 141000, 3, '中國,山西省,臨汾市,霍州市', 111.755, 36.5638, 'Huozhou');
INSERT INTO `Sys_Region` VALUES (338, '141100', '呂梁市', 140000, 2, '中國,山西省,呂梁市', 111.134, 37.5244, 'Lvliang');
INSERT INTO `Sys_Region` VALUES (339, '141102', '離石區', 141100, 3, '中國,山西省,呂梁市,離石區', 111.151, 37.5177, 'Lishi');
INSERT INTO `Sys_Region` VALUES (340, '141121', '文水縣', 141100, 3, '中國,山西省,呂梁市,文水縣', 112.028, 37.4384, 'Wenshui');
INSERT INTO `Sys_Region` VALUES (341, '141122', '交城縣', 141100, 3, '中國,山西省,呂梁市,交城縣', 112.159, 37.5512, 'Jiaocheng');
INSERT INTO `Sys_Region` VALUES (342, '141123', '興縣', 141100, 3, '中國,山西省,呂梁市,興縣', 111.127, 38.4632, 'Xingxian');
INSERT INTO `Sys_Region` VALUES (343, '141124', '臨縣', 141100, 3, '中國,山西省,呂梁市,臨縣', 110.993, 37.9527, 'Linxian');
INSERT INTO `Sys_Region` VALUES (344, '141125', '柳林縣', 141100, 3, '中國,山西省,呂梁市,柳林縣', 110.889, 37.4293, 'Liulin');
INSERT INTO `Sys_Region` VALUES (345, '141126', '石樓縣', 141100, 3, '中國,山西省,呂梁市,石樓縣', 110.835, 36.9973, 'Shilou');
INSERT INTO `Sys_Region` VALUES (346, '141127', '嵐縣', 141100, 3, '中國,山西省,呂梁市,嵐縣', 111.676, 38.2787, 'Lanxian');
INSERT INTO `Sys_Region` VALUES (347, '141128', '方山縣', 141100, 3, '中國,山西省,呂梁市,方山縣', 111.24, 37.8898, 'Fangshan');
INSERT INTO `Sys_Region` VALUES (348, '141129', '中陽縣', 141100, 3, '中國,山西省,呂梁市,中陽縣', 111.179, 37.3572, 'Zhongyang');
INSERT INTO `Sys_Region` VALUES (349, '141130', '交口縣', 141100, 3, '中國,山西省,呂梁市,交口縣', 111.181, 36.9821, 'Jiaokou');
INSERT INTO `Sys_Region` VALUES (350, '141181', '孝義市', 141100, 3, '中國,山西省,呂梁市,孝義市', 111.774, 37.1441, 'Xiaoyi');
INSERT INTO `Sys_Region` VALUES (351, '141182', '汾陽市', 141100, 3, '中國,山西省,呂梁市,汾陽市', 111.788, 37.266, 'Fenyang');
INSERT INTO `Sys_Region` VALUES (352, '150000', '內蒙古自治區', 100000, 1, '中國,內蒙古自治區', 111.671, 40.8183, 'Inner Mongolia');
INSERT INTO `Sys_Region` VALUES (353, '150100', '呼和浩特市', 150000, 2, '中國,內蒙古自治區,呼和浩特市', 111.671, 40.8183, 'Hohhot');
INSERT INTO `Sys_Region` VALUES (354, '150102', '新城區', 150100, 3, '中國,內蒙古自治區,呼和浩特市,新城區', 111.666, 40.8583, 'Xincheng');
INSERT INTO `Sys_Region` VALUES (355, '150103', '回民區', 150100, 3, '中國,內蒙古自治區,呼和浩特市,回民區', 111.624, 40.8083, 'Huimin');
INSERT INTO `Sys_Region` VALUES (356, '150104', '玉泉區', 150100, 3, '中國,內蒙古自治區,呼和浩特市,玉泉區', 111.675, 40.7523, 'Yuquan');
INSERT INTO `Sys_Region` VALUES (357, '150105', '賽罕區', 150100, 3, '中國,內蒙古自治區,呼和浩特市,賽罕區', 111.702, 40.7921, 'Saihan');
INSERT INTO `Sys_Region` VALUES (358, '150121', '土默特左旗', 150100, 3, '中國,內蒙古自治區,呼和浩特市,土默特左旗', 111.149, 40.7223, 'Tumotezuoqi');
INSERT INTO `Sys_Region` VALUES (359, '150122', '托克托縣', 150100, 3, '中國,內蒙古自治區,呼和浩特市,托克托縣', 111.191, 40.2749, 'Tuoketuo');
INSERT INTO `Sys_Region` VALUES (360, '150123', '和林格爾縣', 150100, 3, '中國,內蒙古自治區,呼和浩特市,和林格爾縣', 111.822, 40.3789, 'Helingeer');
INSERT INTO `Sys_Region` VALUES (361, '150124', '清水河縣', 150100, 3, '中國,內蒙古自治區,呼和浩特市,清水河縣', 111.683, 39.9097, 'Qingshuihe');
INSERT INTO `Sys_Region` VALUES (362, '150125', '武川縣', 150100, 3, '中國,內蒙古自治區,呼和浩特市,武川縣', 111.458, 41.0929, 'Wuchuan');
INSERT INTO `Sys_Region` VALUES (363, '150200', '包頭市', 150000, 2, '中國,內蒙古自治區,包頭市', 109.84, 40.6582, 'Baotou');
INSERT INTO `Sys_Region` VALUES (364, '150202', '東河區', 150200, 3, '中國,內蒙古自治區,包頭市,東河區', 110.046, 40.5824, 'Donghe');
INSERT INTO `Sys_Region` VALUES (365, '150203', '昆都侖區', 150200, 3, '中國,內蒙古自治區,包頭市,昆都侖區', 109.839, 40.6418, 'Kundulun');
INSERT INTO `Sys_Region` VALUES (366, '150204', '青山區', 150200, 3, '中國,內蒙古自治區,包頭市,青山區', 109.901, 40.6433, 'Qingshan');
INSERT INTO `Sys_Region` VALUES (367, '150205', '石拐區', 150200, 3, '中國,內蒙古自治區,包頭市,石拐區', 110.273, 40.673, 'Shiguai');
INSERT INTO `Sys_Region` VALUES (368, '150206', '白云鄂博礦區', 150200, 3, '中國,內蒙古自治區,包頭市,白云鄂博礦區', 109.974, 41.7697, 'Baiyunebokuangqu');
INSERT INTO `Sys_Region` VALUES (369, '150207', '九原區', 150200, 3, '中國,內蒙古自治區,包頭市,九原區', 109.965, 40.6055, 'Jiuyuan');
INSERT INTO `Sys_Region` VALUES (370, '150221', '土默特右旗', 150200, 3, '中國,內蒙古自治區,包頭市,土默特右旗', 110.524, 40.5688, 'Tumoteyouqi');
INSERT INTO `Sys_Region` VALUES (371, '150222', '固陽縣', 150200, 3, '中國,內蒙古自治區,包頭市,固陽縣', 110.064, 41.0185, 'Guyang');
INSERT INTO `Sys_Region` VALUES (372, '150223', '達爾罕茂明安聯合旗', 150200, 3, '中國,內蒙古自治區,包頭市,達爾罕茂明安聯合旗', 110.433, 41.6987, 'Damaoqi');
INSERT INTO `Sys_Region` VALUES (373, '150300', '烏海市', 150000, 2, '中國,內蒙古自治區,烏海市', 106.826, 39.6737, 'Wuhai');
INSERT INTO `Sys_Region` VALUES (374, '150302', '海勃灣區', 150300, 3, '中國,內蒙古自治區,烏海市,海勃灣區', 106.822, 39.6696, 'Haibowan');
INSERT INTO `Sys_Region` VALUES (375, '150303', '海南區', 150300, 3, '中國,內蒙古自治區,烏海市,海南區', 106.887, 39.4413, 'Hainan');
INSERT INTO `Sys_Region` VALUES (376, '150304', '烏達區', 150300, 3, '中國,內蒙古自治區,烏海市,烏達區', 106.727, 39.505, 'Wuda');
INSERT INTO `Sys_Region` VALUES (377, '150400', '赤峰市', 150000, 2, '中國,內蒙古自治區,赤峰市', 118.957, 42.2753, 'Chifeng');
INSERT INTO `Sys_Region` VALUES (378, '150402', '紅山區', 150400, 3, '中國,內蒙古自治區,赤峰市,紅山區', 118.958, 42.2431, 'Hongshan');
INSERT INTO `Sys_Region` VALUES (379, '150403', '元寶山區', 150400, 3, '中國,內蒙古自治區,赤峰市,元寶山區', 119.289, 42.0401, 'Yuanbaoshan');
INSERT INTO `Sys_Region` VALUES (380, '150404', '松山區', 150400, 3, '中國,內蒙古自治區,赤峰市,松山區', 118.933, 42.2861, 'Songshan');
INSERT INTO `Sys_Region` VALUES (381, '150421', '阿魯科爾沁旗', 150400, 3, '中國,內蒙古自治區,赤峰市,阿魯科爾沁旗', 120.065, 43.8799, 'Alukeerqinqi');
INSERT INTO `Sys_Region` VALUES (382, '150422', '巴林左旗', 150400, 3, '中國,內蒙古自治區,赤峰市,巴林左旗', 119.38, 43.9703, 'Balinzuoqi');
INSERT INTO `Sys_Region` VALUES (383, '150423', '巴林右旗', 150400, 3, '中國,內蒙古自治區,赤峰市,巴林右旗', 118.665, 43.5339, 'Balinyouqi');
INSERT INTO `Sys_Region` VALUES (384, '150424', '林西縣', 150400, 3, '中國,內蒙古自治區,赤峰市,林西縣', 118.047, 43.6116, 'Linxi');
INSERT INTO `Sys_Region` VALUES (385, '150425', '克什克騰旗', 150400, 3, '中國,內蒙古自治區,赤峰市,克什克騰旗', 117.546, 43.265, 'Keshiketengqi');
INSERT INTO `Sys_Region` VALUES (386, '150426', '翁牛特旗', 150400, 3, '中國,內蒙古自治區,赤峰市,翁牛特旗', 119.03, 42.9315, 'Wengniuteqi');
INSERT INTO `Sys_Region` VALUES (387, '150428', '喀喇沁旗', 150400, 3, '中國,內蒙古自治區,赤峰市,喀喇沁旗', 118.701, 41.9292, 'Kalaqinqi');
INSERT INTO `Sys_Region` VALUES (388, '150429', '寧城縣', 150400, 3, '中國,內蒙古自治區,赤峰市,寧城縣', 119.344, 41.5966, 'Ningcheng');
INSERT INTO `Sys_Region` VALUES (389, '150430', '敖漢旗', 150400, 3, '中國,內蒙古自治區,赤峰市,敖漢旗', 119.922, 42.2907, 'Aohanqi');
INSERT INTO `Sys_Region` VALUES (390, '150500', '通遼市', 150000, 2, '中國,內蒙古自治區,通遼市', 122.263, 43.6174, 'Tongliao');
INSERT INTO `Sys_Region` VALUES (391, '150502', '科爾沁區', 150500, 3, '中國,內蒙古自治區,通遼市,科爾沁區', 122.256, 43.6226, 'Keerqin');
INSERT INTO `Sys_Region` VALUES (392, '150521', '科爾沁左翼中旗', 150500, 3, '中國,內蒙古自治區,通遼市,科爾沁左翼中旗', 123.319, 44.1301, 'Keerqinzuoyizhongqi');
INSERT INTO `Sys_Region` VALUES (393, '150522', '科爾沁左翼后旗', 150500, 3, '中國,內蒙古自治區,通遼市,科爾沁左翼后旗', 122.357, 42.949, 'Keerqinzuoyihouqi');
INSERT INTO `Sys_Region` VALUES (394, '150523', '開魯縣', 150500, 3, '中國,內蒙古自治區,通遼市,開魯縣', 121.319, 43.6, 'Kailu');
INSERT INTO `Sys_Region` VALUES (395, '150524', '庫倫旗', 150500, 3, '中國,內蒙古自治區,通遼市,庫倫旗', 121.776, 42.73, 'Kulunqi');
INSERT INTO `Sys_Region` VALUES (396, '150525', '奈曼旗', 150500, 3, '中國,內蒙古自治區,通遼市,奈曼旗', 120.663, 42.8453, 'Naimanqi');
INSERT INTO `Sys_Region` VALUES (397, '150526', '扎魯特旗', 150500, 3, '中國,內蒙古自治區,通遼市,扎魯特旗', 120.915, 44.5559, 'Zhaluteqi');
INSERT INTO `Sys_Region` VALUES (398, '150581', '霍林郭勒市', 150500, 3, '中國,內蒙古自治區,通遼市,霍林郭勒市', 119.654, 45.5345, 'Huolinguole');
INSERT INTO `Sys_Region` VALUES (399, '150600', '鄂爾多斯市', 150000, 2, '中國,內蒙古自治區,鄂爾多斯市', 109.99, 39.8172, 'Ordos');
INSERT INTO `Sys_Region` VALUES (400, '150602', '東勝區', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,東勝區', 109.963, 39.8224, 'Dongsheng');
INSERT INTO `Sys_Region` VALUES (401, '150621', '達拉特旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,達拉特旗', 110.033, 40.4001, 'Dalateqi');
INSERT INTO `Sys_Region` VALUES (402, '150622', '準格爾旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,準格爾旗', 111.236, 39.8678, 'Zhungeerqi');
INSERT INTO `Sys_Region` VALUES (403, '150623', '鄂托克前旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,鄂托克前旗', 107.484, 38.184, 'Etuokeqianqi');
INSERT INTO `Sys_Region` VALUES (404, '150624', '鄂托克旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,鄂托克旗', 107.982, 39.0946, 'Etuokeqi');
INSERT INTO `Sys_Region` VALUES (405, '150625', '杭錦旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,杭錦旗', 108.729, 39.8402, 'Hangjinqi');
INSERT INTO `Sys_Region` VALUES (406, '150626', '烏審旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,烏審旗', 108.846, 38.5909, 'Wushenqi');
INSERT INTO `Sys_Region` VALUES (407, '150627', '伊金霍洛旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,伊金霍洛旗', 109.749, 39.5739, 'Yijinhuoluoqi');
INSERT INTO `Sys_Region` VALUES (408, '150700', '呼倫貝爾市', 150000, 2, '中國,內蒙古自治區,呼倫貝爾市', 119.758, 49.2153, 'Hulunber');
INSERT INTO `Sys_Region` VALUES (409, '150702', '海拉爾區', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,海拉爾區', 119.736, 49.2122, 'Hailaer');
INSERT INTO `Sys_Region` VALUES (410, '150703', '扎賚諾爾區', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,扎賚諾爾區', 117.793, 49.4869, 'Zhalainuoer');
INSERT INTO `Sys_Region` VALUES (411, '150721', '阿榮旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,阿榮旗', 123.459, 48.1258, 'Arongqi');
INSERT INTO `Sys_Region` VALUES (412, '150722', '莫力達瓦達斡爾族自治旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,莫力達瓦達斡爾族自治旗', 124.515, 48.4805, 'Moqi');
INSERT INTO `Sys_Region` VALUES (413, '150723', '鄂倫春自治旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,鄂倫春自治旗', 123.726, 50.5978, 'Elunchun');
INSERT INTO `Sys_Region` VALUES (414, '150724', '鄂溫克族自治旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,鄂溫克族自治旗', 119.757, 49.1428, 'Ewen');
INSERT INTO `Sys_Region` VALUES (415, '150725', '陳巴爾虎旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,陳巴爾虎旗', 119.424, 49.3268, 'Chenbaerhuqi');
INSERT INTO `Sys_Region` VALUES (416, '150726', '新巴爾虎左旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,新巴爾虎左旗', 118.27, 48.2184, 'Xinbaerhuzuoqi');
INSERT INTO `Sys_Region` VALUES (417, '150727', '新巴爾虎右旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,新巴爾虎右旗', 116.824, 48.6647, 'Xinbaerhuyouqi');
INSERT INTO `Sys_Region` VALUES (418, '150781', '滿洲里市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,滿洲里市', 117.479, 49.5827, 'Manzhouli');
INSERT INTO `Sys_Region` VALUES (419, '150782', '牙克石市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,牙克石市', 120.712, 49.2856, 'Yakeshi');
INSERT INTO `Sys_Region` VALUES (420, '150783', '扎蘭屯市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,扎蘭屯市', 122.738, 48.0136, 'Zhalantun');
INSERT INTO `Sys_Region` VALUES (421, '150784', '額爾古納市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,額爾古納市', 120.191, 50.2425, 'Eerguna');
INSERT INTO `Sys_Region` VALUES (422, '150785', '根河市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,根河市', 121.522, 50.78, 'Genhe');
INSERT INTO `Sys_Region` VALUES (423, '150800', '巴彥淖爾市', 150000, 2, '中國,內蒙古自治區,巴彥淖爾市', 107.417, 40.7574, 'Bayan Nur');
INSERT INTO `Sys_Region` VALUES (424, '150802', '臨河區', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,臨河區', 107.427, 40.7583, 'Linhe');
INSERT INTO `Sys_Region` VALUES (425, '150821', '五原縣', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,五原縣', 108.269, 41.0963, 'Wuyuan');
INSERT INTO `Sys_Region` VALUES (426, '150822', '磴口縣', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,磴口縣', 107.009, 40.3306, 'Dengkou');
INSERT INTO `Sys_Region` VALUES (427, '150823', '烏拉特前旗', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,烏拉特前旗', 108.652, 40.7365, 'Wulateqianqi');
INSERT INTO `Sys_Region` VALUES (428, '150824', '烏拉特中旗', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,烏拉特中旗', 108.526, 41.5679, 'Wulatezhongqi');
INSERT INTO `Sys_Region` VALUES (429, '150825', '烏拉特后旗', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,烏拉特后旗', 106.99, 41.4315, 'Wulatehouqi');
INSERT INTO `Sys_Region` VALUES (430, '150826', '杭錦后旗', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,杭錦后旗', 107.151, 40.8863, 'Hangjinhouqi');
INSERT INTO `Sys_Region` VALUES (431, '150900', '烏蘭察布市', 150000, 2, '中國,內蒙古自治區,烏蘭察布市', 113.115, 41.0341, 'Ulanqab');
INSERT INTO `Sys_Region` VALUES (432, '150902', '集寧區', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,集寧區', 113.115, 41.0353, 'Jining');
INSERT INTO `Sys_Region` VALUES (433, '150921', '卓資縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,卓資縣', 112.578, 40.8941, 'Zhuozi');
INSERT INTO `Sys_Region` VALUES (434, '150922', '化德縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,化德縣', 114.011, 41.9043, 'Huade');
INSERT INTO `Sys_Region` VALUES (435, '150923', '商都縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,商都縣', 113.578, 41.5621, 'Shangdu');
INSERT INTO `Sys_Region` VALUES (436, '150924', '興和縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,興和縣', 113.834, 40.8719, 'Xinghe');
INSERT INTO `Sys_Region` VALUES (437, '150925', '涼城縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,涼城縣', 112.496, 40.5335, 'Liangcheng');
INSERT INTO `Sys_Region` VALUES (438, '150926', '察哈爾右翼前旗', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,察哈爾右翼前旗', 113.221, 40.7788, 'Chayouqianqi');
INSERT INTO `Sys_Region` VALUES (439, '150927', '察哈爾右翼中旗', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,察哈爾右翼中旗', 112.635, 41.2774, 'Chayouzhongqi');
INSERT INTO `Sys_Region` VALUES (440, '150928', '察哈爾右翼后旗', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,察哈爾右翼后旗', 113.192, 41.4355, 'Chayouhouqi');
INSERT INTO `Sys_Region` VALUES (441, '150929', '四子王旗', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,四子王旗', 111.707, 41.5331, 'Siziwangqi');
INSERT INTO `Sys_Region` VALUES (442, '150981', '豐鎮市', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,豐鎮市', 113.11, 40.4369, 'Fengzhen');
INSERT INTO `Sys_Region` VALUES (443, '152200', '興安盟', 150000, 2, '中國,內蒙古自治區,興安盟', 122.07, 46.0763, 'Hinggan');
INSERT INTO `Sys_Region` VALUES (444, '152201', '烏蘭浩特市', 152200, 3, '中國,內蒙古自治區,興安盟,烏蘭浩特市', 122.064, 46.0624, 'Wulanhaote');
INSERT INTO `Sys_Region` VALUES (445, '152202', '阿爾山市', 152200, 3, '中國,內蒙古自治區,興安盟,阿爾山市', 119.943, 47.1772, 'Aershan');
INSERT INTO `Sys_Region` VALUES (446, '152221', '科爾沁右翼前旗', 152200, 3, '中國,內蒙古自治區,興安盟,科爾沁右翼前旗', 121.953, 46.0795, 'Keyouqianqi');
INSERT INTO `Sys_Region` VALUES (447, '152222', '科爾沁右翼中旗', 152200, 3, '中國,內蒙古自治區,興安盟,科爾沁右翼中旗', 121.468, 45.056, 'Keyouzhongqi');
INSERT INTO `Sys_Region` VALUES (448, '152223', '扎賚特旗', 152200, 3, '中國,內蒙古自治區,興安盟,扎賚特旗', 122.912, 46.7267, 'Zhalaiteqi');
INSERT INTO `Sys_Region` VALUES (449, '152224', '突泉縣', 152200, 3, '中國,內蒙古自治區,興安盟,突泉縣', 121.594, 45.3819, 'Tuquan');
INSERT INTO `Sys_Region` VALUES (450, '152500', '錫林郭勒盟', 150000, 2, '中國,內蒙古自治區,錫林郭勒盟', 116.091, 43.944, 'Xilin Gol');
INSERT INTO `Sys_Region` VALUES (451, '152501', '二連浩特市', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,二連浩特市', 111.983, 43.653, 'Erlianhaote');
INSERT INTO `Sys_Region` VALUES (452, '152502', '錫林浩特市', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,錫林浩特市', 116.086, 43.9334, 'Xilinhaote');
INSERT INTO `Sys_Region` VALUES (453, '152522', '阿巴嘎旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,阿巴嘎旗', 114.968, 44.0217, 'Abagaqi');
INSERT INTO `Sys_Region` VALUES (454, '152523', '蘇尼特左旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,蘇尼特左旗', 113.651, 43.8569, 'Sunitezuoqi');
INSERT INTO `Sys_Region` VALUES (455, '152524', '蘇尼特右旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,蘇尼特右旗', 112.657, 42.7469, 'Suniteyouqi');
INSERT INTO `Sys_Region` VALUES (456, '152525', '東烏珠穆沁旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,東烏珠穆沁旗', 116.973, 45.5111, 'Dongwuqi');
INSERT INTO `Sys_Region` VALUES (457, '152526', '西烏珠穆沁旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,西烏珠穆沁旗', 117.61, 44.5962, 'Xiwuqi');
INSERT INTO `Sys_Region` VALUES (458, '152527', '太仆寺旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,太仆寺旗', 115.283, 41.8773, 'Taipusiqi');
INSERT INTO `Sys_Region` VALUES (459, '152528', '鑲黃旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,鑲黃旗', 113.845, 42.2393, 'Xianghuangqi');
INSERT INTO `Sys_Region` VALUES (460, '152529', '正鑲白旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,正鑲白旗', 115.001, 42.3071, 'Zhengxiangbaiqi');
INSERT INTO `Sys_Region` VALUES (461, '152530', '正藍旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,正藍旗', 116.004, 42.2523, 'Zhenglanqi');
INSERT INTO `Sys_Region` VALUES (462, '152531', '多倫縣', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,多倫縣', 116.486, 42.203, 'Duolun');
INSERT INTO `Sys_Region` VALUES (463, '152900', '阿拉善盟', 150000, 2, '中國,內蒙古自治區,阿拉善盟', 105.706, 38.8448, 'Alxa');
INSERT INTO `Sys_Region` VALUES (464, '152921', '阿拉善左旗', 152900, 3, '中國,內蒙古自治區,阿拉善盟,阿拉善左旗', 105.675, 38.8293, 'Alashanzuoqi');
INSERT INTO `Sys_Region` VALUES (465, '152922', '阿拉善右旗', 152900, 3, '中國,內蒙古自治區,阿拉善盟,阿拉善右旗', 101.667, 39.2153, 'Alashanyouqi');
INSERT INTO `Sys_Region` VALUES (466, '152923', '額濟納旗', 152900, 3, '中國,內蒙古自治區,阿拉善盟,額濟納旗', 101.069, 41.9675, 'Ejinaqi');
INSERT INTO `Sys_Region` VALUES (467, '210000', '遼寧省', 100000, 1, '中國,遼寧省', 123.429, 41.7968, 'Liaoning');
INSERT INTO `Sys_Region` VALUES (468, '210100', '沈陽市', 210000, 2, '中國,遼寧省,沈陽市', 123.429, 41.7968, 'Shenyang');
INSERT INTO `Sys_Region` VALUES (469, '210102', '和平區', 210100, 3, '中國,遼寧省,沈陽市,和平區', 123.42, 41.79, 'Heping');
INSERT INTO `Sys_Region` VALUES (470, '210103', '沈河區', 210100, 3, '中國,遼寧省,沈陽市,沈河區', 123.459, 41.7962, 'Shenhe');
INSERT INTO `Sys_Region` VALUES (471, '210104', '大東區', 210100, 3, '中國,遼寧省,沈陽市,大東區', 123.47, 41.8054, 'Dadong');
INSERT INTO `Sys_Region` VALUES (472, '210105', '皇姑區', 210100, 3, '中國,遼寧省,沈陽市,皇姑區', 123.425, 41.8204, 'Huanggu');
INSERT INTO `Sys_Region` VALUES (473, '210106', '鐵西區', 210100, 3, '中國,遼寧省,沈陽市,鐵西區', 123.377, 41.8027, 'Tiexi');
INSERT INTO `Sys_Region` VALUES (474, '210111', '蘇家屯區', 210100, 3, '中國,遼寧省,沈陽市,蘇家屯區', 123.344, 41.6647, 'Sujiatun');
INSERT INTO `Sys_Region` VALUES (475, '210112', '渾南區', 210100, 3, '中國,遼寧省,沈陽市,渾南區', 123.458, 41.7195, 'Hunnan');
INSERT INTO `Sys_Region` VALUES (476, '210113', '沈北新區', 210100, 3, '中國,遼寧省,沈陽市,沈北新區', 123.527, 42.053, 'Shenbeixinqu');
INSERT INTO `Sys_Region` VALUES (477, '210114', '于洪區', 210100, 3, '中國,遼寧省,沈陽市,于洪區', 123.308, 41.794, 'Yuhong');
INSERT INTO `Sys_Region` VALUES (478, '210122', '遼中縣', 210100, 3, '中國,遼寧省,沈陽市,遼中縣', 122.727, 41.513, 'Liaozhong');
INSERT INTO `Sys_Region` VALUES (479, '210123', '康平縣', 210100, 3, '中國,遼寧省,沈陽市,康平縣', 123.354, 42.7508, 'Kangping');
INSERT INTO `Sys_Region` VALUES (480, '210124', '法庫縣', 210100, 3, '中國,遼寧省,沈陽市,法庫縣', 123.412, 42.5061, 'Faku');
INSERT INTO `Sys_Region` VALUES (481, '210181', '新民市', 210100, 3, '中國,遼寧省,沈陽市,新民市', 122.829, 41.9985, 'Xinmin');
INSERT INTO `Sys_Region` VALUES (482, '210200', '大連市', 210000, 2, '中國,遼寧省,大連市', 121.619, 38.9146, 'Dalian');
INSERT INTO `Sys_Region` VALUES (483, '210202', '中山區', 210200, 3, '中國,遼寧省,大連市,中山區', 121.645, 38.9186, 'Zhongshan');
INSERT INTO `Sys_Region` VALUES (484, '210203', '西崗區', 210200, 3, '中國,遼寧省,大連市,西崗區', 121.612, 38.9147, 'Xigang');
INSERT INTO `Sys_Region` VALUES (485, '210204', '沙河口區', 210200, 3, '中國,遼寧省,大連市,沙河口區', 121.58, 38.9054, 'Shahekou');
INSERT INTO `Sys_Region` VALUES (486, '210211', '甘井子區', 210200, 3, '中國,遼寧省,大連市,甘井子區', 121.566, 38.9502, 'Ganjingzi');
INSERT INTO `Sys_Region` VALUES (487, '210212', '旅順口區', 210200, 3, '中國,遼寧省,大連市,旅順口區', 121.262, 38.8512, 'Lvshunkou');
INSERT INTO `Sys_Region` VALUES (488, '210213', '金州區', 210200, 3, '中國,遼寧省,大連市,金州區', 121.719, 39.1004, 'Jinzhou');
INSERT INTO `Sys_Region` VALUES (489, '210224', '長海縣', 210200, 3, '中國,遼寧省,大連市,長海縣', 122.589, 39.2727, 'Changhai');
INSERT INTO `Sys_Region` VALUES (490, '210281', '瓦房店市', 210200, 3, '中國,遼寧省,大連市,瓦房店市', 121.981, 39.6284, 'Wafangdian');
INSERT INTO `Sys_Region` VALUES (491, '210282', '普蘭店市', 210200, 3, '中國,遼寧省,大連市,普蘭店市', 121.963, 39.3946, 'Pulandian');
INSERT INTO `Sys_Region` VALUES (492, '210283', '莊河市', 210200, 3, '中國,遼寧省,大連市,莊河市', 122.967, 39.6881, 'Zhuanghe');
INSERT INTO `Sys_Region` VALUES (493, '210300', '鞍山市', 210000, 2, '中國,遼寧省,鞍山市', 122.996, 41.1106, 'Anshan');
INSERT INTO `Sys_Region` VALUES (494, '210302', '鐵東區', 210300, 3, '中國,遼寧省,鞍山市,鐵東區', 122.991, 41.0897, 'Tiedong');
INSERT INTO `Sys_Region` VALUES (495, '210303', '鐵西區', 210300, 3, '中國,遼寧省,鞍山市,鐵西區', 122.97, 41.1198, 'Tiexi');
INSERT INTO `Sys_Region` VALUES (496, '210304', '立山區', 210300, 3, '中國,遼寧省,鞍山市,立山區', 123.029, 41.1501, 'Lishan');
INSERT INTO `Sys_Region` VALUES (497, '210311', '千山區', 210300, 3, '中國,遼寧省,鞍山市,千山區', 122.96, 41.0751, 'Qianshan');
INSERT INTO `Sys_Region` VALUES (498, '210321', '臺安縣', 210300, 3, '中國,遼寧省,鞍山市,臺安縣', 122.436, 41.4127, 'Taian');
INSERT INTO `Sys_Region` VALUES (499, '210323', '岫巖滿族自治縣', 210300, 3, '中國,遼寧省,鞍山市,岫巖滿族自治縣', 123.289, 40.28, 'Xiuyan');
INSERT INTO `Sys_Region` VALUES (500, '210381', '海城市', 210300, 3, '中國,遼寧省,鞍山市,海城市', 122.685, 40.8814, 'Haicheng');
INSERT INTO `Sys_Region` VALUES (501, '210400', '撫順市', 210000, 2, '中國,遼寧省,撫順市', 123.921, 41.876, 'Fushun');
INSERT INTO `Sys_Region` VALUES (502, '210402', '新撫區', 210400, 3, '中國,遼寧省,撫順市,新撫區', 123.913, 41.862, 'Xinfu');
INSERT INTO `Sys_Region` VALUES (503, '210403', '東洲區', 210400, 3, '中國,遼寧省,撫順市,東洲區', 124.038, 41.8519, 'Dongzhou');
INSERT INTO `Sys_Region` VALUES (504, '210404', '望花區', 210400, 3, '中國,遼寧省,撫順市,望花區', 123.783, 41.8553, 'Wanghua');
INSERT INTO `Sys_Region` VALUES (505, '210411', '順城區', 210400, 3, '中國,遼寧省,撫順市,順城區', 123.945, 41.8832, 'Shuncheng');
INSERT INTO `Sys_Region` VALUES (506, '210421', '撫順縣', 210400, 3, '中國,遼寧省,撫順市,撫順縣', 124.178, 41.7122, 'Fushun');
INSERT INTO `Sys_Region` VALUES (507, '210422', '新賓滿族自治縣', 210400, 3, '中國,遼寧省,撫順市,新賓滿族自治縣', 125.04, 41.7341, 'Xinbin');
INSERT INTO `Sys_Region` VALUES (508, '210423', '清原滿族自治縣', 210400, 3, '中國,遼寧省,撫順市,清原滿族自治縣', 124.928, 42.1022, 'Qingyuan');
INSERT INTO `Sys_Region` VALUES (509, '210500', '本溪市', 210000, 2, '中國,遼寧省,本溪市', 123.771, 41.2979, 'Benxi');
INSERT INTO `Sys_Region` VALUES (510, '210502', '平山區', 210500, 3, '中國,遼寧省,本溪市,平山區', 123.769, 41.2997, 'Pingshan');
INSERT INTO `Sys_Region` VALUES (511, '210503', '溪湖區', 210500, 3, '中國,遼寧省,本溪市,溪湖區', 123.768, 41.3292, 'Xihu');
INSERT INTO `Sys_Region` VALUES (512, '210504', '明山區', 210500, 3, '中國,遼寧省,本溪市,明山區', 123.817, 41.3083, 'Mingshan');
INSERT INTO `Sys_Region` VALUES (513, '210505', '南芬區', 210500, 3, '中國,遼寧省,本溪市,南芬區', 123.745, 41.1006, 'Nanfen');
INSERT INTO `Sys_Region` VALUES (514, '210521', '本溪滿族自治縣', 210500, 3, '中國,遼寧省,本溪市,本溪滿族自治縣', 124.127, 41.3006, 'Benxi');
INSERT INTO `Sys_Region` VALUES (515, '210522', '桓仁滿族自治縣', 210500, 3, '中國,遼寧省,本溪市,桓仁滿族自治縣', 125.361, 41.268, 'Huanren');
INSERT INTO `Sys_Region` VALUES (516, '210600', '丹東市', 210000, 2, '中國,遼寧省,丹東市', 124.383, 40.1243, 'Dandong');
INSERT INTO `Sys_Region` VALUES (517, '210602', '元寶區', 210600, 3, '中國,遼寧省,丹東市,元寶區', 124.396, 40.1365, 'Yuanbao');
INSERT INTO `Sys_Region` VALUES (518, '210603', '振興區', 210600, 3, '中國,遼寧省,丹東市,振興區', 124.36, 40.1049, 'Zhenxing');
INSERT INTO `Sys_Region` VALUES (519, '210604', '振安區', 210600, 3, '中國,遼寧省,丹東市,振安區', 124.428, 40.1583, 'Zhenan');
INSERT INTO `Sys_Region` VALUES (520, '210624', '寬甸滿族自治縣', 210600, 3, '中國,遼寧省,丹東市,寬甸滿族自治縣', 124.782, 40.7319, 'Kuandian');
INSERT INTO `Sys_Region` VALUES (521, '210681', '東港市', 210600, 3, '中國,遼寧省,丹東市,東港市', 124.163, 39.8626, 'Donggang');
INSERT INTO `Sys_Region` VALUES (522, '210682', '鳳城市', 210600, 3, '中國,遼寧省,丹東市,鳳城市', 124.067, 40.453, 'Fengcheng');
INSERT INTO `Sys_Region` VALUES (523, '210700', '錦州市', 210000, 2, '中國,遼寧省,錦州市', 121.136, 41.1193, 'Jinzhou');
INSERT INTO `Sys_Region` VALUES (524, '210702', '古塔區', 210700, 3, '中國,遼寧省,錦州市,古塔區', 121.128, 41.1172, 'Guta');
INSERT INTO `Sys_Region` VALUES (525, '210703', '凌河區', 210700, 3, '中國,遼寧省,錦州市,凌河區', 121.151, 41.115, 'Linghe');
INSERT INTO `Sys_Region` VALUES (526, '210711', '太和區', 210700, 3, '中國,遼寧省,錦州市,太和區', 121.104, 41.1093, 'Taihe');
INSERT INTO `Sys_Region` VALUES (527, '210726', '黑山縣', 210700, 3, '中國,遼寧省,錦州市,黑山縣', 122.121, 41.6942, 'Heishan');
INSERT INTO `Sys_Region` VALUES (528, '210727', '義縣', 210700, 3, '中國,遼寧省,錦州市,義縣', 121.24, 41.5346, 'Yixian');
INSERT INTO `Sys_Region` VALUES (529, '210781', '凌海市', 210700, 3, '中國,遼寧省,錦州市,凌海市', 121.357, 41.1737, 'Linghai');
INSERT INTO `Sys_Region` VALUES (530, '210782', '北鎮市', 210700, 3, '中國,遼寧省,錦州市,北鎮市', 121.799, 41.5954, 'Beizhen');
INSERT INTO `Sys_Region` VALUES (531, '210800', '營口市', 210000, 2, '中國,遼寧省,營口市', 122.235, 40.6674, 'Yingkou');
INSERT INTO `Sys_Region` VALUES (532, '210802', '站前區', 210800, 3, '中國,遼寧省,營口市,站前區', 122.259, 40.6727, 'Zhanqian');
INSERT INTO `Sys_Region` VALUES (533, '210803', '西市區', 210800, 3, '中國,遼寧省,營口市,西市區', 122.206, 40.6664, 'Xishi');
INSERT INTO `Sys_Region` VALUES (534, '210804', '鲅魚圈區', 210800, 3, '中國,遼寧省,營口市,鲅魚圈區', 122.133, 40.2687, 'Bayuquan');
INSERT INTO `Sys_Region` VALUES (535, '210811', '老邊區', 210800, 3, '中國,遼寧省,營口市,老邊區', 122.38, 40.6803, 'Laobian');
INSERT INTO `Sys_Region` VALUES (536, '210881', '蓋州市', 210800, 3, '中國,遼寧省,營口市,蓋州市', 122.355, 40.4045, 'Gaizhou');
INSERT INTO `Sys_Region` VALUES (537, '210882', '大石橋市', 210800, 3, '中國,遼寧省,營口市,大石橋市', 122.509, 40.6457, 'Dashiqiao');
INSERT INTO `Sys_Region` VALUES (538, '210900', '阜新市', 210000, 2, '中國,遼寧省,阜新市', 121.649, 42.0118, 'Fuxin');
INSERT INTO `Sys_Region` VALUES (539, '210902', '海州區', 210900, 3, '中國,遼寧省,阜新市,海州區', 121.656, 42.0134, 'Haizhou');
INSERT INTO `Sys_Region` VALUES (540, '210903', '新邱區', 210900, 3, '中國,遼寧省,阜新市,新邱區', 121.793, 42.0918, 'Xinqiu');
INSERT INTO `Sys_Region` VALUES (541, '210904', '太平區', 210900, 3, '中國,遼寧省,阜新市,太平區', 121.679, 42.0107, 'Taiping');
INSERT INTO `Sys_Region` VALUES (542, '210905', '清河門區', 210900, 3, '中國,遼寧省,阜新市,清河門區', 121.416, 41.7831, 'Qinghemen');
INSERT INTO `Sys_Region` VALUES (543, '210911', '細河區', 210900, 3, '中國,遼寧省,阜新市,細河區', 121.68, 42.0253, 'Xihe');
INSERT INTO `Sys_Region` VALUES (544, '210921', '阜新蒙古族自治縣', 210900, 3, '中國,遼寧省,阜新市,阜新蒙古族自治縣', 121.758, 42.0651, 'Fuxin');
INSERT INTO `Sys_Region` VALUES (545, '210922', '彰武縣', 210900, 3, '中國,遼寧省,阜新市,彰武縣', 122.54, 42.3862, 'Zhangwu');
INSERT INTO `Sys_Region` VALUES (546, '211000', '遼陽市', 210000, 2, '中國,遼寧省,遼陽市', 123.182, 41.2694, 'Liaoyang');
INSERT INTO `Sys_Region` VALUES (547, '211002', '白塔區', 211000, 3, '中國,遼寧省,遼陽市,白塔區', 123.175, 41.2702, 'Baita');
INSERT INTO `Sys_Region` VALUES (548, '211003', '文圣區', 211000, 3, '中國,遼寧省,遼陽市,文圣區', 123.185, 41.2627, 'Wensheng');
INSERT INTO `Sys_Region` VALUES (549, '211004', '宏偉區', 211000, 3, '中國,遼寧省,遼陽市,宏偉區', 123.193, 41.2185, 'Hongwei');
INSERT INTO `Sys_Region` VALUES (550, '211005', '弓長嶺區', 211000, 3, '中國,遼寧省,遼陽市,弓長嶺區', 123.42, 41.1518, 'Gongchangling');
INSERT INTO `Sys_Region` VALUES (551, '211011', '太子河區', 211000, 3, '中國,遼寧省,遼陽市,太子河區', 123.182, 41.2534, 'Taizihe');
INSERT INTO `Sys_Region` VALUES (552, '211021', '遼陽縣', 211000, 3, '中國,遼寧省,遼陽市,遼陽縣', 123.106, 41.2054, 'Liaoyang');
INSERT INTO `Sys_Region` VALUES (553, '211081', '燈塔市', 211000, 3, '中國,遼寧省,遼陽市,燈塔市', 123.339, 41.4261, 'Dengta');
INSERT INTO `Sys_Region` VALUES (554, '211100', '盤錦市', 210000, 2, '中國,遼寧省,盤錦市', 122.07, 41.1245, 'Panjin');
INSERT INTO `Sys_Region` VALUES (555, '211102', '雙臺子區', 211100, 3, '中國,遼寧省,盤錦市,雙臺子區', 122.06, 41.1906, 'Shuangtaizi');
INSERT INTO `Sys_Region` VALUES (556, '211103', '興隆臺區', 211100, 3, '中國,遼寧省,盤錦市,興隆臺區', 122.075, 41.124, 'Xinglongtai');
INSERT INTO `Sys_Region` VALUES (557, '211121', '大洼縣', 211100, 3, '中國,遼寧省,盤錦市,大洼縣', 122.082, 41.0024, 'Dawa');
INSERT INTO `Sys_Region` VALUES (558, '211122', '盤山縣', 211100, 3, '中國,遼寧省,盤錦市,盤山縣', 121.998, 41.238, 'Panshan');
INSERT INTO `Sys_Region` VALUES (559, '211200', '鐵嶺市', 210000, 2, '中國,遼寧省,鐵嶺市', 123.844, 42.2906, 'Tieling');
INSERT INTO `Sys_Region` VALUES (560, '211202', '銀州區', 211200, 3, '中國,遼寧省,鐵嶺市,銀州區', 123.857, 42.2951, 'Yinzhou');
INSERT INTO `Sys_Region` VALUES (561, '211204', '清河區', 211200, 3, '中國,遼寧省,鐵嶺市,清河區', 124.159, 42.5468, 'Qinghe');
INSERT INTO `Sys_Region` VALUES (562, '211221', '鐵嶺縣', 211200, 3, '中國,遼寧省,鐵嶺市,鐵嶺縣', 123.773, 42.225, 'Tieling');
INSERT INTO `Sys_Region` VALUES (563, '211223', '西豐縣', 211200, 3, '中國,遼寧省,鐵嶺市,西豐縣', 124.73, 42.7376, 'Xifeng');
INSERT INTO `Sys_Region` VALUES (564, '211224', '昌圖縣', 211200, 3, '中國,遼寧省,鐵嶺市,昌圖縣', 124.112, 42.7843, 'Changtu');
INSERT INTO `Sys_Region` VALUES (565, '211281', '調兵山市', 211200, 3, '中國,遼寧省,鐵嶺市,調兵山市', 123.567, 42.4675, 'Diaobingshan');
INSERT INTO `Sys_Region` VALUES (566, '211282', '開原市', 211200, 3, '中國,遼寧省,鐵嶺市,開原市', 124.039, 42.5458, 'Kaiyuan');
INSERT INTO `Sys_Region` VALUES (567, '211300', '朝陽市', 210000, 2, '中國,遼寧省,朝陽市', 120.451, 41.5768, 'Chaoyang');
INSERT INTO `Sys_Region` VALUES (568, '211302', '雙塔區', 211300, 3, '中國,遼寧省,朝陽市,雙塔區', 120.454, 41.566, 'Shuangta');
INSERT INTO `Sys_Region` VALUES (569, '211303', '龍城區', 211300, 3, '中國,遼寧省,朝陽市,龍城區', 120.437, 41.5926, 'Longcheng');
INSERT INTO `Sys_Region` VALUES (570, '211321', '朝陽縣', 211300, 3, '中國,遼寧省,朝陽市,朝陽縣', 120.174, 41.4324, 'Chaoyang');
INSERT INTO `Sys_Region` VALUES (571, '211322', '建平縣', 211300, 3, '中國,遼寧省,朝陽市,建平縣', 119.644, 41.4031, 'Jianping');
INSERT INTO `Sys_Region` VALUES (572, '211324', '喀喇沁左翼蒙古族自治縣', 211300, 3, '中國,遼寧省,朝陽市,喀喇沁左翼蒙古族自治縣', 119.742, 41.128, 'Kalaqinzuoyi');
INSERT INTO `Sys_Region` VALUES (573, '211381', '北票市', 211300, 3, '中國,遼寧省,朝陽市,北票市', 120.77, 41.802, 'Beipiao');
INSERT INTO `Sys_Region` VALUES (574, '211382', '凌源市', 211300, 3, '中國,遼寧省,朝陽市,凌源市', 119.401, 41.2456, 'Lingyuan');
INSERT INTO `Sys_Region` VALUES (575, '211400', '葫蘆島市', 210000, 2, '中國,遼寧省,葫蘆島市', 120.856, 40.7556, 'Huludao');
INSERT INTO `Sys_Region` VALUES (576, '211402', '連山區', 211400, 3, '中國,遼寧省,葫蘆島市,連山區', 120.864, 40.7555, 'Lianshan');
INSERT INTO `Sys_Region` VALUES (577, '211403', '龍港區', 211400, 3, '中國,遼寧省,葫蘆島市,龍港區', 120.949, 40.7192, 'Longgang');
INSERT INTO `Sys_Region` VALUES (578, '211404', '南票區', 211400, 3, '中國,遼寧省,葫蘆島市,南票區', 120.75, 41.1071, 'Nanpiao');
INSERT INTO `Sys_Region` VALUES (579, '211421', '綏中縣', 211400, 3, '中國,遼寧省,葫蘆島市,綏中縣', 120.345, 40.3255, 'Suizhong');
INSERT INTO `Sys_Region` VALUES (580, '211422', '建昌縣', 211400, 3, '中國,遼寧省,葫蘆島市,建昌縣', 119.838, 40.8245, 'Jianchang');
INSERT INTO `Sys_Region` VALUES (581, '211481', '興城市', 211400, 3, '中國,遼寧省,葫蘆島市,興城市', 120.725, 40.6149, 'Xingcheng');
INSERT INTO `Sys_Region` VALUES (582, '211500', '金普新區', 210000, 2, '中國,遼寧省,金普新區', 121.79, 39.0555, 'Jinpuxinqu');
INSERT INTO `Sys_Region` VALUES (583, '211501', '金州新區', 211500, 3, '中國,遼寧省,金普新區,金州新區', 121.785, 39.0523, 'Jinzhouxinqu');
INSERT INTO `Sys_Region` VALUES (584, '211502', '普灣新區', 211500, 3, '中國,遼寧省,金普新區,普灣新區', 121.813, 39.3301, 'Puwanxinqu');
INSERT INTO `Sys_Region` VALUES (585, '211503', '保稅區', 211500, 3, '中國,遼寧省,金普新區,保稅區', 121.943, 39.2246, 'Baoshuiqu');
INSERT INTO `Sys_Region` VALUES (586, '220000', '吉林省', 100000, 1, '中國,吉林省', 125.325, 43.8868, 'Jilin');
INSERT INTO `Sys_Region` VALUES (587, '220100', '長春市', 220000, 2, '中國,吉林省,長春市', 125.325, 43.8868, 'Changchun');
INSERT INTO `Sys_Region` VALUES (588, '220102', '南關區', 220100, 3, '中國,吉林省,長春市,南關區', 125.35, 43.864, 'Nanguan');
INSERT INTO `Sys_Region` VALUES (589, '220103', '寬城區', 220100, 3, '中國,吉林省,長春市,寬城區', 125.326, 43.9018, 'Kuancheng');
INSERT INTO `Sys_Region` VALUES (590, '220104', '朝陽區', 220100, 3, '中國,吉林省,長春市,朝陽區', 125.288, 43.8334, 'Chaoyang');
INSERT INTO `Sys_Region` VALUES (591, '220105', '二道區', 220100, 3, '中國,吉林省,長春市,二道區', 125.374, 43.865, 'Erdao');
INSERT INTO `Sys_Region` VALUES (592, '220106', '綠園區', 220100, 3, '中國,吉林省,長春市,綠園區', 125.256, 43.8805, 'Lvyuan');
INSERT INTO `Sys_Region` VALUES (593, '220112', '雙陽區', 220100, 3, '中國,吉林省,長春市,雙陽區', 125.656, 43.528, 'Shuangyang');
INSERT INTO `Sys_Region` VALUES (594, '220113', '九臺區', 220100, 3, '中國,吉林省,長春市,九臺區', 125.84, 44.1516, 'Jiutai');
INSERT INTO `Sys_Region` VALUES (595, '220122', '農安縣', 220100, 3, '中國,吉林省,長春市,農安縣', 125.185, 44.4327, 'Nongan');
INSERT INTO `Sys_Region` VALUES (596, '220182', '榆樹市', 220100, 3, '中國,吉林省,長春市,榆樹市', 126.557, 44.8252, 'Yushu');
INSERT INTO `Sys_Region` VALUES (597, '220183', '德惠市', 220100, 3, '中國,吉林省,長春市,德惠市', 125.705, 44.5372, 'Dehui');
INSERT INTO `Sys_Region` VALUES (598, '220200', '吉林市', 220000, 2, '中國,吉林省,吉林市', 126.553, 43.8436, 'Jilin');
INSERT INTO `Sys_Region` VALUES (599, '220202', '昌邑區', 220200, 3, '中國,吉林省,吉林市,昌邑區', 126.574, 43.8818, 'Changyi');
INSERT INTO `Sys_Region` VALUES (600, '220203', '龍潭區', 220200, 3, '中國,吉林省,吉林市,龍潭區', 126.562, 43.9105, 'Longtan');
INSERT INTO `Sys_Region` VALUES (601, '220204', '船營區', 220200, 3, '中國,吉林省,吉林市,船營區', 126.541, 43.8334, 'Chuanying');
INSERT INTO `Sys_Region` VALUES (602, '220211', '豐滿區', 220200, 3, '中國,吉林省,吉林市,豐滿區', 126.562, 43.8224, 'Fengman');
INSERT INTO `Sys_Region` VALUES (603, '220221', '永吉縣', 220200, 3, '中國,吉林省,吉林市,永吉縣', 126.496, 43.672, 'Yongji');
INSERT INTO `Sys_Region` VALUES (604, '220281', '蛟河市', 220200, 3, '中國,吉林省,吉林市,蛟河市', 127.344, 43.727, 'Jiaohe');
INSERT INTO `Sys_Region` VALUES (605, '220282', '樺甸市', 220200, 3, '中國,吉林省,吉林市,樺甸市', 126.746, 42.9721, 'Huadian');
INSERT INTO `Sys_Region` VALUES (606, '220283', '舒蘭市', 220200, 3, '中國,吉林省,吉林市,舒蘭市', 126.965, 44.4058, 'Shulan');
INSERT INTO `Sys_Region` VALUES (607, '220284', '磐石市', 220200, 3, '中國,吉林省,吉林市,磐石市', 126.062, 42.9463, 'Panshi');
INSERT INTO `Sys_Region` VALUES (608, '220300', '四平市', 220000, 2, '中國,吉林省,四平市', 124.371, 43.1703, 'Siping');
INSERT INTO `Sys_Region` VALUES (609, '220302', '鐵西區', 220300, 3, '中國,吉林省,四平市,鐵西區', 124.374, 43.1746, 'Tiexi');
INSERT INTO `Sys_Region` VALUES (610, '220303', '鐵東區', 220300, 3, '中國,吉林省,四平市,鐵東區', 124.41, 43.1624, 'Tiedong');
INSERT INTO `Sys_Region` VALUES (611, '220322', '梨樹縣', 220300, 3, '中國,吉林省,四平市,梨樹縣', 124.336, 43.3072, 'Lishu');
INSERT INTO `Sys_Region` VALUES (612, '220323', '伊通滿族自治縣', 220300, 3, '中國,吉林省,四平市,伊通滿族自治縣', 125.306, 43.3443, 'Yitong');
INSERT INTO `Sys_Region` VALUES (613, '220381', '公主嶺市', 220300, 3, '中國,吉林省,四平市,公主嶺市', 124.823, 43.5045, 'Gongzhuling');
INSERT INTO `Sys_Region` VALUES (614, '220382', '雙遼市', 220300, 3, '中國,吉林省,四平市,雙遼市', 123.501, 43.521, 'Shuangliao');
INSERT INTO `Sys_Region` VALUES (615, '220400', '遼源市', 220000, 2, '中國,吉林省,遼源市', 125.145, 42.9027, 'Liaoyuan');
INSERT INTO `Sys_Region` VALUES (616, '220402', '龍山區', 220400, 3, '中國,吉林省,遼源市,龍山區', 125.136, 42.8971, 'Longshan');
INSERT INTO `Sys_Region` VALUES (617, '220403', '西安區', 220400, 3, '中國,吉林省,遼源市,西安區', 125.149, 42.927, 'Xian');
INSERT INTO `Sys_Region` VALUES (618, '220421', '東豐縣', 220400, 3, '中國,吉林省,遼源市,東豐縣', 125.532, 42.6783, 'Dongfeng');
INSERT INTO `Sys_Region` VALUES (619, '220422', '東遼縣', 220400, 3, '中國,吉林省,遼源市,東遼縣', 124.986, 42.9249, 'Dongliao');
INSERT INTO `Sys_Region` VALUES (620, '220500', '通化市', 220000, 2, '中國,吉林省,通化市', 125.937, 41.7212, 'Tonghua');
INSERT INTO `Sys_Region` VALUES (621, '220502', '東昌區', 220500, 3, '中國,吉林省,通化市,東昌區', 125.955, 41.7285, 'Dongchang');
INSERT INTO `Sys_Region` VALUES (622, '220503', '二道江區', 220500, 3, '中國,吉林省,通化市,二道江區', 126.043, 41.7741, 'Erdaojiang');
INSERT INTO `Sys_Region` VALUES (623, '220521', '通化縣', 220500, 3, '中國,吉林省,通化市,通化縣', 125.759, 41.6793, 'Tonghua');
INSERT INTO `Sys_Region` VALUES (624, '220523', '輝南縣', 220500, 3, '中國,吉林省,通化市,輝南縣', 126.047, 42.685, 'Huinan');
INSERT INTO `Sys_Region` VALUES (625, '220524', '柳河縣', 220500, 3, '中國,吉林省,通化市,柳河縣', 125.745, 42.2847, 'Liuhe');
INSERT INTO `Sys_Region` VALUES (626, '220581', '梅河口市', 220500, 3, '中國,吉林省,通化市,梅河口市', 125.71, 42.5383, 'Meihekou');
INSERT INTO `Sys_Region` VALUES (627, '220582', '集安市', 220500, 3, '中國,吉林省,通化市,集安市', 126.188, 41.1227, 'Jian');
INSERT INTO `Sys_Region` VALUES (628, '220600', '白山市', 220000, 2, '中國,吉林省,白山市', 126.428, 41.9425, 'Baishan');
INSERT INTO `Sys_Region` VALUES (629, '220602', '渾江區', 220600, 3, '中國,吉林省,白山市,渾江區', 126.422, 41.9457, 'Hunjiang');
INSERT INTO `Sys_Region` VALUES (630, '220605', '江源區', 220600, 3, '中國,吉林省,白山市,江源區', 126.591, 42.0566, 'Jiangyuan');
INSERT INTO `Sys_Region` VALUES (631, '220621', '撫松縣', 220600, 3, '中國,吉林省,白山市,撫松縣', 127.28, 42.342, 'Fusong');
INSERT INTO `Sys_Region` VALUES (632, '220622', '靖宇縣', 220600, 3, '中國,吉林省,白山市,靖宇縣', 126.813, 42.3886, 'Jingyu');
INSERT INTO `Sys_Region` VALUES (633, '220623', '長白朝鮮族自治縣', 220600, 3, '中國,吉林省,白山市,長白朝鮮族自治縣', 128.2, 41.42, 'Changbai');
INSERT INTO `Sys_Region` VALUES (634, '220681', '臨江市', 220600, 3, '中國,吉林省,白山市,臨江市', 126.918, 41.8114, 'Linjiang');
INSERT INTO `Sys_Region` VALUES (635, '220700', '松原市', 220000, 2, '中國,吉林省,松原市', 124.824, 45.1182, 'Songyuan');
INSERT INTO `Sys_Region` VALUES (636, '220702', '寧江區', 220700, 3, '中國,吉林省,松原市,寧江區', 124.817, 45.1717, 'Ningjiang');
INSERT INTO `Sys_Region` VALUES (637, '220721', '前郭爾羅斯蒙古族自治縣', 220700, 3, '中國,吉林省,松原市,前郭爾羅斯蒙古族自治縣', 124.824, 45.1173, 'Qianguoerluosi');
INSERT INTO `Sys_Region` VALUES (638, '220722', '長嶺縣', 220700, 3, '中國,吉林省,松原市,長嶺縣', 123.967, 44.2758, 'Changling');
INSERT INTO `Sys_Region` VALUES (639, '220723', '乾安縣', 220700, 3, '中國,吉林省,松原市,乾安縣', 124.027, 45.0107, 'Qianan');
INSERT INTO `Sys_Region` VALUES (640, '220781', '扶余市', 220700, 3, '中國,吉林省,松原市,扶余市', 126.043, 44.9862, 'Fuyu');
INSERT INTO `Sys_Region` VALUES (641, '220800', '白城市', 220000, 2, '中國,吉林省,白城市', 122.841, 45.619, 'Baicheng');
INSERT INTO `Sys_Region` VALUES (642, '220802', '洮北區', 220800, 3, '中國,吉林省,白城市,洮北區', 122.851, 45.6217, 'Taobei');
INSERT INTO `Sys_Region` VALUES (643, '220821', '鎮賚縣', 220800, 3, '中國,吉林省,白城市,鎮賚縣', 123.199, 45.8478, 'Zhenlai');
INSERT INTO `Sys_Region` VALUES (644, '220822', '通榆縣', 220800, 3, '中國,吉林省,白城市,通榆縣', 123.088, 44.8139, 'Tongyu');
INSERT INTO `Sys_Region` VALUES (645, '220881', '洮南市', 220800, 3, '中國,吉林省,白城市,洮南市', 122.788, 45.335, 'Taonan');
INSERT INTO `Sys_Region` VALUES (646, '220882', '大安市', 220800, 3, '中國,吉林省,白城市,大安市', 124.295, 45.5085, 'Daan');
INSERT INTO `Sys_Region` VALUES (647, '222400', '延邊朝鮮族自治州', 220000, 2, '中國,吉林省,延邊朝鮮族自治州', 129.513, 42.9048, 'Yanbian');
INSERT INTO `Sys_Region` VALUES (648, '222401', '延吉市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,延吉市', 129.514, 42.9068, 'Yanji');
INSERT INTO `Sys_Region` VALUES (649, '222402', '圖們市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,圖們市', 129.844, 42.968, 'Tumen');
INSERT INTO `Sys_Region` VALUES (650, '222403', '敦化市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,敦化市', 128.232, 43.373, 'Dunhua');
INSERT INTO `Sys_Region` VALUES (651, '222404', '琿春市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,琿春市', 130.366, 42.8624, 'Hunchun');
INSERT INTO `Sys_Region` VALUES (652, '222405', '龍井市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,龍井市', 129.426, 42.768, 'Longjing');
INSERT INTO `Sys_Region` VALUES (653, '222406', '和龍市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,和龍市', 129.011, 42.5464, 'Helong');
INSERT INTO `Sys_Region` VALUES (654, '222424', '汪清縣', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,汪清縣', 129.771, 43.3128, 'Wangqing');
INSERT INTO `Sys_Region` VALUES (655, '222426', '安圖縣', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,安圖縣', 128.906, 43.1153, 'Antu');
INSERT INTO `Sys_Region` VALUES (656, '230000', '黑龍江省', 100000, 1, '中國,黑龍江省', 126.642, 45.757, 'Heilongjiang');
INSERT INTO `Sys_Region` VALUES (657, '230100', '哈爾濱市', 230000, 2, '中國,黑龍江省,哈爾濱市', 126.642, 45.757, 'Harbin');
INSERT INTO `Sys_Region` VALUES (658, '230102', '道里區', 230100, 3, '中國,黑龍江省,哈爾濱市,道里區', 126.617, 45.7559, 'Daoli');
INSERT INTO `Sys_Region` VALUES (659, '230103', '南崗區', 230100, 3, '中國,黑龍江省,哈爾濱市,南崗區', 126.669, 45.76, 'Nangang');
INSERT INTO `Sys_Region` VALUES (660, '230104', '道外區', 230100, 3, '中國,黑龍江省,哈爾濱市,道外區', 126.649, 45.7919, 'Daowai');
INSERT INTO `Sys_Region` VALUES (661, '230108', '平房區', 230100, 3, '中國,黑龍江省,哈爾濱市,平房區', 126.637, 45.5978, 'Pingfang');
INSERT INTO `Sys_Region` VALUES (662, '230109', '松北區', 230100, 3, '中國,黑龍江省,哈爾濱市,松北區', 126.563, 45.8083, 'Songbei');
INSERT INTO `Sys_Region` VALUES (663, '230110', '香坊區', 230100, 3, '中國,黑龍江省,哈爾濱市,香坊區', 126.68, 45.7238, 'Xiangfang');
INSERT INTO `Sys_Region` VALUES (664, '230111', '呼蘭區', 230100, 3, '中國,黑龍江省,哈爾濱市,呼蘭區', 126.588, 45.889, 'Hulan');
INSERT INTO `Sys_Region` VALUES (665, '230112', '阿城區', 230100, 3, '中國,黑龍江省,哈爾濱市,阿城區', 126.975, 45.5414, 'Acheng');
INSERT INTO `Sys_Region` VALUES (666, '230113', '雙城區', 230100, 3, '中國,黑龍江省,哈爾濱市,雙城區', 126.309, 45.3779, 'Shuangcheng');
INSERT INTO `Sys_Region` VALUES (667, '230123', '依蘭縣', 230100, 3, '中國,黑龍江省,哈爾濱市,依蘭縣', 129.568, 46.3247, 'Yilan');
INSERT INTO `Sys_Region` VALUES (668, '230124', '方正縣', 230100, 3, '中國,黑龍江省,哈爾濱市,方正縣', 128.83, 45.8516, 'Fangzheng');
INSERT INTO `Sys_Region` VALUES (669, '230125', '賓縣', 230100, 3, '中國,黑龍江省,哈爾濱市,賓縣', 127.487, 45.755, 'Binxian');
INSERT INTO `Sys_Region` VALUES (670, '230126', '巴彥縣', 230100, 3, '中國,黑龍江省,哈爾濱市,巴彥縣', 127.408, 46.0815, 'Bayan');
INSERT INTO `Sys_Region` VALUES (671, '230127', '木蘭縣', 230100, 3, '中國,黑龍江省,哈爾濱市,木蘭縣', 128.045, 45.9494, 'Mulan');
INSERT INTO `Sys_Region` VALUES (672, '230128', '通河縣', 230100, 3, '中國,黑龍江省,哈爾濱市,通河縣', 128.746, 45.9901, 'Tonghe');
INSERT INTO `Sys_Region` VALUES (673, '230129', '延壽縣', 230100, 3, '中國,黑龍江省,哈爾濱市,延壽縣', 128.334, 45.4554, 'Yanshou');
INSERT INTO `Sys_Region` VALUES (674, '230183', '尚志市', 230100, 3, '中國,黑龍江省,哈爾濱市,尚志市', 127.962, 45.2174, 'Shangzhi');
INSERT INTO `Sys_Region` VALUES (675, '230184', '五常市', 230100, 3, '中國,黑龍江省,哈爾濱市,五常市', 127.168, 44.9318, 'Wuchang');
INSERT INTO `Sys_Region` VALUES (676, '230200', '齊齊哈爾市', 230000, 2, '中國,黑龍江省,齊齊哈爾市', 123.953, 47.3481, 'Qiqihar');
INSERT INTO `Sys_Region` VALUES (677, '230202', '龍沙區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,龍沙區', 123.958, 47.3178, 'Longsha');
INSERT INTO `Sys_Region` VALUES (678, '230203', '建華區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,建華區', 124.013, 47.3672, 'Jianhua');
INSERT INTO `Sys_Region` VALUES (679, '230204', '鐵鋒區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,鐵鋒區', 123.978, 47.3408, 'Tiefeng');
INSERT INTO `Sys_Region` VALUES (680, '230205', '昂昂溪區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,昂昂溪區', 123.822, 47.1551, 'Angangxi');
INSERT INTO `Sys_Region` VALUES (681, '230206', '富拉爾基區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,富拉爾基區', 123.629, 47.2088, 'Fulaerji');
INSERT INTO `Sys_Region` VALUES (682, '230207', '碾子山區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,碾子山區', 122.882, 47.5166, 'Nianzishan');
INSERT INTO `Sys_Region` VALUES (683, '230208', '梅里斯達斡爾族區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,梅里斯達斡爾族區', 123.753, 47.3095, 'Meilisi');
INSERT INTO `Sys_Region` VALUES (684, '230221', '龍江縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,龍江縣', 123.205, 47.3387, 'Longjiang');
INSERT INTO `Sys_Region` VALUES (685, '230223', '依安縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,依安縣', 125.309, 47.8931, 'Yian');
INSERT INTO `Sys_Region` VALUES (686, '230224', '泰來縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,泰來縣', 123.423, 46.3939, 'Tailai');
INSERT INTO `Sys_Region` VALUES (687, '230225', '甘南縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,甘南縣', 123.503, 47.9244, 'Gannan');
INSERT INTO `Sys_Region` VALUES (688, '230227', '富裕縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,富裕縣', 124.475, 47.7743, 'Fuyu');
INSERT INTO `Sys_Region` VALUES (689, '230229', '克山縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,克山縣', 125.874, 48.0326, 'Keshan');
INSERT INTO `Sys_Region` VALUES (690, '230230', '克東縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,克東縣', 126.249, 48.0383, 'Kedong');
INSERT INTO `Sys_Region` VALUES (691, '230231', '拜泉縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,拜泉縣', 126.092, 47.6082, 'Baiquan');
INSERT INTO `Sys_Region` VALUES (692, '230281', '訥河市', 230200, 3, '中國,黑龍江省,齊齊哈爾市,訥河市', 124.877, 48.4839, 'Nehe');
INSERT INTO `Sys_Region` VALUES (693, '230300', '雞西市', 230000, 2, '中國,黑龍江省,雞西市', 130.976, 45.3, 'Jixi');
INSERT INTO `Sys_Region` VALUES (694, '230302', '雞冠區', 230300, 3, '中國,黑龍江省,雞西市,雞冠區', 130.981, 45.304, 'Jiguan');
INSERT INTO `Sys_Region` VALUES (695, '230303', '恒山區', 230300, 3, '中國,黑龍江省,雞西市,恒山區', 130.905, 45.2107, 'Hengshan');
INSERT INTO `Sys_Region` VALUES (696, '230304', '滴道區', 230300, 3, '中國,黑龍江省,雞西市,滴道區', 130.848, 45.3511, 'Didao');
INSERT INTO `Sys_Region` VALUES (697, '230305', '梨樹區', 230300, 3, '中國,黑龍江省,雞西市,梨樹區', 130.698, 45.0904, 'Lishu');
INSERT INTO `Sys_Region` VALUES (698, '230306', '城子河區', 230300, 3, '中國,黑龍江省,雞西市,城子河區', 131.011, 45.3369, 'Chengzihe');
INSERT INTO `Sys_Region` VALUES (699, '230307', '麻山區', 230300, 3, '中國,黑龍江省,雞西市,麻山區', 130.478, 45.2121, 'Mashan');
INSERT INTO `Sys_Region` VALUES (700, '230321', '雞東縣', 230300, 3, '中國,黑龍江省,雞西市,雞東縣', 131.124, 45.2603, 'Jidong');
INSERT INTO `Sys_Region` VALUES (701, '230381', '虎林市', 230300, 3, '中國,黑龍江省,雞西市,虎林市', 132.937, 45.7629, 'Hulin');
INSERT INTO `Sys_Region` VALUES (702, '230382', '密山市', 230300, 3, '中國,黑龍江省,雞西市,密山市', 131.846, 45.5297, 'Mishan');
INSERT INTO `Sys_Region` VALUES (703, '230400', '鶴崗市', 230000, 2, '中國,黑龍江省,鶴崗市', 130.277, 47.3321, 'Hegang');
INSERT INTO `Sys_Region` VALUES (704, '230402', '向陽區', 230400, 3, '中國,黑龍江省,鶴崗市,向陽區', 130.294, 47.3425, 'Xiangyang');
INSERT INTO `Sys_Region` VALUES (705, '230403', '工農區', 230400, 3, '中國,黑龍江省,鶴崗市,工農區', 130.275, 47.3187, 'Gongnong');
INSERT INTO `Sys_Region` VALUES (706, '230404', '南山區', 230400, 3, '中國,黑龍江省,鶴崗市,南山區', 130.277, 47.314, 'Nanshan');
INSERT INTO `Sys_Region` VALUES (707, '230405', '興安區', 230400, 3, '中國,黑龍江省,鶴崗市,興安區', 130.24, 47.2526, 'Xingan');
INSERT INTO `Sys_Region` VALUES (708, '230406', '東山區', 230400, 3, '中國,黑龍江省,鶴崗市,東山區', 130.317, 47.3385, 'Dongshan');
INSERT INTO `Sys_Region` VALUES (709, '230407', '興山區', 230400, 3, '中國,黑龍江省,鶴崗市,興山區', 130.293, 47.3578, 'Xingshan');
INSERT INTO `Sys_Region` VALUES (710, '230421', '蘿北縣', 230400, 3, '中國,黑龍江省,鶴崗市,蘿北縣', 130.833, 47.5796, 'Luobei');
INSERT INTO `Sys_Region` VALUES (711, '230422', '綏濱縣', 230400, 3, '中國,黑龍江省,鶴崗市,綏濱縣', 131.86, 47.2903, 'Suibin');
INSERT INTO `Sys_Region` VALUES (712, '230500', '雙鴨山市', 230000, 2, '中國,黑龍江省,雙鴨山市', 131.157, 46.6434, 'Shuangyashan');
INSERT INTO `Sys_Region` VALUES (713, '230502', '尖山區', 230500, 3, '中國,黑龍江省,雙鴨山市,尖山區', 131.158, 46.6464, 'Jianshan');
INSERT INTO `Sys_Region` VALUES (714, '230503', '嶺東區', 230500, 3, '中國,黑龍江省,雙鴨山市,嶺東區', 131.165, 46.5904, 'Lingdong');
INSERT INTO `Sys_Region` VALUES (715, '230505', '四方臺區', 230500, 3, '中國,黑龍江省,雙鴨山市,四方臺區', 131.336, 46.595, 'Sifangtai');
INSERT INTO `Sys_Region` VALUES (716, '230506', '寶山區', 230500, 3, '中國,黑龍江省,雙鴨山市,寶山區', 131.402, 46.5772, 'Baoshan');
INSERT INTO `Sys_Region` VALUES (717, '230521', '集賢縣', 230500, 3, '中國,黑龍江省,雙鴨山市,集賢縣', 131.141, 46.7268, 'Jixian');
INSERT INTO `Sys_Region` VALUES (718, '230522', '友誼縣', 230500, 3, '中國,黑龍江省,雙鴨山市,友誼縣', 131.808, 46.7674, 'Youyi');
INSERT INTO `Sys_Region` VALUES (719, '230523', '寶清縣', 230500, 3, '中國,黑龍江省,雙鴨山市,寶清縣', 132.197, 46.3272, 'Baoqing');
INSERT INTO `Sys_Region` VALUES (720, '230524', '饒河縣', 230500, 3, '中國,黑龍江省,雙鴨山市,饒河縣', 134.02, 46.799, 'Raohe');
INSERT INTO `Sys_Region` VALUES (721, '230600', '大慶市', 230000, 2, '中國,黑龍江省,大慶市', 125.113, 46.5907, 'Daqing');
INSERT INTO `Sys_Region` VALUES (722, '230602', '薩爾圖區', 230600, 3, '中國,黑龍江省,大慶市,薩爾圖區', 125.088, 46.5936, 'Saertu');
INSERT INTO `Sys_Region` VALUES (723, '230603', '龍鳳區', 230600, 3, '中國,黑龍江省,大慶市,龍鳳區', 125.117, 46.5327, 'Longfeng');
INSERT INTO `Sys_Region` VALUES (724, '230604', '讓胡路區', 230600, 3, '中國,黑龍江省,大慶市,讓胡路區', 124.871, 46.6522, 'Ranghulu');
INSERT INTO `Sys_Region` VALUES (725, '230605', '紅崗區', 230600, 3, '中國,黑龍江省,大慶市,紅崗區', 124.892, 46.4013, 'Honggang');
INSERT INTO `Sys_Region` VALUES (726, '230606', '大同區', 230600, 3, '中國,黑龍江省,大慶市,大同區', 124.816, 46.033, 'Datong');
INSERT INTO `Sys_Region` VALUES (727, '230621', '肇州縣', 230600, 3, '中國,黑龍江省,大慶市,肇州縣', 125.271, 45.7041, 'Zhaozhou');
INSERT INTO `Sys_Region` VALUES (728, '230622', '肇源縣', 230600, 3, '中國,黑龍江省,大慶市,肇源縣', 125.085, 45.5203, 'Zhaoyuan');
INSERT INTO `Sys_Region` VALUES (729, '230623', '林甸縣', 230600, 3, '中國,黑龍江省,大慶市,林甸縣', 124.876, 47.186, 'Lindian');
INSERT INTO `Sys_Region` VALUES (730, '230624', '杜爾伯特蒙古族自治縣', 230600, 3, '中國,黑龍江省,大慶市,杜爾伯特蒙古族自治縣', 124.449, 46.8651, 'Duerbote');
INSERT INTO `Sys_Region` VALUES (731, '230700', '伊春市', 230000, 2, '中國,黑龍江省,伊春市', 128.899, 47.7248, 'Yichun');
INSERT INTO `Sys_Region` VALUES (732, '230702', '伊春區', 230700, 3, '中國,黑龍江省,伊春市,伊春區', 128.908, 47.728, 'Yichun');
INSERT INTO `Sys_Region` VALUES (733, '230703', '南岔區', 230700, 3, '中國,黑龍江省,伊春市,南岔區', 129.284, 47.139, 'Nancha');
INSERT INTO `Sys_Region` VALUES (734, '230704', '友好區', 230700, 3, '中國,黑龍江省,伊春市,友好區', 128.84, 47.8537, 'Youhao');
INSERT INTO `Sys_Region` VALUES (735, '230705', '西林區', 230700, 3, '中國,黑龍江省,伊春市,西林區', 129.312, 47.481, 'Xilin');
INSERT INTO `Sys_Region` VALUES (736, '230706', '翠巒區', 230700, 3, '中國,黑龍江省,伊春市,翠巒區', 128.667, 47.725, 'Cuiluan');
INSERT INTO `Sys_Region` VALUES (737, '230707', '新青區', 230700, 3, '中國,黑龍江省,伊春市,新青區', 129.537, 48.2907, 'Xinqing');
INSERT INTO `Sys_Region` VALUES (738, '230708', '美溪區', 230700, 3, '中國,黑龍江省,伊春市,美溪區', 129.137, 47.6351, 'Meixi');
INSERT INTO `Sys_Region` VALUES (739, '230709', '金山屯區', 230700, 3, '中國,黑龍江省,伊春市,金山屯區', 129.438, 47.4135, 'Jinshantun');
INSERT INTO `Sys_Region` VALUES (740, '230710', '五營區', 230700, 3, '中國,黑龍江省,伊春市,五營區', 129.245, 48.1079, 'Wuying');
INSERT INTO `Sys_Region` VALUES (741, '230711', '烏馬河區', 230700, 3, '中國,黑龍江省,伊春市,烏馬河區', 128.797, 47.728, 'Wumahe');
INSERT INTO `Sys_Region` VALUES (742, '230712', '湯旺河區', 230700, 3, '中國,黑龍江省,伊春市,湯旺河區', 129.572, 48.4518, 'Tangwanghe');
INSERT INTO `Sys_Region` VALUES (743, '230713', '帶嶺區', 230700, 3, '中國,黑龍江省,伊春市,帶嶺區', 129.024, 47.0255, 'Dailing');
INSERT INTO `Sys_Region` VALUES (744, '230714', '烏伊嶺區', 230700, 3, '中國,黑龍江省,伊春市,烏伊嶺區', 129.44, 48.596, 'Wuyiling');
INSERT INTO `Sys_Region` VALUES (745, '230715', '紅星區', 230700, 3, '中國,黑龍江省,伊春市,紅星區', 129.389, 48.2394, 'Hongxing');
INSERT INTO `Sys_Region` VALUES (746, '230716', '上甘嶺區', 230700, 3, '中國,黑龍江省,伊春市,上甘嶺區', 129.024, 47.9752, 'Shangganling');
INSERT INTO `Sys_Region` VALUES (747, '230722', '嘉蔭縣', 230700, 3, '中國,黑龍江省,伊春市,嘉蔭縣', 130.398, 48.8917, 'Jiayin');
INSERT INTO `Sys_Region` VALUES (748, '230781', '鐵力市', 230700, 3, '中國,黑龍江省,伊春市,鐵力市', 128.032, 46.9857, 'Tieli');
INSERT INTO `Sys_Region` VALUES (749, '230800', '佳木斯市', 230000, 2, '中國,黑龍江省,佳木斯市', 130.362, 46.8096, 'Jiamusi');
INSERT INTO `Sys_Region` VALUES (750, '230803', '向陽區', 230800, 3, '中國,黑龍江省,佳木斯市,向陽區', 130.365, 46.8078, 'Xiangyang');
INSERT INTO `Sys_Region` VALUES (751, '230804', '前進區', 230800, 3, '中國,黑龍江省,佳木斯市,前進區', 130.375, 46.814, 'Qianjin');
INSERT INTO `Sys_Region` VALUES (752, '230805', '東風區', 230800, 3, '中國,黑龍江省,佳木斯市,東風區', 130.404, 46.8226, 'Dongfeng');
INSERT INTO `Sys_Region` VALUES (753, '230811', '郊區', 230800, 3, '中國,黑龍江省,佳木斯市,郊區', 130.327, 46.8096, 'Jiaoqu');
INSERT INTO `Sys_Region` VALUES (754, '230822', '樺南縣', 230800, 3, '中國,黑龍江省,佳木斯市,樺南縣', 130.554, 46.2392, 'Huanan');
INSERT INTO `Sys_Region` VALUES (755, '230826', '樺川縣', 230800, 3, '中國,黑龍江省,佳木斯市,樺川縣', 130.719, 47.023, 'Huachuan');
INSERT INTO `Sys_Region` VALUES (756, '230828', '湯原縣', 230800, 3, '中國,黑龍江省,佳木斯市,湯原縣', 129.91, 46.7276, 'Tangyuan');
INSERT INTO `Sys_Region` VALUES (757, '230833', '撫遠縣', 230800, 3, '中國,黑龍江省,佳木斯市,撫遠縣', 134.296, 48.3679, 'Fuyuan');
INSERT INTO `Sys_Region` VALUES (758, '230881', '同江市', 230800, 3, '中國,黑龍江省,佳木斯市,同江市', 132.511, 47.6421, 'Tongjiang');
INSERT INTO `Sys_Region` VALUES (759, '230882', '富錦市', 230800, 3, '中國,黑龍江省,佳木斯市,富錦市', 132.037, 47.2513, 'Fujin');
INSERT INTO `Sys_Region` VALUES (760, '230900', '七臺河市', 230000, 2, '中國,黑龍江省,七臺河市', 131.016, 45.7713, 'Qitaihe');
INSERT INTO `Sys_Region` VALUES (761, '230902', '新興區', 230900, 3, '中國,黑龍江省,七臺河市,新興區', 130.932, 45.8162, 'Xinxing');
INSERT INTO `Sys_Region` VALUES (762, '230903', '桃山區', 230900, 3, '中國,黑龍江省,七臺河市,桃山區', 131.018, 45.7678, 'Taoshan');
INSERT INTO `Sys_Region` VALUES (763, '230904', '茄子河區', 230900, 3, '中國,黑龍江省,七臺河市,茄子河區', 131.068, 45.7852, 'Qiezihe');
INSERT INTO `Sys_Region` VALUES (764, '230921', '勃利縣', 230900, 3, '中國,黑龍江省,七臺河市,勃利縣', 130.592, 45.755, 'Boli');
INSERT INTO `Sys_Region` VALUES (765, '231000', '牡丹江市', 230000, 2, '中國,黑龍江省,牡丹江市', 129.619, 44.583, 'Mudanjiang');
INSERT INTO `Sys_Region` VALUES (766, '231002', '東安區', 231000, 3, '中國,黑龍江省,牡丹江市,東安區', 129.627, 44.5813, 'Dongan');
INSERT INTO `Sys_Region` VALUES (767, '231003', '陽明區', 231000, 3, '中國,黑龍江省,牡丹江市,陽明區', 129.635, 44.596, 'Yangming');
INSERT INTO `Sys_Region` VALUES (768, '231004', '愛民區', 231000, 3, '中國,黑龍江省,牡丹江市,愛民區', 129.591, 44.5965, 'Aimin');
INSERT INTO `Sys_Region` VALUES (769, '231005', '西安區', 231000, 3, '中國,黑龍江省,牡丹江市,西安區', 129.616, 44.5777, 'Xian');
INSERT INTO `Sys_Region` VALUES (770, '231024', '東寧縣', 231000, 3, '中國,黑龍江省,牡丹江市,東寧縣', 131.128, 44.0661, 'Dongning');
INSERT INTO `Sys_Region` VALUES (771, '231025', '林口縣', 231000, 3, '中國,黑龍江省,牡丹江市,林口縣', 130.284, 45.2781, 'Linkou');
INSERT INTO `Sys_Region` VALUES (772, '231081', '綏芬河市', 231000, 3, '中國,黑龍江省,牡丹江市,綏芬河市', 131.151, 44.4125, 'Suifenhe');
INSERT INTO `Sys_Region` VALUES (773, '231083', '海林市', 231000, 3, '中國,黑龍江省,牡丹江市,海林市', 129.382, 44.59, 'Hailin');
INSERT INTO `Sys_Region` VALUES (774, '231084', '寧安市', 231000, 3, '中國,黑龍江省,牡丹江市,寧安市', 129.483, 44.3402, 'Ningan');
INSERT INTO `Sys_Region` VALUES (775, '231085', '穆棱市', 231000, 3, '中國,黑龍江省,牡丹江市,穆棱市', 130.525, 44.919, 'Muling');
INSERT INTO `Sys_Region` VALUES (776, '231100', '黑河市', 230000, 2, '中國,黑龍江省,黑河市', 127.499, 50.2496, 'Heihe');
INSERT INTO `Sys_Region` VALUES (777, '231102', '愛輝區', 231100, 3, '中國,黑龍江省,黑河市,愛輝區', 127.501, 50.252, 'Aihui');
INSERT INTO `Sys_Region` VALUES (778, '231121', '嫩江縣', 231100, 3, '中國,黑龍江省,黑河市,嫩江縣', 125.226, 49.1784, 'Nenjiang');
INSERT INTO `Sys_Region` VALUES (779, '231123', '遜克縣', 231100, 3, '中國,黑龍江省,黑河市,遜克縣', 128.479, 49.5798, 'Xunke');
INSERT INTO `Sys_Region` VALUES (780, '231124', '孫吳縣', 231100, 3, '中國,黑龍江省,黑河市,孫吳縣', 127.336, 49.4254, 'Sunwu');
INSERT INTO `Sys_Region` VALUES (781, '231181', '北安市', 231100, 3, '中國,黑龍江省,黑河市,北安市', 126.482, 48.2387, 'Beian');
INSERT INTO `Sys_Region` VALUES (782, '231182', '五大連池市', 231100, 3, '中國,黑龍江省,黑河市,五大連池市', 126.203, 48.5151, 'Wudalianchi');
INSERT INTO `Sys_Region` VALUES (783, '231200', '綏化市', 230000, 2, '中國,黑龍江省,綏化市', 126.993, 46.6374, 'Suihua');
INSERT INTO `Sys_Region` VALUES (784, '231202', '北林區', 231200, 3, '中國,黑龍江省,綏化市,北林區', 126.986, 46.6373, 'Beilin');
INSERT INTO `Sys_Region` VALUES (785, '231221', '望奎縣', 231200, 3, '中國,黑龍江省,綏化市,望奎縣', 126.482, 46.8308, 'Wangkui');
INSERT INTO `Sys_Region` VALUES (786, '231222', '蘭西縣', 231200, 3, '中國,黑龍江省,綏化市,蘭西縣', 126.29, 46.2525, 'Lanxi');
INSERT INTO `Sys_Region` VALUES (787, '231223', '青岡縣', 231200, 3, '中國,黑龍江省,綏化市,青岡縣', 126.113, 46.6853, 'Qinggang');
INSERT INTO `Sys_Region` VALUES (788, '231224', '慶安縣', 231200, 3, '中國,黑龍江省,綏化市,慶安縣', 127.508, 46.8802, 'Qingan');
INSERT INTO `Sys_Region` VALUES (789, '231225', '明水縣', 231200, 3, '中國,黑龍江省,綏化市,明水縣', 125.906, 47.1733, 'Mingshui');
INSERT INTO `Sys_Region` VALUES (790, '231226', '綏棱縣', 231200, 3, '中國,黑龍江省,綏化市,綏棱縣', 127.116, 47.2427, 'Suileng');
INSERT INTO `Sys_Region` VALUES (791, '231281', '安達市', 231200, 3, '中國,黑龍江省,綏化市,安達市', 125.344, 46.4177, 'Anda');
INSERT INTO `Sys_Region` VALUES (792, '231282', '肇東市', 231200, 3, '中國,黑龍江省,綏化市,肇東市', 125.962, 46.0513, 'Zhaodong');
INSERT INTO `Sys_Region` VALUES (793, '231283', '海倫市', 231200, 3, '中國,黑龍江省,綏化市,海倫市', 126.968, 47.4609, 'Hailun');
INSERT INTO `Sys_Region` VALUES (794, '232700', '大興安嶺地區', 230000, 2, '中國,黑龍江省,大興安嶺地區', 124.712, 52.3353, 'DaXingAnLing');
INSERT INTO `Sys_Region` VALUES (795, '232701', '加格達奇區', 232700, 3, '中國,黑龍江省,大興安嶺地區,加格達奇區', 124.31, 51.9814, 'Jiagedaqi');
INSERT INTO `Sys_Region` VALUES (796, '232702', '新林區', 232700, 3, '中國,黑龍江省,大興安嶺地區,新林區', 124.398, 51.6734, 'Xinlin');
INSERT INTO `Sys_Region` VALUES (797, '232703', '松嶺區', 232700, 3, '中國,黑龍江省,大興安嶺地區,松嶺區', 124.19, 51.9855, 'Songling');
INSERT INTO `Sys_Region` VALUES (798, '232704', '呼中區', 232700, 3, '中國,黑龍江省,大興安嶺地區,呼中區', 123.6, 52.0335, 'Huzhong');
INSERT INTO `Sys_Region` VALUES (799, '232721', '呼瑪縣', 232700, 3, '中國,黑龍江省,大興安嶺地區,呼瑪縣', 126.662, 51.7311, 'Huma');
INSERT INTO `Sys_Region` VALUES (800, '232722', '塔河縣', 232700, 3, '中國,黑龍江省,大興安嶺地區,塔河縣', 124.71, 52.3343, 'Tahe');
INSERT INTO `Sys_Region` VALUES (801, '232723', '漠河縣', 232700, 3, '中國,黑龍江省,大興安嶺地區,漠河縣', 122.538, 52.97, 'Mohe');
INSERT INTO `Sys_Region` VALUES (802, '310000', '上海市', 100000, 1, '中國,上海', 121.473, 31.2317, 'Shanghai');
INSERT INTO `Sys_Region` VALUES (803, '310100', '上海市', 310000, 2, '中國,上海,上海市', 121.473, 31.2317, 'Shanghai');
INSERT INTO `Sys_Region` VALUES (804, '310101', '黃浦區', 310100, 3, '中國,上海,上海市,黃浦區', 121.493, 31.2234, 'Huangpu');
INSERT INTO `Sys_Region` VALUES (805, '310104', '徐匯區', 310100, 3, '中國,上海,上海市,徐匯區', 121.437, 31.1883, 'Xuhui');
INSERT INTO `Sys_Region` VALUES (806, '310105', '長寧區', 310100, 3, '中國,上海,上海市,長寧區', 121.425, 31.2204, 'Changning');
INSERT INTO `Sys_Region` VALUES (807, '310106', '靜安區', 310100, 3, '中國,上海,上海市,靜安區', 121.444, 31.2288, 'Jingan');
INSERT INTO `Sys_Region` VALUES (808, '310107', '普陀區', 310100, 3, '中國,上海,上海市,普陀區', 121.397, 31.2495, 'Putuo');
INSERT INTO `Sys_Region` VALUES (809, '310108', '閘北區', 310100, 3, '中國,上海,上海市,閘北區', 121.446, 31.2808, 'Zhabei');
INSERT INTO `Sys_Region` VALUES (810, '310109', '虹口區', 310100, 3, '中國,上海,上海市,虹口區', 121.482, 31.2779, 'Hongkou');
INSERT INTO `Sys_Region` VALUES (811, '310110', '楊浦區', 310100, 3, '中國,上海,上海市,楊浦區', 121.526, 31.2595, 'Yangpu');
INSERT INTO `Sys_Region` VALUES (812, '310112', '閔行區', 310100, 3, '中國,上海,上海市,閔行區', 121.382, 31.1125, 'Minhang');
INSERT INTO `Sys_Region` VALUES (813, '310113', '寶山區', 310100, 3, '中國,上海,上海市,寶山區', 121.489, 31.4045, 'Baoshan');
INSERT INTO `Sys_Region` VALUES (814, '310114', '嘉定區', 310100, 3, '中國,上海,上海市,嘉定區', 121.266, 31.3747, 'Jiading');
INSERT INTO `Sys_Region` VALUES (815, '310115', '浦東新區', 310100, 3, '中國,上海,上海市,浦東新區', 121.545, 31.2225, 'Pudong');
INSERT INTO `Sys_Region` VALUES (816, '310116', '金山區', 310100, 3, '中國,上海,上海市,金山區', 121.342, 30.7416, 'Jinshan');
INSERT INTO `Sys_Region` VALUES (817, '310117', '松江區', 310100, 3, '中國,上海,上海市,松江區', 121.229, 31.0322, 'Songjiang');
INSERT INTO `Sys_Region` VALUES (818, '310118', '青浦區', 310100, 3, '中國,上海,上海市,青浦區', 121.124, 31.1497, 'Qingpu');
INSERT INTO `Sys_Region` VALUES (819, '310120', '奉賢區', 310100, 3, '中國,上海,上海市,奉賢區', 121.474, 30.9179, 'Fengxian');
INSERT INTO `Sys_Region` VALUES (820, '310230', '崇明縣', 310100, 3, '中國,上海,上海市,崇明縣', 121.398, 31.6228, 'Chongming');
INSERT INTO `Sys_Region` VALUES (821, '320000', '江蘇省', 100000, 1, '中國,江蘇省', 118.767, 32.0415, 'Jiangsu');
INSERT INTO `Sys_Region` VALUES (822, '320100', '南京市', 320000, 2, '中國,江蘇省,南京市', 118.767, 32.0415, 'Nanjing');
INSERT INTO `Sys_Region` VALUES (823, '320102', '玄武區', 320100, 3, '中國,江蘇省,南京市,玄武區', 118.798, 32.0486, 'Xuanwu');
INSERT INTO `Sys_Region` VALUES (824, '320104', '秦淮區', 320100, 3, '中國,江蘇省,南京市,秦淮區', 118.798, 32.0111, 'Qinhuai');
INSERT INTO `Sys_Region` VALUES (825, '320105', '建鄴區', 320100, 3, '中國,江蘇省,南京市,建鄴區', 118.766, 32.031, 'Jianye');
INSERT INTO `Sys_Region` VALUES (826, '320106', '鼓樓區', 320100, 3, '中國,江蘇省,南京市,鼓樓區', 118.77, 32.0663, 'Gulou');
INSERT INTO `Sys_Region` VALUES (827, '320111', '浦口區', 320100, 3, '中國,江蘇省,南京市,浦口區', 118.628, 32.0588, 'Pukou');
INSERT INTO `Sys_Region` VALUES (828, '320113', '棲霞區', 320100, 3, '中國,江蘇省,南京市,棲霞區', 118.881, 32.1135, 'Qixia');
INSERT INTO `Sys_Region` VALUES (829, '320114', '雨花臺區', 320100, 3, '中國,江蘇省,南京市,雨花臺區', 118.78, 31.992, 'Yuhuatai');
INSERT INTO `Sys_Region` VALUES (830, '320115', '江寧區', 320100, 3, '中國,江蘇省,南京市,江寧區', 118.84, 31.9526, 'Jiangning');
INSERT INTO `Sys_Region` VALUES (831, '320116', '六合區', 320100, 3, '中國,江蘇省,南京市,六合區', 118.841, 32.3422, 'Luhe');
INSERT INTO `Sys_Region` VALUES (832, '320117', '溧水區', 320100, 3, '中國,江蘇省,南京市,溧水區', 119.029, 31.6531, 'Lishui');
INSERT INTO `Sys_Region` VALUES (833, '320118', '高淳區', 320100, 3, '中國,江蘇省,南京市,高淳區', 118.876, 31.3271, 'Gaochun');
INSERT INTO `Sys_Region` VALUES (834, '320200', '無錫市', 320000, 2, '中國,江蘇省,無錫市', 120.302, 31.5747, 'Wuxi');
INSERT INTO `Sys_Region` VALUES (835, '320202', '崇安區', 320200, 3, '中國,江蘇省,無錫市,崇安區', 120.3, 31.58, 'Chongan');
INSERT INTO `Sys_Region` VALUES (836, '320203', '南長區', 320200, 3, '中國,江蘇省,無錫市,南長區', 120.309, 31.5636, 'Nanchang');
INSERT INTO `Sys_Region` VALUES (837, '320204', '北塘區', 320200, 3, '中國,江蘇省,無錫市,北塘區', 120.294, 31.6059, 'Beitang');
INSERT INTO `Sys_Region` VALUES (838, '320205', '錫山區', 320200, 3, '中國,江蘇省,無錫市,錫山區', 120.357, 31.5886, 'Xishan');
INSERT INTO `Sys_Region` VALUES (839, '320206', '惠山區', 320200, 3, '中國,江蘇省,無錫市,惠山區', 120.298, 31.6809, 'Huishan');
INSERT INTO `Sys_Region` VALUES (840, '320211', '濱湖區', 320200, 3, '中國,江蘇省,無錫市,濱湖區', 120.295, 31.5216, 'Binhu');
INSERT INTO `Sys_Region` VALUES (841, '320281', '江陰市', 320200, 3, '中國,江蘇省,無錫市,江陰市', 120.285, 31.92, 'Jiangyin');
INSERT INTO `Sys_Region` VALUES (842, '320282', '宜興市', 320200, 3, '中國,江蘇省,無錫市,宜興市', 119.824, 31.3398, 'Yixing');
INSERT INTO `Sys_Region` VALUES (843, '320300', '徐州市', 320000, 2, '中國,江蘇省,徐州市', 117.185, 34.2618, 'Xuzhou');
INSERT INTO `Sys_Region` VALUES (844, '320302', '鼓樓區', 320300, 3, '中國,江蘇省,徐州市,鼓樓區', 117.186, 34.2885, 'Gulou');
INSERT INTO `Sys_Region` VALUES (845, '320303', '云龍區', 320300, 3, '中國,江蘇省,徐州市,云龍區', 117.231, 34.249, 'Yunlong');
INSERT INTO `Sys_Region` VALUES (846, '320305', '賈汪區', 320300, 3, '中國,江蘇省,徐州市,賈汪區', 117.453, 34.4426, 'Jiawang');
INSERT INTO `Sys_Region` VALUES (847, '320311', '泉山區', 320300, 3, '中國,江蘇省,徐州市,泉山區', 117.194, 34.2442, 'Quanshan');
INSERT INTO `Sys_Region` VALUES (848, '320312', '銅山區', 320300, 3, '中國,江蘇省,徐州市,銅山區', 117.184, 34.1929, 'Tongshan');
INSERT INTO `Sys_Region` VALUES (849, '320321', '豐縣', 320300, 3, '中國,江蘇省,徐州市,豐縣', 116.6, 34.6997, 'Fengxian');
INSERT INTO `Sys_Region` VALUES (850, '320322', '沛縣', 320300, 3, '中國,江蘇省,徐州市,沛縣', 116.937, 34.7216, 'Peixian');
INSERT INTO `Sys_Region` VALUES (851, '320324', '睢寧縣', 320300, 3, '中國,江蘇省,徐州市,睢寧縣', 117.941, 33.9127, 'Suining');
INSERT INTO `Sys_Region` VALUES (852, '320381', '新沂市', 320300, 3, '中國,江蘇省,徐州市,新沂市', 118.355, 34.3694, 'Xinyi');
INSERT INTO `Sys_Region` VALUES (853, '320382', '邳州市', 320300, 3, '中國,江蘇省,徐州市,邳州市', 117.959, 34.3333, 'Pizhou');
INSERT INTO `Sys_Region` VALUES (854, '320400', '常州市', 320000, 2, '中國,江蘇省,常州市', 119.947, 31.7728, 'Changzhou');
INSERT INTO `Sys_Region` VALUES (855, '320402', '天寧區', 320400, 3, '中國,江蘇省,常州市,天寧區', 119.951, 31.7521, 'Tianning');
INSERT INTO `Sys_Region` VALUES (856, '320404', '鐘樓區', 320400, 3, '中國,江蘇省,常州市,鐘樓區', 119.902, 31.8022, 'Zhonglou');
INSERT INTO `Sys_Region` VALUES (857, '320405', '戚墅堰區', 320400, 3, '中國,江蘇省,常州市,戚墅堰區', 120.061, 31.7196, 'Qishuyan');
INSERT INTO `Sys_Region` VALUES (858, '320411', '新北區', 320400, 3, '中國,江蘇省,常州市,新北區', 119.971, 31.8305, 'Xinbei');
INSERT INTO `Sys_Region` VALUES (859, '320412', '武進區', 320400, 3, '中國,江蘇省,常州市,武進區', 119.942, 31.7009, 'Wujin');
INSERT INTO `Sys_Region` VALUES (860, '320481', '溧陽市', 320400, 3, '中國,江蘇省,常州市,溧陽市', 119.484, 31.4154, 'Liyang');
INSERT INTO `Sys_Region` VALUES (861, '320482', '金壇市', 320400, 3, '中國,江蘇省,常州市,金壇市', 119.578, 31.7404, 'Jintan');
INSERT INTO `Sys_Region` VALUES (862, '320500', '蘇州市', 320000, 2, '中國,江蘇省,蘇州市', 120.62, 31.2994, 'Suzhou');
INSERT INTO `Sys_Region` VALUES (863, '320505', '虎丘區', 320500, 3, '中國,江蘇省,蘇州市,虎丘區', 120.573, 31.2953, 'Huqiu');
INSERT INTO `Sys_Region` VALUES (864, '320506', '吳中區', 320500, 3, '中國,江蘇省,蘇州市,吳中區', 120.632, 31.2623, 'Wuzhong');
INSERT INTO `Sys_Region` VALUES (865, '320507', '相城區', 320500, 3, '中國,江蘇省,蘇州市,相城區', 120.642, 31.3689, 'Xiangcheng');
INSERT INTO `Sys_Region` VALUES (866, '320508', '姑蘇區', 320500, 3, '中國,江蘇省,蘇州市,姑蘇區', 120.62, 31.2994, 'Gusu');
INSERT INTO `Sys_Region` VALUES (867, '320509', '吳江區', 320500, 3, '中國,江蘇省,蘇州市,吳江區', 120.638, 31.1598, 'Wujiang');
INSERT INTO `Sys_Region` VALUES (868, '320581', '常熟市', 320500, 3, '中國,江蘇省,蘇州市,常熟市', 120.752, 31.6537, 'Changshu');
INSERT INTO `Sys_Region` VALUES (869, '320582', '張家港市', 320500, 3, '中國,江蘇省,蘇州市,張家港市', 120.555, 31.8753, 'Zhangjiagang');
INSERT INTO `Sys_Region` VALUES (870, '320583', '昆山市', 320500, 3, '中國,江蘇省,蘇州市,昆山市', 120.981, 31.3846, 'Kunshan');
INSERT INTO `Sys_Region` VALUES (871, '320585', '太倉市', 320500, 3, '中國,江蘇省,蘇州市,太倉市', 121.109, 31.4497, 'Taicang');
INSERT INTO `Sys_Region` VALUES (872, '320600', '南通市', 320000, 2, '中國,江蘇省,南通市', 120.865, 32.0162, 'Nantong');
INSERT INTO `Sys_Region` VALUES (873, '320602', '崇川區', 320600, 3, '中國,江蘇省,南通市,崇川區', 120.857, 32.0098, 'Chongchuan');
INSERT INTO `Sys_Region` VALUES (874, '320611', '港閘區', 320600, 3, '中國,江蘇省,南通市,港閘區', 120.818, 32.0316, 'Gangzha');
INSERT INTO `Sys_Region` VALUES (875, '320612', '通州區', 320600, 3, '中國,江蘇省,南通市,通州區', 121.073, 32.0676, 'Tongzhou');
INSERT INTO `Sys_Region` VALUES (876, '320621', '海安縣', 320600, 3, '中國,江蘇省,南通市,海安縣', 120.459, 32.5451, 'Haian');
INSERT INTO `Sys_Region` VALUES (877, '320623', '如東縣', 320600, 3, '中國,江蘇省,南通市,如東縣', 121.189, 32.3144, 'Rudong');
INSERT INTO `Sys_Region` VALUES (878, '320681', '啟東市', 320600, 3, '中國,江蘇省,南通市,啟東市', 121.66, 31.8108, 'Qidong');
INSERT INTO `Sys_Region` VALUES (879, '320682', '如皋市', 320600, 3, '中國,江蘇省,南通市,如皋市', 120.56, 32.376, 'Rugao');
INSERT INTO `Sys_Region` VALUES (880, '320684', '海門市', 320600, 3, '中國,江蘇省,南通市,海門市', 121.17, 31.8942, 'Haimen');
INSERT INTO `Sys_Region` VALUES (881, '320700', '連云港市', 320000, 2, '中國,江蘇省,連云港市', 119.179, 34.6, 'Lianyungang');
INSERT INTO `Sys_Region` VALUES (882, '320703', '連云區', 320700, 3, '中國,江蘇省,連云港市,連云區', 119.373, 34.7529, 'Lianyun');
INSERT INTO `Sys_Region` VALUES (883, '320706', '海州區', 320700, 3, '中國,江蘇省,連云港市,海州區', 119.131, 34.5699, 'Haizhou');
INSERT INTO `Sys_Region` VALUES (884, '320707', '贛榆區', 320700, 3, '中國,江蘇省,連云港市,贛榆區', 119.129, 34.8392, 'Ganyu');
INSERT INTO `Sys_Region` VALUES (885, '320722', '東海縣', 320700, 3, '中國,江蘇省,連云港市,東海縣', 118.771, 34.5421, 'Donghai');
INSERT INTO `Sys_Region` VALUES (886, '320723', '灌云縣', 320700, 3, '中國,江蘇省,連云港市,灌云縣', 119.239, 34.2839, 'Guanyun');
INSERT INTO `Sys_Region` VALUES (887, '320724', '灌南縣', 320700, 3, '中國,江蘇省,連云港市,灌南縣', 119.356, 34.09, 'Guannan');
INSERT INTO `Sys_Region` VALUES (888, '320800', '淮安市', 320000, 2, '中國,江蘇省,淮安市', 119.021, 33.5975, 'Huaian');
INSERT INTO `Sys_Region` VALUES (889, '320802', '清河區', 320800, 3, '中國,江蘇省,淮安市,清河區', 119.008, 33.5995, 'Qinghe');
INSERT INTO `Sys_Region` VALUES (890, '320803', '淮安區', 320800, 3, '中國,江蘇省,淮安市,淮安區', 119.021, 33.5975, 'Huaian');
INSERT INTO `Sys_Region` VALUES (891, '320804', '淮陰區', 320800, 3, '中國,江蘇省,淮安市,淮陰區', 119.035, 33.6317, 'Huaiyin');
INSERT INTO `Sys_Region` VALUES (892, '320811', '清浦區', 320800, 3, '中國,江蘇省,淮安市,清浦區', 119.026, 33.5523, 'Qingpu');
INSERT INTO `Sys_Region` VALUES (893, '320826', '漣水縣', 320800, 3, '中國,江蘇省,淮安市,漣水縣', 119.261, 33.7809, 'Lianshui');
INSERT INTO `Sys_Region` VALUES (894, '320829', '洪澤縣', 320800, 3, '中國,江蘇省,淮安市,洪澤縣', 118.873, 33.2943, 'Hongze');
INSERT INTO `Sys_Region` VALUES (895, '320830', '盱眙縣', 320800, 3, '中國,江蘇省,淮安市,盱眙縣', 118.545, 33.0109, 'Xuyi');
INSERT INTO `Sys_Region` VALUES (896, '320831', '金湖縣', 320800, 3, '中國,江蘇省,淮安市,金湖縣', 119.023, 33.0222, 'Jinhu');
INSERT INTO `Sys_Region` VALUES (897, '320900', '鹽城市', 320000, 2, '中國,江蘇省,鹽城市', 120.14, 33.3776, 'Yancheng');
INSERT INTO `Sys_Region` VALUES (898, '320902', '亭湖區', 320900, 3, '中國,江蘇省,鹽城市,亭湖區', 120.166, 33.3783, 'Tinghu');
INSERT INTO `Sys_Region` VALUES (899, '320903', '鹽都區', 320900, 3, '中國,江蘇省,鹽城市,鹽都區', 120.154, 33.3373, 'Yandu');
INSERT INTO `Sys_Region` VALUES (900, '320921', '響水縣', 320900, 3, '中國,江蘇省,鹽城市,響水縣', 119.57, 34.2051, 'Xiangshui');
INSERT INTO `Sys_Region` VALUES (901, '320922', '濱海縣', 320900, 3, '中國,江蘇省,鹽城市,濱海縣', 119.821, 33.9897, 'Binhai');
INSERT INTO `Sys_Region` VALUES (902, '320923', '阜寧縣', 320900, 3, '中國,江蘇省,鹽城市,阜寧縣', 119.802, 33.7823, 'Funing');
INSERT INTO `Sys_Region` VALUES (903, '320924', '射陽縣', 320900, 3, '中國,江蘇省,鹽城市,射陽縣', 120.26, 33.7764, 'Sheyang');
INSERT INTO `Sys_Region` VALUES (904, '320925', '建湖縣', 320900, 3, '中國,江蘇省,鹽城市,建湖縣', 119.799, 33.4724, 'Jianhu');
INSERT INTO `Sys_Region` VALUES (905, '320981', '東臺市', 320900, 3, '中國,江蘇省,鹽城市,東臺市', 120.324, 32.8508, 'Dongtai');
INSERT INTO `Sys_Region` VALUES (906, '320982', '大豐市', 320900, 3, '中國,江蘇省,鹽城市,大豐市', 120.466, 33.1989, 'Dafeng');
INSERT INTO `Sys_Region` VALUES (907, '321000', '揚州市', 320000, 2, '中國,江蘇省,揚州市', 119.421, 32.3932, 'Yangzhou');
INSERT INTO `Sys_Region` VALUES (908, '321002', '廣陵區', 321000, 3, '中國,江蘇省,揚州市,廣陵區', 119.432, 32.3947, 'Guangling');
INSERT INTO `Sys_Region` VALUES (909, '321003', '邗江區', 321000, 3, '中國,江蘇省,揚州市,邗江區', 119.398, 32.3765, 'Hanjiang');
INSERT INTO `Sys_Region` VALUES (910, '321012', '江都區', 321000, 3, '中國,江蘇省,揚州市,江都區', 119.567, 32.4266, 'Jiangdu');
INSERT INTO `Sys_Region` VALUES (911, '321023', '寶應縣', 321000, 3, '中國,江蘇省,揚州市,寶應縣', 119.312, 33.2355, 'Baoying');
INSERT INTO `Sys_Region` VALUES (912, '321081', '儀征市', 321000, 3, '中國,江蘇省,揚州市,儀征市', 119.184, 32.272, 'Yizheng');
INSERT INTO `Sys_Region` VALUES (913, '321084', '高郵市', 321000, 3, '中國,江蘇省,揚州市,高郵市', 119.46, 32.7813, 'Gaoyou');
INSERT INTO `Sys_Region` VALUES (914, '321100', '鎮江市', 320000, 2, '中國,江蘇省,鎮江市', 119.453, 32.2044, 'Zhenjiang');
INSERT INTO `Sys_Region` VALUES (915, '321102', '京口區', 321100, 3, '中國,江蘇省,鎮江市,京口區', 119.469, 32.1981, 'Jingkou');
INSERT INTO `Sys_Region` VALUES (916, '321111', '潤州區', 321100, 3, '中國,江蘇省,鎮江市,潤州區', 119.411, 32.1952, 'Runzhou');
INSERT INTO `Sys_Region` VALUES (917, '321112', '丹徒區', 321100, 3, '中國,江蘇省,鎮江市,丹徒區', 119.434, 32.1318, 'Dantu');
INSERT INTO `Sys_Region` VALUES (918, '321181', '丹陽市', 321100, 3, '中國,江蘇省,鎮江市,丹陽市', 119.575, 31.9912, 'Danyang');
INSERT INTO `Sys_Region` VALUES (919, '321182', '揚中市', 321100, 3, '中國,江蘇省,鎮江市,揚中市', 119.797, 32.2363, 'Yangzhong');
INSERT INTO `Sys_Region` VALUES (920, '321183', '句容市', 321100, 3, '中國,江蘇省,鎮江市,句容市', 119.165, 31.9559, 'Jurong');
INSERT INTO `Sys_Region` VALUES (921, '321200', '泰州市', 320000, 2, '中國,江蘇省,泰州市', 119.915, 32.4849, 'Taizhou');
INSERT INTO `Sys_Region` VALUES (922, '321202', '海陵區', 321200, 3, '中國,江蘇省,泰州市,海陵區', 119.919, 32.491, 'Hailing');
INSERT INTO `Sys_Region` VALUES (923, '321203', '高港區', 321200, 3, '中國,江蘇省,泰州市,高港區', 119.881, 32.3183, 'Gaogang');
INSERT INTO `Sys_Region` VALUES (924, '321204', '姜堰區', 321200, 3, '中國,江蘇省,泰州市,姜堰區', 120.148, 32.5085, 'Jiangyan');
INSERT INTO `Sys_Region` VALUES (925, '321281', '興化市', 321200, 3, '中國,江蘇省,泰州市,興化市', 119.852, 32.9094, 'Xinghua');
INSERT INTO `Sys_Region` VALUES (926, '321282', '靖江市', 321200, 3, '中國,江蘇省,泰州市,靖江市', 120.273, 32.0159, 'Jingjiang');
INSERT INTO `Sys_Region` VALUES (927, '321283', '泰興市', 321200, 3, '中國,江蘇省,泰州市,泰興市', 120.052, 32.1719, 'Taixing');
INSERT INTO `Sys_Region` VALUES (928, '321300', '宿遷市', 320000, 2, '中國,江蘇省,宿遷市', 118.293, 33.9452, 'Suqian');
INSERT INTO `Sys_Region` VALUES (929, '321302', '宿城區', 321300, 3, '中國,江蘇省,宿遷市,宿城區', 118.291, 33.9422, 'Sucheng');
INSERT INTO `Sys_Region` VALUES (930, '321311', '宿豫區', 321300, 3, '中國,江蘇省,宿遷市,宿豫區', 118.329, 33.9467, 'Suyu');
INSERT INTO `Sys_Region` VALUES (931, '321322', '沭陽縣', 321300, 3, '中國,江蘇省,宿遷市,沭陽縣', 118.769, 34.1145, 'Shuyang');
INSERT INTO `Sys_Region` VALUES (932, '321323', '泗陽縣', 321300, 3, '中國,江蘇省,宿遷市,泗陽縣', 118.703, 33.721, 'Siyang');
INSERT INTO `Sys_Region` VALUES (933, '321324', '泗洪縣', 321300, 3, '中國,江蘇省,宿遷市,泗洪縣', 118.217, 33.46, 'Sihong');
INSERT INTO `Sys_Region` VALUES (934, '330000', '浙江省', 100000, 1, '中國,浙江省', 120.154, 30.2875, 'Zhejiang');
INSERT INTO `Sys_Region` VALUES (935, '330100', '杭州市', 330000, 2, '中國,浙江省,杭州市', 120.154, 30.2875, 'Hangzhou');
INSERT INTO `Sys_Region` VALUES (936, '330102', '上城區', 330100, 3, '中國,浙江省,杭州市,上城區', 120.169, 30.2425, 'Shangcheng');
INSERT INTO `Sys_Region` VALUES (937, '330103', '下城區', 330100, 3, '中國,浙江省,杭州市,下城區', 120.181, 30.2815, 'Xiacheng');
INSERT INTO `Sys_Region` VALUES (938, '330104', '江干區', 330100, 3, '中國,浙江省,杭州市,江干區', 120.205, 30.2572, 'Jianggan');
INSERT INTO `Sys_Region` VALUES (939, '330105', '拱墅區', 330100, 3, '中國,浙江省,杭州市,拱墅區', 120.142, 30.3197, 'Gongshu');
INSERT INTO `Sys_Region` VALUES (940, '330106', '西湖區', 330100, 3, '中國,浙江省,杭州市,西湖區', 120.13, 30.2595, 'Xihu');
INSERT INTO `Sys_Region` VALUES (941, '330108', '濱江區', 330100, 3, '中國,浙江省,杭州市,濱江區', 120.212, 30.2083, 'Binjiang');
INSERT INTO `Sys_Region` VALUES (942, '330109', '蕭山區', 330100, 3, '中國,浙江省,杭州市,蕭山區', 120.265, 30.185, 'Xiaoshan');
INSERT INTO `Sys_Region` VALUES (943, '330110', '余杭區', 330100, 3, '中國,浙江省,杭州市,余杭區', 120.3, 30.4183, 'Yuhang');
INSERT INTO `Sys_Region` VALUES (944, '330122', '桐廬縣', 330100, 3, '中國,浙江省,杭州市,桐廬縣', 119.689, 29.7978, 'Tonglu');
INSERT INTO `Sys_Region` VALUES (945, '330127', '淳安縣', 330100, 3, '中國,浙江省,杭州市,淳安縣', 119.043, 29.6099, 'Chunan');
INSERT INTO `Sys_Region` VALUES (946, '330182', '建德市', 330100, 3, '中國,浙江省,杭州市,建德市', 119.282, 29.476, 'Jiande');
INSERT INTO `Sys_Region` VALUES (947, '330183', '富陽區', 330100, 3, '中國,浙江省,杭州市,富陽區', 119.96, 30.0488, 'Fuyang');
INSERT INTO `Sys_Region` VALUES (948, '330185', '臨安市', 330100, 3, '中國,浙江省,杭州市,臨安市', 119.725, 30.2345, 'Linan');
INSERT INTO `Sys_Region` VALUES (949, '330200', '寧波市', 330000, 2, '中國,浙江省,寧波市', 121.55, 29.8684, 'Ningbo');
INSERT INTO `Sys_Region` VALUES (950, '330203', '海曙區', 330200, 3, '中國,浙江省,寧波市,海曙區', 121.551, 29.8598, 'Haishu');
INSERT INTO `Sys_Region` VALUES (951, '330204', '江東區', 330200, 3, '中國,浙江省,寧波市,江東區', 121.57, 29.867, 'Jiangdong');
INSERT INTO `Sys_Region` VALUES (952, '330205', '江北區', 330200, 3, '中國,浙江省,寧波市,江北區', 121.557, 29.8878, 'Jiangbei');
INSERT INTO `Sys_Region` VALUES (953, '330206', '北侖區', 330200, 3, '中國,浙江省,寧波市,北侖區', 121.844, 29.9007, 'Beilun');
INSERT INTO `Sys_Region` VALUES (954, '330211', '鎮海區', 330200, 3, '中國,浙江省,寧波市,鎮海區', 121.716, 29.9489, 'Zhenhai');
INSERT INTO `Sys_Region` VALUES (955, '330212', '鄞州區', 330200, 3, '中國,浙江省,寧波市,鄞州區', 121.548, 29.8161, 'Yinzhou');
INSERT INTO `Sys_Region` VALUES (956, '330225', '象山縣', 330200, 3, '中國,浙江省,寧波市,象山縣', 121.869, 29.4776, 'Xiangshan');
INSERT INTO `Sys_Region` VALUES (957, '330226', '寧海縣', 330200, 3, '中國,浙江省,寧波市,寧海縣', 121.431, 29.2889, 'Ninghai');
INSERT INTO `Sys_Region` VALUES (958, '330281', '余姚市', 330200, 3, '中國,浙江省,寧波市,余姚市', 121.153, 30.0387, 'Yuyao');
INSERT INTO `Sys_Region` VALUES (959, '330282', '慈溪市', 330200, 3, '中國,浙江省,寧波市,慈溪市', 121.266, 30.1696, 'Cixi');
INSERT INTO `Sys_Region` VALUES (960, '330283', '奉化市', 330200, 3, '中國,浙江省,寧波市,奉化市', 121.41, 29.6554, 'Fenghua');
INSERT INTO `Sys_Region` VALUES (961, '330300', '溫州市', 330000, 2, '中國,浙江省,溫州市', 120.672, 28.0006, 'Wenzhou');
INSERT INTO `Sys_Region` VALUES (962, '330302', '鹿城區', 330300, 3, '中國,浙江省,溫州市,鹿城區', 120.655, 28.0149, 'Lucheng');
INSERT INTO `Sys_Region` VALUES (963, '330303', '龍灣區', 330300, 3, '中國,浙江省,溫州市,龍灣區', 120.831, 27.9128, 'Longwan');
INSERT INTO `Sys_Region` VALUES (964, '330304', '甌海區', 330300, 3, '中國,浙江省,溫州市,甌海區', 120.638, 28.0071, 'Ouhai');
INSERT INTO `Sys_Region` VALUES (965, '330322', '洞頭縣', 330300, 3, '中國,浙江省,溫州市,洞頭縣', 121.156, 27.8363, 'Dongtou');
INSERT INTO `Sys_Region` VALUES (966, '330324', '永嘉縣', 330300, 3, '中國,浙江省,溫州市,永嘉縣', 120.693, 28.1546, 'Yongjia');
INSERT INTO `Sys_Region` VALUES (967, '330326', '平陽縣', 330300, 3, '中國,浙江省,溫州市,平陽縣', 120.565, 27.6625, 'Pingyang');
INSERT INTO `Sys_Region` VALUES (968, '330327', '蒼南縣', 330300, 3, '中國,浙江省,溫州市,蒼南縣', 120.426, 27.5174, 'Cangnan');
INSERT INTO `Sys_Region` VALUES (969, '330328', '文成縣', 330300, 3, '中國,浙江省,溫州市,文成縣', 120.091, 27.7868, 'Wencheng');
INSERT INTO `Sys_Region` VALUES (970, '330329', '泰順縣', 330300, 3, '中國,浙江省,溫州市,泰順縣', 119.718, 27.5569, 'Taishun');
INSERT INTO `Sys_Region` VALUES (971, '330381', '瑞安市', 330300, 3, '中國,浙江省,溫州市,瑞安市', 120.655, 27.7804, 'Ruian');
INSERT INTO `Sys_Region` VALUES (972, '330382', '樂清市', 330300, 3, '中國,浙江省,溫州市,樂清市', 120.962, 28.124, 'Yueqing');
INSERT INTO `Sys_Region` VALUES (973, '330400', '嘉興市', 330000, 2, '中國,浙江省,嘉興市', 120.751, 30.7627, 'Jiaxing');
INSERT INTO `Sys_Region` VALUES (974, '330402', '南湖區', 330400, 3, '中國,浙江省,嘉興市,南湖區', 120.785, 30.7486, 'Nanhu');
INSERT INTO `Sys_Region` VALUES (975, '330411', '秀洲區', 330400, 3, '中國,浙江省,嘉興市,秀洲區', 120.709, 30.7645, 'Xiuzhou');
INSERT INTO `Sys_Region` VALUES (976, '330421', '嘉善縣', 330400, 3, '中國,浙江省,嘉興市,嘉善縣', 120.926, 30.8299, 'Jiashan');
INSERT INTO `Sys_Region` VALUES (977, '330424', '海鹽縣', 330400, 3, '中國,浙江省,嘉興市,海鹽縣', 120.946, 30.5255, 'Haiyan');
INSERT INTO `Sys_Region` VALUES (978, '330481', '海寧市', 330400, 3, '中國,浙江省,嘉興市,海寧市', 120.681, 30.5097, 'Haining');
INSERT INTO `Sys_Region` VALUES (979, '330482', '平湖市', 330400, 3, '中國,浙江省,嘉興市,平湖市', 121.022, 30.6962, 'Pinghu');
INSERT INTO `Sys_Region` VALUES (980, '330483', '桐鄉市', 330400, 3, '中國,浙江省,嘉興市,桐鄉市', 120.565, 30.6302, 'Tongxiang');
INSERT INTO `Sys_Region` VALUES (981, '330500', '湖州市', 330000, 2, '中國,浙江省,湖州市', 120.102, 30.8672, 'Huzhou');
INSERT INTO `Sys_Region` VALUES (982, '330502', '吳興區', 330500, 3, '中國,浙江省,湖州市,吳興區', 120.125, 30.8575, 'Wuxing');
INSERT INTO `Sys_Region` VALUES (983, '330503', '南潯區', 330500, 3, '中國,浙江省,湖州市,南潯區', 120.42, 30.8669, 'Nanxun');
INSERT INTO `Sys_Region` VALUES (984, '330521', '德清縣', 330500, 3, '中國,浙江省,湖州市,德清縣', 119.978, 30.5337, 'Deqing');
INSERT INTO `Sys_Region` VALUES (985, '330522', '長興縣', 330500, 3, '中國,浙江省,湖州市,長興縣', 119.908, 31.0061, 'Changxing');
INSERT INTO `Sys_Region` VALUES (986, '330523', '安吉縣', 330500, 3, '中國,浙江省,湖州市,安吉縣', 119.682, 30.638, 'Anji');
INSERT INTO `Sys_Region` VALUES (987, '330600', '紹興市', 330000, 2, '中國,浙江省,紹興市', 120.582, 29.9971, 'Shaoxing');
INSERT INTO `Sys_Region` VALUES (988, '330602', '越城區', 330600, 3, '中國,浙江省,紹興市,越城區', 120.582, 29.989, 'Yuecheng');
INSERT INTO `Sys_Region` VALUES (989, '330603', '柯橋區', 330600, 3, '中國,浙江省,紹興市,柯橋區', 120.493, 30.0876, 'Keqiao ');
INSERT INTO `Sys_Region` VALUES (990, '330604', '上虞區', 330600, 3, '中國,浙江省,紹興市,上虞區', 120.476, 30.078, 'Shangyu');
INSERT INTO `Sys_Region` VALUES (991, '330624', '新昌縣', 330600, 3, '中國,浙江省,紹興市,新昌縣', 120.904, 29.4999, 'Xinchang');
INSERT INTO `Sys_Region` VALUES (992, '330681', '諸暨市', 330600, 3, '中國,浙江省,紹興市,諸暨市', 120.236, 29.7136, 'Zhuji');
INSERT INTO `Sys_Region` VALUES (993, '330683', '嵊州市', 330600, 3, '中國,浙江省,紹興市,嵊州市', 120.822, 29.5885, 'Shengzhou');
INSERT INTO `Sys_Region` VALUES (994, '330700', '金華市', 330000, 2, '中國,浙江省,金華市', 119.65, 29.0895, 'Jinhua');
INSERT INTO `Sys_Region` VALUES (995, '330702', '婺城區', 330700, 3, '中國,浙江省,金華市,婺城區', 119.571, 29.0952, 'Wucheng');
INSERT INTO `Sys_Region` VALUES (996, '330703', '金東區', 330700, 3, '中國,浙江省,金華市,金東區', 119.693, 29.0991, 'Jindong');
INSERT INTO `Sys_Region` VALUES (997, '330723', '武義縣', 330700, 3, '中國,浙江省,金華市,武義縣', 119.816, 28.8933, 'Wuyi');
INSERT INTO `Sys_Region` VALUES (998, '330726', '浦江縣', 330700, 3, '中國,浙江省,金華市,浦江縣', 119.892, 29.4535, 'Pujiang');
INSERT INTO `Sys_Region` VALUES (999, '330727', '磐安縣', 330700, 3, '中國,浙江省,金華市,磐安縣', 120.45, 29.0573, 'Panan');
INSERT INTO `Sys_Region` VALUES (1000, '330781', '蘭溪市', 330700, 3, '中國,浙江省,金華市,蘭溪市', 119.46, 29.2084, 'Lanxi');
INSERT INTO `Sys_Region` VALUES (1001, '330782', '義烏市', 330700, 3, '中國,浙江省,金華市,義烏市', 120.074, 29.3056, 'Yiwu');
INSERT INTO `Sys_Region` VALUES (1002, '330783', '東陽市', 330700, 3, '中國,浙江省,金華市,東陽市', 120.242, 29.2894, 'Dongyang');
INSERT INTO `Sys_Region` VALUES (1003, '330784', '永康市', 330700, 3, '中國,浙江省,金華市,永康市', 120.047, 28.8884, 'Yongkang');
INSERT INTO `Sys_Region` VALUES (1004, '330800', '衢州市', 330000, 2, '中國,浙江省,衢州市', 118.873, 28.9417, 'Quzhou');
INSERT INTO `Sys_Region` VALUES (1005, '330802', '柯城區', 330800, 3, '中國,浙江省,衢州市,柯城區', 118.871, 28.9686, 'Kecheng');
INSERT INTO `Sys_Region` VALUES (1006, '330803', '衢江區', 330800, 3, '中國,浙江省,衢州市,衢江區', 118.96, 28.9798, 'Qujiang');
INSERT INTO `Sys_Region` VALUES (1007, '330822', '常山縣', 330800, 3, '中國,浙江省,衢州市,常山縣', 118.51, 28.9019, 'Changshan');
INSERT INTO `Sys_Region` VALUES (1008, '330824', '開化縣', 330800, 3, '中國,浙江省,衢州市,開化縣', 118.416, 29.1378, 'Kaihua');
INSERT INTO `Sys_Region` VALUES (1009, '330825', '龍游縣', 330800, 3, '中國,浙江省,衢州市,龍游縣', 119.172, 29.0282, 'Longyou');
INSERT INTO `Sys_Region` VALUES (1010, '330881', '江山市', 330800, 3, '中國,浙江省,衢州市,江山市', 118.627, 28.7386, 'Jiangshan');
INSERT INTO `Sys_Region` VALUES (1011, '330900', '舟山市', 330000, 2, '中國,浙江省,舟山市', 122.107, 30.016, 'Zhoushan');
INSERT INTO `Sys_Region` VALUES (1012, '330902', '定海區', 330900, 3, '中國,浙江省,舟山市,定海區', 122.107, 30.0198, 'Dinghai');
INSERT INTO `Sys_Region` VALUES (1013, '330903', '普陀區', 330900, 3, '中國,浙江省,舟山市,普陀區', 122.303, 29.9491, 'Putuo');
INSERT INTO `Sys_Region` VALUES (1014, '330921', '岱山縣', 330900, 3, '中國,浙江省,舟山市,岱山縣', 122.205, 30.2439, 'Daishan');
INSERT INTO `Sys_Region` VALUES (1015, '330922', '嵊泗縣', 330900, 3, '中國,浙江省,舟山市,嵊泗縣', 122.451, 30.7268, 'Shengsi');
INSERT INTO `Sys_Region` VALUES (1016, '331000', '臺州市', 330000, 2, '中國,浙江省,臺州市', 121.429, 28.6614, 'Taizhou');
INSERT INTO `Sys_Region` VALUES (1017, '331002', '椒江區', 331000, 3, '中國,浙江省,臺州市,椒江區', 121.443, 28.673, 'Jiaojiang');
INSERT INTO `Sys_Region` VALUES (1018, '331003', '黃巖區', 331000, 3, '中國,浙江省,臺州市,黃巖區', 121.259, 28.6508, 'Huangyan');
INSERT INTO `Sys_Region` VALUES (1019, '331004', '路橋區', 331000, 3, '中國,浙江省,臺州市,路橋區', 121.374, 28.5802, 'Luqiao');
INSERT INTO `Sys_Region` VALUES (1020, '331021', '玉環縣', 331000, 3, '中國,浙江省,臺州市,玉環縣', 121.232, 28.1364, 'Yuhuan');
INSERT INTO `Sys_Region` VALUES (1021, '331022', '三門縣', 331000, 3, '中國,浙江省,臺州市,三門縣', 121.394, 29.1051, 'Sanmen');
INSERT INTO `Sys_Region` VALUES (1022, '331023', '天臺縣', 331000, 3, '中國,浙江省,臺州市,天臺縣', 121.008, 29.1429, 'Tiantai');
INSERT INTO `Sys_Region` VALUES (1023, '331024', '仙居縣', 331000, 3, '中國,浙江省,臺州市,仙居縣', 120.729, 28.8467, 'Xianju');
INSERT INTO `Sys_Region` VALUES (1024, '331081', '溫嶺市', 331000, 3, '中國,浙江省,臺州市,溫嶺市', 121.386, 28.3718, 'Wenling');
INSERT INTO `Sys_Region` VALUES (1025, '331082', '臨海市', 331000, 3, '中國,浙江省,臺州市,臨海市', 121.139, 28.856, 'Linhai');
INSERT INTO `Sys_Region` VALUES (1026, '331100', '麗水市', 330000, 2, '中國,浙江省,麗水市', 119.922, 28.452, 'Lishui');
INSERT INTO `Sys_Region` VALUES (1027, '331102', '蓮都區', 331100, 3, '中國,浙江省,麗水市,蓮都區', 119.913, 28.4458, 'Liandu');
INSERT INTO `Sys_Region` VALUES (1028, '331121', '青田縣', 331100, 3, '中國,浙江省,麗水市,青田縣', 120.29, 28.139, 'Qingtian');
INSERT INTO `Sys_Region` VALUES (1029, '331122', '縉云縣', 331100, 3, '中國,浙江省,麗水市,縉云縣', 120.09, 28.6594, 'Jinyun');
INSERT INTO `Sys_Region` VALUES (1030, '331123', '遂昌縣', 331100, 3, '中國,浙江省,麗水市,遂昌縣', 119.276, 28.5929, 'Suichang');
INSERT INTO `Sys_Region` VALUES (1031, '331124', '松陽縣', 331100, 3, '中國,浙江省,麗水市,松陽縣', 119.482, 28.4494, 'Songyang');
INSERT INTO `Sys_Region` VALUES (1032, '331125', '云和縣', 331100, 3, '中國,浙江省,麗水市,云和縣', 119.573, 28.1164, 'Yunhe');
INSERT INTO `Sys_Region` VALUES (1033, '331126', '慶元縣', 331100, 3, '中國,浙江省,麗水市,慶元縣', 119.063, 27.6184, 'Qingyuan');
INSERT INTO `Sys_Region` VALUES (1034, '331127', '景寧畬族自治縣', 331100, 3, '中國,浙江省,麗水市,景寧畬族自治縣', 119.638, 27.9739, 'Jingning');
INSERT INTO `Sys_Region` VALUES (1035, '331181', '龍泉市', 331100, 3, '中國,浙江省,麗水市,龍泉市', 119.142, 28.0743, 'Longquan');
INSERT INTO `Sys_Region` VALUES (1036, '331200', '舟山群島新區', 330000, 2, '中國,浙江省,舟山群島新區', 122.318, 29.8132, 'Zhoushan');
INSERT INTO `Sys_Region` VALUES (1037, '331201', '金塘島', 331200, 3, '中國,浙江省,舟山群島新區,金塘島', 121.893, 30.0406, 'Jintang');
INSERT INTO `Sys_Region` VALUES (1038, '331202', '六橫島', 331200, 3, '中國,浙江省,舟山群島新區,六橫島', 122.143, 29.6629, 'Liuheng');
INSERT INTO `Sys_Region` VALUES (1039, '331203', '衢山島', 331200, 3, '中國,浙江省,舟山群島新區,衢山島', 122.358, 30.4426, 'Qushan');
INSERT INTO `Sys_Region` VALUES (1040, '331204', '舟山本島西北部', 331200, 3, '中國,浙江省,舟山群島新區,舟山本島西北部', 122.031, 30.1404, 'Zhoushan');
INSERT INTO `Sys_Region` VALUES (1041, '331205', '岱山島西南部', 331200, 3, '中國,浙江省,舟山群島新區,岱山島西南部', 122.18, 30.2773, 'Daishan');
INSERT INTO `Sys_Region` VALUES (1042, '331206', '泗礁島', 331200, 3, '中國,浙江省,舟山群島新區,泗礁島', 122.458, 30.7251, 'Sijiao');
INSERT INTO `Sys_Region` VALUES (1043, '331207', '朱家尖島', 331200, 3, '中國,浙江省,舟山群島新區,朱家尖島', 122.391, 29.9163, 'Zhujiajian');
INSERT INTO `Sys_Region` VALUES (1044, '331208', '洋山島', 331200, 3, '中國,浙江省,舟山群島新區,洋山島', 121.996, 30.0946, 'Yangshan');
INSERT INTO `Sys_Region` VALUES (1045, '331209', '長涂島', 331200, 3, '中國,浙江省,舟山群島新區,長涂島', 122.285, 30.2489, 'Changtu');
INSERT INTO `Sys_Region` VALUES (1046, '331210', '蝦峙島', 331200, 3, '中國,浙江省,舟山群島新區,蝦峙島', 122.245, 29.7529, 'Xiazhi');
INSERT INTO `Sys_Region` VALUES (1047, '340000', '安徽省', 100000, 1, '中國,安徽省', 117.283, 31.8612, 'Anhui');
INSERT INTO `Sys_Region` VALUES (1048, '340100', '合肥市', 340000, 2, '中國,安徽省,合肥市', 117.283, 31.8612, 'Hefei');
INSERT INTO `Sys_Region` VALUES (1049, '340102', '瑤海區', 340100, 3, '中國,安徽省,合肥市,瑤海區', 117.309, 31.8581, 'Yaohai');
INSERT INTO `Sys_Region` VALUES (1050, '340103', '廬陽區', 340100, 3, '中國,安徽省,合肥市,廬陽區', 117.265, 31.8787, 'Luyang');
INSERT INTO `Sys_Region` VALUES (1051, '340104', '蜀山區', 340100, 3, '中國,安徽省,合肥市,蜀山區', 117.261, 31.8512, 'Shushan');
INSERT INTO `Sys_Region` VALUES (1052, '340111', '包河區', 340100, 3, '中國,安徽省,合肥市,包河區', 117.31, 31.795, 'Baohe');
INSERT INTO `Sys_Region` VALUES (1053, '340121', '長豐縣', 340100, 3, '中國,安徽省,合肥市,長豐縣', 117.165, 32.4796, 'Changfeng');
INSERT INTO `Sys_Region` VALUES (1054, '340122', '肥東縣', 340100, 3, '中國,安徽省,合肥市,肥東縣', 117.471, 31.8853, 'Feidong');
INSERT INTO `Sys_Region` VALUES (1055, '340123', '肥西縣', 340100, 3, '中國,安徽省,合肥市,肥西縣', 117.168, 31.7214, 'Feixi');
INSERT INTO `Sys_Region` VALUES (1056, '340124', '廬江縣', 340100, 3, '中國,安徽省,合肥市,廬江縣', 117.29, 31.2515, 'Lujiang');
INSERT INTO `Sys_Region` VALUES (1057, '340181', '巢湖市', 340100, 3, '中國,安徽省,合肥市,巢湖市', 117.874, 31.6005, 'Chaohu');
INSERT INTO `Sys_Region` VALUES (1058, '340200', '蕪湖市', 340000, 2, '中國,安徽省,蕪湖市', 118.376, 31.3263, 'Wuhu');
INSERT INTO `Sys_Region` VALUES (1059, '340202', '鏡湖區', 340200, 3, '中國,安徽省,蕪湖市,鏡湖區', 118.385, 31.3404, 'Jinghu');
INSERT INTO `Sys_Region` VALUES (1060, '340203', '弋江區', 340200, 3, '中國,安徽省,蕪湖市,弋江區', 118.373, 31.3118, 'Yijiang');
INSERT INTO `Sys_Region` VALUES (1061, '340207', '鳩江區', 340200, 3, '中國,安徽省,蕪湖市,鳩江區', 118.392, 31.3693, 'Jiujiang');
INSERT INTO `Sys_Region` VALUES (1062, '340208', '三山區', 340200, 3, '中國,安徽省,蕪湖市,三山區', 118.225, 31.207, 'Sanshan');
INSERT INTO `Sys_Region` VALUES (1063, '340221', '蕪湖縣', 340200, 3, '中國,安徽省,蕪湖市,蕪湖縣', 118.575, 31.1348, 'Wuhu');
INSERT INTO `Sys_Region` VALUES (1064, '340222', '繁昌縣', 340200, 3, '中國,安徽省,蕪湖市,繁昌縣', 118.2, 31.0832, 'Fanchang');
INSERT INTO `Sys_Region` VALUES (1065, '340223', '南陵縣', 340200, 3, '中國,安徽省,蕪湖市,南陵縣', 118.337, 30.9197, 'Nanling');
INSERT INTO `Sys_Region` VALUES (1066, '340225', '無為縣', 340200, 3, '中國,安徽省,蕪湖市,無為縣', 117.911, 31.3031, 'Wuwei');
INSERT INTO `Sys_Region` VALUES (1067, '340300', '蚌埠市', 340000, 2, '中國,安徽省,蚌埠市', 117.362, 32.934, 'Bengbu');
INSERT INTO `Sys_Region` VALUES (1068, '340302', '龍子湖區', 340300, 3, '中國,安徽省,蚌埠市,龍子湖區', 117.394, 32.943, 'Longzihu');
INSERT INTO `Sys_Region` VALUES (1069, '340303', '蚌山區', 340300, 3, '中國,安徽省,蚌埠市,蚌山區', 117.368, 32.9441, 'Bengshan');
INSERT INTO `Sys_Region` VALUES (1070, '340304', '禹會區', 340300, 3, '中國,安徽省,蚌埠市,禹會區', 117.353, 32.9334, 'Yuhui');
INSERT INTO `Sys_Region` VALUES (1071, '340311', '淮上區', 340300, 3, '中國,安徽省,蚌埠市,淮上區', 117.36, 32.9642, 'Huaishang');
INSERT INTO `Sys_Region` VALUES (1072, '340321', '懷遠縣', 340300, 3, '中國,安徽省,蚌埠市,懷遠縣', 117.205, 32.9701, 'Huaiyuan');
INSERT INTO `Sys_Region` VALUES (1073, '340322', '五河縣', 340300, 3, '中國,安徽省,蚌埠市,五河縣', 117.891, 33.1446, 'Wuhe');
INSERT INTO `Sys_Region` VALUES (1074, '340323', '固鎮縣', 340300, 3, '中國,安徽省,蚌埠市,固鎮縣', 117.316, 33.318, 'Guzhen');
INSERT INTO `Sys_Region` VALUES (1075, '340400', '淮南市', 340000, 2, '中國,安徽省,淮南市', 117.025, 32.6459, 'Huainan');
INSERT INTO `Sys_Region` VALUES (1076, '340402', '大通區', 340400, 3, '中國,安徽省,淮南市,大通區', 117.053, 32.6326, 'Datong');
INSERT INTO `Sys_Region` VALUES (1077, '340403', '田家庵區', 340400, 3, '中國,安徽省,淮南市,田家庵區', 117.017, 32.647, 'Tianjiaan');
INSERT INTO `Sys_Region` VALUES (1078, '340404', '謝家集區', 340400, 3, '中國,安徽省,淮南市,謝家集區', 116.864, 32.5982, 'Xiejiaji');
INSERT INTO `Sys_Region` VALUES (1079, '340405', '八公山區', 340400, 3, '中國,安徽省,淮南市,八公山區', 116.837, 32.6294, 'Bagongshan');
INSERT INTO `Sys_Region` VALUES (1080, '340406', '潘集區', 340400, 3, '中國,安徽省,淮南市,潘集區', 116.816, 32.7829, 'Panji');
INSERT INTO `Sys_Region` VALUES (1081, '340421', '鳳臺縣', 340400, 3, '中國,安徽省,淮南市,鳳臺縣', 116.716, 32.7075, 'Fengtai');
INSERT INTO `Sys_Region` VALUES (1082, '340500', '馬鞍山市', 340000, 2, '中國,安徽省,馬鞍山市', 118.508, 31.6894, 'Maanshan');
INSERT INTO `Sys_Region` VALUES (1083, '340503', '花山區', 340500, 3, '中國,安徽省,馬鞍山市,花山區', 118.512, 31.7001, 'Huashan');
INSERT INTO `Sys_Region` VALUES (1084, '340504', '雨山區', 340500, 3, '中國,安徽省,馬鞍山市,雨山區', 118.499, 31.6822, 'Yushan');
INSERT INTO `Sys_Region` VALUES (1085, '340506', '博望區', 340500, 3, '中國,安徽省,馬鞍山市,博望區', 118.844, 31.5619, 'Bowang');
INSERT INTO `Sys_Region` VALUES (1086, '340521', '當涂縣', 340500, 3, '中國,安徽省,馬鞍山市,當涂縣', 118.498, 31.571, 'Dangtu');
INSERT INTO `Sys_Region` VALUES (1087, '340522', '含山縣', 340500, 3, '中國,安徽省,馬鞍山市,含山縣', 118.106, 31.7278, 'Hanshan ');
INSERT INTO `Sys_Region` VALUES (1088, '340523', '和縣', 340500, 3, '中國,安徽省,馬鞍山市,和縣', 118.351, 31.7418, 'Hexian');
INSERT INTO `Sys_Region` VALUES (1089, '340600', '淮北市', 340000, 2, '中國,安徽省,淮北市', 116.795, 33.9717, 'Huaibei');
INSERT INTO `Sys_Region` VALUES (1090, '340602', '杜集區', 340600, 3, '中國,安徽省,淮北市,杜集區', 116.83, 33.9936, 'Duji');
INSERT INTO `Sys_Region` VALUES (1091, '340603', '相山區', 340600, 3, '中國,安徽省,淮北市,相山區', 116.795, 33.9598, 'Xiangshan');
INSERT INTO `Sys_Region` VALUES (1092, '340604', '烈山區', 340600, 3, '中國,安徽省,淮北市,烈山區', 116.814, 33.8936, 'Lieshan');
INSERT INTO `Sys_Region` VALUES (1093, '340621', '濉溪縣', 340600, 3, '中國,安徽省,淮北市,濉溪縣', 116.768, 33.9146, 'Suixi');
INSERT INTO `Sys_Region` VALUES (1094, '340700', '銅陵市', 340000, 2, '中國,安徽省,銅陵市', 117.817, 30.9299, 'Tongling');
INSERT INTO `Sys_Region` VALUES (1095, '340702', '銅官山區', 340700, 3, '中國,安徽省,銅陵市,銅官山區', 117.815, 30.9342, 'Tongguanshan');
INSERT INTO `Sys_Region` VALUES (1096, '340703', '獅子山區', 340700, 3, '中國,安徽省,銅陵市,獅子山區', 117.892, 30.9263, 'Shizishan');
INSERT INTO `Sys_Region` VALUES (1097, '340711', '郊區', 340700, 3, '中國,安徽省,銅陵市,郊區', 117.809, 30.9198, 'Jiaoqu');
INSERT INTO `Sys_Region` VALUES (1098, '340721', '銅陵縣', 340700, 3, '中國,安徽省,銅陵市,銅陵縣', 117.791, 30.9536, 'Tongling');
INSERT INTO `Sys_Region` VALUES (1099, '340800', '安慶市', 340000, 2, '中國,安徽省,安慶市', 117.054, 30.5248, 'Anqing');
INSERT INTO `Sys_Region` VALUES (1100, '340802', '迎江區', 340800, 3, '中國,安徽省,安慶市,迎江區', 117.049, 30.5042, 'Yingjiang');
INSERT INTO `Sys_Region` VALUES (1101, '340803', '大觀區', 340800, 3, '中國,安徽省,安慶市,大觀區', 117.034, 30.5122, 'Daguan');
INSERT INTO `Sys_Region` VALUES (1102, '340811', '宜秀區', 340800, 3, '中國,安徽省,安慶市,宜秀區', 117.061, 30.5078, 'Yixiu');
INSERT INTO `Sys_Region` VALUES (1103, '340822', '懷寧縣', 340800, 3, '中國,安徽省,安慶市,懷寧縣', 116.83, 30.7338, 'Huaining');
INSERT INTO `Sys_Region` VALUES (1104, '340823', '樅陽縣', 340800, 3, '中國,安徽省,安慶市,樅陽縣', 117.22, 30.6996, 'Zongyang');
INSERT INTO `Sys_Region` VALUES (1105, '340824', '潛山縣', 340800, 3, '中國,安徽省,安慶市,潛山縣', 116.576, 30.6304, 'Qianshan');
INSERT INTO `Sys_Region` VALUES (1106, '340825', '太湖縣', 340800, 3, '中國,安徽省,安慶市,太湖縣', 116.309, 30.4541, 'Taihu');
INSERT INTO `Sys_Region` VALUES (1107, '340826', '宿松縣', 340800, 3, '中國,安徽省,安慶市,宿松縣', 116.129, 30.1536, 'Susong');
INSERT INTO `Sys_Region` VALUES (1108, '340827', '望江縣', 340800, 3, '中國,安徽省,安慶市,望江縣', 116.688, 30.1259, 'Wangjiang');
INSERT INTO `Sys_Region` VALUES (1109, '340828', '岳西縣', 340800, 3, '中國,安徽省,安慶市,岳西縣', 116.36, 30.8498, 'Yuexi');
INSERT INTO `Sys_Region` VALUES (1110, '340881', '桐城市', 340800, 3, '中國,安徽省,安慶市,桐城市', 116.951, 31.0522, 'Tongcheng');
INSERT INTO `Sys_Region` VALUES (1111, '341000', '黃山市', 340000, 2, '中國,安徽省,黃山市', 118.317, 29.7092, 'Huangshan');
INSERT INTO `Sys_Region` VALUES (1112, '341002', '屯溪區', 341000, 3, '中國,安徽省,黃山市,屯溪區', 118.334, 29.7114, 'Tunxi');
INSERT INTO `Sys_Region` VALUES (1113, '341003', '黃山區', 341000, 3, '中國,安徽省,黃山市,黃山區', 118.142, 30.2729, 'Huangshan');
INSERT INTO `Sys_Region` VALUES (1114, '341004', '徽州區', 341000, 3, '中國,安徽省,黃山市,徽州區', 118.337, 29.8278, 'Huizhou');
INSERT INTO `Sys_Region` VALUES (1115, '341021', '歙縣', 341000, 3, '中國,安徽省,黃山市,歙縣', 118.437, 29.8675, 'Shexian');
INSERT INTO `Sys_Region` VALUES (1116, '341022', '休寧縣', 341000, 3, '中國,安徽省,黃山市,休寧縣', 118.181, 29.7861, 'Xiuning');
INSERT INTO `Sys_Region` VALUES (1117, '341023', '黟縣', 341000, 3, '中國,安徽省,黃山市,黟縣', 117.941, 29.9259, 'Yixian');
INSERT INTO `Sys_Region` VALUES (1118, '341024', '祁門縣', 341000, 3, '中國,安徽省,黃山市,祁門縣', 117.718, 29.8572, 'Qimen');
INSERT INTO `Sys_Region` VALUES (1119, '341100', '滁州市', 340000, 2, '中國,安徽省,滁州市', 118.316, 32.3036, 'Chuzhou');
INSERT INTO `Sys_Region` VALUES (1120, '341102', '瑯琊區', 341100, 3, '中國,安徽省,滁州市,瑯琊區', 118.305, 32.2952, 'Langya');
INSERT INTO `Sys_Region` VALUES (1121, '341103', '南譙區', 341100, 3, '中國,安徽省,滁州市,南譙區', 118.312, 32.3186, 'Nanqiao');
INSERT INTO `Sys_Region` VALUES (1122, '341122', '來安縣', 341100, 3, '中國,安徽省,滁州市,來安縣', 118.434, 32.4518, 'Laian');
INSERT INTO `Sys_Region` VALUES (1123, '341124', '全椒縣', 341100, 3, '中國,安徽省,滁州市,全椒縣', 118.273, 32.0852, 'Quanjiao');
INSERT INTO `Sys_Region` VALUES (1124, '341125', '定遠縣', 341100, 3, '中國,安徽省,滁州市,定遠縣', 117.68, 32.5249, 'Dingyuan');
INSERT INTO `Sys_Region` VALUES (1125, '341126', '鳳陽縣', 341100, 3, '中國,安徽省,滁州市,鳳陽縣', 117.565, 32.8651, 'Fengyang');
INSERT INTO `Sys_Region` VALUES (1126, '341181', '天長市', 341100, 3, '中國,安徽省,滁州市,天長市', 118.999, 32.6912, 'Tianchang');
INSERT INTO `Sys_Region` VALUES (1127, '341182', '明光市', 341100, 3, '中國,安徽省,滁州市,明光市', 117.991, 32.7782, 'Mingguang');
INSERT INTO `Sys_Region` VALUES (1128, '341200', '阜陽市', 340000, 2, '中國,安徽省,阜陽市', 115.82, 32.897, 'Fuyang');
INSERT INTO `Sys_Region` VALUES (1129, '341202', '潁州區', 341200, 3, '中國,安徽省,阜陽市,潁州區', 115.807, 32.8835, 'Yingzhou');
INSERT INTO `Sys_Region` VALUES (1130, '341203', '潁東區', 341200, 3, '中國,安徽省,阜陽市,潁東區', 115.857, 32.913, 'Yingdong');
INSERT INTO `Sys_Region` VALUES (1131, '341204', '潁泉區', 341200, 3, '中國,安徽省,阜陽市,潁泉區', 115.807, 32.9249, 'Yingquan');
INSERT INTO `Sys_Region` VALUES (1132, '341221', '臨泉縣', 341200, 3, '中國,安徽省,阜陽市,臨泉縣', 115.262, 33.0676, 'Linquan');
INSERT INTO `Sys_Region` VALUES (1133, '341222', '太和縣', 341200, 3, '中國,安徽省,阜陽市,太和縣', 115.622, 33.1603, 'Taihe');
INSERT INTO `Sys_Region` VALUES (1134, '341225', '阜南縣', 341200, 3, '中國,安徽省,阜陽市,阜南縣', 115.586, 32.6355, 'Funan');
INSERT INTO `Sys_Region` VALUES (1135, '341226', '潁上縣', 341200, 3, '中國,安徽省,阜陽市,潁上縣', 116.265, 32.63, 'Yingshang');
INSERT INTO `Sys_Region` VALUES (1136, '341282', '界首市', 341200, 3, '中國,安徽省,阜陽市,界首市', 115.374, 33.2571, 'Jieshou');
INSERT INTO `Sys_Region` VALUES (1137, '341300', '宿州市', 340000, 2, '中國,安徽省,宿州市', 116.984, 33.6339, 'Suzhou');
INSERT INTO `Sys_Region` VALUES (1138, '341302', '埇橋區', 341300, 3, '中國,安徽省,宿州市,埇橋區', 116.977, 33.6406, 'Yongqiao');
INSERT INTO `Sys_Region` VALUES (1139, '341321', '碭山縣', 341300, 3, '中國,安徽省,宿州市,碭山縣', 116.354, 34.4236, 'Dangshan');
INSERT INTO `Sys_Region` VALUES (1140, '341322', '蕭縣', 341300, 3, '中國,安徽省,宿州市,蕭縣', 116.945, 34.1879, 'Xiaoxian');
INSERT INTO `Sys_Region` VALUES (1141, '341323', '靈璧縣', 341300, 3, '中國,安徽省,宿州市,靈璧縣', 117.558, 33.5434, 'Lingbi');
INSERT INTO `Sys_Region` VALUES (1142, '341324', '泗縣', 341300, 3, '中國,安徽省,宿州市,泗縣', 117.91, 33.4829, 'Sixian');
INSERT INTO `Sys_Region` VALUES (1143, '341500', '六安市', 340000, 2, '中國,安徽省,六安市', 116.508, 31.7529, 'Luan');
INSERT INTO `Sys_Region` VALUES (1144, '341502', '金安區', 341500, 3, '中國,安徽省,六安市,金安區', 116.509, 31.7557, 'Jinan');
INSERT INTO `Sys_Region` VALUES (1145, '341503', '裕安區', 341500, 3, '中國,安徽省,六安市,裕安區', 116.48, 31.7379, 'Yuan');
INSERT INTO `Sys_Region` VALUES (1146, '341521', '壽縣', 341500, 3, '中國,安徽省,六安市,壽縣', 116.785, 32.5765, 'Shouxian');
INSERT INTO `Sys_Region` VALUES (1147, '341522', '霍邱縣', 341500, 3, '中國,安徽省,六安市,霍邱縣', 116.278, 32.353, 'Huoqiu');
INSERT INTO `Sys_Region` VALUES (1148, '341523', '舒城縣', 341500, 3, '中國,安徽省,六安市,舒城縣', 116.945, 31.4641, 'Shucheng');
INSERT INTO `Sys_Region` VALUES (1149, '341524', '金寨縣', 341500, 3, '中國,安徽省,六安市,金寨縣', 115.935, 31.7351, 'Jinzhai');
INSERT INTO `Sys_Region` VALUES (1150, '341525', '霍山縣', 341500, 3, '中國,安徽省,六安市,霍山縣', 116.333, 31.3929, 'Huoshan');
INSERT INTO `Sys_Region` VALUES (1151, '341600', '亳州市', 340000, 2, '中國,安徽省,亳州市', 115.783, 33.8693, 'Bozhou');
INSERT INTO `Sys_Region` VALUES (1152, '341602', '譙城區', 341600, 3, '中國,安徽省,亳州市,譙城區', 115.779, 33.8753, 'Qiaocheng');
INSERT INTO `Sys_Region` VALUES (1153, '341621', '渦陽縣', 341600, 3, '中國,安徽省,亳州市,渦陽縣', 116.217, 33.5091, 'Guoyang');
INSERT INTO `Sys_Region` VALUES (1154, '341622', '蒙城縣', 341600, 3, '中國,安徽省,亳州市,蒙城縣', 116.565, 33.2648, 'Mengcheng');
INSERT INTO `Sys_Region` VALUES (1155, '341623', '利辛縣', 341600, 3, '中國,安徽省,亳州市,利辛縣', 116.208, 33.142, 'Lixin');
INSERT INTO `Sys_Region` VALUES (1156, '341700', '池州市', 340000, 2, '中國,安徽省,池州市', 117.489, 30.656, 'Chizhou');
INSERT INTO `Sys_Region` VALUES (1157, '341702', '貴池區', 341700, 3, '中國,安徽省,池州市,貴池區', 117.487, 30.6528, 'Guichi');
INSERT INTO `Sys_Region` VALUES (1158, '341721', '東至縣', 341700, 3, '中國,安徽省,池州市,東至縣', 117.027, 30.0969, 'Dongzhi');
INSERT INTO `Sys_Region` VALUES (1159, '341722', '石臺縣', 341700, 3, '中國,安徽省,池州市,石臺縣', 117.487, 30.2104, 'Shitai');
INSERT INTO `Sys_Region` VALUES (1160, '341723', '青陽縣', 341700, 3, '中國,安徽省,池州市,青陽縣', 117.847, 30.6393, 'Qingyang');
INSERT INTO `Sys_Region` VALUES (1161, '341800', '宣城市', 340000, 2, '中國,安徽省,宣城市', 118.758, 30.9457, 'Xuancheng');
INSERT INTO `Sys_Region` VALUES (1162, '341802', '宣州區', 341800, 3, '中國,安徽省,宣城市,宣州區', 118.755, 30.9444, 'Xuanzhou');
INSERT INTO `Sys_Region` VALUES (1163, '341821', '郎溪縣', 341800, 3, '中國,安徽省,宣城市,郎溪縣', 119.179, 31.126, 'Langxi');
INSERT INTO `Sys_Region` VALUES (1164, '341822', '廣德縣', 341800, 3, '中國,安徽省,宣城市,廣德縣', 119.418, 30.8937, 'Guangde');
INSERT INTO `Sys_Region` VALUES (1165, '341823', '涇縣', 341800, 3, '中國,安徽省,宣城市,涇縣', 118.42, 30.695, 'Jingxian');
INSERT INTO `Sys_Region` VALUES (1166, '341824', '績溪縣', 341800, 3, '中國,安徽省,宣城市,績溪縣', 118.598, 30.0707, 'Jixi');
INSERT INTO `Sys_Region` VALUES (1167, '341825', '旌德縣', 341800, 3, '中國,安徽省,宣城市,旌德縣', 118.543, 30.289, 'Jingde');
INSERT INTO `Sys_Region` VALUES (1168, '341881', '寧國市', 341800, 3, '中國,安徽省,宣城市,寧國市', 118.983, 30.6238, 'Ningguo');
INSERT INTO `Sys_Region` VALUES (1169, '350000', '福建省', 100000, 1, '中國,福建省', 119.306, 26.0753, 'Fujian');
INSERT INTO `Sys_Region` VALUES (1170, '350100', '福州市', 350000, 2, '中國,福建省,福州市', 119.306, 26.0753, 'Fuzhou');
INSERT INTO `Sys_Region` VALUES (1171, '350102', '鼓樓區', 350100, 3, '中國,福建省,福州市,鼓樓區', 119.304, 26.0823, 'Gulou');
INSERT INTO `Sys_Region` VALUES (1172, '350103', '臺江區', 350100, 3, '中國,福建省,福州市,臺江區', 119.309, 26.062, 'Taijiang');
INSERT INTO `Sys_Region` VALUES (1173, '350104', '倉山區', 350100, 3, '中國,福建省,福州市,倉山區', 119.315, 26.0434, 'Cangshan');
INSERT INTO `Sys_Region` VALUES (1174, '350105', '馬尾區', 350100, 3, '中國,福建省,福州市,馬尾區', 119.455, 25.9894, 'Mawei');
INSERT INTO `Sys_Region` VALUES (1175, '350111', '晉安區', 350100, 3, '中國,福建省,福州市,晉安區', 119.328, 26.0818, 'Jinan');
INSERT INTO `Sys_Region` VALUES (1176, '350121', '閩侯縣', 350100, 3, '中國,福建省,福州市,閩侯縣', 119.134, 26.1501, 'Minhou');
INSERT INTO `Sys_Region` VALUES (1177, '350122', '連江縣', 350100, 3, '中國,福建省,福州市,連江縣', 119.534, 26.1947, 'Lianjiang');
INSERT INTO `Sys_Region` VALUES (1178, '350123', '羅源縣', 350100, 3, '中國,福建省,福州市,羅源縣', 119.551, 26.4875, 'Luoyuan');
INSERT INTO `Sys_Region` VALUES (1179, '350124', '閩清縣', 350100, 3, '中國,福建省,福州市,閩清縣', 118.862, 26.219, 'Minqing');
INSERT INTO `Sys_Region` VALUES (1180, '350125', '永泰縣', 350100, 3, '中國,福建省,福州市,永泰縣', 118.936, 25.8682, 'Yongtai');
INSERT INTO `Sys_Region` VALUES (1181, '350128', '平潭縣', 350100, 3, '中國,福建省,福州市,平潭縣', 119.791, 25.5037, 'Pingtan');
INSERT INTO `Sys_Region` VALUES (1182, '350181', '福清市', 350100, 3, '中國,福建省,福州市,福清市', 119.385, 25.7209, 'Fuqing');
INSERT INTO `Sys_Region` VALUES (1183, '350182', '長樂市', 350100, 3, '中國,福建省,福州市,長樂市', 119.523, 25.9628, 'Changle');
INSERT INTO `Sys_Region` VALUES (1184, '350200', '廈門市', 350000, 2, '中國,福建省,廈門市', 118.11, 24.4905, 'Xiamen');
INSERT INTO `Sys_Region` VALUES (1185, '350203', '思明區', 350200, 3, '中國,福建省,廈門市,思明區', 118.082, 24.4454, 'Siming');
INSERT INTO `Sys_Region` VALUES (1186, '350205', '海滄區', 350200, 3, '中國,福建省,廈門市,海滄區', 118.033, 24.4846, 'Haicang');
INSERT INTO `Sys_Region` VALUES (1187, '350206', '湖里區', 350200, 3, '中國,福建省,廈門市,湖里區', 118.146, 24.5125, 'Huli');
INSERT INTO `Sys_Region` VALUES (1188, '350211', '集美區', 350200, 3, '中國,福建省,廈門市,集美區', 118.097, 24.5758, 'Jimei');
INSERT INTO `Sys_Region` VALUES (1189, '350212', '同安區', 350200, 3, '中國,福建省,廈門市,同安區', 118.152, 24.7231, 'Tongan');
INSERT INTO `Sys_Region` VALUES (1190, '350213', '翔安區', 350200, 3, '中國,福建省,廈門市,翔安區', 118.248, 24.6186, 'Xiangan');
INSERT INTO `Sys_Region` VALUES (1191, '350300', '莆田市', 350000, 2, '中國,福建省,莆田市', 119.008, 25.431, 'Putian');
INSERT INTO `Sys_Region` VALUES (1192, '350302', '城廂區', 350300, 3, '中國,福建省,莆田市,城廂區', 118.995, 25.4187, 'Chengxiang');
INSERT INTO `Sys_Region` VALUES (1193, '350303', '涵江區', 350300, 3, '中國,福建省,莆田市,涵江區', 119.116, 25.4588, 'Hanjiang');
INSERT INTO `Sys_Region` VALUES (1194, '350304', '荔城區', 350300, 3, '中國,福建省,莆田市,荔城區', 119.013, 25.4337, 'Licheng');
INSERT INTO `Sys_Region` VALUES (1195, '350305', '秀嶼區', 350300, 3, '中國,福建省,莆田市,秀嶼區', 119.106, 25.3183, 'Xiuyu');
INSERT INTO `Sys_Region` VALUES (1196, '350322', '仙游縣', 350300, 3, '中國,福建省,莆田市,仙游縣', 118.692, 25.3621, 'Xianyou');
INSERT INTO `Sys_Region` VALUES (1197, '350400', '三明市', 350000, 2, '中國,福建省,三明市', 117.635, 26.2654, 'Sanming');
INSERT INTO `Sys_Region` VALUES (1198, '350402', '梅列區', 350400, 3, '中國,福建省,三明市,梅列區', 117.646, 26.2717, 'Meilie');
INSERT INTO `Sys_Region` VALUES (1199, '350403', '三元區', 350400, 3, '中國,福建省,三明市,三元區', 117.608, 26.2337, 'Sanyuan');
INSERT INTO `Sys_Region` VALUES (1200, '350421', '明溪縣', 350400, 3, '中國,福建省,三明市,明溪縣', 117.205, 26.3529, 'Mingxi');
INSERT INTO `Sys_Region` VALUES (1201, '350423', '清流縣', 350400, 3, '中國,福建省,三明市,清流縣', 116.815, 26.1714, 'Qingliu');
INSERT INTO `Sys_Region` VALUES (1202, '350424', '寧化縣', 350400, 3, '中國,福建省,三明市,寧化縣', 116.661, 26.2587, 'Ninghua');
INSERT INTO `Sys_Region` VALUES (1203, '350425', '大田縣', 350400, 3, '中國,福建省,三明市,大田縣', 117.847, 25.6926, 'Datian');
INSERT INTO `Sys_Region` VALUES (1204, '350426', '尤溪縣', 350400, 3, '中國,福建省,三明市,尤溪縣', 118.19, 26.17, 'Youxi');
INSERT INTO `Sys_Region` VALUES (1205, '350427', '沙縣', 350400, 3, '中國,福建省,三明市,沙縣', 117.793, 26.3962, 'Shaxian');
INSERT INTO `Sys_Region` VALUES (1206, '350428', '將樂縣', 350400, 3, '中國,福建省,三明市,將樂縣', 117.473, 26.7284, 'Jiangle');
INSERT INTO `Sys_Region` VALUES (1207, '350429', '泰寧縣', 350400, 3, '中國,福建省,三明市,泰寧縣', 117.176, 26.9001, 'Taining');
INSERT INTO `Sys_Region` VALUES (1208, '350430', '建寧縣', 350400, 3, '中國,福建省,三明市,建寧縣', 116.846, 26.8309, 'Jianning');
INSERT INTO `Sys_Region` VALUES (1209, '350481', '永安市', 350400, 3, '中國,福建省,三明市,永安市', 117.365, 25.9414, 'Yongan');
INSERT INTO `Sys_Region` VALUES (1210, '350500', '泉州市', 350000, 2, '中國,福建省,泉州市', 118.589, 24.9089, 'Quanzhou');
INSERT INTO `Sys_Region` VALUES (1211, '350502', '鯉城區', 350500, 3, '中國,福建省,泉州市,鯉城區', 118.566, 24.8874, 'Licheng');
INSERT INTO `Sys_Region` VALUES (1212, '350503', '豐澤區', 350500, 3, '中國,福建省,泉州市,豐澤區', 118.613, 24.8912, 'Fengze');
INSERT INTO `Sys_Region` VALUES (1213, '350504', '洛江區', 350500, 3, '中國,福建省,泉州市,洛江區', 118.671, 24.9398, 'Luojiang');
INSERT INTO `Sys_Region` VALUES (1214, '350505', '泉港區', 350500, 3, '中國,福建省,泉州市,泉港區', 118.916, 25.1201, 'Quangang');
INSERT INTO `Sys_Region` VALUES (1215, '350521', '惠安縣', 350500, 3, '中國,福建省,泉州市,惠安縣', 118.797, 25.0306, 'Huian');
INSERT INTO `Sys_Region` VALUES (1216, '350524', '安溪縣', 350500, 3, '中國,福建省,泉州市,安溪縣', 118.187, 25.0563, 'Anxi');
INSERT INTO `Sys_Region` VALUES (1217, '350525', '永春縣', 350500, 3, '中國,福建省,泉州市,永春縣', 118.294, 25.3218, 'Yongchun');
INSERT INTO `Sys_Region` VALUES (1218, '350526', '德化縣', 350500, 3, '中國,福建省,泉州市,德化縣', 118.242, 25.4922, 'Dehua');
INSERT INTO `Sys_Region` VALUES (1219, '350527', '金門縣', 350500, 3, '中國,福建省,泉州市,金門縣', 118.323, 24.4292, 'Jinmen');
INSERT INTO `Sys_Region` VALUES (1220, '350581', '石獅市', 350500, 3, '中國,福建省,泉州市,石獅市', 118.648, 24.7324, 'Shishi');
INSERT INTO `Sys_Region` VALUES (1221, '350582', '晉江市', 350500, 3, '中國,福建省,泉州市,晉江市', 118.552, 24.7814, 'Jinjiang');
INSERT INTO `Sys_Region` VALUES (1222, '350583', '南安市', 350500, 3, '中國,福建省,泉州市,南安市', 118.386, 24.9606, 'Nanan');
INSERT INTO `Sys_Region` VALUES (1223, '350600', '漳州市', 350000, 2, '中國,福建省,漳州市', 117.662, 24.5109, 'Zhangzhou');
INSERT INTO `Sys_Region` VALUES (1224, '350602', '薌城區', 350600, 3, '中國,福建省,漳州市,薌城區', 117.654, 24.5108, 'Xiangcheng');
INSERT INTO `Sys_Region` VALUES (1225, '350603', '龍文區', 350600, 3, '中國,福建省,漳州市,龍文區', 117.71, 24.5032, 'Longwen');
INSERT INTO `Sys_Region` VALUES (1226, '350622', '云霄縣', 350600, 3, '中國,福建省,漳州市,云霄縣', 117.341, 23.9553, 'Yunxiao');
INSERT INTO `Sys_Region` VALUES (1227, '350623', '漳浦縣', 350600, 3, '中國,福建省,漳州市,漳浦縣', 117.614, 24.1171, 'Zhangpu');
INSERT INTO `Sys_Region` VALUES (1228, '350624', '詔安縣', 350600, 3, '中國,福建省,漳州市,詔安縣', 117.175, 23.7115, 'Zhaoan');
INSERT INTO `Sys_Region` VALUES (1229, '350625', '長泰縣', 350600, 3, '中國,福建省,漳州市,長泰縣', 117.759, 24.6253, 'Changtai');
INSERT INTO `Sys_Region` VALUES (1230, '350626', '東山縣', 350600, 3, '中國,福建省,漳州市,東山縣', 117.428, 23.7011, 'Dongshan');
INSERT INTO `Sys_Region` VALUES (1231, '350627', '南靖縣', 350600, 3, '中國,福建省,漳州市,南靖縣', 117.357, 24.5145, 'Nanjing');
INSERT INTO `Sys_Region` VALUES (1232, '350628', '平和縣', 350600, 3, '中國,福建省,漳州市,平和縣', 117.312, 24.364, 'Pinghe');
INSERT INTO `Sys_Region` VALUES (1233, '350629', '華安縣', 350600, 3, '中國,福建省,漳州市,華安縣', 117.541, 25.0056, 'Huaan');
INSERT INTO `Sys_Region` VALUES (1234, '350681', '龍海市', 350600, 3, '中國,福建省,漳州市,龍海市', 117.818, 24.4466, 'Longhai');
INSERT INTO `Sys_Region` VALUES (1235, '350700', '南平市', 350000, 2, '中國,福建省,南平市', 118.178, 26.6356, 'Nanping');
INSERT INTO `Sys_Region` VALUES (1236, '350702', '延平區', 350700, 3, '中國,福建省,南平市,延平區', 118.182, 26.6374, 'Yanping');
INSERT INTO `Sys_Region` VALUES (1237, '350703', '建陽區', 350700, 3, '中國,福建省,南平市,建陽區', 118.123, 27.3321, 'Jianyang');
INSERT INTO `Sys_Region` VALUES (1238, '350721', '順昌縣', 350700, 3, '中國,福建省,南平市,順昌縣', 117.81, 26.793, 'Shunchang');
INSERT INTO `Sys_Region` VALUES (1239, '350722', '浦城縣', 350700, 3, '中國,福建省,南平市,浦城縣', 118.54, 27.9189, 'Pucheng');
INSERT INTO `Sys_Region` VALUES (1240, '350723', '光澤縣', 350700, 3, '中國,福建省,南平市,光澤縣', 117.333, 27.5423, 'Guangze');
INSERT INTO `Sys_Region` VALUES (1241, '350724', '松溪縣', 350700, 3, '中國,福建省,南平市,松溪縣', 118.785, 27.5262, 'Songxi');
INSERT INTO `Sys_Region` VALUES (1242, '350725', '政和縣', 350700, 3, '中國,福建省,南平市,政和縣', 118.856, 27.3677, 'Zhenghe');
INSERT INTO `Sys_Region` VALUES (1243, '350781', '邵武市', 350700, 3, '中國,福建省,南平市,邵武市', 117.492, 27.3403, 'Shaowu');
INSERT INTO `Sys_Region` VALUES (1244, '350782', '武夷山市', 350700, 3, '中國,福建省,南平市,武夷山市', 118.037, 27.7554, 'Wuyishan');
INSERT INTO `Sys_Region` VALUES (1245, '350783', '建甌市', 350700, 3, '中國,福建省,南平市,建甌市', 118.298, 27.023, 'Jianou');
INSERT INTO `Sys_Region` VALUES (1246, '350800', '龍巖市', 350000, 2, '中國,福建省,龍巖市', 117.03, 25.0916, 'Longyan');
INSERT INTO `Sys_Region` VALUES (1247, '350802', '新羅區', 350800, 3, '中國,福建省,龍巖市,新羅區', 117.037, 25.0983, 'Xinluo');
INSERT INTO `Sys_Region` VALUES (1248, '350821', '長汀縣', 350800, 3, '中國,福建省,龍巖市,長汀縣', 116.359, 25.8277, 'Changting');
INSERT INTO `Sys_Region` VALUES (1249, '350822', '永定區', 350800, 3, '中國,福建省,龍巖市,永定區', 116.732, 24.723, 'Yongding');
INSERT INTO `Sys_Region` VALUES (1250, '350823', '上杭縣', 350800, 3, '中國,福建省,龍巖市,上杭縣', 116.42, 25.0494, 'Shanghang');
INSERT INTO `Sys_Region` VALUES (1251, '350824', '武平縣', 350800, 3, '中國,福建省,龍巖市,武平縣', 116.102, 25.0924, 'Wuping');
INSERT INTO `Sys_Region` VALUES (1252, '350825', '連城縣', 350800, 3, '中國,福建省,龍巖市,連城縣', 116.755, 25.7103, 'Liancheng');
INSERT INTO `Sys_Region` VALUES (1253, '350881', '漳平市', 350800, 3, '中國,福建省,龍巖市,漳平市', 117.42, 25.2911, 'Zhangping');
INSERT INTO `Sys_Region` VALUES (1254, '350900', '寧德市', 350000, 2, '中國,福建省,寧德市', 119.527, 26.6592, 'Ningde');
INSERT INTO `Sys_Region` VALUES (1255, '350902', '蕉城區', 350900, 3, '中國,福建省,寧德市,蕉城區', 119.526, 26.6605, 'Jiaocheng');
INSERT INTO `Sys_Region` VALUES (1256, '350921', '霞浦縣', 350900, 3, '中國,福建省,寧德市,霞浦縣', 119.999, 26.8858, 'Xiapu');
INSERT INTO `Sys_Region` VALUES (1257, '350922', '古田縣', 350900, 3, '中國,福建省,寧德市,古田縣', 118.747, 26.5768, 'Gutian');
INSERT INTO `Sys_Region` VALUES (1258, '350923', '屏南縣', 350900, 3, '中國,福建省,寧德市,屏南縣', 118.989, 26.911, 'Pingnan');
INSERT INTO `Sys_Region` VALUES (1259, '350924', '壽寧縣', 350900, 3, '中國,福建省,寧德市,壽寧縣', 119.504, 27.46, 'Shouning');
INSERT INTO `Sys_Region` VALUES (1260, '350925', '周寧縣', 350900, 3, '中國,福建省,寧德市,周寧縣', 119.338, 27.1066, 'Zhouning');
INSERT INTO `Sys_Region` VALUES (1261, '350926', '柘榮縣', 350900, 3, '中國,福建省,寧德市,柘榮縣', 119.9, 27.2354, 'Zherong');
INSERT INTO `Sys_Region` VALUES (1262, '350981', '福安市', 350900, 3, '中國,福建省,寧德市,福安市', 119.649, 27.0867, 'Fuan');
INSERT INTO `Sys_Region` VALUES (1263, '350982', '福鼎市', 350900, 3, '中國,福建省,寧德市,福鼎市', 120.217, 27.3243, 'Fuding');
INSERT INTO `Sys_Region` VALUES (1264, '360000', '江西省', 100000, 1, '中國,江西省', 115.892, 28.6765, 'Jiangxi');
INSERT INTO `Sys_Region` VALUES (1265, '360100', '南昌市', 360000, 2, '中國,江西省,南昌市', 115.892, 28.6765, 'Nanchang');
INSERT INTO `Sys_Region` VALUES (1266, '360102', '東湖區', 360100, 3, '中國,江西省,南昌市,東湖區', 115.899, 28.685, 'Donghu');
INSERT INTO `Sys_Region` VALUES (1267, '360103', '西湖區', 360100, 3, '中國,江西省,南昌市,西湖區', 115.877, 28.6569, 'Xihu');
INSERT INTO `Sys_Region` VALUES (1268, '360104', '青云譜區', 360100, 3, '中國,江西省,南昌市,青云譜區', 115.915, 28.632, 'Qingyunpu');
INSERT INTO `Sys_Region` VALUES (1269, '360105', '灣里區', 360100, 3, '中國,江西省,南昌市,灣里區', 115.731, 28.7153, 'Wanli');
INSERT INTO `Sys_Region` VALUES (1270, '360111', '青山湖區', 360100, 3, '中國,江西省,南昌市,青山湖區', 115.962, 28.6821, 'Qingshanhu');
INSERT INTO `Sys_Region` VALUES (1271, '360121', '南昌縣', 360100, 3, '中國,江西省,南昌市,南昌縣', 115.944, 28.5456, 'Nanchang');
INSERT INTO `Sys_Region` VALUES (1272, '360122', '新建縣', 360100, 3, '中國,江西省,南昌市,新建縣', 115.815, 28.6925, 'Xinjian');
INSERT INTO `Sys_Region` VALUES (1273, '360123', '安義縣', 360100, 3, '中國,江西省,南昌市,安義縣', 115.549, 28.846, 'Anyi');
INSERT INTO `Sys_Region` VALUES (1274, '360124', '進賢縣', 360100, 3, '中國,江西省,南昌市,進賢縣', 116.241, 28.3768, 'Jinxian');
INSERT INTO `Sys_Region` VALUES (1275, '360200', '景德鎮市', 360000, 2, '中國,江西省,景德鎮市', 117.215, 29.2926, 'Jingdezhen');
INSERT INTO `Sys_Region` VALUES (1276, '360202', '昌江區', 360200, 3, '中國,江西省,景德鎮市,昌江區', 117.184, 29.2732, 'Changjiang');
INSERT INTO `Sys_Region` VALUES (1277, '360203', '珠山區', 360200, 3, '中國,江西省,景德鎮市,珠山區', 117.202, 29.3013, 'Zhushan');
INSERT INTO `Sys_Region` VALUES (1278, '360222', '浮梁縣', 360200, 3, '中國,江西省,景德鎮市,浮梁縣', 117.215, 29.3516, 'Fuliang');
INSERT INTO `Sys_Region` VALUES (1279, '360281', '樂平市', 360200, 3, '中國,江西省,景德鎮市,樂平市', 117.129, 28.9629, 'Leping');
INSERT INTO `Sys_Region` VALUES (1280, '360300', '萍鄉市', 360000, 2, '中國,江西省,萍鄉市', 113.852, 27.6229, 'Pingxiang');
INSERT INTO `Sys_Region` VALUES (1281, '360302', '安源區', 360300, 3, '中國,江西省,萍鄉市,安源區', 113.891, 27.6165, 'Anyuan');
INSERT INTO `Sys_Region` VALUES (1282, '360313', '湘東區', 360300, 3, '中國,江西省,萍鄉市,湘東區', 113.733, 27.6401, 'Xiangdong');
INSERT INTO `Sys_Region` VALUES (1283, '360321', '蓮花縣', 360300, 3, '中國,江西省,萍鄉市,蓮花縣', 113.961, 27.1287, 'Lianhua');
INSERT INTO `Sys_Region` VALUES (1284, '360322', '上栗縣', 360300, 3, '中國,江西省,萍鄉市,上栗縣', 113.794, 27.8747, 'Shangli');
INSERT INTO `Sys_Region` VALUES (1285, '360323', '蘆溪縣', 360300, 3, '中國,江西省,萍鄉市,蘆溪縣', 114.03, 27.6306, 'Luxi');
INSERT INTO `Sys_Region` VALUES (1286, '360400', '九江市', 360000, 2, '中國,江西省,九江市', 115.993, 29.712, 'Jiujiang');
INSERT INTO `Sys_Region` VALUES (1287, '360402', '廬山區', 360400, 3, '中國,江西省,九江市,廬山區', 115.989, 29.6718, 'Lushan');
INSERT INTO `Sys_Region` VALUES (1288, '360403', '潯陽區', 360400, 3, '中國,江西省,九江市,潯陽區', 115.99, 29.7279, 'Xunyang');
INSERT INTO `Sys_Region` VALUES (1289, '360421', '九江縣', 360400, 3, '中國,江西省,九江市,九江縣', 115.911, 29.6085, 'Jiujiang');
INSERT INTO `Sys_Region` VALUES (1290, '360423', '武寧縣', 360400, 3, '中國,江西省,九江市,武寧縣', 115.101, 29.2584, 'Wuning');
INSERT INTO `Sys_Region` VALUES (1291, '360424', '修水縣', 360400, 3, '中國,江西省,九江市,修水縣', 114.547, 29.0254, 'Xiushui');
INSERT INTO `Sys_Region` VALUES (1292, '360425', '永修縣', 360400, 3, '中國,江西省,九江市,永修縣', 115.809, 29.0209, 'Yongxiu');
INSERT INTO `Sys_Region` VALUES (1293, '360426', '德安縣', 360400, 3, '中國,江西省,九江市,德安縣', 115.756, 29.3134, 'Dean');
INSERT INTO `Sys_Region` VALUES (1294, '360427', '星子縣', 360400, 3, '中國,江西省,九江市,星子縣', 116.045, 29.4461, 'Xingzi');
INSERT INTO `Sys_Region` VALUES (1295, '360428', '都昌縣', 360400, 3, '中國,江西省,九江市,都昌縣', 116.204, 29.2733, 'Duchang');
INSERT INTO `Sys_Region` VALUES (1296, '360429', '湖口縣', 360400, 3, '中國,江西省,九江市,湖口縣', 116.219, 29.7382, 'Hukou');
INSERT INTO `Sys_Region` VALUES (1297, '360430', '彭澤縣', 360400, 3, '中國,江西省,九江市,彭澤縣', 116.55, 29.8959, 'Pengze');
INSERT INTO `Sys_Region` VALUES (1298, '360481', '瑞昌市', 360400, 3, '中國,江西省,九江市,瑞昌市', 115.667, 29.6718, 'Ruichang');
INSERT INTO `Sys_Region` VALUES (1299, '360482', '共青城市', 360400, 3, '中國,江西省,九江市,共青城市', 115.802, 29.2388, 'Gongqingcheng');
INSERT INTO `Sys_Region` VALUES (1300, '360500', '新余市', 360000, 2, '中國,江西省,新余市', 114.931, 27.8108, 'Xinyu');
INSERT INTO `Sys_Region` VALUES (1301, '360502', '渝水區', 360500, 3, '中國,江西省,新余市,渝水區', 114.944, 27.801, 'Yushui');
INSERT INTO `Sys_Region` VALUES (1302, '360521', '分宜縣', 360500, 3, '中國,江西省,新余市,分宜縣', 114.692, 27.8148, 'Fenyi');
INSERT INTO `Sys_Region` VALUES (1303, '360600', '鷹潭市', 360000, 2, '中國,江西省,鷹潭市', 117.034, 28.2386, 'Yingtan');
INSERT INTO `Sys_Region` VALUES (1304, '360602', '月湖區', 360600, 3, '中國,江西省,鷹潭市,月湖區', 117.037, 28.2391, 'Yuehu');
INSERT INTO `Sys_Region` VALUES (1305, '360622', '余江縣', 360600, 3, '中國,江西省,鷹潭市,余江縣', 116.819, 28.2103, 'Yujiang');
INSERT INTO `Sys_Region` VALUES (1306, '360681', '貴溪市', 360600, 3, '中國,江西省,鷹潭市,貴溪市', 117.242, 28.2926, 'Guixi');
INSERT INTO `Sys_Region` VALUES (1307, '360700', '贛州市', 360000, 2, '中國,江西省,贛州市', 114.94, 25.851, 'Ganzhou');
INSERT INTO `Sys_Region` VALUES (1308, '360702', '章貢區', 360700, 3, '中國,江西省,贛州市,章貢區', 114.943, 25.8624, 'Zhanggong');
INSERT INTO `Sys_Region` VALUES (1309, '360703', '南康區', 360700, 3, '中國,江西省,贛州市,南康區', 114.757, 25.6617, 'Nankang');
INSERT INTO `Sys_Region` VALUES (1310, '360721', '贛縣', 360700, 3, '中國,江西省,贛州市,贛縣', 115.012, 25.8615, 'Ganxian');
INSERT INTO `Sys_Region` VALUES (1311, '360722', '信豐縣', 360700, 3, '中國,江西省,贛州市,信豐縣', 114.923, 25.3861, 'Xinfeng');
INSERT INTO `Sys_Region` VALUES (1312, '360723', '大余縣', 360700, 3, '中國,江西省,贛州市,大余縣', 114.358, 25.3956, 'Dayu');
INSERT INTO `Sys_Region` VALUES (1313, '360724', '上猶縣', 360700, 3, '中國,江西省,贛州市,上猶縣', 114.541, 25.7957, 'Shangyou');
INSERT INTO `Sys_Region` VALUES (1314, '360725', '崇義縣', 360700, 3, '中國,江西省,贛州市,崇義縣', 114.308, 25.6819, 'Chongyi');
INSERT INTO `Sys_Region` VALUES (1315, '360726', '安遠縣', 360700, 3, '中國,江西省,贛州市,安遠縣', 115.395, 25.1371, 'Anyuan');
INSERT INTO `Sys_Region` VALUES (1316, '360727', '龍南縣', 360700, 3, '中國,江西省,贛州市,龍南縣', 114.79, 24.9109, 'Longnan');
INSERT INTO `Sys_Region` VALUES (1317, '360728', '定南縣', 360700, 3, '中國,江西省,贛州市,定南縣', 115.027, 24.784, 'Dingnan');
INSERT INTO `Sys_Region` VALUES (1318, '360729', '全南縣', 360700, 3, '中國,江西省,贛州市,全南縣', 114.529, 24.7432, 'Quannan');
INSERT INTO `Sys_Region` VALUES (1319, '360730', '寧都縣', 360700, 3, '中國,江西省,贛州市,寧都縣', 116.016, 26.4723, 'Ningdu');
INSERT INTO `Sys_Region` VALUES (1320, '360731', '于都縣', 360700, 3, '中國,江西省,贛州市,于都縣', 115.414, 25.9526, 'Yudu');
INSERT INTO `Sys_Region` VALUES (1321, '360732', '興國縣', 360700, 3, '中國,江西省,贛州市,興國縣', 115.363, 26.3378, 'Xingguo');
INSERT INTO `Sys_Region` VALUES (1322, '360733', '會昌縣', 360700, 3, '中國,江西省,贛州市,會昌縣', 115.786, 25.6007, 'Huichang');
INSERT INTO `Sys_Region` VALUES (1323, '360734', '尋烏縣', 360700, 3, '中國,江西省,贛州市,尋烏縣', 115.649, 24.9551, 'Xunwu');
INSERT INTO `Sys_Region` VALUES (1324, '360735', '石城縣', 360700, 3, '中國,江西省,贛州市,石城縣', 116.344, 26.3262, 'Shicheng');
INSERT INTO `Sys_Region` VALUES (1325, '360781', '瑞金市', 360700, 3, '中國,江西省,贛州市,瑞金市', 116.027, 25.8856, 'Ruijin');
INSERT INTO `Sys_Region` VALUES (1326, '360800', '吉安市', 360000, 2, '中國,江西省,吉安市', 114.986, 27.1117, 'Jian');
INSERT INTO `Sys_Region` VALUES (1327, '360802', '吉州區', 360800, 3, '中國,江西省,吉安市,吉州區', 114.976, 27.1067, 'Jizhou');
INSERT INTO `Sys_Region` VALUES (1328, '360803', '青原區', 360800, 3, '中國,江西省,吉安市,青原區', 115.017, 27.1058, 'Qingyuan');
INSERT INTO `Sys_Region` VALUES (1329, '360821', '吉安縣', 360800, 3, '中國,江西省,吉安市,吉安縣', 114.907, 27.0405, 'Jian');
INSERT INTO `Sys_Region` VALUES (1330, '360822', '吉水縣', 360800, 3, '中國,江西省,吉安市,吉水縣', 115.134, 27.2107, 'Jishui');
INSERT INTO `Sys_Region` VALUES (1331, '360823', '峽江縣', 360800, 3, '中國,江西省,吉安市,峽江縣', 115.317, 27.576, 'Xiajiang');
INSERT INTO `Sys_Region` VALUES (1332, '360824', '新干縣', 360800, 3, '中國,江西省,吉安市,新干縣', 115.393, 27.7409, 'Xingan');
INSERT INTO `Sys_Region` VALUES (1333, '360825', '永豐縣', 360800, 3, '中國,江西省,吉安市,永豐縣', 115.442, 27.3179, 'Yongfeng');
INSERT INTO `Sys_Region` VALUES (1334, '360826', '泰和縣', 360800, 3, '中國,江西省,吉安市,泰和縣', 114.908, 26.7911, 'Taihe');
INSERT INTO `Sys_Region` VALUES (1335, '360827', '遂川縣', 360800, 3, '中國,江西省,吉安市,遂川縣', 114.516, 26.326, 'Suichuan');
INSERT INTO `Sys_Region` VALUES (1336, '360828', '萬安縣', 360800, 3, '中國,江西省,吉安市,萬安縣', 114.787, 26.4593, 'Wanan');
INSERT INTO `Sys_Region` VALUES (1337, '360829', '安福縣', 360800, 3, '中國,江西省,吉安市,安福縣', 114.62, 27.3928, 'Anfu');
INSERT INTO `Sys_Region` VALUES (1338, '360830', '永新縣', 360800, 3, '中國,江西省,吉安市,永新縣', 114.242, 26.9449, 'Yongxin');
INSERT INTO `Sys_Region` VALUES (1339, '360881', '井岡山市', 360800, 3, '中國,江西省,吉安市,井岡山市', 114.289, 26.748, 'Jinggangshan');
INSERT INTO `Sys_Region` VALUES (1340, '360900', '宜春市', 360000, 2, '中國,江西省,宜春市', 114.391, 27.8043, 'Yichun');
INSERT INTO `Sys_Region` VALUES (1341, '360902', '袁州區', 360900, 3, '中國,江西省,宜春市,袁州區', 114.382, 27.7965, 'Yuanzhou');
INSERT INTO `Sys_Region` VALUES (1342, '360921', '奉新縣', 360900, 3, '中國,江西省,宜春市,奉新縣', 115.4, 28.6879, 'Fengxin');
INSERT INTO `Sys_Region` VALUES (1343, '360922', '萬載縣', 360900, 3, '中國,江西省,宜春市,萬載縣', 114.446, 28.1066, 'Wanzai');
INSERT INTO `Sys_Region` VALUES (1344, '360923', '上高縣', 360900, 3, '中國,江西省,宜春市,上高縣', 114.925, 28.2342, 'Shanggao');
INSERT INTO `Sys_Region` VALUES (1345, '360924', '宜豐縣', 360900, 3, '中國,江西省,宜春市,宜豐縣', 114.78, 28.3855, 'Yifeng');
INSERT INTO `Sys_Region` VALUES (1346, '360925', '靖安縣', 360900, 3, '中國,江西省,宜春市,靖安縣', 115.363, 28.8617, 'Jingan');
INSERT INTO `Sys_Region` VALUES (1347, '360926', '銅鼓縣', 360900, 3, '中國,江西省,宜春市,銅鼓縣', 114.37, 28.5231, 'Tonggu');
INSERT INTO `Sys_Region` VALUES (1348, '360981', '豐城市', 360900, 3, '中國,江西省,宜春市,豐城市', 115.771, 28.1592, 'Fengcheng');
INSERT INTO `Sys_Region` VALUES (1349, '360982', '樟樹市', 360900, 3, '中國,江西省,宜春市,樟樹市', 115.547, 28.0533, 'Zhangshu');
INSERT INTO `Sys_Region` VALUES (1350, '360983', '高安市', 360900, 3, '中國,江西省,宜春市,高安市', 115.375, 28.4178, 'Gaoan');
INSERT INTO `Sys_Region` VALUES (1351, '361000', '撫州市', 360000, 2, '中國,江西省,撫州市', 116.358, 27.9839, 'Fuzhou');
INSERT INTO `Sys_Region` VALUES (1352, '361002', '臨川區', 361000, 3, '中國,江西省,撫州市,臨川區', 116.359, 27.9772, 'Linchuan');
INSERT INTO `Sys_Region` VALUES (1353, '361021', '南城縣', 361000, 3, '中國,江西省,撫州市,南城縣', 116.644, 27.5538, 'Nancheng');
INSERT INTO `Sys_Region` VALUES (1354, '361022', '黎川縣', 361000, 3, '中國,江西省,撫州市,黎川縣', 116.908, 27.2823, 'Lichuan');
INSERT INTO `Sys_Region` VALUES (1355, '361023', '南豐縣', 361000, 3, '中國,江西省,撫州市,南豐縣', 116.526, 27.2184, 'Nanfeng');
INSERT INTO `Sys_Region` VALUES (1356, '361024', '崇仁縣', 361000, 3, '中國,江西省,撫州市,崇仁縣', 116.06, 27.7596, 'Chongren');
INSERT INTO `Sys_Region` VALUES (1357, '361025', '樂安縣', 361000, 3, '中國,江西省,撫州市,樂安縣', 115.831, 27.4281, 'Lean');
INSERT INTO `Sys_Region` VALUES (1358, '361026', '宜黃縣', 361000, 3, '中國,江西省,撫州市,宜黃縣', 116.236, 27.5549, 'Yihuang');
INSERT INTO `Sys_Region` VALUES (1359, '361027', '金溪縣', 361000, 3, '中國,江西省,撫州市,金溪縣', 116.774, 27.9075, 'Jinxi');
INSERT INTO `Sys_Region` VALUES (1360, '361028', '資溪縣', 361000, 3, '中國,江西省,撫州市,資溪縣', 117.069, 27.7049, 'Zixi');
INSERT INTO `Sys_Region` VALUES (1361, '361029', '東鄉縣', 361000, 3, '中國,江西省,撫州市,東鄉縣', 116.59, 28.2361, 'Dongxiang');
INSERT INTO `Sys_Region` VALUES (1362, '361030', '廣昌縣', 361000, 3, '中國,江西省,撫州市,廣昌縣', 116.325, 26.8341, 'Guangchang');
INSERT INTO `Sys_Region` VALUES (1363, '361100', '上饒市', 360000, 2, '中國,江西省,上饒市', 117.971, 28.4444, 'Shangrao');
INSERT INTO `Sys_Region` VALUES (1364, '361102', '信州區', 361100, 3, '中國,江西省,上饒市,信州區', 117.967, 28.4312, 'Xinzhou');
INSERT INTO `Sys_Region` VALUES (1365, '361121', '上饒縣', 361100, 3, '中國,江西省,上饒市,上饒縣', 117.909, 28.4486, 'Shangrao');
INSERT INTO `Sys_Region` VALUES (1366, '361122', '廣豐縣', 361100, 3, '中國,江西省,上饒市,廣豐縣', 118.192, 28.4377, 'Guangfeng');
INSERT INTO `Sys_Region` VALUES (1367, '361123', '玉山縣', 361100, 3, '中國,江西省,上饒市,玉山縣', 118.245, 28.6818, 'Yushan');
INSERT INTO `Sys_Region` VALUES (1368, '361124', '鉛山縣', 361100, 3, '中國,江西省,上饒市,鉛山縣', 117.71, 28.3155, 'Yanshan');
INSERT INTO `Sys_Region` VALUES (1369, '361125', '橫峰縣', 361100, 3, '中國,江西省,上饒市,橫峰縣', 117.596, 28.4072, 'Hengfeng');
INSERT INTO `Sys_Region` VALUES (1370, '361126', '弋陽縣', 361100, 3, '中國,江西省,上饒市,弋陽縣', 117.459, 28.3745, 'Yiyang');
INSERT INTO `Sys_Region` VALUES (1371, '361127', '余干縣', 361100, 3, '中國,江西省,上饒市,余干縣', 116.696, 28.7021, 'Yugan');
INSERT INTO `Sys_Region` VALUES (1372, '361128', '鄱陽縣', 361100, 3, '中國,江西省,上饒市,鄱陽縣', 116.7, 29.0118, 'Poyang');
INSERT INTO `Sys_Region` VALUES (1373, '361129', '萬年縣', 361100, 3, '中國,江西省,上饒市,萬年縣', 117.069, 28.6954, 'Wannian');
INSERT INTO `Sys_Region` VALUES (1374, '361130', '婺源縣', 361100, 3, '中國,江西省,上饒市,婺源縣', 117.861, 29.2484, 'Wuyuan');
INSERT INTO `Sys_Region` VALUES (1375, '361181', '德興市', 361100, 3, '中國,江西省,上饒市,德興市', 117.579, 28.9474, 'Dexing');
INSERT INTO `Sys_Region` VALUES (1376, '370000', '山東省', 100000, 1, '中國,山東省', 117.001, 36.6758, 'Shandong');
INSERT INTO `Sys_Region` VALUES (1377, '370100', '濟南市', 370000, 2, '中國,山東省,濟南市', 117.001, 36.6758, 'Jinan');
INSERT INTO `Sys_Region` VALUES (1378, '370102', '歷下區', 370100, 3, '中國,山東省,濟南市,歷下區', 117.077, 36.6666, 'Lixia');
INSERT INTO `Sys_Region` VALUES (1379, '370103', '市中區', 370100, 3, '中國,山東省,濟南市,市中區', 116.997, 36.651, 'Shizhongqu');
INSERT INTO `Sys_Region` VALUES (1380, '370104', '槐蔭區', 370100, 3, '中國,山東省,濟南市,槐蔭區', 116.901, 36.6514, 'Huaiyin');
INSERT INTO `Sys_Region` VALUES (1381, '370105', '天橋區', 370100, 3, '中國,山東省,濟南市,天橋區', 116.987, 36.678, 'Tianqiao');
INSERT INTO `Sys_Region` VALUES (1382, '370112', '歷城區', 370100, 3, '中國,山東省,濟南市,歷城區', 117.065, 36.68, 'Licheng');
INSERT INTO `Sys_Region` VALUES (1383, '370113', '長清區', 370100, 3, '中國,山東省,濟南市,長清區', 116.752, 36.5535, 'Changqing');
INSERT INTO `Sys_Region` VALUES (1384, '370124', '平陰縣', 370100, 3, '中國,山東省,濟南市,平陰縣', 116.456, 36.2896, 'Pingyin');
INSERT INTO `Sys_Region` VALUES (1385, '370125', '濟陽縣', 370100, 3, '中國,山東省,濟南市,濟陽縣', 117.173, 36.9785, 'Jiyang');
INSERT INTO `Sys_Region` VALUES (1386, '370126', '商河縣', 370100, 3, '中國,山東省,濟南市,商河縣', 117.157, 37.3112, 'Shanghe');
INSERT INTO `Sys_Region` VALUES (1387, '370181', '章丘市', 370100, 3, '中國,山東省,濟南市,章丘市', 117.537, 36.7139, 'Zhangqiu');
INSERT INTO `Sys_Region` VALUES (1388, '370200', '青島市', 370000, 2, '中國,山東省,青島市', 120.37, 36.0944, 'Qingdao');
INSERT INTO `Sys_Region` VALUES (1389, '370202', '市南區', 370200, 3, '中國,山東省,青島市,市南區', 120.388, 36.0667, 'Shinan');
INSERT INTO `Sys_Region` VALUES (1390, '370203', '市北區', 370200, 3, '中國,山東省,青島市,市北區', 120.375, 36.0873, 'Shibei');
INSERT INTO `Sys_Region` VALUES (1391, '370211', '黃島區', 370200, 3, '中國,山東省,青島市,黃島區', 120.198, 35.9607, 'Huangdao');
INSERT INTO `Sys_Region` VALUES (1392, '370212', '嶗山區', 370200, 3, '中國,山東省,青島市,嶗山區', 120.469, 36.1072, 'Laoshan');
INSERT INTO `Sys_Region` VALUES (1393, '370213', '李滄區', 370200, 3, '中國,山東省,青島市,李滄區', 120.433, 36.145, 'Licang');
INSERT INTO `Sys_Region` VALUES (1394, '370214', '城陽區', 370200, 3, '中國,山東省,青島市,城陽區', 120.396, 36.3074, 'Chengyang');
INSERT INTO `Sys_Region` VALUES (1395, '370281', '膠州市', 370200, 3, '中國,山東省,青島市,膠州市', 120.034, 36.2644, 'Jiaozhou');
INSERT INTO `Sys_Region` VALUES (1396, '370282', '即墨市', 370200, 3, '中國,山東省,青島市,即墨市', 120.447, 36.3891, 'Jimo');
INSERT INTO `Sys_Region` VALUES (1397, '370283', '平度市', 370200, 3, '中國,山東省,青島市,平度市', 119.96, 36.7869, 'Pingdu');
INSERT INTO `Sys_Region` VALUES (1398, '370285', '萊西市', 370200, 3, '中國,山東省,青島市,萊西市', 120.518, 36.888, 'Laixi');
INSERT INTO `Sys_Region` VALUES (1399, '370286', '西海岸新區', 370200, 3, '中國,山東省,青島市,西海岸新區', 120.198, 35.9607, 'Xihaian');
INSERT INTO `Sys_Region` VALUES (1400, '370300', '淄博市', 370000, 2, '中國,山東省,淄博市', 118.048, 36.8149, 'Zibo');
INSERT INTO `Sys_Region` VALUES (1401, '370302', '淄川區', 370300, 3, '中國,山東省,淄博市,淄川區', 117.967, 36.6434, 'Zichuan');
INSERT INTO `Sys_Region` VALUES (1402, '370303', '張店區', 370300, 3, '中國,山東省,淄博市,張店區', 118.018, 36.8068, 'Zhangdian');
INSERT INTO `Sys_Region` VALUES (1403, '370304', '博山區', 370300, 3, '中國,山東省,淄博市,博山區', 117.862, 36.4947, 'Boshan');
INSERT INTO `Sys_Region` VALUES (1404, '370305', '臨淄區', 370300, 3, '中國,山東省,淄博市,臨淄區', 118.31, 36.8259, 'Linzi');
INSERT INTO `Sys_Region` VALUES (1405, '370306', '周村區', 370300, 3, '中國,山東省,淄博市,周村區', 117.87, 36.8032, 'Zhoucun');
INSERT INTO `Sys_Region` VALUES (1406, '370321', '桓臺縣', 370300, 3, '中國,山東省,淄博市,桓臺縣', 118.097, 36.9604, 'Huantai');
INSERT INTO `Sys_Region` VALUES (1407, '370322', '高青縣', 370300, 3, '中國,山東省,淄博市,高青縣', 117.827, 37.172, 'Gaoqing');
INSERT INTO `Sys_Region` VALUES (1408, '370323', '沂源縣', 370300, 3, '中國,山東省,淄博市,沂源縣', 118.171, 36.1854, 'Yiyuan');
INSERT INTO `Sys_Region` VALUES (1409, '370400', '棗莊市', 370000, 2, '中國,山東省,棗莊市', 117.558, 34.8564, 'Zaozhuang');
INSERT INTO `Sys_Region` VALUES (1410, '370402', '市中區', 370400, 3, '中國,山東省,棗莊市,市中區', 117.556, 34.8639, 'Shizhongqu');
INSERT INTO `Sys_Region` VALUES (1411, '370403', '薛城區', 370400, 3, '中國,山東省,棗莊市,薛城區', 117.263, 34.795, 'Xuecheng');
INSERT INTO `Sys_Region` VALUES (1412, '370404', '嶧城區', 370400, 3, '中國,山東省,棗莊市,嶧城區', 117.591, 34.7723, 'Yicheng');
INSERT INTO `Sys_Region` VALUES (1413, '370405', '臺兒莊區', 370400, 3, '中國,山東省,棗莊市,臺兒莊區', 117.735, 34.5636, 'Taierzhuang');
INSERT INTO `Sys_Region` VALUES (1414, '370406', '山亭區', 370400, 3, '中國,山東省,棗莊市,山亭區', 117.466, 35.0954, 'Shanting');
INSERT INTO `Sys_Region` VALUES (1415, '370481', '滕州市', 370400, 3, '中國,山東省,棗莊市,滕州市', 117.165, 35.1053, 'Tengzhou');
INSERT INTO `Sys_Region` VALUES (1416, '370500', '東營市', 370000, 2, '中國,山東省,東營市', 118.496, 37.4613, 'Dongying');
INSERT INTO `Sys_Region` VALUES (1417, '370502', '東營區', 370500, 3, '中國,山東省,東營市,東營區', 118.582, 37.4487, 'Dongying');
INSERT INTO `Sys_Region` VALUES (1418, '370503', '河口區', 370500, 3, '中國,山東省,東營市,河口區', 118.525, 37.8854, 'Hekou');
INSERT INTO `Sys_Region` VALUES (1419, '370521', '墾利縣', 370500, 3, '中國,山東省,東營市,墾利縣', 118.548, 37.5882, 'Kenli');
INSERT INTO `Sys_Region` VALUES (1420, '370522', '利津縣', 370500, 3, '中國,山東省,東營市,利津縣', 118.256, 37.4916, 'Lijin');
INSERT INTO `Sys_Region` VALUES (1421, '370523', '廣饒縣', 370500, 3, '中國,山東省,東營市,廣饒縣', 118.407, 37.0538, 'Guangrao');
INSERT INTO `Sys_Region` VALUES (1422, '370600', '煙臺市', 370000, 2, '中國,山東省,煙臺市', 121.391, 37.5393, 'Yantai');
INSERT INTO `Sys_Region` VALUES (1423, '370602', '芝罘區', 370600, 3, '中國,山東省,煙臺市,芝罘區', 121.4, 37.5406, 'Zhifu');
INSERT INTO `Sys_Region` VALUES (1424, '370611', '福山區', 370600, 3, '中國,山東省,煙臺市,福山區', 121.268, 37.4984, 'Fushan');
INSERT INTO `Sys_Region` VALUES (1425, '370612', '牟平區', 370600, 3, '中國,山東省,煙臺市,牟平區', 121.601, 37.3885, 'Muping');
INSERT INTO `Sys_Region` VALUES (1426, '370613', '萊山區', 370600, 3, '中國,山東省,煙臺市,萊山區', 121.445, 37.5117, 'Laishan');
INSERT INTO `Sys_Region` VALUES (1427, '370634', '長島縣', 370600, 3, '中國,山東省,煙臺市,長島縣', 120.738, 37.9175, 'Changdao');
INSERT INTO `Sys_Region` VALUES (1428, '370681', '龍口市', 370600, 3, '中國,山東省,煙臺市,龍口市', 120.506, 37.6406, 'Longkou');
INSERT INTO `Sys_Region` VALUES (1429, '370682', '萊陽市', 370600, 3, '中國,山東省,煙臺市,萊陽市', 120.711, 36.9801, 'Laiyang');
INSERT INTO `Sys_Region` VALUES (1430, '370683', '萊州市', 370600, 3, '中國,山東省,煙臺市,萊州市', 119.941, 37.1781, 'Laizhou');
INSERT INTO `Sys_Region` VALUES (1431, '370684', '蓬萊市', 370600, 3, '中國,山東省,煙臺市,蓬萊市', 120.76, 37.8112, 'Penglai');
INSERT INTO `Sys_Region` VALUES (1432, '370685', '招遠市', 370600, 3, '中國,山東省,煙臺市,招遠市', 120.405, 37.3627, 'Zhaoyuan');
INSERT INTO `Sys_Region` VALUES (1433, '370686', '棲霞市', 370600, 3, '中國,山東省,煙臺市,棲霞市', 120.85, 37.3357, 'Qixia');
INSERT INTO `Sys_Region` VALUES (1434, '370687', '海陽市', 370600, 3, '中國,山東省,煙臺市,海陽市', 121.16, 36.7762, 'Haiyang');
INSERT INTO `Sys_Region` VALUES (1435, '370700', '濰坊市', 370000, 2, '中國,山東省,濰坊市', 119.107, 36.7093, 'Weifang');
INSERT INTO `Sys_Region` VALUES (1436, '370702', '濰城區', 370700, 3, '中國,山東省,濰坊市,濰城區', 119.106, 36.7139, 'Weicheng');
INSERT INTO `Sys_Region` VALUES (1437, '370703', '寒亭區', 370700, 3, '中國,山東省,濰坊市,寒亭區', 119.218, 36.775, 'Hanting');
INSERT INTO `Sys_Region` VALUES (1438, '370704', '坊子區', 370700, 3, '中國,山東省,濰坊市,坊子區', 119.165, 36.6522, 'Fangzi');
INSERT INTO `Sys_Region` VALUES (1439, '370705', '奎文區', 370700, 3, '中國,山東省,濰坊市,奎文區', 119.125, 36.7072, 'Kuiwen');
INSERT INTO `Sys_Region` VALUES (1440, '370724', '臨朐縣', 370700, 3, '中國,山東省,濰坊市,臨朐縣', 118.544, 36.5122, 'Linqu');
INSERT INTO `Sys_Region` VALUES (1441, '370725', '昌樂縣', 370700, 3, '中國,山東省,濰坊市,昌樂縣', 118.83, 36.7078, 'Changle');
INSERT INTO `Sys_Region` VALUES (1442, '370781', '青州市', 370700, 3, '中國,山東省,濰坊市,青州市', 118.479, 36.6851, 'Qingzhou');
INSERT INTO `Sys_Region` VALUES (1443, '370782', '諸城市', 370700, 3, '中國,山東省,濰坊市,諸城市', 119.41, 35.9966, 'Zhucheng');
INSERT INTO `Sys_Region` VALUES (1444, '370783', '壽光市', 370700, 3, '中國,山東省,濰坊市,壽光市', 118.74, 36.8813, 'Shouguang');
INSERT INTO `Sys_Region` VALUES (1445, '370784', '安丘市', 370700, 3, '中國,山東省,濰坊市,安丘市', 119.219, 36.4785, 'Anqiu');
INSERT INTO `Sys_Region` VALUES (1446, '370785', '高密市', 370700, 3, '中國,山東省,濰坊市,高密市', 119.757, 36.384, 'Gaomi');
INSERT INTO `Sys_Region` VALUES (1447, '370786', '昌邑市', 370700, 3, '中國,山東省,濰坊市,昌邑市', 119.398, 36.8601, 'Changyi');
INSERT INTO `Sys_Region` VALUES (1448, '370800', '濟寧市', 370000, 2, '中國,山東省,濟寧市', 116.587, 35.4154, 'Jining');
INSERT INTO `Sys_Region` VALUES (1449, '370811', '任城區', 370800, 3, '中國,山東省,濟寧市,任城區', 116.595, 35.4066, 'Rencheng');
INSERT INTO `Sys_Region` VALUES (1450, '370812', '兗州區', 370800, 3, '中國,山東省,濟寧市,兗州區', 116.827, 35.5523, 'Yanzhou ');
INSERT INTO `Sys_Region` VALUES (1451, '370826', '微山縣', 370800, 3, '中國,山東省,濟寧市,微山縣', 117.129, 34.8071, 'Weishan');
INSERT INTO `Sys_Region` VALUES (1452, '370827', '魚臺縣', 370800, 3, '中國,山東省,濟寧市,魚臺縣', 116.648, 34.9967, 'Yutai');
INSERT INTO `Sys_Region` VALUES (1453, '370828', '金鄉縣', 370800, 3, '中國,山東省,濟寧市,金鄉縣', 116.311, 35.065, 'Jinxiang');
INSERT INTO `Sys_Region` VALUES (1454, '370829', '嘉祥縣', 370800, 3, '中國,山東省,濟寧市,嘉祥縣', 116.342, 35.4084, 'Jiaxiang');
INSERT INTO `Sys_Region` VALUES (1455, '370830', '汶上縣', 370800, 3, '中國,山東省,濟寧市,汶上縣', 116.487, 35.7329, 'Wenshang');
INSERT INTO `Sys_Region` VALUES (1456, '370831', '泗水縣', 370800, 3, '中國,山東省,濟寧市,泗水縣', 117.279, 35.6611, 'Sishui');
INSERT INTO `Sys_Region` VALUES (1457, '370832', '梁山縣', 370800, 3, '中國,山東省,濟寧市,梁山縣', 116.097, 35.8032, 'Liangshan');
INSERT INTO `Sys_Region` VALUES (1458, '370881', '曲阜市', 370800, 3, '中國,山東省,濟寧市,曲阜市', 116.986, 35.5809, 'Qufu');
INSERT INTO `Sys_Region` VALUES (1459, '370883', '鄒城市', 370800, 3, '中國,山東省,濟寧市,鄒城市', 116.973, 35.4053, 'Zoucheng');
INSERT INTO `Sys_Region` VALUES (1460, '370900', '泰安市', 370000, 2, '中國,山東省,泰安市', 117.129, 36.195, 'Taian');
INSERT INTO `Sys_Region` VALUES (1461, '370902', '泰山區', 370900, 3, '中國,山東省,泰安市,泰山區', 117.134, 36.1941, 'Taishan');
INSERT INTO `Sys_Region` VALUES (1462, '370911', '岱岳區', 370900, 3, '中國,山東省,泰安市,岱岳區', 117.042, 36.1875, 'Daiyue');
INSERT INTO `Sys_Region` VALUES (1463, '370921', '寧陽縣', 370900, 3, '中國,山東省,泰安市,寧陽縣', 116.805, 35.7599, 'Ningyang');
INSERT INTO `Sys_Region` VALUES (1464, '370923', '東平縣', 370900, 3, '中國,山東省,泰安市,東平縣', 116.471, 35.9379, 'Dongping');
INSERT INTO `Sys_Region` VALUES (1465, '370982', '新泰市', 370900, 3, '中國,山東省,泰安市,新泰市', 117.77, 35.9089, 'Xintai');
INSERT INTO `Sys_Region` VALUES (1466, '370983', '肥城市', 370900, 3, '中國,山東省,泰安市,肥城市', 116.768, 36.1825, 'Feicheng');
INSERT INTO `Sys_Region` VALUES (1467, '371000', '威海市', 370000, 2, '中國,山東省,威海市', 122.116, 37.5097, 'Weihai');
INSERT INTO `Sys_Region` VALUES (1468, '371002', '環翠區', 371000, 3, '中國,山東省,威海市,環翠區', 122.123, 37.502, 'Huancui');
INSERT INTO `Sys_Region` VALUES (1469, '371003', '文登區', 371000, 3, '中國,山東省,威海市,文登區', 122.057, 37.1962, 'Wendeng');
INSERT INTO `Sys_Region` VALUES (1470, '371082', '榮成市', 371000, 3, '中國,山東省,威海市,榮成市', 122.488, 37.1652, 'Rongcheng');
INSERT INTO `Sys_Region` VALUES (1471, '371083', '乳山市', 371000, 3, '中國,山東省,威海市,乳山市', 121.538, 36.9192, 'Rushan');
INSERT INTO `Sys_Region` VALUES (1472, '371100', '日照市', 370000, 2, '中國,山東省,日照市', 119.461, 35.4286, 'Rizhao');
INSERT INTO `Sys_Region` VALUES (1473, '371102', '東港區', 371100, 3, '中國,山東省,日照市,東港區', 119.462, 35.4254, 'Donggang');
INSERT INTO `Sys_Region` VALUES (1474, '371103', '嵐山區', 371100, 3, '中國,山東省,日照市,嵐山區', 119.319, 35.122, 'Lanshan');
INSERT INTO `Sys_Region` VALUES (1475, '371121', '五蓮縣', 371100, 3, '中國,山東省,日照市,五蓮縣', 119.207, 35.75, 'Wulian');
INSERT INTO `Sys_Region` VALUES (1476, '371122', '莒縣', 371100, 3, '中國,山東省,日照市,莒縣', 118.838, 35.5805, 'Juxian');
INSERT INTO `Sys_Region` VALUES (1477, '371200', '萊蕪市', 370000, 2, '中國,山東省,萊蕪市', 117.678, 36.2144, 'Laiwu');
INSERT INTO `Sys_Region` VALUES (1478, '371202', '萊城區', 371200, 3, '中國,山東省,萊蕪市,萊城區', 117.66, 36.2032, 'Laicheng');
INSERT INTO `Sys_Region` VALUES (1479, '371203', '鋼城區', 371200, 3, '中國,山東省,萊蕪市,鋼城區', 117.805, 36.0632, 'Gangcheng');
INSERT INTO `Sys_Region` VALUES (1480, '371300', '臨沂市', 370000, 2, '中國,山東省,臨沂市', 118.326, 35.0653, 'Linyi');
INSERT INTO `Sys_Region` VALUES (1481, '371302', '蘭山區', 371300, 3, '中國,山東省,臨沂市,蘭山區', 118.348, 35.0687, 'Lanshan');
INSERT INTO `Sys_Region` VALUES (1482, '371311', '羅莊區', 371300, 3, '中國,山東省,臨沂市,羅莊區', 118.285, 34.9963, 'Luozhuang');
INSERT INTO `Sys_Region` VALUES (1483, '371312', '河東區', 371300, 3, '中國,山東省,臨沂市,河東區', 118.411, 35.088, 'Hedong');
INSERT INTO `Sys_Region` VALUES (1484, '371321', '沂南縣', 371300, 3, '中國,山東省,臨沂市,沂南縣', 118.471, 35.5513, 'Yinan');
INSERT INTO `Sys_Region` VALUES (1485, '371322', '郯城縣', 371300, 3, '中國,山東省,臨沂市,郯城縣', 118.367, 34.6135, 'Tancheng');
INSERT INTO `Sys_Region` VALUES (1486, '371323', '沂水縣', 371300, 3, '中國,山東省,臨沂市,沂水縣', 118.63, 35.7873, 'Yishui');
INSERT INTO `Sys_Region` VALUES (1487, '371324', '蘭陵縣', 371300, 3, '中國,山東省,臨沂市,蘭陵縣', 117.857, 34.7383, 'Lanling');
INSERT INTO `Sys_Region` VALUES (1488, '371325', '費縣', 371300, 3, '中國,山東省,臨沂市,費縣', 117.978, 35.2656, 'Feixian');
INSERT INTO `Sys_Region` VALUES (1489, '371326', '平邑縣', 371300, 3, '中國,山東省,臨沂市,平邑縣', 117.639, 35.5057, 'Pingyi');
INSERT INTO `Sys_Region` VALUES (1490, '371327', '莒南縣', 371300, 3, '中國,山東省,臨沂市,莒南縣', 118.832, 35.1754, 'Junan');
INSERT INTO `Sys_Region` VALUES (1491, '371328', '蒙陰縣', 371300, 3, '中國,山東省,臨沂市,蒙陰縣', 117.946, 35.71, 'Mengyin');
INSERT INTO `Sys_Region` VALUES (1492, '371329', '臨沭縣', 371300, 3, '中國,山東省,臨沂市,臨沭縣', 118.653, 34.9209, 'Linshu');
INSERT INTO `Sys_Region` VALUES (1493, '371400', '德州市', 370000, 2, '中國,山東省,德州市', 116.307, 37.454, 'Dezhou');
INSERT INTO `Sys_Region` VALUES (1494, '371402', '德城區', 371400, 3, '中國,山東省,德州市,德城區', 116.299, 37.4513, 'Decheng');
INSERT INTO `Sys_Region` VALUES (1495, '371403', '陵城區', 371400, 3, '中國,山東省,德州市,陵城區', 116.576, 37.3357, 'Lingcheng');
INSERT INTO `Sys_Region` VALUES (1496, '371422', '寧津縣', 371400, 3, '中國,山東省,德州市,寧津縣', 116.797, 37.653, 'Ningjin');
INSERT INTO `Sys_Region` VALUES (1497, '371423', '慶云縣', 371400, 3, '中國,山東省,德州市,慶云縣', 117.386, 37.7762, 'Qingyun');
INSERT INTO `Sys_Region` VALUES (1498, '371424', '臨邑縣', 371400, 3, '中國,山東省,德州市,臨邑縣', 116.865, 37.1905, 'Linyi');
INSERT INTO `Sys_Region` VALUES (1499, '371425', '齊河縣', 371400, 3, '中國,山東省,德州市,齊河縣', 116.755, 36.7953, 'Qihe');
INSERT INTO `Sys_Region` VALUES (1500, '371426', '平原縣', 371400, 3, '中國,山東省,德州市,平原縣', 116.434, 37.1663, 'Pingyuan');
INSERT INTO `Sys_Region` VALUES (1501, '371427', '夏津縣', 371400, 3, '中國,山東省,德州市,夏津縣', 116.002, 36.9485, 'Xiajin');
INSERT INTO `Sys_Region` VALUES (1502, '371428', '武城縣', 371400, 3, '中國,山東省,德州市,武城縣', 116.07, 37.214, 'Wucheng');
INSERT INTO `Sys_Region` VALUES (1503, '371481', '樂陵市', 371400, 3, '中國,山東省,德州市,樂陵市', 117.231, 37.7316, 'Leling');
INSERT INTO `Sys_Region` VALUES (1504, '371482', '禹城市', 371400, 3, '中國,山東省,德州市,禹城市', 116.643, 36.9344, 'Yucheng');
INSERT INTO `Sys_Region` VALUES (1505, '371500', '聊城市', 370000, 2, '中國,山東省,聊城市', 115.98, 36.456, 'Liaocheng');
INSERT INTO `Sys_Region` VALUES (1506, '371502', '東昌府區', 371500, 3, '中國,山東省,聊城市,東昌府區', 115.974, 36.4446, 'Dongchangfu');
INSERT INTO `Sys_Region` VALUES (1507, '371521', '陽谷縣', 371500, 3, '中國,山東省,聊城市,陽谷縣', 115.791, 36.1144, 'Yanggu');
INSERT INTO `Sys_Region` VALUES (1508, '371522', '莘縣', 371500, 3, '中國,山東省,聊城市,莘縣', 115.67, 36.2342, 'Shenxian');
INSERT INTO `Sys_Region` VALUES (1509, '371523', '茌平縣', 371500, 3, '中國,山東省,聊城市,茌平縣', 116.255, 36.5797, 'Chiping');
INSERT INTO `Sys_Region` VALUES (1510, '371524', '東阿縣', 371500, 3, '中國,山東省,聊城市,東阿縣', 116.25, 36.3321, 'Donge');
INSERT INTO `Sys_Region` VALUES (1511, '371525', '冠縣', 371500, 3, '中國,山東省,聊城市,冠縣', 115.442, 36.4843, 'Guanxian');
INSERT INTO `Sys_Region` VALUES (1512, '371526', '高唐縣', 371500, 3, '中國,山東省,聊城市,高唐縣', 116.232, 36.8653, 'Gaotang');
INSERT INTO `Sys_Region` VALUES (1513, '371581', '臨清市', 371500, 3, '中國,山東省,聊城市,臨清市', 115.706, 36.8395, 'Linqing');
INSERT INTO `Sys_Region` VALUES (1514, '371600', '濱州市', 370000, 2, '中國,山東省,濱州市', 118.017, 37.3835, 'Binzhou');
INSERT INTO `Sys_Region` VALUES (1515, '371602', '濱城區', 371600, 3, '中國,山東省,濱州市,濱城區', 118.02, 37.3852, 'Bincheng');
INSERT INTO `Sys_Region` VALUES (1516, '371603', '沾化區', 371600, 3, '中國,山東省,濱州市,沾化區', 118.132, 37.6983, 'Zhanhua');
INSERT INTO `Sys_Region` VALUES (1517, '371621', '惠民縣', 371600, 3, '中國,山東省,濱州市,惠民縣', 117.511, 37.4901, 'Huimin');
INSERT INTO `Sys_Region` VALUES (1518, '371622', '陽信縣', 371600, 3, '中國,山東省,濱州市,陽信縣', 117.581, 37.642, 'Yangxin');
INSERT INTO `Sys_Region` VALUES (1519, '371623', '無棣縣', 371600, 3, '中國,山東省,濱州市,無棣縣', 117.614, 37.7401, 'Wudi');
INSERT INTO `Sys_Region` VALUES (1520, '371625', '博興縣', 371600, 3, '中國,山東省,濱州市,博興縣', 118.134, 37.1432, 'Boxing');
INSERT INTO `Sys_Region` VALUES (1521, '371626', '鄒平縣', 371600, 3, '中國,山東省,濱州市,鄒平縣', 117.743, 36.8629, 'Zouping');
INSERT INTO `Sys_Region` VALUES (1522, '371627', '北海新區', 371600, 3, '中國,山東省,濱州市,北海新區', 118.017, 37.3835, 'Beihaixinqu');
INSERT INTO `Sys_Region` VALUES (1523, '371700', '菏澤市', 370000, 2, '中國,山東省,菏澤市', 115.469, 35.2465, 'Heze');
INSERT INTO `Sys_Region` VALUES (1524, '371702', '牡丹區', 371700, 3, '中國,山東省,菏澤市,牡丹區', 115.417, 35.2509, 'Mudan');
INSERT INTO `Sys_Region` VALUES (1525, '371721', '曹縣', 371700, 3, '中國,山東省,菏澤市,曹縣', 115.542, 34.8266, 'Caoxian');
INSERT INTO `Sys_Region` VALUES (1526, '371722', '單縣', 371700, 3, '中國,山東省,菏澤市,單縣', 116.087, 34.7951, 'Shanxian');
INSERT INTO `Sys_Region` VALUES (1527, '371723', '成武縣', 371700, 3, '中國,山東省,菏澤市,成武縣', 115.89, 34.9533, 'Chengwu');
INSERT INTO `Sys_Region` VALUES (1528, '371724', '巨野縣', 371700, 3, '中國,山東省,菏澤市,巨野縣', 116.095, 35.3979, 'Juye');
INSERT INTO `Sys_Region` VALUES (1529, '371725', '鄆城縣', 371700, 3, '中國,山東省,菏澤市,鄆城縣', 115.944, 35.6004, 'Yuncheng');
INSERT INTO `Sys_Region` VALUES (1530, '371726', '鄄城縣', 371700, 3, '中國,山東省,菏澤市,鄄城縣', 115.51, 35.5641, 'Juancheng');
INSERT INTO `Sys_Region` VALUES (1531, '371727', '定陶縣', 371700, 3, '中國,山東省,菏澤市,定陶縣', 115.573, 35.0712, 'Dingtao');
INSERT INTO `Sys_Region` VALUES (1532, '371728', '東明縣', 371700, 3, '中國,山東省,菏澤市,東明縣', 115.091, 35.2891, 'Dongming');
INSERT INTO `Sys_Region` VALUES (1533, '410000', '河南省', 100000, 1, '中國,河南省', 113.665, 34.758, 'Henan');
INSERT INTO `Sys_Region` VALUES (1534, '410100', '鄭州市', 410000, 2, '中國,河南省,鄭州市', 113.665, 34.758, 'Zhengzhou');
INSERT INTO `Sys_Region` VALUES (1535, '410102', '中原區', 410100, 3, '中國,河南省,鄭州市,中原區', 113.613, 34.7483, 'Zhongyuan');
INSERT INTO `Sys_Region` VALUES (1536, '410103', '二七區', 410100, 3, '中國,河南省,鄭州市,二七區', 113.639, 34.7234, 'Erqi');
INSERT INTO `Sys_Region` VALUES (1537, '410104', '管城回族區', 410100, 3, '中國,河南省,鄭州市,管城回族區', 113.677, 34.7538, 'Guancheng');
INSERT INTO `Sys_Region` VALUES (1538, '410105', '金水區', 410100, 3, '中國,河南省,鄭州市,金水區', 113.661, 34.8003, 'Jinshui');
INSERT INTO `Sys_Region` VALUES (1539, '410106', '上街區', 410100, 3, '中國,河南省,鄭州市,上街區', 113.309, 34.8028, 'Shangjie');
INSERT INTO `Sys_Region` VALUES (1540, '410108', '惠濟區', 410100, 3, '中國,河南省,鄭州市,惠濟區', 113.617, 34.8674, 'Huiji');
INSERT INTO `Sys_Region` VALUES (1541, '410122', '中牟縣', 410100, 3, '中國,河南省,鄭州市,中牟縣', 113.976, 34.719, 'Zhongmu');
INSERT INTO `Sys_Region` VALUES (1542, '410181', '鞏義市', 410100, 3, '中國,河南省,鄭州市,鞏義市', 113.022, 34.7479, 'Gongyi');
INSERT INTO `Sys_Region` VALUES (1543, '410182', '滎陽市', 410100, 3, '中國,河南省,鄭州市,滎陽市', 113.383, 34.7876, 'Xingyang');
INSERT INTO `Sys_Region` VALUES (1544, '410183', '新密市', 410100, 3, '中國,河南省,鄭州市,新密市', 113.387, 34.537, 'Xinmi');
INSERT INTO `Sys_Region` VALUES (1545, '410184', '新鄭市', 410100, 3, '中國,河南省,鄭州市,新鄭市', 113.736, 34.3955, 'Xinzheng');
INSERT INTO `Sys_Region` VALUES (1546, '410185', '登封市', 410100, 3, '中國,河南省,鄭州市,登封市', 113.05, 34.4534, 'Dengfeng');
INSERT INTO `Sys_Region` VALUES (1547, '410200', '開封市', 410000, 2, '中國,河南省,開封市', 114.341, 34.7971, 'Kaifeng');
INSERT INTO `Sys_Region` VALUES (1548, '410202', '龍亭區', 410200, 3, '中國,河南省,開封市,龍亭區', 114.355, 34.7999, 'Longting');
INSERT INTO `Sys_Region` VALUES (1549, '410203', '順河回族區', 410200, 3, '中國,河南省,開封市,順河回族區', 114.361, 34.7959, 'Shunhe');
INSERT INTO `Sys_Region` VALUES (1550, '410204', '鼓樓區', 410200, 3, '中國,河南省,開封市,鼓樓區', 114.356, 34.7952, 'Gulou');
INSERT INTO `Sys_Region` VALUES (1551, '410205', '禹王臺區', 410200, 3, '中國,河南省,開封市,禹王臺區', 114.348, 34.7769, 'Yuwangtai');
INSERT INTO `Sys_Region` VALUES (1552, '410212', '祥符區', 410200, 3, '中國,河南省,開封市,祥符區', 114.439, 34.7587, 'Xiangfu');
INSERT INTO `Sys_Region` VALUES (1553, '410221', '杞縣', 410200, 3, '中國,河南省,開封市,杞縣', 114.783, 34.5503, 'Qixian');
INSERT INTO `Sys_Region` VALUES (1554, '410222', '通許縣', 410200, 3, '中國,河南省,開封市,通許縣', 114.467, 34.4752, 'Tongxu');
INSERT INTO `Sys_Region` VALUES (1555, '410223', '尉氏縣', 410200, 3, '中國,河南省,開封市,尉氏縣', 114.193, 34.4122, 'Weishi');
INSERT INTO `Sys_Region` VALUES (1556, '410225', '蘭考縣', 410200, 3, '中國,河南省,開封市,蘭考縣', 114.82, 34.8235, 'Lankao');
INSERT INTO `Sys_Region` VALUES (1557, '410300', '洛陽市', 410000, 2, '中國,河南省,洛陽市', 112.434, 34.663, 'Luoyang');
INSERT INTO `Sys_Region` VALUES (1558, '410302', '老城區', 410300, 3, '中國,河南省,洛陽市,老城區', 112.469, 34.6836, 'Laocheng');
INSERT INTO `Sys_Region` VALUES (1559, '410303', '西工區', 410300, 3, '中國,河南省,洛陽市,西工區', 112.437, 34.67, 'Xigong');
INSERT INTO `Sys_Region` VALUES (1560, '410304', '瀍河回族區', 410300, 3, '中國,河南省,洛陽市,瀍河回族區', 112.5, 34.6799, 'Chanhe');
INSERT INTO `Sys_Region` VALUES (1561, '410305', '澗西區', 410300, 3, '中國,河南省,洛陽市,澗西區', 112.396, 34.6582, 'Jianxi');
INSERT INTO `Sys_Region` VALUES (1562, '410306', '吉利區', 410300, 3, '中國,河南省,洛陽市,吉利區', 112.589, 34.9009, 'Jili');
INSERT INTO `Sys_Region` VALUES (1563, '410311', '洛龍區', 410300, 3, '中國,河南省,洛陽市,洛龍區', 112.464, 34.6187, 'Luolong');
INSERT INTO `Sys_Region` VALUES (1564, '410322', '孟津縣', 410300, 3, '中國,河南省,洛陽市,孟津縣', 112.444, 34.826, 'Mengjin');
INSERT INTO `Sys_Region` VALUES (1565, '410323', '新安縣', 410300, 3, '中國,河南省,洛陽市,新安縣', 112.132, 34.7281, 'Xinan');
INSERT INTO `Sys_Region` VALUES (1566, '410324', '欒川縣', 410300, 3, '中國,河南省,洛陽市,欒川縣', 111.618, 33.7858, 'Luanchuan');
INSERT INTO `Sys_Region` VALUES (1567, '410325', '嵩縣', 410300, 3, '中國,河南省,洛陽市,嵩縣', 112.085, 34.1347, 'Songxian');
INSERT INTO `Sys_Region` VALUES (1568, '410326', '汝陽縣', 410300, 3, '中國,河南省,洛陽市,汝陽縣', 112.473, 34.1539, 'Ruyang');
INSERT INTO `Sys_Region` VALUES (1569, '410327', '宜陽縣', 410300, 3, '中國,河南省,洛陽市,宜陽縣', 112.179, 34.5152, 'Yiyang');
INSERT INTO `Sys_Region` VALUES (1570, '410328', '洛寧縣', 410300, 3, '中國,河南省,洛陽市,洛寧縣', 111.651, 34.3891, 'Luoning');
INSERT INTO `Sys_Region` VALUES (1571, '410329', '伊川縣', 410300, 3, '中國,河南省,洛陽市,伊川縣', 112.429, 34.4221, 'Yichuan');
INSERT INTO `Sys_Region` VALUES (1572, '410381', '偃師市', 410300, 3, '中國,河南省,洛陽市,偃師市', 112.792, 34.7281, 'Yanshi');
INSERT INTO `Sys_Region` VALUES (1573, '410400', '平頂山市', 410000, 2, '中國,河南省,平頂山市', 113.308, 33.7352, 'Pingdingshan');
INSERT INTO `Sys_Region` VALUES (1574, '410402', '新華區', 410400, 3, '中國,河南省,平頂山市,新華區', 113.294, 33.7373, 'Xinhua');
INSERT INTO `Sys_Region` VALUES (1575, '410403', '衛東區', 410400, 3, '中國,河南省,平頂山市,衛東區', 113.335, 33.7347, 'Weidong');
INSERT INTO `Sys_Region` VALUES (1576, '410404', '石龍區', 410400, 3, '中國,河南省,平頂山市,石龍區', 112.899, 33.8988, 'Shilong');
INSERT INTO `Sys_Region` VALUES (1577, '410411', '湛河區', 410400, 3, '中國,河南省,平頂山市,湛河區', 113.293, 33.7362, 'Zhanhe');
INSERT INTO `Sys_Region` VALUES (1578, '410421', '寶豐縣', 410400, 3, '中國,河南省,平頂山市,寶豐縣', 113.055, 33.8692, 'Baofeng');
INSERT INTO `Sys_Region` VALUES (1579, '410422', '葉縣', 410400, 3, '中國,河南省,平頂山市,葉縣', 113.351, 33.6222, 'Yexian');
INSERT INTO `Sys_Region` VALUES (1580, '410423', '魯山縣', 410400, 3, '中國,河南省,平頂山市,魯山縣', 112.906, 33.7388, 'Lushan');
INSERT INTO `Sys_Region` VALUES (1581, '410425', '郟縣', 410400, 3, '中國,河南省,平頂山市,郟縣', 113.216, 33.9707, 'Jiaxian');
INSERT INTO `Sys_Region` VALUES (1582, '410481', '舞鋼市', 410400, 3, '中國,河南省,平頂山市,舞鋼市', 113.524, 33.2938, 'Wugang');
INSERT INTO `Sys_Region` VALUES (1583, '410482', '汝州市', 410400, 3, '中國,河南省,平頂山市,汝州市', 112.843, 34.1614, 'Ruzhou');
INSERT INTO `Sys_Region` VALUES (1584, '410500', '安陽市', 410000, 2, '中國,河南省,安陽市', 114.352, 36.1034, 'Anyang');
INSERT INTO `Sys_Region` VALUES (1585, '410502', '文峰區', 410500, 3, '中國,河南省,安陽市,文峰區', 114.357, 36.0905, 'Wenfeng');
INSERT INTO `Sys_Region` VALUES (1586, '410503', '北關區', 410500, 3, '中國,河南省,安陽市,北關區', 114.357, 36.1187, 'Beiguan');
INSERT INTO `Sys_Region` VALUES (1587, '410505', '殷都區', 410500, 3, '中國,河南省,安陽市,殷都區', 114.303, 36.1099, 'Yindu');
INSERT INTO `Sys_Region` VALUES (1588, '410506', '龍安區', 410500, 3, '中國,河南省,安陽市,龍安區', 114.348, 36.119, 'Longan');
INSERT INTO `Sys_Region` VALUES (1589, '410522', '安陽縣', 410500, 3, '中國,河南省,安陽市,安陽縣', 114.366, 36.067, 'Anyang');
INSERT INTO `Sys_Region` VALUES (1590, '410523', '湯陰縣', 410500, 3, '中國,河南省,安陽市,湯陰縣', 114.358, 35.9215, 'Tangyin');
INSERT INTO `Sys_Region` VALUES (1591, '410526', '滑縣', 410500, 3, '中國,河南省,安陽市,滑縣', 114.521, 35.5807, 'Huaxian');
INSERT INTO `Sys_Region` VALUES (1592, '410527', '內黃縣', 410500, 3, '中國,河南省,安陽市,內黃縣', 114.907, 35.9527, 'Neihuang');
INSERT INTO `Sys_Region` VALUES (1593, '410581', '林州市', 410500, 3, '中國,河南省,安陽市,林州市', 113.816, 36.078, 'Linzhou');
INSERT INTO `Sys_Region` VALUES (1594, '410600', '鶴壁市', 410000, 2, '中國,河南省,鶴壁市', 114.295, 35.7482, 'Hebi');
INSERT INTO `Sys_Region` VALUES (1595, '410602', '鶴山區', 410600, 3, '中國,河南省,鶴壁市,鶴山區', 114.163, 35.9546, 'Heshan');
INSERT INTO `Sys_Region` VALUES (1596, '410603', '山城區', 410600, 3, '中國,河南省,鶴壁市,山城區', 114.184, 35.8977, 'Shancheng');
INSERT INTO `Sys_Region` VALUES (1597, '410611', '淇濱區', 410600, 3, '中國,河南省,鶴壁市,淇濱區', 114.299, 35.7413, 'Qibin');
INSERT INTO `Sys_Region` VALUES (1598, '410621', '浚縣', 410600, 3, '中國,河南省,鶴壁市,浚縣', 114.549, 35.6708, 'Xunxian');
INSERT INTO `Sys_Region` VALUES (1599, '410622', '淇縣', 410600, 3, '中國,河南省,鶴壁市,淇縣', 114.198, 35.6078, 'Qixian');
INSERT INTO `Sys_Region` VALUES (1600, '410700', '新鄉市', 410000, 2, '中國,河南省,新鄉市', 113.884, 35.3026, 'Xinxiang');
INSERT INTO `Sys_Region` VALUES (1601, '410702', '紅旗區', 410700, 3, '中國,河南省,新鄉市,紅旗區', 113.875, 35.3037, 'Hongqi');
INSERT INTO `Sys_Region` VALUES (1602, '410703', '衛濱區', 410700, 3, '中國,河南省,新鄉市,衛濱區', 113.866, 35.3021, 'Weibin');
INSERT INTO `Sys_Region` VALUES (1603, '410704', '鳳泉區', 410700, 3, '中國,河南省,新鄉市,鳳泉區', 113.915, 35.384, 'Fengquan');
INSERT INTO `Sys_Region` VALUES (1604, '410711', '牧野區', 410700, 3, '中國,河南省,新鄉市,牧野區', 113.909, 35.3149, 'Muye');
INSERT INTO `Sys_Region` VALUES (1605, '410721', '新鄉縣', 410700, 3, '中國,河南省,新鄉市,新鄉縣', 113.805, 35.1908, 'Xinxiang');
INSERT INTO `Sys_Region` VALUES (1606, '410724', '獲嘉縣', 410700, 3, '中國,河南省,新鄉市,獲嘉縣', 113.662, 35.2652, 'Huojia');
INSERT INTO `Sys_Region` VALUES (1607, '410725', '原陽縣', 410700, 3, '中國,河南省,新鄉市,原陽縣', 113.94, 35.0657, 'Yuanyang');
INSERT INTO `Sys_Region` VALUES (1608, '410726', '延津縣', 410700, 3, '中國,河南省,新鄉市,延津縣', 114.203, 35.1433, 'Yanjin');
INSERT INTO `Sys_Region` VALUES (1609, '410727', '封丘縣', 410700, 3, '中國,河南省,新鄉市,封丘縣', 114.419, 35.0417, 'Fengqiu');
INSERT INTO `Sys_Region` VALUES (1610, '410728', '長垣縣', 410700, 3, '中國,河南省,新鄉市,長垣縣', 114.669, 35.2005, 'Changyuan');
INSERT INTO `Sys_Region` VALUES (1611, '410781', '衛輝市', 410700, 3, '中國,河南省,新鄉市,衛輝市', 114.065, 35.3984, 'Weihui');
INSERT INTO `Sys_Region` VALUES (1612, '410782', '輝縣市', 410700, 3, '中國,河南省,新鄉市,輝縣市', 113.807, 35.4631, 'Huixian');
INSERT INTO `Sys_Region` VALUES (1613, '410800', '焦作市', 410000, 2, '中國,河南省,焦作市', 113.238, 35.239, 'Jiaozuo');
INSERT INTO `Sys_Region` VALUES (1614, '410802', '解放區', 410800, 3, '中國,河南省,焦作市,解放區', 113.229, 35.2402, 'Jiefang');
INSERT INTO `Sys_Region` VALUES (1615, '410803', '中站區', 410800, 3, '中國,河南省,焦作市,中站區', 113.183, 35.2366, 'Zhongzhan');
INSERT INTO `Sys_Region` VALUES (1616, '410804', '馬村區', 410800, 3, '中國,河南省,焦作市,馬村區', 113.319, 35.2691, 'Macun');
INSERT INTO `Sys_Region` VALUES (1617, '410811', '山陽區', 410800, 3, '中國,河南省,焦作市,山陽區', 113.255, 35.2144, 'Shanyang');
INSERT INTO `Sys_Region` VALUES (1618, '410821', '修武縣', 410800, 3, '中國,河南省,焦作市,修武縣', 113.448, 35.2236, 'Xiuwu');
INSERT INTO `Sys_Region` VALUES (1619, '410822', '博愛縣', 410800, 3, '中國,河南省,焦作市,博愛縣', 113.067, 35.1694, 'Boai');
INSERT INTO `Sys_Region` VALUES (1620, '410823', '武陟縣', 410800, 3, '中國,河南省,焦作市,武陟縣', 113.397, 35.0951, 'Wuzhi');
INSERT INTO `Sys_Region` VALUES (1621, '410825', '溫縣', 410800, 3, '中國,河南省,焦作市,溫縣', 113.081, 34.9402, 'Wenxian');
INSERT INTO `Sys_Region` VALUES (1622, '410882', '沁陽市', 410800, 3, '中國,河南省,焦作市,沁陽市', 112.945, 35.0894, 'Qinyang');
INSERT INTO `Sys_Region` VALUES (1623, '410883', '孟州市', 410800, 3, '中國,河南省,焦作市,孟州市', 112.791, 34.9071, 'Mengzhou');
INSERT INTO `Sys_Region` VALUES (1624, '410900', '濮陽市', 410000, 2, '中國,河南省,濮陽市', 115.041, 35.7682, 'Puyang');
INSERT INTO `Sys_Region` VALUES (1625, '410902', '華龍區', 410900, 3, '中國,河南省,濮陽市,華龍區', 115.074, 35.7774, 'Hualong');
INSERT INTO `Sys_Region` VALUES (1626, '410922', '清豐縣', 410900, 3, '中國,河南省,濮陽市,清豐縣', 115.104, 35.8851, 'Qingfeng');
INSERT INTO `Sys_Region` VALUES (1627, '410923', '南樂縣', 410900, 3, '中國,河南省,濮陽市,南樂縣', 115.206, 36.0769, 'Nanle');
INSERT INTO `Sys_Region` VALUES (1628, '410926', '范縣', 410900, 3, '中國,河南省,濮陽市,范縣', 115.504, 35.8518, 'Fanxian');
INSERT INTO `Sys_Region` VALUES (1629, '410927', '臺前縣', 410900, 3, '中國,河南省,濮陽市,臺前縣', 115.872, 35.9692, 'Taiqian');
INSERT INTO `Sys_Region` VALUES (1630, '410928', '濮陽縣', 410900, 3, '中國,河南省,濮陽市,濮陽縣', 115.031, 35.7075, 'Puyang');
INSERT INTO `Sys_Region` VALUES (1631, '411000', '許昌市', 410000, 2, '中國,河南省,許昌市', 113.826, 34.023, 'Xuchang');
INSERT INTO `Sys_Region` VALUES (1632, '411002', '魏都區', 411000, 3, '中國,河南省,許昌市,魏都區', 113.823, 34.0254, 'Weidu');
INSERT INTO `Sys_Region` VALUES (1633, '411023', '許昌縣', 411000, 3, '中國,河南省,許昌市,許昌縣', 113.847, 34.0041, 'Xuchang');
INSERT INTO `Sys_Region` VALUES (1634, '411024', '鄢陵縣', 411000, 3, '中國,河南省,許昌市,鄢陵縣', 114.188, 34.1032, 'Yanling');
INSERT INTO `Sys_Region` VALUES (1635, '411025', '襄城縣', 411000, 3, '中國,河南省,許昌市,襄城縣', 113.482, 33.8493, 'Xiangcheng');
INSERT INTO `Sys_Region` VALUES (1636, '411081', '禹州市', 411000, 3, '中國,河南省,許昌市,禹州市', 113.488, 34.1405, 'Yuzhou');
INSERT INTO `Sys_Region` VALUES (1637, '411082', '長葛市', 411000, 3, '中國,河南省,許昌市,長葛市', 113.773, 34.2185, 'Changge');
INSERT INTO `Sys_Region` VALUES (1638, '411100', '漯河市', 410000, 2, '中國,河南省,漯河市', 114.026, 33.5759, 'Luohe');
INSERT INTO `Sys_Region` VALUES (1639, '411102', '源匯區', 411100, 3, '中國,河南省,漯河市,源匯區', 114.006, 33.5563, 'Yuanhui');
INSERT INTO `Sys_Region` VALUES (1640, '411103', '郾城區', 411100, 3, '中國,河南省,漯河市,郾城區', 114.007, 33.5872, 'Yancheng');
INSERT INTO `Sys_Region` VALUES (1641, '411104', '召陵區', 411100, 3, '中國,河南省,漯河市,召陵區', 114.094, 33.586, 'Zhaoling');
INSERT INTO `Sys_Region` VALUES (1642, '411121', '舞陽縣', 411100, 3, '中國,河南省,漯河市,舞陽縣', 113.598, 33.4324, 'Wuyang');
INSERT INTO `Sys_Region` VALUES (1643, '411122', '臨潁縣', 411100, 3, '中國,河南省,漯河市,臨潁縣', 113.937, 33.8112, 'Linying');
INSERT INTO `Sys_Region` VALUES (1644, '411200', '三門峽市', 410000, 2, '中國,河南省,三門峽市', 111.194, 34.7773, 'Sanmenxia');
INSERT INTO `Sys_Region` VALUES (1645, '411202', '湖濱區', 411200, 3, '中國,河南省,三門峽市,湖濱區', 111.2, 34.7787, 'Hubin');
INSERT INTO `Sys_Region` VALUES (1646, '411221', '澠池縣', 411200, 3, '中國,河南省,三門峽市,澠池縣', 111.762, 34.7673, 'Mianchi');
INSERT INTO `Sys_Region` VALUES (1647, '411222', '陜縣', 411200, 3, '中國,河南省,三門峽市,陜縣', 111.103, 34.7205, 'Shanxian');
INSERT INTO `Sys_Region` VALUES (1648, '411224', '盧氏縣', 411200, 3, '中國,河南省,三門峽市,盧氏縣', 111.048, 34.0544, 'Lushi');
INSERT INTO `Sys_Region` VALUES (1649, '411281', '義馬市', 411200, 3, '中國,河南省,三門峽市,義馬市', 111.874, 34.7472, 'Yima');
INSERT INTO `Sys_Region` VALUES (1650, '411282', '靈寶市', 411200, 3, '中國,河南省,三門峽市,靈寶市', 110.895, 34.5168, 'Lingbao');
INSERT INTO `Sys_Region` VALUES (1651, '411300', '南陽市', 410000, 2, '中國,河南省,南陽市', 112.541, 32.9991, 'Nanyang');
INSERT INTO `Sys_Region` VALUES (1652, '411302', '宛城區', 411300, 3, '中國,河南省,南陽市,宛城區', 112.54, 33.0038, 'Wancheng');
INSERT INTO `Sys_Region` VALUES (1653, '411303', '臥龍區', 411300, 3, '中國,河南省,南陽市,臥龍區', 112.535, 32.9861, 'Wolong');
INSERT INTO `Sys_Region` VALUES (1654, '411321', '南召縣', 411300, 3, '中國,河南省,南陽市,南召縣', 112.432, 33.491, 'Nanzhao');
INSERT INTO `Sys_Region` VALUES (1655, '411322', '方城縣', 411300, 3, '中國,河南省,南陽市,方城縣', 113.013, 33.2545, 'Fangcheng');
INSERT INTO `Sys_Region` VALUES (1656, '411323', '西峽縣', 411300, 3, '中國,河南省,南陽市,西峽縣', 111.482, 33.2977, 'Xixia');
INSERT INTO `Sys_Region` VALUES (1657, '411324', '鎮平縣', 411300, 3, '中國,河南省,南陽市,鎮平縣', 112.24, 33.0363, 'Zhenping');
INSERT INTO `Sys_Region` VALUES (1658, '411325', '內鄉縣', 411300, 3, '中國,河南省,南陽市,內鄉縣', 111.85, 33.0467, 'Neixiang');
INSERT INTO `Sys_Region` VALUES (1659, '411326', '淅川縣', 411300, 3, '中國,河南省,南陽市,淅川縣', 111.487, 33.1371, 'Xichuan');
INSERT INTO `Sys_Region` VALUES (1660, '411327', '社旗縣', 411300, 3, '中國,河南省,南陽市,社旗縣', 112.947, 33.055, 'Sheqi');
INSERT INTO `Sys_Region` VALUES (1661, '411328', '唐河縣', 411300, 3, '中國,河南省,南陽市,唐河縣', 112.836, 32.6945, 'Tanghe');
INSERT INTO `Sys_Region` VALUES (1662, '411329', '新野縣', 411300, 3, '中國,河南省,南陽市,新野縣', 112.362, 32.517, 'Xinye');
INSERT INTO `Sys_Region` VALUES (1663, '411330', '桐柏縣', 411300, 3, '中國,河南省,南陽市,桐柏縣', 113.429, 32.3792, 'Tongbai');
INSERT INTO `Sys_Region` VALUES (1664, '411381', '鄧州市', 411300, 3, '中國,河南省,南陽市,鄧州市', 112.09, 32.6858, 'Dengzhou');
INSERT INTO `Sys_Region` VALUES (1665, '411400', '商丘市', 410000, 2, '中國,河南省,商丘市', 115.65, 34.4371, 'Shangqiu');
INSERT INTO `Sys_Region` VALUES (1666, '411402', '梁園區', 411400, 3, '中國,河南省,商丘市,梁園區', 115.645, 34.4434, 'Liangyuan');
INSERT INTO `Sys_Region` VALUES (1667, '411403', '睢陽區', 411400, 3, '中國,河南省,商丘市,睢陽區', 115.653, 34.388, 'Suiyang');
INSERT INTO `Sys_Region` VALUES (1668, '411421', '民權縣', 411400, 3, '中國,河南省,商丘市,民權縣', 115.146, 34.6493, 'Minquan');
INSERT INTO `Sys_Region` VALUES (1669, '411422', '睢縣', 411400, 3, '中國,河南省,商丘市,睢縣', 115.072, 34.4454, 'Suixian');
INSERT INTO `Sys_Region` VALUES (1670, '411423', '寧陵縣', 411400, 3, '中國,河南省,商丘市,寧陵縣', 115.305, 34.4546, 'Ningling');
INSERT INTO `Sys_Region` VALUES (1671, '411424', '柘城縣', 411400, 3, '中國,河南省,商丘市,柘城縣', 115.305, 34.0911, 'Zhecheng');
INSERT INTO `Sys_Region` VALUES (1672, '411425', '虞城縣', 411400, 3, '中國,河南省,商丘市,虞城縣', 115.863, 34.4019, 'Yucheng');
INSERT INTO `Sys_Region` VALUES (1673, '411426', '夏邑縣', 411400, 3, '中國,河南省,商丘市,夏邑縣', 116.133, 34.2324, 'Xiayi');
INSERT INTO `Sys_Region` VALUES (1674, '411481', '永城市', 411400, 3, '中國,河南省,商丘市,永城市', 116.449, 33.9291, 'Yongcheng');
INSERT INTO `Sys_Region` VALUES (1675, '411500', '信陽市', 410000, 2, '中國,河南省,信陽市', 114.075, 32.1233, 'Xinyang');
INSERT INTO `Sys_Region` VALUES (1676, '411502', '浉河區', 411500, 3, '中國,河南省,信陽市,浉河區', 114.059, 32.1168, 'Shihe');
INSERT INTO `Sys_Region` VALUES (1677, '411503', '平橋區', 411500, 3, '中國,河南省,信陽市,平橋區', 114.124, 32.1009, 'Pingqiao');
INSERT INTO `Sys_Region` VALUES (1678, '411521', '羅山縣', 411500, 3, '中國,河南省,信陽市,羅山縣', 114.531, 32.2028, 'Luoshan');
INSERT INTO `Sys_Region` VALUES (1679, '411522', '光山縣', 411500, 3, '中國,河南省,信陽市,光山縣', 114.919, 32.0099, 'Guangshan');
INSERT INTO `Sys_Region` VALUES (1680, '411523', '新縣', 411500, 3, '中國,河南省,信陽市,新縣', 114.879, 31.6439, 'Xinxian');
INSERT INTO `Sys_Region` VALUES (1681, '411524', '商城縣', 411500, 3, '中國,河南省,信陽市,商城縣', 115.409, 31.7999, 'Shangcheng');
INSERT INTO `Sys_Region` VALUES (1682, '411525', '固始縣', 411500, 3, '中國,河南省,信陽市,固始縣', 115.683, 32.1801, 'Gushi');
INSERT INTO `Sys_Region` VALUES (1683, '411526', '潢川縣', 411500, 3, '中國,河南省,信陽市,潢川縣', 115.047, 32.1376, 'Huangchuan');
INSERT INTO `Sys_Region` VALUES (1684, '411527', '淮濱縣', 411500, 3, '中國,河南省,信陽市,淮濱縣', 115.421, 32.4661, 'Huaibin');
INSERT INTO `Sys_Region` VALUES (1685, '411528', '息縣', 411500, 3, '中國,河南省,信陽市,息縣', 114.74, 32.3428, 'Xixian');
INSERT INTO `Sys_Region` VALUES (1686, '411600', '周口市', 410000, 2, '中國,河南省,周口市', 114.65, 33.6204, 'Zhoukou');
INSERT INTO `Sys_Region` VALUES (1687, '411602', '川匯區', 411600, 3, '中國,河南省,周口市,川匯區', 114.642, 33.6256, 'Chuanhui');
INSERT INTO `Sys_Region` VALUES (1688, '411621', '扶溝縣', 411600, 3, '中國,河南省,周口市,扶溝縣', 114.395, 34.06, 'Fugou');
INSERT INTO `Sys_Region` VALUES (1689, '411622', '西華縣', 411600, 3, '中國,河南省,周口市,西華縣', 114.523, 33.7855, 'Xihua');
INSERT INTO `Sys_Region` VALUES (1690, '411623', '商水縣', 411600, 3, '中國,河南省,周口市,商水縣', 114.606, 33.5391, 'Shangshui');
INSERT INTO `Sys_Region` VALUES (1691, '411624', '沈丘縣', 411600, 3, '中國,河南省,周口市,沈丘縣', 115.099, 33.4094, 'Shenqiu');
INSERT INTO `Sys_Region` VALUES (1692, '411625', '鄲城縣', 411600, 3, '中國,河南省,周口市,鄲城縣', 115.177, 33.6449, 'Dancheng');
INSERT INTO `Sys_Region` VALUES (1693, '411626', '淮陽縣', 411600, 3, '中國,河南省,周口市,淮陽縣', 114.888, 33.7321, 'Huaiyang');
INSERT INTO `Sys_Region` VALUES (1694, '411627', '太康縣', 411600, 3, '中國,河南省,周口市,太康縣', 114.838, 34.0638, 'Taikang');
INSERT INTO `Sys_Region` VALUES (1695, '411628', '鹿邑縣', 411600, 3, '中國,河南省,周口市,鹿邑縣', 115.486, 33.8593, 'Luyi');
INSERT INTO `Sys_Region` VALUES (1696, '411681', '項城市', 411600, 3, '中國,河南省,周口市,項城市', 114.876, 33.4672, 'Xiangcheng');
INSERT INTO `Sys_Region` VALUES (1697, '411700', '駐馬店市', 410000, 2, '中國,河南省,駐馬店市', 114.025, 32.9802, 'Zhumadian');
INSERT INTO `Sys_Region` VALUES (1698, '411702', '驛城區', 411700, 3, '中國,河南省,駐馬店市,驛城區', 113.994, 32.9732, 'Yicheng');
INSERT INTO `Sys_Region` VALUES (1699, '411721', '西平縣', 411700, 3, '中國,河南省,駐馬店市,西平縣', 114.023, 33.3845, 'Xiping');
INSERT INTO `Sys_Region` VALUES (1700, '411722', '上蔡縣', 411700, 3, '中國,河南省,駐馬店市,上蔡縣', 114.268, 33.2682, 'Shangcai');
INSERT INTO `Sys_Region` VALUES (1701, '411723', '平輿縣', 411700, 3, '中國,河南省,駐馬店市,平輿縣', 114.636, 32.9573, 'Pingyu');
INSERT INTO `Sys_Region` VALUES (1702, '411724', '正陽縣', 411700, 3, '中國,河南省,駐馬店市,正陽縣', 114.39, 32.6039, 'Zhengyang');
INSERT INTO `Sys_Region` VALUES (1703, '411725', '確山縣', 411700, 3, '中國,河南省,駐馬店市,確山縣', 114.029, 32.8028, 'Queshan');
INSERT INTO `Sys_Region` VALUES (1704, '411726', '泌陽縣', 411700, 3, '中國,河南省,駐馬店市,泌陽縣', 113.327, 32.7178, 'Biyang');
INSERT INTO `Sys_Region` VALUES (1705, '411727', '汝南縣', 411700, 3, '中國,河南省,駐馬店市,汝南縣', 114.361, 33.0046, 'Runan');
INSERT INTO `Sys_Region` VALUES (1706, '411728', '遂平縣', 411700, 3, '中國,河南省,駐馬店市,遂平縣', 114.013, 33.1457, 'Suiping');
INSERT INTO `Sys_Region` VALUES (1707, '411729', '新蔡縣', 411700, 3, '中國,河南省,駐馬店市,新蔡縣', 114.982, 32.7502, 'Xincai');
INSERT INTO `Sys_Region` VALUES (1708, '419000', '直轄縣級', 410000, 2, '中國,河南省,直轄縣級', 113.665, 34.758, '');
INSERT INTO `Sys_Region` VALUES (1709, '419001', '濟源市', 419000, 3, '中國,河南省,直轄縣級,濟源市', 112.59, 35.0904, 'Jiyuan');
INSERT INTO `Sys_Region` VALUES (1710, '420000', '湖北省', 100000, 1, '中國,湖北省', 114.299, 30.5844, 'Hubei');
INSERT INTO `Sys_Region` VALUES (1711, '420100', '武漢市', 420000, 2, '中國,湖北省,武漢市', 114.299, 30.5844, 'Wuhan');
INSERT INTO `Sys_Region` VALUES (1712, '420102', '江岸區', 420100, 3, '中國,湖北省,武漢市,江岸區', 114.309, 30.5998, 'Jiangan');
INSERT INTO `Sys_Region` VALUES (1713, '420103', '江漢區', 420100, 3, '中國,湖北省,武漢市,江漢區', 114.271, 30.6015, 'Jianghan');
INSERT INTO `Sys_Region` VALUES (1714, '420104', '硚口區', 420100, 3, '中國,湖北省,武漢市,硚口區', 114.264, 30.5695, 'Qiaokou');
INSERT INTO `Sys_Region` VALUES (1715, '420105', '漢陽區', 420100, 3, '中國,湖北省,武漢市,漢陽區', 114.275, 30.5492, 'Hanyang');
INSERT INTO `Sys_Region` VALUES (1716, '420106', '武昌區', 420100, 3, '中國,湖北省,武漢市,武昌區', 114.316, 30.5539, 'Wuchang');
INSERT INTO `Sys_Region` VALUES (1717, '420107', '青山區', 420100, 3, '中國,湖北省,武漢市,青山區', 114.391, 30.6343, 'Qingshan');
INSERT INTO `Sys_Region` VALUES (1718, '420111', '洪山區', 420100, 3, '中國,湖北省,武漢市,洪山區', 114.344, 30.4999, 'Hongshan');
INSERT INTO `Sys_Region` VALUES (1719, '420112', '東西湖區', 420100, 3, '中國,湖北省,武漢市,東西湖區', 114.137, 30.6199, 'Dongxihu');
INSERT INTO `Sys_Region` VALUES (1720, '420113', '漢南區', 420100, 3, '中國,湖北省,武漢市,漢南區', 114.085, 30.3088, 'Hannan');
INSERT INTO `Sys_Region` VALUES (1721, '420114', '蔡甸區', 420100, 3, '中國,湖北省,武漢市,蔡甸區', 114.029, 30.582, 'Caidian');
INSERT INTO `Sys_Region` VALUES (1722, '420115', '江夏區', 420100, 3, '中國,湖北省,武漢市,江夏區', 114.313, 30.3465, 'Jiangxia');
INSERT INTO `Sys_Region` VALUES (1723, '420116', '黃陂區', 420100, 3, '中國,湖北省,武漢市,黃陂區', 114.375, 30.8815, 'Huangpi');
INSERT INTO `Sys_Region` VALUES (1724, '420117', '新洲區', 420100, 3, '中國,湖北省,武漢市,新洲區', 114.801, 30.8414, 'Xinzhou');
INSERT INTO `Sys_Region` VALUES (1725, '420200', '黃石市', 420000, 2, '中國,湖北省,黃石市', 115.077, 30.2201, 'Huangshi');
INSERT INTO `Sys_Region` VALUES (1726, '420202', '黃石港區', 420200, 3, '中國,湖北省,黃石市,黃石港區', 115.066, 30.2228, 'Huangshigang');
INSERT INTO `Sys_Region` VALUES (1727, '420203', '西塞山區', 420200, 3, '中國,湖北省,黃石市,西塞山區', 115.11, 30.2049, 'Xisaishan');
INSERT INTO `Sys_Region` VALUES (1728, '420204', '下陸區', 420200, 3, '中國,湖北省,黃石市,下陸區', 114.961, 30.1737, 'Xialu');
INSERT INTO `Sys_Region` VALUES (1729, '420205', '鐵山區', 420200, 3, '中國,湖北省,黃石市,鐵山區', 114.901, 30.2068, 'Tieshan');
INSERT INTO `Sys_Region` VALUES (1730, '420222', '陽新縣', 420200, 3, '中國,湖北省,黃石市,陽新縣', 115.215, 29.8304, 'Yangxin');
INSERT INTO `Sys_Region` VALUES (1731, '420281', '大冶市', 420200, 3, '中國,湖北省,黃石市,大冶市', 114.972, 30.0944, 'Daye');
INSERT INTO `Sys_Region` VALUES (1732, '420300', '十堰市', 420000, 2, '中國,湖北省,十堰市', 110.785, 32.647, 'Shiyan');
INSERT INTO `Sys_Region` VALUES (1733, '420302', '茅箭區', 420300, 3, '中國,湖北省,十堰市,茅箭區', 110.813, 32.5915, 'Maojian');
INSERT INTO `Sys_Region` VALUES (1734, '420303', '張灣區', 420300, 3, '中國,湖北省,十堰市,張灣區', 110.771, 32.652, 'Zhangwan');
INSERT INTO `Sys_Region` VALUES (1735, '420304', '鄖陽區', 420300, 3, '中國,湖北省,十堰市,鄖陽區', 110.819, 32.8359, 'Yunyang');
INSERT INTO `Sys_Region` VALUES (1736, '420322', '鄖西縣', 420300, 3, '中國,湖北省,十堰市,鄖西縣', 110.426, 32.9935, 'Yunxi');
INSERT INTO `Sys_Region` VALUES (1737, '420323', '竹山縣', 420300, 3, '中國,湖北省,十堰市,竹山縣', 110.231, 32.2254, 'Zhushan');
INSERT INTO `Sys_Region` VALUES (1738, '420324', '竹溪縣', 420300, 3, '中國,湖北省,十堰市,竹溪縣', 109.718, 32.319, 'Zhuxi');
INSERT INTO `Sys_Region` VALUES (1739, '420325', '房縣', 420300, 3, '中國,湖北省,十堰市,房縣', 110.744, 32.0579, 'Fangxian');
INSERT INTO `Sys_Region` VALUES (1740, '420381', '丹江口市', 420300, 3, '中國,湖北省,十堰市,丹江口市', 111.515, 32.5409, 'Danjiangkou');
INSERT INTO `Sys_Region` VALUES (1741, '420500', '宜昌市', 420000, 2, '中國,湖北省,宜昌市', 111.291, 30.7026, 'Yichang');
INSERT INTO `Sys_Region` VALUES (1742, '420502', '西陵區', 420500, 3, '中國,湖北省,宜昌市,西陵區', 111.286, 30.7108, 'Xiling');
INSERT INTO `Sys_Region` VALUES (1743, '420503', '伍家崗區', 420500, 3, '中國,湖北省,宜昌市,伍家崗區', 111.361, 30.6443, 'Wujiagang');
INSERT INTO `Sys_Region` VALUES (1744, '420504', '點軍區', 420500, 3, '中國,湖北省,宜昌市,點軍區', 111.268, 30.6934, 'Dianjun');
INSERT INTO `Sys_Region` VALUES (1745, '420505', '猇亭區', 420500, 3, '中國,湖北省,宜昌市,猇亭區', 111.441, 30.5266, 'Xiaoting');
INSERT INTO `Sys_Region` VALUES (1746, '420506', '夷陵區', 420500, 3, '中國,湖北省,宜昌市,夷陵區', 111.326, 30.7688, 'Yiling');
INSERT INTO `Sys_Region` VALUES (1747, '420525', '遠安縣', 420500, 3, '中國,湖北省,宜昌市,遠安縣', 111.642, 31.0599, 'Yuanan');
INSERT INTO `Sys_Region` VALUES (1748, '420526', '興山縣', 420500, 3, '中國,湖北省,宜昌市,興山縣', 110.75, 31.3469, 'Xingshan');
INSERT INTO `Sys_Region` VALUES (1749, '420527', '秭歸縣', 420500, 3, '中國,湖北省,宜昌市,秭歸縣', 110.982, 30.827, 'Zigui');
INSERT INTO `Sys_Region` VALUES (1750, '420528', '長陽土家族自治縣', 420500, 3, '中國,湖北省,宜昌市,長陽土家族自治縣', 111.201, 30.4705, 'Changyang');
INSERT INTO `Sys_Region` VALUES (1751, '420529', '五峰土家族自治縣', 420500, 3, '中國,湖北省,宜昌市,五峰土家族自治縣', 110.675, 30.1986, 'Wufeng');
INSERT INTO `Sys_Region` VALUES (1752, '420581', '宜都市', 420500, 3, '中國,湖北省,宜昌市,宜都市', 111.45, 30.3781, 'Yidu');
INSERT INTO `Sys_Region` VALUES (1753, '420582', '當陽市', 420500, 3, '中國,湖北省,宜昌市,當陽市', 111.789, 30.8208, 'Dangyang');
INSERT INTO `Sys_Region` VALUES (1754, '420583', '枝江市', 420500, 3, '中國,湖北省,宜昌市,枝江市', 111.769, 30.4261, 'Zhijiang');
INSERT INTO `Sys_Region` VALUES (1755, '420600', '襄陽市', 420000, 2, '中國,湖北省,襄陽市', 112.144, 32.0424, 'Xiangyang');
INSERT INTO `Sys_Region` VALUES (1756, '420602', '襄城區', 420600, 3, '中國,湖北省,襄陽市,襄城區', 112.134, 32.0102, 'Xiangcheng');
INSERT INTO `Sys_Region` VALUES (1757, '420606', '樊城區', 420600, 3, '中國,湖北省,襄陽市,樊城區', 112.135, 32.0448, 'Fancheng');
INSERT INTO `Sys_Region` VALUES (1758, '420607', '襄州區', 420600, 3, '中國,湖北省,襄陽市,襄州區', 112.15, 32.0151, 'Xiangzhou');
INSERT INTO `Sys_Region` VALUES (1759, '420624', '南漳縣', 420600, 3, '中國,湖北省,襄陽市,南漳縣', 111.846, 31.7765, 'Nanzhang');
INSERT INTO `Sys_Region` VALUES (1760, '420625', '谷城縣', 420600, 3, '中國,湖北省,襄陽市,谷城縣', 111.653, 32.2638, 'Gucheng');
INSERT INTO `Sys_Region` VALUES (1761, '420626', '保康縣', 420600, 3, '中國,湖北省,襄陽市,保康縣', 111.261, 31.8787, 'Baokang');
INSERT INTO `Sys_Region` VALUES (1762, '420682', '老河口市', 420600, 3, '中國,湖北省,襄陽市,老河口市', 111.671, 32.3848, 'Laohekou');
INSERT INTO `Sys_Region` VALUES (1763, '420683', '棗陽市', 420600, 3, '中國,湖北省,襄陽市,棗陽市', 112.774, 32.1314, 'Zaoyang');
INSERT INTO `Sys_Region` VALUES (1764, '420684', '宜城市', 420600, 3, '中國,湖北省,襄陽市,宜城市', 112.258, 31.7197, 'Yicheng');
INSERT INTO `Sys_Region` VALUES (1765, '420700', '鄂州市', 420000, 2, '中國,湖北省,鄂州市', 114.891, 30.3965, 'Ezhou');
INSERT INTO `Sys_Region` VALUES (1766, '420702', '梁子湖區', 420700, 3, '中國,湖北省,鄂州市,梁子湖區', 114.685, 30.1, 'Liangzihu');
INSERT INTO `Sys_Region` VALUES (1767, '420703', '華容區', 420700, 3, '中國,湖北省,鄂州市,華容區', 114.736, 30.5333, 'Huarong');
INSERT INTO `Sys_Region` VALUES (1768, '420704', '鄂城區', 420700, 3, '中國,湖北省,鄂州市,鄂城區', 114.892, 30.4002, 'Echeng');
INSERT INTO `Sys_Region` VALUES (1769, '420800', '荊門市', 420000, 2, '中國,湖北省,荊門市', 112.204, 31.0354, 'Jingmen');
INSERT INTO `Sys_Region` VALUES (1770, '420802', '東寶區', 420800, 3, '中國,湖北省,荊門市,東寶區', 112.201, 31.0519, 'Dongbao');
INSERT INTO `Sys_Region` VALUES (1771, '420804', '掇刀區', 420800, 3, '中國,湖北省,荊門市,掇刀區', 112.208, 30.9732, 'Duodao');
INSERT INTO `Sys_Region` VALUES (1772, '420821', '京山縣', 420800, 3, '中國,湖北省,荊門市,京山縣', 113.111, 31.0224, 'Jingshan');
INSERT INTO `Sys_Region` VALUES (1773, '420822', '沙洋縣', 420800, 3, '中國,湖北省,荊門市,沙洋縣', 112.589, 30.7092, 'Shayang');
INSERT INTO `Sys_Region` VALUES (1774, '420881', '鐘祥市', 420800, 3, '中國,湖北省,荊門市,鐘祥市', 112.589, 31.1678, 'Zhongxiang');
INSERT INTO `Sys_Region` VALUES (1775, '420900', '孝感市', 420000, 2, '中國,湖北省,孝感市', 113.927, 30.9264, 'Xiaogan');
INSERT INTO `Sys_Region` VALUES (1776, '420902', '孝南區', 420900, 3, '中國,湖北省,孝感市,孝南區', 113.911, 30.9168, 'Xiaonan');
INSERT INTO `Sys_Region` VALUES (1777, '420921', '孝昌縣', 420900, 3, '中國,湖北省,孝感市,孝昌縣', 113.998, 31.258, 'Xiaochang');
INSERT INTO `Sys_Region` VALUES (1778, '420922', '大悟縣', 420900, 3, '中國,湖北省,孝感市,大悟縣', 114.126, 31.5618, 'Dawu');
INSERT INTO `Sys_Region` VALUES (1779, '420923', '云夢縣', 420900, 3, '中國,湖北省,孝感市,云夢縣', 113.753, 31.0209, 'Yunmeng');
INSERT INTO `Sys_Region` VALUES (1780, '420981', '應城市', 420900, 3, '中國,湖北省,孝感市,應城市', 113.573, 30.9283, 'Yingcheng');
INSERT INTO `Sys_Region` VALUES (1781, '420982', '安陸市', 420900, 3, '中國,湖北省,孝感市,安陸市', 113.686, 31.2569, 'Anlu');
INSERT INTO `Sys_Region` VALUES (1782, '420984', '漢川市', 420900, 3, '中國,湖北省,孝感市,漢川市', 113.839, 30.6612, 'Hanchuan');
INSERT INTO `Sys_Region` VALUES (1783, '421000', '荊州市', 420000, 2, '中國,湖北省,荊州市', 112.238, 30.3269, 'Jingzhou');
INSERT INTO `Sys_Region` VALUES (1784, '421002', '沙市區', 421000, 3, '中國,湖北省,荊州市,沙市區', 112.255, 30.3111, 'Shashi');
INSERT INTO `Sys_Region` VALUES (1785, '421003', '荊州區', 421000, 3, '中國,湖北省,荊州市,荊州區', 112.19, 30.3526, 'Jingzhou');
INSERT INTO `Sys_Region` VALUES (1786, '421022', '公安縣', 421000, 3, '中國,湖北省,荊州市,公安縣', 112.232, 30.059, 'Gongan');
INSERT INTO `Sys_Region` VALUES (1787, '421023', '監利縣', 421000, 3, '中國,湖北省,荊州市,監利縣', 112.895, 29.8149, 'Jianli');
INSERT INTO `Sys_Region` VALUES (1788, '421024', '江陵縣', 421000, 3, '中國,湖北省,荊州市,江陵縣', 112.425, 30.0417, 'Jiangling');
INSERT INTO `Sys_Region` VALUES (1789, '421081', '石首市', 421000, 3, '中國,湖北省,荊州市,石首市', 112.426, 29.7213, 'Shishou');
INSERT INTO `Sys_Region` VALUES (1790, '421083', '洪湖市', 421000, 3, '中國,湖北省,荊州市,洪湖市', 113.476, 29.827, 'Honghu');
INSERT INTO `Sys_Region` VALUES (1791, '421087', '松滋市', 421000, 3, '中國,湖北省,荊州市,松滋市', 111.767, 30.1696, 'Songzi');
INSERT INTO `Sys_Region` VALUES (1792, '421100', '黃岡市', 420000, 2, '中國,湖北省,黃岡市', 114.879, 30.4477, 'Huanggang');
INSERT INTO `Sys_Region` VALUES (1793, '421102', '黃州區', 421100, 3, '中國,湖北省,黃岡市,黃州區', 114.88, 30.4344, 'Huangzhou');
INSERT INTO `Sys_Region` VALUES (1794, '421121', '團風縣', 421100, 3, '中國,湖北省,黃岡市,團風縣', 114.872, 30.6436, 'Tuanfeng');
INSERT INTO `Sys_Region` VALUES (1795, '421122', '紅安縣', 421100, 3, '中國,湖北省,黃岡市,紅安縣', 114.622, 31.2867, 'Hongan');
INSERT INTO `Sys_Region` VALUES (1796, '421123', '羅田縣', 421100, 3, '中國,湖北省,黃岡市,羅田縣', 115.4, 30.7826, 'Luotian');
INSERT INTO `Sys_Region` VALUES (1797, '421124', '英山縣', 421100, 3, '中國,湖北省,黃岡市,英山縣', 115.681, 30.7352, 'Yingshan');
INSERT INTO `Sys_Region` VALUES (1798, '421125', '浠水縣', 421100, 3, '中國,湖北省,黃岡市,浠水縣', 115.269, 30.4527, 'Xishui');
INSERT INTO `Sys_Region` VALUES (1799, '421126', '蘄春縣', 421100, 3, '中國,湖北省,黃岡市,蘄春縣', 115.436, 30.2261, 'Qichun');
INSERT INTO `Sys_Region` VALUES (1800, '421127', '黃梅縣', 421100, 3, '中國,湖北省,黃岡市,黃梅縣', 115.944, 30.0703, 'Huangmei');
INSERT INTO `Sys_Region` VALUES (1801, '421181', '麻城市', 421100, 3, '中國,湖北省,黃岡市,麻城市', 115.01, 31.1723, 'Macheng');
INSERT INTO `Sys_Region` VALUES (1802, '421182', '武穴市', 421100, 3, '中國,湖北省,黃岡市,武穴市', 115.56, 29.8445, 'Wuxue');
INSERT INTO `Sys_Region` VALUES (1803, '421200', '咸寧市', 420000, 2, '中國,湖北省,咸寧市', 114.329, 29.8328, 'Xianning');
INSERT INTO `Sys_Region` VALUES (1804, '421202', '咸安區', 421200, 3, '中國,湖北省,咸寧市,咸安區', 114.299, 29.8529, 'Xianan');
INSERT INTO `Sys_Region` VALUES (1805, '421221', '嘉魚縣', 421200, 3, '中國,湖北省,咸寧市,嘉魚縣', 113.939, 29.9705, 'Jiayu');
INSERT INTO `Sys_Region` VALUES (1806, '421222', '通城縣', 421200, 3, '中國,湖北省,咸寧市,通城縣', 113.816, 29.2457, 'Tongcheng');
INSERT INTO `Sys_Region` VALUES (1807, '421223', '崇陽縣', 421200, 3, '中國,湖北省,咸寧市,崇陽縣', 114.04, 29.5556, 'Chongyang');
INSERT INTO `Sys_Region` VALUES (1808, '421224', '通山縣', 421200, 3, '中國,湖北省,咸寧市,通山縣', 114.482, 29.6063, 'Tongshan');
INSERT INTO `Sys_Region` VALUES (1809, '421281', '赤壁市', 421200, 3, '中國,湖北省,咸寧市,赤壁市', 113.9, 29.7245, 'Chibi');
INSERT INTO `Sys_Region` VALUES (1810, '421300', '隨州市', 420000, 2, '中國,湖北省,隨州市', 113.374, 31.7175, 'Suizhou');
INSERT INTO `Sys_Region` VALUES (1811, '421303', '曾都區', 421300, 3, '中國,湖北省,隨州市,曾都區', 113.371, 31.7161, 'Zengdu');
INSERT INTO `Sys_Region` VALUES (1812, '421321', '隨縣', 421300, 3, '中國,湖北省,隨州市,隨縣', 113.827, 31.6179, 'Suixian');
INSERT INTO `Sys_Region` VALUES (1813, '421381', '廣水市', 421300, 3, '中國,湖北省,隨州市,廣水市', 113.827, 31.6179, 'Guangshui');
INSERT INTO `Sys_Region` VALUES (1814, '422800', '恩施土家族苗族自治州', 420000, 2, '中國,湖北省,恩施土家族苗族自治州', 109.487, 30.2831, 'Enshi');
INSERT INTO `Sys_Region` VALUES (1815, '422801', '恩施市', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,恩施市', 109.479, 30.295, 'Enshi');
INSERT INTO `Sys_Region` VALUES (1816, '422802', '利川市', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,利川市', 108.936, 30.2912, 'Lichuan');
INSERT INTO `Sys_Region` VALUES (1817, '422822', '建始縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,建始縣', 109.722, 30.6021, 'Jianshi');
INSERT INTO `Sys_Region` VALUES (1818, '422823', '巴東縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,巴東縣', 110.341, 31.0423, 'Badong');
INSERT INTO `Sys_Region` VALUES (1819, '422825', '宣恩縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,宣恩縣', 109.492, 29.9871, 'Xuanen');
INSERT INTO `Sys_Region` VALUES (1820, '422826', '咸豐縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,咸豐縣', 109.152, 29.6798, 'Xianfeng');
INSERT INTO `Sys_Region` VALUES (1821, '422827', '來鳳縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,來鳳縣', 109.407, 29.4937, 'Laifeng');
INSERT INTO `Sys_Region` VALUES (1822, '422828', '鶴峰縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,鶴峰縣', 110.031, 29.8907, 'Hefeng');
INSERT INTO `Sys_Region` VALUES (1823, '429000', '直轄縣級', 420000, 2, '中國,湖北省,直轄縣級', 114.299, 30.5844, '');
INSERT INTO `Sys_Region` VALUES (1824, '429004', '仙桃市', 429000, 3, '中國,湖北省,直轄縣級,仙桃市', 113.454, 30.365, 'Xiantao');
INSERT INTO `Sys_Region` VALUES (1825, '429005', '潛江市', 429000, 3, '中國,湖北省,直轄縣級,潛江市', 112.897, 30.4212, 'Qianjiang');
INSERT INTO `Sys_Region` VALUES (1826, '429006', '天門市', 429000, 3, '中國,湖北省,直轄縣級,天門市', 113.166, 30.6531, 'Tianmen');
INSERT INTO `Sys_Region` VALUES (1827, '429021', '神農架林區', 429000, 3, '中國,湖北省,直轄縣級,神農架林區', 110.672, 31.7444, 'Shennongjia');
INSERT INTO `Sys_Region` VALUES (1828, '430000', '湖南省', 100000, 1, '中國,湖南省', 112.982, 28.1941, 'Hunan');
INSERT INTO `Sys_Region` VALUES (1829, '430100', '長沙市', 430000, 2, '中國,湖南省,長沙市', 112.982, 28.1941, 'Changsha');
INSERT INTO `Sys_Region` VALUES (1830, '430102', '芙蓉區', 430100, 3, '中國,湖南省,長沙市,芙蓉區', 113.032, 28.1844, 'Furong');
INSERT INTO `Sys_Region` VALUES (1831, '430103', '天心區', 430100, 3, '中國,湖南省,長沙市,天心區', 112.99, 28.1127, 'Tianxin');
INSERT INTO `Sys_Region` VALUES (1832, '430104', '岳麓區', 430100, 3, '中國,湖南省,長沙市,岳麓區', 112.931, 28.2351, 'Yuelu');
INSERT INTO `Sys_Region` VALUES (1833, '430105', '開福區', 430100, 3, '中國,湖南省,長沙市,開福區', 112.986, 28.2558, 'Kaifu');
INSERT INTO `Sys_Region` VALUES (1834, '430111', '雨花區', 430100, 3, '中國,湖南省,長沙市,雨花區', 113.036, 28.1354, 'Yuhua');
INSERT INTO `Sys_Region` VALUES (1835, '430112', '望城區', 430100, 3, '中國,湖南省,長沙市,望城區', 112.82, 28.3475, 'Wangcheng');
INSERT INTO `Sys_Region` VALUES (1836, '430121', '長沙縣', 430100, 3, '中國,湖南省,長沙市,長沙縣', 113.081, 28.246, 'Changsha');
INSERT INTO `Sys_Region` VALUES (1837, '430124', '寧鄉縣', 430100, 3, '中國,湖南省,長沙市,寧鄉縣', 112.557, 28.2536, 'Ningxiang');
INSERT INTO `Sys_Region` VALUES (1838, '430181', '瀏陽市', 430100, 3, '中國,湖南省,長沙市,瀏陽市', 113.643, 28.1637, 'Liuyang');
INSERT INTO `Sys_Region` VALUES (1839, '430200', '株洲市', 430000, 2, '中國,湖南省,株洲市', 113.152, 27.8358, 'Zhuzhou');
INSERT INTO `Sys_Region` VALUES (1840, '430202', '荷塘區', 430200, 3, '中國,湖南省,株洲市,荷塘區', 113.173, 27.8557, 'Hetang');
INSERT INTO `Sys_Region` VALUES (1841, '430203', '蘆淞區', 430200, 3, '中國,湖南省,株洲市,蘆淞區', 113.156, 27.7852, 'Lusong');
INSERT INTO `Sys_Region` VALUES (1842, '430204', '石峰區', 430200, 3, '中國,湖南省,株洲市,石峰區', 113.118, 27.8755, 'Shifeng');
INSERT INTO `Sys_Region` VALUES (1843, '430211', '天元區', 430200, 3, '中國,湖南省,株洲市,天元區', 113.123, 27.831, 'Tianyuan');
INSERT INTO `Sys_Region` VALUES (1844, '430221', '株洲縣', 430200, 3, '中國,湖南省,株洲市,株洲縣', 113.144, 27.6983, 'Zhuzhou');
INSERT INTO `Sys_Region` VALUES (1845, '430223', '攸縣', 430200, 3, '中國,湖南省,株洲市,攸縣', 113.344, 27.0035, 'Youxian');
INSERT INTO `Sys_Region` VALUES (1846, '430224', '茶陵縣', 430200, 3, '中國,湖南省,株洲市,茶陵縣', 113.544, 26.7915, 'Chaling');
INSERT INTO `Sys_Region` VALUES (1847, '430225', '炎陵縣', 430200, 3, '中國,湖南省,株洲市,炎陵縣', 113.772, 26.4882, 'Yanling');
INSERT INTO `Sys_Region` VALUES (1848, '430281', '醴陵市', 430200, 3, '中國,湖南省,株洲市,醴陵市', 113.497, 27.6462, 'Liling');
INSERT INTO `Sys_Region` VALUES (1849, '430300', '湘潭市', 430000, 2, '中國,湖南省,湘潭市', 112.925, 27.8467, 'Xiangtan');
INSERT INTO `Sys_Region` VALUES (1850, '430302', '雨湖區', 430300, 3, '中國,湖南省,湘潭市,雨湖區', 112.904, 27.8686, 'Yuhu');
INSERT INTO `Sys_Region` VALUES (1851, '430304', '岳塘區', 430300, 3, '中國,湖南省,湘潭市,岳塘區', 112.961, 27.8578, 'Yuetang');
INSERT INTO `Sys_Region` VALUES (1852, '430321', '湘潭縣', 430300, 3, '中國,湖南省,湘潭市,湘潭縣', 112.951, 27.7789, 'Xiangtan');
INSERT INTO `Sys_Region` VALUES (1853, '430381', '湘鄉市', 430300, 3, '中國,湖南省,湘潭市,湘鄉市', 112.535, 27.7354, 'Xiangxiang');
INSERT INTO `Sys_Region` VALUES (1854, '430382', '韶山市', 430300, 3, '中國,湖南省,湘潭市,韶山市', 112.527, 27.915, 'Shaoshan');
INSERT INTO `Sys_Region` VALUES (1855, '430400', '衡陽市', 430000, 2, '中國,湖南省,衡陽市', 112.608, 26.9004, 'Hengyang');
INSERT INTO `Sys_Region` VALUES (1856, '430405', '珠暉區', 430400, 3, '中國,湖南省,衡陽市,珠暉區', 112.621, 26.8936, 'Zhuhui');
INSERT INTO `Sys_Region` VALUES (1857, '430406', '雁峰區', 430400, 3, '中國,湖南省,衡陽市,雁峰區', 112.617, 26.8887, 'Yanfeng');
INSERT INTO `Sys_Region` VALUES (1858, '430407', '石鼓區', 430400, 3, '中國,湖南省,衡陽市,石鼓區', 112.611, 26.9023, 'Shigu');
INSERT INTO `Sys_Region` VALUES (1859, '430408', '蒸湘區', 430400, 3, '中國,湖南省,衡陽市,蒸湘區', 112.603, 26.8965, 'Zhengxiang');
INSERT INTO `Sys_Region` VALUES (1860, '430412', '南岳區', 430400, 3, '中國,湖南省,衡陽市,南岳區', 112.738, 27.2326, 'Nanyue');
INSERT INTO `Sys_Region` VALUES (1861, '430421', '衡陽縣', 430400, 3, '中國,湖南省,衡陽市,衡陽縣', 112.371, 26.9706, 'Hengyang');
INSERT INTO `Sys_Region` VALUES (1862, '430422', '衡南縣', 430400, 3, '中國,湖南省,衡陽市,衡南縣', 112.678, 26.7383, 'Hengnan');
INSERT INTO `Sys_Region` VALUES (1863, '430423', '衡山縣', 430400, 3, '中國,湖南省,衡陽市,衡山縣', 112.868, 27.2313, 'Hengshan');
INSERT INTO `Sys_Region` VALUES (1864, '430424', '衡東縣', 430400, 3, '中國,湖南省,衡陽市,衡東縣', 112.948, 27.0809, 'Hengdong');
INSERT INTO `Sys_Region` VALUES (1865, '430426', '祁東縣', 430400, 3, '中國,湖南省,衡陽市,祁東縣', 112.09, 26.7996, 'Qidong');
INSERT INTO `Sys_Region` VALUES (1866, '430481', '耒陽市', 430400, 3, '中國,湖南省,衡陽市,耒陽市', 112.86, 26.4213, 'Leiyang');
INSERT INTO `Sys_Region` VALUES (1867, '430482', '常寧市', 430400, 3, '中國,湖南省,衡陽市,常寧市', 112.401, 26.4069, 'Changning');
INSERT INTO `Sys_Region` VALUES (1868, '430500', '邵陽市', 430000, 2, '中國,湖南省,邵陽市', 111.469, 27.2378, 'Shaoyang');
INSERT INTO `Sys_Region` VALUES (1869, '430502', '雙清區', 430500, 3, '中國,湖南省,邵陽市,雙清區', 111.497, 27.2329, 'Shuangqing');
INSERT INTO `Sys_Region` VALUES (1870, '430503', '大祥區', 430500, 3, '中國,湖南省,邵陽市,大祥區', 111.454, 27.2333, 'Daxiang');
INSERT INTO `Sys_Region` VALUES (1871, '430511', '北塔區', 430500, 3, '中國,湖南省,邵陽市,北塔區', 111.452, 27.2465, 'Beita');
INSERT INTO `Sys_Region` VALUES (1872, '430521', '邵東縣', 430500, 3, '中國,湖南省,邵陽市,邵東縣', 111.744, 27.2584, 'Shaodong');
INSERT INTO `Sys_Region` VALUES (1873, '430522', '新邵縣', 430500, 3, '中國,湖南省,邵陽市,新邵縣', 111.461, 27.3217, 'Xinshao');
INSERT INTO `Sys_Region` VALUES (1874, '430523', '邵陽縣', 430500, 3, '中國,湖南省,邵陽市,邵陽縣', 111.275, 26.9914, 'Shaoyang');
INSERT INTO `Sys_Region` VALUES (1875, '430524', '隆回縣', 430500, 3, '中國,湖南省,邵陽市,隆回縣', 111.032, 27.1094, 'Longhui');
INSERT INTO `Sys_Region` VALUES (1876, '430525', '洞口縣', 430500, 3, '中國,湖南省,邵陽市,洞口縣', 110.574, 27.0546, 'Dongkou');
INSERT INTO `Sys_Region` VALUES (1877, '430527', '綏寧縣', 430500, 3, '中國,湖南省,邵陽市,綏寧縣', 110.156, 26.5864, 'Suining');
INSERT INTO `Sys_Region` VALUES (1878, '430528', '新寧縣', 430500, 3, '中國,湖南省,邵陽市,新寧縣', 110.851, 26.4294, 'Xinning');
INSERT INTO `Sys_Region` VALUES (1879, '430529', '城步苗族自治縣', 430500, 3, '中國,湖南省,邵陽市,城步苗族自治縣', 110.322, 26.3905, 'Chengbu');
INSERT INTO `Sys_Region` VALUES (1880, '430581', '武岡市', 430500, 3, '中國,湖南省,邵陽市,武岡市', 110.633, 26.7282, 'Wugang');
INSERT INTO `Sys_Region` VALUES (1881, '430600', '岳陽市', 430000, 2, '中國,湖南省,岳陽市', 113.133, 29.3703, 'Yueyang');
INSERT INTO `Sys_Region` VALUES (1882, '430602', '岳陽樓區', 430600, 3, '中國,湖南省,岳陽市,岳陽樓區', 113.129, 29.3719, 'Yueyanglou');
INSERT INTO `Sys_Region` VALUES (1883, '430603', '云溪區', 430600, 3, '中國,湖南省,岳陽市,云溪區', 113.277, 29.4736, 'Yunxi');
INSERT INTO `Sys_Region` VALUES (1884, '430611', '君山區', 430600, 3, '中國,湖南省,岳陽市,君山區', 113.004, 29.4594, 'Junshan');
INSERT INTO `Sys_Region` VALUES (1885, '430621', '岳陽縣', 430600, 3, '中國,湖南省,岳陽市,岳陽縣', 113.12, 29.1431, 'Yueyang');
INSERT INTO `Sys_Region` VALUES (1886, '430623', '華容縣', 430600, 3, '中國,湖南省,岳陽市,華容縣', 112.541, 29.5302, 'Huarong');
INSERT INTO `Sys_Region` VALUES (1887, '430624', '湘陰縣', 430600, 3, '中國,湖南省,岳陽市,湘陰縣', 112.909, 28.6892, 'Xiangyin');
INSERT INTO `Sys_Region` VALUES (1888, '430626', '平江縣', 430600, 3, '中國,湖南省,岳陽市,平江縣', 113.581, 28.7066, 'Pingjiang');
INSERT INTO `Sys_Region` VALUES (1889, '430681', '汨羅市', 430600, 3, '中國,湖南省,岳陽市,汨羅市', 113.067, 28.8063, 'Miluo');
INSERT INTO `Sys_Region` VALUES (1890, '430682', '臨湘市', 430600, 3, '中國,湖南省,岳陽市,臨湘市', 113.45, 29.477, 'Linxiang');
INSERT INTO `Sys_Region` VALUES (1891, '430700', '常德市', 430000, 2, '中國,湖南省,常德市', 111.691, 29.0402, 'Changde');
INSERT INTO `Sys_Region` VALUES (1892, '430702', '武陵區', 430700, 3, '中國,湖南省,常德市,武陵區', 111.698, 29.0288, 'Wuling');
INSERT INTO `Sys_Region` VALUES (1893, '430703', '鼎城區', 430700, 3, '中國,湖南省,常德市,鼎城區', 111.681, 29.0186, 'Dingcheng');
INSERT INTO `Sys_Region` VALUES (1894, '430721', '安鄉縣', 430700, 3, '中國,湖南省,常德市,安鄉縣', 112.167, 29.4133, 'Anxiang');
INSERT INTO `Sys_Region` VALUES (1895, '430722', '漢壽縣', 430700, 3, '中國,湖南省,常德市,漢壽縣', 111.967, 28.903, 'Hanshou');
INSERT INTO `Sys_Region` VALUES (1896, '430723', '澧縣', 430700, 3, '中國,湖南省,常德市,澧縣', 111.759, 29.6332, 'Lixian');
INSERT INTO `Sys_Region` VALUES (1897, '430724', '臨澧縣', 430700, 3, '中國,湖南省,常德市,臨澧縣', 111.652, 29.4416, 'Linli');
INSERT INTO `Sys_Region` VALUES (1898, '430725', '桃源縣', 430700, 3, '中國,湖南省,常德市,桃源縣', 111.489, 28.9047, 'Taoyuan');
INSERT INTO `Sys_Region` VALUES (1899, '430726', '石門縣', 430700, 3, '中國,湖南省,常德市,石門縣', 111.38, 29.5842, 'Shimen');
INSERT INTO `Sys_Region` VALUES (1900, '430781', '津市市', 430700, 3, '中國,湖南省,常德市,津市市', 111.878, 29.6056, 'Jinshi');
INSERT INTO `Sys_Region` VALUES (1901, '430800', '張家界市', 430000, 2, '中國,湖南省,張家界市', 110.48, 29.1274, 'Zhangjiajie');
INSERT INTO `Sys_Region` VALUES (1902, '430802', '永定區', 430800, 3, '中國,湖南省,張家界市,永定區', 110.475, 29.1339, 'Yongding');
INSERT INTO `Sys_Region` VALUES (1903, '430811', '武陵源區', 430800, 3, '中國,湖南省,張家界市,武陵源區', 110.55, 29.3457, 'Wulingyuan');
INSERT INTO `Sys_Region` VALUES (1904, '430821', '慈利縣', 430800, 3, '中國,湖南省,張家界市,慈利縣', 111.139, 29.4299, 'Cili');
INSERT INTO `Sys_Region` VALUES (1905, '430822', '桑植縣', 430800, 3, '中國,湖南省,張家界市,桑植縣', 110.163, 29.3981, 'Sangzhi');
INSERT INTO `Sys_Region` VALUES (1906, '430900', '益陽市', 430000, 2, '中國,湖南省,益陽市', 112.355, 28.5701, 'Yiyang');
INSERT INTO `Sys_Region` VALUES (1907, '430902', '資陽區', 430900, 3, '中國,湖南省,益陽市,資陽區', 112.324, 28.591, 'Ziyang');
INSERT INTO `Sys_Region` VALUES (1908, '430903', '赫山區', 430900, 3, '中國,湖南省,益陽市,赫山區', 112.373, 28.5742, 'Heshan');
INSERT INTO `Sys_Region` VALUES (1909, '430921', '南縣', 430900, 3, '中國,湖南省,益陽市,南縣', 112.396, 29.3616, 'Nanxian');
INSERT INTO `Sys_Region` VALUES (1910, '430922', '桃江縣', 430900, 3, '中國,湖南省,益陽市,桃江縣', 112.156, 28.5181, 'Taojiang');
INSERT INTO `Sys_Region` VALUES (1911, '430923', '安化縣', 430900, 3, '中國,湖南省,益陽市,安化縣', 111.213, 28.3742, 'Anhua');
INSERT INTO `Sys_Region` VALUES (1912, '430981', '沅江市', 430900, 3, '中國,湖南省,益陽市,沅江市', 112.354, 28.844, 'Yuanjiang');
INSERT INTO `Sys_Region` VALUES (1913, '431000', '郴州市', 430000, 2, '中國,湖南省,郴州市', 113.032, 25.7936, 'Chenzhou');
INSERT INTO `Sys_Region` VALUES (1914, '431002', '北湖區', 431000, 3, '中國,湖南省,郴州市,北湖區', 113.011, 25.784, 'Beihu');
INSERT INTO `Sys_Region` VALUES (1915, '431003', '蘇仙區', 431000, 3, '中國,湖南省,郴州市,蘇仙區', 113.042, 25.8004, 'Suxian');
INSERT INTO `Sys_Region` VALUES (1916, '431021', '桂陽縣', 431000, 3, '中國,湖南省,郴州市,桂陽縣', 112.734, 25.7541, 'Guiyang');
INSERT INTO `Sys_Region` VALUES (1917, '431022', '宜章縣', 431000, 3, '中國,湖南省,郴州市,宜章縣', 112.951, 25.3993, 'Yizhang');
INSERT INTO `Sys_Region` VALUES (1918, '431023', '永興縣', 431000, 3, '中國,湖南省,郴州市,永興縣', 113.112, 26.1265, 'Yongxing');
INSERT INTO `Sys_Region` VALUES (1919, '431024', '嘉禾縣', 431000, 3, '中國,湖南省,郴州市,嘉禾縣', 112.369, 25.5879, 'Jiahe');
INSERT INTO `Sys_Region` VALUES (1920, '431025', '臨武縣', 431000, 3, '中國,湖南省,郴州市,臨武縣', 112.564, 25.276, 'Linwu');
INSERT INTO `Sys_Region` VALUES (1921, '431026', '汝城縣', 431000, 3, '中國,湖南省,郴州市,汝城縣', 113.686, 25.552, 'Rucheng');
INSERT INTO `Sys_Region` VALUES (1922, '431027', '桂東縣', 431000, 3, '中國,湖南省,郴州市,桂東縣', 113.947, 26.0799, 'Guidong');
INSERT INTO `Sys_Region` VALUES (1923, '431028', '安仁縣', 431000, 3, '中國,湖南省,郴州市,安仁縣', 113.269, 26.7093, 'Anren');
INSERT INTO `Sys_Region` VALUES (1924, '431081', '資興市', 431000, 3, '中國,湖南省,郴州市,資興市', 113.237, 25.9767, 'Zixing');
INSERT INTO `Sys_Region` VALUES (1925, '431100', '永州市', 430000, 2, '中國,湖南省,永州市', 111.608, 26.4345, 'Yongzhou');
INSERT INTO `Sys_Region` VALUES (1926, '431102', '零陵區', 431100, 3, '中國,湖南省,永州市,零陵區', 111.621, 26.2211, 'Lingling');
INSERT INTO `Sys_Region` VALUES (1927, '431103', '冷水灘區', 431100, 3, '中國,湖南省,永州市,冷水灘區', 111.592, 26.4611, 'Lengshuitan');
INSERT INTO `Sys_Region` VALUES (1928, '431121', '祁陽縣', 431100, 3, '中國,湖南省,永州市,祁陽縣', 111.84, 26.5801, 'Qiyang');
INSERT INTO `Sys_Region` VALUES (1929, '431122', '東安縣', 431100, 3, '中國,湖南省,永州市,東安縣', 111.316, 26.392, 'Dongan');
INSERT INTO `Sys_Region` VALUES (1930, '431123', '雙牌縣', 431100, 3, '中國,湖南省,永州市,雙牌縣', 111.659, 25.9599, 'Shuangpai');
INSERT INTO `Sys_Region` VALUES (1931, '431124', '道縣', 431100, 3, '中國,湖南省,永州市,道縣', 111.602, 25.5277, 'Daoxian');
INSERT INTO `Sys_Region` VALUES (1932, '431125', '江永縣', 431100, 3, '中國,湖南省,永州市,江永縣', 111.341, 25.2723, 'Jiangyong');
INSERT INTO `Sys_Region` VALUES (1933, '431126', '寧遠縣', 431100, 3, '中國,湖南省,永州市,寧遠縣', 111.946, 25.5691, 'Ningyuan');
INSERT INTO `Sys_Region` VALUES (1934, '431127', '藍山縣', 431100, 3, '中國,湖南省,永州市,藍山縣', 112.194, 25.3679, 'Lanshan');
INSERT INTO `Sys_Region` VALUES (1935, '431128', '新田縣', 431100, 3, '中國,湖南省,永州市,新田縣', 112.221, 25.9095, 'Xintian');
INSERT INTO `Sys_Region` VALUES (1936, '431129', '江華瑤族自治縣', 431100, 3, '中國,湖南省,永州市,江華瑤族自治縣', 111.588, 25.1845, 'Jianghua');
INSERT INTO `Sys_Region` VALUES (1937, '431200', '懷化市', 430000, 2, '中國,湖南省,懷化市', 109.978, 27.5501, 'Huaihua');
INSERT INTO `Sys_Region` VALUES (1938, '431202', '鶴城區', 431200, 3, '中國,湖南省,懷化市,鶴城區', 109.965, 27.5494, 'Hecheng');
INSERT INTO `Sys_Region` VALUES (1939, '431221', '中方縣', 431200, 3, '中國,湖南省,懷化市,中方縣', 109.945, 27.4399, 'Zhongfang');
INSERT INTO `Sys_Region` VALUES (1940, '431222', '沅陵縣', 431200, 3, '中國,湖南省,懷化市,沅陵縣', 110.396, 28.4555, 'Yuanling');
INSERT INTO `Sys_Region` VALUES (1941, '431223', '辰溪縣', 431200, 3, '中國,湖南省,懷化市,辰溪縣', 110.189, 28.0041, 'Chenxi');
INSERT INTO `Sys_Region` VALUES (1942, '431224', '溆浦縣', 431200, 3, '中國,湖南省,懷化市,溆浦縣', 110.594, 27.9084, 'Xupu');
INSERT INTO `Sys_Region` VALUES (1943, '431225', '會同縣', 431200, 3, '中國,湖南省,懷化市,會同縣', 109.736, 26.8872, 'Huitong');
INSERT INTO `Sys_Region` VALUES (1944, '431226', '麻陽苗族自治縣', 431200, 3, '中國,湖南省,懷化市,麻陽苗族自治縣', 109.802, 27.866, 'Mayang');
INSERT INTO `Sys_Region` VALUES (1945, '431227', '新晃侗族自治縣', 431200, 3, '中國,湖南省,懷化市,新晃侗族自治縣', 109.172, 27.3594, 'Xinhuang');
INSERT INTO `Sys_Region` VALUES (1946, '431228', '芷江侗族自治縣', 431200, 3, '中國,湖南省,懷化市,芷江侗族自治縣', 109.685, 27.443, 'Zhijiang');
INSERT INTO `Sys_Region` VALUES (1947, '431229', '靖州苗族侗族自治縣', 431200, 3, '中國,湖南省,懷化市,靖州苗族侗族自治縣', 109.698, 26.5765, 'Jingzhou');
INSERT INTO `Sys_Region` VALUES (1948, '431230', '通道侗族自治縣', 431200, 3, '中國,湖南省,懷化市,通道侗族自治縣', 109.785, 26.1571, 'Tongdao');
INSERT INTO `Sys_Region` VALUES (1949, '431281', '洪江市', 431200, 3, '中國,湖南省,懷化市,洪江市', 109.837, 27.2092, 'Hongjiang');
INSERT INTO `Sys_Region` VALUES (1950, '431300', '婁底市', 430000, 2, '中國,湖南省,婁底市', 112.008, 27.7281, 'Loudi');
INSERT INTO `Sys_Region` VALUES (1951, '431302', '婁星區', 431300, 3, '中國,湖南省,婁底市,婁星區', 112.002, 27.7299, 'Louxing');
INSERT INTO `Sys_Region` VALUES (1952, '431321', '雙峰縣', 431300, 3, '中國,湖南省,婁底市,雙峰縣', 112.199, 27.4542, 'Shuangfeng');
INSERT INTO `Sys_Region` VALUES (1953, '431322', '新化縣', 431300, 3, '中國,湖南省,婁底市,新化縣', 111.327, 27.7266, 'Xinhua');
INSERT INTO `Sys_Region` VALUES (1954, '431381', '冷水江市', 431300, 3, '中國,湖南省,婁底市,冷水江市', 111.436, 27.6815, 'Lengshuijiang');
INSERT INTO `Sys_Region` VALUES (1955, '431382', '漣源市', 431300, 3, '中國,湖南省,婁底市,漣源市', 111.672, 27.6883, 'Lianyuan');
INSERT INTO `Sys_Region` VALUES (1956, '433100', '湘西土家族苗族自治州', 430000, 2, '中國,湖南省,湘西土家族苗族自治州', 109.74, 28.3143, 'Xiangxi');
INSERT INTO `Sys_Region` VALUES (1957, '433101', '吉首市', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,吉首市', 109.698, 28.2625, 'Jishou');
INSERT INTO `Sys_Region` VALUES (1958, '433122', '瀘溪縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,瀘溪縣', 110.217, 28.2205, 'Luxi');
INSERT INTO `Sys_Region` VALUES (1959, '433123', '鳳凰縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,鳳凰縣', 109.602, 27.9482, 'Fenghuang');
INSERT INTO `Sys_Region` VALUES (1960, '433124', '花垣縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,花垣縣', 109.482, 28.5721, 'Huayuan');
INSERT INTO `Sys_Region` VALUES (1961, '433125', '保靖縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,保靖縣', 109.66, 28.7, 'Baojing');
INSERT INTO `Sys_Region` VALUES (1962, '433126', '古丈縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,古丈縣', 109.948, 28.6194, 'Guzhang');
INSERT INTO `Sys_Region` VALUES (1963, '433127', '永順縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,永順縣', 109.853, 29.001, 'Yongshun');
INSERT INTO `Sys_Region` VALUES (1964, '433130', '龍山縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,龍山縣', 109.443, 29.4569, 'Longshan');
INSERT INTO `Sys_Region` VALUES (1965, '440000', '廣東省', 100000, 1, '中國,廣東省', 113.281, 23.1252, 'Guangdong');
INSERT INTO `Sys_Region` VALUES (1966, '440100', '廣州市', 440000, 2, '中國,廣東省,廣州市', 113.281, 23.1252, 'Guangzhou');
INSERT INTO `Sys_Region` VALUES (1967, '440103', '荔灣區', 440100, 3, '中國,廣東省,廣州市,荔灣區', 113.244, 23.1259, 'Liwan');
INSERT INTO `Sys_Region` VALUES (1968, '440104', '越秀區', 440100, 3, '中國,廣東省,廣州市,越秀區', 113.267, 23.129, 'Yuexiu');
INSERT INTO `Sys_Region` VALUES (1969, '440105', '海珠區', 440100, 3, '中國,廣東省,廣州市,海珠區', 113.262, 23.1038, 'Haizhu');
INSERT INTO `Sys_Region` VALUES (1970, '440106', '天河區', 440100, 3, '中國,廣東省,廣州市,天河區', 113.361, 23.1247, 'Tianhe');
INSERT INTO `Sys_Region` VALUES (1971, '440111', '白云區', 440100, 3, '中國,廣東省,廣州市,白云區', 113.273, 23.1579, 'Baiyun');
INSERT INTO `Sys_Region` VALUES (1972, '440112', '黃埔區', 440100, 3, '中國,廣東省,廣州市,黃埔區', 113.459, 23.1064, 'Huangpu');
INSERT INTO `Sys_Region` VALUES (1973, '440113', '番禺區', 440100, 3, '中國,廣東省,廣州市,番禺區', 113.384, 22.936, 'Panyu');
INSERT INTO `Sys_Region` VALUES (1974, '440114', '花都區', 440100, 3, '中國,廣東省,廣州市,花都區', 113.22, 23.4036, 'Huadu');
INSERT INTO `Sys_Region` VALUES (1975, '440115', '南沙區', 440100, 3, '中國,廣東省,廣州市,南沙區', 113.608, 22.7714, 'Nansha');
INSERT INTO `Sys_Region` VALUES (1976, '440117', '從化區', 440100, 3, '中國,廣東省,廣州市,從化區', 113.587, 23.5453, 'Conghua');
INSERT INTO `Sys_Region` VALUES (1977, '440118', '增城區', 440100, 3, '中國,廣東省,廣州市,增城區', 113.83, 23.2905, 'Zengcheng');
INSERT INTO `Sys_Region` VALUES (1978, '440200', '韶關市', 440000, 2, '中國,廣東省,韶關市', 113.592, 24.8013, 'Shaoguan');
INSERT INTO `Sys_Region` VALUES (1979, '440203', '武江區', 440200, 3, '中國,廣東省,韶關市,武江區', 113.588, 24.7926, 'Wujiang');
INSERT INTO `Sys_Region` VALUES (1980, '440204', '湞江區', 440200, 3, '中國,廣東省,韶關市,湞江區', 113.611, 24.8044, 'Zhenjiang');
INSERT INTO `Sys_Region` VALUES (1981, '440205', '曲江區', 440200, 3, '中國,廣東省,韶關市,曲江區', 113.602, 24.6791, 'Qujiang');
INSERT INTO `Sys_Region` VALUES (1982, '440222', '始興縣', 440200, 3, '中國,廣東省,韶關市,始興縣', 114.068, 24.9476, 'Shixing');
INSERT INTO `Sys_Region` VALUES (1983, '440224', '仁化縣', 440200, 3, '中國,廣東省,韶關市,仁化縣', 113.747, 25.0874, 'Renhua');
INSERT INTO `Sys_Region` VALUES (1984, '440229', '翁源縣', 440200, 3, '中國,廣東省,韶關市,翁源縣', 114.134, 24.3495, 'Wengyuan');
INSERT INTO `Sys_Region` VALUES (1985, '440232', '乳源瑤族自治縣', 440200, 3, '中國,廣東省,韶關市,乳源瑤族自治縣', 113.277, 24.778, 'Ruyuan');
INSERT INTO `Sys_Region` VALUES (1986, '440233', '新豐縣', 440200, 3, '中國,廣東省,韶關市,新豐縣', 114.208, 24.0592, 'Xinfeng');
INSERT INTO `Sys_Region` VALUES (1987, '440281', '樂昌市', 440200, 3, '中國,廣東省,韶關市,樂昌市', 113.357, 25.128, 'Lechang');
INSERT INTO `Sys_Region` VALUES (1988, '440282', '南雄市', 440200, 3, '中國,廣東省,韶關市,南雄市', 114.31, 25.1171, 'Nanxiong');
INSERT INTO `Sys_Region` VALUES (1989, '440300', '深圳市', 440000, 2, '中國,廣東省,深圳市', 114.086, 22.547, 'Shenzhen');
INSERT INTO `Sys_Region` VALUES (1990, '440303', '羅湖區', 440300, 3, '中國,廣東省,深圳市,羅湖區', 114.131, 22.5484, 'Luohu');
INSERT INTO `Sys_Region` VALUES (1991, '440304', '福田區', 440300, 3, '中國,廣東省,深圳市,福田區', 114.056, 22.5224, 'Futian');
INSERT INTO `Sys_Region` VALUES (1992, '440305', '南山區', 440300, 3, '中國,廣東省,深圳市,南山區', 113.93, 22.5329, 'Nanshan');
INSERT INTO `Sys_Region` VALUES (1993, '440306', '寶安區', 440300, 3, '中國,廣東省,深圳市,寶安區', 113.883, 22.5537, 'Baoan');
INSERT INTO `Sys_Region` VALUES (1994, '440307', '龍崗區', 440300, 3, '中國,廣東省,深圳市,龍崗區', 114.248, 22.7199, 'Longgang');
INSERT INTO `Sys_Region` VALUES (1995, '440308', '鹽田區', 440300, 3, '中國,廣東省,深圳市,鹽田區', 114.237, 22.5578, 'Yantian');
INSERT INTO `Sys_Region` VALUES (1996, '440309', '光明新區', 440300, 3, '中國,廣東省,深圳市,光明新區', 113.896, 22.7773, 'Guangmingxinqu');
INSERT INTO `Sys_Region` VALUES (1997, '440310', '坪山新區', 440300, 3, '中國,廣東省,深圳市,坪山新區', 114.346, 22.6905, 'Pingshanxinqu');
INSERT INTO `Sys_Region` VALUES (1998, '440311', '大鵬新區', 440300, 3, '中國,廣東省,深圳市,大鵬新區', 114.48, 22.5879, 'Dapengxinqu');
INSERT INTO `Sys_Region` VALUES (1999, '440312', '龍華新區', 440300, 3, '中國,廣東省,深圳市,龍華新區', 114.037, 22.687, 'Longhuaxinqu');
INSERT INTO `Sys_Region` VALUES (2000, '440400', '珠海市', 440000, 2, '中國,廣東省,珠海市', 113.553, 22.2559, 'Zhuhai');
INSERT INTO `Sys_Region` VALUES (2001, '440402', '香洲區', 440400, 3, '中國,廣東省,珠海市,香洲區', 113.544, 22.2665, 'Xiangzhou');
INSERT INTO `Sys_Region` VALUES (2002, '440403', '斗門區', 440400, 3, '中國,廣東省,珠海市,斗門區', 113.296, 22.209, 'Doumen');
INSERT INTO `Sys_Region` VALUES (2003, '440404', '金灣區', 440400, 3, '中國,廣東省,珠海市,金灣區', 113.364, 22.1469, 'Jinwan');
INSERT INTO `Sys_Region` VALUES (2004, '440500', '汕頭市', 440000, 2, '中國,廣東省,汕頭市', 116.708, 23.371, 'Shantou');
INSERT INTO `Sys_Region` VALUES (2005, '440507', '龍湖區', 440500, 3, '中國,廣東省,汕頭市,龍湖區', 116.716, 23.3717, 'Longhu');
INSERT INTO `Sys_Region` VALUES (2006, '440511', '金平區', 440500, 3, '中國,廣東省,汕頭市,金平區', 116.704, 23.3664, 'Jinping');
INSERT INTO `Sys_Region` VALUES (2007, '440512', '濠江區', 440500, 3, '中國,廣東省,汕頭市,濠江區', 116.727, 23.2859, 'Haojiang');
INSERT INTO `Sys_Region` VALUES (2008, '440513', '潮陽區', 440500, 3, '中國,廣東省,汕頭市,潮陽區', 116.602, 23.2649, 'Chaoyang');
INSERT INTO `Sys_Region` VALUES (2009, '440514', '潮南區', 440500, 3, '中國,廣東省,汕頭市,潮南區', 116.432, 23.25, 'Chaonan');
INSERT INTO `Sys_Region` VALUES (2010, '440515', '澄海區', 440500, 3, '中國,廣東省,汕頭市,澄海區', 116.756, 23.4673, 'Chenghai');
INSERT INTO `Sys_Region` VALUES (2011, '440523', '南澳縣', 440500, 3, '中國,廣東省,汕頭市,南澳縣', 117.019, 23.4223, 'Nanao');
INSERT INTO `Sys_Region` VALUES (2012, '440600', '佛山市', 440000, 2, '中國,廣東省,佛山市', 113.123, 23.0288, 'Foshan');
INSERT INTO `Sys_Region` VALUES (2013, '440604', '禪城區', 440600, 3, '中國,廣東省,佛山市,禪城區', 113.123, 23.0084, 'Chancheng');
INSERT INTO `Sys_Region` VALUES (2014, '440605', '南海區', 440600, 3, '中國,廣東省,佛山市,南海區', 113.143, 23.0288, 'Nanhai');
INSERT INTO `Sys_Region` VALUES (2015, '440606', '順德區', 440600, 3, '中國,廣東省,佛山市,順德區', 113.294, 22.8045, 'Shunde');
INSERT INTO `Sys_Region` VALUES (2016, '440607', '三水區', 440600, 3, '中國,廣東省,佛山市,三水區', 112.897, 23.1556, 'Sanshui');
INSERT INTO `Sys_Region` VALUES (2017, '440608', '高明區', 440600, 3, '中國,廣東省,佛山市,高明區', 112.893, 22.9002, 'Gaoming');
INSERT INTO `Sys_Region` VALUES (2018, '440700', '江門市', 440000, 2, '中國,廣東省,江門市', 113.095, 22.5904, 'Jiangmen');
INSERT INTO `Sys_Region` VALUES (2019, '440703', '蓬江區', 440700, 3, '中國,廣東省,江門市,蓬江區', 113.078, 22.5951, 'Pengjiang');
INSERT INTO `Sys_Region` VALUES (2020, '440704', '江海區', 440700, 3, '中國,廣東省,江門市,江海區', 113.111, 22.5602, 'Jianghai');
INSERT INTO `Sys_Region` VALUES (2021, '440705', '新會區', 440700, 3, '中國,廣東省,江門市,新會區', 113.032, 22.4588, 'Xinhui');
INSERT INTO `Sys_Region` VALUES (2022, '440781', '臺山市', 440700, 3, '中國,廣東省,江門市,臺山市', 112.794, 22.2515, 'Taishan');
INSERT INTO `Sys_Region` VALUES (2023, '440783', '開平市', 440700, 3, '中國,廣東省,江門市,開平市', 112.698, 22.3762, 'Kaiping');
INSERT INTO `Sys_Region` VALUES (2024, '440784', '鶴山市', 440700, 3, '中國,廣東省,江門市,鶴山市', 112.964, 22.7652, 'Heshan');
INSERT INTO `Sys_Region` VALUES (2025, '440785', '恩平市', 440700, 3, '中國,廣東省,江門市,恩平市', 112.305, 22.1829, 'Enping');
INSERT INTO `Sys_Region` VALUES (2026, '440800', '湛江市', 440000, 2, '中國,廣東省,湛江市', 110.406, 21.1953, 'Zhanjiang');
INSERT INTO `Sys_Region` VALUES (2027, '440802', '赤坎區', 440800, 3, '中國,廣東省,湛江市,赤坎區', 110.366, 21.2661, 'Chikan');
INSERT INTO `Sys_Region` VALUES (2028, '440803', '霞山區', 440800, 3, '中國,廣東省,湛江市,霞山區', 110.398, 21.1918, 'Xiashan');
INSERT INTO `Sys_Region` VALUES (2029, '440804', '坡頭區', 440800, 3, '中國,廣東省,湛江市,坡頭區', 110.455, 21.2447, 'Potou');
INSERT INTO `Sys_Region` VALUES (2030, '440811', '麻章區', 440800, 3, '中國,廣東省,湛江市,麻章區', 110.334, 21.2633, 'Mazhang');
INSERT INTO `Sys_Region` VALUES (2031, '440823', '遂溪縣', 440800, 3, '中國,廣東省,湛江市,遂溪縣', 110.25, 21.3772, 'Suixi');
INSERT INTO `Sys_Region` VALUES (2032, '440825', '徐聞縣', 440800, 3, '中國,廣東省,湛江市,徐聞縣', 110.174, 20.3281, 'Xuwen');
INSERT INTO `Sys_Region` VALUES (2033, '440881', '廉江市', 440800, 3, '中國,廣東省,湛江市,廉江市', 110.284, 21.6092, 'Lianjiang');
INSERT INTO `Sys_Region` VALUES (2034, '440882', '雷州市', 440800, 3, '中國,廣東省,湛江市,雷州市', 110.101, 20.9143, 'Leizhou');
INSERT INTO `Sys_Region` VALUES (2035, '440883', '吳川市', 440800, 3, '中國,廣東省,湛江市,吳川市', 110.777, 21.4458, 'Wuchuan');
INSERT INTO `Sys_Region` VALUES (2036, '440900', '茂名市', 440000, 2, '中國,廣東省,茂名市', 110.919, 21.6598, 'Maoming');
INSERT INTO `Sys_Region` VALUES (2037, '440902', '茂南區', 440900, 3, '中國,廣東省,茂名市,茂南區', 110.919, 21.641, 'Maonan');
INSERT INTO `Sys_Region` VALUES (2038, '440904', '電白區', 440900, 3, '中國,廣東省,茂名市,電白區', 111.007, 21.5072, 'Dianbai');
INSERT INTO `Sys_Region` VALUES (2039, '440981', '高州市', 440900, 3, '中國,廣東省,茂名市,高州市', 110.855, 21.9206, 'Gaozhou');
INSERT INTO `Sys_Region` VALUES (2040, '440982', '化州市', 440900, 3, '中國,廣東省,茂名市,化州市', 110.639, 21.6639, 'Huazhou');
INSERT INTO `Sys_Region` VALUES (2041, '440983', '信宜市', 440900, 3, '中國,廣東省,茂名市,信宜市', 110.946, 22.3535, 'Xinyi');
INSERT INTO `Sys_Region` VALUES (2042, '441200', '肇慶市', 440000, 2, '中國,廣東省,肇慶市', 112.473, 23.0515, 'Zhaoqing');
INSERT INTO `Sys_Region` VALUES (2043, '441202', '端州區', 441200, 3, '中國,廣東省,肇慶市,端州區', 112.485, 23.0519, 'Duanzhou');
INSERT INTO `Sys_Region` VALUES (2044, '441203', '鼎湖區', 441200, 3, '中國,廣東省,肇慶市,鼎湖區', 112.566, 23.1585, 'Dinghu');
INSERT INTO `Sys_Region` VALUES (2045, '441223', '廣寧縣', 441200, 3, '中國,廣東省,肇慶市,廣寧縣', 112.441, 23.6346, 'Guangning');
INSERT INTO `Sys_Region` VALUES (2046, '441224', '懷集縣', 441200, 3, '中國,廣東省,肇慶市,懷集縣', 112.184, 23.9092, 'Huaiji');
INSERT INTO `Sys_Region` VALUES (2047, '441225', '封開縣', 441200, 3, '中國,廣東省,肇慶市,封開縣', 111.503, 23.4357, 'Fengkai');
INSERT INTO `Sys_Region` VALUES (2048, '441226', '德慶縣', 441200, 3, '中國,廣東省,肇慶市,德慶縣', 111.786, 23.1437, 'Deqing');
INSERT INTO `Sys_Region` VALUES (2049, '441283', '高要市', 441200, 3, '中國,廣東省,肇慶市,高要市', 112.458, 23.0258, 'Gaoyao');
INSERT INTO `Sys_Region` VALUES (2050, '441284', '四會市', 441200, 3, '中國,廣東省,肇慶市,四會市', 112.734, 23.3269, 'Sihui');
INSERT INTO `Sys_Region` VALUES (2051, '441300', '惠州市', 440000, 2, '中國,廣東省,惠州市', 114.413, 23.0794, 'Huizhou');
INSERT INTO `Sys_Region` VALUES (2052, '441302', '惠城區', 441300, 3, '中國,廣東省,惠州市,惠城區', 114.383, 23.0838, 'Huicheng');
INSERT INTO `Sys_Region` VALUES (2053, '441303', '惠陽區', 441300, 3, '中國,廣東省,惠州市,惠陽區', 114.456, 22.7885, 'Huiyang');
INSERT INTO `Sys_Region` VALUES (2054, '441322', '博羅縣', 441300, 3, '中國,廣東省,惠州市,博羅縣', 114.29, 23.1731, 'Boluo');
INSERT INTO `Sys_Region` VALUES (2055, '441323', '惠東縣', 441300, 3, '中國,廣東省,惠州市,惠東縣', 114.72, 22.9848, 'Huidong');
INSERT INTO `Sys_Region` VALUES (2056, '441324', '龍門縣', 441300, 3, '中國,廣東省,惠州市,龍門縣', 114.255, 23.7276, 'Longmen');
INSERT INTO `Sys_Region` VALUES (2057, '441400', '梅州市', 440000, 2, '中國,廣東省,梅州市', 116.118, 24.2991, 'Meizhou');
INSERT INTO `Sys_Region` VALUES (2058, '441402', '梅江區', 441400, 3, '中國,廣東省,梅州市,梅江區', 116.117, 24.3106, 'Meijiang');
INSERT INTO `Sys_Region` VALUES (2059, '441403', '梅縣區', 441400, 3, '中國,廣東省,梅州市,梅縣區', 116.098, 24.2867, 'Meixian');
INSERT INTO `Sys_Region` VALUES (2060, '441422', '大埔縣', 441400, 3, '中國,廣東省,梅州市,大埔縣', 116.697, 24.3533, 'Dabu');
INSERT INTO `Sys_Region` VALUES (2061, '441423', '豐順縣', 441400, 3, '中國,廣東省,梅州市,豐順縣', 116.182, 23.7409, 'Fengshun');
INSERT INTO `Sys_Region` VALUES (2062, '441424', '五華縣', 441400, 3, '中國,廣東省,梅州市,五華縣', 115.779, 23.9242, 'Wuhua');
INSERT INTO `Sys_Region` VALUES (2063, '441426', '平遠縣', 441400, 3, '中國,廣東省,梅州市,平遠縣', 115.896, 24.5712, 'Pingyuan');
INSERT INTO `Sys_Region` VALUES (2064, '441427', '蕉嶺縣', 441400, 3, '中國,廣東省,梅州市,蕉嶺縣', 116.171, 24.6573, 'Jiaoling');
INSERT INTO `Sys_Region` VALUES (2065, '441481', '興寧市', 441400, 3, '中國,廣東省,梅州市,興寧市', 115.731, 24.14, 'Xingning');
INSERT INTO `Sys_Region` VALUES (2066, '441500', '汕尾市', 440000, 2, '中國,廣東省,汕尾市', 115.364, 22.7745, 'Shanwei');
INSERT INTO `Sys_Region` VALUES (2067, '441502', '城區', 441500, 3, '中國,廣東省,汕尾市,城區', 115.365, 22.7789, 'Chengqu');
INSERT INTO `Sys_Region` VALUES (2068, '441521', '海豐縣', 441500, 3, '中國,廣東省,汕尾市,海豐縣', 115.323, 22.9665, 'Haifeng');
INSERT INTO `Sys_Region` VALUES (2069, '441523', '陸河縣', 441500, 3, '中國,廣東省,汕尾市,陸河縣', 115.656, 23.3036, 'Luhe');
INSERT INTO `Sys_Region` VALUES (2070, '441581', '陸豐市', 441500, 3, '中國,廣東省,汕尾市,陸豐市', 115.648, 22.9433, 'Lufeng');
INSERT INTO `Sys_Region` VALUES (2071, '441600', '河源市', 440000, 2, '中國,廣東省,河源市', 114.698, 23.7463, 'Heyuan');
INSERT INTO `Sys_Region` VALUES (2072, '441602', '源城區', 441600, 3, '中國,廣東省,河源市,源城區', 114.702, 23.7341, 'Yuancheng');
INSERT INTO `Sys_Region` VALUES (2073, '441621', '紫金縣', 441600, 3, '中國,廣東省,河源市,紫金縣', 115.184, 23.6387, 'Zijin');
INSERT INTO `Sys_Region` VALUES (2074, '441622', '龍川縣', 441600, 3, '中國,廣東省,河源市,龍川縣', 115.26, 24.1014, 'Longchuan');
INSERT INTO `Sys_Region` VALUES (2075, '441623', '連平縣', 441600, 3, '中國,廣東省,河源市,連平縣', 114.49, 24.3716, 'Lianping');
INSERT INTO `Sys_Region` VALUES (2076, '441624', '和平縣', 441600, 3, '中國,廣東省,河源市,和平縣', 114.938, 24.4432, 'Heping');
INSERT INTO `Sys_Region` VALUES (2077, '441625', '東源縣', 441600, 3, '中國,廣東省,河源市,東源縣', 114.746, 23.7883, 'Dongyuan');
INSERT INTO `Sys_Region` VALUES (2078, '441700', '陽江市', 440000, 2, '中國,廣東省,陽江市', 111.975, 21.8592, 'Yangjiang');
INSERT INTO `Sys_Region` VALUES (2079, '441702', '江城區', 441700, 3, '中國,廣東省,陽江市,江城區', 111.955, 21.8619, 'Jiangcheng');
INSERT INTO `Sys_Region` VALUES (2080, '441704', '陽東區', 441700, 3, '中國,廣東省,陽江市,陽東區', 112.015, 21.874, 'Yangdong');
INSERT INTO `Sys_Region` VALUES (2081, '441721', '陽西縣', 441700, 3, '中國,廣東省,陽江市,陽西縣', 111.618, 21.7523, 'Yangxi');
INSERT INTO `Sys_Region` VALUES (2082, '441781', '陽春市', 441700, 3, '中國,廣東省,陽江市,陽春市', 111.789, 22.1723, 'Yangchun');
INSERT INTO `Sys_Region` VALUES (2083, '441800', '清遠市', 440000, 2, '中國,廣東省,清遠市', 113.037, 23.7042, 'Qingyuan');
INSERT INTO `Sys_Region` VALUES (2084, '441802', '清城區', 441800, 3, '中國,廣東省,清遠市,清城區', 113.063, 23.6978, 'Qingcheng');
INSERT INTO `Sys_Region` VALUES (2085, '441803', '清新區', 441800, 3, '中國,廣東省,清遠市,清新區', 113.015, 23.7369, 'Qingxin');
INSERT INTO `Sys_Region` VALUES (2086, '441821', '佛岡縣', 441800, 3, '中國,廣東省,清遠市,佛岡縣', 113.533, 23.8723, 'Fogang');
INSERT INTO `Sys_Region` VALUES (2087, '441823', '陽山縣', 441800, 3, '中國,廣東省,清遠市,陽山縣', 112.641, 24.4652, 'Yangshan');
INSERT INTO `Sys_Region` VALUES (2088, '441825', '連山壯族瑤族自治縣', 441800, 3, '中國,廣東省,清遠市,連山壯族瑤族自治縣', 112.08, 24.5681, 'Lianshan');
INSERT INTO `Sys_Region` VALUES (2089, '441826', '連南瑤族自治縣', 441800, 3, '中國,廣東省,清遠市,連南瑤族自治縣', 112.288, 24.7173, 'Liannan');
INSERT INTO `Sys_Region` VALUES (2090, '441881', '英德市', 441800, 3, '中國,廣東省,清遠市,英德市', 113.415, 24.1857, 'Yingde');
INSERT INTO `Sys_Region` VALUES (2091, '441882', '連州市', 441800, 3, '中國,廣東省,清遠市,連州市', 112.382, 24.7791, 'Lianzhou');
INSERT INTO `Sys_Region` VALUES (2092, '441900', '東莞市', 440000, 2, '中國,廣東省,東莞市', 113.76, 23.0489, 'Dongguan');
INSERT INTO `Sys_Region` VALUES (2093, '441901', '莞城區', 441900, 3, '中國,廣東省,東莞市,莞城區', 113.751, 23.0534, 'Guancheng');
INSERT INTO `Sys_Region` VALUES (2094, '441902', '南城區', 441900, 3, '中國,廣東省,東莞市,南城區', 113.752, 23.0202, 'Nancheng');
INSERT INTO `Sys_Region` VALUES (2095, '441904', '萬江區', 441900, 3, '中國,廣東省,東莞市,萬江區', 113.739, 23.0438, 'Wanjiang');
INSERT INTO `Sys_Region` VALUES (2096, '441905', '石碣鎮', 441900, 3, '中國,廣東省,東莞市,石碣鎮', 113.802, 23.099, 'Shijie');
INSERT INTO `Sys_Region` VALUES (2097, '441906', '石龍鎮', 441900, 3, '中國,廣東省,東莞市,石龍鎮', 113.876, 23.1074, 'Shilong');
INSERT INTO `Sys_Region` VALUES (2098, '441907', '茶山鎮', 441900, 3, '中國,廣東省,東莞市,茶山鎮', 113.884, 23.0624, 'Chashan');
INSERT INTO `Sys_Region` VALUES (2099, '441908', '石排鎮', 441900, 3, '中國,廣東省,東莞市,石排鎮', 113.92, 23.0863, 'Shipai');
INSERT INTO `Sys_Region` VALUES (2100, '441909', '企石鎮', 441900, 3, '中國,廣東省,東莞市,企石鎮', 114.013, 23.066, 'Qishi');
INSERT INTO `Sys_Region` VALUES (2101, '441910', '橫瀝鎮', 441900, 3, '中國,廣東省,東莞市,橫瀝鎮', 113.957, 23.0257, 'Hengli');
INSERT INTO `Sys_Region` VALUES (2102, '441911', '橋頭鎮', 441900, 3, '中國,廣東省,東莞市,橋頭鎮', 114.014, 22.9397, 'Qiaotou');
INSERT INTO `Sys_Region` VALUES (2103, '441912', '謝崗鎮', 441900, 3, '中國,廣東省,東莞市,謝崗鎮', 114.141, 22.9597, 'Xiegang');
INSERT INTO `Sys_Region` VALUES (2104, '441913', '東坑鎮', 441900, 3, '中國,廣東省,東莞市,東坑鎮', 113.94, 22.9928, 'Dongkeng');
INSERT INTO `Sys_Region` VALUES (2105, '441914', '常平鎮', 441900, 3, '中國,廣東省,東莞市,常平鎮', 114.03, 23.0161, 'Changping');
INSERT INTO `Sys_Region` VALUES (2106, '441915', '寮步鎮', 441900, 3, '中國,廣東省,東莞市,寮步鎮', 113.885, 22.9917, 'Liaobu');
INSERT INTO `Sys_Region` VALUES (2107, '441916', '大朗鎮', 441900, 3, '中國,廣東省,東莞市,大朗鎮', 113.927, 22.9657, 'Dalang');
INSERT INTO `Sys_Region` VALUES (2108, '441917', '麻涌鎮', 441900, 3, '中國,廣東省,東莞市,麻涌鎮', 113.546, 23.0453, 'Machong');
INSERT INTO `Sys_Region` VALUES (2109, '441918', '中堂鎮', 441900, 3, '中國,廣東省,東莞市,中堂鎮', 113.654, 23.0902, 'Zhongtang');
INSERT INTO `Sys_Region` VALUES (2110, '441919', '高埗鎮', 441900, 3, '中國,廣東省,東莞市,高埗鎮', 113.736, 23.0684, 'Gaobu');
INSERT INTO `Sys_Region` VALUES (2111, '441920', '樟木頭鎮', 441900, 3, '中國,廣東省,東莞市,樟木頭鎮', 114.066, 22.9567, 'Zhangmutou');
INSERT INTO `Sys_Region` VALUES (2112, '441921', '大嶺山鎮', 441900, 3, '中國,廣東省,東莞市,大嶺山鎮', 113.783, 22.8854, 'Dalingshan');
INSERT INTO `Sys_Region` VALUES (2113, '441922', '望牛墩鎮', 441900, 3, '中國,廣東省,東莞市,望牛墩鎮', 113.659, 23.055, 'Wangniudun');
INSERT INTO `Sys_Region` VALUES (2114, '441923', '黃江鎮', 441900, 3, '中國,廣東省,東莞市,黃江鎮', 113.993, 22.8775, 'Huangjiang');
INSERT INTO `Sys_Region` VALUES (2115, '441924', '洪梅鎮', 441900, 3, '中國,廣東省,東莞市,洪梅鎮', 113.613, 22.9927, 'Hongmei');
INSERT INTO `Sys_Region` VALUES (2116, '441925', '清溪鎮', 441900, 3, '中國,廣東省,東莞市,清溪鎮', 114.156, 22.8445, 'Qingxi');
INSERT INTO `Sys_Region` VALUES (2117, '441926', '沙田鎮', 441900, 3, '中國,廣東省,東莞市,沙田鎮', 113.76, 23.0489, 'Shatian');
INSERT INTO `Sys_Region` VALUES (2118, '441927', '道滘鎮', 441900, 3, '中國,廣東省,東莞市,道滘鎮', 113.76, 23.0489, 'Daojiao');
INSERT INTO `Sys_Region` VALUES (2119, '441928', '塘廈鎮', 441900, 3, '中國,廣東省,東莞市,塘廈鎮', 114.108, 22.8229, 'Tangxia');
INSERT INTO `Sys_Region` VALUES (2120, '441929', '虎門鎮', 441900, 3, '中國,廣東省,東莞市,虎門鎮', 113.711, 22.8262, 'Humen');
INSERT INTO `Sys_Region` VALUES (2121, '441930', '厚街鎮', 441900, 3, '中國,廣東省,東莞市,厚街鎮', 113.673, 22.9408, 'Houjie');
INSERT INTO `Sys_Region` VALUES (2122, '441931', '鳳崗鎮', 441900, 3, '中國,廣東省,東莞市,鳳崗鎮', 114.141, 22.7446, 'Fenggang');
INSERT INTO `Sys_Region` VALUES (2123, '441932', '長安鎮', 441900, 3, '中國,廣東省,東莞市,長安鎮', 113.804, 22.8166, 'Changan');
INSERT INTO `Sys_Region` VALUES (2124, '442000', '中山市', 440000, 2, '中國,廣東省,中山市', 113.382, 22.5211, 'Zhongshan');
INSERT INTO `Sys_Region` VALUES (2125, '442001', '石岐區', 442000, 3, '中國,廣東省,中山市,石岐區', 113.379, 22.5252, 'Shiqi');
INSERT INTO `Sys_Region` VALUES (2126, '442004', '南區', 442000, 3, '中國,廣東省,中山市,南區', 113.356, 22.4866, 'Nanqu');
INSERT INTO `Sys_Region` VALUES (2127, '442005', '五桂山區', 442000, 3, '中國,廣東省,中山市,五桂山區', 113.411, 22.5197, 'Wuguishan');
INSERT INTO `Sys_Region` VALUES (2128, '442006', '火炬開發區', 442000, 3, '中國,廣東省,中山市,火炬開發區', 113.481, 22.5661, 'Huoju');
INSERT INTO `Sys_Region` VALUES (2129, '442007', '黃圃鎮', 442000, 3, '中國,廣東省,中山市,黃圃鎮', 113.342, 22.7151, 'Huangpu');
INSERT INTO `Sys_Region` VALUES (2130, '442008', '南頭鎮', 442000, 3, '中國,廣東省,中山市,南頭鎮', 113.296, 22.7139, 'Nantou');
INSERT INTO `Sys_Region` VALUES (2131, '442009', '東鳳鎮', 442000, 3, '中國,廣東省,中山市,東鳳鎮', 113.261, 22.6877, 'Dongfeng');
INSERT INTO `Sys_Region` VALUES (2132, '442010', '阜沙鎮', 442000, 3, '中國,廣東省,中山市,阜沙鎮', 113.353, 22.6664, 'Fusha');
INSERT INTO `Sys_Region` VALUES (2133, '442011', '小欖鎮', 442000, 3, '中國,廣東省,中山市,小欖鎮', 113.244, 22.667, 'Xiaolan');
INSERT INTO `Sys_Region` VALUES (2134, '442012', '東升鎮', 442000, 3, '中國,廣東省,中山市,東升鎮', 113.296, 22.614, 'Dongsheng');
INSERT INTO `Sys_Region` VALUES (2135, '442013', '古鎮鎮', 442000, 3, '中國,廣東省,中山市,古鎮鎮', 113.18, 22.611, 'Guzhen');
INSERT INTO `Sys_Region` VALUES (2136, '442014', '橫欄鎮', 442000, 3, '中國,廣東省,中山市,橫欄鎮', 113.266, 22.5232, 'Henglan');
INSERT INTO `Sys_Region` VALUES (2137, '442015', '三角鎮', 442000, 3, '中國,廣東省,中山市,三角鎮', 113.424, 22.677, 'Sanjiao');
INSERT INTO `Sys_Region` VALUES (2138, '442016', '民眾鎮', 442000, 3, '中國,廣東省,中山市,民眾鎮', 113.486, 22.6235, 'Minzhong');
INSERT INTO `Sys_Region` VALUES (2139, '442017', '南朗鎮', 442000, 3, '中國,廣東省,中山市,南朗鎮', 113.534, 22.4924, 'Nanlang');
INSERT INTO `Sys_Region` VALUES (2140, '442018', '港口鎮', 442000, 3, '中國,廣東省,中山市,港口鎮', 113.382, 22.5211, 'Gangkou');
INSERT INTO `Sys_Region` VALUES (2141, '442019', '大涌鎮', 442000, 3, '中國,廣東省,中山市,大涌鎮', 113.292, 22.4677, 'Dayong');
INSERT INTO `Sys_Region` VALUES (2142, '442020', '沙溪鎮', 442000, 3, '中國,廣東省,中山市,沙溪鎮', 113.328, 22.5263, 'Shaxi');
INSERT INTO `Sys_Region` VALUES (2143, '442021', '三鄉鎮', 442000, 3, '中國,廣東省,中山市,三鄉鎮', 113.433, 22.3525, 'Sanxiang');
INSERT INTO `Sys_Region` VALUES (2144, '442022', '板芙鎮', 442000, 3, '中國,廣東省,中山市,板芙鎮', 113.32, 22.4157, 'Banfu');
INSERT INTO `Sys_Region` VALUES (2145, '442023', '神灣鎮', 442000, 3, '中國,廣東省,中山市,神灣鎮', 113.359, 22.3125, 'Shenwan');
INSERT INTO `Sys_Region` VALUES (2146, '442024', '坦洲鎮', 442000, 3, '中國,廣東省,中山市,坦洲鎮', 113.486, 22.2613, 'Tanzhou');
INSERT INTO `Sys_Region` VALUES (2147, '445100', '潮州市', 440000, 2, '中國,廣東省,潮州市', 116.632, 23.6617, 'Chaozhou');
INSERT INTO `Sys_Region` VALUES (2148, '445102', '湘橋區', 445100, 3, '中國,廣東省,潮州市,湘橋區', 116.628, 23.6745, 'Xiangqiao');
INSERT INTO `Sys_Region` VALUES (2149, '445103', '潮安區', 445100, 3, '中國,廣東省,潮州市,潮安區', 116.593, 23.6437, 'Chaoan');
INSERT INTO `Sys_Region` VALUES (2150, '445122', '饒平縣', 445100, 3, '中國,廣東省,潮州市,饒平縣', 117.007, 23.6699, 'Raoping');
INSERT INTO `Sys_Region` VALUES (2151, '445200', '揭陽市', 440000, 2, '中國,廣東省,揭陽市', 116.356, 23.5438, 'Jieyang');
INSERT INTO `Sys_Region` VALUES (2152, '445202', '榕城區', 445200, 3, '中國,廣東省,揭陽市,榕城區', 116.367, 23.5251, 'Rongcheng');
INSERT INTO `Sys_Region` VALUES (2153, '445203', '揭東區', 445200, 3, '中國,廣東省,揭陽市,揭東區', 116.413, 23.5699, 'Jiedong');
INSERT INTO `Sys_Region` VALUES (2154, '445222', '揭西縣', 445200, 3, '中國,廣東省,揭陽市,揭西縣', 115.839, 23.4271, 'Jiexi');
INSERT INTO `Sys_Region` VALUES (2155, '445224', '惠來縣', 445200, 3, '中國,廣東省,揭陽市,惠來縣', 116.296, 23.0329, 'Huilai');
INSERT INTO `Sys_Region` VALUES (2156, '445281', '普寧市', 445200, 3, '中國,廣東省,揭陽市,普寧市', 116.166, 23.2973, 'Puning');
INSERT INTO `Sys_Region` VALUES (2157, '445300', '云浮市', 440000, 2, '中國,廣東省,云浮市', 112.044, 22.9298, 'Yunfu');
INSERT INTO `Sys_Region` VALUES (2158, '445302', '云城區', 445300, 3, '中國,廣東省,云浮市,云城區', 112.039, 22.93, 'Yuncheng');
INSERT INTO `Sys_Region` VALUES (2159, '445303', '云安區', 445300, 3, '中國,廣東省,云浮市,云安區', 112.009, 23.0778, 'Yunan');
INSERT INTO `Sys_Region` VALUES (2160, '445321', '新興縣', 445300, 3, '中國,廣東省,云浮市,新興縣', 112.23, 22.6973, 'Xinxing');
INSERT INTO `Sys_Region` VALUES (2161, '445322', '郁南縣', 445300, 3, '中國,廣東省,云浮市,郁南縣', 111.534, 23.2331, 'Yunan');
INSERT INTO `Sys_Region` VALUES (2162, '445381', '羅定市', 445300, 3, '中國,廣東省,云浮市,羅定市', 111.57, 22.7697, 'Luoding');
INSERT INTO `Sys_Region` VALUES (2163, '450000', '廣西壯族自治區', 100000, 1, '中國,廣西壯族自治區', 108.32, 22.824, 'Guangxi');
INSERT INTO `Sys_Region` VALUES (2164, '450100', '南寧市', 450000, 2, '中國,廣西壯族自治區,南寧市', 108.32, 22.824, 'Nanning');
INSERT INTO `Sys_Region` VALUES (2165, '450102', '興寧區', 450100, 3, '中國,廣西壯族自治區,南寧市,興寧區', 108.367, 22.8535, 'Xingning');
INSERT INTO `Sys_Region` VALUES (2166, '450103', '青秀區', 450100, 3, '中國,廣西壯族自治區,南寧市,青秀區', 108.495, 22.7851, 'Qingxiu');
INSERT INTO `Sys_Region` VALUES (2167, '450105', '江南區', 450100, 3, '中國,廣西壯族自治區,南寧市,江南區', 108.273, 22.7813, 'Jiangnan');
INSERT INTO `Sys_Region` VALUES (2168, '450107', '西鄉塘區', 450100, 3, '中國,廣西壯族自治區,南寧市,西鄉塘區', 108.313, 22.8339, 'Xixiangtang');
INSERT INTO `Sys_Region` VALUES (2169, '450108', '良慶區', 450100, 3, '中國,廣西壯族自治區,南寧市,良慶區', 108.413, 22.7491, 'Liangqing');
INSERT INTO `Sys_Region` VALUES (2170, '450109', '邕寧區', 450100, 3, '中國,廣西壯族自治區,南寧市,邕寧區', 108.487, 22.7563, 'Yongning');
INSERT INTO `Sys_Region` VALUES (2171, '450122', '武鳴縣', 450100, 3, '中國,廣西壯族自治區,南寧市,武鳴縣', 108.277, 23.1564, 'Wuming');
INSERT INTO `Sys_Region` VALUES (2172, '450123', '隆安縣', 450100, 3, '中國,廣西壯族自治區,南寧市,隆安縣', 107.692, 23.1734, 'Longan');
INSERT INTO `Sys_Region` VALUES (2173, '450124', '馬山縣', 450100, 3, '中國,廣西壯族自治區,南寧市,馬山縣', 108.177, 23.7093, 'Mashan');
INSERT INTO `Sys_Region` VALUES (2174, '450125', '上林縣', 450100, 3, '中國,廣西壯族自治區,南寧市,上林縣', 108.605, 23.432, 'Shanglin');
INSERT INTO `Sys_Region` VALUES (2175, '450126', '賓陽縣', 450100, 3, '中國,廣西壯族自治區,南寧市,賓陽縣', 108.812, 23.2196, 'Binyang');
INSERT INTO `Sys_Region` VALUES (2176, '450127', '橫縣', 450100, 3, '中國,廣西壯族自治區,南寧市,橫縣', 109.266, 22.6845, 'Hengxian');
INSERT INTO `Sys_Region` VALUES (2177, '450128', '埌東新區', 450100, 3, '中國,廣西壯族自治區,南寧市,埌東新區', 108.419, 22.813, 'Langdong');
INSERT INTO `Sys_Region` VALUES (2178, '450200', '柳州市', 450000, 2, '中國,廣西壯族自治區,柳州市', 109.412, 24.3146, 'Liuzhou');
INSERT INTO `Sys_Region` VALUES (2179, '450202', '城中區', 450200, 3, '中國,廣西壯族自治區,柳州市,城中區', 109.411, 24.3154, 'Chengzhong');
INSERT INTO `Sys_Region` VALUES (2180, '450203', '魚峰區', 450200, 3, '中國,廣西壯族自治區,柳州市,魚峰區', 109.453, 24.3187, 'Yufeng');
INSERT INTO `Sys_Region` VALUES (2181, '450204', '柳南區', 450200, 3, '中國,廣西壯族自治區,柳州市,柳南區', 109.385, 24.336, 'Liunan');
INSERT INTO `Sys_Region` VALUES (2182, '450205', '柳北區', 450200, 3, '中國,廣西壯族自治區,柳州市,柳北區', 109.402, 24.3627, 'Liubei');
INSERT INTO `Sys_Region` VALUES (2183, '450221', '柳江縣', 450200, 3, '中國,廣西壯族自治區,柳州市,柳江縣', 109.333, 24.256, 'Liujiang');
INSERT INTO `Sys_Region` VALUES (2184, '450222', '柳城縣', 450200, 3, '中國,廣西壯族自治區,柳州市,柳城縣', 109.239, 24.6495, 'Liucheng');
INSERT INTO `Sys_Region` VALUES (2185, '450223', '鹿寨縣', 450200, 3, '中國,廣西壯族自治區,柳州市,鹿寨縣', 109.752, 24.4731, 'Luzhai');
INSERT INTO `Sys_Region` VALUES (2186, '450224', '融安縣', 450200, 3, '中國,廣西壯族自治區,柳州市,融安縣', 109.398, 25.2246, 'Rongan');
INSERT INTO `Sys_Region` VALUES (2187, '450225', '融水苗族自治縣', 450200, 3, '中國,廣西壯族自治區,柳州市,融水苗族自治縣', 109.256, 25.0663, 'Rongshui');
INSERT INTO `Sys_Region` VALUES (2188, '450226', '三江侗族自治縣', 450200, 3, '中國,廣西壯族自治區,柳州市,三江侗族自治縣', 109.604, 25.7843, 'Sanjiang');
INSERT INTO `Sys_Region` VALUES (2189, '450227', '柳東新區', 450200, 3, '中國,廣西壯族自治區,柳州市,柳東新區', 109.437, 24.3292, 'Liudong');
INSERT INTO `Sys_Region` VALUES (2190, '450300', '桂林市', 450000, 2, '中國,廣西壯族自治區,桂林市', 110.299, 25.2742, 'Guilin');
INSERT INTO `Sys_Region` VALUES (2191, '450302', '秀峰區', 450300, 3, '中國,廣西壯族自治區,桂林市,秀峰區', 110.289, 25.2825, 'Xiufeng');
INSERT INTO `Sys_Region` VALUES (2192, '450303', '疊彩區', 450300, 3, '中國,廣西壯族自治區,桂林市,疊彩區', 110.302, 25.3138, 'Diecai');
INSERT INTO `Sys_Region` VALUES (2193, '450304', '象山區', 450300, 3, '中國,廣西壯族自治區,桂林市,象山區', 110.281, 25.2617, 'Xiangshan');
INSERT INTO `Sys_Region` VALUES (2194, '450305', '七星區', 450300, 3, '中國,廣西壯族自治區,桂林市,七星區', 110.318, 25.2525, 'Qixing');
INSERT INTO `Sys_Region` VALUES (2195, '450311', '雁山區', 450300, 3, '中國,廣西壯族自治區,桂林市,雁山區', 110.309, 25.0604, 'Yanshan');
INSERT INTO `Sys_Region` VALUES (2196, '450312', '臨桂區', 450300, 3, '中國,廣西壯族自治區,桂林市,臨桂區', 110.205, 25.2463, 'Lingui');
INSERT INTO `Sys_Region` VALUES (2197, '450321', '陽朔縣', 450300, 3, '中國,廣西壯族自治區,桂林市,陽朔縣', 110.495, 24.7758, 'Yangshuo');
INSERT INTO `Sys_Region` VALUES (2198, '450323', '靈川縣', 450300, 3, '中國,廣西壯族自治區,桂林市,靈川縣', 110.329, 25.4129, 'Lingchuan');
INSERT INTO `Sys_Region` VALUES (2199, '450324', '全州縣', 450300, 3, '中國,廣西壯族自治區,桂林市,全州縣', 111.072, 25.928, 'Quanzhou');
INSERT INTO `Sys_Region` VALUES (2200, '450325', '興安縣', 450300, 3, '中國,廣西壯族自治區,桂林市,興安縣', 110.671, 25.6117, 'Xingan');
INSERT INTO `Sys_Region` VALUES (2201, '450326', '永福縣', 450300, 3, '中國,廣西壯族自治區,桂林市,永福縣', 109.983, 24.98, 'Yongfu');
INSERT INTO `Sys_Region` VALUES (2202, '450327', '灌陽縣', 450300, 3, '中國,廣西壯族自治區,桂林市,灌陽縣', 111.16, 25.488, 'Guanyang');
INSERT INTO `Sys_Region` VALUES (2203, '450328', '龍勝各族自治縣', 450300, 3, '中國,廣西壯族自治區,桂林市,龍勝各族自治縣', 110.012, 25.7961, 'Longsheng');
INSERT INTO `Sys_Region` VALUES (2204, '450329', '資源縣', 450300, 3, '中國,廣西壯族自治區,桂林市,資源縣', 110.653, 26.0424, 'Ziyuan');
INSERT INTO `Sys_Region` VALUES (2205, '450330', '平樂縣', 450300, 3, '中國,廣西壯族自治區,桂林市,平樂縣', 110.642, 24.6324, 'Pingle');
INSERT INTO `Sys_Region` VALUES (2206, '450331', '荔浦縣', 450300, 3, '中國,廣西壯族自治區,桂林市,荔浦縣', 110.397, 24.4959, 'Lipu');
INSERT INTO `Sys_Region` VALUES (2207, '450332', '恭城瑤族自治縣', 450300, 3, '中國,廣西壯族自治區,桂林市,恭城瑤族自治縣', 110.83, 24.8329, 'Gongcheng');
INSERT INTO `Sys_Region` VALUES (2208, '450400', '梧州市', 450000, 2, '中國,廣西壯族自治區,梧州市', 111.316, 23.4723, 'Wuzhou');
INSERT INTO `Sys_Region` VALUES (2209, '450403', '萬秀區', 450400, 3, '中國,廣西壯族自治區,梧州市,萬秀區', 111.321, 23.473, 'Wanxiu');
INSERT INTO `Sys_Region` VALUES (2210, '450405', '長洲區', 450400, 3, '中國,廣西壯族自治區,梧州市,長洲區', 111.275, 23.4857, 'Changzhou');
INSERT INTO `Sys_Region` VALUES (2211, '450406', '龍圩區', 450400, 3, '中國,廣西壯族自治區,梧州市,龍圩區', 111.316, 23.4723, 'Longxu');
INSERT INTO `Sys_Region` VALUES (2212, '450421', '蒼梧縣', 450400, 3, '中國,廣西壯族自治區,梧州市,蒼梧縣', 111.245, 23.4205, 'Cangwu');
INSERT INTO `Sys_Region` VALUES (2213, '450422', '藤縣', 450400, 3, '中國,廣西壯族自治區,梧州市,藤縣', 110.914, 23.3761, 'Tengxian');
INSERT INTO `Sys_Region` VALUES (2214, '450423', '蒙山縣', 450400, 3, '中國,廣西壯族自治區,梧州市,蒙山縣', 110.522, 24.2017, 'Mengshan');
INSERT INTO `Sys_Region` VALUES (2215, '450481', '岑溪市', 450400, 3, '中國,廣西壯族自治區,梧州市,岑溪市', 110.996, 22.9191, 'Cenxi');
INSERT INTO `Sys_Region` VALUES (2216, '450500', '北海市', 450000, 2, '中國,廣西壯族自治區,北海市', 109.119, 21.4733, 'Beihai');
INSERT INTO `Sys_Region` VALUES (2217, '450502', '海城區', 450500, 3, '中國,廣西壯族自治區,北海市,海城區', 109.117, 21.475, 'Haicheng');
INSERT INTO `Sys_Region` VALUES (2218, '450503', '銀海區', 450500, 3, '中國,廣西壯族自治區,北海市,銀海區', 109.13, 21.4783, 'Yinhai');
INSERT INTO `Sys_Region` VALUES (2219, '450512', '鐵山港區', 450500, 3, '中國,廣西壯族自治區,北海市,鐵山港區', 109.456, 21.5966, 'Tieshangang');
INSERT INTO `Sys_Region` VALUES (2220, '450521', '合浦縣', 450500, 3, '中國,廣西壯族自治區,北海市,合浦縣', 109.201, 21.666, 'Hepu');
INSERT INTO `Sys_Region` VALUES (2221, '450600', '防城港市', 450000, 2, '中國,廣西壯族自治區,防城港市', 108.345, 21.6146, 'Fangchenggang');
INSERT INTO `Sys_Region` VALUES (2222, '450602', '港口區', 450600, 3, '中國,廣西壯族自治區,防城港市,港口區', 108.38, 21.6434, 'Gangkou');
INSERT INTO `Sys_Region` VALUES (2223, '450603', '防城區', 450600, 3, '中國,廣西壯族自治區,防城港市,防城區', 108.357, 21.7646, 'Fangcheng');
INSERT INTO `Sys_Region` VALUES (2224, '450621', '上思縣', 450600, 3, '中國,廣西壯族自治區,防城港市,上思縣', 107.982, 22.1496, 'Shangsi');
INSERT INTO `Sys_Region` VALUES (2225, '450681', '東興市', 450600, 3, '中國,廣西壯族自治區,防城港市,東興市', 107.972, 21.5471, 'Dongxing');
INSERT INTO `Sys_Region` VALUES (2226, '450700', '欽州市', 450000, 2, '中國,廣西壯族自治區,欽州市', 108.624, 21.9671, 'Qinzhou');
INSERT INTO `Sys_Region` VALUES (2227, '450702', '欽南區', 450700, 3, '中國,廣西壯族自治區,欽州市,欽南區', 108.618, 21.9514, 'Qinnan');
INSERT INTO `Sys_Region` VALUES (2228, '450703', '欽北區', 450700, 3, '中國,廣西壯族自治區,欽州市,欽北區', 108.63, 21.9513, 'Qinbei');
INSERT INTO `Sys_Region` VALUES (2229, '450721', '靈山縣', 450700, 3, '中國,廣西壯族自治區,欽州市,靈山縣', 109.292, 22.4165, 'Lingshan');
INSERT INTO `Sys_Region` VALUES (2230, '450722', '浦北縣', 450700, 3, '中國,廣西壯族自治區,欽州市,浦北縣', 109.556, 22.2689, 'Pubei');
INSERT INTO `Sys_Region` VALUES (2231, '450800', '貴港市', 450000, 2, '中國,廣西壯族自治區,貴港市', 109.602, 23.0936, 'Guigang');
INSERT INTO `Sys_Region` VALUES (2232, '450802', '港北區', 450800, 3, '中國,廣西壯族自治區,貴港市,港北區', 109.572, 23.1115, 'Gangbei');
INSERT INTO `Sys_Region` VALUES (2233, '450803', '港南區', 450800, 3, '中國,廣西壯族自治區,貴港市,港南區', 109.606, 23.0723, 'Gangnan');
INSERT INTO `Sys_Region` VALUES (2234, '450804', '覃塘區', 450800, 3, '中國,廣西壯族自治區,貴港市,覃塘區', 109.443, 23.1268, 'Qintang');
INSERT INTO `Sys_Region` VALUES (2235, '450821', '平南縣', 450800, 3, '中國,廣西壯族自治區,貴港市,平南縣', 110.391, 23.542, 'Pingnan');
INSERT INTO `Sys_Region` VALUES (2236, '450881', '桂平市', 450800, 3, '中國,廣西壯族自治區,貴港市,桂平市', 110.081, 23.3934, 'Guiping');
INSERT INTO `Sys_Region` VALUES (2237, '450900', '玉林市', 450000, 2, '中國,廣西壯族自治區,玉林市', 110.154, 22.6314, 'Yulin');
INSERT INTO `Sys_Region` VALUES (2238, '450902', '玉州區', 450900, 3, '中國,廣西壯族自治區,玉林市,玉州區', 110.151, 22.6281, 'Yuzhou');
INSERT INTO `Sys_Region` VALUES (2239, '450903', '福綿區', 450900, 3, '中國,廣西壯族自治區,玉林市,福綿區', 110.065, 22.5831, 'Fumian');
INSERT INTO `Sys_Region` VALUES (2240, '450904', '玉東新區', 450900, 3, '中國,廣西壯族自治區,玉林市,玉東新區', 110.154, 22.6314, 'Yudong');
INSERT INTO `Sys_Region` VALUES (2241, '450921', '容縣', 450900, 3, '中國,廣西壯族自治區,玉林市,容縣', 110.556, 22.857, 'Rongxian');
INSERT INTO `Sys_Region` VALUES (2242, '450922', '陸川縣', 450900, 3, '中國,廣西壯族自治區,玉林市,陸川縣', 110.264, 22.3245, 'Luchuan');
INSERT INTO `Sys_Region` VALUES (2243, '450923', '博白縣', 450900, 3, '中國,廣西壯族自治區,玉林市,博白縣', 109.977, 22.2729, 'Bobai');
INSERT INTO `Sys_Region` VALUES (2244, '450924', '興業縣', 450900, 3, '中國,廣西壯族自治區,玉林市,興業縣', 109.876, 22.7424, 'Xingye');
INSERT INTO `Sys_Region` VALUES (2245, '450981', '北流市', 450900, 3, '中國,廣西壯族自治區,玉林市,北流市', 110.353, 22.7082, 'Beiliu');
INSERT INTO `Sys_Region` VALUES (2246, '451000', '百色市', 450000, 2, '中國,廣西壯族自治區,百色市', 106.616, 23.8977, 'Baise');
INSERT INTO `Sys_Region` VALUES (2247, '451002', '右江區', 451000, 3, '中國,廣西壯族自治區,百色市,右江區', 106.618, 23.9009, 'Youjiang');
INSERT INTO `Sys_Region` VALUES (2248, '451021', '田陽縣', 451000, 3, '中國,廣西壯族自治區,百色市,田陽縣', 106.916, 23.7353, 'Tianyang');
INSERT INTO `Sys_Region` VALUES (2249, '451022', '田東縣', 451000, 3, '中國,廣西壯族自治區,百色市,田東縣', 107.124, 23.6, 'Tiandong');
INSERT INTO `Sys_Region` VALUES (2250, '451023', '平果縣', 451000, 3, '中國,廣西壯族自治區,百色市,平果縣', 107.59, 23.3297, 'Pingguo');
INSERT INTO `Sys_Region` VALUES (2251, '451024', '德保縣', 451000, 3, '中國,廣西壯族自治區,百色市,德保縣', 106.619, 23.3251, 'Debao');
INSERT INTO `Sys_Region` VALUES (2252, '451025', '靖西縣', 451000, 3, '中國,廣西壯族自治區,百色市,靖西縣', 106.418, 23.1343, 'Jingxi');
INSERT INTO `Sys_Region` VALUES (2253, '451026', '那坡縣', 451000, 3, '中國,廣西壯族自治區,百色市,那坡縣', 105.842, 23.4065, 'Napo');
INSERT INTO `Sys_Region` VALUES (2254, '451027', '凌云縣', 451000, 3, '中國,廣西壯族自治區,百色市,凌云縣', 106.562, 24.3475, 'Lingyun');
INSERT INTO `Sys_Region` VALUES (2255, '451028', '樂業縣', 451000, 3, '中國,廣西壯族自治區,百色市,樂業縣', 106.561, 24.7829, 'Leye');
INSERT INTO `Sys_Region` VALUES (2256, '451029', '田林縣', 451000, 3, '中國,廣西壯族自治區,百色市,田林縣', 106.229, 24.2921, 'Tianlin');
INSERT INTO `Sys_Region` VALUES (2257, '451030', '西林縣', 451000, 3, '中國,廣西壯族自治區,百色市,西林縣', 105.097, 24.4897, 'Xilin');
INSERT INTO `Sys_Region` VALUES (2258, '451031', '隆林各族自治縣', 451000, 3, '中國,廣西壯族自治區,百色市,隆林各族自治縣', 105.343, 24.7704, 'Longlin');
INSERT INTO `Sys_Region` VALUES (2259, '451100', '賀州市', 450000, 2, '中國,廣西壯族自治區,賀州市', 111.552, 24.4141, 'Hezhou');
INSERT INTO `Sys_Region` VALUES (2260, '451102', '八步區', 451100, 3, '中國,廣西壯族自治區,賀州市,八步區', 111.552, 24.4118, 'Babu');
INSERT INTO `Sys_Region` VALUES (2261, '451121', '昭平縣', 451100, 3, '中國,廣西壯族自治區,賀州市,昭平縣', 110.811, 24.1701, 'Zhaoping');
INSERT INTO `Sys_Region` VALUES (2262, '451122', '鐘山縣', 451100, 3, '中國,廣西壯族自治區,賀州市,鐘山縣', 111.305, 24.5248, 'Zhongshan');
INSERT INTO `Sys_Region` VALUES (2263, '451123', '富川瑤族自治縣', 451100, 3, '中國,廣西壯族自治區,賀州市,富川瑤族自治縣', 111.278, 24.8143, 'Fuchuan');
INSERT INTO `Sys_Region` VALUES (2264, '451124', '平桂管理區', 451100, 3, '中國,廣西壯族自治區,賀州市,平桂管理區', 111.486, 24.458, 'Pingui');
INSERT INTO `Sys_Region` VALUES (2265, '451200', '河池市', 450000, 2, '中國,廣西壯族自治區,河池市', 108.062, 24.6959, 'Hechi');
INSERT INTO `Sys_Region` VALUES (2266, '451202', '金城江區', 451200, 3, '中國,廣西壯族自治區,河池市,金城江區', 108.037, 24.6897, 'Jinchengjiang');
INSERT INTO `Sys_Region` VALUES (2267, '451221', '南丹縣', 451200, 3, '中國,廣西壯族自治區,河池市,南丹縣', 107.546, 24.9776, 'Nandan');
INSERT INTO `Sys_Region` VALUES (2268, '451222', '天峨縣', 451200, 3, '中國,廣西壯族自治區,河池市,天峨縣', 107.172, 24.9959, 'Tiane');
INSERT INTO `Sys_Region` VALUES (2269, '451223', '鳳山縣', 451200, 3, '中國,廣西壯族自治區,河池市,鳳山縣', 107.049, 24.5422, 'Fengshan');
INSERT INTO `Sys_Region` VALUES (2270, '451224', '東蘭縣', 451200, 3, '中國,廣西壯族自治區,河池市,東蘭縣', 107.375, 24.5105, 'Donglan');
INSERT INTO `Sys_Region` VALUES (2271, '451225', '羅城仫佬族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,羅城仫佬族自治縣', 108.908, 24.7792, 'Luocheng');
INSERT INTO `Sys_Region` VALUES (2272, '451226', '環江毛南族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,環江毛南族自治縣', 108.261, 24.8292, 'Huanjiang');
INSERT INTO `Sys_Region` VALUES (2273, '451227', '巴馬瑤族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,巴馬瑤族自治縣', 107.253, 24.1413, 'Bama');
INSERT INTO `Sys_Region` VALUES (2274, '451228', '都安瑤族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,都安瑤族自治縣', 108.101, 23.9324, 'Duan');
INSERT INTO `Sys_Region` VALUES (2275, '451229', '大化瑤族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,大化瑤族自治縣', 107.998, 23.7449, 'Dahua');
INSERT INTO `Sys_Region` VALUES (2276, '451281', '宜州市', 451200, 3, '中國,廣西壯族自治區,河池市,宜州市', 108.653, 24.4939, 'Yizhou');
INSERT INTO `Sys_Region` VALUES (2277, '451300', '來賓市', 450000, 2, '中國,廣西壯族自治區,來賓市', 109.23, 23.7338, 'Laibin');
INSERT INTO `Sys_Region` VALUES (2278, '451302', '興賓區', 451300, 3, '中國,廣西壯族自治區,來賓市,興賓區', 109.235, 23.7273, 'Xingbin');
INSERT INTO `Sys_Region` VALUES (2279, '451321', '忻城縣', 451300, 3, '中國,廣西壯族自治區,來賓市,忻城縣', 108.664, 24.0686, 'Xincheng');
INSERT INTO `Sys_Region` VALUES (2280, '451322', '象州縣', 451300, 3, '中國,廣西壯族自治區,來賓市,象州縣', 109.699, 23.9736, 'Xiangzhou');
INSERT INTO `Sys_Region` VALUES (2281, '451323', '武宣縣', 451300, 3, '中國,廣西壯族自治區,來賓市,武宣縣', 109.663, 23.5947, 'Wuxuan');
INSERT INTO `Sys_Region` VALUES (2282, '451324', '金秀瑤族自治縣', 451300, 3, '中國,廣西壯族自治區,來賓市,金秀瑤族自治縣', 110.191, 24.1293, 'Jinxiu');
INSERT INTO `Sys_Region` VALUES (2283, '451381', '合山市', 451300, 3, '中國,廣西壯族自治區,來賓市,合山市', 108.886, 23.8062, 'Heshan');
INSERT INTO `Sys_Region` VALUES (2284, '451400', '崇左市', 450000, 2, '中國,廣西壯族自治區,崇左市', 107.354, 22.4041, 'Chongzuo');
INSERT INTO `Sys_Region` VALUES (2285, '451402', '江州區', 451400, 3, '中國,廣西壯族自治區,崇左市,江州區', 107.347, 22.4114, 'Jiangzhou');
INSERT INTO `Sys_Region` VALUES (2286, '451421', '扶綏縣', 451400, 3, '中國,廣西壯族自治區,崇左市,扶綏縣', 107.904, 22.6341, 'Fusui');
INSERT INTO `Sys_Region` VALUES (2287, '451422', '寧明縣', 451400, 3, '中國,廣西壯族自治區,崇左市,寧明縣', 107.073, 22.1366, 'Ningming');
INSERT INTO `Sys_Region` VALUES (2288, '451423', '龍州縣', 451400, 3, '中國,廣西壯族自治區,崇左市,龍州縣', 106.854, 22.3394, 'Longzhou');
INSERT INTO `Sys_Region` VALUES (2289, '451424', '大新縣', 451400, 3, '中國,廣西壯族自治區,崇左市,大新縣', 107.198, 22.8341, 'Daxin');
INSERT INTO `Sys_Region` VALUES (2290, '451425', '天等縣', 451400, 3, '中國,廣西壯族自治區,崇左市,天等縣', 107.14, 23.077, 'Tiandeng');
INSERT INTO `Sys_Region` VALUES (2291, '451481', '憑祥市', 451400, 3, '中國,廣西壯族自治區,崇左市,憑祥市', 106.755, 22.1057, 'Pingxiang');
INSERT INTO `Sys_Region` VALUES (2292, '460000', '海南省', 100000, 1, '中國,海南省', 110.331, 20.032, 'Hainan');
INSERT INTO `Sys_Region` VALUES (2293, '460100', '海口市', 460000, 2, '中國,海南省,海口市', 110.331, 20.032, 'Haikou');
INSERT INTO `Sys_Region` VALUES (2294, '460105', '秀英區', 460100, 3, '中國,海南省,海口市,秀英區', 110.293, 20.0075, 'Xiuying');
INSERT INTO `Sys_Region` VALUES (2295, '460106', '龍華區', 460100, 3, '中國,海南省,海口市,龍華區', 110.302, 20.0287, 'Longhua');
INSERT INTO `Sys_Region` VALUES (2296, '460107', '瓊山區', 460100, 3, '中國,海南省,海口市,瓊山區', 110.354, 20.0032, 'Qiongshan');
INSERT INTO `Sys_Region` VALUES (2297, '460108', '美蘭區', 460100, 3, '中國,海南省,海口市,美蘭區', 110.369, 20.0286, 'Meilan');
INSERT INTO `Sys_Region` VALUES (2298, '460200', '三亞市', 460000, 2, '中國,海南省,三亞市', 109.508, 18.2479, 'Sanya');
INSERT INTO `Sys_Region` VALUES (2299, '460202', '海棠區', 460200, 3, '中國,海南省,三亞市,海棠區', 109.508, 18.2479, 'Haitang');
INSERT INTO `Sys_Region` VALUES (2300, '460203', '吉陽區', 460200, 3, '中國,海南省,三亞市,吉陽區', 109.508, 18.2479, 'Jiyang');
INSERT INTO `Sys_Region` VALUES (2301, '460204', '天涯區', 460200, 3, '中國,海南省,三亞市,天涯區', 109.508, 18.2479, 'Tianya');
INSERT INTO `Sys_Region` VALUES (2302, '460205', '崖州區', 460200, 3, '中國,海南省,三亞市,崖州區', 109.508, 18.2479, 'Yazhou');
INSERT INTO `Sys_Region` VALUES (2303, '460300', '三沙市', 460000, 2, '中國,海南省,三沙市', 112.349, 16.831, 'Sansha');
INSERT INTO `Sys_Region` VALUES (2304, '460321', '西沙群島', 460300, 3, '中國,海南省,三沙市,西沙群島', 112.026, 16.3313, 'Xisha Islands');
INSERT INTO `Sys_Region` VALUES (2305, '460322', '南沙群島', 460300, 3, '中國,海南省,三沙市,南沙群島', 116.75, 11.4719, 'Nansha Islands');
INSERT INTO `Sys_Region` VALUES (2306, '460323', '中沙群島', 460300, 3, '中國,海南省,三沙市,中沙群島', 117.74, 15.1129, 'Zhongsha Islands');
INSERT INTO `Sys_Region` VALUES (2307, '469000', '直轄縣級', 460000, 2, '中國,海南省,直轄縣級', 109.503, 18.7399, '');
INSERT INTO `Sys_Region` VALUES (2308, '469001', '五指山市', 469000, 3, '中國,海南省,直轄縣級,五指山市', 109.517, 18.7769, 'Wuzhishan');
INSERT INTO `Sys_Region` VALUES (2309, '469002', '瓊海市', 469000, 3, '中國,海南省,直轄縣級,瓊海市', 110.467, 19.246, 'Qionghai');
INSERT INTO `Sys_Region` VALUES (2310, '469003', '儋州市', 469000, 3, '中國,海南省,直轄縣級,儋州市', 109.577, 19.5175, 'Danzhou');
INSERT INTO `Sys_Region` VALUES (2311, '469005', '文昌市', 469000, 3, '中國,海南省,直轄縣級,文昌市', 110.754, 19.613, 'Wenchang');
INSERT INTO `Sys_Region` VALUES (2312, '469006', '萬寧市', 469000, 3, '中國,海南省,直轄縣級,萬寧市', 110.389, 18.7962, 'Wanning');
INSERT INTO `Sys_Region` VALUES (2313, '469007', '東方市', 469000, 3, '中國,海南省,直轄縣級,東方市', 108.654, 19.102, 'Dongfang');
INSERT INTO `Sys_Region` VALUES (2314, '469021', '定安縣', 469000, 3, '中國,海南省,直轄縣級,定安縣', 110.324, 19.6992, 'Dingan');
INSERT INTO `Sys_Region` VALUES (2315, '469022', '屯昌縣', 469000, 3, '中國,海南省,直轄縣級,屯昌縣', 110.103, 19.3629, 'Tunchang');
INSERT INTO `Sys_Region` VALUES (2316, '469023', '澄邁縣', 469000, 3, '中國,海南省,直轄縣級,澄邁縣', 110.007, 19.7371, 'Chengmai');
INSERT INTO `Sys_Region` VALUES (2317, '469024', '臨高縣', 469000, 3, '中國,海南省,直轄縣級,臨高縣', 109.688, 19.9083, 'Lingao');
INSERT INTO `Sys_Region` VALUES (2318, '469025', '白沙黎族自治縣', 469000, 3, '中國,海南省,直轄縣級,白沙黎族自治縣', 109.453, 19.2246, 'Baisha');
INSERT INTO `Sys_Region` VALUES (2319, '469026', '昌江黎族自治縣', 469000, 3, '中國,海南省,直轄縣級,昌江黎族自治縣', 109.053, 19.261, 'Changjiang');
INSERT INTO `Sys_Region` VALUES (2320, '469027', '樂東黎族自治縣', 469000, 3, '中國,海南省,直轄縣級,樂東黎族自治縣', 109.175, 18.7476, 'Ledong');
INSERT INTO `Sys_Region` VALUES (2321, '469028', '陵水黎族自治縣', 469000, 3, '中國,海南省,直轄縣級,陵水黎族自治縣', 110.037, 18.505, 'Lingshui');
INSERT INTO `Sys_Region` VALUES (2322, '469029', '保亭黎族苗族自治縣', 469000, 3, '中國,海南省,直轄縣級,保亭黎族苗族自治縣', 109.702, 18.6364, 'Baoting');
INSERT INTO `Sys_Region` VALUES (2323, '469030', '瓊中黎族苗族自治縣', 469000, 3, '中國,海南省,直轄縣級,瓊中黎族苗族自治縣', 109.84, 19.0356, 'Qiongzhong');
INSERT INTO `Sys_Region` VALUES (2324, '500000', '重慶市', 100000, 1, '中國,重慶', 106.505, 29.5332, 'Chongqing');
INSERT INTO `Sys_Region` VALUES (2325, '500100', '重慶市', 500000, 2, '中國,重慶,重慶市', 106.505, 29.5332, 'Chongqing');
INSERT INTO `Sys_Region` VALUES (2326, '500101', '萬州區', 500100, 3, '中國,重慶,重慶市,萬州區', 108.409, 30.8079, 'Wanzhou');
INSERT INTO `Sys_Region` VALUES (2327, '500102', '涪陵區', 500100, 3, '中國,重慶,重慶市,涪陵區', 107.39, 29.7029, 'Fuling');
INSERT INTO `Sys_Region` VALUES (2328, '500103', '渝中區', 500100, 3, '中國,重慶,重慶市,渝中區', 106.569, 29.5528, 'Yuzhong');
INSERT INTO `Sys_Region` VALUES (2329, '500104', '大渡口區', 500100, 3, '中國,重慶,重慶市,大渡口區', 106.483, 29.4845, 'Dadukou');
INSERT INTO `Sys_Region` VALUES (2330, '500105', '江北區', 500100, 3, '中國,重慶,重慶市,江北區', 106.574, 29.6066, 'Jiangbei');
INSERT INTO `Sys_Region` VALUES (2331, '500106', '沙坪壩區', 500100, 3, '中國,重慶,重慶市,沙坪壩區', 106.458, 29.5411, 'Shapingba');
INSERT INTO `Sys_Region` VALUES (2332, '500107', '九龍坡區', 500100, 3, '中國,重慶,重慶市,九龍坡區', 106.511, 29.502, 'Jiulongpo');
INSERT INTO `Sys_Region` VALUES (2333, '500108', '南岸區', 500100, 3, '中國,重慶,重慶市,南岸區', 106.563, 29.5231, 'Nanan');
INSERT INTO `Sys_Region` VALUES (2334, '500109', '北碚區', 500100, 3, '中國,重慶,重慶市,北碚區', 106.396, 29.8057, 'Beibei');
INSERT INTO `Sys_Region` VALUES (2335, '500110', '綦江區', 500100, 3, '中國,重慶,重慶市,綦江區', 106.927, 28.9607, 'Qijiang');
INSERT INTO `Sys_Region` VALUES (2336, '500111', '大足區', 500100, 3, '中國,重慶,重慶市,大足區', 105.768, 29.484, 'Dazu');
INSERT INTO `Sys_Region` VALUES (2337, '500112', '渝北區', 500100, 3, '中國,重慶,重慶市,渝北區', 106.631, 29.7182, 'Yubei');
INSERT INTO `Sys_Region` VALUES (2338, '500113', '巴南區', 500100, 3, '中國,重慶,重慶市,巴南區', 106.524, 29.3831, 'Banan');
INSERT INTO `Sys_Region` VALUES (2339, '500114', '黔江區', 500100, 3, '中國,重慶,重慶市,黔江區', 108.771, 29.5332, 'Qianjiang');
INSERT INTO `Sys_Region` VALUES (2340, '500115', '長壽區', 500100, 3, '中國,重慶,重慶市,長壽區', 107.082, 29.8536, 'Changshou');
INSERT INTO `Sys_Region` VALUES (2341, '500116', '江津區', 500100, 3, '中國,重慶,重慶市,江津區', 106.259, 29.2901, 'Jiangjin');
INSERT INTO `Sys_Region` VALUES (2342, '500117', '合川區', 500100, 3, '中國,重慶,重慶市,合川區', 106.276, 29.9723, 'Hechuan');
INSERT INTO `Sys_Region` VALUES (2343, '500118', '永川區', 500100, 3, '中國,重慶,重慶市,永川區', 105.927, 29.3559, 'Yongchuan');
INSERT INTO `Sys_Region` VALUES (2344, '500119', '南川區', 500100, 3, '中國,重慶,重慶市,南川區', 107.099, 29.1575, 'Nanchuan');
INSERT INTO `Sys_Region` VALUES (2345, '500120', '璧山區', 500100, 3, '中國,重慶,重慶市,璧山區', 106.231, 29.5936, 'Bishan');
INSERT INTO `Sys_Region` VALUES (2346, '500151', '銅梁區', 500100, 3, '中國,重慶,重慶市,銅梁區', 106.055, 29.8399, 'Tongliang');
INSERT INTO `Sys_Region` VALUES (2347, '500223', '潼南縣', 500100, 3, '中國,重慶,重慶市,潼南縣', 105.84, 30.1912, 'Tongnan');
INSERT INTO `Sys_Region` VALUES (2348, '500226', '榮昌縣', 500100, 3, '中國,重慶,重慶市,榮昌縣', 105.594, 29.4049, 'Rongchang');
INSERT INTO `Sys_Region` VALUES (2349, '500228', '梁平縣', 500100, 3, '中國,重慶,重慶市,梁平縣', 107.8, 30.6754, 'Liangping');
INSERT INTO `Sys_Region` VALUES (2350, '500229', '城口縣', 500100, 3, '中國,重慶,重慶市,城口縣', 108.665, 31.948, 'Chengkou');
INSERT INTO `Sys_Region` VALUES (2351, '500230', '豐都縣', 500100, 3, '中國,重慶,重慶市,豐都縣', 107.731, 29.8635, 'Fengdu');
INSERT INTO `Sys_Region` VALUES (2352, '500231', '墊江縣', 500100, 3, '中國,重慶,重慶市,墊江縣', 107.354, 30.3336, 'Dianjiang');
INSERT INTO `Sys_Region` VALUES (2353, '500232', '武隆縣', 500100, 3, '中國,重慶,重慶市,武隆縣', 107.76, 29.3255, 'Wulong');
INSERT INTO `Sys_Region` VALUES (2354, '500233', '忠縣', 500100, 3, '中國,重慶,重慶市,忠縣', 108.037, 30.289, 'Zhongxian');
INSERT INTO `Sys_Region` VALUES (2355, '500234', '開縣', 500100, 3, '中國,重慶,重慶市,開縣', 108.393, 31.1609, 'Kaixian');
INSERT INTO `Sys_Region` VALUES (2356, '500235', '云陽縣', 500100, 3, '中國,重慶,重慶市,云陽縣', 108.697, 30.9306, 'Yunyang');
INSERT INTO `Sys_Region` VALUES (2357, '500236', '奉節縣', 500100, 3, '中國,重慶,重慶市,奉節縣', 109.465, 31.0182, 'Fengjie');
INSERT INTO `Sys_Region` VALUES (2358, '500237', '巫山縣', 500100, 3, '中國,重慶,重慶市,巫山縣', 109.878, 31.0746, 'Wushan');
INSERT INTO `Sys_Region` VALUES (2359, '500238', '巫溪縣', 500100, 3, '中國,重慶,重慶市,巫溪縣', 109.631, 31.3976, 'Wuxi');
INSERT INTO `Sys_Region` VALUES (2360, '500240', '石柱土家族自治縣', 500100, 3, '中國,重慶,重慶市,石柱土家族自治縣', 108.114, 30.0005, 'Shizhu');
INSERT INTO `Sys_Region` VALUES (2361, '500241', '秀山土家族苗族自治縣', 500100, 3, '中國,重慶,重慶市,秀山土家族苗族自治縣', 108.989, 28.4506, 'Xiushan');
INSERT INTO `Sys_Region` VALUES (2362, '500242', '酉陽土家族苗族自治縣', 500100, 3, '中國,重慶,重慶市,酉陽土家族苗族自治縣', 108.772, 28.8446, 'Youyang');
INSERT INTO `Sys_Region` VALUES (2363, '500243', '彭水苗族土家族自治縣', 500100, 3, '中國,重慶,重慶市,彭水苗族土家族自治縣', 108.166, 29.2952, 'Pengshui');
INSERT INTO `Sys_Region` VALUES (2364, '500300', '兩江新區', 500000, 2, '中國,重慶,兩江新區', 106.463, 29.7292, 'Liangjiangxinqu');
INSERT INTO `Sys_Region` VALUES (2365, '500301', '北部新區', 500300, 3, '中國,重慶,兩江新區,北部新區', 106.489, 29.6671, 'Beibuxinqu');
INSERT INTO `Sys_Region` VALUES (2366, '500302', '保稅港區', 500300, 3, '中國,重慶,兩江新區,保稅港區', 106.638, 29.7163, 'Baoshuigangqu');
INSERT INTO `Sys_Region` VALUES (2367, '500303', '工業園區', 500300, 3, '中國,重慶,兩江新區,工業園區', 106.626, 29.5555, 'Gongyeyuanqu');
INSERT INTO `Sys_Region` VALUES (2368, '510000', '四川省', 100000, 1, '中國,四川省', 104.066, 30.6595, 'Sichuan');
INSERT INTO `Sys_Region` VALUES (2369, '510100', '成都市', 510000, 2, '中國,四川省,成都市', 104.066, 30.6595, 'Chengdu');
INSERT INTO `Sys_Region` VALUES (2370, '510104', '錦江區', 510100, 3, '中國,四川省,成都市,錦江區', 104.083, 30.6561, 'Jinjiang');
INSERT INTO `Sys_Region` VALUES (2371, '510105', '青羊區', 510100, 3, '中國,四川省,成都市,青羊區', 104.062, 30.6739, 'Qingyang');
INSERT INTO `Sys_Region` VALUES (2372, '510106', '金牛區', 510100, 3, '中國,四川省,成都市,金牛區', 104.051, 30.6913, 'Jinniu');
INSERT INTO `Sys_Region` VALUES (2373, '510107', '武侯區', 510100, 3, '中國,四川省,成都市,武侯區', 104.043, 30.6423, 'Wuhou');
INSERT INTO `Sys_Region` VALUES (2374, '510108', '成華區', 510100, 3, '中國,四川省,成都市,成華區', 104.102, 30.6599, 'Chenghua');
INSERT INTO `Sys_Region` VALUES (2375, '510112', '龍泉驛區', 510100, 3, '中國,四川省,成都市,龍泉驛區', 104.275, 30.5566, 'Longquanyi');
INSERT INTO `Sys_Region` VALUES (2376, '510113', '青白江區', 510100, 3, '中國,四川省,成都市,青白江區', 104.251, 30.8784, 'Qingbaijiang');
INSERT INTO `Sys_Region` VALUES (2377, '510114', '新都區', 510100, 3, '中國,四川省,成都市,新都區', 104.159, 30.8231, 'Xindu');
INSERT INTO `Sys_Region` VALUES (2378, '510115', '溫江區', 510100, 3, '中國,四川省,成都市,溫江區', 103.849, 30.6844, 'Wenjiang');
INSERT INTO `Sys_Region` VALUES (2379, '510121', '金堂縣', 510100, 3, '中國,四川省,成都市,金堂縣', 104.412, 30.8619, 'Jintang');
INSERT INTO `Sys_Region` VALUES (2380, '510122', '雙流縣', 510100, 3, '中國,四川省,成都市,雙流縣', 103.924, 30.5744, 'Shuangliu');
INSERT INTO `Sys_Region` VALUES (2381, '510124', '郫縣', 510100, 3, '中國,四川省,成都市,郫縣', 103.887, 30.8105, 'Pixian');
INSERT INTO `Sys_Region` VALUES (2382, '510129', '大邑縣', 510100, 3, '中國,四川省,成都市,大邑縣', 103.521, 30.5874, 'Dayi');
INSERT INTO `Sys_Region` VALUES (2383, '510131', '蒲江縣', 510100, 3, '中國,四川省,成都市,蒲江縣', 103.506, 30.1967, 'Pujiang');
INSERT INTO `Sys_Region` VALUES (2384, '510132', '新津縣', 510100, 3, '中國,四川省,成都市,新津縣', 103.811, 30.4098, 'Xinjin');
INSERT INTO `Sys_Region` VALUES (2385, '510181', '都江堰市', 510100, 3, '中國,四川省,成都市,都江堰市', 103.619, 30.9982, 'Dujiangyan');
INSERT INTO `Sys_Region` VALUES (2386, '510182', '彭州市', 510100, 3, '中國,四川省,成都市,彭州市', 103.958, 30.9901, 'Pengzhou');
INSERT INTO `Sys_Region` VALUES (2387, '510183', '邛崍市', 510100, 3, '中國,四川省,成都市,邛崍市', 103.463, 30.4149, 'Qionglai');
INSERT INTO `Sys_Region` VALUES (2388, '510184', '崇州市', 510100, 3, '中國,四川省,成都市,崇州市', 103.673, 30.6301, 'Chongzhou');
INSERT INTO `Sys_Region` VALUES (2389, '510300', '自貢市', 510000, 2, '中國,四川省,自貢市', 104.773, 29.3528, 'Zigong');
INSERT INTO `Sys_Region` VALUES (2390, '510302', '自流井區', 510300, 3, '中國,四川省,自貢市,自流井區', 104.777, 29.3375, 'Ziliujing');
INSERT INTO `Sys_Region` VALUES (2391, '510303', '貢井區', 510300, 3, '中國,四川省,自貢市,貢井區', 104.715, 29.3458, 'Gongjing');
INSERT INTO `Sys_Region` VALUES (2392, '510304', '大安區', 510300, 3, '中國,四川省,自貢市,大安區', 104.774, 29.3636, 'Daan');
INSERT INTO `Sys_Region` VALUES (2393, '510311', '沿灘區', 510300, 3, '中國,四川省,自貢市,沿灘區', 104.88, 29.2661, 'Yantan');
INSERT INTO `Sys_Region` VALUES (2394, '510321', '榮縣', 510300, 3, '中國,四川省,自貢市,榮縣', 104.418, 29.4445, 'Rongxian');
INSERT INTO `Sys_Region` VALUES (2395, '510322', '富順縣', 510300, 3, '中國,四川省,自貢市,富順縣', 104.975, 29.1812, 'Fushun');
INSERT INTO `Sys_Region` VALUES (2396, '510400', '攀枝花市', 510000, 2, '中國,四川省,攀枝花市', 101.716, 26.5804, 'Panzhihua');
INSERT INTO `Sys_Region` VALUES (2397, '510402', '東區', 510400, 3, '中國,四川省,攀枝花市,東區', 101.705, 26.5468, 'Dongqu');
INSERT INTO `Sys_Region` VALUES (2398, '510403', '西區', 510400, 3, '中國,四川省,攀枝花市,西區', 101.631, 26.5975, 'Xiqu');
INSERT INTO `Sys_Region` VALUES (2399, '510411', '仁和區', 510400, 3, '中國,四川省,攀枝花市,仁和區', 101.738, 26.4984, 'Renhe');
INSERT INTO `Sys_Region` VALUES (2400, '510421', '米易縣', 510400, 3, '中國,四川省,攀枝花市,米易縣', 102.111, 26.8872, 'Miyi');
INSERT INTO `Sys_Region` VALUES (2401, '510422', '鹽邊縣', 510400, 3, '中國,四川省,攀枝花市,鹽邊縣', 101.854, 26.6885, 'Yanbian');
INSERT INTO `Sys_Region` VALUES (2402, '510500', '瀘州市', 510000, 2, '中國,四川省,瀘州市', 105.443, 28.8891, 'Luzhou');
INSERT INTO `Sys_Region` VALUES (2403, '510502', '江陽區', 510500, 3, '中國,四川省,瀘州市,江陽區', 105.453, 28.8893, 'Jiangyang');
INSERT INTO `Sys_Region` VALUES (2404, '510503', '納溪區', 510500, 3, '中國,四川省,瀘州市,納溪區', 105.373, 28.7734, 'Naxi');
INSERT INTO `Sys_Region` VALUES (2405, '510504', '龍馬潭區', 510500, 3, '中國,四川省,瀘州市,龍馬潭區', 105.438, 28.9131, 'Longmatan');
INSERT INTO `Sys_Region` VALUES (2406, '510521', '瀘縣', 510500, 3, '中國,四川省,瀘州市,瀘縣', 105.382, 29.1504, 'Luxian');
INSERT INTO `Sys_Region` VALUES (2407, '510522', '合江縣', 510500, 3, '中國,四川省,瀘州市,合江縣', 105.835, 28.81, 'Hejiang');
INSERT INTO `Sys_Region` VALUES (2408, '510524', '敘永縣', 510500, 3, '中國,四川省,瀘州市,敘永縣', 105.445, 28.1559, 'Xuyong');
INSERT INTO `Sys_Region` VALUES (2409, '510525', '古藺縣', 510500, 3, '中國,四川省,瀘州市,古藺縣', 105.813, 28.0387, 'Gulin');
INSERT INTO `Sys_Region` VALUES (2410, '510600', '德陽市', 510000, 2, '中國,四川省,德陽市', 104.399, 31.128, 'Deyang');
INSERT INTO `Sys_Region` VALUES (2411, '510603', '旌陽區', 510600, 3, '中國,四川省,德陽市,旌陽區', 104.394, 31.1391, 'Jingyang');
INSERT INTO `Sys_Region` VALUES (2412, '510623', '中江縣', 510600, 3, '中國,四川省,德陽市,中江縣', 104.679, 31.033, 'Zhongjiang');
INSERT INTO `Sys_Region` VALUES (2413, '510626', '羅江縣', 510600, 3, '中國,四川省,德陽市,羅江縣', 104.51, 31.3167, 'Luojiang');
INSERT INTO `Sys_Region` VALUES (2414, '510681', '廣漢市', 510600, 3, '中國,四川省,德陽市,廣漢市', 104.282, 30.9769, 'Guanghan');
INSERT INTO `Sys_Region` VALUES (2415, '510682', '什邡市', 510600, 3, '中國,四川省,德陽市,什邡市', 104.168, 31.1264, 'Shifang');
INSERT INTO `Sys_Region` VALUES (2416, '510683', '綿竹市', 510600, 3, '中國,四川省,德陽市,綿竹市', 104.221, 31.3377, 'Mianzhu');
INSERT INTO `Sys_Region` VALUES (2417, '510700', '綿陽市', 510000, 2, '中國,四川省,綿陽市', 104.742, 31.464, 'Mianyang');
INSERT INTO `Sys_Region` VALUES (2418, '510703', '涪城區', 510700, 3, '中國,四川省,綿陽市,涪城區', 104.757, 31.4552, 'Fucheng');
INSERT INTO `Sys_Region` VALUES (2419, '510704', '游仙區', 510700, 3, '中國,四川省,綿陽市,游仙區', 104.771, 31.4657, 'Youxian');
INSERT INTO `Sys_Region` VALUES (2420, '510722', '三臺縣', 510700, 3, '中國,四川省,綿陽市,三臺縣', 105.091, 31.0918, 'Santai');
INSERT INTO `Sys_Region` VALUES (2421, '510723', '鹽亭縣', 510700, 3, '中國,四川省,綿陽市,鹽亭縣', 105.39, 31.2218, 'Yanting');
INSERT INTO `Sys_Region` VALUES (2422, '510724', '安縣', 510700, 3, '中國,四川省,綿陽市,安縣', 104.567, 31.5349, 'Anxian');
INSERT INTO `Sys_Region` VALUES (2423, '510725', '梓潼縣', 510700, 3, '中國,四川省,綿陽市,梓潼縣', 105.162, 31.6359, 'Zitong');
INSERT INTO `Sys_Region` VALUES (2424, '510726', '北川羌族自治縣', 510700, 3, '中國,四川省,綿陽市,北川羌族自治縣', 104.464, 31.8329, 'Beichuan');
INSERT INTO `Sys_Region` VALUES (2425, '510727', '平武縣', 510700, 3, '中國,四川省,綿陽市,平武縣', 104.529, 32.4079, 'Pingwu');
INSERT INTO `Sys_Region` VALUES (2426, '510781', '江油市', 510700, 3, '中國,四川省,綿陽市,江油市', 104.745, 31.7778, 'Jiangyou');
INSERT INTO `Sys_Region` VALUES (2427, '510800', '廣元市', 510000, 2, '中國,四川省,廣元市', 105.83, 32.4337, 'Guangyuan');
INSERT INTO `Sys_Region` VALUES (2428, '510802', '利州區', 510800, 3, '中國,四川省,廣元市,利州區', 105.826, 32.4323, 'Lizhou');
INSERT INTO `Sys_Region` VALUES (2429, '510811', '昭化區', 510800, 3, '中國,四川省,廣元市,昭化區', 105.64, 32.3865, 'Zhaohua');
INSERT INTO `Sys_Region` VALUES (2430, '510812', '朝天區', 510800, 3, '中國,四川省,廣元市,朝天區', 105.893, 32.644, 'Chaotian');
INSERT INTO `Sys_Region` VALUES (2431, '510821', '旺蒼縣', 510800, 3, '中國,四川省,廣元市,旺蒼縣', 106.29, 32.2285, 'Wangcang');
INSERT INTO `Sys_Region` VALUES (2432, '510822', '青川縣', 510800, 3, '中國,四川省,廣元市,青川縣', 105.239, 32.5856, 'Qingchuan');
INSERT INTO `Sys_Region` VALUES (2433, '510823', '劍閣縣', 510800, 3, '中國,四川省,廣元市,劍閣縣', 105.525, 32.2884, 'Jiange');
INSERT INTO `Sys_Region` VALUES (2434, '510824', '蒼溪縣', 510800, 3, '中國,四川省,廣元市,蒼溪縣', 105.936, 31.7321, 'Cangxi');
INSERT INTO `Sys_Region` VALUES (2435, '510900', '遂寧市', 510000, 2, '中國,四川省,遂寧市', 105.571, 30.5133, 'Suining');
INSERT INTO `Sys_Region` VALUES (2436, '510903', '船山區', 510900, 3, '中國,四川省,遂寧市,船山區', 105.581, 30.4999, 'Chuanshan');
INSERT INTO `Sys_Region` VALUES (2437, '510904', '安居區', 510900, 3, '中國,四川省,遂寧市,安居區', 105.464, 30.3578, 'Anju');
INSERT INTO `Sys_Region` VALUES (2438, '510921', '蓬溪縣', 510900, 3, '中國,四川省,遂寧市,蓬溪縣', 105.708, 30.7577, 'Pengxi');
INSERT INTO `Sys_Region` VALUES (2439, '510922', '射洪縣', 510900, 3, '中國,四川省,遂寧市,射洪縣', 105.389, 30.872, 'Shehong');
INSERT INTO `Sys_Region` VALUES (2440, '510923', '大英縣', 510900, 3, '中國,四川省,遂寧市,大英縣', 105.243, 30.5943, 'Daying');
INSERT INTO `Sys_Region` VALUES (2441, '511000', '內江市', 510000, 2, '中國,四川省,內江市', 105.066, 29.5871, 'Neijiang');
INSERT INTO `Sys_Region` VALUES (2442, '511002', '市中區', 511000, 3, '中國,四川省,內江市,市中區', 105.068, 29.5871, 'Shizhongqu');
INSERT INTO `Sys_Region` VALUES (2443, '511011', '東興區', 511000, 3, '中國,四川省,內江市,東興區', 105.076, 29.5928, 'Dongxing');
INSERT INTO `Sys_Region` VALUES (2444, '511024', '威遠縣', 511000, 3, '中國,四川省,內江市,威遠縣', 104.67, 29.5282, 'Weiyuan');
INSERT INTO `Sys_Region` VALUES (2445, '511025', '資中縣', 511000, 3, '中國,四川省,內江市,資中縣', 104.852, 29.7641, 'Zizhong');
INSERT INTO `Sys_Region` VALUES (2446, '511028', '隆昌縣', 511000, 3, '中國,四川省,內江市,隆昌縣', 105.287, 29.3394, 'Longchang');
INSERT INTO `Sys_Region` VALUES (2447, '511100', '樂山市', 510000, 2, '中國,四川省,樂山市', 103.761, 29.582, 'Leshan');
INSERT INTO `Sys_Region` VALUES (2448, '511102', '市中區', 511100, 3, '中國,四川省,樂山市,市中區', 103.762, 29.5554, 'Shizhongqu');
INSERT INTO `Sys_Region` VALUES (2449, '511111', '沙灣區', 511100, 3, '中國,四川省,樂山市,沙灣區', 103.549, 29.4119, 'Shawan');
INSERT INTO `Sys_Region` VALUES (2450, '511112', '五通橋區', 511100, 3, '中國,四川省,樂山市,五通橋區', 103.823, 29.4034, 'Wutongqiao');
INSERT INTO `Sys_Region` VALUES (2451, '511113', '金口河區', 511100, 3, '中國,四川省,樂山市,金口河區', 103.079, 29.2458, 'Jinkouhe');
INSERT INTO `Sys_Region` VALUES (2452, '511123', '犍為縣', 511100, 3, '中國,四川省,樂山市,犍為縣', 103.95, 29.2097, 'Qianwei');
INSERT INTO `Sys_Region` VALUES (2453, '511124', '井研縣', 511100, 3, '中國,四川省,樂山市,井研縣', 104.07, 29.6523, 'Jingyan');
INSERT INTO `Sys_Region` VALUES (2454, '511126', '夾江縣', 511100, 3, '中國,四川省,樂山市,夾江縣', 103.572, 29.7387, 'Jiajiang');
INSERT INTO `Sys_Region` VALUES (2455, '511129', '沐川縣', 511100, 3, '中國,四川省,樂山市,沐川縣', 103.904, 28.9565, 'Muchuan');
INSERT INTO `Sys_Region` VALUES (2456, '511132', '峨邊彝族自治縣', 511100, 3, '中國,四川省,樂山市,峨邊彝族自治縣', 103.263, 29.23, 'Ebian');
INSERT INTO `Sys_Region` VALUES (2457, '511133', '馬邊彝族自治縣', 511100, 3, '中國,四川省,樂山市,馬邊彝族自治縣', 103.546, 28.8359, 'Mabian');
INSERT INTO `Sys_Region` VALUES (2458, '511181', '峨眉山市', 511100, 3, '中國,四川省,樂山市,峨眉山市', 103.484, 29.6012, 'Emeishan');
INSERT INTO `Sys_Region` VALUES (2459, '511300', '南充市', 510000, 2, '中國,四川省,南充市', 106.083, 30.7953, 'Nanchong');
INSERT INTO `Sys_Region` VALUES (2460, '511302', '順慶區', 511300, 3, '中國,四川省,南充市,順慶區', 106.092, 30.7964, 'Shunqing');
INSERT INTO `Sys_Region` VALUES (2461, '511303', '高坪區', 511300, 3, '中國,四川省,南充市,高坪區', 106.119, 30.7816, 'Gaoping');
INSERT INTO `Sys_Region` VALUES (2462, '511304', '嘉陵區', 511300, 3, '中國,四川省,南充市,嘉陵區', 106.071, 30.7585, 'Jialing');
INSERT INTO `Sys_Region` VALUES (2463, '511321', '南部縣', 511300, 3, '中國,四川省,南充市,南部縣', 106.067, 31.3545, 'Nanbu');
INSERT INTO `Sys_Region` VALUES (2464, '511322', '營山縣', 511300, 3, '中國,四川省,南充市,營山縣', 106.566, 31.0775, 'Yingshan');
INSERT INTO `Sys_Region` VALUES (2465, '511323', '蓬安縣', 511300, 3, '中國,四川省,南充市,蓬安縣', 106.413, 31.0296, 'Pengan');
INSERT INTO `Sys_Region` VALUES (2466, '511324', '儀隴縣', 511300, 3, '中國,四川省,南充市,儀隴縣', 106.3, 31.2763, 'Yilong');
INSERT INTO `Sys_Region` VALUES (2467, '511325', '西充縣', 511300, 3, '中國,四川省,南充市,西充縣', 105.9, 30.9969, 'Xichong');
INSERT INTO `Sys_Region` VALUES (2468, '511381', '閬中市', 511300, 3, '中國,四川省,南充市,閬中市', 106.005, 31.5583, 'Langzhong');
INSERT INTO `Sys_Region` VALUES (2469, '511400', '眉山市', 510000, 2, '中國,四川省,眉山市', 103.832, 30.0483, 'Meishan');
INSERT INTO `Sys_Region` VALUES (2470, '511402', '東坡區', 511400, 3, '中國,四川省,眉山市,東坡區', 103.832, 30.0422, 'Dongpo');
INSERT INTO `Sys_Region` VALUES (2471, '511403', '彭山區', 511400, 3, '中國,四川省,眉山市,彭山區', 103.873, 30.1928, 'Pengshan');
INSERT INTO `Sys_Region` VALUES (2472, '511421', '仁壽縣', 511400, 3, '中國,四川省,眉山市,仁壽縣', 104.134, 29.996, 'Renshou');
INSERT INTO `Sys_Region` VALUES (2473, '511423', '洪雅縣', 511400, 3, '中國,四川省,眉山市,洪雅縣', 103.373, 29.9066, 'Hongya');
INSERT INTO `Sys_Region` VALUES (2474, '511424', '丹棱縣', 511400, 3, '中國,四川省,眉山市,丹棱縣', 103.513, 30.0156, 'Danling');
INSERT INTO `Sys_Region` VALUES (2475, '511425', '青神縣', 511400, 3, '中國,四川省,眉山市,青神縣', 103.848, 29.8323, 'Qingshen');
INSERT INTO `Sys_Region` VALUES (2476, '511500', '宜賓市', 510000, 2, '中國,四川省,宜賓市', 104.631, 28.7602, 'Yibin');
INSERT INTO `Sys_Region` VALUES (2477, '511502', '翠屏區', 511500, 3, '中國,四川省,宜賓市,翠屏區', 104.62, 28.7657, 'Cuiping');
INSERT INTO `Sys_Region` VALUES (2478, '511503', '南溪區', 511500, 3, '中國,四川省,宜賓市,南溪區', 104.981, 28.8398, 'Nanxi');
INSERT INTO `Sys_Region` VALUES (2479, '511521', '宜賓縣', 511500, 3, '中國,四川省,宜賓市,宜賓縣', 104.533, 28.69, 'Yibin');
INSERT INTO `Sys_Region` VALUES (2480, '511523', '江安縣', 511500, 3, '中國,四川省,宜賓市,江安縣', 105.067, 28.7239, 'Jiangan');
INSERT INTO `Sys_Region` VALUES (2481, '511524', '長寧縣', 511500, 3, '中國,四川省,宜賓市,長寧縣', 104.925, 28.5778, 'Changning');
INSERT INTO `Sys_Region` VALUES (2482, '511525', '高縣', 511500, 3, '中國,四川省,宜賓市,高縣', 104.518, 28.4362, 'Gaoxian');
INSERT INTO `Sys_Region` VALUES (2483, '511526', '珙縣', 511500, 3, '中國,四川省,宜賓市,珙縣', 104.714, 28.4451, 'Gongxian');
INSERT INTO `Sys_Region` VALUES (2484, '511527', '筠連縣', 511500, 3, '中國,四川省,宜賓市,筠連縣', 104.512, 28.1649, 'Junlian');
INSERT INTO `Sys_Region` VALUES (2485, '511528', '興文縣', 511500, 3, '中國,四川省,宜賓市,興文縣', 105.237, 28.3044, 'Xingwen');
INSERT INTO `Sys_Region` VALUES (2486, '511529', '屏山縣', 511500, 3, '中國,四川省,宜賓市,屏山縣', 104.163, 28.6437, 'Pingshan');
INSERT INTO `Sys_Region` VALUES (2487, '511600', '廣安市', 510000, 2, '中國,四川省,廣安市', 106.633, 30.4564, 'Guangan');
INSERT INTO `Sys_Region` VALUES (2488, '511602', '廣安區', 511600, 3, '中國,四川省,廣安市,廣安區', 106.642, 30.4739, 'Guangan');
INSERT INTO `Sys_Region` VALUES (2489, '511603', '前鋒區', 511600, 3, '中國,四川省,廣安市,前鋒區', 106.894, 30.4946, 'Qianfeng');
INSERT INTO `Sys_Region` VALUES (2490, '511621', '岳池縣', 511600, 3, '中國,四川省,廣安市,岳池縣', 106.441, 30.5392, 'Yuechi');
INSERT INTO `Sys_Region` VALUES (2491, '511622', '武勝縣', 511600, 3, '中國,四川省,廣安市,武勝縣', 106.296, 30.3493, 'Wusheng');
INSERT INTO `Sys_Region` VALUES (2492, '511623', '鄰水縣', 511600, 3, '中國,四川省,廣安市,鄰水縣', 106.93, 30.3345, 'Linshui');
INSERT INTO `Sys_Region` VALUES (2493, '511681', '華鎣市', 511600, 3, '中國,四川省,廣安市,華鎣市', 106.785, 30.3901, 'Huaying');
INSERT INTO `Sys_Region` VALUES (2494, '511700', '達州市', 510000, 2, '中國,四川省,達州市', 107.502, 31.2095, 'Dazhou');
INSERT INTO `Sys_Region` VALUES (2495, '511702', '通川區', 511700, 3, '中國,四川省,達州市,通川區', 107.505, 31.2147, 'Tongchuan');
INSERT INTO `Sys_Region` VALUES (2496, '511703', '達川區', 511700, 3, '中國,四川省,達州市,達川區', 107.502, 31.2095, 'Dachuan');
INSERT INTO `Sys_Region` VALUES (2497, '511722', '宣漢縣', 511700, 3, '中國,四川省,達州市,宣漢縣', 107.728, 31.3552, 'Xuanhan');
INSERT INTO `Sys_Region` VALUES (2498, '511723', '開江縣', 511700, 3, '中國,四川省,達州市,開江縣', 107.869, 31.0841, 'Kaijiang');
INSERT INTO `Sys_Region` VALUES (2499, '511724', '大竹縣', 511700, 3, '中國,四川省,達州市,大竹縣', 107.209, 30.7415, 'Dazhu');
INSERT INTO `Sys_Region` VALUES (2500, '511725', '渠縣', 511700, 3, '中國,四川省,達州市,渠縣', 106.974, 30.8376, 'Quxian');
INSERT INTO `Sys_Region` VALUES (2501, '511781', '萬源市', 511700, 3, '中國,四川省,達州市,萬源市', 108.036, 32.0809, 'Wanyuan');
INSERT INTO `Sys_Region` VALUES (2502, '511800', '雅安市', 510000, 2, '中國,四川省,雅安市', 103.001, 29.9877, 'Yaan');
INSERT INTO `Sys_Region` VALUES (2503, '511802', '雨城區', 511800, 3, '中國,四川省,雅安市,雨城區', 103.033, 30.0053, 'Yucheng');
INSERT INTO `Sys_Region` VALUES (2504, '511803', '名山區', 511800, 3, '中國,四川省,雅安市,名山區', 103.112, 30.0847, 'Mingshan');
INSERT INTO `Sys_Region` VALUES (2505, '511822', '滎經縣', 511800, 3, '中國,四川省,雅安市,滎經縣', 102.847, 29.794, 'Yingjing');
INSERT INTO `Sys_Region` VALUES (2506, '511823', '漢源縣', 511800, 3, '中國,四川省,雅安市,漢源縣', 102.678, 29.3517, 'Hanyuan');
INSERT INTO `Sys_Region` VALUES (2507, '511824', '石棉縣', 511800, 3, '中國,四川省,雅安市,石棉縣', 102.359, 29.228, 'Shimian');
INSERT INTO `Sys_Region` VALUES (2508, '511825', '天全縣', 511800, 3, '中國,四川省,雅安市,天全縣', 102.759, 30.0675, 'Tianquan');
INSERT INTO `Sys_Region` VALUES (2509, '511826', '蘆山縣', 511800, 3, '中國,四川省,雅安市,蘆山縣', 102.928, 30.1437, 'Lushan');
INSERT INTO `Sys_Region` VALUES (2510, '511827', '寶興縣', 511800, 3, '中國,四川省,雅安市,寶興縣', 102.816, 30.3684, 'Baoxing');
INSERT INTO `Sys_Region` VALUES (2511, '511900', '巴中市', 510000, 2, '中國,四川省,巴中市', 106.754, 31.8588, 'Bazhong');
INSERT INTO `Sys_Region` VALUES (2512, '511902', '巴州區', 511900, 3, '中國,四川省,巴中市,巴州區', 106.769, 31.8512, 'Bazhou');
INSERT INTO `Sys_Region` VALUES (2513, '511903', '恩陽區', 511900, 3, '中國,四川省,巴中市,恩陽區', 106.754, 31.8588, 'Enyang');
INSERT INTO `Sys_Region` VALUES (2514, '511921', '通江縣', 511900, 3, '中國,四川省,巴中市,通江縣', 107.244, 31.9129, 'Tongjiang');
INSERT INTO `Sys_Region` VALUES (2515, '511922', '南江縣', 511900, 3, '中國,四川省,巴中市,南江縣', 106.842, 32.3534, 'Nanjiang');
INSERT INTO `Sys_Region` VALUES (2516, '511923', '平昌縣', 511900, 3, '中國,四川省,巴中市,平昌縣', 107.104, 31.5594, 'Pingchang');
INSERT INTO `Sys_Region` VALUES (2517, '512000', '資陽市', 510000, 2, '中國,四川省,資陽市', 104.642, 30.1222, 'Ziyang');
INSERT INTO `Sys_Region` VALUES (2518, '512002', '雁江區', 512000, 3, '中國,四川省,資陽市,雁江區', 104.652, 30.1152, 'Yanjiang');
INSERT INTO `Sys_Region` VALUES (2519, '512021', '安岳縣', 512000, 3, '中國,四川省,資陽市,安岳縣', 105.336, 30.0979, 'Anyue');
INSERT INTO `Sys_Region` VALUES (2520, '512022', '樂至縣', 512000, 3, '中國,四川省,資陽市,樂至縣', 105.032, 30.2723, 'Lezhi');
INSERT INTO `Sys_Region` VALUES (2521, '512081', '簡陽市', 512000, 3, '中國,四川省,資陽市,簡陽市', 104.549, 30.3904, 'Jianyang');
INSERT INTO `Sys_Region` VALUES (2522, '513200', '阿壩藏族羌族自治州', 510000, 2, '中國,四川省,阿壩藏族羌族自治州', 102.221, 31.8998, 'Aba');
INSERT INTO `Sys_Region` VALUES (2523, '513221', '汶川縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,汶川縣', 103.591, 31.4733, 'Wenchuan');
INSERT INTO `Sys_Region` VALUES (2524, '513222', '理縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,理縣', 103.172, 31.436, 'Lixian');
INSERT INTO `Sys_Region` VALUES (2525, '513223', '茂縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,茂縣', 103.854, 31.682, 'Maoxian');
INSERT INTO `Sys_Region` VALUES (2526, '513224', '松潘縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,松潘縣', 103.599, 32.6387, 'Songpan');
INSERT INTO `Sys_Region` VALUES (2527, '513225', '九寨溝縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,九寨溝縣', 104.237, 33.2632, 'Jiuzhaigou');
INSERT INTO `Sys_Region` VALUES (2528, '513226', '金川縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,金川縣', 102.066, 31.4762, 'Jinchuan');
INSERT INTO `Sys_Region` VALUES (2529, '513227', '小金縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,小金縣', 102.365, 30.9993, 'Xiaojin');
INSERT INTO `Sys_Region` VALUES (2530, '513228', '黑水縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,黑水縣', 102.992, 32.0618, 'Heishui');
INSERT INTO `Sys_Region` VALUES (2531, '513229', '馬爾康縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,馬爾康縣', 102.206, 31.9058, 'Maerkang');
INSERT INTO `Sys_Region` VALUES (2532, '513230', '壤塘縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,壤塘縣', 100.978, 32.2658, 'Rangtang');
INSERT INTO `Sys_Region` VALUES (2533, '513231', '阿壩縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,阿壩縣', 101.706, 32.903, 'Aba');
INSERT INTO `Sys_Region` VALUES (2534, '513232', '若爾蓋縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,若爾蓋縣', 102.96, 33.5743, 'Ruoergai');
INSERT INTO `Sys_Region` VALUES (2535, '513233', '紅原縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,紅原縣', 102.545, 32.7899, 'Hongyuan');
INSERT INTO `Sys_Region` VALUES (2536, '513300', '甘孜藏族自治州', 510000, 2, '中國,四川省,甘孜藏族自治州', 101.964, 30.0507, 'Garze');
INSERT INTO `Sys_Region` VALUES (2537, '513321', '康定縣', 513300, 3, '中國,四川省,甘孜藏族自治州,康定縣', 101.965, 30.0553, 'Kangding');
INSERT INTO `Sys_Region` VALUES (2538, '513322', '瀘定縣', 513300, 3, '中國,四川省,甘孜藏族自治州,瀘定縣', 102.235, 29.9147, 'Luding');
INSERT INTO `Sys_Region` VALUES (2539, '513323', '丹巴縣', 513300, 3, '中國,四川省,甘孜藏族自治州,丹巴縣', 101.884, 30.8766, 'Danba');
INSERT INTO `Sys_Region` VALUES (2540, '513324', '九龍縣', 513300, 3, '中國,四川省,甘孜藏族自治州,九龍縣', 101.508, 29.0009, 'Jiulong');
INSERT INTO `Sys_Region` VALUES (2541, '513325', '雅江縣', 513300, 3, '中國,四川省,甘孜藏族自治州,雅江縣', 101.015, 30.0328, 'Yajiang');
INSERT INTO `Sys_Region` VALUES (2542, '513326', '道孚縣', 513300, 3, '中國,四川省,甘孜藏族自治州,道孚縣', 101.126, 30.9805, 'Daofu');
INSERT INTO `Sys_Region` VALUES (2543, '513327', '爐霍縣', 513300, 3, '中國,四川省,甘孜藏族自治州,爐霍縣', 100.677, 31.3917, 'Luhuo');
INSERT INTO `Sys_Region` VALUES (2544, '513328', '甘孜縣', 513300, 3, '中國,四川省,甘孜藏族自治州,甘孜縣', 99.9931, 31.6267, 'Ganzi');
INSERT INTO `Sys_Region` VALUES (2545, '513329', '新龍縣', 513300, 3, '中國,四川省,甘孜藏族自治州,新龍縣', 100.312, 30.9407, 'Xinlong');
INSERT INTO `Sys_Region` VALUES (2546, '513330', '德格縣', 513300, 3, '中國,四川省,甘孜藏族自治州,德格縣', 98.5808, 31.8062, 'Dege');
INSERT INTO `Sys_Region` VALUES (2547, '513331', '白玉縣', 513300, 3, '中國,四川省,甘孜藏族自治州,白玉縣', 98.8257, 31.209, 'Baiyu');
INSERT INTO `Sys_Region` VALUES (2548, '513332', '石渠縣', 513300, 3, '中國,四川省,甘孜藏族自治州,石渠縣', 98.1016, 32.9788, 'Shiqu');
INSERT INTO `Sys_Region` VALUES (2549, '513333', '色達縣', 513300, 3, '中國,四川省,甘孜藏族自治州,色達縣', 100.332, 32.2684, 'Seda');
INSERT INTO `Sys_Region` VALUES (2550, '513334', '理塘縣', 513300, 3, '中國,四川省,甘孜藏族自治州,理塘縣', 100.27, 29.9967, 'Litang');
INSERT INTO `Sys_Region` VALUES (2551, '513335', '巴塘縣', 513300, 3, '中國,四川省,甘孜藏族自治州,巴塘縣', 99.1041, 30.0042, 'Batang');
INSERT INTO `Sys_Region` VALUES (2552, '513336', '鄉城縣', 513300, 3, '中國,四川省,甘孜藏族自治州,鄉城縣', 99.7994, 28.9355, 'Xiangcheng');
INSERT INTO `Sys_Region` VALUES (2553, '513337', '稻城縣', 513300, 3, '中國,四川省,甘孜藏族自治州,稻城縣', 100.298, 29.0379, 'Daocheng');
INSERT INTO `Sys_Region` VALUES (2554, '513338', '得榮縣', 513300, 3, '中國,四川省,甘孜藏族自治州,得榮縣', 99.2863, 28.713, 'Derong');
INSERT INTO `Sys_Region` VALUES (2555, '513400', '涼山彝族自治州', 510000, 2, '中國,四川省,涼山彝族自治州', 102.259, 27.8868, 'Liangshan');
INSERT INTO `Sys_Region` VALUES (2556, '513401', '西昌市', 513400, 3, '中國,四川省,涼山彝族自治州,西昌市', 102.264, 27.8952, 'Xichang');
INSERT INTO `Sys_Region` VALUES (2557, '513422', '木里藏族自治縣', 513400, 3, '中國,四川省,涼山彝族自治州,木里藏族自治縣', 101.28, 27.9287, 'Muli');
INSERT INTO `Sys_Region` VALUES (2558, '513423', '鹽源縣', 513400, 3, '中國,四川省,涼山彝族自治州,鹽源縣', 101.51, 27.4218, 'Yanyuan');
INSERT INTO `Sys_Region` VALUES (2559, '513424', '德昌縣', 513400, 3, '中國,四川省,涼山彝族自治州,德昌縣', 102.18, 27.4048, 'Dechang');
INSERT INTO `Sys_Region` VALUES (2560, '513425', '會理縣', 513400, 3, '中國,四川省,涼山彝族自治州,會理縣', 102.245, 26.6563, 'Huili');
INSERT INTO `Sys_Region` VALUES (2561, '513426', '會東縣', 513400, 3, '中國,四川省,涼山彝族自治州,會東縣', 102.578, 26.6343, 'Huidong');
INSERT INTO `Sys_Region` VALUES (2562, '513427', '寧南縣', 513400, 3, '中國,四川省,涼山彝族自治州,寧南縣', 102.761, 27.0657, 'Ningnan');
INSERT INTO `Sys_Region` VALUES (2563, '513428', '普格縣', 513400, 3, '中國,四川省,涼山彝族自治州,普格縣', 102.541, 27.3748, 'Puge');
INSERT INTO `Sys_Region` VALUES (2564, '513429', '布拖縣', 513400, 3, '中國,四川省,涼山彝族自治州,布拖縣', 102.812, 27.7079, 'Butuo');
INSERT INTO `Sys_Region` VALUES (2565, '513430', '金陽縣', 513400, 3, '中國,四川省,涼山彝族自治州,金陽縣', 103.248, 27.697, 'Jinyang');
INSERT INTO `Sys_Region` VALUES (2566, '513431', '昭覺縣', 513400, 3, '中國,四川省,涼山彝族自治州,昭覺縣', 102.847, 28.0116, 'Zhaojue');
INSERT INTO `Sys_Region` VALUES (2567, '513432', '喜德縣', 513400, 3, '中國,四川省,涼山彝族自治州,喜德縣', 102.413, 28.3074, 'Xide');
INSERT INTO `Sys_Region` VALUES (2568, '513433', '冕寧縣', 513400, 3, '中國,四川省,涼山彝族自治州,冕寧縣', 102.171, 28.5516, 'Mianning');
INSERT INTO `Sys_Region` VALUES (2569, '513434', '越西縣', 513400, 3, '中國,四川省,涼山彝族自治州,越西縣', 102.508, 28.6413, 'Yuexi');
INSERT INTO `Sys_Region` VALUES (2570, '513435', '甘洛縣', 513400, 3, '中國,四川省,涼山彝族自治州,甘洛縣', 102.772, 28.9662, 'Ganluo');
INSERT INTO `Sys_Region` VALUES (2571, '513436', '美姑縣', 513400, 3, '中國,四川省,涼山彝族自治州,美姑縣', 103.131, 28.326, 'Meigu');
INSERT INTO `Sys_Region` VALUES (2572, '513437', '雷波縣', 513400, 3, '中國,四川省,涼山彝族自治州,雷波縣', 103.573, 28.2641, 'Leibo');
INSERT INTO `Sys_Region` VALUES (2573, '520000', '貴州省', 100000, 1, '中國,貴州省', 106.713, 26.5783, 'Guizhou');
INSERT INTO `Sys_Region` VALUES (2574, '520100', '貴陽市', 520000, 2, '中國,貴州省,貴陽市', 106.713, 26.5783, 'Guiyang');
INSERT INTO `Sys_Region` VALUES (2575, '520102', '南明區', 520100, 3, '中國,貴州省,貴陽市,南明區', 106.715, 26.5682, 'Nanming');
INSERT INTO `Sys_Region` VALUES (2576, '520103', '云巖區', 520100, 3, '中國,貴州省,貴陽市,云巖區', 106.725, 26.6048, 'Yunyan');
INSERT INTO `Sys_Region` VALUES (2577, '520111', '花溪區', 520100, 3, '中國,貴州省,貴陽市,花溪區', 106.677, 26.4334, 'Huaxi');
INSERT INTO `Sys_Region` VALUES (2578, '520112', '烏當區', 520100, 3, '中國,貴州省,貴陽市,烏當區', 106.752, 26.6302, 'Wudang');
INSERT INTO `Sys_Region` VALUES (2579, '520113', '白云區', 520100, 3, '中國,貴州省,貴陽市,白云區', 106.631, 26.6828, 'Baiyun');
INSERT INTO `Sys_Region` VALUES (2580, '520115', '觀山湖區', 520100, 3, '中國,貴州省,貴陽市,觀山湖區', 106.625, 26.6182, 'Guanshanhu');
INSERT INTO `Sys_Region` VALUES (2581, '520121', '開陽縣', 520100, 3, '中國,貴州省,貴陽市,開陽縣', 106.969, 27.0553, 'Kaiyang');
INSERT INTO `Sys_Region` VALUES (2582, '520122', '息烽縣', 520100, 3, '中國,貴州省,貴陽市,息烽縣', 106.738, 27.0935, 'Xifeng');
INSERT INTO `Sys_Region` VALUES (2583, '520123', '修文縣', 520100, 3, '中國,貴州省,貴陽市,修文縣', 106.595, 26.8378, 'Xiuwen');
INSERT INTO `Sys_Region` VALUES (2584, '520181', '清鎮市', 520100, 3, '中國,貴州省,貴陽市,清鎮市', 106.469, 26.5526, 'Qingzhen');
INSERT INTO `Sys_Region` VALUES (2585, '520200', '六盤水市', 520000, 2, '中國,貴州省,六盤水市', 104.847, 26.5846, 'Liupanshui');
INSERT INTO `Sys_Region` VALUES (2586, '520201', '鐘山區', 520200, 3, '中國,貴州省,六盤水市,鐘山區', 104.878, 26.577, 'Zhongshan');
INSERT INTO `Sys_Region` VALUES (2587, '520203', '六枝特區', 520200, 3, '中國,貴州省,六盤水市,六枝特區', 105.481, 26.2012, 'Liuzhi');
INSERT INTO `Sys_Region` VALUES (2588, '520221', '水城縣', 520200, 3, '中國,貴州省,六盤水市,水城縣', 104.958, 26.5478, 'Shuicheng');
INSERT INTO `Sys_Region` VALUES (2589, '520222', '盤縣', 520200, 3, '中國,貴州省,六盤水市,盤縣', 104.471, 25.7136, 'Panxian');
INSERT INTO `Sys_Region` VALUES (2590, '520300', '遵義市', 520000, 2, '中國,貴州省,遵義市', 106.937, 27.7066, 'Zunyi');
INSERT INTO `Sys_Region` VALUES (2591, '520302', '紅花崗區', 520300, 3, '中國,貴州省,遵義市,紅花崗區', 106.894, 27.6447, 'Honghuagang');
INSERT INTO `Sys_Region` VALUES (2592, '520303', '匯川區', 520300, 3, '中國,貴州省,遵義市,匯川區', 106.939, 27.7062, 'Huichuan');
INSERT INTO `Sys_Region` VALUES (2593, '520321', '遵義縣', 520300, 3, '中國,貴州省,遵義市,遵義縣', 106.833, 27.5377, 'Zunyi');
INSERT INTO `Sys_Region` VALUES (2594, '520322', '桐梓縣', 520300, 3, '中國,貴州省,遵義市,桐梓縣', 106.826, 28.1381, 'Tongzi');
INSERT INTO `Sys_Region` VALUES (2595, '520323', '綏陽縣', 520300, 3, '中國,貴州省,遵義市,綏陽縣', 107.191, 27.947, 'Suiyang');
INSERT INTO `Sys_Region` VALUES (2596, '520324', '正安縣', 520300, 3, '中國,貴州省,遵義市,正安縣', 107.444, 28.5512, 'Zhengan');
INSERT INTO `Sys_Region` VALUES (2597, '520325', '道真仡佬族苗族自治縣', 520300, 3, '中國,貴州省,遵義市,道真仡佬族苗族自治縣', 107.612, 28.864, 'Daozhen');
INSERT INTO `Sys_Region` VALUES (2598, '520326', '務川仡佬族苗族自治縣', 520300, 3, '中國,貴州省,遵義市,務川仡佬族苗族自治縣', 107.889, 28.5223, 'Wuchuan');
INSERT INTO `Sys_Region` VALUES (2599, '520327', '鳳岡縣', 520300, 3, '中國,貴州省,遵義市,鳳岡縣', 107.717, 27.9546, 'Fenggang');
INSERT INTO `Sys_Region` VALUES (2600, '520328', '湄潭縣', 520300, 3, '中國,貴州省,遵義市,湄潭縣', 107.488, 27.7668, 'Meitan');
INSERT INTO `Sys_Region` VALUES (2601, '520329', '余慶縣', 520300, 3, '中國,貴州省,遵義市,余慶縣', 107.888, 27.2253, 'Yuqing');
INSERT INTO `Sys_Region` VALUES (2602, '520330', '習水縣', 520300, 3, '中國,貴州省,遵義市,習水縣', 106.213, 28.3198, 'Xishui');
INSERT INTO `Sys_Region` VALUES (2603, '520381', '赤水市', 520300, 3, '中國,貴州省,遵義市,赤水市', 105.698, 28.5892, 'Chishui');
INSERT INTO `Sys_Region` VALUES (2604, '520382', '仁懷市', 520300, 3, '中國,貴州省,遵義市,仁懷市', 106.402, 27.7923, 'Renhuai');
INSERT INTO `Sys_Region` VALUES (2605, '520400', '安順市', 520000, 2, '中國,貴州省,安順市', 105.932, 26.2455, 'Anshun');
INSERT INTO `Sys_Region` VALUES (2606, '520402', '西秀區', 520400, 3, '中國,貴州省,安順市,西秀區', 105.966, 26.2449, 'Xixiu');
INSERT INTO `Sys_Region` VALUES (2607, '520421', '平壩區', 520400, 3, '中國,貴州省,安順市,平壩區', 106.257, 26.4054, 'Pingba');
INSERT INTO `Sys_Region` VALUES (2608, '520422', '普定縣', 520400, 3, '中國,貴州省,安順市,普定縣', 105.743, 26.3014, 'Puding');
INSERT INTO `Sys_Region` VALUES (2609, '520423', '鎮寧布依族苗族自治縣', 520400, 3, '中國,貴州省,安順市,鎮寧布依族苗族自治縣', 105.765, 26.0553, 'Zhenning');
INSERT INTO `Sys_Region` VALUES (2610, '520424', '關嶺布依族苗族自治縣', 520400, 3, '中國,貴州省,安順市,關嶺布依族苗族自治縣', 105.619, 25.9425, 'Guanling');
INSERT INTO `Sys_Region` VALUES (2611, '520425', '紫云苗族布依族自治縣', 520400, 3, '中國,貴州省,安順市,紫云苗族布依族自治縣', 106.084, 25.7526, 'Ziyun');
INSERT INTO `Sys_Region` VALUES (2612, '520500', '畢節市', 520000, 2, '中國,貴州省,畢節市', 105.285, 27.3017, 'Bijie');
INSERT INTO `Sys_Region` VALUES (2613, '520502', '七星關區', 520500, 3, '中國,貴州省,畢節市,七星關區', 104.95, 27.1536, 'Qixingguan');
INSERT INTO `Sys_Region` VALUES (2614, '520521', '大方縣', 520500, 3, '中國,貴州省,畢節市,大方縣', 105.609, 27.1435, 'Dafang');
INSERT INTO `Sys_Region` VALUES (2615, '520522', '黔西縣', 520500, 3, '中國,貴州省,畢節市,黔西縣', 106.038, 27.0249, 'Qianxi');
INSERT INTO `Sys_Region` VALUES (2616, '520523', '金沙縣', 520500, 3, '中國,貴州省,畢節市,金沙縣', 106.222, 27.4597, 'Jinsha');
INSERT INTO `Sys_Region` VALUES (2617, '520524', '織金縣', 520500, 3, '中國,貴州省,畢節市,織金縣', 105.769, 26.6685, 'Zhijin');
INSERT INTO `Sys_Region` VALUES (2618, '520525', '納雍縣', 520500, 3, '中國,貴州省,畢節市,納雍縣', 105.375, 26.7699, 'Nayong');
INSERT INTO `Sys_Region` VALUES (2619, '520526', '威寧彝族回族苗族自治縣', 520500, 3, '中國,貴州省,畢節市,威寧彝族回族苗族自治縣', 104.287, 26.8591, 'Weining');
INSERT INTO `Sys_Region` VALUES (2620, '520527', '赫章縣', 520500, 3, '中國,貴州省,畢節市,赫章縣', 104.726, 27.1192, 'Hezhang');
INSERT INTO `Sys_Region` VALUES (2621, '520600', '銅仁市', 520000, 2, '中國,貴州省,銅仁市', 109.192, 27.7183, 'Tongren');
INSERT INTO `Sys_Region` VALUES (2622, '520602', '碧江區', 520600, 3, '中國,貴州省,銅仁市,碧江區', 109.192, 27.7183, 'Bijiang');
INSERT INTO `Sys_Region` VALUES (2623, '520603', '萬山區', 520600, 3, '中國,貴州省,銅仁市,萬山區', 109.212, 27.519, 'Wanshan');
INSERT INTO `Sys_Region` VALUES (2624, '520621', '江口縣', 520600, 3, '中國,貴州省,銅仁市,江口縣', 108.848, 27.6919, 'Jiangkou');
INSERT INTO `Sys_Region` VALUES (2625, '520622', '玉屏侗族自治縣', 520600, 3, '中國,貴州省,銅仁市,玉屏侗族自治縣', 108.918, 27.238, 'Yuping');
INSERT INTO `Sys_Region` VALUES (2626, '520623', '石阡縣', 520600, 3, '中國,貴州省,銅仁市,石阡縣', 108.23, 27.5194, 'Shiqian');
INSERT INTO `Sys_Region` VALUES (2627, '520624', '思南縣', 520600, 3, '中國,貴州省,銅仁市,思南縣', 108.256, 27.9413, 'Sinan');
INSERT INTO `Sys_Region` VALUES (2628, '520625', '印江土家族苗族自治縣', 520600, 3, '中國,貴州省,銅仁市,印江土家族苗族自治縣', 108.406, 27.998, 'Yinjiang');
INSERT INTO `Sys_Region` VALUES (2629, '520626', '德江縣', 520600, 3, '中國,貴州省,銅仁市,德江縣', 108.117, 28.2609, 'Dejiang');
INSERT INTO `Sys_Region` VALUES (2630, '520627', '沿河土家族自治縣', 520600, 3, '中國,貴州省,銅仁市,沿河土家族自治縣', 108.496, 28.5605, 'Yuanhe');
INSERT INTO `Sys_Region` VALUES (2631, '520628', '松桃苗族自治縣', 520600, 3, '中國,貴州省,銅仁市,松桃苗族自治縣', 109.203, 28.1654, 'Songtao');
INSERT INTO `Sys_Region` VALUES (2632, '522300', '黔西南布依族苗族自治州', 520000, 2, '中國,貴州省,黔西南布依族苗族自治州', 104.898, 25.0881, 'Qianxinan');
INSERT INTO `Sys_Region` VALUES (2633, '522301', '興義市 ', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,興義市 ', 104.895, 25.0921, 'Xingyi');
INSERT INTO `Sys_Region` VALUES (2634, '522322', '興仁縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,興仁縣', 105.187, 25.4328, 'Xingren');
INSERT INTO `Sys_Region` VALUES (2635, '522323', '普安縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,普安縣', 104.955, 25.786, 'Puan');
INSERT INTO `Sys_Region` VALUES (2636, '522324', '晴隆縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,晴隆縣', 105.219, 25.8352, 'Qinglong');
INSERT INTO `Sys_Region` VALUES (2637, '522325', '貞豐縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,貞豐縣', 105.655, 25.3846, 'Zhenfeng');
INSERT INTO `Sys_Region` VALUES (2638, '522326', '望謨縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,望謨縣', 106.1, 25.1782, 'Wangmo');
INSERT INTO `Sys_Region` VALUES (2639, '522327', '冊亨縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,冊亨縣', 105.812, 24.9838, 'Ceheng');
INSERT INTO `Sys_Region` VALUES (2640, '522328', '安龍縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,安龍縣', 105.443, 25.0982, 'Anlong');
INSERT INTO `Sys_Region` VALUES (2641, '522600', '黔東南苗族侗族自治州', 520000, 2, '中國,貴州省,黔東南苗族侗族自治州', 107.977, 26.5834, 'Qiandongnan');
INSERT INTO `Sys_Region` VALUES (2642, '522601', '凱里市', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,凱里市', 107.981, 26.5669, 'Kaili');
INSERT INTO `Sys_Region` VALUES (2643, '522622', '黃平縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,黃平縣', 107.902, 26.8957, 'Huangping');
INSERT INTO `Sys_Region` VALUES (2644, '522623', '施秉縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,施秉縣', 108.126, 27.035, 'Shibing');
INSERT INTO `Sys_Region` VALUES (2645, '522624', '三穗縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,三穗縣', 108.671, 26.9477, 'Sansui');
INSERT INTO `Sys_Region` VALUES (2646, '522625', '鎮遠縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,鎮遠縣', 108.427, 27.0493, 'Zhenyuan');
INSERT INTO `Sys_Region` VALUES (2647, '522626', '岑鞏縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,岑鞏縣', 108.819, 27.1754, 'Cengong');
INSERT INTO `Sys_Region` VALUES (2648, '522627', '天柱縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,天柱縣', 109.207, 26.9078, 'Tianzhu');
INSERT INTO `Sys_Region` VALUES (2649, '522628', '錦屏縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,錦屏縣', 109.2, 26.6763, 'Jinping');
INSERT INTO `Sys_Region` VALUES (2650, '522629', '劍河縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,劍河縣', 108.591, 26.6525, 'Jianhe');
INSERT INTO `Sys_Region` VALUES (2651, '522630', '臺江縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,臺江縣', 108.318, 26.6692, 'Taijiang');
INSERT INTO `Sys_Region` VALUES (2652, '522631', '黎平縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,黎平縣', 109.136, 26.2311, 'Liping');
INSERT INTO `Sys_Region` VALUES (2653, '522632', '榕江縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,榕江縣', 108.521, 25.9242, 'Rongjiang');
INSERT INTO `Sys_Region` VALUES (2654, '522633', '從江縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,從江縣', 108.905, 25.7542, 'Congjiang');
INSERT INTO `Sys_Region` VALUES (2655, '522634', '雷山縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,雷山縣', 108.077, 26.3839, 'Leishan');
INSERT INTO `Sys_Region` VALUES (2656, '522635', '麻江縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,麻江縣', 107.592, 26.4923, 'Majiang');
INSERT INTO `Sys_Region` VALUES (2657, '522636', '丹寨縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,丹寨縣', 107.797, 26.1982, 'Danzhai');
INSERT INTO `Sys_Region` VALUES (2658, '522700', '黔南布依族苗族自治州', 520000, 2, '中國,貴州省,黔南布依族苗族自治州', 107.517, 26.2582, 'Qiannan');
INSERT INTO `Sys_Region` VALUES (2659, '522701', '都勻市', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,都勻市', 107.519, 26.2594, 'Duyun');
INSERT INTO `Sys_Region` VALUES (2660, '522702', '福泉市', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,福泉市', 107.517, 26.6799, 'Fuquan');
INSERT INTO `Sys_Region` VALUES (2661, '522722', '荔波縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,荔波縣', 107.886, 25.4139, 'Libo');
INSERT INTO `Sys_Region` VALUES (2662, '522723', '貴定縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,貴定縣', 107.237, 26.5781, 'Guiding');
INSERT INTO `Sys_Region` VALUES (2663, '522725', '甕安縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,甕安縣', 107.476, 27.0681, 'Wengan');
INSERT INTO `Sys_Region` VALUES (2664, '522726', '獨山縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,獨山縣', 107.541, 25.8245, 'Dushan');
INSERT INTO `Sys_Region` VALUES (2665, '522727', '平塘縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,平塘縣', 107.324, 25.8329, 'Pingtang');
INSERT INTO `Sys_Region` VALUES (2666, '522728', '羅甸縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,羅甸縣', 106.752, 25.4259, 'Luodian');
INSERT INTO `Sys_Region` VALUES (2667, '522729', '長順縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,長順縣', 106.452, 26.023, 'Changshun');
INSERT INTO `Sys_Region` VALUES (2668, '522730', '龍里縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,龍里縣', 106.977, 26.4508, 'Longli');
INSERT INTO `Sys_Region` VALUES (2669, '522731', '惠水縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,惠水縣', 106.659, 26.1339, 'Huishui');
INSERT INTO `Sys_Region` VALUES (2670, '522732', '三都水族自治縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,三都水族自治縣', 107.875, 25.9856, 'Sandu');
INSERT INTO `Sys_Region` VALUES (2671, '530000', '云南省', 100000, 1, '中國,云南省', 102.712, 25.0406, 'Yunnan');
INSERT INTO `Sys_Region` VALUES (2672, '530100', '昆明市', 530000, 2, '中國,云南省,昆明市', 102.712, 25.0406, 'Kunming');
INSERT INTO `Sys_Region` VALUES (2673, '530102', '五華區', 530100, 3, '中國,云南省,昆明市,五華區', 102.708, 25.0352, 'Wuhua');
INSERT INTO `Sys_Region` VALUES (2674, '530103', '盤龍區', 530100, 3, '中國,云南省,昆明市,盤龍區', 102.72, 25.0405, 'Panlong');
INSERT INTO `Sys_Region` VALUES (2675, '530111', '官渡區', 530100, 3, '中國,云南省,昆明市,官渡區', 102.744, 25.015, 'Guandu');
INSERT INTO `Sys_Region` VALUES (2676, '530112', '西山區', 530100, 3, '中國,云南省,昆明市,西山區', 102.665, 25.038, 'Xishan');
INSERT INTO `Sys_Region` VALUES (2677, '530113', '東川區', 530100, 3, '中國,云南省,昆明市,東川區', 103.188, 26.083, 'Dongchuan');
INSERT INTO `Sys_Region` VALUES (2678, '530114', '呈貢區', 530100, 3, '中國,云南省,昆明市,呈貢區', 102.801, 24.8893, 'Chenggong');
INSERT INTO `Sys_Region` VALUES (2679, '530122', '晉寧縣', 530100, 3, '中國,云南省,昆明市,晉寧縣', 102.594, 24.6665, 'Jinning');
INSERT INTO `Sys_Region` VALUES (2680, '530124', '富民縣', 530100, 3, '中國,云南省,昆明市,富民縣', 102.498, 25.2212, 'Fumin');
INSERT INTO `Sys_Region` VALUES (2681, '530125', '宜良縣', 530100, 3, '中國,云南省,昆明市,宜良縣', 103.141, 24.917, 'Yiliang');
INSERT INTO `Sys_Region` VALUES (2682, '530126', '石林彝族自治縣', 530100, 3, '中國,云南省,昆明市,石林彝族自治縣', 103.271, 24.759, 'Shilin');
INSERT INTO `Sys_Region` VALUES (2683, '530127', '嵩明縣', 530100, 3, '中國,云南省,昆明市,嵩明縣', 103.037, 25.3399, 'Songming');
INSERT INTO `Sys_Region` VALUES (2684, '530128', '祿勸彝族苗族自治縣', 530100, 3, '中國,云南省,昆明市,祿勸彝族苗族自治縣', 102.467, 25.5539, 'Luquan');
INSERT INTO `Sys_Region` VALUES (2685, '530129', '尋甸回族彝族自治縣 ', 530100, 3, '中國,云南省,昆明市,尋甸回族彝族自治縣 ', 103.256, 25.5596, 'Xundian');
INSERT INTO `Sys_Region` VALUES (2686, '530181', '安寧市', 530100, 3, '中國,云南省,昆明市,安寧市', 102.47, 24.9165, 'Anning');
INSERT INTO `Sys_Region` VALUES (2687, '530300', '曲靖市', 530000, 2, '中國,云南省,曲靖市', 103.798, 25.5016, 'Qujing');
INSERT INTO `Sys_Region` VALUES (2688, '530302', '麒麟區', 530300, 3, '中國,云南省,曲靖市,麒麟區', 103.805, 25.4951, 'Qilin');
INSERT INTO `Sys_Region` VALUES (2689, '530321', '馬龍縣', 530300, 3, '中國,云南省,曲靖市,馬龍縣', 103.579, 25.4252, 'Malong');
INSERT INTO `Sys_Region` VALUES (2690, '530322', '陸良縣', 530300, 3, '中國,云南省,曲靖市,陸良縣', 103.666, 25.0233, 'Luliang');
INSERT INTO `Sys_Region` VALUES (2691, '530323', '師宗縣', 530300, 3, '中國,云南省,曲靖市,師宗縣', 103.991, 24.8282, 'Shizong');
INSERT INTO `Sys_Region` VALUES (2692, '530324', '羅平縣', 530300, 3, '中國,云南省,曲靖市,羅平縣', 104.309, 24.8844, 'Luoping');
INSERT INTO `Sys_Region` VALUES (2693, '530325', '富源縣', 530300, 3, '中國,云南省,曲靖市,富源縣', 104.254, 25.6659, 'Fuyuan');
INSERT INTO `Sys_Region` VALUES (2694, '530326', '會澤縣', 530300, 3, '中國,云南省,曲靖市,會澤縣', 103.3, 26.4108, 'Huize');
INSERT INTO `Sys_Region` VALUES (2695, '530328', '沾益縣', 530300, 3, '中國,云南省,曲靖市,沾益縣', 103.821, 25.6071, 'Zhanyi');
INSERT INTO `Sys_Region` VALUES (2696, '530381', '宣威市', 530300, 3, '中國,云南省,曲靖市,宣威市', 104.104, 26.2173, 'Xuanwei');
INSERT INTO `Sys_Region` VALUES (2697, '530400', '玉溪市', 530000, 2, '中國,云南省,玉溪市', 102.544, 24.3505, 'Yuxi');
INSERT INTO `Sys_Region` VALUES (2698, '530402', '紅塔區', 530400, 3, '中國,云南省,玉溪市,紅塔區', 102.545, 24.3541, 'Hongta');
INSERT INTO `Sys_Region` VALUES (2699, '530421', '江川縣', 530400, 3, '中國,云南省,玉溪市,江川縣', 102.754, 24.2886, 'Jiangchuan');
INSERT INTO `Sys_Region` VALUES (2700, '530422', '澄江縣', 530400, 3, '中國,云南省,玉溪市,澄江縣', 102.908, 24.6738, 'Chengjiang');
INSERT INTO `Sys_Region` VALUES (2701, '530423', '通海縣', 530400, 3, '中國,云南省,玉溪市,通海縣', 102.766, 24.1136, 'Tonghai');
INSERT INTO `Sys_Region` VALUES (2702, '530424', '華寧縣', 530400, 3, '中國,云南省,玉溪市,華寧縣', 102.928, 24.1926, 'Huaning');
INSERT INTO `Sys_Region` VALUES (2703, '530425', '易門縣', 530400, 3, '中國,云南省,玉溪市,易門縣', 102.164, 24.6712, 'Yimen');
INSERT INTO `Sys_Region` VALUES (2704, '530426', '峨山彝族自治縣', 530400, 3, '中國,云南省,玉溪市,峨山彝族自治縣', 102.406, 24.169, 'Eshan');
INSERT INTO `Sys_Region` VALUES (2705, '530427', '新平彝族傣族自治縣', 530400, 3, '中國,云南省,玉溪市,新平彝族傣族自治縣', 101.989, 24.0689, 'Xinping');
INSERT INTO `Sys_Region` VALUES (2706, '530428', '元江哈尼族彝族傣族自治縣', 530400, 3, '中國,云南省,玉溪市,元江哈尼族彝族傣族自治縣', 101.998, 23.5965, 'Yuanjiang');
INSERT INTO `Sys_Region` VALUES (2707, '530500', '保山市', 530000, 2, '中國,云南省,保山市', 99.1671, 25.1118, 'Baoshan');
INSERT INTO `Sys_Region` VALUES (2708, '530502', '隆陽區', 530500, 3, '中國,云南省,保山市,隆陽區', 99.1633, 25.1116, 'Longyang');
INSERT INTO `Sys_Region` VALUES (2709, '530521', '施甸縣', 530500, 3, '中國,云南省,保山市,施甸縣', 99.1877, 24.7242, 'Shidian');
INSERT INTO `Sys_Region` VALUES (2710, '530522', '騰沖縣', 530500, 3, '中國,云南省,保山市,騰沖縣', 98.4941, 25.0254, 'Tengchong');
INSERT INTO `Sys_Region` VALUES (2711, '530523', '龍陵縣', 530500, 3, '中國,云南省,保山市,龍陵縣', 98.6902, 24.5875, 'Longling');
INSERT INTO `Sys_Region` VALUES (2712, '530524', '昌寧縣', 530500, 3, '中國,云南省,保山市,昌寧縣', 99.6036, 24.8276, 'Changning');
INSERT INTO `Sys_Region` VALUES (2713, '530600', '昭通市', 530000, 2, '中國,云南省,昭通市', 103.717, 27.337, 'Zhaotong');
INSERT INTO `Sys_Region` VALUES (2714, '530602', '昭陽區', 530600, 3, '中國,云南省,昭通市,昭陽區', 103.707, 27.32, 'Zhaoyang');
INSERT INTO `Sys_Region` VALUES (2715, '530621', '魯甸縣', 530600, 3, '中國,云南省,昭通市,魯甸縣', 103.547, 27.1924, 'Ludian');
INSERT INTO `Sys_Region` VALUES (2716, '530622', '巧家縣', 530600, 3, '中國,云南省,昭通市,巧家縣', 102.924, 26.9124, 'Qiaojia');
INSERT INTO `Sys_Region` VALUES (2717, '530623', '鹽津縣', 530600, 3, '中國,云南省,昭通市,鹽津縣', 104.235, 28.1086, 'Yanjin');
INSERT INTO `Sys_Region` VALUES (2718, '530624', '大關縣', 530600, 3, '中國,云南省,昭通市,大關縣', 103.893, 27.7488, 'Daguan');
INSERT INTO `Sys_Region` VALUES (2719, '530625', '永善縣', 530600, 3, '中國,云南省,昭通市,永善縣', 103.635, 28.2279, 'Yongshan');
INSERT INTO `Sys_Region` VALUES (2720, '530626', '綏江縣', 530600, 3, '中國,云南省,昭通市,綏江縣', 103.949, 28.5966, 'Suijiang');
INSERT INTO `Sys_Region` VALUES (2721, '530627', '鎮雄縣', 530600, 3, '中國,云南省,昭通市,鎮雄縣', 104.873, 27.4398, 'Zhenxiong');
INSERT INTO `Sys_Region` VALUES (2722, '530628', '彝良縣', 530600, 3, '中國,云南省,昭通市,彝良縣', 104.05, 27.6281, 'Yiliang');
INSERT INTO `Sys_Region` VALUES (2723, '530629', '威信縣', 530600, 3, '中國,云南省,昭通市,威信縣', 105.048, 27.8407, 'Weixin');
INSERT INTO `Sys_Region` VALUES (2724, '530630', '水富縣', 530600, 3, '中國,云南省,昭通市,水富縣', 104.416, 28.6299, 'Shuifu');
INSERT INTO `Sys_Region` VALUES (2725, '530700', '麗江市', 530000, 2, '中國,云南省,麗江市', 100.233, 26.8721, 'Lijiang');
INSERT INTO `Sys_Region` VALUES (2726, '530702', '古城區', 530700, 3, '中國,云南省,麗江市,古城區', 100.226, 26.877, 'Gucheng');
INSERT INTO `Sys_Region` VALUES (2727, '530721', '玉龍納西族自治縣', 530700, 3, '中國,云南省,麗江市,玉龍納西族自治縣', 100.237, 26.8215, 'Yulong');
INSERT INTO `Sys_Region` VALUES (2728, '530722', '永勝縣', 530700, 3, '中國,云南省,麗江市,永勝縣', 100.747, 26.6859, 'Yongsheng');
INSERT INTO `Sys_Region` VALUES (2729, '530723', '華坪縣', 530700, 3, '中國,云南省,麗江市,華坪縣', 101.266, 26.6297, 'Huaping');
INSERT INTO `Sys_Region` VALUES (2730, '530724', '寧蒗彝族自治縣', 530700, 3, '中國,云南省,麗江市,寧蒗彝族自治縣', 100.851, 27.2818, 'Ninglang');
INSERT INTO `Sys_Region` VALUES (2731, '530800', '普洱市', 530000, 2, '中國,云南省,普洱市', 100.972, 22.7773, 'Puer');
INSERT INTO `Sys_Region` VALUES (2732, '530802', '思茅區', 530800, 3, '中國,云南省,普洱市,思茅區', 100.977, 22.7869, 'Simao');
INSERT INTO `Sys_Region` VALUES (2733, '530821', '寧洱哈尼族彝族自治縣', 530800, 3, '中國,云南省,普洱市,寧洱哈尼族彝族自治縣', 101.047, 23.0634, 'Ninger');
INSERT INTO `Sys_Region` VALUES (2734, '530822', '墨江哈尼族自治縣', 530800, 3, '中國,云南省,普洱市,墨江哈尼族自治縣', 101.692, 23.4321, 'Mojiang');
INSERT INTO `Sys_Region` VALUES (2735, '530823', '景東彝族自治縣', 530800, 3, '中國,云南省,普洱市,景東彝族自治縣', 100.836, 24.4479, 'Jingdong');
INSERT INTO `Sys_Region` VALUES (2736, '530824', '景谷傣族彝族自治縣', 530800, 3, '中國,云南省,普洱市,景谷傣族彝族自治縣', 100.703, 23.497, 'Jinggu');
INSERT INTO `Sys_Region` VALUES (2737, '530825', '鎮沅彝族哈尼族拉祜族自治縣', 530800, 3, '中國,云南省,普洱市,鎮沅彝族哈尼族拉祜族自治縣', 101.107, 24.0056, 'Zhenyuan');
INSERT INTO `Sys_Region` VALUES (2738, '530826', '江城哈尼族彝族自治縣', 530800, 3, '中國,云南省,普洱市,江城哈尼族彝族自治縣', 101.858, 22.5842, 'Jiangcheng');
INSERT INTO `Sys_Region` VALUES (2739, '530827', '孟連傣族拉祜族佤族自治縣', 530800, 3, '中國,云南省,普洱市,孟連傣族拉祜族佤族自治縣', 99.5842, 22.3292, 'Menglian');
INSERT INTO `Sys_Region` VALUES (2740, '530828', '瀾滄拉祜族自治縣', 530800, 3, '中國,云南省,普洱市,瀾滄拉祜族自治縣', 99.9359, 22.5547, 'Lancang');
INSERT INTO `Sys_Region` VALUES (2741, '530829', '西盟佤族自治縣', 530800, 3, '中國,云南省,普洱市,西盟佤族自治縣', 99.5987, 22.6477, 'Ximeng');
INSERT INTO `Sys_Region` VALUES (2742, '530900', '臨滄市', 530000, 2, '中國,云南省,臨滄市', 100.087, 23.8866, 'Lincang');
INSERT INTO `Sys_Region` VALUES (2743, '530902', '臨翔區', 530900, 3, '中國,云南省,臨滄市,臨翔區', 100.082, 23.895, 'Linxiang');
INSERT INTO `Sys_Region` VALUES (2744, '530921', '鳳慶縣', 530900, 3, '中國,云南省,臨滄市,鳳慶縣', 99.9284, 24.5803, 'Fengqing');
INSERT INTO `Sys_Region` VALUES (2745, '530922', '云縣', 530900, 3, '中國,云南省,臨滄市,云縣', 100.128, 24.4468, 'Yunxian');
INSERT INTO `Sys_Region` VALUES (2746, '530923', '永德縣', 530900, 3, '中國,云南省,臨滄市,永德縣', 99.2533, 24.0276, 'Yongde');
INSERT INTO `Sys_Region` VALUES (2747, '530924', '鎮康縣', 530900, 3, '中國,云南省,臨滄市,鎮康縣', 98.8255, 23.7624, 'Zhenkang');
INSERT INTO `Sys_Region` VALUES (2748, '530925', '雙江拉祜族佤族布朗族傣族自治縣', 530900, 3, '中國,云南省,臨滄市,雙江拉祜族佤族布朗族傣族自治縣', 99.8277, 23.4735, 'Shuangjiang');
INSERT INTO `Sys_Region` VALUES (2749, '530926', '耿馬傣族佤族自治縣', 530900, 3, '中國,云南省,臨滄市,耿馬傣族佤族自治縣', 99.3979, 23.5378, 'Gengma');
INSERT INTO `Sys_Region` VALUES (2750, '530927', '滄源佤族自治縣', 530900, 3, '中國,云南省,臨滄市,滄源佤族自治縣', 99.2455, 23.1482, 'Cangyuan');
INSERT INTO `Sys_Region` VALUES (2751, '532300', '楚雄彝族自治州', 530000, 2, '中國,云南省,楚雄彝族自治州', 101.546, 25.042, 'Chuxiong');
INSERT INTO `Sys_Region` VALUES (2752, '532301', '楚雄市', 532300, 3, '中國,云南省,楚雄彝族自治州,楚雄市', 101.546, 25.0329, 'Chuxiong');
INSERT INTO `Sys_Region` VALUES (2753, '532322', '雙柏縣', 532300, 3, '中國,云南省,楚雄彝族自治州,雙柏縣', 101.642, 24.6888, 'Shuangbai');
INSERT INTO `Sys_Region` VALUES (2754, '532323', '牟定縣', 532300, 3, '中國,云南省,楚雄彝族自治州,牟定縣', 101.54, 25.3155, 'Mouding');
INSERT INTO `Sys_Region` VALUES (2755, '532324', '南華縣', 532300, 3, '中國,云南省,楚雄彝族自治州,南華縣', 101.273, 25.1929, 'Nanhua');
INSERT INTO `Sys_Region` VALUES (2756, '532325', '姚安縣', 532300, 3, '中國,云南省,楚雄彝族自治州,姚安縣', 101.243, 25.5047, 'Yaoan');
INSERT INTO `Sys_Region` VALUES (2757, '532326', '大姚縣', 532300, 3, '中國,云南省,楚雄彝族自治州,大姚縣', 101.324, 25.7222, 'Dayao');
INSERT INTO `Sys_Region` VALUES (2758, '532327', '永仁縣', 532300, 3, '中國,云南省,楚雄彝族自治州,永仁縣', 101.672, 26.0579, 'Yongren');
INSERT INTO `Sys_Region` VALUES (2759, '532328', '元謀縣', 532300, 3, '中國,云南省,楚雄彝族自治州,元謀縣', 101.877, 25.7044, 'Yuanmou');
INSERT INTO `Sys_Region` VALUES (2760, '532329', '武定縣', 532300, 3, '中國,云南省,楚雄彝族自治州,武定縣', 102.404, 25.5295, 'Wuding');
INSERT INTO `Sys_Region` VALUES (2761, '532331', '祿豐縣', 532300, 3, '中國,云南省,楚雄彝族自治州,祿豐縣', 102.078, 25.1481, 'Lufeng');
INSERT INTO `Sys_Region` VALUES (2762, '532500', '紅河哈尼族彝族自治州', 530000, 2, '中國,云南省,紅河哈尼族彝族自治州', 103.384, 23.3668, 'Honghe');
INSERT INTO `Sys_Region` VALUES (2763, '532501', '個舊市', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,個舊市', 103.16, 23.3589, 'Gejiu');
INSERT INTO `Sys_Region` VALUES (2764, '532502', '開遠市', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,開遠市', 103.27, 23.7101, 'Kaiyuan');
INSERT INTO `Sys_Region` VALUES (2765, '532503', '蒙自市', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,蒙自市', 103.385, 23.3668, 'Mengzi');
INSERT INTO `Sys_Region` VALUES (2766, '532504', '彌勒市', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,彌勒市', 103.437, 24.4084, 'Mile ');
INSERT INTO `Sys_Region` VALUES (2767, '532523', '屏邊苗族自治縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,屏邊苗族自治縣', 103.686, 22.9842, 'Pingbian');
INSERT INTO `Sys_Region` VALUES (2768, '532524', '建水縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,建水縣', 102.827, 23.6347, 'Jianshui');
INSERT INTO `Sys_Region` VALUES (2769, '532525', '石屏縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,石屏縣', 102.494, 23.7144, 'Shiping');
INSERT INTO `Sys_Region` VALUES (2770, '532527', '瀘西縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,瀘西縣', 103.764, 24.5285, 'Luxi');
INSERT INTO `Sys_Region` VALUES (2771, '532528', '元陽縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,元陽縣', 102.833, 23.2228, 'Yuanyang');
INSERT INTO `Sys_Region` VALUES (2772, '532529', '紅河縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,紅河縣', 102.421, 23.3677, 'Honghexian');
INSERT INTO `Sys_Region` VALUES (2773, '532530', '金平苗族瑤族傣族自治縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,金平苗族瑤族傣族自治縣', 103.227, 22.7796, 'Jinping');
INSERT INTO `Sys_Region` VALUES (2774, '532531', '綠春縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,綠春縣', 102.397, 22.9937, 'Lvchun');
INSERT INTO `Sys_Region` VALUES (2775, '532532', '河口瑤族自治縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,河口瑤族自治縣', 103.939, 22.5293, 'Hekou');
INSERT INTO `Sys_Region` VALUES (2776, '532600', '文山壯族苗族自治州', 530000, 2, '中國,云南省,文山壯族苗族自治州', 104.244, 23.3695, 'Wenshan');
INSERT INTO `Sys_Region` VALUES (2777, '532601', '文山市', 532600, 3, '中國,云南省,文山壯族苗族自治州,文山市', 104.244, 23.3692, 'Wenshan');
INSERT INTO `Sys_Region` VALUES (2778, '532622', '硯山縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,硯山縣', 104.333, 23.6072, 'Yanshan');
INSERT INTO `Sys_Region` VALUES (2779, '532623', '西疇縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,西疇縣', 104.674, 23.4394, 'Xichou');
INSERT INTO `Sys_Region` VALUES (2780, '532624', '麻栗坡縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,麻栗坡縣', 104.701, 23.1203, 'Malipo');
INSERT INTO `Sys_Region` VALUES (2781, '532625', '馬關縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,馬關縣', 104.395, 23.0129, 'Maguan');
INSERT INTO `Sys_Region` VALUES (2782, '532626', '丘北縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,丘北縣', 104.193, 24.0396, 'Qiubei');
INSERT INTO `Sys_Region` VALUES (2783, '532627', '廣南縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,廣南縣', 105.055, 24.0464, 'Guangnan');
INSERT INTO `Sys_Region` VALUES (2784, '532628', '富寧縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,富寧縣', 105.631, 23.6254, 'Funing');
INSERT INTO `Sys_Region` VALUES (2785, '532800', '西雙版納傣族自治州', 530000, 2, '中國,云南省,西雙版納傣族自治州', 100.798, 22.0017, 'Xishuangbanna');
INSERT INTO `Sys_Region` VALUES (2786, '532801', '景洪市', 532800, 3, '中國,云南省,西雙版納傣族自治州,景洪市', 100.8, 22.0107, 'Jinghong');
INSERT INTO `Sys_Region` VALUES (2787, '532822', '勐海縣', 532800, 3, '中國,云南省,西雙版納傣族自治州,勐海縣', 100.449, 21.9618, 'Menghai');
INSERT INTO `Sys_Region` VALUES (2788, '532823', '勐臘縣', 532800, 3, '中國,云南省,西雙版納傣族自治州,勐臘縣', 101.565, 21.4816, 'Mengla');
INSERT INTO `Sys_Region` VALUES (2789, '532900', '大理白族自治州', 530000, 2, '中國,云南省,大理白族自治州', 100.24, 25.5928, 'Dali');
INSERT INTO `Sys_Region` VALUES (2790, '532901', '大理市', 532900, 3, '中國,云南省,大理白族自治州,大理市', 100.23, 25.5916, 'Dali');
INSERT INTO `Sys_Region` VALUES (2791, '532922', '漾濞彝族自治縣', 532900, 3, '中國,云南省,大理白族自治州,漾濞彝族自治縣', 99.9547, 25.6652, 'Yangbi');
INSERT INTO `Sys_Region` VALUES (2792, '532923', '祥云縣', 532900, 3, '中國,云南省,大理白族自治州,祥云縣', 100.558, 25.4734, 'Xiangyun');
INSERT INTO `Sys_Region` VALUES (2793, '532924', '賓川縣', 532900, 3, '中國,云南省,大理白族自治州,賓川縣', 100.577, 25.8314, 'Binchuan');
INSERT INTO `Sys_Region` VALUES (2794, '532925', '彌渡縣', 532900, 3, '中國,云南省,大理白族自治州,彌渡縣', 100.491, 25.3418, 'Midu');
INSERT INTO `Sys_Region` VALUES (2795, '532926', '南澗彝族自治縣', 532900, 3, '中國,云南省,大理白族自治州,南澗彝族自治縣', 100.51, 25.0435, 'Nanjian');
INSERT INTO `Sys_Region` VALUES (2796, '532927', '巍山彝族回族自治縣', 532900, 3, '中國,云南省,大理白族自治州,巍山彝族回族自治縣', 100.306, 25.232, 'Weishan');
INSERT INTO `Sys_Region` VALUES (2797, '532928', '永平縣', 532900, 3, '中國,云南省,大理白族自治州,永平縣', 99.5409, 25.4645, 'Yongping');
INSERT INTO `Sys_Region` VALUES (2798, '532929', '云龍縣', 532900, 3, '中國,云南省,大理白族自治州,云龍縣', 99.3726, 25.885, 'Yunlong');
INSERT INTO `Sys_Region` VALUES (2799, '532930', '洱源縣', 532900, 3, '中國,云南省,大理白族自治州,洱源縣', 99.949, 26.1083, 'Eryuan');
INSERT INTO `Sys_Region` VALUES (2800, '532931', '劍川縣', 532900, 3, '中國,云南省,大理白族自治州,劍川縣', 99.9054, 26.5369, 'Jianchuan');
INSERT INTO `Sys_Region` VALUES (2801, '532932', '鶴慶縣', 532900, 3, '中國,云南省,大理白族自治州,鶴慶縣', 100.177, 26.558, 'Heqing');
INSERT INTO `Sys_Region` VALUES (2802, '533100', '德宏傣族景頗族自治州', 530000, 2, '中國,云南省,德宏傣族景頗族自治州', 98.5784, 24.4367, 'Dehong');
INSERT INTO `Sys_Region` VALUES (2803, '533102', '瑞麗市', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,瑞麗市', 97.8518, 24.0128, 'Ruili');
INSERT INTO `Sys_Region` VALUES (2804, '533103', '芒市', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,芒市', 98.5886, 24.4337, 'Mangshi');
INSERT INTO `Sys_Region` VALUES (2805, '533122', '梁河縣', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,梁河縣', 98.2971, 24.8066, 'Lianghe');
INSERT INTO `Sys_Region` VALUES (2806, '533123', '盈江縣', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,盈江縣', 97.9318, 24.7058, 'Yingjiang');
INSERT INTO `Sys_Region` VALUES (2807, '533124', '隴川縣', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,隴川縣', 97.792, 24.183, 'Longchuan');
INSERT INTO `Sys_Region` VALUES (2808, '533300', '怒江傈僳族自治州', 530000, 2, '中國,云南省,怒江傈僳族自治州', 98.8543, 25.8509, 'Nujiang');
INSERT INTO `Sys_Region` VALUES (2809, '533321', '瀘水縣', 533300, 3, '中國,云南省,怒江傈僳族自治州,瀘水縣', 98.8553, 25.8377, 'Lushui');
INSERT INTO `Sys_Region` VALUES (2810, '533323', '福貢縣', 533300, 3, '中國,云南省,怒江傈僳族自治州,福貢縣', 98.8697, 26.9037, 'Fugong');
INSERT INTO `Sys_Region` VALUES (2811, '533324', '貢山獨龍族怒族自治縣', 533300, 3, '中國,云南省,怒江傈僳族自治州,貢山獨龍族怒族自治縣', 98.6658, 27.7409, 'Gongshan');
INSERT INTO `Sys_Region` VALUES (2812, '533325', '蘭坪白族普米族自治縣', 533300, 3, '中國,云南省,怒江傈僳族自治州,蘭坪白族普米族自治縣', 99.4189, 26.4525, 'Lanping');
INSERT INTO `Sys_Region` VALUES (2813, '533400', '迪慶藏族自治州', 530000, 2, '中國,云南省,迪慶藏族自治州', 99.7065, 27.8269, 'Deqen');
INSERT INTO `Sys_Region` VALUES (2814, '533421', '香格里拉市', 533400, 3, '中國,云南省,迪慶藏族自治州,香格里拉市', 99.706, 27.8231, 'Xianggelila');
INSERT INTO `Sys_Region` VALUES (2815, '533422', '德欽縣', 533400, 3, '中國,云南省,迪慶藏族自治州,德欽縣', 98.9108, 28.4863, 'Deqin');
INSERT INTO `Sys_Region` VALUES (2816, '533423', '維西傈僳族自治縣', 533400, 3, '中國,云南省,迪慶藏族自治州,維西傈僳族自治縣', 99.284, 27.1793, 'Weixi');
INSERT INTO `Sys_Region` VALUES (2817, '540000', '西藏自治區', 100000, 1, '中國,西藏自治區', 91.1322, 29.6604, 'Tibet');
INSERT INTO `Sys_Region` VALUES (2818, '540100', '拉薩市', 540000, 2, '中國,西藏自治區,拉薩市', 91.1322, 29.6604, 'Lhasa');
INSERT INTO `Sys_Region` VALUES (2819, '540102', '城關區', 540100, 3, '中國,西藏自治區,拉薩市,城關區', 91.1386, 29.6531, 'Chengguan');
INSERT INTO `Sys_Region` VALUES (2820, '540121', '林周縣', 540100, 3, '中國,西藏自治區,拉薩市,林周縣', 91.2586, 29.8944, 'Linzhou');
INSERT INTO `Sys_Region` VALUES (2821, '540122', '當雄縣', 540100, 3, '中國,西藏自治區,拉薩市,當雄縣', 91.1008, 30.4831, 'Dangxiong');
INSERT INTO `Sys_Region` VALUES (2822, '540123', '尼木縣', 540100, 3, '中國,西藏自治區,拉薩市,尼木縣', 90.1638, 29.4335, 'Nimu');
INSERT INTO `Sys_Region` VALUES (2823, '540124', '曲水縣', 540100, 3, '中國,西藏自治區,拉薩市,曲水縣', 90.7319, 29.3564, 'Qushui');
INSERT INTO `Sys_Region` VALUES (2824, '540125', '堆龍德慶縣', 540100, 3, '中國,西藏自治區,拉薩市,堆龍德慶縣', 91.0003, 29.65, 'Duilongdeqing');
INSERT INTO `Sys_Region` VALUES (2825, '540126', '達孜縣', 540100, 3, '中國,西藏自治區,拉薩市,達孜縣', 91.3576, 29.6722, 'Dazi');
INSERT INTO `Sys_Region` VALUES (2826, '540127', '墨竹工卡縣', 540100, 3, '中國,西藏自治區,拉薩市,墨竹工卡縣', 91.7281, 29.8361, 'Mozhugongka');
INSERT INTO `Sys_Region` VALUES (2827, '540200', '日喀則市', 540000, 2, '中國,西藏自治區,日喀則市', 88.8849, 29.2638, 'Rikaze');
INSERT INTO `Sys_Region` VALUES (2828, '540202', '桑珠孜區', 540200, 3, '中國,西藏自治區,日喀則市,桑珠孜區', 88.8804, 29.2696, 'Sangzhuzi');
INSERT INTO `Sys_Region` VALUES (2829, '540221', '南木林縣', 540200, 3, '中國,西藏自治區,日喀則市,南木林縣', 89.0969, 29.6821, 'Nanmulin');
INSERT INTO `Sys_Region` VALUES (2830, '540222', '江孜縣', 540200, 3, '中國,西藏自治區,日喀則市,江孜縣', 89.6026, 28.9174, 'Jiangzi');
INSERT INTO `Sys_Region` VALUES (2831, '540223', '定日縣', 540200, 3, '中國,西藏自治區,日喀則市,定日縣', 87.1218, 28.6613, 'Dingri');
INSERT INTO `Sys_Region` VALUES (2832, '540224', '薩迦縣', 540200, 3, '中國,西藏自治區,日喀則市,薩迦縣', 88.0219, 28.903, 'Sajia');
INSERT INTO `Sys_Region` VALUES (2833, '540225', '拉孜縣', 540200, 3, '中國,西藏自治區,日喀則市,拉孜縣', 87.6341, 29.085, 'Lazi');
INSERT INTO `Sys_Region` VALUES (2834, '540226', '昂仁縣', 540200, 3, '中國,西藏自治區,日喀則市,昂仁縣', 87.2386, 29.295, 'Angren');
INSERT INTO `Sys_Region` VALUES (2835, '540227', '謝通門縣', 540200, 3, '中國,西藏自治區,日喀則市,謝通門縣', 88.2624, 29.4334, 'Xietongmen');
INSERT INTO `Sys_Region` VALUES (2836, '540228', '白朗縣', 540200, 3, '中國,西藏自治區,日喀則市,白朗縣', 89.262, 29.1055, 'Bailang');
INSERT INTO `Sys_Region` VALUES (2837, '540229', '仁布縣', 540200, 3, '中國,西藏自治區,日喀則市,仁布縣', 89.8423, 29.2301, 'Renbu');
INSERT INTO `Sys_Region` VALUES (2838, '540230', '康馬縣', 540200, 3, '中國,西藏自治區,日喀則市,康馬縣', 89.6853, 28.5567, 'Kangma');
INSERT INTO `Sys_Region` VALUES (2839, '540231', '定結縣', 540200, 3, '中國,西藏自治區,日喀則市,定結縣', 87.7726, 28.364, 'Dingjie');
INSERT INTO `Sys_Region` VALUES (2840, '540232', '仲巴縣', 540200, 3, '中國,西藏自治區,日喀則市,仲巴縣', 84.0295, 29.7659, 'Zhongba');
INSERT INTO `Sys_Region` VALUES (2841, '540233', '亞東縣', 540200, 3, '中國,西藏自治區,日喀則市,亞東縣', 88.908, 27.4839, 'Yadong');
INSERT INTO `Sys_Region` VALUES (2842, '540234', '吉隆縣', 540200, 3, '中國,西藏自治區,日喀則市,吉隆縣', 85.2985, 28.8538, 'Jilong');
INSERT INTO `Sys_Region` VALUES (2843, '540235', '聶拉木縣', 540200, 3, '中國,西藏自治區,日喀則市,聶拉木縣', 85.98, 28.1565, 'Nielamu');
INSERT INTO `Sys_Region` VALUES (2844, '540236', '薩嘎縣', 540200, 3, '中國,西藏自治區,日喀則市,薩嘎縣', 85.2341, 29.3294, 'Saga');
INSERT INTO `Sys_Region` VALUES (2845, '540237', '崗巴縣', 540200, 3, '中國,西藏自治區,日喀則市,崗巴縣', 88.5207, 28.275, 'Gangba');
INSERT INTO `Sys_Region` VALUES (2846, '540300', '昌都市', 540000, 2, '中國,西藏自治區,昌都市', 97.1785, 31.1369, 'Qamdo');
INSERT INTO `Sys_Region` VALUES (2847, '540302', '卡若區', 540300, 3, '中國,西藏自治區,昌都市,卡若區', 97.1804, 31.1385, 'Karuo');
INSERT INTO `Sys_Region` VALUES (2848, '540321', '江達縣', 540300, 3, '中國,西藏自治區,昌都市,江達縣', 98.2187, 31.5034, 'Jiangda');
INSERT INTO `Sys_Region` VALUES (2849, '540322', '貢覺縣', 540300, 3, '中國,西藏自治區,昌都市,貢覺縣', 98.2716, 30.8594, 'Gongjue');
INSERT INTO `Sys_Region` VALUES (2850, '540323', '類烏齊縣', 540300, 3, '中國,西藏自治區,昌都市,類烏齊縣', 96.6002, 31.2121, 'Leiwuqi');
INSERT INTO `Sys_Region` VALUES (2851, '540324', '丁青縣', 540300, 3, '中國,西藏自治區,昌都市,丁青縣', 95.5936, 31.4162, 'Dingqing');
INSERT INTO `Sys_Region` VALUES (2852, '540325', '察雅縣', 540300, 3, '中國,西藏自治區,昌都市,察雅縣', 97.5652, 30.6534, 'Chaya');
INSERT INTO `Sys_Region` VALUES (2853, '540326', '八宿縣', 540300, 3, '中國,西藏自治區,昌都市,八宿縣', 96.9176, 30.0535, 'Basu');
INSERT INTO `Sys_Region` VALUES (2854, '540327', '左貢縣', 540300, 3, '中國,西藏自治區,昌都市,左貢縣', 97.8443, 29.6711, 'Zuogong');
INSERT INTO `Sys_Region` VALUES (2855, '540328', '芒康縣', 540300, 3, '中國,西藏自治區,昌都市,芒康縣', 98.5938, 29.6795, 'Mangkang');
INSERT INTO `Sys_Region` VALUES (2856, '540329', '洛隆縣', 540300, 3, '中國,西藏自治區,昌都市,洛隆縣', 95.8264, 30.7405, 'Luolong');
INSERT INTO `Sys_Region` VALUES (2857, '540330', '邊壩縣', 540300, 3, '中國,西藏自治區,昌都市,邊壩縣', 94.7069, 30.9343, 'Bianba');
INSERT INTO `Sys_Region` VALUES (2858, '542200', '山南地區', 540000, 2, '中國,西藏自治區,山南地區', 91.7665, 29.236, 'Shannan');
INSERT INTO `Sys_Region` VALUES (2859, '542221', '乃東縣', 542200, 3, '中國,西藏自治區,山南地區,乃東縣', 91.7615, 29.2249, 'Naidong');
INSERT INTO `Sys_Region` VALUES (2860, '542222', '扎囊縣', 542200, 3, '中國,西藏自治區,山南地區,扎囊縣', 91.3329, 29.2399, 'Zhanang');
INSERT INTO `Sys_Region` VALUES (2861, '542223', '貢嘎縣', 542200, 3, '中國,西藏自治區,山南地區,貢嘎縣', 90.9887, 29.2941, 'Gongga');
INSERT INTO `Sys_Region` VALUES (2862, '542224', '桑日縣', 542200, 3, '中國,西藏自治區,山南地區,桑日縣', 92.0201, 29.2664, 'Sangri');
INSERT INTO `Sys_Region` VALUES (2863, '542225', '瓊結縣', 542200, 3, '中國,西藏自治區,山南地區,瓊結縣', 91.6809, 29.0263, 'Qiongjie');
INSERT INTO `Sys_Region` VALUES (2864, '542226', '曲松縣', 542200, 3, '中國,西藏自治區,山南地區,曲松縣', 92.2026, 29.0641, 'Qusong');
INSERT INTO `Sys_Region` VALUES (2865, '542227', '措美縣', 542200, 3, '中國,西藏自治區,山南地區,措美縣', 91.4324, 28.4379, 'Cuomei');
INSERT INTO `Sys_Region` VALUES (2866, '542228', '洛扎縣', 542200, 3, '中國,西藏自治區,山南地區,洛扎縣', 90.8604, 28.3872, 'Luozha');
INSERT INTO `Sys_Region` VALUES (2867, '542229', '加查縣', 542200, 3, '中國,西藏自治區,山南地區,加查縣', 92.577, 29.1397, 'Jiacha');
INSERT INTO `Sys_Region` VALUES (2868, '542231', '隆子縣', 542200, 3, '中國,西藏自治區,山南地區,隆子縣', 92.4615, 28.408, 'Longzi');
INSERT INTO `Sys_Region` VALUES (2869, '542232', '錯那縣', 542200, 3, '中國,西藏自治區,山南地區,錯那縣', 91.9575, 27.9922, 'Cuona');
INSERT INTO `Sys_Region` VALUES (2870, '542233', '浪卡子縣', 542200, 3, '中國,西藏自治區,山南地區,浪卡子縣', 90.4, 28.9695, 'Langkazi');
INSERT INTO `Sys_Region` VALUES (2871, '542400', '那曲地區', 540000, 2, '中國,西藏自治區,那曲地區', 92.0602, 31.476, 'Nagqu');
INSERT INTO `Sys_Region` VALUES (2872, '542421', '那曲縣', 542400, 3, '中國,西藏自治區,那曲地區,那曲縣', 92.0535, 31.4696, 'Naqu');
INSERT INTO `Sys_Region` VALUES (2873, '542422', '嘉黎縣', 542400, 3, '中國,西藏自治區,那曲地區,嘉黎縣', 93.2499, 30.6423, 'Jiali');
INSERT INTO `Sys_Region` VALUES (2874, '542423', '比如縣', 542400, 3, '中國,西藏自治區,那曲地區,比如縣', 93.6869, 31.4779, 'Biru');
INSERT INTO `Sys_Region` VALUES (2875, '542424', '聶榮縣', 542400, 3, '中國,西藏自治區,那曲地區,聶榮縣', 92.2957, 32.1119, 'Nierong');
INSERT INTO `Sys_Region` VALUES (2876, '542425', '安多縣', 542400, 3, '中國,西藏自治區,那曲地區,安多縣', 91.6795, 32.2612, 'Anduo');
INSERT INTO `Sys_Region` VALUES (2877, '542426', '申扎縣', 542400, 3, '中國,西藏自治區,那曲地區,申扎縣', 88.7078, 30.93, 'Shenzha');
INSERT INTO `Sys_Region` VALUES (2878, '542427', '索縣', 542400, 3, '中國,西藏自治區,那曲地區,索縣', 93.783, 31.8843, 'Suoxian');
INSERT INTO `Sys_Region` VALUES (2879, '542428', '班戈縣', 542400, 3, '中國,西藏自治區,那曲地區,班戈縣', 90.0191, 31.3615, 'Bange');
INSERT INTO `Sys_Region` VALUES (2880, '542429', '巴青縣', 542400, 3, '中國,西藏自治區,那曲地區,巴青縣', 94.0532, 31.9183, 'Baqing');
INSERT INTO `Sys_Region` VALUES (2881, '542430', '尼瑪縣', 542400, 3, '中國,西藏自治區,那曲地區,尼瑪縣', 87.2526, 31.7965, 'Nima');
INSERT INTO `Sys_Region` VALUES (2882, '542431', '雙湖縣', 542400, 3, '中國,西藏自治區,那曲地區,雙湖縣', 88.8378, 33.189, 'Shuanghu');
INSERT INTO `Sys_Region` VALUES (2883, '542500', '阿里地區', 540000, 2, '中國,西藏自治區,阿里地區', 80.1055, 32.5032, 'Ngari');
INSERT INTO `Sys_Region` VALUES (2884, '542521', '普蘭縣', 542500, 3, '中國,西藏自治區,阿里地區,普蘭縣', 81.177, 30.3, 'Pulan');
INSERT INTO `Sys_Region` VALUES (2885, '542522', '札達縣', 542500, 3, '中國,西藏自治區,阿里地區,札達縣', 79.8026, 31.4834, 'Zhada');
INSERT INTO `Sys_Region` VALUES (2886, '542523', '噶爾縣', 542500, 3, '中國,西藏自治區,阿里地區,噶爾縣', 80.0958, 32.5002, 'Gaer');
INSERT INTO `Sys_Region` VALUES (2887, '542524', '日土縣', 542500, 3, '中國,西藏自治區,阿里地區,日土縣', 79.7131, 33.3874, 'Ritu');
INSERT INTO `Sys_Region` VALUES (2888, '542525', '革吉縣', 542500, 3, '中國,西藏自治區,阿里地區,革吉縣', 81.151, 32.3964, 'Geji');
INSERT INTO `Sys_Region` VALUES (2889, '542526', '改則縣', 542500, 3, '中國,西藏自治區,阿里地區,改則縣', 84.063, 32.3045, 'Gaize');
INSERT INTO `Sys_Region` VALUES (2890, '542527', '措勤縣', 542500, 3, '中國,西藏自治區,阿里地區,措勤縣', 85.1662, 31.021, 'Cuoqin');
INSERT INTO `Sys_Region` VALUES (2891, '542600', '林芝地區', 540000, 2, '中國,西藏自治區,林芝地區', 94.3624, 29.6547, 'Nyingchi');
INSERT INTO `Sys_Region` VALUES (2892, '542621', '林芝縣', 542600, 3, '中國,西藏自治區,林芝地區,林芝縣', 94.4839, 29.5756, 'Linzhi');
INSERT INTO `Sys_Region` VALUES (2893, '542622', '工布江達縣', 542600, 3, '中國,西藏自治區,林芝地區,工布江達縣', 93.2452, 29.8858, 'Gongbujiangda');
INSERT INTO `Sys_Region` VALUES (2894, '542623', '米林縣', 542600, 3, '中國,西藏自治區,林芝地區,米林縣', 94.2132, 29.2153, 'Milin');
INSERT INTO `Sys_Region` VALUES (2895, '542624', '墨脫縣', 542600, 3, '中國,西藏自治區,林芝地區,墨脫縣', 95.3316, 29.327, 'Motuo');
INSERT INTO `Sys_Region` VALUES (2896, '542625', '波密縣', 542600, 3, '中國,西藏自治區,林芝地區,波密縣', 95.771, 29.8591, 'Bomi');
INSERT INTO `Sys_Region` VALUES (2897, '542626', '察隅縣', 542600, 3, '中國,西藏自治區,林芝地區,察隅縣', 97.4668, 28.6618, 'Chayu');
INSERT INTO `Sys_Region` VALUES (2898, '542627', '朗縣', 542600, 3, '中國,西藏自治區,林芝地區,朗縣', 93.0754, 29.0455, 'Langxian');
INSERT INTO `Sys_Region` VALUES (2899, '610000', '陜西省', 100000, 1, '中國,陜西省', 108.948, 34.2632, 'Shaanxi');
INSERT INTO `Sys_Region` VALUES (2900, '610100', '西安市', 610000, 2, '中國,陜西省,西安市', 108.948, 34.2632, 'Xian');
INSERT INTO `Sys_Region` VALUES (2901, '610102', '新城區', 610100, 3, '中國,陜西省,西安市,新城區', 108.961, 34.2664, 'Xincheng');
INSERT INTO `Sys_Region` VALUES (2902, '610103', '碑林區', 610100, 3, '中國,陜西省,西安市,碑林區', 108.934, 34.2304, 'Beilin');
INSERT INTO `Sys_Region` VALUES (2903, '610104', '蓮湖區', 610100, 3, '中國,陜西省,西安市,蓮湖區', 108.94, 34.2671, 'Lianhu');
INSERT INTO `Sys_Region` VALUES (2904, '610111', '灞橋區', 610100, 3, '中國,陜西省,西安市,灞橋區', 109.065, 34.2726, 'Baqiao');
INSERT INTO `Sys_Region` VALUES (2905, '610112', '未央區', 610100, 3, '中國,陜西省,西安市,未央區', 108.947, 34.293, 'Weiyang');
INSERT INTO `Sys_Region` VALUES (2906, '610113', '雁塔區', 610100, 3, '中國,陜西省,西安市,雁塔區', 108.949, 34.2225, 'Yanta');
INSERT INTO `Sys_Region` VALUES (2907, '610114', '閻良區', 610100, 3, '中國,陜西省,西安市,閻良區', 109.226, 34.6622, 'Yanliang');
INSERT INTO `Sys_Region` VALUES (2908, '610115', '臨潼區', 610100, 3, '中國,陜西省,西安市,臨潼區', 109.214, 34.3666, 'Lintong');
INSERT INTO `Sys_Region` VALUES (2909, '610116', '長安區', 610100, 3, '中國,陜西省,西安市,長安區', 108.946, 34.1556, 'Changan');
INSERT INTO `Sys_Region` VALUES (2910, '610122', '藍田縣', 610100, 3, '中國,陜西省,西安市,藍田縣', 109.323, 34.1513, 'Lantian');
INSERT INTO `Sys_Region` VALUES (2911, '610124', '周至縣', 610100, 3, '中國,陜西省,西安市,周至縣', 108.222, 34.1634, 'Zhouzhi');
INSERT INTO `Sys_Region` VALUES (2912, '610125', '戶縣', 610100, 3, '中國,陜西省,西安市,戶縣', 108.605, 34.1086, 'Huxian');
INSERT INTO `Sys_Region` VALUES (2913, '610126', '高陵區', 610100, 3, '中國,陜西省,西安市,高陵區', 109.088, 34.5348, 'Gaoling');
INSERT INTO `Sys_Region` VALUES (2914, '610200', '銅川市', 610000, 2, '中國,陜西省,銅川市', 108.963, 34.9089, 'Tongchuan');
INSERT INTO `Sys_Region` VALUES (2915, '610202', '王益區', 610200, 3, '中國,陜西省,銅川市,王益區', 109.076, 35.069, 'Wangyi');
INSERT INTO `Sys_Region` VALUES (2916, '610203', '印臺區', 610200, 3, '中國,陜西省,銅川市,印臺區', 109.102, 35.1169, 'Yintai');
INSERT INTO `Sys_Region` VALUES (2917, '610204', '耀州區', 610200, 3, '中國,陜西省,銅川市,耀州區', 108.986, 34.9131, 'Yaozhou');
INSERT INTO `Sys_Region` VALUES (2918, '610222', '宜君縣', 610200, 3, '中國,陜西省,銅川市,宜君縣', 109.118, 35.4011, 'Yijun');
INSERT INTO `Sys_Region` VALUES (2919, '610300', '寶雞市', 610000, 2, '中國,陜西省,寶雞市', 107.145, 34.3693, 'Baoji');
INSERT INTO `Sys_Region` VALUES (2920, '610302', '渭濱區', 610300, 3, '中國,陜西省,寶雞市,渭濱區', 107.15, 34.3712, 'Weibin');
INSERT INTO `Sys_Region` VALUES (2921, '610303', '金臺區', 610300, 3, '中國,陜西省,寶雞市,金臺區', 107.147, 34.3761, 'Jintai');
INSERT INTO `Sys_Region` VALUES (2922, '610304', '陳倉區', 610300, 3, '中國,陜西省,寶雞市,陳倉區', 107.387, 34.3545, 'Chencang');
INSERT INTO `Sys_Region` VALUES (2923, '610322', '鳳翔縣', 610300, 3, '中國,陜西省,寶雞市,鳳翔縣', 107.396, 34.5232, 'Fengxiang');
INSERT INTO `Sys_Region` VALUES (2924, '610323', '岐山縣', 610300, 3, '中國,陜西省,寶雞市,岐山縣', 107.622, 34.4438, 'Qishan');
INSERT INTO `Sys_Region` VALUES (2925, '610324', '扶風縣', 610300, 3, '中國,陜西省,寶雞市,扶風縣', 107.9, 34.3752, 'Fufeng');
INSERT INTO `Sys_Region` VALUES (2926, '610326', '眉縣', 610300, 3, '中國,陜西省,寶雞市,眉縣', 107.751, 34.2757, 'Meixian');
INSERT INTO `Sys_Region` VALUES (2927, '610327', '隴縣', 610300, 3, '中國,陜西省,寶雞市,隴縣', 106.859, 34.894, 'Longxian');
INSERT INTO `Sys_Region` VALUES (2928, '610328', '千陽縣', 610300, 3, '中國,陜西省,寶雞市,千陽縣', 107.13, 34.6422, 'Qianyang');
INSERT INTO `Sys_Region` VALUES (2929, '610329', '麟游縣', 610300, 3, '中國,陜西省,寶雞市,麟游縣', 107.796, 34.6784, 'Linyou');
INSERT INTO `Sys_Region` VALUES (2930, '610330', '鳳縣', 610300, 3, '中國,陜西省,寶雞市,鳳縣', 106.524, 33.9117, 'Fengxian');
INSERT INTO `Sys_Region` VALUES (2931, '610331', '太白縣', 610300, 3, '中國,陜西省,寶雞市,太白縣', 107.316, 34.0621, 'Taibai');
INSERT INTO `Sys_Region` VALUES (2932, '610400', '咸陽市', 610000, 2, '中國,陜西省,咸陽市', 108.705, 34.3334, 'Xianyang');
INSERT INTO `Sys_Region` VALUES (2933, '610402', '秦都區', 610400, 3, '中國,陜西省,咸陽市,秦都區', 108.715, 34.338, 'Qindu');
INSERT INTO `Sys_Region` VALUES (2934, '610403', '楊陵區', 610400, 3, '中國,陜西省,咸陽市,楊陵區', 108.083, 34.2704, 'Yangling');
INSERT INTO `Sys_Region` VALUES (2935, '610404', '渭城區', 610400, 3, '中國,陜西省,咸陽市,渭城區', 108.722, 34.332, 'Weicheng');
INSERT INTO `Sys_Region` VALUES (2936, '610422', '三原縣', 610400, 3, '中國,陜西省,咸陽市,三原縣', 108.932, 34.6156, 'Sanyuan');
INSERT INTO `Sys_Region` VALUES (2937, '610423', '涇陽縣', 610400, 3, '中國,陜西省,咸陽市,涇陽縣', 108.843, 34.5271, 'Jingyang');
INSERT INTO `Sys_Region` VALUES (2938, '610424', '乾縣', 610400, 3, '中國,陜西省,咸陽市,乾縣', 108.242, 34.5295, 'Qianxian');
INSERT INTO `Sys_Region` VALUES (2939, '610425', '禮泉縣', 610400, 3, '中國,陜西省,咸陽市,禮泉縣', 108.426, 34.4846, 'Liquan');
INSERT INTO `Sys_Region` VALUES (2940, '610426', '永壽縣', 610400, 3, '中國,陜西省,咸陽市,永壽縣', 108.145, 34.6908, 'Yongshou');
INSERT INTO `Sys_Region` VALUES (2941, '610427', '彬縣', 610400, 3, '中國,陜西省,咸陽市,彬縣', 108.085, 35.0342, 'Binxian');
INSERT INTO `Sys_Region` VALUES (2942, '610428', '長武縣', 610400, 3, '中國,陜西省,咸陽市,長武縣', 107.795, 35.2067, 'Changwu');
INSERT INTO `Sys_Region` VALUES (2943, '610429', '旬邑縣', 610400, 3, '中國,陜西省,咸陽市,旬邑縣', 108.334, 35.1134, 'Xunyi');
INSERT INTO `Sys_Region` VALUES (2944, '610430', '淳化縣', 610400, 3, '中國,陜西省,咸陽市,淳化縣', 108.58, 34.7989, 'Chunhua');
INSERT INTO `Sys_Region` VALUES (2945, '610431', '武功縣', 610400, 3, '中國,陜西省,咸陽市,武功縣', 108.204, 34.26, 'Wugong');
INSERT INTO `Sys_Region` VALUES (2946, '610481', '興平市', 610400, 3, '中國,陜西省,咸陽市,興平市', 108.491, 34.2979, 'Xingping');
INSERT INTO `Sys_Region` VALUES (2947, '610500', '渭南市', 610000, 2, '中國,陜西省,渭南市', 109.503, 34.4994, 'Weinan');
INSERT INTO `Sys_Region` VALUES (2948, '610502', '臨渭區', 610500, 3, '中國,陜西省,渭南市,臨渭區', 109.493, 34.4982, 'Linwei');
INSERT INTO `Sys_Region` VALUES (2949, '610521', '華縣', 610500, 3, '中國,陜西省,渭南市,華縣', 109.772, 34.5126, 'Huaxian');
INSERT INTO `Sys_Region` VALUES (2950, '610522', '潼關縣', 610500, 3, '中國,陜西省,渭南市,潼關縣', 110.244, 34.5428, 'Tongguan');
INSERT INTO `Sys_Region` VALUES (2951, '610523', '大荔縣', 610500, 3, '中國,陜西省,渭南市,大荔縣', 109.942, 34.7957, 'Dali');
INSERT INTO `Sys_Region` VALUES (2952, '610524', '合陽縣', 610500, 3, '中國,陜西省,渭南市,合陽縣', 110.149, 35.238, 'Heyang');
INSERT INTO `Sys_Region` VALUES (2953, '610525', '澄城縣', 610500, 3, '中國,陜西省,渭南市,澄城縣', 109.934, 35.184, 'Chengcheng');
INSERT INTO `Sys_Region` VALUES (2954, '610526', '蒲城縣', 610500, 3, '中國,陜西省,渭南市,蒲城縣', 109.59, 34.9568, 'Pucheng');
INSERT INTO `Sys_Region` VALUES (2955, '610527', '白水縣', 610500, 3, '中國,陜西省,渭南市,白水縣', 109.593, 35.1786, 'Baishui');
INSERT INTO `Sys_Region` VALUES (2956, '610528', '富平縣', 610500, 3, '中國,陜西省,渭南市,富平縣', 109.18, 34.7511, 'Fuping');
INSERT INTO `Sys_Region` VALUES (2957, '610581', '韓城市', 610500, 3, '中國,陜西省,渭南市,韓城市', 110.442, 35.4793, 'Hancheng');
INSERT INTO `Sys_Region` VALUES (2958, '610582', '華陰市', 610500, 3, '中國,陜西省,渭南市,華陰市', 110.088, 34.5661, 'Huayin');
INSERT INTO `Sys_Region` VALUES (2959, '610600', '延安市', 610000, 2, '中國,陜西省,延安市', 109.491, 36.5965, 'Yanan');
INSERT INTO `Sys_Region` VALUES (2960, '610602', '寶塔區', 610600, 3, '中國,陜西省,延安市,寶塔區', 109.493, 36.5915, 'Baota');
INSERT INTO `Sys_Region` VALUES (2961, '610621', '延長縣', 610600, 3, '中國,陜西省,延安市,延長縣', 110.011, 36.579, 'Yanchang');
INSERT INTO `Sys_Region` VALUES (2962, '610622', '延川縣', 610600, 3, '中國,陜西省,延安市,延川縣', 110.194, 36.8782, 'Yanchuan');
INSERT INTO `Sys_Region` VALUES (2963, '610623', '子長縣', 610600, 3, '中國,陜西省,延安市,子長縣', 109.675, 37.1425, 'Zichang');
INSERT INTO `Sys_Region` VALUES (2964, '610624', '安塞縣', 610600, 3, '中國,陜西省,延安市,安塞縣', 109.327, 36.8651, 'Ansai');
INSERT INTO `Sys_Region` VALUES (2965, '610625', '志丹縣', 610600, 3, '中國,陜西省,延安市,志丹縣', 108.768, 36.8218, 'Zhidan');
INSERT INTO `Sys_Region` VALUES (2966, '610626', '吳起縣', 610600, 3, '中國,陜西省,延安市,吳起縣', 108.176, 36.9278, 'Wuqi');
INSERT INTO `Sys_Region` VALUES (2967, '610627', '甘泉縣', 610600, 3, '中國,陜西省,延安市,甘泉縣', 109.35, 36.2775, 'Ganquan');
INSERT INTO `Sys_Region` VALUES (2968, '610628', '富縣', 610600, 3, '中國,陜西省,延安市,富縣', 109.379, 35.988, 'Fuxian');
INSERT INTO `Sys_Region` VALUES (2969, '610629', '洛川縣', 610600, 3, '中國,陜西省,延安市,洛川縣', 109.433, 35.7608, 'Luochuan');
INSERT INTO `Sys_Region` VALUES (2970, '610630', '宜川縣', 610600, 3, '中國,陜西省,延安市,宜川縣', 110.172, 36.0473, 'Yichuan');
INSERT INTO `Sys_Region` VALUES (2971, '610631', '黃龍縣', 610600, 3, '中國,陜西省,延安市,黃龍縣', 109.843, 35.5835, 'Huanglong');
INSERT INTO `Sys_Region` VALUES (2972, '610632', '黃陵縣', 610600, 3, '中國,陜西省,延安市,黃陵縣', 109.263, 35.5836, 'Huangling');
INSERT INTO `Sys_Region` VALUES (2973, '610700', '漢中市', 610000, 2, '中國,陜西省,漢中市', 107.029, 33.0777, 'Hanzhong');
INSERT INTO `Sys_Region` VALUES (2974, '610702', '漢臺區', 610700, 3, '中國,陜西省,漢中市,漢臺區', 107.032, 33.0677, 'Hantai');
INSERT INTO `Sys_Region` VALUES (2975, '610721', '南鄭縣', 610700, 3, '中國,陜西省,漢中市,南鄭縣', 106.94, 33.003, 'Nanzheng');
INSERT INTO `Sys_Region` VALUES (2976, '610722', '城固縣', 610700, 3, '中國,陜西省,漢中市,城固縣', 107.334, 33.1566, 'Chenggu');
INSERT INTO `Sys_Region` VALUES (2977, '610723', '洋縣', 610700, 3, '中國,陜西省,漢中市,洋縣', 107.547, 33.221, 'Yangxian');
INSERT INTO `Sys_Region` VALUES (2978, '610724', '西鄉縣', 610700, 3, '中國,陜西省,漢中市,西鄉縣', 107.769, 32.9841, 'Xixiang');
INSERT INTO `Sys_Region` VALUES (2979, '610725', '勉縣', 610700, 3, '中國,陜西省,漢中市,勉縣', 106.676, 33.1527, 'Mianxian');
INSERT INTO `Sys_Region` VALUES (2980, '610726', '寧強縣', 610700, 3, '中國,陜西省,漢中市,寧強縣', 106.26, 32.8288, 'Ningqiang');
INSERT INTO `Sys_Region` VALUES (2981, '610727', '略陽縣', 610700, 3, '中國,陜西省,漢中市,略陽縣', 106.154, 33.3301, 'Lueyang');
INSERT INTO `Sys_Region` VALUES (2982, '610728', '鎮巴縣', 610700, 3, '中國,陜西省,漢中市,鎮巴縣', 107.896, 32.5349, 'Zhenba');
INSERT INTO `Sys_Region` VALUES (2983, '610729', '留壩縣', 610700, 3, '中國,陜西省,漢中市,留壩縣', 106.922, 33.6161, 'Liuba');
INSERT INTO `Sys_Region` VALUES (2984, '610730', '佛坪縣', 610700, 3, '中國,陜西省,漢中市,佛坪縣', 107.99, 33.525, 'Foping');
INSERT INTO `Sys_Region` VALUES (2985, '610800', '榆林市', 610000, 2, '中國,陜西省,榆林市', 109.741, 38.2902, 'Yulin');
INSERT INTO `Sys_Region` VALUES (2986, '610802', '榆陽區', 610800, 3, '中國,陜西省,榆林市,榆陽區', 109.735, 38.2784, 'Yuyang');
INSERT INTO `Sys_Region` VALUES (2987, '610821', '神木縣', 610800, 3, '中國,陜西省,榆林市,神木縣', 110.499, 38.8423, 'Shenmu');
INSERT INTO `Sys_Region` VALUES (2988, '610822', '府谷縣', 610800, 3, '中國,陜西省,榆林市,府谷縣', 111.067, 39.028, 'Fugu');
INSERT INTO `Sys_Region` VALUES (2989, '610823', '橫山縣', 610800, 3, '中國,陜西省,榆林市,橫山縣', 109.296, 37.958, 'Hengshan');
INSERT INTO `Sys_Region` VALUES (2990, '610824', '靖邊縣', 610800, 3, '中國,陜西省,榆林市,靖邊縣', 108.794, 37.5994, 'Jingbian');
INSERT INTO `Sys_Region` VALUES (2991, '610825', '定邊縣', 610800, 3, '中國,陜西省,榆林市,定邊縣', 107.598, 37.5904, 'Dingbian');
INSERT INTO `Sys_Region` VALUES (2992, '610826', '綏德縣', 610800, 3, '中國,陜西省,榆林市,綏德縣', 110.261, 37.4978, 'Suide');
INSERT INTO `Sys_Region` VALUES (2993, '610827', '米脂縣', 610800, 3, '中國,陜西省,榆林市,米脂縣', 110.184, 37.7553, 'Mizhi');
INSERT INTO `Sys_Region` VALUES (2994, '610828', '佳縣', 610800, 3, '中國,陜西省,榆林市,佳縣', 110.494, 38.0225, 'Jiaxian');
INSERT INTO `Sys_Region` VALUES (2995, '610829', '吳堡縣', 610800, 3, '中國,陜西省,榆林市,吳堡縣', 110.745, 37.4571, 'Wubu');
INSERT INTO `Sys_Region` VALUES (2996, '610830', '清澗縣', 610800, 3, '中國,陜西省,榆林市,清澗縣', 110.122, 37.0885, 'Qingjian');
INSERT INTO `Sys_Region` VALUES (2997, '610831', '子洲縣', 610800, 3, '中國,陜西省,榆林市,子洲縣', 110.035, 37.6124, 'Zizhou');
INSERT INTO `Sys_Region` VALUES (2998, '610900', '安康市', 610000, 2, '中國,陜西省,安康市', 109.029, 32.6903, 'Ankang');
INSERT INTO `Sys_Region` VALUES (2999, '610902', '漢濱區', 610900, 3, '中國,陜西省,安康市,漢濱區', 109.027, 32.6952, 'Hanbin');
INSERT INTO `Sys_Region` VALUES (3000, '610921', '漢陰縣', 610900, 3, '中國,陜西省,安康市,漢陰縣', 108.511, 32.8913, 'Hanyin');
INSERT INTO `Sys_Region` VALUES (3001, '610922', '石泉縣', 610900, 3, '中國,陜西省,安康市,石泉縣', 108.248, 33.0397, 'Shiquan');
INSERT INTO `Sys_Region` VALUES (3002, '610923', '寧陜縣', 610900, 3, '中國,陜西省,安康市,寧陜縣', 108.315, 33.3173, 'Ningshan');
INSERT INTO `Sys_Region` VALUES (3003, '610924', '紫陽縣', 610900, 3, '中國,陜西省,安康市,紫陽縣', 108.537, 32.5211, 'Ziyang');
INSERT INTO `Sys_Region` VALUES (3004, '610925', '嵐皋縣', 610900, 3, '中國,陜西省,安康市,嵐皋縣', 108.903, 32.3079, 'Langao');
INSERT INTO `Sys_Region` VALUES (3005, '610926', '平利縣', 610900, 3, '中國,陜西省,安康市,平利縣', 109.358, 32.3911, 'Pingli');
INSERT INTO `Sys_Region` VALUES (3006, '610927', '鎮坪縣', 610900, 3, '中國,陜西省,安康市,鎮坪縣', 109.525, 31.8833, 'Zhenping');
INSERT INTO `Sys_Region` VALUES (3007, '610928', '旬陽縣', 610900, 3, '中國,陜西省,安康市,旬陽縣', 109.362, 32.8321, 'Xunyang');
INSERT INTO `Sys_Region` VALUES (3008, '610929', '白河縣', 610900, 3, '中國,陜西省,安康市,白河縣', 110.113, 32.8096, 'Baihe');
INSERT INTO `Sys_Region` VALUES (3009, '611000', '商洛市', 610000, 2, '中國,陜西省,商洛市', 109.94, 33.8683, 'Shangluo');
INSERT INTO `Sys_Region` VALUES (3010, '611002', '商州區', 611000, 3, '中國,陜西省,商洛市,商州區', 109.941, 33.8627, 'Shangzhou');
INSERT INTO `Sys_Region` VALUES (3011, '611021', '洛南縣', 611000, 3, '中國,陜西省,商洛市,洛南縣', 110.146, 34.0899, 'Luonan');
INSERT INTO `Sys_Region` VALUES (3012, '611022', '丹鳳縣', 611000, 3, '中國,陜西省,商洛市,丹鳳縣', 110.335, 33.6947, 'Danfeng');
INSERT INTO `Sys_Region` VALUES (3013, '611023', '商南縣', 611000, 3, '中國,陜西省,商洛市,商南縣', 110.884, 33.5258, 'Shangnan');
INSERT INTO `Sys_Region` VALUES (3014, '611024', '山陽縣', 611000, 3, '中國,陜西省,商洛市,山陽縣', 109.888, 33.5293, 'Shanyang');
INSERT INTO `Sys_Region` VALUES (3015, '611025', '鎮安縣', 611000, 3, '中國,陜西省,商洛市,鎮安縣', 109.154, 33.4237, 'Zhenan');
INSERT INTO `Sys_Region` VALUES (3016, '611026', '柞水縣', 611000, 3, '中國,陜西省,商洛市,柞水縣', 109.111, 33.6831, 'Zhashui');
INSERT INTO `Sys_Region` VALUES (3017, '611100', '西咸新區', 610000, 2, '中國,陜西省,西咸新區', 108.811, 34.3071, 'Xixian');
INSERT INTO `Sys_Region` VALUES (3018, '611101', '空港新城', 611100, 3, '中國,陜西省,西咸新區,空港新城', 108.761, 34.4409, 'Konggang');
INSERT INTO `Sys_Region` VALUES (3019, '611102', '灃東新城', 611100, 3, '中國,陜西省,西咸新區,灃東新城', 108.83, 34.2674, 'Fengdong');
INSERT INTO `Sys_Region` VALUES (3020, '611103', '秦漢新城', 611100, 3, '中國,陜西省,西咸新區,秦漢新城', 108.838, 34.3865, 'Qinhan');
INSERT INTO `Sys_Region` VALUES (3021, '611104', '灃西新城', 611100, 3, '中國,陜西省,西咸新區,灃西新城', 108.712, 34.1905, 'Fengxi');
INSERT INTO `Sys_Region` VALUES (3022, '611105', '涇河新城', 611100, 3, '中國,陜西省,西咸新區,涇河新城', 109.05, 34.4606, 'Jinghe');
INSERT INTO `Sys_Region` VALUES (3023, '620000', '甘肅省', 100000, 1, '中國,甘肅省', 103.824, 36.058, 'Gansu');
INSERT INTO `Sys_Region` VALUES (3024, '620100', '蘭州市', 620000, 2, '中國,甘肅省,蘭州市', 103.824, 36.058, 'Lanzhou');
INSERT INTO `Sys_Region` VALUES (3025, '620102', '城關區', 620100, 3, '中國,甘肅省,蘭州市,城關區', 103.825, 36.0573, 'Chengguan');
INSERT INTO `Sys_Region` VALUES (3026, '620103', '七里河區', 620100, 3, '中國,甘肅省,蘭州市,七里河區', 103.786, 36.0658, 'Qilihe');
INSERT INTO `Sys_Region` VALUES (3027, '620104', '西固區', 620100, 3, '中國,甘肅省,蘭州市,西固區', 103.628, 36.0886, 'Xigu');
INSERT INTO `Sys_Region` VALUES (3028, '620105', '安寧區', 620100, 3, '中國,甘肅省,蘭州市,安寧區', 103.719, 36.1038, 'Anning');
INSERT INTO `Sys_Region` VALUES (3029, '620111', '紅古區', 620100, 3, '中國,甘肅省,蘭州市,紅古區', 102.86, 36.3454, 'Honggu');
INSERT INTO `Sys_Region` VALUES (3030, '620121', '永登縣', 620100, 3, '中國,甘肅省,蘭州市,永登縣', 103.261, 36.7352, 'Yongdeng');
INSERT INTO `Sys_Region` VALUES (3031, '620122', '皋蘭縣', 620100, 3, '中國,甘肅省,蘭州市,皋蘭縣', 103.945, 36.3321, 'Gaolan');
INSERT INTO `Sys_Region` VALUES (3032, '620123', '榆中縣', 620100, 3, '中國,甘肅省,蘭州市,榆中縣', 104.115, 35.8442, 'Yuzhong');
INSERT INTO `Sys_Region` VALUES (3033, '620200', '嘉峪關市', 620000, 2, '中國,甘肅省,嘉峪關市', 98.2773, 39.7865, 'Jiayuguan');
INSERT INTO `Sys_Region` VALUES (3034, '620201', '雄關區', 620200, 3, '中國,甘肅省,嘉峪關市,雄關區', 98.2774, 39.7793, 'Xiongguan');
INSERT INTO `Sys_Region` VALUES (3035, '620202', '長城區', 620200, 3, '中國,甘肅省,嘉峪關市,長城區', 98.2735, 39.7874, 'Changcheng');
INSERT INTO `Sys_Region` VALUES (3036, '620203', '鏡鐵區', 620200, 3, '中國,甘肅省,嘉峪關市,鏡鐵區', 98.2773, 39.7865, 'Jingtie');
INSERT INTO `Sys_Region` VALUES (3037, '620300', '金昌市', 620000, 2, '中國,甘肅省,金昌市', 102.188, 38.5142, 'Jinchang');
INSERT INTO `Sys_Region` VALUES (3038, '620302', '金川區', 620300, 3, '中國,甘肅省,金昌市,金川區', 102.194, 38.521, 'Jinchuan');
INSERT INTO `Sys_Region` VALUES (3039, '620321', '永昌縣', 620300, 3, '中國,甘肅省,金昌市,永昌縣', 101.972, 38.2471, 'Yongchang');
INSERT INTO `Sys_Region` VALUES (3040, '620400', '白銀市', 620000, 2, '中國,甘肅省,白銀市', 104.174, 36.5457, 'Baiyin');
INSERT INTO `Sys_Region` VALUES (3041, '620402', '白銀區', 620400, 3, '中國,甘肅省,白銀市,白銀區', 104.174, 36.5441, 'Baiyin');
INSERT INTO `Sys_Region` VALUES (3042, '620403', '平川區', 620400, 3, '中國,甘肅省,白銀市,平川區', 104.825, 36.7277, 'Pingchuan');
INSERT INTO `Sys_Region` VALUES (3043, '620421', '靖遠縣', 620400, 3, '中國,甘肅省,白銀市,靖遠縣', 104.683, 36.566, 'Jingyuan');
INSERT INTO `Sys_Region` VALUES (3044, '620422', '會寧縣', 620400, 3, '中國,甘肅省,白銀市,會寧縣', 105.053, 35.6963, 'Huining');
INSERT INTO `Sys_Region` VALUES (3045, '620423', '景泰縣', 620400, 3, '中國,甘肅省,白銀市,景泰縣', 104.063, 37.1836, 'Jingtai');
INSERT INTO `Sys_Region` VALUES (3046, '620500', '天水市', 620000, 2, '中國,甘肅省,天水市', 105.725, 34.5785, 'Tianshui');
INSERT INTO `Sys_Region` VALUES (3047, '620502', '秦州區', 620500, 3, '中國,甘肅省,天水市,秦州區', 105.724, 34.5809, 'Qinzhou');
INSERT INTO `Sys_Region` VALUES (3048, '620503', '麥積區', 620500, 3, '中國,甘肅省,天水市,麥積區', 105.89, 34.5707, 'Maiji');
INSERT INTO `Sys_Region` VALUES (3049, '620521', '清水縣', 620500, 3, '中國,甘肅省,天水市,清水縣', 106.137, 34.7503, 'Qingshui');
INSERT INTO `Sys_Region` VALUES (3050, '620522', '秦安縣', 620500, 3, '中國,甘肅省,天水市,秦安縣', 105.67, 34.8589, 'Qinan');
INSERT INTO `Sys_Region` VALUES (3051, '620523', '甘谷縣', 620500, 3, '中國,甘肅省,天水市,甘谷縣', 105.333, 34.7366, 'Gangu');
INSERT INTO `Sys_Region` VALUES (3052, '620524', '武山縣', 620500, 3, '中國,甘肅省,天水市,武山縣', 104.884, 34.7212, 'Wushan');
INSERT INTO `Sys_Region` VALUES (3053, '620525', '張家川回族自治縣', 620500, 3, '中國,甘肅省,天水市,張家川回族自治縣', 106.216, 34.9958, 'Zhangjiachuan');
INSERT INTO `Sys_Region` VALUES (3054, '620600', '武威市', 620000, 2, '中國,甘肅省,武威市', 102.635, 37.93, 'Wuwei');
INSERT INTO `Sys_Region` VALUES (3055, '620602', '涼州區', 620600, 3, '中國,甘肅省,武威市,涼州區', 102.642, 37.9283, 'Liangzhou');
INSERT INTO `Sys_Region` VALUES (3056, '620621', '民勤縣', 620600, 3, '中國,甘肅省,武威市,民勤縣', 103.09, 38.6249, 'Minqin');
INSERT INTO `Sys_Region` VALUES (3057, '620622', '古浪縣', 620600, 3, '中國,甘肅省,武威市,古浪縣', 102.892, 37.4651, 'Gulang');
INSERT INTO `Sys_Region` VALUES (3058, '620623', '天祝藏族自治縣', 620600, 3, '中國,甘肅省,武威市,天祝藏族自治縣', 103.136, 36.9771, 'Tianzhu');
INSERT INTO `Sys_Region` VALUES (3059, '620700', '張掖市', 620000, 2, '中國,甘肅省,張掖市', 100.455, 38.9329, 'Zhangye');
INSERT INTO `Sys_Region` VALUES (3060, '620702', '甘州區', 620700, 3, '中國,甘肅省,張掖市,甘州區', 100.453, 38.9295, 'Ganzhou');
INSERT INTO `Sys_Region` VALUES (3061, '620721', '肅南裕固族自治縣', 620700, 3, '中國,甘肅省,張掖市,肅南裕固族自治縣', 99.6141, 38.8378, 'Sunan');
INSERT INTO `Sys_Region` VALUES (3062, '620722', '民樂縣', 620700, 3, '中國,甘肅省,張掖市,民樂縣', 100.811, 38.4348, 'Minle');
INSERT INTO `Sys_Region` VALUES (3063, '620723', '臨澤縣', 620700, 3, '中國,甘肅省,張掖市,臨澤縣', 100.164, 39.1525, 'Linze');
INSERT INTO `Sys_Region` VALUES (3064, '620724', '高臺縣', 620700, 3, '中國,甘肅省,張掖市,高臺縣', 99.8192, 39.3783, 'Gaotai');
INSERT INTO `Sys_Region` VALUES (3065, '620725', '山丹縣', 620700, 3, '中國,甘肅省,張掖市,山丹縣', 101.094, 38.7847, 'Shandan');
INSERT INTO `Sys_Region` VALUES (3066, '620800', '平涼市', 620000, 2, '中國,甘肅省,平涼市', 106.685, 35.5428, 'Pingliang');
INSERT INTO `Sys_Region` VALUES (3067, '620802', '崆峒區', 620800, 3, '中國,甘肅省,平涼市,崆峒區', 106.675, 35.5426, 'Kongtong');
INSERT INTO `Sys_Region` VALUES (3068, '620821', '涇川縣', 620800, 3, '中國,甘肅省,平涼市,涇川縣', 107.366, 35.3322, 'Jingchuan');
INSERT INTO `Sys_Region` VALUES (3069, '620822', '靈臺縣', 620800, 3, '中國,甘肅省,平涼市,靈臺縣', 107.617, 35.0677, 'Lingtai');
INSERT INTO `Sys_Region` VALUES (3070, '620823', '崇信縣', 620800, 3, '中國,甘肅省,平涼市,崇信縣', 107.037, 35.3034, 'Chongxin');
INSERT INTO `Sys_Region` VALUES (3071, '620824', '華亭縣', 620800, 3, '中國,甘肅省,平涼市,華亭縣', 106.655, 35.2183, 'Huating');
INSERT INTO `Sys_Region` VALUES (3072, '620825', '莊浪縣', 620800, 3, '中國,甘肅省,平涼市,莊浪縣', 106.037, 35.2024, 'Zhuanglang');
INSERT INTO `Sys_Region` VALUES (3073, '620826', '靜寧縣', 620800, 3, '中國,甘肅省,平涼市,靜寧縣', 105.727, 35.5199, 'Jingning');
INSERT INTO `Sys_Region` VALUES (3074, '620900', '酒泉市', 620000, 2, '中國,甘肅省,酒泉市', 98.5108, 39.744, 'Jiuquan');
INSERT INTO `Sys_Region` VALUES (3075, '620902', '肅州區', 620900, 3, '中國,甘肅省,酒泉市,肅州區', 98.5078, 39.7451, 'Suzhou');
INSERT INTO `Sys_Region` VALUES (3076, '620921', '金塔縣', 620900, 3, '中國,甘肅省,酒泉市,金塔縣', 98.9, 39.9773, 'Jinta');
INSERT INTO `Sys_Region` VALUES (3077, '620922', '瓜州縣', 620900, 3, '中國,甘肅省,酒泉市,瓜州縣', 95.7827, 40.5155, 'Guazhou');
INSERT INTO `Sys_Region` VALUES (3078, '620923', '肅北蒙古族自治縣', 620900, 3, '中國,甘肅省,酒泉市,肅北蒙古族自治縣', 94.8765, 39.5121, 'Subei');
INSERT INTO `Sys_Region` VALUES (3079, '620924', '阿克塞哈薩克族自治縣', 620900, 3, '中國,甘肅省,酒泉市,阿克塞哈薩克族自治縣', 94.341, 39.6343, 'Akesai');
INSERT INTO `Sys_Region` VALUES (3080, '620981', '玉門市', 620900, 3, '中國,甘肅省,酒泉市,玉門市', 97.0454, 40.2917, 'Yumen');
INSERT INTO `Sys_Region` VALUES (3081, '620982', '敦煌市', 620900, 3, '中國,甘肅省,酒泉市,敦煌市', 94.6616, 40.1421, 'Dunhuang');
INSERT INTO `Sys_Region` VALUES (3082, '621000', '慶陽市', 620000, 2, '中國,甘肅省,慶陽市', 107.638, 35.7342, 'Qingyang');
INSERT INTO `Sys_Region` VALUES (3083, '621002', '西峰區', 621000, 3, '中國,甘肅省,慶陽市,西峰區', 107.651, 35.7307, 'Xifeng');
INSERT INTO `Sys_Region` VALUES (3084, '621021', '慶城縣', 621000, 3, '中國,甘肅省,慶陽市,慶城縣', 107.883, 36.0151, 'Qingcheng');
INSERT INTO `Sys_Region` VALUES (3085, '621022', '環縣', 621000, 3, '中國,甘肅省,慶陽市,環縣', 107.308, 36.5685, 'Huanxian');
INSERT INTO `Sys_Region` VALUES (3086, '621023', '華池縣', 621000, 3, '中國,甘肅省,慶陽市,華池縣', 107.989, 36.4611, 'Huachi');
INSERT INTO `Sys_Region` VALUES (3087, '621024', '合水縣', 621000, 3, '中國,甘肅省,慶陽市,合水縣', 108.02, 35.8191, 'Heshui');
INSERT INTO `Sys_Region` VALUES (3088, '621025', '正寧縣', 621000, 3, '中國,甘肅省,慶陽市,正寧縣', 108.36, 35.4917, 'Zhengning');
INSERT INTO `Sys_Region` VALUES (3089, '621026', '寧縣', 621000, 3, '中國,甘肅省,慶陽市,寧縣', 107.925, 35.5016, 'Ningxian');
INSERT INTO `Sys_Region` VALUES (3090, '621027', '鎮原縣', 621000, 3, '中國,甘肅省,慶陽市,鎮原縣', 107.199, 35.6771, 'Zhenyuan');
INSERT INTO `Sys_Region` VALUES (3091, '621100', '定西市', 620000, 2, '中國,甘肅省,定西市', 104.626, 35.5796, 'Dingxi');
INSERT INTO `Sys_Region` VALUES (3092, '621102', '安定區', 621100, 3, '中國,甘肅省,定西市,安定區', 104.611, 35.5807, 'Anding');
INSERT INTO `Sys_Region` VALUES (3093, '621121', '通渭縣', 621100, 3, '中國,甘肅省,定西市,通渭縣', 105.242, 35.211, 'Tongwei');
INSERT INTO `Sys_Region` VALUES (3094, '621122', '隴西縣', 621100, 3, '中國,甘肅省,定西市,隴西縣', 104.634, 35.0024, 'Longxi');
INSERT INTO `Sys_Region` VALUES (3095, '621123', '渭源縣', 621100, 3, '中國,甘肅省,定西市,渭源縣', 104.214, 35.1365, 'Weiyuan');
INSERT INTO `Sys_Region` VALUES (3096, '621124', '臨洮縣', 621100, 3, '中國,甘肅省,定西市,臨洮縣', 103.862, 35.3751, 'Lintao');
INSERT INTO `Sys_Region` VALUES (3097, '621125', '漳縣', 621100, 3, '中國,甘肅省,定西市,漳縣', 104.467, 34.8498, 'Zhangxian');
INSERT INTO `Sys_Region` VALUES (3098, '621126', '岷縣', 621100, 3, '中國,甘肅省,定西市,岷縣', 104.038, 34.4344, 'Minxian');
INSERT INTO `Sys_Region` VALUES (3099, '621200', '隴南市', 620000, 2, '中國,甘肅省,隴南市', 104.929, 33.3886, 'Longnan');
INSERT INTO `Sys_Region` VALUES (3100, '621202', '武都區', 621200, 3, '中國,甘肅省,隴南市,武都區', 104.927, 33.3924, 'Wudu');
INSERT INTO `Sys_Region` VALUES (3101, '621221', '成縣', 621200, 3, '中國,甘肅省,隴南市,成縣', 105.726, 33.7393, 'Chengxian');
INSERT INTO `Sys_Region` VALUES (3102, '621222', '文縣', 621200, 3, '中國,甘肅省,隴南市,文縣', 104.684, 32.9434, 'Wenxian');
INSERT INTO `Sys_Region` VALUES (3103, '621223', '宕昌縣', 621200, 3, '中國,甘肅省,隴南市,宕昌縣', 104.393, 34.0473, 'Dangchang');
INSERT INTO `Sys_Region` VALUES (3104, '621224', '康縣', 621200, 3, '中國,甘肅省,隴南市,康縣', 105.607, 33.3291, 'Kangxian');
INSERT INTO `Sys_Region` VALUES (3105, '621225', '西和縣', 621200, 3, '中國,甘肅省,隴南市,西和縣', 105.301, 34.0143, 'Xihe');
INSERT INTO `Sys_Region` VALUES (3106, '621226', '禮縣', 621200, 3, '中國,甘肅省,隴南市,禮縣', 105.178, 34.1894, 'Lixian');
INSERT INTO `Sys_Region` VALUES (3107, '621227', '徽縣', 621200, 3, '中國,甘肅省,隴南市,徽縣', 106.085, 33.769, 'Huixian');
INSERT INTO `Sys_Region` VALUES (3108, '621228', '兩當縣', 621200, 3, '中國,甘肅省,隴南市,兩當縣', 106.305, 33.9096, 'Liangdang');
INSERT INTO `Sys_Region` VALUES (3109, '622900', '臨夏回族自治州', 620000, 2, '中國,甘肅省,臨夏回族自治州', 103.212, 35.5994, 'Linxia');
INSERT INTO `Sys_Region` VALUES (3110, '622901', '臨夏市', 622900, 3, '中國,甘肅省,臨夏回族自治州,臨夏市', 103.21, 35.5992, 'Linxia');
INSERT INTO `Sys_Region` VALUES (3111, '622921', '臨夏縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,臨夏縣', 102.994, 35.4952, 'Linxia');
INSERT INTO `Sys_Region` VALUES (3112, '622922', '康樂縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,康樂縣', 103.711, 35.3722, 'Kangle');
INSERT INTO `Sys_Region` VALUES (3113, '622923', '永靖縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,永靖縣', 103.32, 35.9384, 'Yongjing');
INSERT INTO `Sys_Region` VALUES (3114, '622924', '廣河縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,廣河縣', 103.569, 35.481, 'Guanghe');
INSERT INTO `Sys_Region` VALUES (3115, '622925', '和政縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,和政縣', 103.349, 35.4259, 'Hezheng');
INSERT INTO `Sys_Region` VALUES (3116, '622926', '東鄉族自治縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,東鄉族自治縣', 103.395, 35.6647, 'Dongxiangzu');
INSERT INTO `Sys_Region` VALUES (3117, '622927', '積石山保安族東鄉族撒拉族自治縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,積石山保安族東鄉族撒拉族自治縣', 102.874, 35.7182, 'Jishishan');
INSERT INTO `Sys_Region` VALUES (3118, '623000', '甘南藏族自治州', 620000, 2, '中國,甘肅省,甘南藏族自治州', 102.911, 34.9864, 'Gannan');
INSERT INTO `Sys_Region` VALUES (3119, '623001', '合作市', 623000, 3, '中國,甘肅省,甘南藏族自治州,合作市', 102.911, 35.0002, 'Hezuo');
INSERT INTO `Sys_Region` VALUES (3120, '623021', '臨潭縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,臨潭縣', 103.353, 34.6951, 'Lintan');
INSERT INTO `Sys_Region` VALUES (3121, '623022', '卓尼縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,卓尼縣', 103.508, 34.5892, 'Zhuoni');
INSERT INTO `Sys_Region` VALUES (3122, '623023', '舟曲縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,舟曲縣', 104.372, 33.7847, 'Zhouqu');
INSERT INTO `Sys_Region` VALUES (3123, '623024', '迭部縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,迭部縣', 103.223, 34.0562, 'Diebu');
INSERT INTO `Sys_Region` VALUES (3124, '623025', '瑪曲縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,瑪曲縣', 102.075, 33.997, 'Maqu');
INSERT INTO `Sys_Region` VALUES (3125, '623026', '碌曲縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,碌曲縣', 102.492, 34.5887, 'Luqu');
INSERT INTO `Sys_Region` VALUES (3126, '623027', '夏河縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,夏河縣', 102.522, 35.2049, 'Xiahe');
INSERT INTO `Sys_Region` VALUES (3127, '630000', '青海省', 100000, 1, '中國,青海省', 101.779, 36.6232, 'Qinghai');
INSERT INTO `Sys_Region` VALUES (3128, '630100', '西寧市', 630000, 2, '中國,青海省,西寧市', 101.779, 36.6232, 'Xining');
INSERT INTO `Sys_Region` VALUES (3129, '630102', '城東區', 630100, 3, '中國,青海省,西寧市,城東區', 101.804, 36.5997, 'Chengdong');
INSERT INTO `Sys_Region` VALUES (3130, '630103', '城中區', 630100, 3, '中國,青海省,西寧市,城中區', 101.784, 36.6228, 'Chengzhong');
INSERT INTO `Sys_Region` VALUES (3131, '630104', '城西區', 630100, 3, '中國,青海省,西寧市,城西區', 101.766, 36.6283, 'Chengxi');
INSERT INTO `Sys_Region` VALUES (3132, '630105', '城北區', 630100, 3, '中國,青海省,西寧市,城北區', 101.766, 36.6501, 'Chengbei');
INSERT INTO `Sys_Region` VALUES (3133, '630121', '大通回族土族自治縣', 630100, 3, '中國,青海省,西寧市,大通回族土族自治縣', 101.702, 36.9349, 'Datong');
INSERT INTO `Sys_Region` VALUES (3134, '630122', '湟中縣', 630100, 3, '中國,青海省,西寧市,湟中縣', 101.572, 36.5008, 'Huangzhong');
INSERT INTO `Sys_Region` VALUES (3135, '630123', '湟源縣', 630100, 3, '中國,青海省,西寧市,湟源縣', 101.256, 36.6824, 'Huangyuan');
INSERT INTO `Sys_Region` VALUES (3136, '630200', '海東市', 630000, 2, '中國,青海省,海東市', 102.103, 36.5029, 'Haidong');
INSERT INTO `Sys_Region` VALUES (3137, '630202', '樂都區', 630200, 3, '中國,青海省,海東市,樂都區', 102.402, 36.4803, 'Ledu');
INSERT INTO `Sys_Region` VALUES (3138, '630221', '平安縣', 630200, 3, '中國,青海省,海東市,平安縣', 102.104, 36.5027, 'Pingan');
INSERT INTO `Sys_Region` VALUES (3139, '630222', '民和回族土族自治縣', 630200, 3, '中國,青海省,海東市,民和回族土族自治縣', 102.804, 36.3295, 'Minhe');
INSERT INTO `Sys_Region` VALUES (3140, '630223', '互助土族自治縣', 630200, 3, '中國,青海省,海東市,互助土族自治縣', 101.957, 36.8399, 'Huzhu');
INSERT INTO `Sys_Region` VALUES (3141, '630224', '化隆回族自治縣', 630200, 3, '中國,青海省,海東市,化隆回族自治縣', 102.262, 36.0983, 'Hualong');
INSERT INTO `Sys_Region` VALUES (3142, '630225', '循化撒拉族自治縣', 630200, 3, '中國,青海省,海東市,循化撒拉族自治縣', 102.487, 35.8472, 'Xunhua');
INSERT INTO `Sys_Region` VALUES (3143, '632200', '海北藏族自治州', 630000, 2, '中國,青海省,海北藏族自治州', 100.901, 36.9594, 'Haibei');
INSERT INTO `Sys_Region` VALUES (3144, '632221', '門源回族自治縣', 632200, 3, '中國,青海省,海北藏族自治州,門源回族自治縣', 101.622, 37.3761, 'Menyuan');
INSERT INTO `Sys_Region` VALUES (3145, '632222', '祁連縣', 632200, 3, '中國,青海省,海北藏族自治州,祁連縣', 100.246, 38.179, 'Qilian');
INSERT INTO `Sys_Region` VALUES (3146, '632223', '海晏縣', 632200, 3, '中國,青海省,海北藏族自治州,海晏縣', 100.993, 36.899, 'Haiyan');
INSERT INTO `Sys_Region` VALUES (3147, '632224', '剛察縣', 632200, 3, '中國,青海省,海北藏族自治州,剛察縣', 100.147, 37.3216, 'Gangcha');
INSERT INTO `Sys_Region` VALUES (3148, '632300', '黃南藏族自治州', 630000, 2, '中國,青海省,黃南藏族自治州', 102.02, 35.5177, 'Huangnan');
INSERT INTO `Sys_Region` VALUES (3149, '632321', '同仁縣', 632300, 3, '中國,青海省,黃南藏族自治州,同仁縣', 102.018, 35.516, 'Tongren');
INSERT INTO `Sys_Region` VALUES (3150, '632322', '尖扎縣', 632300, 3, '中國,青海省,黃南藏族自治州,尖扎縣', 102.034, 35.9395, 'Jianzha');
INSERT INTO `Sys_Region` VALUES (3151, '632323', '澤庫縣', 632300, 3, '中國,青海省,黃南藏族自治州,澤庫縣', 101.464, 35.0352, 'Zeku');
INSERT INTO `Sys_Region` VALUES (3152, '632324', '河南蒙古族自治縣', 632300, 3, '中國,青海省,黃南藏族自治州,河南蒙古族自治縣', 101.609, 34.7348, 'Henan');
INSERT INTO `Sys_Region` VALUES (3153, '632500', '海南藏族自治州', 630000, 2, '中國,青海省,海南藏族自治州', 100.62, 36.2804, 'Hainan');
INSERT INTO `Sys_Region` VALUES (3154, '632521', '共和縣', 632500, 3, '中國,青海省,海南藏族自治州,共和縣', 100.62, 36.2841, 'Gonghe');
INSERT INTO `Sys_Region` VALUES (3155, '632522', '同德縣', 632500, 3, '中國,青海省,海南藏族自治州,同德縣', 100.572, 35.2549, 'Tongde');
INSERT INTO `Sys_Region` VALUES (3156, '632523', '貴德縣', 632500, 3, '中國,青海省,海南藏族自治州,貴德縣', 101.432, 36.044, 'Guide');
INSERT INTO `Sys_Region` VALUES (3157, '632524', '興海縣', 632500, 3, '中國,青海省,海南藏族自治州,興海縣', 99.9885, 35.5903, 'Xinghai');
INSERT INTO `Sys_Region` VALUES (3158, '632525', '貴南縣', 632500, 3, '中國,青海省,海南藏族自治州,貴南縣', 100.747, 35.5867, 'Guinan');
INSERT INTO `Sys_Region` VALUES (3159, '632600', '果洛藏族自治州', 630000, 2, '中國,青海省,果洛藏族自治州', 100.242, 34.4736, 'Golog');
INSERT INTO `Sys_Region` VALUES (3160, '632621', '瑪沁縣', 632600, 3, '中國,青海省,果洛藏族自治州,瑪沁縣', 100.239, 34.4775, 'Maqin');
INSERT INTO `Sys_Region` VALUES (3161, '632622', '班瑪縣', 632600, 3, '中國,青海省,果洛藏族自治州,班瑪縣', 100.737, 32.9325, 'Banma');
INSERT INTO `Sys_Region` VALUES (3162, '632623', '甘德縣', 632600, 3, '中國,青海省,果洛藏族自治州,甘德縣', 99.9025, 33.9684, 'Gande');
INSERT INTO `Sys_Region` VALUES (3163, '632624', '達日縣', 632600, 3, '中國,青海省,果洛藏族自治州,達日縣', 99.6518, 33.7519, 'Dari');
INSERT INTO `Sys_Region` VALUES (3164, '632625', '久治縣', 632600, 3, '中國,青海省,果洛藏族自治州,久治縣', 101.483, 33.4299, 'Jiuzhi');
INSERT INTO `Sys_Region` VALUES (3165, '632626', '瑪多縣', 632600, 3, '中國,青海省,果洛藏族自治州,瑪多縣', 98.21, 34.9157, 'Maduo');
INSERT INTO `Sys_Region` VALUES (3166, '632700', '玉樹藏族自治州', 630000, 2, '中國,青海省,玉樹藏族自治州', 97.0085, 33.004, 'Yushu');
INSERT INTO `Sys_Region` VALUES (3167, '632701', '玉樹市', 632700, 3, '中國,青海省,玉樹藏族自治州,玉樹市', 97.0088, 33.0039, 'Yushu');
INSERT INTO `Sys_Region` VALUES (3168, '632722', '雜多縣', 632700, 3, '中國,青海省,玉樹藏族自治州,雜多縣', 95.2986, 32.8932, 'Zaduo');
INSERT INTO `Sys_Region` VALUES (3169, '632723', '稱多縣', 632700, 3, '中國,青海省,玉樹藏族自治州,稱多縣', 97.1079, 33.369, 'Chenduo');
INSERT INTO `Sys_Region` VALUES (3170, '632724', '治多縣', 632700, 3, '中國,青海省,玉樹藏族自治州,治多縣', 95.6157, 33.8528, 'Zhiduo');
INSERT INTO `Sys_Region` VALUES (3171, '632725', '囊謙縣', 632700, 3, '中國,青海省,玉樹藏族自治州,囊謙縣', 96.4775, 32.2036, 'Nangqian');
INSERT INTO `Sys_Region` VALUES (3172, '632726', '曲麻萊縣', 632700, 3, '中國,青海省,玉樹藏族自治州,曲麻萊縣', 95.7976, 34.1261, 'Qumalai');
INSERT INTO `Sys_Region` VALUES (3173, '632800', '海西蒙古族藏族自治州', 630000, 2, '中國,青海省,海西蒙古族藏族自治州', 97.3708, 37.3747, 'Haixi');
INSERT INTO `Sys_Region` VALUES (3174, '632801', '格爾木市', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,格爾木市', 94.9033, 36.4024, 'Geermu');
INSERT INTO `Sys_Region` VALUES (3175, '632802', '德令哈市', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,德令哈市', 97.3608, 37.3695, 'Delingha');
INSERT INTO `Sys_Region` VALUES (3176, '632821', '烏蘭縣', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,烏蘭縣', 98.482, 36.9347, 'Wulan');
INSERT INTO `Sys_Region` VALUES (3177, '632822', '都蘭縣', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,都蘭縣', 98.0923, 36.3013, 'Dulan');
INSERT INTO `Sys_Region` VALUES (3178, '632823', '天峻縣', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,天峻縣', 99.0245, 37.3033, 'Tianjun');
INSERT INTO `Sys_Region` VALUES (3179, '640000', '寧夏回族自治區', 100000, 1, '中國,寧夏回族自治區', 106.278, 38.4664, 'Ningxia');
INSERT INTO `Sys_Region` VALUES (3180, '640100', '銀川市', 640000, 2, '中國,寧夏回族自治區,銀川市', 106.278, 38.4664, 'Yinchuan');
INSERT INTO `Sys_Region` VALUES (3181, '640104', '興慶區', 640100, 3, '中國,寧夏回族自治區,銀川市,興慶區', 106.289, 38.4739, 'Xingqing');
INSERT INTO `Sys_Region` VALUES (3182, '640105', '西夏區', 640100, 3, '中國,寧夏回族自治區,銀川市,西夏區', 106.15, 38.4914, 'Xixia');
INSERT INTO `Sys_Region` VALUES (3183, '640106', '金鳳區', 640100, 3, '中國,寧夏回族自治區,銀川市,金鳳區', 106.243, 38.4729, 'Jinfeng');
INSERT INTO `Sys_Region` VALUES (3184, '640121', '永寧縣', 640100, 3, '中國,寧夏回族自治區,銀川市,永寧縣', 106.252, 38.2756, 'Yongning');
INSERT INTO `Sys_Region` VALUES (3185, '640122', '賀蘭縣', 640100, 3, '中國,寧夏回族自治區,銀川市,賀蘭縣', 106.35, 38.5544, 'Helan');
INSERT INTO `Sys_Region` VALUES (3186, '640181', '靈武市', 640100, 3, '中國,寧夏回族自治區,銀川市,靈武市', 106.34, 38.1027, 'Lingwu');
INSERT INTO `Sys_Region` VALUES (3187, '640200', '石嘴山市', 640000, 2, '中國,寧夏回族自治區,石嘴山市', 106.376, 39.0133, 'Shizuishan');
INSERT INTO `Sys_Region` VALUES (3188, '640202', '大武口區', 640200, 3, '中國,寧夏回族自治區,石嘴山市,大武口區', 106.377, 39.0123, 'Dawukou');
INSERT INTO `Sys_Region` VALUES (3189, '640205', '惠農區', 640200, 3, '中國,寧夏回族自治區,石嘴山市,惠農區', 106.711, 39.1319, 'Huinong');
INSERT INTO `Sys_Region` VALUES (3190, '640221', '平羅縣', 640200, 3, '中國,寧夏回族自治區,石嘴山市,平羅縣', 106.545, 38.9043, 'Pingluo');
INSERT INTO `Sys_Region` VALUES (3191, '640300', '吳忠市', 640000, 2, '中國,寧夏回族自治區,吳忠市', 106.199, 37.9862, 'Wuzhong');
INSERT INTO `Sys_Region` VALUES (3192, '640302', '利通區', 640300, 3, '中國,寧夏回族自治區,吳忠市,利通區', 106.203, 37.9851, 'Litong');
INSERT INTO `Sys_Region` VALUES (3193, '640303', '紅寺堡區', 640300, 3, '中國,寧夏回族自治區,吳忠市,紅寺堡區', 106.198, 37.9975, 'Hongsibao');
INSERT INTO `Sys_Region` VALUES (3194, '640323', '鹽池縣', 640300, 3, '中國,寧夏回族自治區,吳忠市,鹽池縣', 107.407, 37.7833, 'Yanchi');
INSERT INTO `Sys_Region` VALUES (3195, '640324', '同心縣', 640300, 3, '中國,寧夏回族自治區,吳忠市,同心縣', 105.914, 36.9812, 'Tongxin');
INSERT INTO `Sys_Region` VALUES (3196, '640381', '青銅峽市', 640300, 3, '中國,寧夏回族自治區,吳忠市,青銅峽市', 106.075, 38.02, 'Qingtongxia');
INSERT INTO `Sys_Region` VALUES (3197, '640400', '固原市', 640000, 2, '中國,寧夏回族自治區,固原市', 106.285, 36.0046, 'Guyuan');
INSERT INTO `Sys_Region` VALUES (3198, '640402', '原州區', 640400, 3, '中國,寧夏回族自治區,固原市,原州區', 106.288, 36.0037, 'Yuanzhou');
INSERT INTO `Sys_Region` VALUES (3199, '640422', '西吉縣', 640400, 3, '中國,寧夏回族自治區,固原市,西吉縣', 105.731, 35.9662, 'Xiji');
INSERT INTO `Sys_Region` VALUES (3200, '640423', '隆德縣', 640400, 3, '中國,寧夏回族自治區,固原市,隆德縣', 106.124, 35.6172, 'Longde');
INSERT INTO `Sys_Region` VALUES (3201, '640424', '涇源縣', 640400, 3, '中國,寧夏回族自治區,固原市,涇源縣', 106.339, 35.4907, 'Jingyuan');
INSERT INTO `Sys_Region` VALUES (3202, '640425', '彭陽縣', 640400, 3, '中國,寧夏回族自治區,固原市,彭陽縣', 106.645, 35.8508, 'Pengyang');
INSERT INTO `Sys_Region` VALUES (3203, '640500', '中衛市', 640000, 2, '中國,寧夏回族自治區,中衛市', 105.19, 37.5149, 'Zhongwei');
INSERT INTO `Sys_Region` VALUES (3204, '640502', '沙坡頭區', 640500, 3, '中國,寧夏回族自治區,中衛市,沙坡頭區', 105.19, 37.5104, 'Shapotou');
INSERT INTO `Sys_Region` VALUES (3205, '640521', '中寧縣', 640500, 3, '中國,寧夏回族自治區,中衛市,中寧縣', 105.685, 37.4915, 'Zhongning');
INSERT INTO `Sys_Region` VALUES (3206, '640522', '海原縣', 640500, 3, '中國,寧夏回族自治區,中衛市,海原縣', 105.647, 36.565, 'Haiyuan');
INSERT INTO `Sys_Region` VALUES (3207, '650000', '新疆維吾爾自治區', 100000, 1, '中國,新疆維吾爾自治區', 87.6177, 43.7928, 'Xinjiang');
INSERT INTO `Sys_Region` VALUES (3208, '650100', '烏魯木齊市', 650000, 2, '中國,新疆維吾爾自治區,烏魯木齊市', 87.6177, 43.7928, 'Urumqi');
INSERT INTO `Sys_Region` VALUES (3209, '650102', '天山區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,天山區', 87.6317, 43.7944, 'Tianshan');
INSERT INTO `Sys_Region` VALUES (3210, '650103', '沙依巴克區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,沙依巴克區', 87.5979, 43.8012, 'Shayibake');
INSERT INTO `Sys_Region` VALUES (3211, '650104', '新市區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,新市區', 87.5741, 43.8435, 'Xinshi');
INSERT INTO `Sys_Region` VALUES (3212, '650105', '水磨溝區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,水磨溝區', 87.6425, 43.8325, 'Shuimogou');
INSERT INTO `Sys_Region` VALUES (3213, '650106', '頭屯河區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,頭屯河區', 87.2914, 43.8549, 'Toutunhe');
INSERT INTO `Sys_Region` VALUES (3214, '650107', '達坂城區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,達坂城區', 88.307, 43.358, 'Dabancheng');
INSERT INTO `Sys_Region` VALUES (3215, '650109', '米東區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,米東區', 87.6858, 43.9474, 'Midong');
INSERT INTO `Sys_Region` VALUES (3216, '650121', '烏魯木齊縣', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,烏魯木齊縣', 87.4094, 43.4712, 'Wulumuqi');
INSERT INTO `Sys_Region` VALUES (3217, '650200', '克拉瑪依市', 650000, 2, '中國,新疆維吾爾自治區,克拉瑪依市', 84.8739, 45.5959, 'Karamay');
INSERT INTO `Sys_Region` VALUES (3218, '650202', '獨山子區', 650200, 3, '中國,新疆維吾爾自治區,克拉瑪依市,獨山子區', 84.8867, 44.3287, 'Dushanzi');
INSERT INTO `Sys_Region` VALUES (3219, '650203', '克拉瑪依區', 650200, 3, '中國,新疆維吾爾自治區,克拉瑪依市,克拉瑪依區', 84.8623, 45.5909, 'Kelamayi');
INSERT INTO `Sys_Region` VALUES (3220, '650204', '白堿灘區', 650200, 3, '中國,新疆維吾爾自治區,克拉瑪依市,白堿灘區', 85.1324, 45.6877, 'Baijiantan');
INSERT INTO `Sys_Region` VALUES (3221, '650205', '烏爾禾區', 650200, 3, '中國,新疆維吾爾自治區,克拉瑪依市,烏爾禾區', 85.6914, 46.0901, 'Wuerhe');
INSERT INTO `Sys_Region` VALUES (3222, '652100', '吐魯番地區', 650000, 2, '中國,新疆維吾爾自治區,吐魯番地區', 89.1841, 42.9476, 'Turpan');
INSERT INTO `Sys_Region` VALUES (3223, '652101', '吐魯番市', 652100, 3, '中國,新疆維吾爾自治區,吐魯番地區,吐魯番市', 89.1858, 42.9351, 'Tulufan');
INSERT INTO `Sys_Region` VALUES (3224, '652122', '鄯善縣', 652100, 3, '中國,新疆維吾爾自治區,吐魯番地區,鄯善縣', 90.214, 42.8635, 'Shanshan');
INSERT INTO `Sys_Region` VALUES (3225, '652123', '托克遜縣', 652100, 3, '中國,新疆維吾爾自治區,吐魯番地區,托克遜縣', 88.6582, 42.7923, 'Tuokexun');
INSERT INTO `Sys_Region` VALUES (3226, '652200', '哈密地區', 650000, 2, '中國,新疆維吾爾自治區,哈密地區', 93.5132, 42.8332, 'Hami');
INSERT INTO `Sys_Region` VALUES (3227, '652201', '哈密市', 652200, 3, '中國,新疆維吾爾自治區,哈密地區,哈密市', 93.5145, 42.827, 'Hami');
INSERT INTO `Sys_Region` VALUES (3228, '652222', '巴里坤哈薩克自治縣', 652200, 3, '中國,新疆維吾爾自治區,哈密地區,巴里坤哈薩克自治縣', 93.0124, 43.5999, 'Balikun');
INSERT INTO `Sys_Region` VALUES (3229, '652223', '伊吾縣', 652200, 3, '中國,新疆維吾爾自治區,哈密地區,伊吾縣', 94.694, 43.2537, 'Yiwu');
INSERT INTO `Sys_Region` VALUES (3230, '652300', '昌吉回族自治州', 650000, 2, '中國,新疆維吾爾自治區,昌吉回族自治州', 87.304, 44.0146, 'Changji');
INSERT INTO `Sys_Region` VALUES (3231, '652301', '昌吉市', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,昌吉市', 87.3025, 44.0127, 'Changji');
INSERT INTO `Sys_Region` VALUES (3232, '652302', '阜康市', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,阜康市', 87.9853, 44.1584, 'Fukang');
INSERT INTO `Sys_Region` VALUES (3233, '652323', '呼圖壁縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,呼圖壁縣', 86.8989, 44.1898, 'Hutubi');
INSERT INTO `Sys_Region` VALUES (3234, '652324', '瑪納斯縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,瑪納斯縣', 86.2145, 44.3044, 'Manasi');
INSERT INTO `Sys_Region` VALUES (3235, '652325', '奇臺縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,奇臺縣', 89.5932, 44.0222, 'Qitai');
INSERT INTO `Sys_Region` VALUES (3236, '652327', '吉木薩爾縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,吉木薩爾縣', 89.1808, 44.0005, 'Jimusaer');
INSERT INTO `Sys_Region` VALUES (3237, '652328', '木壘哈薩克自治縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,木壘哈薩克自治縣', 90.289, 43.8351, 'Mulei');
INSERT INTO `Sys_Region` VALUES (3238, '652700', '博爾塔拉蒙古自治州', 650000, 2, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州', 82.0748, 44.9033, 'Bortala');
INSERT INTO `Sys_Region` VALUES (3239, '652701', '博樂市', 652700, 3, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州,博樂市', 82.0713, 44.9005, 'Bole');
INSERT INTO `Sys_Region` VALUES (3240, '652702', '阿拉山口市', 652700, 3, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州,阿拉山口市', 82.5677, 45.1706, 'Alashankou');
INSERT INTO `Sys_Region` VALUES (3241, '652722', '精河縣', 652700, 3, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州,精河縣', 82.8942, 44.6077, 'Jinghe');
INSERT INTO `Sys_Region` VALUES (3242, '652723', '溫泉縣', 652700, 3, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州,溫泉縣', 81.0313, 44.9737, 'Wenquan');
INSERT INTO `Sys_Region` VALUES (3243, '652800', '巴音郭楞蒙古自治州', 650000, 2, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州', 86.151, 41.7686, 'Bayingol');
INSERT INTO `Sys_Region` VALUES (3244, '652801', '庫爾勒市', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,庫爾勒市', 86.1553, 41.766, 'Kuerle');
INSERT INTO `Sys_Region` VALUES (3245, '652822', '輪臺縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,輪臺縣', 84.261, 41.7764, 'Luntai');
INSERT INTO `Sys_Region` VALUES (3246, '652823', '尉犁縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,尉犁縣', 86.259, 41.3363, 'Yuli');
INSERT INTO `Sys_Region` VALUES (3247, '652824', '若羌縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,若羌縣', 88.1681, 39.0179, 'Ruoqiang');
INSERT INTO `Sys_Region` VALUES (3248, '652825', '且末縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,且末縣', 85.5297, 38.1453, 'Qiemo');
INSERT INTO `Sys_Region` VALUES (3249, '652826', '焉耆回族自治縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,焉耆回族自治縣', 86.5744, 42.059, 'Yanqi');
INSERT INTO `Sys_Region` VALUES (3250, '652827', '和靜縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,和靜縣', 86.3961, 42.3184, 'Hejing');
INSERT INTO `Sys_Region` VALUES (3251, '652828', '和碩縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,和碩縣', 86.8639, 42.2681, 'Heshuo');
INSERT INTO `Sys_Region` VALUES (3252, '652829', '博湖縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,博湖縣', 86.6333, 41.9801, 'Bohu');
INSERT INTO `Sys_Region` VALUES (3253, '652900', '阿克蘇地區', 650000, 2, '中國,新疆維吾爾自治區,阿克蘇地區', 80.2651, 41.1707, 'Aksu');
INSERT INTO `Sys_Region` VALUES (3254, '652901', '阿克蘇市', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,阿克蘇市', 80.2634, 41.1675, 'Akesu');
INSERT INTO `Sys_Region` VALUES (3255, '652922', '溫宿縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,溫宿縣', 80.2417, 41.2768, 'Wensu');
INSERT INTO `Sys_Region` VALUES (3256, '652923', '庫車縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,庫車縣', 82.9621, 41.7179, 'Kuche');
INSERT INTO `Sys_Region` VALUES (3257, '652924', '沙雅縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,沙雅縣', 82.7813, 41.225, 'Shaya');
INSERT INTO `Sys_Region` VALUES (3258, '652925', '新和縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,新和縣', 82.6105, 41.5496, 'Xinhe');
INSERT INTO `Sys_Region` VALUES (3259, '652926', '拜城縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,拜城縣', 81.8756, 41.798, 'Baicheng');
INSERT INTO `Sys_Region` VALUES (3260, '652927', '烏什縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,烏什縣', 79.2294, 41.2157, 'Wushi');
INSERT INTO `Sys_Region` VALUES (3261, '652928', '阿瓦提縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,阿瓦提縣', 80.3834, 40.6393, 'Awati');
INSERT INTO `Sys_Region` VALUES (3262, '652929', '柯坪縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,柯坪縣', 79.0475, 40.5059, 'Keping');
INSERT INTO `Sys_Region` VALUES (3263, '653000', '克孜勒蘇柯爾克孜自治州', 650000, 2, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州', 76.1728, 39.7134, 'Kizilsu');
INSERT INTO `Sys_Region` VALUES (3264, '653001', '阿圖什市', 653000, 3, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州,阿圖什市', 76.1683, 39.7161, 'Atushi');
INSERT INTO `Sys_Region` VALUES (3265, '653022', '阿克陶縣', 653000, 3, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州,阿克陶縣', 75.9469, 39.1489, 'Aketao');
INSERT INTO `Sys_Region` VALUES (3266, '653023', '阿合奇縣', 653000, 3, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州,阿合奇縣', 78.4485, 40.9395, 'Aheqi');
INSERT INTO `Sys_Region` VALUES (3267, '653024', '烏恰縣', 653000, 3, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州,烏恰縣', 75.2584, 39.7198, 'Wuqia');
INSERT INTO `Sys_Region` VALUES (3268, '653100', '喀什地區', 650000, 2, '中國,新疆維吾爾自治區,喀什地區', 75.9891, 39.4677, 'Kashgar');
INSERT INTO `Sys_Region` VALUES (3269, '653101', '喀什市', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,喀什市', 75.9938, 39.4677, 'Kashi');
INSERT INTO `Sys_Region` VALUES (3270, '653121', '疏附縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,疏附縣', 75.8603, 39.3753, 'Shufu');
INSERT INTO `Sys_Region` VALUES (3271, '653122', '疏勒縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,疏勒縣', 76.054, 39.4062, 'Shule');
INSERT INTO `Sys_Region` VALUES (3272, '653123', '英吉沙縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,英吉沙縣', 76.1757, 38.9297, 'Yingjisha');
INSERT INTO `Sys_Region` VALUES (3273, '653124', '澤普縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,澤普縣', 77.2714, 38.1894, 'Zepu');
INSERT INTO `Sys_Region` VALUES (3274, '653125', '莎車縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,莎車縣', 77.2432, 38.416, 'Shache');
INSERT INTO `Sys_Region` VALUES (3275, '653126', '葉城縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,葉城縣', 77.4166, 37.8832, 'Yecheng');
INSERT INTO `Sys_Region` VALUES (3276, '653127', '麥蓋提縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,麥蓋提縣', 77.6422, 38.8966, 'Maigaiti');
INSERT INTO `Sys_Region` VALUES (3277, '653128', '岳普湖縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,岳普湖縣', 76.7723, 39.2356, 'Yuepuhu');
INSERT INTO `Sys_Region` VALUES (3278, '653129', '伽師縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,伽師縣', 76.7237, 39.488, 'Jiashi');
INSERT INTO `Sys_Region` VALUES (3279, '653130', '巴楚縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,巴楚縣', 78.5489, 39.7855, 'Bachu');
INSERT INTO `Sys_Region` VALUES (3280, '653131', '塔什庫爾干塔吉克自治縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,塔什庫爾干塔吉克自治縣', 75.232, 37.7789, 'Tashikuergantajike');
INSERT INTO `Sys_Region` VALUES (3281, '653200', '和田地區', 650000, 2, '中國,新疆維吾爾自治區,和田地區', 79.9253, 37.1107, 'Hotan');
INSERT INTO `Sys_Region` VALUES (3282, '653201', '和田市', 653200, 3, '中國,新疆維吾爾自治區,和田地區,和田市', 79.9135, 37.1121, 'Hetianshi');
INSERT INTO `Sys_Region` VALUES (3283, '653221', '和田縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,和田縣', 79.8287, 37.0892, 'Hetianxian');
INSERT INTO `Sys_Region` VALUES (3284, '653222', '墨玉縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,墨玉縣', 79.7403, 37.2725, 'Moyu');
INSERT INTO `Sys_Region` VALUES (3285, '653223', '皮山縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,皮山縣', 78.2812, 37.6201, 'Pishan');
INSERT INTO `Sys_Region` VALUES (3286, '653224', '洛浦縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,洛浦縣', 80.1854, 37.0736, 'Luopu');
INSERT INTO `Sys_Region` VALUES (3287, '653225', '策勒縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,策勒縣', 80.81, 36.9984, 'Cele');
INSERT INTO `Sys_Region` VALUES (3288, '653226', '于田縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,于田縣', 81.6672, 36.854, 'Yutian');
INSERT INTO `Sys_Region` VALUES (3289, '653227', '民豐縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,民豐縣', 82.6844, 37.0658, 'Minfeng');
INSERT INTO `Sys_Region` VALUES (3290, '654000', '伊犁哈薩克自治州', 650000, 2, '中國,新疆維吾爾自治區,伊犁哈薩克自治州', 81.3179, 43.9219, 'Ili');
INSERT INTO `Sys_Region` VALUES (3291, '654002', '伊寧市', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,伊寧市', 81.3293, 43.9129, 'Yining');
INSERT INTO `Sys_Region` VALUES (3292, '654003', '奎屯市', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,奎屯市', 84.9023, 44.425, 'Kuitun');
INSERT INTO `Sys_Region` VALUES (3293, '654004', '霍爾果斯市', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,霍爾果斯市', 80.4182, 44.2058, 'Huoerguosi');
INSERT INTO `Sys_Region` VALUES (3294, '654021', '伊寧縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,伊寧縣', 81.5276, 43.9786, 'Yining');
INSERT INTO `Sys_Region` VALUES (3295, '654022', '察布查爾錫伯自治縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,察布查爾錫伯自治縣', 81.1496, 43.8402, 'Chabuchaerxibo');
INSERT INTO `Sys_Region` VALUES (3296, '654023', '霍城縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,霍城縣', 80.8783, 44.0533, 'Huocheng');
INSERT INTO `Sys_Region` VALUES (3297, '654024', '鞏留縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,鞏留縣', 82.2285, 43.4843, 'Gongliu');
INSERT INTO `Sys_Region` VALUES (3298, '654025', '新源縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,新源縣', 83.2609, 43.4284, 'Xinyuan');
INSERT INTO `Sys_Region` VALUES (3299, '654026', '昭蘇縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,昭蘇縣', 81.1307, 43.1583, 'Zhaosu');
INSERT INTO `Sys_Region` VALUES (3300, '654027', '特克斯縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,特克斯縣', 81.84, 43.2194, 'Tekesi');
INSERT INTO `Sys_Region` VALUES (3301, '654028', '尼勒克縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,尼勒克縣', 82.5118, 43.799, 'Nileke');
INSERT INTO `Sys_Region` VALUES (3302, '654200', '塔城地區', 650000, 2, '中國,新疆維吾爾自治區,塔城地區', 82.9857, 46.7463, 'Qoqek');
INSERT INTO `Sys_Region` VALUES (3303, '654201', '塔城市', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,塔城市', 82.9789, 46.7485, 'Tacheng');
INSERT INTO `Sys_Region` VALUES (3304, '654202', '烏蘇市', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,烏蘇市', 84.6826, 44.4373, 'Wusu');
INSERT INTO `Sys_Region` VALUES (3305, '654221', '額敏縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,額敏縣', 83.6287, 46.5284, 'Emin');
INSERT INTO `Sys_Region` VALUES (3306, '654223', '沙灣縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,沙灣縣', 85.6193, 44.3314, 'Shawan');
INSERT INTO `Sys_Region` VALUES (3307, '654224', '托里縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,托里縣', 83.6059, 45.9362, 'Tuoli');
INSERT INTO `Sys_Region` VALUES (3308, '654225', '裕民縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,裕民縣', 82.99, 46.2038, 'Yumin');
INSERT INTO `Sys_Region` VALUES (3309, '654226', '和布克賽爾蒙古自治縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,和布克賽爾蒙古自治縣', 85.7266, 46.7936, 'Hebukesaier');
INSERT INTO `Sys_Region` VALUES (3310, '654300', '阿勒泰地區', 650000, 2, '中國,新疆維吾爾自治區,阿勒泰地區', 88.1396, 47.8484, 'Altay');
INSERT INTO `Sys_Region` VALUES (3311, '654301', '阿勒泰市', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,阿勒泰市', 88.1391, 47.8317, 'Aletai');
INSERT INTO `Sys_Region` VALUES (3312, '654321', '布爾津縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,布爾津縣', 86.8575, 47.7006, 'Buerjin');
INSERT INTO `Sys_Region` VALUES (3313, '654322', '富蘊縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,富蘊縣', 89.5268, 46.9944, 'Fuyun');
INSERT INTO `Sys_Region` VALUES (3314, '654323', '福海縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,福海縣', 87.4951, 47.1106, 'Fuhai');
INSERT INTO `Sys_Region` VALUES (3315, '654324', '哈巴河縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,哈巴河縣', 86.4209, 48.0605, 'Habahe');
INSERT INTO `Sys_Region` VALUES (3316, '654325', '青河縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,青河縣', 90.383, 46.6738, 'Qinghe');
INSERT INTO `Sys_Region` VALUES (3317, '654326', '吉木乃縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,吉木乃縣', 85.8781, 47.4336, 'Jimunai');
INSERT INTO `Sys_Region` VALUES (3318, '659000', '直轄縣級', 650000, 2, '中國,新疆維吾爾自治區,直轄縣級', 91.1322, 29.6604, '');
INSERT INTO `Sys_Region` VALUES (3319, '659001', '石河子市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,石河子市', 86.0411, 44.3059, 'Shihezi');
INSERT INTO `Sys_Region` VALUES (3320, '659002', '阿拉爾市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,阿拉爾市', 81.2859, 40.5419, 'Aral');
INSERT INTO `Sys_Region` VALUES (3321, '659003', '圖木舒克市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,圖木舒克市', 79.078, 39.8673, 'Tumxuk');
INSERT INTO `Sys_Region` VALUES (3322, '659004', '五家渠市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,五家渠市', 87.5269, 44.1674, 'Wujiaqu');
INSERT INTO `Sys_Region` VALUES (3323, '659005', '北屯市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,北屯市', 87.8085, 47.3623, 'Beitun');
INSERT INTO `Sys_Region` VALUES (3324, '659006', '鐵門關市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,鐵門關市', 86.1947, 41.811, 'Tiemenguan');
INSERT INTO `Sys_Region` VALUES (3325, '659007', '雙河市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,雙河市', 91.1322, 29.6604, 'Shuanghe');
INSERT INTO `Sys_Region` VALUES (3326, '710000', '臺灣', 100000, 1, '中國,臺灣', 121.509, 25.0443, 'Taiwan');
INSERT INTO `Sys_Region` VALUES (3327, '710100', '臺北市', 710000, 2, '中國,臺灣,臺北市', 121.565, 25.0378, 'Taipei');
INSERT INTO `Sys_Region` VALUES (3328, '710101', '松山區', 710100, 3, '中國,臺灣,臺北市,松山區', 121.577, 25.0497, 'Songshan');
INSERT INTO `Sys_Region` VALUES (3329, '710102', '信義區', 710100, 3, '中國,臺灣,臺北市,信義區', 121.751, 25.1294, 'Xinyi');
INSERT INTO `Sys_Region` VALUES (3330, '710103', '大安區', 710100, 3, '中國,臺灣,臺北市,大安區', 121.535, 25.0264, 'Daan');
INSERT INTO `Sys_Region` VALUES (3331, '710104', '中山區', 710100, 3, '中國,臺灣,臺北市,中山區', 121.533, 25.0644, 'Zhongshan');
INSERT INTO `Sys_Region` VALUES (3332, '710105', '中正區', 710100, 3, '中國,臺灣,臺北市,中正區', 121.518, 25.0324, 'Zhongzheng');
INSERT INTO `Sys_Region` VALUES (3333, '710106', '大同區', 710100, 3, '中國,臺灣,臺北市,大同區', 121.516, 25.066, 'Datong');
INSERT INTO `Sys_Region` VALUES (3334, '710107', '萬華區', 710100, 3, '中國,臺灣,臺北市,萬華區', 121.499, 25.0319, 'Wanhua');
INSERT INTO `Sys_Region` VALUES (3335, '710108', '文山區', 710100, 3, '中國,臺灣,臺北市,文山區', 121.57, 24.9898, 'Wenshan');
INSERT INTO `Sys_Region` VALUES (3336, '710109', '南港區', 710100, 3, '中國,臺灣,臺北市,南港區', 121.607, 25.0547, 'Nangang');
INSERT INTO `Sys_Region` VALUES (3337, '710110', '內湖區', 710100, 3, '中國,臺灣,臺北市,內湖區', 121.589, 25.0697, 'Nahu');
INSERT INTO `Sys_Region` VALUES (3338, '710111', '士林區', 710100, 3, '中國,臺灣,臺北市,士林區', 121.52, 25.0928, 'Shilin');
INSERT INTO `Sys_Region` VALUES (3339, '710112', '北投區', 710100, 3, '中國,臺灣,臺北市,北投區', 121.501, 25.1324, 'Beitou');
INSERT INTO `Sys_Region` VALUES (3340, '710200', '高雄市', 710000, 2, '中國,臺灣,高雄市', 120.312, 22.6209, 'Kaohsiung');
INSERT INTO `Sys_Region` VALUES (3341, '710201', '鹽埕區', 710200, 3, '中國,臺灣,高雄市,鹽埕區', 120.287, 22.6247, 'Yancheng');
INSERT INTO `Sys_Region` VALUES (3342, '710202', '鼓山區', 710200, 3, '中國,臺灣,高雄市,鼓山區', 120.281, 22.6368, 'Gushan');
INSERT INTO `Sys_Region` VALUES (3343, '710203', '左營區', 710200, 3, '中國,臺灣,高雄市,左營區', 120.295, 22.6901, 'Zuoying');
INSERT INTO `Sys_Region` VALUES (3344, '710204', '楠梓區', 710200, 3, '中國,臺灣,高雄市,楠梓區', 120.326, 22.7284, 'Nanzi');
INSERT INTO `Sys_Region` VALUES (3345, '710205', '三民區', 710200, 3, '中國,臺灣,高雄市,三民區', 120.3, 22.6477, 'Sanmin');
INSERT INTO `Sys_Region` VALUES (3346, '710206', '新興區', 710200, 3, '中國,臺灣,高雄市,新興區', 120.31, 22.6311, 'Xinxing');
INSERT INTO `Sys_Region` VALUES (3347, '710207', '前金區', 710200, 3, '中國,臺灣,高雄市,前金區', 120.294, 22.6274, 'Qianjin');
INSERT INTO `Sys_Region` VALUES (3348, '710208', '苓雅區', 710200, 3, '中國,臺灣,高雄市,苓雅區', 120.312, 22.6218, 'Lingya');
INSERT INTO `Sys_Region` VALUES (3349, '710209', '前鎮區', 710200, 3, '中國,臺灣,高雄市,前鎮區', 120.319, 22.5864, 'Qianzhen');
INSERT INTO `Sys_Region` VALUES (3350, '710210', '旗津區', 710200, 3, '中國,臺灣,高雄市,旗津區', 120.284, 22.5906, 'Qijin');
INSERT INTO `Sys_Region` VALUES (3351, '710211', '小港區', 710200, 3, '中國,臺灣,高雄市,小港區', 120.338, 22.5654, 'Xiaogang');
INSERT INTO `Sys_Region` VALUES (3352, '710212', '鳳山區', 710200, 3, '中國,臺灣,高雄市,鳳山區', 120.357, 22.6269, 'Fengshan');
INSERT INTO `Sys_Region` VALUES (3353, '710213', '林園區', 710200, 3, '中國,臺灣,高雄市,林園區', 120.396, 22.5015, 'Linyuan');
INSERT INTO `Sys_Region` VALUES (3354, '710214', '大寮區', 710200, 3, '中國,臺灣,高雄市,大寮區', 120.395, 22.6054, 'Daliao');
INSERT INTO `Sys_Region` VALUES (3355, '710215', '大樹區', 710200, 3, '中國,臺灣,高雄市,大樹區', 120.433, 22.6934, 'Dashu');
INSERT INTO `Sys_Region` VALUES (3356, '710216', '大社區', 710200, 3, '中國,臺灣,高雄市,大社區', 120.347, 22.73, 'Dashe');
INSERT INTO `Sys_Region` VALUES (3357, '710217', '仁武區', 710200, 3, '中國,臺灣,高雄市,仁武區', 120.348, 22.7019, 'Renwu');
INSERT INTO `Sys_Region` VALUES (3358, '710218', '鳥松區', 710200, 3, '中國,臺灣,高雄市,鳥松區', 120.364, 22.6593, 'Niaosong');
INSERT INTO `Sys_Region` VALUES (3359, '710219', '岡山區', 710200, 3, '中國,臺灣,高雄市,岡山區', 120.296, 22.7968, 'Gangshan');
INSERT INTO `Sys_Region` VALUES (3360, '710220', '橋頭區', 710200, 3, '中國,臺灣,高雄市,橋頭區', 120.306, 22.7575, 'Qiaotou');
INSERT INTO `Sys_Region` VALUES (3361, '710221', '燕巢區', 710200, 3, '中國,臺灣,高雄市,燕巢區', 120.362, 22.7934, 'Yanchao');
INSERT INTO `Sys_Region` VALUES (3362, '710222', '田寮區', 710200, 3, '中國,臺灣,高雄市,田寮區', 120.36, 22.8693, 'Tianliao');
INSERT INTO `Sys_Region` VALUES (3363, '710223', '阿蓮區', 710200, 3, '中國,臺灣,高雄市,阿蓮區', 120.327, 22.8837, 'Alian');
INSERT INTO `Sys_Region` VALUES (3364, '710224', '路竹區', 710200, 3, '中國,臺灣,高雄市,路竹區', 120.262, 22.8569, 'Luzhu');
INSERT INTO `Sys_Region` VALUES (3365, '710225', '湖內區', 710200, 3, '中國,臺灣,高雄市,湖內區', 120.212, 22.9082, 'Huna');
INSERT INTO `Sys_Region` VALUES (3366, '710226', '茄萣區', 710200, 3, '中國,臺灣,高雄市,茄萣區', 120.183, 22.9066, 'Qieding');
INSERT INTO `Sys_Region` VALUES (3367, '710227', '永安區', 710200, 3, '中國,臺灣,高雄市,永安區', 120.225, 22.8186, 'Yongan');
INSERT INTO `Sys_Region` VALUES (3368, '710228', '彌陀區', 710200, 3, '中國,臺灣,高雄市,彌陀區', 120.247, 22.7829, 'Mituo');
INSERT INTO `Sys_Region` VALUES (3369, '710229', '梓官區', 710200, 3, '中國,臺灣,高雄市,梓官區', 120.267, 22.7605, 'Ziguan');
INSERT INTO `Sys_Region` VALUES (3370, '710230', '旗山區', 710200, 3, '中國,臺灣,高雄市,旗山區', 120.484, 22.8885, 'Qishan');
INSERT INTO `Sys_Region` VALUES (3371, '710231', '美濃區', 710200, 3, '中國,臺灣,高雄市,美濃區', 120.542, 22.8979, 'Meinong');
INSERT INTO `Sys_Region` VALUES (3372, '710232', '六龜區', 710200, 3, '中國,臺灣,高雄市,六龜區', 120.633, 22.9979, 'Liugui');
INSERT INTO `Sys_Region` VALUES (3373, '710233', '甲仙區', 710200, 3, '中國,臺灣,高雄市,甲仙區', 120.591, 23.0847, 'Jiaxian');
INSERT INTO `Sys_Region` VALUES (3374, '710234', '杉林區', 710200, 3, '中國,臺灣,高雄市,杉林區', 120.539, 22.9707, 'Shanlin');
INSERT INTO `Sys_Region` VALUES (3375, '710235', '內門區', 710200, 3, '中國,臺灣,高雄市,內門區', 120.462, 22.9434, 'Namen');
INSERT INTO `Sys_Region` VALUES (3376, '710236', '茂林區', 710200, 3, '中國,臺灣,高雄市,茂林區', 120.663, 22.8862, 'Maolin');
INSERT INTO `Sys_Region` VALUES (3377, '710237', '桃源區', 710200, 3, '中國,臺灣,高雄市,桃源區', 120.76, 23.1591, 'Taoyuan');
INSERT INTO `Sys_Region` VALUES (3378, '710238', '那瑪夏區', 710200, 3, '中國,臺灣,高雄市,那瑪夏區', 120.693, 23.217, 'Namaxia');
INSERT INTO `Sys_Region` VALUES (3379, '710300', '基隆市', 710000, 2, '中國,臺灣,基隆市', 121.746, 25.1307, 'Keelung');
INSERT INTO `Sys_Region` VALUES (3380, '710301', '中正區', 710300, 3, '中國,臺灣,基隆市,中正區', 121.518, 25.0324, 'Zhongzheng');
INSERT INTO `Sys_Region` VALUES (3381, '710302', '七堵區', 710300, 3, '中國,臺灣,基隆市,七堵區', 121.713, 25.0957, 'Qidu');
INSERT INTO `Sys_Region` VALUES (3382, '710303', '暖暖區', 710300, 3, '中國,臺灣,基隆市,暖暖區', 121.736, 25.0998, 'Nuannuan');
INSERT INTO `Sys_Region` VALUES (3383, '710304', '仁愛區', 710300, 3, '中國,臺灣,基隆市,仁愛區', 121.741, 25.1275, 'Renai');
INSERT INTO `Sys_Region` VALUES (3384, '710305', '中山區', 710300, 3, '中國,臺灣,基隆市,中山區', 121.739, 25.134, 'Zhongshan');
INSERT INTO `Sys_Region` VALUES (3385, '710306', '安樂區', 710300, 3, '中國,臺灣,基隆市,安樂區', 121.723, 25.1209, 'Anle');
INSERT INTO `Sys_Region` VALUES (3386, '710307', '信義區', 710300, 3, '中國,臺灣,基隆市,信義區', 121.751, 25.1294, 'Xinyi');
INSERT INTO `Sys_Region` VALUES (3387, '710400', '臺中市', 710000, 2, '中國,臺灣,臺中市', 120.679, 24.1386, 'Taichung');
INSERT INTO `Sys_Region` VALUES (3388, '710401', '中區', 710400, 3, '中國,臺灣,臺中市,中區', 120.68, 24.1438, 'Zhongqu');
INSERT INTO `Sys_Region` VALUES (3389, '710402', '東區', 710400, 3, '中國,臺灣,臺中市,東區', 120.704, 24.1366, 'Dongqu');
INSERT INTO `Sys_Region` VALUES (3390, '710403', '南區', 710400, 3, '中國,臺灣,臺中市,南區', 120.189, 22.9609, 'Nanqu');
INSERT INTO `Sys_Region` VALUES (3391, '710404', '西區', 710400, 3, '中國,臺灣,臺中市,西區', 120.671, 24.1414, 'Xiqu');
INSERT INTO `Sys_Region` VALUES (3392, '710405', '北區', 710400, 3, '中國,臺灣,臺中市,北區', 120.682, 24.166, 'Beiqu');
INSERT INTO `Sys_Region` VALUES (3393, '710406', '西屯區', 710400, 3, '中國,臺灣,臺中市,西屯區', 120.64, 24.1813, 'Xitun');
INSERT INTO `Sys_Region` VALUES (3394, '710407', '南屯區', 710400, 3, '中國,臺灣,臺中市,南屯區', 120.643, 24.1383, 'Nantun');
INSERT INTO `Sys_Region` VALUES (3395, '710408', '北屯區', 710400, 3, '中國,臺灣,臺中市,北屯區', 120.686, 24.1822, 'Beitun');
INSERT INTO `Sys_Region` VALUES (3396, '710409', '豐原區', 710400, 3, '中國,臺灣,臺中市,豐原區', 120.718, 24.2422, 'Fengyuan');
INSERT INTO `Sys_Region` VALUES (3397, '710410', '東勢區', 710400, 3, '中國,臺灣,臺中市,東勢區', 120.828, 24.2586, 'Dongshi');
INSERT INTO `Sys_Region` VALUES (3398, '710411', '大甲區', 710400, 3, '中國,臺灣,臺中市,大甲區', 120.622, 24.3489, 'Dajia');
INSERT INTO `Sys_Region` VALUES (3399, '710412', '清水區', 710400, 3, '中國,臺灣,臺中市,清水區', 120.56, 24.2687, 'Qingshui');
INSERT INTO `Sys_Region` VALUES (3400, '710413', '沙鹿區', 710400, 3, '中國,臺灣,臺中市,沙鹿區', 120.566, 24.2335, 'Shalu');
INSERT INTO `Sys_Region` VALUES (3401, '710414', '梧棲區', 710400, 3, '中國,臺灣,臺中市,梧棲區', 120.532, 24.255, 'Wuqi');
INSERT INTO `Sys_Region` VALUES (3402, '710415', '后里區', 710400, 3, '中國,臺灣,臺中市,后里區', 120.711, 24.3049, 'Houli');
INSERT INTO `Sys_Region` VALUES (3403, '710416', '神岡區', 710400, 3, '中國,臺灣,臺中市,神岡區', 120.662, 24.2578, 'Shengang');
INSERT INTO `Sys_Region` VALUES (3404, '710417', '潭子區', 710400, 3, '中國,臺灣,臺中市,潭子區', 120.705, 24.2095, 'Tanzi');
INSERT INTO `Sys_Region` VALUES (3405, '710418', '大雅區', 710400, 3, '中國,臺灣,臺中市,大雅區', 120.648, 24.2292, 'Daya');
INSERT INTO `Sys_Region` VALUES (3406, '710419', '新社區', 710400, 3, '中國,臺灣,臺中市,新社區', 120.81, 24.2341, 'Xinshe');
INSERT INTO `Sys_Region` VALUES (3407, '710420', '石岡區', 710400, 3, '中國,臺灣,臺中市,石岡區', 120.78, 24.275, 'Shigang');
INSERT INTO `Sys_Region` VALUES (3408, '710421', '外埔區', 710400, 3, '中國,臺灣,臺中市,外埔區', 120.654, 24.332, 'Waipu');
INSERT INTO `Sys_Region` VALUES (3409, '710422', '大安區', 710400, 3, '中國,臺灣,臺中市,大安區', 120.587, 24.3461, 'Daan');
INSERT INTO `Sys_Region` VALUES (3410, '710423', '烏日區', 710400, 3, '中國,臺灣,臺中市,烏日區', 120.624, 24.1045, 'Wuri');
INSERT INTO `Sys_Region` VALUES (3411, '710424', '大肚區', 710400, 3, '中國,臺灣,臺中市,大肚區', 120.541, 24.1537, 'Dadu');
INSERT INTO `Sys_Region` VALUES (3412, '710425', '龍井區', 710400, 3, '中國,臺灣,臺中市,龍井區', 120.546, 24.1927, 'Longjing');
INSERT INTO `Sys_Region` VALUES (3413, '710426', '霧峰區', 710400, 3, '中國,臺灣,臺中市,霧峰區', 120.7, 24.0615, 'Wufeng');
INSERT INTO `Sys_Region` VALUES (3414, '710427', '太平區', 710400, 3, '中國,臺灣,臺中市,太平區', 120.719, 24.1265, 'Taiping');
INSERT INTO `Sys_Region` VALUES (3415, '710428', '大里區', 710400, 3, '中國,臺灣,臺中市,大里區', 120.678, 24.0994, 'Dali');
INSERT INTO `Sys_Region` VALUES (3416, '710429', '和平區', 710400, 3, '中國,臺灣,臺中市,和平區', 120.883, 24.1748, 'Heping');
INSERT INTO `Sys_Region` VALUES (3417, '710500', '臺南市', 710000, 2, '中國,臺灣,臺南市', 120.279, 23.1725, 'Tainan');
INSERT INTO `Sys_Region` VALUES (3418, '710501', '東區', 710500, 3, '中國,臺灣,臺南市,東區', 120.224, 22.9801, 'Dongqu');
INSERT INTO `Sys_Region` VALUES (3419, '710502', '南區', 710500, 3, '中國,臺灣,臺南市,南區', 120.189, 22.9609, 'Nanqu');
INSERT INTO `Sys_Region` VALUES (3420, '710504', '北區', 710500, 3, '中國,臺灣,臺南市,北區', 120.682, 24.166, 'Beiqu');
INSERT INTO `Sys_Region` VALUES (3421, '710506', '安南區', 710500, 3, '中國,臺灣,臺南市,安南區', 120.185, 23.0472, 'Annan');
INSERT INTO `Sys_Region` VALUES (3422, '710507', '安平區', 710500, 3, '中國,臺灣,臺南市,安平區', 120.167, 23.0008, 'Anping');
INSERT INTO `Sys_Region` VALUES (3423, '710508', '中西區', 710500, 3, '中國,臺灣,臺南市,中西區', 120.206, 22.9922, 'Zhongxi');
INSERT INTO `Sys_Region` VALUES (3424, '710509', '新營區', 710500, 3, '中國,臺灣,臺南市,新營區', 120.317, 23.3103, 'Xinying');
INSERT INTO `Sys_Region` VALUES (3425, '710510', '鹽水區', 710500, 3, '中國,臺灣,臺南市,鹽水區', 120.266, 23.3198, 'Yanshui');
INSERT INTO `Sys_Region` VALUES (3426, '710511', '白河區', 710500, 3, '中國,臺灣,臺南市,白河區', 120.416, 23.3512, 'Baihe');
INSERT INTO `Sys_Region` VALUES (3427, '710512', '柳營區', 710500, 3, '中國,臺灣,臺南市,柳營區', 120.311, 23.2781, 'Liuying');
INSERT INTO `Sys_Region` VALUES (3428, '710513', '后壁區', 710500, 3, '中國,臺灣,臺南市,后壁區', 120.363, 23.3667, 'Houbi');
INSERT INTO `Sys_Region` VALUES (3429, '710514', '東山區', 710500, 3, '中國,臺灣,臺南市,東山區', 120.404, 23.3261, 'Dongshan');
INSERT INTO `Sys_Region` VALUES (3430, '710515', '麻豆區', 710500, 3, '中國,臺灣,臺南市,麻豆區', 120.248, 23.1817, 'Madou');
INSERT INTO `Sys_Region` VALUES (3431, '710516', '下營區', 710500, 3, '中國,臺灣,臺南市,下營區', 120.264, 23.2354, 'Xiaying');
INSERT INTO `Sys_Region` VALUES (3432, '710517', '六甲區', 710500, 3, '中國,臺灣,臺南市,六甲區', 120.348, 23.2319, 'Liujia');
INSERT INTO `Sys_Region` VALUES (3433, '710518', '官田區', 710500, 3, '中國,臺灣,臺南市,官田區', 120.314, 23.1947, 'Guantian');
INSERT INTO `Sys_Region` VALUES (3434, '710519', '大內區', 710500, 3, '中國,臺灣,臺南市,大內區', 120.349, 23.1195, 'Dana');
INSERT INTO `Sys_Region` VALUES (3435, '710520', '佳里區', 710500, 3, '中國,臺灣,臺南市,佳里區', 120.177, 23.1651, 'Jiali');
INSERT INTO `Sys_Region` VALUES (3436, '710521', '學甲區', 710500, 3, '中國,臺灣,臺南市,學甲區', 120.18, 23.2323, 'Xuejia');
INSERT INTO `Sys_Region` VALUES (3437, '710522', '西港區', 710500, 3, '中國,臺灣,臺南市,西港區', 120.204, 23.1231, 'Xigang');
INSERT INTO `Sys_Region` VALUES (3438, '710523', '七股區', 710500, 3, '中國,臺灣,臺南市,七股區', 120.14, 23.1405, 'Qigu');
INSERT INTO `Sys_Region` VALUES (3439, '710524', '將軍區', 710500, 3, '中國,臺灣,臺南市,將軍區', 120.157, 23.1995, 'Jiangjun');
INSERT INTO `Sys_Region` VALUES (3440, '710525', '北門區', 710500, 3, '中國,臺灣,臺南市,北門區', 120.126, 23.2671, 'Beimen');
INSERT INTO `Sys_Region` VALUES (3441, '710526', '新化區', 710500, 3, '中國,臺灣,臺南市,新化區', 120.311, 23.0385, 'Xinhua');
INSERT INTO `Sys_Region` VALUES (3442, '710527', '善化區', 710500, 3, '中國,臺灣,臺南市,善化區', 120.297, 23.1323, 'Shanhua');
INSERT INTO `Sys_Region` VALUES (3443, '710528', '新市區', 710500, 3, '中國,臺灣,臺南市,新市區', 120.295, 23.079, 'Xinshi');
INSERT INTO `Sys_Region` VALUES (3444, '710529', '安定區', 710500, 3, '中國,臺灣,臺南市,安定區', 120.237, 23.1215, 'Anding');
INSERT INTO `Sys_Region` VALUES (3445, '710530', '山上區', 710500, 3, '中國,臺灣,臺南市,山上區', 120.353, 23.1032, 'Shanshang');
INSERT INTO `Sys_Region` VALUES (3446, '710531', '玉井區', 710500, 3, '中國,臺灣,臺南市,玉井區', 120.46, 23.1239, 'Yujing');
INSERT INTO `Sys_Region` VALUES (3447, '710532', '楠西區', 710500, 3, '中國,臺灣,臺南市,楠西區', 120.485, 23.1735, 'Nanxi');
INSERT INTO `Sys_Region` VALUES (3448, '710533', '南化區', 710500, 3, '中國,臺灣,臺南市,南化區', 120.477, 23.0426, 'Nanhua');
INSERT INTO `Sys_Region` VALUES (3449, '710534', '左鎮區', 710500, 3, '中國,臺灣,臺南市,左鎮區', 120.407, 23.058, 'Zuozhen');
INSERT INTO `Sys_Region` VALUES (3450, '710535', '仁德區', 710500, 3, '中國,臺灣,臺南市,仁德區', 120.252, 22.9722, 'Rende');
INSERT INTO `Sys_Region` VALUES (3451, '710536', '歸仁區', 710500, 3, '中國,臺灣,臺南市,歸仁區', 120.294, 22.9671, 'Guiren');
INSERT INTO `Sys_Region` VALUES (3452, '710537', '關廟區', 710500, 3, '中國,臺灣,臺南市,關廟區', 120.328, 22.9629, 'Guanmiao');
INSERT INTO `Sys_Region` VALUES (3453, '710538', '龍崎區', 710500, 3, '中國,臺灣,臺南市,龍崎區', 120.361, 22.9657, 'Longqi');
INSERT INTO `Sys_Region` VALUES (3454, '710539', '永康區', 710500, 3, '中國,臺灣,臺南市,永康區', 120.257, 23.0261, 'Yongkang');
INSERT INTO `Sys_Region` VALUES (3455, '710600', '新竹市', 710000, 2, '中國,臺灣,新竹市', 120.969, 24.8067, 'Hsinchu');
INSERT INTO `Sys_Region` VALUES (3456, '710601', '東區', 710600, 3, '中國,臺灣,新竹市,東區', 120.97, 24.8013, 'Dongqu');
INSERT INTO `Sys_Region` VALUES (3457, '710602', '北區', 710600, 3, '中國,臺灣,新竹市,北區', 120.682, 24.166, 'Beiqu');
INSERT INTO `Sys_Region` VALUES (3458, '710603', '香山區', 710600, 3, '中國,臺灣,新竹市,香山區', 120.957, 24.7689, 'Xiangshan');
INSERT INTO `Sys_Region` VALUES (3459, '710700', '嘉義市', 710000, 2, '中國,臺灣,嘉義市', 120.453, 23.4816, 'Chiayi');
INSERT INTO `Sys_Region` VALUES (3460, '710701', '東區', 710700, 3, '中國,臺灣,嘉義市,東區', 120.458, 23.4862, 'Dongqu');
INSERT INTO `Sys_Region` VALUES (3461, '710702', '西區', 710700, 3, '中國,臺灣,嘉義市,西區', 120.437, 23.473, 'Xiqu');
INSERT INTO `Sys_Region` VALUES (3462, '710800', '新北市', 710000, 2, '中國,臺灣,新北市', 121.466, 25.0124, 'New Taipei');
INSERT INTO `Sys_Region` VALUES (3463, '710801', '板橋區', 710800, 3, '中國,臺灣,新北市,板橋區', 121.459, 25.0096, 'Banqiao');
INSERT INTO `Sys_Region` VALUES (3464, '710802', '三重區', 710800, 3, '中國,臺灣,新北市,三重區', 121.488, 25.0615, 'Sanzhong');
INSERT INTO `Sys_Region` VALUES (3465, '710803', '中和區', 710800, 3, '中國,臺灣,新北市,中和區', 121.499, 24.9994, 'Zhonghe');
INSERT INTO `Sys_Region` VALUES (3466, '710804', '永和區', 710800, 3, '中國,臺灣,新北市,永和區', 121.514, 25.0078, 'Yonghe');
INSERT INTO `Sys_Region` VALUES (3467, '710805', '新莊區', 710800, 3, '中國,臺灣,新北市,新莊區', 121.45, 25.0359, 'Xinzhuang');
INSERT INTO `Sys_Region` VALUES (3468, '710806', '新店區', 710800, 3, '中國,臺灣,新北市,新店區', 121.542, 24.9676, 'Xindian');
INSERT INTO `Sys_Region` VALUES (3469, '710807', '樹林區', 710800, 3, '中國,臺灣,新北市,樹林區', 121.421, 24.9907, 'Shulin');
INSERT INTO `Sys_Region` VALUES (3470, '710808', '鶯歌區', 710800, 3, '中國,臺灣,新北市,鶯歌區', 121.355, 24.9554, 'Yingge');
INSERT INTO `Sys_Region` VALUES (3471, '710809', '三峽區', 710800, 3, '中國,臺灣,新北市,三峽區', 121.369, 24.9343, 'Sanxia');
INSERT INTO `Sys_Region` VALUES (3472, '710810', '淡水區', 710800, 3, '中國,臺灣,新北市,淡水區', 121.441, 25.1695, 'Danshui');
INSERT INTO `Sys_Region` VALUES (3473, '710811', '汐止區', 710800, 3, '中國,臺灣,新北市,汐止區', 121.629, 25.063, 'Xizhi');
INSERT INTO `Sys_Region` VALUES (3474, '710812', '瑞芳區', 710800, 3, '中國,臺灣,新北市,瑞芳區', 121.81, 25.1089, 'Ruifang');
INSERT INTO `Sys_Region` VALUES (3475, '710813', '土城區', 710800, 3, '中國,臺灣,新北市,土城區', 121.443, 24.9722, 'Tucheng');
INSERT INTO `Sys_Region` VALUES (3476, '710814', '蘆洲區', 710800, 3, '中國,臺灣,新北市,蘆洲區', 121.474, 25.0849, 'Luzhou');
INSERT INTO `Sys_Region` VALUES (3477, '710815', '五股區', 710800, 3, '中國,臺灣,新北市,五股區', 121.438, 25.0827, 'Wugu');
INSERT INTO `Sys_Region` VALUES (3478, '710816', '泰山區', 710800, 3, '中國,臺灣,新北市,泰山區', 121.431, 25.0589, 'Taishan');
INSERT INTO `Sys_Region` VALUES (3479, '710817', '林口區', 710800, 3, '中國,臺灣,新北市,林口區', 121.392, 25.0775, 'Linkou');
INSERT INTO `Sys_Region` VALUES (3480, '710818', '深坑區', 710800, 3, '中國,臺灣,新北市,深坑區', 121.616, 25.0023, 'Shenkeng');
INSERT INTO `Sys_Region` VALUES (3481, '710819', '石碇區', 710800, 3, '中國,臺灣,新北市,石碇區', 121.659, 24.9917, 'Shiding');
INSERT INTO `Sys_Region` VALUES (3482, '710820', '坪林區', 710800, 3, '中國,臺灣,新北市,坪林區', 121.711, 24.9374, 'Pinglin');
INSERT INTO `Sys_Region` VALUES (3483, '710821', '三芝區', 710800, 3, '中國,臺灣,新北市,三芝區', 121.501, 25.258, 'Sanzhi');
INSERT INTO `Sys_Region` VALUES (3484, '710822', '石門區', 710800, 3, '中國,臺灣,新北市,石門區', 121.568, 25.2904, 'Shimen');
INSERT INTO `Sys_Region` VALUES (3485, '710823', '八里區', 710800, 3, '中國,臺灣,新北市,八里區', 121.398, 25.1467, 'Bali');
INSERT INTO `Sys_Region` VALUES (3486, '710824', '平溪區', 710800, 3, '中國,臺灣,新北市,平溪區', 121.738, 25.0257, 'Pingxi');
INSERT INTO `Sys_Region` VALUES (3487, '710825', '雙溪區', 710800, 3, '中國,臺灣,新北市,雙溪區', 121.866, 25.0334, 'Shuangxi');
INSERT INTO `Sys_Region` VALUES (3488, '710826', '貢寮區', 710800, 3, '中國,臺灣,新北市,貢寮區', 121.908, 25.0224, 'Gongliao');
INSERT INTO `Sys_Region` VALUES (3489, '710827', '金山區', 710800, 3, '中國,臺灣,新北市,金山區', 121.636, 25.2219, 'Jinshan');
INSERT INTO `Sys_Region` VALUES (3490, '710828', '萬里區', 710800, 3, '中國,臺灣,新北市,萬里區', 121.689, 25.1812, 'Wanli');
INSERT INTO `Sys_Region` VALUES (3491, '710829', '烏來區', 710800, 3, '中國,臺灣,新北市,烏來區', 121.551, 24.8653, 'Wulai');
INSERT INTO `Sys_Region` VALUES (3492, '712200', '宜蘭縣', 710000, 2, '中國,臺灣,宜蘭縣', 121.5, 24.6, 'Yilan');
INSERT INTO `Sys_Region` VALUES (3493, '712201', '宜蘭市', 712200, 3, '中國,臺灣,宜蘭縣,宜蘭市', 121.753, 24.7517, 'Yilan');
INSERT INTO `Sys_Region` VALUES (3494, '712221', '羅東鎮', 712200, 3, '中國,臺灣,宜蘭縣,羅東鎮', 121.767, 24.677, 'Luodong');
INSERT INTO `Sys_Region` VALUES (3495, '712222', '蘇澳鎮', 712200, 3, '中國,臺灣,宜蘭縣,蘇澳鎮', 121.843, 24.5946, 'Suao');
INSERT INTO `Sys_Region` VALUES (3496, '712223', '頭城鎮', 712200, 3, '中國,臺灣,宜蘭縣,頭城鎮', 121.823, 24.8592, 'Toucheng');
INSERT INTO `Sys_Region` VALUES (3497, '712224', '礁溪鄉', 712200, 3, '中國,臺灣,宜蘭縣,礁溪鄉', 121.767, 24.8223, 'Jiaoxi');
INSERT INTO `Sys_Region` VALUES (3498, '712225', '壯圍鄉', 712200, 3, '中國,臺灣,宜蘭縣,壯圍鄉', 121.782, 24.7449, 'Zhuangwei');
INSERT INTO `Sys_Region` VALUES (3499, '712226', '員山鄉', 712200, 3, '中國,臺灣,宜蘭縣,員山鄉', 121.722, 24.7418, 'Yuanshan');
INSERT INTO `Sys_Region` VALUES (3500, '712227', '冬山鄉', 712200, 3, '中國,臺灣,宜蘭縣,冬山鄉', 121.792, 24.6345, 'Dongshan');
INSERT INTO `Sys_Region` VALUES (3501, '712228', '五結鄉', 712200, 3, '中國,臺灣,宜蘭縣,五結鄉', 121.798, 24.6846, 'Wujie');
INSERT INTO `Sys_Region` VALUES (3502, '712229', '三星鄉', 712200, 3, '中國,臺灣,宜蘭縣,三星鄉', 121.003, 23.7753, 'Sanxing');
INSERT INTO `Sys_Region` VALUES (3503, '712230', '大同鄉', 712200, 3, '中國,臺灣,宜蘭縣,大同鄉', 121.606, 24.676, 'Datong');
INSERT INTO `Sys_Region` VALUES (3504, '712231', '南澳鄉', 712200, 3, '中國,臺灣,宜蘭縣,南澳鄉', 121.8, 24.4654, 'Nanao');
INSERT INTO `Sys_Region` VALUES (3505, '712300', '桃園縣', 710000, 2, '中國,臺灣,桃園縣', 121.083, 25, 'Taoyuan');
INSERT INTO `Sys_Region` VALUES (3506, '712301', '桃園市', 712300, 3, '中國,臺灣,桃園縣,桃園市', 121.301, 24.9938, 'Taoyuan');
INSERT INTO `Sys_Region` VALUES (3507, '712302', '中壢市', 712300, 3, '中國,臺灣,桃園縣,中壢市', 121.225, 24.9654, 'Zhongli');
INSERT INTO `Sys_Region` VALUES (3508, '712303', '平鎮市', 712300, 3, '中國,臺灣,桃園縣,平鎮市', 121.218, 24.9458, 'Pingzhen');
INSERT INTO `Sys_Region` VALUES (3509, '712304', '八德市', 712300, 3, '中國,臺灣,桃園縣,八德市', 121.285, 24.9287, 'Bade');
INSERT INTO `Sys_Region` VALUES (3510, '712305', '楊梅市', 712300, 3, '中國,臺灣,桃園縣,楊梅市', 121.146, 24.9076, 'Yangmei');
INSERT INTO `Sys_Region` VALUES (3511, '712306', '蘆竹市', 712300, 3, '中國,臺灣,桃園縣,蘆竹市', 121.292, 25.0454, 'Luzhu');
INSERT INTO `Sys_Region` VALUES (3512, '712321', '大溪鎮', 712300, 3, '中國,臺灣,桃園縣,大溪鎮', 121.287, 24.8806, 'Daxi');
INSERT INTO `Sys_Region` VALUES (3513, '712324', '大園鄉', 712300, 3, '中國,臺灣,桃園縣,大園鄉', 121.196, 25.0645, 'Dayuan');
INSERT INTO `Sys_Region` VALUES (3514, '712325', '龜山鄉', 712300, 3, '中國,臺灣,桃園縣,龜山鄉', 121.338, 24.9925, 'Guishan');
INSERT INTO `Sys_Region` VALUES (3515, '712327', '龍潭鄉', 712300, 3, '中國,臺灣,桃園縣,龍潭鄉', 121.216, 24.8639, 'Longtan');
INSERT INTO `Sys_Region` VALUES (3516, '712329', '新屋鄉', 712300, 3, '中國,臺灣,桃園縣,新屋鄉', 121.106, 24.9722, 'Xinwu');
INSERT INTO `Sys_Region` VALUES (3517, '712330', '觀音鄉', 712300, 3, '中國,臺灣,桃園縣,觀音鄉', 121.078, 25.0333, 'Guanyin');
INSERT INTO `Sys_Region` VALUES (3518, '712331', '復興鄉', 712300, 3, '中國,臺灣,桃園縣,復興鄉', 121.353, 24.8209, 'Fuxing');
INSERT INTO `Sys_Region` VALUES (3519, '712400', '新竹縣', 710000, 2, '中國,臺灣,新竹縣', 121.16, 24.6, 'Hsinchu');
INSERT INTO `Sys_Region` VALUES (3520, '712401', '竹北市', 712400, 3, '中國,臺灣,新竹縣,竹北市', 121.004, 24.8397, 'Zhubei');
INSERT INTO `Sys_Region` VALUES (3521, '712421', '竹東鎮', 712400, 3, '中國,臺灣,新竹縣,竹東鎮', 121.086, 24.7336, 'Zhudong');
INSERT INTO `Sys_Region` VALUES (3522, '712422', '新埔鎮', 712400, 3, '中國,臺灣,新竹縣,新埔鎮', 121.073, 24.8248, 'Xinpu');
INSERT INTO `Sys_Region` VALUES (3523, '712423', '關西鎮', 712400, 3, '中國,臺灣,新竹縣,關西鎮', 121.177, 24.7888, 'Guanxi');
INSERT INTO `Sys_Region` VALUES (3524, '712424', '湖口鄉', 712400, 3, '中國,臺灣,新竹縣,湖口鄉', 121.044, 24.9039, 'Hukou');
INSERT INTO `Sys_Region` VALUES (3525, '712425', '新豐鄉', 712400, 3, '中國,臺灣,新竹縣,新豐鄉', 120.983, 24.8996, 'Xinfeng');
INSERT INTO `Sys_Region` VALUES (3526, '712426', '芎林鄉', 712400, 3, '中國,臺灣,新竹縣,芎林鄉', 121.077, 24.7744, 'Xionglin');
INSERT INTO `Sys_Region` VALUES (3527, '712427', '橫山鄉', 712400, 3, '中國,臺灣,新竹縣,橫山鄉', 121.116, 24.7208, 'Hengshan');
INSERT INTO `Sys_Region` VALUES (3528, '712428', '北埔鄉', 712400, 3, '中國,臺灣,新竹縣,北埔鄉', 121.053, 24.6971, 'Beipu');
INSERT INTO `Sys_Region` VALUES (3529, '712429', '寶山鄉', 712400, 3, '中國,臺灣,新竹縣,寶山鄉', 120.986, 24.761, 'Baoshan');
INSERT INTO `Sys_Region` VALUES (3530, '712430', '峨眉鄉', 712400, 3, '中國,臺灣,新竹縣,峨眉鄉', 121.015, 24.6861, 'Emei');
INSERT INTO `Sys_Region` VALUES (3531, '712431', '尖石鄉', 712400, 3, '中國,臺灣,新竹縣,尖石鄉', 121.198, 24.7044, 'Jianshi');
INSERT INTO `Sys_Region` VALUES (3532, '712432', '五峰鄉', 712400, 3, '中國,臺灣,新竹縣,五峰鄉', 121.003, 23.7753, 'Wufeng');
INSERT INTO `Sys_Region` VALUES (3533, '712500', '苗栗縣', 710000, 2, '中國,臺灣,苗栗縣', 120.75, 24.5, 'Miaoli');
INSERT INTO `Sys_Region` VALUES (3534, '712501', '苗栗市', 712500, 3, '中國,臺灣,苗栗縣,苗栗市', 120.819, 24.5615, 'Miaoli');
INSERT INTO `Sys_Region` VALUES (3535, '712521', '苑里鎮', 712500, 3, '中國,臺灣,苗栗縣,苑里鎮', 120.649, 24.4417, 'Yuanli');
INSERT INTO `Sys_Region` VALUES (3536, '712522', '通霄鎮', 712500, 3, '中國,臺灣,苗栗縣,通霄鎮', 120.677, 24.4891, 'Tongxiao');
INSERT INTO `Sys_Region` VALUES (3537, '712523', '竹南鎮', 712500, 3, '中國,臺灣,苗栗縣,竹南鎮', 120.873, 24.6855, 'Zhunan');
INSERT INTO `Sys_Region` VALUES (3538, '712524', '頭份鎮', 712500, 3, '中國,臺灣,苗栗縣,頭份鎮', 120.895, 24.688, 'Toufen');
INSERT INTO `Sys_Region` VALUES (3539, '712525', '后龍鎮', 712500, 3, '中國,臺灣,苗栗縣,后龍鎮', 120.786, 24.6126, 'Houlong');
INSERT INTO `Sys_Region` VALUES (3540, '712526', '卓蘭鎮', 712500, 3, '中國,臺灣,苗栗縣,卓蘭鎮', 120.823, 24.3095, 'Zhuolan');
INSERT INTO `Sys_Region` VALUES (3541, '712527', '大湖鄉', 712500, 3, '中國,臺灣,苗栗縣,大湖鄉', 120.864, 24.4225, 'Dahu');
INSERT INTO `Sys_Region` VALUES (3542, '712528', '公館鄉', 712500, 3, '中國,臺灣,苗栗縣,公館鄉', 120.823, 24.4991, 'Gongguan');
INSERT INTO `Sys_Region` VALUES (3543, '712529', '銅鑼鄉', 712500, 3, '中國,臺灣,苗栗縣,銅鑼鄉', 121.003, 23.7753, 'Tongluo');
INSERT INTO `Sys_Region` VALUES (3544, '712530', '南莊鄉', 712500, 3, '中國,臺灣,苗栗縣,南莊鄉', 120.995, 24.5968, 'Nanzhuang');
INSERT INTO `Sys_Region` VALUES (3545, '712531', '頭屋鄉', 712500, 3, '中國,臺灣,苗栗縣,頭屋鄉', 120.847, 24.5742, 'Touwu');
INSERT INTO `Sys_Region` VALUES (3546, '712532', '三義鄉', 712500, 3, '中國,臺灣,苗栗縣,三義鄉', 120.742, 24.3503, 'Sanyi');
INSERT INTO `Sys_Region` VALUES (3547, '712533', '西湖鄉', 712500, 3, '中國,臺灣,苗栗縣,西湖鄉', 121.003, 23.7753, 'Xihu');
INSERT INTO `Sys_Region` VALUES (3548, '712534', '造橋鄉', 712500, 3, '中國,臺灣,苗栗縣,造橋鄉', 120.862, 24.6375, 'Zaoqiao');
INSERT INTO `Sys_Region` VALUES (3549, '712535', '三灣鄉', 712500, 3, '中國,臺灣,苗栗縣,三灣鄉', 120.951, 24.6511, 'Sanwan');
INSERT INTO `Sys_Region` VALUES (3550, '712536', '獅潭鄉', 712500, 3, '中國,臺灣,苗栗縣,獅潭鄉', 120.918, 24.54, 'Shitan');
INSERT INTO `Sys_Region` VALUES (3551, '712537', '泰安鄉', 712500, 3, '中國,臺灣,苗栗縣,泰安鄉', 120.904, 24.4426, 'Taian');
INSERT INTO `Sys_Region` VALUES (3552, '712700', '彰化縣', 710000, 2, '中國,臺灣,彰化縣', 120.416, 24, 'Changhua');
INSERT INTO `Sys_Region` VALUES (3553, '712701', '彰化市', 712700, 3, '中國,臺灣,彰化縣,彰化市', 120.542, 24.0809, 'Zhanghuashi');
INSERT INTO `Sys_Region` VALUES (3554, '712721', '鹿港鎮', 712700, 3, '中國,臺灣,彰化縣,鹿港鎮', 120.435, 24.0569, 'Lugang');
INSERT INTO `Sys_Region` VALUES (3555, '712722', '和美鎮', 712700, 3, '中國,臺灣,彰化縣,和美鎮', 120.5, 24.1109, 'Hemei');
INSERT INTO `Sys_Region` VALUES (3556, '712723', '線西鄉', 712700, 3, '中國,臺灣,彰化縣,線西鄉', 120.466, 24.1287, 'Xianxi');
INSERT INTO `Sys_Region` VALUES (3557, '712724', '伸港鄉', 712700, 3, '中國,臺灣,彰化縣,伸港鄉', 120.484, 24.1461, 'Shengang');
INSERT INTO `Sys_Region` VALUES (3558, '712725', '福興鄉', 712700, 3, '中國,臺灣,彰化縣,福興鄉', 120.444, 24.0479, 'Fuxing');
INSERT INTO `Sys_Region` VALUES (3559, '712726', '秀水鄉', 712700, 3, '中國,臺灣,彰化縣,秀水鄉', 120.503, 24.0353, 'Xiushui');
INSERT INTO `Sys_Region` VALUES (3560, '712727', '花壇鄉', 712700, 3, '中國,臺灣,彰化縣,花壇鄉', 120.538, 24.0294, 'Huatan');
INSERT INTO `Sys_Region` VALUES (3561, '712728', '芬園鄉', 712700, 3, '中國,臺灣,彰化縣,芬園鄉', 120.629, 24.0137, 'Fenyuan');
INSERT INTO `Sys_Region` VALUES (3562, '712729', '員林鎮', 712700, 3, '中國,臺灣,彰化縣,員林鎮', 120.575, 23.959, 'Yuanlin');
INSERT INTO `Sys_Region` VALUES (3563, '712730', '溪湖鎮', 712700, 3, '中國,臺灣,彰化縣,溪湖鎮', 120.479, 23.9623, 'Xihu');
INSERT INTO `Sys_Region` VALUES (3564, '712731', '田中鎮', 712700, 3, '中國,臺灣,彰化縣,田中鎮', 120.581, 23.8617, 'Tianzhong');
INSERT INTO `Sys_Region` VALUES (3565, '712732', '大村鄉', 712700, 3, '中國,臺灣,彰化縣,大村鄉', 120.541, 23.9937, 'Dacun');
INSERT INTO `Sys_Region` VALUES (3566, '712733', '埔鹽鄉', 712700, 3, '中國,臺灣,彰化縣,埔鹽鄉', 120.464, 24.0003, 'Puyan');
INSERT INTO `Sys_Region` VALUES (3567, '712734', '埔心鄉', 712700, 3, '中國,臺灣,彰化縣,埔心鄉', 120.544, 23.953, 'Puxin');
INSERT INTO `Sys_Region` VALUES (3568, '712735', '永靖鄉', 712700, 3, '中國,臺灣,彰化縣,永靖鄉', 120.548, 23.9247, 'Yongjing');
INSERT INTO `Sys_Region` VALUES (3569, '712736', '社頭鄉', 712700, 3, '中國,臺灣,彰化縣,社頭鄉', 120.583, 23.8967, 'Shetou');
INSERT INTO `Sys_Region` VALUES (3570, '712737', '二水鄉', 712700, 3, '中國,臺灣,彰化縣,二水鄉', 120.619, 23.807, 'Ershui');
INSERT INTO `Sys_Region` VALUES (3571, '712738', '北斗鎮', 712700, 3, '中國,臺灣,彰化縣,北斗鎮', 120.52, 23.8709, 'Beidou');
INSERT INTO `Sys_Region` VALUES (3572, '712739', '二林鎮', 712700, 3, '中國,臺灣,彰化縣,二林鎮', 120.374, 23.8998, 'Erlin');
INSERT INTO `Sys_Region` VALUES (3573, '712740', '田尾鄉', 712700, 3, '中國,臺灣,彰化縣,田尾鄉', 120.525, 23.8907, 'Tianwei');
INSERT INTO `Sys_Region` VALUES (3574, '712741', '埤頭鄉', 712700, 3, '中國,臺灣,彰化縣,埤頭鄉', 120.463, 23.8913, 'Pitou');
INSERT INTO `Sys_Region` VALUES (3575, '712742', '芳苑鄉', 712700, 3, '中國,臺灣,彰化縣,芳苑鄉', 120.32, 23.9242, 'Fangyuan');
INSERT INTO `Sys_Region` VALUES (3576, '712743', '大城鄉', 712700, 3, '中國,臺灣,彰化縣,大城鄉', 120.321, 23.8524, 'Dacheng');
INSERT INTO `Sys_Region` VALUES (3577, '712744', '竹塘鄉', 712700, 3, '中國,臺灣,彰化縣,竹塘鄉', 120.427, 23.8601, 'Zhutang');
INSERT INTO `Sys_Region` VALUES (3578, '712745', '溪州鄉', 712700, 3, '中國,臺灣,彰化縣,溪州鄉', 120.499, 23.8512, 'Xizhou');
INSERT INTO `Sys_Region` VALUES (3579, '712800', '南投縣', 710000, 2, '中國,臺灣,南投縣', 120.83, 23.83, 'Nantou');
INSERT INTO `Sys_Region` VALUES (3580, '712801', '南投市', 712800, 3, '中國,臺灣,南投縣,南投市', 120.684, 23.91, 'Nantoushi');
INSERT INTO `Sys_Region` VALUES (3581, '712821', '埔里鎮', 712800, 3, '中國,臺灣,南投縣,埔里鎮', 120.965, 23.9648, 'Puli');
INSERT INTO `Sys_Region` VALUES (3582, '712822', '草屯鎮', 712800, 3, '中國,臺灣,南投縣,草屯鎮', 120.68, 23.9739, 'Caotun');
INSERT INTO `Sys_Region` VALUES (3583, '712823', '竹山鎮', 712800, 3, '中國,臺灣,南投縣,竹山鎮', 120.672, 23.7577, 'Zhushan');
INSERT INTO `Sys_Region` VALUES (3584, '712824', '集集鎮', 712800, 3, '中國,臺灣,南投縣,集集鎮', 120.784, 23.829, 'Jiji');
INSERT INTO `Sys_Region` VALUES (3585, '712825', '名間鄉', 712800, 3, '中國,臺灣,南投縣,名間鄉', 120.703, 23.8384, 'Mingjian');
INSERT INTO `Sys_Region` VALUES (3586, '712826', '鹿谷鄉', 712800, 3, '中國,臺灣,南投縣,鹿谷鄉', 120.753, 23.7445, 'Lugu');
INSERT INTO `Sys_Region` VALUES (3587, '712827', '中寮鄉', 712800, 3, '中國,臺灣,南投縣,中寮鄉', 120.767, 23.8789, 'Zhongliao');
INSERT INTO `Sys_Region` VALUES (3588, '712828', '魚池鄉', 712800, 3, '中國,臺灣,南投縣,魚池鄉', 120.936, 23.8964, 'Yuchi');
INSERT INTO `Sys_Region` VALUES (3589, '712829', '國姓鄉', 712800, 3, '中國,臺灣,南投縣,國姓鄉', 120.859, 24.0423, 'Guoxing');
INSERT INTO `Sys_Region` VALUES (3590, '712830', '水里鄉', 712800, 3, '中國,臺灣,南投縣,水里鄉', 120.856, 23.8121, 'Shuili');
INSERT INTO `Sys_Region` VALUES (3591, '712831', '信義鄉', 712800, 3, '中國,臺灣,南投縣,信義鄉', 120.855, 23.6999, 'Xinyi');
INSERT INTO `Sys_Region` VALUES (3592, '712832', '仁愛鄉', 712800, 3, '中國,臺灣,南投縣,仁愛鄉', 121.134, 24.0244, 'Renai');
INSERT INTO `Sys_Region` VALUES (3593, '712900', '云林縣', 710000, 2, '中國,臺灣,云林縣', 120.25, 23.75, 'Yunlin');
INSERT INTO `Sys_Region` VALUES (3594, '712901', '斗六市', 712900, 3, '中國,臺灣,云林縣,斗六市', 120.527, 23.6977, 'Douliu');
INSERT INTO `Sys_Region` VALUES (3595, '712921', '斗南鎮', 712900, 3, '中國,臺灣,云林縣,斗南鎮', 120.479, 23.6797, 'Dounan');
INSERT INTO `Sys_Region` VALUES (3596, '712922', '虎尾鎮', 712900, 3, '中國,臺灣,云林縣,虎尾鎮', 120.445, 23.7082, 'Huwei');
INSERT INTO `Sys_Region` VALUES (3597, '712923', '西螺鎮', 712900, 3, '中國,臺灣,云林縣,西螺鎮', 120.466, 23.798, 'Xiluo');
INSERT INTO `Sys_Region` VALUES (3598, '712924', '土庫鎮', 712900, 3, '中國,臺灣,云林縣,土庫鎮', 120.393, 23.6778, 'Tuku');
INSERT INTO `Sys_Region` VALUES (3599, '712925', '北港鎮', 712900, 3, '中國,臺灣,云林縣,北港鎮', 120.302, 23.5755, 'Beigang');
INSERT INTO `Sys_Region` VALUES (3600, '712926', '古坑鄉', 712900, 3, '中國,臺灣,云林縣,古坑鄉', 120.562, 23.6426, 'Gukeng');
INSERT INTO `Sys_Region` VALUES (3601, '712927', '大埤鄉', 712900, 3, '中國,臺灣,云林縣,大埤鄉', 120.431, 23.6459, 'Dapi');
INSERT INTO `Sys_Region` VALUES (3602, '712928', '莿桐鄉', 712900, 3, '中國,臺灣,云林縣,莿桐鄉', 120.502, 23.7608, 'Citong');
INSERT INTO `Sys_Region` VALUES (3603, '712929', '林內鄉', 712900, 3, '中國,臺灣,云林縣,林內鄉', 120.611, 23.7587, 'Linna');
INSERT INTO `Sys_Region` VALUES (3604, '712930', '二侖鄉', 712900, 3, '中國,臺灣,云林縣,二侖鄉', 120.415, 23.7713, 'Erlun');
INSERT INTO `Sys_Region` VALUES (3605, '712931', '侖背鄉', 712900, 3, '中國,臺灣,云林縣,侖背鄉', 120.354, 23.7588, 'Lunbei');
INSERT INTO `Sys_Region` VALUES (3606, '712932', '麥寮鄉', 712900, 3, '中國,臺灣,云林縣,麥寮鄉', 120.252, 23.7538, 'Mailiao');
INSERT INTO `Sys_Region` VALUES (3607, '712933', '東勢鄉', 712900, 3, '中國,臺灣,云林縣,東勢鄉', 120.253, 23.6747, 'Dongshi');
INSERT INTO `Sys_Region` VALUES (3608, '712934', '褒忠鄉', 712900, 3, '中國,臺灣,云林縣,褒忠鄉', 120.31, 23.6942, 'Baozhong');
INSERT INTO `Sys_Region` VALUES (3609, '712935', '臺西鄉', 712900, 3, '中國,臺灣,云林縣,臺西鄉', 120.196, 23.7028, 'Taixi');
INSERT INTO `Sys_Region` VALUES (3610, '712936', '元長鄉', 712900, 3, '中國,臺灣,云林縣,元長鄉', 120.315, 23.6495, 'Yuanchang');
INSERT INTO `Sys_Region` VALUES (3611, '712937', '四湖鄉', 712900, 3, '中國,臺灣,云林縣,四湖鄉', 120.226, 23.6377, 'Sihu');
INSERT INTO `Sys_Region` VALUES (3612, '712938', '口湖鄉', 712900, 3, '中國,臺灣,云林縣,口湖鄉', 120.185, 23.5824, 'Kouhu');
INSERT INTO `Sys_Region` VALUES (3613, '712939', '水林鄉', 712900, 3, '中國,臺灣,云林縣,水林鄉', 120.246, 23.5726, 'Shuilin');
INSERT INTO `Sys_Region` VALUES (3614, '713000', '嘉義縣', 710000, 2, '中國,臺灣,嘉義縣', 120.3, 23.5, 'Chiayi');
INSERT INTO `Sys_Region` VALUES (3615, '713001', '太保市', 713000, 3, '中國,臺灣,嘉義縣,太保市', 120.333, 23.4596, 'Taibao');
INSERT INTO `Sys_Region` VALUES (3616, '713002', '樸子市', 713000, 3, '中國,臺灣,嘉義縣,樸子市', 120.247, 23.465, 'Puzi');
INSERT INTO `Sys_Region` VALUES (3617, '713023', '布袋鎮', 713000, 3, '中國,臺灣,嘉義縣,布袋鎮', 120.167, 23.378, 'Budai');
INSERT INTO `Sys_Region` VALUES (3618, '713024', '大林鎮', 713000, 3, '中國,臺灣,嘉義縣,大林鎮', 120.471, 23.6038, 'Dalin');
INSERT INTO `Sys_Region` VALUES (3619, '713025', '民雄鄉', 713000, 3, '中國,臺灣,嘉義縣,民雄鄉', 120.429, 23.5515, 'Minxiong');
INSERT INTO `Sys_Region` VALUES (3620, '713026', '溪口鄉', 713000, 3, '中國,臺灣,嘉義縣,溪口鄉', 120.394, 23.6022, 'Xikou');
INSERT INTO `Sys_Region` VALUES (3621, '713027', '新港鄉', 713000, 3, '中國,臺灣,嘉義縣,新港鄉', 120.348, 23.5518, 'Xingang');
INSERT INTO `Sys_Region` VALUES (3622, '713028', '六腳鄉', 713000, 3, '中國,臺灣,嘉義縣,六腳鄉', 120.291, 23.4939, 'Liujiao');
INSERT INTO `Sys_Region` VALUES (3623, '713029', '東石鄉', 713000, 3, '中國,臺灣,嘉義縣,東石鄉', 120.154, 23.4592, 'Dongshi');
INSERT INTO `Sys_Region` VALUES (3624, '713030', '義竹鄉', 713000, 3, '中國,臺灣,嘉義縣,義竹鄉', 120.243, 23.3363, 'Yizhu');
INSERT INTO `Sys_Region` VALUES (3625, '713031', '鹿草鄉', 713000, 3, '中國,臺灣,嘉義縣,鹿草鄉', 120.308, 23.4108, 'Lucao');
INSERT INTO `Sys_Region` VALUES (3626, '713032', '水上鄉', 713000, 3, '中國,臺灣,嘉義縣,水上鄉', 120.398, 23.4281, 'Shuishang');
INSERT INTO `Sys_Region` VALUES (3627, '713033', '中埔鄉', 713000, 3, '中國,臺灣,嘉義縣,中埔鄉', 120.523, 23.4251, 'Zhongpu');
INSERT INTO `Sys_Region` VALUES (3628, '713034', '竹崎鄉', 713000, 3, '中國,臺灣,嘉義縣,竹崎鄉', 120.551, 23.5232, 'Zhuqi');
INSERT INTO `Sys_Region` VALUES (3629, '713035', '梅山鄉', 713000, 3, '中國,臺灣,嘉義縣,梅山鄉', 120.557, 23.5849, 'Meishan');
INSERT INTO `Sys_Region` VALUES (3630, '713036', '番路鄉', 713000, 3, '中國,臺灣,嘉義縣,番路鄉', 120.555, 23.4652, 'Fanlu');
INSERT INTO `Sys_Region` VALUES (3631, '713037', '大埔鄉', 713000, 3, '中國,臺灣,嘉義縣,大埔鄉', 120.594, 23.2967, 'Dapu');
INSERT INTO `Sys_Region` VALUES (3632, '713038', '阿里山鄉', 713000, 3, '中國,臺灣,嘉義縣,阿里山鄉', 120.733, 23.468, 'Alishan');
INSERT INTO `Sys_Region` VALUES (3633, '713300', '屏東縣', 710000, 2, '中國,臺灣,屏東縣', 120.488, 22.6828, 'Pingtung');
INSERT INTO `Sys_Region` VALUES (3634, '713301', '屏東市', 713300, 3, '中國,臺灣,屏東縣,屏東市', 120.488, 22.6697, 'Pingdong');
INSERT INTO `Sys_Region` VALUES (3635, '713321', '潮州鎮', 713300, 3, '中國,臺灣,屏東縣,潮州鎮', 120.543, 22.5505, 'Chaozhou');
INSERT INTO `Sys_Region` VALUES (3636, '713322', '東港鎮', 713300, 3, '中國,臺灣,屏東縣,東港鎮', 120.454, 22.4666, 'Donggang');
INSERT INTO `Sys_Region` VALUES (3637, '713323', '恒春鎮', 713300, 3, '中國,臺灣,屏東縣,恒春鎮', 120.745, 22.0024, 'Hengchun');
INSERT INTO `Sys_Region` VALUES (3638, '713324', '萬丹鄉', 713300, 3, '中國,臺灣,屏東縣,萬丹鄉', 120.485, 22.5898, 'Wandan');
INSERT INTO `Sys_Region` VALUES (3639, '713325', '長治鄉', 713300, 3, '中國,臺灣,屏東縣,長治鄉', 120.528, 22.6771, 'Changzhi');
INSERT INTO `Sys_Region` VALUES (3640, '713326', '麟洛鄉', 713300, 3, '中國,臺灣,屏東縣,麟洛鄉', 120.527, 22.6506, 'Linluo');
INSERT INTO `Sys_Region` VALUES (3641, '713327', '九如鄉', 713300, 3, '中國,臺灣,屏東縣,九如鄉', 120.49, 22.7398, 'Jiuru');
INSERT INTO `Sys_Region` VALUES (3642, '713328', '里港鄉', 713300, 3, '中國,臺灣,屏東縣,里港鄉', 120.494, 22.7792, 'Ligang');
INSERT INTO `Sys_Region` VALUES (3643, '713329', '鹽埔鄉', 713300, 3, '中國,臺灣,屏東縣,鹽埔鄉', 120.573, 22.7548, 'Yanpu');
INSERT INTO `Sys_Region` VALUES (3644, '713330', '高樹鄉', 713300, 3, '中國,臺灣,屏東縣,高樹鄉', 120.6, 22.8268, 'Gaoshu');
INSERT INTO `Sys_Region` VALUES (3645, '713331', '萬巒鄉', 713300, 3, '中國,臺灣,屏東縣,萬巒鄉', 120.566, 22.572, 'Wanluan');
INSERT INTO `Sys_Region` VALUES (3646, '713332', '內埔鄉', 713300, 3, '中國,臺灣,屏東縣,內埔鄉', 120.567, 22.612, 'Napu');
INSERT INTO `Sys_Region` VALUES (3647, '713333', '竹田鄉', 713300, 3, '中國,臺灣,屏東縣,竹田鄉', 120.544, 22.5847, 'Zhutian');
INSERT INTO `Sys_Region` VALUES (3648, '713334', '新埤鄉', 713300, 3, '中國,臺灣,屏東縣,新埤鄉', 120.55, 22.47, 'Xinpi');
INSERT INTO `Sys_Region` VALUES (3649, '713335', '枋寮鄉', 713300, 3, '中國,臺灣,屏東縣,枋寮鄉', 120.593, 22.3656, 'Fangliao');
INSERT INTO `Sys_Region` VALUES (3650, '713336', '新園鄉', 713300, 3, '中國,臺灣,屏東縣,新園鄉', 120.462, 22.544, 'Xinyuan');
INSERT INTO `Sys_Region` VALUES (3651, '713337', '崁頂鄉', 713300, 3, '中國,臺灣,屏東縣,崁頂鄉', 120.515, 22.5148, 'Kanding');
INSERT INTO `Sys_Region` VALUES (3652, '713338', '林邊鄉', 713300, 3, '中國,臺灣,屏東縣,林邊鄉', 120.515, 22.434, 'Linbian');
INSERT INTO `Sys_Region` VALUES (3653, '713339', '南州鄉', 713300, 3, '中國,臺灣,屏東縣,南州鄉', 120.51, 22.4902, 'Nanzhou');
INSERT INTO `Sys_Region` VALUES (3654, '713340', '佳冬鄉', 713300, 3, '中國,臺灣,屏東縣,佳冬鄉', 120.552, 22.4177, 'Jiadong');
INSERT INTO `Sys_Region` VALUES (3655, '713341', '琉球鄉', 713300, 3, '中國,臺灣,屏東縣,琉球鄉', 120.369, 22.3424, 'Liuqiu');
INSERT INTO `Sys_Region` VALUES (3656, '713342', '車城鄉', 713300, 3, '中國,臺灣,屏東縣,車城鄉', 120.711, 22.0721, 'Checheng');
INSERT INTO `Sys_Region` VALUES (3657, '713343', '滿州鄉', 713300, 3, '中國,臺灣,屏東縣,滿州鄉', 120.839, 22.0209, 'Manzhou');
INSERT INTO `Sys_Region` VALUES (3658, '713344', '枋山鄉', 713300, 3, '中國,臺灣,屏東縣,枋山鄉', 120.656, 22.2603, 'Fangshan');
INSERT INTO `Sys_Region` VALUES (3659, '713345', '三地門鄉', 713300, 3, '中國,臺灣,屏東縣,三地門鄉', 120.654, 22.7139, 'Sandimen');
INSERT INTO `Sys_Region` VALUES (3660, '713346', '霧臺鄉', 713300, 3, '中國,臺灣,屏東縣,霧臺鄉', 120.732, 22.7449, 'Wutai');
INSERT INTO `Sys_Region` VALUES (3661, '713347', '瑪家鄉', 713300, 3, '中國,臺灣,屏東縣,瑪家鄉', 120.644, 22.7067, 'Majia');
INSERT INTO `Sys_Region` VALUES (3662, '713348', '泰武鄉', 713300, 3, '中國,臺灣,屏東縣,泰武鄉', 120.633, 22.5918, 'Taiwu');
INSERT INTO `Sys_Region` VALUES (3663, '713349', '來義鄉', 713300, 3, '中國,臺灣,屏東縣,來義鄉', 120.634, 22.5259, 'Laiyi');
INSERT INTO `Sys_Region` VALUES (3664, '713350', '春日鄉', 713300, 3, '中國,臺灣,屏東縣,春日鄉', 120.629, 22.3707, 'Chunri');
INSERT INTO `Sys_Region` VALUES (3665, '713351', '獅子鄉', 713300, 3, '中國,臺灣,屏東縣,獅子鄉', 120.705, 22.2019, 'Shizi');
INSERT INTO `Sys_Region` VALUES (3666, '713352', '牡丹鄉', 713300, 3, '中國,臺灣,屏東縣,牡丹鄉', 120.77, 22.1257, 'Mudan');
INSERT INTO `Sys_Region` VALUES (3667, '713400', '臺東縣', 710000, 2, '中國,臺灣,臺東縣', 120.916, 23, 'Taitung');
INSERT INTO `Sys_Region` VALUES (3668, '713401', '臺東市', 713400, 3, '中國,臺灣,臺東縣,臺東市', 121.146, 22.756, 'Taidong');
INSERT INTO `Sys_Region` VALUES (3669, '713421', '成功鎮', 713400, 3, '中國,臺灣,臺東縣,成功鎮', 121.38, 23.1002, 'Chenggong');
INSERT INTO `Sys_Region` VALUES (3670, '713422', '關山鎮', 713400, 3, '中國,臺灣,臺東縣,關山鎮', 121.163, 23.0474, 'Guanshan');
INSERT INTO `Sys_Region` VALUES (3671, '713423', '卑南鄉', 713400, 3, '中國,臺灣,臺東縣,卑南鄉', 121.084, 22.786, 'Beinan');
INSERT INTO `Sys_Region` VALUES (3672, '713424', '鹿野鄉', 713400, 3, '中國,臺灣,臺東縣,鹿野鄉', 121.136, 22.914, 'Luye');
INSERT INTO `Sys_Region` VALUES (3673, '713425', '池上鄉', 713400, 3, '中國,臺灣,臺東縣,池上鄉', 121.215, 23.1224, 'Chishang');
INSERT INTO `Sys_Region` VALUES (3674, '713426', '東河鄉', 713400, 3, '中國,臺灣,臺東縣,東河鄉', 121.3, 22.9699, 'Donghe');
INSERT INTO `Sys_Region` VALUES (3675, '713427', '長濱鄉', 713400, 3, '中國,臺灣,臺東縣,長濱鄉', 121.452, 23.315, 'Changbin');
INSERT INTO `Sys_Region` VALUES (3676, '713428', '太麻里鄉', 713400, 3, '中國,臺灣,臺東縣,太麻里鄉', 121.007, 22.6154, 'Taimali');
INSERT INTO `Sys_Region` VALUES (3677, '713429', '大武鄉', 713400, 3, '中國,臺灣,臺東縣,大武鄉', 120.89, 22.3399, 'Dawu');
INSERT INTO `Sys_Region` VALUES (3678, '713430', '綠島鄉', 713400, 3, '中國,臺灣,臺東縣,綠島鄉', 121.493, 22.6617, 'Lvdao');
INSERT INTO `Sys_Region` VALUES (3679, '713431', '海端鄉', 713400, 3, '中國,臺灣,臺東縣,海端鄉', 121.172, 23.1011, 'Haiduan');
INSERT INTO `Sys_Region` VALUES (3680, '713432', '延平鄉', 713400, 3, '中國,臺灣,臺東縣,延平鄉', 121.084, 22.9024, 'Yanping');
INSERT INTO `Sys_Region` VALUES (3681, '713433', '金峰鄉', 713400, 3, '中國,臺灣,臺東縣,金峰鄉', 120.971, 22.5955, 'Jinfeng');
INSERT INTO `Sys_Region` VALUES (3682, '713434', '達仁鄉', 713400, 3, '中國,臺灣,臺東縣,達仁鄉', 120.884, 22.2949, 'Daren');
INSERT INTO `Sys_Region` VALUES (3683, '713435', '蘭嶼鄉', 713400, 3, '中國,臺灣,臺東縣,蘭嶼鄉', 121.532, 22.0567, 'Lanyu');
INSERT INTO `Sys_Region` VALUES (3684, '713500', '花蓮縣', 710000, 2, '中國,臺灣,花蓮縣', 121.3, 23.83, 'Hualien');
INSERT INTO `Sys_Region` VALUES (3685, '713501', '花蓮市', 713500, 3, '中國,臺灣,花蓮縣,花蓮市', 121.607, 23.9821, 'Hualian');
INSERT INTO `Sys_Region` VALUES (3686, '713521', '鳳林鎮', 713500, 3, '中國,臺灣,花蓮縣,鳳林鎮', 121.452, 23.7446, 'Fenglin');
INSERT INTO `Sys_Region` VALUES (3687, '713522', '玉里鎮', 713500, 3, '中國,臺灣,花蓮縣,玉里鎮', 121.316, 23.3365, 'Yuli');
INSERT INTO `Sys_Region` VALUES (3688, '713523', '新城鄉', 713500, 3, '中國,臺灣,花蓮縣,新城鄉', 121.641, 24.1281, 'Xincheng');
INSERT INTO `Sys_Region` VALUES (3689, '713524', '吉安鄉', 713500, 3, '中國,臺灣,花蓮縣,吉安鄉', 121.568, 23.9616, 'Jian');
INSERT INTO `Sys_Region` VALUES (3690, '713525', '壽豐鄉', 713500, 3, '中國,臺灣,花蓮縣,壽豐鄉', 121.509, 23.8707, 'Shoufeng');
INSERT INTO `Sys_Region` VALUES (3691, '713526', '光復鄉', 713500, 3, '中國,臺灣,花蓮縣,光復鄉', 121.423, 23.6691, 'Guangfu');
INSERT INTO `Sys_Region` VALUES (3692, '713527', '豐濱鄉', 713500, 3, '中國,臺灣,花蓮縣,豐濱鄉', 121.519, 23.5971, 'Fengbin');
INSERT INTO `Sys_Region` VALUES (3693, '713528', '瑞穗鄉', 713500, 3, '中國,臺灣,花蓮縣,瑞穗鄉', 121.376, 23.4968, 'Ruisui');
INSERT INTO `Sys_Region` VALUES (3694, '713529', '富里鄉', 713500, 3, '中國,臺灣,花蓮縣,富里鄉', 121.25, 23.18, 'Fuli');
INSERT INTO `Sys_Region` VALUES (3695, '713530', '秀林鄉', 713500, 3, '中國,臺灣,花蓮縣,秀林鄉', 121.62, 24.1166, 'Xiulin');
INSERT INTO `Sys_Region` VALUES (3696, '713531', '萬榮鄉', 713500, 3, '中國,臺灣,花蓮縣,萬榮鄉', 121.407, 23.7153, 'Wanrong');
INSERT INTO `Sys_Region` VALUES (3697, '713532', '卓溪鄉', 713500, 3, '中國,臺灣,花蓮縣,卓溪鄉', 121.303, 23.3464, 'Zhuoxi');
INSERT INTO `Sys_Region` VALUES (3698, '713600', '澎湖縣', 710000, 2, '中國,臺灣,澎湖縣', 119.566, 23.5697, 'Penghu');
INSERT INTO `Sys_Region` VALUES (3699, '713601', '馬公市', 713600, 3, '中國,臺灣,澎湖縣,馬公市', 119.566, 23.5658, 'Magong');
INSERT INTO `Sys_Region` VALUES (3700, '713621', '湖西鄉', 713600, 3, '中國,臺灣,澎湖縣,湖西鄉', 119.66, 23.5834, 'Huxi');
INSERT INTO `Sys_Region` VALUES (3701, '713622', '白沙鄉', 713600, 3, '中國,臺灣,澎湖縣,白沙鄉', 119.598, 23.6661, 'Baisha');
INSERT INTO `Sys_Region` VALUES (3702, '713623', '西嶼鄉', 713600, 3, '中國,臺灣,澎湖縣,西嶼鄉', 119.507, 23.6008, 'Xiyu');
INSERT INTO `Sys_Region` VALUES (3703, '713624', '望安鄉', 713600, 3, '中國,臺灣,澎湖縣,望安鄉', 119.501, 23.3575, 'Wangan');
INSERT INTO `Sys_Region` VALUES (3704, '713625', '七美鄉', 713600, 3, '中國,臺灣,澎湖縣,七美鄉', 119.424, 23.206, 'Qimei');
INSERT INTO `Sys_Region` VALUES (3705, '713700', '金門縣', 710000, 2, '中國,臺灣,金門縣', 118.317, 24.4327, 'Jinmen');
INSERT INTO `Sys_Region` VALUES (3706, '713701', '金城鎮', 713700, 3, '中國,臺灣,金門縣,金城鎮', 118.317, 24.4167, 'Jincheng');
INSERT INTO `Sys_Region` VALUES (3707, '713702', '金湖鎮', 713700, 3, '中國,臺灣,金門縣,金湖鎮', 118.42, 24.4386, 'Jinhu');
INSERT INTO `Sys_Region` VALUES (3708, '713703', '金沙鎮', 713700, 3, '中國,臺灣,金門縣,金沙鎮', 118.428, 24.4811, 'Jinsha');
INSERT INTO `Sys_Region` VALUES (3709, '713704', '金寧鄉', 713700, 3, '中國,臺灣,金門縣,金寧鄉', 118.335, 24.4567, 'Jinning');
INSERT INTO `Sys_Region` VALUES (3710, '713705', '烈嶼鄉', 713700, 3, '中國,臺灣,金門縣,烈嶼鄉', 118.247, 24.4331, 'Lieyu');
INSERT INTO `Sys_Region` VALUES (3711, '713706', '烏丘鄉', 713700, 3, '中國,臺灣,金門縣,烏丘鄉', 118.32, 24.435, 'Wuqiu');
INSERT INTO `Sys_Region` VALUES (3712, '713800', '連江縣', 710000, 2, '中國,臺灣,連江縣', 119.54, 26.1974, 'Lienchiang');
INSERT INTO `Sys_Region` VALUES (3713, '713801', '南竿鄉', 713800, 3, '中國,臺灣,連江縣,南竿鄉', 119.944, 26.144, 'Nangan');
INSERT INTO `Sys_Region` VALUES (3714, '713802', '北竿鄉', 713800, 3, '中國,臺灣,連江縣,北竿鄉', 120.001, 26.222, 'Beigan');
INSERT INTO `Sys_Region` VALUES (3715, '713803', '莒光鄉', 713800, 3, '中國,臺灣,連江縣,莒光鄉', 119.94, 25.9763, 'Juguang');
INSERT INTO `Sys_Region` VALUES (3716, '713804', '東引鄉', 713800, 3, '中國,臺灣,連江縣,東引鄉', 120.494, 26.3662, 'Dongyin');
INSERT INTO `Sys_Region` VALUES (3717, '810000', '香港特別行政區', 100000, 1, '中國,香港特別行政區', 114.173, 22.32, 'Hong Kong');
INSERT INTO `Sys_Region` VALUES (3718, '810100', '香港島', 810000, 2, '中國,香港特別行政區,香港島', 114.177, 22.2664, 'Hong Kong Island');
INSERT INTO `Sys_Region` VALUES (3719, '810101', '中西區', 810100, 3, '中國,香港特別行政區,香港島,中西區', 114.154, 22.282, 'Central and Western District');
INSERT INTO `Sys_Region` VALUES (3720, '810102', '灣仔區', 810100, 3, '中國,香港特別行政區,香港島,灣仔區', 114.183, 22.2764, 'Wan Chai District');
INSERT INTO `Sys_Region` VALUES (3721, '810103', '東區', 810100, 3, '中國,香港特別行政區,香港島,東區', 114.256, 22.2628, 'Eastern District');
INSERT INTO `Sys_Region` VALUES (3722, '810104', '南區', 810100, 3, '中國,香港特別行政區,香港島,南區', 114.174, 22.2468, 'Southern District');
INSERT INTO `Sys_Region` VALUES (3723, '810200', '九龍', 810000, 2, '中國,香港特別行政區,九龍', 114.175, 22.3271, 'Kowloon');
INSERT INTO `Sys_Region` VALUES (3724, '810201', '油尖旺區', 810200, 3, '中國,香港特別行政區,九龍,油尖旺區', 114.173, 22.3117, 'Yau Tsim Mong');
INSERT INTO `Sys_Region` VALUES (3725, '810202', '深水埗區', 810200, 3, '中國,香港特別行政區,九龍,深水埗區', 114.167, 22.3282, 'Sham Shui Po');
INSERT INTO `Sys_Region` VALUES (3726, '810203', '九龍城區', 810200, 3, '中國,香港特別行政區,九龍,九龍城區', 114.195, 22.3267, 'Jiulongcheng');
INSERT INTO `Sys_Region` VALUES (3727, '810204', '黃大仙區', 810200, 3, '中國,香港特別行政區,九龍,黃大仙區', 114.199, 22.3363, 'Wong Tai Sin');
INSERT INTO `Sys_Region` VALUES (3728, '810205', '觀塘區', 810200, 3, '中國,香港特別行政區,九龍,觀塘區', 114.231, 22.3094, 'Kwun Tong');
INSERT INTO `Sys_Region` VALUES (3729, '810300', '新界', 810000, 2, '中國,香港特別行政區,新界', 114.202, 22.3418, 'New Territories');
INSERT INTO `Sys_Region` VALUES (3730, '810301', '荃灣區', 810300, 3, '中國,香港特別行政區,新界,荃灣區', 114.123, 22.371, 'Tsuen Wan');
INSERT INTO `Sys_Region` VALUES (3731, '810302', '屯門區', 810300, 3, '中國,香港特別行政區,新界,屯門區', 113.977, 22.391, 'Tuen Mun');
INSERT INTO `Sys_Region` VALUES (3732, '810303', '元朗區', 810300, 3, '中國,香港特別行政區,新界,元朗區', 114.04, 22.4433, 'Yuen Long');
INSERT INTO `Sys_Region` VALUES (3733, '810304', '北區', 810300, 3, '中國,香港特別行政區,新界,北區', 114.149, 22.4941, 'North District');
INSERT INTO `Sys_Region` VALUES (3734, '810305', '大埔區', 810300, 3, '中國,香港特別行政區,新界,大埔區', 114.172, 22.4457, 'Tai Po');
INSERT INTO `Sys_Region` VALUES (3735, '810306', '西貢區', 810300, 3, '中國,香港特別行政區,新界,西貢區', 114.279, 22.3794, 'Sai Kung');
INSERT INTO `Sys_Region` VALUES (3736, '810307', '沙田區', 810300, 3, '中國,香港特別行政區,新界,沙田區', 114.192, 22.3793, 'Sha Tin');
INSERT INTO `Sys_Region` VALUES (3737, '810308', '葵青區', 810300, 3, '中國,香港特別行政區,新界,葵青區', 114.139, 22.3639, 'Kwai Tsing');
INSERT INTO `Sys_Region` VALUES (3738, '810309', '離島區', 810300, 3, '中國,香港特別行政區,新界,離島區', 113.946, 22.2815, 'Outlying Islands');
INSERT INTO `Sys_Region` VALUES (3739, '820000', '澳門特別行政區', 100000, 1, '中國,澳門特別行政區', 113.549, 22.199, 'Macau');
INSERT INTO `Sys_Region` VALUES (3740, '820100', '澳門半島', 820000, 2, '中國,澳門特別行政區,澳門半島', 113.549, 22.1988, 'MacauPeninsula');
INSERT INTO `Sys_Region` VALUES (3741, '820101', '花地瑪堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,花地瑪堂區', 113.552, 22.2081, 'Nossa Senhora de Fatima');
INSERT INTO `Sys_Region` VALUES (3742, '820102', '圣安多尼堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,圣安多尼堂區', 113.564, 22.1238, 'Santo Antonio');
INSERT INTO `Sys_Region` VALUES (3743, '820103', '大堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,大堂區', 113.553, 22.1884, 'Sé');
INSERT INTO `Sys_Region` VALUES (3744, '820104', '望德堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,望德堂區', 113.551, 22.1941, 'Sao Lazaro');
INSERT INTO `Sys_Region` VALUES (3745, '820105', '風順堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,風順堂區', 113.542, 22.1874, 'Sao Lourenco');
INSERT INTO `Sys_Region` VALUES (3746, '820200', '氹仔島', 820000, 2, '中國,澳門特別行政區,氹仔島', 113.578, 22.1568, 'Taipa');
INSERT INTO `Sys_Region` VALUES (3747, '820201', '嘉模堂區', 820200, 3, '中國,澳門特別行政區,氹仔島,嘉模堂區', 113.565, 22.149, 'Our Lady Of Carmels Parish');
INSERT INTO `Sys_Region` VALUES (3748, '820300', '路環島', 820000, 2, '中國,澳門特別行政區,路環島', 113.565, 22.1162, 'Coloane');
INSERT INTO `Sys_Region` VALUES (3749, '820301', '圣方濟各堂區', 820300, 3, '中國,澳門特別行政區,路環島,圣方濟各堂區', 113.56, 22.1235, 'St Francis Xaviers Parish');
INSERT INTO `Sys_Region` VALUES (3750, '900000', '釣魚島', 100000, 1, '中國,釣魚島', 123.478, 25.7424, 'DiaoyuDao');

-- ----------------------------
-- Table structure for Sys_Role
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Role`;
CREATE TABLE `Sys_Role`  (
  `Role_Id` int NOT NULL AUTO_INCREMENT,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DeleteBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DeptName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Dept_Id` int NULL DEFAULT NULL,
  `Enable` tinyint NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `OrderNo` int NULL DEFAULT NULL,
  `ParentId` int NOT NULL,
  `RoleName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DbServiceId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DatAuth` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`Role_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_Role
-- ----------------------------
INSERT INTO `Sys_Role` VALUES (1, '2018-08-23 11:46:06', '超級管理員', NULL, '無', 0, 1, '測試超級管理員', '2018-09-06 17:08:35', 1000, 0, '超級管理員', NULL, NULL);
INSERT INTO `Sys_Role` VALUES (19, '2023-05-07 17:09:41', '超級管理員', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '測試管理員1', '5C162AE0-6DF8-494A-9D00-0DB468A706AF', NULL);
INSERT INTO `Sys_Role` VALUES (20, '2023-05-07 17:11:29', '超級管理員', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '測試管理員2', 'A88E77A2-37B7-44AC-8725-E53A5CD70491', NULL);
INSERT INTO `Sys_Role` VALUES (21, '2023-05-19 17:55:53', '超級管理員', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, '二級角色', '00000000-0000-0000-0000-000000000000', NULL);

-- ----------------------------
-- Table structure for Sys_RoleAuth
-- ----------------------------
DROP TABLE IF EXISTS `Sys_RoleAuth`;
CREATE TABLE `Sys_RoleAuth`  (
  `Auth_Id` int NOT NULL AUTO_INCREMENT,
  `AuthValue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `Creator` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Menu_Id` int NOT NULL,
  `Modifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `Role_Id` int NULL DEFAULT NULL,
  `User_Id` int NULL DEFAULT NULL,
  PRIMARY KEY (`Auth_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_RoleAuth
-- ----------------------------
INSERT INTO `Sys_RoleAuth` VALUES (1, 'Search,Add,Delete,Update,Import,Export,Upload', '2020-05-05 13:23:11', '超級管理員', 9, '超級管理員', '2023-05-04 23:57:12', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (2, '', '2020-05-05 13:23:11', '超級管理員', 53, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (3, '', '2020-05-05 13:23:11', '超級管理員', 50, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (4, '', '2020-05-05 13:23:11', '超級管理員', 40, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (5, 'Search,Add,Delete,Update,Export', '2020-05-05 13:23:11', '超級管理員', 3, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (6, '', '2020-05-05 13:23:11', '超級管理員', 37, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (7, '', '2020-05-05 13:23:11', '超級管理員', 51, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (8, '', '2020-05-05 13:23:11', '超級管理員', 59, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (9, '', '2020-05-05 13:23:11', '超級管理員', 13, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (10, '', '2020-05-05 13:23:11', '超級管理員', 44, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (11, '', '2020-05-05 13:23:11', '超級管理員', 24, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (12, '', '2020-05-05 13:23:11', '超級管理員', 35, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (13, '', '2020-05-05 13:23:11', '超級管理員', 60, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (14, '', '2020-05-05 13:23:11', '超級管理員', 58, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (15, '', '2020-05-05 13:23:11', '超級管理員', 68, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (16, '', '2020-05-05 13:23:11', '超級管理員', 52, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (17, '', '2020-05-05 13:23:11', '超級管理員', 65, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (18, '', '2020-05-05 13:23:11', '超級管理員', 62, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (19, '', '2020-05-05 13:23:11', '超級管理員', 63, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (20, '', '2020-05-05 13:23:11', '超級管理員', 54, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (21, '', '2020-05-05 13:23:11', '超級管理員', 94, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (22, '', '2020-05-05 13:23:11', '超級管理員', 42, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (23, '', '2020-05-05 13:23:11', '超級管理員', 34, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (24, '', '2020-05-05 13:23:11', '超級管理員', 90, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (25, '', '2020-05-05 13:23:11', '超級管理員', 67, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (26, '', '2020-05-05 13:23:11', '超級管理員', 91, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (27, '', '2020-05-05 13:23:11', '超級管理員', 36, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (28, '', '2020-05-05 13:23:11', '超級管理員', 77, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (29, '', '2020-05-05 13:23:11', '超級管理員', 6, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (30, '', '2020-05-05 13:23:11', '超級管理員', 88, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (31, '', '2020-05-05 13:23:11', '超級管理員', 61, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (32, '', '2020-05-05 13:23:11', '超級管理員', 8, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (33, '', '2020-05-05 13:23:11', '超級管理員', 48, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (34, '', '2020-05-05 13:23:11', '超級管理員', 74, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (35, '', '2020-05-05 13:23:11', '超級管理員', 56, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (36, '', '2020-05-05 13:23:11', '超級管理員', 55, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (37, '', '2020-05-05 13:23:11', '超級管理員', 32, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (38, '', '2020-05-05 13:23:11', '超級管理員', 33, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (39, '', '2020-05-05 13:23:11', '超級管理員', 92, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (40, '', '2020-05-05 13:23:11', '超級管理員', 89, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (41, '', '2020-05-05 13:23:11', '超級管理員', 86, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (42, '', '2020-05-05 13:23:11', '超級管理員', 84, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (43, '', '2020-05-05 13:23:11', '超級管理員', 29, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (44, '', '2020-05-05 13:23:11', '超級管理員', 31, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (45, '', '2020-05-05 13:23:11', '超級管理員', 72, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (46, '', '2020-05-05 13:23:11', '超級管理員', 66, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (47, '', '2020-05-05 13:23:11', '超級管理員', 28, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (48, '', '2020-05-05 13:23:11', '超級管理員', 64, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (49, '', '2020-05-05 13:23:11', '超級管理員', 5, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (50, '', '2020-05-05 13:23:11', '超級管理員', 25, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (51, '', '2020-05-05 13:23:11', '超級管理員', 93, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (52, '', '2020-05-05 13:23:11', '超級管理員', 85, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (53, '', '2020-05-05 13:23:11', '超級管理員', 75, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (54, '', '2020-05-05 13:23:11', '超級管理員', 87, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (55, '', '2020-05-05 13:23:11', '超級管理員', 57, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (56, '', '2020-05-05 13:23:11', '超級管理員', 49, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (57, 'Search,Update', '2020-05-05 13:23:11', '超級管理員', 71, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (58, 'Search', '2020-05-05 13:23:11', '超級管理員', 2, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (59, '', '2020-05-05 13:23:11', '超級管理員', 73, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (60, 'Search,Add,Delete,Update,Export', '2023-05-04 23:57:12', '超級管理員', 100, '超級管理員', '2023-05-04 23:57:12', 2, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (61, 'Search,Add,Delete,Update,Export', '2023-05-07 17:26:43', '超級管理員', 100, '超級管理員', '2023-05-07 17:26:43', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (62, 'Search', '2023-05-07 17:26:53', '超級管理員', 61, '超級管理員', '2023-05-07 17:26:53', 20, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (63, 'Search,Add,Delete,Update,Import,Export', '2023-05-07 17:26:53', '超級管理員', 99, '超級管理員', '2023-05-07 17:26:53', 20, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (64, 'Search', '2023-05-07 17:26:59', '超級管理員', 2, '超級管理員', '2023-05-07 17:26:59', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (65, 'Search', '2023-05-19 01:55:30', '超級管理員', 103, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (66, 'Search', '2023-05-19 01:55:30', '超級管理員', 61, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (67, 'Search', '2023-05-19 01:55:30', '超級管理員', 105, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (68, 'Search,Add', '2023-05-19 01:55:30', '超級管理員', 108, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (69, 'Search', '2023-05-19 01:55:30', '超級管理員', 112, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (70, 'Search', '2023-05-19 01:55:30', '超級管理員', 118, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (71, 'Search', '2023-05-19 01:55:30', '超級管理員', 120, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (72, 'Search', '2023-05-19 01:55:30', '超級管理員', 122, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (73, 'Search', '2023-05-19 01:55:30', '超級管理員', 125, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (74, 'Search', '2023-05-19 01:55:30', '超級管理員', 115, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (75, 'Search,Add,Delete,Update,Import,Export,Upload', '2023-05-19 01:55:30', '超級管理員', 9, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (76, 'Search', '2023-05-19 01:55:30', '超級管理員', 64, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (77, 'Search,Update', '2023-05-19 01:55:30', '超級管理員', 71, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (78, 'Search,Add,Delete,Update,Export', '2023-05-19 01:55:30', '超級管理員', 3, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (79, 'Search', '2023-05-19 01:55:30', '超級管理員', 110, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (80, 'Search', '2023-05-19 01:55:30', '超級管理員', 123, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (81, 'Search,Add,Delete,Update,Export', '2023-05-19 01:55:30', '超級管理員', 119, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (82, 'Search,Add,Delete,Update', '2023-05-19 01:55:30', '超級管理員', 116, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (83, 'Search,Add,Delete,Update', '2023-05-19 01:55:30', '超級管理員', 109, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (84, 'Search,Delete', '2023-05-19 01:55:30', '超級管理員', 117, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (85, 'Search,Delete,Export', '2023-05-19 01:55:30', '超級管理員', 111, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (86, 'Search,Add,Delete,Update', '2023-05-19 01:55:30', '超級管理員', 101, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (87, 'Search,Delete', '2023-05-19 01:55:30', '超級管理員', 114, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (88, 'Search,Add,Delete,Update', '2023-05-19 01:55:30', '超級管理員', 102, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (89, 'Search', '2023-05-19 01:55:30', '超級管理員', 124, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (90, 'Search,Add,Delete,Update,Import,Export', '2023-05-19 01:55:30', '超級管理員', 106, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (91, 'Search,Add,Delete,Update,Import,Export', '2023-05-19 01:55:30', '超級管理員', 99, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (92, 'Search', '2023-05-19 01:55:30', '超級管理員', 62, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (93, 'Search,Add,Delete,Update,Export', '2023-05-19 01:55:30', '超級管理員', 63, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (94, 'Search,Export', '2023-05-19 01:55:30', '超級管理員', 104, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (95, 'Search,Add,Delete,Update', '2023-05-19 01:55:30', '超級管理員', 65, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (96, 'Search,Add', '2023-05-19 01:55:30', '超級管理員', 126, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (97, 'Search,Add', '2023-05-19 01:55:30', '超級管理員', 121, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (98, 'Search,Add,Delete,Update,Export', '2023-05-19 01:55:30', '超級管理員', 113, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (99, 'Search,Add,Delete,Update,Import,Export', '2023-05-19 01:55:30', '超級管理員', 107, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (100, 'Search,Delete,Export', '2023-05-19 01:55:30', '超級管理員', 97, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (101, 'Search,Export', '2023-05-19 01:55:30', '超級管理員', 96, '超級管理員', '2023-05-19 01:55:30', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (102, 'Search', '2023-05-19 11:41:00', '超級管理員', 127, '超級管理員', '2023-05-19 11:41:00', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (103, 'Search,Add,Delete,Update,Import,Export', '2023-05-19 11:41:00', '超級管理員', 136, '超級管理員', '2023-05-19 11:41:00', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (104, 'Search,Add,Delete,Update,Import,Export', '2023-05-19 11:41:00', '超級管理員', 128, '超級管理員', '2023-05-19 11:41:00', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (105, 'Search,Add,Delete,Update,Export', '2023-05-19 11:41:00', '超級管理員', 129, '超級管理員', '2023-05-19 11:41:00', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (106, 'Search,Add,Delete,Update,Export', '2023-05-19 11:41:00', '超級管理員', 130, '超級管理員', '2023-05-19 11:41:00', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (107, 'Search,Add,Delete,Update,Export', '2023-05-19 11:41:00', '超級管理員', 131, '超級管理員', '2023-05-19 11:41:00', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (108, 'Search,Add,Delete,Update', '2023-05-19 11:41:00', '超級管理員', 133, '超級管理員', '2023-05-19 11:41:00', 19, NULL);
INSERT INTO `Sys_RoleAuth` VALUES (109, 'Search,Add,Delete,Update', '2023-05-19 11:41:00', '超級管理員', 134, '超級管理員', '2023-05-19 11:41:00', 19, NULL);

-- ----------------------------
-- Table structure for Sys_RoleAuthData
-- ----------------------------
DROP TABLE IF EXISTS `Sys_RoleAuthData`;
CREATE TABLE `Sys_RoleAuthData`  (
  `Auth_Id` int NOT NULL AUTO_INCREMENT,
  `DataType_Id` int NULL DEFAULT NULL,
  `Role_Id` int NULL DEFAULT NULL,
  `User_Id` int NULL DEFAULT NULL,
  `Node_Id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LevelID` int NULL DEFAULT NULL,
  `AuthValue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Creator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Auth_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_RoleAuthData
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_TableColumn
-- ----------------------------
DROP TABLE IF EXISTS `Sys_TableColumn`;
CREATE TABLE `Sys_TableColumn`  (
  `ColumnId` int NOT NULL AUTO_INCREMENT,
  `ApiInPut` int NULL DEFAULT NULL,
  `ApiIsNull` int NULL DEFAULT NULL,
  `ApiOutPut` int NULL DEFAULT NULL,
  `ColSize` int NULL DEFAULT NULL,
  `ColumnCNName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ColumnName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ColumnType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ColumnWidth` int NULL DEFAULT NULL,
  `Columnformat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DropNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EditColNo` int NULL DEFAULT NULL,
  `EditRowNo` int NULL DEFAULT NULL,
  `EditType` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` int NULL DEFAULT NULL,
  `IsColumnData` int NULL DEFAULT NULL,
  `IsDisplay` int NULL DEFAULT NULL,
  `IsImage` int NULL DEFAULT NULL,
  `IsKey` int NULL DEFAULT NULL,
  `IsNull` int NULL DEFAULT NULL,
  `IsReadDataset` int NULL DEFAULT NULL,
  `Maxlength` int NULL DEFAULT NULL,
  `Modifier` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `OrderNo` int NULL DEFAULT NULL,
  `Script` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `SearchColNo` int NULL DEFAULT NULL,
  `SearchRowNo` int NULL DEFAULT NULL,
  `SearchType` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Sortable` int NULL DEFAULT NULL,
  `TableName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Table_Id` int NULL DEFAULT NULL,
  PRIMARY KEY (`ColumnId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_TableColumn
-- ----------------------------
INSERT INTO `Sys_TableColumn` VALUES (20, NULL, NULL, NULL, NULL, '角色ID', 'Role_Id', 'int', 70, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 18:43:04', 1, 1420, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (21, NULL, NULL, NULL, NULL, '父級ID', 'ParentId', 'int', 70, '', '2018-06-04 10:14:21', NULL, NULL, 'tree_roles', NULL, 1, 'cascader', NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 18:43:04', 1, 1410, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (22, NULL, NULL, NULL, NULL, '角色名稱', 'RoleName', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 2, '', NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1400, '', NULL, 1, 'text', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (23, NULL, NULL, NULL, NULL, '部門ID', 'Dept_Id', 'int', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 18:43:04', 1, 1390, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (24, NULL, NULL, NULL, NULL, '部門名稱', 'DeptName', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1380, '', NULL, 1, 'text', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (25, NULL, NULL, NULL, NULL, '排序', 'OrderNo', 'int', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 18:43:04', 1, 1370, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (26, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1360, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (27, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 18:43:04', 1, 1350, '', NULL, 2, 'datetime', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (28, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1340, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (29, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 18:43:04', 1, 1330, '', NULL, 2, 'datetime', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (30, NULL, NULL, NULL, NULL, '', 'DeleteBy', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1320, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (31, NULL, NULL, NULL, NULL, '是否啟用', 'Enable', 'byte', 90, '', '2018-06-04 10:14:21', NULL, NULL, 'enable', NULL, 0, 'switch', NULL, 1, 0, NULL, 0, 1, 0, 1, '超級管理員', '2023-05-07 18:43:04', 1, 1375, '', NULL, 1, 'select', 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (32, NULL, NULL, NULL, NULL, '字典ID', 'Dic_ID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-18 23:43:31', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (33, NULL, NULL, NULL, NULL, '字典名稱', 'DicName', 'string', 140, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-18 23:43:31', 1, 1290, NULL, NULL, 1, 'textarea', 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (34, NULL, NULL, NULL, NULL, '父級ID', 'ParentId', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-18 23:43:31', 1, 1280, NULL, NULL, 1, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (35, NULL, NULL, NULL, NULL, '配置項', 'Config', 'string', 300, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-18 23:43:31', 1, 1270, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (36, NULL, NULL, NULL, 8, 'sql語句', 'DbSql', 'string', 200, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 6, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-18 23:43:31', 1, 1260, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (37, NULL, NULL, NULL, NULL, '所在數據庫', 'DBServer', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, 'dbServer', NULL, 2, 'select', NULL, 1, 0, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-18 23:43:31', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (38, NULL, NULL, NULL, NULL, '排序號', 'OrderNo', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:43:31', 1, 1240, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (39, NULL, NULL, NULL, NULL, '字典編號', 'DicNo', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-18 23:43:31', 1, 1295, NULL, NULL, 1, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (40, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 6, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 4000, '超級管理員', '2023-05-18 23:43:31', 1, 1220, NULL, NULL, NULL, '無', 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (41, NULL, NULL, NULL, NULL, '是否啟用', 'Enable', 'byte', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, 'enable', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 0, 0, 1, '超級管理員', '2023-05-18 23:43:31', 1, 1210, NULL, NULL, 2, 'select', 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (42, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:43:31', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (43, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, '超級管理員', '2023-05-18 23:43:31', 1, 1190, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (44, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-18 23:43:31', 1, 1180, NULL, NULL, 2, 'datetime', 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (45, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:43:31', 1, 1170, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (46, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, '超級管理員', '2023-05-18 23:43:31', 1, 1160, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (47, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 150, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-18 23:43:31', 1, 1150, NULL, NULL, 2, 'datetime', 0, 'Sys_Dictionary', 3);
INSERT INTO `Sys_TableColumn` VALUES (48, NULL, NULL, NULL, NULL, '', 'DicList_ID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-18 23:43:35', 1, 1140, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (49, NULL, NULL, NULL, NULL, '數據源ID', 'Dic_ID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 4, '超級管理員', '2023-05-18 23:43:35', 1, 1130, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (50, NULL, NULL, NULL, NULL, '數據源Value', 'DicValue', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-18 23:43:35', 1, 1120, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (51, NULL, NULL, NULL, NULL, '數據源Text', 'DicName', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-18 23:43:35', 1, 1110, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (52, NULL, NULL, NULL, NULL, '排序號', 'OrderNo', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:43:35', 1, 1100, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (53, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-18 23:43:35', 1, 1090, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (54, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'byte', 90, '', '2018-06-06 14:12:18', NULL, NULL, 'enable', NULL, 1, 'switch', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:43:35', 1, 1080, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (55, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '無', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:43:35', 1, 1070, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (56, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 30, '超級管理員', '2023-05-18 23:43:35', 1, 1060, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (57, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-18 23:43:35', 1, 1050, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (58, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:43:35', 1, 1040, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (59, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:43:35', 1, 1030, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (60, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:43:35', 1, 1020, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO `Sys_TableColumn` VALUES (61, NULL, NULL, NULL, NULL, NULL, 'Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 10:46:10', 1, 10000, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (62, NULL, NULL, NULL, 12, '日志類型', 'LogType', 'string', 80, NULL, '2018-06-11 18:22:16', NULL, NULL, 'log', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 10:46:10', 1, 8888, NULL, NULL, 3, 'checkbox', 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (63, NULL, NULL, NULL, NULL, '請求參數', 'RequestParameter', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, '超級管理員', '2023-05-07 10:46:10', 1, 7990, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (64, NULL, NULL, NULL, NULL, '響應參數', 'ResponseParameter', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, '超級管理員', '2023-05-07 10:46:10', 1, 7980, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (65, NULL, NULL, NULL, NULL, '異常信息', 'ExceptionInfo', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, '超級管理員', '2023-05-07 10:46:10', 1, 7970, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (66, NULL, NULL, NULL, NULL, '響應狀態', 'Success', 'int', 80, NULL, '2018-06-11 18:22:16', NULL, NULL, 'restatus', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:10', 1, 8700, NULL, NULL, 2, 'selectList', 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (67, NULL, NULL, NULL, NULL, '開始時間', 'BeginDate', 'DateTime', 140, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:10', 1, 9999, NULL, NULL, 2, 'datetime', 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (68, NULL, NULL, NULL, NULL, '結束時間', 'EndDate', 'DateTime', 150, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:10', 1, 880, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (69, NULL, NULL, NULL, NULL, '時長', 'ElapsedTime', 'int', 60, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:10', 1, 8600, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (70, NULL, NULL, NULL, NULL, '用戶IP', 'UserIP', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:10', 1, 7920, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (71, NULL, NULL, NULL, NULL, '服務器IP', 'ServiceIP', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:10', 1, 7910, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (72, NULL, NULL, NULL, NULL, '瀏覽器類型', 'BrowserType', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, '超級管理員', '2023-05-07 10:46:10', 1, 7900, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (73, NULL, NULL, NULL, NULL, '請求地址', 'Url', 'string', 110, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-07 10:46:10', 1, 9000, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (74, NULL, NULL, NULL, NULL, '用戶ID', 'User_Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:10', 1, 7880, NULL, NULL, NULL, 'text', 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (75, NULL, NULL, NULL, NULL, '用戶名稱', 'UserName', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-07 10:46:10', 1, 9100, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (76, NULL, NULL, NULL, NULL, '角色ID', 'Role_Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, 'roles', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:10', 1, 7860, NULL, NULL, 2, 'select', 0, 'Sys_Log', 5);
INSERT INTO `Sys_TableColumn` VALUES (77, NULL, NULL, NULL, NULL, '', 'User_Id', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-19 18:16:08', 1, 8000, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (80, 0, 0, 1, NULL, '(角色)不用字段', 'Role_Id', 'int', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 18:16:08', 1, 7820, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (82, 1, 0, 1, NULL, '帳號', 'UserName', 'string', 120, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 1, '', NULL, 1, 1, NULL, 0, 0, 1, 100, '超級管理員', '2023-05-19 18:16:08', 1, 7945, '', NULL, 1, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (83, 1, 0, NULL, NULL, '密碼', 'UserPwd', 'string', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, '', NULL, 0, 0, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-19 18:16:08', 1, 7790, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (84, NULL, NULL, NULL, NULL, '姓名', 'UserTrueName', 'string', 100, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-19 18:16:08', 1, 7944, '', NULL, 1, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (89, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 120, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 6, 'text', NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-19 18:16:08', 1, 7230, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (90, NULL, NULL, NULL, NULL, '排序號', 'OrderNo', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, 'text', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 18:16:08', 1, 7220, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (91, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'byte', 90, '', '2018-06-14 16:44:15', NULL, NULL, 'enable', NULL, NULL, 'select', NULL, 1, 0, NULL, 0, 1, 0, 1, '超級管理員', '2023-05-19 18:16:08', 1, 7670, '', NULL, NULL, 'select', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (92, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 18:16:08', 1, 7700, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (93, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 200, '超級管理員', '2023-05-19 18:16:08', 1, 7690, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (94, NULL, NULL, NULL, NULL, '注冊時間', 'CreateDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-19 18:16:08', 1, 7780, '', NULL, 1, 'datetime', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (95, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 18:16:08', 1, 7670, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (96, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 1, 200, '超級管理員', '2023-05-19 18:16:08', 1, 7660, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (97, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, 'datetime', NULL, 1, 0, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-19 18:16:08', 1, 7650, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (101, NULL, NULL, NULL, NULL, '最后登陸時間', 'LastLoginDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-19 18:16:08', 1, 7610, '', NULL, NULL, 'datetime', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (102, NULL, NULL, NULL, NULL, '最后密碼修改時間', 'LastModifyPwdDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-19 18:16:08', 1, 7600, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (114, NULL, NULL, NULL, NULL, '頭像', 'HeadImageUrl', 'string', 80, '', NULL, NULL, NULL, '', NULL, 12, 'img', NULL, 1, 1, 1, 0, 1, 0, 200, '超級管理員', '2023-05-19 18:16:08', 1, 7842, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (429, 1, 0, NULL, NULL, '手機號', 'PhoneNo', 'string', 150, '', NULL, NULL, NULL, '', NULL, 5, '', NULL, 1, 0, NULL, 0, 1, 0, 11, '超級管理員', '2023-05-19 18:16:08', 1, 7760, '', NULL, 2, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (431, NULL, NULL, NULL, NULL, 'Token', 'Token', 'string', 180, '', NULL, NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, NULL, 1, 0, 500, '超級管理員', '2023-05-19 18:16:08', 1, 7810, '', NULL, 2, '', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (506, NULL, NULL, NULL, NULL, '性別', 'Gender', 'int', 80, '', NULL, NULL, NULL, 'gender', NULL, 5, 'select', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 18:16:08', 1, 7843, '', NULL, 1, 'select', 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (660, NULL, NULL, NULL, NULL, '', 'Id', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 10:46:27', 1, 1400, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (661, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 10:46:27', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (662, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:27', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (663, NULL, NULL, NULL, NULL, '', 'ModifyId', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:27', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (664, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:27', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (665, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:27', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (666, NULL, NULL, NULL, NULL, '', 'CreateId', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:27', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (667, NULL, NULL, NULL, NULL, '語言包', 'IsPackageContent', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:27', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (668, NULL, NULL, NULL, NULL, '模塊', 'Module', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 10:46:27', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (669, NULL, NULL, NULL, NULL, '阿拉伯語', 'Arabic', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1050, NULL, NULL, 2, 'like', 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (670, NULL, NULL, NULL, NULL, '俄羅斯語', 'Russian', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (671, NULL, NULL, NULL, NULL, '西班牙語', 'Spanish', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1150, NULL, NULL, 2, 'like', 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (672, NULL, NULL, NULL, NULL, '法語', 'French', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1200, NULL, NULL, 1, 'like', 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (673, NULL, NULL, NULL, NULL, '英語', 'English', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1250, NULL, NULL, 1, 'like', 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (674, NULL, NULL, NULL, NULL, '繁體中文', 'ZHTW', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1300, NULL, NULL, 1, 'like', 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (675, NULL, NULL, NULL, NULL, '簡體中文', 'ZHCN', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'textarea', NULL, 1, 1, NULL, 0, 0, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1350, NULL, NULL, 1, 'like', 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (676, NULL, NULL, NULL, NULL, '泰語', 'Thai', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1190, NULL, NULL, 2, 'like', 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (677, NULL, NULL, NULL, NULL, '越南語', 'Vietnamese', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1180, NULL, NULL, 2, 'like', 0, 'Sys_Language', 12);
INSERT INTO `Sys_TableColumn` VALUES (678, NULL, NULL, NULL, NULL, '', 'DepartmentId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-19 01:28:12', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (679, NULL, NULL, NULL, NULL, '名稱', 'DepartmentName', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-19 01:28:12', 1, 1100, NULL, NULL, 1, 'like', 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (680, NULL, NULL, NULL, NULL, '編號', 'DepartmentCode', 'string', 90, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-19 01:28:12', 1, 1050, NULL, NULL, 1, 'like', 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (682, NULL, NULL, NULL, NULL, '類型', 'DepartmentType', 'string', 80, NULL, NULL, NULL, NULL, '組織類型', NULL, 3, 'radio', NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-19 01:28:12', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (683, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'int', 80, NULL, NULL, NULL, NULL, 'enable', NULL, 7, 'select', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 01:28:12', 1, 900, NULL, NULL, 1, 'select', 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (684, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'text', NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-19 01:28:12', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (685, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 01:28:12', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (686, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-19 01:28:12', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (687, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-19 01:28:12', 1, 700, NULL, NULL, 1, 'datetime', 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (688, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 01:28:12', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (689, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-19 01:28:12', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (690, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-19 01:28:12', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (691, NULL, NULL, NULL, NULL, '上級組織', 'ParentId', 'guid', 110, NULL, NULL, NULL, NULL, '部門級聯', NULL, 3, 'cascader', NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-19 01:28:12', 1, 1060, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (692, NULL, NULL, NULL, NULL, '', 'DbServiceId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-18 23:42:46', 1, 1400, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (693, NULL, NULL, NULL, NULL, '租戶名稱', 'DbServiceName', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-18 23:42:46', 1, 1350, NULL, NULL, 1, 'like', 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (694, NULL, NULL, NULL, NULL, '所屬集團', 'GroupId', 'guid', 170, NULL, NULL, NULL, NULL, '集團', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-18 23:42:46', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (696, NULL, NULL, NULL, NULL, ' 數據庫IP', 'DbIpAddress', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:42:46', 1, 1200, NULL, NULL, 1, 'like', 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (697, NULL, NULL, NULL, NULL, '數據庫名', 'DatabaseName', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-18 23:42:46', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (698, NULL, NULL, NULL, NULL, '賬號', 'UserId', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 0, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-18 23:42:46', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (699, NULL, NULL, NULL, NULL, '密碼', 'Pwd', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:42:46', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (700, NULL, NULL, NULL, NULL, '手機號', 'PhoneNo', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-18 23:42:46', 1, 1000, NULL, NULL, 1, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (701, NULL, NULL, NULL, NULL, '地址', 'Address', 'string', 140, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:42:46', 1, 950, NULL, NULL, 1, 'like', 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (702, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:42:46', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (703, NULL, NULL, NULL, 12, '備注', 'Remark', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:42:46', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (704, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:42:46', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (705, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:42:46', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (706, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:42:46', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (707, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:42:46', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (708, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:42:46', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (709, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:42:46', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO `Sys_TableColumn` VALUES (710, NULL, NULL, NULL, NULL, '', 'GroupId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-18 23:42:53', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (711, NULL, NULL, NULL, NULL, '集團名稱', 'GroupName', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-18 23:42:53', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (712, NULL, NULL, NULL, NULL, '電話', 'PhoneNo', 'string', 140, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-18 23:42:53', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (713, NULL, NULL, NULL, NULL, '地址', 'Address', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:42:53', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (714, NULL, NULL, NULL, NULL, '', 'Enable', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:42:53', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (715, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:42:53', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (716, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:42:53', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (717, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:42:53', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (718, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:42:53', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (719, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:42:53', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (720, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:42:53', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (721, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:42:53', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO `Sys_TableColumn` VALUES (722, NULL, NULL, NULL, 12, '部門', 'DeptIds', 'string', 220, NULL, NULL, NULL, NULL, '部門級聯', NULL, 8, 'treeSelect', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-19 18:16:08', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (723, NULL, NULL, NULL, 12, '角色', 'RoleIds', 'string', 220, NULL, NULL, NULL, NULL, 'tree_roles', NULL, 9, 'treeSelect', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-19 18:16:08', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_User', 6);
INSERT INTO `Sys_TableColumn` VALUES (724, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 10:45:50', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (725, NULL, NULL, NULL, NULL, '', 'UserId', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (726, NULL, NULL, NULL, NULL, '', 'RoleId', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (727, NULL, NULL, NULL, NULL, '', 'Enable', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (728, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (729, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超級管理員', '2023-05-07 10:45:50', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (730, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:45:50', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (731, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (732, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超級管理員', '2023-05-07 10:45:50', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (733, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:45:50', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO `Sys_TableColumn` VALUES (734, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-19 01:21:03', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (735, NULL, NULL, NULL, NULL, '', 'UserId', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-19 01:21:03', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (736, NULL, NULL, NULL, NULL, '', 'DepartmentId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 16, '超級管理員', '2023-05-19 01:21:03', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (737, NULL, NULL, NULL, NULL, '', 'Enable', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-19 01:21:03', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (738, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 01:21:03', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (739, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超級管理員', '2023-05-19 01:21:03', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (740, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-19 01:21:03', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (741, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 01:21:03', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (742, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超級管理員', '2023-05-19 01:21:03', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (743, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-19 01:21:03', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO `Sys_TableColumn` VALUES (744, NULL, NULL, NULL, NULL, '所屬數據庫', 'DbServiceId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-19 01:28:12', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO `Sys_TableColumn` VALUES (745, NULL, NULL, NULL, NULL, '所屬數據庫', 'DbServiceId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-07 18:43:04', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (746, NULL, NULL, NULL, NULL, '數據庫權限', 'DatAuth', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 0, NULL, 0, 1, 0, 400, '超級管理員', '2023-05-07 18:43:04', 1, 1376, NULL, NULL, NULL, NULL, 0, 'Sys_Role', 2);
INSERT INTO `Sys_TableColumn` VALUES (747, NULL, NULL, NULL, NULL, '', 'id', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, NULL, 1, 0, 0, 4, '超級管理員', '2023-06-08 14:55:10', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (748, NULL, NULL, NULL, NULL, '編碼', 'code', 'string', 70, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-06-08 14:55:10', 1, 900, NULL, NULL, NULL, 'like', 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (749, NULL, NULL, NULL, NULL, '名稱', 'name', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 40, '超級管理員', '2023-06-08 14:55:10', 1, 850, NULL, NULL, 1, NULL, 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (750, NULL, NULL, NULL, NULL, '上級編碼', 'parentId', 'int', 70, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-06-08 14:55:10', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (751, NULL, NULL, NULL, NULL, '級別', 'level', 'int', 60, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-06-08 14:55:10', 1, 750, NULL, NULL, 1, NULL, 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (752, NULL, NULL, NULL, NULL, '完整地址', 'mername', 'string', 170, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-06-08 14:55:10', 1, 700, NULL, NULL, 1, 'like', 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (753, NULL, NULL, NULL, NULL, '經度', 'Lng', 'float', 70, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-06-08 14:55:10', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (754, NULL, NULL, NULL, NULL, '緯度', 'Lat', 'float', 70, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-06-08 14:55:10', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (755, NULL, NULL, NULL, NULL, '拼音', 'pinyin', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-06-08 14:55:10', 1, 550, NULL, NULL, 1, 'like', 0, 'Sys_Region', 20);
INSERT INTO `Sys_TableColumn` VALUES (756, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (757, NULL, NULL, NULL, NULL, '業務庫', 'DbName', 'string', 110, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, 1, 'like', 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (758, NULL, NULL, NULL, NULL, '內容', 'DbContent', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, 1, NULL, 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (759, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, 1, 'datetime', 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (760, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (761, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (762, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (763, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (764, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO `Sys_TableColumn` VALUES (765, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 21:52:49', 1, 950, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (766, NULL, NULL, NULL, NULL, '測試庫', 'TestDbName', 'string', 120, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-05-07 21:52:49', 1, 900, NULL, NULL, 1, 'like', 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (767, NULL, NULL, NULL, NULL, '內容', 'TestDbContent', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 21:52:49', 1, 850, NULL, NULL, 1, NULL, 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (768, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:52:49', 1, 800, NULL, NULL, 1, 'datetime', 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (769, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:52:49', 1, 750, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (770, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 21:52:49', 1, 700, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (771, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 21:52:49', 1, 650, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (772, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:52:49', 1, 600, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (773, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:52:49', 1, 550, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO `Sys_TableColumn` VALUES (774, NULL, NULL, NULL, NULL, '商品分類', 'CatalogId', 'guid', 110, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-19 02:27:38', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (775, NULL, NULL, NULL, NULL, '分類名稱', 'CatalogName', 'string', 100, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, 2, 1, NULL, 1, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-05-19 02:27:38', 1, 1100, NULL, 2, 1, 'like', 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (776, NULL, NULL, NULL, NULL, '分類編號', 'CatalogCode', 'string', 90, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, 0, 1, NULL, 1, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-05-19 02:27:38', 1, 1120, NULL, 1, 1, '', 1, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (777, NULL, NULL, NULL, NULL, '上級分類', 'ParentId', 'guid', 110, NULL, '2022-03-01 23:35:11', 1, '超級管理員', '分類級聯', NULL, 3, 'cascader', 2, 1, 1, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-19 02:27:38', 1, 1000, NULL, NULL, NULL, NULL, 1, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (778, NULL, NULL, NULL, NULL, '分類圖片', 'Img', 'string', 90, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, 10, 'img', 2, 1, 1, 1, 0, 1, 0, 500, '超級管理員', '2023-05-19 02:27:38', 1, 950, NULL, NULL, NULL, NULL, 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (779, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'int', 110, NULL, '2022-03-01 23:35:11', 1, '超級管理員', '商品分類可用', NULL, 3, 'radio', 1, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 02:27:38', 1, 900, NULL, 3, 1, 'select', 1, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (780, NULL, NULL, NULL, 12, '備注', 'Remark', 'string', 120, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, 7, 'textarea', 2, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-19 02:27:38', 1, 850, NULL, NULL, NULL, 'like', 1, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (781, NULL, NULL, NULL, NULL, '創建人id', 'CreateID', 'int', 80, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 02:27:38', 1, 800, NULL, NULL, NULL, NULL, 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (782, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, NULL, NULL, 3, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-19 02:27:38', 1, 750, NULL, NULL, NULL, NULL, 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (783, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 110, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, NULL, NULL, 3, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-19 02:27:38', 1, 700, NULL, 4, 1, 'datetime', 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (784, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-19 02:27:38', 1, 650, NULL, NULL, NULL, NULL, 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (785, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-19 02:27:38', 1, 600, NULL, NULL, NULL, NULL, 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (786, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 110, NULL, '2022-03-01 23:35:11', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-19 02:27:38', 1, 550, NULL, NULL, NULL, 'datetime', 0, 'Demo_Catalog', 24);
INSERT INTO `Sys_TableColumn` VALUES (787, NULL, NULL, NULL, NULL, '', 'Order_Id', 'guid', 110, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-18 23:55:15', 1, 1350, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (788, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:55:15', 1, 650, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (789, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 145, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:55:15', 1, 700, NULL, NULL, 3, 'datetime', 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (790, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:55:15', 1, 750, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (791, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:55:15', 1, 800, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (792, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 100, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-18 23:55:15', 1, 850, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (793, NULL, NULL, NULL, NULL, '訂單狀態', 'OrderStatus', 'int', 110, NULL, '2022-03-17 22:21:28', 1, '超級管理員', '訂單狀態', NULL, 3, 'select', NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-18 23:55:15', 1, 900, NULL, NULL, 3, 'select', 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (794, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:55:15', 1, 600, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (795, NULL, NULL, NULL, NULL, '手機', 'PhoneNo', 'string', 110, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, 6, 'phone', NULL, 1, 1, NULL, 0, 1, 1, 50, '超級管理員', '2023-05-18 23:55:15', 1, 950, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (796, NULL, NULL, NULL, NULL, '客戶', 'CustomerId', 'int', 110, NULL, '2022-03-17 22:21:28', 1, '超級管理員', '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:55:15', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (797, NULL, NULL, NULL, NULL, '訂單日期', 'OrderDate', 'DateTime', 110, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, 3, 'datetime', NULL, 1, 1, NULL, 0, 0, 0, 8, '超級管理員', '2023-05-18 23:55:15', 1, 1100, NULL, NULL, 3, 'datetime', 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (798, NULL, NULL, NULL, NULL, '總數量', 'TotalQty', 'int', 80, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:55:15', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (799, NULL, NULL, NULL, NULL, '總價', 'TotalPrice', 'decimal', 80, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 9, '超級管理員', '2023-05-18 23:55:15', 1, 1200, NULL, NULL, 1, 'range', 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (800, NULL, NULL, NULL, NULL, '訂單類型', 'OrderType', 'int', 100, NULL, '2022-03-17 22:21:28', 1, '超級管理員', '訂單狀態', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-18 23:55:15', 1, 1250, NULL, NULL, 1, 'select', 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (801, NULL, NULL, NULL, NULL, '訂單編號', 'OrderNo', 'string', 140, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 100, '超級管理員', '2023-05-18 23:55:15', 1, 1300, NULL, NULL, 1, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (802, NULL, NULL, NULL, NULL, '客戶', 'Customer', 'string', 90, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 100, '超級管理員', '2023-05-18 23:55:15', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (803, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-03-17 22:21:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:55:15', 1, 550, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (804, NULL, NULL, NULL, NULL, '', 'OrderList_Id', 'guid', 110, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-18 23:50:21', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (805, NULL, NULL, NULL, NULL, '', 'Order_Id', 'guid', 110, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-18 23:50:21', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (806, NULL, NULL, NULL, NULL, '商品id', 'GoodsId', 'guid', 110, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-18 23:50:21', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (807, NULL, NULL, NULL, NULL, '商品編號', 'GoodsCode', 'string', 120, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 100, '超級管理員', '2023-05-18 23:50:21', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (808, NULL, NULL, NULL, NULL, '商品名稱', 'GoodsName', 'string', 120, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 100, '超級管理員', '2023-05-18 23:50:21', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (809, NULL, NULL, NULL, NULL, '商品圖片', 'Img', 'string', 100, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:50:21', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (810, NULL, NULL, NULL, NULL, '商品規格', 'Specs', 'string', 120, NULL, '2022-03-17 22:25:20', 1, '超級管理員', '商品規格', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 1, 1, 100, '超級管理員', '2023-05-18 23:50:21', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (811, NULL, NULL, NULL, NULL, '單價', 'Price', 'decimal', 110, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 9, '超級管理員', '2023-05-18 23:50:21', 1, 950, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (812, NULL, NULL, NULL, NULL, '數量', 'Qty', 'int', 110, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-18 23:50:21', 1, 900, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (813, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 100, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-18 23:50:21', 1, 850, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (814, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:21', 1, 800, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (815, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:50:21', 1, 750, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (816, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 145, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:50:21', 1, 700, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (817, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:21', 1, 650, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (818, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:50:21', 1, 600, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (819, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-03-17 22:25:20', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:50:21', 1, 550, NULL, NULL, NULL, NULL, 0, 'Demo_OrderList', 26);
INSERT INTO `Sys_TableColumn` VALUES (820, NULL, NULL, NULL, NULL, '', 'Customer_Id', 'int', 110, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2022-04-09 21:26:57', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (821, NULL, NULL, NULL, NULL, '客戶', 'Customer', 'string', 100, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2022-04-09 21:26:57', 1, 1100, NULL, NULL, 1, 'like', 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (822, NULL, NULL, NULL, NULL, '手機', 'PhoneNo', 'string', 130, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, '超級管理員', '2022-04-09 21:26:57', 1, 1050, NULL, NULL, 1, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (823, NULL, NULL, NULL, NULL, '省', 'Province', 'string', 80, NULL, '2022-03-28 22:36:14', 1, '超級管理員', '省', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2022-04-09 21:26:57', 1, 1000, NULL, NULL, 1, '', 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (824, NULL, NULL, NULL, NULL, '市', 'City', 'string', 80, NULL, '2022-03-28 22:36:14', 1, '超級管理員', '市', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2022-04-09 21:26:57', 1, 950, NULL, NULL, 1, '', 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (825, NULL, NULL, NULL, 12, '詳細地址', 'DetailAddress', 'string', 120, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2022-04-09 21:26:57', 1, 900, NULL, NULL, NULL, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (826, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 100, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2022-04-09 21:26:57', 1, 850, NULL, NULL, NULL, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (827, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2022-04-09 21:26:57', 1, 800, NULL, NULL, NULL, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (828, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2022-04-09 21:26:57', 1, 750, NULL, NULL, 2, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (829, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 145, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2022-04-09 21:26:57', 1, 700, NULL, NULL, 2, 'datetime', 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (830, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2022-04-09 21:26:57', 1, 650, NULL, NULL, NULL, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (831, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 100, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2022-04-09 21:26:57', 1, 600, NULL, NULL, NULL, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (832, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 145, NULL, '2022-03-28 22:36:14', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2022-04-09 21:26:57', 1, 550, NULL, NULL, 2, 'datetime', 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (833, NULL, NULL, NULL, NULL, '商品ID', 'GoodsId', 'guid', 110, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-06-03 14:11:51', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (834, NULL, NULL, NULL, NULL, '所屬分類', 'CatalogId', 'guid', 110, NULL, '2022-03-31 23:57:22', 1, '超級管理員', '分類級聯', NULL, 2, 'cascader', 7, 1, 1, NULL, 0, 1, 0, 16, '超級管理員', '2023-06-03 14:11:51', 1, 1200, NULL, 3, 1, 'cascader', 1, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (835, NULL, NULL, NULL, NULL, '商品名稱', 'GoodsName', 'string', 120, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, 1, 'text', 1, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-06-03 14:11:51', 1, 1210, NULL, 0, 1, 'like', 1, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (836, NULL, NULL, NULL, NULL, '商品編號', 'GoodsCode', 'string', 100, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, 3, 'text', 2, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-06-03 14:11:51', 1, 1100, NULL, 5, 1, NULL, 1, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (837, NULL, NULL, NULL, NULL, '商品圖片', 'Img', 'string', 80, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, 9, 'img', 2, 1, 1, 1, 0, 1, 0, 500, '超級管理員', '2023-06-03 14:11:51', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (838, NULL, NULL, NULL, NULL, '規格', 'Specs', 'string', 90, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, 0, NULL, 2, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-06-03 14:11:51', 1, 1000, NULL, NULL, NULL, NULL, 1, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (839, NULL, NULL, NULL, NULL, '單價', 'Price', 'decimal', 80, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, 4, 'decimal', 2, 1, 1, NULL, 0, 0, 0, 9, '超級管理員', '2023-06-03 14:11:51', 1, 950, NULL, NULL, NULL, NULL, 1, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (840, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'int', 90, NULL, '2022-03-31 23:57:22', 1, '超級管理員', 'enable', NULL, 0, 'radio', 5, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-06-03 14:11:51', 1, 900, NULL, NULL, NULL, '', 1, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (841, NULL, NULL, NULL, 12, '備注', 'Remark', 'string', 100, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, 7, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 200, '超級管理員', '2023-06-03 14:11:51', 1, 850, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (842, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-06-03 14:11:51', 1, 800, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (843, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 80, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-06-03 14:11:51', 1, 750, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (844, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 140, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, NULL, NULL, 6, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-06-03 14:11:51', 1, 700, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (845, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-06-03 14:11:51', 1, 650, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (846, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-06-03 14:11:51', 1, 600, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (847, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-03-31 23:57:22', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-06-03 14:11:51', 1, 550, NULL, NULL, NULL, NULL, 0, 'Demo_Goods', 28);
INSERT INTO `Sys_TableColumn` VALUES (848, NULL, NULL, NULL, NULL, '縣', 'County', 'string', 120, NULL, NULL, NULL, NULL, '縣', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2022-04-09 21:26:57', 1, 940, NULL, NULL, NULL, NULL, 0, 'Demo_Customer', 27);
INSERT INTO `Sys_TableColumn` VALUES (849, NULL, NULL, NULL, NULL, '', 'ProductId', 'guid', 110, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-18 23:50:29', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (850, NULL, NULL, NULL, NULL, '商品名稱', 'ProductName', 'string', 150, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-05-18 23:50:29', 1, 1000, NULL, NULL, 1, 'like', 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (851, NULL, NULL, NULL, NULL, '商品編號', 'ProductCode', 'string', 120, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-05-18 23:50:29', 1, 950, NULL, NULL, 1, 'like', 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (852, NULL, NULL, NULL, NULL, '價格', 'Price', 'decimal', 90, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, 4, 'number', NULL, 1, 1, NULL, 0, 0, 0, 9, '超級管理員', '2023-05-18 23:50:29', 1, 900, NULL, NULL, NULL, NULL, 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (853, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 120, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, 8, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:50:29', 1, 850, NULL, NULL, NULL, NULL, 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (854, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:29', 1, 800, NULL, NULL, NULL, NULL, 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (855, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 110, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:50:29', 1, 750, NULL, NULL, NULL, NULL, 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (856, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:50:29', 1, 700, NULL, NULL, 1, 'datetime', 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (857, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:29', 1, 650, NULL, NULL, NULL, NULL, 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (858, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 110, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:50:29', 1, 600, NULL, NULL, NULL, NULL, 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (859, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 200, NULL, '2022-07-04 00:09:03', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:50:29', 1, 550, NULL, NULL, NULL, 'datetime', 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (860, NULL, NULL, NULL, NULL, '', 'ProductColorId', 'guid', 110, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-18 23:50:44', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (861, NULL, NULL, NULL, NULL, '商品id', 'ProductId', 'guid', 110, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-18 23:50:44', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (862, NULL, NULL, NULL, NULL, '顏色', 'Color', 'string', 100, NULL, '2022-07-04 00:11:28', 1, '超級管理員', '顏色', NULL, 1, 'radio', NULL, 1, 1, NULL, 0, 0, 0, 50, '超級管理員', '2023-05-18 23:50:44', 1, 1050, NULL, NULL, 1, 'select', 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (863, NULL, NULL, NULL, NULL, '數量', 'Qty', 'string', 90, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, '超級管理員', '2023-05-18 23:50:44', 1, 1000, NULL, NULL, 1, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (864, NULL, NULL, NULL, NULL, '單位', 'Unit', 'string', 90, NULL, '2022-07-04 00:11:28', 1, '超級管理員', '單位', NULL, 7, 'select', NULL, 1, 1, NULL, 0, 0, 0, 50, '超級管理員', '2023-05-18 23:50:44', 1, 950, NULL, NULL, 1, 'select', 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (865, NULL, NULL, NULL, NULL, '圖片', 'Img', 'string', 90, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, 15, 'img', NULL, 1, 1, 1, 0, 0, 0, 500, '超級管理員', '2023-05-18 23:50:44', 1, 900, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (866, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 130, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, 12, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:50:44', 1, 850, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (867, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:44', 1, 800, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (868, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 110, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:50:44', 1, 750, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (869, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:50:44', 1, 700, NULL, NULL, 1, 'datetime', 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (870, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:44', 1, 650, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (871, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 110, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:50:44', 1, 600, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (872, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 200, NULL, '2022-07-04 00:11:28', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:50:44', 1, 550, NULL, NULL, NULL, NULL, 0, 'Demo_ProductColor', 30);
INSERT INTO `Sys_TableColumn` VALUES (873, NULL, NULL, NULL, NULL, '', 'ProductSizeId', 'guid', 110, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-18 23:50:55', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (874, NULL, NULL, NULL, NULL, '商品id', 'ProductId', 'guid', 110, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-18 23:50:55', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (875, NULL, NULL, NULL, NULL, '尺寸', 'Size', 'string', 120, NULL, '2022-07-04 00:16:56', 1, '超級管理員', '尺寸', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 50, '超級管理員', '2023-05-18 23:50:55', 1, 950, NULL, NULL, 1, 'select', 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (876, NULL, NULL, NULL, NULL, '單位', 'Unit', 'string', 90, NULL, '2022-07-04 00:16:56', 1, '超級管理員', '單位', NULL, 3, 'select', NULL, 1, 1, NULL, 0, 0, 0, 50, '超級管理員', '2023-05-18 23:50:55', 1, 900, NULL, NULL, 1, 'select', 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (877, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 120, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, 5, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:50:55', 1, 850, NULL, NULL, NULL, NULL, 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (878, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:55', 1, 800, NULL, NULL, NULL, NULL, 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (879, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 120, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:50:55', 1, 750, NULL, NULL, NULL, NULL, 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (880, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:50:55', 1, 700, NULL, NULL, 1, 'datetime', 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (881, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:55', 1, 650, NULL, NULL, NULL, NULL, 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (882, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 120, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-18 23:50:55', 1, 600, NULL, NULL, NULL, NULL, 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (883, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 200, NULL, '2022-07-04 00:16:56', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:50:55', 1, 550, NULL, NULL, 1, 'datetime', 0, 'Demo_ProductSize', 31);
INSERT INTO `Sys_TableColumn` VALUES (884, NULL, NULL, NULL, NULL, '審核狀態', 'AuditStatus', 'int', 80, NULL, NULL, NULL, NULL, 'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:50:29', 1, 860, NULL, NULL, 1, 'select', 0, 'Demo_Product', 29);
INSERT INTO `Sys_TableColumn` VALUES (885, NULL, NULL, NULL, NULL, '', 'WorkFlow_Id', 'guid', 110, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-13 17:04:22', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (886, NULL, NULL, NULL, NULL, '流程名稱', 'WorkName', 'string', 140, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-13 17:04:22', 1, 1150, NULL, NULL, 1, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (887, NULL, NULL, NULL, NULL, '表名', 'WorkTable', 'string', 100, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-13 17:04:22', 1, 1100, NULL, NULL, 1, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (888, NULL, NULL, NULL, NULL, '功能菜單', 'WorkTableName', 'string', 120, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-13 17:04:22', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (889, NULL, NULL, NULL, NULL, '節點信息', 'NodeConfig', 'string', 110, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, '超級管理員', '2023-05-13 17:04:22', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (890, NULL, NULL, NULL, NULL, '連接配置', 'LineConfig', 'string', 110, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, '超級管理員', '2023-05-13 17:04:22', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (891, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 130, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-13 17:04:22', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (892, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 17:04:22', 1, 740, NULL, NULL, 1, 'datetime', 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (893, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 17:04:22', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (894, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-13 17:04:22', 1, 750, NULL, NULL, NULL, '', 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (895, NULL, NULL, NULL, NULL, '是否啟用', 'Enable', 'byte', 100, NULL, '2022-07-25 00:31:26', 1, '超級管理員', 'enable', NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, '超級管理員', '2023-05-13 17:04:22', 1, 1010, NULL, NULL, NULL, 'select', 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (896, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 100, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-13 17:04:22', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (897, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 160, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 17:04:22', 1, 600, NULL, NULL, NULL, 'datetime', 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (898, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-07-25 00:31:26', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 17:04:22', 1, 660, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (899, NULL, NULL, NULL, NULL, '', 'WorkStepFlow_Id', 'guid', 110, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-13 16:40:14', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (900, NULL, NULL, NULL, NULL, '流程主表id', 'WorkFlow_Id', 'guid', 110, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-13 16:40:14', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (901, NULL, NULL, NULL, NULL, '流程節點Id', 'StepId', 'string', 120, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-13 16:40:14', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (902, NULL, NULL, NULL, NULL, '節點名稱', 'StepName', 'string', 110, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-13 16:40:14', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (903, NULL, NULL, NULL, NULL, '節點類型(1=按用戶審批,2=按角色審批)', 'StepType', 'int', 110, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (904, NULL, NULL, NULL, NULL, '審批用戶id或角色id', 'StepValue', 'string', 110, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-13 16:40:14', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (905, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 220, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-13 16:40:14', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (906, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 110, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 16:40:14', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (907, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (908, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-13 16:40:14', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (909, NULL, NULL, NULL, NULL, '', 'Enable', 'byte', 110, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, '超級管理員', '2023-05-13 16:40:14', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (910, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-13 16:40:14', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (911, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 110, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 16:40:14', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (912, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-07-31 22:43:02', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (913, NULL, NULL, NULL, NULL, '審批順序', 'OrderId', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 880, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (914, NULL, NULL, NULL, NULL, '', 'WorkFlowTable_Id', 'guid', 110, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-13 12:59:47', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (915, NULL, NULL, NULL, NULL, '流程id', 'WorkFlow_Id', 'guid', 110, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-13 12:59:47', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (916, NULL, NULL, NULL, NULL, '流程名稱', 'WorkName', 'string', 130, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-13 12:59:47', 1, 1150, NULL, 2, 1, 'like', 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (917, NULL, NULL, NULL, NULL, '表主鍵id', 'WorkTableKey', 'string', 180, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-13 12:59:47', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (918, NULL, NULL, NULL, NULL, '表名', 'WorkTable', 'string', 100, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-13 12:59:47', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (919, NULL, NULL, NULL, NULL, '業務名稱', 'WorkTableName', 'string', 120, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-13 12:59:47', 1, 1000, NULL, 3, 1, 'like', 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (920, NULL, NULL, NULL, NULL, '不用', 'CurrentOrderId', 'int', 90, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 12:59:47', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (921, NULL, NULL, NULL, NULL, '審批狀態', 'AuditStatus', 'int', 110, NULL, '2022-08-01 00:15:40', 1, '超級管理員', 'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 12:59:47', 1, 900, NULL, 1, 1, 'select', 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (922, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 12:59:47', 1, 850, NULL, 4, 1, 'datetime', 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (923, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 12:59:47', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (924, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-13 12:59:47', 1, 860, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (925, NULL, NULL, NULL, NULL, '', 'Enable', 'byte', 110, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, '超級管理員', '2023-05-13 12:59:47', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (926, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-13 12:59:47', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (927, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 12:59:47', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (928, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-08-01 00:15:40', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 12:59:47', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (929, NULL, NULL, NULL, NULL, '', 'Sys_WorkFlowTableStep_Id', 'guid', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-13 16:40:30', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (930, NULL, NULL, NULL, NULL, '主表id', 'WorkFlowTable_Id', 'guid', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, 0, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 16, '超級管理員', '2023-05-13 16:40:30', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (931, NULL, NULL, NULL, NULL, '流程id', 'WorkFlow_Id', 'guid', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-13 16:40:30', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (932, NULL, NULL, NULL, NULL, '節點id', 'StepId', 'string', 120, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-13 16:40:30', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (933, NULL, NULL, NULL, NULL, '節名稱', 'StepName', 'string', 180, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-13 16:40:30', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (934, NULL, NULL, NULL, NULL, '審批類型', 'StepType', 'int', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:30', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (935, NULL, NULL, NULL, NULL, '節點類型(1=按用戶審批,2=按角色審批)', 'StepValue', 'string', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-13 16:40:30', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (936, NULL, NULL, NULL, NULL, '審批順序', 'OrderId', 'int', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:30', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (937, NULL, NULL, NULL, NULL, '', 'Remark', 'string', 220, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-13 16:40:30', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (938, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 16:40:30', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (939, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:30', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (940, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 130, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-13 16:40:30', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (941, NULL, NULL, NULL, NULL, '', 'Enable', 'byte', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, '超級管理員', '2023-05-13 16:40:30', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (942, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-13 16:40:30', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (943, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 16:40:30', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (944, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-08-01 00:21:19', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:30', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (945, NULL, NULL, NULL, NULL, '審核人id', 'AuditId', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (946, NULL, NULL, NULL, NULL, '審核人', 'Auditor', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (947, NULL, NULL, NULL, NULL, '審核狀態', 'AuditStatus', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (948, NULL, NULL, NULL, NULL, '審核時間', 'AuditDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (949, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2022-09-07 01:42:45', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (950, NULL, NULL, NULL, NULL, '任務名稱', 'TaskName', 'string', 120, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 500, '超級管理員', '2022-09-07 01:42:45', 1, 1250, NULL, NULL, 1, 'like', 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (951, NULL, NULL, NULL, NULL, '任務分組', 'GroupName', 'string', 100, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 500, '超級管理員', '2022-09-07 01:42:45', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (952, NULL, NULL, NULL, NULL, 'Corn表達式', 'CronExpression', 'string', 120, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, 0, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2022-09-07 01:42:45', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (953, NULL, NULL, NULL, 12, 'Url地址', 'ApiUrl', 'string', 150, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2022-09-07 01:42:45', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (954, NULL, NULL, NULL, NULL, 'AuthKey', 'AuthKey', 'string', 100, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, 6, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, '超級管理員', '2022-09-07 01:42:45', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (955, NULL, NULL, NULL, NULL, 'AuthValue', 'AuthValue', 'string', 100, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, 6, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, '超級管理員', '2022-09-07 01:42:45', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (956, NULL, NULL, NULL, NULL, '描述', 'Describe', 'string', 120, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, 5, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2022-09-07 01:42:45', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (957, NULL, NULL, NULL, NULL, '最后執行執行', 'LastRunTime', 'DateTime', 150, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, 0, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2022-09-07 01:42:45', 1, 900, NULL, NULL, 1, 'datetime', 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (958, NULL, NULL, NULL, NULL, '運行狀態', 'Status', 'int', 90, NULL, '2022-09-05 03:09:08', 1, '超級管理員', '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2022-09-07 01:42:45', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (959, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2022-09-07 01:42:45', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (960, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, 10, NULL, NULL, 1, 0, NULL, 0, 1, 1, 30, '超級管理員', '2022-09-07 01:42:45', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (961, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, 10, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, '超級管理員', '2022-09-07 01:42:45', 1, 700, NULL, NULL, 1, 'datetime', 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (962, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2022-09-07 01:42:45', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (963, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2022-09-07 01:42:45', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (964, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 110, NULL, '2022-09-05 03:09:08', 1, '超級管理員', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2022-09-07 01:42:45', 1, 550, NULL, NULL, 1, 'datetime', 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (965, NULL, NULL, NULL, NULL, '', 'LogId', 'guid', 110, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2022-09-05 23:49:32', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (966, NULL, NULL, NULL, NULL, '任務id', 'Id', 'guid', 110, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2022-09-05 23:49:32', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (967, NULL, NULL, NULL, NULL, '任務名稱', 'TaskName', 'string', 120, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2022-09-05 23:49:32', 1, 1100, NULL, NULL, 1, 'like', 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (968, NULL, NULL, NULL, NULL, '耗時(秒)', 'ElapsedTime', 'int', 90, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2022-09-05 23:49:32', 1, 1050, NULL, NULL, 1, 'range', 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (969, NULL, NULL, NULL, NULL, '開始時間', 'StratDate', 'DateTime', 150, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2022-09-05 23:49:32', 1, 1000, NULL, NULL, 1, 'datetime', 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (970, NULL, NULL, NULL, NULL, '結束時間', 'EndDate', 'DateTime', 150, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2022-09-05 23:49:32', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (971, NULL, NULL, NULL, NULL, '是否成功', 'Result', 'int', 100, NULL, '2022-09-05 03:14:51', 1, '超級管理員', 'enable', NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2022-09-05 23:49:32', 1, 900, NULL, NULL, 1, 'select', 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (972, NULL, NULL, NULL, NULL, '返回內容', 'ResponseContent', 'string', 250, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, '超級管理員', '2022-09-05 23:49:32', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (973, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2022-09-05 23:49:32', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (974, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 130, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2022-09-05 23:49:32', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (975, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 110, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2022-09-05 23:49:32', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (976, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2022-09-05 23:49:32', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (977, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2022-09-05 23:49:32', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (978, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-09-05 03:14:51', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2022-09-05 23:49:32', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (979, NULL, NULL, NULL, 12, 'post參數', 'PostData', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 0, '超級管理員', '2022-09-07 01:42:45', 1, 1060, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (980, NULL, NULL, NULL, NULL, '請求方式', 'Method', 'string', 110, NULL, NULL, NULL, NULL, '請求方式', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2022-09-07 01:42:45', 1, 1160, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (981, NULL, NULL, NULL, NULL, '超時時間(秒)', 'TimeOut', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2022-09-07 01:42:45', 1, 1152, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 37);
INSERT INTO `Sys_TableColumn` VALUES (982, NULL, NULL, NULL, NULL, '異常信息', 'ErrorMsg', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, '超級管理員', '2022-09-05 23:49:32', 1, 840, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 38);
INSERT INTO `Sys_TableColumn` VALUES (983, NULL, NULL, NULL, NULL, '下一個審批節點', 'NextStepIds', 'string', 220, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (984, NULL, NULL, NULL, NULL, '父級節點', 'ParentId', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (985, NULL, NULL, NULL, NULL, '審核未通過(返回上一節點,流程重新開始,流程結束)', 'AuditRefuse', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (986, NULL, NULL, NULL, NULL, '駁回(返回上一節點,流程重新開始,流程結束)', 'AuditBack', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (987, NULL, NULL, NULL, NULL, '審批方式(啟用會簽)', 'AuditMethod', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (988, NULL, NULL, NULL, NULL, '審核后發送郵件通知', 'SendMail', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (989, NULL, NULL, NULL, NULL, '審核條件', 'Filters', 'string', 220, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4000, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (990, NULL, NULL, NULL, NULL, '審核中數據是否可以編輯', 'AuditingEdit', 'int', 80, NULL, NULL, NULL, NULL, 'enable', NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 17:04:22', 1, 1010, NULL, NULL, 1, 'select', 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (991, NULL, NULL, NULL, NULL, '節點屬性(start、node、end))', 'StepAttrType', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (992, NULL, NULL, NULL, NULL, '節點屬性(start、node、end))', 'StepAttrType', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (993, NULL, NULL, NULL, NULL, '當前審核節點ID', 'CurrentStepId', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-13 12:59:47', 1, 960, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (994, NULL, NULL, NULL, NULL, '', 'ParentId', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (995, NULL, NULL, NULL, NULL, '', 'NextStepId', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (996, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-04-26 11:54:08', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (997, NULL, NULL, NULL, NULL, '', 'WorkFlowTable_Id', 'guid', 110, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, '超級管理員', '2023-04-26 11:54:08', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (998, NULL, NULL, NULL, NULL, '', 'WorkFlowTableStep_Id', 'guid', 110, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, '超級管理員', '2023-04-26 11:54:08', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (999, NULL, NULL, NULL, NULL, '節點id', 'StepId', 'string', 120, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-04-26 11:54:08', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1000, NULL, NULL, NULL, NULL, '節點名稱', 'StepName', 'string', 180, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-04-26 11:54:08', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1001, NULL, NULL, NULL, NULL, '', 'AuditId', 'int', 110, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-04-26 11:54:08', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1002, NULL, NULL, NULL, NULL, '', 'Auditor', 'string', 120, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-04-26 11:54:08', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1003, NULL, NULL, NULL, NULL, '', 'AuditStatus', 'int', 110, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-04-26 11:54:08', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1004, NULL, NULL, NULL, NULL, '', 'AuditResult', 'string', 220, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, '超級管理員', '2023-04-26 11:54:08', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1005, NULL, NULL, NULL, NULL, '', 'AuditDate', 'DateTime', 150, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-04-26 11:54:08', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1006, NULL, NULL, NULL, NULL, '', 'Remark', 'string', 220, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, '超級管理員', '2023-04-26 11:54:08', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1007, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 150, NULL, '2023-04-26 11:52:20', 1, '超級管理員', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-04-26 11:54:08', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 39);
INSERT INTO `Sys_TableColumn` VALUES (1008, NULL, NULL, NULL, NULL, '當前審核節點名稱', 'StepName', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-13 12:59:47', 1, 955, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 35);
INSERT INTO `Sys_TableColumn` VALUES (1009, NULL, NULL, NULL, NULL, '權重(相同條件權重大的優先匹配)', 'Weight', 'int', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 17:04:22', 1, 1011, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 33);
INSERT INTO `Sys_TableColumn` VALUES (1010, NULL, NULL, NULL, NULL, '權重(相同條件權重大的優先匹配)', 'Weight', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 34);
INSERT INTO `Sys_TableColumn` VALUES (1011, NULL, NULL, NULL, NULL, '', 'Weight', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 36);
INSERT INTO `Sys_TableColumn` VALUES (1012, NULL, NULL, NULL, NULL, '', 'AuditId', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:55:15', 1, 0, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (1013, NULL, NULL, NULL, NULL, '審核人', 'Auditor', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-18 23:55:15', 1, 0, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (1014, NULL, NULL, NULL, NULL, '審核狀態', 'AuditStatus', 'int', 100, NULL, NULL, NULL, NULL, 'audit', NULL, 0, 'select', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-18 23:55:15', 1, 0, NULL, NULL, NULL, '', 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (1015, NULL, NULL, NULL, NULL, '審核時間', 'AuditDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-18 23:55:15', 1, 0, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (1016, NULL, NULL, NULL, NULL, '', 'AuditReason', 'string', 220, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-18 23:55:15', 1, 0, NULL, NULL, NULL, NULL, 0, 'Demo_Order', 25);
INSERT INTO `Sys_TableColumn` VALUES (1017, NULL, NULL, NULL, NULL, '郵箱', 'Email', 'string', 140, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'mail', NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-19 18:16:08', 1, 7815, NULL, NULL, NULL, NULL, 0, 'Sys_User', 6);

-- ----------------------------
-- Table structure for Sys_TableInfo
-- ----------------------------
DROP TABLE IF EXISTS `Sys_TableInfo`;
CREATE TABLE `Sys_TableInfo`  (
  `Table_Id` int NOT NULL AUTO_INCREMENT,
  `CnName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ColumnCNName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DBServer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `DataTableType` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DetailCnName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DetailName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EditorType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` int NULL DEFAULT NULL,
  `ExpressField` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FolderName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Namespace` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OrderNo` int NULL DEFAULT NULL,
  `ParentId` int NULL DEFAULT NULL,
  `RichText` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SortName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TableName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TableTrueName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UploadField` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UploadMaxCount` int NULL DEFAULT NULL,
  `EditType` int NULL DEFAULT NULL,
  `SearchType` int NULL DEFAULT NULL,
  PRIMARY KEY (`Table_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_TableInfo
-- ----------------------------
INSERT INTO `Sys_TableInfo` VALUES (2, '角色管理', '角色管理', 'SysDbContext', NULL, NULL, NULL, NULL, 0, 'RoleName', 'System', 'ZL.Sys', NULL, 8, NULL, NULL, 'Sys_Role', 'Sys_Role', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (3, '字典數據', '字典數據', 'SysDbContext', NULL, '字典明細', 'Sys_DictionaryList', NULL, 0, 'DicName', 'System', 'ZL.Sys', NULL, 15, NULL, NULL, 'Sys_Dictionary', 'Sys_Dictionary', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (4, '字典明細', '字典明細', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'VOL.System', NULL, 15, NULL, NULL, 'Sys_DictionaryList', 'Sys_DictionaryList', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (5, '系統日志', '系統日志', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'ZL.Sys', NULL, 10, NULL, NULL, 'Sys_Log', 'Sys_Log', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (6, NULL, '用戶管理', 'SysDbContext', NULL, NULL, NULL, NULL, 0, 'UserName', 'System', 'ZL.Sys', NULL, 8, NULL, '', 'Sys_User', 'Sys_User', 'HeadImageUrl', 1, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (8, '用戶基礎信息', '用戶管理', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'ZL.Sys', 200, 0, NULL, NULL, '無', '無', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (10, '日志管理', '日志管理', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'ZL.Sys', NULL, 0, NULL, '170', '日志管理', '日志管理', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (12, '語言設置', '語言設置', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'ZHCN', 'lang', 'ZL.Sys', NULL, 13, NULL, NULL, 'Sys_Language', 'Sys_Language', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (13, '語言設置', '語言設置', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'lang', 'VOL.System', NULL, 0, NULL, NULL, '語言設置', '語言設置', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (14, '部門管理', '組織架構', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'DepartmentName', 'System', 'ZL.Sys', NULL, 8, NULL, 'DepartmentName', 'Sys_Department', 'Sys_Department', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (15, '系統設置', '系統設置', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, '系統設置', 'ZL.System', NULL, 0, NULL, NULL, '系統設置', '系統設置', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (16, '數據庫管理', '租戶管理', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'DbServiceName', 'Db', 'ZL.Sys', NULL, 8, NULL, 'CreateDate', 'Sys_DbService', 'Sys_DbService', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (17, '集團管理', '集團管理', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'GroupName', 'Group', 'ZL.Sys', NULL, 8, NULL, 'CreateDate', 'Sys_Group', 'Sys_Group', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (18, '用戶角色', '用戶角色', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'System', 'ZL.Sys', NULL, 8, NULL, 'CreateDate', 'Sys_UserRole', 'Sys_UserRole', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (19, '用戶部門', '用戶組織部門', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'System', 'ZL.Sys', NULL, 8, NULL, 'CreateDate', 'Sys_UserDepartment', 'Sys_UserDepartment', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (20, '省市區縣', '省市區縣', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'System', 'VolPro.Sys', NULL, 15, NULL, NULL, 'Sys_Region', 'Sys_Region', NULL, NULL, 1, NULL);
INSERT INTO `Sys_TableInfo` VALUES (21, '分庫測試', '分庫測試', 'ServiceDbContext', NULL, NULL, NULL, NULL, 1, NULL, '分庫測試', 'VolPro.DbTest', NULL, 0, NULL, NULL, '分庫測試', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (22, '業務庫', '業務庫', 'ServiceDbContext', NULL, NULL, NULL, NULL, 1, 'DbName', 'Test', 'VolPro.DbTest', NULL, 21, NULL, 'CreateDate', 'TestService', 'TestService', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (23, '測試庫', '測試庫', 'TestDbContext', NULL, NULL, NULL, NULL, 1, 'TestDbName', 'Test', 'VolPro.DbTest', NULL, 21, NULL, 'CreateDate', 'TestDb', 'TestDb', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (24, '商品分類', '商品分類', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'CatalogName', 'Catalog', 'VolPro.DbTest', NULL, 32, NULL, 'CreateDate', 'Demo_Catalog', 'Demo_Catalog', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (25, '訂單管理', '訂單管理', 'SysDbContext', NULL, '訂單明細', 'Demo_OrderList', NULL, 1, 'OrderNo', 'Order', 'VolPro.DbTest', NULL, 32, NULL, 'CreateDate', 'Demo_Order', 'Demo_Order', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (26, '訂單明細', '訂單明細', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'Order', 'VolPro.DbTest', NULL, 32, NULL, 'CreateDate', 'Demo_OrderList', 'Demo_OrderList', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (27, '客戶管理', '客戶管理', NULL, NULL, NULL, NULL, NULL, 1, 'Customer', 'Customer', 'VOL.Demo', NULL, 32, NULL, NULL, 'Demo_Customer', 'Demo_Customer', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (28, '商品信息', '商品信息', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'GoodsName', 'Goods', 'VolPro.DbTest', NULL, 32, NULL, 'CreateDate', 'Demo_Goods', 'Demo_Goods', NULL, NULL, 1, NULL);
INSERT INTO `Sys_TableInfo` VALUES (29, '產品管理', '產品管理', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'ProductName', 'Product', 'VolPro.DbTest', NULL, 32, NULL, 'CreateDate', 'Demo_Product', 'Demo_Product', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (30, '產品顏色', '產品顏色', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'Qty', 'Product', 'VolPro.DbTest', NULL, 32, NULL, 'CreateDate', 'Demo_ProductColor', 'Demo_ProductColor', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (31, '產呂尺寸', '產呂尺寸', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'Remark', 'Product', 'VolPro.DbTest', NULL, 32, NULL, 'CreateDate', 'Demo_ProductSize', 'Demo_ProductSize', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (32, '示例菜單', '示例菜單', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, '示例菜單', 'VolPro.DbTest', NULL, 0, NULL, NULL, '示例菜單', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (33, '審批流程', '審批流程配置', NULL, NULL, '審批步驟', 'Sys_WorkFlowStep', NULL, 1, 'WorkName', 'flow', 'VOL.System', NULL, 15, NULL, 'CreateDate', 'Sys_WorkFlow', 'Sys_WorkFlow', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (34, '審批節點', '審批節點配置', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'flow', 'VOL.System', NULL, 15, NULL, 'CreateDate', 'Sys_WorkFlowStep', 'Sys_WorkFlowStep', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (35, '審批流程', '審批流程', NULL, NULL, '審批節點', 'Sys_WorkFlowTableStep', NULL, 1, '', 'flow', 'VOL.System', NULL, 15, NULL, 'CreateDate', 'Sys_WorkFlowTable', 'Sys_WorkFlowTable', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (36, '審批節點', '審批節點', NULL, NULL, NULL, NULL, NULL, 1, '', 'flow', 'VOL.System', NULL, 15, NULL, 'CreateDate', 'Sys_WorkFlowTableStep', 'Sys_WorkFlowTableStep', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (37, '定時任務', '定時任務', NULL, NULL, NULL, NULL, NULL, 1, 'TaskName', 'Quartz', 'VOL.System', NULL, 15, NULL, 'TaskName', 'Sys_QuartzOptions', 'Sys_QuartzOptions', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (38, '執行記錄', '執行記錄', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Quartz', 'VOL.System', NULL, 15, NULL, 'StratDate', 'Sys_QuartzLog', 'Sys_QuartzLog', NULL, NULL, NULL, NULL);
INSERT INTO `Sys_TableInfo` VALUES (39, '審批記錄', '審批記錄', NULL, NULL, NULL, NULL, NULL, 1, '', 'flow', 'VOL.System', NULL, 15, NULL, 'CreateDate', 'Sys_WorkFlowTableAuditLog', 'Sys_WorkFlowTableAuditLog', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_User
-- ----------------------------
DROP TABLE IF EXISTS `Sys_User`;
CREATE TABLE `Sys_User`  (
  `User_Id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UserPwd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `UserTrueName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DeptIds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Enable` tinyint NULL DEFAULT NULL,
  `Gender` int NULL DEFAULT NULL,
  `Email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `HeadImageUrl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LastLoginDate` datetime(0) NULL DEFAULT NULL,
  `LastModifyPwdDate` datetime(0) NULL DEFAULT NULL,
  `Modifier` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `OrderNo` int NULL DEFAULT NULL,
  `Role_Id` int NULL DEFAULT NULL,
  `RoleIds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `PhoneNo` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`User_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_User
-- ----------------------------
INSERT INTO `Sys_User` VALUES (1, 'admin', 'j79rYYvCz4vdhcboB1Ausg==', '超級管理員', '2012-06-10 11:10:03', NULL, NULL, 'dce91cee-4a39-4a0f-b50c-339b92a6aada', 1, 1, '11@qq.com', 'Upload/Tables/Sys_User/202305201317249210/wechart.png', '2017-08-28 09:58:55', '2019-12-14 15:14:23', '超級管理員', '2023-05-20 13:17:25', 1, 0, 1, NULL, '13888888888', '~還沒想好...', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIxIiwiaWF0IjoiMTY4NjU1MDU5MiIsIm5iZiI6IjE2ODY1NTA1OTIiLCJleHAiOiIxNjg2NTU3NzkyIiwiaXNzIjoibGVpbndpbi5tb20uY29yZS5vd25lciIsImF1ZCI6ImxlaW53aW4ubW9tLmNvcmUifQ.HgDsoWIzo1XCYvi4qhbiXpCsfS3_JrtFmoSxgpa4s0s');
INSERT INTO `Sys_User` VALUES (3362, 'admin666', 'j79rYYvCz4vdhcboB1Ausg==', '測試管理員', '2019-08-13 14:24:27', NULL, NULL, 'dce91cee-4a39-4a0f-b50c-339b92a6aada,5852bcbe-97fb-4492-a918-b65ac87b64f1', 0, 0, '123@qq.com', 'Upload/Tables/Sys_User/202305201317174696/wechart.png', NULL, '2019-09-22 23:03:34', '超級管理員', '2023-05-20 13:17:18', 1, NULL, 2, '19,20', NULL, '123', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzYyIiwiaWF0IjoiMTY4NjU0OTAxOSIsIm5iZiI6IjE2ODY1NDkwMTkiLCJleHAiOiIxNjg2NTU2MjE5IiwiaXNzIjoiVm9sUHJvLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.1TMknyUK9IpZTbB1s9CJAgMn0WMUy6RTU2uEmWD3G-8');

-- ----------------------------
-- Table structure for Sys_UserDepartment
-- ----------------------------
DROP TABLE IF EXISTS `Sys_UserDepartment`;
CREATE TABLE `Sys_UserDepartment`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UserId` int NOT NULL,
  `DepartmentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Enable` int NOT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_UserDepartment
-- ----------------------------
INSERT INTO `Sys_UserDepartment` VALUES ('1593C03E-3FFE-40B9-98A1-08DB53BA8C8F', 3362, '62105DFA-CA64-4C4A-AB42-11BA677AC4DB', 0, 1, '超級管理員', '2023-05-13 22:21:19', 1, '超級管理員', '2023-05-13 22:27:03');
INSERT INTO `Sys_UserDepartment` VALUES ('1D834CC3-A250-4E90-695E-08DB4CBB8BA2', 3362, '5852BCBE-97FB-4492-A918-B65AC87B64F1', 1, 1, '超級管理員', '2023-05-05 00:20:59', NULL, NULL, NULL);
INSERT INTO `Sys_UserDepartment` VALUES ('2E12D46F-F003-44F3-98A3-08DB53BA8C8F', 3362, '8974177F-AF6B-45B5-B7AB-88F169063F40', 0, 1, '超級管理員', '2023-05-13 22:27:03', 1, '超級管理員', '2023-05-19 01:54:52');
INSERT INTO `Sys_UserDepartment` VALUES ('302EA3A8-4AC0-419E-98A2-08DB53BA8C8F', 3362, '9E1121A0-D5C5-4F46-8DD4-43ED90D2F963', 0, 1, '超級管理員', '2023-05-13 22:21:19', 1, '超級管理員', '2023-05-13 22:27:03');
INSERT INTO `Sys_UserDepartment` VALUES ('3AF97EC8-3DD6-470E-B491-08DB4EA6C80E', 1, 'DCE91CEE-4A39-4A0F-B50C-339B92A6AADA', 1, 1, '超級管理員', '2023-05-07 10:57:23', NULL, NULL, NULL);
INSERT INTO `Sys_UserDepartment` VALUES ('5F6E1331-D2E1-41F6-989F-08DB53BA8C8F', 3362, 'E5D8E8AF-3659-454C-AA8E-C201C7EDBCFB', 0, 1, '超級管理員', '2023-05-13 22:01:29', 1, '超級管理員', '2023-05-13 22:01:35');
INSERT INTO `Sys_UserDepartment` VALUES ('71E572D0-D484-43FD-98A0-08DB53BA8C8F', 3362, 'EC238385-F907-44DE-B99B-0EDDCFFA6750', 0, 1, '超級管理員', '2023-05-13 22:01:29', 1, '超級管理員', '2023-05-13 22:21:19');
INSERT INTO `Sys_UserDepartment` VALUES ('DD219F13-4FAF-4199-695D-08DB4CBB8BA2', 3362, 'DCE91CEE-4A39-4A0F-B50C-339B92A6AADA', 1, 1, '超級管理員', '2023-05-05 00:20:59', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_UserRole
-- ----------------------------
DROP TABLE IF EXISTS `Sys_UserRole`;
CREATE TABLE `Sys_UserRole`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `UserId` int NOT NULL,
  `RoleId` int NOT NULL,
  `Enable` int NOT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `Modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_UserRole
-- ----------------------------
INSERT INTO `Sys_UserRole` VALUES ('0DF195A4-68D2-4C23-F88E-08DB4EDAF8EA', 3362, 20, 1, 1, '超級管理員', '2023-05-07 17:11:41', 1, '超級管理員', '2023-05-19 18:16:31');
INSERT INTO `Sys_UserRole` VALUES ('9425B1C5-1085-4CD0-F88D-08DB4EDAF8EA', 3362, 19, 1, 1, '超級管理員', '2023-05-07 17:10:59', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_WorkFlow
-- ----------------------------
DROP TABLE IF EXISTS `Sys_WorkFlow`;
CREATE TABLE `Sys_WorkFlow`  (
  `WorkFlow_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `WorkName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程名稱',
  `WorkTable` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表名',
  `WorkTableName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能菜單',
  `NodeConfig` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '節點信息',
  `LineConfig` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '連接配置',
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '備注',
  `Weight` int NULL DEFAULT NULL COMMENT '權重',
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` tinyint NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `AuditingEdit` int NULL DEFAULT NULL,
  PRIMARY KEY (`WorkFlow_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_WorkFlow
-- ----------------------------
INSERT INTO `Sys_WorkFlow` VALUES ('25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', '測試流程', 'SellOrder', '銷售訂單', '[{\"id\":\"folpb3e1qe\",\"name\":\"流程開始\",\"type\":\"start\",\"left\":\"296px\",\"top\":\"16px\",\"ico\":\"el-icon-time\",\"state\":\"success\",\"filters\":[{\"field\":\"OrderType\",\"value\":[\"1\"],\"filterType\":\"=\",\"data\":[{\"value\":\"1\",\"label\":\"發貨\",\"key\":\"1\"},{\"value\":\"2\",\"label\":\"退貨\",\"key\":\"2\"},{\"value\":\"3\",\"label\":\"返單\",\"key\":\"3\"}]}]},{\"id\":\"3nfhu1i4\",\"name\":\"<=100\",\"type\":\"node\",\"left\":\"52px\",\"top\":\"190px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"auditType\":1,\"userId\":3362,\"filters\":[{\"field\":\"Qty\",\"value\":\"100\",\"filterType\":\"<=\",\"data\":null}]},{\"id\":\"eah755bg8\",\"name\":\"流程結束\",\"type\":\"end\",\"left\":\"302.2px\",\"top\":\"346.7px\",\"ico\":\"el-icon-switch-button\",\"state\":\"success\"},{\"id\":\"mtisrzm4x\",\"name\":\">=200\",\"type\":\"node\",\"left\":\"446px\",\"top\":\"182px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[{\"field\":\"Qty\",\"value\":\"200\",\"filterType\":\">=\",\"data\":null}],\"auditType\":1,\"userId\":1}]', '[{\"from\":\"folpb3e1qe\",\"to\":\"3nfhu1i4\",\"label\":\"x\"},{\"from\":\"3nfhu1i4\",\"to\":\"eah755bg8\",\"label\":\"x\"},{\"from\":\"folpb3e1qe\",\"to\":\"mtisrzm4x\",\"label\":\"x\"},{\"from\":\"mtisrzm4x\",\"to\":\"eah755bg8\",\"label\":\"x\"}]', NULL, 50, '2023-05-06 16:30:30', 1, '超級管理員', 1, '超級管理員', '2023-05-13 21:17:19', 1, 0);
INSERT INTO `Sys_WorkFlow` VALUES ('AA7099A6-CFEE-4845-BA95-56E425A11ACE', '部門+角色按條件審核', 'SellOrder', '訂單管理', '[{\"id\":\"iyzakw0c8\",\"name\":\"發貨訂單流程\",\"type\":\"start\",\"left\":\"325px\",\"top\":\"16px\",\"ico\":\"el-icon-time\",\"state\":\"success\",\"filters\":[{\"field\":\"OrderType\",\"value\":[\"1\"],\"filterType\":\"=\",\"data\":[{\"value\":\"1\",\"label\":\"發貨\",\"key\":\"1\"},{\"value\":\"2\",\"label\":\"退貨\",\"key\":\"2\"},{\"value\":\"3\",\"label\":\"返單\",\"key\":\"3\"}]}]},{\"id\":\"jkqinw0zc\",\"name\":\"用戶審批>=5000\",\"type\":\"node\",\"left\":\"56px\",\"top\":\"92px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[{\"field\":\"Qty\",\"value\":\"5000\",\"filterType\":\">=\",\"data\":null}],\"auditType\":1,\"userId\":1,\"auditRefuse\":1,\"auditBack\":2,\"sendMail\":1},{\"id\":\"5zfqhzz198\",\"name\":\"流程結束\",\"type\":\"end\",\"left\":\"322px\",\"top\":\"530px\",\"ico\":\"el-icon-switch-button\",\"state\":\"success\",\"filters\":[]},{\"id\":\"bth346cr4d\",\"name\":\"其他測試管理員審批\",\"type\":\"node\",\"left\":\"574px\",\"top\":\"152px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[],\"auditType\":1,\"userId\":3362,\"auditRefuse\":1,\"auditBack\":1},{\"id\":\"b9cv1h35jg\",\"name\":\"產品部>=7000審批\",\"type\":\"node\",\"left\":\"327px\",\"top\":\"225px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[],\"auditType\":3,\"deptId\":\"ec238385-f907-44de-b99b-0eddcffa6750\"},{\"id\":\"mcpdtusm42\",\"name\":\"測試管理員<5500審批\",\"type\":\"node\",\"left\":\"14px\",\"top\":\"234px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[{\"field\":\"Qty\",\"value\":\"5500\",\"filterType\":\"<\",\"data\":null}],\"auditType\":2,\"roleId\":2},{\"id\":\"hnoj7gaczc\",\"name\":\"超級管理員審批\",\"type\":\"node\",\"left\":\"173px\",\"top\":\"429px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[],\"auditType\":1,\"userId\":1}]', '[{\"from\":\"iyzakw0c8\",\"to\":\"jkqinw0zc\",\"label\":\"x\"},{\"from\":\"iyzakw0c8\",\"to\":\"bth346cr4d\",\"label\":\"x\"},{\"from\":\"bth346cr4d\",\"to\":\"5zfqhzz198\",\"label\":\"x\"},{\"from\":\"jkqinw0zc\",\"to\":\"mcpdtusm42\",\"label\":\"x\"},{\"from\":\"jkqinw0zc\",\"to\":\"b9cv1h35jg\",\"label\":\"x\"},{\"from\":\"mcpdtusm42\",\"to\":\"hnoj7gaczc\",\"label\":\"x\"},{\"from\":\"hnoj7gaczc\",\"to\":\"5zfqhzz198\",\"label\":\"x\"},{\"from\":\"b9cv1h35jg\",\"to\":\"hnoj7gaczc\",\"label\":\"x\"}]', '部門、角色、條件同時審批', 100, '2023-05-13 16:31:42', 1, '超級管理員', 1, '超級管理員', '2023-05-13 16:49:16', 1, 0);
INSERT INTO `Sys_WorkFlow` VALUES ('BE42A851-147A-493A-B42F-3DC7D3061E32', '退貨單數量>10流程', 'SellOrder', '銷售訂單', '[{\"id\":\"18umlmt5a\",\"name\":\"qty<10\",\"type\":\"node\",\"left\":\"186px\",\"top\":\"181px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[{\"field\":\"Qty\",\"value\":\"10\",\"filterType\":\"<\",\"data\":null}],\"auditType\":1,\"userId\":3362},{\"id\":\"qq4qwkz9il\",\"name\":\"流程結束\",\"type\":\"end\",\"left\":\"241px\",\"top\":\"400px\",\"ico\":\"el-icon-switch-button\",\"state\":\"success\",\"filters\":[]},{\"id\":\"yuo5z0v07p\",\"name\":\"流程開始\",\"type\":\"start\",\"left\":\"343px\",\"top\":\"59px\",\"ico\":\"el-icon-time\",\"state\":\"success\",\"filters\":[{\"field\":\"OrderType\",\"value\":[\"2\"],\"filterType\":\"=\",\"data\":[{\"value\":\"1\",\"label\":\"發貨\",\"key\":\"1\"},{\"value\":\"2\",\"label\":\"退貨\",\"key\":\"2\"},{\"value\":\"3\",\"label\":\"返單\",\"key\":\"3\"}]}]},{\"id\":\"xebxs78ls\",\"name\":\"qty>10\",\"type\":\"node\",\"left\":\"501px\",\"top\":\"175px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[{\"field\":\"Qty\",\"value\":\"10\",\"filterType\":\">=\",\"data\":null}],\"auditType\":1,\"userId\":3362},{\"id\":\"xk0xirr5zf\",\"name\":\">=20\",\"type\":\"node\",\"left\":\"479px\",\"top\":\"299px\",\"ico\":\"el-icon-news\",\"state\":\"success\",\"filters\":[{\"field\":\"Qty\",\"value\":\"20\",\"filterType\":\">=\",\"data\":null}],\"auditType\":2,\"roleId\":2}]', '[{\"from\":\"yuo5z0v07p\",\"to\":\"18umlmt5a\",\"label\":\"x\"},{\"from\":\"yuo5z0v07p\",\"to\":\"xebxs78ls\",\"label\":\"x\"},{\"from\":\"18umlmt5a\",\"to\":\"qq4qwkz9il\",\"label\":\"x\"},{\"from\":\"xebxs78ls\",\"to\":\"xk0xirr5zf\",\"label\":\"x\"},{\"from\":\"xk0xirr5zf\",\"to\":\"qq4qwkz9il\",\"label\":\"x\"}]', NULL, 50, '2023-05-06 19:58:08', 1, '超級管理員', 1, '超級管理員', '2023-05-13 17:03:23', 1, 1);

-- ----------------------------
-- Table structure for Sys_WorkFlowStep
-- ----------------------------
DROP TABLE IF EXISTS `Sys_WorkFlowStep`;
CREATE TABLE `Sys_WorkFlowStep`  (
  `WorkStepFlow_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `WorkFlow_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程主表id',
  `StepId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流程節點Id',
  `StepName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '節點名稱',
  `StepType` int NULL DEFAULT NULL COMMENT '節點類型(1=按用戶審批,2=按角色審批)',
  `StepValue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '審批用戶id或角色id',
  `OrderId` int NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '備注',
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` tinyint NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `NextStepIds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ParentId` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `AuditRefuse` int NULL DEFAULT NULL,
  `AuditBack` int NULL DEFAULT NULL,
  `AuditMethod` int NULL DEFAULT NULL,
  `SendMail` int NULL DEFAULT NULL,
  `Filters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `StepAttrType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Weight` int NULL DEFAULT NULL,
  PRIMARY KEY (`WorkStepFlow_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_WorkFlowStep
-- ----------------------------
INSERT INTO `Sys_WorkFlowStep` VALUES ('0D89E5AD-40E4-4B1A-E6EB-08DB4E292860', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'yuo5z0v07p', '流程開始', NULL, NULL, 0, NULL, '2023-05-06 19:58:08', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 17:03:23', 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"field\":\"OrderType\",\"filterType\":\"=\",\"value\":\"2\"}]', 'start', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('1CE1ABDB-5FBA-44A8-2AE9-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'jkqinw0zc', '用戶審批>=5000', 1, '1', 1, NULL, '2023-05-13 16:31:42', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 16:49:16', 1, NULL, 'iyzakw0c8', 1, 2, NULL, 0, '[{\"field\":\"Qty\",\"filterType\":\">=\",\"value\":\"5000\"}]', 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('342E50A6-92F3-4A05-BB7F-A025E3FA0DA7', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xebxs78ls', 'qty>10', 1, '3362', 2, NULL, '2023-05-06 20:01:24', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 17:03:23', 1, NULL, 'yuo5z0v07p', NULL, NULL, NULL, 0, '[{\"field\":\"Qty\",\"filterType\":\">=\",\"value\":\"10\"}]', 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('34611B20-83EA-4166-2AE8-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'iyzakw0c8', '發貨訂單流程', NULL, NULL, 0, NULL, '2023-05-13 16:31:42', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 16:49:16', 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"field\":\"OrderType\",\"filterType\":\"=\",\"value\":\"1\"}]', 'start', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('4D7781B0-FEAD-4267-B5E3-08DB4E0C2701', '25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', '3nfhu1i4', '<=100', 1, '3362', 1, NULL, '2023-05-06 16:30:30', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 21:17:19', 1, NULL, 'folpb3e1qe', NULL, NULL, NULL, 0, '[{\"field\":\"Qty\",\"filterType\":\"<=\",\"value\":\"100\"}]', 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('549425AD-43A9-450C-B5E4-08DB4E0C2701', '25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', 'eah755bg8', '流程結束', NULL, NULL, 3, NULL, '2023-05-06 16:30:30', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 21:17:19', 1, NULL, '3nfhu1i4,mtisrzm4x', NULL, NULL, NULL, 0, NULL, 'end', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('5FE5984E-3BB8-4A5D-2AEB-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'mcpdtusm42', '測試管理員<5500審批', 2, '2', 3, NULL, '2023-05-13 16:31:42', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 16:49:16', 1, NULL, 'jkqinw0zc', NULL, NULL, NULL, 0, '[{\"field\":\"Qty\",\"filterType\":\"<\",\"value\":\"5500\"}]', 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('717567AB-19CB-46FB-E6EC-08DB4E292860', 'BE42A851-147A-493A-B42F-3DC7D3061E32', '18umlmt5a', 'qty<10', 1, '3362', 1, NULL, '2023-05-06 19:58:08', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 17:03:23', 1, NULL, 'yuo5z0v07p', NULL, NULL, NULL, 0, '[{\"field\":\"Qty\",\"filterType\":\"<\",\"value\":\"10\"}]', 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('9BABC207-2159-42C1-92AA-960F689A6AAD', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'qq4qwkz9il', '流程結束', NULL, NULL, 3, NULL, '2023-05-06 20:01:24', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 17:03:23', 1, NULL, '18umlmt5a,xk0xirr5zf', NULL, NULL, NULL, 0, NULL, 'end', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('A490B734-A54D-411E-2AEC-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'b9cv1h35jg', '產品部>=7000審批', 3, 'ec238385-f907-44de-b99b-0eddcffa6750', 4, NULL, '2023-05-13 16:31:42', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 16:49:16', 1, NULL, 'jkqinw0zc', NULL, NULL, NULL, 0, NULL, 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('AC58FE6A-B5DC-4A1F-B5E2-08DB4E0C2701', '25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', 'folpb3e1qe', '流程開始', NULL, NULL, 0, NULL, '2023-05-06 16:30:30', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 21:17:19', 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"field\":\"OrderType\",\"filterType\":\"=\",\"value\":\"1\"}]', 'start', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('B25C3BF2-8878-4283-2AEA-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'bth346cr4d', '其他測試管理員審批', 1, '3362', 2, NULL, '2023-05-13 16:31:42', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 16:49:16', 1, NULL, 'iyzakw0c8', 1, 1, NULL, 0, NULL, 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('B95667C1-95DD-4370-2AED-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '5zfqhzz198', '流程結束', NULL, NULL, 5, NULL, '2023-05-13 16:31:42', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 16:49:16', 1, NULL, 'bth346cr4d,hnoj7gaczc', NULL, NULL, NULL, 0, NULL, 'end', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('BCD55DBE-F145-4532-BC0C-BA876B4B48D3', '25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', 'mtisrzm4x', '>=200', 1, '1', 2, NULL, '2023-05-06 19:56:37', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 21:17:19', 1, NULL, 'folpb3e1qe', NULL, NULL, NULL, 0, '[{\"field\":\"Qty\",\"filterType\":\">=\",\"value\":\"200\"}]', 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('BEB46DA8-EF43-4844-2AEE-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'hnoj7gaczc', '超級管理員審批', 1, '1', 6, NULL, '2023-05-13 16:31:42', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 16:49:16', 1, NULL, 'mcpdtusm42,b9cv1h35jg', NULL, NULL, NULL, 0, NULL, 'node', NULL);
INSERT INTO `Sys_WorkFlowStep` VALUES ('E63D434B-A434-44C1-93C2-8A8493C78ED2', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xk0xirr5zf', '>=20', 2, '2', 4, NULL, '2023-05-06 20:01:24', 1, '超級管理員', NULL, '超級管理員', '2023-05-13 17:03:23', 1, NULL, 'xebxs78ls', NULL, NULL, NULL, 0, '[{\"field\":\"Qty\",\"filterType\":\">=\",\"value\":\"20\"}]', 'node', NULL);

-- ----------------------------
-- Table structure for Sys_WorkFlowTable
-- ----------------------------
DROP TABLE IF EXISTS `Sys_WorkFlowTable`;
CREATE TABLE `Sys_WorkFlowTable`  (
  `WorkFlowTable_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `WorkFlow_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `WorkName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `WorkTableKey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表主鍵id',
  `WorkTable` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `WorkTableName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表中文名',
  `CurrentOrderId` int NULL DEFAULT NULL,
  `AuditStatus` int NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` tinyint NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `CurrentStepId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StepName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`WorkFlowTable_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_WorkFlowTable
-- ----------------------------
INSERT INTO `Sys_WorkFlowTable` VALUES ('60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '部門+角色按條件審核', '323ab96f-49c1-4100-9d08-17db9f209df7', 'SellOrder', '訂單管理', NULL, 2, '2023-05-13 17:17:47', 1, '超級管理員', 1, NULL, NULL, NULL, 'b9cv1h35jg', '用戶審批>=5000');
INSERT INTO `Sys_WorkFlowTable` VALUES ('7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', '退貨單數量>10流程', '55ae8c6c-6a11-4765-952a-7b4a3adece04', 'SellOrder', '訂單管理', NULL, 2, '2023-05-13 15:49:18', 1, '超級管理員', 1, NULL, NULL, NULL, 'xk0xirr5zf', 'qty>10');
INSERT INTO `Sys_WorkFlowTable` VALUES ('A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', '退貨單數量>10流程', 'b67b7ec0-136c-4439-a530-cd6dd4d69a9c', 'SellOrder', '訂單管理', NULL, 1, '2023-05-13 15:58:43', 1, '超級管理員', 1, NULL, NULL, NULL, '審核完成', 'qty>10');
INSERT INTO `Sys_WorkFlowTable` VALUES ('D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '部門+角色按條件審核', 'b1db23bd-ed48-4459-b9ed-355d97a7e16e', 'SellOrder', '訂單管理', NULL, 1, '2023-05-13 17:07:37', 1, '超級管理員', 1, NULL, NULL, NULL, '審核完成', '用戶審批>=5000');

-- ----------------------------
-- Table structure for Sys_WorkFlowTableAuditLog
-- ----------------------------
DROP TABLE IF EXISTS `Sys_WorkFlowTableAuditLog`;
CREATE TABLE `Sys_WorkFlowTableAuditLog`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `WorkFlowTable_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `WorkFlowTableStep_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StepId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StepName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AuditId` int NULL DEFAULT NULL,
  `Auditor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AuditStatus` int NULL DEFAULT NULL,
  `AuditResult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `AuditDate` datetime(0) NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_WorkFlowTableAuditLog
-- ----------------------------
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('032A246A-3D95-45AE-A02F-15397FE959A4', '38417B03-D70B-436B-8D24-F60ED5373DC6', 'EEE0B9EF-EB93-4680-8DCA-658B73C5D797', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-08 16:48:16', NULL, '2023-05-08 16:48:16');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('033009CD-4227-4088-A7F4-0FE956717005', 'F00BF32C-7D32-45B7-AC3E-4E223A6E2DD6', '0F7C0A3C-A0FA-4FB4-9D4D-FBCD441FA449', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 13:15:57', NULL, '2023-05-13 13:15:57');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('0404929A-1B62-4015-905F-C47B8488C0B5', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE1DC0BF-96F0-46DB-8A02-90362B1B0B38', 'xebxs78ls', 'qty>10', 3362, 'Admin測試', 1, '............', '2023-05-13 16:12:02', '............', '2023-05-13 16:12:02');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('04F7DBBD-D36D-4FC0-9222-A87B8475E9F1', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE1DC0BF-96F0-46DB-8A02-90362B1B0B38', 'xebxs78ls', 'qty>10', 3362, 'Admin測試', 1, '同意。。。。', '2023-05-13 16:02:58', '同意。。。。', '2023-05-13 16:02:58');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('0760AAF1-644F-4AE8-A28C-959583420365', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'DE5133DF-9FF7-494D-BB76-C9E457DFEBAD', 'b9cv1h35jg', '產品部>=7000審批', 3362, 'Admin測試', 1, 'Admin測試管理員同意。。', '2023-05-13 17:11:47', 'Admin測試管理員同意。。', '2023-05-13 17:11:47');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('088BDAB5-4BCF-4F12-A5C1-0F2E642EC66C', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 15:49:18');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('08E13A05-901D-456A-9E96-39ABD8054D22', '827CE743-8340-4643-8512-DE6B8B998B9C', '4F5A3717-EA97-4E45-BB77-12E95A25523B', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-08 16:36:42', NULL, '2023-05-08 16:36:42');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('09087F8C-4EDB-4FBF-BF04-97610D2EE880', '56A6D0FC-5B0D-4748-B436-1868865277C3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 13:46:23');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('1A21CC26-EB65-4A68-BCEA-116F08B43882', '89F87FD9-B1FB-435B-8C92-7870D74214DD', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 01:20:31');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('1B780830-DA10-47CF-AA55-B6049CF1BC6B', '2C0D573D-F81F-4D98-89FF-75804B8BC877', 'D1E0D9F4-2476-43E5-BA73-9A3B6D3431F2', '3nfhu1i4', '<=100', 1, '超級管理員', 0, NULL, '2023-05-13 12:07:42', NULL, '2023-05-13 12:07:42');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('267C2E5B-4B55-4F5D-8A43-2920A08B89FB', '56A6D0FC-5B0D-4748-B436-1868865277C3', '89329EB5-620E-477A-80C5-9261DC1F6C60', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 13:47:04', NULL, '2023-05-13 13:47:04');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('2BA41A15-768D-49DB-80F4-D6B9FF2DA546', 'EEF3FF36-111E-4398-BE9C-7C69E5D2B4C5', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 01:34:59');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('367AE81D-3BE4-4FA3-A5EE-555330B87FBE', 'D82F4733-9916-4714-BF35-900CEAA049C1', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 17:07:37');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('37CA151D-B43D-4364-AA6B-E2DF02720C07', 'BFF474A1-52E2-498B-8557-F7322BF34834', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 16:36:03');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('3A54FFCB-C687-41B3-A59C-FE287CB0BA38', 'DDD6EA0C-E3DB-49AD-8DFE-BB995C23BCF3', 'D6366D71-7FE1-480D-882C-D1B9A8419210', 'mtisrzm4x', '>=200', 1, '超級管理員', 3, '原因不明。。', '2023-05-13 15:37:08', '原因不明。。', '2023-05-13 15:37:08');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('3ABFDA8B-C565-47CD-B965-9D49BF50F902', '0CD2D3AC-A4B3-42DC-BE9B-3F3057B1AC61', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 00:54:50');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('42637473-018E-482E-B952-07E2C4AFC0CC', 'CC35E127-2740-40F0-AD5A-6007CF92367E', '3E190AFD-64B3-42FA-8C53-DB6670D65A9D', 'mtisrzm4x', '>=200', 1, '超級管理員', 1, NULL, '2023-05-13 12:57:36', NULL, '2023-05-13 12:57:36');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('45938D60-E6DE-4172-92EF-7F685E0F44E1', 'C46E07FC-6141-4DE8-947C-85D312F1972F', '937EB1AA-4C9F-401A-A8E3-CC267A6AB2BC', 'mtisrzm4x', '>=200', 1, '超級管理員', 3, NULL, '2023-05-13 15:35:53', NULL, '2023-05-13 15:35:53');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('47F08E68-5AE1-467B-81F3-8A55072E9794', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 17:17:47');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('4AA1C64B-10B7-4F9E-83F4-4E9B7DB22878', '9FDA3A1E-1486-4BF5-BFC4-A217951A7A6A', '94407D86-77A3-4A6B-8CB5-ABFA31AC3B0C', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 12:39:41', NULL, '2023-05-13 12:39:41');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('50D2F620-6FE3-4663-9E78-5CADCED87A7F', 'CA8025CD-4B66-4127-B9D6-D9EAD3D23705', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 01:39:57');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('576493C9-C755-4EF5-98C4-401D5BAFC5A2', 'CC35E127-2740-40F0-AD5A-6007CF92367E', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 12:56:24');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('59DD8BCD-EDDF-4882-A0E0-247844DEC5E7', 'B58589A0-04A1-432E-ACCB-76C9C22C8BC9', 'FA069866-DB1F-47F9-BB88-0132E42F7B4F', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 12:14:35', NULL, '2023-05-13 12:14:35');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('5FF227A0-5138-4145-AE8D-E03EA3A55CC3', '8E60E09E-CDA6-4BAA-B452-370DEA64ADA4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 16:33:45');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('6306B03C-7C1F-4912-9B44-CEFFCC609267', '75D7FB3F-049E-4103-8F6A-9F3E0D3EBB3A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 13:47:17');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('673B5F2A-D798-4120-8BCE-077DC208A047', 'C46E07FC-6141-4DE8-947C-85D312F1972F', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 14:17:56');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('685B461F-1A68-4498-87C1-F00EE5D2F0B3', '9FDA3A1E-1486-4BF5-BFC4-A217951A7A6A', '94407D86-77A3-4A6B-8CB5-ABFA31AC3B0C', 'mtisrzm4x', '>=200', 1, '超級管理員', 1, NULL, '2023-05-13 12:54:29', NULL, '2023-05-13 12:54:29');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('69BFBD14-CDC2-4D70-8625-819490946116', '2D019AE7-22BB-4D25-8D06-2B4444C22C6F', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 13:07:14');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('6D9AE3C7-F802-4E31-BA8E-0A27ACF3951D', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', '4ED73980-2E6E-4052-9722-695375D93303', 'xk0xirr5zf', '>=20', 3362, 'Admin測試', 1, '通過。。。。。', '2023-05-13 16:14:57', '通過。。。。。', '2023-05-13 16:14:57');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('6E3E6F00-3DBB-4887-B453-A9FB54FFFB5C', '646D440F-2447-44B7-BD35-3690E7D1E5E8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 13:49:17');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('71E15ED0-CBCC-4FEA-A45E-FAAF58758B18', 'D1CD7028-132C-4B97-AEC3-071F0BA7DA0E', '2AC1DDB2-19B7-412F-8C93-6F70228E5863', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 12:06:21', NULL, '2023-05-13 12:06:21');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('744382F3-0AE7-48E5-9F97-71908863F7B9', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', '4FC4ACA8-E0F6-4B57-B66A-4A1BF8DC3F85', 'jkqinw0zc', '用戶審批>=5000', 1, '超級管理員', 1, '同意。。。', '2023-05-13 17:17:59', '同意。。。', '2023-05-13 17:17:59');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('77C48D16-1D3E-4EC9-BB50-81308E51C6B1', 'E7E6A63F-3CA0-4D63-A323-790D4680D8C0', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 13:20:28');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('85401EE1-C772-4610-B958-6D8C8C3307A7', '0134C7B2-8931-4477-9743-7ADDA9A4D6DF', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 15:42:01');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('860FA141-5321-45B1-8148-7B707F02C8A7', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', '032EB689-C842-4EBF-B072-6062864B300D', 'xebxs78ls', 'qty>10', 3362, 'Admin測試', 1, '同意。。。。', '2023-05-13 15:56:56', '同意。。。。', '2023-05-13 15:56:56');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('86C3310D-AF70-45E1-8156-3259AEA24C6B', 'B58589A0-04A1-432E-ACCB-76C9C22C8BC9', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 12:14:35');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('9053B951-F2FD-40DF-8BAF-8F267D6126CE', 'E7E6A63F-3CA0-4D63-A323-790D4680D8C0', '4FD17D32-518A-4F9C-80C5-738374F5A846', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 13:20:44', NULL, '2023-05-13 13:20:44');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('94D7B7AE-E6E1-44F9-B5F0-66F37EB740C2', '1B92E493-11F0-462B-971B-C91FFBE82B42', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 11:47:55');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('987DE71A-AFCD-4FAD-99DF-57B4C50192E5', 'D1CD7028-132C-4B97-AEC3-071F0BA7DA0E', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 12:06:21');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('9B2C29A0-8C8F-4CDE-87C7-A6290A93ED03', '1B92E493-11F0-462B-971B-C91FFBE82B42', '839A2DE4-E5BE-4FCF-9AD5-8B3B26D791DC', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 11:47:55', NULL, '2023-05-13 11:47:55');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('9CB27636-CEF5-4FA0-8AE0-940A759425F2', '2C0D573D-F81F-4D98-89FF-75804B8BC877', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 12:07:42');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('9F5C12B1-CE50-4F90-B40A-833279872B0A', '9FDA3A1E-1486-4BF5-BFC4-A217951A7A6A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 12:39:40');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('A21B38BE-C2DF-4EDD-8EFB-5F2E8E216EC4', '98590873-049B-45C1-8F75-FF7AB22AE0DD', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 14:00:08');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('A4337440-A79E-4C46-BCDD-F279EBC6AB29', '827CE743-8340-4643-8512-DE6B8B998B9C', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 16:36:42');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('B8473B4D-C6FC-49C8-BE4F-2E8C8C181F24', 'ED175615-9853-469F-9BEE-DAC37D4CFE49', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 16:30:56');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('B9D955F1-05B2-4C16-B877-FF700B2954A7', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE1DC0BF-96F0-46DB-8A02-90362B1B0B38', 'xebxs78ls', 'qty>10', 3362, 'Admin測試', 1, '同意。。。。。', '2023-05-13 16:14:44', '同意。。。。。', '2023-05-13 16:14:44');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('C0B40AD7-1C64-4C0A-B9D0-EA7074075583', '581940D5-848F-4493-9C66-42ADD81F301C', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 01:45:41');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('C251C391-3F13-4D05-91C1-591F0CA737D5', 'CC35E127-2740-40F0-AD5A-6007CF92367E', '3E190AFD-64B3-42FA-8C53-DB6670D65A9D', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 12:56:24', NULL, '2023-05-13 12:56:24');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('C4CF806A-7B5C-49A2-B4A9-721CA3BD4868', 'D82F4733-9916-4714-BF35-900CEAA049C1', '8486B561-6403-4D1C-AF33-DD635BF63B8C', 'jkqinw0zc', '用戶審批>=5000', 1, '超級管理員', 1, NULL, '2023-05-13 17:10:51', NULL, '2023-05-13 17:10:51');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('C6AB40F6-7A16-4E69-A7C6-F5AF695AB473', '646D440F-2447-44B7-BD35-3690E7D1E5E8', '0AD966A6-A5AF-4E1B-8764-29A120431351', 'mtisrzm4x', '>=200', 1, '超級管理員', 1, NULL, '2023-05-13 13:49:50', NULL, '2023-05-13 13:49:50');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('D3FBF10D-DB09-4A6B-BE8E-76D1506DDCD9', 'DDD6EA0C-E3DB-49AD-8DFE-BB995C23BCF3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 15:36:45');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('DCF07982-9EDA-4A19-BE7E-8F4C33FB32CF', '2D019AE7-22BB-4D25-8D06-2B4444C22C6F', 'AB5DE430-5007-4027-B58B-C5EB9B0BFEB8', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 13:07:25', NULL, '2023-05-13 13:07:25');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('DF004942-44BD-4BE2-AC42-316E562EEAEB', '38417B03-D70B-436B-8D24-F60ED5373DC6', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 16:48:16');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('E0A80AD6-25BE-49EE-B802-4F517991FC0A', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'A2035FC1-334B-4B54-ABC9-CAAF5C8C7B6D', 'hnoj7gaczc', '超級管理員審批', 1, '超級管理員', 1, '超級管理員同意。。', '2023-05-13 17:12:13', '超級管理員同意。。', '2023-05-13 17:12:13');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('E1C9E5B3-A11E-478C-8169-C39032846C35', '147E53C5-231F-43CC-BBA0-AB906A59B6CA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 01:17:03');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('E2A55CBF-E68E-4F99-9715-D2DD27CCAFE7', '62C8999F-F07E-4D47-827C-B1C4E63AF323', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 17:19:06');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('E4ED2781-4D7C-4E87-81AE-16D86538BDF3', 'F00BF32C-7D32-45B7-AC3E-4E223A6E2DD6', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 13:15:57');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('E68F23C0-FA88-4290-B975-11E044A7B7E8', '7F13EAAB-F51C-4534-B839-2410501C6693', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 16:23:44');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('E8FDD20E-21F5-4EFF-9CBF-CF810ED95692', 'BFF474A1-52E2-498B-8557-F7322BF34834', '7413DE5D-100C-4C83-AD91-8E808E6C41F6', 'mtisrzm4x', '>=200', 1, '超級管理員', 2, NULL, '2023-05-08 16:36:03', NULL, '2023-05-08 16:36:03');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('EF0A21C8-5896-4919-A075-BB3A46D4387C', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 15:58:43');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('EF617F6B-3AF3-4FA3-9C4D-27C7DB775A74', '83005898-C7DC-4C3A-8519-69BE2DEBE83D', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-13 13:52:36');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('F2E57DEA-D98B-45FB-BB88-FA4F187F8C8A', '385F83BD-5518-488D-A335-E9ECFF0318C0', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 01:49:32');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('F4DD3674-9F9F-40D7-BCDB-92D35A89F89B', '75D7FB3F-049E-4103-8F6A-9F3E0D3EBB3A', 'E3EC2568-A952-4AE3-A269-67663E39BDF0', 'mtisrzm4x', '>=200', 1, '超級管理員', 0, NULL, '2023-05-13 13:47:50', NULL, '2023-05-13 13:47:50');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('F744C9ED-132F-4294-BC7B-C762201CB1B1', '9768E54C-D8D0-49EE-B943-2416F990C1DF', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 16:31:33');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('FA4C6EF4-82D8-455C-8166-3D86DA68B09B', 'D5F96FFD-D50B-4581-847C-FEEE264243DA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 16:32:18');
INSERT INTO `Sys_WorkFlowTableAuditLog` VALUES ('FBF482E7-A0FF-4842-9E37-34BF672E64F3', '2CD8CE25-650C-49EA-ABB0-82AA8C6BDF72', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[超級管理員]提交了數據', '2023-05-08 01:37:42');

-- ----------------------------
-- Table structure for Sys_WorkFlowTableStep
-- ----------------------------
DROP TABLE IF EXISTS `Sys_WorkFlowTableStep`;
CREATE TABLE `Sys_WorkFlowTableStep`  (
  `Sys_WorkFlowTableStep_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `WorkFlowTable_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `WorkFlow_Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StepId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StepName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StepType` int NULL DEFAULT NULL,
  `StepValue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `OrderId` int NULL DEFAULT NULL,
  `AuditId` int NULL DEFAULT NULL COMMENT '審核人id',
  `Auditor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '審核人',
  `AuditStatus` int NULL DEFAULT NULL COMMENT '審核狀態',
  `AuditDate` datetime(0) NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  `CreateID` int NULL DEFAULT NULL,
  `Creator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Enable` tinyint NULL DEFAULT NULL,
  `Modifier` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  `ModifyID` int NULL DEFAULT NULL,
  `StepAttrType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ParentId` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `NextStepId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Weight` int NULL DEFAULT NULL,
  PRIMARY KEY (`Sys_WorkFlowTableStep_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Sys_WorkFlowTableStep
-- ----------------------------
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('0284CA27-CD47-48B2-9228-6731D86091CE', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'qq4qwkz9il', '流程結束', NULL, NULL, 3, NULL, NULL, 0, NULL, NULL, '2023-05-13 15:58:43', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'xk0xirr5zf', NULL, NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('032EB689-C842-4EBF-B072-6062864B300D', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xebxs78ls', 'qty>10', 1, '3362', 1, 3362, 'Admin測試', 0, '2023-05-13 15:56:56', '同意。。。。', '2023-05-13 15:49:18', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'yuo5z0v07p', 'xk0xirr5zf', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('03E1881F-6A73-4E4C-A3AE-148A7D47E8D5', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'qq4qwkz9il', '流程結束', NULL, NULL, 3, NULL, NULL, 0, NULL, NULL, '2023-05-13 15:49:18', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'xk0xirr5zf', NULL, NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('2A273253-BC06-4721-91FA-996C72C85858', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '5zfqhzz198', '流程結束', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:17:47', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'hnoj7gaczc', NULL, NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('3E9FF38C-DADC-4AF4-8771-8C30791B0669', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '5zfqhzz198', '流程結束', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:07:37', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'hnoj7gaczc', NULL, NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('4ED73980-2E6E-4052-9722-695375D93303', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xk0xirr5zf', '>=20', 2, '2', 2, 3362, 'Admin測試', 1, '2023-05-13 16:14:57', '通過。。。。。', '2023-05-13 15:58:43', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'xebxs78ls', 'qq4qwkz9il', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('4FC4ACA8-E0F6-4B57-B66A-4A1BF8DC3F85', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'jkqinw0zc', '用戶審批>=5000', 1, '1', 1, 1, '超級管理員', 1, '2023-05-13 17:17:59', '同意。。。', '2023-05-13 17:17:47', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'iyzakw0c8', 'b9cv1h35jg', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('53DD80A6-DD77-4C98-8531-1D648C5773E8', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'iyzakw0c8', '流程開始', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:17:47', 1, '超級管理員', 1, NULL, NULL, NULL, 'start', NULL, 'jkqinw0zc', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('79DC0FAA-4E29-47F4-BF8B-7BE72244D848', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'hnoj7gaczc', '超級管理員審批', 1, '1', 3, 1, NULL, NULL, NULL, NULL, '2023-05-13 17:17:47', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'b9cv1h35jg', '5zfqhzz198', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('8486B561-6403-4D1C-AF33-DD635BF63B8C', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'jkqinw0zc', '用戶審批>=5000', 1, '1', 1, 1, '超級管理員', 1, '2023-05-13 17:11:00', NULL, '2023-05-13 17:07:37', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'iyzakw0c8', 'b9cv1h35jg', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('8676DB90-4A31-4670-B3F8-24D7C752071E', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'b9cv1h35jg', '產品部>=7000審批', 3, 'ec238385-f907-44de-b99b-0eddcffa6750', 2, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:17:47', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'jkqinw0zc', 'hnoj7gaczc', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('A2035FC1-334B-4B54-ABC9-CAAF5C8C7B6D', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'hnoj7gaczc', '超級管理員審批', 1, '1', 3, 1, '超級管理員', 1, '2023-05-13 17:12:13', '超級管理員同意。。', '2023-05-13 17:07:37', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'b9cv1h35jg', '5zfqhzz198', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('AF2EF5D3-A9A3-4403-99AD-77A19AC79262', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'yuo5z0v07p', '流程開始', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, '2023-05-13 15:49:18', 1, '超級管理員', 1, NULL, NULL, NULL, 'start', NULL, 'xebxs78ls', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('BA1A3451-535F-4831-8208-AF87A880C7BF', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xk0xirr5zf', '>=20', 2, '2', 2, 3362, 'Admin測試', 0, '2023-05-13 15:56:56', '同意。。。。', '2023-05-13 15:49:18', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'xebxs78ls', 'qq4qwkz9il', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('BACDBB3C-D50D-4082-83E1-0E932B9F7D0F', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'yuo5z0v07p', '流程開始', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, '2023-05-13 15:58:43', 1, '超級管理員', 1, NULL, NULL, NULL, 'start', NULL, 'xebxs78ls', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('BE1DC0BF-96F0-46DB-8A02-90362B1B0B38', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xebxs78ls', 'qty>10', 1, '3362', 1, 3362, 'Admin測試', 1, '2023-05-13 16:14:44', '同意。。。。。', '2023-05-13 15:58:43', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'yuo5z0v07p', 'xk0xirr5zf', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('C0A682A2-6043-492A-A15D-BECB374353BD', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'iyzakw0c8', '流程開始', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:07:37', 1, '超級管理員', 1, NULL, NULL, NULL, 'start', NULL, 'jkqinw0zc', NULL);
INSERT INTO `Sys_WorkFlowTableStep` VALUES ('DE5133DF-9FF7-494D-BB76-C9E457DFEBAD', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'b9cv1h35jg', '產品部>=7000審批', 3, 'ec238385-f907-44de-b99b-0eddcffa6750', 2, 3362, 'Admin測試', 1, '2023-05-13 17:11:47', 'Admin測試管理員同意。。', '2023-05-13 17:07:37', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'jkqinw0zc', 'hnoj7gaczc', NULL);

SET FOREIGN_KEY_CHECKS = 1;
