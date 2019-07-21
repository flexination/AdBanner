/*
Navicat MySQL Data Transfer

Source Server         : Shaira
Source Server Version : 50083
Source Host           : localhost:3306
Source Database       : ads_mysql

Target Server Type    : MYSQL
Target Server Version : 50083
File Encoding         : 65001

Date: 2009-09-17 11:55:36
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `adbanners`
-- ----------------------------
DROP TABLE IF EXISTS `adbanners`;
CREATE TABLE `adbanners` (
  `adID` int(11) NOT NULL auto_increment,
  `imgURL` varchar(255) default NULL,
  `URL` varchar(255) default NULL,
  `imgAlt` varchar(255) default NULL,
  PRIMARY KEY  (`adID`),
  KEY `adID` (`adID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adbanners
-- ----------------------------
INSERT INTO `adbanners` VALUES ('1', 'http://di.dell.com/images/us/html/segments/bsd/images/affiliates/affiliates_468x60.gif', 'http://service.bfast.com/bfast/click?bfmid=37628499&siteid=38930847&bfpage=test_chs_val_ser', 'Check Out The Great Dell Offers!');
INSERT INTO `adbanners` VALUES ('2', 'http://www.qksrv.net/image-1145041-811007', 'http://www.qksrv.net/click-1145041-811007', 'Get Brainbench Certifications Today!');
INSERT INTO `adbanners` VALUES ('3', 'http://www.vistaprint.com/vp/images/affiliates/468x60_Business_or_pleasure.gif', 'http://service.bfast.com/bfast/click?bfmid=26298982&siteid=39742063&bfpage=468x60_business_or_p', 'Get Your Free Business Cards Today!');
INSERT INTO `adbanners` VALUES ('4', 'http://a408.g.akamai.net/f/408/1284/24h/image.netflix.com/NetFlix_Assets/affiliates/banners/avert01.gif', 'http://service.bfast.com/bfast/click?bfmid=27276611&siteid=39730087&bfpage=homepage', 'Sign Up For Netflix - DVDs Delivered To Your Doorstep!');
INSERT INTO `adbanners` VALUES ('5', 'http://shopping.discovery.com/befree/gallery/hi-tec.gif', 'http://service.bfast.com/bfast/click?bfmid=29395190&siteid=39742064&bfpage=hi_tec', 'Shop For Hi-Tech Gadgets On Discovery.com!');
INSERT INTO `adbanners` VALUES ('6', 'http://www.entertainment.com/images/affiliate/banners/468_banner_1.gif', 'http://service.bfast.com/bfast/click?bfmid=30719175&siteid=33225828&bfpage=homepage', 'Get Your Entertainment Coupon Book Right Here!');
INSERT INTO `adbanners` VALUES ('7', 'http://telecom.hellodirect.com/eBiz/image/gb4681.gif', 'http://service.bfast.com/bfast/click?bfmid=25928263&siteid=39744127&bfpage=gb5', 'Telecommunications At Its Best - Hello Direct!');
INSERT INTO `adbanners` VALUES ('8', 'http://www.bandwidthplace.com/images/top_title.gif', 'http://www.bandwidthplace.com/speedtest/', 'Speed Test Your Internet Access!');
INSERT INTO `adbanners` VALUES ('9', 'http://www.qksrv.net/image-1145041-3881538', 'http://www.qksrv.net/click-1145041-3881538', 'Access Your PC From Anywhere!');
INSERT INTO `adbanners` VALUES ('10', 'http://www.netsol.com/en_US/promotions/affiliates/banners/images/domain-name-v1-468x60.gif', 'http://service.bfast.com/bfast/click?bfmid=115761&siteid=1028723&categoryid=domain_reg_3', 'Register Your Domain Name Today @ Verisign!');
INSERT INTO `adbanners` VALUES ('11', 'http://ads.bfast.com/banners/ad_images/2181/38184838/38184839.gif', 'http://barnesandnoble.bfast.com/booklink/click?sourceid=12397&categoryid=nytimes', 'The NY Times Books@BarnesandNoble.com!');
INSERT INTO `adbanners` VALUES ('12', 'images/cdnow_plain.gif', 'http://www.cdnow.com/from=sr-2479', 'CDNow!');
INSERT INTO `adbanners` VALUES ('13', 'http://media.monster.com/a/affiliate/banner3_3.gif', 'http://service.bfast.com/bfast/click?bfmid=37921049&siteid=39773630&bfpage=home2', 'Get a Monster of a Career!');
INSERT INTO `adbanners` VALUES ('14', 'http://www.qksrv.net/image-1145041-9238389', 'http://www.qksrv.net/click-1145041-9238389', 'Web Hosting & More!');
INSERT INTO `adbanners` VALUES ('15', 'http://www.cafepress.com/cp/banners/cp_referral_468x60.gif', 'http://www.cafepress.com/cp/info/storeref.aspx?refby=webcfmx', 'Design and Sell Merchandise Online for Free');
INSERT INTO `adbanners` VALUES ('16', 'images/xangan.gif', 'http://www.xanga.com/about/premium/LearnMore.asp?refid=265214', 'xanga.com - the weblog community');
INSERT INTO `adbanners` VALUES ('17', 'images/ug_ad_250_viguy.gif', 'http://www.oreilly.com', 'computer books, software conferences, online publishing');
INSERT INTO `adbanners` VALUES ('18', 'http://www.qksrv.net/image-1145041-818190', 'http://www.qksrv.net/click-1145041-818190?url=http%3A%2F%2Fwww.dunhamssports.com%2Fentry.point%3Ftarget%3DZ%26source%3DCJ__5', 'Get in the game - whatever you play!');
INSERT INTO `adbanners` VALUES ('19', 'http://www.qksrv.net/image-1145041-5340732', 'http://www.qksrv.net/click-1145041-5340732', 'Smooth Fitness Now!');
INSERT INTO `adbanners` VALUES ('20', 'http://spamarrest.com/img/affiliate/ads/spam468x60-3.gif?110903', 'http://spamarrest.com/affl?110903', 'Arrest that Spam!');
INSERT INTO `adbanners` VALUES ('22', 'images/usawitban.jpg', 'http://www.u-saw-it.com', 'U Saw It Enterprises');
INSERT INTO `adbanners` VALUES ('23', 'http://affiliates.macromedia.com/showb.asp?id=1392&img=aff_468x60.gif', 'http://affiliates.macromedia.com/b.asp?id=1392&p=go/dr_home_aff1', 'Macromedia products at their best!');
INSERT INTO `adbanners` VALUES ('24', 'http://www.globalinstitution.com/themes/hong/images/logo.gif', 'http://www.globalinstitution.com', 'Unique Medical, Business and Culture Travel to China!');
