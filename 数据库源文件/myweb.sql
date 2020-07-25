/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-09-26 06:32:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ad_user
-- ----------------------------
DROP TABLE IF EXISTS `ad_user`;
CREATE TABLE `ad_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ad_user
-- ----------------------------
INSERT INTO `ad_user` VALUES ('7', 'admin', 'admin', null);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', '花开', '朝花夕拾', '这是一篇文章', '0');
INSERT INTO `article` VALUES ('3', '小年', '柳絮纷飞', '这是一篇文章', '0');

-- ----------------------------
-- Table structure for fycr
-- ----------------------------
DROP TABLE IF EXISTS `fycr`;
CREATE TABLE `fycr` (
  `fycrid` int(25) NOT NULL AUTO_INCREMENT,
  `fycrtitle` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fycrtext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `fycrtime` datetime(6) DEFAULT NULL,
  `fycrimg` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`fycrid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of fycr
-- ----------------------------
INSERT INTO `fycr` VALUES ('1', '蔡永利秤店--蔡雪贞', '蔡雪贞，台州临海人，百年老字号“蔡永利秤店”第五代传人，从事传统秤制作40年3月26日下午，蒙蒙细雨洗刷着临海紫阳街地面古老的青石板，来往的游客并不是很多。走在路上，能够清楚地听见雨点打击房檐的声音。短短几百米的紫阳街内，“冷清”中要数蔡永利秤店的门前比较“热闹”。写有“百年老店、咸丰十一年、省非物质文化遗产”等字样的牌匾，挂在门前，清晰可见。永利秤店创办于清代咸丰十一年（1861年），传到蔡雪贞这里已是第五代。今年64岁的蔡雪贞，已在这里做了40年的秤。40年间，她经历了木杆秤、机械秤、电子秤这三个种类计量器具的改革。虽然如此，但她却没有舍弃传统的木杆秤。百年老字号该如何传承，成了蔡雪贞心中最担忧的问题。传承老辈手艺，一做40年虽说是周一，还下着雨，紫阳古街内的游客并不是很多。蔡雪贞的门前，每隔几分钟便会有三三两两的人停留下来，对精美的工艺秤赞不绝口。', null, null);
INSERT INTO `fycr` VALUES ('2', '邵家渡大鼓--董仁普', '今年57岁的董仁普，10多岁就开始跟父亲学做鼓。邵家渡制鼓，始于唐，兴于宋，至今已有1000多年的历史。上海静安寺里的一只大鼓，是邵家渡所有记载中最大的一只。上个世纪七八十年代，由于传统文化受到冲击，邵家渡的制鼓业也出现了低谷，人们纷纷改行做起其他手艺；现在，制鼓业又得到了空前的发展，就连以前外出打工的村民都回来制作大鼓。 　 　4月1日，记者走进村里，见到了今年57岁的董仁普。他10多岁就开始跟父亲学做鼓，做了没几年，就遇到了十年动乱，他和乡亲们一样放弃了做鼓的手艺，转行卖起了草席。1993年，随着鼓市的复苏，他又重新回家制鼓。现在，他家三代人都在制鼓，是村里的制鼓大户，靠制鼓，日子过得越过越好，楼房也盖了起来。老董做过的鼓，直径最大的是3.2米，足有一个房间那么大。他说，只要有图纸，什么鼓他都会做。如果定制的鼓很大，他就带着木料和牛皮到现场去做；尺寸小的鼓，他们都在家里做。 　制鼓十分讲究，浸泡、刨皮、调音、绷制、敲钉……每一道工序都有严格的要求。不过，在整个制作过程中，刨牛皮是最为关键的一步，稍不留神整张牛皮就会报废。刨好的牛皮要厚薄相当，平均在4至5毫米左右，这样才会耐打，声音悦耳。', null, null);
INSERT INTO `fycr` VALUES ('3', '临海泥塑的唯一传人--朱吕贵', '泥塑艺人朱吕贵，浙江临海人，今年73岁，自13岁开始跟大哥朱吕寿学泥塑后，就与泥结下了不解之缘，一捏就是60年。人称\"烂污泥\"的杜桥朱吕贵是临海泥塑的唯一传人，擅长戏文泥塑，江南少见。他塑造的各种戏剧小人物衣褶线条流畅，脸部表情生动细腻，加上精致的描绘，使每个戏剧泥人造型丰满浑朴、眉目传神、简练灵动，具有独特艺术感染力。 京剧《苏三启枷》、《白蛇传》、《杨六郎探母》、《寇准背靴》，越剧《红楼梦》、《碧玉簪》，现代京剧《红岩》等20多件泥塑精品，惟妙惟肖、妙趣横生，令参展观众赞不绝口。', null, null);
INSERT INTO `fycr` VALUES ('4', '杰出临海剪纸工匠--张秀娟', '张秀娟，女，1966年出生，省级非遗“临海剪纸”代表性传承人。剪纸作品曾获得浙江省百名工艺大师绝技展金奖、全国剪纸大赛特别奖等，其发明的丝绸剪纸获国家专利。曾先后被评为台州市“工艺术大师”、临海市“首批名师名家工作室”领衔人，2017年建立了“张秀娟技能大师工作室”（台州市）。她是我市首批非物质文化遗产“临海剪纸”的代表性传承人临海紫阳街的“临海剪纸艺术传习所”里，涌进了一波波人流。每个走进房间的人，都被眼前那些大幅小幅的剪纸作品给震住了：惟妙惟肖的虫鱼花鸟兽，栩栩如生的金陵十二钗，笔力遒劲的古典诗词篇章，还有2.7米长、90厘米高的“建党九十周年”献礼图……这些被参观者评价为“包罗万象，妙不可言”的作品，完全是在一刀一剪的上下翻飞中完成的，操作刀剪的便是有着600多年历史的“张家剪纸”唯一传人——张秀娟。', null, null);
INSERT INTO `fycr` VALUES ('5', '临海黄沙狮子传承人--王曰友', '1949年，王曰友出生在台州临海市白水洋镇的上游村一个戏伶世家，很早就跟着父母四处巡演。他从二十二岁开始学习舞狮。\"文革\"之前，黄沙狮子在临海农村十分风行，很多大户人家在节庆时往往邀请王曰友和他的狮子队前去表演。其舞、武结合的高超演技总是博得满堂喝彩，王曰友所率领狮子队的名声渐渐流传开来。而伴随着政治大潮的到来，更多的人回归土地，埋头劳作，渐渐远离了舞狮。出于对这门绝艺如生命般的热爱，王曰友依然默默地坚持着、守卫着他的黄沙狮子。只是他无法像过去那样走乡串村，生活也开始陷入困境。', null, null);

