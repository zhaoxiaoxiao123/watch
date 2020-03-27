SET NAMES UTF8;
DROP DATABASE IF EXISTS shserver;
CREATE DATABASE shserver CHARSET=UTF8;
USE shserver;

/**手表型号家族**/
CREATE TABLE mall_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32),
  fdes VARCHAR(128),         #描述
  fpic VARCHAR(32)     #图片
);

INSERT INTO mall_family VALUES
(NULL,'送给他','型男本色，戴出潮流风尚','select_1.jpg'),
(NULL,'送给她','戴出百变时尚，发现不一样的你。','select_2.jpg'),
(NULL,'全新ESSENTIALS系列','从极简主义到个性表达，斯沃琪不断探索革新材质，在延用条纹、迷彩等传统斯沃琪元素的同时，引入渐变色彩和金属饰面，铸就腕间非凡臻品。','select_3.jpg'),
(NULL,'送给他','型男本色，戴出潮流风尚','select_4.jpg'),
(NULL,'2020年单板滑雪莱克斯公开赛限量款腕表','激动人心的2020年单板滑雪莱克斯公开赛特别款腕表重磅上线！','select_5.jpg'),
(NULL,'SKINIRONY 超薄金属系列','此次，斯沃琪全新 SKIN IRONY 超薄金属系列共有 6种款式供选择，运用当季流行色彩和灵动纤薄的都市休闲条纹元素，尽显现代风尚。','select_6.jpg'),
(NULL,'','FLIK FLAK飞菲瑞士制潮童表','select_7.jpg');

/**手表列表**/
CREATE TABLE mall_list(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,
  lname VARCHAR(32),
  lcname VARCHAR(32),
  lprice DECIMAL(7,2),
  lpic VARCHAR(32),     #图片
  l_title VARCHAR(32),
  l_subtitle VARCHAR(32),
  l_des VARCHAR(128)
);

