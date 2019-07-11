SET NAMES UTF8;
DROP DATABASE IF EXISTS md;
CREATE DATABASE md CHARSET=UTF8;
USE md;


#创建用户表
CREATE TABLE md_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    user_name VARCHAR(32)
);
#向用户表中插入数据
INSERT INTO md_user VALUES
(NULL,'tom','123456','汤姆'),
(NULL,'jerry','234567','杰瑞');


#创建轮播图 图片表
CREATE TABLE md_carousel(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128)
);
#向轮播图插入数据
INSERT INTO md_carousel VALUES
(NULL,'img/carousel/156222206966201703.jpg'),
(NULL,'img/carousel/156222857795855676.jpg'),
(NULL,'img/carousel/156222225890485802.jpg'),
(NULL,'img/carousel/156228871353741413.jpg');


#创建首页分类图表
CREATE TABLE md_classify(
    aid INT PRIMARY key AUTO_INCREMENT,
    title VARCHAR(32),
    img VARCHAR(128)
);
#向首页分类表插入数据
INSERT INTO md_classify VALUES
(NULL,'爆款手机','img/indexlist/155074220498300857.webp'),
(NULL,'苏宁超市','img/indexlist/154708800857670247.webp'),
(NULL,'生活家电','img/indexlist/155175138228120594.webp'),
(NULL,'苏宁生鲜','img/indexlist/154708804944582613.webp'),
(NULL,'母婴玩具','img/indexlist/154708806622775342.webp'),
(NULL,'限时抢购','img/indexlist/154710176930796178.webp'),
(NULL,'赚钱','img/indexlist/154708810364057852.webp'),
(NULL,'苏宁拼购','img/indexlist/154708812182127441.webp'),
(NULL,'苏宁家电','img/indexlist/156221085626859071.gif'),
(NULL,'签到有礼','img/indexlist/154762102044051306.webp');

#创建首页商品表
CREATE TABLE md_product(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128),
    title VARCHAR(64),
    subtitle VARCHAR(128),
    stad VARCHAR(32),
    price DECIMAL(10,2)
);
#向商品表中插入数据
INSERT INTO md_product VALUES
(NULL,'img/product/TKWcj3Tlfd6sKznjxeCQhg.webp','三只松鼠_开行果','threesquirrels 休闲零食每日坚果特产炒货原味无漂白 袋装 带壳','袋/120g',39.9),
(NULL,'img/product/AOQfwt_WgL2KgVMnJIrmfQ.webp','三只松鼠_炭烧腰果90g','坚果零食每日坚果特产干果仁','袋/120g',24.9),
(NULL,'img/product/ioB7KXkC4xK5DlbxZJZWvg.webp','三只松鼠_碧根果','threesquirrels 每日坚果特产山核桃长寿果碧更果 袋装 带壳 奶油味','袋/120g',27.5),
(NULL,'img/product/FLngVLQHW2JBz5N47VRNlQ.webp','三只松鼠_蜀香牛肉','threesquirrels 蜀香牛肉麻辣味100g/袋(休闲零食）牛肉类袋装','袋/120g',29.9),
(NULL,'img/product/ePMyNFMa18SW8EFbl2t1-g.webp','三只松鼠_海之脆 海苔夹心36g','休闲零食小吃海味即食','袋/120g',26.9),
(NULL,'img/product/lTRMVQqCmtTQlPz_vGlvow.jpg','百草味_夏威夷果','坚果蜜饯休闲零食特产干果炒货送开口器满减','袋/120g',24.8),
(NULL,'img/product/myJ8RvEcYHA9dweWuaoKVQ.jpg','百草味_y盐焗味开心果','休闲零食每日坚果干果炒货特产大颗粒原色无漂白食品满减','袋/120g',34.9),
(NULL,'img/product/pDH5hKQY1Hua6kWcPq500g.jpg','百草味_炭烧腰果','休闲零食每日坚果干果炒货特产大颗粒原色无漂白食品满减','袋/120g',23.9),
(NULL,'img/product/HNX0Yx3pBObTfjyAs623dA.jpg','百草味_东北松子','休闲零食每日坚果干果炒货特产大颗粒原色无漂白食品满减','袋/120g',36.9),
(NULL,'img/product/MzsKE8IL7wR6qxROQqhtnA.jpg','百草味_金猪报副零食包','休闲零食每日坚果干果炒货特产大颗粒原色无漂白食品满减','袋/120g',59.9)
