/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - booksales
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `booksales`;

USE `booksales`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `Admin_code` decimal(3,0) NOT NULL,
  `Admin_id` varchar(50) NOT NULL,
  `Admin_pwd` varchar(50) NOT NULL,
  PRIMARY KEY  (`Admin_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`Admin_code`,`Admin_id`,`Admin_pwd`) values ('1','admin','admin');
insert into `m_admin` (`Admin_code`,`Admin_id`,`Admin_pwd`) values ('2','ad002','admin2');

/*Table structure for table `m_book` */

DROP TABLE IF EXISTS `m_book`;

CREATE TABLE `m_book` (
  `b_code` int(18) NOT NULL auto_increment,
  `b_name` varchar(150) NOT NULL,
  `cat_code` int(4) NOT NULL,
  `b_language` varchar(50) NOT NULL,
  `b_price` float(10,2) NOT NULL,
  `b_author` varchar(100) NOT NULL,
  `b_publication` varchar(50) NOT NULL,
  `b_stock` decimal(10,0) NOT NULL default '0',
  `b_tax` float(10,2) NOT NULL,
  `b_indv_discount` float(3,0) NOT NULL,
  `b_corp_discount` float(3,0) NOT NULL,
  `b_descr` varchar(50) default NULL,
  `b_status` char(10) default NULL,
  PRIMARY KEY  (`b_code`),
  KEY `FK_m_book` (`cat_code`),
  CONSTRAINT `FK_m_book` FOREIGN KEY (`cat_code`) REFERENCES `m_categories` (`cat_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_book` */

insert into `m_book` (`b_code`,`b_name`,`cat_code`,`b_language`,`b_price`,`b_author`,`b_publication`,`b_stock`,`b_tax`,`b_indv_discount`,`b_corp_discount`,`b_descr`,`b_status`) values (2,'IAS',3,'English',250.00,'Harishchand','Singhanias','50',15.00,10,25,'IAS books','List');
insert into `m_book` (`b_code`,`b_name`,`cat_code`,`b_language`,`b_price`,`b_author`,`b_publication`,`b_stock`,`b_tax`,`b_indv_discount`,`b_corp_discount`,`b_descr`,`b_status`) values (3,'IPL-2015',4,'English',250.00,'Harishchand','Singhanias','20',15.00,10,50,'Good Books','List');
insert into `m_book` (`b_code`,`b_name`,`cat_code`,`b_language`,`b_price`,`b_author`,`b_publication`,`b_stock`,`b_tax`,`b_indv_discount`,`b_corp_discount`,`b_descr`,`b_status`) values (4,'Gajani',5,'English',250.00,'Harishchand','Singhanias','110',15.00,10,40,'supperb ganijini','List');
insert into `m_book` (`b_code`,`b_name`,`cat_code`,`b_language`,`b_price`,`b_author`,`b_publication`,`b_stock`,`b_tax`,`b_indv_discount`,`b_corp_discount`,`b_descr`,`b_status`) values (5,'Fifa 2015',6,'spanish',250.00,'Harishchand','Singhanias','110',15.00,10,25,'FiIFA World Cup....','List');
insert into `m_book` (`b_code`,`b_name`,`cat_code`,`b_language`,`b_price`,`b_author`,`b_publication`,`b_stock`,`b_tax`,`b_indv_discount`,`b_corp_discount`,`b_descr`,`b_status`) values (6,'Alzebra',7,'English',500.00,'Harishchand','Singhanias','564',5.00,10,25,'All mathematical values....','Hold');
insert into `m_book` (`b_code`,`b_name`,`cat_code`,`b_language`,`b_price`,`b_author`,`b_publication`,`b_stock`,`b_tax`,`b_indv_discount`,`b_corp_discount`,`b_descr`,`b_status`) values (7,'BABA',3,'English',250.00,'Harishchand','Singhanias','210',15.00,13,40,'Baba MAgics','Hold');
insert into `m_book` (`b_code`,`b_name`,`cat_code`,`b_language`,`b_price`,`b_author`,`b_publication`,`b_stock`,`b_tax`,`b_indv_discount`,`b_corp_discount`,`b_descr`,`b_status`) values (8,'fifa world cup ',6,'English',250.00,'Harishchand','Singhanias','500',15.00,10,25,'fifa world cup ......','Hold');

/*Table structure for table `m_book_inward` */

DROP TABLE IF EXISTS `m_book_inward`;

CREATE TABLE `m_book_inward` (
  `inw_no` int(18) NOT NULL auto_increment,
  `inw_date` date default NULL,
  `b_code` int(18) NOT NULL,
  `no_of_books` decimal(10,0) default NULL,
  PRIMARY KEY  (`inw_no`),
  KEY `FK_m_book_inward` (`b_code`),
  CONSTRAINT `FK_m_book_inward` FOREIGN KEY (`b_code`) REFERENCES `m_book` (`b_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_book_inward` */

insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (1,'2015-01-30',2,'50');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (2,'2015-01-30',4,'100');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (3,'2015-01-30',5,'100');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (4,'2015-01-30',3,'55');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (6,'2015-01-30',7,'200');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (7,'2015-01-29',8,'500');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (8,'2015-01-20',3,'10');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (9,'2015-01-20',3,'10');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (10,'2015-01-20',6,'10');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (11,'2015-01-20',6,'54');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (12,'2015-01-20',4,'10');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (13,'2015-01-20',7,'10');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (14,'2015-01-20',5,'10');
insert into `m_book_inward` (`inw_no`,`inw_date`,`b_code`,`no_of_books`) values (15,'2015-01-23',3,'20');

/*Table structure for table `m_book_request` */

DROP TABLE IF EXISTS `m_book_request`;

CREATE TABLE `m_book_request` (
  `br_no` int(10) NOT NULL auto_increment,
  `br_date` date NOT NULL,
  `m_code` int(18) NOT NULL,
  `b_code` int(18) NOT NULL,
  `br_status` char(10) default 'P',
  PRIMARY KEY  (`br_no`),
  KEY `FK_m_book_request1` (`b_code`),
  KEY `FK_m_book_request` (`m_code`),
  CONSTRAINT `FK_m_book_request` FOREIGN KEY (`m_code`) REFERENCES `m_member` (`m_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_m_book_request1` FOREIGN KEY (`b_code`) REFERENCES `m_book` (`b_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_book_request` */

/*Table structure for table `m_categories` */

DROP TABLE IF EXISTS `m_categories`;

CREATE TABLE `m_categories` (
  `cat_code` int(5) NOT NULL auto_increment,
  `cat_name` varchar(50) NOT NULL,
  `cat_description` varchar(250) default NULL,
  PRIMARY KEY  (`cat_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_categories` */

insert into `m_categories` (`cat_code`,`cat_name`,`cat_description`) values (3,'Governement Exams Book','Nice book of objective Question...');
insert into `m_categories` (`cat_code`,`cat_name`,`cat_description`) values (4,'Cricket','all kinds of Cricket 2015');
insert into `m_categories` (`cat_code`,`cat_name`,`cat_description`) values (5,'Bollywood','regards bolly wood...');
insert into `m_categories` (`cat_code`,`cat_name`,`cat_description`) values (6,'FiIFA World Cup','all FiIFA World Cup');
insert into `m_categories` (`cat_code`,`cat_name`,`cat_description`) values (7,'Math','alzebra maths...');
insert into `m_categories` (`cat_code`,`cat_name`,`cat_description`) values (8,'Nature','details about some plants');

/*Table structure for table `m_creditcard_mem` */

DROP TABLE IF EXISTS `m_creditcard_mem`;

CREATE TABLE `m_creditcard_mem` (
  `id` int(20) NOT NULL auto_increment,
  `login_id` varchar(100) default NULL,
  `cardnum` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `bankname` varchar(100) default NULL,
  `exmonth` varchar(20) default NULL,
  `exyear` varchar(20) default NULL,
  `cvvnum` varchar(5) default NULL,
  `amount` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_creditcard_mem` */

insert into `m_creditcard_mem` (`id`,`login_id`,`cardnum`,`name`,`bankname`,`exmonth`,`exyear`,`cvvnum`,`amount`) values (1,'ram','45678658765','raj','icici','10','2022','234','480');
insert into `m_creditcard_mem` (`id`,`login_id`,`cardnum`,`name`,`bankname`,`exmonth`,`exyear`,`cvvnum`,`amount`) values (2,'ram','5464354','Ramesh','sbi','10','2029','345','510.0');
insert into `m_creditcard_mem` (`id`,`login_id`,`cardnum`,`name`,`bankname`,`exmonth`,`exyear`,`cvvnum`,`amount`) values (3,'ram','345436546','ganesh','sbi','09','2018','456','495.0');
insert into `m_creditcard_mem` (`id`,`login_id`,`cardnum`,`name`,`bankname`,`exmonth`,`exyear`,`cvvnum`,`amount`) values (4,'ram','34656768768','niru','hdfc','05','2024','234','255.0');
insert into `m_creditcard_mem` (`id`,`login_id`,`cardnum`,`name`,`bankname`,`exmonth`,`exyear`,`cvvnum`,`amount`) values (5,'ram','dinesh','344556666','sbi','09','2022','234','495.0');
insert into `m_creditcard_mem` (`id`,`login_id`,`cardnum`,`name`,`bankname`,`exmonth`,`exyear`,`cvvnum`,`amount`) values (6,'ram','23454354','raj','sbi','01','2021','456','252.0');
insert into `m_creditcard_mem` (`id`,`login_id`,`cardnum`,`name`,`bankname`,`exmonth`,`exyear`,`cvvnum`,`amount`) values (7,'ram','','jay','hdfc','11','2024','234','495.0');
insert into `m_creditcard_mem` (`id`,`login_id`,`cardnum`,`name`,`bankname`,`exmonth`,`exyear`,`cvvnum`,`amount`) values (8,'yogendra','12535647757','ramesh','sbi','07','2023','234','255.0');

/*Table structure for table `m_member` */

DROP TABLE IF EXISTS `m_member`;

CREATE TABLE `m_member` (
  `m_code` int(18) NOT NULL auto_increment,
  `m_login_id` varchar(100) NOT NULL default '',
  `m_password` varchar(500) NOT NULL,
  `m_user_type` char(1) default 'I',
  `m_company_name` varchar(100) default NULL,
  `m_contact_name` varchar(50) default NULL,
  `m_address` varchar(500) default NULL,
  `m_city` varchar(50) default NULL,
  `m_pincode` int(6) default NULL,
  `m_emailid` varchar(100) NOT NULL,
  `m_phoneno` varchar(20) NOT NULL,
  `m_status` varchar(10) default 'Active',
  PRIMARY KEY  (`m_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_member` */

insert into `m_member` (`m_code`,`m_login_id`,`m_password`,`m_user_type`,`m_company_name`,`m_contact_name`,`m_address`,`m_city`,`m_pincode`,`m_emailid`,`m_phoneno`,`m_status`) values (28,'yogendra','M6JSz/ACTUD3iY8mds4big==','I',NULL,'Yogendra Verma','Jp Nagar','Bangalore',560011,'yogendragd@gmail.com','9900917574','Active');
insert into `m_member` (`m_code`,`m_login_id`,`m_password`,`m_user_type`,`m_company_name`,`m_contact_name`,`m_address`,`m_city`,`m_pincode`,`m_emailid`,`m_phoneno`,`m_status`) values (29,'dinesh','AUZpGzopXvTpegOOoC+5HA==','I',NULL,'Dinesh','Raja ji nagar','Bangalore',560014,'dinesh@gmail.com','9900916534','Active');

/*Table structure for table `m_member_interest` */

DROP TABLE IF EXISTS `m_member_interest`;

CREATE TABLE `m_member_interest` (
  `mi_code` int(18) NOT NULL auto_increment,
  `m_code` int(18) NOT NULL,
  `cat_code` int(5) NOT NULL,
  PRIMARY KEY  (`mi_code`),
  KEY `FK_m_member_interest1` (`cat_code`),
  KEY `FK_m_member_interest` (`m_code`),
  CONSTRAINT `FK_m_member_interest` FOREIGN KEY (`m_code`) REFERENCES `m_member` (`m_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_m_member_interest1` FOREIGN KEY (`cat_code`) REFERENCES `m_categories` (`cat_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_member_interest` */

/*Table structure for table `m_sales` */

DROP TABLE IF EXISTS `m_sales`;

CREATE TABLE `m_sales` (
  `bill_no` int(10) NOT NULL auto_increment,
  `bill_date` date NOT NULL,
  `m_code` int(18) NOT NULL,
  `total_cost` float(18,2) NOT NULL,
  `discount_cost` float(18,2) NOT NULL,
  `tax_amount` float(18,2) NOT NULL,
  `net_amount` float(18,2) NOT NULL,
  PRIMARY KEY  (`bill_no`),
  KEY `FK_m_sales` (`m_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_sales` */

insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (1,'2015-04-30',6,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (2,'2015-04-30',6,500.00,480.00,30.00,510.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (3,'2015-04-30',6,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (4,'2015-04-30',6,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (5,'2015-04-30',6,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (6,'2015-04-30',6,750.00,720.00,45.00,765.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (7,'2015-08-19',0,250.00,250.00,15.00,265.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (8,'2015-08-19',7,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (9,'2015-08-24',24,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (10,'2015-10-23',26,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (11,'2015-10-27',27,500.00,490.00,5.00,495.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (12,'2015-10-27',27,0.00,0.00,0.00,0.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (13,'2015-10-27',27,250.00,237.00,15.00,252.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (14,'2015-10-27',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (15,'2015-10-28',27,500.00,477.00,30.00,507.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (16,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (17,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (18,'2015-10-28',27,500.00,480.00,30.00,510.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (19,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (20,'2015-10-28',27,0.00,0.00,0.00,0.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (21,'2015-10-28',27,500.00,480.00,30.00,510.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (22,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (23,'2015-10-28',27,750.00,720.00,45.00,765.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (24,'2015-10-28',0,500.00,500.00,30.00,530.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (25,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (26,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (27,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (28,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (29,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (30,'2015-10-28',27,500.00,480.00,30.00,510.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (31,'2015-10-28',27,0.00,0.00,0.00,0.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (32,'2015-10-28',27,500.00,480.00,30.00,510.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (33,'2015-10-28',27,500.00,490.00,5.00,495.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (34,'2015-10-28',27,250.00,237.00,15.00,252.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (35,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (36,'2015-10-28',27,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (37,'2015-10-28',27,500.00,490.00,5.00,495.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (38,'2015-10-29',27,250.00,237.00,15.00,252.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (39,'2015-10-29',27,500.00,490.00,5.00,495.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (40,'2015-12-18',28,250.00,240.00,15.00,255.00);
insert into `m_sales` (`bill_no`,`bill_date`,`m_code`,`total_cost`,`discount_cost`,`tax_amount`,`net_amount`) values (41,'2015-12-18',28,250.00,240.00,15.00,255.00);

/*Table structure for table `t_sales` */

DROP TABLE IF EXISTS `t_sales`;

CREATE TABLE `t_sales` (
  `bill_no` int(10) NOT NULL,
  `b_code` int(18) NOT NULL,
  `b_price` float(18,2) NOT NULL,
  `discount_per` int(10) default '6',
  `discount_amount` float(10,2) default NULL,
  `tax_amount` float(18,2) default NULL,
  `sale_amount` float(18,2) NOT NULL,
  KEY `FK_t_sales1` (`b_code`),
  KEY `FK_t_sales` (`bill_no`),
  CONSTRAINT `FK_t_sales` FOREIGN KEY (`bill_no`) REFERENCES `m_sales` (`bill_no`) ON DELETE CASCADE,
  CONSTRAINT `FK_t_sales1` FOREIGN KEY (`b_code`) REFERENCES `m_book` (`b_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_sales` */

insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (3,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (3,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (4,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (3,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (4,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (5,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (3,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (4,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (5,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (6,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (3,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (4,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (5,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (6,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (3,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (4,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (5,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (6,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (3,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (4,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (5,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (6,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,3,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (1,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (2,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (3,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (4,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (5,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (6,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (8,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (9,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (10,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,4,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,3,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,3,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,5,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (33,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (33,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (34,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (33,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (34,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (35,8,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (33,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (34,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (35,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (36,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,2,250.00,6,0.00,15.00,265.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (33,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (34,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (35,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (36,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (37,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,6,500.00,6,0.00,5.00,505.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,6,500.00,6,0.00,5.00,505.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (33,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (34,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (35,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (36,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (37,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (38,7,250.00,6,13.00,15.00,252.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,6,500.00,6,0.00,5.00,505.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,6,500.00,6,0.00,5.00,505.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (11,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (12,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (13,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (14,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (15,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (16,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (17,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (18,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (19,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (20,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (21,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (22,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (23,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (25,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (26,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (27,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (28,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (29,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (30,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (31,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (32,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (33,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (34,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (35,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (36,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (37,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (38,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (39,6,500.00,6,10.00,5.00,495.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,6,500.00,6,0.00,5.00,505.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,6,500.00,6,0.00,5.00,505.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (40,2,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (7,6,500.00,6,0.00,5.00,505.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (24,6,500.00,6,0.00,5.00,505.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (40,3,250.00,6,10.00,15.00,255.00);
insert into `t_sales` (`bill_no`,`b_code`,`b_price`,`discount_per`,`discount_amount`,`tax_amount`,`sale_amount`) values (41,3,250.00,6,10.00,15.00,255.00);

/*Table structure for table `temp_cart` */

DROP TABLE IF EXISTS `temp_cart`;

CREATE TABLE `temp_cart` (
  `m_code` int(4) NOT NULL,
  `b_code` int(4) NOT NULL,
  `b_name` varchar(150) NOT NULL,
  `b_language` varchar(50) NOT NULL,
  `b_price` float(10,2) NOT NULL,
  `b_author` varchar(100) NOT NULL,
  `b_publication` varchar(50) NOT NULL,
  `b_stock` int(10) NOT NULL,
  `b_tax` float(10,2) NOT NULL,
  `b_discount` float(3,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp_cart` */

insert into `temp_cart` (`m_code`,`b_code`,`b_name`,`b_language`,`b_price`,`b_author`,`b_publication`,`b_stock`,`b_tax`,`b_discount`) values (0,6,'Alzebra','English',500.00,'Harishchand','Singhanias',564,5.00,0);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
