/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.20-log : Database - luyangytd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`luyangytd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `luyangytd`;

/*Table structure for table `basicinfo` */

DROP TABLE IF EXISTS `basicinfo`;

CREATE TABLE `basicinfo` (
  `basicInfoId` int(10) NOT NULL AUTO_INCREMENT COMMENT '基本资料id',
  `name` varchar(60) DEFAULT NULL COMMENT '真实姓名',
  `idNumber` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `maritalStatus` varchar(60) DEFAULT NULL COMMENT '婚姻状况',
  `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
  `householdRegister` varchar(60) DEFAULT NULL COMMENT '户籍所在地',
  `householdRegisterAddresss` varchar(60) DEFAULT NULL COMMENT '户籍详细地址',
  `liveProvince` varchar(60) DEFAULT NULL COMMENT '居住地-省份',
  `liveAddress` varchar(60) DEFAULT NULL COMMENT '现居住地详细信息',
  `currentResidenceStatus` varchar(60) DEFAULT NULL COMMENT '现居住地状况',
  `monthlyRent` float DEFAULT NULL COMMENT '月租金',
  `monthlyRepaymentAmount` float DEFAULT NULL COMMENT '月还款金额',
  `hvPassport` smallint(6) DEFAULT NULL COMMENT '有无护照',
  `hvDriverLicense` smallint(6) DEFAULT NULL COMMENT '是否有驾驶证',
  `hvSocialSecurity` smallint(6) DEFAULT NULL COMMENT '有无社保、公积金资料',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT '资料附件id',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT '资料完善状态',
  PRIMARY KEY (`basicInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='基本资料';

/*Data for the table `basicinfo` */

/*Table structure for table `biditem` */

DROP TABLE IF EXISTS `biditem`;

CREATE TABLE `biditem` (
  `bidItemId` int(10) NOT NULL AUTO_INCREMENT COMMENT '招标项目id',
  `creditLevel` varchar(5) DEFAULT NULL COMMENT '信用等级',
  `raiseDays` int(11) DEFAULT NULL COMMENT '剩余募集期限',
  `applyDate` date DEFAULT NULL COMMENT '起息日/申请日期',
  `endDate` date DEFAULT NULL COMMENT '结束日期',
  `canInvestCash` float DEFAULT NULL COMMENT '可投金额',
  `loanUse` varchar(1024) DEFAULT NULL COMMENT '借款用途',
  `repaymentResource` varchar(1024) DEFAULT NULL COMMENT '还款来源',
  `pawnInfo` varchar(1024) DEFAULT NULL COMMENT '抵押物情况',
  `factoryBackground` varchar(1024) DEFAULT NULL COMMENT '企业背景',
  `riskControlMethod` varchar(1024) DEFAULT NULL COMMENT '风控措施',
  `itemCommonId` int(4) DEFAULT NULL COMMENT '项目通用信息id',
  `iteStatus` varchar(1024) DEFAULT NULL COMMENT '状态',
  `pawnDealMethod` varchar(1024) DEFAULT NULL COMMENT '抵押物处理措施',
  PRIMARY KEY (`bidItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='招标项目';

/*Data for the table `biditem` */

insert  into `biditem`(`bidItemId`,`creditLevel`,`raiseDays`,`applyDate`,`endDate`,`canInvestCash`,`loanUse`,`repaymentResource`,`pawnInfo`,`factoryBackground`,`riskControlMethod`,`itemCommonId`,`iteStatus`,`pawnDealMethod`) values (1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'1',1296000,'2018-05-15',NULL,2000000,'1','1','1','1','1',6,'1',NULL),(5,'2',1296000,'2018-05-15',NULL,2000000,'1','1','1','1','1',6,'1',NULL),(6,'2',1296000,'2018-05-15',NULL,2000000,'1','1','1','1','1',6,'1',NULL),(7,'2',1296000,'2018-05-15',NULL,2000000,'1','1','1','1','1',6,'1',NULL),(8,'1',1296000,'2018-05-15',NULL,2000000,'1','1','1','1','1',6,'1',NULL),(9,'1',1296000,'2018-05-15',NULL,2000000,'1','1','1','1','1',6,'1',NULL),(10,'2',1296000,'2018-05-15',NULL,2000000,'1','1','1','1','1',6,'1',NULL);

/*Table structure for table `companydata` */

DROP TABLE IF EXISTS `companydata`;

CREATE TABLE `companydata` (
  `companyDataId` int(10) NOT NULL AUTO_INCREMENT COMMENT '单位资料id',
  `companyName` varchar(60) DEFAULT NULL COMMENT '单位名称',
  `companyNature` varchar(60) DEFAULT NULL COMMENT '单位性质',
  `companyIndustry` varchar(60) DEFAULT NULL COMMENT '单位行业',
  `workLevel` varchar(60) DEFAULT NULL COMMENT '工作级别',
  `position` varchar(60) DEFAULT NULL COMMENT '职位',
  `serviceTime` date DEFAULT NULL COMMENT '服务时间',
  `workYears` int(4) DEFAULT NULL COMMENT '工作年限',
  `workTel` int(11) DEFAULT NULL COMMENT '工作电话',
  `companyAddress` varchar(60) DEFAULT NULL COMMENT '单位地址',
  `companySite` varchar(60) DEFAULT NULL COMMENT '单位网址',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT '资料附件id',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT '资料完善状态',
  PRIMARY KEY (`companyDataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位资料';

/*Data for the table `companydata` */

/*Table structure for table `contactinfo` */

DROP TABLE IF EXISTS `contactinfo`;

CREATE TABLE `contactinfo` (
  `contactInfoId` int(10) NOT NULL AUTO_INCREMENT COMMENT '联系方式id',
  `homeTel` int(11) DEFAULT NULL COMMENT '家庭电话',
  `tel` int(11) DEFAULT NULL COMMENT '手机号码',
  `liveProvince` varchar(60) DEFAULT NULL COMMENT '居住省份',
  `liveCity` varchar(60) DEFAULT NULL COMMENT '居地城市',
  `livieDistrict` varchar(60) DEFAULT NULL COMMENT '居住地地区',
  `liveAddress` varchar(60) DEFAULT NULL COMMENT '居住地区详细地址',
  `livePostcode` int(6) DEFAULT NULL COMMENT '居住地邮编',
  `MSN2` int(20) DEFAULT NULL COMMENT 'MSN',
  `QQ2` int(15) DEFAULT NULL COMMENT 'QQ',
  `aliwangwang` int(15) DEFAULT NULL COMMENT '旺旺',
  `partnerName` varchar(60) DEFAULT NULL COMMENT '第二联系人姓名',
  `partnerRelationship` varchar(60) DEFAULT NULL COMMENT '第二联系人关系',
  `partnerHomeTel` int(11) DEFAULT NULL COMMENT '第二联系人电话',
  `partnerTel` int(11) DEFAULT NULL COMMENT '第二联系手机',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT '资料附件id',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT '资料完善状态',
  PRIMARY KEY (`contactInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='联系方式';

/*Data for the table `contactinfo` */

/*Table structure for table `data_directory` */

DROP TABLE IF EXISTS `data_directory`;

CREATE TABLE `data_directory` (
  `ddId` int(4) NOT NULL AUTO_INCREMENT COMMENT '数据字典表id',
  `typeCode` varchar(50) DEFAULT NULL COMMENT '字段类型编码',
  `typeName` varchar(50) DEFAULT NULL COMMENT '字段类型名称',
  `valueId` int(4) DEFAULT NULL COMMENT '类型值id',
  `valueName` varchar(50) DEFAULT NULL COMMENT '类型值名称',
  KEY `ddId` (`ddId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `data_directory` */

insert  into `data_directory`(`ddId`,`typeCode`,`typeName`,`valueId`,`valueName`) values (1,'userRoleName','角色名称',1,'普通用户'),(2,'userRoleName','角色名称',2,'投资者用户'),(3,'userRoleName','角色名称',3,'借款者用户'),(4,'userRoleName','角色名称',4,'管理员用户'),(6,'iteStatus','项目状态',-1,'项目未审核'),(7,'iteStatus','项目状态',0,'审核中'),(8,'iteStatus','项目状态',1,'审核通过'),(9,'iteStatus','项目状态',2,'审核未通过'),(10,'iteStatus','项目状态',3,'项目完结'),(11,'dataCompleteSstatus','资料完善状态',0,'资料不完善'),(12,'dataCompleteSstatus','资料完善状态',1,'资料已完善'),(13,'fundType','资金流种类',0,'用户充值'),(14,'fundType','资金流种类',1,'用户提现'),(15,'fundType','资金流种类',2,'用户投资招标项目'),(16,'fundType','资金流种类',3,'用户招标项目退款'),(17,'fundType','资金流种类',4,'用户投资债权转让项目'),(18,'fundType','资金流种类',5,'用户收款'),(19,'fundType','资金流种类',6,'用户收到贷款'),(20,'fundType','资金流种类',7,'用户正常还款'),(21,'fundType','资金流种类',8,'用户逾期还款'),(22,'fundType','资金流种类',9,'平台手续费入账'),(23,'fundType','资金流种类',10,'平台投资入账'),(24,'fundType','资金流种类',11,'平台招标退款'),(25,'fundType','资金流种类',12,'平台收款出账'),(26,'fundType','资金流种类',13,'平台贷款出账'),(27,'fundType','资金流种类',14,'平台正常还款入账'),(28,'fundType','资金流种类',15,'平台逾期还款入账'),(29,'noticeType','公告板块种类',0,'公司动态'),(30,'noticeType','公告板块种类',1,'精彩活动'),(31,'noticeType','公告板块种类',2,'行业资讯'),(32,'noticeType','公告板块种类',3,'官网公告'),(33,'noticeType','公告板块种类',4,'活动公告'),(34,'noticeType','公告板块种类',5,'升级公告'),(35,'overDueRate','逾期罚息利率',1,'0.05'),(36,'refundStatus','收款状态',0,'正常代收款'),(37,'refundStatus','收款状态',1,'已收款'),(38,'fullScaleOrNot','是否满标状态',-1,'招标失败/退标'),(39,'fullScaleOrNot','是否满标状态',0,'招标中'),(40,'fullScaleOrNot','是否满标状态',1,'招标结束/满标'),(41,'transferOrNot','是否债券转让状态',0,'否'),(42,'transferOrNot','是否债券转让状态',1,'是');

/*Table structure for table `dataattachment` */

DROP TABLE IF EXISTS `dataattachment`;

CREATE TABLE `dataattachment` (
  `dataAttachmentId` int(10) NOT NULL AUTO_INCREMENT COMMENT '资料附件id',
  `dataUpload` varchar(60) DEFAULT NULL COMMENT '资料上传',
  `dataName` varchar(60) DEFAULT NULL COMMENT '资料名称',
  `dataType` varchar(60) DEFAULT NULL COMMENT '资料类型',
  `dataExplain` varchar(60) DEFAULT NULL COMMENT '资料说明',
  `dataId` bigint(10) DEFAULT NULL COMMENT '资料id',
  PRIMARY KEY (`dataAttachmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资料附件';

/*Data for the table `dataattachment` */

/*Table structure for table `deliveryaddress` */

DROP TABLE IF EXISTS `deliveryaddress`;

CREATE TABLE `deliveryaddress` (
  `deliveryAddressId` int(10) NOT NULL AUTO_INCREMENT COMMENT '快递地址管理id',
  `deliveryName` varchar(60) DEFAULT NULL COMMENT '姓名',
  `deliveryTel` int(11) DEFAULT NULL COMMENT '手机号码',
  `deliveryArea` varchar(60) DEFAULT NULL COMMENT '所在地区',
  `deliveryAddress` varchar(60) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`deliveryAddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='快递地址';

/*Data for the table `deliveryaddress` */

/*Table structure for table `educationdata` */

DROP TABLE IF EXISTS `educationdata`;

CREATE TABLE `educationdata` (
  `educationData` int(10) NOT NULL AUTO_INCREMENT COMMENT '教育背景id',
  `entranceYear` date DEFAULT NULL COMMENT '入学年份',
  `graduateYear` date DEFAULT NULL COMMENT '毕业年份',
  `schoolName` varchar(60) DEFAULT NULL COMMENT '学校',
  `recordOfFormalSchooling` varchar(60) DEFAULT NULL COMMENT '学历',
  `major` varchar(60) DEFAULT NULL COMMENT '专业',
  `note` varchar(60) DEFAULT NULL COMMENT '备注',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT '资料附件id',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT '资料完善状态',
  PRIMARY KEY (`educationData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教育背景';

/*Data for the table `educationdata` */

/*Table structure for table `financialstatus` */

DROP TABLE IF EXISTS `financialstatus`;

CREATE TABLE `financialstatus` (
  `financialStatusId` int(10) NOT NULL AUTO_INCREMENT COMMENT '财务状况id',
  `monthUnpledgeRepayMoney` float DEFAULT NULL COMMENT '每月无抵押还款金额',
  `houseStatus` varchar(10) DEFAULT NULL COMMENT '自有房产',
  `mortgageAmount` float DEFAULT NULL COMMENT '房屋按揭金额',
  `carStatus` varchar(10) DEFAULT NULL COMMENT '自有汽车',
  `carMortgageAmount` float DEFAULT NULL COMMENT '汽车按揭金额',
  `creditcardRepayAmount` float DEFAULT NULL COMMENT '信用卡还款金额',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT '资料附件id',
  `dataCompleteStatus` varchar(60) DEFAULT NULL COMMENT '资料完善状态',
  PRIMARY KEY (`financialStatusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='财务状况';

/*Data for the table `financialstatus` */

/*Table structure for table `fund` */

DROP TABLE IF EXISTS `fund`;

CREATE TABLE `fund` (
  `fundId` int(10) NOT NULL AUTO_INCREMENT COMMENT '资金流记录id',
  `userId` int(10) DEFAULT NULL COMMENT '用户ID',
  `money` float DEFAULT NULL COMMENT '资金流数值',
  `tradeTime` datetime DEFAULT NULL COMMENT '交易时间',
  `fundType` int(5) DEFAULT NULL COMMENT '资金流种类',
  `statement` varchar(250) DEFAULT NULL COMMENT '说明',
  `curTotalMoney` float DEFAULT NULL COMMENT '当前账户总资产',
  `curAbleMoney` float DEFAULT NULL COMMENT '当前可用余额',
  `curUnableMoney` float DEFAULT NULL COMMENT '当前冻结资金',
  `itemcommonid` int(11) DEFAULT NULL COMMENT '项目通用ID',
  PRIMARY KEY (`fundId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='资金流记录';

/*Data for the table `fund` */

insert  into `fund`(`fundId`,`userId`,`money`,`tradeTime`,`fundType`,`statement`,`curTotalMoney`,`curAbleMoney`,`curUnableMoney`,`itemcommonid`) values (1,1,20000,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,2,10000,NULL,NULL,NULL,NULL,NULL,NULL,1),(3,3,30000,NULL,NULL,NULL,NULL,NULL,NULL,1),(4,2,10000,NULL,NULL,NULL,NULL,NULL,NULL,2),(5,3,5000,NULL,NULL,NULL,NULL,NULL,NULL,10);

/*Table structure for table `housedata` */

DROP TABLE IF EXISTS `housedata`;

CREATE TABLE `housedata` (
  `houseDataId` int(10) NOT NULL AUTO_INCREMENT COMMENT '房产资料id',
  `houseAddress` varchar(60) DEFAULT NULL COMMENT '房产地址',
  `houseArea` float DEFAULT NULL COMMENT '建筑面积',
  `yearsOfHouse` date DEFAULT NULL COMMENT '建筑年份',
  `houseRepayConditions` varchar(60) DEFAULT NULL COMMENT '供款状况',
  `owner1` varchar(60) DEFAULT NULL COMMENT '所有权人1',
  `owner1Rights` int(10) DEFAULT NULL COMMENT '所有权人1产权份额1',
  `owner2` int(10) DEFAULT NULL COMMENT '所有权人2',
  `owner2Rights` varchar(60) DEFAULT NULL COMMENT '所有权人2产权份额2',
  `houseLoanYears` int(10) DEFAULT NULL COMMENT '借款年限',
  `monthHouseRepay` float DEFAULT NULL COMMENT '每月供款',
  `restLoan` float DEFAULT NULL COMMENT '尚欠借款余额',
  `mortgageBank` varchar(60) DEFAULT NULL COMMENT '按揭银行',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT '资料附件id',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT '资料完善状态',
  PRIMARY KEY (`houseDataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房产资料';

/*Data for the table `housedata` */

/*Table structure for table `investorrefunditem` */

DROP TABLE IF EXISTS `investorrefunditem`;

CREATE TABLE `investorrefunditem` (
  `investorRefundId` int(10) NOT NULL AUTO_INCREMENT COMMENT '投资人回款项目id',
  `investorId` int(10) DEFAULT NULL COMMENT '投资人用户id',
  `periods` int(5) DEFAULT NULL COMMENT '收款期数/当前期数',
  `promiseInterest` float DEFAULT NULL COMMENT '应收利息',
  `applyDate` date DEFAULT NULL COMMENT '申请日期',
  `endDate` date DEFAULT NULL COMMENT '结束日期',
  `interestManageCost` float DEFAULT NULL COMMENT '利息管理费',
  `promiseRefundDate` date DEFAULT NULL COMMENT '应收时间',
  `actualRefundDate` date DEFAULT NULL COMMENT '实收时间',
  `principal` float DEFAULT NULL COMMENT '应收本金',
  `actualRefundInterest` float DEFAULT NULL COMMENT '实收利息',
  `refundStatus` tinyint(1) DEFAULT NULL COMMENT '收款状态',
  `note` varchar(250) DEFAULT NULL COMMENT '备注',
  `fullScaleOrNot` tinyint(1) DEFAULT NULL COMMENT '是否满标状态',
  `itemCommonId` int(10) DEFAULT NULL COMMENT '项目通用信息id',
  `transferOrNot` tinyint(1) DEFAULT NULL COMMENT '是否债权转让状态',
  `itestatus` char(10) DEFAULT NULL COMMENT '项目状态',
  PRIMARY KEY (`investorRefundId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投资人回款项目';

/*Data for the table `investorrefunditem` */

/*Table structure for table `investortransferitem` */

DROP TABLE IF EXISTS `investortransferitem`;

CREATE TABLE `investortransferitem` (
  `investorTransferId` int(10) NOT NULL AUTO_INCREMENT COMMENT '投资人债权转让项目id',
  `applyDate` date DEFAULT NULL COMMENT '申请日期',
  `endDate` date DEFAULT NULL COMMENT '结束日期',
  `transferPrice` float DEFAULT NULL COMMENT '转让价格/受让价格/承接价格',
  `itestatus` varchar(10) DEFAULT NULL COMMENT '项目状态',
  `note` varchar(250) DEFAULT NULL COMMENT '备注',
  `restRepayDays` int(5) DEFAULT NULL COMMENT '剩余还款日',
  `resetPickedUpDays` int(5) DEFAULT NULL COMMENT '剩余承接日',
  `pickedUpUserId` int(10) DEFAULT NULL COMMENT '承接人ID',
  `investorRefundId` int(10) DEFAULT NULL COMMENT '投资人回款项目id',
  PRIMARY KEY (`investorTransferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投资人债权转让项目';

/*Data for the table `investortransferitem` */

/*Table structure for table `itemcommon` */

DROP TABLE IF EXISTS `itemcommon`;

CREATE TABLE `itemcommon` (
  `itemCommonId` int(10) NOT NULL AUTO_INCREMENT COMMENT '项目通用信息ID',
  `iteLimitYuan` int(10) DEFAULT NULL COMMENT '借款金额',
  `iteReason` varchar(50) DEFAULT NULL COMMENT '借款目的',
  `applyDate` date DEFAULT NULL COMMENT '申请日期',
  `endDate` date DEFAULT NULL COMMENT '结束日期',
  `iteBidMin` float DEFAULT NULL COMMENT '最低投资金额',
  `iteBidDate` int(11) NOT NULL COMMENT '有效时间',
  `iteYearRate` float DEFAULT NULL COMMENT '预期投资回报率',
  `iteRepayInterval` varchar(50) DEFAULT NULL COMMENT '期限种类',
  `iteRepayCount` int(10) DEFAULT NULL COMMENT '期限数量',
  `iteBidSum` int(10) DEFAULT NULL COMMENT '投资总额',
  `iteRepayType` varchar(50) DEFAULT NULL COMMENT '还款方式',
  `iteTitle` varchar(50) DEFAULT NULL COMMENT '借款标题/项目名称',
  `itdContent` varchar(250) DEFAULT NULL COMMENT '借款说明',
  `loanerId` int(10) DEFAULT NULL COMMENT '借款者用户id',
  `repayTotalMoney` float DEFAULT NULL COMMENT '到期还款总金额',
  `loanItemLevel` varchar(5) DEFAULT NULL COMMENT '借款项目等级',
  `isNewItem` tinyint(1) DEFAULT NULL COMMENT '是否是新手标',
  `totalOverDueDays` int(5) DEFAULT NULL COMMENT '总逾期天数',
  `overDueInterests` float DEFAULT NULL COMMENT '逾期罚息',
  `overDueCapital` float DEFAULT NULL COMMENT '逾期金额',
  `termRepay` float DEFAULT NULL COMMENT '每期还款金额',
  `currentOverDueDays` char(10) DEFAULT NULL COMMENT '当前逾期天数',
  `iteStatus` varchar(4) NOT NULL DEFAULT '-1' COMMENT '项目状态',
  PRIMARY KEY (`itemCommonId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='项目通用信息';

/*Data for the table `itemcommon` */

insert  into `itemcommon`(`itemCommonId`,`iteLimitYuan`,`iteReason`,`applyDate`,`endDate`,`iteBidMin`,`iteBidDate`,`iteYearRate`,`iteRepayInterval`,`iteRepayCount`,`iteBidSum`,`iteRepayType`,`iteTitle`,`itdContent`,`loanerId`,`repayTotalMoney`,`loanItemLevel`,`isNewItem`,`totalOverDueDays`,`overDueInterests`,`overDueCapital`,`termRepay`,`currentOverDueDays`,`iteStatus`) values (1,100000,'贷款买房',NULL,NULL,10000,180,0.13,'买车',10,100000,'等额本息','抵押贷款申请，资金周转','我需要钱',1,112000,'A',1,0,0,0,11000,'0','-1'),(10,100000,'贷款买房',NULL,NULL,10000,180,0.13,'买车',10,100000,'等额本息','抵押贷款申请，资金周转','我需要钱',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-1');

/*Table structure for table `loanitem` */

DROP TABLE IF EXISTS `loanitem`;

CREATE TABLE `loanitem` (
  `itemCommonId` int(10) NOT NULL AUTO_INCREMENT COMMENT '抵押贷款申请项目id',
  `applyDate` date DEFAULT NULL COMMENT '申请日期',
  `endDate` date DEFAULT NULL COMMENT '结束日期',
  `itemStatus` varchar(10) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`itemCommonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='抵押贷款申请项目';

/*Data for the table `loanitem` */

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `noticeId` int(10) NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `noticeTitle` varchar(20) DEFAULT NULL COMMENT '公告标题',
  `noticeTime` date DEFAULT NULL COMMENT '发表时间',
  `noticeFrom` varchar(25) DEFAULT NULL COMMENT '文章来源',
  `noticeContent` varchar(1024) DEFAULT NULL COMMENT '文章正文',
  `noticeTypeId` varchar(5) DEFAULT NULL COMMENT '公告板块',
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `notice` */

/*Table structure for table `pawn` */

DROP TABLE IF EXISTS `pawn`;

CREATE TABLE `pawn` (
  `loanerId` int(10) DEFAULT NULL COMMENT '用户id',
  `pawnId` varchar(1024) DEFAULT NULL COMMENT '抵押物',
  `status` varchar(10) DEFAULT NULL COMMENT '状态',
  `itemCommonId` int(10) NOT NULL AUTO_INCREMENT COMMENT '占用项目编号',
  `titleName` varchar(10) DEFAULT NULL COMMENT '抵押物名称',
  `itdContent` varchar(10) DEFAULT NULL COMMENT '抵押物信息',
  `picture1` char(10) DEFAULT NULL COMMENT '图片1',
  `picture2` char(10) DEFAULT NULL COMMENT '图片2',
  `picture3` char(1) DEFAULT NULL COMMENT '图片3',
  `picture4` char(10) DEFAULT NULL COMMENT '图片4',
  `picture5` char(10) DEFAULT NULL COMMENT '图片5',
  PRIMARY KEY (`itemCommonId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='抵押物';

/*Data for the table `pawn` */

insert  into `pawn`(`loanerId`,`pawnId`,`status`,`itemCommonId`,`titleName`,`itdContent`,`picture1`,`picture2`,`picture3`,`picture4`,`picture5`) values (0,NULL,NULL,1,'深圳房产','市场价值评估了180',NULL,NULL,NULL,NULL,NULL),(0,NULL,NULL,2,'深圳房产','市场价值评估了180',NULL,NULL,NULL,NULL,NULL),(0,NULL,NULL,3,'深圳房产','市场价值评估了180',NULL,NULL,NULL,NULL,NULL),(0,NULL,NULL,4,'深圳房产','270万一套80平',NULL,NULL,NULL,NULL,NULL),(0,NULL,NULL,5,'深圳房产','270万一套80平',NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,6,'全国商品房抵押','3万一平深圳房产',NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,7,'贷款申请','需要钱',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `privateownerdata` */

DROP TABLE IF EXISTS `privateownerdata`;

CREATE TABLE `privateownerdata` (
  `privateOwnerDataId` int(10) NOT NULL AUTO_INCREMENT COMMENT '私营业主资料id',
  `privateOwnerType` varchar(60) DEFAULT NULL COMMENT '私营业主类型',
  `setUpDate` date DEFAULT NULL COMMENT '成立日期',
  `premises` varchar(60) DEFAULT NULL COMMENT '经营场所',
  `rent` float DEFAULT NULL COMMENT '租金',
  `lease` varchar(60) DEFAULT NULL COMMENT '租期',
  `taxNumber` varchar(60) DEFAULT NULL COMMENT '税务编号',
  `businessRegistrationNumber` int(10) DEFAULT NULL COMMENT '工商登记号',
  `fullYearEarnings` float DEFAULT NULL COMMENT '全年盈利',
  `employment` int(10) DEFAULT NULL COMMENT '雇佣人数',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT '资料附件id',
  `dataCompleteStatus` varchar(60) DEFAULT NULL COMMENT '资料完善状态',
  PRIMARY KEY (`privateOwnerDataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='私营业主资料';

/*Data for the table `privateownerdata` */

/*Table structure for table `repaymentitem` */

DROP TABLE IF EXISTS `repaymentitem`;

CREATE TABLE `repaymentitem` (
  `repaymentItemId` int(10) NOT NULL AUTO_INCREMENT COMMENT '还款项目id',
  `applyDate` date DEFAULT NULL COMMENT '起息日/申请日期',
  `endDate` date DEFAULT NULL COMMENT '结束日期',
  `itemCommonId` int(10) DEFAULT NULL COMMENT '项目通用信息id',
  `itestatus` varchar(10) DEFAULT NULL COMMENT '状态',
  `repaymentTerm` int(5) DEFAULT NULL COMMENT '还款期限',
  PRIMARY KEY (`repaymentItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='还款项目';

/*Data for the table `repaymentitem` */

insert  into `repaymentitem`(`repaymentItemId`,`applyDate`,`endDate`,`itemCommonId`,`itestatus`,`repaymentTerm`) values (1,'2018-05-15','2019-05-15',1,'还款中',365);

/*Table structure for table `spousedata` */

DROP TABLE IF EXISTS `spousedata`;

CREATE TABLE `spousedata` (
  `spouseDataId` int(10) NOT NULL AUTO_INCREMENT COMMENT '配偶资料id',
  `spouseName` varchar(60) DEFAULT NULL COMMENT '配偶姓名',
  `spouseSalary` varchar(60) DEFAULT NULL COMMENT '每月薪金',
  `spouseTel` int(11) DEFAULT NULL COMMENT '配偶电话',
  `spouseWorkTel` int(11) DEFAULT NULL COMMENT '配偶单位电话',
  `spouseCompany` varchar(60) DEFAULT NULL COMMENT '配偶工作单位',
  `spousePosition` varchar(60) DEFAULT NULL COMMENT '配偶职位',
  `spouseCompanyAddress` varchar(60) DEFAULT NULL COMMENT '单位地址',
  `dataAttachmentId` bigint(10) DEFAULT NULL COMMENT '资料附件id',
  `dataCompleteStatus` int(5) DEFAULT NULL COMMENT '资料完善状态',
  PRIMARY KEY (`spouseDataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配偶资料';

/*Data for the table `spousedata` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `userName` varchar(20) DEFAULT NULL COMMENT '用户名',
  `userTel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `logPsw` varchar(20) DEFAULT NULL COMMENT '登录密码',
  `tradePsw` varchar(20) DEFAULT NULL COMMENT '交易密码',
  `totalMoney` float DEFAULT NULL COMMENT '账户总资产',
  `availableMoney` float DEFAULT NULL COMMENT '可用余额',
  `unavailableMoney` float DEFAULT NULL COMMENT '冻结资金',
  `futureMoney` float DEFAULT NULL COMMENT '代收总额',
  `userRoleId` int(10) DEFAULT NULL COMMENT '用户角色id',
  `basicInfoId` int(10) DEFAULT NULL COMMENT '基本资料id',
  `houseDataId` int(10) DEFAULT NULL COMMENT '房产资料id',
  `companyDataId` int(10) DEFAULT NULL COMMENT '单位资料id',
  `privateOwnerDataId` int(10) DEFAULT NULL COMMENT '私营业主资料id',
  `financialStatusId` int(10) DEFAULT NULL COMMENT '财务状况id',
  `contactInfoId` int(10) DEFAULT NULL COMMENT '联系方式id',
  `spouseDataId` int(10) DEFAULT NULL COMMENT '配偶资料id',
  `educationDataId` int(10) DEFAULT NULL COMMENT '教育背景id',
  `deliveryAddressId` int(10) DEFAULT NULL COMMENT '快递地址id',
  `verifyDataId` int(10) DEFAULT NULL COMMENT '认证信息id',
  `overdueId` int(10) DEFAULT NULL COMMENT '逾期记录id',
  `overdueTimes` int(5) DEFAULT NULL COMMENT '平台历史逾期次数',
  `isNewCutsomer` varchar(1) DEFAULT NULL COMMENT '是否是新手投资',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`userTel`,`logPsw`,`tradePsw`,`totalMoney`,`availableMoney`,`unavailableMoney`,`futureMoney`,`userRoleId`,`basicInfoId`,`houseDataId`,`companyDataId`,`privateOwnerDataId`,`financialStatusId`,`contactInfoId`,`spouseDataId`,`educationDataId`,`deliveryAddressId`,`verifyDataId`,`overdueId`,`overdueTimes`,`isNewCutsomer`) values (1,'luyang','18124002976','11111111','1111111',1000,1000,0,0,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `verifydata` */

DROP TABLE IF EXISTS `verifydata`;

CREATE TABLE `verifydata` (
  `verifyDataId` int(10) NOT NULL AUTO_INCREMENT COMMENT '认证信息id',
  `tel` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `realNameVerify` varchar(10) DEFAULT NULL COMMENT '实名认证',
  `bankCard` int(19) DEFAULT NULL COMMENT '银行卡',
  `email` varchar(60) DEFAULT NULL COMMENT '电子邮箱',
  `verifyStatus` int(5) DEFAULT NULL COMMENT '认证状态',
  PRIMARY KEY (`verifyDataId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='我的认证';

/*Data for the table `verifydata` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