INSERT INTO mall_list VALUES
(NULL,1,'','',0,'r_1_1.jpg','斯沃琪型格男表','38 产品系列','在这里可以买到最新的斯沃琪男士腕表。无论你是怎样的风格，总有一款斯沃琪腕表适合你。将经典永恒系于手腕，抑或装点一抹缤纷色彩于腕间。'),
(NULL,1,'CHARCOLAZING','',610,'r_1_2.jpg','','',''),
(NULL,1,'BLACK LAYERED','',610,'r_1_3.jpg','','',''),
(NULL,1,'BLUE LAYERED','',610,'r_1_4.jpg','','',''),
(NULL,1,'SKIN SUIT COFFEE','',1500,'r_1_5.jpg','','',''),
(NULL,1,'FOREST GRID','',1440,'r_1_6.jpg','','',''),
(NULL,1,'SKINWIND','SKIN疾风',1330,'r_1_7.jpg','','',''),
(NULL,1,'SKINMETAL','SKIN银晖',1330,'r_1_8.jpg','','',''),
(NULL,1,'BIG BOLD JELLYFISH','',840,'r_1_9.jpg','','',''),
(NULL,1,'BBBLUE','BB蔚蓝',800,'r_1_10.jpg','','',''),
(NULL,1,'BBCREAM','BB奶白',800,'r_1_11.jpg','','',''),
(NULL,1,'BBBUBBLES','BB气泡',800,'r_1_12.jpg','','',''),
(NULL,1,'BBBLANCO','BB 银白',800,'r_1_13.jpg','','',''),
(NULL,1,'REVIVAL','',610,'r_1_14.jpg','','',''),
(NULL,1,'SUPER SIR','',610,'r_1_15.jpg','','',''),
(NULL,1,'ROYAL KEY','',610,'r_1_16.jpg','','',''),
(NULL,2,'','',0,'r_1.jpg','斯沃琪百搭女表','42 产品系列','斯沃琪简约而不简单，来这里购买女士系列腕表。色彩斑斓的创意抑或时髦流行的岸标——适合任何女士的小物件。'),
(NULL,2,'SKIN MAGNOLIA','',1220,'r_2.j','','',''),
(NULL,2,'AZZURA','',570,'r_3.jpg','','',''),
(NULL,2,'KWARTZY','',570,'r_4.jpg','','',''),
(NULL,2,'CASUAL BLUE','',490,'r_5.jpg','','',''),
(NULL,2,'SANDCHIC','时髦粉灰',840,'r_6.jpg','','',''),
(NULL,2,'CALIFE','',540,'r_7.jpg','','',''),
(NULL,2,'BIG BOLD JELLYFISH','',840,'r_8.jpg','','',''),
(NULL,2,'ROYAL KEY','',610,'r_9.jpg','','',''),
(NULL,2,'DAMASK','',570,'r_10.jpg','','',''),
(NULL,2,'ARTHUR','',540,'r_11jpg','','',''),
(NULL,2,'COQUELICOTTE','繁花似锦',540,'r_12.jpg','','',''),
(NULL,2,'REDTWIST','红色曲线',540,'r_13.jpg','','',''),
(NULL,2,'GREYTWIST','灰蓝曲线',540,'r_14.jpg','','',''),
(NULL,2,'MULTIBOOST','斑斓动力',610,'r_15.jpg','','',''),
(NULL,2,'BBBLANCO','BB  银白 ',800,'r_16.jpg','','',''),
(NULL,3,'','',0,'r_3_1.jpg','ESSENTIALS系列腕表','16 产品系列','每月重点介绍全新Swatch Essentials系列。点亮心情，开放一场腕间探索之旅。'),
(NULL,3,'LICO-GUM','',570,'r_3_2.jpg','','',''),
(NULL,3,'SKIN SUIT BLACK','',1680,'r_3_3.jpg','','',''),
(NULL,3,'TURF WRIST','',1500,'r_3_4.jpg','','',''),
(NULL,3,'SKIN SUIT BLUE','',1500,'r_3_5.jpg','','',''),
(NULL,3,"O'CHOCO",'',1000,'r_3_6.jpg','','',''),
(NULL,3,'PETITE SECONDE BLACK','',1680,'r_3_7.jpg','','',''),
(NULL,3,'PETITE SECONDE BLUE','',1680,'r_3_8.jpg','','',''),
(NULL,3,'SKIN AMOR','',840,'r_3_9.jpg','','',''),
(NULL,3,'SKIN CLOUD','',840,'r_3_10.jpg','','',''),
(NULL,3,'SKIN LOVE','',840,'r_3_11.jpg','','',''),
(NULL,3,'PINK GUM','',570,'r_3_12.jpg','','',''),
(NULL,3,'ICY GUM','',570,'r_3_13.jpg','','',''),
(NULL,3,'SISTEM BLING','',1900,'r_3_14.jpg','','',''),
(NULL,3,'CASUAL CHIC','',1710,'r_3_15.jpg','','',''),
(NULL,3,'YELLOWPUSHER','',540,'r_3_16.jpg','','',''),
(NULL,6,'','',0,'r_6_1.jpg','SKINIRONY 超薄金属系列','12 产品系列','此次，斯沃琪全新 SKIN IRONY 超薄金属系列共有 6种款式供选择，运用当季流行色彩和灵动纤薄的都市休闲条纹元素，尽显现代风尚。每一款腕表都采用做工精细的磨砂不锈钢或抛光不锈钢 42 毫米直径表壳，搭配简约而精致的表盘，以及皮革和橡胶表带，将佩戴者的品位和个性体现地淋漓尽致。全新风尚，尽在经典与现代的精彩碰撞！'),
(NULL,6,'SKIN SUIT BLACK','',1680,'r_6_2.jpg','','',''),
(NULL,6,'SKIN SUIT BLUE','',1500,'r_6_3.jpg','','',''),
(NULL,6,'SKIN GLAM','',1560,'r_6_4.jpg','','',''),
(NULL,6,"SKIN SUIT BROWN",'',1330,'r_6_5.jpg','','',''),
(NULL,6,'SKIN SUIT COFFEE','',1500,'r_6_6.jpg','','',''),
(NULL,6,'SKIN MAGNOLIA','',1220,'r_6_7.jpg','','',''),
(NULL,6,'SKINWIND','SKIN疾风',1330,'r_6_8.jpg','','',''),
(NULL,6,'SKINMETAL','SKIN银晖',1330,'r_6_9.jpg','','',''),
(NULL,6,'SKINNATURE','',1180,'r_6_10.jpg','','',''),
(NULL,6,'SKINDORO','',1520,'r_6_11.jpg','','',''),
(NULL,6,'SKINOUTONO','',1180,'r_6_12.jpg','','',''),
(NULL,6,'SKINBLUEIRON','',1180,'r_6_13.jpg','','','')
;

/**手表详情**/
CREATE TABLE mall_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  list_id INT,
  d_title VARCHAR(32),
  d_subtitle VARCHAR(32),
  dprice DECIMAL(7,2),
  dpic VARCHAR(32),     #图片
  dspic VARCHAR(32),
  dnum INT,
  d_series VARCHAR(32),
  d_fun VARCHAR(32),
  d_ncolor VARCHAR(32),
  d_meter VARCHAR(32),
  d_color VARCHAR(32),
  d_width VARCHAR(32),
  d_thick VARCHAR(32),
  d_height VARCHAR(32),
  d_bcolor VARCHAR(32),
  d_bmate VARCHAR(32),
  d_cmate VARCHAR(32),
  d_button VARCHAR(32),
  d_dial VARCHAR(32),
  d_ccolor VARCHAR(32),
  d_cshape VARCHAR(32),
  d_case_meta VARCHAR(32)
);

INSERT INTO mall_detail VALUES
(NULL,50,'SKIN SUIT BLACK','SS07B100G',1680,'r_6_2_1.jpg','r_6_2_22.jpg',1,'Skin Irony','夜明功能, 防水','石英','3O','	黑色','42.00 mm','6.70 mm','45.60 mm','黑色','可调不锈钢','不锈钢','珠宝扣','黑色','黑色','圆形','不锈钢');

/**手表购物车**/
CREATE TABLE mall_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(32),
  cdes VARCHAR(32),         #描述
  cpic VARCHAR(32),     #图片
  cnum INT,
  cprice DECIMAL(7,2)
);