-- ----------------------------
-- Table structure for fyxm
-- ----------------------------
DROP TABLE IF EXISTS `fyxm`;
CREATE TABLE `fyxm` (
  `fyxmid` int(11) NOT NULL AUTO_INCREMENT,
  `fyxmtitle` varchar(255) NOT NULL,
  `fyxmtext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `fyxmtime` datetime(6) DEFAULT NULL,
  `fyxmimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fyxmid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of fyxm
-- ----------------------------
INSERT INTO `fyxm` VALUES ('1', '黄沙狮子', '临海，人文隽秀，素有“小邹鲁”的美誉。千年古城的灿烂文化，给城市以格调，给生活以优雅，也孕育了多姿多彩的传统艺术。既有阳春白雪，如曲调优雅的临海词调、出神入化的临海剪纸；又有下里巴人，如武舞一体的黄沙狮子、高亢粗犷的大石车灯戏等；这些都是临海独特的精神标识，是临海人文化自信的基础。黄沙狮子又称上桌狮子，列入首批国家级非物质文化遗产名录。每逢农历春节至来年二月二，对于家住临海上游村的王建（黄沙狮子第七代传承人）来说，一年中最忙的时候开始了......', '2019-09-19 19:28:57.000000', null);
INSERT INTO `fyxm` VALUES ('2', '临海词调', '临海词调又称台州词调、才子词调，是台州民间艺术的一朵奇葩。由南词、昆曲和民间小曲等曲种的声腔、音乐，结合本地方言，逐渐演变而成，曲调以“词调”为主，分散板、中板、流水板等，唱词所用的语言道白，均为台州书面语。所用的乐器有二胡、洞箫、竹笛、三弦、琵琶、扬琴、檀板、碰钟等，以二胡为主要乐器。演奏节奏均以婉约平和为主。音乐轻柔婉转，优美动听，声腔悦耳爽心，抑扬并蓄，是一种雅俗共赏的曲艺音乐艺术。除临海外，还流传于黄岩、椒江、温岭、天台、仙居等地。临海词调主产地在临海，已流传了近500年......', null, null);
INSERT INTO `fyxm` VALUES ('3', '戚继光抗倭传说', '即民族英雄戚继光抗击日本海盗骚扰的斗争。十四世纪初叶，日本进入南北朝分裂时期，封建诸侯割据，互相攻战，争权夺利。在战争中失败了的一些南朝封建主，就组织武士、商人和浪人到中国沿海地区进行武装走私和抢劫烧杀的海盗活动，历史上称之为\"倭寇\"。明初开始，倭寇对中国沿海进行侵扰，从辽东、山东到广东漫长的海岸线上，岛寇倭夷，到处剽掠，沿海居民深受其害。明初筑海上 16 城，籍民为兵，以防倭寇(《明史纪事本末》卷 55《沿海倭乱》)，取得了一些成效。至嘉靖时，倭寇又猖獗起来，并与中国海盗相勾结，对闽、浙沿海地区侵扰如故。在倭寇长期为患之时，明朝军队中涌现了抗倭名将戚继光......\r\n\r\n', null, null);
INSERT INTO `fyxm` VALUES ('4', '台州府城名谣', '台州府民谣是流传于台州府城临海城关民间的口头文学。自西汉立回浦县以来，临海古城居民在长期的生产生活中，用短小精悍、易于传颂、针砭风剌的语言加工概括，利用民谣这种口头文学形式表达对生活和社会的一种认识、一种情绪和一种智慧。台州府城民谣内容丰富，主要可分知识教育类如《麦杆谣》、《燕谣》等，劳动生活类如《斗虫谣》、《哄囡谣》等，游戏娱乐类如《摸盲谣》等，地名景别类如《走八寺》、《行路谣》等。台州府城民谣与古城人民的生活习俗紧密相连，保持着鲜明的土话特征，是爱乡教育、传承生活的重要载体，对于研究江南地区生活习俗发展、沿袭、探索其内在联系有着重要的研究价值......', null, null);
INSERT INTO `fyxm` VALUES ('5', '羊岩勾青茶制作技艺', '顾渚紫笋成为大唐帝国的第一品茗。每年于清明至谷雨期采摘一芽一叶或一芽二叶初展，其制作经分拣、摊青、杀青、回凉、初拣、复炒、复回凉、复拣、初烘、复烘、贮香、品验、包装等过程。制成的极品茶芽味细嫩，芽色带紫，芽形如笋，条索紧裹，沸水冲泡，芳香扑鼻，汤色清朗；茶叶舒展后，呈兰花状，观之楚楚诱人，尝之齿颊甘香，生津止渴，回味无穷。一直以来，顾渚村民把制茶作为家庭的一项重要产业，以家庭为单位，妇女采茶、分拣，男人制茶的“合族业茶”的情况屡见不鲜。目前，水口乡紫笋茶种植面积已发展为11000亩，水口紫笋茶制作技艺经过几十代人地传承和发展，已成为我国茶制作技艺中一朵奇葩......', null, null);
INSERT INTO `fyxm` VALUES ('6', '白水洋豆腐制作技艺', '白水洋豆腐是浙江临海特色小吃之一，就算临海人自己下馆子吃饭，也少不了点一个白水洋豆腐，之所以喜欢白水洋豆腐，是因为白水洋的豆腐都是用传统工艺制作的，真真卤水点成，吃起来颇有怀旧的味道。这让吃惯了没有味道的盒装内脂豆腐的城里人的味蕾为之一振，所以我建议来临海玩的人都尝尝白水洋豆腐，一碗什么佐料都不加的白煮豆腐足以让你对临海味道记忆深刻......', null, null);
INSERT INTO `fyxm` VALUES ('7', '永利木杆秤制作技艺', '从历史沿革看，“临海”这一地名最早出现在三国吴初，但具体时间，“二十五史”中没有准确年份的记载，其他史料对临海置县的时间众说纷纭：《台州地区志》作黄武、黄龙年间（222-231），《临海县志》作吴大帝时（222-252），《浙江地名简志》和《临海市地名志》作黄武元年至神凤元年（222-252）之间，《嘉定赤城志》四库本作太平二年（257），清宋世荦刻本作太平三年（258），《浙江分县简志》作太元二年（252）或太平二年（257），有待进一步考证......\r\n\r\n从历史沿革看，“临海”这一地名最早出现在三国吴初，但具体时间，“二十五史”中没有准确年份的记载，其他史料对临海置县的时间众说纷纭：《台州地区志》作黄武、黄龙年间（222-231），《临海县志》作吴大帝时（222-252），《浙江地名简志》和《临海市地名志》作黄武元年至神凤元年（222-252）之间，《嘉定赤城志》四库本作太平二年（257），清宋世荦刻本作太平三年（258），《浙江分县简志》作太元二年（252）或太平二年（257），有待进一步考证......\r\n\r\n', null, null);
INSERT INTO `fyxm` VALUES ('8', '蒋家山接骨', '殷梨亭的膝、肘、踝、腕、足趾、手指，所有四肢关节都被人折断，气息奄奄，动弹不得……张无忌及时赶到，施展神功，给六师叔扶正全身各处断肯部位，又敷上黑玉断续膏……不几天，殷梨亭行走如初。小说不算太夸张。蒋家山接骨就是现实版的张无忌。其接骨方法非常简单，仅用竹夹、桑树皮（或纱布）、绷带、刷子、米醋。医师摸准部位，以“稳、准、轻”的手法，采取伸拔，按摩对茬、捋平直至达到正骨状态，然后外敷本门秘制的接骨药粉。回家疗养一个月后就能正常生活，活动如初......', null, null);

-- ----------------------------
-- Table structure for muser
-- ----------------------------
DROP TABLE IF EXISTS `muser`;
CREATE TABLE `muser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `state` int(2) DEFAULT '0',
  `mname` varchar(255) DEFAULT NULL,
  `wname` varchar(255) DEFAULT NULL,
  `wcontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muser
-- ----------------------------
INSERT INTO `muser` VALUES ('29', 'yyy', '中国', '201595654@qq.com', '17798563210', '2019-09-24', '0', '蓝桥杯', '牧城子', '这是一个比赛');
INSERT INTO `muser` VALUES ('30', 'yyy', '中国', '2567942@qq.com', '18565413279', '2019-09-24', '0', '临海绘画比赛', '寒冰', '这是一个比赛');

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('4', '2', '花开', '/forum/img/pl2.jpg', '这是一条评论', '2019-09-03 16:57:44');
INSERT INTO `pinglun` VALUES ('5', '2', '小年', '/forum/img/pl3.jpg', '这是一条评论', '2019-09-03 16:58:45');
INSERT INTO `pinglun` VALUES ('6', '2', '龙傲天', '/forum/img/pl4.jpg', '这是一条评论', '2019-09-03 16:59:21');
INSERT INTO `pinglun` VALUES ('7', '3', '花开', '/forum/img/pl2.jpg', '这是一条评论', '2019-09-03 16:57:44');
INSERT INTO `pinglun` VALUES ('8', '3', '小年', '/forum/img/pl3.jpg', '这是一条评论', '2019-09-03 16:58:45');
INSERT INTO `pinglun` VALUES ('9', '3', '龙傲天', '/forum/img/pl4.jpg', '这是一条评论', '2019-09-03 16:59:21');
INSERT INTO `pinglun` VALUES ('32', '5', 'guest', '/product/image/a1.jpg', '这是一条评论', '2019-09-25 05:27:17');

-- ----------------------------
-- Table structure for race
-- ----------------------------
DROP TABLE IF EXISTS `race`;
CREATE TABLE `race` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `starttime` varchar(50) DEFAULT NULL,
  `uptime` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of race
-- ----------------------------
INSERT INTO `race` VALUES ('3', '蓝桥杯摄影大赛', '2019-09-13', '2019-09-21', 'ima', '2');
INSERT INTO `race` VALUES ('6', '中国风水墨画大赛', '2019-09-13', '2019-09-30', '/backstage2/img/a1.jpg', '2');
INSERT INTO `race` VALUES ('7', '文墨书法大赛', '2019-09-04', '2019-09-27', '/backstage2/img/a1.jpg', '1');

-- ----------------------------
-- Table structure for remen
-- ----------------------------
DROP TABLE IF EXISTS `remen`;
CREATE TABLE `remen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `content` text,
  `sum` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remen
-- ----------------------------
INSERT INTO `remen` VALUES ('2', '花开见我', '/forum/img/pl2.jpg', '秀丽上水', '2019-09-19 18:38:45', '/forum/img/ssfj1.jpg', '/forum/img/ssfj2.jpg', '/forum/img/ssfj3.jpg', '/forum/img/ssfj4.jpg', '水绕青山山绕水，山浮绿水水浮山。漓江水平的有如镜面，应出山峰的优美倒影，有的朦胧，有的清晰。船行江面，从山峰倒影的画面上驶过，就像从一幅典型的中国水墨画中穿行一般。怪不得有古人云：“分明看见青山顶，船在青山顶上行”呢！', '3');
INSERT INTO `remen` VALUES ('3', '龙傲天', '/forum/img/pl4.jpg', '美食', '2019-09-19 18:43:53', '/forum/img/cqms1.jpg', '/forum/img/cqms2.jpg', '/forum/img/cqms3.jpg', '/forum/img/cqms4.jpg', '重庆美食，两个字麻辣，超级好吃，来看下吧！', '9');

-- ----------------------------
-- Table structure for rmping
-- ----------------------------
DROP TABLE IF EXISTS `rmping`;
CREATE TABLE `rmping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `xid` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rmping
-- ----------------------------
INSERT INTO `rmping` VALUES ('1', '1', '花开', '/forum/img/pl2.jpg', '文坛花开', '2019-09-03 16:57:44');
INSERT INTO `rmping` VALUES ('2', '1', '小年', '/forum/img/pl3.jpg', '文坛花开', '2019-09-03 16:58:45');
INSERT INTO `rmping` VALUES ('3', '1', '龙傲天', '/forum/img/pl4.jpg', '文坛花开', '2019-09-03 16:59:21');
INSERT INTO `rmping` VALUES ('4', '2', '花开', '/forum/img/pl2.jpg', '文坛花开', '2019-09-03 16:57:44');
INSERT INTO `rmping` VALUES ('5', '2', '小年', '/forum/img/pl3.jpg', '文坛花开', '2019-09-03 16:58:45');
INSERT INTO `rmping` VALUES ('6', '2', '龙傲天', '/forum/img/pl4.jpg', '文坛花开', '2019-09-03 16:59:21');
INSERT INTO `rmping` VALUES ('7', '3', '花开', '/forum/img/pl2.jpg', '文坛花开', '2019-09-03 16:57:44');
INSERT INTO `rmping` VALUES ('8', '3', '小年', '/forum/img/pl3.jpg', '文坛花开', '2019-09-03 16:58:45');
INSERT INTO `rmping` VALUES ('9', '3', '龙傲天', '/forum/img/pl4.jpg', '文坛花开', '2019-09-03 16:59:21');
INSERT INTO `rmping` VALUES ('31', '3', 'guest', '/product/image/a1.jpg', '文坛花开', '2019-09-25 05:47:17');

-- ----------------------------
-- Table structure for send
-- ----------------------------
DROP TABLE IF EXISTS `send`;
CREATE TABLE `send` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `label` longtext,
  `image` varchar(255) DEFAULT NULL,
  `content` longtext,
  `time` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `focuse` int(11) DEFAULT '0',
  `sum` int(11) DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of send
-- ----------------------------
INSERT INTO `send` VALUES ('2', '小年', '解困“泽国”！台州临海打响台风灾后救援“快攻”', '“临海告急！”8月10日凌晨，“利奇马”在浙江台州正面登陆，汹汹之势惊醒无数梦中人，而临海这座山水之城整晚无眠——10日18时，临海市防指发出紧急通知， 天文高潮位与两栖洪峰叠加，致临海西门站或发生超历史性大洪水，形势严峻。', '/forum/img/lh2.jpeg', '而在临海具有千年历史的古城区域，市民已接当地政府部门公告，迅速向居住房屋二楼或更高处转移。 　　 几乎在同一时段，省防指紧闭的会议室门内，多个政府部门负责人及专家筹谋灾情解困之道。会议在迅速协商部署防汛救灾措施后，向社会发出救援征集令。', '2019-08-13 13:32:56', '/forum/img/pl3.jpg', '0', '3');
INSERT INTO `send` VALUES ('3', '龙傲天', '台州保险机构为“水淹车”开辟绿色理赔通道', '刚刚过境的超强台风“利奇马”，造成台州各地不同程度的内涝灾害，车辆浸泡严重。对于“水淹车”带给无数市民的困扰，全市54家保险公司纷纷启动紧急预案，积极主动参与理赔。', '/forum/img/lh4.png', '据悉，昨日台州银保监分局发布了《关于做好台风“利奇马”灾后涉水车辆抢险施救工作的紧急通知》，引领我市保险机构打破各自为政局面，\r\n						按照“四个统一”，通过网格化管理，统一施救、统一处置场地、统一拍卖、转移处置、统一定损标准，提高救灾效率，以此进行快速理赔，\r\n						稳定企业与群众生产生活。', '2019-08-13 15:10:56', '/forum/img/pl4.jpg', '0', '0');
INSERT INTO `send` VALUES ('5', '花开', '台州府城墙“伤得最重”台州这些景区重新开放有了时间表', '在“利奇马”登陆前，为了保证游客的安全，台州86家A级景区全部关闭。', '/forum/img/lh1.png', '现在正是暑期旅游旺季，不少市民很关心，台州的景区受灾情况怎么样？什么时候能够重新“开门迎客”呢？', '2019-08-13 15:30:56', '/forum/img/pl2.jpg', '0', '1');
INSERT INTO `send` VALUES ('6', '小年', '解困“泽国”！台州临海打响台风灾后救援“快攻”', '“临海告急！”8月10日凌晨，“利奇马”在浙江台州正面登陆，汹汹之势惊醒无数梦中人，而临海这座山水之城整晚无眠——10日18时，临海市防指发出紧急通知， 天文高潮位与两栖洪峰叠加，致临海西门站或发生超历史性大洪水，形势严峻。', '/forum/img/lh2.jpeg', '而在临海具有千年历史的古城区域，市民已接当地政府部门公告，迅速向居住房屋二楼或更高处转移。 　　 几乎在同一时段，省防指紧闭的会议室门内，多个政府部门负责人及专家筹谋灾情解困之道。会议在迅速协商部署防汛救灾措施后，向社会发出救援征集令。', '2019-08-13 13:32:56', '/forum/img/pl3.jpg', '2', '0');
INSERT INTO `send` VALUES ('7', '龙傲天', '台州保险机构为“水淹车”开辟绿色理赔通道', '刚刚过境的超强台风“利奇马”，造成台州各地不同程度的内涝灾害，车辆浸泡严重。对于“水淹车”带给无数市民的困扰，全市54家保险公司纷纷启动紧急预案，积极主动参与理赔。', '/forum/img/lh4.png', '据悉，昨日台州银保监分局发布了《关于做好台风“利奇马”灾后涉水车辆抢险施救工作的紧急通知》，引领我市保险机构打破各自为政局面，\r\n						按照“四个统一”，通过网格化管理，统一施救、统一处置场地、统一拍卖、转移处置、统一定损标准，提高救灾效率，以此进行快速理赔，\r\n						稳定企业与群众生产生活。', '2019-08-13 15:10:56', '/forum/img/pl4.jpg', '0', '0');

-- ----------------------------
-- Table structure for tbuser
-- ----------------------------
DROP TABLE IF EXISTS `tbuser`;
CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `increasedate` datetime DEFAULT NULL,
  `membertime` datetime DEFAULT NULL,
  `useraddress` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `picpath` varchar(255) DEFAULT NULL,
  `state2` int(2) DEFAULT '1',
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbuser
-- ----------------------------
INSERT INTO `tbuser` VALUES ('12', 'guest', 'guest', 'guest', '2019-09-25 05:25:09', null, '中国', '15264789512', '23648558841@qq.com', '1000', '普通', '/product/image/a1.jpg', '1', '君子之交淡如水');

-- ----------------------------
-- Table structure for tb_essay
-- ----------------------------
DROP TABLE IF EXISTS `tb_essay`;
CREATE TABLE `tb_essay` (
  `essayid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `essaytitle` varchar(100) DEFAULT NULL,
  `essayauthor` varchar(100) DEFAULT NULL,
  `essaytype` varchar(100) DEFAULT NULL,
  `essaycontext` text,
  `time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`essayid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_essay
-- ----------------------------
INSERT INTO `tb_essay` VALUES ('2', '2', '花开', '紫阳古街', '小年', '诗文', '这是一篇文章', '2019-09-21 15:56:39', '2');
INSERT INTO `tb_essay` VALUES ('22', '5', 'ggg', '鬼谷子', '花开', '散文', '这是一篇文章', '2019-09-24 18:15:22', '1');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goodsid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) DEFAULT NULL,
  `goodsprice` int(11) DEFAULT NULL,
  `goodsintroduce` longtext,
  `goodsamount` int(11) DEFAULT NULL,
  `goodstype` varchar(255) DEFAULT NULL,
  `goodspic1` varchar(500) DEFAULT NULL,
  `goodspic2` varchar(500) DEFAULT NULL,
  `goodspic3` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('1', '茶壶', '50', '陶瓷是陶器和瓷器的总称。人们早在约8000年前的新石器时代就发明了陶器。常见的陶瓷材料有粘土、氧化铝、高岭土等。陶瓷材料一般硬度较高，但可塑性较差。除了使用于食器、装饰上外，陶瓷在科学、技术的发展中亦扮演着重要角色。陶瓷原料是地球原有的大量资源黏土经过淬取而成。而粘土的性质具韧性，常温遇水可塑，微干可雕，全干可磨;烧至700度可成陶器能装水;烧至1230度则瓷化，可几乎完全不吸水且耐高温耐腐蚀。其用法之弹性，在今日文化科技中有各种创意的应用。发明了陶器。陶瓷材料大多是氧化物、氮化物、硼化物和碳化物等。 ', '17', '黑陶瓷器 ', '/product/image/prod-big-1.png', null, null);

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `goodsname` varchar(255) DEFAULT NULL,
  `orderaddress` varchar(255) DEFAULT NULL,
  `orderphone` varchar(255) DEFAULT NULL,
  `orderamount` int(255) DEFAULT NULL,
  `ordermoney` int(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `orderstate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1', '1', '9', '茶壶', '浙江省台州市', '12345678910', '3', '150', 'yyx', '已发货');
INSERT INTO `tb_order` VALUES ('2', '1', '9', '茶壶', '浙江省台州市', '12345678910', '10', '500', 'yyx', '已发货');
INSERT INTO `tb_order` VALUES ('4', '1', '5', '茶壶', '浙江省', '12345678910', '1', '50', 'ggg', 'false');
INSERT INTO `tb_order` VALUES ('5', '1', '5', '茶壶', '浙江省', '23544', '1', '50', 'ggg', 'false');

-- ----------------------------
-- Table structure for tb_shoot
-- ----------------------------
DROP TABLE IF EXISTS `tb_shoot`;
CREATE TABLE `tb_shoot` (
  `shootid` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `shoottitle` varchar(255) DEFAULT NULL,
  `shootpicpath` varchar(255) DEFAULT NULL,
  `shootintroduce` varchar(555) DEFAULT NULL,
  `shootcontent` longtext,
  `shootdate` datetime DEFAULT NULL,
  `shootreview` int(20) DEFAULT NULL,
  `shootstate` varchar(255) DEFAULT NULL,
  `shoottype` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`shootid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shoot
-- ----------------------------

-- ----------------------------
-- Table structure for tb_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_video`;
CREATE TABLE `tb_video` (
  `videoid` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `videotitle` varchar(255) DEFAULT NULL,
  `videotime` datetime DEFAULT NULL,
  `videocontent` longtext,
  `videoaddress` varchar(255) DEFAULT NULL,
  `videolong` varchar(255) DEFAULT NULL,
  `videotype` varchar(255) DEFAULT NULL,
  `videopath` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`videoid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_video
-- ----------------------------
INSERT INTO `tb_video` VALUES ('2', '2', '花开', '紫阳故事', '2019-09-17 20:38:54', '紫阳古街 紫阳街浙江第一古街，千年古城的缩影，是历史文化名城的象征。“紫阳街”是按照唐宋里坊制的称呼分段定名的，有街无名。1998年为纪念出生于此的道教南宗始祖、紫阳真人张伯端，才获取今名。 紫阳街北端照壁，原北京图书馆馆长，国学大师任继愈所书的“紫阳故里”。岁月的沧桑掩不去它的无穷魅力。漫步紫阳街，让我们一起感悟它的历史，它的民俗风情，它的文化内涵和它在岁月长河中，慢慢积淀而成的独特魅力，眼望神韵犹存的老民居，流连在窄小古朴的小巷中，踏着紫阳街的青石板，仿佛千年的古韵，历史的变迁在脚下流淌，让你真正感受到这座古城深厚的历史文化底蕴。', '大洋街道636号', '3:00', '视频', '/product/video/details_ctxs1.mp4', '1');

-- ----------------------------
-- Table structure for tsxz
-- ----------------------------
DROP TABLE IF EXISTS `tsxz`;
CREATE TABLE `tsxz` (
  `tsxzid` int(25) NOT NULL AUTO_INCREMENT,
  `tsxztitle` varchar(255) NOT NULL,
  `tsxztext` longtext,
  `tsxztime` datetime(6) DEFAULT NULL,
  `tsxzimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tsxzid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tsxz
-- ----------------------------
INSERT INTO `tsxz` VALUES ('1', '杜桥眼镜小镇', '杜桥眼镜小镇规划范围包括杜桥城区与城南工业功能区两部分，总面积约为4平方公里，其中核心区为1.5平方公里，西至经一路，南至纬十三路，北到新兴路，东至外环西路。小镇现有11个重点建设项目正建设或准备建设中。\r\n\r\n“杜桥眼镜小镇有着自己的‘大梦想’。”杜桥眼镜小镇的产业定位是打造国际性眼镜制造中心、华东眼镜贸易中心、国际化眼镜时尚中心和知名眼镜文化旅游中心。', null, null);
INSERT INTO `tsxz` VALUES ('2', '临海国际医药小镇', '临海国际医药小镇位于临海江南街道小溪村，规划面积3.5平方公里，总投资约300亿元。\r\n\r\n建设思路是坚持产城人融合发展，形成“产业、文化、旅游、社区”四位一体发展格局，重点实施“三区、三基地”建设。\r\n\r\n建设的总体目标是打造国际化的高端药品创业创新平台，集聚高端医药产业企业，构建医药产业循环生态，创建全省一流的优秀特色小镇，形成1000亿以上的高端制剂产业规模、年税收100亿的医化产业创新基地。', null, null);
INSERT INTO `tsxz` VALUES ('3', '临海河头生态小镇', '河头镇位于临海西部，以羊岩山茶叶而闻名。\r\n\r\n羊岩山茶场，被农业部认定为“中国美丽田园”。羊岩山品牌价值评估列入全国100强、全国百佳农产品品牌。\r\n\r\n河头镇还有一张非遗文化名片：大石车灯。它是临海市独有的汉族戏曲剧种之一，流传于大石民间，已有一百多年的历史。\r\n\r\n该镇将结合自身良好的生态条件，对集镇面貌、村居环境开展全面整治，围绕‘水清、山绿、茶香、人和’的目标，着力打造清雅茶乡的生态小镇。', '2019-09-17 16:55:25.000000', null);

-- ----------------------------
-- Table structure for wish
-- ----------------------------
DROP TABLE IF EXISTS `wish`;
CREATE TABLE `wish` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `wishtext` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wish
-- ----------------------------
INSERT INTO `wish` VALUES ('30', null);
INSERT INTO `wish` VALUES ('32', null);

-- ----------------------------
-- Table structure for xxmr
-- ----------------------------
DROP TABLE IF EXISTS `xxmr`;
CREATE TABLE `xxmr` (
  `xxmrid` int(25) NOT NULL AUTO_INCREMENT,
  `xxmrtitle` varchar(255) NOT NULL,
  `xxmrtext` longtext,
  `xxmrtime` datetime(6) DEFAULT NULL,
  `xxmrimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`xxmrid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxmr
-- ----------------------------
INSERT INTO `xxmr` VALUES ('1', '谢深甫', '谢深甫（1139～1204年），字子肃，号东江，台州临海（今属浙江）人。南宋中期宰相。\r\n\r\n南宋乾道二年（1166）进士。历任嵊县尉，昆山县丞，浙漕考官，青田知县。被荐于朝，宋孝宗召见，询用人之道，授籍田令 ，调大理寺丞。江东大旱，任常平提举，制订并推行救荒措施，缓和灾情。绍熙元年（1190）后，升右正言，调起居郎，临安府尹。宋光 宗称施政宽猛得中，升吏部侍郎，兼给事中。议事持正力争，每遇希恩幸进者，光宗常说：“恐谢给事不可。”\r\n\r\n庆元六年（1200）拜右丞相，封鲁国公。嘉泰二年（1202）八月，修成《庆元条法事类》（截止于庆元间朝廷颁发各种法 令汇编）。有人上言朱熹、蔡元定为伪学，被谢深甫掷书，斥为狂妄。金国使臣入朝，不按礼仪，谢深甫以理力屈金使，终使如 仪。宁宗称“守法度，惜名器”。为相稳健，以少傅致仕。卒后因孙女谢道清为宋理宗皇后，追封信王，又改封卫王、鲁王，谥惠正。著有《东江集》。', null, null);
INSERT INTO `xxmr` VALUES ('2', '张伯端', '张伯端（984年～1082年），字平叔，号紫阳，后改名用成（诚），北宋天台（今属浙江）人。敕封“紫阳真人”。\r\n\r\n自幼聪明好学，涉猎三教经书，及刑法、书算、医卜、战阵、天文、地理、吉凶死生之术。年长任台州府吏，嘉祐二年，因受累谪戍岭南，走上访道修仙之路。治平初，陆 诜任桂林知州，起用张伯端掌管机要，改知成都时，又随往。熙宁二年，在成都天回寺，遇异人得金丹火候之诀。 熙宁三年，陆诜卒，张伯端归台州，筑室山居 ，于熙宁八年著成《悟真篇》，后出山转徙秦陇（今陕西甘肃一带），事河东马处厚，于汉阴山中修炼。处厚被召，临行前，伯端托以《悟真篇》。晚年返台州，居桐柏山 崇道观，广授道徒，卒于百步溪。他的道教思想深受佛教禅宗影响，主张“三教合一”，试 图以道教修炼性命之说融合儒释道三教，被后世尊为“道教南宗始祖”，并与杏林翠玄真人石泰、道光紫贤真人薛式、泥丸翠虚真人陈楠、琼炫紫虚真人白玉蟾被奉为“全真道南五祖”。《四库全书》将其所著《悟真篇》与汉代魏伯阳的《周易参同契》并称“丹经王”。', null, null);
INSERT INTO `xxmr` VALUES ('3', '宋汝鹄', '宋汝鹄同志生平(1943-2014),\r\n中国共产党的优秀党员，新疆维吾尔自治区第十届人民代表大会常务委员会副主任、党组副书记宋汝鹄同志因病医治无效，于2014年2月26日22时16分(北京时间）在乌鲁木齐逝世，享年71岁。\r\n\r\n宋汝鹄同志1943年10月出生于浙江省临海县，1964年8月参加工作，1982年3月加入中国共产党。宋汝鹄同志早年响应党的号召，从沿海地区投身边疆开发建设 。长期在自治区经济部门工作，熟悉国家宏观经济政策，具有丰富的专业知识和实践经验。事业心、责任感和大局意识强，坚决贯彻落实自治区党委、政府决策部署， 加强对全区国民经济运行态势的监测、分析，在调节经济运行、研究制定产业政策、规划行业投资布局、国有企业改制等方面做了大量卓有成效的工作。认真履行宪法和 法律赋予的职责，紧紧围绕关系自治区改革发展稳定大局和人民群众切身利益的实际问题，加强地方立法和监督工作，积极推进社会主义民主法制建设。退出领导岗位 后，仍然关心自治区经济社会事业发展，主动建言献策，为自治区维护稳定、长治久安作出了积极贡献。', null, null);
INSERT INTO `xxmr` VALUES ('4', '周至柔', '周至柔（1899年10月28日——1986年8月29日），浙江省台州市临海市东塍人，中华民国空军一级上将。1919年， 考入保定陆军军官学校第八期步兵科。 1949年去台湾，后任台湾“-”参谋总长、“行政院设计委员会”委员、“-兵工委员会”主任委员。1954年任“国防会议秘书长”。 1986年8月29日，病逝于台北三军总医院,著有《空军十年》。\r\n\r\n浙江省立第六中学毕业。1919年，考入保定陆军军官学校第八期步兵科。1922年毕业，分发浙军第2师见习。1924年，任黄埔军校教官。参 加东征，任虎门要塞司令部参谋长。北伐时，任国民革命军第21师团长，师参谋长，参加龙潭战役，1928年4月升少将。1932年，任第14师中将师长， 第18军副军长。1933年，出访欧美，考察各国航空事业。1934年，任笕桥中央航校校长，1936年任中华民国航空委员会主任。抗日战争期，任空军作战前敌总指挥部 总指挥，中央空军军官学校教育长，随蒋介石出访印度，随赴埃及参加开罗会议。1944年8月，国民政府授予青天白日勋章。1946年，任空军总司令，兼侍从室第一处主任。', null, null);
INSERT INTO `xxmr` VALUES ('5', '罗卫红', '罗卫红女，1965年4月出生，浙江临海人,汉族。1993年加入九三学社。现任浙江省衢州市人民政府副市长。教授级高级工程师。九三学社第十三届中央委员会委员，浙江省第七届委员会副主委。浙江省第十一届政协常委。浙江省青联常委。浙江省监察厅特约监察员。杭州电子科技大学兼职研究生导师。\r\n\r\n1980年至1987年就读于浙江大学热物理系，先后获学士、硕士学位。1987年至2000年在浙江省农业厅沼气太阳能研究所（浙江省农村能源办公室）从事科研及技术管理工作。其间，1988年至1992年在浙江大学能源系工程热物理专业攻读研究生，获博士学位。2000年至2004年调入浙江省煤炭集团（后改组为能源集团）工作，历任浙江省洁净煤技术研究开发中心副主任、主任，浙江省煤炭公司总工程师。2004年至2009年任浙江省科技厅副厅长。其间，2002年至2005年在职学习浙江大学—香港理工大学国际培训中心品质管理专业全英文硕士学位课程。2009年至今任衢州市人民政府副市长。', null, null);
