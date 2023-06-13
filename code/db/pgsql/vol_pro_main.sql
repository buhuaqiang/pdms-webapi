/*
 Navicat Premium Data Transfer

 Source Server         : 120pgsql
 Source Server Type    : PostgreSQL
 Source Server Version : 110019
 Source Host           : 120.48.115.252:5432
 Source Catalog        : vol_pro_main
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110019
 File Encoding         : 65001

 Date: 07/05/2023 23:24:17
*/


-- ----------------------------
-- Table structure for Sys_City
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_City";
CREATE TABLE "public"."Sys_City" (
  "CityId" int4 NOT NULL,
  "CityCode" varchar(20) COLLATE "pg_catalog"."default",
  "CityName" varchar(30) COLLATE "pg_catalog"."default",
  "ProvinceCode" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_City
-- ----------------------------
INSERT INTO "public"."Sys_City" VALUES (1, '110100', '市轄區', '110000');
INSERT INTO "public"."Sys_City" VALUES (2, '110200', '縣', '110000');
INSERT INTO "public"."Sys_City" VALUES (3, '120100', '市轄區', '120000');
INSERT INTO "public"."Sys_City" VALUES (4, '120200', '縣', '120000');
INSERT INTO "public"."Sys_City" VALUES (5, '130100', '石家莊市', '130000');
INSERT INTO "public"."Sys_City" VALUES (6, '130200', '唐山市', '130000');
INSERT INTO "public"."Sys_City" VALUES (7, '130300', '秦皇島市', '130000');
INSERT INTO "public"."Sys_City" VALUES (8, '130400', '邯鄲市', '130000');
INSERT INTO "public"."Sys_City" VALUES (9, '130500', '邢臺市', '130000');
INSERT INTO "public"."Sys_City" VALUES (10, '130600', '保定市', '130000');
INSERT INTO "public"."Sys_City" VALUES (11, '130700', '張家口市', '130000');
INSERT INTO "public"."Sys_City" VALUES (12, '130800', '承德市', '130000');
INSERT INTO "public"."Sys_City" VALUES (13, '130900', '滄州市', '130000');
INSERT INTO "public"."Sys_City" VALUES (14, '131000', '廊坊市', '130000');
INSERT INTO "public"."Sys_City" VALUES (15, '131100', '衡水市', '130000');
INSERT INTO "public"."Sys_City" VALUES (16, '140100', '太原市', '140000');
INSERT INTO "public"."Sys_City" VALUES (17, '140200', '大同市', '140000');
INSERT INTO "public"."Sys_City" VALUES (18, '140300', '陽泉市', '140000');
INSERT INTO "public"."Sys_City" VALUES (19, '140400', '長治市', '140000');
INSERT INTO "public"."Sys_City" VALUES (20, '140500', '晉城市', '140000');
INSERT INTO "public"."Sys_City" VALUES (21, '140600', '朔州市', '140000');
INSERT INTO "public"."Sys_City" VALUES (22, '140700', '晉中市', '140000');
INSERT INTO "public"."Sys_City" VALUES (23, '140800', '運城市', '140000');
INSERT INTO "public"."Sys_City" VALUES (24, '140900', '忻州市', '140000');
INSERT INTO "public"."Sys_City" VALUES (25, '141000', '臨汾市', '140000');
INSERT INTO "public"."Sys_City" VALUES (26, '141100', '呂梁市', '140000');
INSERT INTO "public"."Sys_City" VALUES (27, '150100', '呼和浩特市', '150000');
INSERT INTO "public"."Sys_City" VALUES (28, '150200', '包頭市', '150000');
INSERT INTO "public"."Sys_City" VALUES (29, '150300', '烏海市', '150000');
INSERT INTO "public"."Sys_City" VALUES (30, '150400', '赤峰市', '150000');
INSERT INTO "public"."Sys_City" VALUES (31, '150500', '通遼市', '150000');
INSERT INTO "public"."Sys_City" VALUES (32, '150600', '鄂爾多斯市', '150000');
INSERT INTO "public"."Sys_City" VALUES (33, '150700', '呼倫貝爾市', '150000');
INSERT INTO "public"."Sys_City" VALUES (34, '150800', '巴彥淖爾市', '150000');
INSERT INTO "public"."Sys_City" VALUES (35, '150900', '烏蘭察布市', '150000');
INSERT INTO "public"."Sys_City" VALUES (36, '152200', '興安盟', '150000');
INSERT INTO "public"."Sys_City" VALUES (37, '152500', '錫林郭勒盟', '150000');
INSERT INTO "public"."Sys_City" VALUES (38, '152900', '阿拉善盟', '150000');
INSERT INTO "public"."Sys_City" VALUES (39, '210100', '沈陽市', '210000');
INSERT INTO "public"."Sys_City" VALUES (40, '210200', '大連市', '210000');
INSERT INTO "public"."Sys_City" VALUES (41, '210300', '鞍山市', '210000');
INSERT INTO "public"."Sys_City" VALUES (42, '210400', '撫順市', '210000');
INSERT INTO "public"."Sys_City" VALUES (43, '210500', '本溪市', '210000');
INSERT INTO "public"."Sys_City" VALUES (44, '210600', '丹東市', '210000');
INSERT INTO "public"."Sys_City" VALUES (45, '210700', '錦州市', '210000');
INSERT INTO "public"."Sys_City" VALUES (46, '210800', '營口市', '210000');
INSERT INTO "public"."Sys_City" VALUES (47, '210900', '阜新市', '210000');
INSERT INTO "public"."Sys_City" VALUES (48, '211000', '遼陽市', '210000');
INSERT INTO "public"."Sys_City" VALUES (49, '211100', '盤錦市', '210000');
INSERT INTO "public"."Sys_City" VALUES (50, '211200', '鐵嶺市', '210000');
INSERT INTO "public"."Sys_City" VALUES (51, '211300', '朝陽市', '210000');
INSERT INTO "public"."Sys_City" VALUES (52, '211400', '葫蘆島市', '210000');
INSERT INTO "public"."Sys_City" VALUES (53, '220100', '長春市', '220000');
INSERT INTO "public"."Sys_City" VALUES (54, '220200', '吉林市', '220000');
INSERT INTO "public"."Sys_City" VALUES (55, '220300', '四平市', '220000');
INSERT INTO "public"."Sys_City" VALUES (56, '220400', '遼源市', '220000');
INSERT INTO "public"."Sys_City" VALUES (57, '220500', '通化市', '220000');
INSERT INTO "public"."Sys_City" VALUES (58, '220600', '白山市', '220000');
INSERT INTO "public"."Sys_City" VALUES (59, '220700', '松原市', '220000');
INSERT INTO "public"."Sys_City" VALUES (60, '220800', '白城市', '220000');
INSERT INTO "public"."Sys_City" VALUES (61, '222400', '延邊朝鮮族自治州', '220000');
INSERT INTO "public"."Sys_City" VALUES (62, '230100', '哈爾濱市', '230000');
INSERT INTO "public"."Sys_City" VALUES (63, '230200', '齊齊哈爾市', '230000');
INSERT INTO "public"."Sys_City" VALUES (64, '230300', '雞西市', '230000');
INSERT INTO "public"."Sys_City" VALUES (65, '230400', '鶴崗市', '230000');
INSERT INTO "public"."Sys_City" VALUES (66, '230500', '雙鴨山市', '230000');
INSERT INTO "public"."Sys_City" VALUES (67, '230600', '大慶市', '230000');
INSERT INTO "public"."Sys_City" VALUES (68, '230700', '伊春市', '230000');
INSERT INTO "public"."Sys_City" VALUES (69, '230800', '佳木斯市', '230000');
INSERT INTO "public"."Sys_City" VALUES (70, '230900', '七臺河市', '230000');
INSERT INTO "public"."Sys_City" VALUES (71, '231000', '牡丹江市', '230000');
INSERT INTO "public"."Sys_City" VALUES (72, '231100', '黑河市', '230000');
INSERT INTO "public"."Sys_City" VALUES (73, '231200', '綏化市', '230000');
INSERT INTO "public"."Sys_City" VALUES (74, '232700', '大興安嶺地區', '230000');
INSERT INTO "public"."Sys_City" VALUES (75, '310100', '市轄區', '310000');
INSERT INTO "public"."Sys_City" VALUES (76, '310200', '縣', '310000');
INSERT INTO "public"."Sys_City" VALUES (77, '320100', '南京市', '320000');
INSERT INTO "public"."Sys_City" VALUES (78, '320200', '無錫市', '320000');
INSERT INTO "public"."Sys_City" VALUES (79, '320300', '徐州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (80, '320400', '常州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (81, '320500', '蘇州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (82, '320600', '南通市', '320000');
INSERT INTO "public"."Sys_City" VALUES (83, '320700', '連云港市', '320000');
INSERT INTO "public"."Sys_City" VALUES (84, '320800', '淮安市', '320000');
INSERT INTO "public"."Sys_City" VALUES (85, '320900', '鹽城市', '320000');
INSERT INTO "public"."Sys_City" VALUES (86, '321000', '揚州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (87, '321100', '鎮江市', '320000');
INSERT INTO "public"."Sys_City" VALUES (88, '321200', '泰州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (89, '321300', '宿遷市', '320000');
INSERT INTO "public"."Sys_City" VALUES (90, '330100', '杭州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (91, '330200', '寧波市', '330000');
INSERT INTO "public"."Sys_City" VALUES (92, '330300', '溫州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (93, '330400', '嘉興市', '330000');
INSERT INTO "public"."Sys_City" VALUES (94, '330500', '湖州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (95, '330600', '紹興市', '330000');
INSERT INTO "public"."Sys_City" VALUES (96, '330700', '金華市', '330000');
INSERT INTO "public"."Sys_City" VALUES (97, '330800', '衢州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (98, '330900', '舟山市', '330000');
INSERT INTO "public"."Sys_City" VALUES (99, '331000', '臺州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (100, '331100', '麗水市', '330000');
INSERT INTO "public"."Sys_City" VALUES (101, '340100', '合肥市', '340000');
INSERT INTO "public"."Sys_City" VALUES (102, '340200', '蕪湖市', '340000');
INSERT INTO "public"."Sys_City" VALUES (103, '340300', '蚌埠市', '340000');
INSERT INTO "public"."Sys_City" VALUES (104, '340400', '淮南市', '340000');
INSERT INTO "public"."Sys_City" VALUES (105, '340500', '馬鞍山市', '340000');
INSERT INTO "public"."Sys_City" VALUES (106, '340600', '淮北市', '340000');
INSERT INTO "public"."Sys_City" VALUES (107, '340700', '銅陵市', '340000');
INSERT INTO "public"."Sys_City" VALUES (108, '340800', '安慶市', '340000');
INSERT INTO "public"."Sys_City" VALUES (109, '341000', '黃山市', '340000');
INSERT INTO "public"."Sys_City" VALUES (110, '341100', '滁州市', '340000');
INSERT INTO "public"."Sys_City" VALUES (111, '341200', '阜陽市', '340000');
INSERT INTO "public"."Sys_City" VALUES (112, '341300', '宿州市', '340000');
INSERT INTO "public"."Sys_City" VALUES (113, '341400', '巢湖市', '340000');
INSERT INTO "public"."Sys_City" VALUES (114, '341500', '六安市', '340000');
INSERT INTO "public"."Sys_City" VALUES (115, '341600', '亳州市', '340000');
INSERT INTO "public"."Sys_City" VALUES (116, '341700', '池州市', '340000');
INSERT INTO "public"."Sys_City" VALUES (117, '341800', '宣城市', '340000');
INSERT INTO "public"."Sys_City" VALUES (118, '350100', '福州市', '350000');
INSERT INTO "public"."Sys_City" VALUES (119, '350200', '廈門市', '350000');
INSERT INTO "public"."Sys_City" VALUES (120, '350300', '莆田市', '350000');
INSERT INTO "public"."Sys_City" VALUES (121, '350400', '三明市', '350000');
INSERT INTO "public"."Sys_City" VALUES (122, '350500', '泉州市', '350000');
INSERT INTO "public"."Sys_City" VALUES (123, '350600', '漳州市', '350000');
INSERT INTO "public"."Sys_City" VALUES (124, '350700', '南平市', '350000');
INSERT INTO "public"."Sys_City" VALUES (125, '350800', '龍巖市', '350000');
INSERT INTO "public"."Sys_City" VALUES (126, '350900', '寧德市', '350000');
INSERT INTO "public"."Sys_City" VALUES (127, '360100', '南昌市', '360000');
INSERT INTO "public"."Sys_City" VALUES (128, '360200', '景德鎮市', '360000');
INSERT INTO "public"."Sys_City" VALUES (129, '360300', '萍鄉市', '360000');
INSERT INTO "public"."Sys_City" VALUES (130, '360400', '九江市', '360000');
INSERT INTO "public"."Sys_City" VALUES (131, '360500', '新余市', '360000');
INSERT INTO "public"."Sys_City" VALUES (132, '360600', '鷹潭市', '360000');
INSERT INTO "public"."Sys_City" VALUES (133, '360700', '贛州市', '360000');
INSERT INTO "public"."Sys_City" VALUES (134, '360800', '吉安市', '360000');
INSERT INTO "public"."Sys_City" VALUES (135, '360900', '宜春市', '360000');
INSERT INTO "public"."Sys_City" VALUES (136, '361000', '撫州市', '360000');
INSERT INTO "public"."Sys_City" VALUES (137, '361100', '上饒市', '360000');
INSERT INTO "public"."Sys_City" VALUES (138, '370100', '濟南市', '370000');
INSERT INTO "public"."Sys_City" VALUES (139, '370200', '青島市', '370000');
INSERT INTO "public"."Sys_City" VALUES (140, '370300', '淄博市', '370000');
INSERT INTO "public"."Sys_City" VALUES (141, '370400', '棗莊市', '370000');
INSERT INTO "public"."Sys_City" VALUES (142, '370500', '東營市', '370000');
INSERT INTO "public"."Sys_City" VALUES (143, '370600', '煙臺市', '370000');
INSERT INTO "public"."Sys_City" VALUES (144, '370700', '濰坊市', '370000');
INSERT INTO "public"."Sys_City" VALUES (145, '370800', '濟寧市', '370000');
INSERT INTO "public"."Sys_City" VALUES (146, '370900', '泰安市', '370000');
INSERT INTO "public"."Sys_City" VALUES (147, '371000', '威海市', '370000');
INSERT INTO "public"."Sys_City" VALUES (148, '371100', '日照市', '370000');
INSERT INTO "public"."Sys_City" VALUES (149, '371200', '萊蕪市', '370000');
INSERT INTO "public"."Sys_City" VALUES (150, '371300', '臨沂市', '370000');
INSERT INTO "public"."Sys_City" VALUES (151, '371400', '德州市', '370000');
INSERT INTO "public"."Sys_City" VALUES (152, '371500', '聊城市', '370000');
INSERT INTO "public"."Sys_City" VALUES (153, '371600', '濱州市', '370000');
INSERT INTO "public"."Sys_City" VALUES (154, '371700', '荷澤市', '370000');
INSERT INTO "public"."Sys_City" VALUES (155, '410100', '鄭州市', '410000');
INSERT INTO "public"."Sys_City" VALUES (156, '410200', '開封市', '410000');
INSERT INTO "public"."Sys_City" VALUES (157, '410300', '洛陽市', '410000');
INSERT INTO "public"."Sys_City" VALUES (158, '410400', '平頂山市', '410000');
INSERT INTO "public"."Sys_City" VALUES (159, '410500', '安陽市', '410000');
INSERT INTO "public"."Sys_City" VALUES (160, '410600', '鶴壁市', '410000');
INSERT INTO "public"."Sys_City" VALUES (161, '410700', '新鄉市', '410000');
INSERT INTO "public"."Sys_City" VALUES (162, '410800', '焦作市', '410000');
INSERT INTO "public"."Sys_City" VALUES (163, '410900', '濮陽市', '410000');
INSERT INTO "public"."Sys_City" VALUES (164, '411000', '許昌市', '410000');
INSERT INTO "public"."Sys_City" VALUES (165, '411100', '漯河市', '410000');
INSERT INTO "public"."Sys_City" VALUES (166, '411200', '三門峽市', '410000');
INSERT INTO "public"."Sys_City" VALUES (167, '411300', '南陽市', '410000');
INSERT INTO "public"."Sys_City" VALUES (168, '411400', '商丘市', '410000');
INSERT INTO "public"."Sys_City" VALUES (169, '411500', '信陽市', '410000');
INSERT INTO "public"."Sys_City" VALUES (170, '411600', '周口市', '410000');
INSERT INTO "public"."Sys_City" VALUES (171, '411700', '駐馬店市', '410000');
INSERT INTO "public"."Sys_City" VALUES (172, '420100', '武漢市', '420000');
INSERT INTO "public"."Sys_City" VALUES (173, '420200', '黃石市', '420000');
INSERT INTO "public"."Sys_City" VALUES (174, '420300', '十堰市', '420000');
INSERT INTO "public"."Sys_City" VALUES (175, '420500', '宜昌市', '420000');
INSERT INTO "public"."Sys_City" VALUES (176, '420600', '襄樊市', '420000');
INSERT INTO "public"."Sys_City" VALUES (177, '420700', '鄂州市', '420000');
INSERT INTO "public"."Sys_City" VALUES (178, '420800', '荊門市', '420000');
INSERT INTO "public"."Sys_City" VALUES (179, '420900', '孝感市', '420000');
INSERT INTO "public"."Sys_City" VALUES (180, '421000', '荊州市', '420000');
INSERT INTO "public"."Sys_City" VALUES (181, '421100', '黃岡市', '420000');
INSERT INTO "public"."Sys_City" VALUES (182, '421200', '咸寧市', '420000');
INSERT INTO "public"."Sys_City" VALUES (183, '421300', '隨州市', '420000');
INSERT INTO "public"."Sys_City" VALUES (184, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO "public"."Sys_City" VALUES (185, '429000', '省直轄行政單位', '420000');
INSERT INTO "public"."Sys_City" VALUES (186, '430100', '長沙市', '430000');
INSERT INTO "public"."Sys_City" VALUES (187, '430200', '株洲市', '430000');
INSERT INTO "public"."Sys_City" VALUES (188, '430300', '湘潭市', '430000');
INSERT INTO "public"."Sys_City" VALUES (189, '430400', '衡陽市', '430000');
INSERT INTO "public"."Sys_City" VALUES (190, '430500', '邵陽市', '430000');
INSERT INTO "public"."Sys_City" VALUES (191, '430600', '岳陽市', '430000');
INSERT INTO "public"."Sys_City" VALUES (192, '430700', '常德市', '430000');
INSERT INTO "public"."Sys_City" VALUES (193, '430800', '張家界市', '430000');
INSERT INTO "public"."Sys_City" VALUES (194, '430900', '益陽市', '430000');
INSERT INTO "public"."Sys_City" VALUES (195, '431000', '郴州市', '430000');
INSERT INTO "public"."Sys_City" VALUES (196, '431100', '永州市', '430000');
INSERT INTO "public"."Sys_City" VALUES (197, '431200', '懷化市', '430000');
INSERT INTO "public"."Sys_City" VALUES (198, '431300', '婁底市', '430000');
INSERT INTO "public"."Sys_City" VALUES (199, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO "public"."Sys_City" VALUES (200, '440100', '廣州市', '440000');
INSERT INTO "public"."Sys_City" VALUES (201, '440200', '韶關市', '440000');
INSERT INTO "public"."Sys_City" VALUES (202, '440300', '深圳市', '440000');
INSERT INTO "public"."Sys_City" VALUES (203, '440400', '珠海市', '440000');
INSERT INTO "public"."Sys_City" VALUES (204, '440500', '汕頭市', '440000');
INSERT INTO "public"."Sys_City" VALUES (205, '440600', '佛山市', '440000');
INSERT INTO "public"."Sys_City" VALUES (206, '440700', '江門市', '440000');
INSERT INTO "public"."Sys_City" VALUES (207, '440800', '湛江市', '440000');
INSERT INTO "public"."Sys_City" VALUES (208, '440900', '茂名市', '440000');
INSERT INTO "public"."Sys_City" VALUES (209, '441200', '肇慶市', '440000');
INSERT INTO "public"."Sys_City" VALUES (210, '441300', '惠州市', '440000');
INSERT INTO "public"."Sys_City" VALUES (211, '441400', '梅州市', '440000');
INSERT INTO "public"."Sys_City" VALUES (212, '441500', '汕尾市', '440000');
INSERT INTO "public"."Sys_City" VALUES (213, '441600', '河源市', '440000');
INSERT INTO "public"."Sys_City" VALUES (214, '441700', '陽江市', '440000');
INSERT INTO "public"."Sys_City" VALUES (215, '441800', '清遠市', '440000');
INSERT INTO "public"."Sys_City" VALUES (216, '441900', '東莞市', '440000');
INSERT INTO "public"."Sys_City" VALUES (217, '442000', '中山市', '440000');
INSERT INTO "public"."Sys_City" VALUES (218, '445100', '潮州市', '440000');
INSERT INTO "public"."Sys_City" VALUES (219, '445200', '揭陽市', '440000');
INSERT INTO "public"."Sys_City" VALUES (220, '445300', '云浮市', '440000');
INSERT INTO "public"."Sys_City" VALUES (221, '450100', '南寧市', '450000');
INSERT INTO "public"."Sys_City" VALUES (222, '450200', '柳州市', '450000');
INSERT INTO "public"."Sys_City" VALUES (223, '450300', '桂林市', '450000');
INSERT INTO "public"."Sys_City" VALUES (224, '450400', '梧州市', '450000');
INSERT INTO "public"."Sys_City" VALUES (225, '450500', '北海市', '450000');
INSERT INTO "public"."Sys_City" VALUES (226, '450600', '防城港市', '450000');
INSERT INTO "public"."Sys_City" VALUES (227, '450700', '欽州市', '450000');
INSERT INTO "public"."Sys_City" VALUES (228, '450800', '貴港市', '450000');
INSERT INTO "public"."Sys_City" VALUES (229, '450900', '玉林市', '450000');
INSERT INTO "public"."Sys_City" VALUES (230, '451000', '百色市', '450000');
INSERT INTO "public"."Sys_City" VALUES (231, '451100', '賀州市', '450000');
INSERT INTO "public"."Sys_City" VALUES (232, '451200', '河池市', '450000');
INSERT INTO "public"."Sys_City" VALUES (233, '451300', '來賓市', '450000');
INSERT INTO "public"."Sys_City" VALUES (234, '451400', '崇左市', '450000');
INSERT INTO "public"."Sys_City" VALUES (235, '460100', '海口市', '460000');
INSERT INTO "public"."Sys_City" VALUES (236, '460200', '三亞市', '460000');
INSERT INTO "public"."Sys_City" VALUES (237, '469000', '省直轄縣級行政單位', '460000');
INSERT INTO "public"."Sys_City" VALUES (238, '500100', '市轄區', '500000');
INSERT INTO "public"."Sys_City" VALUES (239, '500200', '縣', '500000');
INSERT INTO "public"."Sys_City" VALUES (240, '500300', '市', '500000');
INSERT INTO "public"."Sys_City" VALUES (241, '510100', '成都市', '510000');
INSERT INTO "public"."Sys_City" VALUES (242, '510300', '自貢市', '510000');
INSERT INTO "public"."Sys_City" VALUES (243, '510400', '攀枝花市', '510000');
INSERT INTO "public"."Sys_City" VALUES (244, '510500', '瀘州市', '510000');
INSERT INTO "public"."Sys_City" VALUES (245, '510600', '德陽市', '510000');
INSERT INTO "public"."Sys_City" VALUES (246, '510700', '綿陽市', '510000');
INSERT INTO "public"."Sys_City" VALUES (247, '510800', '廣元市', '510000');
INSERT INTO "public"."Sys_City" VALUES (248, '510900', '遂寧市', '510000');
INSERT INTO "public"."Sys_City" VALUES (249, '511000', '內江市', '510000');
INSERT INTO "public"."Sys_City" VALUES (250, '511100', '樂山市', '510000');
INSERT INTO "public"."Sys_City" VALUES (251, '511300', '南充市', '510000');
INSERT INTO "public"."Sys_City" VALUES (252, '511400', '眉山市', '510000');
INSERT INTO "public"."Sys_City" VALUES (253, '511500', '宜賓市', '510000');
INSERT INTO "public"."Sys_City" VALUES (254, '511600', '廣安市', '510000');
INSERT INTO "public"."Sys_City" VALUES (255, '511700', '達州市', '510000');
INSERT INTO "public"."Sys_City" VALUES (256, '511800', '雅安市', '510000');
INSERT INTO "public"."Sys_City" VALUES (257, '511900', '巴中市', '510000');
INSERT INTO "public"."Sys_City" VALUES (258, '512000', '資陽市', '510000');
INSERT INTO "public"."Sys_City" VALUES (259, '513200', '阿壩藏族羌族自治州', '510000');
INSERT INTO "public"."Sys_City" VALUES (260, '513300', '甘孜藏族自治州', '510000');
INSERT INTO "public"."Sys_City" VALUES (261, '513400', '涼山彝族自治州', '510000');
INSERT INTO "public"."Sys_City" VALUES (262, '520100', '貴陽市', '520000');
INSERT INTO "public"."Sys_City" VALUES (263, '520200', '六盤水市', '520000');
INSERT INTO "public"."Sys_City" VALUES (264, '520300', '遵義市', '520000');
INSERT INTO "public"."Sys_City" VALUES (265, '520400', '安順市', '520000');
INSERT INTO "public"."Sys_City" VALUES (266, '522200', '銅仁地區', '520000');
INSERT INTO "public"."Sys_City" VALUES (267, '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO "public"."Sys_City" VALUES (268, '522400', '畢節地區', '520000');
INSERT INTO "public"."Sys_City" VALUES (269, '522600', '黔東南苗族侗族自治州', '520000');
INSERT INTO "public"."Sys_City" VALUES (270, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO "public"."Sys_City" VALUES (271, '530100', '昆明市', '530000');
INSERT INTO "public"."Sys_City" VALUES (272, '530300', '曲靖市', '530000');
INSERT INTO "public"."Sys_City" VALUES (273, '530400', '玉溪市', '530000');
INSERT INTO "public"."Sys_City" VALUES (274, '530500', '保山市', '530000');
INSERT INTO "public"."Sys_City" VALUES (275, '530600', '昭通市', '530000');
INSERT INTO "public"."Sys_City" VALUES (276, '530700', '麗江市', '530000');
INSERT INTO "public"."Sys_City" VALUES (277, '530800', '思茅市', '530000');
INSERT INTO "public"."Sys_City" VALUES (278, '530900', '臨滄市', '530000');
INSERT INTO "public"."Sys_City" VALUES (279, '532300', '楚雄彝族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (280, '532500', '紅河哈尼族彝族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (281, '532600', '文山壯族苗族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (282, '532800', '西雙版納傣族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (283, '532900', '大理白族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (284, '533100', '德宏傣族景頗族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (285, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (286, '533400', '迪慶藏族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (287, '540100', '拉薩市', '540000');
INSERT INTO "public"."Sys_City" VALUES (288, '542100', '昌都地區', '540000');
INSERT INTO "public"."Sys_City" VALUES (289, '542200', '山南地區', '540000');
INSERT INTO "public"."Sys_City" VALUES (290, '542300', '日喀則地區', '540000');
INSERT INTO "public"."Sys_City" VALUES (291, '542400', '那曲地區', '540000');
INSERT INTO "public"."Sys_City" VALUES (292, '542500', '阿里地區', '540000');
INSERT INTO "public"."Sys_City" VALUES (293, '542600', '林芝地區', '540000');
INSERT INTO "public"."Sys_City" VALUES (294, '610100', '西安市', '610000');
INSERT INTO "public"."Sys_City" VALUES (295, '610200', '銅川市', '610000');
INSERT INTO "public"."Sys_City" VALUES (296, '610300', '寶雞市', '610000');
INSERT INTO "public"."Sys_City" VALUES (297, '610400', '咸陽市', '610000');
INSERT INTO "public"."Sys_City" VALUES (298, '610500', '渭南市', '610000');
INSERT INTO "public"."Sys_City" VALUES (299, '610600', '延安市', '610000');
INSERT INTO "public"."Sys_City" VALUES (300, '610700', '漢中市', '610000');
INSERT INTO "public"."Sys_City" VALUES (301, '610800', '榆林市', '610000');
INSERT INTO "public"."Sys_City" VALUES (302, '610900', '安康市', '610000');
INSERT INTO "public"."Sys_City" VALUES (303, '611000', '商洛市', '610000');
INSERT INTO "public"."Sys_City" VALUES (304, '620100', '蘭州市', '620000');
INSERT INTO "public"."Sys_City" VALUES (305, '620200', '嘉峪關市', '620000');
INSERT INTO "public"."Sys_City" VALUES (306, '620300', '金昌市', '620000');
INSERT INTO "public"."Sys_City" VALUES (307, '620400', '白銀市', '620000');
INSERT INTO "public"."Sys_City" VALUES (308, '620500', '天水市', '620000');
INSERT INTO "public"."Sys_City" VALUES (309, '620600', '武威市', '620000');
INSERT INTO "public"."Sys_City" VALUES (310, '620700', '張掖市', '620000');
INSERT INTO "public"."Sys_City" VALUES (311, '620800', '平涼市', '620000');
INSERT INTO "public"."Sys_City" VALUES (312, '620900', '酒泉市', '620000');
INSERT INTO "public"."Sys_City" VALUES (313, '621000', '慶陽市', '620000');
INSERT INTO "public"."Sys_City" VALUES (314, '621100', '定西市', '620000');
INSERT INTO "public"."Sys_City" VALUES (315, '621200', '隴南市', '620000');
INSERT INTO "public"."Sys_City" VALUES (316, '622900', '臨夏回族自治州', '620000');
INSERT INTO "public"."Sys_City" VALUES (317, '623000', '甘南藏族自治州', '620000');
INSERT INTO "public"."Sys_City" VALUES (318, '630100', '西寧市', '630000');
INSERT INTO "public"."Sys_City" VALUES (319, '632100', '海東地區', '630000');
INSERT INTO "public"."Sys_City" VALUES (320, '632200', '海北藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (321, '632300', '黃南藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (322, '632500', '海南藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (323, '632600', '果洛藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (324, '632700', '玉樹藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (325, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (326, '640100', '銀川市', '640000');
INSERT INTO "public"."Sys_City" VALUES (327, '640200', '石嘴山市', '640000');
INSERT INTO "public"."Sys_City" VALUES (328, '640300', '吳忠市', '640000');
INSERT INTO "public"."Sys_City" VALUES (329, '640400', '固原市', '640000');
INSERT INTO "public"."Sys_City" VALUES (330, '640500', '中衛市', '640000');
INSERT INTO "public"."Sys_City" VALUES (331, '650100', '烏魯木齊市', '650000');
INSERT INTO "public"."Sys_City" VALUES (332, '650200', '克拉瑪依市', '650000');
INSERT INTO "public"."Sys_City" VALUES (333, '652100', '吐魯番地區', '650000');
INSERT INTO "public"."Sys_City" VALUES (334, '652200', '哈密地區', '650000');
INSERT INTO "public"."Sys_City" VALUES (335, '652300', '昌吉回族自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (336, '652700', '博爾塔拉蒙古自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (337, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (338, '652900', '阿克蘇地區', '650000');
INSERT INTO "public"."Sys_City" VALUES (339, '653000', '克孜勒蘇柯爾克孜自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (340, '653100', '喀什地區', '650000');
INSERT INTO "public"."Sys_City" VALUES (341, '653200', '和田地區', '650000');
INSERT INTO "public"."Sys_City" VALUES (342, '654000', '伊犁哈薩克自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (343, '654200', '塔城地區', '650000');
INSERT INTO "public"."Sys_City" VALUES (344, '654300', '阿勒泰地區', '650000');
INSERT INTO "public"."Sys_City" VALUES (345, '659000', '省直轄行政單位', '650000');

-- ----------------------------
-- Table structure for Sys_DbService
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_DbService";
CREATE TABLE "public"."Sys_DbService" (
  "DbServiceId" uuid NOT NULL,
  "DbServiceName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "GroupId" uuid,
  "DbIpAddress" varchar(400) COLLATE "pg_catalog"."default",
  "DatabaseName" varchar(100) COLLATE "pg_catalog"."default",
  "UserId" varchar(100) COLLATE "pg_catalog"."default",
  "Pwd" varchar(500) COLLATE "pg_catalog"."default",
  "PhoneNo" varchar(50) COLLATE "pg_catalog"."default",
  "Address" text COLLATE "pg_catalog"."default",
  "Enable" int4,
  "Remark" text COLLATE "pg_catalog"."default",
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of Sys_DbService
-- ----------------------------
INSERT INTO "public"."Sys_DbService" VALUES ('5c162ae0-6df8-494a-9d00-0db468a706af', '北京市西城區分部', '3e1526b1-a3fd-4e89-a7f6-ad6674b1d0ef', 'JXX2835\SQLEXPRESS', 'ddd', 'sa', NULL, '18613119040', '北京市', NULL, NULL, 1, '超級管理員', '2023-05-04 02:56:00', 1, '超級管理員', '2023-05-07 20:45:30');
INSERT INTO "public"."Sys_DbService" VALUES ('a88e77a2-37b7-44ac-8725-e53a5cd70491', '新雅藍朝陽路分部', '7a0f2d9f-e9b4-49f7-801e-a39e4936b03f', 'JXX2835\SQLEXPRESS	', 'xyl', 'sa', NULL, '18613119040', '北京市	', NULL, NULL, 1, '超級管理員', '2023-05-04 21:03:22', 1, '超級管理員', '2023-05-07 20:44:35');

-- ----------------------------
-- Table structure for Sys_Department
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Department";
CREATE TABLE "public"."Sys_Department" (
  "DepartmentId" uuid NOT NULL,
  "DepartmentName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "DepartmentCode" varchar(50) COLLATE "pg_catalog"."default",
  "ParentId" uuid,
  "DepartmentType" varchar(50) COLLATE "pg_catalog"."default",
  "Enable" int4,
  "Remark" varchar(500) COLLATE "pg_catalog"."default",
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "DbServiceId" uuid
)
;

-- ----------------------------
-- Records of Sys_Department
-- ----------------------------
INSERT INTO "public"."Sys_Department" VALUES ('5852bcbe-97fb-4492-a918-b65ac87b64f1', '人事部', '002', 'dce91cee-4a39-4a0f-b50c-339b92a6aada', NULL, 1, '人事部人事部', 1, '超級管理員', '2023-05-04 02:08:26', 1, '超級管理員', '2023-05-04 02:39:04', NULL);
INSERT INTO "public"."Sys_Department" VALUES ('dce91cee-4a39-4a0f-b50c-339b92a6aada', '行政部', '001', NULL, NULL, 1, '行政部行政部', 1, '超級管理員', '2023-05-04 02:07:44', 1, '超級管理員', '2023-05-04 02:26:31', NULL);

-- ----------------------------
-- Table structure for Sys_Dictionary
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Dictionary";
CREATE TABLE "public"."Sys_Dictionary" (
  "Dic_ID" int4 NOT NULL,
  "Config" text COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "DBServer" text COLLATE "pg_catalog"."default",
  "DbSql" text COLLATE "pg_catalog"."default",
  "DicName" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "DicNo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "Enable" int2 NOT NULL,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "OrderNo" int4,
  "ParentId" int4 NOT NULL,
  "Remark" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_Dictionary
-- ----------------------------
INSERT INTO "public"."Sys_Dictionary" VALUES (3, '{valueField: ''Enable'',
textField: ''Enable'',
 containField: null,
  handler: null }', '2019-07-05 17:36:23', NULL, 'admin', '1', NULL, '是否值', 'enable', 1, '超級管理員', '2023-05-04 02:07:57', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (30, '{valueField: ''Success'',
 textField: ''Success'', 
 containField: null,
 handler: null }
', '2018-06-11 18:26:05', 0, '測試超級管理員', NULL, NULL, '響應狀態', 'restatus', 1, '測試超級管理員', '2018-06-12 10:21:48', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (31, '{valueField: ''LogType'',
 textField: ''LogType'', 
 containField: null,
 handler: null }
', '2018-06-12 14:46:07', NULL, '測試超級管理員', NULL, NULL, '日志類型', 'log', 1, '超級管理員', '2023-05-07 17:42:57', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (32, '{valueField: ''Role_Id'',
 textField: ''RoleName'', 
 containField: [''Role_Id'',''RoleName''],
 handler: null }
', '2018-06-14 16:48:35', NULL, '測試超級管理員', NULL, 'SELECT Role_Id as ''key'',RoleName as ''value'' FROM Sys_Role WHERE Enable=1
', '角色列表', 'roles', 1, '測試超級管理員', '2018-07-13 15:03:53', 1, 123, 0, 'sql語句需要key,value列，界面才能綁定數據源');
INSERT INTO "public"."Sys_Dictionary" VALUES (35, '{
 valueField: ''AuditStatus'',
 textField: ''AuditStatus'',
  containField:null 
}', '2018-07-10 10:51:37', NULL, '測試超級管理員', NULL, NULL, '審核狀態', 'audit', 1, '測試超級管理員', '2018-07-10 11:02:59', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (38, '{
 valueField: ''City'',
 textField: ''City'',
  containField:null 
}', '2018-07-10 14:18:25', NULL, '測試超級管理員', NULL, '
SELECT  CASE WHEN  CityName=''市轄區'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''市轄區'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''縣''', '城市', 'city', 1, '超級管理員', '2020-02-01 22:27:08', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (46, '{
 valueField: ''ProvinceName'',
 textField: ''ProvinceName'',
  containField:null 
}', '2018-07-16 13:27:34', NULL, '測試超級管理員', NULL, '
SELECT  CASE WHEN  CityName=''市轄區'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''市轄區'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''縣''', '省列表', 'pro', 1, '超級管理員', '2020-02-01 22:26:59', 1, NULL, 0, 'sql語句需要key,value列，界面才能綁定數據源');
INSERT INTO "public"."Sys_Dictionary" VALUES (49, '{
 valueField: ''Gender'',
 textField: ''Gender'',
  containField:null 
}', '2018-07-23 10:04:45', NULL, '測試超級管理員', NULL, NULL, '性別', 'gender', 1, '測試超級管理員', '2018-07-23 11:10:28', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (50, '{
 valueField: ''Enable'',
 textField: ''Enable'',
  containField:null 
}', '2018-07-23 15:36:43', 1, '測試超級管理員', NULL, NULL, '啟用狀態', 'status', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (66, NULL, '2020-12-29 21:50:16', 1, '超級管理員', NULL, 'SELECT Role_Id AS id,parentId,Role_Id AS [key],RoleName AS value FROM Sys_Role
', '級聯角色', 'tree_roles', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (67, NULL, '2023-05-04 02:13:14', 1, '超級管理員', NULL, 'SELECT DepartmentId AS id,DepartmentId AS [key],ParentId AS parentId,DepartmentName AS value FROM Sys_Department', '部門級聯', '部門級聯', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (68, NULL, '2023-05-04 02:54:50', 1, '超級管理員', 'SysDbContext', 'SELECT [GroupId] AS [key],GroupName AS value FROM Sys_Group', '集團', '集團', 1, '超級管理員', '2023-05-07 18:09:09', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (69, NULL, '2023-05-07 18:05:48', 1, '超級管理員', NULL, NULL, '所在數據庫', 'dbServer', 1, '超級管理員', '2023-05-07 18:06:56', 1, NULL, 0, NULL);

-- ----------------------------
-- Table structure for Sys_DictionaryList
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_DictionaryList";
CREATE TABLE "public"."Sys_DictionaryList" (
  "DicList_ID" int4 NOT NULL,
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "DicName" varchar(100) COLLATE "pg_catalog"."default",
  "DicValue" varchar(100) COLLATE "pg_catalog"."default",
  "Dic_ID" int4,
  "Enable" int2,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "OrderNo" int4,
  "Remark" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_DictionaryList
-- ----------------------------
INSERT INTO "public"."Sys_DictionaryList" VALUES (3, NULL, 1, 'admin', '否', '0', 3, NULL, '超級管理員', '2023-05-04 02:07:57', 1, 2, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (4, NULL, 1, 'xxx', '是', '1', 3, NULL, '超級管理員', '2023-05-04 02:07:57', 1, 1, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (22, '2018-06-11 18:26:05', 1, '測試超級管理員', '其他', '0', 30, NULL, '超級管理員', '2019-08-21 16:49:43', 1, 10, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (23, '2018-06-11 18:26:05', 1, '測試超級管理員', '成功', '1', 30, NULL, '超級管理員', '2019-08-21 16:49:43', 1, 100, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (24, '2018-06-12 09:41:58', 1, '測試超級管理員', '異常', '2', 30, NULL, '超級管理員', '2019-08-21 16:49:43', 1, 50, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (25, '2018-06-12 14:46:08', 1, '測試超級管理員', '系統', 'System', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, 100, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (26, '2018-06-12 14:47:32', 1, '測試超級管理員', '登陸', 'Login', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, 90, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (27, '2018-06-15 15:29:58', 1, '測試超級管理員', '新建', 'Add', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (28, '2018-06-15 15:29:58', 1, '測試超級管理員', '刪除', 'Del', 31, 1, '超級管理員', '2023-05-07 17:42:58', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (29, '2018-06-15 15:30:34', 1, '測試超級管理員', '編輯', 'Edit', 31, 1, '超級管理員', '2023-05-07 17:42:58', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (37, '2018-07-10 10:51:38', 1, '測試超級管理員', '審核中', '0', 35, NULL, '測試超級管理員', '2018-07-10 11:02:59', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (38, '2018-07-10 10:51:38', 1, '測試超級管理員', '審核通過', '1', 35, NULL, '測試超級管理員', '2018-07-10 11:02:59', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (39, '2018-07-10 10:51:38', 1, '測試超級管理員', '審核未通過', '2', 35, NULL, '測試超級管理員', '2018-07-10 11:02:59', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (71, '2018-07-11 17:11:19', 1, '測試超級管理員', 'PC請求異常', 'Exception', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (90, '2018-07-23 10:04:45', 1, '測試超級管理員', '男', '0', 49, NULL, '測試超級管理員', '2018-07-23 11:10:28', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (91, '2018-07-23 10:04:45', 1, '測試超級管理員', '女', '1', 49, NULL, '測試超級管理員', '2018-07-23 11:10:28', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (96, '2018-07-23 15:36:43', 1, '測試超級管理員', '未啟用', '0', 50, 1, '超級管理員', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (97, '2018-07-23 15:36:43', 1, '測試超級管理員', '已啟用', '1', 50, 1, '超級管理員', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (98, '2018-07-23 15:36:43', 1, '測試超級管理員', '已刪除', '2', 50, 1, '超級管理員', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (144, '2019-08-21 16:40:50', 1, '超級管理員', '刷新Token', 'ReplaceToeken', 31, NULL, '超級管理員', '2023-05-07 17:42:58', 1, 110, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (145, '2019-08-21 16:49:43', 1, '超級管理員', 'Info', '3', 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (423, '2023-05-07 18:05:48', 1, '超級管理員', '系統庫SysDbContext', 'SysDbContext', 69, 0, '超級管理員', '2023-05-07 18:06:56', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (424, '2023-05-07 18:05:48', 1, '超級管理員', '業務庫ServiceDbContext', 'ServiceDbContext', 69, 0, '超級管理員', '2023-05-07 18:06:56', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (425, '2023-05-07 18:05:48', 1, '超級管理員', '測試庫TestDbContext', 'TestDbContext', 69, 0, '超級管理員', '2023-05-07 18:06:56', 1, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_Group
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Group";
CREATE TABLE "public"."Sys_Group" (
  "GroupId" uuid NOT NULL,
  "GroupName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "PhoneNo" varchar(50) COLLATE "pg_catalog"."default",
  "Address" text COLLATE "pg_catalog"."default",
  "Enable" int4,
  "Remark" text COLLATE "pg_catalog"."default",
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of Sys_Group
-- ----------------------------
INSERT INTO "public"."Sys_Group" VALUES ('3e1526b1-a3fd-4e89-a7f6-ad6674b1d0ef', '北京大大大實業集團', '18612009055', '北京市', NULL, '北京市', 1, '超級管理員', '2023-05-04 21:06:14', 1, '超級管理員', '2023-05-07 20:42:57');
INSERT INTO "public"."Sys_Group" VALUES ('7a0f2d9f-e9b4-49f7-801e-a39e4936b03f', '北京新雅藍實業集團', '18612009022', '北京市', NULL, '北京市', 1, '超級管理員', '2023-05-04 02:53:48', 1, '超級管理員', '2023-05-07 20:43:02');

-- ----------------------------
-- Table structure for Sys_Language
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Language";
CREATE TABLE "public"."Sys_Language" (
  "Id" int4 NOT NULL,
  "ZHCN" text COLLATE "pg_catalog"."default" NOT NULL,
  "ZHTW" text COLLATE "pg_catalog"."default",
  "English" text COLLATE "pg_catalog"."default",
  "French" text COLLATE "pg_catalog"."default",
  "Spanish" text COLLATE "pg_catalog"."default",
  "Russian" text COLLATE "pg_catalog"."default",
  "Arabic" text COLLATE "pg_catalog"."default",
  "Module" varchar(50) COLLATE "pg_catalog"."default",
  "IsPackageContent" int4,
  "CreateId" int4,
  "Creator" varchar(200) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyId" int4,
  "ModifyDate" timestamp(6),
  "Modifier" varchar(50) COLLATE "pg_catalog"."default",
  "Thai" text COLLATE "pg_catalog"."default",
  "Vietnamese" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_Language
-- ----------------------------
INSERT INTO "public"."Sys_Language" VALUES (1, '驗證碼已失效', '驗證碼已失效', 'The code has expired', NULL, 'incorrect code', NULL, NULL, NULL, 0, 1, 'admi', '2020-06-17 18:48:02', NULL, '2021-04-15 10:32:42', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (2, '數據驗證未通過', NULL, 'Data validation failed', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-13 05:08:51', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (3, '上傳中...', NULL, 'Uploading...', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:08:33', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (4, '最多只能選[5]張圖片', NULL, 'You can only select [5] pictures at most', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:13:31', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (5, '最多只能選[5]個文件', NULL, 'Only [5] files can be selected at most', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:13:45', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (6, '只能選擇excel文件', NULL, 'Only Excel files can be selected', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:15:30', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (7, '文件大小不能超過', NULL, 'The file size cannot exceed ', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:17:40', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (8, '最多可輸入[{$ts}]個字符', NULL, 'a maximum of [{$ts}] characters can be entered', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 06:44:24', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (9, '第[{$ts}]行,[{$ts}]驗證未通過', NULL, 'Line [{$ts},{$ts}] failed verificatio', NULL, NULL, NULL, NULL, '存儲過程返回', 0, NULL, 'admi', '2021-04-15 06:47:55', NULL, '2021-04-16 06:44:22', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (10, '刪除成功,共[{$ts}]條數據', NULL, 'Deletion succeeded, with a total of [{$ts}] data', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-15 11:36:44', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (11, '[{$ts}]不能為空', NULL, '[{$ts}] is required', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-16 05:34:04', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (12, '[{$ts},{$ts}]不能為空', NULL, '[{$ts},{$ts}] is required', NULL, NULL, NULL, NULL, '存儲過程返回', 0, NULL, 'admi', '2021-04-16 05:34:31', NULL, '2021-04-19 02:13:17', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (13, '無數據', NULL, 'No data', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-19 05:26:52', NULL, '2021-04-19 05:27:13', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (14, '[{$ts}]重復', NULL, '[{$ts}] repeated', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-19 06:31:30', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (15, '搜索', NULL, 'Search', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-22 05:12:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (16, '詳情', NULL, 'Details', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-22 08:51:11', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (17, '重復', NULL, 'repeated', NULL, NULL, NULL, NULL, '存儲過程返回', 0, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (18, '重復記錄', NULL, 'Repeated recording', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (19, '重置', NULL, 'Reset', NULL, 'Reset', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (20, '重置篩選條件', NULL, 'Reset filter', NULL, 'Reset filter', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (21, '角色管理', NULL, 'Role info', NULL, 'Role info', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:42:30', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (22, '角色名稱', NULL, 'Role', NULL, 'Role', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:42:15', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (23, '角色', NULL, 'Role', NULL, 'Role', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:42:41', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (24, '設置', NULL, 'Setting', NULL, 'Einstellung', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (25, '保存篩選條件', NULL, 'Save filter', NULL, 'Save filter', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (26, '保存成功,共{$ts}條數據', NULL, 'Saved successfully, {$ts} item in total', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (27, '選擇', NULL, 'Select', NULL, 'Select', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (28, '選擇文件', NULL, 'Select file', NULL, 'Select file', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (29, '請選擇行', NULL, 'Please select rows', NULL, 'Please select rows', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (30, '修改人', NULL, 'Modifier', NULL, 'Modifier', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (31, '修改密碼', NULL, 'Password', NULL, 'Modify Password', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-12 02:36:34', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (32, '修改時間', NULL, 'Modify time', NULL, 'Modify time', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-12 02:36:45', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (33, '模塊', NULL, 'Module', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (34, '月', NULL, 'Months', NULL, NULL, NULL, NULL, '繁殖參數', 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (35, '更多', NULL, 'More', NULL, 'More', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (36, '名字', NULL, 'Name', NULL, 'Name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (37, '郵箱', NULL, 'Mail', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (38, '女', NULL, 'Male', NULL, 'Male', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (39, '男', NULL, 'Ma', NULL, 'Ma', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (40, '菜單', NULL, 'Menu', NULL, 'Menu', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (41, '菜單名稱', NULL, 'Menu name', NULL, 'Menu name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-13 06:27:00', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (42, '菜單設置', NULL, 'Menu', NULL, 'Menu', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-13 06:27:05', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (43, '提示', NULL, 'Message', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (44, '否', NULL, 'No', NULL, 'Nei', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (45, '父級ID', NULL, 'Parent ID', NULL, 'Parent ID', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (46, '上級角色', NULL, 'Parent role', NULL, 'Parent role', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-12 01:41:59', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (47, '密碼', NULL, 'Password', NULL, 'Password', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (48, '權限', NULL, 'Permissio', NULL, 'Permissio', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (49, '個人中心', NULL, 'Personal Center', NULL, 'Pers?nliches Zentrum', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (50, '請輸入', NULL, 'Please input', NULL, 'Please input', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (51, '請選擇', NULL, 'Please select', NULL, 'Please select', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (52, '請選擇文件', NULL, 'Please select file', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (53, '其他', NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (54, '必須是數字', NULL, 'not a number', NULL, 'not a number', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (55, '備注', NULL, 'Notes', NULL, 'Notize', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (56, '確認', NULL, 'OK', NULL, 'OK', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (57, '是', NULL, 'Yes', NULL, 'Ja', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (58, '不存在', NULL, 'does not exist', NULL, NULL, NULL, NULL, '存儲過程返回', 0, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (59, '系統', NULL, 'System', NULL, 'System', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (60, '表名', NULL, 'Table Name', NULL, 'Table Name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (61, '電話', NULL, 'Tel', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (62, '時間', NULL, 'Time', NULL, 'Zeit', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (63, '排序號', NULL, 'Sort NO', NULL, 'Sort NO', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (64, '狀態', NULL, 'Status', NULL, 'Status', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (65, '操作成功', NULL, 'Success', NULL, 'Success', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (66, '刪除成功', NULL, 'Successfully Delete', NULL, 'Successfully Delete', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-08 06:24:50', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (67, '保存成功', NULL, 'Successfully save', NULL, 'Successfully save', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-08 06:28:19', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (68, '摘要', NULL, 'Summary', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (69, '超級管理員', NULL, 'Super Admi', NULL, 'Super Admi', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (70, '確定', NULL, 'Confirm', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-15 01:44:59', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (71, '用戶管理', NULL, 'User info', NULL, 'User info', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:40:25', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (72, '用戶名', NULL, 'Account', NULL, 'Account', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:40:17', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (73, '用戶權限', NULL, 'User permission', NULL, 'User permissio', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-19 01:38:28', 'Admin', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (74, '用戶基礎信息', NULL, 'User info', NULL, 'User info', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:40:47', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (75, '用戶名或密碼錯誤', NULL, 'Account or password incorrect', NULL, 'Account or password incorrect', NULL, NULL, NULL, 0, NULL, 'admi', '2021-04-28 15:10:54', NULL, '2021-05-12 01:39:57', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (76, '值', NULL, 'Value', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (77, '查看', NULL, 'View', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (78, '警告', NULL, 'Warning', NULL, 'Warning', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (79, '最多{$ts}個字符', NULL, 'Up to {$ts} characters', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (80, '上傳文件', NULL, 'Upload', NULL, 'Upload', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (81, '上傳', NULL, 'Upload', NULL, 'Upload', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (82, '文件上傳成功', NULL, 'Upload succeeded', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (83, '登陸成功', NULL, 'Login Succeeded', NULL, 'Login Succeeded', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (84, '代碼生成', NULL, 'Coder', NULL, 'Coder', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (85, '公司名稱', NULL, 'Company', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (86, '公司地址', NULL, 'Company address', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (87, '公司管理', NULL, 'Company info', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (88, '所屬公司', NULL, 'Company name', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (89, '公司類別', NULL, 'Company type', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (90, '保存后繼續添加', NULL, 'Continue adding after saving', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (91, '成本', NULL, 'Cost', NULL, 'Koste', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (92, '國家', NULL, 'Country', NULL, 'Country', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (93, '國家代碼', NULL, 'CountryCode', NULL, 'CountryCode', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (94, '創建時間', NULL, 'Create time', NULL, 'Create Time', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-15 14:25:18', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (95, '創建人', NULL, 'Creator', NULL, 'Creator', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (96, '驗證碼', NULL, 'code', NULL, 'Code', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (97, '關閉', NULL, 'Close', NULL, 'Close', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (98, '只能是日期格式', NULL, 'Can only be in date format', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (99, '取消', NULL, 'Cancel', NULL, 'Abbreche', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (100, '不能大于', NULL, 'cannot be greater tha', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (101, '不能小于', NULL, 'cannot be less tha', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (102, '選中checkbox隱藏/顯示列數據', NULL, 'Check box to hide / show column data', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (103, '中國', NULL, 'China', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (104, '中文', NULL, 'Chinese', NULL, 'Chinese', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (105, '描述', NULL, 'Descriptio', NULL, 'Descriptio', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (106, '數據字典', NULL, 'Dictionary', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (107, '字典名稱', NULL, 'Dictionary Name', NULL, 'Dictionary Name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (108, '字典編號', NULL, 'Dictionary Number', NULL, 'Dictionary Number', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (109, '完成', NULL, 'Done', NULL, 'Erledigt', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (110, '字典數據', NULL, 'Data Source', NULL, 'Data Source', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (111, '數據源', NULL, 'Data Source', NULL, 'Data Source', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (112, '下拉框綁定設置', NULL, 'Data source', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, '2021-05-19 01:14:38', '超級管理員', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (113, '日期', NULL, 'Date', NULL, 'Datum', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (114, '刪除', NULL, 'Delete', NULL, 'L?sche', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (115, '天', NULL, 'Days', NULL, NULL, NULL, NULL, '繁殖參數', 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (116, '帳號', NULL, 'Account', NULL, 'Account', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (117, '操作類型', NULL, 'Action type', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (118, '新建', NULL, 'Add', NULL, 'Add', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (119, '添加子級', NULL, 'Add a subset', NULL, 'Add a subset', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (120, '添加備注', NULL, 'Add note', NULL, 'Notiz anlege', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (121, '添加行', NULL, 'Add Row', NULL, 'Add Row', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (122, '添加同級', NULL, 'Add Siblings', NULL, 'Add Siblings', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (123, '地址', NULL, 'Address', NULL, 'Address', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (124, '全選', NULL, 'All', NULL, 'All', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (125, '不能為空', NULL, ' is required', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (126, '參數設置', NULL, ' Parameters', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (127, '真實姓名', NULL, ' Real Name', NULL, ' Real Name', NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (128, '【{$ts}】不是模板中的列', NULL, '【{$ts}】 is not a column in the template', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-04-28 15:10:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (129, '第[{$ts}]行,[{$ts}]驗證未通過,必須是日期格式', NULL, 'Line [{$ts},{$ts}] validation failed, must be in date format	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:09:42', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (130, '第[{$ts}]行,[{$ts}]驗證未通過,不能為空', NULL, 'Line [{$ts},{$ts}] failed verification, cannot be empty	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:12:38', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (131, '[{$ts}]數據字典缺失', NULL, '[{$ts}] no data source is configured	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:14:11', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (132, '第[{$ts}]行,[{$ts}]驗證未通過,只能輸入', NULL, 'Line [{$ts},{$ts}] failed verification, only input	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:15:18', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (133, '賬號登錄', NULL, 'Login account', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 02:19:01', NULL, '2022-05-16 15:29:13', '超級管理員', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (134, '正在登陸', NULL, 'Logging', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 11:21:12', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (135, '登錄', NULL, 'Login', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 11:21:21', NULL, '2023-01-18 14:16:52', '超級管理員', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (136, '登陸成功', NULL, 'Login succeeded', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 11:22:42', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (137, '保存后繼續添加', NULL, 'Continue adding after saving', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 11:34:35', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (138, '語言設置', NULL, 'Language', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:21:48', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (139, '系統設置', NULL, 'System', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:22:17', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (140, '日志管理', NULL, 'Logger', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:22:41', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (141, '英文', NULL, 'English', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:23:42', NULL, '2021-05-15 14:24:18', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (142, '德語', NULL, 'Deutsch', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:24:09', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (143, '印尼語', NULL, 'Indonesia', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:24:52', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (144, '語言包', NULL, 'Package', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:25:02', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (145, '權限管理', NULL, 'Permission', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:29:10', NULL, '2021-05-19 01:38:32', 'Admin', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (146, '保存后繼續添加', NULL, 'Continue adding after saving', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:29:35', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (147, '其他權限', NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:32:37', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (148, '菜單列表', NULL, 'Menu list', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:34:23', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (149, '確認要刪除選擇的數據嗎?', NULL, 'Are you sure you want to delete the selected data?	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:45:22', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (150, '正在處理', NULL, 'Processing', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:47:05', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (151, '查詢', NULL, 'Search', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:47:31', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (152, '編輯', NULL, 'Edit', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:47:42', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (153, '生成語言包', NULL, 'Create package', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:48:03', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (154, '導入', NULL, 'Import', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:48:15', NULL, '2021-05-15 14:48:58', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (155, '導出', NULL, 'Export', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:48:25', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (156, '新增', NULL, 'Add', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 14:53:10', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (157, '請輸入正確的手機號', NULL, 'Please input the correct mobile phone number', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:01:44', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (158, '密碼長度不能小于6位', NULL, 'The password length cannot be less than 6 digits', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:02:06', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (159, '數據驗證未通過', NULL, 'Data validation failed', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:03:04', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (160, '只能是整數', NULL, 'required is an integer', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:05:14', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (161, '只能是日期格式', NULL, 'Can only be in date format', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:05:35', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (162, '只能是數字', NULL, 'required are numbers', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:05:48', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (163, '不能小于', NULL, 'cannot be less than	', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:06:12', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (164, '不能大于', NULL, 'cannot be greater tha', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:06:30', NULL, '2021-05-15 15:22:32', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (165, '不能為空', NULL, 'is required', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:07:49', NULL, '2021-05-15 15:07:53', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (166, '必須是一個郵箱地址', NULL, 'It must be an email address', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:08:13', NULL, '2021-05-15 15:08:22', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (167, '是否啟用', NULL, 'Enable', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:24:28', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (168, 'sql語句', NULL, 'Sql', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 15:24:48', NULL, '2021-05-15 15:24:55', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (169, '舊密碼不能為空', NULL, 'Old password cannot be empty\r\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:34:55', NULL, '2021-05-15 22:35:00', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (170, '新密碼不能為空', NULL, 'New password cannot be empty', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:35:18', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (171, '舊密碼不正確', NULL, 'The old password is incorrect', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:36:08', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (172, '新密碼不能與舊密碼相同', NULL, 'The new password cannot be the same as the old password', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:36:27', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (173, '密碼修改成功\r\n', NULL, 'Password modified successfully', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:37:54', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (174, '不能選擇此角色', NULL, 'This role cannot be selected', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:38:21', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (175, '用戶名已經被注冊\r\n', NULL, 'The user name has been registered', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:38:53', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (176, '用戶新建成功.帳號[{$ts}],密碼[{$ts}]', NULL, 'User created successfully. Account number [{$ts}], password [{$ts}]', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:42:50', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (177, '沒有權限', NULL, 'No permission', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:43:49', NULL, '2021-05-19 01:38:24', 'Admin', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (178, '不能修改自己的角色', NULL, 'You cannot modify your own role', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:44:47', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (179, '角色名【{$ts}】已存在', NULL, 'Role name [{$ts}] already exists\r\n', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:46:38', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (180, '上級角色不能選擇自己', NULL, 'Superior roles cannot choose themselves', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:48:07', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (181, '不能選擇此上級角色，選擇的上級角色與當前角色形成依賴關系', NULL, 'This superior role cannot be selected. The selected superior role is dependent on the current role', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:49:07', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (182, '服務器處理出現異常', NULL, 'Server processing exceptio', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:50:09', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (183, '未找到上傳的文件', NULL, 'Upload file not found', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:51:45', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (184, '[{$ts}]不是模板中的列', NULL, '[{$ts}] is not a column in the template', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:53:59', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (185, '[{$ts}]列名重復', NULL, 'Duplicate column name [{$ts}]', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:54:16', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (186, '導入文件列必須與導入模板相同', NULL, 'The import file columns must be the same as the import template', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 22:54:41', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (187, '下載模板', NULL, 'Download template', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:14:22', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (188, '上傳結果', NULL, 'Import result', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:18:28', NULL, '2021-05-15 23:18:47', 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (189, '保存', NULL, 'Save', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:18:59', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (190, '請上傳文件', NULL, 'Please upload the file', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:28:47', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (191, '上傳失敗', NULL, 'Upload failed', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'admi', '2021-05-15 23:29:20', NULL, NULL, 'admi', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (192, '字典編號[{$ts}]已存在', NULL, 'Dictionary number [{$ts}] already exists', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:47:59', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (193, '【字典項名稱】不能有重復的值', NULL, '[dictionary item name] cannot have duplicate values', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:48:32', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (194, '【字典項Key】不能有重復的值', NULL, 'Dictionary key cannot have duplicate values', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:48:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (195, '皮膚', NULL, 'Theme', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:53:49', NULL, '2021-05-15 23:54:03', '超級管理員', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (196, '框架文檔', NULL, 'Document', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:55:58', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (197, '安全退出', NULL, 'Log out', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-15 23:59:35', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (198, '首頁', NULL, 'Home', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:06:05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (199, '角色ID', NULL, 'Role ID', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:06:18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (200, '部門名稱', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:06:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (201, '刪除行', NULL, 'Delete row', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:18:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (202, '刷新', NULL, 'Refresh', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:18:56', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (203, '字典明細', NULL, 'Dictionary details', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:19:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (204, '是否可用', NULL, 'Enable', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:19:57', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (205, '數據源Text', NULL, 'Text', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:20:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (206, '數據源Value', NULL, 'Value', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:20:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (207, '數據源ID', NULL, 'ID', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:20:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (208, '系統日志', NULL, 'Logger', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:45:32', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (209, '開始時間', NULL, 'Start time', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:45:52', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (210, '用戶名稱', NULL, 'Name', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:46:04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (211, '請求地址', NULL, 'Url', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:46:22', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (212, '日志類型', NULL, 'Log type', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:46:44', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (213, '響應狀態', NULL, 'Status', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:47:18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (214, '時長', NULL, 'Duratio', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:47:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (215, '請求參數', NULL, 'Request', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:48:08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (216, '響應參數', NULL, 'Response', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:48:42', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (217, '異常信息', NULL, 'Exception', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:50:04', NULL, '2021-05-24 12:47:17', 'Admin', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (218, '用戶IP', NULL, 'IP', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:50:18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (219, '瀏覽器類型', NULL, 'Browser', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2021-05-16 00:50:39', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (220, '性別', NULL, 'Gender', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:22:21', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (221, '操作', NULL, 'Actio', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:22:46', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (222, '頭像', NULL, 'Header', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:23:34', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (223, '注冊時間', NULL, 'Reg time', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:23:59', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (224, '審核', NULL, 'Audit', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 01:24:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (225, '修改密碼', NULL, 'Password', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admi', '2021-05-16 12:09:36', NULL, '2021-05-19 01:22:07', 'Admin test', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (226, '視圖/表名', NULL, 'Table/View', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin117771', '2021-05-16 14:32:18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (227, '菜單ID', NULL, 'ID', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin117771', '2021-05-16 14:32:27', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (228, '用戶信息', NULL, 'User info', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin test', '2021-05-19 01:21:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (229, '驗證碼不正確', NULL, 'Incorrect verification code', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin test', '2021-05-19 01:21:37', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (230, '手機用戶', NULL, 'Mobile users', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', '2022-03-01 16:41:25', NULL, '2022-03-01 16:41:48', 'Admin', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (231, '語言管理', NULL, 'Language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:13:47', NULL, '2022-05-16 13:17:36', '超級管理員', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (232, '簡體中文', NULL, 'zh-cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:14:27', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (233, '繁體中文', NULL, 'zh-tw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:14:37', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (234, '英語', NULL, 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:15:14', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (235, '法語', NULL, 'French', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:15:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (236, '西班牙語', NULL, 'Spanish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:15:42', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (237, '俄語', NULL, 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:15:54', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (238, '高級查詢', NULL, 'Query', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:16:25', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (239, '角色列表', NULL, 'Role list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:21:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (240, '姓名', NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:35:31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (241, '阿拉伯語', NULL, 'Arabic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:35:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (242, '只能上傳excel文件,文件大小不超過5M', NULL, 'Only Excel files can be uploaded, and the file size shall not exceed 5m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:36:38', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (243, '選擇的文件【{$ts}】只能是excel文件', NULL, 'The selected file [{$ts}] can only be an excel file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:52:27', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (244, '選擇的文件【{$ts}】只能是圖片格式', NULL, 'The selected file [{$ts}] can only be in picture format', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:52:57', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (245, '最多只能選【{$ts}】張圖片', NULL, 'You can only select [{$ts}] pictures at most', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:54:24', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (246, '最多只能選【{$ts}】個文件', NULL, 'You can only select [{$ts}] files at most', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:54:46', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (247, '不支持此文件格式', NULL, 'This file format is not supported', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:56:43', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (248, '文件不能超過[{$ts}]m', NULL, 'File cannot exceed [{$ts}] m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 13:57:31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (249, '上傳中', NULL, 'Uploading', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:00:26', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (250, '文件列表', NULL, 'File list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:01:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (251, '文件名', NULL, 'Filen name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:01:34', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (252, '大小', NULL, 'Size', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:01:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (253, '未能處理導入的文件,請檢查導入的文件是否正確', NULL, 'Failed to process the imported file. Please check whether the imported file is correct', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:05:47', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (254, 'Token已過期', NULL, 'The token has expired', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:09:01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (255, '密碼長度不能少于6位', NULL, 'Password length cannot be less than 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:21:59', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (256, '密碼修改成功', NULL, 'Password modified successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:22:40', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (257, '用戶不存在', NULL, 'user does not exist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:23:22', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (258, '當前菜單存在子菜單,請先刪除子菜單', NULL, 'There are sub menus in the current menu. Please delete the sub menu first', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:26:50', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (259, '【字典項名稱】不能有重復的值', NULL, '[dictionary item name] cannot have duplicate values', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:28:41', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (260, '【字典項Key】不能有重復的值', NULL, '[dictionary key] cannot have duplicate values', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:29:09', NULL, '2022-05-16 15:18:05', '超級管理員', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (261, '字典編號[{$ts}]已存在', NULL, 'Dictionary number [{$ts}] already exists\n\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 14:30:31', NULL, '2022-05-16 15:18:22', '超級管理員', NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (262, '賬號', NULL, 'account', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2022-05-16 15:30:33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (263, '越南語', NULL, 'Vietnamese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-03-05 23:45:34', NULL, '2023-03-05 23:53:01', '超級管理員', NULL, 'Ti?ng Vi?t');
INSERT INTO "public"."Sys_Language" VALUES (264, '泰語', NULL, 'Thai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-03-05 23:46:06', NULL, '2023-03-05 23:52:40', '超級管理員', '???????', NULL);
INSERT INTO "public"."Sys_Language" VALUES (265, '結束時間', NULL, 'End time', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2023-03-06 00:00:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (266, '是否顯示', NULL, 'Show or not', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2023-03-06 00:01:28', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (267, '列名', NULL, 'Field', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-03-06 00:01:38', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (268, '拖動列名可調整表格列顯示順序', NULL, 'Drag column names to adjust the display order of table columns', NULL, NULL, NULL, NULL, NULL, 1, NULL, '超級管理員', '2023-03-06 00:01:57', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_Language" VALUES (269, '集團租戶', NULL, 'Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '超級管理員', '2023-05-07 20:51:38', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_Log
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Log";
CREATE TABLE "public"."Sys_Log" (
  "Id" int4 NOT NULL,
  "BeginDate" timestamp(6),
  "BrowserType" varchar(200) COLLATE "pg_catalog"."default",
  "ElapsedTime" int4,
  "EndDate" timestamp(6),
  "ExceptionInfo" text COLLATE "pg_catalog"."default",
  "LogType" varchar(50) COLLATE "pg_catalog"."default",
  "RequestParameter" text COLLATE "pg_catalog"."default",
  "ResponseParameter" text COLLATE "pg_catalog"."default",
  "Role_Id" int4,
  "ServiceIP" varchar(100) COLLATE "pg_catalog"."default",
  "Success" int4,
  "Url" text COLLATE "pg_catalog"."default",
  "UserIP" varchar(100) COLLATE "pg_catalog"."default",
  "UserName" text COLLATE "pg_catalog"."default",
  "User_Id" int4
)
;

-- ----------------------------
-- Records of Sys_Log
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Menu";
CREATE TABLE "public"."Sys_Menu" (
  "Menu_Id" int4 NOT NULL,
  "MenuName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "Auth" text COLLATE "pg_catalog"."default",
  "Icon" varchar(50) COLLATE "pg_catalog"."default",
  "Description" varchar(200) COLLATE "pg_catalog"."default",
  "Enable" int2,
  "OrderNo" int4,
  "TableName" varchar(200) COLLATE "pg_catalog"."default",
  "ParentId" int4 NOT NULL,
  "Url" text COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "Creator" varchar(50) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "Modifier" varchar(50) COLLATE "pg_catalog"."default",
  "MenuType" int4
)
;

-- ----------------------------
-- Records of Sys_Menu
-- ----------------------------
INSERT INTO "public"."Sys_Menu" VALUES (2, '用戶管理', '[{"text":"查詢","value":"Search"}]', 'el-icon-user', NULL, 1, 5000, '.', 0, NULL, '2017-08-28 12:21:13', '2017-08-28 11:12:45', '2023-05-07 20:36:11', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (3, '角色管理', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"},{"text":"導出","value":"Export"}]', '', NULL, 1, 900, 'Sys_Role', 2, '/Sys_Role', '2017-09-12 16:20:02', '2017-08-28 14:19:13', '2020-12-29 21:48:17', '超級管理員', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (9, '用戶管理', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"},{"text":"導入","value":"Import"},{"text":"導出","value":"Export"},{"text":"上傳","value":"Upload"}]', '', NULL, 1, 1500, 'Sys_User', 2, '/Sys_User', NULL, NULL, '2023-05-04 01:45:20', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (61, '系統設置', '[{"text":"查詢","value":"Search"}]', 'el-icon-setting', NULL, 1, 1000, '系統', 0, '/', '2019-07-12 14:04:04', '超級管理員', '2022-04-22 20:03:04', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (62, '菜單設置', '[{"text":"查詢","value":"Search"}]', '', NULL, 1, 150, 'Sys_Menu', 61, '/sysmenu', '2019-07-12 14:04:35', '超級管理員', '2023-05-07 21:04:18', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (63, '數據字典', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"},{"text":"導出","value":"Export"}]', '', NULL, 1, 100, 'Sys_Dictionary', 61, '/Sys_Dictionary', '2019-07-12 14:05:58', '超級管理員', '2023-05-07 21:04:22', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (64, '代碼生成', '[{"text":"查詢","value":"Search"}]', 'el-icon-document', NULL, 1, 1500, '代碼在線生成器', 0, '/coding', '2019-07-12 14:07:55', '超級管理員', '2022-04-22 20:02:57', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (65, '代碼生成', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"}]', '', NULL, 1, 10, '/', 64, '/coder', '2019-07-12 14:08:58', '超級管理員', '2022-04-22 20:02:27', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (71, '權限管理', '[{"text":"查詢","value":"Search"},{"text":"編輯","value":"Update"}]', 'ivu-icon ivu-icon-ios-boat', NULL, 2, 1000, 'Sys_Role1', 2, '/permission', '2019-08-10 10:25:36', '超級管理員', '2023-05-05 22:14:16', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (95, '放此節點下', '', '', NULL, 1, 1, '/', 45, '', '2020-05-05 13:20:31', '超級管理員', '2019-09-20 09:54:26', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (96, '日志管理', '[{"text":"查詢","value":"Search"},{"text":"導出","value":"Export"}]', 'el-icon-set-up', NULL, 1, 0, '.', 0, '', '2020-11-08 21:55:28', '超級管理員', '2022-04-22 20:03:33', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (97, '日志管理', '[{"text":"查詢","value":"Search"},{"text":"刪除","value":"Delete"},{"text":"導出","value":"Export"}]', '', NULL, 1, 0, 'Sys_Log', 96, '/Sys_Log', '2020-11-08 21:56:01', '超級管理員', '2020-11-08 21:57:04', '超級管理員', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (98, '消息推送', '', 'el-icon-chat-line-round', NULL, 0, 1700, '.', 0, '/signalR', '2022-05-04 12:00:00', '超級管理員', '2023-05-07 20:51:09', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (99, '語言設置', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"},{"text":"導入","value":"Import"},{"text":"導出","value":"Export"}]', '', NULL, 1, 200, 'Sys_Language', 61, '/Sys_Language', '2023-01-18 12:12:33', '超級管理員', '2023-05-04 02:49:49', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (100, '部門管理', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"},{"text":"導出","value":"Export"}]', '', NULL, 1, 2000, 'Sys_Department', 2, '/Sys_Department', '2023-05-04 01:45:46', '超級管理員', '2023-04-17 01:22:17', NULL, 0);
INSERT INTO "public"."Sys_Menu" VALUES (101, '集團管理', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"}]', '', NULL, 1, 500, 'Sys_Group', 103, '/Sys_Group', '2023-05-04 02:50:18', '超級管理員', '2023-05-07 20:36:21', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (102, '租戶管理', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"}]', '', NULL, 1, 400, 'Sys_DbService', 103, '/Sys_DbService', '2023-05-04 02:51:02', '超級管理員', '2023-05-07 20:36:24', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (103, '集團租戶', '[{"text":"查詢","value":"Search"}]', 'el-icon-office-building', NULL, 1, 4500, '.', 0, '.', '2023-05-07 20:36:00', '超級管理員', '2023-05-07 20:36:14', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (104, '省市區縣', '[{"text":"查詢","value":"Search"},{"text":"導出","value":"Export"}]', '', NULL, 1, 90, 'Sys_Region', 61, '/Sys_Region', '2023-05-07 21:04:44', '超級管理員', '2023-05-04 03:01:12', NULL, 0);
INSERT INTO "public"."Sys_Menu" VALUES (105, '分庫測試', '[{"text":"查詢","value":"Search"}]', 'el-icon-notebook-1', NULL, 1, 7000, '.', 0, '', '2023-05-07 21:53:53', '超級管理員', '2023-05-07 20:36:11', NULL, 0);
INSERT INTO "public"."Sys_Menu" VALUES (106, '業務庫', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"},{"text":"導入","value":"Import"},{"text":"導出","value":"Export"}]', '', NULL, 1, 200, 'TestService', 105, '/TestService', '2023-05-07 21:54:15', '超級管理員', '2023-05-07 21:58:19', '超級管理員', 0);
INSERT INTO "public"."Sys_Menu" VALUES (107, '測試庫', '[{"text":"查詢","value":"Search"},{"text":"新建","value":"Add"},{"text":"刪除","value":"Delete"},{"text":"編輯","value":"Update"},{"text":"導入","value":"Import"},{"text":"導出","value":"Export"}]', '', NULL, 1, 0, 'TestDb', 105, '/TestDb', '2023-05-07 21:54:38', '超級管理員', '2023-05-07 20:36:11', NULL, 0);

-- ----------------------------
-- Table structure for Sys_Post
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Post";
CREATE TABLE "public"."Sys_Post" (
  "PostId" int4 NOT NULL,
  "PostName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "DeptCode" varchar(50) COLLATE "pg_catalog"."default",
  "Enable" int4,
  "CreateID" int4,
  "Creator" varchar(50) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(50) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of Sys_Post
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Province
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Province";
CREATE TABLE "public"."Sys_Province" (
  "ProvinceId" int4 NOT NULL,
  "ProvinceCode" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "ProvinceName" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "RegionCode" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_Province
-- ----------------------------
INSERT INTO "public"."Sys_Province" VALUES (1, '110000', '北京市', '華北');
INSERT INTO "public"."Sys_Province" VALUES (2, '120000', '天津市', '華北');
INSERT INTO "public"."Sys_Province" VALUES (3, '130000', '河北省', '華北');
INSERT INTO "public"."Sys_Province" VALUES (4, '140000', '山西省', '華北');
INSERT INTO "public"."Sys_Province" VALUES (5, '150000', '內蒙古自治區', '華北');
INSERT INTO "public"."Sys_Province" VALUES (6, '210000', '遼寧省', '東北');
INSERT INTO "public"."Sys_Province" VALUES (7, '220000', '吉林省', '東北');
INSERT INTO "public"."Sys_Province" VALUES (8, '230000', '黑龍江省', '東北');
INSERT INTO "public"."Sys_Province" VALUES (9, '310000', '上海市', '華東');
INSERT INTO "public"."Sys_Province" VALUES (10, '320000', '江蘇省', '華東');
INSERT INTO "public"."Sys_Province" VALUES (11, '330000', '浙江省', '華東');
INSERT INTO "public"."Sys_Province" VALUES (12, '340000', '安徽省', '華東');
INSERT INTO "public"."Sys_Province" VALUES (13, '350000', '福建省', '華東');
INSERT INTO "public"."Sys_Province" VALUES (14, '360000', '江西省', '華東');
INSERT INTO "public"."Sys_Province" VALUES (15, '370000', '山東省', '華東');
INSERT INTO "public"."Sys_Province" VALUES (16, '410000', '河南省', '華中');
INSERT INTO "public"."Sys_Province" VALUES (17, '420000', '湖北省', '華中');
INSERT INTO "public"."Sys_Province" VALUES (18, '430000', '湖南省', '華中');
INSERT INTO "public"."Sys_Province" VALUES (19, '440000', '廣東省', '華南');
INSERT INTO "public"."Sys_Province" VALUES (20, '450000', '廣西壯族自治區', '華南');
INSERT INTO "public"."Sys_Province" VALUES (21, '460000', '海南省', '華南');
INSERT INTO "public"."Sys_Province" VALUES (22, '500000', '重慶市', '西南');
INSERT INTO "public"."Sys_Province" VALUES (23, '510000', '四川省', '西南');
INSERT INTO "public"."Sys_Province" VALUES (24, '520000', '貴州省', '西南');
INSERT INTO "public"."Sys_Province" VALUES (25, '530000', '云南省', '西南');
INSERT INTO "public"."Sys_Province" VALUES (26, '540000', '西藏自治區', '西南');
INSERT INTO "public"."Sys_Province" VALUES (27, '610000', '陜西省', '西北');
INSERT INTO "public"."Sys_Province" VALUES (28, '620000', '甘肅省', '西北');
INSERT INTO "public"."Sys_Province" VALUES (29, '630000', '青海省', '西北');
INSERT INTO "public"."Sys_Province" VALUES (30, '640000', '寧夏回族自治區', '西北');
INSERT INTO "public"."Sys_Province" VALUES (31, '650000', '新疆維吾爾自治區', '西北');
INSERT INTO "public"."Sys_Province" VALUES (32, '710000', '臺灣省', '港澳臺');
INSERT INTO "public"."Sys_Province" VALUES (33, '810000', '香港特別行政區', '港澳臺');
INSERT INTO "public"."Sys_Province" VALUES (34, '820000', '澳門特別行政區', '港澳臺');
INSERT INTO "public"."Sys_Province" VALUES (35, 'thd', '桃花島', '東北');
INSERT INTO "public"."Sys_Province" VALUES (43, '測試1', '測試1', '港澳臺');

-- ----------------------------
-- Table structure for Sys_Region
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Region";
CREATE TABLE "public"."Sys_Region" (
  "id" int4 NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(40) COLLATE "pg_catalog"."default",
  "parentId" int4,
  "level" int4,
  "mername" varchar(100) COLLATE "pg_catalog"."default",
  "Lng" numeric(53),
  "Lat" numeric(53),
  "pinyin" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_Region
-- ----------------------------
INSERT INTO "public"."Sys_Region" VALUES (1, '100000', '中國', 0, 0, '中國', 116, 40, 'China');
INSERT INTO "public"."Sys_Region" VALUES (2, '110000', '北京市', 100000, 1, '中國,北京', 116, 40, 'Beijing');
INSERT INTO "public"."Sys_Region" VALUES (3, '110100', '北京市', 110000, 2, '中國,北京,北京市', 116, 40, 'Beijing');
INSERT INTO "public"."Sys_Region" VALUES (4, '110101', '東城區', 110100, 3, '中國,北京,北京市,東城區', 116, 40, 'Dongcheng');
INSERT INTO "public"."Sys_Region" VALUES (5, '110102', '西城區', 110100, 3, '中國,北京,北京市,西城區', 116, 40, 'Xicheng');
INSERT INTO "public"."Sys_Region" VALUES (6, '110105', '朝陽區', 110100, 3, '中國,北京,北京市,朝陽區', 116, 40, 'Chaoyang');
INSERT INTO "public"."Sys_Region" VALUES (7, '110106', '豐臺區', 110100, 3, '中國,北京,北京市,豐臺區', 116, 40, 'Fengtai');
INSERT INTO "public"."Sys_Region" VALUES (8, '110107', '石景山區', 110100, 3, '中國,北京,北京市,石景山區', 116, 40, 'Shijingshan');
INSERT INTO "public"."Sys_Region" VALUES (9, '110108', '海淀區', 110100, 3, '中國,北京,北京市,海淀區', 116, 40, 'Haidian');
INSERT INTO "public"."Sys_Region" VALUES (10, '110109', '門頭溝區', 110100, 3, '中國,北京,北京市,門頭溝區', 116, 40, 'Mentougou');
INSERT INTO "public"."Sys_Region" VALUES (11, '110111', '房山區', 110100, 3, '中國,北京,北京市,房山區', 116, 40, 'Fangshan');
INSERT INTO "public"."Sys_Region" VALUES (12, '110112', '通州區', 110100, 3, '中國,北京,北京市,通州區', 117, 40, 'Tongzhou');
INSERT INTO "public"."Sys_Region" VALUES (13, '110113', '順義區', 110100, 3, '中國,北京,北京市,順義區', 117, 40, 'Shunyi');
INSERT INTO "public"."Sys_Region" VALUES (14, '110114', '昌平區', 110100, 3, '中國,北京,北京市,昌平區', 116, 40, 'Changping');
INSERT INTO "public"."Sys_Region" VALUES (15, '110115', '大興區', 110100, 3, '中國,北京,北京市,大興區', 116, 40, 'Daxing');
INSERT INTO "public"."Sys_Region" VALUES (16, '110116', '懷柔區', 110100, 3, '中國,北京,北京市,懷柔區', 117, 40, 'Huairou');
INSERT INTO "public"."Sys_Region" VALUES (17, '110117', '平谷區', 110100, 3, '中國,北京,北京市,平谷區', 117, 40, 'Pinggu');
INSERT INTO "public"."Sys_Region" VALUES (18, '110228', '密云縣', 110100, 3, '中國,北京,北京市,密云縣', 117, 40, 'Miyun');
INSERT INTO "public"."Sys_Region" VALUES (19, '110229', '延慶縣', 110100, 3, '中國,北京,北京市,延慶縣', 116, 40, 'Yanqing');
INSERT INTO "public"."Sys_Region" VALUES (20, '120000', '天津市', 100000, 1, '中國,天津', 117, 39, 'Tianjin');
INSERT INTO "public"."Sys_Region" VALUES (21, '120100', '天津市', 120000, 2, '中國,天津,天津市', 117, 39, 'Tianjin');
INSERT INTO "public"."Sys_Region" VALUES (22, '120101', '和平區', 120100, 3, '中國,天津,天津市,和平區', 117, 39, 'Heping');
INSERT INTO "public"."Sys_Region" VALUES (23, '120102', '河東區', 120100, 3, '中國,天津,天津市,河東區', 117, 39, 'Hedong');
INSERT INTO "public"."Sys_Region" VALUES (24, '120103', '河西區', 120100, 3, '中國,天津,天津市,河西區', 117, 39, 'Hexi');
INSERT INTO "public"."Sys_Region" VALUES (25, '120104', '南開區', 120100, 3, '中國,天津,天津市,南開區', 117, 39, 'Nankai');
INSERT INTO "public"."Sys_Region" VALUES (26, '120105', '河北區', 120100, 3, '中國,天津,天津市,河北區', 117, 39, 'Hebei');
INSERT INTO "public"."Sys_Region" VALUES (27, '120106', '紅橋區', 120100, 3, '中國,天津,天津市,紅橋區', 117, 39, 'Hongqiao');
INSERT INTO "public"."Sys_Region" VALUES (28, '120110', '東麗區', 120100, 3, '中國,天津,天津市,東麗區', 117, 39, 'Dongli');
INSERT INTO "public"."Sys_Region" VALUES (29, '120111', '西青區', 120100, 3, '中國,天津,天津市,西青區', 117, 39, 'Xiqing');
INSERT INTO "public"."Sys_Region" VALUES (30, '120112', '津南區', 120100, 3, '中國,天津,天津市,津南區', 117, 39, 'Jinnan');
INSERT INTO "public"."Sys_Region" VALUES (31, '120113', '北辰區', 120100, 3, '中國,天津,天津市,北辰區', 117, 39, 'Beichen');
INSERT INTO "public"."Sys_Region" VALUES (32, '120114', '武清區', 120100, 3, '中國,天津,天津市,武清區', 117, 39, 'Wuqing');
INSERT INTO "public"."Sys_Region" VALUES (33, '120115', '寶坻區', 120100, 3, '中國,天津,天津市,寶坻區', 117, 40, 'Baodi');
INSERT INTO "public"."Sys_Region" VALUES (34, '120116', '濱海新區', 120100, 3, '中國,天津,天津市,濱海新區', 118, 39, 'Binhaixinqu');
INSERT INTO "public"."Sys_Region" VALUES (35, '120221', '寧河縣', 120100, 3, '中國,天津,天津市,寧河縣', 118, 39, 'Ninghe');
INSERT INTO "public"."Sys_Region" VALUES (36, '120223', '靜海縣', 120100, 3, '中國,天津,天津市,靜海縣', 117, 39, 'Jinghai');
INSERT INTO "public"."Sys_Region" VALUES (37, '120225', '薊縣', 120100, 3, '中國,天津,天津市,薊縣', 117, 40, 'Jixian');
INSERT INTO "public"."Sys_Region" VALUES (38, '130000', '河北省', 100000, 1, '中國,河北省', 115, 38, 'Hebei');
INSERT INTO "public"."Sys_Region" VALUES (39, '130100', '石家莊市', 130000, 2, '中國,河北省,石家莊市', 115, 38, 'Shijiazhuang');
INSERT INTO "public"."Sys_Region" VALUES (40, '130102', '長安區', 130100, 3, '中國,河北省,石家莊市,長安區', 115, 38, 'Changan');
INSERT INTO "public"."Sys_Region" VALUES (41, '130104', '橋西區', 130100, 3, '中國,河北省,石家莊市,橋西區', 114, 38, 'Qiaoxi');
INSERT INTO "public"."Sys_Region" VALUES (42, '130105', '新華區', 130100, 3, '中國,河北省,石家莊市,新華區', 114, 38, 'Xinhua');
INSERT INTO "public"."Sys_Region" VALUES (43, '130107', '井陘礦區', 130100, 3, '中國,河北省,石家莊市,井陘礦區', 114, 38, 'Jingxingkuangqu');
INSERT INTO "public"."Sys_Region" VALUES (44, '130108', '裕華區', 130100, 3, '中國,河北省,石家莊市,裕華區', 115, 38, 'Yuhua');
INSERT INTO "public"."Sys_Region" VALUES (45, '130109', '藁城區', 130100, 3, '中國,河北省,石家莊市,藁城區', 115, 38, 'Gaocheng');
INSERT INTO "public"."Sys_Region" VALUES (46, '130110', '鹿泉區', 130100, 3, '中國,河北省,石家莊市,鹿泉區', 114, 38, 'Luquan');
INSERT INTO "public"."Sys_Region" VALUES (47, '130111', '欒城區', 130100, 3, '中國,河北省,石家莊市,欒城區', 115, 38, 'Luancheng');
INSERT INTO "public"."Sys_Region" VALUES (48, '130121', '井陘縣', 130100, 3, '中國,河北省,石家莊市,井陘縣', 114, 38, 'Jingxing');
INSERT INTO "public"."Sys_Region" VALUES (49, '130123', '正定縣', 130100, 3, '中國,河北省,石家莊市,正定縣', 115, 38, 'Zhengding');
INSERT INTO "public"."Sys_Region" VALUES (50, '130125', '行唐縣', 130100, 3, '中國,河北省,石家莊市,行唐縣', 115, 38, 'Xingtang');
INSERT INTO "public"."Sys_Region" VALUES (51, '130126', '靈壽縣', 130100, 3, '中國,河北省,石家莊市,靈壽縣', 114, 38, 'Lingshou');
INSERT INTO "public"."Sys_Region" VALUES (52, '130127', '高邑縣', 130100, 3, '中國,河北省,石家莊市,高邑縣', 115, 38, 'Gaoyi');
INSERT INTO "public"."Sys_Region" VALUES (53, '130128', '深澤縣', 130100, 3, '中國,河北省,石家莊市,深澤縣', 115, 38, 'Shenze');
INSERT INTO "public"."Sys_Region" VALUES (54, '130129', '贊皇縣', 130100, 3, '中國,河北省,石家莊市,贊皇縣', 114, 38, 'Zanhuang');
INSERT INTO "public"."Sys_Region" VALUES (55, '130130', '無極縣', 130100, 3, '中國,河北省,石家莊市,無極縣', 115, 38, 'Wuji');
INSERT INTO "public"."Sys_Region" VALUES (56, '130131', '平山縣', 130100, 3, '中國,河北省,石家莊市,平山縣', 114, 38, 'Pingshan');
INSERT INTO "public"."Sys_Region" VALUES (57, '130132', '元氏縣', 130100, 3, '中國,河北省,石家莊市,元氏縣', 115, 38, 'Yuanshi');
INSERT INTO "public"."Sys_Region" VALUES (58, '130133', '趙縣', 130100, 3, '中國,河北省,石家莊市,趙縣', 115, 38, 'Zhaoxian');
INSERT INTO "public"."Sys_Region" VALUES (59, '130181', '辛集市', 130100, 3, '中國,河北省,石家莊市,辛集市', 115, 38, 'Xinji');
INSERT INTO "public"."Sys_Region" VALUES (60, '130183', '晉州市', 130100, 3, '中國,河北省,石家莊市,晉州市', 115, 38, 'Jinzhou');
INSERT INTO "public"."Sys_Region" VALUES (61, '130184', '新樂市', 130100, 3, '中國,河北省,石家莊市,新樂市', 115, 38, 'Xinle');
INSERT INTO "public"."Sys_Region" VALUES (62, '130200', '唐山市', 130000, 2, '中國,河北省,唐山市', 118, 40, 'Tangshan');
INSERT INTO "public"."Sys_Region" VALUES (63, '130202', '路南區', 130200, 3, '中國,河北省,唐山市,路南區', 118, 40, 'Lunan');
INSERT INTO "public"."Sys_Region" VALUES (64, '130203', '路北區', 130200, 3, '中國,河北省,唐山市,路北區', 118, 40, 'Lubei');
INSERT INTO "public"."Sys_Region" VALUES (65, '130204', '古冶區', 130200, 3, '中國,河北省,唐山市,古冶區', 118, 40, 'Guye');
INSERT INTO "public"."Sys_Region" VALUES (66, '130205', '開平區', 130200, 3, '中國,河北省,唐山市,開平區', 118, 40, 'Kaiping');
INSERT INTO "public"."Sys_Region" VALUES (67, '130207', '豐南區', 130200, 3, '中國,河北省,唐山市,豐南區', 118, 40, 'Fengnan');
INSERT INTO "public"."Sys_Region" VALUES (68, '130208', '豐潤區', 130200, 3, '中國,河北省,唐山市,豐潤區', 118, 40, 'Fengrun');
INSERT INTO "public"."Sys_Region" VALUES (69, '130209', '曹妃甸區', 130200, 3, '中國,河北省,唐山市,曹妃甸區', 118, 39, 'Caofeidian');
INSERT INTO "public"."Sys_Region" VALUES (70, '130223', '灤縣', 130200, 3, '中國,河北省,唐山市,灤縣', 119, 40, 'Luanxian');
INSERT INTO "public"."Sys_Region" VALUES (71, '130224', '灤南縣', 130200, 3, '中國,河北省,唐山市,灤南縣', 119, 40, 'Luannan');
INSERT INTO "public"."Sys_Region" VALUES (72, '130225', '樂亭縣', 130200, 3, '中國,河北省,唐山市,樂亭縣', 119, 39, 'Laoting');
INSERT INTO "public"."Sys_Region" VALUES (73, '130227', '遷西縣', 130200, 3, '中國,河北省,唐山市,遷西縣', 118, 40, 'Qianxi');
INSERT INTO "public"."Sys_Region" VALUES (74, '130229', '玉田縣', 130200, 3, '中國,河北省,唐山市,玉田縣', 118, 40, 'Yutian');
INSERT INTO "public"."Sys_Region" VALUES (75, '130281', '遵化市', 130200, 3, '中國,河北省,唐山市,遵化市', 118, 40, 'Zunhua');
INSERT INTO "public"."Sys_Region" VALUES (76, '130283', '遷安市', 130200, 3, '中國,河北省,唐山市,遷安市', 119, 40, 'Qianan');
INSERT INTO "public"."Sys_Region" VALUES (77, '130300', '秦皇島市', 130000, 2, '中國,河北省,秦皇島市', 120, 40, 'Qinhuangdao');
INSERT INTO "public"."Sys_Region" VALUES (78, '130302', '海港區', 130300, 3, '中國,河北省,秦皇島市,海港區', 120, 40, 'Haigang');
INSERT INTO "public"."Sys_Region" VALUES (79, '130303', '山海關區', 130300, 3, '中國,河北省,秦皇島市,山海關區', 120, 40, 'Shanhaiguan');
INSERT INTO "public"."Sys_Region" VALUES (80, '130304', '北戴河區', 130300, 3, '中國,河北省,秦皇島市,北戴河區', 119, 40, 'Beidaihe');
INSERT INTO "public"."Sys_Region" VALUES (81, '130321', '青龍滿族自治縣', 130300, 3, '中國,河北省,秦皇島市,青龍滿族自治縣', 119, 40, 'Qinglong');
INSERT INTO "public"."Sys_Region" VALUES (82, '130322', '昌黎縣', 130300, 3, '中國,河北省,秦皇島市,昌黎縣', 119, 40, 'Changli');
INSERT INTO "public"."Sys_Region" VALUES (83, '130323', '撫寧縣', 130300, 3, '中國,河北省,秦皇島市,撫寧縣', 119, 40, 'Funing');
INSERT INTO "public"."Sys_Region" VALUES (84, '130324', '盧龍縣', 130300, 3, '中國,河北省,秦皇島市,盧龍縣', 119, 40, 'Lulong');
INSERT INTO "public"."Sys_Region" VALUES (85, '130400', '邯鄲市', 130000, 2, '中國,河北省,邯鄲市', 114, 37, 'Handan');
INSERT INTO "public"."Sys_Region" VALUES (86, '130402', '邯山區', 130400, 3, '中國,河北省,邯鄲市,邯山區', 114, 37, 'Hanshan');
INSERT INTO "public"."Sys_Region" VALUES (87, '130403', '叢臺區', 130400, 3, '中國,河北省,邯鄲市,叢臺區', 114, 37, 'Congtai');
INSERT INTO "public"."Sys_Region" VALUES (88, '130404', '復興區', 130400, 3, '中國,河北省,邯鄲市,復興區', 114, 37, 'Fuxing');
INSERT INTO "public"."Sys_Region" VALUES (89, '130406', '峰峰礦區', 130400, 3, '中國,河北省,邯鄲市,峰峰礦區', 114, 36, 'Fengfengkuangqu');
INSERT INTO "public"."Sys_Region" VALUES (90, '130421', '邯鄲縣', 130400, 3, '中國,河北省,邯鄲市,邯鄲縣', 115, 37, 'Handan');
INSERT INTO "public"."Sys_Region" VALUES (91, '130423', '臨漳縣', 130400, 3, '中國,河北省,邯鄲市,臨漳縣', 115, 36, 'Linzhang');
INSERT INTO "public"."Sys_Region" VALUES (92, '130424', '成安縣', 130400, 3, '中國,河北省,邯鄲市,成安縣', 115, 36, 'Chengan');
INSERT INTO "public"."Sys_Region" VALUES (93, '130425', '大名縣', 130400, 3, '中國,河北省,邯鄲市,大名縣', 115, 36, 'Daming');
INSERT INTO "public"."Sys_Region" VALUES (94, '130426', '涉縣', 130400, 3, '中國,河北省,邯鄲市,涉縣', 114, 37, 'Shexian');
INSERT INTO "public"."Sys_Region" VALUES (95, '130427', '磁縣', 130400, 3, '中國,河北省,邯鄲市,磁縣', 114, 36, 'Cixian');
INSERT INTO "public"."Sys_Region" VALUES (96, '130428', '肥鄉縣', 130400, 3, '中國,河北省,邯鄲市,肥鄉縣', 115, 37, 'Feixiang');
INSERT INTO "public"."Sys_Region" VALUES (97, '130429', '永年縣', 130400, 3, '中國,河北省,邯鄲市,永年縣', 114, 37, 'Yongnian');
INSERT INTO "public"."Sys_Region" VALUES (98, '130430', '邱縣', 130400, 3, '中國,河北省,邯鄲市,邱縣', 115, 37, 'Qiuxian');
INSERT INTO "public"."Sys_Region" VALUES (99, '130431', '雞澤縣', 130400, 3, '中國,河北省,邯鄲市,雞澤縣', 115, 37, 'Jize');
INSERT INTO "public"."Sys_Region" VALUES (100, '130432', '廣平縣', 130400, 3, '中國,河北省,邯鄲市,廣平縣', 115, 36, 'Guangping');
INSERT INTO "public"."Sys_Region" VALUES (101, '130433', '館陶縣', 130400, 3, '中國,河北省,邯鄲市,館陶縣', 115, 37, 'Guantao');
INSERT INTO "public"."Sys_Region" VALUES (102, '130434', '魏縣', 130400, 3, '中國,河北省,邯鄲市,魏縣', 115, 36, 'Weixian');
INSERT INTO "public"."Sys_Region" VALUES (103, '130435', '曲周縣', 130400, 3, '中國,河北省,邯鄲市,曲周縣', 115, 37, 'Quzhou');
INSERT INTO "public"."Sys_Region" VALUES (104, '130481', '武安市', 130400, 3, '中國,河北省,邯鄲市,武安市', 114, 37, 'Wuan');
INSERT INTO "public"."Sys_Region" VALUES (105, '130500', '邢臺市', 130000, 2, '中國,河北省,邢臺市', 115, 37, 'Xingtai');
INSERT INTO "public"."Sys_Region" VALUES (106, '130502', '橋東區', 130500, 3, '中國,河北省,邢臺市,橋東區', 115, 37, 'Qiaodong');
INSERT INTO "public"."Sys_Region" VALUES (107, '130503', '橋西區', 130500, 3, '中國,河北省,邢臺市,橋西區', 114, 37, 'Qiaoxi');
INSERT INTO "public"."Sys_Region" VALUES (108, '130521', '邢臺縣', 130500, 3, '中國,河北省,邢臺市,邢臺縣', 115, 37, 'Xingtai');
INSERT INTO "public"."Sys_Region" VALUES (109, '130522', '臨城縣', 130500, 3, '中國,河北省,邢臺市,臨城縣', 115, 37, 'Lincheng');
INSERT INTO "public"."Sys_Region" VALUES (110, '130523', '內丘縣', 130500, 3, '中國,河北省,邢臺市,內丘縣', 115, 37, 'Neiqiu');
INSERT INTO "public"."Sys_Region" VALUES (111, '130524', '柏鄉縣', 130500, 3, '中國,河北省,邢臺市,柏鄉縣', 115, 37, 'Baixiang');
INSERT INTO "public"."Sys_Region" VALUES (112, '130525', '隆堯縣', 130500, 3, '中國,河北省,邢臺市,隆堯縣', 115, 37, 'Longyao');
INSERT INTO "public"."Sys_Region" VALUES (113, '130526', '任縣', 130500, 3, '中國,河北省,邢臺市,任縣', 115, 37, 'Renxian');
INSERT INTO "public"."Sys_Region" VALUES (114, '130527', '南和縣', 130500, 3, '中國,河北省,邢臺市,南和縣', 115, 37, 'Nanhe');
INSERT INTO "public"."Sys_Region" VALUES (115, '130528', '寧晉縣', 130500, 3, '中國,河北省,邢臺市,寧晉縣', 115, 38, 'Ningjin');
INSERT INTO "public"."Sys_Region" VALUES (116, '130529', '巨鹿縣', 130500, 3, '中國,河北省,邢臺市,巨鹿縣', 115, 37, 'Julu');
INSERT INTO "public"."Sys_Region" VALUES (117, '130530', '新河縣', 130500, 3, '中國,河北省,邢臺市,新河縣', 115, 38, 'Xinhe');
INSERT INTO "public"."Sys_Region" VALUES (118, '130531', '廣宗縣', 130500, 3, '中國,河北省,邢臺市,廣宗縣', 115, 37, 'Guangzong');
INSERT INTO "public"."Sys_Region" VALUES (119, '130532', '平鄉縣', 130500, 3, '中國,河北省,邢臺市,平鄉縣', 115, 37, 'Pingxiang');
INSERT INTO "public"."Sys_Region" VALUES (120, '130533', '威縣', 130500, 3, '中國,河北省,邢臺市,威縣', 115, 37, 'Weixian');
INSERT INTO "public"."Sys_Region" VALUES (121, '130534', '清河縣', 130500, 3, '中國,河北省,邢臺市,清河縣', 116, 37, 'Qinghe');
INSERT INTO "public"."Sys_Region" VALUES (122, '130535', '臨西縣', 130500, 3, '中國,河北省,邢臺市,臨西縣', 116, 37, 'Linxi');
INSERT INTO "public"."Sys_Region" VALUES (123, '130581', '南宮市', 130500, 3, '中國,河北省,邢臺市,南宮市', 115, 37, 'Nangong');
INSERT INTO "public"."Sys_Region" VALUES (124, '130582', '沙河市', 130500, 3, '中國,河北省,邢臺市,沙河市', 114, 37, 'Shahe');
INSERT INTO "public"."Sys_Region" VALUES (125, '130600', '保定市', 130000, 2, '中國,河北省,保定市', 115, 39, 'Baoding');
INSERT INTO "public"."Sys_Region" VALUES (126, '130602', '新市區', 130600, 3, '中國,河北省,保定市,新市區', 115, 39, 'Xinshi');
INSERT INTO "public"."Sys_Region" VALUES (127, '130603', '北市區', 130600, 3, '中國,河北省,保定市,北市區', 115, 39, 'Beishi');
INSERT INTO "public"."Sys_Region" VALUES (128, '130604', '南市區', 130600, 3, '中國,河北省,保定市,南市區', 116, 39, 'Nanshi');
INSERT INTO "public"."Sys_Region" VALUES (129, '130621', '滿城縣', 130600, 3, '中國,河北省,保定市,滿城縣', 115, 39, 'Mancheng');
INSERT INTO "public"."Sys_Region" VALUES (130, '130622', '清苑縣', 130600, 3, '中國,河北省,保定市,清苑縣', 115, 39, 'Qingyuan');
INSERT INTO "public"."Sys_Region" VALUES (131, '130623', '淶水縣', 130600, 3, '中國,河北省,保定市,淶水縣', 116, 39, 'Laishui');
INSERT INTO "public"."Sys_Region" VALUES (132, '130624', '阜平縣', 130600, 3, '中國,河北省,保定市,阜平縣', 114, 39, 'Fuping');
INSERT INTO "public"."Sys_Region" VALUES (133, '130625', '徐水縣', 130600, 3, '中國,河北省,保定市,徐水縣', 116, 39, 'Xushui');
INSERT INTO "public"."Sys_Region" VALUES (134, '130626', '定興縣', 130600, 3, '中國,河北省,保定市,定興縣', 116, 39, 'Dingxing');
INSERT INTO "public"."Sys_Region" VALUES (135, '130627', '唐縣', 130600, 3, '中國,河北省,保定市,唐縣', 115, 39, 'Tangxian');
INSERT INTO "public"."Sys_Region" VALUES (136, '130628', '高陽縣', 130600, 3, '中國,河北省,保定市,高陽縣', 116, 39, 'Gaoyang');
INSERT INTO "public"."Sys_Region" VALUES (137, '130629', '容城縣', 130600, 3, '中國,河北省,保定市,容城縣', 116, 39, 'Rongcheng');
INSERT INTO "public"."Sys_Region" VALUES (138, '130630', '淶源縣', 130600, 3, '中國,河北省,保定市,淶源縣', 115, 39, 'Laiyuan');
INSERT INTO "public"."Sys_Region" VALUES (139, '130631', '望都縣', 130600, 3, '中國,河北省,保定市,望都縣', 115, 39, 'Wangdu');
INSERT INTO "public"."Sys_Region" VALUES (140, '130632', '安新縣', 130600, 3, '中國,河北省,保定市,安新縣', 116, 39, 'Anxin');
INSERT INTO "public"."Sys_Region" VALUES (141, '130633', '易縣', 130600, 3, '中國,河北省,保定市,易縣', 115, 39, 'Yixian');
INSERT INTO "public"."Sys_Region" VALUES (142, '130634', '曲陽縣', 130600, 3, '中國,河北省,保定市,曲陽縣', 115, 39, 'Quyang');
INSERT INTO "public"."Sys_Region" VALUES (143, '130635', '蠡縣', 130600, 3, '中國,河北省,保定市,蠡縣', 116, 38, 'Lixian');
INSERT INTO "public"."Sys_Region" VALUES (144, '130636', '順平縣', 130600, 3, '中國,河北省,保定市,順平縣', 115, 39, 'Shunping');
INSERT INTO "public"."Sys_Region" VALUES (145, '130637', '博野縣', 130600, 3, '中國,河北省,保定市,博野縣', 115, 38, 'Boye');
INSERT INTO "public"."Sys_Region" VALUES (146, '130638', '雄縣', 130600, 3, '中國,河北省,保定市,雄縣', 116, 39, 'Xiongxian');
INSERT INTO "public"."Sys_Region" VALUES (147, '130681', '涿州市', 130600, 3, '中國,河北省,保定市,涿州市', 116, 39, 'Zhuozhou');
INSERT INTO "public"."Sys_Region" VALUES (148, '130682', '定州市', 130600, 3, '中國,河北省,保定市,定州市', 115, 39, 'Dingzhou');
INSERT INTO "public"."Sys_Region" VALUES (149, '130683', '安國市', 130600, 3, '中國,河北省,保定市,安國市', 115, 38, 'Anguo');
INSERT INTO "public"."Sys_Region" VALUES (150, '130684', '高碑店市', 130600, 3, '中國,河北省,保定市,高碑店市', 116, 39, 'Gaobeidian');
INSERT INTO "public"."Sys_Region" VALUES (151, '130700', '張家口市', 130000, 2, '中國,河北省,張家口市', 115, 41, 'Zhangjiakou');
INSERT INTO "public"."Sys_Region" VALUES (152, '130702', '橋東區', 130700, 3, '中國,河北省,張家口市,橋東區', 115, 41, 'Qiaodong');
INSERT INTO "public"."Sys_Region" VALUES (153, '130703', '橋西區', 130700, 3, '中國,河北省,張家口市,橋西區', 115, 41, 'Qiaoxi');
INSERT INTO "public"."Sys_Region" VALUES (154, '130705', '宣化區', 130700, 3, '中國,河北省,張家口市,宣化區', 115, 41, 'Xuanhua');
INSERT INTO "public"."Sys_Region" VALUES (155, '130706', '下花園區', 130700, 3, '中國,河北省,張家口市,下花園區', 115, 41, 'Xiahuayuan');
INSERT INTO "public"."Sys_Region" VALUES (156, '130721', '宣化縣', 130700, 3, '中國,河北省,張家口市,宣化縣', 115, 41, 'Xuanhua');
INSERT INTO "public"."Sys_Region" VALUES (157, '130722', '張北縣', 130700, 3, '中國,河北省,張家口市,張北縣', 115, 41, 'Zhangbei');
INSERT INTO "public"."Sys_Region" VALUES (158, '130723', '康保縣', 130700, 3, '中國,河北省,張家口市,康保縣', 115, 42, 'Kangbao');
INSERT INTO "public"."Sys_Region" VALUES (159, '130724', '沽源縣', 130700, 3, '中國,河北省,張家口市,沽源縣', 116, 42, 'Guyuan');
INSERT INTO "public"."Sys_Region" VALUES (160, '130725', '尚義縣', 130700, 3, '中國,河北省,張家口市,尚義縣', 114, 41, 'Shangyi');
INSERT INTO "public"."Sys_Region" VALUES (161, '130726', '蔚縣', 130700, 3, '中國,河北省,張家口市,蔚縣', 115, 40, 'Yuxian');
INSERT INTO "public"."Sys_Region" VALUES (162, '130727', '陽原縣', 130700, 3, '中國,河北省,張家口市,陽原縣', 114, 40, 'Yangyuan');
INSERT INTO "public"."Sys_Region" VALUES (163, '130728', '懷安縣', 130700, 3, '中國,河北省,張家口市,懷安縣', 114, 41, 'Huaian');
INSERT INTO "public"."Sys_Region" VALUES (164, '130729', '萬全縣', 130700, 3, '中國,河北省,張家口市,萬全縣', 115, 41, 'Wanquan');
INSERT INTO "public"."Sys_Region" VALUES (165, '130730', '懷來縣', 130700, 3, '中國,河北省,張家口市,懷來縣', 116, 40, 'Huailai');
INSERT INTO "public"."Sys_Region" VALUES (166, '130731', '涿鹿縣', 130700, 3, '中國,河北省,張家口市,涿鹿縣', 115, 40, 'Zhuolu');
INSERT INTO "public"."Sys_Region" VALUES (167, '130732', '赤城縣', 130700, 3, '中國,河北省,張家口市,赤城縣', 116, 41, 'Chicheng');
INSERT INTO "public"."Sys_Region" VALUES (168, '130733', '崇禮縣', 130700, 3, '中國,河北省,張家口市,崇禮縣', 115, 41, 'Chongli');
INSERT INTO "public"."Sys_Region" VALUES (169, '130800', '承德市', 130000, 2, '中國,河北省,承德市', 118, 41, 'Chengde');
INSERT INTO "public"."Sys_Region" VALUES (170, '130802', '雙橋區', 130800, 3, '中國,河北省,承德市,雙橋區', 118, 41, 'Shuangqiao');
INSERT INTO "public"."Sys_Region" VALUES (171, '130803', '雙灤區', 130800, 3, '中國,河北省,承德市,雙灤區', 118, 41, 'Shuangluan');
INSERT INTO "public"."Sys_Region" VALUES (172, '130804', '鷹手營子礦區', 130800, 3, '中國,河北省,承德市,鷹手營子礦區', 118, 41, 'Yingshouyingzikuangqu');
INSERT INTO "public"."Sys_Region" VALUES (173, '130821', '承德縣', 130800, 3, '中國,河北省,承德市,承德縣', 118, 41, 'Chengde');
INSERT INTO "public"."Sys_Region" VALUES (174, '130822', '興隆縣', 130800, 3, '中國,河北省,承德市,興隆縣', 118, 40, 'Xinglong');
INSERT INTO "public"."Sys_Region" VALUES (175, '130823', '平泉縣', 130800, 3, '中國,河北省,承德市,平泉縣', 119, 41, 'Pingquan');
INSERT INTO "public"."Sys_Region" VALUES (176, '130824', '灤平縣', 130800, 3, '中國,河北省,承德市,灤平縣', 117, 41, 'Luanping');
INSERT INTO "public"."Sys_Region" VALUES (177, '130825', '隆化縣', 130800, 3, '中國,河北省,承德市,隆化縣', 118, 41, 'Longhua');
INSERT INTO "public"."Sys_Region" VALUES (178, '130826', '豐寧滿族自治縣', 130800, 3, '中國,河北省,承德市,豐寧滿族自治縣', 117, 41, 'Fengning');
INSERT INTO "public"."Sys_Region" VALUES (179, '130827', '寬城滿族自治縣', 130800, 3, '中國,河北省,承德市,寬城滿族自治縣', 118, 41, 'Kuancheng');
INSERT INTO "public"."Sys_Region" VALUES (180, '130828', '圍場滿族蒙古族自治縣', 130800, 3, '中國,河北省,承德市,圍場滿族蒙古族自治縣', 118, 42, 'Weichang');
INSERT INTO "public"."Sys_Region" VALUES (181, '130900', '滄州市', 130000, 2, '中國,河北省,滄州市', 117, 38, 'Cangzhou');
INSERT INTO "public"."Sys_Region" VALUES (182, '130902', '新華區', 130900, 3, '中國,河北省,滄州市,新華區', 117, 38, 'Xinhua');
INSERT INTO "public"."Sys_Region" VALUES (183, '130903', '運河區', 130900, 3, '中國,河北省,滄州市,運河區', 117, 38, 'Yunhe');
INSERT INTO "public"."Sys_Region" VALUES (184, '130921', '滄縣', 130900, 3, '中國,河北省,滄州市,滄縣', 117, 38, 'Cangxian');
INSERT INTO "public"."Sys_Region" VALUES (185, '130922', '青縣', 130900, 3, '中國,河北省,滄州市,青縣', 117, 39, 'Qingxian');
INSERT INTO "public"."Sys_Region" VALUES (186, '130923', '東光縣', 130900, 3, '中國,河北省,滄州市,東光縣', 117, 38, 'Dongguang');
INSERT INTO "public"."Sys_Region" VALUES (187, '130924', '海興縣', 130900, 3, '中國,河北省,滄州市,海興縣', 117, 38, 'Haixing');
INSERT INTO "public"."Sys_Region" VALUES (188, '130925', '鹽山縣', 130900, 3, '中國,河北省,滄州市,鹽山縣', 117, 38, 'Yanshan');
INSERT INTO "public"."Sys_Region" VALUES (189, '130926', '肅寧縣', 130900, 3, '中國,河北省,滄州市,肅寧縣', 116, 38, 'Suning');
INSERT INTO "public"."Sys_Region" VALUES (190, '130927', '南皮縣', 130900, 3, '中國,河北省,滄州市,南皮縣', 117, 38, 'Nanpi');
INSERT INTO "public"."Sys_Region" VALUES (191, '130928', '吳橋縣', 130900, 3, '中國,河北省,滄州市,吳橋縣', 116, 38, 'Wuqiao');
INSERT INTO "public"."Sys_Region" VALUES (192, '130929', '獻縣', 130900, 3, '中國,河北省,滄州市,獻縣', 116, 38, 'Xianxian');
INSERT INTO "public"."Sys_Region" VALUES (193, '130930', '孟村回族自治縣', 130900, 3, '中國,河北省,滄州市,孟村回族自治縣', 117, 38, 'Mengcun');
INSERT INTO "public"."Sys_Region" VALUES (194, '130981', '泊頭市', 130900, 3, '中國,河北省,滄州市,泊頭市', 117, 38, 'Botou');
INSERT INTO "public"."Sys_Region" VALUES (195, '130982', '任丘市', 130900, 3, '中國,河北省,滄州市,任丘市', 116, 39, 'Renqiu');
INSERT INTO "public"."Sys_Region" VALUES (196, '130983', '黃驊市', 130900, 3, '中國,河北省,滄州市,黃驊市', 117, 38, 'Huanghua');
INSERT INTO "public"."Sys_Region" VALUES (197, '130984', '河間市', 130900, 3, '中國,河北省,滄州市,河間市', 116, 38, 'Hejian');
INSERT INTO "public"."Sys_Region" VALUES (198, '131000', '廊坊市', 130000, 2, '中國,河北省,廊坊市', 117, 40, 'Langfang');
INSERT INTO "public"."Sys_Region" VALUES (199, '131002', '安次區', 131000, 3, '中國,河北省,廊坊市,安次區', 117, 40, 'Anci');
INSERT INTO "public"."Sys_Region" VALUES (200, '131003', '廣陽區', 131000, 3, '中國,河北省,廊坊市,廣陽區', 117, 40, 'Guangyang');
INSERT INTO "public"."Sys_Region" VALUES (201, '131022', '固安縣', 131000, 3, '中國,河北省,廊坊市,固安縣', 116, 39, 'Guan');
INSERT INTO "public"."Sys_Region" VALUES (202, '131023', '永清縣', 131000, 3, '中國,河北省,廊坊市,永清縣', 117, 39, 'Yongqing');
INSERT INTO "public"."Sys_Region" VALUES (203, '131024', '香河縣', 131000, 3, '中國,河北省,廊坊市,香河縣', 117, 40, 'Xianghe');
INSERT INTO "public"."Sys_Region" VALUES (204, '131025', '大城縣', 131000, 3, '中國,河北省,廊坊市,大城縣', 117, 39, 'Daicheng');
INSERT INTO "public"."Sys_Region" VALUES (205, '131026', '文安縣', 131000, 3, '中國,河北省,廊坊市,文安縣', 116, 39, 'Wenan');
INSERT INTO "public"."Sys_Region" VALUES (206, '131028', '大廠回族自治縣', 131000, 3, '中國,河北省,廊坊市,大廠回族自治縣', 117, 40, 'Dachang');
INSERT INTO "public"."Sys_Region" VALUES (207, '131081', '霸州市', 131000, 3, '中國,河北省,廊坊市,霸州市', 116, 39, 'Bazhou');
INSERT INTO "public"."Sys_Region" VALUES (208, '131082', '三河市', 131000, 3, '中國,河北省,廊坊市,三河市', 117, 40, 'Sanhe');
INSERT INTO "public"."Sys_Region" VALUES (209, '131100', '衡水市', 130000, 2, '中國,河北省,衡水市', 116, 38, 'Hengshui');
INSERT INTO "public"."Sys_Region" VALUES (210, '131102', '桃城區', 131100, 3, '中國,河北省,衡水市,桃城區', 116, 38, 'Taocheng');
INSERT INTO "public"."Sys_Region" VALUES (211, '131121', '棗強縣', 131100, 3, '中國,河北省,衡水市,棗強縣', 116, 38, 'Zaoqiang');
INSERT INTO "public"."Sys_Region" VALUES (212, '131122', '武邑縣', 131100, 3, '中國,河北省,衡水市,武邑縣', 116, 38, 'Wuyi');
INSERT INTO "public"."Sys_Region" VALUES (213, '131123', '武強縣', 131100, 3, '中國,河北省,衡水市,武強縣', 116, 38, 'Wuqiang');
INSERT INTO "public"."Sys_Region" VALUES (214, '131124', '饒陽縣', 131100, 3, '中國,河北省,衡水市,饒陽縣', 116, 38, 'Raoyang');
INSERT INTO "public"."Sys_Region" VALUES (215, '131125', '安平縣', 131100, 3, '中國,河北省,衡水市,安平縣', 116, 38, 'Anping');
INSERT INTO "public"."Sys_Region" VALUES (216, '131126', '故城縣', 131100, 3, '中國,河北省,衡水市,故城縣', 116, 37, 'Gucheng');
INSERT INTO "public"."Sys_Region" VALUES (217, '131127', '景縣', 131100, 3, '中國,河北省,衡水市,景縣', 116, 38, 'Jingxian');
INSERT INTO "public"."Sys_Region" VALUES (218, '131128', '阜城縣', 131100, 3, '中國,河北省,衡水市,阜城縣', 116, 38, 'Fucheng');
INSERT INTO "public"."Sys_Region" VALUES (219, '131181', '冀州市', 131100, 3, '中國,河北省,衡水市,冀州市', 116, 38, 'Jizhou');
INSERT INTO "public"."Sys_Region" VALUES (220, '131182', '深州市', 131100, 3, '中國,河北省,衡水市,深州市', 116, 38, 'Shenzhou');
INSERT INTO "public"."Sys_Region" VALUES (221, '140000', '山西省', 100000, 1, '中國,山西省', 113, 38, 'Shanxi');
INSERT INTO "public"."Sys_Region" VALUES (222, '140100', '太原市', 140000, 2, '中國,山西省,太原市', 113, 38, 'Taiyuan');
INSERT INTO "public"."Sys_Region" VALUES (223, '140105', '小店區', 140100, 3, '中國,山西省,太原市,小店區', 113, 38, 'Xiaodian');
INSERT INTO "public"."Sys_Region" VALUES (224, '140106', '迎澤區', 140100, 3, '中國,山西省,太原市,迎澤區', 113, 38, 'Yingze');
INSERT INTO "public"."Sys_Region" VALUES (225, '140107', '杏花嶺區', 140100, 3, '中國,山西省,太原市,杏花嶺區', 113, 38, 'Xinghualing');
INSERT INTO "public"."Sys_Region" VALUES (226, '140108', '尖草坪區', 140100, 3, '中國,山西省,太原市,尖草坪區', 112, 38, 'Jiancaoping');
INSERT INTO "public"."Sys_Region" VALUES (227, '140109', '萬柏林區', 140100, 3, '中國,山西省,太原市,萬柏林區', 113, 38, 'Wanbailin');
INSERT INTO "public"."Sys_Region" VALUES (228, '140110', '晉源區', 140100, 3, '中國,山西省,太原市,晉源區', 112, 38, 'Jinyuan');
INSERT INTO "public"."Sys_Region" VALUES (229, '140121', '清徐縣', 140100, 3, '中國,山西省,太原市,清徐縣', 112, 38, 'Qingxu');
INSERT INTO "public"."Sys_Region" VALUES (230, '140122', '陽曲縣', 140100, 3, '中國,山西省,太原市,陽曲縣', 113, 38, 'Yangqu');
INSERT INTO "public"."Sys_Region" VALUES (231, '140123', '婁煩縣', 140100, 3, '中國,山西省,太原市,婁煩縣', 112, 38, 'Loufan');
INSERT INTO "public"."Sys_Region" VALUES (232, '140181', '古交市', 140100, 3, '中國,山西省,太原市,古交市', 112, 38, 'Gujiao');
INSERT INTO "public"."Sys_Region" VALUES (233, '140200', '大同市', 140000, 2, '中國,山西省,大同市', 113, 40, 'Datong');
INSERT INTO "public"."Sys_Region" VALUES (234, '140202', '城區', 140200, 3, '中國,山西省,大同市,城區', 113, 40, 'Chengqu');
INSERT INTO "public"."Sys_Region" VALUES (235, '140203', '礦區', 140200, 3, '中國,山西省,大同市,礦區', 113, 40, 'Kuangqu');
INSERT INTO "public"."Sys_Region" VALUES (236, '140211', '南郊區', 140200, 3, '中國,山西省,大同市,南郊區', 113, 40, 'Nanjiao');
INSERT INTO "public"."Sys_Region" VALUES (237, '140212', '新榮區', 140200, 3, '中國,山西省,大同市,新榮區', 113, 40, 'Xinrong');
INSERT INTO "public"."Sys_Region" VALUES (238, '140221', '陽高縣', 140200, 3, '中國,山西省,大同市,陽高縣', 114, 40, 'Yanggao');
INSERT INTO "public"."Sys_Region" VALUES (239, '140222', '天鎮縣', 140200, 3, '中國,山西省,大同市,天鎮縣', 114, 40, 'Tianzhen');
INSERT INTO "public"."Sys_Region" VALUES (240, '140223', '廣靈縣', 140200, 3, '中國,山西省,大同市,廣靈縣', 114, 40, 'Guangling');
INSERT INTO "public"."Sys_Region" VALUES (241, '140224', '靈丘縣', 140200, 3, '中國,山西省,大同市,靈丘縣', 114, 39, 'Lingqiu');
INSERT INTO "public"."Sys_Region" VALUES (242, '140225', '渾源縣', 140200, 3, '中國,山西省,大同市,渾源縣', 114, 40, 'Hunyuan');
INSERT INTO "public"."Sys_Region" VALUES (243, '140226', '左云縣', 140200, 3, '中國,山西省,大同市,左云縣', 113, 40, 'Zuoyun');
INSERT INTO "public"."Sys_Region" VALUES (244, '140227', '大同縣', 140200, 3, '中國,山西省,大同市,大同縣', 114, 40, 'Datong');
INSERT INTO "public"."Sys_Region" VALUES (245, '140300', '陽泉市', 140000, 2, '中國,山西省,陽泉市', 114, 38, 'Yangquan');
INSERT INTO "public"."Sys_Region" VALUES (246, '140302', '城區', 140300, 3, '中國,山西省,陽泉市,城區', 114, 38, 'Chengqu');
INSERT INTO "public"."Sys_Region" VALUES (247, '140303', '礦區', 140300, 3, '中國,山西省,陽泉市,礦區', 114, 38, 'Kuangqu');
INSERT INTO "public"."Sys_Region" VALUES (248, '140311', '郊區', 140300, 3, '中國,山西省,陽泉市,郊區', 114, 38, 'Jiaoqu');
INSERT INTO "public"."Sys_Region" VALUES (249, '140321', '平定縣', 140300, 3, '中國,山西省,陽泉市,平定縣', 114, 38, 'Pingding');
INSERT INTO "public"."Sys_Region" VALUES (250, '140322', '盂縣', 140300, 3, '中國,山西省,陽泉市,盂縣', 113, 38, 'Yuxian');
INSERT INTO "public"."Sys_Region" VALUES (251, '140400', '長治市', 140000, 2, '中國,山西省,長治市', 113, 36, 'Changzhi');
INSERT INTO "public"."Sys_Region" VALUES (252, '140402', '城區', 140400, 3, '中國,山西省,長治市,城區', 113, 36, 'Chengqu');
INSERT INTO "public"."Sys_Region" VALUES (253, '140411', '郊區', 140400, 3, '中國,山西省,長治市,郊區', 113, 36, 'Jiaoqu');
INSERT INTO "public"."Sys_Region" VALUES (254, '140421', '長治縣', 140400, 3, '中國,山西省,長治市,長治縣', 113, 36, 'Changzhi');
INSERT INTO "public"."Sys_Region" VALUES (255, '140423', '襄垣縣', 140400, 3, '中國,山西省,長治市,襄垣縣', 113, 37, 'Xiangyuan');
INSERT INTO "public"."Sys_Region" VALUES (256, '140424', '屯留縣', 140400, 3, '中國,山西省,長治市,屯留縣', 113, 36, 'Tunliu');
INSERT INTO "public"."Sys_Region" VALUES (257, '140425', '平順縣', 140400, 3, '中國,山西省,長治市,平順縣', 113, 36, 'Pingshun');
INSERT INTO "public"."Sys_Region" VALUES (258, '140426', '黎城縣', 140400, 3, '中國,山西省,長治市,黎城縣', 113, 37, 'Licheng');
INSERT INTO "public"."Sys_Region" VALUES (259, '140427', '壺關縣', 140400, 3, '中國,山西省,長治市,壺關縣', 113, 36, 'Huguan');
INSERT INTO "public"."Sys_Region" VALUES (260, '140428', '長子縣', 140400, 3, '中國,山西省,長治市,長子縣', 113, 36, 'Zhangzi');
INSERT INTO "public"."Sys_Region" VALUES (261, '140429', '武鄉縣', 140400, 3, '中國,山西省,長治市,武鄉縣', 113, 37, 'Wuxiang');
INSERT INTO "public"."Sys_Region" VALUES (262, '140430', '沁縣', 140400, 3, '中國,山西省,長治市,沁縣', 113, 37, 'Qinxian');
INSERT INTO "public"."Sys_Region" VALUES (263, '140431', '沁源縣', 140400, 3, '中國,山西省,長治市,沁源縣', 112, 37, 'Qinyuan');
INSERT INTO "public"."Sys_Region" VALUES (264, '140481', '潞城市', 140400, 3, '中國,山西省,長治市,潞城市', 113, 36, 'Lucheng');
INSERT INTO "public"."Sys_Region" VALUES (265, '140500', '晉城市', 140000, 2, '中國,山西省,晉城市', 113, 35, 'Jincheng');
INSERT INTO "public"."Sys_Region" VALUES (266, '140502', '城區', 140500, 3, '中國,山西省,晉城市,城區', 113, 36, 'Chengqu');
INSERT INTO "public"."Sys_Region" VALUES (267, '140521', '沁水縣', 140500, 3, '中國,山西省,晉城市,沁水縣', 112, 36, 'Qinshui');
INSERT INTO "public"."Sys_Region" VALUES (268, '140522', '陽城縣', 140500, 3, '中國,山西省,晉城市,陽城縣', 112, 35, 'Yangcheng');
INSERT INTO "public"."Sys_Region" VALUES (269, '140524', '陵川縣', 140500, 3, '中國,山西省,晉城市,陵川縣', 113, 36, 'Lingchuan');
INSERT INTO "public"."Sys_Region" VALUES (270, '140525', '澤州縣', 140500, 3, '中國,山西省,晉城市,澤州縣', 113, 36, 'Zezhou');
INSERT INTO "public"."Sys_Region" VALUES (271, '140581', '高平市', 140500, 3, '中國,山西省,晉城市,高平市', 113, 36, 'Gaoping');
INSERT INTO "public"."Sys_Region" VALUES (272, '140600', '朔州市', 140000, 2, '中國,山西省,朔州市', 112, 39, 'Shuozhou');
INSERT INTO "public"."Sys_Region" VALUES (273, '140602', '朔城區', 140600, 3, '中國,山西省,朔州市,朔城區', 112, 39, 'Shuocheng');
INSERT INTO "public"."Sys_Region" VALUES (274, '140603', '平魯區', 140600, 3, '中國,山西省,朔州市,平魯區', 112, 40, 'Pinglu');
INSERT INTO "public"."Sys_Region" VALUES (275, '140621', '山陰縣', 140600, 3, '中國,山西省,朔州市,山陰縣', 113, 40, 'Shanyin');
INSERT INTO "public"."Sys_Region" VALUES (276, '140622', '應縣', 140600, 3, '中國,山西省,朔州市,應縣', 113, 40, 'Yingxian');
INSERT INTO "public"."Sys_Region" VALUES (277, '140623', '右玉縣', 140600, 3, '中國,山西省,朔州市,右玉縣', 112, 40, 'Youyu');
INSERT INTO "public"."Sys_Region" VALUES (278, '140624', '懷仁縣', 140600, 3, '中國,山西省,朔州市,懷仁縣', 113, 40, 'Huairen');
INSERT INTO "public"."Sys_Region" VALUES (279, '140700', '晉中市', 140000, 2, '中國,山西省,晉中市', 113, 38, 'Jinzhong');
INSERT INTO "public"."Sys_Region" VALUES (280, '140702', '榆次區', 140700, 3, '中國,山西省,晉中市,榆次區', 113, 38, 'Yuci');
INSERT INTO "public"."Sys_Region" VALUES (281, '140721', '榆社縣', 140700, 3, '中國,山西省,晉中市,榆社縣', 113, 37, 'Yushe');
INSERT INTO "public"."Sys_Region" VALUES (282, '140722', '左權縣', 140700, 3, '中國,山西省,晉中市,左權縣', 113, 37, 'Zuoquan');
INSERT INTO "public"."Sys_Region" VALUES (283, '140723', '和順縣', 140700, 3, '中國,山西省,晉中市,和順縣', 114, 37, 'Heshun');
INSERT INTO "public"."Sys_Region" VALUES (284, '140724', '昔陽縣', 140700, 3, '中國,山西省,晉中市,昔陽縣', 114, 38, 'Xiyang');
INSERT INTO "public"."Sys_Region" VALUES (285, '140725', '壽陽縣', 140700, 3, '中國,山西省,晉中市,壽陽縣', 113, 38, 'Shouyang');
INSERT INTO "public"."Sys_Region" VALUES (286, '140726', '太谷縣', 140700, 3, '中國,山西省,晉中市,太谷縣', 113, 37, 'Taigu');
INSERT INTO "public"."Sys_Region" VALUES (287, '140727', '祁縣', 140700, 3, '中國,山西省,晉中市,祁縣', 112, 37, 'Qixian');
INSERT INTO "public"."Sys_Region" VALUES (288, '140728', '平遙縣', 140700, 3, '中國,山西省,晉中市,平遙縣', 112, 37, 'Pingyao');
INSERT INTO "public"."Sys_Region" VALUES (289, '140729', '靈石縣', 140700, 3, '中國,山西省,晉中市,靈石縣', 112, 37, 'Lingshi');
INSERT INTO "public"."Sys_Region" VALUES (290, '140781', '介休市', 140700, 3, '中國,山西省,晉中市,介休市', 112, 37, 'Jiexiu');
INSERT INTO "public"."Sys_Region" VALUES (291, '140800', '運城市', 140000, 2, '中國,山西省,運城市', 111, 35, 'Yuncheng');
INSERT INTO "public"."Sys_Region" VALUES (292, '140802', '鹽湖區', 140800, 3, '中國,山西省,運城市,鹽湖區', 111, 35, 'Yanhu');
INSERT INTO "public"."Sys_Region" VALUES (293, '140821', '臨猗縣', 140800, 3, '中國,山西省,運城市,臨猗縣', 111, 35, 'Linyi');
INSERT INTO "public"."Sys_Region" VALUES (294, '140822', '萬榮縣', 140800, 3, '中國,山西省,運城市,萬榮縣', 111, 35, 'Wanrong');
INSERT INTO "public"."Sys_Region" VALUES (295, '140823', '聞喜縣', 140800, 3, '中國,山西省,運城市,聞喜縣', 111, 35, 'Wenxi');
INSERT INTO "public"."Sys_Region" VALUES (296, '140824', '稷山縣', 140800, 3, '中國,山西省,運城市,稷山縣', 111, 36, 'Jishan');
INSERT INTO "public"."Sys_Region" VALUES (297, '140825', '新絳縣', 140800, 3, '中國,山西省,運城市,新絳縣', 111, 36, 'Xinjiang');
INSERT INTO "public"."Sys_Region" VALUES (298, '140826', '絳縣', 140800, 3, '中國,山西省,運城市,絳縣', 112, 35, 'Jiangxian');
INSERT INTO "public"."Sys_Region" VALUES (299, '140827', '垣曲縣', 140800, 3, '中國,山西省,運城市,垣曲縣', 112, 35, 'Yuanqu');
INSERT INTO "public"."Sys_Region" VALUES (300, '140828', '夏縣', 140800, 3, '中國,山西省,運城市,夏縣', 111, 35, 'Xiaxian');
INSERT INTO "public"."Sys_Region" VALUES (301, '140829', '平陸縣', 140800, 3, '中國,山西省,運城市,平陸縣', 111, 35, 'Pinglu');
INSERT INTO "public"."Sys_Region" VALUES (302, '140830', '芮城縣', 140800, 3, '中國,山西省,運城市,芮城縣', 111, 35, 'Ruicheng');
INSERT INTO "public"."Sys_Region" VALUES (303, '140881', '永濟市', 140800, 3, '中國,山西省,運城市,永濟市', 110, 35, 'Yongji');
INSERT INTO "public"."Sys_Region" VALUES (304, '140882', '河津市', 140800, 3, '中國,山西省,運城市,河津市', 111, 36, 'Hejin');
INSERT INTO "public"."Sys_Region" VALUES (305, '140900', '忻州市', 140000, 2, '中國,山西省,忻州市', 113, 38, 'Xinzhou');
INSERT INTO "public"."Sys_Region" VALUES (306, '140902', '忻府區', 140900, 3, '中國,山西省,忻州市,忻府區', 113, 38, 'Xinfu');
INSERT INTO "public"."Sys_Region" VALUES (307, '140921', '定襄縣', 140900, 3, '中國,山西省,忻州市,定襄縣', 113, 38, 'Dingxiang');
INSERT INTO "public"."Sys_Region" VALUES (308, '140922', '五臺縣', 140900, 3, '中國,山西省,忻州市,五臺縣', 113, 39, 'Wutai');
INSERT INTO "public"."Sys_Region" VALUES (309, '140923', '代縣', 140900, 3, '中國,山西省,忻州市,代縣', 113, 39, 'Daixian');
INSERT INTO "public"."Sys_Region" VALUES (310, '140924', '繁峙縣', 140900, 3, '中國,山西省,忻州市,繁峙縣', 113, 39, 'Fanshi');
INSERT INTO "public"."Sys_Region" VALUES (311, '140925', '寧武縣', 140900, 3, '中國,山西省,忻州市,寧武縣', 112, 39, 'Ningwu');
INSERT INTO "public"."Sys_Region" VALUES (312, '140926', '靜樂縣', 140900, 3, '中國,山西省,忻州市,靜樂縣', 112, 38, 'Jingle');
INSERT INTO "public"."Sys_Region" VALUES (313, '140927', '神池縣', 140900, 3, '中國,山西省,忻州市,神池縣', 112, 39, 'Shenchi');
INSERT INTO "public"."Sys_Region" VALUES (314, '140928', '五寨縣', 140900, 3, '中國,山西省,忻州市,五寨縣', 112, 39, 'Wuzhai');
INSERT INTO "public"."Sys_Region" VALUES (315, '140929', '岢嵐縣', 140900, 3, '中國,山西省,忻州市,岢嵐縣', 112, 39, 'Kelan');
INSERT INTO "public"."Sys_Region" VALUES (316, '140930', '河曲縣', 140900, 3, '中國,山西省,忻州市,河曲縣', 111, 39, 'Hequ');
INSERT INTO "public"."Sys_Region" VALUES (317, '140931', '保德縣', 140900, 3, '中國,山西省,忻州市,保德縣', 111, 39, 'Baode');
INSERT INTO "public"."Sys_Region" VALUES (318, '140932', '偏關縣', 140900, 3, '中國,山西省,忻州市,偏關縣', 112, 39, 'Pianguan');
INSERT INTO "public"."Sys_Region" VALUES (319, '140981', '原平市', 140900, 3, '中國,山西省,忻州市,原平市', 113, 39, 'Yuanping');
INSERT INTO "public"."Sys_Region" VALUES (320, '141000', '臨汾市', 140000, 2, '中國,山西省,臨汾市', 112, 36, 'Linfen');
INSERT INTO "public"."Sys_Region" VALUES (321, '141002', '堯都區', 141000, 3, '中國,山西省,臨汾市,堯都區', 112, 36, 'Yaodu');
INSERT INTO "public"."Sys_Region" VALUES (322, '141021', '曲沃縣', 141000, 3, '中國,山西省,臨汾市,曲沃縣', 111, 36, 'Quwo');
INSERT INTO "public"."Sys_Region" VALUES (323, '141022', '翼城縣', 141000, 3, '中國,山西省,臨汾市,翼城縣', 112, 36, 'Yicheng');
INSERT INTO "public"."Sys_Region" VALUES (324, '141023', '襄汾縣', 141000, 3, '中國,山西省,臨汾市,襄汾縣', 111, 36, 'Xiangfen');
INSERT INTO "public"."Sys_Region" VALUES (325, '141024', '洪洞縣', 141000, 3, '中國,山西省,臨汾市,洪洞縣', 112, 36, 'Hongtong');
INSERT INTO "public"."Sys_Region" VALUES (326, '141025', '古縣', 141000, 3, '中國,山西省,臨汾市,古縣', 112, 36, 'Guxian');
INSERT INTO "public"."Sys_Region" VALUES (327, '141026', '安澤縣', 141000, 3, '中國,山西省,臨汾市,安澤縣', 112, 36, 'Anze');
INSERT INTO "public"."Sys_Region" VALUES (328, '141027', '浮山縣', 141000, 3, '中國,山西省,臨汾市,浮山縣', 112, 36, 'Fushan');
INSERT INTO "public"."Sys_Region" VALUES (329, '141028', '吉縣', 141000, 3, '中國,山西省,臨汾市,吉縣', 111, 36, 'Jixian');
INSERT INTO "public"."Sys_Region" VALUES (330, '141029', '鄉寧縣', 141000, 3, '中國,山西省,臨汾市,鄉寧縣', 111, 36, 'Xiangning');
INSERT INTO "public"."Sys_Region" VALUES (331, '141030', '大寧縣', 141000, 3, '中國,山西省,臨汾市,大寧縣', 111, 36, 'Daning');
INSERT INTO "public"."Sys_Region" VALUES (332, '141031', '隰縣', 141000, 3, '中國,山西省,臨汾市,隰縣', 111, 37, 'Xixian');
INSERT INTO "public"."Sys_Region" VALUES (333, '141032', '永和縣', 141000, 3, '中國,山西省,臨汾市,永和縣', 111, 37, 'Yonghe');
INSERT INTO "public"."Sys_Region" VALUES (334, '141033', '蒲縣', 141000, 3, '中國,山西省,臨汾市,蒲縣', 111, 36, 'Puxian');
INSERT INTO "public"."Sys_Region" VALUES (335, '141034', '汾西縣', 141000, 3, '中國,山西省,臨汾市,汾西縣', 112, 37, 'Fenxi');
INSERT INTO "public"."Sys_Region" VALUES (336, '141081', '侯馬市', 141000, 3, '中國,山西省,臨汾市,侯馬市', 111, 36, 'Houma');
INSERT INTO "public"."Sys_Region" VALUES (337, '141082', '霍州市', 141000, 3, '中國,山西省,臨汾市,霍州市', 112, 37, 'Huozhou');
INSERT INTO "public"."Sys_Region" VALUES (338, '141100', '呂梁市', 140000, 2, '中國,山西省,呂梁市', 111, 38, 'Lvliang');
INSERT INTO "public"."Sys_Region" VALUES (339, '141102', '離石區', 141100, 3, '中國,山西省,呂梁市,離石區', 111, 38, 'Lishi');
INSERT INTO "public"."Sys_Region" VALUES (340, '141121', '文水縣', 141100, 3, '中國,山西省,呂梁市,文水縣', 112, 37, 'Wenshui');
INSERT INTO "public"."Sys_Region" VALUES (341, '141122', '交城縣', 141100, 3, '中國,山西省,呂梁市,交城縣', 112, 38, 'Jiaocheng');
INSERT INTO "public"."Sys_Region" VALUES (342, '141123', '興縣', 141100, 3, '中國,山西省,呂梁市,興縣', 111, 38, 'Xingxian');
INSERT INTO "public"."Sys_Region" VALUES (343, '141124', '臨縣', 141100, 3, '中國,山西省,呂梁市,臨縣', 111, 38, 'Linxian');
INSERT INTO "public"."Sys_Region" VALUES (344, '141125', '柳林縣', 141100, 3, '中國,山西省,呂梁市,柳林縣', 111, 37, 'Liulin');
INSERT INTO "public"."Sys_Region" VALUES (345, '141126', '石樓縣', 141100, 3, '中國,山西省,呂梁市,石樓縣', 111, 37, 'Shilou');
INSERT INTO "public"."Sys_Region" VALUES (346, '141127', '嵐縣', 141100, 3, '中國,山西省,呂梁市,嵐縣', 112, 38, 'Lanxian');
INSERT INTO "public"."Sys_Region" VALUES (347, '141128', '方山縣', 141100, 3, '中國,山西省,呂梁市,方山縣', 111, 38, 'Fangshan');
INSERT INTO "public"."Sys_Region" VALUES (348, '141129', '中陽縣', 141100, 3, '中國,山西省,呂梁市,中陽縣', 111, 37, 'Zhongyang');
INSERT INTO "public"."Sys_Region" VALUES (349, '141130', '交口縣', 141100, 3, '中國,山西省,呂梁市,交口縣', 111, 37, 'Jiaokou');
INSERT INTO "public"."Sys_Region" VALUES (350, '141181', '孝義市', 141100, 3, '中國,山西省,呂梁市,孝義市', 112, 37, 'Xiaoyi');
INSERT INTO "public"."Sys_Region" VALUES (351, '141182', '汾陽市', 141100, 3, '中國,山西省,呂梁市,汾陽市', 112, 37, 'Fenyang');
INSERT INTO "public"."Sys_Region" VALUES (352, '150000', '內蒙古自治區', 100000, 1, '中國,內蒙古自治區', 112, 41, 'Inner Mongolia');
INSERT INTO "public"."Sys_Region" VALUES (353, '150100', '呼和浩特市', 150000, 2, '中國,內蒙古自治區,呼和浩特市', 112, 41, 'Hohhot');
INSERT INTO "public"."Sys_Region" VALUES (354, '150102', '新城區', 150100, 3, '中國,內蒙古自治區,呼和浩特市,新城區', 112, 41, 'Xincheng');
INSERT INTO "public"."Sys_Region" VALUES (355, '150103', '回民區', 150100, 3, '中國,內蒙古自治區,呼和浩特市,回民區', 112, 41, 'Huimin');
INSERT INTO "public"."Sys_Region" VALUES (356, '150104', '玉泉區', 150100, 3, '中國,內蒙古自治區,呼和浩特市,玉泉區', 112, 41, 'Yuquan');
INSERT INTO "public"."Sys_Region" VALUES (357, '150105', '賽罕區', 150100, 3, '中國,內蒙古自治區,呼和浩特市,賽罕區', 112, 41, 'Saihan');
INSERT INTO "public"."Sys_Region" VALUES (358, '150121', '土默特左旗', 150100, 3, '中國,內蒙古自治區,呼和浩特市,土默特左旗', 111, 41, 'Tumotezuoqi');
INSERT INTO "public"."Sys_Region" VALUES (359, '150122', '托克托縣', 150100, 3, '中國,內蒙古自治區,呼和浩特市,托克托縣', 111, 40, 'Tuoketuo');
INSERT INTO "public"."Sys_Region" VALUES (360, '150123', '和林格爾縣', 150100, 3, '中國,內蒙古自治區,呼和浩特市,和林格爾縣', 112, 40, 'Helingeer');
INSERT INTO "public"."Sys_Region" VALUES (361, '150124', '清水河縣', 150100, 3, '中國,內蒙古自治區,呼和浩特市,清水河縣', 112, 40, 'Qingshuihe');
INSERT INTO "public"."Sys_Region" VALUES (362, '150125', '武川縣', 150100, 3, '中國,內蒙古自治區,呼和浩特市,武川縣', 111, 41, 'Wuchuan');
INSERT INTO "public"."Sys_Region" VALUES (363, '150200', '包頭市', 150000, 2, '中國,內蒙古自治區,包頭市', 110, 41, 'Baotou');
INSERT INTO "public"."Sys_Region" VALUES (364, '150202', '東河區', 150200, 3, '中國,內蒙古自治區,包頭市,東河區', 110, 41, 'Donghe');
INSERT INTO "public"."Sys_Region" VALUES (365, '150203', '昆都侖區', 150200, 3, '中國,內蒙古自治區,包頭市,昆都侖區', 110, 41, 'Kundulun');
INSERT INTO "public"."Sys_Region" VALUES (366, '150204', '青山區', 150200, 3, '中國,內蒙古自治區,包頭市,青山區', 110, 41, 'Qingshan');
INSERT INTO "public"."Sys_Region" VALUES (367, '150205', '石拐區', 150200, 3, '中國,內蒙古自治區,包頭市,石拐區', 110, 41, 'Shiguai');
INSERT INTO "public"."Sys_Region" VALUES (368, '150206', '白云鄂博礦區', 150200, 3, '中國,內蒙古自治區,包頭市,白云鄂博礦區', 110, 42, 'Baiyunebokuangqu');
INSERT INTO "public"."Sys_Region" VALUES (369, '150207', '九原區', 150200, 3, '中國,內蒙古自治區,包頭市,九原區', 110, 41, 'Jiuyuan');
INSERT INTO "public"."Sys_Region" VALUES (370, '150221', '土默特右旗', 150200, 3, '中國,內蒙古自治區,包頭市,土默特右旗', 111, 41, 'Tumoteyouqi');
INSERT INTO "public"."Sys_Region" VALUES (371, '150222', '固陽縣', 150200, 3, '中國,內蒙古自治區,包頭市,固陽縣', 110, 41, 'Guyang');
INSERT INTO "public"."Sys_Region" VALUES (372, '150223', '達爾罕茂明安聯合旗', 150200, 3, '中國,內蒙古自治區,包頭市,達爾罕茂明安聯合旗', 110, 42, 'Damaoqi');
INSERT INTO "public"."Sys_Region" VALUES (373, '150300', '烏海市', 150000, 2, '中國,內蒙古自治區,烏海市', 107, 40, 'Wuhai');
INSERT INTO "public"."Sys_Region" VALUES (374, '150302', '海勃灣區', 150300, 3, '中國,內蒙古自治區,烏海市,海勃灣區', 107, 40, 'Haibowan');
INSERT INTO "public"."Sys_Region" VALUES (375, '150303', '海南區', 150300, 3, '中國,內蒙古自治區,烏海市,海南區', 107, 39, 'Hainan');
INSERT INTO "public"."Sys_Region" VALUES (376, '150304', '烏達區', 150300, 3, '中國,內蒙古自治區,烏海市,烏達區', 107, 40, 'Wuda');
INSERT INTO "public"."Sys_Region" VALUES (377, '150400', '赤峰市', 150000, 2, '中國,內蒙古自治區,赤峰市', 119, 42, 'Chifeng');
INSERT INTO "public"."Sys_Region" VALUES (378, '150402', '紅山區', 150400, 3, '中國,內蒙古自治區,赤峰市,紅山區', 119, 42, 'Hongshan');
INSERT INTO "public"."Sys_Region" VALUES (379, '150403', '元寶山區', 150400, 3, '中國,內蒙古自治區,赤峰市,元寶山區', 119, 42, 'Yuanbaoshan');
INSERT INTO "public"."Sys_Region" VALUES (380, '150404', '松山區', 150400, 3, '中國,內蒙古自治區,赤峰市,松山區', 119, 42, 'Songshan');
INSERT INTO "public"."Sys_Region" VALUES (381, '150421', '阿魯科爾沁旗', 150400, 3, '中國,內蒙古自治區,赤峰市,阿魯科爾沁旗', 120, 44, 'Alukeerqinqi');
INSERT INTO "public"."Sys_Region" VALUES (382, '150422', '巴林左旗', 150400, 3, '中國,內蒙古自治區,赤峰市,巴林左旗', 119, 44, 'Balinzuoqi');
INSERT INTO "public"."Sys_Region" VALUES (383, '150423', '巴林右旗', 150400, 3, '中國,內蒙古自治區,赤峰市,巴林右旗', 119, 44, 'Balinyouqi');
INSERT INTO "public"."Sys_Region" VALUES (384, '150424', '林西縣', 150400, 3, '中國,內蒙古自治區,赤峰市,林西縣', 118, 44, 'Linxi');
INSERT INTO "public"."Sys_Region" VALUES (385, '150425', '克什克騰旗', 150400, 3, '中國,內蒙古自治區,赤峰市,克什克騰旗', 118, 43, 'Keshiketengqi');
INSERT INTO "public"."Sys_Region" VALUES (386, '150426', '翁牛特旗', 150400, 3, '中國,內蒙古自治區,赤峰市,翁牛特旗', 119, 43, 'Wengniuteqi');
INSERT INTO "public"."Sys_Region" VALUES (387, '150428', '喀喇沁旗', 150400, 3, '中國,內蒙古自治區,赤峰市,喀喇沁旗', 119, 42, 'Kalaqinqi');
INSERT INTO "public"."Sys_Region" VALUES (388, '150429', '寧城縣', 150400, 3, '中國,內蒙古自治區,赤峰市,寧城縣', 119, 42, 'Ningcheng');
INSERT INTO "public"."Sys_Region" VALUES (389, '150430', '敖漢旗', 150400, 3, '中國,內蒙古自治區,赤峰市,敖漢旗', 120, 42, 'Aohanqi');
INSERT INTO "public"."Sys_Region" VALUES (390, '150500', '通遼市', 150000, 2, '中國,內蒙古自治區,通遼市', 122, 44, 'Tongliao');
INSERT INTO "public"."Sys_Region" VALUES (391, '150502', '科爾沁區', 150500, 3, '中國,內蒙古自治區,通遼市,科爾沁區', 122, 44, 'Keerqin');
INSERT INTO "public"."Sys_Region" VALUES (392, '150521', '科爾沁左翼中旗', 150500, 3, '中國,內蒙古自治區,通遼市,科爾沁左翼中旗', 123, 44, 'Keerqinzuoyizhongqi');
INSERT INTO "public"."Sys_Region" VALUES (393, '150522', '科爾沁左翼后旗', 150500, 3, '中國,內蒙古自治區,通遼市,科爾沁左翼后旗', 122, 43, 'Keerqinzuoyihouqi');
INSERT INTO "public"."Sys_Region" VALUES (394, '150523', '開魯縣', 150500, 3, '中國,內蒙古自治區,通遼市,開魯縣', 121, 44, 'Kailu');
INSERT INTO "public"."Sys_Region" VALUES (395, '150524', '庫倫旗', 150500, 3, '中國,內蒙古自治區,通遼市,庫倫旗', 122, 43, 'Kulunqi');
INSERT INTO "public"."Sys_Region" VALUES (396, '150525', '奈曼旗', 150500, 3, '中國,內蒙古自治區,通遼市,奈曼旗', 121, 43, 'Naimanqi');
INSERT INTO "public"."Sys_Region" VALUES (397, '150526', '扎魯特旗', 150500, 3, '中國,內蒙古自治區,通遼市,扎魯特旗', 121, 45, 'Zhaluteqi');
INSERT INTO "public"."Sys_Region" VALUES (398, '150581', '霍林郭勒市', 150500, 3, '中國,內蒙古自治區,通遼市,霍林郭勒市', 120, 46, 'Huolinguole');
INSERT INTO "public"."Sys_Region" VALUES (399, '150600', '鄂爾多斯市', 150000, 2, '中國,內蒙古自治區,鄂爾多斯市', 110, 40, 'Ordos');
INSERT INTO "public"."Sys_Region" VALUES (400, '150602', '東勝區', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,東勝區', 110, 40, 'Dongsheng');
INSERT INTO "public"."Sys_Region" VALUES (401, '150621', '達拉特旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,達拉特旗', 110, 40, 'Dalateqi');
INSERT INTO "public"."Sys_Region" VALUES (402, '150622', '準格爾旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,準格爾旗', 111, 40, 'Zhungeerqi');
INSERT INTO "public"."Sys_Region" VALUES (403, '150623', '鄂托克前旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,鄂托克前旗', 107, 38, 'Etuokeqianqi');
INSERT INTO "public"."Sys_Region" VALUES (404, '150624', '鄂托克旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,鄂托克旗', 108, 39, 'Etuokeqi');
INSERT INTO "public"."Sys_Region" VALUES (405, '150625', '杭錦旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,杭錦旗', 109, 40, 'Hangjinqi');
INSERT INTO "public"."Sys_Region" VALUES (406, '150626', '烏審旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,烏審旗', 109, 39, 'Wushenqi');
INSERT INTO "public"."Sys_Region" VALUES (407, '150627', '伊金霍洛旗', 150600, 3, '中國,內蒙古自治區,鄂爾多斯市,伊金霍洛旗', 110, 40, 'Yijinhuoluoqi');
INSERT INTO "public"."Sys_Region" VALUES (408, '150700', '呼倫貝爾市', 150000, 2, '中國,內蒙古自治區,呼倫貝爾市', 120, 49, 'Hulunber');
INSERT INTO "public"."Sys_Region" VALUES (409, '150702', '海拉爾區', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,海拉爾區', 120, 49, 'Hailaer');
INSERT INTO "public"."Sys_Region" VALUES (410, '150703', '扎賚諾爾區', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,扎賚諾爾區', 118, 49, 'Zhalainuoer');
INSERT INTO "public"."Sys_Region" VALUES (411, '150721', '阿榮旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,阿榮旗', 123, 48, 'Arongqi');
INSERT INTO "public"."Sys_Region" VALUES (412, '150722', '莫力達瓦達斡爾族自治旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,莫力達瓦達斡爾族自治旗', 125, 48, 'Moqi');
INSERT INTO "public"."Sys_Region" VALUES (413, '150723', '鄂倫春自治旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,鄂倫春自治旗', 124, 51, 'Elunchun');
INSERT INTO "public"."Sys_Region" VALUES (414, '150724', '鄂溫克族自治旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,鄂溫克族自治旗', 120, 49, 'Ewen');
INSERT INTO "public"."Sys_Region" VALUES (415, '150725', '陳巴爾虎旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,陳巴爾虎旗', 119, 49, 'Chenbaerhuqi');
INSERT INTO "public"."Sys_Region" VALUES (416, '150726', '新巴爾虎左旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,新巴爾虎左旗', 118, 48, 'Xinbaerhuzuoqi');
INSERT INTO "public"."Sys_Region" VALUES (417, '150727', '新巴爾虎右旗', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,新巴爾虎右旗', 117, 49, 'Xinbaerhuyouqi');
INSERT INTO "public"."Sys_Region" VALUES (418, '150781', '滿洲里市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,滿洲里市', 117, 50, 'Manzhouli');
INSERT INTO "public"."Sys_Region" VALUES (419, '150782', '牙克石市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,牙克石市', 121, 49, 'Yakeshi');
INSERT INTO "public"."Sys_Region" VALUES (420, '150783', '扎蘭屯市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,扎蘭屯市', 123, 48, 'Zhalantun');
INSERT INTO "public"."Sys_Region" VALUES (421, '150784', '額爾古納市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,額爾古納市', 120, 50, 'Eerguna');
INSERT INTO "public"."Sys_Region" VALUES (422, '150785', '根河市', 150700, 3, '中國,內蒙古自治區,呼倫貝爾市,根河市', 122, 51, 'Genhe');
INSERT INTO "public"."Sys_Region" VALUES (423, '150800', '巴彥淖爾市', 150000, 2, '中國,內蒙古自治區,巴彥淖爾市', 107, 41, 'Bayan Nur');
INSERT INTO "public"."Sys_Region" VALUES (424, '150802', '臨河區', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,臨河區', 107, 41, 'Linhe');
INSERT INTO "public"."Sys_Region" VALUES (425, '150821', '五原縣', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,五原縣', 108, 41, 'Wuyuan');
INSERT INTO "public"."Sys_Region" VALUES (426, '150822', '磴口縣', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,磴口縣', 107, 40, 'Dengkou');
INSERT INTO "public"."Sys_Region" VALUES (427, '150823', '烏拉特前旗', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,烏拉特前旗', 109, 41, 'Wulateqianqi');
INSERT INTO "public"."Sys_Region" VALUES (428, '150824', '烏拉特中旗', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,烏拉特中旗', 109, 42, 'Wulatezhongqi');
INSERT INTO "public"."Sys_Region" VALUES (429, '150825', '烏拉特后旗', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,烏拉特后旗', 107, 41, 'Wulatehouqi');
INSERT INTO "public"."Sys_Region" VALUES (430, '150826', '杭錦后旗', 150800, 3, '中國,內蒙古自治區,巴彥淖爾市,杭錦后旗', 107, 41, 'Hangjinhouqi');
INSERT INTO "public"."Sys_Region" VALUES (431, '150900', '烏蘭察布市', 150000, 2, '中國,內蒙古自治區,烏蘭察布市', 113, 41, 'Ulanqab');
INSERT INTO "public"."Sys_Region" VALUES (432, '150902', '集寧區', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,集寧區', 113, 41, 'Jining');
INSERT INTO "public"."Sys_Region" VALUES (433, '150921', '卓資縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,卓資縣', 113, 41, 'Zhuozi');
INSERT INTO "public"."Sys_Region" VALUES (434, '150922', '化德縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,化德縣', 114, 42, 'Huade');
INSERT INTO "public"."Sys_Region" VALUES (435, '150923', '商都縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,商都縣', 114, 42, 'Shangdu');
INSERT INTO "public"."Sys_Region" VALUES (436, '150924', '興和縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,興和縣', 114, 41, 'Xinghe');
INSERT INTO "public"."Sys_Region" VALUES (437, '150925', '涼城縣', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,涼城縣', 112, 41, 'Liangcheng');
INSERT INTO "public"."Sys_Region" VALUES (438, '150926', '察哈爾右翼前旗', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,察哈爾右翼前旗', 113, 41, 'Chayouqianqi');
INSERT INTO "public"."Sys_Region" VALUES (439, '150927', '察哈爾右翼中旗', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,察哈爾右翼中旗', 113, 41, 'Chayouzhongqi');
INSERT INTO "public"."Sys_Region" VALUES (440, '150928', '察哈爾右翼后旗', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,察哈爾右翼后旗', 113, 41, 'Chayouhouqi');
INSERT INTO "public"."Sys_Region" VALUES (441, '150929', '四子王旗', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,四子王旗', 112, 42, 'Siziwangqi');
INSERT INTO "public"."Sys_Region" VALUES (442, '150981', '豐鎮市', 150900, 3, '中國,內蒙古自治區,烏蘭察布市,豐鎮市', 113, 40, 'Fengzhen');
INSERT INTO "public"."Sys_Region" VALUES (443, '152200', '興安盟', 150000, 2, '中國,內蒙古自治區,興安盟', 122, 46, 'Hinggan');
INSERT INTO "public"."Sys_Region" VALUES (444, '152201', '烏蘭浩特市', 152200, 3, '中國,內蒙古自治區,興安盟,烏蘭浩特市', 122, 46, 'Wulanhaote');
INSERT INTO "public"."Sys_Region" VALUES (445, '152202', '阿爾山市', 152200, 3, '中國,內蒙古自治區,興安盟,阿爾山市', 120, 47, 'Aershan');
INSERT INTO "public"."Sys_Region" VALUES (446, '152221', '科爾沁右翼前旗', 152200, 3, '中國,內蒙古自治區,興安盟,科爾沁右翼前旗', 122, 46, 'Keyouqianqi');
INSERT INTO "public"."Sys_Region" VALUES (447, '152222', '科爾沁右翼中旗', 152200, 3, '中國,內蒙古自治區,興安盟,科爾沁右翼中旗', 121, 45, 'Keyouzhongqi');
INSERT INTO "public"."Sys_Region" VALUES (448, '152223', '扎賚特旗', 152200, 3, '中國,內蒙古自治區,興安盟,扎賚特旗', 123, 47, 'Zhalaiteqi');
INSERT INTO "public"."Sys_Region" VALUES (449, '152224', '突泉縣', 152200, 3, '中國,內蒙古自治區,興安盟,突泉縣', 122, 45, 'Tuquan');
INSERT INTO "public"."Sys_Region" VALUES (450, '152500', '錫林郭勒盟', 150000, 2, '中國,內蒙古自治區,錫林郭勒盟', 116, 44, 'Xilin Gol');
INSERT INTO "public"."Sys_Region" VALUES (451, '152501', '二連浩特市', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,二連浩特市', 112, 44, 'Erlianhaote');
INSERT INTO "public"."Sys_Region" VALUES (452, '152502', '錫林浩特市', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,錫林浩特市', 116, 44, 'Xilinhaote');
INSERT INTO "public"."Sys_Region" VALUES (453, '152522', '阿巴嘎旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,阿巴嘎旗', 115, 44, 'Abagaqi');
INSERT INTO "public"."Sys_Region" VALUES (454, '152523', '蘇尼特左旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,蘇尼特左旗', 114, 44, 'Sunitezuoqi');
INSERT INTO "public"."Sys_Region" VALUES (455, '152524', '蘇尼特右旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,蘇尼特右旗', 113, 43, 'Suniteyouqi');
INSERT INTO "public"."Sys_Region" VALUES (456, '152525', '東烏珠穆沁旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,東烏珠穆沁旗', 117, 46, 'Dongwuqi');
INSERT INTO "public"."Sys_Region" VALUES (457, '152526', '西烏珠穆沁旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,西烏珠穆沁旗', 118, 45, 'Xiwuqi');
INSERT INTO "public"."Sys_Region" VALUES (458, '152527', '太仆寺旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,太仆寺旗', 115, 42, 'Taipusiqi');
INSERT INTO "public"."Sys_Region" VALUES (459, '152528', '鑲黃旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,鑲黃旗', 114, 42, 'Xianghuangqi');
INSERT INTO "public"."Sys_Region" VALUES (460, '152529', '正鑲白旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,正鑲白旗', 115, 42, 'Zhengxiangbaiqi');
INSERT INTO "public"."Sys_Region" VALUES (461, '152530', '正藍旗', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,正藍旗', 116, 42, 'Zhenglanqi');
INSERT INTO "public"."Sys_Region" VALUES (462, '152531', '多倫縣', 152500, 3, '中國,內蒙古自治區,錫林郭勒盟,多倫縣', 116, 42, 'Duolun');
INSERT INTO "public"."Sys_Region" VALUES (463, '152900', '阿拉善盟', 150000, 2, '中國,內蒙古自治區,阿拉善盟', 106, 39, 'Alxa');
INSERT INTO "public"."Sys_Region" VALUES (464, '152921', '阿拉善左旗', 152900, 3, '中國,內蒙古自治區,阿拉善盟,阿拉善左旗', 106, 39, 'Alashanzuoqi');
INSERT INTO "public"."Sys_Region" VALUES (465, '152922', '阿拉善右旗', 152900, 3, '中國,內蒙古自治區,阿拉善盟,阿拉善右旗', 102, 39, 'Alashanyouqi');
INSERT INTO "public"."Sys_Region" VALUES (466, '152923', '額濟納旗', 152900, 3, '中國,內蒙古自治區,阿拉善盟,額濟納旗', 101, 42, 'Ejinaqi');
INSERT INTO "public"."Sys_Region" VALUES (467, '210000', '遼寧省', 100000, 1, '中國,遼寧省', 123, 42, 'Liaoning');
INSERT INTO "public"."Sys_Region" VALUES (468, '210100', '沈陽市', 210000, 2, '中國,遼寧省,沈陽市', 123, 42, 'Shenyang');
INSERT INTO "public"."Sys_Region" VALUES (469, '210102', '和平區', 210100, 3, '中國,遼寧省,沈陽市,和平區', 123, 42, 'Heping');
INSERT INTO "public"."Sys_Region" VALUES (470, '210103', '沈河區', 210100, 3, '中國,遼寧省,沈陽市,沈河區', 123, 42, 'Shenhe');
INSERT INTO "public"."Sys_Region" VALUES (471, '210104', '大東區', 210100, 3, '中國,遼寧省,沈陽市,大東區', 123, 42, 'Dadong');
INSERT INTO "public"."Sys_Region" VALUES (472, '210105', '皇姑區', 210100, 3, '中國,遼寧省,沈陽市,皇姑區', 123, 42, 'Huanggu');
INSERT INTO "public"."Sys_Region" VALUES (473, '210106', '鐵西區', 210100, 3, '中國,遼寧省,沈陽市,鐵西區', 123, 42, 'Tiexi');
INSERT INTO "public"."Sys_Region" VALUES (474, '210111', '蘇家屯區', 210100, 3, '中國,遼寧省,沈陽市,蘇家屯區', 123, 42, 'Sujiatun');
INSERT INTO "public"."Sys_Region" VALUES (475, '210112', '渾南區', 210100, 3, '中國,遼寧省,沈陽市,渾南區', 123, 42, 'Hunnan');
INSERT INTO "public"."Sys_Region" VALUES (476, '210113', '沈北新區', 210100, 3, '中國,遼寧省,沈陽市,沈北新區', 124, 42, 'Shenbeixinqu');
INSERT INTO "public"."Sys_Region" VALUES (477, '210114', '于洪區', 210100, 3, '中國,遼寧省,沈陽市,于洪區', 123, 42, 'Yuhong');
INSERT INTO "public"."Sys_Region" VALUES (478, '210122', '遼中縣', 210100, 3, '中國,遼寧省,沈陽市,遼中縣', 123, 42, 'Liaozhong');
INSERT INTO "public"."Sys_Region" VALUES (479, '210123', '康平縣', 210100, 3, '中國,遼寧省,沈陽市,康平縣', 123, 43, 'Kangping');
INSERT INTO "public"."Sys_Region" VALUES (480, '210124', '法庫縣', 210100, 3, '中國,遼寧省,沈陽市,法庫縣', 123, 43, 'Faku');
INSERT INTO "public"."Sys_Region" VALUES (481, '210181', '新民市', 210100, 3, '中國,遼寧省,沈陽市,新民市', 123, 42, 'Xinmin');
INSERT INTO "public"."Sys_Region" VALUES (482, '210200', '大連市', 210000, 2, '中國,遼寧省,大連市', 122, 39, 'Dalian');
INSERT INTO "public"."Sys_Region" VALUES (483, '210202', '中山區', 210200, 3, '中國,遼寧省,大連市,中山區', 122, 39, 'Zhongshan');
INSERT INTO "public"."Sys_Region" VALUES (484, '210203', '西崗區', 210200, 3, '中國,遼寧省,大連市,西崗區', 122, 39, 'Xigang');
INSERT INTO "public"."Sys_Region" VALUES (485, '210204', '沙河口區', 210200, 3, '中國,遼寧省,大連市,沙河口區', 122, 39, 'Shahekou');
INSERT INTO "public"."Sys_Region" VALUES (486, '210211', '甘井子區', 210200, 3, '中國,遼寧省,大連市,甘井子區', 122, 39, 'Ganjingzi');
INSERT INTO "public"."Sys_Region" VALUES (487, '210212', '旅順口區', 210200, 3, '中國,遼寧省,大連市,旅順口區', 121, 39, 'Lvshunkou');
INSERT INTO "public"."Sys_Region" VALUES (488, '210213', '金州區', 210200, 3, '中國,遼寧省,大連市,金州區', 122, 39, 'Jinzhou');
INSERT INTO "public"."Sys_Region" VALUES (489, '210224', '長海縣', 210200, 3, '中國,遼寧省,大連市,長海縣', 123, 39, 'Changhai');
INSERT INTO "public"."Sys_Region" VALUES (490, '210281', '瓦房店市', 210200, 3, '中國,遼寧省,大連市,瓦房店市', 122, 40, 'Wafangdian');
INSERT INTO "public"."Sys_Region" VALUES (491, '210282', '普蘭店市', 210200, 3, '中國,遼寧省,大連市,普蘭店市', 122, 39, 'Pulandian');
INSERT INTO "public"."Sys_Region" VALUES (492, '210283', '莊河市', 210200, 3, '中國,遼寧省,大連市,莊河市', 123, 40, 'Zhuanghe');
INSERT INTO "public"."Sys_Region" VALUES (493, '210300', '鞍山市', 210000, 2, '中國,遼寧省,鞍山市', 123, 41, 'Anshan');
INSERT INTO "public"."Sys_Region" VALUES (494, '210302', '鐵東區', 210300, 3, '中國,遼寧省,鞍山市,鐵東區', 123, 41, 'Tiedong');
INSERT INTO "public"."Sys_Region" VALUES (495, '210303', '鐵西區', 210300, 3, '中國,遼寧省,鞍山市,鐵西區', 123, 41, 'Tiexi');
INSERT INTO "public"."Sys_Region" VALUES (496, '210304', '立山區', 210300, 3, '中國,遼寧省,鞍山市,立山區', 123, 41, 'Lishan');
INSERT INTO "public"."Sys_Region" VALUES (497, '210311', '千山區', 210300, 3, '中國,遼寧省,鞍山市,千山區', 123, 41, 'Qianshan');
INSERT INTO "public"."Sys_Region" VALUES (498, '210321', '臺安縣', 210300, 3, '中國,遼寧省,鞍山市,臺安縣', 122, 41, 'Taian');
INSERT INTO "public"."Sys_Region" VALUES (499, '210323', '岫巖滿族自治縣', 210300, 3, '中國,遼寧省,鞍山市,岫巖滿族自治縣', 123, 40, 'Xiuyan');
INSERT INTO "public"."Sys_Region" VALUES (500, '210381', '海城市', 210300, 3, '中國,遼寧省,鞍山市,海城市', 123, 41, 'Haicheng');
INSERT INTO "public"."Sys_Region" VALUES (501, '210400', '撫順市', 210000, 2, '中國,遼寧省,撫順市', 124, 42, 'Fushun');
INSERT INTO "public"."Sys_Region" VALUES (502, '210402', '新撫區', 210400, 3, '中國,遼寧省,撫順市,新撫區', 124, 42, 'Xinfu');
INSERT INTO "public"."Sys_Region" VALUES (503, '210403', '東洲區', 210400, 3, '中國,遼寧省,撫順市,東洲區', 124, 42, 'Dongzhou');
INSERT INTO "public"."Sys_Region" VALUES (504, '210404', '望花區', 210400, 3, '中國,遼寧省,撫順市,望花區', 124, 42, 'Wanghua');
INSERT INTO "public"."Sys_Region" VALUES (505, '210411', '順城區', 210400, 3, '中國,遼寧省,撫順市,順城區', 124, 42, 'Shuncheng');
INSERT INTO "public"."Sys_Region" VALUES (506, '210421', '撫順縣', 210400, 3, '中國,遼寧省,撫順市,撫順縣', 124, 42, 'Fushun');
INSERT INTO "public"."Sys_Region" VALUES (507, '210422', '新賓滿族自治縣', 210400, 3, '中國,遼寧省,撫順市,新賓滿族自治縣', 125, 42, 'Xinbin');
INSERT INTO "public"."Sys_Region" VALUES (508, '210423', '清原滿族自治縣', 210400, 3, '中國,遼寧省,撫順市,清原滿族自治縣', 125, 42, 'Qingyuan');
INSERT INTO "public"."Sys_Region" VALUES (509, '210500', '本溪市', 210000, 2, '中國,遼寧省,本溪市', 124, 41, 'Benxi');
INSERT INTO "public"."Sys_Region" VALUES (510, '210502', '平山區', 210500, 3, '中國,遼寧省,本溪市,平山區', 124, 41, 'Pingshan');
INSERT INTO "public"."Sys_Region" VALUES (511, '210503', '溪湖區', 210500, 3, '中國,遼寧省,本溪市,溪湖區', 124, 41, 'Xihu');
INSERT INTO "public"."Sys_Region" VALUES (512, '210504', '明山區', 210500, 3, '中國,遼寧省,本溪市,明山區', 124, 41, 'Mingshan');
INSERT INTO "public"."Sys_Region" VALUES (513, '210505', '南芬區', 210500, 3, '中國,遼寧省,本溪市,南芬區', 124, 41, 'Nanfen');
INSERT INTO "public"."Sys_Region" VALUES (514, '210521', '本溪滿族自治縣', 210500, 3, '中國,遼寧省,本溪市,本溪滿族自治縣', 124, 41, 'Benxi');
INSERT INTO "public"."Sys_Region" VALUES (515, '210522', '桓仁滿族自治縣', 210500, 3, '中國,遼寧省,本溪市,桓仁滿族自治縣', 125, 41, 'Huanren');
INSERT INTO "public"."Sys_Region" VALUES (516, '210600', '丹東市', 210000, 2, '中國,遼寧省,丹東市', 124, 40, 'Dandong');
INSERT INTO "public"."Sys_Region" VALUES (517, '210602', '元寶區', 210600, 3, '中國,遼寧省,丹東市,元寶區', 124, 40, 'Yuanbao');
INSERT INTO "public"."Sys_Region" VALUES (518, '210603', '振興區', 210600, 3, '中國,遼寧省,丹東市,振興區', 124, 40, 'Zhenxing');
INSERT INTO "public"."Sys_Region" VALUES (519, '210604', '振安區', 210600, 3, '中國,遼寧省,丹東市,振安區', 124, 40, 'Zhenan');
INSERT INTO "public"."Sys_Region" VALUES (520, '210624', '寬甸滿族自治縣', 210600, 3, '中國,遼寧省,丹東市,寬甸滿族自治縣', 125, 41, 'Kuandian');
INSERT INTO "public"."Sys_Region" VALUES (521, '210681', '東港市', 210600, 3, '中國,遼寧省,丹東市,東港市', 124, 40, 'Donggang');
INSERT INTO "public"."Sys_Region" VALUES (522, '210682', '鳳城市', 210600, 3, '中國,遼寧省,丹東市,鳳城市', 124, 40, 'Fengcheng');
INSERT INTO "public"."Sys_Region" VALUES (523, '210700', '錦州市', 210000, 2, '中國,遼寧省,錦州市', 121, 41, 'Jinzhou');
INSERT INTO "public"."Sys_Region" VALUES (524, '210702', '古塔區', 210700, 3, '中國,遼寧省,錦州市,古塔區', 121, 41, 'Guta');
INSERT INTO "public"."Sys_Region" VALUES (525, '210703', '凌河區', 210700, 3, '中國,遼寧省,錦州市,凌河區', 121, 41, 'Linghe');
INSERT INTO "public"."Sys_Region" VALUES (526, '210711', '太和區', 210700, 3, '中國,遼寧省,錦州市,太和區', 121, 41, 'Taihe');
INSERT INTO "public"."Sys_Region" VALUES (527, '210726', '黑山縣', 210700, 3, '中國,遼寧省,錦州市,黑山縣', 122, 42, 'Heishan');
INSERT INTO "public"."Sys_Region" VALUES (528, '210727', '義縣', 210700, 3, '中國,遼寧省,錦州市,義縣', 121, 42, 'Yixian');
INSERT INTO "public"."Sys_Region" VALUES (529, '210781', '凌海市', 210700, 3, '中國,遼寧省,錦州市,凌海市', 121, 41, 'Linghai');
INSERT INTO "public"."Sys_Region" VALUES (530, '210782', '北鎮市', 210700, 3, '中國,遼寧省,錦州市,北鎮市', 122, 42, 'Beizhen');
INSERT INTO "public"."Sys_Region" VALUES (531, '210800', '營口市', 210000, 2, '中國,遼寧省,營口市', 122, 41, 'Yingkou');
INSERT INTO "public"."Sys_Region" VALUES (532, '210802', '站前區', 210800, 3, '中國,遼寧省,營口市,站前區', 122, 41, 'Zhanqian');
INSERT INTO "public"."Sys_Region" VALUES (533, '210803', '西市區', 210800, 3, '中國,遼寧省,營口市,西市區', 122, 41, 'Xishi');
INSERT INTO "public"."Sys_Region" VALUES (534, '210804', '鲅魚圈區', 210800, 3, '中國,遼寧省,營口市,鲅魚圈區', 122, 40, 'Bayuquan');
INSERT INTO "public"."Sys_Region" VALUES (535, '210811', '老邊區', 210800, 3, '中國,遼寧省,營口市,老邊區', 122, 41, 'Laobian');
INSERT INTO "public"."Sys_Region" VALUES (536, '210881', '蓋州市', 210800, 3, '中國,遼寧省,營口市,蓋州市', 122, 40, 'Gaizhou');
INSERT INTO "public"."Sys_Region" VALUES (537, '210882', '大石橋市', 210800, 3, '中國,遼寧省,營口市,大石橋市', 123, 41, 'Dashiqiao');
INSERT INTO "public"."Sys_Region" VALUES (538, '210900', '阜新市', 210000, 2, '中國,遼寧省,阜新市', 122, 42, 'Fuxin');
INSERT INTO "public"."Sys_Region" VALUES (539, '210902', '海州區', 210900, 3, '中國,遼寧省,阜新市,海州區', 122, 42, 'Haizhou');
INSERT INTO "public"."Sys_Region" VALUES (540, '210903', '新邱區', 210900, 3, '中國,遼寧省,阜新市,新邱區', 122, 42, 'Xinqiu');
INSERT INTO "public"."Sys_Region" VALUES (541, '210904', '太平區', 210900, 3, '中國,遼寧省,阜新市,太平區', 122, 42, 'Taiping');
INSERT INTO "public"."Sys_Region" VALUES (542, '210905', '清河門區', 210900, 3, '中國,遼寧省,阜新市,清河門區', 121, 42, 'Qinghemen');
INSERT INTO "public"."Sys_Region" VALUES (543, '210911', '細河區', 210900, 3, '中國,遼寧省,阜新市,細河區', 122, 42, 'Xihe');
INSERT INTO "public"."Sys_Region" VALUES (544, '210921', '阜新蒙古族自治縣', 210900, 3, '中國,遼寧省,阜新市,阜新蒙古族自治縣', 122, 42, 'Fuxin');
INSERT INTO "public"."Sys_Region" VALUES (545, '210922', '彰武縣', 210900, 3, '中國,遼寧省,阜新市,彰武縣', 123, 42, 'Zhangwu');
INSERT INTO "public"."Sys_Region" VALUES (546, '211000', '遼陽市', 210000, 2, '中國,遼寧省,遼陽市', 123, 41, 'Liaoyang');
INSERT INTO "public"."Sys_Region" VALUES (547, '211002', '白塔區', 211000, 3, '中國,遼寧省,遼陽市,白塔區', 123, 41, 'Baita');
INSERT INTO "public"."Sys_Region" VALUES (548, '211003', '文圣區', 211000, 3, '中國,遼寧省,遼陽市,文圣區', 123, 41, 'Wensheng');
INSERT INTO "public"."Sys_Region" VALUES (549, '211004', '宏偉區', 211000, 3, '中國,遼寧省,遼陽市,宏偉區', 123, 41, 'Hongwei');
INSERT INTO "public"."Sys_Region" VALUES (550, '211005', '弓長嶺區', 211000, 3, '中國,遼寧省,遼陽市,弓長嶺區', 123, 41, 'Gongchangling');
INSERT INTO "public"."Sys_Region" VALUES (551, '211011', '太子河區', 211000, 3, '中國,遼寧省,遼陽市,太子河區', 123, 41, 'Taizihe');
INSERT INTO "public"."Sys_Region" VALUES (552, '211021', '遼陽縣', 211000, 3, '中國,遼寧省,遼陽市,遼陽縣', 123, 41, 'Liaoyang');
INSERT INTO "public"."Sys_Region" VALUES (553, '211081', '燈塔市', 211000, 3, '中國,遼寧省,遼陽市,燈塔市', 123, 41, 'Dengta');
INSERT INTO "public"."Sys_Region" VALUES (554, '211100', '盤錦市', 210000, 2, '中國,遼寧省,盤錦市', 122, 41, 'Panjin');
INSERT INTO "public"."Sys_Region" VALUES (555, '211102', '雙臺子區', 211100, 3, '中國,遼寧省,盤錦市,雙臺子區', 122, 41, 'Shuangtaizi');
INSERT INTO "public"."Sys_Region" VALUES (556, '211103', '興隆臺區', 211100, 3, '中國,遼寧省,盤錦市,興隆臺區', 122, 41, 'Xinglongtai');
INSERT INTO "public"."Sys_Region" VALUES (557, '211121', '大洼縣', 211100, 3, '中國,遼寧省,盤錦市,大洼縣', 122, 41, 'Dawa');
INSERT INTO "public"."Sys_Region" VALUES (558, '211122', '盤山縣', 211100, 3, '中國,遼寧省,盤錦市,盤山縣', 122, 41, 'Panshan');
INSERT INTO "public"."Sys_Region" VALUES (559, '211200', '鐵嶺市', 210000, 2, '中國,遼寧省,鐵嶺市', 124, 42, 'Tieling');
INSERT INTO "public"."Sys_Region" VALUES (560, '211202', '銀州區', 211200, 3, '中國,遼寧省,鐵嶺市,銀州區', 124, 42, 'Yinzhou');
INSERT INTO "public"."Sys_Region" VALUES (561, '211204', '清河區', 211200, 3, '中國,遼寧省,鐵嶺市,清河區', 124, 43, 'Qinghe');
INSERT INTO "public"."Sys_Region" VALUES (562, '211221', '鐵嶺縣', 211200, 3, '中國,遼寧省,鐵嶺市,鐵嶺縣', 124, 42, 'Tieling');
INSERT INTO "public"."Sys_Region" VALUES (563, '211223', '西豐縣', 211200, 3, '中國,遼寧省,鐵嶺市,西豐縣', 125, 43, 'Xifeng');
INSERT INTO "public"."Sys_Region" VALUES (564, '211224', '昌圖縣', 211200, 3, '中國,遼寧省,鐵嶺市,昌圖縣', 124, 43, 'Changtu');
INSERT INTO "public"."Sys_Region" VALUES (565, '211281', '調兵山市', 211200, 3, '中國,遼寧省,鐵嶺市,調兵山市', 124, 42, 'Diaobingshan');
INSERT INTO "public"."Sys_Region" VALUES (566, '211282', '開原市', 211200, 3, '中國,遼寧省,鐵嶺市,開原市', 124, 43, 'Kaiyuan');
INSERT INTO "public"."Sys_Region" VALUES (567, '211300', '朝陽市', 210000, 2, '中國,遼寧省,朝陽市', 120, 42, 'Chaoyang');
INSERT INTO "public"."Sys_Region" VALUES (568, '211302', '雙塔區', 211300, 3, '中國,遼寧省,朝陽市,雙塔區', 120, 42, 'Shuangta');
INSERT INTO "public"."Sys_Region" VALUES (569, '211303', '龍城區', 211300, 3, '中國,遼寧省,朝陽市,龍城區', 120, 42, 'Longcheng');
INSERT INTO "public"."Sys_Region" VALUES (570, '211321', '朝陽縣', 211300, 3, '中國,遼寧省,朝陽市,朝陽縣', 120, 41, 'Chaoyang');
INSERT INTO "public"."Sys_Region" VALUES (571, '211322', '建平縣', 211300, 3, '中國,遼寧省,朝陽市,建平縣', 120, 41, 'Jianping');
INSERT INTO "public"."Sys_Region" VALUES (572, '211324', '喀喇沁左翼蒙古族自治縣', 211300, 3, '中國,遼寧省,朝陽市,喀喇沁左翼蒙古族自治縣', 120, 41, 'Kalaqinzuoyi');
INSERT INTO "public"."Sys_Region" VALUES (573, '211381', '北票市', 211300, 3, '中國,遼寧省,朝陽市,北票市', 121, 42, 'Beipiao');
INSERT INTO "public"."Sys_Region" VALUES (574, '211382', '凌源市', 211300, 3, '中國,遼寧省,朝陽市,凌源市', 119, 41, 'Lingyuan');
INSERT INTO "public"."Sys_Region" VALUES (575, '211400', '葫蘆島市', 210000, 2, '中國,遼寧省,葫蘆島市', 121, 41, 'Huludao');
INSERT INTO "public"."Sys_Region" VALUES (576, '211402', '連山區', 211400, 3, '中國,遼寧省,葫蘆島市,連山區', 121, 41, 'Lianshan');
INSERT INTO "public"."Sys_Region" VALUES (577, '211403', '龍港區', 211400, 3, '中國,遼寧省,葫蘆島市,龍港區', 121, 41, 'Longgang');
INSERT INTO "public"."Sys_Region" VALUES (578, '211404', '南票區', 211400, 3, '中國,遼寧省,葫蘆島市,南票區', 121, 41, 'Nanpiao');
INSERT INTO "public"."Sys_Region" VALUES (579, '211421', '綏中縣', 211400, 3, '中國,遼寧省,葫蘆島市,綏中縣', 120, 40, 'Suizhong');
INSERT INTO "public"."Sys_Region" VALUES (580, '211422', '建昌縣', 211400, 3, '中國,遼寧省,葫蘆島市,建昌縣', 120, 41, 'Jianchang');
INSERT INTO "public"."Sys_Region" VALUES (581, '211481', '興城市', 211400, 3, '中國,遼寧省,葫蘆島市,興城市', 121, 41, 'Xingcheng');
INSERT INTO "public"."Sys_Region" VALUES (582, '211500', '金普新區', 210000, 2, '中國,遼寧省,金普新區', 122, 39, 'Jinpuxinqu');
INSERT INTO "public"."Sys_Region" VALUES (583, '211501', '金州新區', 211500, 3, '中國,遼寧省,金普新區,金州新區', 122, 39, 'Jinzhouxinqu');
INSERT INTO "public"."Sys_Region" VALUES (584, '211502', '普灣新區', 211500, 3, '中國,遼寧省,金普新區,普灣新區', 122, 39, 'Puwanxinqu');
INSERT INTO "public"."Sys_Region" VALUES (585, '211503', '保稅區', 211500, 3, '中國,遼寧省,金普新區,保稅區', 122, 39, 'Baoshuiqu');
INSERT INTO "public"."Sys_Region" VALUES (586, '220000', '吉林省', 100000, 1, '中國,吉林省', 125, 44, 'Jilin');
INSERT INTO "public"."Sys_Region" VALUES (587, '220100', '長春市', 220000, 2, '中國,吉林省,長春市', 125, 44, 'Changchun');
INSERT INTO "public"."Sys_Region" VALUES (588, '220102', '南關區', 220100, 3, '中國,吉林省,長春市,南關區', 125, 44, 'Nanguan');
INSERT INTO "public"."Sys_Region" VALUES (589, '220103', '寬城區', 220100, 3, '中國,吉林省,長春市,寬城區', 125, 44, 'Kuancheng');
INSERT INTO "public"."Sys_Region" VALUES (590, '220104', '朝陽區', 220100, 3, '中國,吉林省,長春市,朝陽區', 125, 44, 'Chaoyang');
INSERT INTO "public"."Sys_Region" VALUES (591, '220105', '二道區', 220100, 3, '中國,吉林省,長春市,二道區', 125, 44, 'Erdao');
INSERT INTO "public"."Sys_Region" VALUES (592, '220106', '綠園區', 220100, 3, '中國,吉林省,長春市,綠園區', 125, 44, 'Lvyuan');
INSERT INTO "public"."Sys_Region" VALUES (593, '220112', '雙陽區', 220100, 3, '中國,吉林省,長春市,雙陽區', 126, 44, 'Shuangyang');
INSERT INTO "public"."Sys_Region" VALUES (594, '220113', '九臺區', 220100, 3, '中國,吉林省,長春市,九臺區', 126, 44, 'Jiutai');
INSERT INTO "public"."Sys_Region" VALUES (595, '220122', '農安縣', 220100, 3, '中國,吉林省,長春市,農安縣', 125, 44, 'Nongan');
INSERT INTO "public"."Sys_Region" VALUES (596, '220182', '榆樹市', 220100, 3, '中國,吉林省,長春市,榆樹市', 127, 45, 'Yushu');
INSERT INTO "public"."Sys_Region" VALUES (597, '220183', '德惠市', 220100, 3, '中國,吉林省,長春市,德惠市', 126, 45, 'Dehui');
INSERT INTO "public"."Sys_Region" VALUES (598, '220200', '吉林市', 220000, 2, '中國,吉林省,吉林市', 127, 44, 'Jilin');
INSERT INTO "public"."Sys_Region" VALUES (599, '220202', '昌邑區', 220200, 3, '中國,吉林省,吉林市,昌邑區', 127, 44, 'Changyi');
INSERT INTO "public"."Sys_Region" VALUES (600, '220203', '龍潭區', 220200, 3, '中國,吉林省,吉林市,龍潭區', 127, 44, 'Longtan');
INSERT INTO "public"."Sys_Region" VALUES (601, '220204', '船營區', 220200, 3, '中國,吉林省,吉林市,船營區', 127, 44, 'Chuanying');
INSERT INTO "public"."Sys_Region" VALUES (602, '220211', '豐滿區', 220200, 3, '中國,吉林省,吉林市,豐滿區', 127, 44, 'Fengman');
INSERT INTO "public"."Sys_Region" VALUES (603, '220221', '永吉縣', 220200, 3, '中國,吉林省,吉林市,永吉縣', 126, 44, 'Yongji');
INSERT INTO "public"."Sys_Region" VALUES (604, '220281', '蛟河市', 220200, 3, '中國,吉林省,吉林市,蛟河市', 127, 44, 'Jiaohe');
INSERT INTO "public"."Sys_Region" VALUES (605, '220282', '樺甸市', 220200, 3, '中國,吉林省,吉林市,樺甸市', 127, 43, 'Huadian');
INSERT INTO "public"."Sys_Region" VALUES (606, '220283', '舒蘭市', 220200, 3, '中國,吉林省,吉林市,舒蘭市', 127, 44, 'Shulan');
INSERT INTO "public"."Sys_Region" VALUES (607, '220284', '磐石市', 220200, 3, '中國,吉林省,吉林市,磐石市', 126, 43, 'Panshi');
INSERT INTO "public"."Sys_Region" VALUES (608, '220300', '四平市', 220000, 2, '中國,吉林省,四平市', 124, 43, 'Siping');
INSERT INTO "public"."Sys_Region" VALUES (609, '220302', '鐵西區', 220300, 3, '中國,吉林省,四平市,鐵西區', 124, 43, 'Tiexi');
INSERT INTO "public"."Sys_Region" VALUES (610, '220303', '鐵東區', 220300, 3, '中國,吉林省,四平市,鐵東區', 124, 43, 'Tiedong');
INSERT INTO "public"."Sys_Region" VALUES (611, '220322', '梨樹縣', 220300, 3, '中國,吉林省,四平市,梨樹縣', 124, 43, 'Lishu');
INSERT INTO "public"."Sys_Region" VALUES (612, '220323', '伊通滿族自治縣', 220300, 3, '中國,吉林省,四平市,伊通滿族自治縣', 125, 43, 'Yitong');
INSERT INTO "public"."Sys_Region" VALUES (613, '220381', '公主嶺市', 220300, 3, '中國,吉林省,四平市,公主嶺市', 125, 44, 'Gongzhuling');
INSERT INTO "public"."Sys_Region" VALUES (614, '220382', '雙遼市', 220300, 3, '中國,吉林省,四平市,雙遼市', 124, 44, 'Shuangliao');
INSERT INTO "public"."Sys_Region" VALUES (615, '220400', '遼源市', 220000, 2, '中國,吉林省,遼源市', 125, 43, 'Liaoyuan');
INSERT INTO "public"."Sys_Region" VALUES (616, '220402', '龍山區', 220400, 3, '中國,吉林省,遼源市,龍山區', 125, 43, 'Longshan');
INSERT INTO "public"."Sys_Region" VALUES (617, '220403', '西安區', 220400, 3, '中國,吉林省,遼源市,西安區', 125, 43, 'Xian');
INSERT INTO "public"."Sys_Region" VALUES (618, '220421', '東豐縣', 220400, 3, '中國,吉林省,遼源市,東豐縣', 126, 43, 'Dongfeng');
INSERT INTO "public"."Sys_Region" VALUES (619, '220422', '東遼縣', 220400, 3, '中國,吉林省,遼源市,東遼縣', 125, 43, 'Dongliao');
INSERT INTO "public"."Sys_Region" VALUES (620, '220500', '通化市', 220000, 2, '中國,吉林省,通化市', 126, 42, 'Tonghua');
INSERT INTO "public"."Sys_Region" VALUES (621, '220502', '東昌區', 220500, 3, '中國,吉林省,通化市,東昌區', 126, 42, 'Dongchang');
INSERT INTO "public"."Sys_Region" VALUES (622, '220503', '二道江區', 220500, 3, '中國,吉林省,通化市,二道江區', 126, 42, 'Erdaojiang');
INSERT INTO "public"."Sys_Region" VALUES (623, '220521', '通化縣', 220500, 3, '中國,吉林省,通化市,通化縣', 126, 42, 'Tonghua');
INSERT INTO "public"."Sys_Region" VALUES (624, '220523', '輝南縣', 220500, 3, '中國,吉林省,通化市,輝南縣', 126, 43, 'Huinan');
INSERT INTO "public"."Sys_Region" VALUES (625, '220524', '柳河縣', 220500, 3, '中國,吉林省,通化市,柳河縣', 126, 42, 'Liuhe');
INSERT INTO "public"."Sys_Region" VALUES (626, '220581', '梅河口市', 220500, 3, '中國,吉林省,通化市,梅河口市', 126, 43, 'Meihekou');
INSERT INTO "public"."Sys_Region" VALUES (627, '220582', '集安市', 220500, 3, '中國,吉林省,通化市,集安市', 126, 41, 'Jian');
INSERT INTO "public"."Sys_Region" VALUES (628, '220600', '白山市', 220000, 2, '中國,吉林省,白山市', 126, 42, 'Baishan');
INSERT INTO "public"."Sys_Region" VALUES (629, '220602', '渾江區', 220600, 3, '中國,吉林省,白山市,渾江區', 126, 42, 'Hunjiang');
INSERT INTO "public"."Sys_Region" VALUES (630, '220605', '江源區', 220600, 3, '中國,吉林省,白山市,江源區', 127, 42, 'Jiangyuan');
INSERT INTO "public"."Sys_Region" VALUES (631, '220621', '撫松縣', 220600, 3, '中國,吉林省,白山市,撫松縣', 127, 42, 'Fusong');
INSERT INTO "public"."Sys_Region" VALUES (632, '220622', '靖宇縣', 220600, 3, '中國,吉林省,白山市,靖宇縣', 127, 42, 'Jingyu');
INSERT INTO "public"."Sys_Region" VALUES (633, '220623', '長白朝鮮族自治縣', 220600, 3, '中國,吉林省,白山市,長白朝鮮族自治縣', 128, 41, 'Changbai');
INSERT INTO "public"."Sys_Region" VALUES (634, '220681', '臨江市', 220600, 3, '中國,吉林省,白山市,臨江市', 127, 42, 'Linjiang');
INSERT INTO "public"."Sys_Region" VALUES (635, '220700', '松原市', 220000, 2, '中國,吉林省,松原市', 125, 45, 'Songyuan');
INSERT INTO "public"."Sys_Region" VALUES (636, '220702', '寧江區', 220700, 3, '中國,吉林省,松原市,寧江區', 125, 45, 'Ningjiang');
INSERT INTO "public"."Sys_Region" VALUES (637, '220721', '前郭爾羅斯蒙古族自治縣', 220700, 3, '中國,吉林省,松原市,前郭爾羅斯蒙古族自治縣', 125, 45, 'Qianguoerluosi');
INSERT INTO "public"."Sys_Region" VALUES (638, '220722', '長嶺縣', 220700, 3, '中國,吉林省,松原市,長嶺縣', 124, 44, 'Changling');
INSERT INTO "public"."Sys_Region" VALUES (639, '220723', '乾安縣', 220700, 3, '中國,吉林省,松原市,乾安縣', 124, 45, 'Qianan');
INSERT INTO "public"."Sys_Region" VALUES (640, '220781', '扶余市', 220700, 3, '中國,吉林省,松原市,扶余市', 126, 45, 'Fuyu');
INSERT INTO "public"."Sys_Region" VALUES (641, '220800', '白城市', 220000, 2, '中國,吉林省,白城市', 123, 46, 'Baicheng');
INSERT INTO "public"."Sys_Region" VALUES (642, '220802', '洮北區', 220800, 3, '中國,吉林省,白城市,洮北區', 123, 46, 'Taobei');
INSERT INTO "public"."Sys_Region" VALUES (643, '220821', '鎮賚縣', 220800, 3, '中國,吉林省,白城市,鎮賚縣', 123, 46, 'Zhenlai');
INSERT INTO "public"."Sys_Region" VALUES (644, '220822', '通榆縣', 220800, 3, '中國,吉林省,白城市,通榆縣', 123, 45, 'Tongyu');
INSERT INTO "public"."Sys_Region" VALUES (645, '220881', '洮南市', 220800, 3, '中國,吉林省,白城市,洮南市', 123, 45, 'Taonan');
INSERT INTO "public"."Sys_Region" VALUES (646, '220882', '大安市', 220800, 3, '中國,吉林省,白城市,大安市', 124, 46, 'Daan');
INSERT INTO "public"."Sys_Region" VALUES (647, '222400', '延邊朝鮮族自治州', 220000, 2, '中國,吉林省,延邊朝鮮族自治州', 130, 43, 'Yanbian');
INSERT INTO "public"."Sys_Region" VALUES (648, '222401', '延吉市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,延吉市', 130, 43, 'Yanji');
INSERT INTO "public"."Sys_Region" VALUES (649, '222402', '圖們市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,圖們市', 130, 43, 'Tumen');
INSERT INTO "public"."Sys_Region" VALUES (650, '222403', '敦化市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,敦化市', 128, 43, 'Dunhua');
INSERT INTO "public"."Sys_Region" VALUES (651, '222404', '琿春市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,琿春市', 130, 43, 'Hunchun');
INSERT INTO "public"."Sys_Region" VALUES (652, '222405', '龍井市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,龍井市', 129, 43, 'Longjing');
INSERT INTO "public"."Sys_Region" VALUES (653, '222406', '和龍市', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,和龍市', 129, 43, 'Helong');
INSERT INTO "public"."Sys_Region" VALUES (654, '222424', '汪清縣', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,汪清縣', 130, 43, 'Wangqing');
INSERT INTO "public"."Sys_Region" VALUES (655, '222426', '安圖縣', 222400, 3, '中國,吉林省,延邊朝鮮族自治州,安圖縣', 129, 43, 'Antu');
INSERT INTO "public"."Sys_Region" VALUES (656, '230000', '黑龍江省', 100000, 1, '中國,黑龍江省', 127, 46, 'Heilongjiang');
INSERT INTO "public"."Sys_Region" VALUES (657, '230100', '哈爾濱市', 230000, 2, '中國,黑龍江省,哈爾濱市', 127, 46, 'Harbin');
INSERT INTO "public"."Sys_Region" VALUES (658, '230102', '道里區', 230100, 3, '中國,黑龍江省,哈爾濱市,道里區', 127, 46, 'Daoli');
INSERT INTO "public"."Sys_Region" VALUES (659, '230103', '南崗區', 230100, 3, '中國,黑龍江省,哈爾濱市,南崗區', 127, 46, 'Nangang');
INSERT INTO "public"."Sys_Region" VALUES (660, '230104', '道外區', 230100, 3, '中國,黑龍江省,哈爾濱市,道外區', 127, 46, 'Daowai');
INSERT INTO "public"."Sys_Region" VALUES (661, '230108', '平房區', 230100, 3, '中國,黑龍江省,哈爾濱市,平房區', 127, 46, 'Pingfang');
INSERT INTO "public"."Sys_Region" VALUES (662, '230109', '松北區', 230100, 3, '中國,黑龍江省,哈爾濱市,松北區', 127, 46, 'Songbei');
INSERT INTO "public"."Sys_Region" VALUES (663, '230110', '香坊區', 230100, 3, '中國,黑龍江省,哈爾濱市,香坊區', 127, 46, 'Xiangfang');
INSERT INTO "public"."Sys_Region" VALUES (664, '230111', '呼蘭區', 230100, 3, '中國,黑龍江省,哈爾濱市,呼蘭區', 127, 46, 'Hulan');
INSERT INTO "public"."Sys_Region" VALUES (665, '230112', '阿城區', 230100, 3, '中國,黑龍江省,哈爾濱市,阿城區', 127, 46, 'Acheng');
INSERT INTO "public"."Sys_Region" VALUES (666, '230113', '雙城區', 230100, 3, '中國,黑龍江省,哈爾濱市,雙城區', 126, 45, 'Shuangcheng');
INSERT INTO "public"."Sys_Region" VALUES (667, '230123', '依蘭縣', 230100, 3, '中國,黑龍江省,哈爾濱市,依蘭縣', 130, 46, 'Yilan');
INSERT INTO "public"."Sys_Region" VALUES (668, '230124', '方正縣', 230100, 3, '中國,黑龍江省,哈爾濱市,方正縣', 129, 46, 'Fangzheng');
INSERT INTO "public"."Sys_Region" VALUES (669, '230125', '賓縣', 230100, 3, '中國,黑龍江省,哈爾濱市,賓縣', 127, 46, 'Binxian');
INSERT INTO "public"."Sys_Region" VALUES (670, '230126', '巴彥縣', 230100, 3, '中國,黑龍江省,哈爾濱市,巴彥縣', 127, 46, 'Bayan');
INSERT INTO "public"."Sys_Region" VALUES (671, '230127', '木蘭縣', 230100, 3, '中國,黑龍江省,哈爾濱市,木蘭縣', 128, 46, 'Mulan');
INSERT INTO "public"."Sys_Region" VALUES (672, '230128', '通河縣', 230100, 3, '中國,黑龍江省,哈爾濱市,通河縣', 129, 46, 'Tonghe');
INSERT INTO "public"."Sys_Region" VALUES (673, '230129', '延壽縣', 230100, 3, '中國,黑龍江省,哈爾濱市,延壽縣', 128, 45, 'Yanshou');
INSERT INTO "public"."Sys_Region" VALUES (674, '230183', '尚志市', 230100, 3, '中國,黑龍江省,哈爾濱市,尚志市', 128, 45, 'Shangzhi');
INSERT INTO "public"."Sys_Region" VALUES (675, '230184', '五常市', 230100, 3, '中國,黑龍江省,哈爾濱市,五常市', 127, 45, 'Wuchang');
INSERT INTO "public"."Sys_Region" VALUES (676, '230200', '齊齊哈爾市', 230000, 2, '中國,黑龍江省,齊齊哈爾市', 124, 47, 'Qiqihar');
INSERT INTO "public"."Sys_Region" VALUES (677, '230202', '龍沙區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,龍沙區', 124, 47, 'Longsha');
INSERT INTO "public"."Sys_Region" VALUES (678, '230203', '建華區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,建華區', 124, 47, 'Jianhua');
INSERT INTO "public"."Sys_Region" VALUES (679, '230204', '鐵鋒區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,鐵鋒區', 124, 47, 'Tiefeng');
INSERT INTO "public"."Sys_Region" VALUES (680, '230205', '昂昂溪區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,昂昂溪區', 124, 47, 'Angangxi');
INSERT INTO "public"."Sys_Region" VALUES (681, '230206', '富拉爾基區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,富拉爾基區', 124, 47, 'Fulaerji');
INSERT INTO "public"."Sys_Region" VALUES (682, '230207', '碾子山區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,碾子山區', 123, 48, 'Nianzishan');
INSERT INTO "public"."Sys_Region" VALUES (683, '230208', '梅里斯達斡爾族區', 230200, 3, '中國,黑龍江省,齊齊哈爾市,梅里斯達斡爾族區', 124, 47, 'Meilisi');
INSERT INTO "public"."Sys_Region" VALUES (684, '230221', '龍江縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,龍江縣', 123, 47, 'Longjiang');
INSERT INTO "public"."Sys_Region" VALUES (685, '230223', '依安縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,依安縣', 125, 48, 'Yian');
INSERT INTO "public"."Sys_Region" VALUES (686, '230224', '泰來縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,泰來縣', 123, 46, 'Tailai');
INSERT INTO "public"."Sys_Region" VALUES (687, '230225', '甘南縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,甘南縣', 124, 48, 'Gannan');
INSERT INTO "public"."Sys_Region" VALUES (688, '230227', '富裕縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,富裕縣', 124, 48, 'Fuyu');
INSERT INTO "public"."Sys_Region" VALUES (689, '230229', '克山縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,克山縣', 126, 48, 'Keshan');
INSERT INTO "public"."Sys_Region" VALUES (690, '230230', '克東縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,克東縣', 126, 48, 'Kedong');
INSERT INTO "public"."Sys_Region" VALUES (691, '230231', '拜泉縣', 230200, 3, '中國,黑龍江省,齊齊哈爾市,拜泉縣', 126, 48, 'Baiquan');
INSERT INTO "public"."Sys_Region" VALUES (692, '230281', '訥河市', 230200, 3, '中國,黑龍江省,齊齊哈爾市,訥河市', 125, 48, 'Nehe');
INSERT INTO "public"."Sys_Region" VALUES (693, '230300', '雞西市', 230000, 2, '中國,黑龍江省,雞西市', 131, 45, 'Jixi');
INSERT INTO "public"."Sys_Region" VALUES (694, '230302', '雞冠區', 230300, 3, '中國,黑龍江省,雞西市,雞冠區', 131, 45, 'Jiguan');
INSERT INTO "public"."Sys_Region" VALUES (695, '230303', '恒山區', 230300, 3, '中國,黑龍江省,雞西市,恒山區', 131, 45, 'Hengshan');
INSERT INTO "public"."Sys_Region" VALUES (696, '230304', '滴道區', 230300, 3, '中國,黑龍江省,雞西市,滴道區', 131, 45, 'Didao');
INSERT INTO "public"."Sys_Region" VALUES (697, '230305', '梨樹區', 230300, 3, '中國,黑龍江省,雞西市,梨樹區', 131, 45, 'Lishu');
INSERT INTO "public"."Sys_Region" VALUES (698, '230306', '城子河區', 230300, 3, '中國,黑龍江省,雞西市,城子河區', 131, 45, 'Chengzihe');
INSERT INTO "public"."Sys_Region" VALUES (699, '230307', '麻山區', 230300, 3, '中國,黑龍江省,雞西市,麻山區', 130, 45, 'Mashan');
INSERT INTO "public"."Sys_Region" VALUES (700, '230321', '雞東縣', 230300, 3, '中國,黑龍江省,雞西市,雞東縣', 131, 45, 'Jidong');
INSERT INTO "public"."Sys_Region" VALUES (701, '230381', '虎林市', 230300, 3, '中國,黑龍江省,雞西市,虎林市', 133, 46, 'Hulin');
INSERT INTO "public"."Sys_Region" VALUES (702, '230382', '密山市', 230300, 3, '中國,黑龍江省,雞西市,密山市', 132, 46, 'Mishan');
INSERT INTO "public"."Sys_Region" VALUES (703, '230400', '鶴崗市', 230000, 2, '中國,黑龍江省,鶴崗市', 130, 47, 'Hegang');
INSERT INTO "public"."Sys_Region" VALUES (704, '230402', '向陽區', 230400, 3, '中國,黑龍江省,鶴崗市,向陽區', 130, 47, 'Xiangyang');
INSERT INTO "public"."Sys_Region" VALUES (705, '230403', '工農區', 230400, 3, '中國,黑龍江省,鶴崗市,工農區', 130, 47, 'Gongnong');
INSERT INTO "public"."Sys_Region" VALUES (706, '230404', '南山區', 230400, 3, '中國,黑龍江省,鶴崗市,南山區', 130, 47, 'Nanshan');
INSERT INTO "public"."Sys_Region" VALUES (707, '230405', '興安區', 230400, 3, '中國,黑龍江省,鶴崗市,興安區', 130, 47, 'Xingan');
INSERT INTO "public"."Sys_Region" VALUES (708, '230406', '東山區', 230400, 3, '中國,黑龍江省,鶴崗市,東山區', 130, 47, 'Dongshan');
INSERT INTO "public"."Sys_Region" VALUES (709, '230407', '興山區', 230400, 3, '中國,黑龍江省,鶴崗市,興山區', 130, 47, 'Xingshan');
INSERT INTO "public"."Sys_Region" VALUES (710, '230421', '蘿北縣', 230400, 3, '中國,黑龍江省,鶴崗市,蘿北縣', 131, 48, 'Luobei');
INSERT INTO "public"."Sys_Region" VALUES (711, '230422', '綏濱縣', 230400, 3, '中國,黑龍江省,鶴崗市,綏濱縣', 132, 47, 'Suibin');
INSERT INTO "public"."Sys_Region" VALUES (712, '230500', '雙鴨山市', 230000, 2, '中國,黑龍江省,雙鴨山市', 131, 47, 'Shuangyashan');
INSERT INTO "public"."Sys_Region" VALUES (713, '230502', '尖山區', 230500, 3, '中國,黑龍江省,雙鴨山市,尖山區', 131, 47, 'Jianshan');
INSERT INTO "public"."Sys_Region" VALUES (714, '230503', '嶺東區', 230500, 3, '中國,黑龍江省,雙鴨山市,嶺東區', 131, 47, 'Lingdong');
INSERT INTO "public"."Sys_Region" VALUES (715, '230505', '四方臺區', 230500, 3, '中國,黑龍江省,雙鴨山市,四方臺區', 131, 47, 'Sifangtai');
INSERT INTO "public"."Sys_Region" VALUES (716, '230506', '寶山區', 230500, 3, '中國,黑龍江省,雙鴨山市,寶山區', 131, 47, 'Baoshan');
INSERT INTO "public"."Sys_Region" VALUES (717, '230521', '集賢縣', 230500, 3, '中國,黑龍江省,雙鴨山市,集賢縣', 131, 47, 'Jixian');
INSERT INTO "public"."Sys_Region" VALUES (718, '230522', '友誼縣', 230500, 3, '中國,黑龍江省,雙鴨山市,友誼縣', 132, 47, 'Youyi');
INSERT INTO "public"."Sys_Region" VALUES (719, '230523', '寶清縣', 230500, 3, '中國,黑龍江省,雙鴨山市,寶清縣', 132, 46, 'Baoqing');
INSERT INTO "public"."Sys_Region" VALUES (720, '230524', '饒河縣', 230500, 3, '中國,黑龍江省,雙鴨山市,饒河縣', 134, 47, 'Raohe');
INSERT INTO "public"."Sys_Region" VALUES (721, '230600', '大慶市', 230000, 2, '中國,黑龍江省,大慶市', 125, 47, 'Daqing');
INSERT INTO "public"."Sys_Region" VALUES (722, '230602', '薩爾圖區', 230600, 3, '中國,黑龍江省,大慶市,薩爾圖區', 125, 47, 'Saertu');
INSERT INTO "public"."Sys_Region" VALUES (723, '230603', '龍鳳區', 230600, 3, '中國,黑龍江省,大慶市,龍鳳區', 125, 47, 'Longfeng');
INSERT INTO "public"."Sys_Region" VALUES (724, '230604', '讓胡路區', 230600, 3, '中國,黑龍江省,大慶市,讓胡路區', 125, 47, 'Ranghulu');
INSERT INTO "public"."Sys_Region" VALUES (725, '230605', '紅崗區', 230600, 3, '中國,黑龍江省,大慶市,紅崗區', 125, 46, 'Honggang');
INSERT INTO "public"."Sys_Region" VALUES (726, '230606', '大同區', 230600, 3, '中國,黑龍江省,大慶市,大同區', 125, 46, 'Datong');
INSERT INTO "public"."Sys_Region" VALUES (727, '230621', '肇州縣', 230600, 3, '中國,黑龍江省,大慶市,肇州縣', 125, 46, 'Zhaozhou');
INSERT INTO "public"."Sys_Region" VALUES (728, '230622', '肇源縣', 230600, 3, '中國,黑龍江省,大慶市,肇源縣', 125, 46, 'Zhaoyuan');
INSERT INTO "public"."Sys_Region" VALUES (729, '230623', '林甸縣', 230600, 3, '中國,黑龍江省,大慶市,林甸縣', 125, 47, 'Lindian');
INSERT INTO "public"."Sys_Region" VALUES (730, '230624', '杜爾伯特蒙古族自治縣', 230600, 3, '中國,黑龍江省,大慶市,杜爾伯特蒙古族自治縣', 124, 47, 'Duerbote');
INSERT INTO "public"."Sys_Region" VALUES (731, '230700', '伊春市', 230000, 2, '中國,黑龍江省,伊春市', 129, 48, 'Yichun');
INSERT INTO "public"."Sys_Region" VALUES (732, '230702', '伊春區', 230700, 3, '中國,黑龍江省,伊春市,伊春區', 129, 48, 'Yichun');
INSERT INTO "public"."Sys_Region" VALUES (733, '230703', '南岔區', 230700, 3, '中國,黑龍江省,伊春市,南岔區', 129, 47, 'Nancha');
INSERT INTO "public"."Sys_Region" VALUES (734, '230704', '友好區', 230700, 3, '中國,黑龍江省,伊春市,友好區', 129, 48, 'Youhao');
INSERT INTO "public"."Sys_Region" VALUES (735, '230705', '西林區', 230700, 3, '中國,黑龍江省,伊春市,西林區', 129, 47, 'Xilin');
INSERT INTO "public"."Sys_Region" VALUES (736, '230706', '翠巒區', 230700, 3, '中國,黑龍江省,伊春市,翠巒區', 129, 48, 'Cuiluan');
INSERT INTO "public"."Sys_Region" VALUES (737, '230707', '新青區', 230700, 3, '中國,黑龍江省,伊春市,新青區', 130, 48, 'Xinqing');
INSERT INTO "public"."Sys_Region" VALUES (738, '230708', '美溪區', 230700, 3, '中國,黑龍江省,伊春市,美溪區', 129, 48, 'Meixi');
INSERT INTO "public"."Sys_Region" VALUES (739, '230709', '金山屯區', 230700, 3, '中國,黑龍江省,伊春市,金山屯區', 129, 47, 'Jinshantun');
INSERT INTO "public"."Sys_Region" VALUES (740, '230710', '五營區', 230700, 3, '中國,黑龍江省,伊春市,五營區', 129, 48, 'Wuying');
INSERT INTO "public"."Sys_Region" VALUES (741, '230711', '烏馬河區', 230700, 3, '中國,黑龍江省,伊春市,烏馬河區', 129, 48, 'Wumahe');
INSERT INTO "public"."Sys_Region" VALUES (742, '230712', '湯旺河區', 230700, 3, '中國,黑龍江省,伊春市,湯旺河區', 130, 48, 'Tangwanghe');
INSERT INTO "public"."Sys_Region" VALUES (743, '230713', '帶嶺區', 230700, 3, '中國,黑龍江省,伊春市,帶嶺區', 129, 47, 'Dailing');
INSERT INTO "public"."Sys_Region" VALUES (744, '230714', '烏伊嶺區', 230700, 3, '中國,黑龍江省,伊春市,烏伊嶺區', 129, 49, 'Wuyiling');
INSERT INTO "public"."Sys_Region" VALUES (745, '230715', '紅星區', 230700, 3, '中國,黑龍江省,伊春市,紅星區', 129, 48, 'Hongxing');
INSERT INTO "public"."Sys_Region" VALUES (746, '230716', '上甘嶺區', 230700, 3, '中國,黑龍江省,伊春市,上甘嶺區', 129, 48, 'Shangganling');
INSERT INTO "public"."Sys_Region" VALUES (747, '230722', '嘉蔭縣', 230700, 3, '中國,黑龍江省,伊春市,嘉蔭縣', 130, 49, 'Jiayin');
INSERT INTO "public"."Sys_Region" VALUES (748, '230781', '鐵力市', 230700, 3, '中國,黑龍江省,伊春市,鐵力市', 128, 47, 'Tieli');
INSERT INTO "public"."Sys_Region" VALUES (749, '230800', '佳木斯市', 230000, 2, '中國,黑龍江省,佳木斯市', 130, 47, 'Jiamusi');
INSERT INTO "public"."Sys_Region" VALUES (750, '230803', '向陽區', 230800, 3, '中國,黑龍江省,佳木斯市,向陽區', 130, 47, 'Xiangyang');
INSERT INTO "public"."Sys_Region" VALUES (751, '230804', '前進區', 230800, 3, '中國,黑龍江省,佳木斯市,前進區', 130, 47, 'Qianjin');
INSERT INTO "public"."Sys_Region" VALUES (752, '230805', '東風區', 230800, 3, '中國,黑龍江省,佳木斯市,東風區', 130, 47, 'Dongfeng');
INSERT INTO "public"."Sys_Region" VALUES (753, '230811', '郊區', 230800, 3, '中國,黑龍江省,佳木斯市,郊區', 130, 47, 'Jiaoqu');
INSERT INTO "public"."Sys_Region" VALUES (754, '230822', '樺南縣', 230800, 3, '中國,黑龍江省,佳木斯市,樺南縣', 131, 46, 'Huanan');
INSERT INTO "public"."Sys_Region" VALUES (755, '230826', '樺川縣', 230800, 3, '中國,黑龍江省,佳木斯市,樺川縣', 131, 47, 'Huachuan');
INSERT INTO "public"."Sys_Region" VALUES (756, '230828', '湯原縣', 230800, 3, '中國,黑龍江省,佳木斯市,湯原縣', 130, 47, 'Tangyuan');
INSERT INTO "public"."Sys_Region" VALUES (757, '230833', '撫遠縣', 230800, 3, '中國,黑龍江省,佳木斯市,撫遠縣', 134, 48, 'Fuyuan');
INSERT INTO "public"."Sys_Region" VALUES (758, '230881', '同江市', 230800, 3, '中國,黑龍江省,佳木斯市,同江市', 133, 48, 'Tongjiang');
INSERT INTO "public"."Sys_Region" VALUES (759, '230882', '富錦市', 230800, 3, '中國,黑龍江省,佳木斯市,富錦市', 132, 47, 'Fujin');
INSERT INTO "public"."Sys_Region" VALUES (760, '230900', '七臺河市', 230000, 2, '中國,黑龍江省,七臺河市', 131, 46, 'Qitaihe');
INSERT INTO "public"."Sys_Region" VALUES (761, '230902', '新興區', 230900, 3, '中國,黑龍江省,七臺河市,新興區', 131, 46, 'Xinxing');
INSERT INTO "public"."Sys_Region" VALUES (762, '230903', '桃山區', 230900, 3, '中國,黑龍江省,七臺河市,桃山區', 131, 46, 'Taoshan');
INSERT INTO "public"."Sys_Region" VALUES (763, '230904', '茄子河區', 230900, 3, '中國,黑龍江省,七臺河市,茄子河區', 131, 46, 'Qiezihe');
INSERT INTO "public"."Sys_Region" VALUES (764, '230921', '勃利縣', 230900, 3, '中國,黑龍江省,七臺河市,勃利縣', 131, 46, 'Boli');
INSERT INTO "public"."Sys_Region" VALUES (765, '231000', '牡丹江市', 230000, 2, '中國,黑龍江省,牡丹江市', 130, 45, 'Mudanjiang');
INSERT INTO "public"."Sys_Region" VALUES (766, '231002', '東安區', 231000, 3, '中國,黑龍江省,牡丹江市,東安區', 130, 45, 'Dongan');
INSERT INTO "public"."Sys_Region" VALUES (767, '231003', '陽明區', 231000, 3, '中國,黑龍江省,牡丹江市,陽明區', 130, 45, 'Yangming');
INSERT INTO "public"."Sys_Region" VALUES (768, '231004', '愛民區', 231000, 3, '中國,黑龍江省,牡丹江市,愛民區', 130, 45, 'Aimin');
INSERT INTO "public"."Sys_Region" VALUES (769, '231005', '西安區', 231000, 3, '中國,黑龍江省,牡丹江市,西安區', 130, 45, 'Xian');
INSERT INTO "public"."Sys_Region" VALUES (770, '231024', '東寧縣', 231000, 3, '中國,黑龍江省,牡丹江市,東寧縣', 131, 44, 'Dongning');
INSERT INTO "public"."Sys_Region" VALUES (771, '231025', '林口縣', 231000, 3, '中國,黑龍江省,牡丹江市,林口縣', 130, 45, 'Linkou');
INSERT INTO "public"."Sys_Region" VALUES (772, '231081', '綏芬河市', 231000, 3, '中國,黑龍江省,牡丹江市,綏芬河市', 131, 44, 'Suifenhe');
INSERT INTO "public"."Sys_Region" VALUES (773, '231083', '海林市', 231000, 3, '中國,黑龍江省,牡丹江市,海林市', 129, 45, 'Hailin');
INSERT INTO "public"."Sys_Region" VALUES (774, '231084', '寧安市', 231000, 3, '中國,黑龍江省,牡丹江市,寧安市', 129, 44, 'Ningan');
INSERT INTO "public"."Sys_Region" VALUES (775, '231085', '穆棱市', 231000, 3, '中國,黑龍江省,牡丹江市,穆棱市', 131, 45, 'Muling');
INSERT INTO "public"."Sys_Region" VALUES (776, '231100', '黑河市', 230000, 2, '中國,黑龍江省,黑河市', 127, 50, 'Heihe');
INSERT INTO "public"."Sys_Region" VALUES (777, '231102', '愛輝區', 231100, 3, '中國,黑龍江省,黑河市,愛輝區', 128, 50, 'Aihui');
INSERT INTO "public"."Sys_Region" VALUES (778, '231121', '嫩江縣', 231100, 3, '中國,黑龍江省,黑河市,嫩江縣', 125, 49, 'Nenjiang');
INSERT INTO "public"."Sys_Region" VALUES (779, '231123', '遜克縣', 231100, 3, '中國,黑龍江省,黑河市,遜克縣', 128, 50, 'Xunke');
INSERT INTO "public"."Sys_Region" VALUES (780, '231124', '孫吳縣', 231100, 3, '中國,黑龍江省,黑河市,孫吳縣', 127, 49, 'Sunwu');
INSERT INTO "public"."Sys_Region" VALUES (781, '231181', '北安市', 231100, 3, '中國,黑龍江省,黑河市,北安市', 126, 48, 'Beian');
INSERT INTO "public"."Sys_Region" VALUES (782, '231182', '五大連池市', 231100, 3, '中國,黑龍江省,黑河市,五大連池市', 126, 49, 'Wudalianchi');
INSERT INTO "public"."Sys_Region" VALUES (783, '231200', '綏化市', 230000, 2, '中國,黑龍江省,綏化市', 127, 47, 'Suihua');
INSERT INTO "public"."Sys_Region" VALUES (784, '231202', '北林區', 231200, 3, '中國,黑龍江省,綏化市,北林區', 127, 47, 'Beilin');
INSERT INTO "public"."Sys_Region" VALUES (785, '231221', '望奎縣', 231200, 3, '中國,黑龍江省,綏化市,望奎縣', 126, 47, 'Wangkui');
INSERT INTO "public"."Sys_Region" VALUES (786, '231222', '蘭西縣', 231200, 3, '中國,黑龍江省,綏化市,蘭西縣', 126, 46, 'Lanxi');
INSERT INTO "public"."Sys_Region" VALUES (787, '231223', '青岡縣', 231200, 3, '中國,黑龍江省,綏化市,青岡縣', 126, 47, 'Qinggang');
INSERT INTO "public"."Sys_Region" VALUES (788, '231224', '慶安縣', 231200, 3, '中國,黑龍江省,綏化市,慶安縣', 128, 47, 'Qingan');
INSERT INTO "public"."Sys_Region" VALUES (789, '231225', '明水縣', 231200, 3, '中國,黑龍江省,綏化市,明水縣', 126, 47, 'Mingshui');
INSERT INTO "public"."Sys_Region" VALUES (790, '231226', '綏棱縣', 231200, 3, '中國,黑龍江省,綏化市,綏棱縣', 127, 47, 'Suileng');
INSERT INTO "public"."Sys_Region" VALUES (791, '231281', '安達市', 231200, 3, '中國,黑龍江省,綏化市,安達市', 125, 46, 'Anda');
INSERT INTO "public"."Sys_Region" VALUES (792, '231282', '肇東市', 231200, 3, '中國,黑龍江省,綏化市,肇東市', 126, 46, 'Zhaodong');
INSERT INTO "public"."Sys_Region" VALUES (793, '231283', '海倫市', 231200, 3, '中國,黑龍江省,綏化市,海倫市', 127, 47, 'Hailun');
INSERT INTO "public"."Sys_Region" VALUES (794, '232700', '大興安嶺地區', 230000, 2, '中國,黑龍江省,大興安嶺地區', 125, 52, 'DaXingAnLing');
INSERT INTO "public"."Sys_Region" VALUES (795, '232701', '加格達奇區', 232700, 3, '中國,黑龍江省,大興安嶺地區,加格達奇區', 124, 52, 'Jiagedaqi');
INSERT INTO "public"."Sys_Region" VALUES (796, '232702', '新林區', 232700, 3, '中國,黑龍江省,大興安嶺地區,新林區', 124, 52, 'Xinlin');
INSERT INTO "public"."Sys_Region" VALUES (797, '232703', '松嶺區', 232700, 3, '中國,黑龍江省,大興安嶺地區,松嶺區', 124, 52, 'Songling');
INSERT INTO "public"."Sys_Region" VALUES (798, '232704', '呼中區', 232700, 3, '中國,黑龍江省,大興安嶺地區,呼中區', 124, 52, 'Huzhong');
INSERT INTO "public"."Sys_Region" VALUES (799, '232721', '呼瑪縣', 232700, 3, '中國,黑龍江省,大興安嶺地區,呼瑪縣', 127, 52, 'Huma');
INSERT INTO "public"."Sys_Region" VALUES (800, '232722', '塔河縣', 232700, 3, '中國,黑龍江省,大興安嶺地區,塔河縣', 125, 52, 'Tahe');
INSERT INTO "public"."Sys_Region" VALUES (801, '232723', '漠河縣', 232700, 3, '中國,黑龍江省,大興安嶺地區,漠河縣', 123, 53, 'Mohe');
INSERT INTO "public"."Sys_Region" VALUES (802, '310000', '上海市', 100000, 1, '中國,上海', 121, 31, 'Shanghai');
INSERT INTO "public"."Sys_Region" VALUES (803, '310100', '上海市', 310000, 2, '中國,上海,上海市', 121, 31, 'Shanghai');
INSERT INTO "public"."Sys_Region" VALUES (804, '310101', '黃浦區', 310100, 3, '中國,上海,上海市,黃浦區', 121, 31, 'Huangpu');
INSERT INTO "public"."Sys_Region" VALUES (805, '310104', '徐匯區', 310100, 3, '中國,上海,上海市,徐匯區', 121, 31, 'Xuhui');
INSERT INTO "public"."Sys_Region" VALUES (806, '310105', '長寧區', 310100, 3, '中國,上海,上海市,長寧區', 121, 31, 'Changning');
INSERT INTO "public"."Sys_Region" VALUES (807, '310106', '靜安區', 310100, 3, '中國,上海,上海市,靜安區', 121, 31, 'Jingan');
INSERT INTO "public"."Sys_Region" VALUES (808, '310107', '普陀區', 310100, 3, '中國,上海,上海市,普陀區', 121, 31, 'Putuo');
INSERT INTO "public"."Sys_Region" VALUES (809, '310108', '閘北區', 310100, 3, '中國,上海,上海市,閘北區', 121, 31, 'Zhabei');
INSERT INTO "public"."Sys_Region" VALUES (810, '310109', '虹口區', 310100, 3, '中國,上海,上海市,虹口區', 121, 31, 'Hongkou');
INSERT INTO "public"."Sys_Region" VALUES (811, '310110', '楊浦區', 310100, 3, '中國,上海,上海市,楊浦區', 122, 31, 'Yangpu');
INSERT INTO "public"."Sys_Region" VALUES (812, '310112', '閔行區', 310100, 3, '中國,上海,上海市,閔行區', 121, 31, 'Minhang');
INSERT INTO "public"."Sys_Region" VALUES (813, '310113', '寶山區', 310100, 3, '中國,上海,上海市,寶山區', 121, 31, 'Baoshan');
INSERT INTO "public"."Sys_Region" VALUES (814, '310114', '嘉定區', 310100, 3, '中國,上海,上海市,嘉定區', 121, 31, 'Jiading');
INSERT INTO "public"."Sys_Region" VALUES (815, '310115', '浦東新區', 310100, 3, '中國,上海,上海市,浦東新區', 122, 31, 'Pudong');
INSERT INTO "public"."Sys_Region" VALUES (816, '310116', '金山區', 310100, 3, '中國,上海,上海市,金山區', 121, 31, 'Jinshan');
INSERT INTO "public"."Sys_Region" VALUES (817, '310117', '松江區', 310100, 3, '中國,上海,上海市,松江區', 121, 31, 'Songjiang');
INSERT INTO "public"."Sys_Region" VALUES (818, '310118', '青浦區', 310100, 3, '中國,上海,上海市,青浦區', 121, 31, 'Qingpu');
INSERT INTO "public"."Sys_Region" VALUES (819, '310120', '奉賢區', 310100, 3, '中國,上海,上海市,奉賢區', 121, 31, 'Fengxian');
INSERT INTO "public"."Sys_Region" VALUES (820, '310230', '崇明縣', 310100, 3, '中國,上海,上海市,崇明縣', 121, 32, 'Chongming');
INSERT INTO "public"."Sys_Region" VALUES (821, '320000', '江蘇省', 100000, 1, '中國,江蘇省', 119, 32, 'Jiangsu');
INSERT INTO "public"."Sys_Region" VALUES (822, '320100', '南京市', 320000, 2, '中國,江蘇省,南京市', 119, 32, 'Nanjing');
INSERT INTO "public"."Sys_Region" VALUES (823, '320102', '玄武區', 320100, 3, '中國,江蘇省,南京市,玄武區', 119, 32, 'Xuanwu');
INSERT INTO "public"."Sys_Region" VALUES (824, '320104', '秦淮區', 320100, 3, '中國,江蘇省,南京市,秦淮區', 119, 32, 'Qinhuai');
INSERT INTO "public"."Sys_Region" VALUES (825, '320105', '建鄴區', 320100, 3, '中國,江蘇省,南京市,建鄴區', 119, 32, 'Jianye');
INSERT INTO "public"."Sys_Region" VALUES (826, '320106', '鼓樓區', 320100, 3, '中國,江蘇省,南京市,鼓樓區', 119, 32, 'Gulou');
INSERT INTO "public"."Sys_Region" VALUES (827, '320111', '浦口區', 320100, 3, '中國,江蘇省,南京市,浦口區', 119, 32, 'Pukou');
INSERT INTO "public"."Sys_Region" VALUES (828, '320113', '棲霞區', 320100, 3, '中國,江蘇省,南京市,棲霞區', 119, 32, 'Qixia');
INSERT INTO "public"."Sys_Region" VALUES (829, '320114', '雨花臺區', 320100, 3, '中國,江蘇省,南京市,雨花臺區', 119, 32, 'Yuhuatai');
INSERT INTO "public"."Sys_Region" VALUES (830, '320115', '江寧區', 320100, 3, '中國,江蘇省,南京市,江寧區', 119, 32, 'Jiangning');
INSERT INTO "public"."Sys_Region" VALUES (831, '320116', '六合區', 320100, 3, '中國,江蘇省,南京市,六合區', 119, 32, 'Luhe');
INSERT INTO "public"."Sys_Region" VALUES (832, '320117', '溧水區', 320100, 3, '中國,江蘇省,南京市,溧水區', 119, 32, 'Lishui');
INSERT INTO "public"."Sys_Region" VALUES (833, '320118', '高淳區', 320100, 3, '中國,江蘇省,南京市,高淳區', 119, 31, 'Gaochun');
INSERT INTO "public"."Sys_Region" VALUES (834, '320200', '無錫市', 320000, 2, '中國,江蘇省,無錫市', 120, 32, 'Wuxi');
INSERT INTO "public"."Sys_Region" VALUES (835, '320202', '崇安區', 320200, 3, '中國,江蘇省,無錫市,崇安區', 120, 32, 'Chongan');
INSERT INTO "public"."Sys_Region" VALUES (836, '320203', '南長區', 320200, 3, '中國,江蘇省,無錫市,南長區', 120, 32, 'Nanchang');
INSERT INTO "public"."Sys_Region" VALUES (837, '320204', '北塘區', 320200, 3, '中國,江蘇省,無錫市,北塘區', 120, 32, 'Beitang');
INSERT INTO "public"."Sys_Region" VALUES (838, '320205', '錫山區', 320200, 3, '中國,江蘇省,無錫市,錫山區', 120, 32, 'Xishan');
INSERT INTO "public"."Sys_Region" VALUES (839, '320206', '惠山區', 320200, 3, '中國,江蘇省,無錫市,惠山區', 120, 32, 'Huishan');
INSERT INTO "public"."Sys_Region" VALUES (840, '320211', '濱湖區', 320200, 3, '中國,江蘇省,無錫市,濱湖區', 120, 32, 'Binhu');
INSERT INTO "public"."Sys_Region" VALUES (841, '320281', '江陰市', 320200, 3, '中國,江蘇省,無錫市,江陰市', 120, 32, 'Jiangyin');
INSERT INTO "public"."Sys_Region" VALUES (842, '320282', '宜興市', 320200, 3, '中國,江蘇省,無錫市,宜興市', 120, 31, 'Yixing');
INSERT INTO "public"."Sys_Region" VALUES (843, '320300', '徐州市', 320000, 2, '中國,江蘇省,徐州市', 117, 34, 'Xuzhou');
INSERT INTO "public"."Sys_Region" VALUES (844, '320302', '鼓樓區', 320300, 3, '中國,江蘇省,徐州市,鼓樓區', 117, 34, 'Gulou');
INSERT INTO "public"."Sys_Region" VALUES (845, '320303', '云龍區', 320300, 3, '中國,江蘇省,徐州市,云龍區', 117, 34, 'Yunlong');
INSERT INTO "public"."Sys_Region" VALUES (846, '320305', '賈汪區', 320300, 3, '中國,江蘇省,徐州市,賈汪區', 117, 34, 'Jiawang');
INSERT INTO "public"."Sys_Region" VALUES (847, '320311', '泉山區', 320300, 3, '中國,江蘇省,徐州市,泉山區', 117, 34, 'Quanshan');
INSERT INTO "public"."Sys_Region" VALUES (848, '320312', '銅山區', 320300, 3, '中國,江蘇省,徐州市,銅山區', 117, 34, 'Tongshan');
INSERT INTO "public"."Sys_Region" VALUES (849, '320321', '豐縣', 320300, 3, '中國,江蘇省,徐州市,豐縣', 117, 35, 'Fengxian');
INSERT INTO "public"."Sys_Region" VALUES (850, '320322', '沛縣', 320300, 3, '中國,江蘇省,徐州市,沛縣', 117, 35, 'Peixian');
INSERT INTO "public"."Sys_Region" VALUES (851, '320324', '睢寧縣', 320300, 3, '中國,江蘇省,徐州市,睢寧縣', 118, 34, 'Suining');
INSERT INTO "public"."Sys_Region" VALUES (852, '320381', '新沂市', 320300, 3, '中國,江蘇省,徐州市,新沂市', 118, 34, 'Xinyi');
INSERT INTO "public"."Sys_Region" VALUES (853, '320382', '邳州市', 320300, 3, '中國,江蘇省,徐州市,邳州市', 118, 34, 'Pizhou');
INSERT INTO "public"."Sys_Region" VALUES (854, '320400', '常州市', 320000, 2, '中國,江蘇省,常州市', 120, 32, 'Changzhou');
INSERT INTO "public"."Sys_Region" VALUES (855, '320402', '天寧區', 320400, 3, '中國,江蘇省,常州市,天寧區', 120, 32, 'Tianning');
INSERT INTO "public"."Sys_Region" VALUES (856, '320404', '鐘樓區', 320400, 3, '中國,江蘇省,常州市,鐘樓區', 120, 32, 'Zhonglou');
INSERT INTO "public"."Sys_Region" VALUES (857, '320405', '戚墅堰區', 320400, 3, '中國,江蘇省,常州市,戚墅堰區', 120, 32, 'Qishuyan');
INSERT INTO "public"."Sys_Region" VALUES (858, '320411', '新北區', 320400, 3, '中國,江蘇省,常州市,新北區', 120, 32, 'Xinbei');
INSERT INTO "public"."Sys_Region" VALUES (859, '320412', '武進區', 320400, 3, '中國,江蘇省,常州市,武進區', 120, 32, 'Wujin');
INSERT INTO "public"."Sys_Region" VALUES (860, '320481', '溧陽市', 320400, 3, '中國,江蘇省,常州市,溧陽市', 119, 31, 'Liyang');
INSERT INTO "public"."Sys_Region" VALUES (861, '320482', '金壇市', 320400, 3, '中國,江蘇省,常州市,金壇市', 120, 32, 'Jintan');
INSERT INTO "public"."Sys_Region" VALUES (862, '320500', '蘇州市', 320000, 2, '中國,江蘇省,蘇州市', 121, 31, 'Suzhou');
INSERT INTO "public"."Sys_Region" VALUES (863, '320505', '虎丘區', 320500, 3, '中國,江蘇省,蘇州市,虎丘區', 121, 31, 'Huqiu');
INSERT INTO "public"."Sys_Region" VALUES (864, '320506', '吳中區', 320500, 3, '中國,江蘇省,蘇州市,吳中區', 121, 31, 'Wuzhong');
INSERT INTO "public"."Sys_Region" VALUES (865, '320507', '相城區', 320500, 3, '中國,江蘇省,蘇州市,相城區', 121, 31, 'Xiangcheng');
INSERT INTO "public"."Sys_Region" VALUES (866, '320508', '姑蘇區', 320500, 3, '中國,江蘇省,蘇州市,姑蘇區', 121, 31, 'Gusu');
INSERT INTO "public"."Sys_Region" VALUES (867, '320509', '吳江區', 320500, 3, '中國,江蘇省,蘇州市,吳江區', 121, 31, 'Wujiang');
INSERT INTO "public"."Sys_Region" VALUES (868, '320581', '常熟市', 320500, 3, '中國,江蘇省,蘇州市,常熟市', 121, 32, 'Changshu');
INSERT INTO "public"."Sys_Region" VALUES (869, '320582', '張家港市', 320500, 3, '中國,江蘇省,蘇州市,張家港市', 121, 32, 'Zhangjiagang');
INSERT INTO "public"."Sys_Region" VALUES (870, '320583', '昆山市', 320500, 3, '中國,江蘇省,蘇州市,昆山市', 121, 31, 'Kunshan');
INSERT INTO "public"."Sys_Region" VALUES (871, '320585', '太倉市', 320500, 3, '中國,江蘇省,蘇州市,太倉市', 121, 31, 'Taicang');
INSERT INTO "public"."Sys_Region" VALUES (872, '320600', '南通市', 320000, 2, '中國,江蘇省,南通市', 121, 32, 'Nantong');
INSERT INTO "public"."Sys_Region" VALUES (873, '320602', '崇川區', 320600, 3, '中國,江蘇省,南通市,崇川區', 121, 32, 'Chongchuan');
INSERT INTO "public"."Sys_Region" VALUES (874, '320611', '港閘區', 320600, 3, '中國,江蘇省,南通市,港閘區', 121, 32, 'Gangzha');
INSERT INTO "public"."Sys_Region" VALUES (875, '320612', '通州區', 320600, 3, '中國,江蘇省,南通市,通州區', 121, 32, 'Tongzhou');
INSERT INTO "public"."Sys_Region" VALUES (876, '320621', '海安縣', 320600, 3, '中國,江蘇省,南通市,海安縣', 120, 33, 'Haian');
INSERT INTO "public"."Sys_Region" VALUES (877, '320623', '如東縣', 320600, 3, '中國,江蘇省,南通市,如東縣', 121, 32, 'Rudong');
INSERT INTO "public"."Sys_Region" VALUES (878, '320681', '啟東市', 320600, 3, '中國,江蘇省,南通市,啟東市', 122, 32, 'Qidong');
INSERT INTO "public"."Sys_Region" VALUES (879, '320682', '如皋市', 320600, 3, '中國,江蘇省,南通市,如皋市', 121, 32, 'Rugao');
INSERT INTO "public"."Sys_Region" VALUES (880, '320684', '海門市', 320600, 3, '中國,江蘇省,南通市,海門市', 121, 32, 'Haimen');
INSERT INTO "public"."Sys_Region" VALUES (881, '320700', '連云港市', 320000, 2, '中國,江蘇省,連云港市', 119, 35, 'Lianyungang');
INSERT INTO "public"."Sys_Region" VALUES (882, '320703', '連云區', 320700, 3, '中國,江蘇省,連云港市,連云區', 119, 35, 'Lianyun');
INSERT INTO "public"."Sys_Region" VALUES (883, '320706', '海州區', 320700, 3, '中國,江蘇省,連云港市,海州區', 119, 35, 'Haizhou');
INSERT INTO "public"."Sys_Region" VALUES (884, '320707', '贛榆區', 320700, 3, '中國,江蘇省,連云港市,贛榆區', 119, 35, 'Ganyu');
INSERT INTO "public"."Sys_Region" VALUES (885, '320722', '東海縣', 320700, 3, '中國,江蘇省,連云港市,東海縣', 119, 35, 'Donghai');
INSERT INTO "public"."Sys_Region" VALUES (886, '320723', '灌云縣', 320700, 3, '中國,江蘇省,連云港市,灌云縣', 119, 34, 'Guanyun');
INSERT INTO "public"."Sys_Region" VALUES (887, '320724', '灌南縣', 320700, 3, '中國,江蘇省,連云港市,灌南縣', 119, 34, 'Guannan');
INSERT INTO "public"."Sys_Region" VALUES (888, '320800', '淮安市', 320000, 2, '中國,江蘇省,淮安市', 119, 34, 'Huaian');
INSERT INTO "public"."Sys_Region" VALUES (889, '320802', '清河區', 320800, 3, '中國,江蘇省,淮安市,清河區', 119, 34, 'Qinghe');
INSERT INTO "public"."Sys_Region" VALUES (890, '320803', '淮安區', 320800, 3, '中國,江蘇省,淮安市,淮安區', 119, 34, 'Huaian');
INSERT INTO "public"."Sys_Region" VALUES (891, '320804', '淮陰區', 320800, 3, '中國,江蘇省,淮安市,淮陰區', 119, 34, 'Huaiyin');
INSERT INTO "public"."Sys_Region" VALUES (892, '320811', '清浦區', 320800, 3, '中國,江蘇省,淮安市,清浦區', 119, 34, 'Qingpu');
INSERT INTO "public"."Sys_Region" VALUES (893, '320826', '漣水縣', 320800, 3, '中國,江蘇省,淮安市,漣水縣', 119, 34, 'Lianshui');
INSERT INTO "public"."Sys_Region" VALUES (894, '320829', '洪澤縣', 320800, 3, '中國,江蘇省,淮安市,洪澤縣', 119, 33, 'Hongze');
INSERT INTO "public"."Sys_Region" VALUES (895, '320830', '盱眙縣', 320800, 3, '中國,江蘇省,淮安市,盱眙縣', 119, 33, 'Xuyi');
INSERT INTO "public"."Sys_Region" VALUES (896, '320831', '金湖縣', 320800, 3, '中國,江蘇省,淮安市,金湖縣', 119, 33, 'Jinhu');
INSERT INTO "public"."Sys_Region" VALUES (897, '320900', '鹽城市', 320000, 2, '中國,江蘇省,鹽城市', 120, 33, 'Yancheng');
INSERT INTO "public"."Sys_Region" VALUES (898, '320902', '亭湖區', 320900, 3, '中國,江蘇省,鹽城市,亭湖區', 120, 33, 'Tinghu');
INSERT INTO "public"."Sys_Region" VALUES (899, '320903', '鹽都區', 320900, 3, '中國,江蘇省,鹽城市,鹽都區', 120, 33, 'Yandu');
INSERT INTO "public"."Sys_Region" VALUES (900, '320921', '響水縣', 320900, 3, '中國,江蘇省,鹽城市,響水縣', 120, 34, 'Xiangshui');
INSERT INTO "public"."Sys_Region" VALUES (901, '320922', '濱海縣', 320900, 3, '中國,江蘇省,鹽城市,濱海縣', 120, 34, 'Binhai');
INSERT INTO "public"."Sys_Region" VALUES (902, '320923', '阜寧縣', 320900, 3, '中國,江蘇省,鹽城市,阜寧縣', 120, 34, 'Funing');
INSERT INTO "public"."Sys_Region" VALUES (903, '320924', '射陽縣', 320900, 3, '中國,江蘇省,鹽城市,射陽縣', 120, 34, 'Sheyang');
INSERT INTO "public"."Sys_Region" VALUES (904, '320925', '建湖縣', 320900, 3, '中國,江蘇省,鹽城市,建湖縣', 120, 33, 'Jianhu');
INSERT INTO "public"."Sys_Region" VALUES (905, '320981', '東臺市', 320900, 3, '中國,江蘇省,鹽城市,東臺市', 120, 33, 'Dongtai');
INSERT INTO "public"."Sys_Region" VALUES (906, '320982', '大豐市', 320900, 3, '中國,江蘇省,鹽城市,大豐市', 120, 33, 'Dafeng');
INSERT INTO "public"."Sys_Region" VALUES (907, '321000', '揚州市', 320000, 2, '中國,江蘇省,揚州市', 119, 32, 'Yangzhou');
INSERT INTO "public"."Sys_Region" VALUES (908, '321002', '廣陵區', 321000, 3, '中國,江蘇省,揚州市,廣陵區', 119, 32, 'Guangling');
INSERT INTO "public"."Sys_Region" VALUES (909, '321003', '邗江區', 321000, 3, '中國,江蘇省,揚州市,邗江區', 119, 32, 'Hanjiang');
INSERT INTO "public"."Sys_Region" VALUES (910, '321012', '江都區', 321000, 3, '中國,江蘇省,揚州市,江都區', 120, 32, 'Jiangdu');
INSERT INTO "public"."Sys_Region" VALUES (911, '321023', '寶應縣', 321000, 3, '中國,江蘇省,揚州市,寶應縣', 119, 33, 'Baoying');
INSERT INTO "public"."Sys_Region" VALUES (912, '321081', '儀征市', 321000, 3, '中國,江蘇省,揚州市,儀征市', 119, 32, 'Yizheng');
INSERT INTO "public"."Sys_Region" VALUES (913, '321084', '高郵市', 321000, 3, '中國,江蘇省,揚州市,高郵市', 119, 33, 'Gaoyou');
INSERT INTO "public"."Sys_Region" VALUES (914, '321100', '鎮江市', 320000, 2, '中國,江蘇省,鎮江市', 119, 32, 'Zhenjiang');
INSERT INTO "public"."Sys_Region" VALUES (915, '321102', '京口區', 321100, 3, '中國,江蘇省,鎮江市,京口區', 119, 32, 'Jingkou');
INSERT INTO "public"."Sys_Region" VALUES (916, '321111', '潤州區', 321100, 3, '中國,江蘇省,鎮江市,潤州區', 119, 32, 'Runzhou');
INSERT INTO "public"."Sys_Region" VALUES (917, '321112', '丹徒區', 321100, 3, '中國,江蘇省,鎮江市,丹徒區', 119, 32, 'Dantu');
INSERT INTO "public"."Sys_Region" VALUES (918, '321181', '丹陽市', 321100, 3, '中國,江蘇省,鎮江市,丹陽市', 120, 32, 'Danyang');
INSERT INTO "public"."Sys_Region" VALUES (919, '321182', '揚中市', 321100, 3, '中國,江蘇省,鎮江市,揚中市', 120, 32, 'Yangzhong');
INSERT INTO "public"."Sys_Region" VALUES (920, '321183', '句容市', 321100, 3, '中國,江蘇省,鎮江市,句容市', 119, 32, 'Jurong');
INSERT INTO "public"."Sys_Region" VALUES (921, '321200', '泰州市', 320000, 2, '中國,江蘇省,泰州市', 120, 32, 'Taizhou');
INSERT INTO "public"."Sys_Region" VALUES (922, '321202', '海陵區', 321200, 3, '中國,江蘇省,泰州市,海陵區', 120, 32, 'Hailing');
INSERT INTO "public"."Sys_Region" VALUES (923, '321203', '高港區', 321200, 3, '中國,江蘇省,泰州市,高港區', 120, 32, 'Gaogang');
INSERT INTO "public"."Sys_Region" VALUES (924, '321204', '姜堰區', 321200, 3, '中國,江蘇省,泰州市,姜堰區', 120, 33, 'Jiangyan');
INSERT INTO "public"."Sys_Region" VALUES (925, '321281', '興化市', 321200, 3, '中國,江蘇省,泰州市,興化市', 120, 33, 'Xinghua');
INSERT INTO "public"."Sys_Region" VALUES (926, '321282', '靖江市', 321200, 3, '中國,江蘇省,泰州市,靖江市', 120, 32, 'Jingjiang');
INSERT INTO "public"."Sys_Region" VALUES (927, '321283', '泰興市', 321200, 3, '中國,江蘇省,泰州市,泰興市', 120, 32, 'Taixing');
INSERT INTO "public"."Sys_Region" VALUES (928, '321300', '宿遷市', 320000, 2, '中國,江蘇省,宿遷市', 118, 34, 'Suqian');
INSERT INTO "public"."Sys_Region" VALUES (929, '321302', '宿城區', 321300, 3, '中國,江蘇省,宿遷市,宿城區', 118, 34, 'Sucheng');
INSERT INTO "public"."Sys_Region" VALUES (930, '321311', '宿豫區', 321300, 3, '中國,江蘇省,宿遷市,宿豫區', 118, 34, 'Suyu');
INSERT INTO "public"."Sys_Region" VALUES (931, '321322', '沭陽縣', 321300, 3, '中國,江蘇省,宿遷市,沭陽縣', 119, 34, 'Shuyang');
INSERT INTO "public"."Sys_Region" VALUES (932, '321323', '泗陽縣', 321300, 3, '中國,江蘇省,宿遷市,泗陽縣', 119, 34, 'Siyang');
INSERT INTO "public"."Sys_Region" VALUES (933, '321324', '泗洪縣', 321300, 3, '中國,江蘇省,宿遷市,泗洪縣', 118, 33, 'Sihong');
INSERT INTO "public"."Sys_Region" VALUES (934, '330000', '浙江省', 100000, 1, '中國,浙江省', 120, 30, 'Zhejiang');
INSERT INTO "public"."Sys_Region" VALUES (935, '330100', '杭州市', 330000, 2, '中國,浙江省,杭州市', 120, 30, 'Hangzhou');
INSERT INTO "public"."Sys_Region" VALUES (936, '330102', '上城區', 330100, 3, '中國,浙江省,杭州市,上城區', 120, 30, 'Shangcheng');
INSERT INTO "public"."Sys_Region" VALUES (937, '330103', '下城區', 330100, 3, '中國,浙江省,杭州市,下城區', 120, 30, 'Xiacheng');
INSERT INTO "public"."Sys_Region" VALUES (938, '330104', '江干區', 330100, 3, '中國,浙江省,杭州市,江干區', 120, 30, 'Jianggan');
INSERT INTO "public"."Sys_Region" VALUES (939, '330105', '拱墅區', 330100, 3, '中國,浙江省,杭州市,拱墅區', 120, 30, 'Gongshu');
INSERT INTO "public"."Sys_Region" VALUES (940, '330106', '西湖區', 330100, 3, '中國,浙江省,杭州市,西湖區', 120, 30, 'Xihu');
INSERT INTO "public"."Sys_Region" VALUES (941, '330108', '濱江區', 330100, 3, '中國,浙江省,杭州市,濱江區', 120, 30, 'Binjiang');
INSERT INTO "public"."Sys_Region" VALUES (942, '330109', '蕭山區', 330100, 3, '中國,浙江省,杭州市,蕭山區', 120, 30, 'Xiaoshan');
INSERT INTO "public"."Sys_Region" VALUES (943, '330110', '余杭區', 330100, 3, '中國,浙江省,杭州市,余杭區', 120, 30, 'Yuhang');
INSERT INTO "public"."Sys_Region" VALUES (944, '330122', '桐廬縣', 330100, 3, '中國,浙江省,杭州市,桐廬縣', 120, 30, 'Tonglu');
INSERT INTO "public"."Sys_Region" VALUES (945, '330127', '淳安縣', 330100, 3, '中國,浙江省,杭州市,淳安縣', 119, 30, 'Chunan');
INSERT INTO "public"."Sys_Region" VALUES (946, '330182', '建德市', 330100, 3, '中國,浙江省,杭州市,建德市', 119, 29, 'Jiande');
INSERT INTO "public"."Sys_Region" VALUES (947, '330183', '富陽區', 330100, 3, '中國,浙江省,杭州市,富陽區', 120, 30, 'Fuyang');
INSERT INTO "public"."Sys_Region" VALUES (948, '330185', '臨安市', 330100, 3, '中國,浙江省,杭州市,臨安市', 120, 30, 'Linan');
INSERT INTO "public"."Sys_Region" VALUES (949, '330200', '寧波市', 330000, 2, '中國,浙江省,寧波市', 122, 30, 'Ningbo');
INSERT INTO "public"."Sys_Region" VALUES (950, '330203', '海曙區', 330200, 3, '中國,浙江省,寧波市,海曙區', 122, 30, 'Haishu');
INSERT INTO "public"."Sys_Region" VALUES (951, '330204', '江東區', 330200, 3, '中國,浙江省,寧波市,江東區', 122, 30, 'Jiangdong');
INSERT INTO "public"."Sys_Region" VALUES (952, '330205', '江北區', 330200, 3, '中國,浙江省,寧波市,江北區', 122, 30, 'Jiangbei');
INSERT INTO "public"."Sys_Region" VALUES (953, '330206', '北侖區', 330200, 3, '中國,浙江省,寧波市,北侖區', 122, 30, 'Beilun');
INSERT INTO "public"."Sys_Region" VALUES (954, '330211', '鎮海區', 330200, 3, '中國,浙江省,寧波市,鎮海區', 122, 30, 'Zhenhai');
INSERT INTO "public"."Sys_Region" VALUES (955, '330212', '鄞州區', 330200, 3, '中國,浙江省,寧波市,鄞州區', 122, 30, 'Yinzhou');
INSERT INTO "public"."Sys_Region" VALUES (956, '330225', '象山縣', 330200, 3, '中國,浙江省,寧波市,象山縣', 122, 29, 'Xiangshan');
INSERT INTO "public"."Sys_Region" VALUES (957, '330226', '寧海縣', 330200, 3, '中國,浙江省,寧波市,寧海縣', 121, 29, 'Ninghai');
INSERT INTO "public"."Sys_Region" VALUES (958, '330281', '余姚市', 330200, 3, '中國,浙江省,寧波市,余姚市', 121, 30, 'Yuyao');
INSERT INTO "public"."Sys_Region" VALUES (959, '330282', '慈溪市', 330200, 3, '中國,浙江省,寧波市,慈溪市', 121, 30, 'Cixi');
INSERT INTO "public"."Sys_Region" VALUES (960, '330283', '奉化市', 330200, 3, '中國,浙江省,寧波市,奉化市', 121, 30, 'Fenghua');
INSERT INTO "public"."Sys_Region" VALUES (961, '330300', '溫州市', 330000, 2, '中國,浙江省,溫州市', 121, 28, 'Wenzhou');
INSERT INTO "public"."Sys_Region" VALUES (962, '330302', '鹿城區', 330300, 3, '中國,浙江省,溫州市,鹿城區', 121, 28, 'Lucheng');
INSERT INTO "public"."Sys_Region" VALUES (963, '330303', '龍灣區', 330300, 3, '中國,浙江省,溫州市,龍灣區', 121, 28, 'Longwan');
INSERT INTO "public"."Sys_Region" VALUES (964, '330304', '甌海區', 330300, 3, '中國,浙江省,溫州市,甌海區', 121, 28, 'Ouhai');
INSERT INTO "public"."Sys_Region" VALUES (965, '330322', '洞頭縣', 330300, 3, '中國,浙江省,溫州市,洞頭縣', 121, 28, 'Dongtou');
INSERT INTO "public"."Sys_Region" VALUES (966, '330324', '永嘉縣', 330300, 3, '中國,浙江省,溫州市,永嘉縣', 121, 28, 'Yongjia');
INSERT INTO "public"."Sys_Region" VALUES (967, '330326', '平陽縣', 330300, 3, '中國,浙江省,溫州市,平陽縣', 121, 28, 'Pingyang');
INSERT INTO "public"."Sys_Region" VALUES (968, '330327', '蒼南縣', 330300, 3, '中國,浙江省,溫州市,蒼南縣', 120, 28, 'Cangnan');
INSERT INTO "public"."Sys_Region" VALUES (969, '330328', '文成縣', 330300, 3, '中國,浙江省,溫州市,文成縣', 120, 28, 'Wencheng');
INSERT INTO "public"."Sys_Region" VALUES (970, '330329', '泰順縣', 330300, 3, '中國,浙江省,溫州市,泰順縣', 120, 28, 'Taishun');
INSERT INTO "public"."Sys_Region" VALUES (971, '330381', '瑞安市', 330300, 3, '中國,浙江省,溫州市,瑞安市', 121, 28, 'Ruian');
INSERT INTO "public"."Sys_Region" VALUES (972, '330382', '樂清市', 330300, 3, '中國,浙江省,溫州市,樂清市', 121, 28, 'Yueqing');
INSERT INTO "public"."Sys_Region" VALUES (973, '330400', '嘉興市', 330000, 2, '中國,浙江省,嘉興市', 121, 31, 'Jiaxing');
INSERT INTO "public"."Sys_Region" VALUES (974, '330402', '南湖區', 330400, 3, '中國,浙江省,嘉興市,南湖區', 121, 31, 'Nanhu');
INSERT INTO "public"."Sys_Region" VALUES (975, '330411', '秀洲區', 330400, 3, '中國,浙江省,嘉興市,秀洲區', 121, 31, 'Xiuzhou');
INSERT INTO "public"."Sys_Region" VALUES (976, '330421', '嘉善縣', 330400, 3, '中國,浙江省,嘉興市,嘉善縣', 121, 31, 'Jiashan');
INSERT INTO "public"."Sys_Region" VALUES (977, '330424', '海鹽縣', 330400, 3, '中國,浙江省,嘉興市,海鹽縣', 121, 31, 'Haiyan');
INSERT INTO "public"."Sys_Region" VALUES (978, '330481', '海寧市', 330400, 3, '中國,浙江省,嘉興市,海寧市', 121, 31, 'Haining');
INSERT INTO "public"."Sys_Region" VALUES (979, '330482', '平湖市', 330400, 3, '中國,浙江省,嘉興市,平湖市', 121, 31, 'Pinghu');
INSERT INTO "public"."Sys_Region" VALUES (980, '330483', '桐鄉市', 330400, 3, '中國,浙江省,嘉興市,桐鄉市', 121, 31, 'Tongxiang');
INSERT INTO "public"."Sys_Region" VALUES (981, '330500', '湖州市', 330000, 2, '中國,浙江省,湖州市', 120, 31, 'Huzhou');
INSERT INTO "public"."Sys_Region" VALUES (982, '330502', '吳興區', 330500, 3, '中國,浙江省,湖州市,吳興區', 120, 31, 'Wuxing');
INSERT INTO "public"."Sys_Region" VALUES (983, '330503', '南潯區', 330500, 3, '中國,浙江省,湖州市,南潯區', 120, 31, 'Nanxun');
INSERT INTO "public"."Sys_Region" VALUES (984, '330521', '德清縣', 330500, 3, '中國,浙江省,湖州市,德清縣', 120, 31, 'Deqing');
INSERT INTO "public"."Sys_Region" VALUES (985, '330522', '長興縣', 330500, 3, '中國,浙江省,湖州市,長興縣', 120, 31, 'Changxing');
INSERT INTO "public"."Sys_Region" VALUES (986, '330523', '安吉縣', 330500, 3, '中國,浙江省,湖州市,安吉縣', 120, 31, 'Anji');
INSERT INTO "public"."Sys_Region" VALUES (987, '330600', '紹興市', 330000, 2, '中國,浙江省,紹興市', 121, 30, 'Shaoxing');
INSERT INTO "public"."Sys_Region" VALUES (988, '330602', '越城區', 330600, 3, '中國,浙江省,紹興市,越城區', 121, 30, 'Yuecheng');
INSERT INTO "public"."Sys_Region" VALUES (989, '330603', '柯橋區', 330600, 3, '中國,浙江省,紹興市,柯橋區', 120, 30, 'Keqiao ');
INSERT INTO "public"."Sys_Region" VALUES (990, '330604', '上虞區', 330600, 3, '中國,浙江省,紹興市,上虞區', 120, 30, 'Shangyu');
INSERT INTO "public"."Sys_Region" VALUES (991, '330624', '新昌縣', 330600, 3, '中國,浙江省,紹興市,新昌縣', 121, 29, 'Xinchang');
INSERT INTO "public"."Sys_Region" VALUES (992, '330681', '諸暨市', 330600, 3, '中國,浙江省,紹興市,諸暨市', 120, 30, 'Zhuji');
INSERT INTO "public"."Sys_Region" VALUES (993, '330683', '嵊州市', 330600, 3, '中國,浙江省,紹興市,嵊州市', 121, 30, 'Shengzhou');
INSERT INTO "public"."Sys_Region" VALUES (994, '330700', '金華市', 330000, 2, '中國,浙江省,金華市', 120, 29, 'Jinhua');
INSERT INTO "public"."Sys_Region" VALUES (995, '330702', '婺城區', 330700, 3, '中國,浙江省,金華市,婺城區', 120, 29, 'Wucheng');
INSERT INTO "public"."Sys_Region" VALUES (996, '330703', '金東區', 330700, 3, '中國,浙江省,金華市,金東區', 120, 29, 'Jindong');
INSERT INTO "public"."Sys_Region" VALUES (997, '330723', '武義縣', 330700, 3, '中國,浙江省,金華市,武義縣', 120, 29, 'Wuyi');
INSERT INTO "public"."Sys_Region" VALUES (998, '330726', '浦江縣', 330700, 3, '中國,浙江省,金華市,浦江縣', 120, 29, 'Pujiang');
INSERT INTO "public"."Sys_Region" VALUES (999, '330727', '磐安縣', 330700, 3, '中國,浙江省,金華市,磐安縣', 120, 29, 'Panan');
INSERT INTO "public"."Sys_Region" VALUES (1000, '330781', '蘭溪市', 330700, 3, '中國,浙江省,金華市,蘭溪市', 119, 29, 'Lanxi');
INSERT INTO "public"."Sys_Region" VALUES (1001, '330782', '義烏市', 330700, 3, '中國,浙江省,金華市,義烏市', 120, 29, 'Yiwu');
INSERT INTO "public"."Sys_Region" VALUES (1002, '330783', '東陽市', 330700, 3, '中國,浙江省,金華市,東陽市', 120, 29, 'Dongyang');
INSERT INTO "public"."Sys_Region" VALUES (1003, '330784', '永康市', 330700, 3, '中國,浙江省,金華市,永康市', 120, 29, 'Yongkang');
INSERT INTO "public"."Sys_Region" VALUES (1004, '330800', '衢州市', 330000, 2, '中國,浙江省,衢州市', 119, 29, 'Quzhou');
INSERT INTO "public"."Sys_Region" VALUES (1005, '330802', '柯城區', 330800, 3, '中國,浙江省,衢州市,柯城區', 119, 29, 'Kecheng');
INSERT INTO "public"."Sys_Region" VALUES (1006, '330803', '衢江區', 330800, 3, '中國,浙江省,衢州市,衢江區', 119, 29, 'Qujiang');
INSERT INTO "public"."Sys_Region" VALUES (1007, '330822', '常山縣', 330800, 3, '中國,浙江省,衢州市,常山縣', 119, 29, 'Changshan');
INSERT INTO "public"."Sys_Region" VALUES (1008, '330824', '開化縣', 330800, 3, '中國,浙江省,衢州市,開化縣', 118, 29, 'Kaihua');
INSERT INTO "public"."Sys_Region" VALUES (1009, '330825', '龍游縣', 330800, 3, '中國,浙江省,衢州市,龍游縣', 119, 29, 'Longyou');
INSERT INTO "public"."Sys_Region" VALUES (1010, '330881', '江山市', 330800, 3, '中國,浙江省,衢州市,江山市', 119, 29, 'Jiangshan');
INSERT INTO "public"."Sys_Region" VALUES (1011, '330900', '舟山市', 330000, 2, '中國,浙江省,舟山市', 122, 30, 'Zhoushan');
INSERT INTO "public"."Sys_Region" VALUES (1012, '330902', '定海區', 330900, 3, '中國,浙江省,舟山市,定海區', 122, 30, 'Dinghai');
INSERT INTO "public"."Sys_Region" VALUES (1013, '330903', '普陀區', 330900, 3, '中國,浙江省,舟山市,普陀區', 122, 30, 'Putuo');
INSERT INTO "public"."Sys_Region" VALUES (1014, '330921', '岱山縣', 330900, 3, '中國,浙江省,舟山市,岱山縣', 122, 30, 'Daishan');
INSERT INTO "public"."Sys_Region" VALUES (1015, '330922', '嵊泗縣', 330900, 3, '中國,浙江省,舟山市,嵊泗縣', 122, 31, 'Shengsi');
INSERT INTO "public"."Sys_Region" VALUES (1016, '331000', '臺州市', 330000, 2, '中國,浙江省,臺州市', 121, 29, 'Taizhou');
INSERT INTO "public"."Sys_Region" VALUES (1017, '331002', '椒江區', 331000, 3, '中國,浙江省,臺州市,椒江區', 121, 29, 'Jiaojiang');
INSERT INTO "public"."Sys_Region" VALUES (1018, '331003', '黃巖區', 331000, 3, '中國,浙江省,臺州市,黃巖區', 121, 29, 'Huangyan');
INSERT INTO "public"."Sys_Region" VALUES (1019, '331004', '路橋區', 331000, 3, '中國,浙江省,臺州市,路橋區', 121, 29, 'Luqiao');
INSERT INTO "public"."Sys_Region" VALUES (1020, '331021', '玉環縣', 331000, 3, '中國,浙江省,臺州市,玉環縣', 121, 28, 'Yuhuan');
INSERT INTO "public"."Sys_Region" VALUES (1021, '331022', '三門縣', 331000, 3, '中國,浙江省,臺州市,三門縣', 121, 29, 'Sanmen');
INSERT INTO "public"."Sys_Region" VALUES (1022, '331023', '天臺縣', 331000, 3, '中國,浙江省,臺州市,天臺縣', 121, 29, 'Tiantai');
INSERT INTO "public"."Sys_Region" VALUES (1023, '331024', '仙居縣', 331000, 3, '中國,浙江省,臺州市,仙居縣', 121, 29, 'Xianju');
INSERT INTO "public"."Sys_Region" VALUES (1024, '331081', '溫嶺市', 331000, 3, '中國,浙江省,臺州市,溫嶺市', 121, 28, 'Wenling');
INSERT INTO "public"."Sys_Region" VALUES (1025, '331082', '臨海市', 331000, 3, '中國,浙江省,臺州市,臨海市', 121, 29, 'Linhai');
INSERT INTO "public"."Sys_Region" VALUES (1026, '331100', '麗水市', 330000, 2, '中國,浙江省,麗水市', 120, 28, 'Lishui');
INSERT INTO "public"."Sys_Region" VALUES (1027, '331102', '蓮都區', 331100, 3, '中國,浙江省,麗水市,蓮都區', 120, 28, 'Liandu');
INSERT INTO "public"."Sys_Region" VALUES (1028, '331121', '青田縣', 331100, 3, '中國,浙江省,麗水市,青田縣', 120, 28, 'Qingtian');
INSERT INTO "public"."Sys_Region" VALUES (1029, '331122', '縉云縣', 331100, 3, '中國,浙江省,麗水市,縉云縣', 120, 29, 'Jinyun');
INSERT INTO "public"."Sys_Region" VALUES (1030, '331123', '遂昌縣', 331100, 3, '中國,浙江省,麗水市,遂昌縣', 119, 29, 'Suichang');
INSERT INTO "public"."Sys_Region" VALUES (1031, '331124', '松陽縣', 331100, 3, '中國,浙江省,麗水市,松陽縣', 119, 28, 'Songyang');
INSERT INTO "public"."Sys_Region" VALUES (1032, '331125', '云和縣', 331100, 3, '中國,浙江省,麗水市,云和縣', 120, 28, 'Yunhe');
INSERT INTO "public"."Sys_Region" VALUES (1033, '331126', '慶元縣', 331100, 3, '中國,浙江省,麗水市,慶元縣', 119, 28, 'Qingyuan');
INSERT INTO "public"."Sys_Region" VALUES (1034, '331127', '景寧畬族自治縣', 331100, 3, '中國,浙江省,麗水市,景寧畬族自治縣', 120, 28, 'Jingning');
INSERT INTO "public"."Sys_Region" VALUES (1035, '331181', '龍泉市', 331100, 3, '中國,浙江省,麗水市,龍泉市', 119, 28, 'Longquan');
INSERT INTO "public"."Sys_Region" VALUES (1036, '331200', '舟山群島新區', 330000, 2, '中國,浙江省,舟山群島新區', 122, 30, 'Zhoushan');
INSERT INTO "public"."Sys_Region" VALUES (1037, '331201', '金塘島', 331200, 3, '中國,浙江省,舟山群島新區,金塘島', 122, 30, 'Jintang');
INSERT INTO "public"."Sys_Region" VALUES (1038, '331202', '六橫島', 331200, 3, '中國,浙江省,舟山群島新區,六橫島', 122, 30, 'Liuheng');
INSERT INTO "public"."Sys_Region" VALUES (1039, '331203', '衢山島', 331200, 3, '中國,浙江省,舟山群島新區,衢山島', 122, 30, 'Qushan');
INSERT INTO "public"."Sys_Region" VALUES (1040, '331204', '舟山本島西北部', 331200, 3, '中國,浙江省,舟山群島新區,舟山本島西北部', 122, 30, 'Zhoushan');
INSERT INTO "public"."Sys_Region" VALUES (1041, '331205', '岱山島西南部', 331200, 3, '中國,浙江省,舟山群島新區,岱山島西南部', 122, 30, 'Daishan');
INSERT INTO "public"."Sys_Region" VALUES (1042, '331206', '泗礁島', 331200, 3, '中國,浙江省,舟山群島新區,泗礁島', 122, 31, 'Sijiao');
INSERT INTO "public"."Sys_Region" VALUES (1043, '331207', '朱家尖島', 331200, 3, '中國,浙江省,舟山群島新區,朱家尖島', 122, 30, 'Zhujiajian');
INSERT INTO "public"."Sys_Region" VALUES (1044, '331208', '洋山島', 331200, 3, '中國,浙江省,舟山群島新區,洋山島', 122, 30, 'Yangshan');
INSERT INTO "public"."Sys_Region" VALUES (1045, '331209', '長涂島', 331200, 3, '中國,浙江省,舟山群島新區,長涂島', 122, 30, 'Changtu');
INSERT INTO "public"."Sys_Region" VALUES (1046, '331210', '蝦峙島', 331200, 3, '中國,浙江省,舟山群島新區,蝦峙島', 122, 30, 'Xiazhi');
INSERT INTO "public"."Sys_Region" VALUES (1047, '340000', '安徽省', 100000, 1, '中國,安徽省', 117, 32, 'Anhui');
INSERT INTO "public"."Sys_Region" VALUES (1048, '340100', '合肥市', 340000, 2, '中國,安徽省,合肥市', 117, 32, 'Hefei');
INSERT INTO "public"."Sys_Region" VALUES (1049, '340102', '瑤海區', 340100, 3, '中國,安徽省,合肥市,瑤海區', 117, 32, 'Yaohai');
INSERT INTO "public"."Sys_Region" VALUES (1050, '340103', '廬陽區', 340100, 3, '中國,安徽省,合肥市,廬陽區', 117, 32, 'Luyang');
INSERT INTO "public"."Sys_Region" VALUES (1051, '340104', '蜀山區', 340100, 3, '中國,安徽省,合肥市,蜀山區', 117, 32, 'Shushan');
INSERT INTO "public"."Sys_Region" VALUES (1052, '340111', '包河區', 340100, 3, '中國,安徽省,合肥市,包河區', 117, 32, 'Baohe');
INSERT INTO "public"."Sys_Region" VALUES (1053, '340121', '長豐縣', 340100, 3, '中國,安徽省,合肥市,長豐縣', 117, 32, 'Changfeng');
INSERT INTO "public"."Sys_Region" VALUES (1054, '340122', '肥東縣', 340100, 3, '中國,安徽省,合肥市,肥東縣', 117, 32, 'Feidong');
INSERT INTO "public"."Sys_Region" VALUES (1055, '340123', '肥西縣', 340100, 3, '中國,安徽省,合肥市,肥西縣', 117, 32, 'Feixi');
INSERT INTO "public"."Sys_Region" VALUES (1056, '340124', '廬江縣', 340100, 3, '中國,安徽省,合肥市,廬江縣', 117, 31, 'Lujiang');
INSERT INTO "public"."Sys_Region" VALUES (1057, '340181', '巢湖市', 340100, 3, '中國,安徽省,合肥市,巢湖市', 118, 32, 'Chaohu');
INSERT INTO "public"."Sys_Region" VALUES (1058, '340200', '蕪湖市', 340000, 2, '中國,安徽省,蕪湖市', 118, 31, 'Wuhu');
INSERT INTO "public"."Sys_Region" VALUES (1059, '340202', '鏡湖區', 340200, 3, '中國,安徽省,蕪湖市,鏡湖區', 118, 31, 'Jinghu');
INSERT INTO "public"."Sys_Region" VALUES (1060, '340203', '弋江區', 340200, 3, '中國,安徽省,蕪湖市,弋江區', 118, 31, 'Yijiang');
INSERT INTO "public"."Sys_Region" VALUES (1061, '340207', '鳩江區', 340200, 3, '中國,安徽省,蕪湖市,鳩江區', 118, 31, 'Jiujiang');
INSERT INTO "public"."Sys_Region" VALUES (1062, '340208', '三山區', 340200, 3, '中國,安徽省,蕪湖市,三山區', 118, 31, 'Sanshan');
INSERT INTO "public"."Sys_Region" VALUES (1063, '340221', '蕪湖縣', 340200, 3, '中國,安徽省,蕪湖市,蕪湖縣', 119, 31, 'Wuhu');
INSERT INTO "public"."Sys_Region" VALUES (1064, '340222', '繁昌縣', 340200, 3, '中國,安徽省,蕪湖市,繁昌縣', 118, 31, 'Fanchang');
INSERT INTO "public"."Sys_Region" VALUES (1065, '340223', '南陵縣', 340200, 3, '中國,安徽省,蕪湖市,南陵縣', 118, 31, 'Nanling');
INSERT INTO "public"."Sys_Region" VALUES (1066, '340225', '無為縣', 340200, 3, '中國,安徽省,蕪湖市,無為縣', 118, 31, 'Wuwei');
INSERT INTO "public"."Sys_Region" VALUES (1067, '340300', '蚌埠市', 340000, 2, '中國,安徽省,蚌埠市', 117, 33, 'Bengbu');
INSERT INTO "public"."Sys_Region" VALUES (1068, '340302', '龍子湖區', 340300, 3, '中國,安徽省,蚌埠市,龍子湖區', 117, 33, 'Longzihu');
INSERT INTO "public"."Sys_Region" VALUES (1069, '340303', '蚌山區', 340300, 3, '中國,安徽省,蚌埠市,蚌山區', 117, 33, 'Bengshan');
INSERT INTO "public"."Sys_Region" VALUES (1070, '340304', '禹會區', 340300, 3, '中國,安徽省,蚌埠市,禹會區', 117, 33, 'Yuhui');
INSERT INTO "public"."Sys_Region" VALUES (1071, '340311', '淮上區', 340300, 3, '中國,安徽省,蚌埠市,淮上區', 117, 33, 'Huaishang');
INSERT INTO "public"."Sys_Region" VALUES (1072, '340321', '懷遠縣', 340300, 3, '中國,安徽省,蚌埠市,懷遠縣', 117, 33, 'Huaiyuan');
INSERT INTO "public"."Sys_Region" VALUES (1073, '340322', '五河縣', 340300, 3, '中國,安徽省,蚌埠市,五河縣', 118, 33, 'Wuhe');
INSERT INTO "public"."Sys_Region" VALUES (1074, '340323', '固鎮縣', 340300, 3, '中國,安徽省,蚌埠市,固鎮縣', 117, 33, 'Guzhen');
INSERT INTO "public"."Sys_Region" VALUES (1075, '340400', '淮南市', 340000, 2, '中國,安徽省,淮南市', 117, 33, 'Huainan');
INSERT INTO "public"."Sys_Region" VALUES (1076, '340402', '大通區', 340400, 3, '中國,安徽省,淮南市,大通區', 117, 33, 'Datong');
INSERT INTO "public"."Sys_Region" VALUES (1077, '340403', '田家庵區', 340400, 3, '中國,安徽省,淮南市,田家庵區', 117, 33, 'Tianjiaan');
INSERT INTO "public"."Sys_Region" VALUES (1078, '340404', '謝家集區', 340400, 3, '中國,安徽省,淮南市,謝家集區', 117, 33, 'Xiejiaji');
INSERT INTO "public"."Sys_Region" VALUES (1079, '340405', '八公山區', 340400, 3, '中國,安徽省,淮南市,八公山區', 117, 33, 'Bagongshan');
INSERT INTO "public"."Sys_Region" VALUES (1080, '340406', '潘集區', 340400, 3, '中國,安徽省,淮南市,潘集區', 117, 33, 'Panji');
INSERT INTO "public"."Sys_Region" VALUES (1081, '340421', '鳳臺縣', 340400, 3, '中國,安徽省,淮南市,鳳臺縣', 117, 33, 'Fengtai');
INSERT INTO "public"."Sys_Region" VALUES (1082, '340500', '馬鞍山市', 340000, 2, '中國,安徽省,馬鞍山市', 119, 32, 'Maanshan');
INSERT INTO "public"."Sys_Region" VALUES (1083, '340503', '花山區', 340500, 3, '中國,安徽省,馬鞍山市,花山區', 119, 32, 'Huashan');
INSERT INTO "public"."Sys_Region" VALUES (1084, '340504', '雨山區', 340500, 3, '中國,安徽省,馬鞍山市,雨山區', 118, 32, 'Yushan');
INSERT INTO "public"."Sys_Region" VALUES (1085, '340506', '博望區', 340500, 3, '中國,安徽省,馬鞍山市,博望區', 119, 32, 'Bowang');
INSERT INTO "public"."Sys_Region" VALUES (1086, '340521', '當涂縣', 340500, 3, '中國,安徽省,馬鞍山市,當涂縣', 118, 32, 'Dangtu');
INSERT INTO "public"."Sys_Region" VALUES (1087, '340522', '含山縣', 340500, 3, '中國,安徽省,馬鞍山市,含山縣', 118, 32, 'Hanshan ');
INSERT INTO "public"."Sys_Region" VALUES (1088, '340523', '和縣', 340500, 3, '中國,安徽省,馬鞍山市,和縣', 118, 32, 'Hexian');
INSERT INTO "public"."Sys_Region" VALUES (1089, '340600', '淮北市', 340000, 2, '中國,安徽省,淮北市', 117, 34, 'Huaibei');
INSERT INTO "public"."Sys_Region" VALUES (1090, '340602', '杜集區', 340600, 3, '中國,安徽省,淮北市,杜集區', 117, 34, 'Duji');
INSERT INTO "public"."Sys_Region" VALUES (1091, '340603', '相山區', 340600, 3, '中國,安徽省,淮北市,相山區', 117, 34, 'Xiangshan');
INSERT INTO "public"."Sys_Region" VALUES (1092, '340604', '烈山區', 340600, 3, '中國,安徽省,淮北市,烈山區', 117, 34, 'Lieshan');
INSERT INTO "public"."Sys_Region" VALUES (1093, '340621', '濉溪縣', 340600, 3, '中國,安徽省,淮北市,濉溪縣', 117, 34, 'Suixi');
INSERT INTO "public"."Sys_Region" VALUES (1094, '340700', '銅陵市', 340000, 2, '中國,安徽省,銅陵市', 118, 31, 'Tongling');
INSERT INTO "public"."Sys_Region" VALUES (1095, '340702', '銅官山區', 340700, 3, '中國,安徽省,銅陵市,銅官山區', 118, 31, 'Tongguanshan');
INSERT INTO "public"."Sys_Region" VALUES (1096, '340703', '獅子山區', 340700, 3, '中國,安徽省,銅陵市,獅子山區', 118, 31, 'Shizishan');
INSERT INTO "public"."Sys_Region" VALUES (1097, '340711', '郊區', 340700, 3, '中國,安徽省,銅陵市,郊區', 118, 31, 'Jiaoqu');
INSERT INTO "public"."Sys_Region" VALUES (1098, '340721', '銅陵縣', 340700, 3, '中國,安徽省,銅陵市,銅陵縣', 118, 31, 'Tongling');
INSERT INTO "public"."Sys_Region" VALUES (1099, '340800', '安慶市', 340000, 2, '中國,安徽省,安慶市', 117, 31, 'Anqing');
INSERT INTO "public"."Sys_Region" VALUES (1100, '340802', '迎江區', 340800, 3, '中國,安徽省,安慶市,迎江區', 117, 31, 'Yingjiang');
INSERT INTO "public"."Sys_Region" VALUES (1101, '340803', '大觀區', 340800, 3, '中國,安徽省,安慶市,大觀區', 117, 31, 'Daguan');
INSERT INTO "public"."Sys_Region" VALUES (1102, '340811', '宜秀區', 340800, 3, '中國,安徽省,安慶市,宜秀區', 117, 31, 'Yixiu');
INSERT INTO "public"."Sys_Region" VALUES (1103, '340822', '懷寧縣', 340800, 3, '中國,安徽省,安慶市,懷寧縣', 117, 31, 'Huaining');
INSERT INTO "public"."Sys_Region" VALUES (1104, '340823', '樅陽縣', 340800, 3, '中國,安徽省,安慶市,樅陽縣', 117, 31, 'Zongyang');
INSERT INTO "public"."Sys_Region" VALUES (1105, '340824', '潛山縣', 340800, 3, '中國,安徽省,安慶市,潛山縣', 117, 31, 'Qianshan');
INSERT INTO "public"."Sys_Region" VALUES (1106, '340825', '太湖縣', 340800, 3, '中國,安徽省,安慶市,太湖縣', 116, 30, 'Taihu');
INSERT INTO "public"."Sys_Region" VALUES (1107, '340826', '宿松縣', 340800, 3, '中國,安徽省,安慶市,宿松縣', 116, 30, 'Susong');
INSERT INTO "public"."Sys_Region" VALUES (1108, '340827', '望江縣', 340800, 3, '中國,安徽省,安慶市,望江縣', 117, 30, 'Wangjiang');
INSERT INTO "public"."Sys_Region" VALUES (1109, '340828', '岳西縣', 340800, 3, '中國,安徽省,安慶市,岳西縣', 116, 31, 'Yuexi');
INSERT INTO "public"."Sys_Region" VALUES (1110, '340881', '桐城市', 340800, 3, '中國,安徽省,安慶市,桐城市', 117, 31, 'Tongcheng');
INSERT INTO "public"."Sys_Region" VALUES (1111, '341000', '黃山市', 340000, 2, '中國,安徽省,黃山市', 118, 30, 'Huangshan');
INSERT INTO "public"."Sys_Region" VALUES (1112, '341002', '屯溪區', 341000, 3, '中國,安徽省,黃山市,屯溪區', 118, 30, 'Tunxi');
INSERT INTO "public"."Sys_Region" VALUES (1113, '341003', '黃山區', 341000, 3, '中國,安徽省,黃山市,黃山區', 118, 30, 'Huangshan');
INSERT INTO "public"."Sys_Region" VALUES (1114, '341004', '徽州區', 341000, 3, '中國,安徽省,黃山市,徽州區', 118, 30, 'Huizhou');
INSERT INTO "public"."Sys_Region" VALUES (1115, '341021', '歙縣', 341000, 3, '中國,安徽省,黃山市,歙縣', 118, 30, 'Shexian');
INSERT INTO "public"."Sys_Region" VALUES (1116, '341022', '休寧縣', 341000, 3, '中國,安徽省,黃山市,休寧縣', 118, 30, 'Xiuning');
INSERT INTO "public"."Sys_Region" VALUES (1117, '341023', '黟縣', 341000, 3, '中國,安徽省,黃山市,黟縣', 118, 30, 'Yixian');
INSERT INTO "public"."Sys_Region" VALUES (1118, '341024', '祁門縣', 341000, 3, '中國,安徽省,黃山市,祁門縣', 118, 30, 'Qimen');
INSERT INTO "public"."Sys_Region" VALUES (1119, '341100', '滁州市', 340000, 2, '中國,安徽省,滁州市', 118, 32, 'Chuzhou');
INSERT INTO "public"."Sys_Region" VALUES (1120, '341102', '瑯琊區', 341100, 3, '中國,安徽省,滁州市,瑯琊區', 118, 32, 'Langya');
INSERT INTO "public"."Sys_Region" VALUES (1121, '341103', '南譙區', 341100, 3, '中國,安徽省,滁州市,南譙區', 118, 32, 'Nanqiao');
INSERT INTO "public"."Sys_Region" VALUES (1122, '341122', '來安縣', 341100, 3, '中國,安徽省,滁州市,來安縣', 118, 32, 'Laian');
INSERT INTO "public"."Sys_Region" VALUES (1123, '341124', '全椒縣', 341100, 3, '中國,安徽省,滁州市,全椒縣', 118, 32, 'Quanjiao');
INSERT INTO "public"."Sys_Region" VALUES (1124, '341125', '定遠縣', 341100, 3, '中國,安徽省,滁州市,定遠縣', 118, 33, 'Dingyuan');
INSERT INTO "public"."Sys_Region" VALUES (1125, '341126', '鳳陽縣', 341100, 3, '中國,安徽省,滁州市,鳳陽縣', 118, 33, 'Fengyang');
INSERT INTO "public"."Sys_Region" VALUES (1126, '341181', '天長市', 341100, 3, '中國,安徽省,滁州市,天長市', 119, 33, 'Tianchang');
INSERT INTO "public"."Sys_Region" VALUES (1127, '341182', '明光市', 341100, 3, '中國,安徽省,滁州市,明光市', 118, 33, 'Mingguang');
INSERT INTO "public"."Sys_Region" VALUES (1128, '341200', '阜陽市', 340000, 2, '中國,安徽省,阜陽市', 116, 33, 'Fuyang');
INSERT INTO "public"."Sys_Region" VALUES (1129, '341202', '潁州區', 341200, 3, '中國,安徽省,阜陽市,潁州區', 116, 33, 'Yingzhou');
INSERT INTO "public"."Sys_Region" VALUES (1130, '341203', '潁東區', 341200, 3, '中國,安徽省,阜陽市,潁東區', 116, 33, 'Yingdong');
INSERT INTO "public"."Sys_Region" VALUES (1131, '341204', '潁泉區', 341200, 3, '中國,安徽省,阜陽市,潁泉區', 116, 33, 'Yingquan');
INSERT INTO "public"."Sys_Region" VALUES (1132, '341221', '臨泉縣', 341200, 3, '中國,安徽省,阜陽市,臨泉縣', 115, 33, 'Linquan');
INSERT INTO "public"."Sys_Region" VALUES (1133, '341222', '太和縣', 341200, 3, '中國,安徽省,阜陽市,太和縣', 116, 33, 'Taihe');
INSERT INTO "public"."Sys_Region" VALUES (1134, '341225', '阜南縣', 341200, 3, '中國,安徽省,阜陽市,阜南縣', 116, 33, 'Funan');
INSERT INTO "public"."Sys_Region" VALUES (1135, '341226', '潁上縣', 341200, 3, '中國,安徽省,阜陽市,潁上縣', 116, 33, 'Yingshang');
INSERT INTO "public"."Sys_Region" VALUES (1136, '341282', '界首市', 341200, 3, '中國,安徽省,阜陽市,界首市', 115, 33, 'Jieshou');
INSERT INTO "public"."Sys_Region" VALUES (1137, '341300', '宿州市', 340000, 2, '中國,安徽省,宿州市', 117, 34, 'Suzhou');
INSERT INTO "public"."Sys_Region" VALUES (1138, '341302', '埇橋區', 341300, 3, '中國,安徽省,宿州市,埇橋區', 117, 34, 'Yongqiao');
INSERT INTO "public"."Sys_Region" VALUES (1139, '341321', '碭山縣', 341300, 3, '中國,安徽省,宿州市,碭山縣', 116, 34, 'Dangshan');
INSERT INTO "public"."Sys_Region" VALUES (1140, '341322', '蕭縣', 341300, 3, '中國,安徽省,宿州市,蕭縣', 117, 34, 'Xiaoxian');
INSERT INTO "public"."Sys_Region" VALUES (1141, '341323', '靈璧縣', 341300, 3, '中國,安徽省,宿州市,靈璧縣', 118, 34, 'Lingbi');
INSERT INTO "public"."Sys_Region" VALUES (1142, '341324', '泗縣', 341300, 3, '中國,安徽省,宿州市,泗縣', 118, 33, 'Sixian');
INSERT INTO "public"."Sys_Region" VALUES (1143, '341500', '六安市', 340000, 2, '中國,安徽省,六安市', 117, 32, 'Luan');
INSERT INTO "public"."Sys_Region" VALUES (1144, '341502', '金安區', 341500, 3, '中國,安徽省,六安市,金安區', 117, 32, 'Jinan');
INSERT INTO "public"."Sys_Region" VALUES (1145, '341503', '裕安區', 341500, 3, '中國,安徽省,六安市,裕安區', 116, 32, 'Yuan');
INSERT INTO "public"."Sys_Region" VALUES (1146, '341521', '壽縣', 341500, 3, '中國,安徽省,六安市,壽縣', 117, 33, 'Shouxian');
INSERT INTO "public"."Sys_Region" VALUES (1147, '341522', '霍邱縣', 341500, 3, '中國,安徽省,六安市,霍邱縣', 116, 32, 'Huoqiu');
INSERT INTO "public"."Sys_Region" VALUES (1148, '341523', '舒城縣', 341500, 3, '中國,安徽省,六安市,舒城縣', 117, 31, 'Shucheng');
INSERT INTO "public"."Sys_Region" VALUES (1149, '341524', '金寨縣', 341500, 3, '中國,安徽省,六安市,金寨縣', 116, 32, 'Jinzhai');
INSERT INTO "public"."Sys_Region" VALUES (1150, '341525', '霍山縣', 341500, 3, '中國,安徽省,六安市,霍山縣', 116, 31, 'Huoshan');
INSERT INTO "public"."Sys_Region" VALUES (1151, '341600', '亳州市', 340000, 2, '中國,安徽省,亳州市', 116, 34, 'Bozhou');
INSERT INTO "public"."Sys_Region" VALUES (1152, '341602', '譙城區', 341600, 3, '中國,安徽省,亳州市,譙城區', 116, 34, 'Qiaocheng');
INSERT INTO "public"."Sys_Region" VALUES (1153, '341621', '渦陽縣', 341600, 3, '中國,安徽省,亳州市,渦陽縣', 116, 34, 'Guoyang');
INSERT INTO "public"."Sys_Region" VALUES (1154, '341622', '蒙城縣', 341600, 3, '中國,安徽省,亳州市,蒙城縣', 117, 33, 'Mengcheng');
INSERT INTO "public"."Sys_Region" VALUES (1155, '341623', '利辛縣', 341600, 3, '中國,安徽省,亳州市,利辛縣', 116, 33, 'Lixin');
INSERT INTO "public"."Sys_Region" VALUES (1156, '341700', '池州市', 340000, 2, '中國,安徽省,池州市', 117, 31, 'Chizhou');
INSERT INTO "public"."Sys_Region" VALUES (1157, '341702', '貴池區', 341700, 3, '中國,安徽省,池州市,貴池區', 117, 31, 'Guichi');
INSERT INTO "public"."Sys_Region" VALUES (1158, '341721', '東至縣', 341700, 3, '中國,安徽省,池州市,東至縣', 117, 30, 'Dongzhi');
INSERT INTO "public"."Sys_Region" VALUES (1159, '341722', '石臺縣', 341700, 3, '中國,安徽省,池州市,石臺縣', 117, 30, 'Shitai');
INSERT INTO "public"."Sys_Region" VALUES (1160, '341723', '青陽縣', 341700, 3, '中國,安徽省,池州市,青陽縣', 118, 31, 'Qingyang');
INSERT INTO "public"."Sys_Region" VALUES (1161, '341800', '宣城市', 340000, 2, '中國,安徽省,宣城市', 119, 31, 'Xuancheng');
INSERT INTO "public"."Sys_Region" VALUES (1162, '341802', '宣州區', 341800, 3, '中國,安徽省,宣城市,宣州區', 119, 31, 'Xuanzhou');
INSERT INTO "public"."Sys_Region" VALUES (1163, '341821', '郎溪縣', 341800, 3, '中國,安徽省,宣城市,郎溪縣', 119, 31, 'Langxi');
INSERT INTO "public"."Sys_Region" VALUES (1164, '341822', '廣德縣', 341800, 3, '中國,安徽省,宣城市,廣德縣', 119, 31, 'Guangde');
INSERT INTO "public"."Sys_Region" VALUES (1165, '341823', '涇縣', 341800, 3, '中國,安徽省,宣城市,涇縣', 118, 31, 'Jingxian');
INSERT INTO "public"."Sys_Region" VALUES (1166, '341824', '績溪縣', 341800, 3, '中國,安徽省,宣城市,績溪縣', 119, 30, 'Jixi');
INSERT INTO "public"."Sys_Region" VALUES (1167, '341825', '旌德縣', 341800, 3, '中國,安徽省,宣城市,旌德縣', 119, 30, 'Jingde');
INSERT INTO "public"."Sys_Region" VALUES (1168, '341881', '寧國市', 341800, 3, '中國,安徽省,宣城市,寧國市', 119, 31, 'Ningguo');
INSERT INTO "public"."Sys_Region" VALUES (1169, '350000', '福建省', 100000, 1, '中國,福建省', 119, 26, 'Fujian');
INSERT INTO "public"."Sys_Region" VALUES (1170, '350100', '福州市', 350000, 2, '中國,福建省,福州市', 119, 26, 'Fuzhou');
INSERT INTO "public"."Sys_Region" VALUES (1171, '350102', '鼓樓區', 350100, 3, '中國,福建省,福州市,鼓樓區', 119, 26, 'Gulou');
INSERT INTO "public"."Sys_Region" VALUES (1172, '350103', '臺江區', 350100, 3, '中國,福建省,福州市,臺江區', 119, 26, 'Taijiang');
INSERT INTO "public"."Sys_Region" VALUES (1173, '350104', '倉山區', 350100, 3, '中國,福建省,福州市,倉山區', 119, 26, 'Cangshan');
INSERT INTO "public"."Sys_Region" VALUES (1174, '350105', '馬尾區', 350100, 3, '中國,福建省,福州市,馬尾區', 119, 26, 'Mawei');
INSERT INTO "public"."Sys_Region" VALUES (1175, '350111', '晉安區', 350100, 3, '中國,福建省,福州市,晉安區', 119, 26, 'Jinan');
INSERT INTO "public"."Sys_Region" VALUES (1176, '350121', '閩侯縣', 350100, 3, '中國,福建省,福州市,閩侯縣', 119, 26, 'Minhou');
INSERT INTO "public"."Sys_Region" VALUES (1177, '350122', '連江縣', 350100, 3, '中國,福建省,福州市,連江縣', 120, 26, 'Lianjiang');
INSERT INTO "public"."Sys_Region" VALUES (1178, '350123', '羅源縣', 350100, 3, '中國,福建省,福州市,羅源縣', 120, 26, 'Luoyuan');
INSERT INTO "public"."Sys_Region" VALUES (1179, '350124', '閩清縣', 350100, 3, '中國,福建省,福州市,閩清縣', 119, 26, 'Minqing');
INSERT INTO "public"."Sys_Region" VALUES (1180, '350125', '永泰縣', 350100, 3, '中國,福建省,福州市,永泰縣', 119, 26, 'Yongtai');
INSERT INTO "public"."Sys_Region" VALUES (1181, '350128', '平潭縣', 350100, 3, '中國,福建省,福州市,平潭縣', 120, 26, 'Pingtan');
INSERT INTO "public"."Sys_Region" VALUES (1182, '350181', '福清市', 350100, 3, '中國,福建省,福州市,福清市', 119, 26, 'Fuqing');
INSERT INTO "public"."Sys_Region" VALUES (1183, '350182', '長樂市', 350100, 3, '中國,福建省,福州市,長樂市', 120, 26, 'Changle');
INSERT INTO "public"."Sys_Region" VALUES (1184, '350200', '廈門市', 350000, 2, '中國,福建省,廈門市', 118, 24, 'Xiamen');
INSERT INTO "public"."Sys_Region" VALUES (1185, '350203', '思明區', 350200, 3, '中國,福建省,廈門市,思明區', 118, 24, 'Siming');
INSERT INTO "public"."Sys_Region" VALUES (1186, '350205', '海滄區', 350200, 3, '中國,福建省,廈門市,海滄區', 118, 24, 'Haicang');
INSERT INTO "public"."Sys_Region" VALUES (1187, '350206', '湖里區', 350200, 3, '中國,福建省,廈門市,湖里區', 118, 25, 'Huli');
INSERT INTO "public"."Sys_Region" VALUES (1188, '350211', '集美區', 350200, 3, '中國,福建省,廈門市,集美區', 118, 25, 'Jimei');
INSERT INTO "public"."Sys_Region" VALUES (1189, '350212', '同安區', 350200, 3, '中國,福建省,廈門市,同安區', 118, 25, 'Tongan');
INSERT INTO "public"."Sys_Region" VALUES (1190, '350213', '翔安區', 350200, 3, '中國,福建省,廈門市,翔安區', 118, 25, 'Xiangan');
INSERT INTO "public"."Sys_Region" VALUES (1191, '350300', '莆田市', 350000, 2, '中國,福建省,莆田市', 119, 25, 'Putian');
INSERT INTO "public"."Sys_Region" VALUES (1192, '350302', '城廂區', 350300, 3, '中國,福建省,莆田市,城廂區', 119, 25, 'Chengxiang');
INSERT INTO "public"."Sys_Region" VALUES (1193, '350303', '涵江區', 350300, 3, '中國,福建省,莆田市,涵江區', 119, 25, 'Hanjiang');
INSERT INTO "public"."Sys_Region" VALUES (1194, '350304', '荔城區', 350300, 3, '中國,福建省,莆田市,荔城區', 119, 25, 'Licheng');
INSERT INTO "public"."Sys_Region" VALUES (1195, '350305', '秀嶼區', 350300, 3, '中國,福建省,莆田市,秀嶼區', 119, 25, 'Xiuyu');
INSERT INTO "public"."Sys_Region" VALUES (1196, '350322', '仙游縣', 350300, 3, '中國,福建省,莆田市,仙游縣', 119, 25, 'Xianyou');
INSERT INTO "public"."Sys_Region" VALUES (1197, '350400', '三明市', 350000, 2, '中國,福建省,三明市', 118, 26, 'Sanming');
INSERT INTO "public"."Sys_Region" VALUES (1198, '350402', '梅列區', 350400, 3, '中國,福建省,三明市,梅列區', 118, 26, 'Meilie');
INSERT INTO "public"."Sys_Region" VALUES (1199, '350403', '三元區', 350400, 3, '中國,福建省,三明市,三元區', 118, 26, 'Sanyuan');
INSERT INTO "public"."Sys_Region" VALUES (1200, '350421', '明溪縣', 350400, 3, '中國,福建省,三明市,明溪縣', 117, 26, 'Mingxi');
INSERT INTO "public"."Sys_Region" VALUES (1201, '350423', '清流縣', 350400, 3, '中國,福建省,三明市,清流縣', 117, 26, 'Qingliu');
INSERT INTO "public"."Sys_Region" VALUES (1202, '350424', '寧化縣', 350400, 3, '中國,福建省,三明市,寧化縣', 117, 26, 'Ninghua');
INSERT INTO "public"."Sys_Region" VALUES (1203, '350425', '大田縣', 350400, 3, '中國,福建省,三明市,大田縣', 118, 26, 'Datian');
INSERT INTO "public"."Sys_Region" VALUES (1204, '350426', '尤溪縣', 350400, 3, '中國,福建省,三明市,尤溪縣', 118, 26, 'Youxi');
INSERT INTO "public"."Sys_Region" VALUES (1205, '350427', '沙縣', 350400, 3, '中國,福建省,三明市,沙縣', 118, 26, 'Shaxian');
INSERT INTO "public"."Sys_Region" VALUES (1206, '350428', '將樂縣', 350400, 3, '中國,福建省,三明市,將樂縣', 117, 27, 'Jiangle');
INSERT INTO "public"."Sys_Region" VALUES (1207, '350429', '泰寧縣', 350400, 3, '中國,福建省,三明市,泰寧縣', 117, 27, 'Taining');
INSERT INTO "public"."Sys_Region" VALUES (1208, '350430', '建寧縣', 350400, 3, '中國,福建省,三明市,建寧縣', 117, 27, 'Jianning');
INSERT INTO "public"."Sys_Region" VALUES (1209, '350481', '永安市', 350400, 3, '中國,福建省,三明市,永安市', 117, 26, 'Yongan');
INSERT INTO "public"."Sys_Region" VALUES (1210, '350500', '泉州市', 350000, 2, '中國,福建省,泉州市', 119, 25, 'Quanzhou');
INSERT INTO "public"."Sys_Region" VALUES (1211, '350502', '鯉城區', 350500, 3, '中國,福建省,泉州市,鯉城區', 119, 25, 'Licheng');
INSERT INTO "public"."Sys_Region" VALUES (1212, '350503', '豐澤區', 350500, 3, '中國,福建省,泉州市,豐澤區', 119, 25, 'Fengze');
INSERT INTO "public"."Sys_Region" VALUES (1213, '350504', '洛江區', 350500, 3, '中國,福建省,泉州市,洛江區', 119, 25, 'Luojiang');
INSERT INTO "public"."Sys_Region" VALUES (1214, '350505', '泉港區', 350500, 3, '中國,福建省,泉州市,泉港區', 119, 25, 'Quangang');
INSERT INTO "public"."Sys_Region" VALUES (1215, '350521', '惠安縣', 350500, 3, '中國,福建省,泉州市,惠安縣', 119, 25, 'Huian');
INSERT INTO "public"."Sys_Region" VALUES (1216, '350524', '安溪縣', 350500, 3, '中國,福建省,泉州市,安溪縣', 118, 25, 'Anxi');
INSERT INTO "public"."Sys_Region" VALUES (1217, '350525', '永春縣', 350500, 3, '中國,福建省,泉州市,永春縣', 118, 25, 'Yongchun');
INSERT INTO "public"."Sys_Region" VALUES (1218, '350526', '德化縣', 350500, 3, '中國,福建省,泉州市,德化縣', 118, 25, 'Dehua');
INSERT INTO "public"."Sys_Region" VALUES (1219, '350527', '金門縣', 350500, 3, '中國,福建省,泉州市,金門縣', 118, 24, 'Jinmen');
INSERT INTO "public"."Sys_Region" VALUES (1220, '350581', '石獅市', 350500, 3, '中國,福建省,泉州市,石獅市', 119, 25, 'Shishi');
INSERT INTO "public"."Sys_Region" VALUES (1221, '350582', '晉江市', 350500, 3, '中國,福建省,泉州市,晉江市', 119, 25, 'Jinjiang');
INSERT INTO "public"."Sys_Region" VALUES (1222, '350583', '南安市', 350500, 3, '中國,福建省,泉州市,南安市', 118, 25, 'Nanan');
INSERT INTO "public"."Sys_Region" VALUES (1223, '350600', '漳州市', 350000, 2, '中國,福建省,漳州市', 118, 25, 'Zhangzhou');
INSERT INTO "public"."Sys_Region" VALUES (1224, '350602', '薌城區', 350600, 3, '中國,福建省,漳州市,薌城區', 118, 25, 'Xiangcheng');
INSERT INTO "public"."Sys_Region" VALUES (1225, '350603', '龍文區', 350600, 3, '中國,福建省,漳州市,龍文區', 118, 25, 'Longwen');
INSERT INTO "public"."Sys_Region" VALUES (1226, '350622', '云霄縣', 350600, 3, '中國,福建省,漳州市,云霄縣', 117, 24, 'Yunxiao');
INSERT INTO "public"."Sys_Region" VALUES (1227, '350623', '漳浦縣', 350600, 3, '中國,福建省,漳州市,漳浦縣', 118, 24, 'Zhangpu');
INSERT INTO "public"."Sys_Region" VALUES (1228, '350624', '詔安縣', 350600, 3, '中國,福建省,漳州市,詔安縣', 117, 24, 'Zhaoan');
INSERT INTO "public"."Sys_Region" VALUES (1229, '350625', '長泰縣', 350600, 3, '中國,福建省,漳州市,長泰縣', 118, 25, 'Changtai');
INSERT INTO "public"."Sys_Region" VALUES (1230, '350626', '東山縣', 350600, 3, '中國,福建省,漳州市,東山縣', 117, 24, 'Dongshan');
INSERT INTO "public"."Sys_Region" VALUES (1231, '350627', '南靖縣', 350600, 3, '中國,福建省,漳州市,南靖縣', 117, 25, 'Nanjing');
INSERT INTO "public"."Sys_Region" VALUES (1232, '350628', '平和縣', 350600, 3, '中國,福建省,漳州市,平和縣', 117, 24, 'Pinghe');
INSERT INTO "public"."Sys_Region" VALUES (1233, '350629', '華安縣', 350600, 3, '中國,福建省,漳州市,華安縣', 118, 25, 'Huaan');
INSERT INTO "public"."Sys_Region" VALUES (1234, '350681', '龍海市', 350600, 3, '中國,福建省,漳州市,龍海市', 118, 24, 'Longhai');
INSERT INTO "public"."Sys_Region" VALUES (1235, '350700', '南平市', 350000, 2, '中國,福建省,南平市', 118, 27, 'Nanping');
INSERT INTO "public"."Sys_Region" VALUES (1236, '350702', '延平區', 350700, 3, '中國,福建省,南平市,延平區', 118, 27, 'Yanping');
INSERT INTO "public"."Sys_Region" VALUES (1237, '350703', '建陽區', 350700, 3, '中國,福建省,南平市,建陽區', 118, 27, 'Jianyang');
INSERT INTO "public"."Sys_Region" VALUES (1238, '350721', '順昌縣', 350700, 3, '中國,福建省,南平市,順昌縣', 118, 27, 'Shunchang');
INSERT INTO "public"."Sys_Region" VALUES (1239, '350722', '浦城縣', 350700, 3, '中國,福建省,南平市,浦城縣', 119, 28, 'Pucheng');
INSERT INTO "public"."Sys_Region" VALUES (1240, '350723', '光澤縣', 350700, 3, '中國,福建省,南平市,光澤縣', 117, 28, 'Guangze');
INSERT INTO "public"."Sys_Region" VALUES (1241, '350724', '松溪縣', 350700, 3, '中國,福建省,南平市,松溪縣', 119, 28, 'Songxi');
INSERT INTO "public"."Sys_Region" VALUES (1242, '350725', '政和縣', 350700, 3, '中國,福建省,南平市,政和縣', 119, 27, 'Zhenghe');
INSERT INTO "public"."Sys_Region" VALUES (1243, '350781', '邵武市', 350700, 3, '中國,福建省,南平市,邵武市', 117, 27, 'Shaowu');
INSERT INTO "public"."Sys_Region" VALUES (1244, '350782', '武夷山市', 350700, 3, '中國,福建省,南平市,武夷山市', 118, 28, 'Wuyishan');
INSERT INTO "public"."Sys_Region" VALUES (1245, '350783', '建甌市', 350700, 3, '中國,福建省,南平市,建甌市', 118, 27, 'Jianou');
INSERT INTO "public"."Sys_Region" VALUES (1246, '350800', '龍巖市', 350000, 2, '中國,福建省,龍巖市', 117, 25, 'Longyan');
INSERT INTO "public"."Sys_Region" VALUES (1247, '350802', '新羅區', 350800, 3, '中國,福建省,龍巖市,新羅區', 117, 25, 'Xinluo');
INSERT INTO "public"."Sys_Region" VALUES (1248, '350821', '長汀縣', 350800, 3, '中國,福建省,龍巖市,長汀縣', 116, 26, 'Changting');
INSERT INTO "public"."Sys_Region" VALUES (1249, '350822', '永定區', 350800, 3, '中國,福建省,龍巖市,永定區', 117, 25, 'Yongding');
INSERT INTO "public"."Sys_Region" VALUES (1250, '350823', '上杭縣', 350800, 3, '中國,福建省,龍巖市,上杭縣', 116, 25, 'Shanghang');
INSERT INTO "public"."Sys_Region" VALUES (1251, '350824', '武平縣', 350800, 3, '中國,福建省,龍巖市,武平縣', 116, 25, 'Wuping');
INSERT INTO "public"."Sys_Region" VALUES (1252, '350825', '連城縣', 350800, 3, '中國,福建省,龍巖市,連城縣', 117, 26, 'Liancheng');
INSERT INTO "public"."Sys_Region" VALUES (1253, '350881', '漳平市', 350800, 3, '中國,福建省,龍巖市,漳平市', 117, 25, 'Zhangping');
INSERT INTO "public"."Sys_Region" VALUES (1254, '350900', '寧德市', 350000, 2, '中國,福建省,寧德市', 120, 27, 'Ningde');
INSERT INTO "public"."Sys_Region" VALUES (1255, '350902', '蕉城區', 350900, 3, '中國,福建省,寧德市,蕉城區', 120, 27, 'Jiaocheng');
INSERT INTO "public"."Sys_Region" VALUES (1256, '350921', '霞浦縣', 350900, 3, '中國,福建省,寧德市,霞浦縣', 120, 27, 'Xiapu');
INSERT INTO "public"."Sys_Region" VALUES (1257, '350922', '古田縣', 350900, 3, '中國,福建省,寧德市,古田縣', 119, 27, 'Gutian');
INSERT INTO "public"."Sys_Region" VALUES (1258, '350923', '屏南縣', 350900, 3, '中國,福建省,寧德市,屏南縣', 119, 27, 'Pingnan');
INSERT INTO "public"."Sys_Region" VALUES (1259, '350924', '壽寧縣', 350900, 3, '中國,福建省,寧德市,壽寧縣', 120, 27, 'Shouning');
INSERT INTO "public"."Sys_Region" VALUES (1260, '350925', '周寧縣', 350900, 3, '中國,福建省,寧德市,周寧縣', 119, 27, 'Zhouning');
INSERT INTO "public"."Sys_Region" VALUES (1261, '350926', '柘榮縣', 350900, 3, '中國,福建省,寧德市,柘榮縣', 120, 27, 'Zherong');
INSERT INTO "public"."Sys_Region" VALUES (1262, '350981', '福安市', 350900, 3, '中國,福建省,寧德市,福安市', 120, 27, 'Fuan');
INSERT INTO "public"."Sys_Region" VALUES (1263, '350982', '福鼎市', 350900, 3, '中國,福建省,寧德市,福鼎市', 120, 27, 'Fuding');
INSERT INTO "public"."Sys_Region" VALUES (1264, '360000', '江西省', 100000, 1, '中國,江西省', 116, 29, 'Jiangxi');
INSERT INTO "public"."Sys_Region" VALUES (1265, '360100', '南昌市', 360000, 2, '中國,江西省,南昌市', 116, 29, 'Nanchang');
INSERT INTO "public"."Sys_Region" VALUES (1266, '360102', '東湖區', 360100, 3, '中國,江西省,南昌市,東湖區', 116, 29, 'Donghu');
INSERT INTO "public"."Sys_Region" VALUES (1267, '360103', '西湖區', 360100, 3, '中國,江西省,南昌市,西湖區', 116, 29, 'Xihu');
INSERT INTO "public"."Sys_Region" VALUES (1268, '360104', '青云譜區', 360100, 3, '中國,江西省,南昌市,青云譜區', 116, 29, 'Qingyunpu');
INSERT INTO "public"."Sys_Region" VALUES (1269, '360105', '灣里區', 360100, 3, '中國,江西省,南昌市,灣里區', 116, 29, 'Wanli');
INSERT INTO "public"."Sys_Region" VALUES (1270, '360111', '青山湖區', 360100, 3, '中國,江西省,南昌市,青山湖區', 116, 29, 'Qingshanhu');
INSERT INTO "public"."Sys_Region" VALUES (1271, '360121', '南昌縣', 360100, 3, '中國,江西省,南昌市,南昌縣', 116, 29, 'Nanchang');
INSERT INTO "public"."Sys_Region" VALUES (1272, '360122', '新建縣', 360100, 3, '中國,江西省,南昌市,新建縣', 116, 29, 'Xinjian');
INSERT INTO "public"."Sys_Region" VALUES (1273, '360123', '安義縣', 360100, 3, '中國,江西省,南昌市,安義縣', 116, 29, 'Anyi');
INSERT INTO "public"."Sys_Region" VALUES (1274, '360124', '進賢縣', 360100, 3, '中國,江西省,南昌市,進賢縣', 116, 28, 'Jinxian');
INSERT INTO "public"."Sys_Region" VALUES (1275, '360200', '景德鎮市', 360000, 2, '中國,江西省,景德鎮市', 117, 29, 'Jingdezhen');
INSERT INTO "public"."Sys_Region" VALUES (1276, '360202', '昌江區', 360200, 3, '中國,江西省,景德鎮市,昌江區', 117, 29, 'Changjiang');
INSERT INTO "public"."Sys_Region" VALUES (1277, '360203', '珠山區', 360200, 3, '中國,江西省,景德鎮市,珠山區', 117, 29, 'Zhushan');
INSERT INTO "public"."Sys_Region" VALUES (1278, '360222', '浮梁縣', 360200, 3, '中國,江西省,景德鎮市,浮梁縣', 117, 29, 'Fuliang');
INSERT INTO "public"."Sys_Region" VALUES (1279, '360281', '樂平市', 360200, 3, '中國,江西省,景德鎮市,樂平市', 117, 29, 'Leping');
INSERT INTO "public"."Sys_Region" VALUES (1280, '360300', '萍鄉市', 360000, 2, '中國,江西省,萍鄉市', 114, 28, 'Pingxiang');
INSERT INTO "public"."Sys_Region" VALUES (1281, '360302', '安源區', 360300, 3, '中國,江西省,萍鄉市,安源區', 114, 28, 'Anyuan');
INSERT INTO "public"."Sys_Region" VALUES (1282, '360313', '湘東區', 360300, 3, '中國,江西省,萍鄉市,湘東區', 114, 28, 'Xiangdong');
INSERT INTO "public"."Sys_Region" VALUES (1283, '360321', '蓮花縣', 360300, 3, '中國,江西省,萍鄉市,蓮花縣', 114, 27, 'Lianhua');
INSERT INTO "public"."Sys_Region" VALUES (1284, '360322', '上栗縣', 360300, 3, '中國,江西省,萍鄉市,上栗縣', 114, 28, 'Shangli');
INSERT INTO "public"."Sys_Region" VALUES (1285, '360323', '蘆溪縣', 360300, 3, '中國,江西省,萍鄉市,蘆溪縣', 114, 28, 'Luxi');
INSERT INTO "public"."Sys_Region" VALUES (1286, '360400', '九江市', 360000, 2, '中國,江西省,九江市', 116, 30, 'Jiujiang');
INSERT INTO "public"."Sys_Region" VALUES (1287, '360402', '廬山區', 360400, 3, '中國,江西省,九江市,廬山區', 116, 30, 'Lushan');
INSERT INTO "public"."Sys_Region" VALUES (1288, '360403', '潯陽區', 360400, 3, '中國,江西省,九江市,潯陽區', 116, 30, 'Xunyang');
INSERT INTO "public"."Sys_Region" VALUES (1289, '360421', '九江縣', 360400, 3, '中國,江西省,九江市,九江縣', 116, 30, 'Jiujiang');
INSERT INTO "public"."Sys_Region" VALUES (1290, '360423', '武寧縣', 360400, 3, '中國,江西省,九江市,武寧縣', 115, 29, 'Wuning');
INSERT INTO "public"."Sys_Region" VALUES (1291, '360424', '修水縣', 360400, 3, '中國,江西省,九江市,修水縣', 115, 29, 'Xiushui');
INSERT INTO "public"."Sys_Region" VALUES (1292, '360425', '永修縣', 360400, 3, '中國,江西省,九江市,永修縣', 116, 29, 'Yongxiu');
INSERT INTO "public"."Sys_Region" VALUES (1293, '360426', '德安縣', 360400, 3, '中國,江西省,九江市,德安縣', 116, 29, 'Dean');
INSERT INTO "public"."Sys_Region" VALUES (1294, '360427', '星子縣', 360400, 3, '中國,江西省,九江市,星子縣', 116, 29, 'Xingzi');
INSERT INTO "public"."Sys_Region" VALUES (1295, '360428', '都昌縣', 360400, 3, '中國,江西省,九江市,都昌縣', 116, 29, 'Duchang');
INSERT INTO "public"."Sys_Region" VALUES (1296, '360429', '湖口縣', 360400, 3, '中國,江西省,九江市,湖口縣', 116, 30, 'Hukou');
INSERT INTO "public"."Sys_Region" VALUES (1297, '360430', '彭澤縣', 360400, 3, '中國,江西省,九江市,彭澤縣', 117, 30, 'Pengze');
INSERT INTO "public"."Sys_Region" VALUES (1298, '360481', '瑞昌市', 360400, 3, '中國,江西省,九江市,瑞昌市', 116, 30, 'Ruichang');
INSERT INTO "public"."Sys_Region" VALUES (1299, '360482', '共青城市', 360400, 3, '中國,江西省,九江市,共青城市', 116, 29, 'Gongqingcheng');
INSERT INTO "public"."Sys_Region" VALUES (1300, '360500', '新余市', 360000, 2, '中國,江西省,新余市', 115, 28, 'Xinyu');
INSERT INTO "public"."Sys_Region" VALUES (1301, '360502', '渝水區', 360500, 3, '中國,江西省,新余市,渝水區', 115, 28, 'Yushui');
INSERT INTO "public"."Sys_Region" VALUES (1302, '360521', '分宜縣', 360500, 3, '中國,江西省,新余市,分宜縣', 115, 28, 'Fenyi');
INSERT INTO "public"."Sys_Region" VALUES (1303, '360600', '鷹潭市', 360000, 2, '中國,江西省,鷹潭市', 117, 28, 'Yingtan');
INSERT INTO "public"."Sys_Region" VALUES (1304, '360602', '月湖區', 360600, 3, '中國,江西省,鷹潭市,月湖區', 117, 28, 'Yuehu');
INSERT INTO "public"."Sys_Region" VALUES (1305, '360622', '余江縣', 360600, 3, '中國,江西省,鷹潭市,余江縣', 117, 28, 'Yujiang');
INSERT INTO "public"."Sys_Region" VALUES (1306, '360681', '貴溪市', 360600, 3, '中國,江西省,鷹潭市,貴溪市', 117, 28, 'Guixi');
INSERT INTO "public"."Sys_Region" VALUES (1307, '360700', '贛州市', 360000, 2, '中國,江西省,贛州市', 115, 26, 'Ganzhou');
INSERT INTO "public"."Sys_Region" VALUES (1308, '360702', '章貢區', 360700, 3, '中國,江西省,贛州市,章貢區', 115, 26, 'Zhanggong');
INSERT INTO "public"."Sys_Region" VALUES (1309, '360703', '南康區', 360700, 3, '中國,江西省,贛州市,南康區', 115, 26, 'Nankang');
INSERT INTO "public"."Sys_Region" VALUES (1310, '360721', '贛縣', 360700, 3, '中國,江西省,贛州市,贛縣', 115, 26, 'Ganxian');
INSERT INTO "public"."Sys_Region" VALUES (1311, '360722', '信豐縣', 360700, 3, '中國,江西省,贛州市,信豐縣', 115, 25, 'Xinfeng');
INSERT INTO "public"."Sys_Region" VALUES (1312, '360723', '大余縣', 360700, 3, '中國,江西省,贛州市,大余縣', 114, 25, 'Dayu');
INSERT INTO "public"."Sys_Region" VALUES (1313, '360724', '上猶縣', 360700, 3, '中國,江西省,贛州市,上猶縣', 115, 26, 'Shangyou');
INSERT INTO "public"."Sys_Region" VALUES (1314, '360725', '崇義縣', 360700, 3, '中國,江西省,贛州市,崇義縣', 114, 26, 'Chongyi');
INSERT INTO "public"."Sys_Region" VALUES (1315, '360726', '安遠縣', 360700, 3, '中國,江西省,贛州市,安遠縣', 115, 25, 'Anyuan');
INSERT INTO "public"."Sys_Region" VALUES (1316, '360727', '龍南縣', 360700, 3, '中國,江西省,贛州市,龍南縣', 115, 25, 'Longnan');
INSERT INTO "public"."Sys_Region" VALUES (1317, '360728', '定南縣', 360700, 3, '中國,江西省,贛州市,定南縣', 115, 25, 'Dingnan');
INSERT INTO "public"."Sys_Region" VALUES (1318, '360729', '全南縣', 360700, 3, '中國,江西省,贛州市,全南縣', 115, 25, 'Quannan');
INSERT INTO "public"."Sys_Region" VALUES (1319, '360730', '寧都縣', 360700, 3, '中國,江西省,贛州市,寧都縣', 116, 26, 'Ningdu');
INSERT INTO "public"."Sys_Region" VALUES (1320, '360731', '于都縣', 360700, 3, '中國,江西省,贛州市,于都縣', 115, 26, 'Yudu');
INSERT INTO "public"."Sys_Region" VALUES (1321, '360732', '興國縣', 360700, 3, '中國,江西省,贛州市,興國縣', 115, 26, 'Xingguo');
INSERT INTO "public"."Sys_Region" VALUES (1322, '360733', '會昌縣', 360700, 3, '中國,江西省,贛州市,會昌縣', 116, 26, 'Huichang');
INSERT INTO "public"."Sys_Region" VALUES (1323, '360734', '尋烏縣', 360700, 3, '中國,江西省,贛州市,尋烏縣', 116, 25, 'Xunwu');
INSERT INTO "public"."Sys_Region" VALUES (1324, '360735', '石城縣', 360700, 3, '中國,江西省,贛州市,石城縣', 116, 26, 'Shicheng');
INSERT INTO "public"."Sys_Region" VALUES (1325, '360781', '瑞金市', 360700, 3, '中國,江西省,贛州市,瑞金市', 116, 26, 'Ruijin');
INSERT INTO "public"."Sys_Region" VALUES (1326, '360800', '吉安市', 360000, 2, '中國,江西省,吉安市', 115, 27, 'Jian');
INSERT INTO "public"."Sys_Region" VALUES (1327, '360802', '吉州區', 360800, 3, '中國,江西省,吉安市,吉州區', 115, 27, 'Jizhou');
INSERT INTO "public"."Sys_Region" VALUES (1328, '360803', '青原區', 360800, 3, '中國,江西省,吉安市,青原區', 115, 27, 'Qingyuan');
INSERT INTO "public"."Sys_Region" VALUES (1329, '360821', '吉安縣', 360800, 3, '中國,江西省,吉安市,吉安縣', 115, 27, 'Jian');
INSERT INTO "public"."Sys_Region" VALUES (1330, '360822', '吉水縣', 360800, 3, '中國,江西省,吉安市,吉水縣', 115, 27, 'Jishui');
INSERT INTO "public"."Sys_Region" VALUES (1331, '360823', '峽江縣', 360800, 3, '中國,江西省,吉安市,峽江縣', 115, 28, 'Xiajiang');
INSERT INTO "public"."Sys_Region" VALUES (1332, '360824', '新干縣', 360800, 3, '中國,江西省,吉安市,新干縣', 115, 28, 'Xingan');
INSERT INTO "public"."Sys_Region" VALUES (1333, '360825', '永豐縣', 360800, 3, '中國,江西省,吉安市,永豐縣', 115, 27, 'Yongfeng');
INSERT INTO "public"."Sys_Region" VALUES (1334, '360826', '泰和縣', 360800, 3, '中國,江西省,吉安市,泰和縣', 115, 27, 'Taihe');
INSERT INTO "public"."Sys_Region" VALUES (1335, '360827', '遂川縣', 360800, 3, '中國,江西省,吉安市,遂川縣', 115, 26, 'Suichuan');
INSERT INTO "public"."Sys_Region" VALUES (1336, '360828', '萬安縣', 360800, 3, '中國,江西省,吉安市,萬安縣', 115, 26, 'Wanan');
INSERT INTO "public"."Sys_Region" VALUES (1337, '360829', '安福縣', 360800, 3, '中國,江西省,吉安市,安福縣', 115, 27, 'Anfu');
INSERT INTO "public"."Sys_Region" VALUES (1338, '360830', '永新縣', 360800, 3, '中國,江西省,吉安市,永新縣', 114, 27, 'Yongxin');
INSERT INTO "public"."Sys_Region" VALUES (1339, '360881', '井岡山市', 360800, 3, '中國,江西省,吉安市,井岡山市', 114, 27, 'Jinggangshan');
INSERT INTO "public"."Sys_Region" VALUES (1340, '360900', '宜春市', 360000, 2, '中國,江西省,宜春市', 114, 28, 'Yichun');
INSERT INTO "public"."Sys_Region" VALUES (1341, '360902', '袁州區', 360900, 3, '中國,江西省,宜春市,袁州區', 114, 28, 'Yuanzhou');
INSERT INTO "public"."Sys_Region" VALUES (1342, '360921', '奉新縣', 360900, 3, '中國,江西省,宜春市,奉新縣', 115, 29, 'Fengxin');
INSERT INTO "public"."Sys_Region" VALUES (1343, '360922', '萬載縣', 360900, 3, '中國,江西省,宜春市,萬載縣', 114, 28, 'Wanzai');
INSERT INTO "public"."Sys_Region" VALUES (1344, '360923', '上高縣', 360900, 3, '中國,江西省,宜春市,上高縣', 115, 28, 'Shanggao');
INSERT INTO "public"."Sys_Region" VALUES (1345, '360924', '宜豐縣', 360900, 3, '中國,江西省,宜春市,宜豐縣', 115, 28, 'Yifeng');
INSERT INTO "public"."Sys_Region" VALUES (1346, '360925', '靖安縣', 360900, 3, '中國,江西省,宜春市,靖安縣', 115, 29, 'Jingan');
INSERT INTO "public"."Sys_Region" VALUES (1347, '360926', '銅鼓縣', 360900, 3, '中國,江西省,宜春市,銅鼓縣', 114, 29, 'Tonggu');
INSERT INTO "public"."Sys_Region" VALUES (1348, '360981', '豐城市', 360900, 3, '中國,江西省,宜春市,豐城市', 116, 28, 'Fengcheng');
INSERT INTO "public"."Sys_Region" VALUES (1349, '360982', '樟樹市', 360900, 3, '中國,江西省,宜春市,樟樹市', 116, 28, 'Zhangshu');
INSERT INTO "public"."Sys_Region" VALUES (1350, '360983', '高安市', 360900, 3, '中國,江西省,宜春市,高安市', 115, 28, 'Gaoan');
INSERT INTO "public"."Sys_Region" VALUES (1351, '361000', '撫州市', 360000, 2, '中國,江西省,撫州市', 116, 28, 'Fuzhou');
INSERT INTO "public"."Sys_Region" VALUES (1352, '361002', '臨川區', 361000, 3, '中國,江西省,撫州市,臨川區', 116, 28, 'Linchuan');
INSERT INTO "public"."Sys_Region" VALUES (1353, '361021', '南城縣', 361000, 3, '中國,江西省,撫州市,南城縣', 117, 28, 'Nancheng');
INSERT INTO "public"."Sys_Region" VALUES (1354, '361022', '黎川縣', 361000, 3, '中國,江西省,撫州市,黎川縣', 117, 27, 'Lichuan');
INSERT INTO "public"."Sys_Region" VALUES (1355, '361023', '南豐縣', 361000, 3, '中國,江西省,撫州市,南豐縣', 117, 27, 'Nanfeng');
INSERT INTO "public"."Sys_Region" VALUES (1356, '361024', '崇仁縣', 361000, 3, '中國,江西省,撫州市,崇仁縣', 116, 28, 'Chongren');
INSERT INTO "public"."Sys_Region" VALUES (1357, '361025', '樂安縣', 361000, 3, '中國,江西省,撫州市,樂安縣', 116, 27, 'Lean');
INSERT INTO "public"."Sys_Region" VALUES (1358, '361026', '宜黃縣', 361000, 3, '中國,江西省,撫州市,宜黃縣', 116, 28, 'Yihuang');
INSERT INTO "public"."Sys_Region" VALUES (1359, '361027', '金溪縣', 361000, 3, '中國,江西省,撫州市,金溪縣', 117, 28, 'Jinxi');
INSERT INTO "public"."Sys_Region" VALUES (1360, '361028', '資溪縣', 361000, 3, '中國,江西省,撫州市,資溪縣', 117, 28, 'Zixi');
INSERT INTO "public"."Sys_Region" VALUES (1361, '361029', '東鄉縣', 361000, 3, '中國,江西省,撫州市,東鄉縣', 117, 28, 'Dongxiang');
INSERT INTO "public"."Sys_Region" VALUES (1362, '361030', '廣昌縣', 361000, 3, '中國,江西省,撫州市,廣昌縣', 116, 27, 'Guangchang');
INSERT INTO "public"."Sys_Region" VALUES (1363, '361100', '上饒市', 360000, 2, '中國,江西省,上饒市', 118, 28, 'Shangrao');
INSERT INTO "public"."Sys_Region" VALUES (1364, '361102', '信州區', 361100, 3, '中國,江西省,上饒市,信州區', 118, 28, 'Xinzhou');
INSERT INTO "public"."Sys_Region" VALUES (1365, '361121', '上饒縣', 361100, 3, '中國,江西省,上饒市,上饒縣', 118, 28, 'Shangrao');
INSERT INTO "public"."Sys_Region" VALUES (1366, '361122', '廣豐縣', 361100, 3, '中國,江西省,上饒市,廣豐縣', 118, 28, 'Guangfeng');
INSERT INTO "public"."Sys_Region" VALUES (1367, '361123', '玉山縣', 361100, 3, '中國,江西省,上饒市,玉山縣', 118, 29, 'Yushan');
INSERT INTO "public"."Sys_Region" VALUES (1368, '361124', '鉛山縣', 361100, 3, '中國,江西省,上饒市,鉛山縣', 118, 28, 'Yanshan');
INSERT INTO "public"."Sys_Region" VALUES (1369, '361125', '橫峰縣', 361100, 3, '中國,江西省,上饒市,橫峰縣', 118, 28, 'Hengfeng');
INSERT INTO "public"."Sys_Region" VALUES (1370, '361126', '弋陽縣', 361100, 3, '中國,江西省,上饒市,弋陽縣', 117, 28, 'Yiyang');
INSERT INTO "public"."Sys_Region" VALUES (1371, '361127', '余干縣', 361100, 3, '中國,江西省,上饒市,余干縣', 117, 29, 'Yugan');
INSERT INTO "public"."Sys_Region" VALUES (1372, '361128', '鄱陽縣', 361100, 3, '中國,江西省,上饒市,鄱陽縣', 117, 29, 'Poyang');
INSERT INTO "public"."Sys_Region" VALUES (1373, '361129', '萬年縣', 361100, 3, '中國,江西省,上饒市,萬年縣', 117, 29, 'Wannian');
INSERT INTO "public"."Sys_Region" VALUES (1374, '361130', '婺源縣', 361100, 3, '中國,江西省,上饒市,婺源縣', 118, 29, 'Wuyuan');
INSERT INTO "public"."Sys_Region" VALUES (1375, '361181', '德興市', 361100, 3, '中國,江西省,上饒市,德興市', 118, 29, 'Dexing');
INSERT INTO "public"."Sys_Region" VALUES (1376, '370000', '山東省', 100000, 1, '中國,山東省', 117, 37, 'Shandong');
INSERT INTO "public"."Sys_Region" VALUES (1377, '370100', '濟南市', 370000, 2, '中國,山東省,濟南市', 117, 37, 'Jinan');
INSERT INTO "public"."Sys_Region" VALUES (1378, '370102', '歷下區', 370100, 3, '中國,山東省,濟南市,歷下區', 117, 37, 'Lixia');
INSERT INTO "public"."Sys_Region" VALUES (1379, '370103', '市中區', 370100, 3, '中國,山東省,濟南市,市中區', 117, 37, 'Shizhongqu');
INSERT INTO "public"."Sys_Region" VALUES (1380, '370104', '槐蔭區', 370100, 3, '中國,山東省,濟南市,槐蔭區', 117, 37, 'Huaiyin');
INSERT INTO "public"."Sys_Region" VALUES (1381, '370105', '天橋區', 370100, 3, '中國,山東省,濟南市,天橋區', 117, 37, 'Tianqiao');
INSERT INTO "public"."Sys_Region" VALUES (1382, '370112', '歷城區', 370100, 3, '中國,山東省,濟南市,歷城區', 117, 37, 'Licheng');
INSERT INTO "public"."Sys_Region" VALUES (1383, '370113', '長清區', 370100, 3, '中國,山東省,濟南市,長清區', 117, 37, 'Changqing');
INSERT INTO "public"."Sys_Region" VALUES (1384, '370124', '平陰縣', 370100, 3, '中國,山東省,濟南市,平陰縣', 116, 36, 'Pingyin');
INSERT INTO "public"."Sys_Region" VALUES (1385, '370125', '濟陽縣', 370100, 3, '中國,山東省,濟南市,濟陽縣', 117, 37, 'Jiyang');
INSERT INTO "public"."Sys_Region" VALUES (1386, '370126', '商河縣', 370100, 3, '中國,山東省,濟南市,商河縣', 117, 37, 'Shanghe');
INSERT INTO "public"."Sys_Region" VALUES (1387, '370181', '章丘市', 370100, 3, '中國,山東省,濟南市,章丘市', 118, 37, 'Zhangqiu');
INSERT INTO "public"."Sys_Region" VALUES (1388, '370200', '青島市', 370000, 2, '中國,山東省,青島市', 120, 36, 'Qingdao');
INSERT INTO "public"."Sys_Region" VALUES (1389, '370202', '市南區', 370200, 3, '中國,山東省,青島市,市南區', 120, 36, 'Shinan');
INSERT INTO "public"."Sys_Region" VALUES (1390, '370203', '市北區', 370200, 3, '中國,山東省,青島市,市北區', 120, 36, 'Shibei');
INSERT INTO "public"."Sys_Region" VALUES (1391, '370211', '黃島區', 370200, 3, '中國,山東省,青島市,黃島區', 120, 36, 'Huangdao');
INSERT INTO "public"."Sys_Region" VALUES (1392, '370212', '嶗山區', 370200, 3, '中國,山東省,青島市,嶗山區', 120, 36, 'Laoshan');
INSERT INTO "public"."Sys_Region" VALUES (1393, '370213', '李滄區', 370200, 3, '中國,山東省,青島市,李滄區', 120, 36, 'Licang');
INSERT INTO "public"."Sys_Region" VALUES (1394, '370214', '城陽區', 370200, 3, '中國,山東省,青島市,城陽區', 120, 36, 'Chengyang');
INSERT INTO "public"."Sys_Region" VALUES (1395, '370281', '膠州市', 370200, 3, '中國,山東省,青島市,膠州市', 120, 36, 'Jiaozhou');
INSERT INTO "public"."Sys_Region" VALUES (1396, '370282', '即墨市', 370200, 3, '中國,山東省,青島市,即墨市', 120, 36, 'Jimo');
INSERT INTO "public"."Sys_Region" VALUES (1397, '370283', '平度市', 370200, 3, '中國,山東省,青島市,平度市', 120, 37, 'Pingdu');
INSERT INTO "public"."Sys_Region" VALUES (1398, '370285', '萊西市', 370200, 3, '中國,山東省,青島市,萊西市', 121, 37, 'Laixi');
INSERT INTO "public"."Sys_Region" VALUES (1399, '370286', '西海岸新區', 370200, 3, '中國,山東省,青島市,西海岸新區', 120, 36, 'Xihaian');
INSERT INTO "public"."Sys_Region" VALUES (1400, '370300', '淄博市', 370000, 2, '中國,山東省,淄博市', 118, 37, 'Zibo');
INSERT INTO "public"."Sys_Region" VALUES (1401, '370302', '淄川區', 370300, 3, '中國,山東省,淄博市,淄川區', 118, 37, 'Zichuan');
INSERT INTO "public"."Sys_Region" VALUES (1402, '370303', '張店區', 370300, 3, '中國,山東省,淄博市,張店區', 118, 37, 'Zhangdian');
INSERT INTO "public"."Sys_Region" VALUES (1403, '370304', '博山區', 370300, 3, '中國,山東省,淄博市,博山區', 118, 36, 'Boshan');
INSERT INTO "public"."Sys_Region" VALUES (1404, '370305', '臨淄區', 370300, 3, '中國,山東省,淄博市,臨淄區', 118, 37, 'Linzi');
INSERT INTO "public"."Sys_Region" VALUES (1405, '370306', '周村區', 370300, 3, '中國,山東省,淄博市,周村區', 118, 37, 'Zhoucun');
INSERT INTO "public"."Sys_Region" VALUES (1406, '370321', '桓臺縣', 370300, 3, '中國,山東省,淄博市,桓臺縣', 118, 37, 'Huantai');
INSERT INTO "public"."Sys_Region" VALUES (1407, '370322', '高青縣', 370300, 3, '中國,山東省,淄博市,高青縣', 118, 37, 'Gaoqing');
INSERT INTO "public"."Sys_Region" VALUES (1408, '370323', '沂源縣', 370300, 3, '中國,山東省,淄博市,沂源縣', 118, 36, 'Yiyuan');
INSERT INTO "public"."Sys_Region" VALUES (1409, '370400', '棗莊市', 370000, 2, '中國,山東省,棗莊市', 118, 35, 'Zaozhuang');
INSERT INTO "public"."Sys_Region" VALUES (1410, '370402', '市中區', 370400, 3, '中國,山東省,棗莊市,市中區', 118, 35, 'Shizhongqu');
INSERT INTO "public"."Sys_Region" VALUES (1411, '370403', '薛城區', 370400, 3, '中國,山東省,棗莊市,薛城區', 117, 35, 'Xuecheng');
INSERT INTO "public"."Sys_Region" VALUES (1412, '370404', '嶧城區', 370400, 3, '中國,山東省,棗莊市,嶧城區', 118, 35, 'Yicheng');
INSERT INTO "public"."Sys_Region" VALUES (1413, '370405', '臺兒莊區', 370400, 3, '中國,山東省,棗莊市,臺兒莊區', 118, 35, 'Taierzhuang');
INSERT INTO "public"."Sys_Region" VALUES (1414, '370406', '山亭區', 370400, 3, '中國,山東省,棗莊市,山亭區', 117, 35, 'Shanting');
INSERT INTO "public"."Sys_Region" VALUES (1415, '370481', '滕州市', 370400, 3, '中國,山東省,棗莊市,滕州市', 117, 35, 'Tengzhou');
INSERT INTO "public"."Sys_Region" VALUES (1416, '370500', '東營市', 370000, 2, '中國,山東省,東營市', 118, 37, 'Dongying');
INSERT INTO "public"."Sys_Region" VALUES (1417, '370502', '東營區', 370500, 3, '中國,山東省,東營市,東營區', 119, 37, 'Dongying');
INSERT INTO "public"."Sys_Region" VALUES (1418, '370503', '河口區', 370500, 3, '中國,山東省,東營市,河口區', 119, 38, 'Hekou');
INSERT INTO "public"."Sys_Region" VALUES (1419, '370521', '墾利縣', 370500, 3, '中國,山東省,東營市,墾利縣', 119, 38, 'Kenli');
INSERT INTO "public"."Sys_Region" VALUES (1420, '370522', '利津縣', 370500, 3, '中國,山東省,東營市,利津縣', 118, 37, 'Lijin');
INSERT INTO "public"."Sys_Region" VALUES (1421, '370523', '廣饒縣', 370500, 3, '中國,山東省,東營市,廣饒縣', 118, 37, 'Guangrao');
INSERT INTO "public"."Sys_Region" VALUES (1422, '370600', '煙臺市', 370000, 2, '中國,山東省,煙臺市', 121, 38, 'Yantai');
INSERT INTO "public"."Sys_Region" VALUES (1423, '370602', '芝罘區', 370600, 3, '中國,山東省,煙臺市,芝罘區', 121, 38, 'Zhifu');
INSERT INTO "public"."Sys_Region" VALUES (1424, '370611', '福山區', 370600, 3, '中國,山東省,煙臺市,福山區', 121, 37, 'Fushan');
INSERT INTO "public"."Sys_Region" VALUES (1425, '370612', '牟平區', 370600, 3, '中國,山東省,煙臺市,牟平區', 122, 37, 'Muping');
INSERT INTO "public"."Sys_Region" VALUES (1426, '370613', '萊山區', 370600, 3, '中國,山東省,煙臺市,萊山區', 121, 38, 'Laishan');
INSERT INTO "public"."Sys_Region" VALUES (1427, '370634', '長島縣', 370600, 3, '中國,山東省,煙臺市,長島縣', 121, 38, 'Changdao');
INSERT INTO "public"."Sys_Region" VALUES (1428, '370681', '龍口市', 370600, 3, '中國,山東省,煙臺市,龍口市', 121, 38, 'Longkou');
INSERT INTO "public"."Sys_Region" VALUES (1429, '370682', '萊陽市', 370600, 3, '中國,山東省,煙臺市,萊陽市', 121, 37, 'Laiyang');
INSERT INTO "public"."Sys_Region" VALUES (1430, '370683', '萊州市', 370600, 3, '中國,山東省,煙臺市,萊州市', 120, 37, 'Laizhou');
INSERT INTO "public"."Sys_Region" VALUES (1431, '370684', '蓬萊市', 370600, 3, '中國,山東省,煙臺市,蓬萊市', 121, 38, 'Penglai');
INSERT INTO "public"."Sys_Region" VALUES (1432, '370685', '招遠市', 370600, 3, '中國,山東省,煙臺市,招遠市', 120, 37, 'Zhaoyuan');
INSERT INTO "public"."Sys_Region" VALUES (1433, '370686', '棲霞市', 370600, 3, '中國,山東省,煙臺市,棲霞市', 121, 37, 'Qixia');
INSERT INTO "public"."Sys_Region" VALUES (1434, '370687', '海陽市', 370600, 3, '中國,山東省,煙臺市,海陽市', 121, 37, 'Haiyang');
INSERT INTO "public"."Sys_Region" VALUES (1435, '370700', '濰坊市', 370000, 2, '中國,山東省,濰坊市', 119, 37, 'Weifang');
INSERT INTO "public"."Sys_Region" VALUES (1436, '370702', '濰城區', 370700, 3, '中國,山東省,濰坊市,濰城區', 119, 37, 'Weicheng');
INSERT INTO "public"."Sys_Region" VALUES (1437, '370703', '寒亭區', 370700, 3, '中國,山東省,濰坊市,寒亭區', 119, 37, 'Hanting');
INSERT INTO "public"."Sys_Region" VALUES (1438, '370704', '坊子區', 370700, 3, '中國,山東省,濰坊市,坊子區', 119, 37, 'Fangzi');
INSERT INTO "public"."Sys_Region" VALUES (1439, '370705', '奎文區', 370700, 3, '中國,山東省,濰坊市,奎文區', 119, 37, 'Kuiwen');
INSERT INTO "public"."Sys_Region" VALUES (1440, '370724', '臨朐縣', 370700, 3, '中國,山東省,濰坊市,臨朐縣', 119, 37, 'Linqu');
INSERT INTO "public"."Sys_Region" VALUES (1441, '370725', '昌樂縣', 370700, 3, '中國,山東省,濰坊市,昌樂縣', 119, 37, 'Changle');
INSERT INTO "public"."Sys_Region" VALUES (1442, '370781', '青州市', 370700, 3, '中國,山東省,濰坊市,青州市', 118, 37, 'Qingzhou');
INSERT INTO "public"."Sys_Region" VALUES (1443, '370782', '諸城市', 370700, 3, '中國,山東省,濰坊市,諸城市', 119, 36, 'Zhucheng');
INSERT INTO "public"."Sys_Region" VALUES (1444, '370783', '壽光市', 370700, 3, '中國,山東省,濰坊市,壽光市', 119, 37, 'Shouguang');
INSERT INTO "public"."Sys_Region" VALUES (1445, '370784', '安丘市', 370700, 3, '中國,山東省,濰坊市,安丘市', 119, 36, 'Anqiu');
INSERT INTO "public"."Sys_Region" VALUES (1446, '370785', '高密市', 370700, 3, '中國,山東省,濰坊市,高密市', 120, 36, 'Gaomi');
INSERT INTO "public"."Sys_Region" VALUES (1447, '370786', '昌邑市', 370700, 3, '中國,山東省,濰坊市,昌邑市', 119, 37, 'Changyi');
INSERT INTO "public"."Sys_Region" VALUES (1448, '370800', '濟寧市', 370000, 2, '中國,山東省,濟寧市', 117, 35, 'Jining');
INSERT INTO "public"."Sys_Region" VALUES (1449, '370811', '任城區', 370800, 3, '中國,山東省,濟寧市,任城區', 117, 35, 'Rencheng');
INSERT INTO "public"."Sys_Region" VALUES (1450, '370812', '兗州區', 370800, 3, '中國,山東省,濟寧市,兗州區', 117, 36, 'Yanzhou ');
INSERT INTO "public"."Sys_Region" VALUES (1451, '370826', '微山縣', 370800, 3, '中國,山東省,濟寧市,微山縣', 117, 35, 'Weishan');
INSERT INTO "public"."Sys_Region" VALUES (1452, '370827', '魚臺縣', 370800, 3, '中國,山東省,濟寧市,魚臺縣', 117, 35, 'Yutai');
INSERT INTO "public"."Sys_Region" VALUES (1453, '370828', '金鄉縣', 370800, 3, '中國,山東省,濟寧市,金鄉縣', 116, 35, 'Jinxiang');
INSERT INTO "public"."Sys_Region" VALUES (1454, '370829', '嘉祥縣', 370800, 3, '中國,山東省,濟寧市,嘉祥縣', 116, 35, 'Jiaxiang');
INSERT INTO "public"."Sys_Region" VALUES (1455, '370830', '汶上縣', 370800, 3, '中國,山東省,濟寧市,汶上縣', 116, 36, 'Wenshang');
INSERT INTO "public"."Sys_Region" VALUES (1456, '370831', '泗水縣', 370800, 3, '中國,山東省,濟寧市,泗水縣', 117, 36, 'Sishui');
INSERT INTO "public"."Sys_Region" VALUES (1457, '370832', '梁山縣', 370800, 3, '中國,山東省,濟寧市,梁山縣', 116, 36, 'Liangshan');
INSERT INTO "public"."Sys_Region" VALUES (1458, '370881', '曲阜市', 370800, 3, '中國,山東省,濟寧市,曲阜市', 117, 36, 'Qufu');
INSERT INTO "public"."Sys_Region" VALUES (1459, '370883', '鄒城市', 370800, 3, '中國,山東省,濟寧市,鄒城市', 117, 35, 'Zoucheng');
INSERT INTO "public"."Sys_Region" VALUES (1460, '370900', '泰安市', 370000, 2, '中國,山東省,泰安市', 117, 36, 'Taian');
INSERT INTO "public"."Sys_Region" VALUES (1461, '370902', '泰山區', 370900, 3, '中國,山東省,泰安市,泰山區', 117, 36, 'Taishan');
INSERT INTO "public"."Sys_Region" VALUES (1462, '370911', '岱岳區', 370900, 3, '中國,山東省,泰安市,岱岳區', 117, 36, 'Daiyue');
INSERT INTO "public"."Sys_Region" VALUES (1463, '370921', '寧陽縣', 370900, 3, '中國,山東省,泰安市,寧陽縣', 117, 36, 'Ningyang');
INSERT INTO "public"."Sys_Region" VALUES (1464, '370923', '東平縣', 370900, 3, '中國,山東省,泰安市,東平縣', 116, 36, 'Dongping');
INSERT INTO "public"."Sys_Region" VALUES (1465, '370982', '新泰市', 370900, 3, '中國,山東省,泰安市,新泰市', 118, 36, 'Xintai');
INSERT INTO "public"."Sys_Region" VALUES (1466, '370983', '肥城市', 370900, 3, '中國,山東省,泰安市,肥城市', 117, 36, 'Feicheng');
INSERT INTO "public"."Sys_Region" VALUES (1467, '371000', '威海市', 370000, 2, '中國,山東省,威海市', 122, 38, 'Weihai');
INSERT INTO "public"."Sys_Region" VALUES (1468, '371002', '環翠區', 371000, 3, '中國,山東省,威海市,環翠區', 122, 38, 'Huancui');
INSERT INTO "public"."Sys_Region" VALUES (1469, '371003', '文登區', 371000, 3, '中國,山東省,威海市,文登區', 122, 37, 'Wendeng');
INSERT INTO "public"."Sys_Region" VALUES (1470, '371082', '榮成市', 371000, 3, '中國,山東省,威海市,榮成市', 122, 37, 'Rongcheng');
INSERT INTO "public"."Sys_Region" VALUES (1471, '371083', '乳山市', 371000, 3, '中國,山東省,威海市,乳山市', 122, 37, 'Rushan');
INSERT INTO "public"."Sys_Region" VALUES (1472, '371100', '日照市', 370000, 2, '中國,山東省,日照市', 119, 35, 'Rizhao');
INSERT INTO "public"."Sys_Region" VALUES (1473, '371102', '東港區', 371100, 3, '中國,山東省,日照市,東港區', 119, 35, 'Donggang');
INSERT INTO "public"."Sys_Region" VALUES (1474, '371103', '嵐山區', 371100, 3, '中國,山東省,日照市,嵐山區', 119, 35, 'Lanshan');
INSERT INTO "public"."Sys_Region" VALUES (1475, '371121', '五蓮縣', 371100, 3, '中國,山東省,日照市,五蓮縣', 119, 36, 'Wulian');
INSERT INTO "public"."Sys_Region" VALUES (1476, '371122', '莒縣', 371100, 3, '中國,山東省,日照市,莒縣', 119, 36, 'Juxian');
INSERT INTO "public"."Sys_Region" VALUES (1477, '371200', '萊蕪市', 370000, 2, '中國,山東省,萊蕪市', 118, 36, 'Laiwu');
INSERT INTO "public"."Sys_Region" VALUES (1478, '371202', '萊城區', 371200, 3, '中國,山東省,萊蕪市,萊城區', 118, 36, 'Laicheng');
INSERT INTO "public"."Sys_Region" VALUES (1479, '371203', '鋼城區', 371200, 3, '中國,山東省,萊蕪市,鋼城區', 118, 36, 'Gangcheng');
INSERT INTO "public"."Sys_Region" VALUES (1480, '371300', '臨沂市', 370000, 2, '中國,山東省,臨沂市', 118, 35, 'Linyi');
INSERT INTO "public"."Sys_Region" VALUES (1481, '371302', '蘭山區', 371300, 3, '中國,山東省,臨沂市,蘭山區', 118, 35, 'Lanshan');
INSERT INTO "public"."Sys_Region" VALUES (1482, '371311', '羅莊區', 371300, 3, '中國,山東省,臨沂市,羅莊區', 118, 35, 'Luozhuang');
INSERT INTO "public"."Sys_Region" VALUES (1483, '371312', '河東區', 371300, 3, '中國,山東省,臨沂市,河東區', 118, 35, 'Hedong');
INSERT INTO "public"."Sys_Region" VALUES (1484, '371321', '沂南縣', 371300, 3, '中國,山東省,臨沂市,沂南縣', 118, 36, 'Yinan');
INSERT INTO "public"."Sys_Region" VALUES (1485, '371322', '郯城縣', 371300, 3, '中國,山東省,臨沂市,郯城縣', 118, 35, 'Tancheng');
INSERT INTO "public"."Sys_Region" VALUES (1486, '371323', '沂水縣', 371300, 3, '中國,山東省,臨沂市,沂水縣', 119, 36, 'Yishui');
INSERT INTO "public"."Sys_Region" VALUES (1487, '371324', '蘭陵縣', 371300, 3, '中國,山東省,臨沂市,蘭陵縣', 118, 35, 'Lanling');
INSERT INTO "public"."Sys_Region" VALUES (1488, '371325', '費縣', 371300, 3, '中國,山東省,臨沂市,費縣', 118, 35, 'Feixian');
INSERT INTO "public"."Sys_Region" VALUES (1489, '371326', '平邑縣', 371300, 3, '中國,山東省,臨沂市,平邑縣', 118, 36, 'Pingyi');
INSERT INTO "public"."Sys_Region" VALUES (1490, '371327', '莒南縣', 371300, 3, '中國,山東省,臨沂市,莒南縣', 119, 35, 'Junan');
INSERT INTO "public"."Sys_Region" VALUES (1491, '371328', '蒙陰縣', 371300, 3, '中國,山東省,臨沂市,蒙陰縣', 118, 36, 'Mengyin');
INSERT INTO "public"."Sys_Region" VALUES (1492, '371329', '臨沭縣', 371300, 3, '中國,山東省,臨沂市,臨沭縣', 119, 35, 'Linshu');
INSERT INTO "public"."Sys_Region" VALUES (1493, '371400', '德州市', 370000, 2, '中國,山東省,德州市', 116, 37, 'Dezhou');
INSERT INTO "public"."Sys_Region" VALUES (1494, '371402', '德城區', 371400, 3, '中國,山東省,德州市,德城區', 116, 37, 'Decheng');
INSERT INTO "public"."Sys_Region" VALUES (1495, '371403', '陵城區', 371400, 3, '中國,山東省,德州市,陵城區', 117, 37, 'Lingcheng');
INSERT INTO "public"."Sys_Region" VALUES (1496, '371422', '寧津縣', 371400, 3, '中國,山東省,德州市,寧津縣', 117, 38, 'Ningjin');
INSERT INTO "public"."Sys_Region" VALUES (1497, '371423', '慶云縣', 371400, 3, '中國,山東省,德州市,慶云縣', 117, 38, 'Qingyun');
INSERT INTO "public"."Sys_Region" VALUES (1498, '371424', '臨邑縣', 371400, 3, '中國,山東省,德州市,臨邑縣', 117, 37, 'Linyi');
INSERT INTO "public"."Sys_Region" VALUES (1499, '371425', '齊河縣', 371400, 3, '中國,山東省,德州市,齊河縣', 117, 37, 'Qihe');
INSERT INTO "public"."Sys_Region" VALUES (1500, '371426', '平原縣', 371400, 3, '中國,山東省,德州市,平原縣', 116, 37, 'Pingyuan');
INSERT INTO "public"."Sys_Region" VALUES (1501, '371427', '夏津縣', 371400, 3, '中國,山東省,德州市,夏津縣', 116, 37, 'Xiajin');
INSERT INTO "public"."Sys_Region" VALUES (1502, '371428', '武城縣', 371400, 3, '中國,山東省,德州市,武城縣', 116, 37, 'Wucheng');
INSERT INTO "public"."Sys_Region" VALUES (1503, '371481', '樂陵市', 371400, 3, '中國,山東省,德州市,樂陵市', 117, 38, 'Leling');
INSERT INTO "public"."Sys_Region" VALUES (1504, '371482', '禹城市', 371400, 3, '中國,山東省,德州市,禹城市', 117, 37, 'Yucheng');
INSERT INTO "public"."Sys_Region" VALUES (1505, '371500', '聊城市', 370000, 2, '中國,山東省,聊城市', 116, 36, 'Liaocheng');
INSERT INTO "public"."Sys_Region" VALUES (1506, '371502', '東昌府區', 371500, 3, '中國,山東省,聊城市,東昌府區', 116, 36, 'Dongchangfu');
INSERT INTO "public"."Sys_Region" VALUES (1507, '371521', '陽谷縣', 371500, 3, '中國,山東省,聊城市,陽谷縣', 116, 36, 'Yanggu');
INSERT INTO "public"."Sys_Region" VALUES (1508, '371522', '莘縣', 371500, 3, '中國,山東省,聊城市,莘縣', 116, 36, 'Shenxian');
INSERT INTO "public"."Sys_Region" VALUES (1509, '371523', '茌平縣', 371500, 3, '中國,山東省,聊城市,茌平縣', 116, 37, 'Chiping');
INSERT INTO "public"."Sys_Region" VALUES (1510, '371524', '東阿縣', 371500, 3, '中國,山東省,聊城市,東阿縣', 116, 36, 'Donge');
INSERT INTO "public"."Sys_Region" VALUES (1511, '371525', '冠縣', 371500, 3, '中國,山東省,聊城市,冠縣', 115, 36, 'Guanxian');
INSERT INTO "public"."Sys_Region" VALUES (1512, '371526', '高唐縣', 371500, 3, '中國,山東省,聊城市,高唐縣', 116, 37, 'Gaotang');
INSERT INTO "public"."Sys_Region" VALUES (1513, '371581', '臨清市', 371500, 3, '中國,山東省,聊城市,臨清市', 116, 37, 'Linqing');
INSERT INTO "public"."Sys_Region" VALUES (1514, '371600', '濱州市', 370000, 2, '中國,山東省,濱州市', 118, 37, 'Binzhou');
INSERT INTO "public"."Sys_Region" VALUES (1515, '371602', '濱城區', 371600, 3, '中國,山東省,濱州市,濱城區', 118, 37, 'Bincheng');
INSERT INTO "public"."Sys_Region" VALUES (1516, '371603', '沾化區', 371600, 3, '中國,山東省,濱州市,沾化區', 118, 38, 'Zhanhua');
INSERT INTO "public"."Sys_Region" VALUES (1517, '371621', '惠民縣', 371600, 3, '中國,山東省,濱州市,惠民縣', 118, 37, 'Huimin');
INSERT INTO "public"."Sys_Region" VALUES (1518, '371622', '陽信縣', 371600, 3, '中國,山東省,濱州市,陽信縣', 118, 38, 'Yangxin');
INSERT INTO "public"."Sys_Region" VALUES (1519, '371623', '無棣縣', 371600, 3, '中國,山東省,濱州市,無棣縣', 118, 38, 'Wudi');
INSERT INTO "public"."Sys_Region" VALUES (1520, '371625', '博興縣', 371600, 3, '中國,山東省,濱州市,博興縣', 118, 37, 'Boxing');
INSERT INTO "public"."Sys_Region" VALUES (1521, '371626', '鄒平縣', 371600, 3, '中國,山東省,濱州市,鄒平縣', 118, 37, 'Zouping');
INSERT INTO "public"."Sys_Region" VALUES (1522, '371627', '北海新區', 371600, 3, '中國,山東省,濱州市,北海新區', 118, 37, 'Beihaixinqu');
INSERT INTO "public"."Sys_Region" VALUES (1523, '371700', '菏澤市', 370000, 2, '中國,山東省,菏澤市', 115, 35, 'Heze');
INSERT INTO "public"."Sys_Region" VALUES (1524, '371702', '牡丹區', 371700, 3, '中國,山東省,菏澤市,牡丹區', 115, 35, 'Mudan');
INSERT INTO "public"."Sys_Region" VALUES (1525, '371721', '曹縣', 371700, 3, '中國,山東省,菏澤市,曹縣', 116, 35, 'Caoxian');
INSERT INTO "public"."Sys_Region" VALUES (1526, '371722', '單縣', 371700, 3, '中國,山東省,菏澤市,單縣', 116, 35, 'Shanxian');
INSERT INTO "public"."Sys_Region" VALUES (1527, '371723', '成武縣', 371700, 3, '中國,山東省,菏澤市,成武縣', 116, 35, 'Chengwu');
INSERT INTO "public"."Sys_Region" VALUES (1528, '371724', '巨野縣', 371700, 3, '中國,山東省,菏澤市,巨野縣', 116, 35, 'Juye');
INSERT INTO "public"."Sys_Region" VALUES (1529, '371725', '鄆城縣', 371700, 3, '中國,山東省,菏澤市,鄆城縣', 116, 36, 'Yuncheng');
INSERT INTO "public"."Sys_Region" VALUES (1530, '371726', '鄄城縣', 371700, 3, '中國,山東省,菏澤市,鄄城縣', 116, 36, 'Juancheng');
INSERT INTO "public"."Sys_Region" VALUES (1531, '371727', '定陶縣', 371700, 3, '中國,山東省,菏澤市,定陶縣', 116, 35, 'Dingtao');
INSERT INTO "public"."Sys_Region" VALUES (1532, '371728', '東明縣', 371700, 3, '中國,山東省,菏澤市,東明縣', 115, 35, 'Dongming');
INSERT INTO "public"."Sys_Region" VALUES (1533, '410000', '河南省', 100000, 1, '中國,河南省', 114, 35, 'Henan');
INSERT INTO "public"."Sys_Region" VALUES (1534, '410100', '鄭州市', 410000, 2, '中國,河南省,鄭州市', 114, 35, 'Zhengzhou');
INSERT INTO "public"."Sys_Region" VALUES (1535, '410102', '中原區', 410100, 3, '中國,河南省,鄭州市,中原區', 114, 35, 'Zhongyuan');
INSERT INTO "public"."Sys_Region" VALUES (1536, '410103', '二七區', 410100, 3, '中國,河南省,鄭州市,二七區', 114, 35, 'Erqi');
INSERT INTO "public"."Sys_Region" VALUES (1537, '410104', '管城回族區', 410100, 3, '中國,河南省,鄭州市,管城回族區', 114, 35, 'Guancheng');
INSERT INTO "public"."Sys_Region" VALUES (1538, '410105', '金水區', 410100, 3, '中國,河南省,鄭州市,金水區', 114, 35, 'Jinshui');
INSERT INTO "public"."Sys_Region" VALUES (1539, '410106', '上街區', 410100, 3, '中國,河南省,鄭州市,上街區', 113, 35, 'Shangjie');
INSERT INTO "public"."Sys_Region" VALUES (1540, '410108', '惠濟區', 410100, 3, '中國,河南省,鄭州市,惠濟區', 114, 35, 'Huiji');
INSERT INTO "public"."Sys_Region" VALUES (1541, '410122', '中牟縣', 410100, 3, '中國,河南省,鄭州市,中牟縣', 114, 35, 'Zhongmu');
INSERT INTO "public"."Sys_Region" VALUES (1542, '410181', '鞏義市', 410100, 3, '中國,河南省,鄭州市,鞏義市', 113, 35, 'Gongyi');
INSERT INTO "public"."Sys_Region" VALUES (1543, '410182', '滎陽市', 410100, 3, '中國,河南省,鄭州市,滎陽市', 113, 35, 'Xingyang');
INSERT INTO "public"."Sys_Region" VALUES (1544, '410183', '新密市', 410100, 3, '中國,河南省,鄭州市,新密市', 113, 35, 'Xinmi');
INSERT INTO "public"."Sys_Region" VALUES (1545, '410184', '新鄭市', 410100, 3, '中國,河南省,鄭州市,新鄭市', 114, 34, 'Xinzheng');
INSERT INTO "public"."Sys_Region" VALUES (1546, '410185', '登封市', 410100, 3, '中國,河南省,鄭州市,登封市', 113, 34, 'Dengfeng');
INSERT INTO "public"."Sys_Region" VALUES (1547, '410200', '開封市', 410000, 2, '中國,河南省,開封市', 114, 35, 'Kaifeng');
INSERT INTO "public"."Sys_Region" VALUES (1548, '410202', '龍亭區', 410200, 3, '中國,河南省,開封市,龍亭區', 114, 35, 'Longting');
INSERT INTO "public"."Sys_Region" VALUES (1549, '410203', '順河回族區', 410200, 3, '中國,河南省,開封市,順河回族區', 114, 35, 'Shunhe');
INSERT INTO "public"."Sys_Region" VALUES (1550, '410204', '鼓樓區', 410200, 3, '中國,河南省,開封市,鼓樓區', 114, 35, 'Gulou');
INSERT INTO "public"."Sys_Region" VALUES (1551, '410205', '禹王臺區', 410200, 3, '中國,河南省,開封市,禹王臺區', 114, 35, 'Yuwangtai');
INSERT INTO "public"."Sys_Region" VALUES (1552, '410212', '祥符區', 410200, 3, '中國,河南省,開封市,祥符區', 114, 35, 'Xiangfu');
INSERT INTO "public"."Sys_Region" VALUES (1553, '410221', '杞縣', 410200, 3, '中國,河南省,開封市,杞縣', 115, 35, 'Qixian');
INSERT INTO "public"."Sys_Region" VALUES (1554, '410222', '通許縣', 410200, 3, '中國,河南省,開封市,通許縣', 114, 34, 'Tongxu');
INSERT INTO "public"."Sys_Region" VALUES (1555, '410223', '尉氏縣', 410200, 3, '中國,河南省,開封市,尉氏縣', 114, 34, 'Weishi');
INSERT INTO "public"."Sys_Region" VALUES (1556, '410225', '蘭考縣', 410200, 3, '中國,河南省,開封市,蘭考縣', 115, 35, 'Lankao');
INSERT INTO "public"."Sys_Region" VALUES (1557, '410300', '洛陽市', 410000, 2, '中國,河南省,洛陽市', 112, 35, 'Luoyang');
INSERT INTO "public"."Sys_Region" VALUES (1558, '410302', '老城區', 410300, 3, '中國,河南省,洛陽市,老城區', 112, 35, 'Laocheng');
INSERT INTO "public"."Sys_Region" VALUES (1559, '410303', '西工區', 410300, 3, '中國,河南省,洛陽市,西工區', 112, 35, 'Xigong');
INSERT INTO "public"."Sys_Region" VALUES (1560, '410304', '瀍河回族區', 410300, 3, '中國,河南省,洛陽市,瀍河回族區', 113, 35, 'Chanhe');
INSERT INTO "public"."Sys_Region" VALUES (1561, '410305', '澗西區', 410300, 3, '中國,河南省,洛陽市,澗西區', 112, 35, 'Jianxi');
INSERT INTO "public"."Sys_Region" VALUES (1562, '410306', '吉利區', 410300, 3, '中國,河南省,洛陽市,吉利區', 113, 35, 'Jili');
INSERT INTO "public"."Sys_Region" VALUES (1563, '410311', '洛龍區', 410300, 3, '中國,河南省,洛陽市,洛龍區', 112, 35, 'Luolong');
INSERT INTO "public"."Sys_Region" VALUES (1564, '410322', '孟津縣', 410300, 3, '中國,河南省,洛陽市,孟津縣', 112, 35, 'Mengjin');
INSERT INTO "public"."Sys_Region" VALUES (1565, '410323', '新安縣', 410300, 3, '中國,河南省,洛陽市,新安縣', 112, 35, 'Xinan');
INSERT INTO "public"."Sys_Region" VALUES (1566, '410324', '欒川縣', 410300, 3, '中國,河南省,洛陽市,欒川縣', 112, 34, 'Luanchuan');
INSERT INTO "public"."Sys_Region" VALUES (1567, '410325', '嵩縣', 410300, 3, '中國,河南省,洛陽市,嵩縣', 112, 34, 'Songxian');
INSERT INTO "public"."Sys_Region" VALUES (1568, '410326', '汝陽縣', 410300, 3, '中國,河南省,洛陽市,汝陽縣', 112, 34, 'Ruyang');
INSERT INTO "public"."Sys_Region" VALUES (1569, '410327', '宜陽縣', 410300, 3, '中國,河南省,洛陽市,宜陽縣', 112, 35, 'Yiyang');
INSERT INTO "public"."Sys_Region" VALUES (1570, '410328', '洛寧縣', 410300, 3, '中國,河南省,洛陽市,洛寧縣', 112, 34, 'Luoning');
INSERT INTO "public"."Sys_Region" VALUES (1571, '410329', '伊川縣', 410300, 3, '中國,河南省,洛陽市,伊川縣', 112, 34, 'Yichuan');
INSERT INTO "public"."Sys_Region" VALUES (1572, '410381', '偃師市', 410300, 3, '中國,河南省,洛陽市,偃師市', 113, 35, 'Yanshi');
INSERT INTO "public"."Sys_Region" VALUES (1573, '410400', '平頂山市', 410000, 2, '中國,河南省,平頂山市', 113, 34, 'Pingdingshan');
INSERT INTO "public"."Sys_Region" VALUES (1574, '410402', '新華區', 410400, 3, '中國,河南省,平頂山市,新華區', 113, 34, 'Xinhua');
INSERT INTO "public"."Sys_Region" VALUES (1575, '410403', '衛東區', 410400, 3, '中國,河南省,平頂山市,衛東區', 113, 34, 'Weidong');
INSERT INTO "public"."Sys_Region" VALUES (1576, '410404', '石龍區', 410400, 3, '中國,河南省,平頂山市,石龍區', 113, 34, 'Shilong');
INSERT INTO "public"."Sys_Region" VALUES (1577, '410411', '湛河區', 410400, 3, '中國,河南省,平頂山市,湛河區', 113, 34, 'Zhanhe');
INSERT INTO "public"."Sys_Region" VALUES (1578, '410421', '寶豐縣', 410400, 3, '中國,河南省,平頂山市,寶豐縣', 113, 34, 'Baofeng');
INSERT INTO "public"."Sys_Region" VALUES (1579, '410422', '葉縣', 410400, 3, '中國,河南省,平頂山市,葉縣', 113, 34, 'Yexian');
INSERT INTO "public"."Sys_Region" VALUES (1580, '410423', '魯山縣', 410400, 3, '中國,河南省,平頂山市,魯山縣', 113, 34, 'Lushan');
INSERT INTO "public"."Sys_Region" VALUES (1581, '410425', '郟縣', 410400, 3, '中國,河南省,平頂山市,郟縣', 113, 34, 'Jiaxian');
INSERT INTO "public"."Sys_Region" VALUES (1582, '410481', '舞鋼市', 410400, 3, '中國,河南省,平頂山市,舞鋼市', 114, 33, 'Wugang');
INSERT INTO "public"."Sys_Region" VALUES (1583, '410482', '汝州市', 410400, 3, '中國,河南省,平頂山市,汝州市', 113, 34, 'Ruzhou');
INSERT INTO "public"."Sys_Region" VALUES (1584, '410500', '安陽市', 410000, 2, '中國,河南省,安陽市', 114, 36, 'Anyang');
INSERT INTO "public"."Sys_Region" VALUES (1585, '410502', '文峰區', 410500, 3, '中國,河南省,安陽市,文峰區', 114, 36, 'Wenfeng');
INSERT INTO "public"."Sys_Region" VALUES (1586, '410503', '北關區', 410500, 3, '中國,河南省,安陽市,北關區', 114, 36, 'Beiguan');
INSERT INTO "public"."Sys_Region" VALUES (1587, '410505', '殷都區', 410500, 3, '中國,河南省,安陽市,殷都區', 114, 36, 'Yindu');
INSERT INTO "public"."Sys_Region" VALUES (1588, '410506', '龍安區', 410500, 3, '中國,河南省,安陽市,龍安區', 114, 36, 'Longan');
INSERT INTO "public"."Sys_Region" VALUES (1589, '410522', '安陽縣', 410500, 3, '中國,河南省,安陽市,安陽縣', 114, 36, 'Anyang');
INSERT INTO "public"."Sys_Region" VALUES (1590, '410523', '湯陰縣', 410500, 3, '中國,河南省,安陽市,湯陰縣', 114, 36, 'Tangyin');
INSERT INTO "public"."Sys_Region" VALUES (1591, '410526', '滑縣', 410500, 3, '中國,河南省,安陽市,滑縣', 115, 36, 'Huaxian');
INSERT INTO "public"."Sys_Region" VALUES (1592, '410527', '內黃縣', 410500, 3, '中國,河南省,安陽市,內黃縣', 115, 36, 'Neihuang');
INSERT INTO "public"."Sys_Region" VALUES (1593, '410581', '林州市', 410500, 3, '中國,河南省,安陽市,林州市', 114, 36, 'Linzhou');
INSERT INTO "public"."Sys_Region" VALUES (1594, '410600', '鶴壁市', 410000, 2, '中國,河南省,鶴壁市', 114, 36, 'Hebi');
INSERT INTO "public"."Sys_Region" VALUES (1595, '410602', '鶴山區', 410600, 3, '中國,河南省,鶴壁市,鶴山區', 114, 36, 'Heshan');
INSERT INTO "public"."Sys_Region" VALUES (1596, '410603', '山城區', 410600, 3, '中國,河南省,鶴壁市,山城區', 114, 36, 'Shancheng');
INSERT INTO "public"."Sys_Region" VALUES (1597, '410611', '淇濱區', 410600, 3, '中國,河南省,鶴壁市,淇濱區', 114, 36, 'Qibin');
INSERT INTO "public"."Sys_Region" VALUES (1598, '410621', '浚縣', 410600, 3, '中國,河南省,鶴壁市,浚縣', 115, 36, 'Xunxian');
INSERT INTO "public"."Sys_Region" VALUES (1599, '410622', '淇縣', 410600, 3, '中國,河南省,鶴壁市,淇縣', 114, 36, 'Qixian');
INSERT INTO "public"."Sys_Region" VALUES (1600, '410700', '新鄉市', 410000, 2, '中國,河南省,新鄉市', 114, 35, 'Xinxiang');
INSERT INTO "public"."Sys_Region" VALUES (1601, '410702', '紅旗區', 410700, 3, '中國,河南省,新鄉市,紅旗區', 114, 35, 'Hongqi');
INSERT INTO "public"."Sys_Region" VALUES (1602, '410703', '衛濱區', 410700, 3, '中國,河南省,新鄉市,衛濱區', 114, 35, 'Weibin');
INSERT INTO "public"."Sys_Region" VALUES (1603, '410704', '鳳泉區', 410700, 3, '中國,河南省,新鄉市,鳳泉區', 114, 35, 'Fengquan');
INSERT INTO "public"."Sys_Region" VALUES (1604, '410711', '牧野區', 410700, 3, '中國,河南省,新鄉市,牧野區', 114, 35, 'Muye');
INSERT INTO "public"."Sys_Region" VALUES (1605, '410721', '新鄉縣', 410700, 3, '中國,河南省,新鄉市,新鄉縣', 114, 35, 'Xinxiang');
INSERT INTO "public"."Sys_Region" VALUES (1606, '410724', '獲嘉縣', 410700, 3, '中國,河南省,新鄉市,獲嘉縣', 114, 35, 'Huojia');
INSERT INTO "public"."Sys_Region" VALUES (1607, '410725', '原陽縣', 410700, 3, '中國,河南省,新鄉市,原陽縣', 114, 35, 'Yuanyang');
INSERT INTO "public"."Sys_Region" VALUES (1608, '410726', '延津縣', 410700, 3, '中國,河南省,新鄉市,延津縣', 114, 35, 'Yanjin');
INSERT INTO "public"."Sys_Region" VALUES (1609, '410727', '封丘縣', 410700, 3, '中國,河南省,新鄉市,封丘縣', 114, 35, 'Fengqiu');
INSERT INTO "public"."Sys_Region" VALUES (1610, '410728', '長垣縣', 410700, 3, '中國,河南省,新鄉市,長垣縣', 115, 35, 'Changyuan');
INSERT INTO "public"."Sys_Region" VALUES (1611, '410781', '衛輝市', 410700, 3, '中國,河南省,新鄉市,衛輝市', 114, 35, 'Weihui');
INSERT INTO "public"."Sys_Region" VALUES (1612, '410782', '輝縣市', 410700, 3, '中國,河南省,新鄉市,輝縣市', 114, 35, 'Huixian');
INSERT INTO "public"."Sys_Region" VALUES (1613, '410800', '焦作市', 410000, 2, '中國,河南省,焦作市', 113, 35, 'Jiaozuo');
INSERT INTO "public"."Sys_Region" VALUES (1614, '410802', '解放區', 410800, 3, '中國,河南省,焦作市,解放區', 113, 35, 'Jiefang');
INSERT INTO "public"."Sys_Region" VALUES (1615, '410803', '中站區', 410800, 3, '中國,河南省,焦作市,中站區', 113, 35, 'Zhongzhan');
INSERT INTO "public"."Sys_Region" VALUES (1616, '410804', '馬村區', 410800, 3, '中國,河南省,焦作市,馬村區', 113, 35, 'Macun');
INSERT INTO "public"."Sys_Region" VALUES (1617, '410811', '山陽區', 410800, 3, '中國,河南省,焦作市,山陽區', 113, 35, 'Shanyang');
INSERT INTO "public"."Sys_Region" VALUES (1618, '410821', '修武縣', 410800, 3, '中國,河南省,焦作市,修武縣', 113, 35, 'Xiuwu');
INSERT INTO "public"."Sys_Region" VALUES (1619, '410822', '博愛縣', 410800, 3, '中國,河南省,焦作市,博愛縣', 113, 35, 'Boai');
INSERT INTO "public"."Sys_Region" VALUES (1620, '410823', '武陟縣', 410800, 3, '中國,河南省,焦作市,武陟縣', 113, 35, 'Wuzhi');
INSERT INTO "public"."Sys_Region" VALUES (1621, '410825', '溫縣', 410800, 3, '中國,河南省,焦作市,溫縣', 113, 35, 'Wenxian');
INSERT INTO "public"."Sys_Region" VALUES (1622, '410882', '沁陽市', 410800, 3, '中國,河南省,焦作市,沁陽市', 113, 35, 'Qinyang');
INSERT INTO "public"."Sys_Region" VALUES (1623, '410883', '孟州市', 410800, 3, '中國,河南省,焦作市,孟州市', 113, 35, 'Mengzhou');
INSERT INTO "public"."Sys_Region" VALUES (1624, '410900', '濮陽市', 410000, 2, '中國,河南省,濮陽市', 115, 36, 'Puyang');
INSERT INTO "public"."Sys_Region" VALUES (1625, '410902', '華龍區', 410900, 3, '中國,河南省,濮陽市,華龍區', 115, 36, 'Hualong');
INSERT INTO "public"."Sys_Region" VALUES (1626, '410922', '清豐縣', 410900, 3, '中國,河南省,濮陽市,清豐縣', 115, 36, 'Qingfeng');
INSERT INTO "public"."Sys_Region" VALUES (1627, '410923', '南樂縣', 410900, 3, '中國,河南省,濮陽市,南樂縣', 115, 36, 'Nanle');
INSERT INTO "public"."Sys_Region" VALUES (1628, '410926', '范縣', 410900, 3, '中國,河南省,濮陽市,范縣', 116, 36, 'Fanxian');
INSERT INTO "public"."Sys_Region" VALUES (1629, '410927', '臺前縣', 410900, 3, '中國,河南省,濮陽市,臺前縣', 116, 36, 'Taiqian');
INSERT INTO "public"."Sys_Region" VALUES (1630, '410928', '濮陽縣', 410900, 3, '中國,河南省,濮陽市,濮陽縣', 115, 36, 'Puyang');
INSERT INTO "public"."Sys_Region" VALUES (1631, '411000', '許昌市', 410000, 2, '中國,河南省,許昌市', 114, 34, 'Xuchang');
INSERT INTO "public"."Sys_Region" VALUES (1632, '411002', '魏都區', 411000, 3, '中國,河南省,許昌市,魏都區', 114, 34, 'Weidu');
INSERT INTO "public"."Sys_Region" VALUES (1633, '411023', '許昌縣', 411000, 3, '中國,河南省,許昌市,許昌縣', 114, 34, 'Xuchang');
INSERT INTO "public"."Sys_Region" VALUES (1634, '411024', '鄢陵縣', 411000, 3, '中國,河南省,許昌市,鄢陵縣', 114, 34, 'Yanling');
INSERT INTO "public"."Sys_Region" VALUES (1635, '411025', '襄城縣', 411000, 3, '中國,河南省,許昌市,襄城縣', 113, 34, 'Xiangcheng');
INSERT INTO "public"."Sys_Region" VALUES (1636, '411081', '禹州市', 411000, 3, '中國,河南省,許昌市,禹州市', 113, 34, 'Yuzhou');
INSERT INTO "public"."Sys_Region" VALUES (1637, '411082', '長葛市', 411000, 3, '中國,河南省,許昌市,長葛市', 114, 34, 'Changge');
INSERT INTO "public"."Sys_Region" VALUES (1638, '411100', '漯河市', 410000, 2, '中國,河南省,漯河市', 114, 34, 'Luohe');
INSERT INTO "public"."Sys_Region" VALUES (1639, '411102', '源匯區', 411100, 3, '中國,河南省,漯河市,源匯區', 114, 34, 'Yuanhui');
INSERT INTO "public"."Sys_Region" VALUES (1640, '411103', '郾城區', 411100, 3, '中國,河南省,漯河市,郾城區', 114, 34, 'Yancheng');
INSERT INTO "public"."Sys_Region" VALUES (1641, '411104', '召陵區', 411100, 3, '中國,河南省,漯河市,召陵區', 114, 34, 'Zhaoling');
INSERT INTO "public"."Sys_Region" VALUES (1642, '411121', '舞陽縣', 411100, 3, '中國,河南省,漯河市,舞陽縣', 114, 33, 'Wuyang');
INSERT INTO "public"."Sys_Region" VALUES (1643, '411122', '臨潁縣', 411100, 3, '中國,河南省,漯河市,臨潁縣', 114, 34, 'Linying');
INSERT INTO "public"."Sys_Region" VALUES (1644, '411200', '三門峽市', 410000, 2, '中國,河南省,三門峽市', 111, 35, 'Sanmenxia');
INSERT INTO "public"."Sys_Region" VALUES (1645, '411202', '湖濱區', 411200, 3, '中國,河南省,三門峽市,湖濱區', 111, 35, 'Hubin');
INSERT INTO "public"."Sys_Region" VALUES (1646, '411221', '澠池縣', 411200, 3, '中國,河南省,三門峽市,澠池縣', 112, 35, 'Mianchi');
INSERT INTO "public"."Sys_Region" VALUES (1647, '411222', '陜縣', 411200, 3, '中國,河南省,三門峽市,陜縣', 111, 35, 'Shanxian');
INSERT INTO "public"."Sys_Region" VALUES (1648, '411224', '盧氏縣', 411200, 3, '中國,河南省,三門峽市,盧氏縣', 111, 34, 'Lushi');
INSERT INTO "public"."Sys_Region" VALUES (1649, '411281', '義馬市', 411200, 3, '中國,河南省,三門峽市,義馬市', 112, 35, 'Yima');
INSERT INTO "public"."Sys_Region" VALUES (1650, '411282', '靈寶市', 411200, 3, '中國,河南省,三門峽市,靈寶市', 111, 35, 'Lingbao');
INSERT INTO "public"."Sys_Region" VALUES (1651, '411300', '南陽市', 410000, 2, '中國,河南省,南陽市', 113, 33, 'Nanyang');
INSERT INTO "public"."Sys_Region" VALUES (1652, '411302', '宛城區', 411300, 3, '中國,河南省,南陽市,宛城區', 113, 33, 'Wancheng');
INSERT INTO "public"."Sys_Region" VALUES (1653, '411303', '臥龍區', 411300, 3, '中國,河南省,南陽市,臥龍區', 113, 33, 'Wolong');
INSERT INTO "public"."Sys_Region" VALUES (1654, '411321', '南召縣', 411300, 3, '中國,河南省,南陽市,南召縣', 112, 33, 'Nanzhao');
INSERT INTO "public"."Sys_Region" VALUES (1655, '411322', '方城縣', 411300, 3, '中國,河南省,南陽市,方城縣', 113, 33, 'Fangcheng');
INSERT INTO "public"."Sys_Region" VALUES (1656, '411323', '西峽縣', 411300, 3, '中國,河南省,南陽市,西峽縣', 111, 33, 'Xixia');
INSERT INTO "public"."Sys_Region" VALUES (1657, '411324', '鎮平縣', 411300, 3, '中國,河南省,南陽市,鎮平縣', 112, 33, 'Zhenping');
INSERT INTO "public"."Sys_Region" VALUES (1658, '411325', '內鄉縣', 411300, 3, '中國,河南省,南陽市,內鄉縣', 112, 33, 'Neixiang');
INSERT INTO "public"."Sys_Region" VALUES (1659, '411326', '淅川縣', 411300, 3, '中國,河南省,南陽市,淅川縣', 111, 33, 'Xichuan');
INSERT INTO "public"."Sys_Region" VALUES (1660, '411327', '社旗縣', 411300, 3, '中國,河南省,南陽市,社旗縣', 113, 33, 'Sheqi');
INSERT INTO "public"."Sys_Region" VALUES (1661, '411328', '唐河縣', 411300, 3, '中國,河南省,南陽市,唐河縣', 113, 33, 'Tanghe');
INSERT INTO "public"."Sys_Region" VALUES (1662, '411329', '新野縣', 411300, 3, '中國,河南省,南陽市,新野縣', 112, 33, 'Xinye');
INSERT INTO "public"."Sys_Region" VALUES (1663, '411330', '桐柏縣', 411300, 3, '中國,河南省,南陽市,桐柏縣', 113, 32, 'Tongbai');
INSERT INTO "public"."Sys_Region" VALUES (1664, '411381', '鄧州市', 411300, 3, '中國,河南省,南陽市,鄧州市', 112, 33, 'Dengzhou');
INSERT INTO "public"."Sys_Region" VALUES (1665, '411400', '商丘市', 410000, 2, '中國,河南省,商丘市', 116, 34, 'Shangqiu');
INSERT INTO "public"."Sys_Region" VALUES (1666, '411402', '梁園區', 411400, 3, '中國,河南省,商丘市,梁園區', 116, 34, 'Liangyuan');
INSERT INTO "public"."Sys_Region" VALUES (1667, '411403', '睢陽區', 411400, 3, '中國,河南省,商丘市,睢陽區', 116, 34, 'Suiyang');
INSERT INTO "public"."Sys_Region" VALUES (1668, '411421', '民權縣', 411400, 3, '中國,河南省,商丘市,民權縣', 115, 35, 'Minquan');
INSERT INTO "public"."Sys_Region" VALUES (1669, '411422', '睢縣', 411400, 3, '中國,河南省,商丘市,睢縣', 115, 34, 'Suixian');
INSERT INTO "public"."Sys_Region" VALUES (1670, '411423', '寧陵縣', 411400, 3, '中國,河南省,商丘市,寧陵縣', 115, 34, 'Ningling');
INSERT INTO "public"."Sys_Region" VALUES (1671, '411424', '柘城縣', 411400, 3, '中國,河南省,商丘市,柘城縣', 115, 34, 'Zhecheng');
INSERT INTO "public"."Sys_Region" VALUES (1672, '411425', '虞城縣', 411400, 3, '中國,河南省,商丘市,虞城縣', 116, 34, 'Yucheng');
INSERT INTO "public"."Sys_Region" VALUES (1673, '411426', '夏邑縣', 411400, 3, '中國,河南省,商丘市,夏邑縣', 116, 34, 'Xiayi');
INSERT INTO "public"."Sys_Region" VALUES (1674, '411481', '永城市', 411400, 3, '中國,河南省,商丘市,永城市', 116, 34, 'Yongcheng');
INSERT INTO "public"."Sys_Region" VALUES (1675, '411500', '信陽市', 410000, 2, '中國,河南省,信陽市', 114, 32, 'Xinyang');
INSERT INTO "public"."Sys_Region" VALUES (1676, '411502', '浉河區', 411500, 3, '中國,河南省,信陽市,浉河區', 114, 32, 'Shihe');
INSERT INTO "public"."Sys_Region" VALUES (1677, '411503', '平橋區', 411500, 3, '中國,河南省,信陽市,平橋區', 114, 32, 'Pingqiao');
INSERT INTO "public"."Sys_Region" VALUES (1678, '411521', '羅山縣', 411500, 3, '中國,河南省,信陽市,羅山縣', 115, 32, 'Luoshan');
INSERT INTO "public"."Sys_Region" VALUES (1679, '411522', '光山縣', 411500, 3, '中國,河南省,信陽市,光山縣', 115, 32, 'Guangshan');
INSERT INTO "public"."Sys_Region" VALUES (1680, '411523', '新縣', 411500, 3, '中國,河南省,信陽市,新縣', 115, 32, 'Xinxian');
INSERT INTO "public"."Sys_Region" VALUES (1681, '411524', '商城縣', 411500, 3, '中國,河南省,信陽市,商城縣', 115, 32, 'Shangcheng');
INSERT INTO "public"."Sys_Region" VALUES (1682, '411525', '固始縣', 411500, 3, '中國,河南省,信陽市,固始縣', 116, 32, 'Gushi');
INSERT INTO "public"."Sys_Region" VALUES (1683, '411526', '潢川縣', 411500, 3, '中國,河南省,信陽市,潢川縣', 115, 32, 'Huangchuan');
INSERT INTO "public"."Sys_Region" VALUES (1684, '411527', '淮濱縣', 411500, 3, '中國,河南省,信陽市,淮濱縣', 115, 32, 'Huaibin');
INSERT INTO "public"."Sys_Region" VALUES (1685, '411528', '息縣', 411500, 3, '中國,河南省,信陽市,息縣', 115, 32, 'Xixian');
INSERT INTO "public"."Sys_Region" VALUES (1686, '411600', '周口市', 410000, 2, '中國,河南省,周口市', 115, 34, 'Zhoukou');
INSERT INTO "public"."Sys_Region" VALUES (1687, '411602', '川匯區', 411600, 3, '中國,河南省,周口市,川匯區', 115, 34, 'Chuanhui');
INSERT INTO "public"."Sys_Region" VALUES (1688, '411621', '扶溝縣', 411600, 3, '中國,河南省,周口市,扶溝縣', 114, 34, 'Fugou');
INSERT INTO "public"."Sys_Region" VALUES (1689, '411622', '西華縣', 411600, 3, '中國,河南省,周口市,西華縣', 115, 34, 'Xihua');
INSERT INTO "public"."Sys_Region" VALUES (1690, '411623', '商水縣', 411600, 3, '中國,河南省,周口市,商水縣', 115, 34, 'Shangshui');
INSERT INTO "public"."Sys_Region" VALUES (1691, '411624', '沈丘縣', 411600, 3, '中國,河南省,周口市,沈丘縣', 115, 33, 'Shenqiu');
INSERT INTO "public"."Sys_Region" VALUES (1692, '411625', '鄲城縣', 411600, 3, '中國,河南省,周口市,鄲城縣', 115, 34, 'Dancheng');
INSERT INTO "public"."Sys_Region" VALUES (1693, '411626', '淮陽縣', 411600, 3, '中國,河南省,周口市,淮陽縣', 115, 34, 'Huaiyang');
INSERT INTO "public"."Sys_Region" VALUES (1694, '411627', '太康縣', 411600, 3, '中國,河南省,周口市,太康縣', 115, 34, 'Taikang');
INSERT INTO "public"."Sys_Region" VALUES (1695, '411628', '鹿邑縣', 411600, 3, '中國,河南省,周口市,鹿邑縣', 115, 34, 'Luyi');
INSERT INTO "public"."Sys_Region" VALUES (1696, '411681', '項城市', 411600, 3, '中國,河南省,周口市,項城市', 115, 33, 'Xiangcheng');
INSERT INTO "public"."Sys_Region" VALUES (1697, '411700', '駐馬店市', 410000, 2, '中國,河南省,駐馬店市', 114, 33, 'Zhumadian');
INSERT INTO "public"."Sys_Region" VALUES (1698, '411702', '驛城區', 411700, 3, '中國,河南省,駐馬店市,驛城區', 114, 33, 'Yicheng');
INSERT INTO "public"."Sys_Region" VALUES (1699, '411721', '西平縣', 411700, 3, '中國,河南省,駐馬店市,西平縣', 114, 33, 'Xiping');
INSERT INTO "public"."Sys_Region" VALUES (1700, '411722', '上蔡縣', 411700, 3, '中國,河南省,駐馬店市,上蔡縣', 114, 33, 'Shangcai');
INSERT INTO "public"."Sys_Region" VALUES (1701, '411723', '平輿縣', 411700, 3, '中國,河南省,駐馬店市,平輿縣', 115, 33, 'Pingyu');
INSERT INTO "public"."Sys_Region" VALUES (1702, '411724', '正陽縣', 411700, 3, '中國,河南省,駐馬店市,正陽縣', 114, 33, 'Zhengyang');
INSERT INTO "public"."Sys_Region" VALUES (1703, '411725', '確山縣', 411700, 3, '中國,河南省,駐馬店市,確山縣', 114, 33, 'Queshan');
INSERT INTO "public"."Sys_Region" VALUES (1704, '411726', '泌陽縣', 411700, 3, '中國,河南省,駐馬店市,泌陽縣', 113, 33, 'Biyang');
INSERT INTO "public"."Sys_Region" VALUES (1705, '411727', '汝南縣', 411700, 3, '中國,河南省,駐馬店市,汝南縣', 114, 33, 'Runan');
INSERT INTO "public"."Sys_Region" VALUES (1706, '411728', '遂平縣', 411700, 3, '中國,河南省,駐馬店市,遂平縣', 114, 33, 'Suiping');
INSERT INTO "public"."Sys_Region" VALUES (1707, '411729', '新蔡縣', 411700, 3, '中國,河南省,駐馬店市,新蔡縣', 115, 33, 'Xincai');
INSERT INTO "public"."Sys_Region" VALUES (1708, '419000', '直轄縣級', 410000, 2, '中國,河南省,直轄縣級', 114, 35, '');
INSERT INTO "public"."Sys_Region" VALUES (1709, '419001', '濟源市', 419000, 3, '中國,河南省,直轄縣級,濟源市', 113, 35, 'Jiyuan');
INSERT INTO "public"."Sys_Region" VALUES (1710, '420000', '湖北省', 100000, 1, '中國,湖北省', 114, 31, 'Hubei');
INSERT INTO "public"."Sys_Region" VALUES (1711, '420100', '武漢市', 420000, 2, '中國,湖北省,武漢市', 114, 31, 'Wuhan');
INSERT INTO "public"."Sys_Region" VALUES (1712, '420102', '江岸區', 420100, 3, '中國,湖北省,武漢市,江岸區', 114, 31, 'Jiangan');
INSERT INTO "public"."Sys_Region" VALUES (1713, '420103', '江漢區', 420100, 3, '中國,湖北省,武漢市,江漢區', 114, 31, 'Jianghan');
INSERT INTO "public"."Sys_Region" VALUES (1714, '420104', '硚口區', 420100, 3, '中國,湖北省,武漢市,硚口區', 114, 31, 'Qiaokou');
INSERT INTO "public"."Sys_Region" VALUES (1715, '420105', '漢陽區', 420100, 3, '中國,湖北省,武漢市,漢陽區', 114, 31, 'Hanyang');
INSERT INTO "public"."Sys_Region" VALUES (1716, '420106', '武昌區', 420100, 3, '中國,湖北省,武漢市,武昌區', 114, 31, 'Wuchang');
INSERT INTO "public"."Sys_Region" VALUES (1717, '420107', '青山區', 420100, 3, '中國,湖北省,武漢市,青山區', 114, 31, 'Qingshan');
INSERT INTO "public"."Sys_Region" VALUES (1718, '420111', '洪山區', 420100, 3, '中國,湖北省,武漢市,洪山區', 114, 30, 'Hongshan');
INSERT INTO "public"."Sys_Region" VALUES (1719, '420112', '東西湖區', 420100, 3, '中國,湖北省,武漢市,東西湖區', 114, 31, 'Dongxihu');
INSERT INTO "public"."Sys_Region" VALUES (1720, '420113', '漢南區', 420100, 3, '中國,湖北省,武漢市,漢南區', 114, 30, 'Hannan');
INSERT INTO "public"."Sys_Region" VALUES (1721, '420114', '蔡甸區', 420100, 3, '中國,湖北省,武漢市,蔡甸區', 114, 31, 'Caidian');
INSERT INTO "public"."Sys_Region" VALUES (1722, '420115', '江夏區', 420100, 3, '中國,湖北省,武漢市,江夏區', 114, 30, 'Jiangxia');
INSERT INTO "public"."Sys_Region" VALUES (1723, '420116', '黃陂區', 420100, 3, '中國,湖北省,武漢市,黃陂區', 114, 31, 'Huangpi');
INSERT INTO "public"."Sys_Region" VALUES (1724, '420117', '新洲區', 420100, 3, '中國,湖北省,武漢市,新洲區', 115, 31, 'Xinzhou');
INSERT INTO "public"."Sys_Region" VALUES (1725, '420200', '黃石市', 420000, 2, '中國,湖北省,黃石市', 115, 30, 'Huangshi');
INSERT INTO "public"."Sys_Region" VALUES (1726, '420202', '黃石港區', 420200, 3, '中國,湖北省,黃石市,黃石港區', 115, 30, 'Huangshigang');
INSERT INTO "public"."Sys_Region" VALUES (1727, '420203', '西塞山區', 420200, 3, '中國,湖北省,黃石市,西塞山區', 115, 30, 'Xisaishan');
INSERT INTO "public"."Sys_Region" VALUES (1728, '420204', '下陸區', 420200, 3, '中國,湖北省,黃石市,下陸區', 115, 30, 'Xialu');
INSERT INTO "public"."Sys_Region" VALUES (1729, '420205', '鐵山區', 420200, 3, '中國,湖北省,黃石市,鐵山區', 115, 30, 'Tieshan');
INSERT INTO "public"."Sys_Region" VALUES (1730, '420222', '陽新縣', 420200, 3, '中國,湖北省,黃石市,陽新縣', 115, 30, 'Yangxin');
INSERT INTO "public"."Sys_Region" VALUES (1731, '420281', '大冶市', 420200, 3, '中國,湖北省,黃石市,大冶市', 115, 30, 'Daye');
INSERT INTO "public"."Sys_Region" VALUES (1732, '420300', '十堰市', 420000, 2, '中國,湖北省,十堰市', 111, 33, 'Shiyan');
INSERT INTO "public"."Sys_Region" VALUES (1733, '420302', '茅箭區', 420300, 3, '中國,湖北省,十堰市,茅箭區', 111, 33, 'Maojian');
INSERT INTO "public"."Sys_Region" VALUES (1734, '420303', '張灣區', 420300, 3, '中國,湖北省,十堰市,張灣區', 111, 33, 'Zhangwan');
INSERT INTO "public"."Sys_Region" VALUES (1735, '420304', '鄖陽區', 420300, 3, '中國,湖北省,十堰市,鄖陽區', 111, 33, 'Yunyang');
INSERT INTO "public"."Sys_Region" VALUES (1736, '420322', '鄖西縣', 420300, 3, '中國,湖北省,十堰市,鄖西縣', 110, 33, 'Yunxi');
INSERT INTO "public"."Sys_Region" VALUES (1737, '420323', '竹山縣', 420300, 3, '中國,湖北省,十堰市,竹山縣', 110, 32, 'Zhushan');
INSERT INTO "public"."Sys_Region" VALUES (1738, '420324', '竹溪縣', 420300, 3, '中國,湖北省,十堰市,竹溪縣', 110, 32, 'Zhuxi');
INSERT INTO "public"."Sys_Region" VALUES (1739, '420325', '房縣', 420300, 3, '中國,湖北省,十堰市,房縣', 111, 32, 'Fangxian');
INSERT INTO "public"."Sys_Region" VALUES (1740, '420381', '丹江口市', 420300, 3, '中國,湖北省,十堰市,丹江口市', 112, 33, 'Danjiangkou');
INSERT INTO "public"."Sys_Region" VALUES (1741, '420500', '宜昌市', 420000, 2, '中國,湖北省,宜昌市', 111, 31, 'Yichang');
INSERT INTO "public"."Sys_Region" VALUES (1742, '420502', '西陵區', 420500, 3, '中國,湖北省,宜昌市,西陵區', 111, 31, 'Xiling');
INSERT INTO "public"."Sys_Region" VALUES (1743, '420503', '伍家崗區', 420500, 3, '中國,湖北省,宜昌市,伍家崗區', 111, 31, 'Wujiagang');
INSERT INTO "public"."Sys_Region" VALUES (1744, '420504', '點軍區', 420500, 3, '中國,湖北省,宜昌市,點軍區', 111, 31, 'Dianjun');
INSERT INTO "public"."Sys_Region" VALUES (1745, '420505', '猇亭區', 420500, 3, '中國,湖北省,宜昌市,猇亭區', 111, 31, 'Xiaoting');
INSERT INTO "public"."Sys_Region" VALUES (1746, '420506', '夷陵區', 420500, 3, '中國,湖北省,宜昌市,夷陵區', 111, 31, 'Yiling');
INSERT INTO "public"."Sys_Region" VALUES (1747, '420525', '遠安縣', 420500, 3, '中國,湖北省,宜昌市,遠安縣', 112, 31, 'Yuanan');
INSERT INTO "public"."Sys_Region" VALUES (1748, '420526', '興山縣', 420500, 3, '中國,湖北省,宜昌市,興山縣', 111, 31, 'Xingshan');
INSERT INTO "public"."Sys_Region" VALUES (1749, '420527', '秭歸縣', 420500, 3, '中國,湖北省,宜昌市,秭歸縣', 111, 31, 'Zigui');
INSERT INTO "public"."Sys_Region" VALUES (1750, '420528', '長陽土家族自治縣', 420500, 3, '中國,湖北省,宜昌市,長陽土家族自治縣', 111, 30, 'Changyang');
INSERT INTO "public"."Sys_Region" VALUES (1751, '420529', '五峰土家族自治縣', 420500, 3, '中國,湖北省,宜昌市,五峰土家族自治縣', 111, 30, 'Wufeng');
INSERT INTO "public"."Sys_Region" VALUES (1752, '420581', '宜都市', 420500, 3, '中國,湖北省,宜昌市,宜都市', 111, 30, 'Yidu');
INSERT INTO "public"."Sys_Region" VALUES (1753, '420582', '當陽市', 420500, 3, '中國,湖北省,宜昌市,當陽市', 112, 31, 'Dangyang');
INSERT INTO "public"."Sys_Region" VALUES (1754, '420583', '枝江市', 420500, 3, '中國,湖北省,宜昌市,枝江市', 112, 30, 'Zhijiang');
INSERT INTO "public"."Sys_Region" VALUES (1755, '420600', '襄陽市', 420000, 2, '中國,湖北省,襄陽市', 112, 32, 'Xiangyang');
INSERT INTO "public"."Sys_Region" VALUES (1756, '420602', '襄城區', 420600, 3, '中國,湖北省,襄陽市,襄城區', 112, 32, 'Xiangcheng');
INSERT INTO "public"."Sys_Region" VALUES (1757, '420606', '樊城區', 420600, 3, '中國,湖北省,襄陽市,樊城區', 112, 32, 'Fancheng');
INSERT INTO "public"."Sys_Region" VALUES (1758, '420607', '襄州區', 420600, 3, '中國,湖北省,襄陽市,襄州區', 112, 32, 'Xiangzhou');
INSERT INTO "public"."Sys_Region" VALUES (1759, '420624', '南漳縣', 420600, 3, '中國,湖北省,襄陽市,南漳縣', 112, 32, 'Nanzhang');
INSERT INTO "public"."Sys_Region" VALUES (1760, '420625', '谷城縣', 420600, 3, '中國,湖北省,襄陽市,谷城縣', 112, 32, 'Gucheng');
INSERT INTO "public"."Sys_Region" VALUES (1761, '420626', '保康縣', 420600, 3, '中國,湖北省,襄陽市,保康縣', 111, 32, 'Baokang');
INSERT INTO "public"."Sys_Region" VALUES (1762, '420682', '老河口市', 420600, 3, '中國,湖北省,襄陽市,老河口市', 112, 32, 'Laohekou');
INSERT INTO "public"."Sys_Region" VALUES (1763, '420683', '棗陽市', 420600, 3, '中國,湖北省,襄陽市,棗陽市', 113, 32, 'Zaoyang');
INSERT INTO "public"."Sys_Region" VALUES (1764, '420684', '宜城市', 420600, 3, '中國,湖北省,襄陽市,宜城市', 112, 32, 'Yicheng');
INSERT INTO "public"."Sys_Region" VALUES (1765, '420700', '鄂州市', 420000, 2, '中國,湖北省,鄂州市', 115, 30, 'Ezhou');
INSERT INTO "public"."Sys_Region" VALUES (1766, '420702', '梁子湖區', 420700, 3, '中國,湖北省,鄂州市,梁子湖區', 115, 30, 'Liangzihu');
INSERT INTO "public"."Sys_Region" VALUES (1767, '420703', '華容區', 420700, 3, '中國,湖北省,鄂州市,華容區', 115, 31, 'Huarong');
INSERT INTO "public"."Sys_Region" VALUES (1768, '420704', '鄂城區', 420700, 3, '中國,湖北省,鄂州市,鄂城區', 115, 30, 'Echeng');
INSERT INTO "public"."Sys_Region" VALUES (1769, '420800', '荊門市', 420000, 2, '中國,湖北省,荊門市', 112, 31, 'Jingmen');
INSERT INTO "public"."Sys_Region" VALUES (1770, '420802', '東寶區', 420800, 3, '中國,湖北省,荊門市,東寶區', 112, 31, 'Dongbao');
INSERT INTO "public"."Sys_Region" VALUES (1771, '420804', '掇刀區', 420800, 3, '中國,湖北省,荊門市,掇刀區', 112, 31, 'Duodao');
INSERT INTO "public"."Sys_Region" VALUES (1772, '420821', '京山縣', 420800, 3, '中國,湖北省,荊門市,京山縣', 113, 31, 'Jingshan');
INSERT INTO "public"."Sys_Region" VALUES (1773, '420822', '沙洋縣', 420800, 3, '中國,湖北省,荊門市,沙洋縣', 113, 31, 'Shayang');
INSERT INTO "public"."Sys_Region" VALUES (1774, '420881', '鐘祥市', 420800, 3, '中國,湖北省,荊門市,鐘祥市', 113, 31, 'Zhongxiang');
INSERT INTO "public"."Sys_Region" VALUES (1775, '420900', '孝感市', 420000, 2, '中國,湖北省,孝感市', 114, 31, 'Xiaogan');
INSERT INTO "public"."Sys_Region" VALUES (1776, '420902', '孝南區', 420900, 3, '中國,湖北省,孝感市,孝南區', 114, 31, 'Xiaonan');
INSERT INTO "public"."Sys_Region" VALUES (1777, '420921', '孝昌縣', 420900, 3, '中國,湖北省,孝感市,孝昌縣', 114, 31, 'Xiaochang');
INSERT INTO "public"."Sys_Region" VALUES (1778, '420922', '大悟縣', 420900, 3, '中國,湖北省,孝感市,大悟縣', 114, 32, 'Dawu');
INSERT INTO "public"."Sys_Region" VALUES (1779, '420923', '云夢縣', 420900, 3, '中國,湖北省,孝感市,云夢縣', 114, 31, 'Yunmeng');
INSERT INTO "public"."Sys_Region" VALUES (1780, '420981', '應城市', 420900, 3, '中國,湖北省,孝感市,應城市', 114, 31, 'Yingcheng');
INSERT INTO "public"."Sys_Region" VALUES (1781, '420982', '安陸市', 420900, 3, '中國,湖北省,孝感市,安陸市', 114, 31, 'Anlu');
INSERT INTO "public"."Sys_Region" VALUES (1782, '420984', '漢川市', 420900, 3, '中國,湖北省,孝感市,漢川市', 114, 31, 'Hanchuan');
INSERT INTO "public"."Sys_Region" VALUES (1783, '421000', '荊州市', 420000, 2, '中國,湖北省,荊州市', 112, 30, 'Jingzhou');
INSERT INTO "public"."Sys_Region" VALUES (1784, '421002', '沙市區', 421000, 3, '中國,湖北省,荊州市,沙市區', 112, 30, 'Shashi');
INSERT INTO "public"."Sys_Region" VALUES (1785, '421003', '荊州區', 421000, 3, '中國,湖北省,荊州市,荊州區', 112, 30, 'Jingzhou');
INSERT INTO "public"."Sys_Region" VALUES (1786, '421022', '公安縣', 421000, 3, '中國,湖北省,荊州市,公安縣', 112, 30, 'Gongan');
INSERT INTO "public"."Sys_Region" VALUES (1787, '421023', '監利縣', 421000, 3, '中國,湖北省,荊州市,監利縣', 113, 30, 'Jianli');
INSERT INTO "public"."Sys_Region" VALUES (1788, '421024', '江陵縣', 421000, 3, '中國,湖北省,荊州市,江陵縣', 112, 30, 'Jiangling');
INSERT INTO "public"."Sys_Region" VALUES (1789, '421081', '石首市', 421000, 3, '中國,湖北省,荊州市,石首市', 112, 30, 'Shishou');
INSERT INTO "public"."Sys_Region" VALUES (1790, '421083', '洪湖市', 421000, 3, '中國,湖北省,荊州市,洪湖市', 113, 30, 'Honghu');
INSERT INTO "public"."Sys_Region" VALUES (1791, '421087', '松滋市', 421000, 3, '中國,湖北省,荊州市,松滋市', 112, 30, 'Songzi');
INSERT INTO "public"."Sys_Region" VALUES (1792, '421100', '黃岡市', 420000, 2, '中國,湖北省,黃岡市', 115, 30, 'Huanggang');
INSERT INTO "public"."Sys_Region" VALUES (1793, '421102', '黃州區', 421100, 3, '中國,湖北省,黃岡市,黃州區', 115, 30, 'Huangzhou');
INSERT INTO "public"."Sys_Region" VALUES (1794, '421121', '團風縣', 421100, 3, '中國,湖北省,黃岡市,團風縣', 115, 31, 'Tuanfeng');
INSERT INTO "public"."Sys_Region" VALUES (1795, '421122', '紅安縣', 421100, 3, '中國,湖北省,黃岡市,紅安縣', 115, 31, 'Hongan');
INSERT INTO "public"."Sys_Region" VALUES (1796, '421123', '羅田縣', 421100, 3, '中國,湖北省,黃岡市,羅田縣', 115, 31, 'Luotian');
INSERT INTO "public"."Sys_Region" VALUES (1797, '421124', '英山縣', 421100, 3, '中國,湖北省,黃岡市,英山縣', 116, 31, 'Yingshan');
INSERT INTO "public"."Sys_Region" VALUES (1798, '421125', '浠水縣', 421100, 3, '中國,湖北省,黃岡市,浠水縣', 115, 30, 'Xishui');
INSERT INTO "public"."Sys_Region" VALUES (1799, '421126', '蘄春縣', 421100, 3, '中國,湖北省,黃岡市,蘄春縣', 115, 30, 'Qichun');
INSERT INTO "public"."Sys_Region" VALUES (1800, '421127', '黃梅縣', 421100, 3, '中國,湖北省,黃岡市,黃梅縣', 116, 30, 'Huangmei');
INSERT INTO "public"."Sys_Region" VALUES (1801, '421181', '麻城市', 421100, 3, '中國,湖北省,黃岡市,麻城市', 115, 31, 'Macheng');
INSERT INTO "public"."Sys_Region" VALUES (1802, '421182', '武穴市', 421100, 3, '中國,湖北省,黃岡市,武穴市', 116, 30, 'Wuxue');
INSERT INTO "public"."Sys_Region" VALUES (1803, '421200', '咸寧市', 420000, 2, '中國,湖北省,咸寧市', 114, 30, 'Xianning');
INSERT INTO "public"."Sys_Region" VALUES (1804, '421202', '咸安區', 421200, 3, '中國,湖北省,咸寧市,咸安區', 114, 30, 'Xianan');
INSERT INTO "public"."Sys_Region" VALUES (1805, '421221', '嘉魚縣', 421200, 3, '中國,湖北省,咸寧市,嘉魚縣', 114, 30, 'Jiayu');
INSERT INTO "public"."Sys_Region" VALUES (1806, '421222', '通城縣', 421200, 3, '中國,湖北省,咸寧市,通城縣', 114, 29, 'Tongcheng');
INSERT INTO "public"."Sys_Region" VALUES (1807, '421223', '崇陽縣', 421200, 3, '中國,湖北省,咸寧市,崇陽縣', 114, 30, 'Chongyang');
INSERT INTO "public"."Sys_Region" VALUES (1808, '421224', '通山縣', 421200, 3, '中國,湖北省,咸寧市,通山縣', 114, 30, 'Tongshan');
INSERT INTO "public"."Sys_Region" VALUES (1809, '421281', '赤壁市', 421200, 3, '中國,湖北省,咸寧市,赤壁市', 114, 30, 'Chibi');
INSERT INTO "public"."Sys_Region" VALUES (1810, '421300', '隨州市', 420000, 2, '中國,湖北省,隨州市', 113, 32, 'Suizhou');
INSERT INTO "public"."Sys_Region" VALUES (1811, '421303', '曾都區', 421300, 3, '中國,湖北省,隨州市,曾都區', 113, 32, 'Zengdu');
INSERT INTO "public"."Sys_Region" VALUES (1812, '421321', '隨縣', 421300, 3, '中國,湖北省,隨州市,隨縣', 114, 32, 'Suixian');
INSERT INTO "public"."Sys_Region" VALUES (1813, '421381', '廣水市', 421300, 3, '中國,湖北省,隨州市,廣水市', 114, 32, 'Guangshui');
INSERT INTO "public"."Sys_Region" VALUES (1814, '422800', '恩施土家族苗族自治州', 420000, 2, '中國,湖北省,恩施土家族苗族自治州', 109, 30, 'Enshi');
INSERT INTO "public"."Sys_Region" VALUES (1815, '422801', '恩施市', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,恩施市', 109, 30, 'Enshi');
INSERT INTO "public"."Sys_Region" VALUES (1816, '422802', '利川市', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,利川市', 109, 30, 'Lichuan');
INSERT INTO "public"."Sys_Region" VALUES (1817, '422822', '建始縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,建始縣', 110, 31, 'Jianshi');
INSERT INTO "public"."Sys_Region" VALUES (1818, '422823', '巴東縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,巴東縣', 110, 31, 'Badong');
INSERT INTO "public"."Sys_Region" VALUES (1819, '422825', '宣恩縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,宣恩縣', 109, 30, 'Xuanen');
INSERT INTO "public"."Sys_Region" VALUES (1820, '422826', '咸豐縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,咸豐縣', 109, 30, 'Xianfeng');
INSERT INTO "public"."Sys_Region" VALUES (1821, '422827', '來鳳縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,來鳳縣', 109, 29, 'Laifeng');
INSERT INTO "public"."Sys_Region" VALUES (1822, '422828', '鶴峰縣', 422800, 3, '中國,湖北省,恩施土家族苗族自治州,鶴峰縣', 110, 30, 'Hefeng');
INSERT INTO "public"."Sys_Region" VALUES (1823, '429000', '直轄縣級', 420000, 2, '中國,湖北省,直轄縣級', 114, 31, '');
INSERT INTO "public"."Sys_Region" VALUES (1824, '429004', '仙桃市', 429000, 3, '中國,湖北省,直轄縣級,仙桃市', 113, 30, 'Xiantao');
INSERT INTO "public"."Sys_Region" VALUES (1825, '429005', '潛江市', 429000, 3, '中國,湖北省,直轄縣級,潛江市', 113, 30, 'Qianjiang');
INSERT INTO "public"."Sys_Region" VALUES (1826, '429006', '天門市', 429000, 3, '中國,湖北省,直轄縣級,天門市', 113, 31, 'Tianmen');
INSERT INTO "public"."Sys_Region" VALUES (1827, '429021', '神農架林區', 429000, 3, '中國,湖北省,直轄縣級,神農架林區', 111, 32, 'Shennongjia');
INSERT INTO "public"."Sys_Region" VALUES (1828, '430000', '湖南省', 100000, 1, '中國,湖南省', 113, 28, 'Hunan');
INSERT INTO "public"."Sys_Region" VALUES (1829, '430100', '長沙市', 430000, 2, '中國,湖南省,長沙市', 113, 28, 'Changsha');
INSERT INTO "public"."Sys_Region" VALUES (1830, '430102', '芙蓉區', 430100, 3, '中國,湖南省,長沙市,芙蓉區', 113, 28, 'Furong');
INSERT INTO "public"."Sys_Region" VALUES (1831, '430103', '天心區', 430100, 3, '中國,湖南省,長沙市,天心區', 113, 28, 'Tianxin');
INSERT INTO "public"."Sys_Region" VALUES (1832, '430104', '岳麓區', 430100, 3, '中國,湖南省,長沙市,岳麓區', 113, 28, 'Yuelu');
INSERT INTO "public"."Sys_Region" VALUES (1833, '430105', '開福區', 430100, 3, '中國,湖南省,長沙市,開福區', 113, 28, 'Kaifu');
INSERT INTO "public"."Sys_Region" VALUES (1834, '430111', '雨花區', 430100, 3, '中國,湖南省,長沙市,雨花區', 113, 28, 'Yuhua');
INSERT INTO "public"."Sys_Region" VALUES (1835, '430112', '望城區', 430100, 3, '中國,湖南省,長沙市,望城區', 113, 28, 'Wangcheng');
INSERT INTO "public"."Sys_Region" VALUES (1836, '430121', '長沙縣', 430100, 3, '中國,湖南省,長沙市,長沙縣', 113, 28, 'Changsha');
INSERT INTO "public"."Sys_Region" VALUES (1837, '430124', '寧鄉縣', 430100, 3, '中國,湖南省,長沙市,寧鄉縣', 113, 28, 'Ningxiang');
INSERT INTO "public"."Sys_Region" VALUES (1838, '430181', '瀏陽市', 430100, 3, '中國,湖南省,長沙市,瀏陽市', 114, 28, 'Liuyang');
INSERT INTO "public"."Sys_Region" VALUES (1839, '430200', '株洲市', 430000, 2, '中國,湖南省,株洲市', 113, 28, 'Zhuzhou');
INSERT INTO "public"."Sys_Region" VALUES (1840, '430202', '荷塘區', 430200, 3, '中國,湖南省,株洲市,荷塘區', 113, 28, 'Hetang');
INSERT INTO "public"."Sys_Region" VALUES (1841, '430203', '蘆淞區', 430200, 3, '中國,湖南省,株洲市,蘆淞區', 113, 28, 'Lusong');
INSERT INTO "public"."Sys_Region" VALUES (1842, '430204', '石峰區', 430200, 3, '中國,湖南省,株洲市,石峰區', 113, 28, 'Shifeng');
INSERT INTO "public"."Sys_Region" VALUES (1843, '430211', '天元區', 430200, 3, '中國,湖南省,株洲市,天元區', 113, 28, 'Tianyuan');
INSERT INTO "public"."Sys_Region" VALUES (1844, '430221', '株洲縣', 430200, 3, '中國,湖南省,株洲市,株洲縣', 113, 28, 'Zhuzhou');
INSERT INTO "public"."Sys_Region" VALUES (1845, '430223', '攸縣', 430200, 3, '中國,湖南省,株洲市,攸縣', 113, 27, 'Youxian');
INSERT INTO "public"."Sys_Region" VALUES (1846, '430224', '茶陵縣', 430200, 3, '中國,湖南省,株洲市,茶陵縣', 114, 27, 'Chaling');
INSERT INTO "public"."Sys_Region" VALUES (1847, '430225', '炎陵縣', 430200, 3, '中國,湖南省,株洲市,炎陵縣', 114, 26, 'Yanling');
INSERT INTO "public"."Sys_Region" VALUES (1848, '430281', '醴陵市', 430200, 3, '中國,湖南省,株洲市,醴陵市', 113, 28, 'Liling');
INSERT INTO "public"."Sys_Region" VALUES (1849, '430300', '湘潭市', 430000, 2, '中國,湖南省,湘潭市', 113, 28, 'Xiangtan');
INSERT INTO "public"."Sys_Region" VALUES (1850, '430302', '雨湖區', 430300, 3, '中國,湖南省,湘潭市,雨湖區', 113, 28, 'Yuhu');
INSERT INTO "public"."Sys_Region" VALUES (1851, '430304', '岳塘區', 430300, 3, '中國,湖南省,湘潭市,岳塘區', 113, 28, 'Yuetang');
INSERT INTO "public"."Sys_Region" VALUES (1852, '430321', '湘潭縣', 430300, 3, '中國,湖南省,湘潭市,湘潭縣', 113, 28, 'Xiangtan');
INSERT INTO "public"."Sys_Region" VALUES (1853, '430381', '湘鄉市', 430300, 3, '中國,湖南省,湘潭市,湘鄉市', 113, 28, 'Xiangxiang');
INSERT INTO "public"."Sys_Region" VALUES (1854, '430382', '韶山市', 430300, 3, '中國,湖南省,湘潭市,韶山市', 113, 28, 'Shaoshan');
INSERT INTO "public"."Sys_Region" VALUES (1855, '430400', '衡陽市', 430000, 2, '中國,湖南省,衡陽市', 113, 27, 'Hengyang');
INSERT INTO "public"."Sys_Region" VALUES (1856, '430405', '珠暉區', 430400, 3, '中國,湖南省,衡陽市,珠暉區', 113, 27, 'Zhuhui');
INSERT INTO "public"."Sys_Region" VALUES (1857, '430406', '雁峰區', 430400, 3, '中國,湖南省,衡陽市,雁峰區', 113, 27, 'Yanfeng');
INSERT INTO "public"."Sys_Region" VALUES (1858, '430407', '石鼓區', 430400, 3, '中國,湖南省,衡陽市,石鼓區', 113, 27, 'Shigu');
INSERT INTO "public"."Sys_Region" VALUES (1859, '430408', '蒸湘區', 430400, 3, '中國,湖南省,衡陽市,蒸湘區', 113, 27, 'Zhengxiang');
INSERT INTO "public"."Sys_Region" VALUES (1860, '430412', '南岳區', 430400, 3, '中國,湖南省,衡陽市,南岳區', 113, 27, 'Nanyue');
INSERT INTO "public"."Sys_Region" VALUES (1861, '430421', '衡陽縣', 430400, 3, '中國,湖南省,衡陽市,衡陽縣', 112, 27, 'Hengyang');
INSERT INTO "public"."Sys_Region" VALUES (1862, '430422', '衡南縣', 430400, 3, '中國,湖南省,衡陽市,衡南縣', 113, 27, 'Hengnan');
INSERT INTO "public"."Sys_Region" VALUES (1863, '430423', '衡山縣', 430400, 3, '中國,湖南省,衡陽市,衡山縣', 113, 27, 'Hengshan');
INSERT INTO "public"."Sys_Region" VALUES (1864, '430424', '衡東縣', 430400, 3, '中國,湖南省,衡陽市,衡東縣', 113, 27, 'Hengdong');
INSERT INTO "public"."Sys_Region" VALUES (1865, '430426', '祁東縣', 430400, 3, '中國,湖南省,衡陽市,祁東縣', 112, 27, 'Qidong');
INSERT INTO "public"."Sys_Region" VALUES (1866, '430481', '耒陽市', 430400, 3, '中國,湖南省,衡陽市,耒陽市', 113, 26, 'Leiyang');
INSERT INTO "public"."Sys_Region" VALUES (1867, '430482', '常寧市', 430400, 3, '中國,湖南省,衡陽市,常寧市', 112, 26, 'Changning');
INSERT INTO "public"."Sys_Region" VALUES (1868, '430500', '邵陽市', 430000, 2, '中國,湖南省,邵陽市', 111, 27, 'Shaoyang');
INSERT INTO "public"."Sys_Region" VALUES (1869, '430502', '雙清區', 430500, 3, '中國,湖南省,邵陽市,雙清區', 111, 27, 'Shuangqing');
INSERT INTO "public"."Sys_Region" VALUES (1870, '430503', '大祥區', 430500, 3, '中國,湖南省,邵陽市,大祥區', 111, 27, 'Daxiang');
INSERT INTO "public"."Sys_Region" VALUES (1871, '430511', '北塔區', 430500, 3, '中國,湖南省,邵陽市,北塔區', 111, 27, 'Beita');
INSERT INTO "public"."Sys_Region" VALUES (1872, '430521', '邵東縣', 430500, 3, '中國,湖南省,邵陽市,邵東縣', 112, 27, 'Shaodong');
INSERT INTO "public"."Sys_Region" VALUES (1873, '430522', '新邵縣', 430500, 3, '中國,湖南省,邵陽市,新邵縣', 111, 27, 'Xinshao');
INSERT INTO "public"."Sys_Region" VALUES (1874, '430523', '邵陽縣', 430500, 3, '中國,湖南省,邵陽市,邵陽縣', 111, 27, 'Shaoyang');
INSERT INTO "public"."Sys_Region" VALUES (1875, '430524', '隆回縣', 430500, 3, '中國,湖南省,邵陽市,隆回縣', 111, 27, 'Longhui');
INSERT INTO "public"."Sys_Region" VALUES (1876, '430525', '洞口縣', 430500, 3, '中國,湖南省,邵陽市,洞口縣', 111, 27, 'Dongkou');
INSERT INTO "public"."Sys_Region" VALUES (1877, '430527', '綏寧縣', 430500, 3, '中國,湖南省,邵陽市,綏寧縣', 110, 27, 'Suining');
INSERT INTO "public"."Sys_Region" VALUES (1878, '430528', '新寧縣', 430500, 3, '中國,湖南省,邵陽市,新寧縣', 111, 26, 'Xinning');
INSERT INTO "public"."Sys_Region" VALUES (1879, '430529', '城步苗族自治縣', 430500, 3, '中國,湖南省,邵陽市,城步苗族自治縣', 110, 26, 'Chengbu');
INSERT INTO "public"."Sys_Region" VALUES (1880, '430581', '武岡市', 430500, 3, '中國,湖南省,邵陽市,武岡市', 111, 27, 'Wugang');
INSERT INTO "public"."Sys_Region" VALUES (1881, '430600', '岳陽市', 430000, 2, '中國,湖南省,岳陽市', 113, 29, 'Yueyang');
INSERT INTO "public"."Sys_Region" VALUES (1882, '430602', '岳陽樓區', 430600, 3, '中國,湖南省,岳陽市,岳陽樓區', 113, 29, 'Yueyanglou');
INSERT INTO "public"."Sys_Region" VALUES (1883, '430603', '云溪區', 430600, 3, '中國,湖南省,岳陽市,云溪區', 113, 29, 'Yunxi');
INSERT INTO "public"."Sys_Region" VALUES (1884, '430611', '君山區', 430600, 3, '中國,湖南省,岳陽市,君山區', 113, 29, 'Junshan');
INSERT INTO "public"."Sys_Region" VALUES (1885, '430621', '岳陽縣', 430600, 3, '中國,湖南省,岳陽市,岳陽縣', 113, 29, 'Yueyang');
INSERT INTO "public"."Sys_Region" VALUES (1886, '430623', '華容縣', 430600, 3, '中國,湖南省,岳陽市,華容縣', 113, 30, 'Huarong');
INSERT INTO "public"."Sys_Region" VALUES (1887, '430624', '湘陰縣', 430600, 3, '中國,湖南省,岳陽市,湘陰縣', 113, 29, 'Xiangyin');
INSERT INTO "public"."Sys_Region" VALUES (1888, '430626', '平江縣', 430600, 3, '中國,湖南省,岳陽市,平江縣', 114, 29, 'Pingjiang');
INSERT INTO "public"."Sys_Region" VALUES (1889, '430681', '汨羅市', 430600, 3, '中國,湖南省,岳陽市,汨羅市', 113, 29, 'Miluo');
INSERT INTO "public"."Sys_Region" VALUES (1890, '430682', '臨湘市', 430600, 3, '中國,湖南省,岳陽市,臨湘市', 113, 29, 'Linxiang');
INSERT INTO "public"."Sys_Region" VALUES (1891, '430700', '常德市', 430000, 2, '中國,湖南省,常德市', 112, 29, 'Changde');
INSERT INTO "public"."Sys_Region" VALUES (1892, '430702', '武陵區', 430700, 3, '中國,湖南省,常德市,武陵區', 112, 29, 'Wuling');
INSERT INTO "public"."Sys_Region" VALUES (1893, '430703', '鼎城區', 430700, 3, '中國,湖南省,常德市,鼎城區', 112, 29, 'Dingcheng');
INSERT INTO "public"."Sys_Region" VALUES (1894, '430721', '安鄉縣', 430700, 3, '中國,湖南省,常德市,安鄉縣', 112, 29, 'Anxiang');
INSERT INTO "public"."Sys_Region" VALUES (1895, '430722', '漢壽縣', 430700, 3, '中國,湖南省,常德市,漢壽縣', 112, 29, 'Hanshou');
INSERT INTO "public"."Sys_Region" VALUES (1896, '430723', '澧縣', 430700, 3, '中國,湖南省,常德市,澧縣', 112, 30, 'Lixian');
INSERT INTO "public"."Sys_Region" VALUES (1897, '430724', '臨澧縣', 430700, 3, '中國,湖南省,常德市,臨澧縣', 112, 29, 'Linli');
INSERT INTO "public"."Sys_Region" VALUES (1898, '430725', '桃源縣', 430700, 3, '中國,湖南省,常德市,桃源縣', 111, 29, 'Taoyuan');
INSERT INTO "public"."Sys_Region" VALUES (1899, '430726', '石門縣', 430700, 3, '中國,湖南省,常德市,石門縣', 111, 30, 'Shimen');
INSERT INTO "public"."Sys_Region" VALUES (1900, '430781', '津市市', 430700, 3, '中國,湖南省,常德市,津市市', 112, 30, 'Jinshi');
INSERT INTO "public"."Sys_Region" VALUES (1901, '430800', '張家界市', 430000, 2, '中國,湖南省,張家界市', 110, 29, 'Zhangjiajie');
INSERT INTO "public"."Sys_Region" VALUES (1902, '430802', '永定區', 430800, 3, '中國,湖南省,張家界市,永定區', 110, 29, 'Yongding');
INSERT INTO "public"."Sys_Region" VALUES (1903, '430811', '武陵源區', 430800, 3, '中國,湖南省,張家界市,武陵源區', 111, 29, 'Wulingyuan');
INSERT INTO "public"."Sys_Region" VALUES (1904, '430821', '慈利縣', 430800, 3, '中國,湖南省,張家界市,慈利縣', 111, 29, 'Cili');
INSERT INTO "public"."Sys_Region" VALUES (1905, '430822', '桑植縣', 430800, 3, '中國,湖南省,張家界市,桑植縣', 110, 29, 'Sangzhi');
INSERT INTO "public"."Sys_Region" VALUES (1906, '430900', '益陽市', 430000, 2, '中國,湖南省,益陽市', 112, 29, 'Yiyang');
INSERT INTO "public"."Sys_Region" VALUES (1907, '430902', '資陽區', 430900, 3, '中國,湖南省,益陽市,資陽區', 112, 29, 'Ziyang');
INSERT INTO "public"."Sys_Region" VALUES (1908, '430903', '赫山區', 430900, 3, '中國,湖南省,益陽市,赫山區', 112, 29, 'Heshan');
INSERT INTO "public"."Sys_Region" VALUES (1909, '430921', '南縣', 430900, 3, '中國,湖南省,益陽市,南縣', 112, 29, 'Nanxian');
INSERT INTO "public"."Sys_Region" VALUES (1910, '430922', '桃江縣', 430900, 3, '中國,湖南省,益陽市,桃江縣', 112, 29, 'Taojiang');
INSERT INTO "public"."Sys_Region" VALUES (1911, '430923', '安化縣', 430900, 3, '中國,湖南省,益陽市,安化縣', 111, 28, 'Anhua');
INSERT INTO "public"."Sys_Region" VALUES (1912, '430981', '沅江市', 430900, 3, '中國,湖南省,益陽市,沅江市', 112, 29, 'Yuanjiang');
INSERT INTO "public"."Sys_Region" VALUES (1913, '431000', '郴州市', 430000, 2, '中國,湖南省,郴州市', 113, 26, 'Chenzhou');
INSERT INTO "public"."Sys_Region" VALUES (1914, '431002', '北湖區', 431000, 3, '中國,湖南省,郴州市,北湖區', 113, 26, 'Beihu');
INSERT INTO "public"."Sys_Region" VALUES (1915, '431003', '蘇仙區', 431000, 3, '中國,湖南省,郴州市,蘇仙區', 113, 26, 'Suxian');
INSERT INTO "public"."Sys_Region" VALUES (1916, '431021', '桂陽縣', 431000, 3, '中國,湖南省,郴州市,桂陽縣', 113, 26, 'Guiyang');
INSERT INTO "public"."Sys_Region" VALUES (1917, '431022', '宜章縣', 431000, 3, '中國,湖南省,郴州市,宜章縣', 113, 25, 'Yizhang');
INSERT INTO "public"."Sys_Region" VALUES (1918, '431023', '永興縣', 431000, 3, '中國,湖南省,郴州市,永興縣', 113, 26, 'Yongxing');
INSERT INTO "public"."Sys_Region" VALUES (1919, '431024', '嘉禾縣', 431000, 3, '中國,湖南省,郴州市,嘉禾縣', 112, 26, 'Jiahe');
INSERT INTO "public"."Sys_Region" VALUES (1920, '431025', '臨武縣', 431000, 3, '中國,湖南省,郴州市,臨武縣', 113, 25, 'Linwu');
INSERT INTO "public"."Sys_Region" VALUES (1921, '431026', '汝城縣', 431000, 3, '中國,湖南省,郴州市,汝城縣', 114, 26, 'Rucheng');
INSERT INTO "public"."Sys_Region" VALUES (1922, '431027', '桂東縣', 431000, 3, '中國,湖南省,郴州市,桂東縣', 114, 26, 'Guidong');
INSERT INTO "public"."Sys_Region" VALUES (1923, '431028', '安仁縣', 431000, 3, '中國,湖南省,郴州市,安仁縣', 113, 27, 'Anren');
INSERT INTO "public"."Sys_Region" VALUES (1924, '431081', '資興市', 431000, 3, '中國,湖南省,郴州市,資興市', 113, 26, 'Zixing');
INSERT INTO "public"."Sys_Region" VALUES (1925, '431100', '永州市', 430000, 2, '中國,湖南省,永州市', 112, 26, 'Yongzhou');
INSERT INTO "public"."Sys_Region" VALUES (1926, '431102', '零陵區', 431100, 3, '中國,湖南省,永州市,零陵區', 112, 26, 'Lingling');
INSERT INTO "public"."Sys_Region" VALUES (1927, '431103', '冷水灘區', 431100, 3, '中國,湖南省,永州市,冷水灘區', 112, 26, 'Lengshuitan');
INSERT INTO "public"."Sys_Region" VALUES (1928, '431121', '祁陽縣', 431100, 3, '中國,湖南省,永州市,祁陽縣', 112, 27, 'Qiyang');
INSERT INTO "public"."Sys_Region" VALUES (1929, '431122', '東安縣', 431100, 3, '中國,湖南省,永州市,東安縣', 111, 26, 'Dongan');
INSERT INTO "public"."Sys_Region" VALUES (1930, '431123', '雙牌縣', 431100, 3, '中國,湖南省,永州市,雙牌縣', 112, 26, 'Shuangpai');
INSERT INTO "public"."Sys_Region" VALUES (1931, '431124', '道縣', 431100, 3, '中國,湖南省,永州市,道縣', 112, 26, 'Daoxian');
INSERT INTO "public"."Sys_Region" VALUES (1932, '431125', '江永縣', 431100, 3, '中國,湖南省,永州市,江永縣', 111, 25, 'Jiangyong');
INSERT INTO "public"."Sys_Region" VALUES (1933, '431126', '寧遠縣', 431100, 3, '中國,湖南省,永州市,寧遠縣', 112, 26, 'Ningyuan');
INSERT INTO "public"."Sys_Region" VALUES (1934, '431127', '藍山縣', 431100, 3, '中國,湖南省,永州市,藍山縣', 112, 25, 'Lanshan');
INSERT INTO "public"."Sys_Region" VALUES (1935, '431128', '新田縣', 431100, 3, '中國,湖南省,永州市,新田縣', 112, 26, 'Xintian');
INSERT INTO "public"."Sys_Region" VALUES (1936, '431129', '江華瑤族自治縣', 431100, 3, '中國,湖南省,永州市,江華瑤族自治縣', 112, 25, 'Jianghua');
INSERT INTO "public"."Sys_Region" VALUES (1937, '431200', '懷化市', 430000, 2, '中國,湖南省,懷化市', 110, 28, 'Huaihua');
INSERT INTO "public"."Sys_Region" VALUES (1938, '431202', '鶴城區', 431200, 3, '中國,湖南省,懷化市,鶴城區', 110, 28, 'Hecheng');
INSERT INTO "public"."Sys_Region" VALUES (1939, '431221', '中方縣', 431200, 3, '中國,湖南省,懷化市,中方縣', 110, 27, 'Zhongfang');
INSERT INTO "public"."Sys_Region" VALUES (1940, '431222', '沅陵縣', 431200, 3, '中國,湖南省,懷化市,沅陵縣', 110, 28, 'Yuanling');
INSERT INTO "public"."Sys_Region" VALUES (1941, '431223', '辰溪縣', 431200, 3, '中國,湖南省,懷化市,辰溪縣', 110, 28, 'Chenxi');
INSERT INTO "public"."Sys_Region" VALUES (1942, '431224', '溆浦縣', 431200, 3, '中國,湖南省,懷化市,溆浦縣', 111, 28, 'Xupu');
INSERT INTO "public"."Sys_Region" VALUES (1943, '431225', '會同縣', 431200, 3, '中國,湖南省,懷化市,會同縣', 110, 27, 'Huitong');
INSERT INTO "public"."Sys_Region" VALUES (1944, '431226', '麻陽苗族自治縣', 431200, 3, '中國,湖南省,懷化市,麻陽苗族自治縣', 110, 28, 'Mayang');
INSERT INTO "public"."Sys_Region" VALUES (1945, '431227', '新晃侗族自治縣', 431200, 3, '中國,湖南省,懷化市,新晃侗族自治縣', 109, 27, 'Xinhuang');
INSERT INTO "public"."Sys_Region" VALUES (1946, '431228', '芷江侗族自治縣', 431200, 3, '中國,湖南省,懷化市,芷江侗族自治縣', 110, 27, 'Zhijiang');
INSERT INTO "public"."Sys_Region" VALUES (1947, '431229', '靖州苗族侗族自治縣', 431200, 3, '中國,湖南省,懷化市,靖州苗族侗族自治縣', 110, 27, 'Jingzhou');
INSERT INTO "public"."Sys_Region" VALUES (1948, '431230', '通道侗族自治縣', 431200, 3, '中國,湖南省,懷化市,通道侗族自治縣', 110, 26, 'Tongdao');
INSERT INTO "public"."Sys_Region" VALUES (1949, '431281', '洪江市', 431200, 3, '中國,湖南省,懷化市,洪江市', 110, 27, 'Hongjiang');
INSERT INTO "public"."Sys_Region" VALUES (1950, '431300', '婁底市', 430000, 2, '中國,湖南省,婁底市', 112, 28, 'Loudi');
INSERT INTO "public"."Sys_Region" VALUES (1951, '431302', '婁星區', 431300, 3, '中國,湖南省,婁底市,婁星區', 112, 28, 'Louxing');
INSERT INTO "public"."Sys_Region" VALUES (1952, '431321', '雙峰縣', 431300, 3, '中國,湖南省,婁底市,雙峰縣', 112, 27, 'Shuangfeng');
INSERT INTO "public"."Sys_Region" VALUES (1953, '431322', '新化縣', 431300, 3, '中國,湖南省,婁底市,新化縣', 111, 28, 'Xinhua');
INSERT INTO "public"."Sys_Region" VALUES (1954, '431381', '冷水江市', 431300, 3, '中國,湖南省,婁底市,冷水江市', 111, 28, 'Lengshuijiang');
INSERT INTO "public"."Sys_Region" VALUES (1955, '431382', '漣源市', 431300, 3, '中國,湖南省,婁底市,漣源市', 112, 28, 'Lianyuan');
INSERT INTO "public"."Sys_Region" VALUES (1956, '433100', '湘西土家族苗族自治州', 430000, 2, '中國,湖南省,湘西土家族苗族自治州', 110, 28, 'Xiangxi');
INSERT INTO "public"."Sys_Region" VALUES (1957, '433101', '吉首市', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,吉首市', 110, 28, 'Jishou');
INSERT INTO "public"."Sys_Region" VALUES (1958, '433122', '瀘溪縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,瀘溪縣', 110, 28, 'Luxi');
INSERT INTO "public"."Sys_Region" VALUES (1959, '433123', '鳳凰縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,鳳凰縣', 110, 28, 'Fenghuang');
INSERT INTO "public"."Sys_Region" VALUES (1960, '433124', '花垣縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,花垣縣', 109, 29, 'Huayuan');
INSERT INTO "public"."Sys_Region" VALUES (1961, '433125', '保靖縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,保靖縣', 110, 29, 'Baojing');
INSERT INTO "public"."Sys_Region" VALUES (1962, '433126', '古丈縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,古丈縣', 110, 29, 'Guzhang');
INSERT INTO "public"."Sys_Region" VALUES (1963, '433127', '永順縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,永順縣', 110, 29, 'Yongshun');
INSERT INTO "public"."Sys_Region" VALUES (1964, '433130', '龍山縣', 433100, 3, '中國,湖南省,湘西土家族苗族自治州,龍山縣', 109, 29, 'Longshan');
INSERT INTO "public"."Sys_Region" VALUES (1965, '440000', '廣東省', 100000, 1, '中國,廣東省', 113, 23, 'Guangdong');
INSERT INTO "public"."Sys_Region" VALUES (1966, '440100', '廣州市', 440000, 2, '中國,廣東省,廣州市', 113, 23, 'Guangzhou');
INSERT INTO "public"."Sys_Region" VALUES (1967, '440103', '荔灣區', 440100, 3, '中國,廣東省,廣州市,荔灣區', 113, 23, 'Liwan');
INSERT INTO "public"."Sys_Region" VALUES (1968, '440104', '越秀區', 440100, 3, '中國,廣東省,廣州市,越秀區', 113, 23, 'Yuexiu');
INSERT INTO "public"."Sys_Region" VALUES (1969, '440105', '海珠區', 440100, 3, '中國,廣東省,廣州市,海珠區', 113, 23, 'Haizhu');
INSERT INTO "public"."Sys_Region" VALUES (1970, '440106', '天河區', 440100, 3, '中國,廣東省,廣州市,天河區', 113, 23, 'Tianhe');
INSERT INTO "public"."Sys_Region" VALUES (1971, '440111', '白云區', 440100, 3, '中國,廣東省,廣州市,白云區', 113, 23, 'Baiyun');
INSERT INTO "public"."Sys_Region" VALUES (1972, '440112', '黃埔區', 440100, 3, '中國,廣東省,廣州市,黃埔區', 113, 23, 'Huangpu');
INSERT INTO "public"."Sys_Region" VALUES (1973, '440113', '番禺區', 440100, 3, '中國,廣東省,廣州市,番禺區', 113, 23, 'Panyu');
INSERT INTO "public"."Sys_Region" VALUES (1974, '440114', '花都區', 440100, 3, '中國,廣東省,廣州市,花都區', 113, 23, 'Huadu');
INSERT INTO "public"."Sys_Region" VALUES (1975, '440115', '南沙區', 440100, 3, '中國,廣東省,廣州市,南沙區', 114, 23, 'Nansha');
INSERT INTO "public"."Sys_Region" VALUES (1976, '440117', '從化區', 440100, 3, '中國,廣東省,廣州市,從化區', 114, 24, 'Conghua');
INSERT INTO "public"."Sys_Region" VALUES (1977, '440118', '增城區', 440100, 3, '中國,廣東省,廣州市,增城區', 114, 23, 'Zengcheng');
INSERT INTO "public"."Sys_Region" VALUES (1978, '440200', '韶關市', 440000, 2, '中國,廣東省,韶關市', 114, 25, 'Shaoguan');
INSERT INTO "public"."Sys_Region" VALUES (1979, '440203', '武江區', 440200, 3, '中國,廣東省,韶關市,武江區', 114, 25, 'Wujiang');
INSERT INTO "public"."Sys_Region" VALUES (1980, '440204', '湞江區', 440200, 3, '中國,廣東省,韶關市,湞江區', 114, 25, 'Zhenjiang');
INSERT INTO "public"."Sys_Region" VALUES (1981, '440205', '曲江區', 440200, 3, '中國,廣東省,韶關市,曲江區', 114, 25, 'Qujiang');
INSERT INTO "public"."Sys_Region" VALUES (1982, '440222', '始興縣', 440200, 3, '中國,廣東省,韶關市,始興縣', 114, 25, 'Shixing');
INSERT INTO "public"."Sys_Region" VALUES (1983, '440224', '仁化縣', 440200, 3, '中國,廣東省,韶關市,仁化縣', 114, 25, 'Renhua');
INSERT INTO "public"."Sys_Region" VALUES (1984, '440229', '翁源縣', 440200, 3, '中國,廣東省,韶關市,翁源縣', 114, 24, 'Wengyuan');
INSERT INTO "public"."Sys_Region" VALUES (1985, '440232', '乳源瑤族自治縣', 440200, 3, '中國,廣東省,韶關市,乳源瑤族自治縣', 113, 25, 'Ruyuan');
INSERT INTO "public"."Sys_Region" VALUES (1986, '440233', '新豐縣', 440200, 3, '中國,廣東省,韶關市,新豐縣', 114, 24, 'Xinfeng');
INSERT INTO "public"."Sys_Region" VALUES (1987, '440281', '樂昌市', 440200, 3, '中國,廣東省,韶關市,樂昌市', 113, 25, 'Lechang');
INSERT INTO "public"."Sys_Region" VALUES (1988, '440282', '南雄市', 440200, 3, '中國,廣東省,韶關市,南雄市', 114, 25, 'Nanxiong');
INSERT INTO "public"."Sys_Region" VALUES (1989, '440300', '深圳市', 440000, 2, '中國,廣東省,深圳市', 114, 23, 'Shenzhen');
INSERT INTO "public"."Sys_Region" VALUES (1990, '440303', '羅湖區', 440300, 3, '中國,廣東省,深圳市,羅湖區', 114, 23, 'Luohu');
INSERT INTO "public"."Sys_Region" VALUES (1991, '440304', '福田區', 440300, 3, '中國,廣東省,深圳市,福田區', 114, 23, 'Futian');
INSERT INTO "public"."Sys_Region" VALUES (1992, '440305', '南山區', 440300, 3, '中國,廣東省,深圳市,南山區', 114, 23, 'Nanshan');
INSERT INTO "public"."Sys_Region" VALUES (1993, '440306', '寶安區', 440300, 3, '中國,廣東省,深圳市,寶安區', 114, 23, 'Baoan');
INSERT INTO "public"."Sys_Region" VALUES (1994, '440307', '龍崗區', 440300, 3, '中國,廣東省,深圳市,龍崗區', 114, 23, 'Longgang');
INSERT INTO "public"."Sys_Region" VALUES (1995, '440308', '鹽田區', 440300, 3, '中國,廣東省,深圳市,鹽田區', 114, 23, 'Yantian');
INSERT INTO "public"."Sys_Region" VALUES (1996, '440309', '光明新區', 440300, 3, '中國,廣東省,深圳市,光明新區', 114, 23, 'Guangmingxinqu');
INSERT INTO "public"."Sys_Region" VALUES (1997, '440310', '坪山新區', 440300, 3, '中國,廣東省,深圳市,坪山新區', 114, 23, 'Pingshanxinqu');
INSERT INTO "public"."Sys_Region" VALUES (1998, '440311', '大鵬新區', 440300, 3, '中國,廣東省,深圳市,大鵬新區', 114, 23, 'Dapengxinqu');
INSERT INTO "public"."Sys_Region" VALUES (1999, '440312', '龍華新區', 440300, 3, '中國,廣東省,深圳市,龍華新區', 114, 23, 'Longhuaxinqu');
INSERT INTO "public"."Sys_Region" VALUES (2000, '440400', '珠海市', 440000, 2, '中國,廣東省,珠海市', 114, 22, 'Zhuhai');
INSERT INTO "public"."Sys_Region" VALUES (2001, '440402', '香洲區', 440400, 3, '中國,廣東省,珠海市,香洲區', 114, 22, 'Xiangzhou');
INSERT INTO "public"."Sys_Region" VALUES (2002, '440403', '斗門區', 440400, 3, '中國,廣東省,珠海市,斗門區', 113, 22, 'Doumen');
INSERT INTO "public"."Sys_Region" VALUES (2003, '440404', '金灣區', 440400, 3, '中國,廣東省,珠海市,金灣區', 113, 22, 'Jinwan');
INSERT INTO "public"."Sys_Region" VALUES (2004, '440500', '汕頭市', 440000, 2, '中國,廣東省,汕頭市', 117, 23, 'Shantou');
INSERT INTO "public"."Sys_Region" VALUES (2005, '440507', '龍湖區', 440500, 3, '中國,廣東省,汕頭市,龍湖區', 117, 23, 'Longhu');
INSERT INTO "public"."Sys_Region" VALUES (2006, '440511', '金平區', 440500, 3, '中國,廣東省,汕頭市,金平區', 117, 23, 'Jinping');
INSERT INTO "public"."Sys_Region" VALUES (2007, '440512', '濠江區', 440500, 3, '中國,廣東省,汕頭市,濠江區', 117, 23, 'Haojiang');
INSERT INTO "public"."Sys_Region" VALUES (2008, '440513', '潮陽區', 440500, 3, '中國,廣東省,汕頭市,潮陽區', 117, 23, 'Chaoyang');
INSERT INTO "public"."Sys_Region" VALUES (2009, '440514', '潮南區', 440500, 3, '中國,廣東省,汕頭市,潮南區', 116, 23, 'Chaonan');
INSERT INTO "public"."Sys_Region" VALUES (2010, '440515', '澄海區', 440500, 3, '中國,廣東省,汕頭市,澄海區', 117, 23, 'Chenghai');
INSERT INTO "public"."Sys_Region" VALUES (2011, '440523', '南澳縣', 440500, 3, '中國,廣東省,汕頭市,南澳縣', 117, 23, 'Nanao');
INSERT INTO "public"."Sys_Region" VALUES (2012, '440600', '佛山市', 440000, 2, '中國,廣東省,佛山市', 113, 23, 'Foshan');
INSERT INTO "public"."Sys_Region" VALUES (2013, '440604', '禪城區', 440600, 3, '中國,廣東省,佛山市,禪城區', 113, 23, 'Chancheng');
INSERT INTO "public"."Sys_Region" VALUES (2014, '440605', '南海區', 440600, 3, '中國,廣東省,佛山市,南海區', 113, 23, 'Nanhai');
INSERT INTO "public"."Sys_Region" VALUES (2015, '440606', '順德區', 440600, 3, '中國,廣東省,佛山市,順德區', 113, 23, 'Shunde');
INSERT INTO "public"."Sys_Region" VALUES (2016, '440607', '三水區', 440600, 3, '中國,廣東省,佛山市,三水區', 113, 23, 'Sanshui');
INSERT INTO "public"."Sys_Region" VALUES (2017, '440608', '高明區', 440600, 3, '中國,廣東省,佛山市,高明區', 113, 23, 'Gaoming');
INSERT INTO "public"."Sys_Region" VALUES (2018, '440700', '江門市', 440000, 2, '中國,廣東省,江門市', 113, 23, 'Jiangmen');
INSERT INTO "public"."Sys_Region" VALUES (2019, '440703', '蓬江區', 440700, 3, '中國,廣東省,江門市,蓬江區', 113, 23, 'Pengjiang');
INSERT INTO "public"."Sys_Region" VALUES (2020, '440704', '江海區', 440700, 3, '中國,廣東省,江門市,江海區', 113, 23, 'Jianghai');
INSERT INTO "public"."Sys_Region" VALUES (2021, '440705', '新會區', 440700, 3, '中國,廣東省,江門市,新會區', 113, 22, 'Xinhui');
INSERT INTO "public"."Sys_Region" VALUES (2022, '440781', '臺山市', 440700, 3, '中國,廣東省,江門市,臺山市', 113, 22, 'Taishan');
INSERT INTO "public"."Sys_Region" VALUES (2023, '440783', '開平市', 440700, 3, '中國,廣東省,江門市,開平市', 113, 22, 'Kaiping');
INSERT INTO "public"."Sys_Region" VALUES (2024, '440784', '鶴山市', 440700, 3, '中國,廣東省,江門市,鶴山市', 113, 23, 'Heshan');
INSERT INTO "public"."Sys_Region" VALUES (2025, '440785', '恩平市', 440700, 3, '中國,廣東省,江門市,恩平市', 112, 22, 'Enping');
INSERT INTO "public"."Sys_Region" VALUES (2026, '440800', '湛江市', 440000, 2, '中國,廣東省,湛江市', 110, 21, 'Zhanjiang');
INSERT INTO "public"."Sys_Region" VALUES (2027, '440802', '赤坎區', 440800, 3, '中國,廣東省,湛江市,赤坎區', 110, 21, 'Chikan');
INSERT INTO "public"."Sys_Region" VALUES (2028, '440803', '霞山區', 440800, 3, '中國,廣東省,湛江市,霞山區', 110, 21, 'Xiashan');
INSERT INTO "public"."Sys_Region" VALUES (2029, '440804', '坡頭區', 440800, 3, '中國,廣東省,湛江市,坡頭區', 110, 21, 'Potou');
INSERT INTO "public"."Sys_Region" VALUES (2030, '440811', '麻章區', 440800, 3, '中國,廣東省,湛江市,麻章區', 110, 21, 'Mazhang');
INSERT INTO "public"."Sys_Region" VALUES (2031, '440823', '遂溪縣', 440800, 3, '中國,廣東省,湛江市,遂溪縣', 110, 21, 'Suixi');
INSERT INTO "public"."Sys_Region" VALUES (2032, '440825', '徐聞縣', 440800, 3, '中國,廣東省,湛江市,徐聞縣', 110, 20, 'Xuwen');
INSERT INTO "public"."Sys_Region" VALUES (2033, '440881', '廉江市', 440800, 3, '中國,廣東省,湛江市,廉江市', 110, 22, 'Lianjiang');
INSERT INTO "public"."Sys_Region" VALUES (2034, '440882', '雷州市', 440800, 3, '中國,廣東省,湛江市,雷州市', 110, 21, 'Leizhou');
INSERT INTO "public"."Sys_Region" VALUES (2035, '440883', '吳川市', 440800, 3, '中國,廣東省,湛江市,吳川市', 111, 21, 'Wuchuan');
INSERT INTO "public"."Sys_Region" VALUES (2036, '440900', '茂名市', 440000, 2, '中國,廣東省,茂名市', 111, 22, 'Maoming');
INSERT INTO "public"."Sys_Region" VALUES (2037, '440902', '茂南區', 440900, 3, '中國,廣東省,茂名市,茂南區', 111, 22, 'Maonan');
INSERT INTO "public"."Sys_Region" VALUES (2038, '440904', '電白區', 440900, 3, '中國,廣東省,茂名市,電白區', 111, 22, 'Dianbai');
INSERT INTO "public"."Sys_Region" VALUES (2039, '440981', '高州市', 440900, 3, '中國,廣東省,茂名市,高州市', 111, 22, 'Gaozhou');
INSERT INTO "public"."Sys_Region" VALUES (2040, '440982', '化州市', 440900, 3, '中國,廣東省,茂名市,化州市', 111, 22, 'Huazhou');
INSERT INTO "public"."Sys_Region" VALUES (2041, '440983', '信宜市', 440900, 3, '中國,廣東省,茂名市,信宜市', 111, 22, 'Xinyi');
INSERT INTO "public"."Sys_Region" VALUES (2042, '441200', '肇慶市', 440000, 2, '中國,廣東省,肇慶市', 112, 23, 'Zhaoqing');
INSERT INTO "public"."Sys_Region" VALUES (2043, '441202', '端州區', 441200, 3, '中國,廣東省,肇慶市,端州區', 112, 23, 'Duanzhou');
INSERT INTO "public"."Sys_Region" VALUES (2044, '441203', '鼎湖區', 441200, 3, '中國,廣東省,肇慶市,鼎湖區', 113, 23, 'Dinghu');
INSERT INTO "public"."Sys_Region" VALUES (2045, '441223', '廣寧縣', 441200, 3, '中國,廣東省,肇慶市,廣寧縣', 112, 24, 'Guangning');
INSERT INTO "public"."Sys_Region" VALUES (2046, '441224', '懷集縣', 441200, 3, '中國,廣東省,肇慶市,懷集縣', 112, 24, 'Huaiji');
INSERT INTO "public"."Sys_Region" VALUES (2047, '441225', '封開縣', 441200, 3, '中國,廣東省,肇慶市,封開縣', 112, 23, 'Fengkai');
INSERT INTO "public"."Sys_Region" VALUES (2048, '441226', '德慶縣', 441200, 3, '中國,廣東省,肇慶市,德慶縣', 112, 23, 'Deqing');
INSERT INTO "public"."Sys_Region" VALUES (2049, '441283', '高要市', 441200, 3, '中國,廣東省,肇慶市,高要市', 112, 23, 'Gaoyao');
INSERT INTO "public"."Sys_Region" VALUES (2050, '441284', '四會市', 441200, 3, '中國,廣東省,肇慶市,四會市', 113, 23, 'Sihui');
INSERT INTO "public"."Sys_Region" VALUES (2051, '441300', '惠州市', 440000, 2, '中國,廣東省,惠州市', 114, 23, 'Huizhou');
INSERT INTO "public"."Sys_Region" VALUES (2052, '441302', '惠城區', 441300, 3, '中國,廣東省,惠州市,惠城區', 114, 23, 'Huicheng');
INSERT INTO "public"."Sys_Region" VALUES (2053, '441303', '惠陽區', 441300, 3, '中國,廣東省,惠州市,惠陽區', 114, 23, 'Huiyang');
INSERT INTO "public"."Sys_Region" VALUES (2054, '441322', '博羅縣', 441300, 3, '中國,廣東省,惠州市,博羅縣', 114, 23, 'Boluo');
INSERT INTO "public"."Sys_Region" VALUES (2055, '441323', '惠東縣', 441300, 3, '中國,廣東省,惠州市,惠東縣', 115, 23, 'Huidong');
INSERT INTO "public"."Sys_Region" VALUES (2056, '441324', '龍門縣', 441300, 3, '中國,廣東省,惠州市,龍門縣', 114, 24, 'Longmen');
INSERT INTO "public"."Sys_Region" VALUES (2057, '441400', '梅州市', 440000, 2, '中國,廣東省,梅州市', 116, 24, 'Meizhou');
INSERT INTO "public"."Sys_Region" VALUES (2058, '441402', '梅江區', 441400, 3, '中國,廣東省,梅州市,梅江區', 116, 24, 'Meijiang');
INSERT INTO "public"."Sys_Region" VALUES (2059, '441403', '梅縣區', 441400, 3, '中國,廣東省,梅州市,梅縣區', 116, 24, 'Meixian');
INSERT INTO "public"."Sys_Region" VALUES (2060, '441422', '大埔縣', 441400, 3, '中國,廣東省,梅州市,大埔縣', 117, 24, 'Dabu');
INSERT INTO "public"."Sys_Region" VALUES (2061, '441423', '豐順縣', 441400, 3, '中國,廣東省,梅州市,豐順縣', 116, 24, 'Fengshun');
INSERT INTO "public"."Sys_Region" VALUES (2062, '441424', '五華縣', 441400, 3, '中國,廣東省,梅州市,五華縣', 116, 24, 'Wuhua');
INSERT INTO "public"."Sys_Region" VALUES (2063, '441426', '平遠縣', 441400, 3, '中國,廣東省,梅州市,平遠縣', 116, 25, 'Pingyuan');
INSERT INTO "public"."Sys_Region" VALUES (2064, '441427', '蕉嶺縣', 441400, 3, '中國,廣東省,梅州市,蕉嶺縣', 116, 25, 'Jiaoling');
INSERT INTO "public"."Sys_Region" VALUES (2065, '441481', '興寧市', 441400, 3, '中國,廣東省,梅州市,興寧市', 116, 24, 'Xingning');
INSERT INTO "public"."Sys_Region" VALUES (2066, '441500', '汕尾市', 440000, 2, '中國,廣東省,汕尾市', 115, 23, 'Shanwei');
INSERT INTO "public"."Sys_Region" VALUES (2067, '441502', '城區', 441500, 3, '中國,廣東省,汕尾市,城區', 115, 23, 'Chengqu');
INSERT INTO "public"."Sys_Region" VALUES (2068, '441521', '海豐縣', 441500, 3, '中國,廣東省,汕尾市,海豐縣', 115, 23, 'Haifeng');
INSERT INTO "public"."Sys_Region" VALUES (2069, '441523', '陸河縣', 441500, 3, '中國,廣東省,汕尾市,陸河縣', 116, 23, 'Luhe');
INSERT INTO "public"."Sys_Region" VALUES (2070, '441581', '陸豐市', 441500, 3, '中國,廣東省,汕尾市,陸豐市', 116, 23, 'Lufeng');
INSERT INTO "public"."Sys_Region" VALUES (2071, '441600', '河源市', 440000, 2, '中國,廣東省,河源市', 115, 24, 'Heyuan');
INSERT INTO "public"."Sys_Region" VALUES (2072, '441602', '源城區', 441600, 3, '中國,廣東省,河源市,源城區', 115, 24, 'Yuancheng');
INSERT INTO "public"."Sys_Region" VALUES (2073, '441621', '紫金縣', 441600, 3, '中國,廣東省,河源市,紫金縣', 115, 24, 'Zijin');
INSERT INTO "public"."Sys_Region" VALUES (2074, '441622', '龍川縣', 441600, 3, '中國,廣東省,河源市,龍川縣', 115, 24, 'Longchuan');
INSERT INTO "public"."Sys_Region" VALUES (2075, '441623', '連平縣', 441600, 3, '中國,廣東省,河源市,連平縣', 114, 24, 'Lianping');
INSERT INTO "public"."Sys_Region" VALUES (2076, '441624', '和平縣', 441600, 3, '中國,廣東省,河源市,和平縣', 115, 24, 'Heping');
INSERT INTO "public"."Sys_Region" VALUES (2077, '441625', '東源縣', 441600, 3, '中國,廣東省,河源市,東源縣', 115, 24, 'Dongyuan');
INSERT INTO "public"."Sys_Region" VALUES (2078, '441700', '陽江市', 440000, 2, '中國,廣東省,陽江市', 112, 22, 'Yangjiang');
INSERT INTO "public"."Sys_Region" VALUES (2079, '441702', '江城區', 441700, 3, '中國,廣東省,陽江市,江城區', 112, 22, 'Jiangcheng');
INSERT INTO "public"."Sys_Region" VALUES (2080, '441704', '陽東區', 441700, 3, '中國,廣東省,陽江市,陽東區', 112, 22, 'Yangdong');
INSERT INTO "public"."Sys_Region" VALUES (2081, '441721', '陽西縣', 441700, 3, '中國,廣東省,陽江市,陽西縣', 112, 22, 'Yangxi');
INSERT INTO "public"."Sys_Region" VALUES (2082, '441781', '陽春市', 441700, 3, '中國,廣東省,陽江市,陽春市', 112, 22, 'Yangchun');
INSERT INTO "public"."Sys_Region" VALUES (2083, '441800', '清遠市', 440000, 2, '中國,廣東省,清遠市', 113, 24, 'Qingyuan');
INSERT INTO "public"."Sys_Region" VALUES (2084, '441802', '清城區', 441800, 3, '中國,廣東省,清遠市,清城區', 113, 24, 'Qingcheng');
INSERT INTO "public"."Sys_Region" VALUES (2085, '441803', '清新區', 441800, 3, '中國,廣東省,清遠市,清新區', 113, 24, 'Qingxin');
INSERT INTO "public"."Sys_Region" VALUES (2086, '441821', '佛岡縣', 441800, 3, '中國,廣東省,清遠市,佛岡縣', 114, 24, 'Fogang');
INSERT INTO "public"."Sys_Region" VALUES (2087, '441823', '陽山縣', 441800, 3, '中國,廣東省,清遠市,陽山縣', 113, 24, 'Yangshan');
INSERT INTO "public"."Sys_Region" VALUES (2088, '441825', '連山壯族瑤族自治縣', 441800, 3, '中國,廣東省,清遠市,連山壯族瑤族自治縣', 112, 25, 'Lianshan');
INSERT INTO "public"."Sys_Region" VALUES (2089, '441826', '連南瑤族自治縣', 441800, 3, '中國,廣東省,清遠市,連南瑤族自治縣', 112, 25, 'Liannan');
INSERT INTO "public"."Sys_Region" VALUES (2090, '441881', '英德市', 441800, 3, '中國,廣東省,清遠市,英德市', 113, 24, 'Yingde');
INSERT INTO "public"."Sys_Region" VALUES (2091, '441882', '連州市', 441800, 3, '中國,廣東省,清遠市,連州市', 112, 25, 'Lianzhou');
INSERT INTO "public"."Sys_Region" VALUES (2092, '441900', '東莞市', 440000, 2, '中國,廣東省,東莞市', 114, 23, 'Dongguan');
INSERT INTO "public"."Sys_Region" VALUES (2093, '441901', '莞城區', 441900, 3, '中國,廣東省,東莞市,莞城區', 114, 23, 'Guancheng');
INSERT INTO "public"."Sys_Region" VALUES (2094, '441902', '南城區', 441900, 3, '中國,廣東省,東莞市,南城區', 114, 23, 'Nancheng');
INSERT INTO "public"."Sys_Region" VALUES (2095, '441904', '萬江區', 441900, 3, '中國,廣東省,東莞市,萬江區', 114, 23, 'Wanjiang');
INSERT INTO "public"."Sys_Region" VALUES (2096, '441905', '石碣鎮', 441900, 3, '中國,廣東省,東莞市,石碣鎮', 114, 23, 'Shijie');
INSERT INTO "public"."Sys_Region" VALUES (2097, '441906', '石龍鎮', 441900, 3, '中國,廣東省,東莞市,石龍鎮', 114, 23, 'Shilong');
INSERT INTO "public"."Sys_Region" VALUES (2098, '441907', '茶山鎮', 441900, 3, '中國,廣東省,東莞市,茶山鎮', 114, 23, 'Chashan');
INSERT INTO "public"."Sys_Region" VALUES (2099, '441908', '石排鎮', 441900, 3, '中國,廣東省,東莞市,石排鎮', 114, 23, 'Shipai');
INSERT INTO "public"."Sys_Region" VALUES (2100, '441909', '企石鎮', 441900, 3, '中國,廣東省,東莞市,企石鎮', 114, 23, 'Qishi');
INSERT INTO "public"."Sys_Region" VALUES (2101, '441910', '橫瀝鎮', 441900, 3, '中國,廣東省,東莞市,橫瀝鎮', 114, 23, 'Hengli');
INSERT INTO "public"."Sys_Region" VALUES (2102, '441911', '橋頭鎮', 441900, 3, '中國,廣東省,東莞市,橋頭鎮', 114, 23, 'Qiaotou');
INSERT INTO "public"."Sys_Region" VALUES (2103, '441912', '謝崗鎮', 441900, 3, '中國,廣東省,東莞市,謝崗鎮', 114, 23, 'Xiegang');
INSERT INTO "public"."Sys_Region" VALUES (2104, '441913', '東坑鎮', 441900, 3, '中國,廣東省,東莞市,東坑鎮', 114, 23, 'Dongkeng');
INSERT INTO "public"."Sys_Region" VALUES (2105, '441914', '常平鎮', 441900, 3, '中國,廣東省,東莞市,常平鎮', 114, 23, 'Changping');
INSERT INTO "public"."Sys_Region" VALUES (2106, '441915', '寮步鎮', 441900, 3, '中國,廣東省,東莞市,寮步鎮', 114, 23, 'Liaobu');
INSERT INTO "public"."Sys_Region" VALUES (2107, '441916', '大朗鎮', 441900, 3, '中國,廣東省,東莞市,大朗鎮', 114, 23, 'Dalang');
INSERT INTO "public"."Sys_Region" VALUES (2108, '441917', '麻涌鎮', 441900, 3, '中國,廣東省,東莞市,麻涌鎮', 114, 23, 'Machong');
INSERT INTO "public"."Sys_Region" VALUES (2109, '441918', '中堂鎮', 441900, 3, '中國,廣東省,東莞市,中堂鎮', 114, 23, 'Zhongtang');
INSERT INTO "public"."Sys_Region" VALUES (2110, '441919', '高埗鎮', 441900, 3, '中國,廣東省,東莞市,高埗鎮', 114, 23, 'Gaobu');
INSERT INTO "public"."Sys_Region" VALUES (2111, '441920', '樟木頭鎮', 441900, 3, '中國,廣東省,東莞市,樟木頭鎮', 114, 23, 'Zhangmutou');
INSERT INTO "public"."Sys_Region" VALUES (2112, '441921', '大嶺山鎮', 441900, 3, '中國,廣東省,東莞市,大嶺山鎮', 114, 23, 'Dalingshan');
INSERT INTO "public"."Sys_Region" VALUES (2113, '441922', '望牛墩鎮', 441900, 3, '中國,廣東省,東莞市,望牛墩鎮', 114, 23, 'Wangniudun');
INSERT INTO "public"."Sys_Region" VALUES (2114, '441923', '黃江鎮', 441900, 3, '中國,廣東省,東莞市,黃江鎮', 114, 23, 'Huangjiang');
INSERT INTO "public"."Sys_Region" VALUES (2115, '441924', '洪梅鎮', 441900, 3, '中國,廣東省,東莞市,洪梅鎮', 114, 23, 'Hongmei');
INSERT INTO "public"."Sys_Region" VALUES (2116, '441925', '清溪鎮', 441900, 3, '中國,廣東省,東莞市,清溪鎮', 114, 23, 'Qingxi');
INSERT INTO "public"."Sys_Region" VALUES (2117, '441926', '沙田鎮', 441900, 3, '中國,廣東省,東莞市,沙田鎮', 114, 23, 'Shatian');
INSERT INTO "public"."Sys_Region" VALUES (2118, '441927', '道滘鎮', 441900, 3, '中國,廣東省,東莞市,道滘鎮', 114, 23, 'Daojiao');
INSERT INTO "public"."Sys_Region" VALUES (2119, '441928', '塘廈鎮', 441900, 3, '中國,廣東省,東莞市,塘廈鎮', 114, 23, 'Tangxia');
INSERT INTO "public"."Sys_Region" VALUES (2120, '441929', '虎門鎮', 441900, 3, '中國,廣東省,東莞市,虎門鎮', 114, 23, 'Humen');
INSERT INTO "public"."Sys_Region" VALUES (2121, '441930', '厚街鎮', 441900, 3, '中國,廣東省,東莞市,厚街鎮', 114, 23, 'Houjie');
INSERT INTO "public"."Sys_Region" VALUES (2122, '441931', '鳳崗鎮', 441900, 3, '中國,廣東省,東莞市,鳳崗鎮', 114, 23, 'Fenggang');
INSERT INTO "public"."Sys_Region" VALUES (2123, '441932', '長安鎮', 441900, 3, '中國,廣東省,東莞市,長安鎮', 114, 23, 'Changan');
INSERT INTO "public"."Sys_Region" VALUES (2124, '442000', '中山市', 440000, 2, '中國,廣東省,中山市', 113, 23, 'Zhongshan');
INSERT INTO "public"."Sys_Region" VALUES (2125, '442001', '石岐區', 442000, 3, '中國,廣東省,中山市,石岐區', 113, 23, 'Shiqi');
INSERT INTO "public"."Sys_Region" VALUES (2126, '442004', '南區', 442000, 3, '中國,廣東省,中山市,南區', 113, 22, 'Nanqu');
INSERT INTO "public"."Sys_Region" VALUES (2127, '442005', '五桂山區', 442000, 3, '中國,廣東省,中山市,五桂山區', 113, 23, 'Wuguishan');
INSERT INTO "public"."Sys_Region" VALUES (2128, '442006', '火炬開發區', 442000, 3, '中國,廣東省,中山市,火炬開發區', 113, 23, 'Huoju');
INSERT INTO "public"."Sys_Region" VALUES (2129, '442007', '黃圃鎮', 442000, 3, '中國,廣東省,中山市,黃圃鎮', 113, 23, 'Huangpu');
INSERT INTO "public"."Sys_Region" VALUES (2130, '442008', '南頭鎮', 442000, 3, '中國,廣東省,中山市,南頭鎮', 113, 23, 'Nantou');
INSERT INTO "public"."Sys_Region" VALUES (2131, '442009', '東鳳鎮', 442000, 3, '中國,廣東省,中山市,東鳳鎮', 113, 23, 'Dongfeng');
INSERT INTO "public"."Sys_Region" VALUES (2132, '442010', '阜沙鎮', 442000, 3, '中國,廣東省,中山市,阜沙鎮', 113, 23, 'Fusha');
INSERT INTO "public"."Sys_Region" VALUES (2133, '442011', '小欖鎮', 442000, 3, '中國,廣東省,中山市,小欖鎮', 113, 23, 'Xiaolan');
INSERT INTO "public"."Sys_Region" VALUES (2134, '442012', '東升鎮', 442000, 3, '中國,廣東省,中山市,東升鎮', 113, 23, 'Dongsheng');
INSERT INTO "public"."Sys_Region" VALUES (2135, '442013', '古鎮鎮', 442000, 3, '中國,廣東省,中山市,古鎮鎮', 113, 23, 'Guzhen');
INSERT INTO "public"."Sys_Region" VALUES (2136, '442014', '橫欄鎮', 442000, 3, '中國,廣東省,中山市,橫欄鎮', 113, 23, 'Henglan');
INSERT INTO "public"."Sys_Region" VALUES (2137, '442015', '三角鎮', 442000, 3, '中國,廣東省,中山市,三角鎮', 113, 23, 'Sanjiao');
INSERT INTO "public"."Sys_Region" VALUES (2138, '442016', '民眾鎮', 442000, 3, '中國,廣東省,中山市,民眾鎮', 113, 23, 'Minzhong');
INSERT INTO "public"."Sys_Region" VALUES (2139, '442017', '南朗鎮', 442000, 3, '中國,廣東省,中山市,南朗鎮', 114, 22, 'Nanlang');
INSERT INTO "public"."Sys_Region" VALUES (2140, '442018', '港口鎮', 442000, 3, '中國,廣東省,中山市,港口鎮', 113, 23, 'Gangkou');
INSERT INTO "public"."Sys_Region" VALUES (2141, '442019', '大涌鎮', 442000, 3, '中國,廣東省,中山市,大涌鎮', 113, 22, 'Dayong');
INSERT INTO "public"."Sys_Region" VALUES (2142, '442020', '沙溪鎮', 442000, 3, '中國,廣東省,中山市,沙溪鎮', 113, 23, 'Shaxi');
INSERT INTO "public"."Sys_Region" VALUES (2143, '442021', '三鄉鎮', 442000, 3, '中國,廣東省,中山市,三鄉鎮', 113, 22, 'Sanxiang');
INSERT INTO "public"."Sys_Region" VALUES (2144, '442022', '板芙鎮', 442000, 3, '中國,廣東省,中山市,板芙鎮', 113, 22, 'Banfu');
INSERT INTO "public"."Sys_Region" VALUES (2145, '442023', '神灣鎮', 442000, 3, '中國,廣東省,中山市,神灣鎮', 113, 22, 'Shenwan');
INSERT INTO "public"."Sys_Region" VALUES (2146, '442024', '坦洲鎮', 442000, 3, '中國,廣東省,中山市,坦洲鎮', 113, 22, 'Tanzhou');
INSERT INTO "public"."Sys_Region" VALUES (2147, '445100', '潮州市', 440000, 2, '中國,廣東省,潮州市', 117, 24, 'Chaozhou');
INSERT INTO "public"."Sys_Region" VALUES (2148, '445102', '湘橋區', 445100, 3, '中國,廣東省,潮州市,湘橋區', 117, 24, 'Xiangqiao');
INSERT INTO "public"."Sys_Region" VALUES (2149, '445103', '潮安區', 445100, 3, '中國,廣東省,潮州市,潮安區', 117, 24, 'Chaoan');
INSERT INTO "public"."Sys_Region" VALUES (2150, '445122', '饒平縣', 445100, 3, '中國,廣東省,潮州市,饒平縣', 117, 24, 'Raoping');
INSERT INTO "public"."Sys_Region" VALUES (2151, '445200', '揭陽市', 440000, 2, '中國,廣東省,揭陽市', 116, 24, 'Jieyang');
INSERT INTO "public"."Sys_Region" VALUES (2152, '445202', '榕城區', 445200, 3, '中國,廣東省,揭陽市,榕城區', 116, 24, 'Rongcheng');
INSERT INTO "public"."Sys_Region" VALUES (2153, '445203', '揭東區', 445200, 3, '中國,廣東省,揭陽市,揭東區', 116, 24, 'Jiedong');
INSERT INTO "public"."Sys_Region" VALUES (2154, '445222', '揭西縣', 445200, 3, '中國,廣東省,揭陽市,揭西縣', 116, 23, 'Jiexi');
INSERT INTO "public"."Sys_Region" VALUES (2155, '445224', '惠來縣', 445200, 3, '中國,廣東省,揭陽市,惠來縣', 116, 23, 'Huilai');
INSERT INTO "public"."Sys_Region" VALUES (2156, '445281', '普寧市', 445200, 3, '中國,廣東省,揭陽市,普寧市', 116, 23, 'Puning');
INSERT INTO "public"."Sys_Region" VALUES (2157, '445300', '云浮市', 440000, 2, '中國,廣東省,云浮市', 112, 23, 'Yunfu');
INSERT INTO "public"."Sys_Region" VALUES (2158, '445302', '云城區', 445300, 3, '中國,廣東省,云浮市,云城區', 112, 23, 'Yuncheng');
INSERT INTO "public"."Sys_Region" VALUES (2159, '445303', '云安區', 445300, 3, '中國,廣東省,云浮市,云安區', 112, 23, 'Yunan');
INSERT INTO "public"."Sys_Region" VALUES (2160, '445321', '新興縣', 445300, 3, '中國,廣東省,云浮市,新興縣', 112, 23, 'Xinxing');
INSERT INTO "public"."Sys_Region" VALUES (2161, '445322', '郁南縣', 445300, 3, '中國,廣東省,云浮市,郁南縣', 112, 23, 'Yunan');
INSERT INTO "public"."Sys_Region" VALUES (2162, '445381', '羅定市', 445300, 3, '中國,廣東省,云浮市,羅定市', 112, 23, 'Luoding');
INSERT INTO "public"."Sys_Region" VALUES (2163, '450000', '廣西壯族自治區', 100000, 1, '中國,廣西壯族自治區', 108, 23, 'Guangxi');
INSERT INTO "public"."Sys_Region" VALUES (2164, '450100', '南寧市', 450000, 2, '中國,廣西壯族自治區,南寧市', 108, 23, 'Nanning');
INSERT INTO "public"."Sys_Region" VALUES (2165, '450102', '興寧區', 450100, 3, '中國,廣西壯族自治區,南寧市,興寧區', 108, 23, 'Xingning');
INSERT INTO "public"."Sys_Region" VALUES (2166, '450103', '青秀區', 450100, 3, '中國,廣西壯族自治區,南寧市,青秀區', 108, 23, 'Qingxiu');
INSERT INTO "public"."Sys_Region" VALUES (2167, '450105', '江南區', 450100, 3, '中國,廣西壯族自治區,南寧市,江南區', 108, 23, 'Jiangnan');
INSERT INTO "public"."Sys_Region" VALUES (2168, '450107', '西鄉塘區', 450100, 3, '中國,廣西壯族自治區,南寧市,西鄉塘區', 108, 23, 'Xixiangtang');
INSERT INTO "public"."Sys_Region" VALUES (2169, '450108', '良慶區', 450100, 3, '中國,廣西壯族自治區,南寧市,良慶區', 108, 23, 'Liangqing');
INSERT INTO "public"."Sys_Region" VALUES (2170, '450109', '邕寧區', 450100, 3, '中國,廣西壯族自治區,南寧市,邕寧區', 108, 23, 'Yongning');
INSERT INTO "public"."Sys_Region" VALUES (2171, '450122', '武鳴縣', 450100, 3, '中國,廣西壯族自治區,南寧市,武鳴縣', 108, 23, 'Wuming');
INSERT INTO "public"."Sys_Region" VALUES (2172, '450123', '隆安縣', 450100, 3, '中國,廣西壯族自治區,南寧市,隆安縣', 108, 23, 'Longan');
INSERT INTO "public"."Sys_Region" VALUES (2173, '450124', '馬山縣', 450100, 3, '中國,廣西壯族自治區,南寧市,馬山縣', 108, 24, 'Mashan');
INSERT INTO "public"."Sys_Region" VALUES (2174, '450125', '上林縣', 450100, 3, '中國,廣西壯族自治區,南寧市,上林縣', 109, 23, 'Shanglin');
INSERT INTO "public"."Sys_Region" VALUES (2175, '450126', '賓陽縣', 450100, 3, '中國,廣西壯族自治區,南寧市,賓陽縣', 109, 23, 'Binyang');
INSERT INTO "public"."Sys_Region" VALUES (2176, '450127', '橫縣', 450100, 3, '中國,廣西壯族自治區,南寧市,橫縣', 109, 23, 'Hengxian');
INSERT INTO "public"."Sys_Region" VALUES (2177, '450128', '埌東新區', 450100, 3, '中國,廣西壯族自治區,南寧市,埌東新區', 108, 23, 'Langdong');
INSERT INTO "public"."Sys_Region" VALUES (2178, '450200', '柳州市', 450000, 2, '中國,廣西壯族自治區,柳州市', 109, 24, 'Liuzhou');
INSERT INTO "public"."Sys_Region" VALUES (2179, '450202', '城中區', 450200, 3, '中國,廣西壯族自治區,柳州市,城中區', 109, 24, 'Chengzhong');
INSERT INTO "public"."Sys_Region" VALUES (2180, '450203', '魚峰區', 450200, 3, '中國,廣西壯族自治區,柳州市,魚峰區', 109, 24, 'Yufeng');
INSERT INTO "public"."Sys_Region" VALUES (2181, '450204', '柳南區', 450200, 3, '中國,廣西壯族自治區,柳州市,柳南區', 109, 24, 'Liunan');
INSERT INTO "public"."Sys_Region" VALUES (2182, '450205', '柳北區', 450200, 3, '中國,廣西壯族自治區,柳州市,柳北區', 109, 24, 'Liubei');
INSERT INTO "public"."Sys_Region" VALUES (2183, '450221', '柳江縣', 450200, 3, '中國,廣西壯族自治區,柳州市,柳江縣', 109, 24, 'Liujiang');
INSERT INTO "public"."Sys_Region" VALUES (2184, '450222', '柳城縣', 450200, 3, '中國,廣西壯族自治區,柳州市,柳城縣', 109, 25, 'Liucheng');
INSERT INTO "public"."Sys_Region" VALUES (2185, '450223', '鹿寨縣', 450200, 3, '中國,廣西壯族自治區,柳州市,鹿寨縣', 110, 24, 'Luzhai');
INSERT INTO "public"."Sys_Region" VALUES (2186, '450224', '融安縣', 450200, 3, '中國,廣西壯族自治區,柳州市,融安縣', 109, 25, 'Rongan');
INSERT INTO "public"."Sys_Region" VALUES (2187, '450225', '融水苗族自治縣', 450200, 3, '中國,廣西壯族自治區,柳州市,融水苗族自治縣', 109, 25, 'Rongshui');
INSERT INTO "public"."Sys_Region" VALUES (2188, '450226', '三江侗族自治縣', 450200, 3, '中國,廣西壯族自治區,柳州市,三江侗族自治縣', 110, 26, 'Sanjiang');
INSERT INTO "public"."Sys_Region" VALUES (2189, '450227', '柳東新區', 450200, 3, '中國,廣西壯族自治區,柳州市,柳東新區', 109, 24, 'Liudong');
INSERT INTO "public"."Sys_Region" VALUES (2190, '450300', '桂林市', 450000, 2, '中國,廣西壯族自治區,桂林市', 110, 25, 'Guilin');
INSERT INTO "public"."Sys_Region" VALUES (2191, '450302', '秀峰區', 450300, 3, '中國,廣西壯族自治區,桂林市,秀峰區', 110, 25, 'Xiufeng');
INSERT INTO "public"."Sys_Region" VALUES (2192, '450303', '疊彩區', 450300, 3, '中國,廣西壯族自治區,桂林市,疊彩區', 110, 25, 'Diecai');
INSERT INTO "public"."Sys_Region" VALUES (2193, '450304', '象山區', 450300, 3, '中國,廣西壯族自治區,桂林市,象山區', 110, 25, 'Xiangshan');
INSERT INTO "public"."Sys_Region" VALUES (2194, '450305', '七星區', 450300, 3, '中國,廣西壯族自治區,桂林市,七星區', 110, 25, 'Qixing');
INSERT INTO "public"."Sys_Region" VALUES (2195, '450311', '雁山區', 450300, 3, '中國,廣西壯族自治區,桂林市,雁山區', 110, 25, 'Yanshan');
INSERT INTO "public"."Sys_Region" VALUES (2196, '450312', '臨桂區', 450300, 3, '中國,廣西壯族自治區,桂林市,臨桂區', 110, 25, 'Lingui');
INSERT INTO "public"."Sys_Region" VALUES (2197, '450321', '陽朔縣', 450300, 3, '中國,廣西壯族自治區,桂林市,陽朔縣', 110, 25, 'Yangshuo');
INSERT INTO "public"."Sys_Region" VALUES (2198, '450323', '靈川縣', 450300, 3, '中國,廣西壯族自治區,桂林市,靈川縣', 110, 25, 'Lingchuan');
INSERT INTO "public"."Sys_Region" VALUES (2199, '450324', '全州縣', 450300, 3, '中國,廣西壯族自治區,桂林市,全州縣', 111, 26, 'Quanzhou');
INSERT INTO "public"."Sys_Region" VALUES (2200, '450325', '興安縣', 450300, 3, '中國,廣西壯族自治區,桂林市,興安縣', 111, 26, 'Xingan');
INSERT INTO "public"."Sys_Region" VALUES (2201, '450326', '永福縣', 450300, 3, '中國,廣西壯族自治區,桂林市,永福縣', 110, 25, 'Yongfu');
INSERT INTO "public"."Sys_Region" VALUES (2202, '450327', '灌陽縣', 450300, 3, '中國,廣西壯族自治區,桂林市,灌陽縣', 111, 25, 'Guanyang');
INSERT INTO "public"."Sys_Region" VALUES (2203, '450328', '龍勝各族自治縣', 450300, 3, '中國,廣西壯族自治區,桂林市,龍勝各族自治縣', 110, 26, 'Longsheng');
INSERT INTO "public"."Sys_Region" VALUES (2204, '450329', '資源縣', 450300, 3, '中國,廣西壯族自治區,桂林市,資源縣', 111, 26, 'Ziyuan');
INSERT INTO "public"."Sys_Region" VALUES (2205, '450330', '平樂縣', 450300, 3, '中國,廣西壯族自治區,桂林市,平樂縣', 111, 25, 'Pingle');
INSERT INTO "public"."Sys_Region" VALUES (2206, '450331', '荔浦縣', 450300, 3, '中國,廣西壯族自治區,桂林市,荔浦縣', 110, 24, 'Lipu');
INSERT INTO "public"."Sys_Region" VALUES (2207, '450332', '恭城瑤族自治縣', 450300, 3, '中國,廣西壯族自治區,桂林市,恭城瑤族自治縣', 111, 25, 'Gongcheng');
INSERT INTO "public"."Sys_Region" VALUES (2208, '450400', '梧州市', 450000, 2, '中國,廣西壯族自治區,梧州市', 111, 23, 'Wuzhou');
INSERT INTO "public"."Sys_Region" VALUES (2209, '450403', '萬秀區', 450400, 3, '中國,廣西壯族自治區,梧州市,萬秀區', 111, 23, 'Wanxiu');
INSERT INTO "public"."Sys_Region" VALUES (2210, '450405', '長洲區', 450400, 3, '中國,廣西壯族自治區,梧州市,長洲區', 111, 23, 'Changzhou');
INSERT INTO "public"."Sys_Region" VALUES (2211, '450406', '龍圩區', 450400, 3, '中國,廣西壯族自治區,梧州市,龍圩區', 111, 23, 'Longxu');
INSERT INTO "public"."Sys_Region" VALUES (2212, '450421', '蒼梧縣', 450400, 3, '中國,廣西壯族自治區,梧州市,蒼梧縣', 111, 23, 'Cangwu');
INSERT INTO "public"."Sys_Region" VALUES (2213, '450422', '藤縣', 450400, 3, '中國,廣西壯族自治區,梧州市,藤縣', 111, 23, 'Tengxian');
INSERT INTO "public"."Sys_Region" VALUES (2214, '450423', '蒙山縣', 450400, 3, '中國,廣西壯族自治區,梧州市,蒙山縣', 111, 24, 'Mengshan');
INSERT INTO "public"."Sys_Region" VALUES (2215, '450481', '岑溪市', 450400, 3, '中國,廣西壯族自治區,梧州市,岑溪市', 111, 23, 'Cenxi');
INSERT INTO "public"."Sys_Region" VALUES (2216, '450500', '北海市', 450000, 2, '中國,廣西壯族自治區,北海市', 109, 21, 'Beihai');
INSERT INTO "public"."Sys_Region" VALUES (2217, '450502', '海城區', 450500, 3, '中國,廣西壯族自治區,北海市,海城區', 109, 21, 'Haicheng');
INSERT INTO "public"."Sys_Region" VALUES (2218, '450503', '銀海區', 450500, 3, '中國,廣西壯族自治區,北海市,銀海區', 109, 21, 'Yinhai');
INSERT INTO "public"."Sys_Region" VALUES (2219, '450512', '鐵山港區', 450500, 3, '中國,廣西壯族自治區,北海市,鐵山港區', 109, 22, 'Tieshangang');
INSERT INTO "public"."Sys_Region" VALUES (2220, '450521', '合浦縣', 450500, 3, '中國,廣西壯族自治區,北海市,合浦縣', 109, 22, 'Hepu');
INSERT INTO "public"."Sys_Region" VALUES (2221, '450600', '防城港市', 450000, 2, '中國,廣西壯族自治區,防城港市', 108, 22, 'Fangchenggang');
INSERT INTO "public"."Sys_Region" VALUES (2222, '450602', '港口區', 450600, 3, '中國,廣西壯族自治區,防城港市,港口區', 108, 22, 'Gangkou');
INSERT INTO "public"."Sys_Region" VALUES (2223, '450603', '防城區', 450600, 3, '中國,廣西壯族自治區,防城港市,防城區', 108, 22, 'Fangcheng');
INSERT INTO "public"."Sys_Region" VALUES (2224, '450621', '上思縣', 450600, 3, '中國,廣西壯族自治區,防城港市,上思縣', 108, 22, 'Shangsi');
INSERT INTO "public"."Sys_Region" VALUES (2225, '450681', '東興市', 450600, 3, '中國,廣西壯族自治區,防城港市,東興市', 108, 22, 'Dongxing');
INSERT INTO "public"."Sys_Region" VALUES (2226, '450700', '欽州市', 450000, 2, '中國,廣西壯族自治區,欽州市', 109, 22, 'Qinzhou');
INSERT INTO "public"."Sys_Region" VALUES (2227, '450702', '欽南區', 450700, 3, '中國,廣西壯族自治區,欽州市,欽南區', 109, 22, 'Qinnan');
INSERT INTO "public"."Sys_Region" VALUES (2228, '450703', '欽北區', 450700, 3, '中國,廣西壯族自治區,欽州市,欽北區', 109, 22, 'Qinbei');
INSERT INTO "public"."Sys_Region" VALUES (2229, '450721', '靈山縣', 450700, 3, '中國,廣西壯族自治區,欽州市,靈山縣', 109, 22, 'Lingshan');
INSERT INTO "public"."Sys_Region" VALUES (2230, '450722', '浦北縣', 450700, 3, '中國,廣西壯族自治區,欽州市,浦北縣', 110, 22, 'Pubei');
INSERT INTO "public"."Sys_Region" VALUES (2231, '450800', '貴港市', 450000, 2, '中國,廣西壯族自治區,貴港市', 110, 23, 'Guigang');
INSERT INTO "public"."Sys_Region" VALUES (2232, '450802', '港北區', 450800, 3, '中國,廣西壯族自治區,貴港市,港北區', 110, 23, 'Gangbei');
INSERT INTO "public"."Sys_Region" VALUES (2233, '450803', '港南區', 450800, 3, '中國,廣西壯族自治區,貴港市,港南區', 110, 23, 'Gangnan');
INSERT INTO "public"."Sys_Region" VALUES (2234, '450804', '覃塘區', 450800, 3, '中國,廣西壯族自治區,貴港市,覃塘區', 109, 23, 'Qintang');
INSERT INTO "public"."Sys_Region" VALUES (2235, '450821', '平南縣', 450800, 3, '中國,廣西壯族自治區,貴港市,平南縣', 110, 24, 'Pingnan');
INSERT INTO "public"."Sys_Region" VALUES (2236, '450881', '桂平市', 450800, 3, '中國,廣西壯族自治區,貴港市,桂平市', 110, 23, 'Guiping');
INSERT INTO "public"."Sys_Region" VALUES (2237, '450900', '玉林市', 450000, 2, '中國,廣西壯族自治區,玉林市', 110, 23, 'Yulin');
INSERT INTO "public"."Sys_Region" VALUES (2238, '450902', '玉州區', 450900, 3, '中國,廣西壯族自治區,玉林市,玉州區', 110, 23, 'Yuzhou');
INSERT INTO "public"."Sys_Region" VALUES (2239, '450903', '福綿區', 450900, 3, '中國,廣西壯族自治區,玉林市,福綿區', 110, 23, 'Fumian');
INSERT INTO "public"."Sys_Region" VALUES (2240, '450904', '玉東新區', 450900, 3, '中國,廣西壯族自治區,玉林市,玉東新區', 110, 23, 'Yudong');
INSERT INTO "public"."Sys_Region" VALUES (2241, '450921', '容縣', 450900, 3, '中國,廣西壯族自治區,玉林市,容縣', 111, 23, 'Rongxian');
INSERT INTO "public"."Sys_Region" VALUES (2242, '450922', '陸川縣', 450900, 3, '中國,廣西壯族自治區,玉林市,陸川縣', 110, 22, 'Luchuan');
INSERT INTO "public"."Sys_Region" VALUES (2243, '450923', '博白縣', 450900, 3, '中國,廣西壯族自治區,玉林市,博白縣', 110, 22, 'Bobai');
INSERT INTO "public"."Sys_Region" VALUES (2244, '450924', '興業縣', 450900, 3, '中國,廣西壯族自治區,玉林市,興業縣', 110, 23, 'Xingye');
INSERT INTO "public"."Sys_Region" VALUES (2245, '450981', '北流市', 450900, 3, '中國,廣西壯族自治區,玉林市,北流市', 110, 23, 'Beiliu');
INSERT INTO "public"."Sys_Region" VALUES (2246, '451000', '百色市', 450000, 2, '中國,廣西壯族自治區,百色市', 107, 24, 'Baise');
INSERT INTO "public"."Sys_Region" VALUES (2247, '451002', '右江區', 451000, 3, '中國,廣西壯族自治區,百色市,右江區', 107, 24, 'Youjiang');
INSERT INTO "public"."Sys_Region" VALUES (2248, '451021', '田陽縣', 451000, 3, '中國,廣西壯族自治區,百色市,田陽縣', 107, 24, 'Tianyang');
INSERT INTO "public"."Sys_Region" VALUES (2249, '451022', '田東縣', 451000, 3, '中國,廣西壯族自治區,百色市,田東縣', 107, 24, 'Tiandong');
INSERT INTO "public"."Sys_Region" VALUES (2250, '451023', '平果縣', 451000, 3, '中國,廣西壯族自治區,百色市,平果縣', 108, 23, 'Pingguo');
INSERT INTO "public"."Sys_Region" VALUES (2251, '451024', '德保縣', 451000, 3, '中國,廣西壯族自治區,百色市,德保縣', 107, 23, 'Debao');
INSERT INTO "public"."Sys_Region" VALUES (2252, '451025', '靖西縣', 451000, 3, '中國,廣西壯族自治區,百色市,靖西縣', 106, 23, 'Jingxi');
INSERT INTO "public"."Sys_Region" VALUES (2253, '451026', '那坡縣', 451000, 3, '中國,廣西壯族自治區,百色市,那坡縣', 106, 23, 'Napo');
INSERT INTO "public"."Sys_Region" VALUES (2254, '451027', '凌云縣', 451000, 3, '中國,廣西壯族自治區,百色市,凌云縣', 107, 24, 'Lingyun');
INSERT INTO "public"."Sys_Region" VALUES (2255, '451028', '樂業縣', 451000, 3, '中國,廣西壯族自治區,百色市,樂業縣', 107, 25, 'Leye');
INSERT INTO "public"."Sys_Region" VALUES (2256, '451029', '田林縣', 451000, 3, '中國,廣西壯族自治區,百色市,田林縣', 106, 24, 'Tianlin');
INSERT INTO "public"."Sys_Region" VALUES (2257, '451030', '西林縣', 451000, 3, '中國,廣西壯族自治區,百色市,西林縣', 105, 24, 'Xilin');
INSERT INTO "public"."Sys_Region" VALUES (2258, '451031', '隆林各族自治縣', 451000, 3, '中國,廣西壯族自治區,百色市,隆林各族自治縣', 105, 25, 'Longlin');
INSERT INTO "public"."Sys_Region" VALUES (2259, '451100', '賀州市', 450000, 2, '中國,廣西壯族自治區,賀州市', 112, 24, 'Hezhou');
INSERT INTO "public"."Sys_Region" VALUES (2260, '451102', '八步區', 451100, 3, '中國,廣西壯族自治區,賀州市,八步區', 112, 24, 'Babu');
INSERT INTO "public"."Sys_Region" VALUES (2261, '451121', '昭平縣', 451100, 3, '中國,廣西壯族自治區,賀州市,昭平縣', 111, 24, 'Zhaoping');
INSERT INTO "public"."Sys_Region" VALUES (2262, '451122', '鐘山縣', 451100, 3, '中國,廣西壯族自治區,賀州市,鐘山縣', 111, 25, 'Zhongshan');
INSERT INTO "public"."Sys_Region" VALUES (2263, '451123', '富川瑤族自治縣', 451100, 3, '中國,廣西壯族自治區,賀州市,富川瑤族自治縣', 111, 25, 'Fuchuan');
INSERT INTO "public"."Sys_Region" VALUES (2264, '451124', '平桂管理區', 451100, 3, '中國,廣西壯族自治區,賀州市,平桂管理區', 111, 24, 'Pingui');
INSERT INTO "public"."Sys_Region" VALUES (2265, '451200', '河池市', 450000, 2, '中國,廣西壯族自治區,河池市', 108, 25, 'Hechi');
INSERT INTO "public"."Sys_Region" VALUES (2266, '451202', '金城江區', 451200, 3, '中國,廣西壯族自治區,河池市,金城江區', 108, 25, 'Jinchengjiang');
INSERT INTO "public"."Sys_Region" VALUES (2267, '451221', '南丹縣', 451200, 3, '中國,廣西壯族自治區,河池市,南丹縣', 108, 25, 'Nandan');
INSERT INTO "public"."Sys_Region" VALUES (2268, '451222', '天峨縣', 451200, 3, '中國,廣西壯族自治區,河池市,天峨縣', 107, 25, 'Tiane');
INSERT INTO "public"."Sys_Region" VALUES (2269, '451223', '鳳山縣', 451200, 3, '中國,廣西壯族自治區,河池市,鳳山縣', 107, 25, 'Fengshan');
INSERT INTO "public"."Sys_Region" VALUES (2270, '451224', '東蘭縣', 451200, 3, '中國,廣西壯族自治區,河池市,東蘭縣', 107, 25, 'Donglan');
INSERT INTO "public"."Sys_Region" VALUES (2271, '451225', '羅城仫佬族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,羅城仫佬族自治縣', 109, 25, 'Luocheng');
INSERT INTO "public"."Sys_Region" VALUES (2272, '451226', '環江毛南族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,環江毛南族自治縣', 108, 25, 'Huanjiang');
INSERT INTO "public"."Sys_Region" VALUES (2273, '451227', '巴馬瑤族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,巴馬瑤族自治縣', 107, 24, 'Bama');
INSERT INTO "public"."Sys_Region" VALUES (2274, '451228', '都安瑤族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,都安瑤族自治縣', 108, 24, 'Duan');
INSERT INTO "public"."Sys_Region" VALUES (2275, '451229', '大化瑤族自治縣', 451200, 3, '中國,廣西壯族自治區,河池市,大化瑤族自治縣', 108, 24, 'Dahua');
INSERT INTO "public"."Sys_Region" VALUES (2276, '451281', '宜州市', 451200, 3, '中國,廣西壯族自治區,河池市,宜州市', 109, 24, 'Yizhou');
INSERT INTO "public"."Sys_Region" VALUES (2277, '451300', '來賓市', 450000, 2, '中國,廣西壯族自治區,來賓市', 109, 24, 'Laibin');
INSERT INTO "public"."Sys_Region" VALUES (2278, '451302', '興賓區', 451300, 3, '中國,廣西壯族自治區,來賓市,興賓區', 109, 24, 'Xingbin');
INSERT INTO "public"."Sys_Region" VALUES (2279, '451321', '忻城縣', 451300, 3, '中國,廣西壯族自治區,來賓市,忻城縣', 109, 24, 'Xincheng');
INSERT INTO "public"."Sys_Region" VALUES (2280, '451322', '象州縣', 451300, 3, '中國,廣西壯族自治區,來賓市,象州縣', 110, 24, 'Xiangzhou');
INSERT INTO "public"."Sys_Region" VALUES (2281, '451323', '武宣縣', 451300, 3, '中國,廣西壯族自治區,來賓市,武宣縣', 110, 24, 'Wuxuan');
INSERT INTO "public"."Sys_Region" VALUES (2282, '451324', '金秀瑤族自治縣', 451300, 3, '中國,廣西壯族自治區,來賓市,金秀瑤族自治縣', 110, 24, 'Jinxiu');
INSERT INTO "public"."Sys_Region" VALUES (2283, '451381', '合山市', 451300, 3, '中國,廣西壯族自治區,來賓市,合山市', 109, 24, 'Heshan');
INSERT INTO "public"."Sys_Region" VALUES (2284, '451400', '崇左市', 450000, 2, '中國,廣西壯族自治區,崇左市', 107, 22, 'Chongzuo');
INSERT INTO "public"."Sys_Region" VALUES (2285, '451402', '江州區', 451400, 3, '中國,廣西壯族自治區,崇左市,江州區', 107, 22, 'Jiangzhou');
INSERT INTO "public"."Sys_Region" VALUES (2286, '451421', '扶綏縣', 451400, 3, '中國,廣西壯族自治區,崇左市,扶綏縣', 108, 23, 'Fusui');
INSERT INTO "public"."Sys_Region" VALUES (2287, '451422', '寧明縣', 451400, 3, '中國,廣西壯族自治區,崇左市,寧明縣', 107, 22, 'Ningming');
INSERT INTO "public"."Sys_Region" VALUES (2288, '451423', '龍州縣', 451400, 3, '中國,廣西壯族自治區,崇左市,龍州縣', 107, 22, 'Longzhou');
INSERT INTO "public"."Sys_Region" VALUES (2289, '451424', '大新縣', 451400, 3, '中國,廣西壯族自治區,崇左市,大新縣', 107, 23, 'Daxin');
INSERT INTO "public"."Sys_Region" VALUES (2290, '451425', '天等縣', 451400, 3, '中國,廣西壯族自治區,崇左市,天等縣', 107, 23, 'Tiandeng');
INSERT INTO "public"."Sys_Region" VALUES (2291, '451481', '憑祥市', 451400, 3, '中國,廣西壯族自治區,崇左市,憑祥市', 107, 22, 'Pingxiang');
INSERT INTO "public"."Sys_Region" VALUES (2292, '460000', '海南省', 100000, 1, '中國,海南省', 110, 20, 'Hainan');
INSERT INTO "public"."Sys_Region" VALUES (2293, '460100', '海口市', 460000, 2, '中國,海南省,海口市', 110, 20, 'Haikou');
INSERT INTO "public"."Sys_Region" VALUES (2294, '460105', '秀英區', 460100, 3, '中國,海南省,海口市,秀英區', 110, 20, 'Xiuying');
INSERT INTO "public"."Sys_Region" VALUES (2295, '460106', '龍華區', 460100, 3, '中國,海南省,海口市,龍華區', 110, 20, 'Longhua');
INSERT INTO "public"."Sys_Region" VALUES (2296, '460107', '瓊山區', 460100, 3, '中國,海南省,海口市,瓊山區', 110, 20, 'Qiongshan');
INSERT INTO "public"."Sys_Region" VALUES (2297, '460108', '美蘭區', 460100, 3, '中國,海南省,海口市,美蘭區', 110, 20, 'Meilan');
INSERT INTO "public"."Sys_Region" VALUES (2298, '460200', '三亞市', 460000, 2, '中國,海南省,三亞市', 110, 18, 'Sanya');
INSERT INTO "public"."Sys_Region" VALUES (2299, '460202', '海棠區', 460200, 3, '中國,海南省,三亞市,海棠區', 110, 18, 'Haitang');
INSERT INTO "public"."Sys_Region" VALUES (2300, '460203', '吉陽區', 460200, 3, '中國,海南省,三亞市,吉陽區', 110, 18, 'Jiyang');
INSERT INTO "public"."Sys_Region" VALUES (2301, '460204', '天涯區', 460200, 3, '中國,海南省,三亞市,天涯區', 110, 18, 'Tianya');
INSERT INTO "public"."Sys_Region" VALUES (2302, '460205', '崖州區', 460200, 3, '中國,海南省,三亞市,崖州區', 110, 18, 'Yazhou');
INSERT INTO "public"."Sys_Region" VALUES (2303, '460300', '三沙市', 460000, 2, '中國,海南省,三沙市', 112, 17, 'Sansha');
INSERT INTO "public"."Sys_Region" VALUES (2304, '460321', '西沙群島', 460300, 3, '中國,海南省,三沙市,西沙群島', 112, 16, 'Xisha Islands');
INSERT INTO "public"."Sys_Region" VALUES (2305, '460322', '南沙群島', 460300, 3, '中國,海南省,三沙市,南沙群島', 117, 11, 'Nansha Islands');
INSERT INTO "public"."Sys_Region" VALUES (2306, '460323', '中沙群島', 460300, 3, '中國,海南省,三沙市,中沙群島', 118, 15, 'Zhongsha Islands');
INSERT INTO "public"."Sys_Region" VALUES (2307, '469000', '直轄縣級', 460000, 2, '中國,海南省,直轄縣級', 110, 19, '');
INSERT INTO "public"."Sys_Region" VALUES (2308, '469001', '五指山市', 469000, 3, '中國,海南省,直轄縣級,五指山市', 110, 19, 'Wuzhishan');
INSERT INTO "public"."Sys_Region" VALUES (2309, '469002', '瓊海市', 469000, 3, '中國,海南省,直轄縣級,瓊海市', 110, 19, 'Qionghai');
INSERT INTO "public"."Sys_Region" VALUES (2310, '469003', '儋州市', 469000, 3, '中國,海南省,直轄縣級,儋州市', 110, 20, 'Danzhou');
INSERT INTO "public"."Sys_Region" VALUES (2311, '469005', '文昌市', 469000, 3, '中國,海南省,直轄縣級,文昌市', 111, 20, 'Wenchang');
INSERT INTO "public"."Sys_Region" VALUES (2312, '469006', '萬寧市', 469000, 3, '中國,海南省,直轄縣級,萬寧市', 110, 19, 'Wanning');
INSERT INTO "public"."Sys_Region" VALUES (2313, '469007', '東方市', 469000, 3, '中國,海南省,直轄縣級,東方市', 109, 19, 'Dongfang');
INSERT INTO "public"."Sys_Region" VALUES (2314, '469021', '定安縣', 469000, 3, '中國,海南省,直轄縣級,定安縣', 110, 20, 'Dingan');
INSERT INTO "public"."Sys_Region" VALUES (2315, '469022', '屯昌縣', 469000, 3, '中國,海南省,直轄縣級,屯昌縣', 110, 19, 'Tunchang');
INSERT INTO "public"."Sys_Region" VALUES (2316, '469023', '澄邁縣', 469000, 3, '中國,海南省,直轄縣級,澄邁縣', 110, 20, 'Chengmai');
INSERT INTO "public"."Sys_Region" VALUES (2317, '469024', '臨高縣', 469000, 3, '中國,海南省,直轄縣級,臨高縣', 110, 20, 'Lingao');
INSERT INTO "public"."Sys_Region" VALUES (2318, '469025', '白沙黎族自治縣', 469000, 3, '中國,海南省,直轄縣級,白沙黎族自治縣', 109, 19, 'Baisha');
INSERT INTO "public"."Sys_Region" VALUES (2319, '469026', '昌江黎族自治縣', 469000, 3, '中國,海南省,直轄縣級,昌江黎族自治縣', 109, 19, 'Changjiang');
INSERT INTO "public"."Sys_Region" VALUES (2320, '469027', '樂東黎族自治縣', 469000, 3, '中國,海南省,直轄縣級,樂東黎族自治縣', 109, 19, 'Ledong');
INSERT INTO "public"."Sys_Region" VALUES (2321, '469028', '陵水黎族自治縣', 469000, 3, '中國,海南省,直轄縣級,陵水黎族自治縣', 110, 19, 'Lingshui');
INSERT INTO "public"."Sys_Region" VALUES (2322, '469029', '保亭黎族苗族自治縣', 469000, 3, '中國,海南省,直轄縣級,保亭黎族苗族自治縣', 110, 19, 'Baoting');
INSERT INTO "public"."Sys_Region" VALUES (2323, '469030', '瓊中黎族苗族自治縣', 469000, 3, '中國,海南省,直轄縣級,瓊中黎族苗族自治縣', 110, 19, 'Qiongzhong');
INSERT INTO "public"."Sys_Region" VALUES (2324, '500000', '重慶市', 100000, 1, '中國,重慶', 107, 30, 'Chongqing');
INSERT INTO "public"."Sys_Region" VALUES (2325, '500100', '重慶市', 500000, 2, '中國,重慶,重慶市', 107, 30, 'Chongqing');
INSERT INTO "public"."Sys_Region" VALUES (2326, '500101', '萬州區', 500100, 3, '中國,重慶,重慶市,萬州區', 108, 31, 'Wanzhou');
INSERT INTO "public"."Sys_Region" VALUES (2327, '500102', '涪陵區', 500100, 3, '中國,重慶,重慶市,涪陵區', 107, 30, 'Fuling');
INSERT INTO "public"."Sys_Region" VALUES (2328, '500103', '渝中區', 500100, 3, '中國,重慶,重慶市,渝中區', 107, 30, 'Yuzhong');
INSERT INTO "public"."Sys_Region" VALUES (2329, '500104', '大渡口區', 500100, 3, '中國,重慶,重慶市,大渡口區', 106, 29, 'Dadukou');
INSERT INTO "public"."Sys_Region" VALUES (2330, '500105', '江北區', 500100, 3, '中國,重慶,重慶市,江北區', 107, 30, 'Jiangbei');
INSERT INTO "public"."Sys_Region" VALUES (2331, '500106', '沙坪壩區', 500100, 3, '中國,重慶,重慶市,沙坪壩區', 106, 30, 'Shapingba');
INSERT INTO "public"."Sys_Region" VALUES (2332, '500107', '九龍坡區', 500100, 3, '中國,重慶,重慶市,九龍坡區', 107, 30, 'Jiulongpo');
INSERT INTO "public"."Sys_Region" VALUES (2333, '500108', '南岸區', 500100, 3, '中國,重慶,重慶市,南岸區', 107, 30, 'Nanan');
INSERT INTO "public"."Sys_Region" VALUES (2334, '500109', '北碚區', 500100, 3, '中國,重慶,重慶市,北碚區', 106, 30, 'Beibei');
INSERT INTO "public"."Sys_Region" VALUES (2335, '500110', '綦江區', 500100, 3, '中國,重慶,重慶市,綦江區', 107, 29, 'Qijiang');
INSERT INTO "public"."Sys_Region" VALUES (2336, '500111', '大足區', 500100, 3, '中國,重慶,重慶市,大足區', 106, 29, 'Dazu');
INSERT INTO "public"."Sys_Region" VALUES (2337, '500112', '渝北區', 500100, 3, '中國,重慶,重慶市,渝北區', 107, 30, 'Yubei');
INSERT INTO "public"."Sys_Region" VALUES (2338, '500113', '巴南區', 500100, 3, '中國,重慶,重慶市,巴南區', 107, 29, 'Banan');
INSERT INTO "public"."Sys_Region" VALUES (2339, '500114', '黔江區', 500100, 3, '中國,重慶,重慶市,黔江區', 109, 30, 'Qianjiang');
INSERT INTO "public"."Sys_Region" VALUES (2340, '500115', '長壽區', 500100, 3, '中國,重慶,重慶市,長壽區', 107, 30, 'Changshou');
INSERT INTO "public"."Sys_Region" VALUES (2341, '500116', '江津區', 500100, 3, '中國,重慶,重慶市,江津區', 106, 29, 'Jiangjin');
INSERT INTO "public"."Sys_Region" VALUES (2342, '500117', '合川區', 500100, 3, '中國,重慶,重慶市,合川區', 106, 30, 'Hechuan');
INSERT INTO "public"."Sys_Region" VALUES (2343, '500118', '永川區', 500100, 3, '中國,重慶,重慶市,永川區', 106, 29, 'Yongchuan');
INSERT INTO "public"."Sys_Region" VALUES (2344, '500119', '南川區', 500100, 3, '中國,重慶,重慶市,南川區', 107, 29, 'Nanchuan');
INSERT INTO "public"."Sys_Region" VALUES (2345, '500120', '璧山區', 500100, 3, '中國,重慶,重慶市,璧山區', 106, 30, 'Bishan');
INSERT INTO "public"."Sys_Region" VALUES (2346, '500151', '銅梁區', 500100, 3, '中國,重慶,重慶市,銅梁區', 106, 30, 'Tongliang');
INSERT INTO "public"."Sys_Region" VALUES (2347, '500223', '潼南縣', 500100, 3, '中國,重慶,重慶市,潼南縣', 106, 30, 'Tongnan');
INSERT INTO "public"."Sys_Region" VALUES (2348, '500226', '榮昌縣', 500100, 3, '中國,重慶,重慶市,榮昌縣', 106, 29, 'Rongchang');
INSERT INTO "public"."Sys_Region" VALUES (2349, '500228', '梁平縣', 500100, 3, '中國,重慶,重慶市,梁平縣', 108, 31, 'Liangping');
INSERT INTO "public"."Sys_Region" VALUES (2350, '500229', '城口縣', 500100, 3, '中國,重慶,重慶市,城口縣', 109, 32, 'Chengkou');
INSERT INTO "public"."Sys_Region" VALUES (2351, '500230', '豐都縣', 500100, 3, '中國,重慶,重慶市,豐都縣', 108, 30, 'Fengdu');
INSERT INTO "public"."Sys_Region" VALUES (2352, '500231', '墊江縣', 500100, 3, '中國,重慶,重慶市,墊江縣', 107, 30, 'Dianjiang');
INSERT INTO "public"."Sys_Region" VALUES (2353, '500232', '武隆縣', 500100, 3, '中國,重慶,重慶市,武隆縣', 108, 29, 'Wulong');
INSERT INTO "public"."Sys_Region" VALUES (2354, '500233', '忠縣', 500100, 3, '中國,重慶,重慶市,忠縣', 108, 30, 'Zhongxian');
INSERT INTO "public"."Sys_Region" VALUES (2355, '500234', '開縣', 500100, 3, '中國,重慶,重慶市,開縣', 108, 31, 'Kaixian');
INSERT INTO "public"."Sys_Region" VALUES (2356, '500235', '云陽縣', 500100, 3, '中國,重慶,重慶市,云陽縣', 109, 31, 'Yunyang');
INSERT INTO "public"."Sys_Region" VALUES (2357, '500236', '奉節縣', 500100, 3, '中國,重慶,重慶市,奉節縣', 109, 31, 'Fengjie');
INSERT INTO "public"."Sys_Region" VALUES (2358, '500237', '巫山縣', 500100, 3, '中國,重慶,重慶市,巫山縣', 110, 31, 'Wushan');
INSERT INTO "public"."Sys_Region" VALUES (2359, '500238', '巫溪縣', 500100, 3, '中國,重慶,重慶市,巫溪縣', 110, 31, 'Wuxi');
INSERT INTO "public"."Sys_Region" VALUES (2360, '500240', '石柱土家族自治縣', 500100, 3, '中國,重慶,重慶市,石柱土家族自治縣', 108, 30, 'Shizhu');
INSERT INTO "public"."Sys_Region" VALUES (2361, '500241', '秀山土家族苗族自治縣', 500100, 3, '中國,重慶,重慶市,秀山土家族苗族自治縣', 109, 28, 'Xiushan');
INSERT INTO "public"."Sys_Region" VALUES (2362, '500242', '酉陽土家族苗族自治縣', 500100, 3, '中國,重慶,重慶市,酉陽土家族苗族自治縣', 109, 29, 'Youyang');
INSERT INTO "public"."Sys_Region" VALUES (2363, '500243', '彭水苗族土家族自治縣', 500100, 3, '中國,重慶,重慶市,彭水苗族土家族自治縣', 108, 29, 'Pengshui');
INSERT INTO "public"."Sys_Region" VALUES (2364, '500300', '兩江新區', 500000, 2, '中國,重慶,兩江新區', 106, 30, 'Liangjiangxinqu');
INSERT INTO "public"."Sys_Region" VALUES (2365, '500301', '北部新區', 500300, 3, '中國,重慶,兩江新區,北部新區', 106, 30, 'Beibuxinqu');
INSERT INTO "public"."Sys_Region" VALUES (2366, '500302', '保稅港區', 500300, 3, '中國,重慶,兩江新區,保稅港區', 107, 30, 'Baoshuigangqu');
INSERT INTO "public"."Sys_Region" VALUES (2367, '500303', '工業園區', 500300, 3, '中國,重慶,兩江新區,工業園區', 107, 30, 'Gongyeyuanqu');
INSERT INTO "public"."Sys_Region" VALUES (2368, '510000', '四川省', 100000, 1, '中國,四川省', 104, 31, 'Sichuan');
INSERT INTO "public"."Sys_Region" VALUES (2369, '510100', '成都市', 510000, 2, '中國,四川省,成都市', 104, 31, 'Chengdu');
INSERT INTO "public"."Sys_Region" VALUES (2370, '510104', '錦江區', 510100, 3, '中國,四川省,成都市,錦江區', 104, 31, 'Jinjiang');
INSERT INTO "public"."Sys_Region" VALUES (2371, '510105', '青羊區', 510100, 3, '中國,四川省,成都市,青羊區', 104, 31, 'Qingyang');
INSERT INTO "public"."Sys_Region" VALUES (2372, '510106', '金牛區', 510100, 3, '中國,四川省,成都市,金牛區', 104, 31, 'Jinniu');
INSERT INTO "public"."Sys_Region" VALUES (2373, '510107', '武侯區', 510100, 3, '中國,四川省,成都市,武侯區', 104, 31, 'Wuhou');
INSERT INTO "public"."Sys_Region" VALUES (2374, '510108', '成華區', 510100, 3, '中國,四川省,成都市,成華區', 104, 31, 'Chenghua');
INSERT INTO "public"."Sys_Region" VALUES (2375, '510112', '龍泉驛區', 510100, 3, '中國,四川省,成都市,龍泉驛區', 104, 31, 'Longquanyi');
INSERT INTO "public"."Sys_Region" VALUES (2376, '510113', '青白江區', 510100, 3, '中國,四川省,成都市,青白江區', 104, 31, 'Qingbaijiang');
INSERT INTO "public"."Sys_Region" VALUES (2377, '510114', '新都區', 510100, 3, '中國,四川省,成都市,新都區', 104, 31, 'Xindu');
INSERT INTO "public"."Sys_Region" VALUES (2378, '510115', '溫江區', 510100, 3, '中國,四川省,成都市,溫江區', 104, 31, 'Wenjiang');
INSERT INTO "public"."Sys_Region" VALUES (2379, '510121', '金堂縣', 510100, 3, '中國,四川省,成都市,金堂縣', 104, 31, 'Jintang');
INSERT INTO "public"."Sys_Region" VALUES (2380, '510122', '雙流縣', 510100, 3, '中國,四川省,成都市,雙流縣', 104, 31, 'Shuangliu');
INSERT INTO "public"."Sys_Region" VALUES (2381, '510124', '郫縣', 510100, 3, '中國,四川省,成都市,郫縣', 104, 31, 'Pixian');
INSERT INTO "public"."Sys_Region" VALUES (2382, '510129', '大邑縣', 510100, 3, '中國,四川省,成都市,大邑縣', 104, 31, 'Dayi');
INSERT INTO "public"."Sys_Region" VALUES (2383, '510131', '蒲江縣', 510100, 3, '中國,四川省,成都市,蒲江縣', 104, 30, 'Pujiang');
INSERT INTO "public"."Sys_Region" VALUES (2384, '510132', '新津縣', 510100, 3, '中國,四川省,成都市,新津縣', 104, 30, 'Xinjin');
INSERT INTO "public"."Sys_Region" VALUES (2385, '510181', '都江堰市', 510100, 3, '中國,四川省,成都市,都江堰市', 104, 31, 'Dujiangyan');
INSERT INTO "public"."Sys_Region" VALUES (2386, '510182', '彭州市', 510100, 3, '中國,四川省,成都市,彭州市', 104, 31, 'Pengzhou');
INSERT INTO "public"."Sys_Region" VALUES (2387, '510183', '邛崍市', 510100, 3, '中國,四川省,成都市,邛崍市', 103, 30, 'Qionglai');
INSERT INTO "public"."Sys_Region" VALUES (2388, '510184', '崇州市', 510100, 3, '中國,四川省,成都市,崇州市', 104, 31, 'Chongzhou');
INSERT INTO "public"."Sys_Region" VALUES (2389, '510300', '自貢市', 510000, 2, '中國,四川省,自貢市', 105, 29, 'Zigong');
INSERT INTO "public"."Sys_Region" VALUES (2390, '510302', '自流井區', 510300, 3, '中國,四川省,自貢市,自流井區', 105, 29, 'Ziliujing');
INSERT INTO "public"."Sys_Region" VALUES (2391, '510303', '貢井區', 510300, 3, '中國,四川省,自貢市,貢井區', 105, 29, 'Gongjing');
INSERT INTO "public"."Sys_Region" VALUES (2392, '510304', '大安區', 510300, 3, '中國,四川省,自貢市,大安區', 105, 29, 'Daan');
INSERT INTO "public"."Sys_Region" VALUES (2393, '510311', '沿灘區', 510300, 3, '中國,四川省,自貢市,沿灘區', 105, 29, 'Yantan');
INSERT INTO "public"."Sys_Region" VALUES (2394, '510321', '榮縣', 510300, 3, '中國,四川省,自貢市,榮縣', 104, 29, 'Rongxian');
INSERT INTO "public"."Sys_Region" VALUES (2395, '510322', '富順縣', 510300, 3, '中國,四川省,自貢市,富順縣', 105, 29, 'Fushun');
INSERT INTO "public"."Sys_Region" VALUES (2396, '510400', '攀枝花市', 510000, 2, '中國,四川省,攀枝花市', 102, 27, 'Panzhihua');
INSERT INTO "public"."Sys_Region" VALUES (2397, '510402', '東區', 510400, 3, '中國,四川省,攀枝花市,東區', 102, 27, 'Dongqu');
INSERT INTO "public"."Sys_Region" VALUES (2398, '510403', '西區', 510400, 3, '中國,四川省,攀枝花市,西區', 102, 27, 'Xiqu');
INSERT INTO "public"."Sys_Region" VALUES (2399, '510411', '仁和區', 510400, 3, '中國,四川省,攀枝花市,仁和區', 102, 26, 'Renhe');
INSERT INTO "public"."Sys_Region" VALUES (2400, '510421', '米易縣', 510400, 3, '中國,四川省,攀枝花市,米易縣', 102, 27, 'Miyi');
INSERT INTO "public"."Sys_Region" VALUES (2401, '510422', '鹽邊縣', 510400, 3, '中國,四川省,攀枝花市,鹽邊縣', 102, 27, 'Yanbian');
INSERT INTO "public"."Sys_Region" VALUES (2402, '510500', '瀘州市', 510000, 2, '中國,四川省,瀘州市', 105, 29, 'Luzhou');
INSERT INTO "public"."Sys_Region" VALUES (2403, '510502', '江陽區', 510500, 3, '中國,四川省,瀘州市,江陽區', 105, 29, 'Jiangyang');
INSERT INTO "public"."Sys_Region" VALUES (2404, '510503', '納溪區', 510500, 3, '中國,四川省,瀘州市,納溪區', 105, 29, 'Naxi');
INSERT INTO "public"."Sys_Region" VALUES (2405, '510504', '龍馬潭區', 510500, 3, '中國,四川省,瀘州市,龍馬潭區', 105, 29, 'Longmatan');
INSERT INTO "public"."Sys_Region" VALUES (2406, '510521', '瀘縣', 510500, 3, '中國,四川省,瀘州市,瀘縣', 105, 29, 'Luxian');
INSERT INTO "public"."Sys_Region" VALUES (2407, '510522', '合江縣', 510500, 3, '中國,四川省,瀘州市,合江縣', 106, 29, 'Hejiang');
INSERT INTO "public"."Sys_Region" VALUES (2408, '510524', '敘永縣', 510500, 3, '中國,四川省,瀘州市,敘永縣', 105, 28, 'Xuyong');
INSERT INTO "public"."Sys_Region" VALUES (2409, '510525', '古藺縣', 510500, 3, '中國,四川省,瀘州市,古藺縣', 106, 28, 'Gulin');
INSERT INTO "public"."Sys_Region" VALUES (2410, '510600', '德陽市', 510000, 2, '中國,四川省,德陽市', 104, 31, 'Deyang');
INSERT INTO "public"."Sys_Region" VALUES (2411, '510603', '旌陽區', 510600, 3, '中國,四川省,德陽市,旌陽區', 104, 31, 'Jingyang');
INSERT INTO "public"."Sys_Region" VALUES (2412, '510623', '中江縣', 510600, 3, '中國,四川省,德陽市,中江縣', 105, 31, 'Zhongjiang');
INSERT INTO "public"."Sys_Region" VALUES (2413, '510626', '羅江縣', 510600, 3, '中國,四川省,德陽市,羅江縣', 105, 31, 'Luojiang');
INSERT INTO "public"."Sys_Region" VALUES (2414, '510681', '廣漢市', 510600, 3, '中國,四川省,德陽市,廣漢市', 104, 31, 'Guanghan');
INSERT INTO "public"."Sys_Region" VALUES (2415, '510682', '什邡市', 510600, 3, '中國,四川省,德陽市,什邡市', 104, 31, 'Shifang');
INSERT INTO "public"."Sys_Region" VALUES (2416, '510683', '綿竹市', 510600, 3, '中國,四川省,德陽市,綿竹市', 104, 31, 'Mianzhu');
INSERT INTO "public"."Sys_Region" VALUES (2417, '510700', '綿陽市', 510000, 2, '中國,四川省,綿陽市', 105, 31, 'Mianyang');
INSERT INTO "public"."Sys_Region" VALUES (2418, '510703', '涪城區', 510700, 3, '中國,四川省,綿陽市,涪城區', 105, 31, 'Fucheng');
INSERT INTO "public"."Sys_Region" VALUES (2419, '510704', '游仙區', 510700, 3, '中國,四川省,綿陽市,游仙區', 105, 31, 'Youxian');
INSERT INTO "public"."Sys_Region" VALUES (2420, '510722', '三臺縣', 510700, 3, '中國,四川省,綿陽市,三臺縣', 105, 31, 'Santai');
INSERT INTO "public"."Sys_Region" VALUES (2421, '510723', '鹽亭縣', 510700, 3, '中國,四川省,綿陽市,鹽亭縣', 105, 31, 'Yanting');
INSERT INTO "public"."Sys_Region" VALUES (2422, '510724', '安縣', 510700, 3, '中國,四川省,綿陽市,安縣', 105, 32, 'Anxian');
INSERT INTO "public"."Sys_Region" VALUES (2423, '510725', '梓潼縣', 510700, 3, '中國,四川省,綿陽市,梓潼縣', 105, 32, 'Zitong');
INSERT INTO "public"."Sys_Region" VALUES (2424, '510726', '北川羌族自治縣', 510700, 3, '中國,四川省,綿陽市,北川羌族自治縣', 104, 32, 'Beichuan');
INSERT INTO "public"."Sys_Region" VALUES (2425, '510727', '平武縣', 510700, 3, '中國,四川省,綿陽市,平武縣', 105, 32, 'Pingwu');
INSERT INTO "public"."Sys_Region" VALUES (2426, '510781', '江油市', 510700, 3, '中國,四川省,綿陽市,江油市', 105, 32, 'Jiangyou');
INSERT INTO "public"."Sys_Region" VALUES (2427, '510800', '廣元市', 510000, 2, '中國,四川省,廣元市', 106, 32, 'Guangyuan');
INSERT INTO "public"."Sys_Region" VALUES (2428, '510802', '利州區', 510800, 3, '中國,四川省,廣元市,利州區', 106, 32, 'Lizhou');
INSERT INTO "public"."Sys_Region" VALUES (2429, '510811', '昭化區', 510800, 3, '中國,四川省,廣元市,昭化區', 106, 32, 'Zhaohua');
INSERT INTO "public"."Sys_Region" VALUES (2430, '510812', '朝天區', 510800, 3, '中國,四川省,廣元市,朝天區', 106, 33, 'Chaotian');
INSERT INTO "public"."Sys_Region" VALUES (2431, '510821', '旺蒼縣', 510800, 3, '中國,四川省,廣元市,旺蒼縣', 106, 32, 'Wangcang');
INSERT INTO "public"."Sys_Region" VALUES (2432, '510822', '青川縣', 510800, 3, '中國,四川省,廣元市,青川縣', 105, 33, 'Qingchuan');
INSERT INTO "public"."Sys_Region" VALUES (2433, '510823', '劍閣縣', 510800, 3, '中國,四川省,廣元市,劍閣縣', 106, 32, 'Jiange');
INSERT INTO "public"."Sys_Region" VALUES (2434, '510824', '蒼溪縣', 510800, 3, '中國,四川省,廣元市,蒼溪縣', 106, 32, 'Cangxi');
INSERT INTO "public"."Sys_Region" VALUES (2435, '510900', '遂寧市', 510000, 2, '中國,四川省,遂寧市', 106, 31, 'Suining');
INSERT INTO "public"."Sys_Region" VALUES (2436, '510903', '船山區', 510900, 3, '中國,四川省,遂寧市,船山區', 106, 30, 'Chuanshan');
INSERT INTO "public"."Sys_Region" VALUES (2437, '510904', '安居區', 510900, 3, '中國,四川省,遂寧市,安居區', 105, 30, 'Anju');
INSERT INTO "public"."Sys_Region" VALUES (2438, '510921', '蓬溪縣', 510900, 3, '中國,四川省,遂寧市,蓬溪縣', 106, 31, 'Pengxi');
INSERT INTO "public"."Sys_Region" VALUES (2439, '510922', '射洪縣', 510900, 3, '中國,四川省,遂寧市,射洪縣', 105, 31, 'Shehong');
INSERT INTO "public"."Sys_Region" VALUES (2440, '510923', '大英縣', 510900, 3, '中國,四川省,遂寧市,大英縣', 105, 31, 'Daying');
INSERT INTO "public"."Sys_Region" VALUES (2441, '511000', '內江市', 510000, 2, '中國,四川省,內江市', 105, 30, 'Neijiang');
INSERT INTO "public"."Sys_Region" VALUES (2442, '511002', '市中區', 511000, 3, '中國,四川省,內江市,市中區', 105, 30, 'Shizhongqu');
INSERT INTO "public"."Sys_Region" VALUES (2443, '511011', '東興區', 511000, 3, '中國,四川省,內江市,東興區', 105, 30, 'Dongxing');
INSERT INTO "public"."Sys_Region" VALUES (2444, '511024', '威遠縣', 511000, 3, '中國,四川省,內江市,威遠縣', 105, 30, 'Weiyuan');
INSERT INTO "public"."Sys_Region" VALUES (2445, '511025', '資中縣', 511000, 3, '中國,四川省,內江市,資中縣', 105, 30, 'Zizhong');
INSERT INTO "public"."Sys_Region" VALUES (2446, '511028', '隆昌縣', 511000, 3, '中國,四川省,內江市,隆昌縣', 105, 29, 'Longchang');
INSERT INTO "public"."Sys_Region" VALUES (2447, '511100', '樂山市', 510000, 2, '中國,四川省,樂山市', 104, 30, 'Leshan');
INSERT INTO "public"."Sys_Region" VALUES (2448, '511102', '市中區', 511100, 3, '中國,四川省,樂山市,市中區', 104, 30, 'Shizhongqu');
INSERT INTO "public"."Sys_Region" VALUES (2449, '511111', '沙灣區', 511100, 3, '中國,四川省,樂山市,沙灣區', 104, 29, 'Shawan');
INSERT INTO "public"."Sys_Region" VALUES (2450, '511112', '五通橋區', 511100, 3, '中國,四川省,樂山市,五通橋區', 104, 29, 'Wutongqiao');
INSERT INTO "public"."Sys_Region" VALUES (2451, '511113', '金口河區', 511100, 3, '中國,四川省,樂山市,金口河區', 103, 29, 'Jinkouhe');
INSERT INTO "public"."Sys_Region" VALUES (2452, '511123', '犍為縣', 511100, 3, '中國,四川省,樂山市,犍為縣', 104, 29, 'Qianwei');
INSERT INTO "public"."Sys_Region" VALUES (2453, '511124', '井研縣', 511100, 3, '中國,四川省,樂山市,井研縣', 104, 30, 'Jingyan');
INSERT INTO "public"."Sys_Region" VALUES (2454, '511126', '夾江縣', 511100, 3, '中國,四川省,樂山市,夾江縣', 104, 30, 'Jiajiang');
INSERT INTO "public"."Sys_Region" VALUES (2455, '511129', '沐川縣', 511100, 3, '中國,四川省,樂山市,沐川縣', 104, 29, 'Muchuan');
INSERT INTO "public"."Sys_Region" VALUES (2456, '511132', '峨邊彝族自治縣', 511100, 3, '中國,四川省,樂山市,峨邊彝族自治縣', 103, 29, 'Ebian');
INSERT INTO "public"."Sys_Region" VALUES (2457, '511133', '馬邊彝族自治縣', 511100, 3, '中國,四川省,樂山市,馬邊彝族自治縣', 104, 29, 'Mabian');
INSERT INTO "public"."Sys_Region" VALUES (2458, '511181', '峨眉山市', 511100, 3, '中國,四川省,樂山市,峨眉山市', 103, 30, 'Emeishan');
INSERT INTO "public"."Sys_Region" VALUES (2459, '511300', '南充市', 510000, 2, '中國,四川省,南充市', 106, 31, 'Nanchong');
INSERT INTO "public"."Sys_Region" VALUES (2460, '511302', '順慶區', 511300, 3, '中國,四川省,南充市,順慶區', 106, 31, 'Shunqing');
INSERT INTO "public"."Sys_Region" VALUES (2461, '511303', '高坪區', 511300, 3, '中國,四川省,南充市,高坪區', 106, 31, 'Gaoping');
INSERT INTO "public"."Sys_Region" VALUES (2462, '511304', '嘉陵區', 511300, 3, '中國,四川省,南充市,嘉陵區', 106, 31, 'Jialing');
INSERT INTO "public"."Sys_Region" VALUES (2463, '511321', '南部縣', 511300, 3, '中國,四川省,南充市,南部縣', 106, 31, 'Nanbu');
INSERT INTO "public"."Sys_Region" VALUES (2464, '511322', '營山縣', 511300, 3, '中國,四川省,南充市,營山縣', 107, 31, 'Yingshan');
INSERT INTO "public"."Sys_Region" VALUES (2465, '511323', '蓬安縣', 511300, 3, '中國,四川省,南充市,蓬安縣', 106, 31, 'Pengan');
INSERT INTO "public"."Sys_Region" VALUES (2466, '511324', '儀隴縣', 511300, 3, '中國,四川省,南充市,儀隴縣', 106, 31, 'Yilong');
INSERT INTO "public"."Sys_Region" VALUES (2467, '511325', '西充縣', 511300, 3, '中國,四川省,南充市,西充縣', 106, 31, 'Xichong');
INSERT INTO "public"."Sys_Region" VALUES (2468, '511381', '閬中市', 511300, 3, '中國,四川省,南充市,閬中市', 106, 32, 'Langzhong');
INSERT INTO "public"."Sys_Region" VALUES (2469, '511400', '眉山市', 510000, 2, '中國,四川省,眉山市', 104, 30, 'Meishan');
INSERT INTO "public"."Sys_Region" VALUES (2470, '511402', '東坡區', 511400, 3, '中國,四川省,眉山市,東坡區', 104, 30, 'Dongpo');
INSERT INTO "public"."Sys_Region" VALUES (2471, '511403', '彭山區', 511400, 3, '中國,四川省,眉山市,彭山區', 104, 30, 'Pengshan');
INSERT INTO "public"."Sys_Region" VALUES (2472, '511421', '仁壽縣', 511400, 3, '中國,四川省,眉山市,仁壽縣', 104, 30, 'Renshou');
INSERT INTO "public"."Sys_Region" VALUES (2473, '511423', '洪雅縣', 511400, 3, '中國,四川省,眉山市,洪雅縣', 103, 30, 'Hongya');
INSERT INTO "public"."Sys_Region" VALUES (2474, '511424', '丹棱縣', 511400, 3, '中國,四川省,眉山市,丹棱縣', 104, 30, 'Danling');
INSERT INTO "public"."Sys_Region" VALUES (2475, '511425', '青神縣', 511400, 3, '中國,四川省,眉山市,青神縣', 104, 30, 'Qingshen');
INSERT INTO "public"."Sys_Region" VALUES (2476, '511500', '宜賓市', 510000, 2, '中國,四川省,宜賓市', 105, 29, 'Yibin');
INSERT INTO "public"."Sys_Region" VALUES (2477, '511502', '翠屏區', 511500, 3, '中國,四川省,宜賓市,翠屏區', 105, 29, 'Cuiping');
INSERT INTO "public"."Sys_Region" VALUES (2478, '511503', '南溪區', 511500, 3, '中國,四川省,宜賓市,南溪區', 105, 29, 'Nanxi');
INSERT INTO "public"."Sys_Region" VALUES (2479, '511521', '宜賓縣', 511500, 3, '中國,四川省,宜賓市,宜賓縣', 105, 29, 'Yibin');
INSERT INTO "public"."Sys_Region" VALUES (2480, '511523', '江安縣', 511500, 3, '中國,四川省,宜賓市,江安縣', 105, 29, 'Jiangan');
INSERT INTO "public"."Sys_Region" VALUES (2481, '511524', '長寧縣', 511500, 3, '中國,四川省,宜賓市,長寧縣', 105, 29, 'Changning');
INSERT INTO "public"."Sys_Region" VALUES (2482, '511525', '高縣', 511500, 3, '中國,四川省,宜賓市,高縣', 105, 28, 'Gaoxian');
INSERT INTO "public"."Sys_Region" VALUES (2483, '511526', '珙縣', 511500, 3, '中國,四川省,宜賓市,珙縣', 105, 28, 'Gongxian');
INSERT INTO "public"."Sys_Region" VALUES (2484, '511527', '筠連縣', 511500, 3, '中國,四川省,宜賓市,筠連縣', 105, 28, 'Junlian');
INSERT INTO "public"."Sys_Region" VALUES (2485, '511528', '興文縣', 511500, 3, '中國,四川省,宜賓市,興文縣', 105, 28, 'Xingwen');
INSERT INTO "public"."Sys_Region" VALUES (2486, '511529', '屏山縣', 511500, 3, '中國,四川省,宜賓市,屏山縣', 104, 29, 'Pingshan');
INSERT INTO "public"."Sys_Region" VALUES (2487, '511600', '廣安市', 510000, 2, '中國,四川省,廣安市', 107, 30, 'Guangan');
INSERT INTO "public"."Sys_Region" VALUES (2488, '511602', '廣安區', 511600, 3, '中國,四川省,廣安市,廣安區', 107, 30, 'Guangan');
INSERT INTO "public"."Sys_Region" VALUES (2489, '511603', '前鋒區', 511600, 3, '中國,四川省,廣安市,前鋒區', 107, 30, 'Qianfeng');
INSERT INTO "public"."Sys_Region" VALUES (2490, '511621', '岳池縣', 511600, 3, '中國,四川省,廣安市,岳池縣', 106, 31, 'Yuechi');
INSERT INTO "public"."Sys_Region" VALUES (2491, '511622', '武勝縣', 511600, 3, '中國,四川省,廣安市,武勝縣', 106, 30, 'Wusheng');
INSERT INTO "public"."Sys_Region" VALUES (2492, '511623', '鄰水縣', 511600, 3, '中國,四川省,廣安市,鄰水縣', 107, 30, 'Linshui');
INSERT INTO "public"."Sys_Region" VALUES (2493, '511681', '華鎣市', 511600, 3, '中國,四川省,廣安市,華鎣市', 107, 30, 'Huaying');
INSERT INTO "public"."Sys_Region" VALUES (2494, '511700', '達州市', 510000, 2, '中國,四川省,達州市', 108, 31, 'Dazhou');
INSERT INTO "public"."Sys_Region" VALUES (2495, '511702', '通川區', 511700, 3, '中國,四川省,達州市,通川區', 108, 31, 'Tongchuan');
INSERT INTO "public"."Sys_Region" VALUES (2496, '511703', '達川區', 511700, 3, '中國,四川省,達州市,達川區', 108, 31, 'Dachuan');
INSERT INTO "public"."Sys_Region" VALUES (2497, '511722', '宣漢縣', 511700, 3, '中國,四川省,達州市,宣漢縣', 108, 31, 'Xuanhan');
INSERT INTO "public"."Sys_Region" VALUES (2498, '511723', '開江縣', 511700, 3, '中國,四川省,達州市,開江縣', 108, 31, 'Kaijiang');
INSERT INTO "public"."Sys_Region" VALUES (2499, '511724', '大竹縣', 511700, 3, '中國,四川省,達州市,大竹縣', 107, 31, 'Dazhu');
INSERT INTO "public"."Sys_Region" VALUES (2500, '511725', '渠縣', 511700, 3, '中國,四川省,達州市,渠縣', 107, 31, 'Quxian');
INSERT INTO "public"."Sys_Region" VALUES (2501, '511781', '萬源市', 511700, 3, '中國,四川省,達州市,萬源市', 108, 32, 'Wanyuan');
INSERT INTO "public"."Sys_Region" VALUES (2502, '511800', '雅安市', 510000, 2, '中國,四川省,雅安市', 103, 30, 'Yaan');
INSERT INTO "public"."Sys_Region" VALUES (2503, '511802', '雨城區', 511800, 3, '中國,四川省,雅安市,雨城區', 103, 30, 'Yucheng');
INSERT INTO "public"."Sys_Region" VALUES (2504, '511803', '名山區', 511800, 3, '中國,四川省,雅安市,名山區', 103, 30, 'Mingshan');
INSERT INTO "public"."Sys_Region" VALUES (2505, '511822', '滎經縣', 511800, 3, '中國,四川省,雅安市,滎經縣', 103, 30, 'Yingjing');
INSERT INTO "public"."Sys_Region" VALUES (2506, '511823', '漢源縣', 511800, 3, '中國,四川省,雅安市,漢源縣', 103, 29, 'Hanyuan');
INSERT INTO "public"."Sys_Region" VALUES (2507, '511824', '石棉縣', 511800, 3, '中國,四川省,雅安市,石棉縣', 102, 29, 'Shimian');
INSERT INTO "public"."Sys_Region" VALUES (2508, '511825', '天全縣', 511800, 3, '中國,四川省,雅安市,天全縣', 103, 30, 'Tianquan');
INSERT INTO "public"."Sys_Region" VALUES (2509, '511826', '蘆山縣', 511800, 3, '中國,四川省,雅安市,蘆山縣', 103, 30, 'Lushan');
INSERT INTO "public"."Sys_Region" VALUES (2510, '511827', '寶興縣', 511800, 3, '中國,四川省,雅安市,寶興縣', 103, 30, 'Baoxing');
INSERT INTO "public"."Sys_Region" VALUES (2511, '511900', '巴中市', 510000, 2, '中國,四川省,巴中市', 107, 32, 'Bazhong');
INSERT INTO "public"."Sys_Region" VALUES (2512, '511902', '巴州區', 511900, 3, '中國,四川省,巴中市,巴州區', 107, 32, 'Bazhou');
INSERT INTO "public"."Sys_Region" VALUES (2513, '511903', '恩陽區', 511900, 3, '中國,四川省,巴中市,恩陽區', 107, 32, 'Enyang');
INSERT INTO "public"."Sys_Region" VALUES (2514, '511921', '通江縣', 511900, 3, '中國,四川省,巴中市,通江縣', 107, 32, 'Tongjiang');
INSERT INTO "public"."Sys_Region" VALUES (2515, '511922', '南江縣', 511900, 3, '中國,四川省,巴中市,南江縣', 107, 32, 'Nanjiang');
INSERT INTO "public"."Sys_Region" VALUES (2516, '511923', '平昌縣', 511900, 3, '中國,四川省,巴中市,平昌縣', 107, 32, 'Pingchang');
INSERT INTO "public"."Sys_Region" VALUES (2517, '512000', '資陽市', 510000, 2, '中國,四川省,資陽市', 105, 30, 'Ziyang');
INSERT INTO "public"."Sys_Region" VALUES (2518, '512002', '雁江區', 512000, 3, '中國,四川省,資陽市,雁江區', 105, 30, 'Yanjiang');
INSERT INTO "public"."Sys_Region" VALUES (2519, '512021', '安岳縣', 512000, 3, '中國,四川省,資陽市,安岳縣', 105, 30, 'Anyue');
INSERT INTO "public"."Sys_Region" VALUES (2520, '512022', '樂至縣', 512000, 3, '中國,四川省,資陽市,樂至縣', 105, 30, 'Lezhi');
INSERT INTO "public"."Sys_Region" VALUES (2521, '512081', '簡陽市', 512000, 3, '中國,四川省,資陽市,簡陽市', 105, 30, 'Jianyang');
INSERT INTO "public"."Sys_Region" VALUES (2522, '513200', '阿壩藏族羌族自治州', 510000, 2, '中國,四川省,阿壩藏族羌族自治州', 102, 32, 'Aba');
INSERT INTO "public"."Sys_Region" VALUES (2581, '520121', '開陽縣', 520100, 3, '中國,貴州省,貴陽市,開陽縣', 107, 27, 'Kaiyang');
INSERT INTO "public"."Sys_Region" VALUES (2523, '513221', '汶川縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,汶川縣', 104, 31, 'Wenchuan');
INSERT INTO "public"."Sys_Region" VALUES (2524, '513222', '理縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,理縣', 103, 31, 'Lixian');
INSERT INTO "public"."Sys_Region" VALUES (2525, '513223', '茂縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,茂縣', 104, 32, 'Maoxian');
INSERT INTO "public"."Sys_Region" VALUES (2526, '513224', '松潘縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,松潘縣', 104, 33, 'Songpan');
INSERT INTO "public"."Sys_Region" VALUES (2527, '513225', '九寨溝縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,九寨溝縣', 104, 33, 'Jiuzhaigou');
INSERT INTO "public"."Sys_Region" VALUES (2528, '513226', '金川縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,金川縣', 102, 31, 'Jinchuan');
INSERT INTO "public"."Sys_Region" VALUES (2529, '513227', '小金縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,小金縣', 102, 31, 'Xiaojin');
INSERT INTO "public"."Sys_Region" VALUES (2530, '513228', '黑水縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,黑水縣', 103, 32, 'Heishui');
INSERT INTO "public"."Sys_Region" VALUES (2531, '513229', '馬爾康縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,馬爾康縣', 102, 32, 'Maerkang');
INSERT INTO "public"."Sys_Region" VALUES (2532, '513230', '壤塘縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,壤塘縣', 101, 32, 'Rangtang');
INSERT INTO "public"."Sys_Region" VALUES (2533, '513231', '阿壩縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,阿壩縣', 102, 33, 'Aba');
INSERT INTO "public"."Sys_Region" VALUES (2534, '513232', '若爾蓋縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,若爾蓋縣', 103, 34, 'Ruoergai');
INSERT INTO "public"."Sys_Region" VALUES (2535, '513233', '紅原縣', 513200, 3, '中國,四川省,阿壩藏族羌族自治州,紅原縣', 103, 33, 'Hongyuan');
INSERT INTO "public"."Sys_Region" VALUES (2536, '513300', '甘孜藏族自治州', 510000, 2, '中國,四川省,甘孜藏族自治州', 102, 30, 'Garze');
INSERT INTO "public"."Sys_Region" VALUES (2537, '513321', '康定縣', 513300, 3, '中國,四川省,甘孜藏族自治州,康定縣', 102, 30, 'Kangding');
INSERT INTO "public"."Sys_Region" VALUES (2538, '513322', '瀘定縣', 513300, 3, '中國,四川省,甘孜藏族自治州,瀘定縣', 102, 30, 'Luding');
INSERT INTO "public"."Sys_Region" VALUES (2539, '513323', '丹巴縣', 513300, 3, '中國,四川省,甘孜藏族自治州,丹巴縣', 102, 31, 'Danba');
INSERT INTO "public"."Sys_Region" VALUES (2540, '513324', '九龍縣', 513300, 3, '中國,四川省,甘孜藏族自治州,九龍縣', 102, 29, 'Jiulong');
INSERT INTO "public"."Sys_Region" VALUES (2541, '513325', '雅江縣', 513300, 3, '中國,四川省,甘孜藏族自治州,雅江縣', 101, 30, 'Yajiang');
INSERT INTO "public"."Sys_Region" VALUES (2542, '513326', '道孚縣', 513300, 3, '中國,四川省,甘孜藏族自治州,道孚縣', 101, 31, 'Daofu');
INSERT INTO "public"."Sys_Region" VALUES (2543, '513327', '爐霍縣', 513300, 3, '中國,四川省,甘孜藏族自治州,爐霍縣', 101, 31, 'Luhuo');
INSERT INTO "public"."Sys_Region" VALUES (2544, '513328', '甘孜縣', 513300, 3, '中國,四川省,甘孜藏族自治州,甘孜縣', 100, 32, 'Ganzi');
INSERT INTO "public"."Sys_Region" VALUES (2545, '513329', '新龍縣', 513300, 3, '中國,四川省,甘孜藏族自治州,新龍縣', 100, 31, 'Xinlong');
INSERT INTO "public"."Sys_Region" VALUES (2546, '513330', '德格縣', 513300, 3, '中國,四川省,甘孜藏族自治州,德格縣', 99, 32, 'Dege');
INSERT INTO "public"."Sys_Region" VALUES (2547, '513331', '白玉縣', 513300, 3, '中國,四川省,甘孜藏族自治州,白玉縣', 99, 31, 'Baiyu');
INSERT INTO "public"."Sys_Region" VALUES (2548, '513332', '石渠縣', 513300, 3, '中國,四川省,甘孜藏族自治州,石渠縣', 98, 33, 'Shiqu');
INSERT INTO "public"."Sys_Region" VALUES (2549, '513333', '色達縣', 513300, 3, '中國,四川省,甘孜藏族自治州,色達縣', 100, 32, 'Seda');
INSERT INTO "public"."Sys_Region" VALUES (2550, '513334', '理塘縣', 513300, 3, '中國,四川省,甘孜藏族自治州,理塘縣', 100, 30, 'Litang');
INSERT INTO "public"."Sys_Region" VALUES (2551, '513335', '巴塘縣', 513300, 3, '中國,四川省,甘孜藏族自治州,巴塘縣', 99, 30, 'Batang');
INSERT INTO "public"."Sys_Region" VALUES (2552, '513336', '鄉城縣', 513300, 3, '中國,四川省,甘孜藏族自治州,鄉城縣', 100, 29, 'Xiangcheng');
INSERT INTO "public"."Sys_Region" VALUES (2553, '513337', '稻城縣', 513300, 3, '中國,四川省,甘孜藏族自治州,稻城縣', 100, 29, 'Daocheng');
INSERT INTO "public"."Sys_Region" VALUES (2554, '513338', '得榮縣', 513300, 3, '中國,四川省,甘孜藏族自治州,得榮縣', 99, 29, 'Derong');
INSERT INTO "public"."Sys_Region" VALUES (2555, '513400', '涼山彝族自治州', 510000, 2, '中國,四川省,涼山彝族自治州', 102, 28, 'Liangshan');
INSERT INTO "public"."Sys_Region" VALUES (2556, '513401', '西昌市', 513400, 3, '中國,四川省,涼山彝族自治州,西昌市', 102, 28, 'Xichang');
INSERT INTO "public"."Sys_Region" VALUES (2557, '513422', '木里藏族自治縣', 513400, 3, '中國,四川省,涼山彝族自治州,木里藏族自治縣', 101, 28, 'Muli');
INSERT INTO "public"."Sys_Region" VALUES (2558, '513423', '鹽源縣', 513400, 3, '中國,四川省,涼山彝族自治州,鹽源縣', 102, 27, 'Yanyuan');
INSERT INTO "public"."Sys_Region" VALUES (2559, '513424', '德昌縣', 513400, 3, '中國,四川省,涼山彝族自治州,德昌縣', 102, 27, 'Dechang');
INSERT INTO "public"."Sys_Region" VALUES (2560, '513425', '會理縣', 513400, 3, '中國,四川省,涼山彝族自治州,會理縣', 102, 27, 'Huili');
INSERT INTO "public"."Sys_Region" VALUES (2561, '513426', '會東縣', 513400, 3, '中國,四川省,涼山彝族自治州,會東縣', 103, 27, 'Huidong');
INSERT INTO "public"."Sys_Region" VALUES (2562, '513427', '寧南縣', 513400, 3, '中國,四川省,涼山彝族自治州,寧南縣', 103, 27, 'Ningnan');
INSERT INTO "public"."Sys_Region" VALUES (2563, '513428', '普格縣', 513400, 3, '中國,四川省,涼山彝族自治州,普格縣', 103, 27, 'Puge');
INSERT INTO "public"."Sys_Region" VALUES (2564, '513429', '布拖縣', 513400, 3, '中國,四川省,涼山彝族自治州,布拖縣', 103, 28, 'Butuo');
INSERT INTO "public"."Sys_Region" VALUES (2565, '513430', '金陽縣', 513400, 3, '中國,四川省,涼山彝族自治州,金陽縣', 103, 28, 'Jinyang');
INSERT INTO "public"."Sys_Region" VALUES (2566, '513431', '昭覺縣', 513400, 3, '中國,四川省,涼山彝族自治州,昭覺縣', 103, 28, 'Zhaojue');
INSERT INTO "public"."Sys_Region" VALUES (2567, '513432', '喜德縣', 513400, 3, '中國,四川省,涼山彝族自治州,喜德縣', 102, 28, 'Xide');
INSERT INTO "public"."Sys_Region" VALUES (2568, '513433', '冕寧縣', 513400, 3, '中國,四川省,涼山彝族自治州,冕寧縣', 102, 29, 'Mianning');
INSERT INTO "public"."Sys_Region" VALUES (2569, '513434', '越西縣', 513400, 3, '中國,四川省,涼山彝族自治州,越西縣', 103, 29, 'Yuexi');
INSERT INTO "public"."Sys_Region" VALUES (2570, '513435', '甘洛縣', 513400, 3, '中國,四川省,涼山彝族自治州,甘洛縣', 103, 29, 'Ganluo');
INSERT INTO "public"."Sys_Region" VALUES (2571, '513436', '美姑縣', 513400, 3, '中國,四川省,涼山彝族自治州,美姑縣', 103, 28, 'Meigu');
INSERT INTO "public"."Sys_Region" VALUES (2572, '513437', '雷波縣', 513400, 3, '中國,四川省,涼山彝族自治州,雷波縣', 104, 28, 'Leibo');
INSERT INTO "public"."Sys_Region" VALUES (2573, '520000', '貴州省', 100000, 1, '中國,貴州省', 107, 27, 'Guizhou');
INSERT INTO "public"."Sys_Region" VALUES (2574, '520100', '貴陽市', 520000, 2, '中國,貴州省,貴陽市', 107, 27, 'Guiyang');
INSERT INTO "public"."Sys_Region" VALUES (2575, '520102', '南明區', 520100, 3, '中國,貴州省,貴陽市,南明區', 107, 27, 'Nanming');
INSERT INTO "public"."Sys_Region" VALUES (2576, '520103', '云巖區', 520100, 3, '中國,貴州省,貴陽市,云巖區', 107, 27, 'Yunyan');
INSERT INTO "public"."Sys_Region" VALUES (2577, '520111', '花溪區', 520100, 3, '中國,貴州省,貴陽市,花溪區', 107, 26, 'Huaxi');
INSERT INTO "public"."Sys_Region" VALUES (2578, '520112', '烏當區', 520100, 3, '中國,貴州省,貴陽市,烏當區', 107, 27, 'Wudang');
INSERT INTO "public"."Sys_Region" VALUES (2579, '520113', '白云區', 520100, 3, '中國,貴州省,貴陽市,白云區', 107, 27, 'Baiyun');
INSERT INTO "public"."Sys_Region" VALUES (2580, '520115', '觀山湖區', 520100, 3, '中國,貴州省,貴陽市,觀山湖區', 107, 27, 'Guanshanhu');
INSERT INTO "public"."Sys_Region" VALUES (2582, '520122', '息烽縣', 520100, 3, '中國,貴州省,貴陽市,息烽縣', 107, 27, 'Xifeng');
INSERT INTO "public"."Sys_Region" VALUES (2583, '520123', '修文縣', 520100, 3, '中國,貴州省,貴陽市,修文縣', 107, 27, 'Xiuwen');
INSERT INTO "public"."Sys_Region" VALUES (2584, '520181', '清鎮市', 520100, 3, '中國,貴州省,貴陽市,清鎮市', 106, 27, 'Qingzhen');
INSERT INTO "public"."Sys_Region" VALUES (2585, '520200', '六盤水市', 520000, 2, '中國,貴州省,六盤水市', 105, 27, 'Liupanshui');
INSERT INTO "public"."Sys_Region" VALUES (2586, '520201', '鐘山區', 520200, 3, '中國,貴州省,六盤水市,鐘山區', 105, 27, 'Zhongshan');
INSERT INTO "public"."Sys_Region" VALUES (2587, '520203', '六枝特區', 520200, 3, '中國,貴州省,六盤水市,六枝特區', 105, 26, 'Liuzhi');
INSERT INTO "public"."Sys_Region" VALUES (2588, '520221', '水城縣', 520200, 3, '中國,貴州省,六盤水市,水城縣', 105, 27, 'Shuicheng');
INSERT INTO "public"."Sys_Region" VALUES (2589, '520222', '盤縣', 520200, 3, '中國,貴州省,六盤水市,盤縣', 104, 26, 'Panxian');
INSERT INTO "public"."Sys_Region" VALUES (2590, '520300', '遵義市', 520000, 2, '中國,貴州省,遵義市', 107, 28, 'Zunyi');
INSERT INTO "public"."Sys_Region" VALUES (2591, '520302', '紅花崗區', 520300, 3, '中國,貴州省,遵義市,紅花崗區', 107, 28, 'Honghuagang');
INSERT INTO "public"."Sys_Region" VALUES (2592, '520303', '匯川區', 520300, 3, '中國,貴州省,遵義市,匯川區', 107, 28, 'Huichuan');
INSERT INTO "public"."Sys_Region" VALUES (2593, '520321', '遵義縣', 520300, 3, '中國,貴州省,遵義市,遵義縣', 107, 28, 'Zunyi');
INSERT INTO "public"."Sys_Region" VALUES (2594, '520322', '桐梓縣', 520300, 3, '中國,貴州省,遵義市,桐梓縣', 107, 28, 'Tongzi');
INSERT INTO "public"."Sys_Region" VALUES (2595, '520323', '綏陽縣', 520300, 3, '中國,貴州省,遵義市,綏陽縣', 107, 28, 'Suiyang');
INSERT INTO "public"."Sys_Region" VALUES (2596, '520324', '正安縣', 520300, 3, '中國,貴州省,遵義市,正安縣', 107, 29, 'Zhengan');
INSERT INTO "public"."Sys_Region" VALUES (2597, '520325', '道真仡佬族苗族自治縣', 520300, 3, '中國,貴州省,遵義市,道真仡佬族苗族自治縣', 108, 29, 'Daozhen');
INSERT INTO "public"."Sys_Region" VALUES (2598, '520326', '務川仡佬族苗族自治縣', 520300, 3, '中國,貴州省,遵義市,務川仡佬族苗族自治縣', 108, 29, 'Wuchuan');
INSERT INTO "public"."Sys_Region" VALUES (2599, '520327', '鳳岡縣', 520300, 3, '中國,貴州省,遵義市,鳳岡縣', 108, 28, 'Fenggang');
INSERT INTO "public"."Sys_Region" VALUES (2600, '520328', '湄潭縣', 520300, 3, '中國,貴州省,遵義市,湄潭縣', 107, 28, 'Meitan');
INSERT INTO "public"."Sys_Region" VALUES (2601, '520329', '余慶縣', 520300, 3, '中國,貴州省,遵義市,余慶縣', 108, 27, 'Yuqing');
INSERT INTO "public"."Sys_Region" VALUES (2602, '520330', '習水縣', 520300, 3, '中國,貴州省,遵義市,習水縣', 106, 28, 'Xishui');
INSERT INTO "public"."Sys_Region" VALUES (2603, '520381', '赤水市', 520300, 3, '中國,貴州省,遵義市,赤水市', 106, 29, 'Chishui');
INSERT INTO "public"."Sys_Region" VALUES (2604, '520382', '仁懷市', 520300, 3, '中國,貴州省,遵義市,仁懷市', 106, 28, 'Renhuai');
INSERT INTO "public"."Sys_Region" VALUES (2605, '520400', '安順市', 520000, 2, '中國,貴州省,安順市', 106, 26, 'Anshun');
INSERT INTO "public"."Sys_Region" VALUES (2606, '520402', '西秀區', 520400, 3, '中國,貴州省,安順市,西秀區', 106, 26, 'Xixiu');
INSERT INTO "public"."Sys_Region" VALUES (2607, '520421', '平壩區', 520400, 3, '中國,貴州省,安順市,平壩區', 106, 26, 'Pingba');
INSERT INTO "public"."Sys_Region" VALUES (2608, '520422', '普定縣', 520400, 3, '中國,貴州省,安順市,普定縣', 106, 26, 'Puding');
INSERT INTO "public"."Sys_Region" VALUES (2609, '520423', '鎮寧布依族苗族自治縣', 520400, 3, '中國,貴州省,安順市,鎮寧布依族苗族自治縣', 106, 26, 'Zhenning');
INSERT INTO "public"."Sys_Region" VALUES (2610, '520424', '關嶺布依族苗族自治縣', 520400, 3, '中國,貴州省,安順市,關嶺布依族苗族自治縣', 106, 26, 'Guanling');
INSERT INTO "public"."Sys_Region" VALUES (2611, '520425', '紫云苗族布依族自治縣', 520400, 3, '中國,貴州省,安順市,紫云苗族布依族自治縣', 106, 26, 'Ziyun');
INSERT INTO "public"."Sys_Region" VALUES (2612, '520500', '畢節市', 520000, 2, '中國,貴州省,畢節市', 105, 27, 'Bijie');
INSERT INTO "public"."Sys_Region" VALUES (2613, '520502', '七星關區', 520500, 3, '中國,貴州省,畢節市,七星關區', 105, 27, 'Qixingguan');
INSERT INTO "public"."Sys_Region" VALUES (2614, '520521', '大方縣', 520500, 3, '中國,貴州省,畢節市,大方縣', 106, 27, 'Dafang');
INSERT INTO "public"."Sys_Region" VALUES (2615, '520522', '黔西縣', 520500, 3, '中國,貴州省,畢節市,黔西縣', 106, 27, 'Qianxi');
INSERT INTO "public"."Sys_Region" VALUES (2616, '520523', '金沙縣', 520500, 3, '中國,貴州省,畢節市,金沙縣', 106, 27, 'Jinsha');
INSERT INTO "public"."Sys_Region" VALUES (2617, '520524', '織金縣', 520500, 3, '中國,貴州省,畢節市,織金縣', 106, 27, 'Zhijin');
INSERT INTO "public"."Sys_Region" VALUES (2618, '520525', '納雍縣', 520500, 3, '中國,貴州省,畢節市,納雍縣', 105, 27, 'Nayong');
INSERT INTO "public"."Sys_Region" VALUES (2619, '520526', '威寧彝族回族苗族自治縣', 520500, 3, '中國,貴州省,畢節市,威寧彝族回族苗族自治縣', 104, 27, 'Weining');
INSERT INTO "public"."Sys_Region" VALUES (2620, '520527', '赫章縣', 520500, 3, '中國,貴州省,畢節市,赫章縣', 105, 27, 'Hezhang');
INSERT INTO "public"."Sys_Region" VALUES (2621, '520600', '銅仁市', 520000, 2, '中國,貴州省,銅仁市', 109, 28, 'Tongren');
INSERT INTO "public"."Sys_Region" VALUES (2622, '520602', '碧江區', 520600, 3, '中國,貴州省,銅仁市,碧江區', 109, 28, 'Bijiang');
INSERT INTO "public"."Sys_Region" VALUES (2623, '520603', '萬山區', 520600, 3, '中國,貴州省,銅仁市,萬山區', 109, 28, 'Wanshan');
INSERT INTO "public"."Sys_Region" VALUES (2624, '520621', '江口縣', 520600, 3, '中國,貴州省,銅仁市,江口縣', 109, 28, 'Jiangkou');
INSERT INTO "public"."Sys_Region" VALUES (2625, '520622', '玉屏侗族自治縣', 520600, 3, '中國,貴州省,銅仁市,玉屏侗族自治縣', 109, 27, 'Yuping');
INSERT INTO "public"."Sys_Region" VALUES (2626, '520623', '石阡縣', 520600, 3, '中國,貴州省,銅仁市,石阡縣', 108, 28, 'Shiqian');
INSERT INTO "public"."Sys_Region" VALUES (2627, '520624', '思南縣', 520600, 3, '中國,貴州省,銅仁市,思南縣', 108, 28, 'Sinan');
INSERT INTO "public"."Sys_Region" VALUES (2628, '520625', '印江土家族苗族自治縣', 520600, 3, '中國,貴州省,銅仁市,印江土家族苗族自治縣', 108, 28, 'Yinjiang');
INSERT INTO "public"."Sys_Region" VALUES (2629, '520626', '德江縣', 520600, 3, '中國,貴州省,銅仁市,德江縣', 108, 28, 'Dejiang');
INSERT INTO "public"."Sys_Region" VALUES (2630, '520627', '沿河土家族自治縣', 520600, 3, '中國,貴州省,銅仁市,沿河土家族自治縣', 108, 29, 'Yuanhe');
INSERT INTO "public"."Sys_Region" VALUES (2631, '520628', '松桃苗族自治縣', 520600, 3, '中國,貴州省,銅仁市,松桃苗族自治縣', 109, 28, 'Songtao');
INSERT INTO "public"."Sys_Region" VALUES (2632, '522300', '黔西南布依族苗族自治州', 520000, 2, '中國,貴州省,黔西南布依族苗族自治州', 105, 25, 'Qianxinan');
INSERT INTO "public"."Sys_Region" VALUES (2633, '522301', '興義市 ', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,興義市 ', 105, 25, 'Xingyi');
INSERT INTO "public"."Sys_Region" VALUES (2634, '522322', '興仁縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,興仁縣', 105, 25, 'Xingren');
INSERT INTO "public"."Sys_Region" VALUES (2635, '522323', '普安縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,普安縣', 105, 26, 'Puan');
INSERT INTO "public"."Sys_Region" VALUES (2636, '522324', '晴隆縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,晴隆縣', 105, 26, 'Qinglong');
INSERT INTO "public"."Sys_Region" VALUES (2637, '522325', '貞豐縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,貞豐縣', 106, 25, 'Zhenfeng');
INSERT INTO "public"."Sys_Region" VALUES (2638, '522326', '望謨縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,望謨縣', 106, 25, 'Wangmo');
INSERT INTO "public"."Sys_Region" VALUES (2639, '522327', '冊亨縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,冊亨縣', 106, 25, 'Ceheng');
INSERT INTO "public"."Sys_Region" VALUES (2640, '522328', '安龍縣', 522300, 3, '中國,貴州省,黔西南布依族苗族自治州,安龍縣', 105, 25, 'Anlong');
INSERT INTO "public"."Sys_Region" VALUES (2641, '522600', '黔東南苗族侗族自治州', 520000, 2, '中國,貴州省,黔東南苗族侗族自治州', 108, 27, 'Qiandongnan');
INSERT INTO "public"."Sys_Region" VALUES (2642, '522601', '凱里市', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,凱里市', 108, 27, 'Kaili');
INSERT INTO "public"."Sys_Region" VALUES (2643, '522622', '黃平縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,黃平縣', 108, 27, 'Huangping');
INSERT INTO "public"."Sys_Region" VALUES (2644, '522623', '施秉縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,施秉縣', 108, 27, 'Shibing');
INSERT INTO "public"."Sys_Region" VALUES (2645, '522624', '三穗縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,三穗縣', 109, 27, 'Sansui');
INSERT INTO "public"."Sys_Region" VALUES (2646, '522625', '鎮遠縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,鎮遠縣', 108, 27, 'Zhenyuan');
INSERT INTO "public"."Sys_Region" VALUES (2647, '522626', '岑鞏縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,岑鞏縣', 109, 27, 'Cengong');
INSERT INTO "public"."Sys_Region" VALUES (2648, '522627', '天柱縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,天柱縣', 109, 27, 'Tianzhu');
INSERT INTO "public"."Sys_Region" VALUES (2649, '522628', '錦屏縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,錦屏縣', 109, 27, 'Jinping');
INSERT INTO "public"."Sys_Region" VALUES (2650, '522629', '劍河縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,劍河縣', 109, 27, 'Jianhe');
INSERT INTO "public"."Sys_Region" VALUES (2651, '522630', '臺江縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,臺江縣', 108, 27, 'Taijiang');
INSERT INTO "public"."Sys_Region" VALUES (2652, '522631', '黎平縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,黎平縣', 109, 26, 'Liping');
INSERT INTO "public"."Sys_Region" VALUES (2653, '522632', '榕江縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,榕江縣', 109, 26, 'Rongjiang');
INSERT INTO "public"."Sys_Region" VALUES (2654, '522633', '從江縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,從江縣', 109, 26, 'Congjiang');
INSERT INTO "public"."Sys_Region" VALUES (2655, '522634', '雷山縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,雷山縣', 108, 26, 'Leishan');
INSERT INTO "public"."Sys_Region" VALUES (2656, '522635', '麻江縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,麻江縣', 108, 26, 'Majiang');
INSERT INTO "public"."Sys_Region" VALUES (2657, '522636', '丹寨縣', 522600, 3, '中國,貴州省,黔東南苗族侗族自治州,丹寨縣', 108, 26, 'Danzhai');
INSERT INTO "public"."Sys_Region" VALUES (2658, '522700', '黔南布依族苗族自治州', 520000, 2, '中國,貴州省,黔南布依族苗族自治州', 108, 26, 'Qiannan');
INSERT INTO "public"."Sys_Region" VALUES (2659, '522701', '都勻市', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,都勻市', 108, 26, 'Duyun');
INSERT INTO "public"."Sys_Region" VALUES (2660, '522702', '福泉市', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,福泉市', 108, 27, 'Fuquan');
INSERT INTO "public"."Sys_Region" VALUES (2661, '522722', '荔波縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,荔波縣', 108, 25, 'Libo');
INSERT INTO "public"."Sys_Region" VALUES (2662, '522723', '貴定縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,貴定縣', 107, 27, 'Guiding');
INSERT INTO "public"."Sys_Region" VALUES (2663, '522725', '甕安縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,甕安縣', 107, 27, 'Wengan');
INSERT INTO "public"."Sys_Region" VALUES (2664, '522726', '獨山縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,獨山縣', 108, 26, 'Dushan');
INSERT INTO "public"."Sys_Region" VALUES (2665, '522727', '平塘縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,平塘縣', 107, 26, 'Pingtang');
INSERT INTO "public"."Sys_Region" VALUES (2666, '522728', '羅甸縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,羅甸縣', 107, 25, 'Luodian');
INSERT INTO "public"."Sys_Region" VALUES (2667, '522729', '長順縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,長順縣', 106, 26, 'Changshun');
INSERT INTO "public"."Sys_Region" VALUES (2668, '522730', '龍里縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,龍里縣', 107, 26, 'Longli');
INSERT INTO "public"."Sys_Region" VALUES (2669, '522731', '惠水縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,惠水縣', 107, 26, 'Huishui');
INSERT INTO "public"."Sys_Region" VALUES (2670, '522732', '三都水族自治縣', 522700, 3, '中國,貴州省,黔南布依族苗族自治州,三都水族自治縣', 108, 26, 'Sandu');
INSERT INTO "public"."Sys_Region" VALUES (2671, '530000', '云南省', 100000, 1, '中國,云南省', 103, 25, 'Yunnan');
INSERT INTO "public"."Sys_Region" VALUES (2672, '530100', '昆明市', 530000, 2, '中國,云南省,昆明市', 103, 25, 'Kunming');
INSERT INTO "public"."Sys_Region" VALUES (2673, '530102', '五華區', 530100, 3, '中國,云南省,昆明市,五華區', 103, 25, 'Wuhua');
INSERT INTO "public"."Sys_Region" VALUES (2674, '530103', '盤龍區', 530100, 3, '中國,云南省,昆明市,盤龍區', 103, 25, 'Panlong');
INSERT INTO "public"."Sys_Region" VALUES (2675, '530111', '官渡區', 530100, 3, '中國,云南省,昆明市,官渡區', 103, 25, 'Guandu');
INSERT INTO "public"."Sys_Region" VALUES (2676, '530112', '西山區', 530100, 3, '中國,云南省,昆明市,西山區', 103, 25, 'Xishan');
INSERT INTO "public"."Sys_Region" VALUES (2677, '530113', '東川區', 530100, 3, '中國,云南省,昆明市,東川區', 103, 26, 'Dongchuan');
INSERT INTO "public"."Sys_Region" VALUES (2678, '530114', '呈貢區', 530100, 3, '中國,云南省,昆明市,呈貢區', 103, 25, 'Chenggong');
INSERT INTO "public"."Sys_Region" VALUES (2679, '530122', '晉寧縣', 530100, 3, '中國,云南省,昆明市,晉寧縣', 103, 25, 'Jinning');
INSERT INTO "public"."Sys_Region" VALUES (2680, '530124', '富民縣', 530100, 3, '中國,云南省,昆明市,富民縣', 102, 25, 'Fumin');
INSERT INTO "public"."Sys_Region" VALUES (2681, '530125', '宜良縣', 530100, 3, '中國,云南省,昆明市,宜良縣', 103, 25, 'Yiliang');
INSERT INTO "public"."Sys_Region" VALUES (2682, '530126', '石林彝族自治縣', 530100, 3, '中國,云南省,昆明市,石林彝族自治縣', 103, 25, 'Shilin');
INSERT INTO "public"."Sys_Region" VALUES (2683, '530127', '嵩明縣', 530100, 3, '中國,云南省,昆明市,嵩明縣', 103, 25, 'Songming');
INSERT INTO "public"."Sys_Region" VALUES (2684, '530128', '祿勸彝族苗族自治縣', 530100, 3, '中國,云南省,昆明市,祿勸彝族苗族自治縣', 102, 26, 'Luquan');
INSERT INTO "public"."Sys_Region" VALUES (2685, '530129', '尋甸回族彝族自治縣 ', 530100, 3, '中國,云南省,昆明市,尋甸回族彝族自治縣 ', 103, 26, 'Xundian');
INSERT INTO "public"."Sys_Region" VALUES (2686, '530181', '安寧市', 530100, 3, '中國,云南省,昆明市,安寧市', 102, 25, 'Anning');
INSERT INTO "public"."Sys_Region" VALUES (2687, '530300', '曲靖市', 530000, 2, '中國,云南省,曲靖市', 104, 26, 'Qujing');
INSERT INTO "public"."Sys_Region" VALUES (2688, '530302', '麒麟區', 530300, 3, '中國,云南省,曲靖市,麒麟區', 104, 25, 'Qilin');
INSERT INTO "public"."Sys_Region" VALUES (2689, '530321', '馬龍縣', 530300, 3, '中國,云南省,曲靖市,馬龍縣', 104, 25, 'Malong');
INSERT INTO "public"."Sys_Region" VALUES (2690, '530322', '陸良縣', 530300, 3, '中國,云南省,曲靖市,陸良縣', 104, 25, 'Luliang');
INSERT INTO "public"."Sys_Region" VALUES (2691, '530323', '師宗縣', 530300, 3, '中國,云南省,曲靖市,師宗縣', 104, 25, 'Shizong');
INSERT INTO "public"."Sys_Region" VALUES (2692, '530324', '羅平縣', 530300, 3, '中國,云南省,曲靖市,羅平縣', 104, 25, 'Luoping');
INSERT INTO "public"."Sys_Region" VALUES (2693, '530325', '富源縣', 530300, 3, '中國,云南省,曲靖市,富源縣', 104, 26, 'Fuyuan');
INSERT INTO "public"."Sys_Region" VALUES (2694, '530326', '會澤縣', 530300, 3, '中國,云南省,曲靖市,會澤縣', 103, 26, 'Huize');
INSERT INTO "public"."Sys_Region" VALUES (2695, '530328', '沾益縣', 530300, 3, '中國,云南省,曲靖市,沾益縣', 104, 26, 'Zhanyi');
INSERT INTO "public"."Sys_Region" VALUES (2696, '530381', '宣威市', 530300, 3, '中國,云南省,曲靖市,宣威市', 104, 26, 'Xuanwei');
INSERT INTO "public"."Sys_Region" VALUES (2697, '530400', '玉溪市', 530000, 2, '中國,云南省,玉溪市', 103, 24, 'Yuxi');
INSERT INTO "public"."Sys_Region" VALUES (2698, '530402', '紅塔區', 530400, 3, '中國,云南省,玉溪市,紅塔區', 103, 24, 'Hongta');
INSERT INTO "public"."Sys_Region" VALUES (2699, '530421', '江川縣', 530400, 3, '中國,云南省,玉溪市,江川縣', 103, 24, 'Jiangchuan');
INSERT INTO "public"."Sys_Region" VALUES (2700, '530422', '澄江縣', 530400, 3, '中國,云南省,玉溪市,澄江縣', 103, 25, 'Chengjiang');
INSERT INTO "public"."Sys_Region" VALUES (2701, '530423', '通海縣', 530400, 3, '中國,云南省,玉溪市,通海縣', 103, 24, 'Tonghai');
INSERT INTO "public"."Sys_Region" VALUES (2702, '530424', '華寧縣', 530400, 3, '中國,云南省,玉溪市,華寧縣', 103, 24, 'Huaning');
INSERT INTO "public"."Sys_Region" VALUES (2703, '530425', '易門縣', 530400, 3, '中國,云南省,玉溪市,易門縣', 102, 25, 'Yimen');
INSERT INTO "public"."Sys_Region" VALUES (2704, '530426', '峨山彝族自治縣', 530400, 3, '中國,云南省,玉溪市,峨山彝族自治縣', 102, 24, 'Eshan');
INSERT INTO "public"."Sys_Region" VALUES (2705, '530427', '新平彝族傣族自治縣', 530400, 3, '中國,云南省,玉溪市,新平彝族傣族自治縣', 102, 24, 'Xinping');
INSERT INTO "public"."Sys_Region" VALUES (2706, '530428', '元江哈尼族彝族傣族自治縣', 530400, 3, '中國,云南省,玉溪市,元江哈尼族彝族傣族自治縣', 102, 24, 'Yuanjiang');
INSERT INTO "public"."Sys_Region" VALUES (2707, '530500', '保山市', 530000, 2, '中國,云南省,保山市', 99, 25, 'Baoshan');
INSERT INTO "public"."Sys_Region" VALUES (2708, '530502', '隆陽區', 530500, 3, '中國,云南省,保山市,隆陽區', 99, 25, 'Longyang');
INSERT INTO "public"."Sys_Region" VALUES (2709, '530521', '施甸縣', 530500, 3, '中國,云南省,保山市,施甸縣', 99, 25, 'Shidian');
INSERT INTO "public"."Sys_Region" VALUES (2710, '530522', '騰沖縣', 530500, 3, '中國,云南省,保山市,騰沖縣', 98, 25, 'Tengchong');
INSERT INTO "public"."Sys_Region" VALUES (2711, '530523', '龍陵縣', 530500, 3, '中國,云南省,保山市,龍陵縣', 99, 25, 'Longling');
INSERT INTO "public"."Sys_Region" VALUES (2712, '530524', '昌寧縣', 530500, 3, '中國,云南省,保山市,昌寧縣', 100, 25, 'Changning');
INSERT INTO "public"."Sys_Region" VALUES (2713, '530600', '昭通市', 530000, 2, '中國,云南省,昭通市', 104, 27, 'Zhaotong');
INSERT INTO "public"."Sys_Region" VALUES (2714, '530602', '昭陽區', 530600, 3, '中國,云南省,昭通市,昭陽區', 104, 27, 'Zhaoyang');
INSERT INTO "public"."Sys_Region" VALUES (2715, '530621', '魯甸縣', 530600, 3, '中國,云南省,昭通市,魯甸縣', 104, 27, 'Ludian');
INSERT INTO "public"."Sys_Region" VALUES (2716, '530622', '巧家縣', 530600, 3, '中國,云南省,昭通市,巧家縣', 103, 27, 'Qiaojia');
INSERT INTO "public"."Sys_Region" VALUES (2717, '530623', '鹽津縣', 530600, 3, '中國,云南省,昭通市,鹽津縣', 104, 28, 'Yanjin');
INSERT INTO "public"."Sys_Region" VALUES (2718, '530624', '大關縣', 530600, 3, '中國,云南省,昭通市,大關縣', 104, 28, 'Daguan');
INSERT INTO "public"."Sys_Region" VALUES (2719, '530625', '永善縣', 530600, 3, '中國,云南省,昭通市,永善縣', 104, 28, 'Yongshan');
INSERT INTO "public"."Sys_Region" VALUES (2720, '530626', '綏江縣', 530600, 3, '中國,云南省,昭通市,綏江縣', 104, 29, 'Suijiang');
INSERT INTO "public"."Sys_Region" VALUES (2721, '530627', '鎮雄縣', 530600, 3, '中國,云南省,昭通市,鎮雄縣', 105, 27, 'Zhenxiong');
INSERT INTO "public"."Sys_Region" VALUES (2722, '530628', '彝良縣', 530600, 3, '中國,云南省,昭通市,彝良縣', 104, 28, 'Yiliang');
INSERT INTO "public"."Sys_Region" VALUES (2723, '530629', '威信縣', 530600, 3, '中國,云南省,昭通市,威信縣', 105, 28, 'Weixin');
INSERT INTO "public"."Sys_Region" VALUES (2724, '530630', '水富縣', 530600, 3, '中國,云南省,昭通市,水富縣', 104, 29, 'Shuifu');
INSERT INTO "public"."Sys_Region" VALUES (2725, '530700', '麗江市', 530000, 2, '中國,云南省,麗江市', 100, 27, 'Lijiang');
INSERT INTO "public"."Sys_Region" VALUES (2726, '530702', '古城區', 530700, 3, '中國,云南省,麗江市,古城區', 100, 27, 'Gucheng');
INSERT INTO "public"."Sys_Region" VALUES (2727, '530721', '玉龍納西族自治縣', 530700, 3, '中國,云南省,麗江市,玉龍納西族自治縣', 100, 27, 'Yulong');
INSERT INTO "public"."Sys_Region" VALUES (2728, '530722', '永勝縣', 530700, 3, '中國,云南省,麗江市,永勝縣', 101, 27, 'Yongsheng');
INSERT INTO "public"."Sys_Region" VALUES (2729, '530723', '華坪縣', 530700, 3, '中國,云南省,麗江市,華坪縣', 101, 27, 'Huaping');
INSERT INTO "public"."Sys_Region" VALUES (2730, '530724', '寧蒗彝族自治縣', 530700, 3, '中國,云南省,麗江市,寧蒗彝族自治縣', 101, 27, 'Ninglang');
INSERT INTO "public"."Sys_Region" VALUES (2731, '530800', '普洱市', 530000, 2, '中國,云南省,普洱市', 101, 23, 'Puer');
INSERT INTO "public"."Sys_Region" VALUES (2732, '530802', '思茅區', 530800, 3, '中國,云南省,普洱市,思茅區', 101, 23, 'Simao');
INSERT INTO "public"."Sys_Region" VALUES (2733, '530821', '寧洱哈尼族彝族自治縣', 530800, 3, '中國,云南省,普洱市,寧洱哈尼族彝族自治縣', 101, 23, 'Ninger');
INSERT INTO "public"."Sys_Region" VALUES (2734, '530822', '墨江哈尼族自治縣', 530800, 3, '中國,云南省,普洱市,墨江哈尼族自治縣', 102, 23, 'Mojiang');
INSERT INTO "public"."Sys_Region" VALUES (2735, '530823', '景東彝族自治縣', 530800, 3, '中國,云南省,普洱市,景東彝族自治縣', 101, 24, 'Jingdong');
INSERT INTO "public"."Sys_Region" VALUES (2736, '530824', '景谷傣族彝族自治縣', 530800, 3, '中國,云南省,普洱市,景谷傣族彝族自治縣', 101, 23, 'Jinggu');
INSERT INTO "public"."Sys_Region" VALUES (2737, '530825', '鎮沅彝族哈尼族拉祜族自治縣', 530800, 3, '中國,云南省,普洱市,鎮沅彝族哈尼族拉祜族自治縣', 101, 24, 'Zhenyuan');
INSERT INTO "public"."Sys_Region" VALUES (2738, '530826', '江城哈尼族彝族自治縣', 530800, 3, '中國,云南省,普洱市,江城哈尼族彝族自治縣', 102, 23, 'Jiangcheng');
INSERT INTO "public"."Sys_Region" VALUES (2739, '530827', '孟連傣族拉祜族佤族自治縣', 530800, 3, '中國,云南省,普洱市,孟連傣族拉祜族佤族自治縣', 100, 22, 'Menglian');
INSERT INTO "public"."Sys_Region" VALUES (2740, '530828', '瀾滄拉祜族自治縣', 530800, 3, '中國,云南省,普洱市,瀾滄拉祜族自治縣', 100, 23, 'Lancang');
INSERT INTO "public"."Sys_Region" VALUES (2741, '530829', '西盟佤族自治縣', 530800, 3, '中國,云南省,普洱市,西盟佤族自治縣', 100, 23, 'Ximeng');
INSERT INTO "public"."Sys_Region" VALUES (2742, '530900', '臨滄市', 530000, 2, '中國,云南省,臨滄市', 100, 24, 'Lincang');
INSERT INTO "public"."Sys_Region" VALUES (2743, '530902', '臨翔區', 530900, 3, '中國,云南省,臨滄市,臨翔區', 100, 24, 'Linxiang');
INSERT INTO "public"."Sys_Region" VALUES (2744, '530921', '鳳慶縣', 530900, 3, '中國,云南省,臨滄市,鳳慶縣', 100, 25, 'Fengqing');
INSERT INTO "public"."Sys_Region" VALUES (2745, '530922', '云縣', 530900, 3, '中國,云南省,臨滄市,云縣', 100, 24, 'Yunxian');
INSERT INTO "public"."Sys_Region" VALUES (2746, '530923', '永德縣', 530900, 3, '中國,云南省,臨滄市,永德縣', 99, 24, 'Yongde');
INSERT INTO "public"."Sys_Region" VALUES (2747, '530924', '鎮康縣', 530900, 3, '中國,云南省,臨滄市,鎮康縣', 99, 24, 'Zhenkang');
INSERT INTO "public"."Sys_Region" VALUES (2748, '530925', '雙江拉祜族佤族布朗族傣族自治縣', 530900, 3, '中國,云南省,臨滄市,雙江拉祜族佤族布朗族傣族自治縣', 100, 23, 'Shuangjiang');
INSERT INTO "public"."Sys_Region" VALUES (2749, '530926', '耿馬傣族佤族自治縣', 530900, 3, '中國,云南省,臨滄市,耿馬傣族佤族自治縣', 99, 24, 'Gengma');
INSERT INTO "public"."Sys_Region" VALUES (2750, '530927', '滄源佤族自治縣', 530900, 3, '中國,云南省,臨滄市,滄源佤族自治縣', 99, 23, 'Cangyuan');
INSERT INTO "public"."Sys_Region" VALUES (2751, '532300', '楚雄彝族自治州', 530000, 2, '中國,云南省,楚雄彝族自治州', 102, 25, 'Chuxiong');
INSERT INTO "public"."Sys_Region" VALUES (2752, '532301', '楚雄市', 532300, 3, '中國,云南省,楚雄彝族自治州,楚雄市', 102, 25, 'Chuxiong');
INSERT INTO "public"."Sys_Region" VALUES (2753, '532322', '雙柏縣', 532300, 3, '中國,云南省,楚雄彝族自治州,雙柏縣', 102, 25, 'Shuangbai');
INSERT INTO "public"."Sys_Region" VALUES (2754, '532323', '牟定縣', 532300, 3, '中國,云南省,楚雄彝族自治州,牟定縣', 102, 25, 'Mouding');
INSERT INTO "public"."Sys_Region" VALUES (2755, '532324', '南華縣', 532300, 3, '中國,云南省,楚雄彝族自治州,南華縣', 101, 25, 'Nanhua');
INSERT INTO "public"."Sys_Region" VALUES (2756, '532325', '姚安縣', 532300, 3, '中國,云南省,楚雄彝族自治州,姚安縣', 101, 26, 'Yaoan');
INSERT INTO "public"."Sys_Region" VALUES (2757, '532326', '大姚縣', 532300, 3, '中國,云南省,楚雄彝族自治州,大姚縣', 101, 26, 'Dayao');
INSERT INTO "public"."Sys_Region" VALUES (2758, '532327', '永仁縣', 532300, 3, '中國,云南省,楚雄彝族自治州,永仁縣', 102, 26, 'Yongren');
INSERT INTO "public"."Sys_Region" VALUES (2759, '532328', '元謀縣', 532300, 3, '中國,云南省,楚雄彝族自治州,元謀縣', 102, 26, 'Yuanmou');
INSERT INTO "public"."Sys_Region" VALUES (2760, '532329', '武定縣', 532300, 3, '中國,云南省,楚雄彝族自治州,武定縣', 102, 26, 'Wuding');
INSERT INTO "public"."Sys_Region" VALUES (2761, '532331', '祿豐縣', 532300, 3, '中國,云南省,楚雄彝族自治州,祿豐縣', 102, 25, 'Lufeng');
INSERT INTO "public"."Sys_Region" VALUES (2762, '532500', '紅河哈尼族彝族自治州', 530000, 2, '中國,云南省,紅河哈尼族彝族自治州', 103, 23, 'Honghe');
INSERT INTO "public"."Sys_Region" VALUES (2763, '532501', '個舊市', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,個舊市', 103, 23, 'Gejiu');
INSERT INTO "public"."Sys_Region" VALUES (2764, '532502', '開遠市', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,開遠市', 103, 24, 'Kaiyuan');
INSERT INTO "public"."Sys_Region" VALUES (2765, '532503', '蒙自市', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,蒙自市', 103, 23, 'Mengzi');
INSERT INTO "public"."Sys_Region" VALUES (2766, '532504', '彌勒市', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,彌勒市', 103, 24, 'Mile ');
INSERT INTO "public"."Sys_Region" VALUES (2767, '532523', '屏邊苗族自治縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,屏邊苗族自治縣', 104, 23, 'Pingbian');
INSERT INTO "public"."Sys_Region" VALUES (2768, '532524', '建水縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,建水縣', 103, 24, 'Jianshui');
INSERT INTO "public"."Sys_Region" VALUES (2769, '532525', '石屏縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,石屏縣', 102, 24, 'Shiping');
INSERT INTO "public"."Sys_Region" VALUES (2770, '532527', '瀘西縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,瀘西縣', 104, 25, 'Luxi');
INSERT INTO "public"."Sys_Region" VALUES (2771, '532528', '元陽縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,元陽縣', 103, 23, 'Yuanyang');
INSERT INTO "public"."Sys_Region" VALUES (2772, '532529', '紅河縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,紅河縣', 102, 23, 'Honghexian');
INSERT INTO "public"."Sys_Region" VALUES (2773, '532530', '金平苗族瑤族傣族自治縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,金平苗族瑤族傣族自治縣', 103, 23, 'Jinping');
INSERT INTO "public"."Sys_Region" VALUES (2774, '532531', '綠春縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,綠春縣', 102, 23, 'Lvchun');
INSERT INTO "public"."Sys_Region" VALUES (2775, '532532', '河口瑤族自治縣', 532500, 3, '中國,云南省,紅河哈尼族彝族自治州,河口瑤族自治縣', 104, 23, 'Hekou');
INSERT INTO "public"."Sys_Region" VALUES (2776, '532600', '文山壯族苗族自治州', 530000, 2, '中國,云南省,文山壯族苗族自治州', 104, 23, 'Wenshan');
INSERT INTO "public"."Sys_Region" VALUES (2777, '532601', '文山市', 532600, 3, '中國,云南省,文山壯族苗族自治州,文山市', 104, 23, 'Wenshan');
INSERT INTO "public"."Sys_Region" VALUES (2778, '532622', '硯山縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,硯山縣', 104, 24, 'Yanshan');
INSERT INTO "public"."Sys_Region" VALUES (2779, '532623', '西疇縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,西疇縣', 105, 23, 'Xichou');
INSERT INTO "public"."Sys_Region" VALUES (2780, '532624', '麻栗坡縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,麻栗坡縣', 105, 23, 'Malipo');
INSERT INTO "public"."Sys_Region" VALUES (2781, '532625', '馬關縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,馬關縣', 104, 23, 'Maguan');
INSERT INTO "public"."Sys_Region" VALUES (2782, '532626', '丘北縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,丘北縣', 104, 24, 'Qiubei');
INSERT INTO "public"."Sys_Region" VALUES (2783, '532627', '廣南縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,廣南縣', 105, 24, 'Guangnan');
INSERT INTO "public"."Sys_Region" VALUES (2784, '532628', '富寧縣', 532600, 3, '中國,云南省,文山壯族苗族自治州,富寧縣', 106, 24, 'Funing');
INSERT INTO "public"."Sys_Region" VALUES (2785, '532800', '西雙版納傣族自治州', 530000, 2, '中國,云南省,西雙版納傣族自治州', 101, 22, 'Xishuangbanna');
INSERT INTO "public"."Sys_Region" VALUES (2786, '532801', '景洪市', 532800, 3, '中國,云南省,西雙版納傣族自治州,景洪市', 101, 22, 'Jinghong');
INSERT INTO "public"."Sys_Region" VALUES (2787, '532822', '勐海縣', 532800, 3, '中國,云南省,西雙版納傣族自治州,勐海縣', 100, 22, 'Menghai');
INSERT INTO "public"."Sys_Region" VALUES (2788, '532823', '勐臘縣', 532800, 3, '中國,云南省,西雙版納傣族自治州,勐臘縣', 102, 21, 'Mengla');
INSERT INTO "public"."Sys_Region" VALUES (2789, '532900', '大理白族自治州', 530000, 2, '中國,云南省,大理白族自治州', 100, 26, 'Dali');
INSERT INTO "public"."Sys_Region" VALUES (2790, '532901', '大理市', 532900, 3, '中國,云南省,大理白族自治州,大理市', 100, 26, 'Dali');
INSERT INTO "public"."Sys_Region" VALUES (2791, '532922', '漾濞彝族自治縣', 532900, 3, '中國,云南省,大理白族自治州,漾濞彝族自治縣', 100, 26, 'Yangbi');
INSERT INTO "public"."Sys_Region" VALUES (2792, '532923', '祥云縣', 532900, 3, '中國,云南省,大理白族自治州,祥云縣', 101, 25, 'Xiangyun');
INSERT INTO "public"."Sys_Region" VALUES (2793, '532924', '賓川縣', 532900, 3, '中國,云南省,大理白族自治州,賓川縣', 101, 26, 'Binchuan');
INSERT INTO "public"."Sys_Region" VALUES (2794, '532925', '彌渡縣', 532900, 3, '中國,云南省,大理白族自治州,彌渡縣', 100, 25, 'Midu');
INSERT INTO "public"."Sys_Region" VALUES (2795, '532926', '南澗彝族自治縣', 532900, 3, '中國,云南省,大理白族自治州,南澗彝族自治縣', 101, 25, 'Nanjian');
INSERT INTO "public"."Sys_Region" VALUES (2796, '532927', '巍山彝族回族自治縣', 532900, 3, '中國,云南省,大理白族自治州,巍山彝族回族自治縣', 100, 25, 'Weishan');
INSERT INTO "public"."Sys_Region" VALUES (2797, '532928', '永平縣', 532900, 3, '中國,云南省,大理白族自治州,永平縣', 100, 25, 'Yongping');
INSERT INTO "public"."Sys_Region" VALUES (2798, '532929', '云龍縣', 532900, 3, '中國,云南省,大理白族自治州,云龍縣', 99, 26, 'Yunlong');
INSERT INTO "public"."Sys_Region" VALUES (2799, '532930', '洱源縣', 532900, 3, '中國,云南省,大理白族自治州,洱源縣', 100, 26, 'Eryuan');
INSERT INTO "public"."Sys_Region" VALUES (2800, '532931', '劍川縣', 532900, 3, '中國,云南省,大理白族自治州,劍川縣', 100, 27, 'Jianchuan');
INSERT INTO "public"."Sys_Region" VALUES (2801, '532932', '鶴慶縣', 532900, 3, '中國,云南省,大理白族自治州,鶴慶縣', 100, 27, 'Heqing');
INSERT INTO "public"."Sys_Region" VALUES (2802, '533100', '德宏傣族景頗族自治州', 530000, 2, '中國,云南省,德宏傣族景頗族自治州', 99, 24, 'Dehong');
INSERT INTO "public"."Sys_Region" VALUES (2803, '533102', '瑞麗市', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,瑞麗市', 98, 24, 'Ruili');
INSERT INTO "public"."Sys_Region" VALUES (2804, '533103', '芒市', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,芒市', 99, 24, 'Mangshi');
INSERT INTO "public"."Sys_Region" VALUES (2805, '533122', '梁河縣', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,梁河縣', 98, 25, 'Lianghe');
INSERT INTO "public"."Sys_Region" VALUES (2806, '533123', '盈江縣', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,盈江縣', 98, 25, 'Yingjiang');
INSERT INTO "public"."Sys_Region" VALUES (2807, '533124', '隴川縣', 533100, 3, '中國,云南省,德宏傣族景頗族自治州,隴川縣', 98, 24, 'Longchuan');
INSERT INTO "public"."Sys_Region" VALUES (2808, '533300', '怒江傈僳族自治州', 530000, 2, '中國,云南省,怒江傈僳族自治州', 99, 26, 'Nujiang');
INSERT INTO "public"."Sys_Region" VALUES (2809, '533321', '瀘水縣', 533300, 3, '中國,云南省,怒江傈僳族自治州,瀘水縣', 99, 26, 'Lushui');
INSERT INTO "public"."Sys_Region" VALUES (2810, '533323', '福貢縣', 533300, 3, '中國,云南省,怒江傈僳族自治州,福貢縣', 99, 27, 'Fugong');
INSERT INTO "public"."Sys_Region" VALUES (2811, '533324', '貢山獨龍族怒族自治縣', 533300, 3, '中國,云南省,怒江傈僳族自治州,貢山獨龍族怒族自治縣', 99, 28, 'Gongshan');
INSERT INTO "public"."Sys_Region" VALUES (2812, '533325', '蘭坪白族普米族自治縣', 533300, 3, '中國,云南省,怒江傈僳族自治州,蘭坪白族普米族自治縣', 99, 26, 'Lanping');
INSERT INTO "public"."Sys_Region" VALUES (2813, '533400', '迪慶藏族自治州', 530000, 2, '中國,云南省,迪慶藏族自治州', 100, 28, 'Deqen');
INSERT INTO "public"."Sys_Region" VALUES (2814, '533421', '香格里拉市', 533400, 3, '中國,云南省,迪慶藏族自治州,香格里拉市', 100, 28, 'Xianggelila');
INSERT INTO "public"."Sys_Region" VALUES (2815, '533422', '德欽縣', 533400, 3, '中國,云南省,迪慶藏族自治州,德欽縣', 99, 28, 'Deqin');
INSERT INTO "public"."Sys_Region" VALUES (2816, '533423', '維西傈僳族自治縣', 533400, 3, '中國,云南省,迪慶藏族自治州,維西傈僳族自治縣', 99, 27, 'Weixi');
INSERT INTO "public"."Sys_Region" VALUES (2817, '540000', '西藏自治區', 100000, 1, '中國,西藏自治區', 91, 30, 'Tibet');
INSERT INTO "public"."Sys_Region" VALUES (2818, '540100', '拉薩市', 540000, 2, '中國,西藏自治區,拉薩市', 91, 30, 'Lhasa');
INSERT INTO "public"."Sys_Region" VALUES (2819, '540102', '城關區', 540100, 3, '中國,西藏自治區,拉薩市,城關區', 91, 30, 'Chengguan');
INSERT INTO "public"."Sys_Region" VALUES (2820, '540121', '林周縣', 540100, 3, '中國,西藏自治區,拉薩市,林周縣', 91, 30, 'Linzhou');
INSERT INTO "public"."Sys_Region" VALUES (2821, '540122', '當雄縣', 540100, 3, '中國,西藏自治區,拉薩市,當雄縣', 91, 30, 'Dangxiong');
INSERT INTO "public"."Sys_Region" VALUES (2822, '540123', '尼木縣', 540100, 3, '中國,西藏自治區,拉薩市,尼木縣', 90, 29, 'Nimu');
INSERT INTO "public"."Sys_Region" VALUES (2823, '540124', '曲水縣', 540100, 3, '中國,西藏自治區,拉薩市,曲水縣', 91, 29, 'Qushui');
INSERT INTO "public"."Sys_Region" VALUES (2824, '540125', '堆龍德慶縣', 540100, 3, '中國,西藏自治區,拉薩市,堆龍德慶縣', 91, 30, 'Duilongdeqing');
INSERT INTO "public"."Sys_Region" VALUES (2825, '540126', '達孜縣', 540100, 3, '中國,西藏自治區,拉薩市,達孜縣', 91, 30, 'Dazi');
INSERT INTO "public"."Sys_Region" VALUES (2826, '540127', '墨竹工卡縣', 540100, 3, '中國,西藏自治區,拉薩市,墨竹工卡縣', 92, 30, 'Mozhugongka');
INSERT INTO "public"."Sys_Region" VALUES (2827, '540200', '日喀則市', 540000, 2, '中國,西藏自治區,日喀則市', 89, 29, 'Rikaze');
INSERT INTO "public"."Sys_Region" VALUES (2828, '540202', '桑珠孜區', 540200, 3, '中國,西藏自治區,日喀則市,桑珠孜區', 89, 29, 'Sangzhuzi');
INSERT INTO "public"."Sys_Region" VALUES (2829, '540221', '南木林縣', 540200, 3, '中國,西藏自治區,日喀則市,南木林縣', 89, 30, 'Nanmulin');
INSERT INTO "public"."Sys_Region" VALUES (2830, '540222', '江孜縣', 540200, 3, '中國,西藏自治區,日喀則市,江孜縣', 90, 29, 'Jiangzi');
INSERT INTO "public"."Sys_Region" VALUES (2831, '540223', '定日縣', 540200, 3, '中國,西藏自治區,日喀則市,定日縣', 87, 29, 'Dingri');
INSERT INTO "public"."Sys_Region" VALUES (2832, '540224', '薩迦縣', 540200, 3, '中國,西藏自治區,日喀則市,薩迦縣', 88, 29, 'Sajia');
INSERT INTO "public"."Sys_Region" VALUES (2833, '540225', '拉孜縣', 540200, 3, '中國,西藏自治區,日喀則市,拉孜縣', 88, 29, 'Lazi');
INSERT INTO "public"."Sys_Region" VALUES (2834, '540226', '昂仁縣', 540200, 3, '中國,西藏自治區,日喀則市,昂仁縣', 87, 29, 'Angren');
INSERT INTO "public"."Sys_Region" VALUES (2835, '540227', '謝通門縣', 540200, 3, '中國,西藏自治區,日喀則市,謝通門縣', 88, 29, 'Xietongmen');
INSERT INTO "public"."Sys_Region" VALUES (2836, '540228', '白朗縣', 540200, 3, '中國,西藏自治區,日喀則市,白朗縣', 89, 29, 'Bailang');
INSERT INTO "public"."Sys_Region" VALUES (2837, '540229', '仁布縣', 540200, 3, '中國,西藏自治區,日喀則市,仁布縣', 90, 29, 'Renbu');
INSERT INTO "public"."Sys_Region" VALUES (2838, '540230', '康馬縣', 540200, 3, '中國,西藏自治區,日喀則市,康馬縣', 90, 29, 'Kangma');
INSERT INTO "public"."Sys_Region" VALUES (2839, '540231', '定結縣', 540200, 3, '中國,西藏自治區,日喀則市,定結縣', 88, 28, 'Dingjie');
INSERT INTO "public"."Sys_Region" VALUES (2840, '540232', '仲巴縣', 540200, 3, '中國,西藏自治區,日喀則市,仲巴縣', 84, 30, 'Zhongba');
INSERT INTO "public"."Sys_Region" VALUES (2841, '540233', '亞東縣', 540200, 3, '中國,西藏自治區,日喀則市,亞東縣', 89, 27, 'Yadong');
INSERT INTO "public"."Sys_Region" VALUES (2842, '540234', '吉隆縣', 540200, 3, '中國,西藏自治區,日喀則市,吉隆縣', 85, 29, 'Jilong');
INSERT INTO "public"."Sys_Region" VALUES (2843, '540235', '聶拉木縣', 540200, 3, '中國,西藏自治區,日喀則市,聶拉木縣', 86, 28, 'Nielamu');
INSERT INTO "public"."Sys_Region" VALUES (2844, '540236', '薩嘎縣', 540200, 3, '中國,西藏自治區,日喀則市,薩嘎縣', 85, 29, 'Saga');
INSERT INTO "public"."Sys_Region" VALUES (2845, '540237', '崗巴縣', 540200, 3, '中國,西藏自治區,日喀則市,崗巴縣', 89, 28, 'Gangba');
INSERT INTO "public"."Sys_Region" VALUES (2846, '540300', '昌都市', 540000, 2, '中國,西藏自治區,昌都市', 97, 31, 'Qamdo');
INSERT INTO "public"."Sys_Region" VALUES (2847, '540302', '卡若區', 540300, 3, '中國,西藏自治區,昌都市,卡若區', 97, 31, 'Karuo');
INSERT INTO "public"."Sys_Region" VALUES (2848, '540321', '江達縣', 540300, 3, '中國,西藏自治區,昌都市,江達縣', 98, 32, 'Jiangda');
INSERT INTO "public"."Sys_Region" VALUES (2849, '540322', '貢覺縣', 540300, 3, '中國,西藏自治區,昌都市,貢覺縣', 98, 31, 'Gongjue');
INSERT INTO "public"."Sys_Region" VALUES (2850, '540323', '類烏齊縣', 540300, 3, '中國,西藏自治區,昌都市,類烏齊縣', 97, 31, 'Leiwuqi');
INSERT INTO "public"."Sys_Region" VALUES (2851, '540324', '丁青縣', 540300, 3, '中國,西藏自治區,昌都市,丁青縣', 96, 31, 'Dingqing');
INSERT INTO "public"."Sys_Region" VALUES (2852, '540325', '察雅縣', 540300, 3, '中國,西藏自治區,昌都市,察雅縣', 98, 31, 'Chaya');
INSERT INTO "public"."Sys_Region" VALUES (2853, '540326', '八宿縣', 540300, 3, '中國,西藏自治區,昌都市,八宿縣', 97, 30, 'Basu');
INSERT INTO "public"."Sys_Region" VALUES (2854, '540327', '左貢縣', 540300, 3, '中國,西藏自治區,昌都市,左貢縣', 98, 30, 'Zuogong');
INSERT INTO "public"."Sys_Region" VALUES (2855, '540328', '芒康縣', 540300, 3, '中國,西藏自治區,昌都市,芒康縣', 99, 30, 'Mangkang');
INSERT INTO "public"."Sys_Region" VALUES (2856, '540329', '洛隆縣', 540300, 3, '中國,西藏自治區,昌都市,洛隆縣', 96, 31, 'Luolong');
INSERT INTO "public"."Sys_Region" VALUES (2857, '540330', '邊壩縣', 540300, 3, '中國,西藏自治區,昌都市,邊壩縣', 95, 31, 'Bianba');
INSERT INTO "public"."Sys_Region" VALUES (2858, '542200', '山南地區', 540000, 2, '中國,西藏自治區,山南地區', 92, 29, 'Shannan');
INSERT INTO "public"."Sys_Region" VALUES (2859, '542221', '乃東縣', 542200, 3, '中國,西藏自治區,山南地區,乃東縣', 92, 29, 'Naidong');
INSERT INTO "public"."Sys_Region" VALUES (2860, '542222', '扎囊縣', 542200, 3, '中國,西藏自治區,山南地區,扎囊縣', 91, 29, 'Zhanang');
INSERT INTO "public"."Sys_Region" VALUES (2861, '542223', '貢嘎縣', 542200, 3, '中國,西藏自治區,山南地區,貢嘎縣', 91, 29, 'Gongga');
INSERT INTO "public"."Sys_Region" VALUES (2862, '542224', '桑日縣', 542200, 3, '中國,西藏自治區,山南地區,桑日縣', 92, 29, 'Sangri');
INSERT INTO "public"."Sys_Region" VALUES (2863, '542225', '瓊結縣', 542200, 3, '中國,西藏自治區,山南地區,瓊結縣', 92, 29, 'Qiongjie');
INSERT INTO "public"."Sys_Region" VALUES (2864, '542226', '曲松縣', 542200, 3, '中國,西藏自治區,山南地區,曲松縣', 92, 29, 'Qusong');
INSERT INTO "public"."Sys_Region" VALUES (2865, '542227', '措美縣', 542200, 3, '中國,西藏自治區,山南地區,措美縣', 91, 28, 'Cuomei');
INSERT INTO "public"."Sys_Region" VALUES (2866, '542228', '洛扎縣', 542200, 3, '中國,西藏自治區,山南地區,洛扎縣', 91, 28, 'Luozha');
INSERT INTO "public"."Sys_Region" VALUES (2867, '542229', '加查縣', 542200, 3, '中國,西藏自治區,山南地區,加查縣', 93, 29, 'Jiacha');
INSERT INTO "public"."Sys_Region" VALUES (2868, '542231', '隆子縣', 542200, 3, '中國,西藏自治區,山南地區,隆子縣', 92, 28, 'Longzi');
INSERT INTO "public"."Sys_Region" VALUES (2869, '542232', '錯那縣', 542200, 3, '中國,西藏自治區,山南地區,錯那縣', 92, 28, 'Cuona');
INSERT INTO "public"."Sys_Region" VALUES (2870, '542233', '浪卡子縣', 542200, 3, '中國,西藏自治區,山南地區,浪卡子縣', 90, 29, 'Langkazi');
INSERT INTO "public"."Sys_Region" VALUES (2871, '542400', '那曲地區', 540000, 2, '中國,西藏自治區,那曲地區', 92, 31, 'Nagqu');
INSERT INTO "public"."Sys_Region" VALUES (2872, '542421', '那曲縣', 542400, 3, '中國,西藏自治區,那曲地區,那曲縣', 92, 31, 'Naqu');
INSERT INTO "public"."Sys_Region" VALUES (2873, '542422', '嘉黎縣', 542400, 3, '中國,西藏自治區,那曲地區,嘉黎縣', 93, 31, 'Jiali');
INSERT INTO "public"."Sys_Region" VALUES (2874, '542423', '比如縣', 542400, 3, '中國,西藏自治區,那曲地區,比如縣', 94, 31, 'Biru');
INSERT INTO "public"."Sys_Region" VALUES (2875, '542424', '聶榮縣', 542400, 3, '中國,西藏自治區,那曲地區,聶榮縣', 92, 32, 'Nierong');
INSERT INTO "public"."Sys_Region" VALUES (2876, '542425', '安多縣', 542400, 3, '中國,西藏自治區,那曲地區,安多縣', 92, 32, 'Anduo');
INSERT INTO "public"."Sys_Region" VALUES (2877, '542426', '申扎縣', 542400, 3, '中國,西藏自治區,那曲地區,申扎縣', 89, 31, 'Shenzha');
INSERT INTO "public"."Sys_Region" VALUES (2878, '542427', '索縣', 542400, 3, '中國,西藏自治區,那曲地區,索縣', 94, 32, 'Suoxian');
INSERT INTO "public"."Sys_Region" VALUES (2879, '542428', '班戈縣', 542400, 3, '中國,西藏自治區,那曲地區,班戈縣', 90, 31, 'Bange');
INSERT INTO "public"."Sys_Region" VALUES (2880, '542429', '巴青縣', 542400, 3, '中國,西藏自治區,那曲地區,巴青縣', 94, 32, 'Baqing');
INSERT INTO "public"."Sys_Region" VALUES (2881, '542430', '尼瑪縣', 542400, 3, '中國,西藏自治區,那曲地區,尼瑪縣', 87, 32, 'Nima');
INSERT INTO "public"."Sys_Region" VALUES (2882, '542431', '雙湖縣', 542400, 3, '中國,西藏自治區,那曲地區,雙湖縣', 89, 33, 'Shuanghu');
INSERT INTO "public"."Sys_Region" VALUES (2883, '542500', '阿里地區', 540000, 2, '中國,西藏自治區,阿里地區', 80, 33, 'Ngari');
INSERT INTO "public"."Sys_Region" VALUES (2884, '542521', '普蘭縣', 542500, 3, '中國,西藏自治區,阿里地區,普蘭縣', 81, 30, 'Pulan');
INSERT INTO "public"."Sys_Region" VALUES (2885, '542522', '札達縣', 542500, 3, '中國,西藏自治區,阿里地區,札達縣', 80, 31, 'Zhada');
INSERT INTO "public"."Sys_Region" VALUES (2886, '542523', '噶爾縣', 542500, 3, '中國,西藏自治區,阿里地區,噶爾縣', 80, 33, 'Gaer');
INSERT INTO "public"."Sys_Region" VALUES (2887, '542524', '日土縣', 542500, 3, '中國,西藏自治區,阿里地區,日土縣', 80, 33, 'Ritu');
INSERT INTO "public"."Sys_Region" VALUES (2888, '542525', '革吉縣', 542500, 3, '中國,西藏自治區,阿里地區,革吉縣', 81, 32, 'Geji');
INSERT INTO "public"."Sys_Region" VALUES (2889, '542526', '改則縣', 542500, 3, '中國,西藏自治區,阿里地區,改則縣', 84, 32, 'Gaize');
INSERT INTO "public"."Sys_Region" VALUES (2890, '542527', '措勤縣', 542500, 3, '中國,西藏自治區,阿里地區,措勤縣', 85, 31, 'Cuoqin');
INSERT INTO "public"."Sys_Region" VALUES (2891, '542600', '林芝地區', 540000, 2, '中國,西藏自治區,林芝地區', 94, 30, 'Nyingchi');
INSERT INTO "public"."Sys_Region" VALUES (2892, '542621', '林芝縣', 542600, 3, '中國,西藏自治區,林芝地區,林芝縣', 94, 30, 'Linzhi');
INSERT INTO "public"."Sys_Region" VALUES (2893, '542622', '工布江達縣', 542600, 3, '中國,西藏自治區,林芝地區,工布江達縣', 93, 30, 'Gongbujiangda');
INSERT INTO "public"."Sys_Region" VALUES (2894, '542623', '米林縣', 542600, 3, '中國,西藏自治區,林芝地區,米林縣', 94, 29, 'Milin');
INSERT INTO "public"."Sys_Region" VALUES (2895, '542624', '墨脫縣', 542600, 3, '中國,西藏自治區,林芝地區,墨脫縣', 95, 29, 'Motuo');
INSERT INTO "public"."Sys_Region" VALUES (2896, '542625', '波密縣', 542600, 3, '中國,西藏自治區,林芝地區,波密縣', 96, 30, 'Bomi');
INSERT INTO "public"."Sys_Region" VALUES (2897, '542626', '察隅縣', 542600, 3, '中國,西藏自治區,林芝地區,察隅縣', 97, 29, 'Chayu');
INSERT INTO "public"."Sys_Region" VALUES (2898, '542627', '朗縣', 542600, 3, '中國,西藏自治區,林芝地區,朗縣', 93, 29, 'Langxian');
INSERT INTO "public"."Sys_Region" VALUES (2899, '610000', '陜西省', 100000, 1, '中國,陜西省', 109, 34, 'Shaanxi');
INSERT INTO "public"."Sys_Region" VALUES (2900, '610100', '西安市', 610000, 2, '中國,陜西省,西安市', 109, 34, 'Xian');
INSERT INTO "public"."Sys_Region" VALUES (2901, '610102', '新城區', 610100, 3, '中國,陜西省,西安市,新城區', 109, 34, 'Xincheng');
INSERT INTO "public"."Sys_Region" VALUES (2902, '610103', '碑林區', 610100, 3, '中國,陜西省,西安市,碑林區', 109, 34, 'Beilin');
INSERT INTO "public"."Sys_Region" VALUES (2903, '610104', '蓮湖區', 610100, 3, '中國,陜西省,西安市,蓮湖區', 109, 34, 'Lianhu');
INSERT INTO "public"."Sys_Region" VALUES (2904, '610111', '灞橋區', 610100, 3, '中國,陜西省,西安市,灞橋區', 109, 34, 'Baqiao');
INSERT INTO "public"."Sys_Region" VALUES (2905, '610112', '未央區', 610100, 3, '中國,陜西省,西安市,未央區', 109, 34, 'Weiyang');
INSERT INTO "public"."Sys_Region" VALUES (2906, '610113', '雁塔區', 610100, 3, '中國,陜西省,西安市,雁塔區', 109, 34, 'Yanta');
INSERT INTO "public"."Sys_Region" VALUES (2907, '610114', '閻良區', 610100, 3, '中國,陜西省,西安市,閻良區', 109, 35, 'Yanliang');
INSERT INTO "public"."Sys_Region" VALUES (2908, '610115', '臨潼區', 610100, 3, '中國,陜西省,西安市,臨潼區', 109, 34, 'Lintong');
INSERT INTO "public"."Sys_Region" VALUES (2909, '610116', '長安區', 610100, 3, '中國,陜西省,西安市,長安區', 109, 34, 'Changan');
INSERT INTO "public"."Sys_Region" VALUES (2910, '610122', '藍田縣', 610100, 3, '中國,陜西省,西安市,藍田縣', 109, 34, 'Lantian');
INSERT INTO "public"."Sys_Region" VALUES (2911, '610124', '周至縣', 610100, 3, '中國,陜西省,西安市,周至縣', 108, 34, 'Zhouzhi');
INSERT INTO "public"."Sys_Region" VALUES (2912, '610125', '戶縣', 610100, 3, '中國,陜西省,西安市,戶縣', 109, 34, 'Huxian');
INSERT INTO "public"."Sys_Region" VALUES (2913, '610126', '高陵區', 610100, 3, '中國,陜西省,西安市,高陵區', 109, 35, 'Gaoling');
INSERT INTO "public"."Sys_Region" VALUES (2914, '610200', '銅川市', 610000, 2, '中國,陜西省,銅川市', 109, 35, 'Tongchuan');
INSERT INTO "public"."Sys_Region" VALUES (2915, '610202', '王益區', 610200, 3, '中國,陜西省,銅川市,王益區', 109, 35, 'Wangyi');
INSERT INTO "public"."Sys_Region" VALUES (2916, '610203', '印臺區', 610200, 3, '中國,陜西省,銅川市,印臺區', 109, 35, 'Yintai');
INSERT INTO "public"."Sys_Region" VALUES (2917, '610204', '耀州區', 610200, 3, '中國,陜西省,銅川市,耀州區', 109, 35, 'Yaozhou');
INSERT INTO "public"."Sys_Region" VALUES (2918, '610222', '宜君縣', 610200, 3, '中國,陜西省,銅川市,宜君縣', 109, 35, 'Yijun');
INSERT INTO "public"."Sys_Region" VALUES (2919, '610300', '寶雞市', 610000, 2, '中國,陜西省,寶雞市', 107, 34, 'Baoji');
INSERT INTO "public"."Sys_Region" VALUES (2920, '610302', '渭濱區', 610300, 3, '中國,陜西省,寶雞市,渭濱區', 107, 34, 'Weibin');
INSERT INTO "public"."Sys_Region" VALUES (2921, '610303', '金臺區', 610300, 3, '中國,陜西省,寶雞市,金臺區', 107, 34, 'Jintai');
INSERT INTO "public"."Sys_Region" VALUES (2922, '610304', '陳倉區', 610300, 3, '中國,陜西省,寶雞市,陳倉區', 107, 34, 'Chencang');
INSERT INTO "public"."Sys_Region" VALUES (2923, '610322', '鳳翔縣', 610300, 3, '中國,陜西省,寶雞市,鳳翔縣', 107, 35, 'Fengxiang');
INSERT INTO "public"."Sys_Region" VALUES (2924, '610323', '岐山縣', 610300, 3, '中國,陜西省,寶雞市,岐山縣', 108, 34, 'Qishan');
INSERT INTO "public"."Sys_Region" VALUES (2925, '610324', '扶風縣', 610300, 3, '中國,陜西省,寶雞市,扶風縣', 108, 34, 'Fufeng');
INSERT INTO "public"."Sys_Region" VALUES (2926, '610326', '眉縣', 610300, 3, '中國,陜西省,寶雞市,眉縣', 108, 34, 'Meixian');
INSERT INTO "public"."Sys_Region" VALUES (2927, '610327', '隴縣', 610300, 3, '中國,陜西省,寶雞市,隴縣', 107, 35, 'Longxian');
INSERT INTO "public"."Sys_Region" VALUES (2928, '610328', '千陽縣', 610300, 3, '中國,陜西省,寶雞市,千陽縣', 107, 35, 'Qianyang');
INSERT INTO "public"."Sys_Region" VALUES (2929, '610329', '麟游縣', 610300, 3, '中國,陜西省,寶雞市,麟游縣', 108, 35, 'Linyou');
INSERT INTO "public"."Sys_Region" VALUES (2930, '610330', '鳳縣', 610300, 3, '中國,陜西省,寶雞市,鳳縣', 107, 34, 'Fengxian');
INSERT INTO "public"."Sys_Region" VALUES (2931, '610331', '太白縣', 610300, 3, '中國,陜西省,寶雞市,太白縣', 107, 34, 'Taibai');
INSERT INTO "public"."Sys_Region" VALUES (2932, '610400', '咸陽市', 610000, 2, '中國,陜西省,咸陽市', 109, 34, 'Xianyang');
INSERT INTO "public"."Sys_Region" VALUES (2933, '610402', '秦都區', 610400, 3, '中國,陜西省,咸陽市,秦都區', 109, 34, 'Qindu');
INSERT INTO "public"."Sys_Region" VALUES (2934, '610403', '楊陵區', 610400, 3, '中國,陜西省,咸陽市,楊陵區', 108, 34, 'Yangling');
INSERT INTO "public"."Sys_Region" VALUES (2935, '610404', '渭城區', 610400, 3, '中國,陜西省,咸陽市,渭城區', 109, 34, 'Weicheng');
INSERT INTO "public"."Sys_Region" VALUES (2936, '610422', '三原縣', 610400, 3, '中國,陜西省,咸陽市,三原縣', 109, 35, 'Sanyuan');
INSERT INTO "public"."Sys_Region" VALUES (2937, '610423', '涇陽縣', 610400, 3, '中國,陜西省,咸陽市,涇陽縣', 109, 35, 'Jingyang');
INSERT INTO "public"."Sys_Region" VALUES (2938, '610424', '乾縣', 610400, 3, '中國,陜西省,咸陽市,乾縣', 108, 35, 'Qianxian');
INSERT INTO "public"."Sys_Region" VALUES (2939, '610425', '禮泉縣', 610400, 3, '中國,陜西省,咸陽市,禮泉縣', 108, 34, 'Liquan');
INSERT INTO "public"."Sys_Region" VALUES (2940, '610426', '永壽縣', 610400, 3, '中國,陜西省,咸陽市,永壽縣', 108, 35, 'Yongshou');
INSERT INTO "public"."Sys_Region" VALUES (2941, '610427', '彬縣', 610400, 3, '中國,陜西省,咸陽市,彬縣', 108, 35, 'Binxian');
INSERT INTO "public"."Sys_Region" VALUES (2942, '610428', '長武縣', 610400, 3, '中國,陜西省,咸陽市,長武縣', 108, 35, 'Changwu');
INSERT INTO "public"."Sys_Region" VALUES (2943, '610429', '旬邑縣', 610400, 3, '中國,陜西省,咸陽市,旬邑縣', 108, 35, 'Xunyi');
INSERT INTO "public"."Sys_Region" VALUES (2944, '610430', '淳化縣', 610400, 3, '中國,陜西省,咸陽市,淳化縣', 109, 35, 'Chunhua');
INSERT INTO "public"."Sys_Region" VALUES (2945, '610431', '武功縣', 610400, 3, '中國,陜西省,咸陽市,武功縣', 108, 34, 'Wugong');
INSERT INTO "public"."Sys_Region" VALUES (2946, '610481', '興平市', 610400, 3, '中國,陜西省,咸陽市,興平市', 108, 34, 'Xingping');
INSERT INTO "public"."Sys_Region" VALUES (2947, '610500', '渭南市', 610000, 2, '中國,陜西省,渭南市', 110, 34, 'Weinan');
INSERT INTO "public"."Sys_Region" VALUES (2948, '610502', '臨渭區', 610500, 3, '中國,陜西省,渭南市,臨渭區', 109, 34, 'Linwei');
INSERT INTO "public"."Sys_Region" VALUES (2949, '610521', '華縣', 610500, 3, '中國,陜西省,渭南市,華縣', 110, 35, 'Huaxian');
INSERT INTO "public"."Sys_Region" VALUES (2950, '610522', '潼關縣', 610500, 3, '中國,陜西省,渭南市,潼關縣', 110, 35, 'Tongguan');
INSERT INTO "public"."Sys_Region" VALUES (2951, '610523', '大荔縣', 610500, 3, '中國,陜西省,渭南市,大荔縣', 110, 35, 'Dali');
INSERT INTO "public"."Sys_Region" VALUES (2952, '610524', '合陽縣', 610500, 3, '中國,陜西省,渭南市,合陽縣', 110, 35, 'Heyang');
INSERT INTO "public"."Sys_Region" VALUES (2953, '610525', '澄城縣', 610500, 3, '中國,陜西省,渭南市,澄城縣', 110, 35, 'Chengcheng');
INSERT INTO "public"."Sys_Region" VALUES (2954, '610526', '蒲城縣', 610500, 3, '中國,陜西省,渭南市,蒲城縣', 110, 35, 'Pucheng');
INSERT INTO "public"."Sys_Region" VALUES (2955, '610527', '白水縣', 610500, 3, '中國,陜西省,渭南市,白水縣', 110, 35, 'Baishui');
INSERT INTO "public"."Sys_Region" VALUES (2956, '610528', '富平縣', 610500, 3, '中國,陜西省,渭南市,富平縣', 109, 35, 'Fuping');
INSERT INTO "public"."Sys_Region" VALUES (2957, '610581', '韓城市', 610500, 3, '中國,陜西省,渭南市,韓城市', 110, 35, 'Hancheng');
INSERT INTO "public"."Sys_Region" VALUES (2958, '610582', '華陰市', 610500, 3, '中國,陜西省,渭南市,華陰市', 110, 35, 'Huayin');
INSERT INTO "public"."Sys_Region" VALUES (2959, '610600', '延安市', 610000, 2, '中國,陜西省,延安市', 109, 37, 'Yanan');
INSERT INTO "public"."Sys_Region" VALUES (2960, '610602', '寶塔區', 610600, 3, '中國,陜西省,延安市,寶塔區', 109, 37, 'Baota');
INSERT INTO "public"."Sys_Region" VALUES (2961, '610621', '延長縣', 610600, 3, '中國,陜西省,延安市,延長縣', 110, 37, 'Yanchang');
INSERT INTO "public"."Sys_Region" VALUES (2962, '610622', '延川縣', 610600, 3, '中國,陜西省,延安市,延川縣', 110, 37, 'Yanchuan');
INSERT INTO "public"."Sys_Region" VALUES (2963, '610623', '子長縣', 610600, 3, '中國,陜西省,延安市,子長縣', 110, 37, 'Zichang');
INSERT INTO "public"."Sys_Region" VALUES (2964, '610624', '安塞縣', 610600, 3, '中國,陜西省,延安市,安塞縣', 109, 37, 'Ansai');
INSERT INTO "public"."Sys_Region" VALUES (2965, '610625', '志丹縣', 610600, 3, '中國,陜西省,延安市,志丹縣', 109, 37, 'Zhidan');
INSERT INTO "public"."Sys_Region" VALUES (2966, '610626', '吳起縣', 610600, 3, '中國,陜西省,延安市,吳起縣', 108, 37, 'Wuqi');
INSERT INTO "public"."Sys_Region" VALUES (2967, '610627', '甘泉縣', 610600, 3, '中國,陜西省,延安市,甘泉縣', 109, 36, 'Ganquan');
INSERT INTO "public"."Sys_Region" VALUES (2968, '610628', '富縣', 610600, 3, '中國,陜西省,延安市,富縣', 109, 36, 'Fuxian');
INSERT INTO "public"."Sys_Region" VALUES (2969, '610629', '洛川縣', 610600, 3, '中國,陜西省,延安市,洛川縣', 109, 36, 'Luochuan');
INSERT INTO "public"."Sys_Region" VALUES (2970, '610630', '宜川縣', 610600, 3, '中國,陜西省,延安市,宜川縣', 110, 36, 'Yichuan');
INSERT INTO "public"."Sys_Region" VALUES (2971, '610631', '黃龍縣', 610600, 3, '中國,陜西省,延安市,黃龍縣', 110, 36, 'Huanglong');
INSERT INTO "public"."Sys_Region" VALUES (2972, '610632', '黃陵縣', 610600, 3, '中國,陜西省,延安市,黃陵縣', 109, 36, 'Huangling');
INSERT INTO "public"."Sys_Region" VALUES (2973, '610700', '漢中市', 610000, 2, '中國,陜西省,漢中市', 107, 33, 'Hanzhong');
INSERT INTO "public"."Sys_Region" VALUES (2974, '610702', '漢臺區', 610700, 3, '中國,陜西省,漢中市,漢臺區', 107, 33, 'Hantai');
INSERT INTO "public"."Sys_Region" VALUES (2975, '610721', '南鄭縣', 610700, 3, '中國,陜西省,漢中市,南鄭縣', 107, 33, 'Nanzheng');
INSERT INTO "public"."Sys_Region" VALUES (2976, '610722', '城固縣', 610700, 3, '中國,陜西省,漢中市,城固縣', 107, 33, 'Chenggu');
INSERT INTO "public"."Sys_Region" VALUES (2977, '610723', '洋縣', 610700, 3, '中國,陜西省,漢中市,洋縣', 108, 33, 'Yangxian');
INSERT INTO "public"."Sys_Region" VALUES (2978, '610724', '西鄉縣', 610700, 3, '中國,陜西省,漢中市,西鄉縣', 108, 33, 'Xixiang');
INSERT INTO "public"."Sys_Region" VALUES (2979, '610725', '勉縣', 610700, 3, '中國,陜西省,漢中市,勉縣', 107, 33, 'Mianxian');
INSERT INTO "public"."Sys_Region" VALUES (2980, '610726', '寧強縣', 610700, 3, '中國,陜西省,漢中市,寧強縣', 106, 33, 'Ningqiang');
INSERT INTO "public"."Sys_Region" VALUES (2981, '610727', '略陽縣', 610700, 3, '中國,陜西省,漢中市,略陽縣', 106, 33, 'Lueyang');
INSERT INTO "public"."Sys_Region" VALUES (2982, '610728', '鎮巴縣', 610700, 3, '中國,陜西省,漢中市,鎮巴縣', 108, 33, 'Zhenba');
INSERT INTO "public"."Sys_Region" VALUES (2983, '610729', '留壩縣', 610700, 3, '中國,陜西省,漢中市,留壩縣', 107, 34, 'Liuba');
INSERT INTO "public"."Sys_Region" VALUES (2984, '610730', '佛坪縣', 610700, 3, '中國,陜西省,漢中市,佛坪縣', 108, 34, 'Foping');
INSERT INTO "public"."Sys_Region" VALUES (2985, '610800', '榆林市', 610000, 2, '中國,陜西省,榆林市', 110, 38, 'Yulin');
INSERT INTO "public"."Sys_Region" VALUES (2986, '610802', '榆陽區', 610800, 3, '中國,陜西省,榆林市,榆陽區', 110, 38, 'Yuyang');
INSERT INTO "public"."Sys_Region" VALUES (2987, '610821', '神木縣', 610800, 3, '中國,陜西省,榆林市,神木縣', 110, 39, 'Shenmu');
INSERT INTO "public"."Sys_Region" VALUES (2988, '610822', '府谷縣', 610800, 3, '中國,陜西省,榆林市,府谷縣', 111, 39, 'Fugu');
INSERT INTO "public"."Sys_Region" VALUES (2989, '610823', '橫山縣', 610800, 3, '中國,陜西省,榆林市,橫山縣', 109, 38, 'Hengshan');
INSERT INTO "public"."Sys_Region" VALUES (2990, '610824', '靖邊縣', 610800, 3, '中國,陜西省,榆林市,靖邊縣', 109, 38, 'Jingbian');
INSERT INTO "public"."Sys_Region" VALUES (2991, '610825', '定邊縣', 610800, 3, '中國,陜西省,榆林市,定邊縣', 108, 38, 'Dingbian');
INSERT INTO "public"."Sys_Region" VALUES (2992, '610826', '綏德縣', 610800, 3, '中國,陜西省,榆林市,綏德縣', 110, 37, 'Suide');
INSERT INTO "public"."Sys_Region" VALUES (2993, '610827', '米脂縣', 610800, 3, '中國,陜西省,榆林市,米脂縣', 110, 38, 'Mizhi');
INSERT INTO "public"."Sys_Region" VALUES (2994, '610828', '佳縣', 610800, 3, '中國,陜西省,榆林市,佳縣', 110, 38, 'Jiaxian');
INSERT INTO "public"."Sys_Region" VALUES (2995, '610829', '吳堡縣', 610800, 3, '中國,陜西省,榆林市,吳堡縣', 111, 37, 'Wubu');
INSERT INTO "public"."Sys_Region" VALUES (2996, '610830', '清澗縣', 610800, 3, '中國,陜西省,榆林市,清澗縣', 110, 37, 'Qingjian');
INSERT INTO "public"."Sys_Region" VALUES (2997, '610831', '子洲縣', 610800, 3, '中國,陜西省,榆林市,子洲縣', 110, 38, 'Zizhou');
INSERT INTO "public"."Sys_Region" VALUES (2998, '610900', '安康市', 610000, 2, '中國,陜西省,安康市', 109, 33, 'Ankang');
INSERT INTO "public"."Sys_Region" VALUES (2999, '610902', '漢濱區', 610900, 3, '中國,陜西省,安康市,漢濱區', 109, 33, 'Hanbin');
INSERT INTO "public"."Sys_Region" VALUES (3000, '610921', '漢陰縣', 610900, 3, '中國,陜西省,安康市,漢陰縣', 109, 33, 'Hanyin');
INSERT INTO "public"."Sys_Region" VALUES (3001, '610922', '石泉縣', 610900, 3, '中國,陜西省,安康市,石泉縣', 108, 33, 'Shiquan');
INSERT INTO "public"."Sys_Region" VALUES (3002, '610923', '寧陜縣', 610900, 3, '中國,陜西省,安康市,寧陜縣', 108, 33, 'Ningshan');
INSERT INTO "public"."Sys_Region" VALUES (3003, '610924', '紫陽縣', 610900, 3, '中國,陜西省,安康市,紫陽縣', 109, 33, 'Ziyang');
INSERT INTO "public"."Sys_Region" VALUES (3004, '610925', '嵐皋縣', 610900, 3, '中國,陜西省,安康市,嵐皋縣', 109, 32, 'Langao');
INSERT INTO "public"."Sys_Region" VALUES (3005, '610926', '平利縣', 610900, 3, '中國,陜西省,安康市,平利縣', 109, 32, 'Pingli');
INSERT INTO "public"."Sys_Region" VALUES (3006, '610927', '鎮坪縣', 610900, 3, '中國,陜西省,安康市,鎮坪縣', 110, 32, 'Zhenping');
INSERT INTO "public"."Sys_Region" VALUES (3007, '610928', '旬陽縣', 610900, 3, '中國,陜西省,安康市,旬陽縣', 109, 33, 'Xunyang');
INSERT INTO "public"."Sys_Region" VALUES (3008, '610929', '白河縣', 610900, 3, '中國,陜西省,安康市,白河縣', 110, 33, 'Baihe');
INSERT INTO "public"."Sys_Region" VALUES (3009, '611000', '商洛市', 610000, 2, '中國,陜西省,商洛市', 110, 34, 'Shangluo');
INSERT INTO "public"."Sys_Region" VALUES (3010, '611002', '商州區', 611000, 3, '中國,陜西省,商洛市,商州區', 110, 34, 'Shangzhou');
INSERT INTO "public"."Sys_Region" VALUES (3011, '611021', '洛南縣', 611000, 3, '中國,陜西省,商洛市,洛南縣', 110, 34, 'Luonan');
INSERT INTO "public"."Sys_Region" VALUES (3012, '611022', '丹鳳縣', 611000, 3, '中國,陜西省,商洛市,丹鳳縣', 110, 34, 'Danfeng');
INSERT INTO "public"."Sys_Region" VALUES (3013, '611023', '商南縣', 611000, 3, '中國,陜西省,商洛市,商南縣', 111, 34, 'Shangnan');
INSERT INTO "public"."Sys_Region" VALUES (3014, '611024', '山陽縣', 611000, 3, '中國,陜西省,商洛市,山陽縣', 110, 34, 'Shanyang');
INSERT INTO "public"."Sys_Region" VALUES (3015, '611025', '鎮安縣', 611000, 3, '中國,陜西省,商洛市,鎮安縣', 109, 33, 'Zhenan');
INSERT INTO "public"."Sys_Region" VALUES (3016, '611026', '柞水縣', 611000, 3, '中國,陜西省,商洛市,柞水縣', 109, 34, 'Zhashui');
INSERT INTO "public"."Sys_Region" VALUES (3017, '611100', '西咸新區', 610000, 2, '中國,陜西省,西咸新區', 109, 34, 'Xixian');
INSERT INTO "public"."Sys_Region" VALUES (3018, '611101', '空港新城', 611100, 3, '中國,陜西省,西咸新區,空港新城', 109, 34, 'Konggang');
INSERT INTO "public"."Sys_Region" VALUES (3019, '611102', '灃東新城', 611100, 3, '中國,陜西省,西咸新區,灃東新城', 109, 34, 'Fengdong');
INSERT INTO "public"."Sys_Region" VALUES (3020, '611103', '秦漢新城', 611100, 3, '中國,陜西省,西咸新區,秦漢新城', 109, 34, 'Qinhan');
INSERT INTO "public"."Sys_Region" VALUES (3021, '611104', '灃西新城', 611100, 3, '中國,陜西省,西咸新區,灃西新城', 109, 34, 'Fengxi');
INSERT INTO "public"."Sys_Region" VALUES (3022, '611105', '涇河新城', 611100, 3, '中國,陜西省,西咸新區,涇河新城', 109, 34, 'Jinghe');
INSERT INTO "public"."Sys_Region" VALUES (3023, '620000', '甘肅省', 100000, 1, '中國,甘肅省', 104, 36, 'Gansu');
INSERT INTO "public"."Sys_Region" VALUES (3024, '620100', '蘭州市', 620000, 2, '中國,甘肅省,蘭州市', 104, 36, 'Lanzhou');
INSERT INTO "public"."Sys_Region" VALUES (3025, '620102', '城關區', 620100, 3, '中國,甘肅省,蘭州市,城關區', 104, 36, 'Chengguan');
INSERT INTO "public"."Sys_Region" VALUES (3026, '620103', '七里河區', 620100, 3, '中國,甘肅省,蘭州市,七里河區', 104, 36, 'Qilihe');
INSERT INTO "public"."Sys_Region" VALUES (3027, '620104', '西固區', 620100, 3, '中國,甘肅省,蘭州市,西固區', 104, 36, 'Xigu');
INSERT INTO "public"."Sys_Region" VALUES (3028, '620105', '安寧區', 620100, 3, '中國,甘肅省,蘭州市,安寧區', 104, 36, 'Anning');
INSERT INTO "public"."Sys_Region" VALUES (3029, '620111', '紅古區', 620100, 3, '中國,甘肅省,蘭州市,紅古區', 103, 36, 'Honggu');
INSERT INTO "public"."Sys_Region" VALUES (3030, '620121', '永登縣', 620100, 3, '中國,甘肅省,蘭州市,永登縣', 103, 37, 'Yongdeng');
INSERT INTO "public"."Sys_Region" VALUES (3031, '620122', '皋蘭縣', 620100, 3, '中國,甘肅省,蘭州市,皋蘭縣', 104, 36, 'Gaolan');
INSERT INTO "public"."Sys_Region" VALUES (3032, '620123', '榆中縣', 620100, 3, '中國,甘肅省,蘭州市,榆中縣', 104, 36, 'Yuzhong');
INSERT INTO "public"."Sys_Region" VALUES (3033, '620200', '嘉峪關市', 620000, 2, '中國,甘肅省,嘉峪關市', 98, 40, 'Jiayuguan');
INSERT INTO "public"."Sys_Region" VALUES (3034, '620201', '雄關區', 620200, 3, '中國,甘肅省,嘉峪關市,雄關區', 98, 40, 'Xiongguan');
INSERT INTO "public"."Sys_Region" VALUES (3035, '620202', '長城區', 620200, 3, '中國,甘肅省,嘉峪關市,長城區', 98, 40, 'Changcheng');
INSERT INTO "public"."Sys_Region" VALUES (3036, '620203', '鏡鐵區', 620200, 3, '中國,甘肅省,嘉峪關市,鏡鐵區', 98, 40, 'Jingtie');
INSERT INTO "public"."Sys_Region" VALUES (3037, '620300', '金昌市', 620000, 2, '中國,甘肅省,金昌市', 102, 39, 'Jinchang');
INSERT INTO "public"."Sys_Region" VALUES (3038, '620302', '金川區', 620300, 3, '中國,甘肅省,金昌市,金川區', 102, 39, 'Jinchuan');
INSERT INTO "public"."Sys_Region" VALUES (3039, '620321', '永昌縣', 620300, 3, '中國,甘肅省,金昌市,永昌縣', 102, 38, 'Yongchang');
INSERT INTO "public"."Sys_Region" VALUES (3040, '620400', '白銀市', 620000, 2, '中國,甘肅省,白銀市', 104, 37, 'Baiyin');
INSERT INTO "public"."Sys_Region" VALUES (3041, '620402', '白銀區', 620400, 3, '中國,甘肅省,白銀市,白銀區', 104, 37, 'Baiyin');
INSERT INTO "public"."Sys_Region" VALUES (3042, '620403', '平川區', 620400, 3, '中國,甘肅省,白銀市,平川區', 105, 37, 'Pingchuan');
INSERT INTO "public"."Sys_Region" VALUES (3043, '620421', '靖遠縣', 620400, 3, '中國,甘肅省,白銀市,靖遠縣', 105, 37, 'Jingyuan');
INSERT INTO "public"."Sys_Region" VALUES (3044, '620422', '會寧縣', 620400, 3, '中國,甘肅省,白銀市,會寧縣', 105, 36, 'Huining');
INSERT INTO "public"."Sys_Region" VALUES (3045, '620423', '景泰縣', 620400, 3, '中國,甘肅省,白銀市,景泰縣', 104, 37, 'Jingtai');
INSERT INTO "public"."Sys_Region" VALUES (3046, '620500', '天水市', 620000, 2, '中國,甘肅省,天水市', 106, 35, 'Tianshui');
INSERT INTO "public"."Sys_Region" VALUES (3047, '620502', '秦州區', 620500, 3, '中國,甘肅省,天水市,秦州區', 106, 35, 'Qinzhou');
INSERT INTO "public"."Sys_Region" VALUES (3048, '620503', '麥積區', 620500, 3, '中國,甘肅省,天水市,麥積區', 106, 35, 'Maiji');
INSERT INTO "public"."Sys_Region" VALUES (3049, '620521', '清水縣', 620500, 3, '中國,甘肅省,天水市,清水縣', 106, 35, 'Qingshui');
INSERT INTO "public"."Sys_Region" VALUES (3050, '620522', '秦安縣', 620500, 3, '中國,甘肅省,天水市,秦安縣', 106, 35, 'Qinan');
INSERT INTO "public"."Sys_Region" VALUES (3051, '620523', '甘谷縣', 620500, 3, '中國,甘肅省,天水市,甘谷縣', 105, 35, 'Gangu');
INSERT INTO "public"."Sys_Region" VALUES (3052, '620524', '武山縣', 620500, 3, '中國,甘肅省,天水市,武山縣', 105, 35, 'Wushan');
INSERT INTO "public"."Sys_Region" VALUES (3053, '620525', '張家川回族自治縣', 620500, 3, '中國,甘肅省,天水市,張家川回族自治縣', 106, 35, 'Zhangjiachuan');
INSERT INTO "public"."Sys_Region" VALUES (3054, '620600', '武威市', 620000, 2, '中國,甘肅省,武威市', 103, 38, 'Wuwei');
INSERT INTO "public"."Sys_Region" VALUES (3055, '620602', '涼州區', 620600, 3, '中國,甘肅省,武威市,涼州區', 103, 38, 'Liangzhou');
INSERT INTO "public"."Sys_Region" VALUES (3056, '620621', '民勤縣', 620600, 3, '中國,甘肅省,武威市,民勤縣', 103, 39, 'Minqin');
INSERT INTO "public"."Sys_Region" VALUES (3057, '620622', '古浪縣', 620600, 3, '中國,甘肅省,武威市,古浪縣', 103, 37, 'Gulang');
INSERT INTO "public"."Sys_Region" VALUES (3058, '620623', '天祝藏族自治縣', 620600, 3, '中國,甘肅省,武威市,天祝藏族自治縣', 103, 37, 'Tianzhu');
INSERT INTO "public"."Sys_Region" VALUES (3059, '620700', '張掖市', 620000, 2, '中國,甘肅省,張掖市', 100, 39, 'Zhangye');
INSERT INTO "public"."Sys_Region" VALUES (3060, '620702', '甘州區', 620700, 3, '中國,甘肅省,張掖市,甘州區', 100, 39, 'Ganzhou');
INSERT INTO "public"."Sys_Region" VALUES (3061, '620721', '肅南裕固族自治縣', 620700, 3, '中國,甘肅省,張掖市,肅南裕固族自治縣', 100, 39, 'Sunan');
INSERT INTO "public"."Sys_Region" VALUES (3062, '620722', '民樂縣', 620700, 3, '中國,甘肅省,張掖市,民樂縣', 101, 38, 'Minle');
INSERT INTO "public"."Sys_Region" VALUES (3063, '620723', '臨澤縣', 620700, 3, '中國,甘肅省,張掖市,臨澤縣', 100, 39, 'Linze');
INSERT INTO "public"."Sys_Region" VALUES (3064, '620724', '高臺縣', 620700, 3, '中國,甘肅省,張掖市,高臺縣', 100, 39, 'Gaotai');
INSERT INTO "public"."Sys_Region" VALUES (3065, '620725', '山丹縣', 620700, 3, '中國,甘肅省,張掖市,山丹縣', 101, 39, 'Shandan');
INSERT INTO "public"."Sys_Region" VALUES (3066, '620800', '平涼市', 620000, 2, '中國,甘肅省,平涼市', 107, 36, 'Pingliang');
INSERT INTO "public"."Sys_Region" VALUES (3067, '620802', '崆峒區', 620800, 3, '中國,甘肅省,平涼市,崆峒區', 107, 36, 'Kongtong');
INSERT INTO "public"."Sys_Region" VALUES (3068, '620821', '涇川縣', 620800, 3, '中國,甘肅省,平涼市,涇川縣', 107, 35, 'Jingchuan');
INSERT INTO "public"."Sys_Region" VALUES (3069, '620822', '靈臺縣', 620800, 3, '中國,甘肅省,平涼市,靈臺縣', 108, 35, 'Lingtai');
INSERT INTO "public"."Sys_Region" VALUES (3070, '620823', '崇信縣', 620800, 3, '中國,甘肅省,平涼市,崇信縣', 107, 35, 'Chongxin');
INSERT INTO "public"."Sys_Region" VALUES (3071, '620824', '華亭縣', 620800, 3, '中國,甘肅省,平涼市,華亭縣', 107, 35, 'Huating');
INSERT INTO "public"."Sys_Region" VALUES (3072, '620825', '莊浪縣', 620800, 3, '中國,甘肅省,平涼市,莊浪縣', 106, 35, 'Zhuanglang');
INSERT INTO "public"."Sys_Region" VALUES (3073, '620826', '靜寧縣', 620800, 3, '中國,甘肅省,平涼市,靜寧縣', 106, 36, 'Jingning');
INSERT INTO "public"."Sys_Region" VALUES (3074, '620900', '酒泉市', 620000, 2, '中國,甘肅省,酒泉市', 99, 40, 'Jiuquan');
INSERT INTO "public"."Sys_Region" VALUES (3075, '620902', '肅州區', 620900, 3, '中國,甘肅省,酒泉市,肅州區', 99, 40, 'Suzhou');
INSERT INTO "public"."Sys_Region" VALUES (3076, '620921', '金塔縣', 620900, 3, '中國,甘肅省,酒泉市,金塔縣', 99, 40, 'Jinta');
INSERT INTO "public"."Sys_Region" VALUES (3077, '620922', '瓜州縣', 620900, 3, '中國,甘肅省,酒泉市,瓜州縣', 96, 41, 'Guazhou');
INSERT INTO "public"."Sys_Region" VALUES (3078, '620923', '肅北蒙古族自治縣', 620900, 3, '中國,甘肅省,酒泉市,肅北蒙古族自治縣', 95, 40, 'Subei');
INSERT INTO "public"."Sys_Region" VALUES (3079, '620924', '阿克塞哈薩克族自治縣', 620900, 3, '中國,甘肅省,酒泉市,阿克塞哈薩克族自治縣', 94, 40, 'Akesai');
INSERT INTO "public"."Sys_Region" VALUES (3080, '620981', '玉門市', 620900, 3, '中國,甘肅省,酒泉市,玉門市', 97, 40, 'Yumen');
INSERT INTO "public"."Sys_Region" VALUES (3081, '620982', '敦煌市', 620900, 3, '中國,甘肅省,酒泉市,敦煌市', 95, 40, 'Dunhuang');
INSERT INTO "public"."Sys_Region" VALUES (3082, '621000', '慶陽市', 620000, 2, '中國,甘肅省,慶陽市', 108, 36, 'Qingyang');
INSERT INTO "public"."Sys_Region" VALUES (3083, '621002', '西峰區', 621000, 3, '中國,甘肅省,慶陽市,西峰區', 108, 36, 'Xifeng');
INSERT INTO "public"."Sys_Region" VALUES (3084, '621021', '慶城縣', 621000, 3, '中國,甘肅省,慶陽市,慶城縣', 108, 36, 'Qingcheng');
INSERT INTO "public"."Sys_Region" VALUES (3085, '621022', '環縣', 621000, 3, '中國,甘肅省,慶陽市,環縣', 107, 37, 'Huanxian');
INSERT INTO "public"."Sys_Region" VALUES (3086, '621023', '華池縣', 621000, 3, '中國,甘肅省,慶陽市,華池縣', 108, 36, 'Huachi');
INSERT INTO "public"."Sys_Region" VALUES (3087, '621024', '合水縣', 621000, 3, '中國,甘肅省,慶陽市,合水縣', 108, 36, 'Heshui');
INSERT INTO "public"."Sys_Region" VALUES (3088, '621025', '正寧縣', 621000, 3, '中國,甘肅省,慶陽市,正寧縣', 108, 35, 'Zhengning');
INSERT INTO "public"."Sys_Region" VALUES (3089, '621026', '寧縣', 621000, 3, '中國,甘肅省,慶陽市,寧縣', 108, 36, 'Ningxian');
INSERT INTO "public"."Sys_Region" VALUES (3090, '621027', '鎮原縣', 621000, 3, '中國,甘肅省,慶陽市,鎮原縣', 107, 36, 'Zhenyuan');
INSERT INTO "public"."Sys_Region" VALUES (3091, '621100', '定西市', 620000, 2, '中國,甘肅省,定西市', 105, 36, 'Dingxi');
INSERT INTO "public"."Sys_Region" VALUES (3092, '621102', '安定區', 621100, 3, '中國,甘肅省,定西市,安定區', 105, 36, 'Anding');
INSERT INTO "public"."Sys_Region" VALUES (3093, '621121', '通渭縣', 621100, 3, '中國,甘肅省,定西市,通渭縣', 105, 35, 'Tongwei');
INSERT INTO "public"."Sys_Region" VALUES (3094, '621122', '隴西縣', 621100, 3, '中國,甘肅省,定西市,隴西縣', 105, 35, 'Longxi');
INSERT INTO "public"."Sys_Region" VALUES (3095, '621123', '渭源縣', 621100, 3, '中國,甘肅省,定西市,渭源縣', 104, 35, 'Weiyuan');
INSERT INTO "public"."Sys_Region" VALUES (3096, '621124', '臨洮縣', 621100, 3, '中國,甘肅省,定西市,臨洮縣', 104, 35, 'Lintao');
INSERT INTO "public"."Sys_Region" VALUES (3097, '621125', '漳縣', 621100, 3, '中國,甘肅省,定西市,漳縣', 104, 35, 'Zhangxian');
INSERT INTO "public"."Sys_Region" VALUES (3098, '621126', '岷縣', 621100, 3, '中國,甘肅省,定西市,岷縣', 104, 34, 'Minxian');
INSERT INTO "public"."Sys_Region" VALUES (3099, '621200', '隴南市', 620000, 2, '中國,甘肅省,隴南市', 105, 33, 'Longnan');
INSERT INTO "public"."Sys_Region" VALUES (3100, '621202', '武都區', 621200, 3, '中國,甘肅省,隴南市,武都區', 105, 33, 'Wudu');
INSERT INTO "public"."Sys_Region" VALUES (3101, '621221', '成縣', 621200, 3, '中國,甘肅省,隴南市,成縣', 106, 34, 'Chengxian');
INSERT INTO "public"."Sys_Region" VALUES (3102, '621222', '文縣', 621200, 3, '中國,甘肅省,隴南市,文縣', 105, 33, 'Wenxian');
INSERT INTO "public"."Sys_Region" VALUES (3103, '621223', '宕昌縣', 621200, 3, '中國,甘肅省,隴南市,宕昌縣', 104, 34, 'Dangchang');
INSERT INTO "public"."Sys_Region" VALUES (3104, '621224', '康縣', 621200, 3, '中國,甘肅省,隴南市,康縣', 106, 33, 'Kangxian');
INSERT INTO "public"."Sys_Region" VALUES (3105, '621225', '西和縣', 621200, 3, '中國,甘肅省,隴南市,西和縣', 105, 34, 'Xihe');
INSERT INTO "public"."Sys_Region" VALUES (3106, '621226', '禮縣', 621200, 3, '中國,甘肅省,隴南市,禮縣', 105, 34, 'Lixian');
INSERT INTO "public"."Sys_Region" VALUES (3107, '621227', '徽縣', 621200, 3, '中國,甘肅省,隴南市,徽縣', 106, 34, 'Huixian');
INSERT INTO "public"."Sys_Region" VALUES (3108, '621228', '兩當縣', 621200, 3, '中國,甘肅省,隴南市,兩當縣', 106, 34, 'Liangdang');
INSERT INTO "public"."Sys_Region" VALUES (3109, '622900', '臨夏回族自治州', 620000, 2, '中國,甘肅省,臨夏回族自治州', 103, 36, 'Linxia');
INSERT INTO "public"."Sys_Region" VALUES (3110, '622901', '臨夏市', 622900, 3, '中國,甘肅省,臨夏回族自治州,臨夏市', 103, 36, 'Linxia');
INSERT INTO "public"."Sys_Region" VALUES (3111, '622921', '臨夏縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,臨夏縣', 103, 35, 'Linxia');
INSERT INTO "public"."Sys_Region" VALUES (3112, '622922', '康樂縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,康樂縣', 104, 35, 'Kangle');
INSERT INTO "public"."Sys_Region" VALUES (3113, '622923', '永靖縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,永靖縣', 103, 36, 'Yongjing');
INSERT INTO "public"."Sys_Region" VALUES (3114, '622924', '廣河縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,廣河縣', 104, 35, 'Guanghe');
INSERT INTO "public"."Sys_Region" VALUES (3115, '622925', '和政縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,和政縣', 103, 35, 'Hezheng');
INSERT INTO "public"."Sys_Region" VALUES (3116, '622926', '東鄉族自治縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,東鄉族自治縣', 103, 36, 'Dongxiangzu');
INSERT INTO "public"."Sys_Region" VALUES (3117, '622927', '積石山保安族東鄉族撒拉族自治縣', 622900, 3, '中國,甘肅省,臨夏回族自治州,積石山保安族東鄉族撒拉族自治縣', 103, 36, 'Jishishan');
INSERT INTO "public"."Sys_Region" VALUES (3118, '623000', '甘南藏族自治州', 620000, 2, '中國,甘肅省,甘南藏族自治州', 103, 35, 'Gannan');
INSERT INTO "public"."Sys_Region" VALUES (3119, '623001', '合作市', 623000, 3, '中國,甘肅省,甘南藏族自治州,合作市', 103, 35, 'Hezuo');
INSERT INTO "public"."Sys_Region" VALUES (3120, '623021', '臨潭縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,臨潭縣', 103, 35, 'Lintan');
INSERT INTO "public"."Sys_Region" VALUES (3121, '623022', '卓尼縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,卓尼縣', 104, 35, 'Zhuoni');
INSERT INTO "public"."Sys_Region" VALUES (3122, '623023', '舟曲縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,舟曲縣', 104, 34, 'Zhouqu');
INSERT INTO "public"."Sys_Region" VALUES (3123, '623024', '迭部縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,迭部縣', 103, 34, 'Diebu');
INSERT INTO "public"."Sys_Region" VALUES (3124, '623025', '瑪曲縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,瑪曲縣', 102, 34, 'Maqu');
INSERT INTO "public"."Sys_Region" VALUES (3125, '623026', '碌曲縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,碌曲縣', 102, 35, 'Luqu');
INSERT INTO "public"."Sys_Region" VALUES (3126, '623027', '夏河縣', 623000, 3, '中國,甘肅省,甘南藏族自治州,夏河縣', 103, 35, 'Xiahe');
INSERT INTO "public"."Sys_Region" VALUES (3127, '630000', '青海省', 100000, 1, '中國,青海省', 102, 37, 'Qinghai');
INSERT INTO "public"."Sys_Region" VALUES (3128, '630100', '西寧市', 630000, 2, '中國,青海省,西寧市', 102, 37, 'Xining');
INSERT INTO "public"."Sys_Region" VALUES (3129, '630102', '城東區', 630100, 3, '中國,青海省,西寧市,城東區', 102, 37, 'Chengdong');
INSERT INTO "public"."Sys_Region" VALUES (3130, '630103', '城中區', 630100, 3, '中國,青海省,西寧市,城中區', 102, 37, 'Chengzhong');
INSERT INTO "public"."Sys_Region" VALUES (3131, '630104', '城西區', 630100, 3, '中國,青海省,西寧市,城西區', 102, 37, 'Chengxi');
INSERT INTO "public"."Sys_Region" VALUES (3132, '630105', '城北區', 630100, 3, '中國,青海省,西寧市,城北區', 102, 37, 'Chengbei');
INSERT INTO "public"."Sys_Region" VALUES (3133, '630121', '大通回族土族自治縣', 630100, 3, '中國,青海省,西寧市,大通回族土族自治縣', 102, 37, 'Datong');
INSERT INTO "public"."Sys_Region" VALUES (3134, '630122', '湟中縣', 630100, 3, '中國,青海省,西寧市,湟中縣', 102, 37, 'Huangzhong');
INSERT INTO "public"."Sys_Region" VALUES (3135, '630123', '湟源縣', 630100, 3, '中國,青海省,西寧市,湟源縣', 101, 37, 'Huangyuan');
INSERT INTO "public"."Sys_Region" VALUES (3136, '630200', '海東市', 630000, 2, '中國,青海省,海東市', 102, 37, 'Haidong');
INSERT INTO "public"."Sys_Region" VALUES (3137, '630202', '樂都區', 630200, 3, '中國,青海省,海東市,樂都區', 102, 36, 'Ledu');
INSERT INTO "public"."Sys_Region" VALUES (3138, '630221', '平安縣', 630200, 3, '中國,青海省,海東市,平安縣', 102, 37, 'Pingan');
INSERT INTO "public"."Sys_Region" VALUES (3139, '630222', '民和回族土族自治縣', 630200, 3, '中國,青海省,海東市,民和回族土族自治縣', 103, 36, 'Minhe');
INSERT INTO "public"."Sys_Region" VALUES (3140, '630223', '互助土族自治縣', 630200, 3, '中國,青海省,海東市,互助土族自治縣', 102, 37, 'Huzhu');
INSERT INTO "public"."Sys_Region" VALUES (3141, '630224', '化隆回族自治縣', 630200, 3, '中國,青海省,海東市,化隆回族自治縣', 102, 36, 'Hualong');
INSERT INTO "public"."Sys_Region" VALUES (3142, '630225', '循化撒拉族自治縣', 630200, 3, '中國,青海省,海東市,循化撒拉族自治縣', 102, 36, 'Xunhua');
INSERT INTO "public"."Sys_Region" VALUES (3143, '632200', '海北藏族自治州', 630000, 2, '中國,青海省,海北藏族自治州', 101, 37, 'Haibei');
INSERT INTO "public"."Sys_Region" VALUES (3144, '632221', '門源回族自治縣', 632200, 3, '中國,青海省,海北藏族自治州,門源回族自治縣', 102, 37, 'Menyuan');
INSERT INTO "public"."Sys_Region" VALUES (3145, '632222', '祁連縣', 632200, 3, '中國,青海省,海北藏族自治州,祁連縣', 100, 38, 'Qilian');
INSERT INTO "public"."Sys_Region" VALUES (3146, '632223', '海晏縣', 632200, 3, '中國,青海省,海北藏族自治州,海晏縣', 101, 37, 'Haiyan');
INSERT INTO "public"."Sys_Region" VALUES (3147, '632224', '剛察縣', 632200, 3, '中國,青海省,海北藏族自治州,剛察縣', 100, 37, 'Gangcha');
INSERT INTO "public"."Sys_Region" VALUES (3148, '632300', '黃南藏族自治州', 630000, 2, '中國,青海省,黃南藏族自治州', 102, 36, 'Huangnan');
INSERT INTO "public"."Sys_Region" VALUES (3149, '632321', '同仁縣', 632300, 3, '中國,青海省,黃南藏族自治州,同仁縣', 102, 36, 'Tongren');
INSERT INTO "public"."Sys_Region" VALUES (3150, '632322', '尖扎縣', 632300, 3, '中國,青海省,黃南藏族自治州,尖扎縣', 102, 36, 'Jianzha');
INSERT INTO "public"."Sys_Region" VALUES (3151, '632323', '澤庫縣', 632300, 3, '中國,青海省,黃南藏族自治州,澤庫縣', 101, 35, 'Zeku');
INSERT INTO "public"."Sys_Region" VALUES (3152, '632324', '河南蒙古族自治縣', 632300, 3, '中國,青海省,黃南藏族自治州,河南蒙古族自治縣', 102, 35, 'Henan');
INSERT INTO "public"."Sys_Region" VALUES (3153, '632500', '海南藏族自治州', 630000, 2, '中國,青海省,海南藏族自治州', 101, 36, 'Hainan');
INSERT INTO "public"."Sys_Region" VALUES (3154, '632521', '共和縣', 632500, 3, '中國,青海省,海南藏族自治州,共和縣', 101, 36, 'Gonghe');
INSERT INTO "public"."Sys_Region" VALUES (3155, '632522', '同德縣', 632500, 3, '中國,青海省,海南藏族自治州,同德縣', 101, 35, 'Tongde');
INSERT INTO "public"."Sys_Region" VALUES (3156, '632523', '貴德縣', 632500, 3, '中國,青海省,海南藏族自治州,貴德縣', 101, 36, 'Guide');
INSERT INTO "public"."Sys_Region" VALUES (3157, '632524', '興海縣', 632500, 3, '中國,青海省,海南藏族自治州,興海縣', 100, 36, 'Xinghai');
INSERT INTO "public"."Sys_Region" VALUES (3158, '632525', '貴南縣', 632500, 3, '中國,青海省,海南藏族自治州,貴南縣', 101, 36, 'Guinan');
INSERT INTO "public"."Sys_Region" VALUES (3159, '632600', '果洛藏族自治州', 630000, 2, '中國,青海省,果洛藏族自治州', 100, 34, 'Golog');
INSERT INTO "public"."Sys_Region" VALUES (3160, '632621', '瑪沁縣', 632600, 3, '中國,青海省,果洛藏族自治州,瑪沁縣', 100, 34, 'Maqin');
INSERT INTO "public"."Sys_Region" VALUES (3161, '632622', '班瑪縣', 632600, 3, '中國,青海省,果洛藏族自治州,班瑪縣', 101, 33, 'Banma');
INSERT INTO "public"."Sys_Region" VALUES (3162, '632623', '甘德縣', 632600, 3, '中國,青海省,果洛藏族自治州,甘德縣', 100, 34, 'Gande');
INSERT INTO "public"."Sys_Region" VALUES (3163, '632624', '達日縣', 632600, 3, '中國,青海省,果洛藏族自治州,達日縣', 100, 34, 'Dari');
INSERT INTO "public"."Sys_Region" VALUES (3164, '632625', '久治縣', 632600, 3, '中國,青海省,果洛藏族自治州,久治縣', 101, 33, 'Jiuzhi');
INSERT INTO "public"."Sys_Region" VALUES (3165, '632626', '瑪多縣', 632600, 3, '中國,青海省,果洛藏族自治州,瑪多縣', 98, 35, 'Maduo');
INSERT INTO "public"."Sys_Region" VALUES (3166, '632700', '玉樹藏族自治州', 630000, 2, '中國,青海省,玉樹藏族自治州', 97, 33, 'Yushu');
INSERT INTO "public"."Sys_Region" VALUES (3167, '632701', '玉樹市', 632700, 3, '中國,青海省,玉樹藏族自治州,玉樹市', 97, 33, 'Yushu');
INSERT INTO "public"."Sys_Region" VALUES (3168, '632722', '雜多縣', 632700, 3, '中國,青海省,玉樹藏族自治州,雜多縣', 95, 33, 'Zaduo');
INSERT INTO "public"."Sys_Region" VALUES (3169, '632723', '稱多縣', 632700, 3, '中國,青海省,玉樹藏族自治州,稱多縣', 97, 33, 'Chenduo');
INSERT INTO "public"."Sys_Region" VALUES (3170, '632724', '治多縣', 632700, 3, '中國,青海省,玉樹藏族自治州,治多縣', 96, 34, 'Zhiduo');
INSERT INTO "public"."Sys_Region" VALUES (3171, '632725', '囊謙縣', 632700, 3, '中國,青海省,玉樹藏族自治州,囊謙縣', 96, 32, 'Nangqian');
INSERT INTO "public"."Sys_Region" VALUES (3172, '632726', '曲麻萊縣', 632700, 3, '中國,青海省,玉樹藏族自治州,曲麻萊縣', 96, 34, 'Qumalai');
INSERT INTO "public"."Sys_Region" VALUES (3173, '632800', '海西蒙古族藏族自治州', 630000, 2, '中國,青海省,海西蒙古族藏族自治州', 97, 37, 'Haixi');
INSERT INTO "public"."Sys_Region" VALUES (3174, '632801', '格爾木市', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,格爾木市', 95, 36, 'Geermu');
INSERT INTO "public"."Sys_Region" VALUES (3175, '632802', '德令哈市', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,德令哈市', 97, 37, 'Delingha');
INSERT INTO "public"."Sys_Region" VALUES (3176, '632821', '烏蘭縣', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,烏蘭縣', 98, 37, 'Wulan');
INSERT INTO "public"."Sys_Region" VALUES (3177, '632822', '都蘭縣', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,都蘭縣', 98, 36, 'Dulan');
INSERT INTO "public"."Sys_Region" VALUES (3178, '632823', '天峻縣', 632800, 3, '中國,青海省,海西蒙古族藏族自治州,天峻縣', 99, 37, 'Tianjun');
INSERT INTO "public"."Sys_Region" VALUES (3179, '640000', '寧夏回族自治區', 100000, 1, '中國,寧夏回族自治區', 106, 38, 'Ningxia');
INSERT INTO "public"."Sys_Region" VALUES (3180, '640100', '銀川市', 640000, 2, '中國,寧夏回族自治區,銀川市', 106, 38, 'Yinchuan');
INSERT INTO "public"."Sys_Region" VALUES (3181, '640104', '興慶區', 640100, 3, '中國,寧夏回族自治區,銀川市,興慶區', 106, 38, 'Xingqing');
INSERT INTO "public"."Sys_Region" VALUES (3182, '640105', '西夏區', 640100, 3, '中國,寧夏回族自治區,銀川市,西夏區', 106, 38, 'Xixia');
INSERT INTO "public"."Sys_Region" VALUES (3183, '640106', '金鳳區', 640100, 3, '中國,寧夏回族自治區,銀川市,金鳳區', 106, 38, 'Jinfeng');
INSERT INTO "public"."Sys_Region" VALUES (3184, '640121', '永寧縣', 640100, 3, '中國,寧夏回族自治區,銀川市,永寧縣', 106, 38, 'Yongning');
INSERT INTO "public"."Sys_Region" VALUES (3185, '640122', '賀蘭縣', 640100, 3, '中國,寧夏回族自治區,銀川市,賀蘭縣', 106, 39, 'Helan');
INSERT INTO "public"."Sys_Region" VALUES (3186, '640181', '靈武市', 640100, 3, '中國,寧夏回族自治區,銀川市,靈武市', 106, 38, 'Lingwu');
INSERT INTO "public"."Sys_Region" VALUES (3187, '640200', '石嘴山市', 640000, 2, '中國,寧夏回族自治區,石嘴山市', 106, 39, 'Shizuishan');
INSERT INTO "public"."Sys_Region" VALUES (3188, '640202', '大武口區', 640200, 3, '中國,寧夏回族自治區,石嘴山市,大武口區', 106, 39, 'Dawukou');
INSERT INTO "public"."Sys_Region" VALUES (3189, '640205', '惠農區', 640200, 3, '中國,寧夏回族自治區,石嘴山市,惠農區', 107, 39, 'Huinong');
INSERT INTO "public"."Sys_Region" VALUES (3190, '640221', '平羅縣', 640200, 3, '中國,寧夏回族自治區,石嘴山市,平羅縣', 107, 39, 'Pingluo');
INSERT INTO "public"."Sys_Region" VALUES (3191, '640300', '吳忠市', 640000, 2, '中國,寧夏回族自治區,吳忠市', 106, 38, 'Wuzhong');
INSERT INTO "public"."Sys_Region" VALUES (3192, '640302', '利通區', 640300, 3, '中國,寧夏回族自治區,吳忠市,利通區', 106, 38, 'Litong');
INSERT INTO "public"."Sys_Region" VALUES (3193, '640303', '紅寺堡區', 640300, 3, '中國,寧夏回族自治區,吳忠市,紅寺堡區', 106, 38, 'Hongsibao');
INSERT INTO "public"."Sys_Region" VALUES (3194, '640323', '鹽池縣', 640300, 3, '中國,寧夏回族自治區,吳忠市,鹽池縣', 107, 38, 'Yanchi');
INSERT INTO "public"."Sys_Region" VALUES (3195, '640324', '同心縣', 640300, 3, '中國,寧夏回族自治區,吳忠市,同心縣', 106, 37, 'Tongxin');
INSERT INTO "public"."Sys_Region" VALUES (3196, '640381', '青銅峽市', 640300, 3, '中國,寧夏回族自治區,吳忠市,青銅峽市', 106, 38, 'Qingtongxia');
INSERT INTO "public"."Sys_Region" VALUES (3197, '640400', '固原市', 640000, 2, '中國,寧夏回族自治區,固原市', 106, 36, 'Guyuan');
INSERT INTO "public"."Sys_Region" VALUES (3198, '640402', '原州區', 640400, 3, '中國,寧夏回族自治區,固原市,原州區', 106, 36, 'Yuanzhou');
INSERT INTO "public"."Sys_Region" VALUES (3199, '640422', '西吉縣', 640400, 3, '中國,寧夏回族自治區,固原市,西吉縣', 106, 36, 'Xiji');
INSERT INTO "public"."Sys_Region" VALUES (3200, '640423', '隆德縣', 640400, 3, '中國,寧夏回族自治區,固原市,隆德縣', 106, 36, 'Longde');
INSERT INTO "public"."Sys_Region" VALUES (3201, '640424', '涇源縣', 640400, 3, '中國,寧夏回族自治區,固原市,涇源縣', 106, 35, 'Jingyuan');
INSERT INTO "public"."Sys_Region" VALUES (3202, '640425', '彭陽縣', 640400, 3, '中國,寧夏回族自治區,固原市,彭陽縣', 107, 36, 'Pengyang');
INSERT INTO "public"."Sys_Region" VALUES (3203, '640500', '中衛市', 640000, 2, '中國,寧夏回族自治區,中衛市', 105, 38, 'Zhongwei');
INSERT INTO "public"."Sys_Region" VALUES (3204, '640502', '沙坡頭區', 640500, 3, '中國,寧夏回族自治區,中衛市,沙坡頭區', 105, 38, 'Shapotou');
INSERT INTO "public"."Sys_Region" VALUES (3205, '640521', '中寧縣', 640500, 3, '中國,寧夏回族自治區,中衛市,中寧縣', 106, 37, 'Zhongning');
INSERT INTO "public"."Sys_Region" VALUES (3206, '640522', '海原縣', 640500, 3, '中國,寧夏回族自治區,中衛市,海原縣', 106, 37, 'Haiyuan');
INSERT INTO "public"."Sys_Region" VALUES (3207, '650000', '新疆維吾爾自治區', 100000, 1, '中國,新疆維吾爾自治區', 88, 44, 'Xinjiang');
INSERT INTO "public"."Sys_Region" VALUES (3208, '650100', '烏魯木齊市', 650000, 2, '中國,新疆維吾爾自治區,烏魯木齊市', 88, 44, 'Urumqi');
INSERT INTO "public"."Sys_Region" VALUES (3209, '650102', '天山區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,天山區', 88, 44, 'Tianshan');
INSERT INTO "public"."Sys_Region" VALUES (3210, '650103', '沙依巴克區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,沙依巴克區', 88, 44, 'Shayibake');
INSERT INTO "public"."Sys_Region" VALUES (3211, '650104', '新市區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,新市區', 88, 44, 'Xinshi');
INSERT INTO "public"."Sys_Region" VALUES (3212, '650105', '水磨溝區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,水磨溝區', 88, 44, 'Shuimogou');
INSERT INTO "public"."Sys_Region" VALUES (3213, '650106', '頭屯河區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,頭屯河區', 87, 44, 'Toutunhe');
INSERT INTO "public"."Sys_Region" VALUES (3214, '650107', '達坂城區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,達坂城區', 88, 43, 'Dabancheng');
INSERT INTO "public"."Sys_Region" VALUES (3215, '650109', '米東區', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,米東區', 88, 44, 'Midong');
INSERT INTO "public"."Sys_Region" VALUES (3216, '650121', '烏魯木齊縣', 650100, 3, '中國,新疆維吾爾自治區,烏魯木齊市,烏魯木齊縣', 87, 43, 'Wulumuqi');
INSERT INTO "public"."Sys_Region" VALUES (3217, '650200', '克拉瑪依市', 650000, 2, '中國,新疆維吾爾自治區,克拉瑪依市', 85, 46, 'Karamay');
INSERT INTO "public"."Sys_Region" VALUES (3218, '650202', '獨山子區', 650200, 3, '中國,新疆維吾爾自治區,克拉瑪依市,獨山子區', 85, 44, 'Dushanzi');
INSERT INTO "public"."Sys_Region" VALUES (3219, '650203', '克拉瑪依區', 650200, 3, '中國,新疆維吾爾自治區,克拉瑪依市,克拉瑪依區', 85, 46, 'Kelamayi');
INSERT INTO "public"."Sys_Region" VALUES (3220, '650204', '白堿灘區', 650200, 3, '中國,新疆維吾爾自治區,克拉瑪依市,白堿灘區', 85, 46, 'Baijiantan');
INSERT INTO "public"."Sys_Region" VALUES (3221, '650205', '烏爾禾區', 650200, 3, '中國,新疆維吾爾自治區,克拉瑪依市,烏爾禾區', 86, 46, 'Wuerhe');
INSERT INTO "public"."Sys_Region" VALUES (3222, '652100', '吐魯番地區', 650000, 2, '中國,新疆維吾爾自治區,吐魯番地區', 89, 43, 'Turpan');
INSERT INTO "public"."Sys_Region" VALUES (3223, '652101', '吐魯番市', 652100, 3, '中國,新疆維吾爾自治區,吐魯番地區,吐魯番市', 89, 43, 'Tulufan');
INSERT INTO "public"."Sys_Region" VALUES (3224, '652122', '鄯善縣', 652100, 3, '中國,新疆維吾爾自治區,吐魯番地區,鄯善縣', 90, 43, 'Shanshan');
INSERT INTO "public"."Sys_Region" VALUES (3225, '652123', '托克遜縣', 652100, 3, '中國,新疆維吾爾自治區,吐魯番地區,托克遜縣', 89, 43, 'Tuokexun');
INSERT INTO "public"."Sys_Region" VALUES (3226, '652200', '哈密地區', 650000, 2, '中國,新疆維吾爾自治區,哈密地區', 94, 43, 'Hami');
INSERT INTO "public"."Sys_Region" VALUES (3227, '652201', '哈密市', 652200, 3, '中國,新疆維吾爾自治區,哈密地區,哈密市', 94, 43, 'Hami');
INSERT INTO "public"."Sys_Region" VALUES (3228, '652222', '巴里坤哈薩克自治縣', 652200, 3, '中國,新疆維吾爾自治區,哈密地區,巴里坤哈薩克自治縣', 93, 44, 'Balikun');
INSERT INTO "public"."Sys_Region" VALUES (3229, '652223', '伊吾縣', 652200, 3, '中國,新疆維吾爾自治區,哈密地區,伊吾縣', 95, 43, 'Yiwu');
INSERT INTO "public"."Sys_Region" VALUES (3230, '652300', '昌吉回族自治州', 650000, 2, '中國,新疆維吾爾自治區,昌吉回族自治州', 87, 44, 'Changji');
INSERT INTO "public"."Sys_Region" VALUES (3231, '652301', '昌吉市', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,昌吉市', 87, 44, 'Changji');
INSERT INTO "public"."Sys_Region" VALUES (3232, '652302', '阜康市', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,阜康市', 88, 44, 'Fukang');
INSERT INTO "public"."Sys_Region" VALUES (3233, '652323', '呼圖壁縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,呼圖壁縣', 87, 44, 'Hutubi');
INSERT INTO "public"."Sys_Region" VALUES (3234, '652324', '瑪納斯縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,瑪納斯縣', 86, 44, 'Manasi');
INSERT INTO "public"."Sys_Region" VALUES (3235, '652325', '奇臺縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,奇臺縣', 90, 44, 'Qitai');
INSERT INTO "public"."Sys_Region" VALUES (3236, '652327', '吉木薩爾縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,吉木薩爾縣', 89, 44, 'Jimusaer');
INSERT INTO "public"."Sys_Region" VALUES (3237, '652328', '木壘哈薩克自治縣', 652300, 3, '中國,新疆維吾爾自治區,昌吉回族自治州,木壘哈薩克自治縣', 90, 44, 'Mulei');
INSERT INTO "public"."Sys_Region" VALUES (3238, '652700', '博爾塔拉蒙古自治州', 650000, 2, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州', 82, 45, 'Bortala');
INSERT INTO "public"."Sys_Region" VALUES (3239, '652701', '博樂市', 652700, 3, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州,博樂市', 82, 45, 'Bole');
INSERT INTO "public"."Sys_Region" VALUES (3240, '652702', '阿拉山口市', 652700, 3, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州,阿拉山口市', 83, 45, 'Alashankou');
INSERT INTO "public"."Sys_Region" VALUES (3241, '652722', '精河縣', 652700, 3, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州,精河縣', 83, 45, 'Jinghe');
INSERT INTO "public"."Sys_Region" VALUES (3242, '652723', '溫泉縣', 652700, 3, '中國,新疆維吾爾自治區,博爾塔拉蒙古自治州,溫泉縣', 81, 45, 'Wenquan');
INSERT INTO "public"."Sys_Region" VALUES (3243, '652800', '巴音郭楞蒙古自治州', 650000, 2, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州', 86, 42, 'Bayingol');
INSERT INTO "public"."Sys_Region" VALUES (3244, '652801', '庫爾勒市', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,庫爾勒市', 86, 42, 'Kuerle');
INSERT INTO "public"."Sys_Region" VALUES (3245, '652822', '輪臺縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,輪臺縣', 84, 42, 'Luntai');
INSERT INTO "public"."Sys_Region" VALUES (3246, '652823', '尉犁縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,尉犁縣', 86, 41, 'Yuli');
INSERT INTO "public"."Sys_Region" VALUES (3247, '652824', '若羌縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,若羌縣', 88, 39, 'Ruoqiang');
INSERT INTO "public"."Sys_Region" VALUES (3248, '652825', '且末縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,且末縣', 86, 38, 'Qiemo');
INSERT INTO "public"."Sys_Region" VALUES (3249, '652826', '焉耆回族自治縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,焉耆回族自治縣', 87, 42, 'Yanqi');
INSERT INTO "public"."Sys_Region" VALUES (3250, '652827', '和靜縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,和靜縣', 86, 42, 'Hejing');
INSERT INTO "public"."Sys_Region" VALUES (3251, '652828', '和碩縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,和碩縣', 87, 42, 'Heshuo');
INSERT INTO "public"."Sys_Region" VALUES (3252, '652829', '博湖縣', 652800, 3, '中國,新疆維吾爾自治區,巴音郭楞蒙古自治州,博湖縣', 87, 42, 'Bohu');
INSERT INTO "public"."Sys_Region" VALUES (3253, '652900', '阿克蘇地區', 650000, 2, '中國,新疆維吾爾自治區,阿克蘇地區', 80, 41, 'Aksu');
INSERT INTO "public"."Sys_Region" VALUES (3254, '652901', '阿克蘇市', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,阿克蘇市', 80, 41, 'Akesu');
INSERT INTO "public"."Sys_Region" VALUES (3255, '652922', '溫宿縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,溫宿縣', 80, 41, 'Wensu');
INSERT INTO "public"."Sys_Region" VALUES (3256, '652923', '庫車縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,庫車縣', 83, 42, 'Kuche');
INSERT INTO "public"."Sys_Region" VALUES (3257, '652924', '沙雅縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,沙雅縣', 83, 41, 'Shaya');
INSERT INTO "public"."Sys_Region" VALUES (3258, '652925', '新和縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,新和縣', 83, 42, 'Xinhe');
INSERT INTO "public"."Sys_Region" VALUES (3259, '652926', '拜城縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,拜城縣', 82, 42, 'Baicheng');
INSERT INTO "public"."Sys_Region" VALUES (3260, '652927', '烏什縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,烏什縣', 79, 41, 'Wushi');
INSERT INTO "public"."Sys_Region" VALUES (3261, '652928', '阿瓦提縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,阿瓦提縣', 80, 41, 'Awati');
INSERT INTO "public"."Sys_Region" VALUES (3262, '652929', '柯坪縣', 652900, 3, '中國,新疆維吾爾自治區,阿克蘇地區,柯坪縣', 79, 41, 'Keping');
INSERT INTO "public"."Sys_Region" VALUES (3263, '653000', '克孜勒蘇柯爾克孜自治州', 650000, 2, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州', 76, 40, 'Kizilsu');
INSERT INTO "public"."Sys_Region" VALUES (3264, '653001', '阿圖什市', 653000, 3, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州,阿圖什市', 76, 40, 'Atushi');
INSERT INTO "public"."Sys_Region" VALUES (3265, '653022', '阿克陶縣', 653000, 3, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州,阿克陶縣', 76, 39, 'Aketao');
INSERT INTO "public"."Sys_Region" VALUES (3266, '653023', '阿合奇縣', 653000, 3, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州,阿合奇縣', 78, 41, 'Aheqi');
INSERT INTO "public"."Sys_Region" VALUES (3267, '653024', '烏恰縣', 653000, 3, '中國,新疆維吾爾自治區,克孜勒蘇柯爾克孜自治州,烏恰縣', 75, 40, 'Wuqia');
INSERT INTO "public"."Sys_Region" VALUES (3268, '653100', '喀什地區', 650000, 2, '中國,新疆維吾爾自治區,喀什地區', 76, 39, 'Kashgar');
INSERT INTO "public"."Sys_Region" VALUES (3269, '653101', '喀什市', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,喀什市', 76, 39, 'Kashi');
INSERT INTO "public"."Sys_Region" VALUES (3270, '653121', '疏附縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,疏附縣', 76, 39, 'Shufu');
INSERT INTO "public"."Sys_Region" VALUES (3271, '653122', '疏勒縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,疏勒縣', 76, 39, 'Shule');
INSERT INTO "public"."Sys_Region" VALUES (3272, '653123', '英吉沙縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,英吉沙縣', 76, 39, 'Yingjisha');
INSERT INTO "public"."Sys_Region" VALUES (3273, '653124', '澤普縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,澤普縣', 77, 38, 'Zepu');
INSERT INTO "public"."Sys_Region" VALUES (3274, '653125', '莎車縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,莎車縣', 77, 38, 'Shache');
INSERT INTO "public"."Sys_Region" VALUES (3275, '653126', '葉城縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,葉城縣', 77, 38, 'Yecheng');
INSERT INTO "public"."Sys_Region" VALUES (3276, '653127', '麥蓋提縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,麥蓋提縣', 78, 39, 'Maigaiti');
INSERT INTO "public"."Sys_Region" VALUES (3277, '653128', '岳普湖縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,岳普湖縣', 77, 39, 'Yuepuhu');
INSERT INTO "public"."Sys_Region" VALUES (3278, '653129', '伽師縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,伽師縣', 77, 39, 'Jiashi');
INSERT INTO "public"."Sys_Region" VALUES (3279, '653130', '巴楚縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,巴楚縣', 79, 40, 'Bachu');
INSERT INTO "public"."Sys_Region" VALUES (3280, '653131', '塔什庫爾干塔吉克自治縣', 653100, 3, '中國,新疆維吾爾自治區,喀什地區,塔什庫爾干塔吉克自治縣', 75, 38, 'Tashikuergantajike');
INSERT INTO "public"."Sys_Region" VALUES (3281, '653200', '和田地區', 650000, 2, '中國,新疆維吾爾自治區,和田地區', 80, 37, 'Hotan');
INSERT INTO "public"."Sys_Region" VALUES (3282, '653201', '和田市', 653200, 3, '中國,新疆維吾爾自治區,和田地區,和田市', 80, 37, 'Hetianshi');
INSERT INTO "public"."Sys_Region" VALUES (3283, '653221', '和田縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,和田縣', 80, 37, 'Hetianxian');
INSERT INTO "public"."Sys_Region" VALUES (3284, '653222', '墨玉縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,墨玉縣', 80, 37, 'Moyu');
INSERT INTO "public"."Sys_Region" VALUES (3285, '653223', '皮山縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,皮山縣', 78, 38, 'Pishan');
INSERT INTO "public"."Sys_Region" VALUES (3286, '653224', '洛浦縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,洛浦縣', 80, 37, 'Luopu');
INSERT INTO "public"."Sys_Region" VALUES (3287, '653225', '策勒縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,策勒縣', 81, 37, 'Cele');
INSERT INTO "public"."Sys_Region" VALUES (3288, '653226', '于田縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,于田縣', 82, 37, 'Yutian');
INSERT INTO "public"."Sys_Region" VALUES (3289, '653227', '民豐縣', 653200, 3, '中國,新疆維吾爾自治區,和田地區,民豐縣', 83, 37, 'Minfeng');
INSERT INTO "public"."Sys_Region" VALUES (3290, '654000', '伊犁哈薩克自治州', 650000, 2, '中國,新疆維吾爾自治區,伊犁哈薩克自治州', 81, 44, 'Ili');
INSERT INTO "public"."Sys_Region" VALUES (3291, '654002', '伊寧市', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,伊寧市', 81, 44, 'Yining');
INSERT INTO "public"."Sys_Region" VALUES (3292, '654003', '奎屯市', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,奎屯市', 85, 44, 'Kuitun');
INSERT INTO "public"."Sys_Region" VALUES (3293, '654004', '霍爾果斯市', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,霍爾果斯市', 80, 44, 'Huoerguosi');
INSERT INTO "public"."Sys_Region" VALUES (3294, '654021', '伊寧縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,伊寧縣', 82, 44, 'Yining');
INSERT INTO "public"."Sys_Region" VALUES (3295, '654022', '察布查爾錫伯自治縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,察布查爾錫伯自治縣', 81, 44, 'Chabuchaerxibo');
INSERT INTO "public"."Sys_Region" VALUES (3296, '654023', '霍城縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,霍城縣', 81, 44, 'Huocheng');
INSERT INTO "public"."Sys_Region" VALUES (3297, '654024', '鞏留縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,鞏留縣', 82, 43, 'Gongliu');
INSERT INTO "public"."Sys_Region" VALUES (3298, '654025', '新源縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,新源縣', 83, 43, 'Xinyuan');
INSERT INTO "public"."Sys_Region" VALUES (3299, '654026', '昭蘇縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,昭蘇縣', 81, 43, 'Zhaosu');
INSERT INTO "public"."Sys_Region" VALUES (3300, '654027', '特克斯縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,特克斯縣', 82, 43, 'Tekesi');
INSERT INTO "public"."Sys_Region" VALUES (3301, '654028', '尼勒克縣', 654000, 3, '中國,新疆維吾爾自治區,伊犁哈薩克自治州,尼勒克縣', 83, 44, 'Nileke');
INSERT INTO "public"."Sys_Region" VALUES (3302, '654200', '塔城地區', 650000, 2, '中國,新疆維吾爾自治區,塔城地區', 83, 47, 'Qoqek');
INSERT INTO "public"."Sys_Region" VALUES (3303, '654201', '塔城市', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,塔城市', 83, 47, 'Tacheng');
INSERT INTO "public"."Sys_Region" VALUES (3304, '654202', '烏蘇市', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,烏蘇市', 85, 44, 'Wusu');
INSERT INTO "public"."Sys_Region" VALUES (3305, '654221', '額敏縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,額敏縣', 84, 47, 'Emin');
INSERT INTO "public"."Sys_Region" VALUES (3306, '654223', '沙灣縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,沙灣縣', 86, 44, 'Shawan');
INSERT INTO "public"."Sys_Region" VALUES (3307, '654224', '托里縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,托里縣', 84, 46, 'Tuoli');
INSERT INTO "public"."Sys_Region" VALUES (3308, '654225', '裕民縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,裕民縣', 83, 46, 'Yumin');
INSERT INTO "public"."Sys_Region" VALUES (3309, '654226', '和布克賽爾蒙古自治縣', 654200, 3, '中國,新疆維吾爾自治區,塔城地區,和布克賽爾蒙古自治縣', 86, 47, 'Hebukesaier');
INSERT INTO "public"."Sys_Region" VALUES (3310, '654300', '阿勒泰地區', 650000, 2, '中國,新疆維吾爾自治區,阿勒泰地區', 88, 48, 'Altay');
INSERT INTO "public"."Sys_Region" VALUES (3311, '654301', '阿勒泰市', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,阿勒泰市', 88, 48, 'Aletai');
INSERT INTO "public"."Sys_Region" VALUES (3312, '654321', '布爾津縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,布爾津縣', 87, 48, 'Buerjin');
INSERT INTO "public"."Sys_Region" VALUES (3313, '654322', '富蘊縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,富蘊縣', 90, 47, 'Fuyun');
INSERT INTO "public"."Sys_Region" VALUES (3314, '654323', '福海縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,福海縣', 87, 47, 'Fuhai');
INSERT INTO "public"."Sys_Region" VALUES (3315, '654324', '哈巴河縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,哈巴河縣', 86, 48, 'Habahe');
INSERT INTO "public"."Sys_Region" VALUES (3316, '654325', '青河縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,青河縣', 90, 47, 'Qinghe');
INSERT INTO "public"."Sys_Region" VALUES (3317, '654326', '吉木乃縣', 654300, 3, '中國,新疆維吾爾自治區,阿勒泰地區,吉木乃縣', 86, 47, 'Jimunai');
INSERT INTO "public"."Sys_Region" VALUES (3318, '659000', '直轄縣級', 650000, 2, '中國,新疆維吾爾自治區,直轄縣級', 91, 30, '');
INSERT INTO "public"."Sys_Region" VALUES (3319, '659001', '石河子市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,石河子市', 86, 44, 'Shihezi');
INSERT INTO "public"."Sys_Region" VALUES (3320, '659002', '阿拉爾市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,阿拉爾市', 81, 41, 'Aral');
INSERT INTO "public"."Sys_Region" VALUES (3321, '659003', '圖木舒克市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,圖木舒克市', 79, 40, 'Tumxuk');
INSERT INTO "public"."Sys_Region" VALUES (3322, '659004', '五家渠市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,五家渠市', 88, 44, 'Wujiaqu');
INSERT INTO "public"."Sys_Region" VALUES (3323, '659005', '北屯市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,北屯市', 88, 47, 'Beitun');
INSERT INTO "public"."Sys_Region" VALUES (3324, '659006', '鐵門關市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,鐵門關市', 86, 42, 'Tiemenguan');
INSERT INTO "public"."Sys_Region" VALUES (3325, '659007', '雙河市', 659000, 3, '中國,新疆維吾爾自治區,直轄縣級,雙河市', 91, 30, 'Shuanghe');
INSERT INTO "public"."Sys_Region" VALUES (3326, '710000', '臺灣', 100000, 1, '中國,臺灣', 122, 25, 'Taiwan');
INSERT INTO "public"."Sys_Region" VALUES (3327, '710100', '臺北市', 710000, 2, '中國,臺灣,臺北市', 122, 25, 'Taipei');
INSERT INTO "public"."Sys_Region" VALUES (3328, '710101', '松山區', 710100, 3, '中國,臺灣,臺北市,松山區', 122, 25, 'Songshan');
INSERT INTO "public"."Sys_Region" VALUES (3329, '710102', '信義區', 710100, 3, '中國,臺灣,臺北市,信義區', 122, 25, 'Xinyi');
INSERT INTO "public"."Sys_Region" VALUES (3330, '710103', '大安區', 710100, 3, '中國,臺灣,臺北市,大安區', 122, 25, 'Daan');
INSERT INTO "public"."Sys_Region" VALUES (3331, '710104', '中山區', 710100, 3, '中國,臺灣,臺北市,中山區', 122, 25, 'Zhongshan');
INSERT INTO "public"."Sys_Region" VALUES (3332, '710105', '中正區', 710100, 3, '中國,臺灣,臺北市,中正區', 122, 25, 'Zhongzheng');
INSERT INTO "public"."Sys_Region" VALUES (3333, '710106', '大同區', 710100, 3, '中國,臺灣,臺北市,大同區', 122, 25, 'Datong');
INSERT INTO "public"."Sys_Region" VALUES (3334, '710107', '萬華區', 710100, 3, '中國,臺灣,臺北市,萬華區', 121, 25, 'Wanhua');
INSERT INTO "public"."Sys_Region" VALUES (3335, '710108', '文山區', 710100, 3, '中國,臺灣,臺北市,文山區', 122, 25, 'Wenshan');
INSERT INTO "public"."Sys_Region" VALUES (3336, '710109', '南港區', 710100, 3, '中國,臺灣,臺北市,南港區', 122, 25, 'Nangang');
INSERT INTO "public"."Sys_Region" VALUES (3337, '710110', '內湖區', 710100, 3, '中國,臺灣,臺北市,內湖區', 122, 25, 'Nahu');
INSERT INTO "public"."Sys_Region" VALUES (3338, '710111', '士林區', 710100, 3, '中國,臺灣,臺北市,士林區', 122, 25, 'Shilin');
INSERT INTO "public"."Sys_Region" VALUES (3339, '710112', '北投區', 710100, 3, '中國,臺灣,臺北市,北投區', 122, 25, 'Beitou');
INSERT INTO "public"."Sys_Region" VALUES (3340, '710200', '高雄市', 710000, 2, '中國,臺灣,高雄市', 120, 23, 'Kaohsiung');
INSERT INTO "public"."Sys_Region" VALUES (3341, '710201', '鹽埕區', 710200, 3, '中國,臺灣,高雄市,鹽埕區', 120, 23, 'Yancheng');
INSERT INTO "public"."Sys_Region" VALUES (3342, '710202', '鼓山區', 710200, 3, '中國,臺灣,高雄市,鼓山區', 120, 23, 'Gushan');
INSERT INTO "public"."Sys_Region" VALUES (3343, '710203', '左營區', 710200, 3, '中國,臺灣,高雄市,左營區', 120, 23, 'Zuoying');
INSERT INTO "public"."Sys_Region" VALUES (3344, '710204', '楠梓區', 710200, 3, '中國,臺灣,高雄市,楠梓區', 120, 23, 'Nanzi');
INSERT INTO "public"."Sys_Region" VALUES (3345, '710205', '三民區', 710200, 3, '中國,臺灣,高雄市,三民區', 120, 23, 'Sanmin');
INSERT INTO "public"."Sys_Region" VALUES (3346, '710206', '新興區', 710200, 3, '中國,臺灣,高雄市,新興區', 120, 23, 'Xinxing');
INSERT INTO "public"."Sys_Region" VALUES (3347, '710207', '前金區', 710200, 3, '中國,臺灣,高雄市,前金區', 120, 23, 'Qianjin');
INSERT INTO "public"."Sys_Region" VALUES (3348, '710208', '苓雅區', 710200, 3, '中國,臺灣,高雄市,苓雅區', 120, 23, 'Lingya');
INSERT INTO "public"."Sys_Region" VALUES (3349, '710209', '前鎮區', 710200, 3, '中國,臺灣,高雄市,前鎮區', 120, 23, 'Qianzhen');
INSERT INTO "public"."Sys_Region" VALUES (3350, '710210', '旗津區', 710200, 3, '中國,臺灣,高雄市,旗津區', 120, 23, 'Qijin');
INSERT INTO "public"."Sys_Region" VALUES (3351, '710211', '小港區', 710200, 3, '中國,臺灣,高雄市,小港區', 120, 23, 'Xiaogang');
INSERT INTO "public"."Sys_Region" VALUES (3352, '710212', '鳳山區', 710200, 3, '中國,臺灣,高雄市,鳳山區', 120, 23, 'Fengshan');
INSERT INTO "public"."Sys_Region" VALUES (3353, '710213', '林園區', 710200, 3, '中國,臺灣,高雄市,林園區', 120, 23, 'Linyuan');
INSERT INTO "public"."Sys_Region" VALUES (3354, '710214', '大寮區', 710200, 3, '中國,臺灣,高雄市,大寮區', 120, 23, 'Daliao');
INSERT INTO "public"."Sys_Region" VALUES (3355, '710215', '大樹區', 710200, 3, '中國,臺灣,高雄市,大樹區', 120, 23, 'Dashu');
INSERT INTO "public"."Sys_Region" VALUES (3356, '710216', '大社區', 710200, 3, '中國,臺灣,高雄市,大社區', 120, 23, 'Dashe');
INSERT INTO "public"."Sys_Region" VALUES (3357, '710217', '仁武區', 710200, 3, '中國,臺灣,高雄市,仁武區', 120, 23, 'Renwu');
INSERT INTO "public"."Sys_Region" VALUES (3358, '710218', '鳥松區', 710200, 3, '中國,臺灣,高雄市,鳥松區', 120, 23, 'Niaosong');
INSERT INTO "public"."Sys_Region" VALUES (3359, '710219', '岡山區', 710200, 3, '中國,臺灣,高雄市,岡山區', 120, 23, 'Gangshan');
INSERT INTO "public"."Sys_Region" VALUES (3360, '710220', '橋頭區', 710200, 3, '中國,臺灣,高雄市,橋頭區', 120, 23, 'Qiaotou');
INSERT INTO "public"."Sys_Region" VALUES (3361, '710221', '燕巢區', 710200, 3, '中國,臺灣,高雄市,燕巢區', 120, 23, 'Yanchao');
INSERT INTO "public"."Sys_Region" VALUES (3362, '710222', '田寮區', 710200, 3, '中國,臺灣,高雄市,田寮區', 120, 23, 'Tianliao');
INSERT INTO "public"."Sys_Region" VALUES (3363, '710223', '阿蓮區', 710200, 3, '中國,臺灣,高雄市,阿蓮區', 120, 23, 'Alian');
INSERT INTO "public"."Sys_Region" VALUES (3364, '710224', '路竹區', 710200, 3, '中國,臺灣,高雄市,路竹區', 120, 23, 'Luzhu');
INSERT INTO "public"."Sys_Region" VALUES (3365, '710225', '湖內區', 710200, 3, '中國,臺灣,高雄市,湖內區', 120, 23, 'Huna');
INSERT INTO "public"."Sys_Region" VALUES (3366, '710226', '茄萣區', 710200, 3, '中國,臺灣,高雄市,茄萣區', 120, 23, 'Qieding');
INSERT INTO "public"."Sys_Region" VALUES (3367, '710227', '永安區', 710200, 3, '中國,臺灣,高雄市,永安區', 120, 23, 'Yongan');
INSERT INTO "public"."Sys_Region" VALUES (3368, '710228', '彌陀區', 710200, 3, '中國,臺灣,高雄市,彌陀區', 120, 23, 'Mituo');
INSERT INTO "public"."Sys_Region" VALUES (3369, '710229', '梓官區', 710200, 3, '中國,臺灣,高雄市,梓官區', 120, 23, 'Ziguan');
INSERT INTO "public"."Sys_Region" VALUES (3370, '710230', '旗山區', 710200, 3, '中國,臺灣,高雄市,旗山區', 120, 23, 'Qishan');
INSERT INTO "public"."Sys_Region" VALUES (3371, '710231', '美濃區', 710200, 3, '中國,臺灣,高雄市,美濃區', 121, 23, 'Meinong');
INSERT INTO "public"."Sys_Region" VALUES (3372, '710232', '六龜區', 710200, 3, '中國,臺灣,高雄市,六龜區', 121, 23, 'Liugui');
INSERT INTO "public"."Sys_Region" VALUES (3373, '710233', '甲仙區', 710200, 3, '中國,臺灣,高雄市,甲仙區', 121, 23, 'Jiaxian');
INSERT INTO "public"."Sys_Region" VALUES (3374, '710234', '杉林區', 710200, 3, '中國,臺灣,高雄市,杉林區', 121, 23, 'Shanlin');
INSERT INTO "public"."Sys_Region" VALUES (3375, '710235', '內門區', 710200, 3, '中國,臺灣,高雄市,內門區', 120, 23, 'Namen');
INSERT INTO "public"."Sys_Region" VALUES (3376, '710236', '茂林區', 710200, 3, '中國,臺灣,高雄市,茂林區', 121, 23, 'Maolin');
INSERT INTO "public"."Sys_Region" VALUES (3377, '710237', '桃源區', 710200, 3, '中國,臺灣,高雄市,桃源區', 121, 23, 'Taoyuan');
INSERT INTO "public"."Sys_Region" VALUES (3378, '710238', '那瑪夏區', 710200, 3, '中國,臺灣,高雄市,那瑪夏區', 121, 23, 'Namaxia');
INSERT INTO "public"."Sys_Region" VALUES (3379, '710300', '基隆市', 710000, 2, '中國,臺灣,基隆市', 122, 25, 'Keelung');
INSERT INTO "public"."Sys_Region" VALUES (3380, '710301', '中正區', 710300, 3, '中國,臺灣,基隆市,中正區', 122, 25, 'Zhongzheng');
INSERT INTO "public"."Sys_Region" VALUES (3381, '710302', '七堵區', 710300, 3, '中國,臺灣,基隆市,七堵區', 122, 25, 'Qidu');
INSERT INTO "public"."Sys_Region" VALUES (3382, '710303', '暖暖區', 710300, 3, '中國,臺灣,基隆市,暖暖區', 122, 25, 'Nuannuan');
INSERT INTO "public"."Sys_Region" VALUES (3383, '710304', '仁愛區', 710300, 3, '中國,臺灣,基隆市,仁愛區', 122, 25, 'Renai');
INSERT INTO "public"."Sys_Region" VALUES (3384, '710305', '中山區', 710300, 3, '中國,臺灣,基隆市,中山區', 122, 25, 'Zhongshan');
INSERT INTO "public"."Sys_Region" VALUES (3385, '710306', '安樂區', 710300, 3, '中國,臺灣,基隆市,安樂區', 122, 25, 'Anle');
INSERT INTO "public"."Sys_Region" VALUES (3386, '710307', '信義區', 710300, 3, '中國,臺灣,基隆市,信義區', 122, 25, 'Xinyi');
INSERT INTO "public"."Sys_Region" VALUES (3387, '710400', '臺中市', 710000, 2, '中國,臺灣,臺中市', 121, 24, 'Taichung');
INSERT INTO "public"."Sys_Region" VALUES (3388, '710401', '中區', 710400, 3, '中國,臺灣,臺中市,中區', 121, 24, 'Zhongqu');
INSERT INTO "public"."Sys_Region" VALUES (3389, '710402', '東區', 710400, 3, '中國,臺灣,臺中市,東區', 121, 24, 'Dongqu');
INSERT INTO "public"."Sys_Region" VALUES (3390, '710403', '南區', 710400, 3, '中國,臺灣,臺中市,南區', 120, 23, 'Nanqu');
INSERT INTO "public"."Sys_Region" VALUES (3391, '710404', '西區', 710400, 3, '中國,臺灣,臺中市,西區', 121, 24, 'Xiqu');
INSERT INTO "public"."Sys_Region" VALUES (3392, '710405', '北區', 710400, 3, '中國,臺灣,臺中市,北區', 121, 24, 'Beiqu');
INSERT INTO "public"."Sys_Region" VALUES (3393, '710406', '西屯區', 710400, 3, '中國,臺灣,臺中市,西屯區', 121, 24, 'Xitun');
INSERT INTO "public"."Sys_Region" VALUES (3394, '710407', '南屯區', 710400, 3, '中國,臺灣,臺中市,南屯區', 121, 24, 'Nantun');
INSERT INTO "public"."Sys_Region" VALUES (3395, '710408', '北屯區', 710400, 3, '中國,臺灣,臺中市,北屯區', 121, 24, 'Beitun');
INSERT INTO "public"."Sys_Region" VALUES (3396, '710409', '豐原區', 710400, 3, '中國,臺灣,臺中市,豐原區', 121, 24, 'Fengyuan');
INSERT INTO "public"."Sys_Region" VALUES (3397, '710410', '東勢區', 710400, 3, '中國,臺灣,臺中市,東勢區', 121, 24, 'Dongshi');
INSERT INTO "public"."Sys_Region" VALUES (3398, '710411', '大甲區', 710400, 3, '中國,臺灣,臺中市,大甲區', 121, 24, 'Dajia');
INSERT INTO "public"."Sys_Region" VALUES (3399, '710412', '清水區', 710400, 3, '中國,臺灣,臺中市,清水區', 121, 24, 'Qingshui');
INSERT INTO "public"."Sys_Region" VALUES (3400, '710413', '沙鹿區', 710400, 3, '中國,臺灣,臺中市,沙鹿區', 121, 24, 'Shalu');
INSERT INTO "public"."Sys_Region" VALUES (3401, '710414', '梧棲區', 710400, 3, '中國,臺灣,臺中市,梧棲區', 121, 24, 'Wuqi');
INSERT INTO "public"."Sys_Region" VALUES (3402, '710415', '后里區', 710400, 3, '中國,臺灣,臺中市,后里區', 121, 24, 'Houli');
INSERT INTO "public"."Sys_Region" VALUES (3403, '710416', '神岡區', 710400, 3, '中國,臺灣,臺中市,神岡區', 121, 24, 'Shengang');
INSERT INTO "public"."Sys_Region" VALUES (3404, '710417', '潭子區', 710400, 3, '中國,臺灣,臺中市,潭子區', 121, 24, 'Tanzi');
INSERT INTO "public"."Sys_Region" VALUES (3405, '710418', '大雅區', 710400, 3, '中國,臺灣,臺中市,大雅區', 121, 24, 'Daya');
INSERT INTO "public"."Sys_Region" VALUES (3406, '710419', '新社區', 710400, 3, '中國,臺灣,臺中市,新社區', 121, 24, 'Xinshe');
INSERT INTO "public"."Sys_Region" VALUES (3407, '710420', '石岡區', 710400, 3, '中國,臺灣,臺中市,石岡區', 121, 24, 'Shigang');
INSERT INTO "public"."Sys_Region" VALUES (3408, '710421', '外埔區', 710400, 3, '中國,臺灣,臺中市,外埔區', 121, 24, 'Waipu');
INSERT INTO "public"."Sys_Region" VALUES (3409, '710422', '大安區', 710400, 3, '中國,臺灣,臺中市,大安區', 121, 24, 'Daan');
INSERT INTO "public"."Sys_Region" VALUES (3410, '710423', '烏日區', 710400, 3, '中國,臺灣,臺中市,烏日區', 121, 24, 'Wuri');
INSERT INTO "public"."Sys_Region" VALUES (3411, '710424', '大肚區', 710400, 3, '中國,臺灣,臺中市,大肚區', 121, 24, 'Dadu');
INSERT INTO "public"."Sys_Region" VALUES (3412, '710425', '龍井區', 710400, 3, '中國,臺灣,臺中市,龍井區', 121, 24, 'Longjing');
INSERT INTO "public"."Sys_Region" VALUES (3413, '710426', '霧峰區', 710400, 3, '中國,臺灣,臺中市,霧峰區', 121, 24, 'Wufeng');
INSERT INTO "public"."Sys_Region" VALUES (3414, '710427', '太平區', 710400, 3, '中國,臺灣,臺中市,太平區', 121, 24, 'Taiping');
INSERT INTO "public"."Sys_Region" VALUES (3415, '710428', '大里區', 710400, 3, '中國,臺灣,臺中市,大里區', 121, 24, 'Dali');
INSERT INTO "public"."Sys_Region" VALUES (3416, '710429', '和平區', 710400, 3, '中國,臺灣,臺中市,和平區', 121, 24, 'Heping');
INSERT INTO "public"."Sys_Region" VALUES (3417, '710500', '臺南市', 710000, 2, '中國,臺灣,臺南市', 120, 23, 'Tainan');
INSERT INTO "public"."Sys_Region" VALUES (3418, '710501', '東區', 710500, 3, '中國,臺灣,臺南市,東區', 120, 23, 'Dongqu');
INSERT INTO "public"."Sys_Region" VALUES (3419, '710502', '南區', 710500, 3, '中國,臺灣,臺南市,南區', 120, 23, 'Nanqu');
INSERT INTO "public"."Sys_Region" VALUES (3420, '710504', '北區', 710500, 3, '中國,臺灣,臺南市,北區', 121, 24, 'Beiqu');
INSERT INTO "public"."Sys_Region" VALUES (3421, '710506', '安南區', 710500, 3, '中國,臺灣,臺南市,安南區', 120, 23, 'Annan');
INSERT INTO "public"."Sys_Region" VALUES (3422, '710507', '安平區', 710500, 3, '中國,臺灣,臺南市,安平區', 120, 23, 'Anping');
INSERT INTO "public"."Sys_Region" VALUES (3423, '710508', '中西區', 710500, 3, '中國,臺灣,臺南市,中西區', 120, 23, 'Zhongxi');
INSERT INTO "public"."Sys_Region" VALUES (3424, '710509', '新營區', 710500, 3, '中國,臺灣,臺南市,新營區', 120, 23, 'Xinying');
INSERT INTO "public"."Sys_Region" VALUES (3425, '710510', '鹽水區', 710500, 3, '中國,臺灣,臺南市,鹽水區', 120, 23, 'Yanshui');
INSERT INTO "public"."Sys_Region" VALUES (3426, '710511', '白河區', 710500, 3, '中國,臺灣,臺南市,白河區', 120, 23, 'Baihe');
INSERT INTO "public"."Sys_Region" VALUES (3427, '710512', '柳營區', 710500, 3, '中國,臺灣,臺南市,柳營區', 120, 23, 'Liuying');
INSERT INTO "public"."Sys_Region" VALUES (3428, '710513', '后壁區', 710500, 3, '中國,臺灣,臺南市,后壁區', 120, 23, 'Houbi');
INSERT INTO "public"."Sys_Region" VALUES (3429, '710514', '東山區', 710500, 3, '中國,臺灣,臺南市,東山區', 120, 23, 'Dongshan');
INSERT INTO "public"."Sys_Region" VALUES (3430, '710515', '麻豆區', 710500, 3, '中國,臺灣,臺南市,麻豆區', 120, 23, 'Madou');
INSERT INTO "public"."Sys_Region" VALUES (3431, '710516', '下營區', 710500, 3, '中國,臺灣,臺南市,下營區', 120, 23, 'Xiaying');
INSERT INTO "public"."Sys_Region" VALUES (3432, '710517', '六甲區', 710500, 3, '中國,臺灣,臺南市,六甲區', 120, 23, 'Liujia');
INSERT INTO "public"."Sys_Region" VALUES (3433, '710518', '官田區', 710500, 3, '中國,臺灣,臺南市,官田區', 120, 23, 'Guantian');
INSERT INTO "public"."Sys_Region" VALUES (3434, '710519', '大內區', 710500, 3, '中國,臺灣,臺南市,大內區', 120, 23, 'Dana');
INSERT INTO "public"."Sys_Region" VALUES (3435, '710520', '佳里區', 710500, 3, '中國,臺灣,臺南市,佳里區', 120, 23, 'Jiali');
INSERT INTO "public"."Sys_Region" VALUES (3436, '710521', '學甲區', 710500, 3, '中國,臺灣,臺南市,學甲區', 120, 23, 'Xuejia');
INSERT INTO "public"."Sys_Region" VALUES (3437, '710522', '西港區', 710500, 3, '中國,臺灣,臺南市,西港區', 120, 23, 'Xigang');
INSERT INTO "public"."Sys_Region" VALUES (3438, '710523', '七股區', 710500, 3, '中國,臺灣,臺南市,七股區', 120, 23, 'Qigu');
INSERT INTO "public"."Sys_Region" VALUES (3439, '710524', '將軍區', 710500, 3, '中國,臺灣,臺南市,將軍區', 120, 23, 'Jiangjun');
INSERT INTO "public"."Sys_Region" VALUES (3440, '710525', '北門區', 710500, 3, '中國,臺灣,臺南市,北門區', 120, 23, 'Beimen');
INSERT INTO "public"."Sys_Region" VALUES (3441, '710526', '新化區', 710500, 3, '中國,臺灣,臺南市,新化區', 120, 23, 'Xinhua');
INSERT INTO "public"."Sys_Region" VALUES (3442, '710527', '善化區', 710500, 3, '中國,臺灣,臺南市,善化區', 120, 23, 'Shanhua');
INSERT INTO "public"."Sys_Region" VALUES (3443, '710528', '新市區', 710500, 3, '中國,臺灣,臺南市,新市區', 120, 23, 'Xinshi');
INSERT INTO "public"."Sys_Region" VALUES (3444, '710529', '安定區', 710500, 3, '中國,臺灣,臺南市,安定區', 120, 23, 'Anding');
INSERT INTO "public"."Sys_Region" VALUES (3445, '710530', '山上區', 710500, 3, '中國,臺灣,臺南市,山上區', 120, 23, 'Shanshang');
INSERT INTO "public"."Sys_Region" VALUES (3446, '710531', '玉井區', 710500, 3, '中國,臺灣,臺南市,玉井區', 120, 23, 'Yujing');
INSERT INTO "public"."Sys_Region" VALUES (3447, '710532', '楠西區', 710500, 3, '中國,臺灣,臺南市,楠西區', 120, 23, 'Nanxi');
INSERT INTO "public"."Sys_Region" VALUES (3448, '710533', '南化區', 710500, 3, '中國,臺灣,臺南市,南化區', 120, 23, 'Nanhua');
INSERT INTO "public"."Sys_Region" VALUES (3449, '710534', '左鎮區', 710500, 3, '中國,臺灣,臺南市,左鎮區', 120, 23, 'Zuozhen');
INSERT INTO "public"."Sys_Region" VALUES (3450, '710535', '仁德區', 710500, 3, '中國,臺灣,臺南市,仁德區', 120, 23, 'Rende');
INSERT INTO "public"."Sys_Region" VALUES (3451, '710536', '歸仁區', 710500, 3, '中國,臺灣,臺南市,歸仁區', 120, 23, 'Guiren');
INSERT INTO "public"."Sys_Region" VALUES (3452, '710537', '關廟區', 710500, 3, '中國,臺灣,臺南市,關廟區', 120, 23, 'Guanmiao');
INSERT INTO "public"."Sys_Region" VALUES (3453, '710538', '龍崎區', 710500, 3, '中國,臺灣,臺南市,龍崎區', 120, 23, 'Longqi');
INSERT INTO "public"."Sys_Region" VALUES (3454, '710539', '永康區', 710500, 3, '中國,臺灣,臺南市,永康區', 120, 23, 'Yongkang');
INSERT INTO "public"."Sys_Region" VALUES (3455, '710600', '新竹市', 710000, 2, '中國,臺灣,新竹市', 121, 25, 'Hsinchu');
INSERT INTO "public"."Sys_Region" VALUES (3456, '710601', '東區', 710600, 3, '中國,臺灣,新竹市,東區', 121, 25, 'Dongqu');
INSERT INTO "public"."Sys_Region" VALUES (3457, '710602', '北區', 710600, 3, '中國,臺灣,新竹市,北區', 121, 24, 'Beiqu');
INSERT INTO "public"."Sys_Region" VALUES (3458, '710603', '香山區', 710600, 3, '中國,臺灣,新竹市,香山區', 121, 25, 'Xiangshan');
INSERT INTO "public"."Sys_Region" VALUES (3459, '710700', '嘉義市', 710000, 2, '中國,臺灣,嘉義市', 120, 23, 'Chiayi');
INSERT INTO "public"."Sys_Region" VALUES (3460, '710701', '東區', 710700, 3, '中國,臺灣,嘉義市,東區', 120, 23, 'Dongqu');
INSERT INTO "public"."Sys_Region" VALUES (3461, '710702', '西區', 710700, 3, '中國,臺灣,嘉義市,西區', 120, 23, 'Xiqu');
INSERT INTO "public"."Sys_Region" VALUES (3462, '710800', '新北市', 710000, 2, '中國,臺灣,新北市', 121, 25, 'New Taipei');
INSERT INTO "public"."Sys_Region" VALUES (3463, '710801', '板橋區', 710800, 3, '中國,臺灣,新北市,板橋區', 121, 25, 'Banqiao');
INSERT INTO "public"."Sys_Region" VALUES (3464, '710802', '三重區', 710800, 3, '中國,臺灣,新北市,三重區', 121, 25, 'Sanzhong');
INSERT INTO "public"."Sys_Region" VALUES (3465, '710803', '中和區', 710800, 3, '中國,臺灣,新北市,中和區', 121, 25, 'Zhonghe');
INSERT INTO "public"."Sys_Region" VALUES (3466, '710804', '永和區', 710800, 3, '中國,臺灣,新北市,永和區', 122, 25, 'Yonghe');
INSERT INTO "public"."Sys_Region" VALUES (3467, '710805', '新莊區', 710800, 3, '中國,臺灣,新北市,新莊區', 121, 25, 'Xinzhuang');
INSERT INTO "public"."Sys_Region" VALUES (3468, '710806', '新店區', 710800, 3, '中國,臺灣,新北市,新店區', 122, 25, 'Xindian');
INSERT INTO "public"."Sys_Region" VALUES (3469, '710807', '樹林區', 710800, 3, '中國,臺灣,新北市,樹林區', 121, 25, 'Shulin');
INSERT INTO "public"."Sys_Region" VALUES (3470, '710808', '鶯歌區', 710800, 3, '中國,臺灣,新北市,鶯歌區', 121, 25, 'Yingge');
INSERT INTO "public"."Sys_Region" VALUES (3471, '710809', '三峽區', 710800, 3, '中國,臺灣,新北市,三峽區', 121, 25, 'Sanxia');
INSERT INTO "public"."Sys_Region" VALUES (3472, '710810', '淡水區', 710800, 3, '中國,臺灣,新北市,淡水區', 121, 25, 'Danshui');
INSERT INTO "public"."Sys_Region" VALUES (3473, '710811', '汐止區', 710800, 3, '中國,臺灣,新北市,汐止區', 122, 25, 'Xizhi');
INSERT INTO "public"."Sys_Region" VALUES (3474, '710812', '瑞芳區', 710800, 3, '中國,臺灣,新北市,瑞芳區', 122, 25, 'Ruifang');
INSERT INTO "public"."Sys_Region" VALUES (3475, '710813', '土城區', 710800, 3, '中國,臺灣,新北市,土城區', 121, 25, 'Tucheng');
INSERT INTO "public"."Sys_Region" VALUES (3476, '710814', '蘆洲區', 710800, 3, '中國,臺灣,新北市,蘆洲區', 121, 25, 'Luzhou');
INSERT INTO "public"."Sys_Region" VALUES (3477, '710815', '五股區', 710800, 3, '中國,臺灣,新北市,五股區', 121, 25, 'Wugu');
INSERT INTO "public"."Sys_Region" VALUES (3478, '710816', '泰山區', 710800, 3, '中國,臺灣,新北市,泰山區', 121, 25, 'Taishan');
INSERT INTO "public"."Sys_Region" VALUES (3479, '710817', '林口區', 710800, 3, '中國,臺灣,新北市,林口區', 121, 25, 'Linkou');
INSERT INTO "public"."Sys_Region" VALUES (3480, '710818', '深坑區', 710800, 3, '中國,臺灣,新北市,深坑區', 122, 25, 'Shenkeng');
INSERT INTO "public"."Sys_Region" VALUES (3481, '710819', '石碇區', 710800, 3, '中國,臺灣,新北市,石碇區', 122, 25, 'Shiding');
INSERT INTO "public"."Sys_Region" VALUES (3482, '710820', '坪林區', 710800, 3, '中國,臺灣,新北市,坪林區', 122, 25, 'Pinglin');
INSERT INTO "public"."Sys_Region" VALUES (3483, '710821', '三芝區', 710800, 3, '中國,臺灣,新北市,三芝區', 122, 25, 'Sanzhi');
INSERT INTO "public"."Sys_Region" VALUES (3484, '710822', '石門區', 710800, 3, '中國,臺灣,新北市,石門區', 122, 25, 'Shimen');
INSERT INTO "public"."Sys_Region" VALUES (3485, '710823', '八里區', 710800, 3, '中國,臺灣,新北市,八里區', 121, 25, 'Bali');
INSERT INTO "public"."Sys_Region" VALUES (3486, '710824', '平溪區', 710800, 3, '中國,臺灣,新北市,平溪區', 122, 25, 'Pingxi');
INSERT INTO "public"."Sys_Region" VALUES (3487, '710825', '雙溪區', 710800, 3, '中國,臺灣,新北市,雙溪區', 122, 25, 'Shuangxi');
INSERT INTO "public"."Sys_Region" VALUES (3488, '710826', '貢寮區', 710800, 3, '中國,臺灣,新北市,貢寮區', 122, 25, 'Gongliao');
INSERT INTO "public"."Sys_Region" VALUES (3489, '710827', '金山區', 710800, 3, '中國,臺灣,新北市,金山區', 122, 25, 'Jinshan');
INSERT INTO "public"."Sys_Region" VALUES (3490, '710828', '萬里區', 710800, 3, '中國,臺灣,新北市,萬里區', 122, 25, 'Wanli');
INSERT INTO "public"."Sys_Region" VALUES (3491, '710829', '烏來區', 710800, 3, '中國,臺灣,新北市,烏來區', 122, 25, 'Wulai');
INSERT INTO "public"."Sys_Region" VALUES (3492, '712200', '宜蘭縣', 710000, 2, '中國,臺灣,宜蘭縣', 122, 25, 'Yilan');
INSERT INTO "public"."Sys_Region" VALUES (3493, '712201', '宜蘭市', 712200, 3, '中國,臺灣,宜蘭縣,宜蘭市', 122, 25, 'Yilan');
INSERT INTO "public"."Sys_Region" VALUES (3494, '712221', '羅東鎮', 712200, 3, '中國,臺灣,宜蘭縣,羅東鎮', 122, 25, 'Luodong');
INSERT INTO "public"."Sys_Region" VALUES (3495, '712222', '蘇澳鎮', 712200, 3, '中國,臺灣,宜蘭縣,蘇澳鎮', 122, 25, 'Suao');
INSERT INTO "public"."Sys_Region" VALUES (3496, '712223', '頭城鎮', 712200, 3, '中國,臺灣,宜蘭縣,頭城鎮', 122, 25, 'Toucheng');
INSERT INTO "public"."Sys_Region" VALUES (3497, '712224', '礁溪鄉', 712200, 3, '中國,臺灣,宜蘭縣,礁溪鄉', 122, 25, 'Jiaoxi');
INSERT INTO "public"."Sys_Region" VALUES (3498, '712225', '壯圍鄉', 712200, 3, '中國,臺灣,宜蘭縣,壯圍鄉', 122, 25, 'Zhuangwei');
INSERT INTO "public"."Sys_Region" VALUES (3499, '712226', '員山鄉', 712200, 3, '中國,臺灣,宜蘭縣,員山鄉', 122, 25, 'Yuanshan');
INSERT INTO "public"."Sys_Region" VALUES (3500, '712227', '冬山鄉', 712200, 3, '中國,臺灣,宜蘭縣,冬山鄉', 122, 25, 'Dongshan');
INSERT INTO "public"."Sys_Region" VALUES (3501, '712228', '五結鄉', 712200, 3, '中國,臺灣,宜蘭縣,五結鄉', 122, 25, 'Wujie');
INSERT INTO "public"."Sys_Region" VALUES (3502, '712229', '三星鄉', 712200, 3, '中國,臺灣,宜蘭縣,三星鄉', 121, 24, 'Sanxing');
INSERT INTO "public"."Sys_Region" VALUES (3503, '712230', '大同鄉', 712200, 3, '中國,臺灣,宜蘭縣,大同鄉', 122, 25, 'Datong');
INSERT INTO "public"."Sys_Region" VALUES (3504, '712231', '南澳鄉', 712200, 3, '中國,臺灣,宜蘭縣,南澳鄉', 122, 24, 'Nanao');
INSERT INTO "public"."Sys_Region" VALUES (3505, '712300', '桃園縣', 710000, 2, '中國,臺灣,桃園縣', 121, 25, 'Taoyuan');
INSERT INTO "public"."Sys_Region" VALUES (3506, '712301', '桃園市', 712300, 3, '中國,臺灣,桃園縣,桃園市', 121, 25, 'Taoyuan');
INSERT INTO "public"."Sys_Region" VALUES (3507, '712302', '中壢市', 712300, 3, '中國,臺灣,桃園縣,中壢市', 121, 25, 'Zhongli');
INSERT INTO "public"."Sys_Region" VALUES (3508, '712303', '平鎮市', 712300, 3, '中國,臺灣,桃園縣,平鎮市', 121, 25, 'Pingzhen');
INSERT INTO "public"."Sys_Region" VALUES (3509, '712304', '八德市', 712300, 3, '中國,臺灣,桃園縣,八德市', 121, 25, 'Bade');
INSERT INTO "public"."Sys_Region" VALUES (3510, '712305', '楊梅市', 712300, 3, '中國,臺灣,桃園縣,楊梅市', 121, 25, 'Yangmei');
INSERT INTO "public"."Sys_Region" VALUES (3511, '712306', '蘆竹市', 712300, 3, '中國,臺灣,桃園縣,蘆竹市', 121, 25, 'Luzhu');
INSERT INTO "public"."Sys_Region" VALUES (3512, '712321', '大溪鎮', 712300, 3, '中國,臺灣,桃園縣,大溪鎮', 121, 25, 'Daxi');
INSERT INTO "public"."Sys_Region" VALUES (3513, '712324', '大園鄉', 712300, 3, '中國,臺灣,桃園縣,大園鄉', 121, 25, 'Dayuan');
INSERT INTO "public"."Sys_Region" VALUES (3514, '712325', '龜山鄉', 712300, 3, '中國,臺灣,桃園縣,龜山鄉', 121, 25, 'Guishan');
INSERT INTO "public"."Sys_Region" VALUES (3515, '712327', '龍潭鄉', 712300, 3, '中國,臺灣,桃園縣,龍潭鄉', 121, 25, 'Longtan');
INSERT INTO "public"."Sys_Region" VALUES (3516, '712329', '新屋鄉', 712300, 3, '中國,臺灣,桃園縣,新屋鄉', 121, 25, 'Xinwu');
INSERT INTO "public"."Sys_Region" VALUES (3517, '712330', '觀音鄉', 712300, 3, '中國,臺灣,桃園縣,觀音鄉', 121, 25, 'Guanyin');
INSERT INTO "public"."Sys_Region" VALUES (3518, '712331', '復興鄉', 712300, 3, '中國,臺灣,桃園縣,復興鄉', 121, 25, 'Fuxing');
INSERT INTO "public"."Sys_Region" VALUES (3519, '712400', '新竹縣', 710000, 2, '中國,臺灣,新竹縣', 121, 25, 'Hsinchu');
INSERT INTO "public"."Sys_Region" VALUES (3520, '712401', '竹北市', 712400, 3, '中國,臺灣,新竹縣,竹北市', 121, 25, 'Zhubei');
INSERT INTO "public"."Sys_Region" VALUES (3521, '712421', '竹東鎮', 712400, 3, '中國,臺灣,新竹縣,竹東鎮', 121, 25, 'Zhudong');
INSERT INTO "public"."Sys_Region" VALUES (3522, '712422', '新埔鎮', 712400, 3, '中國,臺灣,新竹縣,新埔鎮', 121, 25, 'Xinpu');
INSERT INTO "public"."Sys_Region" VALUES (3523, '712423', '關西鎮', 712400, 3, '中國,臺灣,新竹縣,關西鎮', 121, 25, 'Guanxi');
INSERT INTO "public"."Sys_Region" VALUES (3524, '712424', '湖口鄉', 712400, 3, '中國,臺灣,新竹縣,湖口鄉', 121, 25, 'Hukou');
INSERT INTO "public"."Sys_Region" VALUES (3525, '712425', '新豐鄉', 712400, 3, '中國,臺灣,新竹縣,新豐鄉', 121, 25, 'Xinfeng');
INSERT INTO "public"."Sys_Region" VALUES (3526, '712426', '芎林鄉', 712400, 3, '中國,臺灣,新竹縣,芎林鄉', 121, 25, 'Xionglin');
INSERT INTO "public"."Sys_Region" VALUES (3527, '712427', '橫山鄉', 712400, 3, '中國,臺灣,新竹縣,橫山鄉', 121, 25, 'Hengshan');
INSERT INTO "public"."Sys_Region" VALUES (3528, '712428', '北埔鄉', 712400, 3, '中國,臺灣,新竹縣,北埔鄉', 121, 25, 'Beipu');
INSERT INTO "public"."Sys_Region" VALUES (3529, '712429', '寶山鄉', 712400, 3, '中國,臺灣,新竹縣,寶山鄉', 121, 25, 'Baoshan');
INSERT INTO "public"."Sys_Region" VALUES (3530, '712430', '峨眉鄉', 712400, 3, '中國,臺灣,新竹縣,峨眉鄉', 121, 25, 'Emei');
INSERT INTO "public"."Sys_Region" VALUES (3531, '712431', '尖石鄉', 712400, 3, '中國,臺灣,新竹縣,尖石鄉', 121, 25, 'Jianshi');
INSERT INTO "public"."Sys_Region" VALUES (3532, '712432', '五峰鄉', 712400, 3, '中國,臺灣,新竹縣,五峰鄉', 121, 24, 'Wufeng');
INSERT INTO "public"."Sys_Region" VALUES (3533, '712500', '苗栗縣', 710000, 2, '中國,臺灣,苗栗縣', 121, 25, 'Miaoli');
INSERT INTO "public"."Sys_Region" VALUES (3534, '712501', '苗栗市', 712500, 3, '中國,臺灣,苗栗縣,苗栗市', 121, 25, 'Miaoli');
INSERT INTO "public"."Sys_Region" VALUES (3535, '712521', '苑里鎮', 712500, 3, '中國,臺灣,苗栗縣,苑里鎮', 121, 24, 'Yuanli');
INSERT INTO "public"."Sys_Region" VALUES (3536, '712522', '通霄鎮', 712500, 3, '中國,臺灣,苗栗縣,通霄鎮', 121, 24, 'Tongxiao');
INSERT INTO "public"."Sys_Region" VALUES (3537, '712523', '竹南鎮', 712500, 3, '中國,臺灣,苗栗縣,竹南鎮', 121, 25, 'Zhunan');
INSERT INTO "public"."Sys_Region" VALUES (3538, '712524', '頭份鎮', 712500, 3, '中國,臺灣,苗栗縣,頭份鎮', 121, 25, 'Toufen');
INSERT INTO "public"."Sys_Region" VALUES (3539, '712525', '后龍鎮', 712500, 3, '中國,臺灣,苗栗縣,后龍鎮', 121, 25, 'Houlong');
INSERT INTO "public"."Sys_Region" VALUES (3540, '712526', '卓蘭鎮', 712500, 3, '中國,臺灣,苗栗縣,卓蘭鎮', 121, 24, 'Zhuolan');
INSERT INTO "public"."Sys_Region" VALUES (3541, '712527', '大湖鄉', 712500, 3, '中國,臺灣,苗栗縣,大湖鄉', 121, 24, 'Dahu');
INSERT INTO "public"."Sys_Region" VALUES (3542, '712528', '公館鄉', 712500, 3, '中國,臺灣,苗栗縣,公館鄉', 121, 24, 'Gongguan');
INSERT INTO "public"."Sys_Region" VALUES (3543, '712529', '銅鑼鄉', 712500, 3, '中國,臺灣,苗栗縣,銅鑼鄉', 121, 24, 'Tongluo');
INSERT INTO "public"."Sys_Region" VALUES (3544, '712530', '南莊鄉', 712500, 3, '中國,臺灣,苗栗縣,南莊鄉', 121, 25, 'Nanzhuang');
INSERT INTO "public"."Sys_Region" VALUES (3545, '712531', '頭屋鄉', 712500, 3, '中國,臺灣,苗栗縣,頭屋鄉', 121, 25, 'Touwu');
INSERT INTO "public"."Sys_Region" VALUES (3546, '712532', '三義鄉', 712500, 3, '中國,臺灣,苗栗縣,三義鄉', 121, 24, 'Sanyi');
INSERT INTO "public"."Sys_Region" VALUES (3547, '712533', '西湖鄉', 712500, 3, '中國,臺灣,苗栗縣,西湖鄉', 121, 24, 'Xihu');
INSERT INTO "public"."Sys_Region" VALUES (3548, '712534', '造橋鄉', 712500, 3, '中國,臺灣,苗栗縣,造橋鄉', 121, 25, 'Zaoqiao');
INSERT INTO "public"."Sys_Region" VALUES (3549, '712535', '三灣鄉', 712500, 3, '中國,臺灣,苗栗縣,三灣鄉', 121, 25, 'Sanwan');
INSERT INTO "public"."Sys_Region" VALUES (3550, '712536', '獅潭鄉', 712500, 3, '中國,臺灣,苗栗縣,獅潭鄉', 121, 25, 'Shitan');
INSERT INTO "public"."Sys_Region" VALUES (3551, '712537', '泰安鄉', 712500, 3, '中國,臺灣,苗栗縣,泰安鄉', 121, 24, 'Taian');
INSERT INTO "public"."Sys_Region" VALUES (3552, '712700', '彰化縣', 710000, 2, '中國,臺灣,彰化縣', 120, 24, 'Changhua');
INSERT INTO "public"."Sys_Region" VALUES (3553, '712701', '彰化市', 712700, 3, '中國,臺灣,彰化縣,彰化市', 121, 24, 'Zhanghuashi');
INSERT INTO "public"."Sys_Region" VALUES (3554, '712721', '鹿港鎮', 712700, 3, '中國,臺灣,彰化縣,鹿港鎮', 120, 24, 'Lugang');
INSERT INTO "public"."Sys_Region" VALUES (3555, '712722', '和美鎮', 712700, 3, '中國,臺灣,彰化縣,和美鎮', 121, 24, 'Hemei');
INSERT INTO "public"."Sys_Region" VALUES (3556, '712723', '線西鄉', 712700, 3, '中國,臺灣,彰化縣,線西鄉', 120, 24, 'Xianxi');
INSERT INTO "public"."Sys_Region" VALUES (3557, '712724', '伸港鄉', 712700, 3, '中國,臺灣,彰化縣,伸港鄉', 120, 24, 'Shengang');
INSERT INTO "public"."Sys_Region" VALUES (3558, '712725', '福興鄉', 712700, 3, '中國,臺灣,彰化縣,福興鄉', 120, 24, 'Fuxing');
INSERT INTO "public"."Sys_Region" VALUES (3559, '712726', '秀水鄉', 712700, 3, '中國,臺灣,彰化縣,秀水鄉', 121, 24, 'Xiushui');
INSERT INTO "public"."Sys_Region" VALUES (3560, '712727', '花壇鄉', 712700, 3, '中國,臺灣,彰化縣,花壇鄉', 121, 24, 'Huatan');
INSERT INTO "public"."Sys_Region" VALUES (3561, '712728', '芬園鄉', 712700, 3, '中國,臺灣,彰化縣,芬園鄉', 121, 24, 'Fenyuan');
INSERT INTO "public"."Sys_Region" VALUES (3562, '712729', '員林鎮', 712700, 3, '中國,臺灣,彰化縣,員林鎮', 121, 24, 'Yuanlin');
INSERT INTO "public"."Sys_Region" VALUES (3563, '712730', '溪湖鎮', 712700, 3, '中國,臺灣,彰化縣,溪湖鎮', 120, 24, 'Xihu');
INSERT INTO "public"."Sys_Region" VALUES (3564, '712731', '田中鎮', 712700, 3, '中國,臺灣,彰化縣,田中鎮', 121, 24, 'Tianzhong');
INSERT INTO "public"."Sys_Region" VALUES (3565, '712732', '大村鄉', 712700, 3, '中國,臺灣,彰化縣,大村鄉', 121, 24, 'Dacun');
INSERT INTO "public"."Sys_Region" VALUES (3566, '712733', '埔鹽鄉', 712700, 3, '中國,臺灣,彰化縣,埔鹽鄉', 120, 24, 'Puyan');
INSERT INTO "public"."Sys_Region" VALUES (3567, '712734', '埔心鄉', 712700, 3, '中國,臺灣,彰化縣,埔心鄉', 121, 24, 'Puxin');
INSERT INTO "public"."Sys_Region" VALUES (3568, '712735', '永靖鄉', 712700, 3, '中國,臺灣,彰化縣,永靖鄉', 121, 24, 'Yongjing');
INSERT INTO "public"."Sys_Region" VALUES (3569, '712736', '社頭鄉', 712700, 3, '中國,臺灣,彰化縣,社頭鄉', 121, 24, 'Shetou');
INSERT INTO "public"."Sys_Region" VALUES (3570, '712737', '二水鄉', 712700, 3, '中國,臺灣,彰化縣,二水鄉', 121, 24, 'Ershui');
INSERT INTO "public"."Sys_Region" VALUES (3571, '712738', '北斗鎮', 712700, 3, '中國,臺灣,彰化縣,北斗鎮', 121, 24, 'Beidou');
INSERT INTO "public"."Sys_Region" VALUES (3572, '712739', '二林鎮', 712700, 3, '中國,臺灣,彰化縣,二林鎮', 120, 24, 'Erlin');
INSERT INTO "public"."Sys_Region" VALUES (3573, '712740', '田尾鄉', 712700, 3, '中國,臺灣,彰化縣,田尾鄉', 121, 24, 'Tianwei');
INSERT INTO "public"."Sys_Region" VALUES (3574, '712741', '埤頭鄉', 712700, 3, '中國,臺灣,彰化縣,埤頭鄉', 120, 24, 'Pitou');
INSERT INTO "public"."Sys_Region" VALUES (3575, '712742', '芳苑鄉', 712700, 3, '中國,臺灣,彰化縣,芳苑鄉', 120, 24, 'Fangyuan');
INSERT INTO "public"."Sys_Region" VALUES (3576, '712743', '大城鄉', 712700, 3, '中國,臺灣,彰化縣,大城鄉', 120, 24, 'Dacheng');
INSERT INTO "public"."Sys_Region" VALUES (3577, '712744', '竹塘鄉', 712700, 3, '中國,臺灣,彰化縣,竹塘鄉', 120, 24, 'Zhutang');
INSERT INTO "public"."Sys_Region" VALUES (3578, '712745', '溪州鄉', 712700, 3, '中國,臺灣,彰化縣,溪州鄉', 120, 24, 'Xizhou');
INSERT INTO "public"."Sys_Region" VALUES (3579, '712800', '南投縣', 710000, 2, '中國,臺灣,南投縣', 121, 24, 'Nantou');
INSERT INTO "public"."Sys_Region" VALUES (3580, '712801', '南投市', 712800, 3, '中國,臺灣,南投縣,南投市', 121, 24, 'Nantoushi');
INSERT INTO "public"."Sys_Region" VALUES (3581, '712821', '埔里鎮', 712800, 3, '中國,臺灣,南投縣,埔里鎮', 121, 24, 'Puli');
INSERT INTO "public"."Sys_Region" VALUES (3582, '712822', '草屯鎮', 712800, 3, '中國,臺灣,南投縣,草屯鎮', 121, 24, 'Caotun');
INSERT INTO "public"."Sys_Region" VALUES (3583, '712823', '竹山鎮', 712800, 3, '中國,臺灣,南投縣,竹山鎮', 121, 24, 'Zhushan');
INSERT INTO "public"."Sys_Region" VALUES (3584, '712824', '集集鎮', 712800, 3, '中國,臺灣,南投縣,集集鎮', 121, 24, 'Jiji');
INSERT INTO "public"."Sys_Region" VALUES (3585, '712825', '名間鄉', 712800, 3, '中國,臺灣,南投縣,名間鄉', 121, 24, 'Mingjian');
INSERT INTO "public"."Sys_Region" VALUES (3586, '712826', '鹿谷鄉', 712800, 3, '中國,臺灣,南投縣,鹿谷鄉', 121, 24, 'Lugu');
INSERT INTO "public"."Sys_Region" VALUES (3587, '712827', '中寮鄉', 712800, 3, '中國,臺灣,南投縣,中寮鄉', 121, 24, 'Zhongliao');
INSERT INTO "public"."Sys_Region" VALUES (3588, '712828', '魚池鄉', 712800, 3, '中國,臺灣,南投縣,魚池鄉', 121, 24, 'Yuchi');
INSERT INTO "public"."Sys_Region" VALUES (3589, '712829', '國姓鄉', 712800, 3, '中國,臺灣,南投縣,國姓鄉', 121, 24, 'Guoxing');
INSERT INTO "public"."Sys_Region" VALUES (3590, '712830', '水里鄉', 712800, 3, '中國,臺灣,南投縣,水里鄉', 121, 24, 'Shuili');
INSERT INTO "public"."Sys_Region" VALUES (3591, '712831', '信義鄉', 712800, 3, '中國,臺灣,南投縣,信義鄉', 121, 24, 'Xinyi');
INSERT INTO "public"."Sys_Region" VALUES (3592, '712832', '仁愛鄉', 712800, 3, '中國,臺灣,南投縣,仁愛鄉', 121, 24, 'Renai');
INSERT INTO "public"."Sys_Region" VALUES (3593, '712900', '云林縣', 710000, 2, '中國,臺灣,云林縣', 120, 24, 'Yunlin');
INSERT INTO "public"."Sys_Region" VALUES (3594, '712901', '斗六市', 712900, 3, '中國,臺灣,云林縣,斗六市', 121, 24, 'Douliu');
INSERT INTO "public"."Sys_Region" VALUES (3595, '712921', '斗南鎮', 712900, 3, '中國,臺灣,云林縣,斗南鎮', 120, 24, 'Dounan');
INSERT INTO "public"."Sys_Region" VALUES (3596, '712922', '虎尾鎮', 712900, 3, '中國,臺灣,云林縣,虎尾鎮', 120, 24, 'Huwei');
INSERT INTO "public"."Sys_Region" VALUES (3597, '712923', '西螺鎮', 712900, 3, '中國,臺灣,云林縣,西螺鎮', 120, 24, 'Xiluo');
INSERT INTO "public"."Sys_Region" VALUES (3598, '712924', '土庫鎮', 712900, 3, '中國,臺灣,云林縣,土庫鎮', 120, 24, 'Tuku');
INSERT INTO "public"."Sys_Region" VALUES (3599, '712925', '北港鎮', 712900, 3, '中國,臺灣,云林縣,北港鎮', 120, 24, 'Beigang');
INSERT INTO "public"."Sys_Region" VALUES (3600, '712926', '古坑鄉', 712900, 3, '中國,臺灣,云林縣,古坑鄉', 121, 24, 'Gukeng');
INSERT INTO "public"."Sys_Region" VALUES (3601, '712927', '大埤鄉', 712900, 3, '中國,臺灣,云林縣,大埤鄉', 120, 24, 'Dapi');
INSERT INTO "public"."Sys_Region" VALUES (3602, '712928', '莿桐鄉', 712900, 3, '中國,臺灣,云林縣,莿桐鄉', 121, 24, 'Citong');
INSERT INTO "public"."Sys_Region" VALUES (3603, '712929', '林內鄉', 712900, 3, '中國,臺灣,云林縣,林內鄉', 121, 24, 'Linna');
INSERT INTO "public"."Sys_Region" VALUES (3604, '712930', '二侖鄉', 712900, 3, '中國,臺灣,云林縣,二侖鄉', 120, 24, 'Erlun');
INSERT INTO "public"."Sys_Region" VALUES (3605, '712931', '侖背鄉', 712900, 3, '中國,臺灣,云林縣,侖背鄉', 120, 24, 'Lunbei');
INSERT INTO "public"."Sys_Region" VALUES (3606, '712932', '麥寮鄉', 712900, 3, '中國,臺灣,云林縣,麥寮鄉', 120, 24, 'Mailiao');
INSERT INTO "public"."Sys_Region" VALUES (3607, '712933', '東勢鄉', 712900, 3, '中國,臺灣,云林縣,東勢鄉', 120, 24, 'Dongshi');
INSERT INTO "public"."Sys_Region" VALUES (3608, '712934', '褒忠鄉', 712900, 3, '中國,臺灣,云林縣,褒忠鄉', 120, 24, 'Baozhong');
INSERT INTO "public"."Sys_Region" VALUES (3609, '712935', '臺西鄉', 712900, 3, '中國,臺灣,云林縣,臺西鄉', 120, 24, 'Taixi');
INSERT INTO "public"."Sys_Region" VALUES (3610, '712936', '元長鄉', 712900, 3, '中國,臺灣,云林縣,元長鄉', 120, 24, 'Yuanchang');
INSERT INTO "public"."Sys_Region" VALUES (3611, '712937', '四湖鄉', 712900, 3, '中國,臺灣,云林縣,四湖鄉', 120, 24, 'Sihu');
INSERT INTO "public"."Sys_Region" VALUES (3612, '712938', '口湖鄉', 712900, 3, '中國,臺灣,云林縣,口湖鄉', 120, 24, 'Kouhu');
INSERT INTO "public"."Sys_Region" VALUES (3613, '712939', '水林鄉', 712900, 3, '中國,臺灣,云林縣,水林鄉', 120, 24, 'Shuilin');
INSERT INTO "public"."Sys_Region" VALUES (3614, '713000', '嘉義縣', 710000, 2, '中國,臺灣,嘉義縣', 120, 24, 'Chiayi');
INSERT INTO "public"."Sys_Region" VALUES (3615, '713001', '太保市', 713000, 3, '中國,臺灣,嘉義縣,太保市', 120, 23, 'Taibao');
INSERT INTO "public"."Sys_Region" VALUES (3616, '713002', '樸子市', 713000, 3, '中國,臺灣,嘉義縣,樸子市', 120, 23, 'Puzi');
INSERT INTO "public"."Sys_Region" VALUES (3617, '713023', '布袋鎮', 713000, 3, '中國,臺灣,嘉義縣,布袋鎮', 120, 23, 'Budai');
INSERT INTO "public"."Sys_Region" VALUES (3618, '713024', '大林鎮', 713000, 3, '中國,臺灣,嘉義縣,大林鎮', 120, 24, 'Dalin');
INSERT INTO "public"."Sys_Region" VALUES (3619, '713025', '民雄鄉', 713000, 3, '中國,臺灣,嘉義縣,民雄鄉', 120, 24, 'Minxiong');
INSERT INTO "public"."Sys_Region" VALUES (3620, '713026', '溪口鄉', 713000, 3, '中國,臺灣,嘉義縣,溪口鄉', 120, 24, 'Xikou');
INSERT INTO "public"."Sys_Region" VALUES (3621, '713027', '新港鄉', 713000, 3, '中國,臺灣,嘉義縣,新港鄉', 120, 24, 'Xingang');
INSERT INTO "public"."Sys_Region" VALUES (3622, '713028', '六腳鄉', 713000, 3, '中國,臺灣,嘉義縣,六腳鄉', 120, 23, 'Liujiao');
INSERT INTO "public"."Sys_Region" VALUES (3623, '713029', '東石鄉', 713000, 3, '中國,臺灣,嘉義縣,東石鄉', 120, 23, 'Dongshi');
INSERT INTO "public"."Sys_Region" VALUES (3624, '713030', '義竹鄉', 713000, 3, '中國,臺灣,嘉義縣,義竹鄉', 120, 23, 'Yizhu');
INSERT INTO "public"."Sys_Region" VALUES (3625, '713031', '鹿草鄉', 713000, 3, '中國,臺灣,嘉義縣,鹿草鄉', 120, 23, 'Lucao');
INSERT INTO "public"."Sys_Region" VALUES (3626, '713032', '水上鄉', 713000, 3, '中國,臺灣,嘉義縣,水上鄉', 120, 23, 'Shuishang');
INSERT INTO "public"."Sys_Region" VALUES (3627, '713033', '中埔鄉', 713000, 3, '中國,臺灣,嘉義縣,中埔鄉', 121, 23, 'Zhongpu');
INSERT INTO "public"."Sys_Region" VALUES (3628, '713034', '竹崎鄉', 713000, 3, '中國,臺灣,嘉義縣,竹崎鄉', 121, 24, 'Zhuqi');
INSERT INTO "public"."Sys_Region" VALUES (3629, '713035', '梅山鄉', 713000, 3, '中國,臺灣,嘉義縣,梅山鄉', 121, 24, 'Meishan');
INSERT INTO "public"."Sys_Region" VALUES (3630, '713036', '番路鄉', 713000, 3, '中國,臺灣,嘉義縣,番路鄉', 121, 23, 'Fanlu');
INSERT INTO "public"."Sys_Region" VALUES (3631, '713037', '大埔鄉', 713000, 3, '中國,臺灣,嘉義縣,大埔鄉', 121, 23, 'Dapu');
INSERT INTO "public"."Sys_Region" VALUES (3632, '713038', '阿里山鄉', 713000, 3, '中國,臺灣,嘉義縣,阿里山鄉', 121, 23, 'Alishan');
INSERT INTO "public"."Sys_Region" VALUES (3633, '713300', '屏東縣', 710000, 2, '中國,臺灣,屏東縣', 120, 23, 'Pingtung');
INSERT INTO "public"."Sys_Region" VALUES (3634, '713301', '屏東市', 713300, 3, '中國,臺灣,屏東縣,屏東市', 120, 23, 'Pingdong');
INSERT INTO "public"."Sys_Region" VALUES (3635, '713321', '潮州鎮', 713300, 3, '中國,臺灣,屏東縣,潮州鎮', 121, 23, 'Chaozhou');
INSERT INTO "public"."Sys_Region" VALUES (3636, '713322', '東港鎮', 713300, 3, '中國,臺灣,屏東縣,東港鎮', 120, 22, 'Donggang');
INSERT INTO "public"."Sys_Region" VALUES (3637, '713323', '恒春鎮', 713300, 3, '中國,臺灣,屏東縣,恒春鎮', 121, 22, 'Hengchun');
INSERT INTO "public"."Sys_Region" VALUES (3638, '713324', '萬丹鄉', 713300, 3, '中國,臺灣,屏東縣,萬丹鄉', 120, 23, 'Wandan');
INSERT INTO "public"."Sys_Region" VALUES (3639, '713325', '長治鄉', 713300, 3, '中國,臺灣,屏東縣,長治鄉', 121, 23, 'Changzhi');
INSERT INTO "public"."Sys_Region" VALUES (3640, '713326', '麟洛鄉', 713300, 3, '中國,臺灣,屏東縣,麟洛鄉', 121, 23, 'Linluo');
INSERT INTO "public"."Sys_Region" VALUES (3641, '713327', '九如鄉', 713300, 3, '中國,臺灣,屏東縣,九如鄉', 120, 23, 'Jiuru');
INSERT INTO "public"."Sys_Region" VALUES (3642, '713328', '里港鄉', 713300, 3, '中國,臺灣,屏東縣,里港鄉', 120, 23, 'Ligang');
INSERT INTO "public"."Sys_Region" VALUES (3643, '713329', '鹽埔鄉', 713300, 3, '中國,臺灣,屏東縣,鹽埔鄉', 121, 23, 'Yanpu');
INSERT INTO "public"."Sys_Region" VALUES (3644, '713330', '高樹鄉', 713300, 3, '中國,臺灣,屏東縣,高樹鄉', 121, 23, 'Gaoshu');
INSERT INTO "public"."Sys_Region" VALUES (3645, '713331', '萬巒鄉', 713300, 3, '中國,臺灣,屏東縣,萬巒鄉', 121, 23, 'Wanluan');
INSERT INTO "public"."Sys_Region" VALUES (3646, '713332', '內埔鄉', 713300, 3, '中國,臺灣,屏東縣,內埔鄉', 121, 23, 'Napu');
INSERT INTO "public"."Sys_Region" VALUES (3647, '713333', '竹田鄉', 713300, 3, '中國,臺灣,屏東縣,竹田鄉', 121, 23, 'Zhutian');
INSERT INTO "public"."Sys_Region" VALUES (3648, '713334', '新埤鄉', 713300, 3, '中國,臺灣,屏東縣,新埤鄉', 121, 22, 'Xinpi');
INSERT INTO "public"."Sys_Region" VALUES (3649, '713335', '枋寮鄉', 713300, 3, '中國,臺灣,屏東縣,枋寮鄉', 121, 22, 'Fangliao');
INSERT INTO "public"."Sys_Region" VALUES (3650, '713336', '新園鄉', 713300, 3, '中國,臺灣,屏東縣,新園鄉', 120, 23, 'Xinyuan');
INSERT INTO "public"."Sys_Region" VALUES (3651, '713337', '崁頂鄉', 713300, 3, '中國,臺灣,屏東縣,崁頂鄉', 121, 23, 'Kanding');
INSERT INTO "public"."Sys_Region" VALUES (3652, '713338', '林邊鄉', 713300, 3, '中國,臺灣,屏東縣,林邊鄉', 121, 22, 'Linbian');
INSERT INTO "public"."Sys_Region" VALUES (3653, '713339', '南州鄉', 713300, 3, '中國,臺灣,屏東縣,南州鄉', 121, 22, 'Nanzhou');
INSERT INTO "public"."Sys_Region" VALUES (3654, '713340', '佳冬鄉', 713300, 3, '中國,臺灣,屏東縣,佳冬鄉', 121, 22, 'Jiadong');
INSERT INTO "public"."Sys_Region" VALUES (3655, '713341', '琉球鄉', 713300, 3, '中國,臺灣,屏東縣,琉球鄉', 120, 22, 'Liuqiu');
INSERT INTO "public"."Sys_Region" VALUES (3656, '713342', '車城鄉', 713300, 3, '中國,臺灣,屏東縣,車城鄉', 121, 22, 'Checheng');
INSERT INTO "public"."Sys_Region" VALUES (3657, '713343', '滿州鄉', 713300, 3, '中國,臺灣,屏東縣,滿州鄉', 121, 22, 'Manzhou');
INSERT INTO "public"."Sys_Region" VALUES (3658, '713344', '枋山鄉', 713300, 3, '中國,臺灣,屏東縣,枋山鄉', 121, 22, 'Fangshan');
INSERT INTO "public"."Sys_Region" VALUES (3659, '713345', '三地門鄉', 713300, 3, '中國,臺灣,屏東縣,三地門鄉', 121, 23, 'Sandimen');
INSERT INTO "public"."Sys_Region" VALUES (3660, '713346', '霧臺鄉', 713300, 3, '中國,臺灣,屏東縣,霧臺鄉', 121, 23, 'Wutai');
INSERT INTO "public"."Sys_Region" VALUES (3661, '713347', '瑪家鄉', 713300, 3, '中國,臺灣,屏東縣,瑪家鄉', 121, 23, 'Majia');
INSERT INTO "public"."Sys_Region" VALUES (3662, '713348', '泰武鄉', 713300, 3, '中國,臺灣,屏東縣,泰武鄉', 121, 23, 'Taiwu');
INSERT INTO "public"."Sys_Region" VALUES (3663, '713349', '來義鄉', 713300, 3, '中國,臺灣,屏東縣,來義鄉', 121, 23, 'Laiyi');
INSERT INTO "public"."Sys_Region" VALUES (3664, '713350', '春日鄉', 713300, 3, '中國,臺灣,屏東縣,春日鄉', 121, 22, 'Chunri');
INSERT INTO "public"."Sys_Region" VALUES (3665, '713351', '獅子鄉', 713300, 3, '中國,臺灣,屏東縣,獅子鄉', 121, 22, 'Shizi');
INSERT INTO "public"."Sys_Region" VALUES (3666, '713352', '牡丹鄉', 713300, 3, '中國,臺灣,屏東縣,牡丹鄉', 121, 22, 'Mudan');
INSERT INTO "public"."Sys_Region" VALUES (3667, '713400', '臺東縣', 710000, 2, '中國,臺灣,臺東縣', 121, 23, 'Taitung');
INSERT INTO "public"."Sys_Region" VALUES (3668, '713401', '臺東市', 713400, 3, '中國,臺灣,臺東縣,臺東市', 121, 23, 'Taidong');
INSERT INTO "public"."Sys_Region" VALUES (3669, '713421', '成功鎮', 713400, 3, '中國,臺灣,臺東縣,成功鎮', 121, 23, 'Chenggong');
INSERT INTO "public"."Sys_Region" VALUES (3670, '713422', '關山鎮', 713400, 3, '中國,臺灣,臺東縣,關山鎮', 121, 23, 'Guanshan');
INSERT INTO "public"."Sys_Region" VALUES (3671, '713423', '卑南鄉', 713400, 3, '中國,臺灣,臺東縣,卑南鄉', 121, 23, 'Beinan');
INSERT INTO "public"."Sys_Region" VALUES (3672, '713424', '鹿野鄉', 713400, 3, '中國,臺灣,臺東縣,鹿野鄉', 121, 23, 'Luye');
INSERT INTO "public"."Sys_Region" VALUES (3673, '713425', '池上鄉', 713400, 3, '中國,臺灣,臺東縣,池上鄉', 121, 23, 'Chishang');
INSERT INTO "public"."Sys_Region" VALUES (3674, '713426', '東河鄉', 713400, 3, '中國,臺灣,臺東縣,東河鄉', 121, 23, 'Donghe');
INSERT INTO "public"."Sys_Region" VALUES (3675, '713427', '長濱鄉', 713400, 3, '中國,臺灣,臺東縣,長濱鄉', 121, 23, 'Changbin');
INSERT INTO "public"."Sys_Region" VALUES (3676, '713428', '太麻里鄉', 713400, 3, '中國,臺灣,臺東縣,太麻里鄉', 121, 23, 'Taimali');
INSERT INTO "public"."Sys_Region" VALUES (3677, '713429', '大武鄉', 713400, 3, '中國,臺灣,臺東縣,大武鄉', 121, 22, 'Dawu');
INSERT INTO "public"."Sys_Region" VALUES (3678, '713430', '綠島鄉', 713400, 3, '中國,臺灣,臺東縣,綠島鄉', 121, 23, 'Lvdao');
INSERT INTO "public"."Sys_Region" VALUES (3679, '713431', '海端鄉', 713400, 3, '中國,臺灣,臺東縣,海端鄉', 121, 23, 'Haiduan');
INSERT INTO "public"."Sys_Region" VALUES (3680, '713432', '延平鄉', 713400, 3, '中國,臺灣,臺東縣,延平鄉', 121, 23, 'Yanping');
INSERT INTO "public"."Sys_Region" VALUES (3681, '713433', '金峰鄉', 713400, 3, '中國,臺灣,臺東縣,金峰鄉', 121, 23, 'Jinfeng');
INSERT INTO "public"."Sys_Region" VALUES (3682, '713434', '達仁鄉', 713400, 3, '中國,臺灣,臺東縣,達仁鄉', 121, 22, 'Daren');
INSERT INTO "public"."Sys_Region" VALUES (3683, '713435', '蘭嶼鄉', 713400, 3, '中國,臺灣,臺東縣,蘭嶼鄉', 122, 22, 'Lanyu');
INSERT INTO "public"."Sys_Region" VALUES (3684, '713500', '花蓮縣', 710000, 2, '中國,臺灣,花蓮縣', 121, 24, 'Hualien');
INSERT INTO "public"."Sys_Region" VALUES (3685, '713501', '花蓮市', 713500, 3, '中國,臺灣,花蓮縣,花蓮市', 122, 24, 'Hualian');
INSERT INTO "public"."Sys_Region" VALUES (3686, '713521', '鳳林鎮', 713500, 3, '中國,臺灣,花蓮縣,鳳林鎮', 121, 24, 'Fenglin');
INSERT INTO "public"."Sys_Region" VALUES (3687, '713522', '玉里鎮', 713500, 3, '中國,臺灣,花蓮縣,玉里鎮', 121, 23, 'Yuli');
INSERT INTO "public"."Sys_Region" VALUES (3688, '713523', '新城鄉', 713500, 3, '中國,臺灣,花蓮縣,新城鄉', 122, 24, 'Xincheng');
INSERT INTO "public"."Sys_Region" VALUES (3689, '713524', '吉安鄉', 713500, 3, '中國,臺灣,花蓮縣,吉安鄉', 122, 24, 'Jian');
INSERT INTO "public"."Sys_Region" VALUES (3690, '713525', '壽豐鄉', 713500, 3, '中國,臺灣,花蓮縣,壽豐鄉', 122, 24, 'Shoufeng');
INSERT INTO "public"."Sys_Region" VALUES (3691, '713526', '光復鄉', 713500, 3, '中國,臺灣,花蓮縣,光復鄉', 121, 24, 'Guangfu');
INSERT INTO "public"."Sys_Region" VALUES (3692, '713527', '豐濱鄉', 713500, 3, '中國,臺灣,花蓮縣,豐濱鄉', 122, 24, 'Fengbin');
INSERT INTO "public"."Sys_Region" VALUES (3693, '713528', '瑞穗鄉', 713500, 3, '中國,臺灣,花蓮縣,瑞穗鄉', 121, 23, 'Ruisui');
INSERT INTO "public"."Sys_Region" VALUES (3694, '713529', '富里鄉', 713500, 3, '中國,臺灣,花蓮縣,富里鄉', 121, 23, 'Fuli');
INSERT INTO "public"."Sys_Region" VALUES (3695, '713530', '秀林鄉', 713500, 3, '中國,臺灣,花蓮縣,秀林鄉', 122, 24, 'Xiulin');
INSERT INTO "public"."Sys_Region" VALUES (3696, '713531', '萬榮鄉', 713500, 3, '中國,臺灣,花蓮縣,萬榮鄉', 121, 24, 'Wanrong');
INSERT INTO "public"."Sys_Region" VALUES (3697, '713532', '卓溪鄉', 713500, 3, '中國,臺灣,花蓮縣,卓溪鄉', 121, 23, 'Zhuoxi');
INSERT INTO "public"."Sys_Region" VALUES (3698, '713600', '澎湖縣', 710000, 2, '中國,臺灣,澎湖縣', 120, 24, 'Penghu');
INSERT INTO "public"."Sys_Region" VALUES (3699, '713601', '馬公市', 713600, 3, '中國,臺灣,澎湖縣,馬公市', 120, 24, 'Magong');
INSERT INTO "public"."Sys_Region" VALUES (3700, '713621', '湖西鄉', 713600, 3, '中國,臺灣,澎湖縣,湖西鄉', 120, 24, 'Huxi');
INSERT INTO "public"."Sys_Region" VALUES (3701, '713622', '白沙鄉', 713600, 3, '中國,臺灣,澎湖縣,白沙鄉', 120, 24, 'Baisha');
INSERT INTO "public"."Sys_Region" VALUES (3702, '713623', '西嶼鄉', 713600, 3, '中國,臺灣,澎湖縣,西嶼鄉', 120, 24, 'Xiyu');
INSERT INTO "public"."Sys_Region" VALUES (3703, '713624', '望安鄉', 713600, 3, '中國,臺灣,澎湖縣,望安鄉', 120, 23, 'Wangan');
INSERT INTO "public"."Sys_Region" VALUES (3704, '713625', '七美鄉', 713600, 3, '中國,臺灣,澎湖縣,七美鄉', 119, 23, 'Qimei');
INSERT INTO "public"."Sys_Region" VALUES (3705, '713700', '金門縣', 710000, 2, '中國,臺灣,金門縣', 118, 24, 'Jinmen');
INSERT INTO "public"."Sys_Region" VALUES (3706, '713701', '金城鎮', 713700, 3, '中國,臺灣,金門縣,金城鎮', 118, 24, 'Jincheng');
INSERT INTO "public"."Sys_Region" VALUES (3707, '713702', '金湖鎮', 713700, 3, '中國,臺灣,金門縣,金湖鎮', 118, 24, 'Jinhu');
INSERT INTO "public"."Sys_Region" VALUES (3708, '713703', '金沙鎮', 713700, 3, '中國,臺灣,金門縣,金沙鎮', 118, 24, 'Jinsha');
INSERT INTO "public"."Sys_Region" VALUES (3709, '713704', '金寧鄉', 713700, 3, '中國,臺灣,金門縣,金寧鄉', 118, 24, 'Jinning');
INSERT INTO "public"."Sys_Region" VALUES (3710, '713705', '烈嶼鄉', 713700, 3, '中國,臺灣,金門縣,烈嶼鄉', 118, 24, 'Lieyu');
INSERT INTO "public"."Sys_Region" VALUES (3711, '713706', '烏丘鄉', 713700, 3, '中國,臺灣,金門縣,烏丘鄉', 118, 24, 'Wuqiu');
INSERT INTO "public"."Sys_Region" VALUES (3712, '713800', '連江縣', 710000, 2, '中國,臺灣,連江縣', 120, 26, 'Lienchiang');
INSERT INTO "public"."Sys_Region" VALUES (3713, '713801', '南竿鄉', 713800, 3, '中國,臺灣,連江縣,南竿鄉', 120, 26, 'Nangan');
INSERT INTO "public"."Sys_Region" VALUES (3714, '713802', '北竿鄉', 713800, 3, '中國,臺灣,連江縣,北竿鄉', 120, 26, 'Beigan');
INSERT INTO "public"."Sys_Region" VALUES (3715, '713803', '莒光鄉', 713800, 3, '中國,臺灣,連江縣,莒光鄉', 120, 26, 'Juguang');
INSERT INTO "public"."Sys_Region" VALUES (3716, '713804', '東引鄉', 713800, 3, '中國,臺灣,連江縣,東引鄉', 120, 26, 'Dongyin');
INSERT INTO "public"."Sys_Region" VALUES (3717, '810000', '香港特別行政區', 100000, 1, '中國,香港特別行政區', 114, 22, 'Hong Kong');
INSERT INTO "public"."Sys_Region" VALUES (3718, '810100', '香港島', 810000, 2, '中國,香港特別行政區,香港島', 114, 22, 'Hong Kong Island');
INSERT INTO "public"."Sys_Region" VALUES (3719, '810101', '中西區', 810100, 3, '中國,香港特別行政區,香港島,中西區', 114, 22, 'Central and Western District');
INSERT INTO "public"."Sys_Region" VALUES (3720, '810102', '灣仔區', 810100, 3, '中國,香港特別行政區,香港島,灣仔區', 114, 22, 'Wan Chai District');
INSERT INTO "public"."Sys_Region" VALUES (3721, '810103', '東區', 810100, 3, '中國,香港特別行政區,香港島,東區', 114, 22, 'Eastern District');
INSERT INTO "public"."Sys_Region" VALUES (3722, '810104', '南區', 810100, 3, '中國,香港特別行政區,香港島,南區', 114, 22, 'Southern District');
INSERT INTO "public"."Sys_Region" VALUES (3723, '810200', '九龍', 810000, 2, '中國,香港特別行政區,九龍', 114, 22, 'Kowloon');
INSERT INTO "public"."Sys_Region" VALUES (3724, '810201', '油尖旺區', 810200, 3, '中國,香港特別行政區,九龍,油尖旺區', 114, 22, 'Yau Tsim Mong');
INSERT INTO "public"."Sys_Region" VALUES (3725, '810202', '深水埗區', 810200, 3, '中國,香港特別行政區,九龍,深水埗區', 114, 22, 'Sham Shui Po');
INSERT INTO "public"."Sys_Region" VALUES (3726, '810203', '九龍城區', 810200, 3, '中國,香港特別行政區,九龍,九龍城區', 114, 22, 'Jiulongcheng');
INSERT INTO "public"."Sys_Region" VALUES (3727, '810204', '黃大仙區', 810200, 3, '中國,香港特別行政區,九龍,黃大仙區', 114, 22, 'Wong Tai Sin');
INSERT INTO "public"."Sys_Region" VALUES (3728, '810205', '觀塘區', 810200, 3, '中國,香港特別行政區,九龍,觀塘區', 114, 22, 'Kwun Tong');
INSERT INTO "public"."Sys_Region" VALUES (3729, '810300', '新界', 810000, 2, '中國,香港特別行政區,新界', 114, 22, 'New Territories');
INSERT INTO "public"."Sys_Region" VALUES (3730, '810301', '荃灣區', 810300, 3, '中國,香港特別行政區,新界,荃灣區', 114, 22, 'Tsuen Wan');
INSERT INTO "public"."Sys_Region" VALUES (3731, '810302', '屯門區', 810300, 3, '中國,香港特別行政區,新界,屯門區', 114, 22, 'Tuen Mun');
INSERT INTO "public"."Sys_Region" VALUES (3732, '810303', '元朗區', 810300, 3, '中國,香港特別行政區,新界,元朗區', 114, 22, 'Yuen Long');
INSERT INTO "public"."Sys_Region" VALUES (3733, '810304', '北區', 810300, 3, '中國,香港特別行政區,新界,北區', 114, 22, 'North District');
INSERT INTO "public"."Sys_Region" VALUES (3734, '810305', '大埔區', 810300, 3, '中國,香港特別行政區,新界,大埔區', 114, 22, 'Tai Po');
INSERT INTO "public"."Sys_Region" VALUES (3735, '810306', '西貢區', 810300, 3, '中國,香港特別行政區,新界,西貢區', 114, 22, 'Sai Kung');
INSERT INTO "public"."Sys_Region" VALUES (3736, '810307', '沙田區', 810300, 3, '中國,香港特別行政區,新界,沙田區', 114, 22, 'Sha Tin');
INSERT INTO "public"."Sys_Region" VALUES (3737, '810308', '葵青區', 810300, 3, '中國,香港特別行政區,新界,葵青區', 114, 22, 'Kwai Tsing');
INSERT INTO "public"."Sys_Region" VALUES (3738, '810309', '離島區', 810300, 3, '中國,香港特別行政區,新界,離島區', 114, 22, 'Outlying Islands');
INSERT INTO "public"."Sys_Region" VALUES (3739, '820000', '澳門特別行政區', 100000, 1, '中國,澳門特別行政區', 114, 22, 'Macau');
INSERT INTO "public"."Sys_Region" VALUES (3740, '820100', '澳門半島', 820000, 2, '中國,澳門特別行政區,澳門半島', 114, 22, 'MacauPeninsula');
INSERT INTO "public"."Sys_Region" VALUES (3741, '820101', '花地瑪堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,花地瑪堂區', 114, 22, 'Nossa Senhora de Fatima');
INSERT INTO "public"."Sys_Region" VALUES (3742, '820102', '圣安多尼堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,圣安多尼堂區', 114, 22, 'Santo Antonio');
INSERT INTO "public"."Sys_Region" VALUES (3743, '820103', '大堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,大堂區', 114, 22, 'Sé');
INSERT INTO "public"."Sys_Region" VALUES (3744, '820104', '望德堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,望德堂區', 114, 22, 'Sao Lazaro');
INSERT INTO "public"."Sys_Region" VALUES (3745, '820105', '風順堂區', 820100, 3, '中國,澳門特別行政區,澳門半島,風順堂區', 114, 22, 'Sao Lourenco');
INSERT INTO "public"."Sys_Region" VALUES (3746, '820200', '氹仔島', 820000, 2, '中國,澳門特別行政區,氹仔島', 114, 22, 'Taipa');
INSERT INTO "public"."Sys_Region" VALUES (3747, '820201', '嘉模堂區', 820200, 3, '中國,澳門特別行政區,氹仔島,嘉模堂區', 114, 22, 'Our Lady Of Carmels Parish');
INSERT INTO "public"."Sys_Region" VALUES (3748, '820300', '路環島', 820000, 2, '中國,澳門特別行政區,路環島', 114, 22, 'Coloane');
INSERT INTO "public"."Sys_Region" VALUES (3749, '820301', '圣方濟各堂區', 820300, 3, '中國,澳門特別行政區,路環島,圣方濟各堂區', 114, 22, 'St Francis Xaviers Parish');
INSERT INTO "public"."Sys_Region" VALUES (3750, '900000', '釣魚島', 100000, 1, '中國,釣魚島', 123, 26, 'DiaoyuDao');

-- ----------------------------
-- Table structure for Sys_Role
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Role";
CREATE TABLE "public"."Sys_Role" (
  "Role_Id" int4 NOT NULL,
  "CreateDate" timestamp(6),
  "Creator" varchar(50) COLLATE "pg_catalog"."default",
  "DeleteBy" varchar(50) COLLATE "pg_catalog"."default",
  "DeptName" varchar(50) COLLATE "pg_catalog"."default",
  "Dept_Id" int4,
  "Enable" int2,
  "Modifier" varchar(50) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "OrderNo" int4,
  "ParentId" int4 NOT NULL,
  "RoleName" varchar(50) COLLATE "pg_catalog"."default",
  "DbServiceId" uuid,
  "DatAuth" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_Role
-- ----------------------------
INSERT INTO "public"."Sys_Role" VALUES (1, '2018-08-23 11:46:06', '超級管理員', NULL, '無', 0, 1, '測試超級管理員', '2018-09-06 17:08:35', 1000, 0, '超級管理員', NULL, NULL);
INSERT INTO "public"."Sys_Role" VALUES (19, '2023-05-07 17:09:41', '超級管理員', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '測試管理員1', '5c162ae0-6df8-494a-9d00-0db468a706af', NULL);
INSERT INTO "public"."Sys_Role" VALUES (20, '2023-05-07 17:11:29', '超級管理員', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '測試管理員2', 'a88e77a2-37b7-44ac-8725-e53a5cd70491', NULL);

-- ----------------------------
-- Table structure for Sys_RoleAuth
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_RoleAuth";
CREATE TABLE "public"."Sys_RoleAuth" (
  "Auth_Id" int4 NOT NULL,
  "AuthValue" text COLLATE "pg_catalog"."default" NOT NULL,
  "CreateDate" timestamp(6),
  "Creator" text COLLATE "pg_catalog"."default",
  "Menu_Id" int4 NOT NULL,
  "Modifier" text COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "Role_Id" int4,
  "User_Id" int4
)
;

-- ----------------------------
-- Records of Sys_RoleAuth
-- ----------------------------
INSERT INTO "public"."Sys_RoleAuth" VALUES (1, 'Search,Add,Delete,Update,Import,Export,Upload', '2020-05-05 13:23:11', '超級管理員', 9, '超級管理員', '2023-05-04 23:57:12', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (2, '', '2020-05-05 13:23:11', '超級管理員', 53, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (3, '', '2020-05-05 13:23:11', '超級管理員', 50, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (4, '', '2020-05-05 13:23:11', '超級管理員', 40, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (5, 'Search,Add,Delete,Update,Export', '2020-05-05 13:23:11', '超級管理員', 3, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (6, '', '2020-05-05 13:23:11', '超級管理員', 37, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (7, '', '2020-05-05 13:23:11', '超級管理員', 51, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (8, '', '2020-05-05 13:23:11', '超級管理員', 59, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (9, '', '2020-05-05 13:23:11', '超級管理員', 13, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (10, '', '2020-05-05 13:23:11', '超級管理員', 44, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (11, '', '2020-05-05 13:23:11', '超級管理員', 24, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (12, '', '2020-05-05 13:23:11', '超級管理員', 35, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (13, '', '2020-05-05 13:23:11', '超級管理員', 60, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (14, '', '2020-05-05 13:23:11', '超級管理員', 58, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (15, '', '2020-05-05 13:23:11', '超級管理員', 68, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (16, '', '2020-05-05 13:23:11', '超級管理員', 52, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (17, '', '2020-05-05 13:23:11', '超級管理員', 65, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (18, '', '2020-05-05 13:23:11', '超級管理員', 62, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (19, '', '2020-05-05 13:23:11', '超級管理員', 63, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (20, '', '2020-05-05 13:23:11', '超級管理員', 54, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (21, '', '2020-05-05 13:23:11', '超級管理員', 94, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (22, '', '2020-05-05 13:23:11', '超級管理員', 42, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (23, '', '2020-05-05 13:23:11', '超級管理員', 34, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (24, '', '2020-05-05 13:23:11', '超級管理員', 90, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (25, '', '2020-05-05 13:23:11', '超級管理員', 67, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (26, '', '2020-05-05 13:23:11', '超級管理員', 91, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (27, '', '2020-05-05 13:23:11', '超級管理員', 36, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (28, '', '2020-05-05 13:23:11', '超級管理員', 77, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (29, '', '2020-05-05 13:23:11', '超級管理員', 6, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (30, '', '2020-05-05 13:23:11', '超級管理員', 88, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (31, '', '2020-05-05 13:23:11', '超級管理員', 61, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (32, '', '2020-05-05 13:23:11', '超級管理員', 8, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (33, '', '2020-05-05 13:23:11', '超級管理員', 48, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (34, '', '2020-05-05 13:23:11', '超級管理員', 74, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (35, '', '2020-05-05 13:23:11', '超級管理員', 56, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (36, '', '2020-05-05 13:23:11', '超級管理員', 55, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (37, '', '2020-05-05 13:23:11', '超級管理員', 32, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (38, '', '2020-05-05 13:23:11', '超級管理員', 33, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (39, '', '2020-05-05 13:23:11', '超級管理員', 92, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (40, '', '2020-05-05 13:23:11', '超級管理員', 89, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (41, '', '2020-05-05 13:23:11', '超級管理員', 86, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (42, '', '2020-05-05 13:23:11', '超級管理員', 84, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (43, '', '2020-05-05 13:23:11', '超級管理員', 29, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (44, '', '2020-05-05 13:23:11', '超級管理員', 31, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (45, '', '2020-05-05 13:23:11', '超級管理員', 72, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (46, '', '2020-05-05 13:23:11', '超級管理員', 66, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (47, '', '2020-05-05 13:23:11', '超級管理員', 28, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (48, '', '2020-05-05 13:23:11', '超級管理員', 64, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (49, '', '2020-05-05 13:23:11', '超級管理員', 5, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (50, '', '2020-05-05 13:23:11', '超級管理員', 25, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (51, '', '2020-05-05 13:23:11', '超級管理員', 93, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (52, '', '2020-05-05 13:23:11', '超級管理員', 85, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (53, '', '2020-05-05 13:23:11', '超級管理員', 75, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (54, '', '2020-05-05 13:23:11', '超級管理員', 87, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (55, '', '2020-05-05 13:23:11', '超級管理員', 57, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (56, '', '2020-05-05 13:23:11', '超級管理員', 49, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (57, 'Search,Update', '2020-05-05 13:23:11', '超級管理員', 71, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (58, 'Search', '2020-05-05 13:23:11', '超級管理員', 2, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (59, '', '2020-05-05 13:23:11', '超級管理員', 73, '超級管理員', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (60, 'Search,Add,Delete,Update,Export', '2023-05-04 23:57:12', '超級管理員', 100, '超級管理員', '2023-05-04 23:57:12', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (61, 'Search,Add,Delete,Update,Export', '2023-05-07 17:26:43', '超級管理員', 100, '超級管理員', '2023-05-07 17:26:43', 19, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (62, 'Search', '2023-05-07 17:26:53', '超級管理員', 61, '超級管理員', '2023-05-07 17:26:53', 20, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (63, 'Search,Add,Delete,Update,Import,Export', '2023-05-07 17:26:53', '超級管理員', 99, '超級管理員', '2023-05-07 17:26:53', 20, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (64, 'Search', '2023-05-07 17:26:59', '超級管理員', 2, '超級管理員', '2023-05-07 17:26:59', 19, NULL);

-- ----------------------------
-- Table structure for Sys_RoleAuthData
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_RoleAuthData";
CREATE TABLE "public"."Sys_RoleAuthData" (
  "Auth_Id" int4 NOT NULL,
  "DataType_Id" int4,
  "Role_Id" int4,
  "User_Id" int4,
  "Node_Id" varchar(50) COLLATE "pg_catalog"."default",
  "LevelID" int4,
  "AuthValue" text COLLATE "pg_catalog"."default",
  "Creator" varchar(50) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "Modifier" varchar(50) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of Sys_RoleAuthData
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_TableColumn
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_TableColumn";
CREATE TABLE "public"."Sys_TableColumn" (
  "ColumnId" int4 NOT NULL,
  "ApiInPut" int4,
  "ApiIsNull" int4,
  "ApiOutPut" int4,
  "ColSize" int4,
  "ColumnCNName" varchar(100) COLLATE "pg_catalog"."default",
  "ColumnName" varchar(100) COLLATE "pg_catalog"."default",
  "ColumnType" text COLLATE "pg_catalog"."default",
  "ColumnWidth" int4,
  "Columnformat" text COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(200) COLLATE "pg_catalog"."default",
  "DropNo" varchar(50) COLLATE "pg_catalog"."default",
  "EditColNo" int4,
  "EditRowNo" int4,
  "EditType" varchar(200) COLLATE "pg_catalog"."default",
  "Enable" int4,
  "IsColumnData" int4,
  "IsDisplay" int4,
  "IsImage" int4,
  "IsKey" int4,
  "IsNull" int4,
  "IsReadDataset" int4,
  "Maxlength" int4,
  "Modifier" text COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "OrderNo" int4,
  "Script" text COLLATE "pg_catalog"."default",
  "SearchColNo" int4,
  "SearchRowNo" int4,
  "SearchType" varchar(200) COLLATE "pg_catalog"."default",
  "Sortable" int4,
  "TableName" varchar(200) COLLATE "pg_catalog"."default",
  "Table_Id" int4
)
;

-- ----------------------------
-- Records of Sys_TableColumn
-- ----------------------------
INSERT INTO "public"."Sys_TableColumn" VALUES (20, NULL, NULL, NULL, NULL, '角色ID', 'Role_Id', 'int', 70, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 18:43:04', 1, 1420, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (21, NULL, NULL, NULL, NULL, '父級ID', 'ParentId', 'int', 70, '', '2018-06-04 10:14:21', NULL, NULL, 'tree_roles', NULL, 1, 'cascader', NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 18:43:04', 1, 1410, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (22, NULL, NULL, NULL, NULL, '角色名稱', 'RoleName', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 2, '', NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1400, '', NULL, 1, 'text', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (23, NULL, NULL, NULL, NULL, '部門ID', 'Dept_Id', 'int', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 18:43:04', 1, 1390, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (24, NULL, NULL, NULL, NULL, '部門名稱', 'DeptName', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1380, '', NULL, 1, 'text', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (25, NULL, NULL, NULL, NULL, '排序', 'OrderNo', 'int', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 18:43:04', 1, 1370, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (26, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1360, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (27, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 18:43:04', 1, 1350, '', NULL, 2, 'datetime', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (28, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1340, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (29, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 18:43:04', 1, 1330, '', NULL, 2, 'datetime', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (30, NULL, NULL, NULL, NULL, '', 'DeleteBy', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 18:43:04', 1, 1320, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (31, NULL, NULL, NULL, NULL, '是否啟用', 'Enable', 'byte', 90, '', '2018-06-04 10:14:21', NULL, NULL, 'enable', NULL, 0, 'switch', NULL, 1, 0, NULL, 0, 1, 0, 1, '超級管理員', '2023-05-07 18:43:04', 1, 1375, '', NULL, 1, 'select', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (32, NULL, NULL, NULL, NULL, '字典ID', 'Dic_ID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 18:08:33', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (33, NULL, NULL, NULL, NULL, '字典名稱', 'DicName', 'string', 140, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-07 18:08:33', 1, 1290, NULL, NULL, 1, 'textarea', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (34, NULL, NULL, NULL, NULL, '父級ID', 'ParentId', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 18:08:33', 1, 1280, NULL, NULL, 1, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (35, NULL, NULL, NULL, NULL, '配置項', 'Config', 'string', 300, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-07 18:08:33', 1, 1270, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (36, NULL, NULL, NULL, 8, 'sql語句', 'DbSql', 'string', 200, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 6, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-07 18:08:33', 1, 1260, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (37, NULL, NULL, NULL, NULL, '所在數據庫', 'DBServer', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, 'dbServer', NULL, 2, 'select', NULL, 1, 0, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-07 18:08:33', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (38, NULL, NULL, NULL, NULL, '排序號', 'OrderNo', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 18:08:33', 1, 1240, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (39, NULL, NULL, NULL, NULL, '字典編號', 'DicNo', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-07 18:08:33', 1, 1295, NULL, NULL, 1, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (40, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 6, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 4000, '超級管理員', '2023-05-07 18:08:33', 1, 1220, NULL, NULL, NULL, '無', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (41, NULL, NULL, NULL, NULL, '是否啟用', 'Enable', 'byte', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, 'enable', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 0, 0, 1, '超級管理員', '2023-05-07 18:08:33', 1, 1210, NULL, NULL, 2, 'select', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (42, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 18:08:33', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (43, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, '超級管理員', '2023-05-07 18:08:33', 1, 1190, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (44, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 18:08:33', 1, 1180, NULL, NULL, 2, 'datetime', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (45, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 18:08:33', 1, 1170, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (46, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, '超級管理員', '2023-05-07 18:08:33', 1, 1160, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (47, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 150, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 18:08:33', 1, 1150, NULL, NULL, 2, 'datetime', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (48, NULL, NULL, NULL, NULL, '', 'DicList_ID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 10:46:20', 1, 1140, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (49, NULL, NULL, NULL, NULL, '數據源ID', 'Dic_ID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 4, '超級管理員', '2023-05-07 10:46:20', 1, 1130, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (50, NULL, NULL, NULL, NULL, '數據源Value', 'DicValue', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 10:46:20', 1, 1120, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (51, NULL, NULL, NULL, NULL, '數據源Text', 'DicName', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 10:46:20', 1, 1110, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (52, NULL, NULL, NULL, NULL, '排序號', 'OrderNo', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:20', 1, 1100, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (53, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:20', 1, 1090, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (54, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'byte', 90, '', '2018-06-06 14:12:18', NULL, NULL, 'enable', NULL, 1, 'switch', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:20', 1, 1080, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (55, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '無', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:20', 1, 1070, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (56, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 30, '超級管理員', '2023-05-07 10:46:20', 1, 1060, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (57, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 10:46:20', 1, 1050, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (58, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:20', 1, 1040, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (59, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 10:46:20', 1, 1030, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (60, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:20', 1, 1020, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (61, NULL, NULL, NULL, NULL, NULL, 'Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 10:46:10', 1, 10000, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (62, NULL, NULL, NULL, 12, '日志類型', 'LogType', 'string', 80, NULL, '2018-06-11 18:22:16', NULL, NULL, 'log', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 10:46:10', 1, 8888, NULL, NULL, 3, 'checkbox', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (63, NULL, NULL, NULL, NULL, '請求參數', 'RequestParameter', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, '超級管理員', '2023-05-07 10:46:10', 1, 7990, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (64, NULL, NULL, NULL, NULL, '響應參數', 'ResponseParameter', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, '超級管理員', '2023-05-07 10:46:10', 1, 7980, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (65, NULL, NULL, NULL, NULL, '異常信息', 'ExceptionInfo', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, '超級管理員', '2023-05-07 10:46:10', 1, 7970, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (66, NULL, NULL, NULL, NULL, '響應狀態', 'Success', 'int', 80, NULL, '2018-06-11 18:22:16', NULL, NULL, 'restatus', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:10', 1, 8700, NULL, NULL, 2, 'selectList', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (67, NULL, NULL, NULL, NULL, '開始時間', 'BeginDate', 'DateTime', 140, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:10', 1, 9999, NULL, NULL, 2, 'datetime', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (68, NULL, NULL, NULL, NULL, '結束時間', 'EndDate', 'DateTime', 150, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:10', 1, 880, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (69, NULL, NULL, NULL, NULL, '時長', 'ElapsedTime', 'int', 60, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:10', 1, 8600, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (70, NULL, NULL, NULL, NULL, '用戶IP', 'UserIP', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:10', 1, 7920, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (71, NULL, NULL, NULL, NULL, '服務器IP', 'ServiceIP', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:10', 1, 7910, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (72, NULL, NULL, NULL, NULL, '瀏覽器類型', 'BrowserType', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, '超級管理員', '2023-05-07 10:46:10', 1, 7900, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (73, NULL, NULL, NULL, NULL, '請求地址', 'Url', 'string', 110, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-07 10:46:10', 1, 9000, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (74, NULL, NULL, NULL, NULL, '用戶ID', 'User_Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:10', 1, 7880, NULL, NULL, NULL, 'text', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (75, NULL, NULL, NULL, NULL, '用戶名稱', 'UserName', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, '超級管理員', '2023-05-07 10:46:10', 1, 9100, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (76, NULL, NULL, NULL, NULL, '角色ID', 'Role_Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, 'roles', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:10', 1, 7860, NULL, NULL, 2, 'select', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (77, NULL, NULL, NULL, NULL, '', 'User_Id', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 10:46:02', 1, 8000, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (80, 0, 0, 1, NULL, '角色', 'Role_Id', 'int', 150, '', '2018-06-14 16:44:15', NULL, NULL, 'roles', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:02', 1, 7820, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (82, 1, 0, 1, NULL, '帳號', 'UserName', 'string', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 1, '', NULL, 1, 1, NULL, 0, 0, 1, 100, '超級管理員', '2023-05-07 10:46:02', 1, 7945, '', NULL, 1, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (83, 1, 0, NULL, NULL, '密碼', 'UserPwd', 'string', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, '', NULL, 0, 0, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:02', 1, 7790, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (84, NULL, NULL, NULL, NULL, '姓名', 'UserTrueName', 'string', 100, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-07 10:46:02', 1, 7944, '', NULL, 1, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (89, NULL, NULL, NULL, 12, '備注', 'Remark', 'string', 120, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 7, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:02', 1, 7230, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (90, NULL, NULL, NULL, NULL, '排序號', 'OrderNo', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, 'text', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:02', 1, 7220, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (91, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'byte', 90, '', '2018-06-14 16:44:15', NULL, NULL, 'enable', NULL, NULL, 'select', NULL, 1, 0, NULL, 0, 1, 0, 1, '超級管理員', '2023-05-07 10:46:02', 1, 7670, '', NULL, NULL, 'select', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (92, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:02', 1, 7700, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (93, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 130, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 200, '超級管理員', '2023-05-07 10:46:02', 1, 7690, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (94, NULL, NULL, NULL, NULL, '注冊時間', 'CreateDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 10:46:02', 1, 7780, '', NULL, 1, 'datetime', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (95, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:02', 1, 7670, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (96, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 1, 200, '超級管理員', '2023-05-07 10:46:02', 1, 7660, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (97, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, 'datetime', NULL, 1, 0, NULL, 0, 1, 1, 8, '超級管理員', '2023-05-07 10:46:02', 1, 7650, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (101, NULL, NULL, NULL, NULL, '最后登陸時間', 'LastLoginDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:02', 1, 7610, '', NULL, NULL, 'datetime', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (102, NULL, NULL, NULL, NULL, '最后密碼修改時間', 'LastModifyPwdDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:02', 1, 7600, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (114, NULL, NULL, NULL, NULL, '頭像', 'HeadImageUrl', 'string', 80, '', NULL, NULL, NULL, '', NULL, 10, 'img', NULL, 1, 1, 1, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:02', 1, 7842, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (429, 1, 0, NULL, NULL, '手機號', 'PhoneNo', 'string', 150, '', NULL, NULL, NULL, '', NULL, 5, '', NULL, 1, 0, NULL, 0, 1, 0, 11, '超級管理員', '2023-05-07 10:46:02', 1, 7760, '', NULL, 2, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (431, NULL, NULL, NULL, NULL, 'Token', 'Token', 'string', 180, '', NULL, NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, NULL, 1, 0, 500, '超級管理員', '2023-05-07 10:46:02', 1, 7810, '', NULL, 2, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (506, NULL, NULL, NULL, NULL, '性別', 'Gender', 'int', 80, '', NULL, NULL, NULL, 'gender', NULL, 5, 'select', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:02', 1, 7843, '', NULL, 1, 'select', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (660, NULL, NULL, NULL, NULL, '', 'Id', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, '超級管理員', '2023-05-07 10:46:27', 1, 1400, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (661, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 10:46:27', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (662, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:27', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (663, NULL, NULL, NULL, NULL, '', 'ModifyId', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:27', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (664, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:27', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (665, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超級管理員', '2023-05-07 10:46:27', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (666, NULL, NULL, NULL, NULL, '', 'CreateId', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:27', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (667, NULL, NULL, NULL, NULL, '語言包', 'IsPackageContent', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:27', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (668, NULL, NULL, NULL, NULL, '模塊', 'Module', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 10:46:27', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (669, NULL, NULL, NULL, NULL, '阿拉伯語', 'Arabic', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1050, NULL, NULL, 2, 'like', 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (670, NULL, NULL, NULL, NULL, '俄羅斯語', 'Russian', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (671, NULL, NULL, NULL, NULL, '西班牙語', 'Spanish', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1150, NULL, NULL, 2, 'like', 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (672, NULL, NULL, NULL, NULL, '法語', 'French', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1200, NULL, NULL, 1, 'like', 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (673, NULL, NULL, NULL, NULL, '英語', 'English', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1250, NULL, NULL, 1, 'like', 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (674, NULL, NULL, NULL, NULL, '繁體中文', 'ZHTW', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1300, NULL, NULL, 1, 'like', 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (675, NULL, NULL, NULL, NULL, '簡體中文', 'ZHCN', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'textarea', NULL, 1, 1, NULL, 0, 0, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1350, NULL, NULL, 1, 'like', 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (676, NULL, NULL, NULL, NULL, '泰語', 'Thai', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1190, NULL, NULL, 2, 'like', 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (677, NULL, NULL, NULL, NULL, '越南語', 'Vietnamese', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:27', 1, 1180, NULL, NULL, 2, 'like', 0, 'Sys_Language', 12);
INSERT INTO "public"."Sys_TableColumn" VALUES (678, NULL, NULL, NULL, NULL, '', 'DepartmentId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 20:34:24', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (679, NULL, NULL, NULL, NULL, '部門名稱', 'DepartmentName', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-07 20:34:24', 1, 1100, NULL, NULL, 1, 'like', 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (680, NULL, NULL, NULL, NULL, '部門編號', 'DepartmentCode', 'string', 90, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 20:34:24', 1, 1050, NULL, NULL, 1, 'like', 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (682, NULL, NULL, NULL, NULL, '部門類型', 'DepartmentType', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 20:34:24', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (683, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'int', 80, NULL, NULL, NULL, NULL, 'enable', NULL, 7, 'select', NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 20:34:24', 1, 900, NULL, NULL, 1, 'select', 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (684, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-07 20:34:24', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (685, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 20:34:24', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (686, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 20:34:24', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (687, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 20:34:24', 1, 700, NULL, NULL, 1, 'datetime', 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (688, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 20:34:24', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (689, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 20:34:24', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (690, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 20:34:24', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (691, NULL, NULL, NULL, NULL, '上級部門', 'ParentId', 'guid', 110, NULL, NULL, NULL, NULL, '部門級聯', NULL, 5, 'cascader', NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-07 20:34:24', 1, 1060, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (692, NULL, NULL, NULL, NULL, '', 'DbServiceId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 20:35:02', 1, 1400, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (693, NULL, NULL, NULL, NULL, '租戶名稱', 'DbServiceName', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-07 20:35:02', 1, 1350, NULL, NULL, 1, 'like', 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (694, NULL, NULL, NULL, NULL, '所屬集團', 'GroupId', 'guid', 170, NULL, NULL, NULL, NULL, '集團', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-07 20:35:02', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (696, NULL, NULL, NULL, NULL, ' 數據庫IP', 'DbIpAddress', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-07 20:35:02', 1, 1200, NULL, NULL, 1, 'like', 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (697, NULL, NULL, NULL, NULL, '數據庫名', 'DatabaseName', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 20:35:02', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (698, NULL, NULL, NULL, NULL, '賬號', 'UserId', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 0, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 20:35:02', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (699, NULL, NULL, NULL, NULL, '密碼', 'Pwd', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-07 20:35:02', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (700, NULL, NULL, NULL, NULL, '手機號', 'PhoneNo', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 20:35:02', 1, 1000, NULL, NULL, 1, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (701, NULL, NULL, NULL, NULL, '地址', 'Address', 'string', 140, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-07 20:35:02', 1, 950, NULL, NULL, 1, 'like', 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (702, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 20:35:02', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (703, NULL, NULL, NULL, 12, '備注', 'Remark', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-07 20:35:02', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (704, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 20:35:02', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (705, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 20:35:02', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (706, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 20:35:02', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (707, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 20:35:02', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (708, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 20:35:02', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (709, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 20:35:02', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_DbService', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (710, NULL, NULL, NULL, NULL, '', 'GroupId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 10:46:37', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (711, NULL, NULL, NULL, NULL, '集團名稱', 'GroupName', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, '超級管理員', '2023-05-07 10:46:37', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (712, NULL, NULL, NULL, NULL, '電話', 'PhoneNo', 'string', 140, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 10:46:37', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (713, NULL, NULL, NULL, NULL, '地址', 'Address', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-07 10:46:37', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (714, NULL, NULL, NULL, NULL, '', 'Enable', 'int', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:37', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (715, NULL, NULL, NULL, NULL, '備注', 'Remark', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, '超級管理員', '2023-05-07 10:46:37', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (716, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:37', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (717, NULL, NULL, NULL, NULL, '創建人', 'Creator', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 10:46:37', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (718, NULL, NULL, NULL, NULL, '創建時間', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:37', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (719, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:46:37', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (720, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 10:46:37', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (721, NULL, NULL, NULL, NULL, '修改時間', 'ModifyDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:46:37', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_Group', 17);
INSERT INTO "public"."Sys_TableColumn" VALUES (722, NULL, NULL, NULL, 12, '部門', 'DeptIds', 'string', 220, NULL, NULL, NULL, NULL, '部門級聯', NULL, 8, 'treeSelect', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:02', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (723, NULL, NULL, NULL, 12, '角色', 'RoleIds', 'string', 220, NULL, NULL, NULL, NULL, 'tree_roles', NULL, 9, 'treeSelect', NULL, 1, 0, NULL, 0, 1, 0, 2000, '超級管理員', '2023-05-07 10:46:02', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (724, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 10:45:50', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (725, NULL, NULL, NULL, NULL, '', 'UserId', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (726, NULL, NULL, NULL, NULL, '', 'RoleId', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (727, NULL, NULL, NULL, NULL, '', 'Enable', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (728, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (729, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超級管理員', '2023-05-07 10:45:50', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (730, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:45:50', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (731, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:45:50', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (732, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超級管理員', '2023-05-07 10:45:50', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (733, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:45:50', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_UserRole', 18);
INSERT INTO "public"."Sys_TableColumn" VALUES (734, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 10:45:53', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (735, NULL, NULL, NULL, NULL, '', 'UserId', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 10:45:53', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (736, NULL, NULL, NULL, NULL, '', 'DepartmentId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 16, '超級管理員', '2023-05-07 10:45:53', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (737, NULL, NULL, NULL, NULL, '', 'Enable', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, '超級管理員', '2023-05-07 10:45:53', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (738, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:45:53', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (739, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超級管理員', '2023-05-07 10:45:53', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (740, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:45:53', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (741, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 10:45:53', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (742, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超級管理員', '2023-05-07 10:45:53', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (743, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 10:45:53', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (744, NULL, NULL, NULL, NULL, '所屬數據庫', 'DbServiceId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-07 20:34:24', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 14);
INSERT INTO "public"."Sys_TableColumn" VALUES (745, NULL, NULL, NULL, NULL, '所屬數據庫', 'DbServiceId', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, '超級管理員', '2023-05-07 18:43:04', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (746, NULL, NULL, NULL, NULL, '數據庫權限', 'DatAuth', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 0, NULL, 0, 1, 0, 400, '超級管理員', '2023-05-07 18:43:04', 1, 1376, NULL, NULL, NULL, NULL, 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (747, NULL, NULL, NULL, NULL, '', 'id', 'int', 110, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 0, NULL, 1, 0, 0, 4, '超級管理員', '2023-05-07 21:05:46', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (748, NULL, NULL, NULL, NULL, '編碼', 'code', 'string', 70, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超級管理員', '2023-05-07 21:05:46', 1, 900, NULL, NULL, NULL, 'like', 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (749, NULL, NULL, NULL, NULL, '名稱', 'name', 'string', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 40, '超級管理員', '2023-05-07 21:05:46', 1, 850, NULL, NULL, 1, NULL, 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (750, NULL, NULL, NULL, NULL, '上級編碼', 'parentId', 'int', 70, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:05:46', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (751, NULL, NULL, NULL, NULL, '級別', 'level', 'int', 60, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:05:46', 1, 750, NULL, NULL, 1, NULL, 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (752, NULL, NULL, NULL, NULL, '完整地址', 'mername', 'string', 170, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 21:05:46', 1, 700, NULL, NULL, 1, 'like', 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (753, NULL, NULL, NULL, NULL, '經度', 'Lng', 'float', 70, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:05:46', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (754, NULL, NULL, NULL, NULL, '緯度', 'Lat', 'float', 70, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:05:46', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (755, NULL, NULL, NULL, NULL, '拼音', 'pinyin', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 21:05:46', 1, 550, NULL, NULL, 1, 'like', 0, 'Sys_Region', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (756, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (757, NULL, NULL, NULL, NULL, '業務庫', 'DbName', 'string', 110, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, 1, 'like', 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (758, NULL, NULL, NULL, NULL, '內容', 'DbContent', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, 1, NULL, 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (759, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, 1, 'datetime', 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (760, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (761, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (762, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (763, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (764, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:51:27', 1, 0, NULL, NULL, NULL, NULL, 0, 'TestService', 22);
INSERT INTO "public"."Sys_TableColumn" VALUES (765, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, '超級管理員', '2023-05-07 21:52:49', 1, 950, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO "public"."Sys_TableColumn" VALUES (766, NULL, NULL, NULL, NULL, '測試庫', 'TestDbName', 'string', 120, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超級管理員', '2023-05-07 21:52:49', 1, 900, NULL, NULL, 1, 'like', 0, 'TestDb', 23);
INSERT INTO "public"."Sys_TableColumn" VALUES (767, NULL, NULL, NULL, NULL, '內容', 'TestDbContent', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超級管理員', '2023-05-07 21:52:49', 1, 850, NULL, NULL, 1, NULL, 0, 'TestDb', 23);
INSERT INTO "public"."Sys_TableColumn" VALUES (768, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:52:49', 1, 800, NULL, NULL, 1, 'datetime', 0, 'TestDb', 23);
INSERT INTO "public"."Sys_TableColumn" VALUES (769, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:52:49', 1, 750, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO "public"."Sys_TableColumn" VALUES (770, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 21:52:49', 1, 700, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO "public"."Sys_TableColumn" VALUES (771, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超級管理員', '2023-05-07 21:52:49', 1, 650, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO "public"."Sys_TableColumn" VALUES (772, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, '超級管理員', '2023-05-07 21:52:49', 1, 600, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);
INSERT INTO "public"."Sys_TableColumn" VALUES (773, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, '超級管理員', '2023-05-07 21:52:49', 1, 550, NULL, NULL, NULL, NULL, 0, 'TestDb', 23);

-- ----------------------------
-- Table structure for Sys_TableInfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_TableInfo";
CREATE TABLE "public"."Sys_TableInfo" (
  "Table_Id" int4 NOT NULL,
  "CnName" varchar(50) COLLATE "pg_catalog"."default",
  "ColumnCNName" varchar(100) COLLATE "pg_catalog"."default",
  "DBServer" text COLLATE "pg_catalog"."default",
  "DataTableType" varchar(200) COLLATE "pg_catalog"."default",
  "DetailCnName" varchar(200) COLLATE "pg_catalog"."default",
  "DetailName" varchar(200) COLLATE "pg_catalog"."default",
  "EditorType" varchar(100) COLLATE "pg_catalog"."default",
  "Enable" int4,
  "ExpressField" varchar(200) COLLATE "pg_catalog"."default",
  "FolderName" varchar(200) COLLATE "pg_catalog"."default",
  "Namespace" varchar(200) COLLATE "pg_catalog"."default",
  "OrderNo" int4,
  "ParentId" int4,
  "RichText" varchar(100) COLLATE "pg_catalog"."default",
  "SortName" varchar(50) COLLATE "pg_catalog"."default",
  "TableName" varchar(50) COLLATE "pg_catalog"."default",
  "TableTrueName" varchar(100) COLLATE "pg_catalog"."default",
  "UploadField" varchar(100) COLLATE "pg_catalog"."default",
  "UploadMaxCount" int4
)
;

-- ----------------------------
-- Records of Sys_TableInfo
-- ----------------------------
INSERT INTO "public"."Sys_TableInfo" VALUES (2, '角色管理', '角色管理', 'SysDbContext', NULL, NULL, NULL, NULL, 0, 'RoleName', 'System', 'ZL.Sys', NULL, 8, NULL, NULL, 'Sys_Role', 'Sys_Role', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (3, '字典數據', '字典數據', 'SysDbContext', NULL, '字典明細', 'Sys_DictionaryList', NULL, 0, 'DicName', 'System', 'ZL.Sys', NULL, 11, NULL, NULL, 'Sys_Dictionary', 'Sys_Dictionary', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (4, '字典明細', '字典明細', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'VOL.System', NULL, 11, NULL, NULL, 'Sys_DictionaryList', 'Sys_DictionaryList', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (5, '系統日志', '系統日志', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'ZL.Sys', NULL, 10, NULL, NULL, 'Sys_Log', 'Sys_Log', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (6, NULL, '用戶管理', 'SysDbContext', NULL, NULL, NULL, NULL, 0, 'UserName', 'System', 'ZL.Sys', NULL, 8, NULL, '', 'Sys_User', 'Sys_User', 'HeadImageUrl', 1);
INSERT INTO "public"."Sys_TableInfo" VALUES (8, '用戶基礎信息', '用戶基礎信息', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'ZL.Sys', 200, 0, NULL, NULL, '無', '無', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (10, '日志管理', '日志管理', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'ZL.Sys', NULL, 0, NULL, '170', '日志管理', '日志管理', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (11, '配置管理', '配置管理', 'SysDbContext', NULL, NULL, NULL, NULL, 0, NULL, 'System', 'VOL.System', NULL, 0, NULL, '250', '配置管理', '配置管理', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (12, '語言設置', '語言設置', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'ZHCN', 'lang', 'ZL.Sys', NULL, 13, NULL, NULL, 'Sys_Language', 'Sys_Language', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (13, '語言設置', '語言設置', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'lang', 'VOL.System', NULL, 0, NULL, NULL, '語言設置', '語言設置', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (14, '部門管理', '部門管理', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'DepartmentName', 'System', 'ZL.Sys', NULL, 8, NULL, 'DepartmentName', 'Sys_Department', 'Sys_Department', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (15, '系統設置', '系統設置', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, '系統設置', 'ZL.System', NULL, 0, NULL, NULL, '系統設置', '系統設置', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (16, '數據庫管理', '租戶管理', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'DbServiceName', 'Db', 'ZL.Sys', NULL, 15, NULL, 'CreateDate', 'Sys_DbService', 'Sys_DbService', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (17, '集團管理', '集團管理', 'SysDbContext', NULL, NULL, NULL, NULL, 1, 'GroupName', 'Group', 'ZL.Sys', NULL, 15, NULL, 'CreateDate', 'Sys_Group', 'Sys_Group', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (18, '用戶角色', '用戶角色', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'System', 'ZL.Sys', NULL, 8, NULL, 'CreateDate', 'Sys_UserRole', 'Sys_UserRole', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (19, '用戶部門', '用戶部門', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'System', 'ZL.Sys', NULL, 8, NULL, 'CreateDate', 'Sys_UserDepartment', 'Sys_UserDepartment', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (20, '省市區縣', '省市區縣', 'SysDbContext', NULL, NULL, NULL, NULL, 1, NULL, 'System', 'VolPro.Sys', NULL, 15, NULL, NULL, 'Sys_Region', 'Sys_Region', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (21, '分庫測試', '分庫測試', 'ServiceDbContext', NULL, NULL, NULL, NULL, 1, NULL, '分庫測試', 'VolPro.DbTest', NULL, 0, NULL, NULL, '分庫測試', NULL, NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (22, '業務庫', '業務庫', 'ServiceDbContext', NULL, NULL, NULL, NULL, 1, 'DbName', 'Test', 'VolPro.DbTest', NULL, 21, NULL, 'CreateDate', 'TestService', 'TestService', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (23, '測試庫', '測試庫', 'TestDbContext', NULL, NULL, NULL, NULL, 1, 'TestDbName', 'Test', 'VolPro.DbTest', NULL, 21, NULL, 'CreateDate', 'TestDb', 'TestDb', NULL, NULL);

-- ----------------------------
-- Table structure for Sys_User
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_User";
CREATE TABLE "public"."Sys_User" (
  "User_Id" int4 NOT NULL,
  "UserName" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "UserPwd" varchar(200) COLLATE "pg_catalog"."default",
  "UserTrueName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(200) COLLATE "pg_catalog"."default",
  "DeptIds" text COLLATE "pg_catalog"."default",
  "Enable" int2,
  "Gender" int4,
  "HeadImageUrl" varchar(200) COLLATE "pg_catalog"."default",
  "LastLoginDate" timestamp(6),
  "LastModifyPwdDate" timestamp(6),
  "Modifier" varchar(200) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "OrderNo" int4,
  "Role_Id" int4,
  "RoleIds" text COLLATE "pg_catalog"."default",
  "PhoneNo" varchar(11) COLLATE "pg_catalog"."default",
  "Remark" varchar(200) COLLATE "pg_catalog"."default",
  "Token" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_User
-- ----------------------------
INSERT INTO "public"."Sys_User" VALUES (3362, 'admin666', 'j79rYYvCz4vdhcboB1Ausg==', '測試管理員', '2019-08-13 14:24:27', NULL, NULL, 'dce91cee-4a39-4a0f-b50c-339b92a6aada,5852bcbe-97fb-4492-a918-b65ac87b64f1', 0, 0, 'Upload/Tables/Sys_User/201912141113355553/07.jpg', NULL, '2019-09-22 23:03:34', '超級管理員', '2023-05-07 17:11:40', 1, NULL, 2, '19,20', NULL, '123', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzYyIiwiaWF0IjoiMTY4MzQ1MTcyMCIsIm5iZiI6IjE2ODM0NTE3MjAiLCJleHAiOiIxNjgzNDU4OTIwIiwiaXNzIjoiWkwuY29yZS5vd25lciIsImF1ZCI6IlpMLmNvcmUifQ.dKamtTxvTuL5nYriQ4CZex5Oxnfx3IyXqNtW2O9amuU');
INSERT INTO "public"."Sys_User" VALUES (1, 'admin', 'j79rYYvCz4vdhcboB1Ausg==', '超級管理員', '2012-06-10 11:10:03', NULL, NULL, 'dce91cee-4a39-4a0f-b50c-339b92a6aada', 1, 1, 'Upload/Tables/Sys_User/202305071057218860/0424.png', '2017-08-28 09:58:55', '2019-12-14 15:14:23', '超級管理員', '2023-05-07 10:57:22', 1, 0, 1, NULL, '13888888888', '~還沒想好...', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIxIiwiaWF0IjoiMTY4MzQ3MDE2OSIsIm5iZiI6IjE2ODM0NzAxNjkiLCJleHAiOiIxNjgzNDc3MzY5IiwiaXNzIjoiVm9sUHJvLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.0O7ejGw_YG4do7ga5HaZW_caHNpAGM9T9MYRTigGfUk');

-- ----------------------------
-- Table structure for Sys_UserDepartment
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_UserDepartment";
CREATE TABLE "public"."Sys_UserDepartment" (
  "Id" uuid NOT NULL,
  "UserId" int4 NOT NULL,
  "DepartmentId" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "Enable" int4 NOT NULL,
  "CreateID" int4,
  "Creator" varchar(255) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(255) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of Sys_UserDepartment
-- ----------------------------
INSERT INTO "public"."Sys_UserDepartment" VALUES ('1d834cc3-a250-4e90-695e-08db4cbb8ba2', 3362, '5852BCBE-97FB-4492-A918-B65AC87B64F1', 1, 1, '超級管理員', '2023-05-05 00:20:59', NULL, NULL, NULL);
INSERT INTO "public"."Sys_UserDepartment" VALUES ('3af97ec8-3dd6-470e-b491-08db4ea6c80e', 1, 'DCE91CEE-4A39-4A0F-B50C-339B92A6AADA', 1, 1, '超級管理員', '2023-05-07 10:57:23', NULL, NULL, NULL);
INSERT INTO "public"."Sys_UserDepartment" VALUES ('dd219f13-4faf-4199-695d-08db4cbb8ba2', 3362, 'DCE91CEE-4A39-4A0F-B50C-339B92A6AADA', 1, 1, '超級管理員', '2023-05-05 00:20:59', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_UserRole
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_UserRole";
CREATE TABLE "public"."Sys_UserRole" (
  "Id" uuid NOT NULL,
  "UserId" int4 NOT NULL,
  "RoleId" int4 NOT NULL,
  "Enable" int4 NOT NULL,
  "CreateID" int4,
  "Creator" varchar(255) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(255) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of Sys_UserRole
-- ----------------------------
INSERT INTO "public"."Sys_UserRole" VALUES ('0df195a4-68d2-4c23-f88e-08db4edaf8ea', 3362, 20, 1, 1, '超級管理員', '2023-05-07 17:11:41', NULL, NULL, NULL);
INSERT INTO "public"."Sys_UserRole" VALUES ('9425b1c5-1085-4cd0-f88d-08db4edaf8ea', 3362, 19, 1, 1, '超級管理員', '2023-05-07 17:10:59', NULL, NULL, NULL);

-- ----------------------------
-- Primary Key structure for table Sys_City
-- ----------------------------
ALTER TABLE "public"."Sys_City" ADD CONSTRAINT "Sys_City_pkey" PRIMARY KEY ("CityId");

-- ----------------------------
-- Primary Key structure for table Sys_DbService
-- ----------------------------
ALTER TABLE "public"."Sys_DbService" ADD CONSTRAINT "Sys_DbService_pkey" PRIMARY KEY ("DbServiceId");

-- ----------------------------
-- Primary Key structure for table Sys_Department
-- ----------------------------
ALTER TABLE "public"."Sys_Department" ADD CONSTRAINT "Sys_Department_pkey" PRIMARY KEY ("DepartmentId");

-- ----------------------------
-- Primary Key structure for table Sys_Dictionary
-- ----------------------------
ALTER TABLE "public"."Sys_Dictionary" ADD CONSTRAINT "Sys_Dictionary_pkey" PRIMARY KEY ("Dic_ID");

-- ----------------------------
-- Primary Key structure for table Sys_DictionaryList
-- ----------------------------
ALTER TABLE "public"."Sys_DictionaryList" ADD CONSTRAINT "Sys_DictionaryList_pkey" PRIMARY KEY ("DicList_ID");

-- ----------------------------
-- Primary Key structure for table Sys_Group
-- ----------------------------
ALTER TABLE "public"."Sys_Group" ADD CONSTRAINT "Sys_Group_pkey" PRIMARY KEY ("GroupId");

-- ----------------------------
-- Primary Key structure for table Sys_Language
-- ----------------------------
ALTER TABLE "public"."Sys_Language" ADD CONSTRAINT "Sys_Language_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Sys_Log
-- ----------------------------
ALTER TABLE "public"."Sys_Log" ADD CONSTRAINT "Sys_Log_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Sys_Menu
-- ----------------------------
ALTER TABLE "public"."Sys_Menu" ADD CONSTRAINT "Sys_Menu_pkey" PRIMARY KEY ("Menu_Id");

-- ----------------------------
-- Primary Key structure for table Sys_Post
-- ----------------------------
ALTER TABLE "public"."Sys_Post" ADD CONSTRAINT "Sys_Post_pkey" PRIMARY KEY ("PostId");

-- ----------------------------
-- Primary Key structure for table Sys_Province
-- ----------------------------
ALTER TABLE "public"."Sys_Province" ADD CONSTRAINT "Sys_Province_pkey" PRIMARY KEY ("ProvinceId");

-- ----------------------------
-- Primary Key structure for table Sys_Role
-- ----------------------------
ALTER TABLE "public"."Sys_Role" ADD CONSTRAINT "Sys_Role_pkey" PRIMARY KEY ("Role_Id");

-- ----------------------------
-- Primary Key structure for table Sys_RoleAuth
-- ----------------------------
ALTER TABLE "public"."Sys_RoleAuth" ADD CONSTRAINT "Sys_RoleAuth_pkey" PRIMARY KEY ("Auth_Id");

-- ----------------------------
-- Primary Key structure for table Sys_RoleAuthData
-- ----------------------------
ALTER TABLE "public"."Sys_RoleAuthData" ADD CONSTRAINT "Sys_RoleAuthData_pkey" PRIMARY KEY ("Auth_Id");

-- ----------------------------
-- Primary Key structure for table Sys_TableColumn
-- ----------------------------
ALTER TABLE "public"."Sys_TableColumn" ADD CONSTRAINT "Sys_TableColumn_pkey" PRIMARY KEY ("ColumnId");

-- ----------------------------
-- Primary Key structure for table Sys_TableInfo
-- ----------------------------
ALTER TABLE "public"."Sys_TableInfo" ADD CONSTRAINT "Sys_TableInfo_pkey" PRIMARY KEY ("Table_Id");

-- ----------------------------
-- Primary Key structure for table Sys_User
-- ----------------------------
ALTER TABLE "public"."Sys_User" ADD CONSTRAINT "Sys_User_pkey" PRIMARY KEY ("User_Id");

-- ----------------------------
-- Primary Key structure for table Sys_UserDepartment
-- ----------------------------
ALTER TABLE "public"."Sys_UserDepartment" ADD CONSTRAINT "Sys_UserDepartment_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Sys_UserRole
-- ----------------------------
ALTER TABLE "public"."Sys_UserRole" ADD CONSTRAINT "Sys_UserRole_pkey" PRIMARY KEY ("Id");
