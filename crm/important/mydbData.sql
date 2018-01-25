-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.48 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mydb
DROP DATABASE IF EXISTS `mydb`;
CREATE DATABASE IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;

-- Dumping structure for table mydb.acdemic_details
DROP TABLE IF EXISTS `acdemic_details`;
CREATE TABLE IF NOT EXISTS `acdemic_details` (
  `academic_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `tenth_school_name_school_name_id` int(11) NOT NULL,
  `tenth_boards_board_id` int(11) NOT NULL,
  `tenth_year_year_id` int(11) NOT NULL,
  `medium_medium_id` int(11) NOT NULL,
  `tenth_per` float DEFAULT NULL,
  `twelth_sub_twelth_sub_id` int(11) NOT NULL,
  `twelth_year_year_id` int(11) NOT NULL,
  `twelth_college_college_id` int(11) NOT NULL,
  `twelth_medium_medium_id1` int(11) NOT NULL,
  `twelth_boards_board_id` int(11) NOT NULL,
  `twelth_per` float DEFAULT NULL,
  `graduation_college_college_id` int(11) NOT NULL,
  `graduation_per` float DEFAULT NULL,
  `graduation_yop_year_year_id` int(11) NOT NULL,
  `graduation_branch_branch_id` int(11) NOT NULL,
  `pg_details_pg_details_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`academic_details_id`),
  KEY `fk_acdemic_details_twelth_sub1_idx` (`twelth_sub_twelth_sub_id`),
  KEY `fk_acdemic_details_school_name1_idx` (`tenth_school_name_school_name_id`),
  KEY `fk_acdemic_details_boards1_idx` (`tenth_boards_board_id`),
  KEY `fk_acdemic_details_year4_idx` (`tenth_year_year_id`),
  KEY `fk_acdemic_details_medium1_idx` (`medium_medium_id`),
  KEY `fk_acdemic_details_year1_idx` (`twelth_year_year_id`),
  KEY `fk_acdemic_details_college1_idx` (`twelth_college_college_id`),
  KEY `fk_acdemic_details_medium2_idx` (`twelth_medium_medium_id1`),
  KEY `fk_acdemic_details_boards2_idx` (`twelth_boards_board_id`),
  KEY `fk_acdemic_details_college2_idx` (`graduation_college_college_id`),
  KEY `fk_acdemic_details_year2_idx` (`graduation_yop_year_year_id`),
  KEY `fk_acdemic_details_branch1_idx` (`graduation_branch_branch_id`),
  KEY `fk_acdemic_details_pg_details1_idx` (`pg_details_pg_details_id`),
  CONSTRAINT `fk_acdemic_details_twelth_sub1` FOREIGN KEY (`twelth_sub_twelth_sub_id`) REFERENCES `twelth_sub` (`twelth_sub_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_school_name1` FOREIGN KEY (`tenth_school_name_school_name_id`) REFERENCES `school_name` (`school_name_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_boards1` FOREIGN KEY (`tenth_boards_board_id`) REFERENCES `boards` (`board_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_year4` FOREIGN KEY (`tenth_year_year_id`) REFERENCES `year` (`year_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_medium1` FOREIGN KEY (`medium_medium_id`) REFERENCES `medium` (`medium_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_year1` FOREIGN KEY (`twelth_year_year_id`) REFERENCES `year` (`year_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_college1` FOREIGN KEY (`twelth_college_college_id`) REFERENCES `college` (`college_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_medium2` FOREIGN KEY (`twelth_medium_medium_id1`) REFERENCES `medium` (`medium_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_boards2` FOREIGN KEY (`twelth_boards_board_id`) REFERENCES `boards` (`board_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_college2` FOREIGN KEY (`graduation_college_college_id`) REFERENCES `college` (`college_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_year2` FOREIGN KEY (`graduation_yop_year_year_id`) REFERENCES `year` (`year_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_branch1` FOREIGN KEY (`graduation_branch_branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_pg_details1` FOREIGN KEY (`pg_details_pg_details_id`) REFERENCES `pg_details` (`pg_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.acdemic_details: ~1 rows (approximately)
/*!40000 ALTER TABLE `acdemic_details` DISABLE KEYS */;
INSERT INTO `acdemic_details` (`academic_details_id`, `tenth_school_name_school_name_id`, `tenth_boards_board_id`, `tenth_year_year_id`, `medium_medium_id`, `tenth_per`, `twelth_sub_twelth_sub_id`, `twelth_year_year_id`, `twelth_college_college_id`, `twelth_medium_medium_id1`, `twelth_boards_board_id`, `twelth_per`, `graduation_college_college_id`, `graduation_per`, `graduation_yop_year_year_id`, `graduation_branch_branch_id`, `pg_details_pg_details_id`) VALUES
	(1, 1, 1, 1, 1, 72, 1, 2, 1, 1, 1, 73, 1, 75, 3, 1, 1);
/*!40000 ALTER TABLE `acdemic_details` ENABLE KEYS */;

-- Dumping structure for table mydb.address
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nearby` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `city_city_id` int(11) NOT NULL,
  PRIMARY KEY (`address_id`,`city_city_id`),
  KEY `fk_address_city1_idx` (`city_city_id`),
  CONSTRAINT `fk_address_city1` FOREIGN KEY (`city_city_id`) REFERENCES `city` (`city_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.address: ~1 rows (approximately)
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`address_id`, `nearby`, `street`, `pincode`, `city_city_id`) VALUES
	(0000000001, 'BHU', 'Lanka', 12345, 1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;

-- Dumping structure for table mydb.assisment_details
DROP TABLE IF EXISTS `assisment_details`;
CREATE TABLE IF NOT EXISTS `assisment_details` (
  `assisment_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `assisment_list_assisment_list_id` int(11) NOT NULL,
  `date_of_assisement` date DEFAULT NULL,
  `batch_details_batch_details_id` int(11) NOT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`assisment_details_id`,`assisment_list_assisment_list_id`,`batch_details_batch_details_id`),
  KEY `fk_assisment_details_batch_details1_idx` (`batch_details_batch_details_id`),
  KEY `fk_assisment_details_assisment_list1_idx` (`assisment_list_assisment_list_id`),
  CONSTRAINT `fk_assisment_details_batch_details1` FOREIGN KEY (`batch_details_batch_details_id`) REFERENCES `batch_details` (`batch_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_assisment_details_assisment_list1` FOREIGN KEY (`assisment_list_assisment_list_id`) REFERENCES `assisment_list` (`assisment_list_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.assisment_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `assisment_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `assisment_details` ENABLE KEYS */;

-- Dumping structure for table mydb.assisment_list
DROP TABLE IF EXISTS `assisment_list`;
CREATE TABLE IF NOT EXISTS `assisment_list` (
  `assisment_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `assisment_name` varchar(45) DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  PRIMARY KEY (`assisment_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.assisment_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `assisment_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `assisment_list` ENABLE KEYS */;

-- Dumping structure for table mydb.batch_details
DROP TABLE IF EXISTS `batch_details`;
CREATE TABLE IF NOT EXISTS `batch_details` (
  `batch_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(45) DEFAULT NULL,
  `batch_duration` varchar(45) DEFAULT NULL,
  `batch_start_date` date DEFAULT NULL,
  `batch_excepted_end_date` date DEFAULT NULL,
  `strength` int(11) DEFAULT NULL,
  `bath_technology_batch_technology_id` int(11) NOT NULL,
  PRIMARY KEY (`batch_details_id`,`bath_technology_batch_technology_id`),
  KEY `fk_batch_details_bath_technology1_idx` (`bath_technology_batch_technology_id`),
  CONSTRAINT `fk_batch_details_bath_technology1` FOREIGN KEY (`bath_technology_batch_technology_id`) REFERENCES `batch_technology` (`batch_technology_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.batch_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `batch_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_details` ENABLE KEYS */;

-- Dumping structure for table mydb.batch_technology
DROP TABLE IF EXISTS `batch_technology`;
CREATE TABLE IF NOT EXISTS `batch_technology` (
  `batch_technology_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_technology_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`batch_technology_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.batch_technology: ~0 rows (approximately)
/*!40000 ALTER TABLE `batch_technology` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_technology` ENABLE KEYS */;

-- Dumping structure for table mydb.boards
DROP TABLE IF EXISTS `boards`;
CREATE TABLE IF NOT EXISTS `boards` (
  `board_id` int(11) NOT NULL AUTO_INCREMENT,
  `board_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.boards: ~3 rows (approximately)
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` (`board_id`, `board_name`) VALUES
	(1, 'ICSE'),
	(2, 'State'),
	(3, 'CBSE');
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;

-- Dumping structure for table mydb.branch
DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(45) DEFAULT NULL,
  `type_of_degree_type_of_degree_id` int(11) NOT NULL,
  PRIMARY KEY (`branch_id`,`type_of_degree_type_of_degree_id`),
  KEY `fk_branch_type_of_degree1_idx` (`type_of_degree_type_of_degree_id`),
  CONSTRAINT `fk_branch_type_of_degree1` FOREIGN KEY (`type_of_degree_type_of_degree_id`) REFERENCES `type_of_degree` (`type_of_degree_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.branch: ~2 rows (approximately)
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` (`branch_id`, `branch_name`, `type_of_degree_type_of_degree_id`) VALUES
	(1, 'CSE', 1),
	(2, 'EC', 1);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;

-- Dumping structure for table mydb.city
DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(45) DEFAULT NULL,
  `state_state_id` int(11) NOT NULL,
  PRIMARY KEY (`city_id`,`state_state_id`),
  KEY `fk_city_state1_idx` (`state_state_id`),
  CONSTRAINT `fk_city_state1` FOREIGN KEY (`state_state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.city: ~1 rows (approximately)
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`city_id`, `city`, `state_state_id`) VALUES
	(1, 'Varanasi', 1);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;

-- Dumping structure for table mydb.college
DROP TABLE IF EXISTS `college`;
CREATE TABLE IF NOT EXISTS `college` (
  `college_id` int(11) NOT NULL AUTO_INCREMENT,
  `college` varchar(200) DEFAULT NULL,
  `university_university_id` int(11) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`college_id`,`university_university_id`),
  KEY `fk_college_university1_idx` (`university_university_id`),
  CONSTRAINT `fk_college_university1` FOREIGN KEY (`university_university_id`) REFERENCES `university` (`university_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.college: ~1 rows (approximately)
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` (`college_id`, `college`, `university_university_id`, `address`) VALUES
	(1, 'FGIET', 1, 'raebareli');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;

-- Dumping structure for table mydb.country
DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.country: ~1 rows (approximately)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`country_id`, `country`) VALUES
	(1, 'India');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Dumping structure for table mydb.daily_schedule
DROP TABLE IF EXISTS `daily_schedule`;
CREATE TABLE IF NOT EXISTS `daily_schedule` (
  `daily_schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `daily_schedule_desc` varchar(500) DEFAULT NULL,
  `daily_schedule_date` date DEFAULT NULL,
  `weekly_schedule_weekly_schedule_id` int(11) NOT NULL,
  PRIMARY KEY (`daily_schedule_id`,`weekly_schedule_weekly_schedule_id`),
  KEY `fk_daily_schedule_weekly_schedule1_idx` (`weekly_schedule_weekly_schedule_id`),
  CONSTRAINT `fk_daily_schedule_weekly_schedule1` FOREIGN KEY (`weekly_schedule_weekly_schedule_id`) REFERENCES `weekly_schedule` (`weekly_schedule_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.daily_schedule: ~0 rows (approximately)
/*!40000 ALTER TABLE `daily_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_schedule` ENABLE KEYS */;

-- Dumping structure for table mydb.leave
DROP TABLE IF EXISTS `leave`;
CREATE TABLE IF NOT EXISTS `leave` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(500) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `person_details_person_id` int(11) NOT NULL,
  PRIMARY KEY (`leave_id`),
  KEY `fk_leave_person_details1_idx` (`person_details_person_id`),
  CONSTRAINT `fk_leave_person_details1` FOREIGN KEY (`person_details_person_id`) REFERENCES `person_details` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.leave: ~0 rows (approximately)
/*!40000 ALTER TABLE `leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave` ENABLE KEYS */;

-- Dumping structure for table mydb.login
DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='	';

-- Dumping data for table mydb.login: ~3 rows (approximately)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`login_id`, `email`, `password`) VALUES
	(1, 'abhishek@gmail.com', 'abhishek'),
	(2, 'baba@gmail.com', 'baba'),
	(3, 'gaurav@gmail.com', 'gaurav');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Dumping structure for table mydb.medium
DROP TABLE IF EXISTS `medium`;
CREATE TABLE IF NOT EXISTS `medium` (
  `medium_id` int(11) NOT NULL AUTO_INCREMENT,
  `medium` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`medium_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.medium: ~3 rows (approximately)
/*!40000 ALTER TABLE `medium` DISABLE KEYS */;
INSERT INTO `medium` (`medium_id`, `medium`) VALUES
	(1, 'English'),
	(2, 'Hindi'),
	(3, 'Others');
/*!40000 ALTER TABLE `medium` ENABLE KEYS */;

-- Dumping structure for table mydb.mentor_batch_allocation
DROP TABLE IF EXISTS `mentor_batch_allocation`;
CREATE TABLE IF NOT EXISTS `mentor_batch_allocation` (
  `mentor_batch_allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `mentor_details_mentor_details_id` int(11) NOT NULL,
  `batch_details_batch_details_id` int(11) NOT NULL,
  PRIMARY KEY (`mentor_batch_allocation_id`,`mentor_details_mentor_details_id`,`batch_details_batch_details_id`),
  KEY `fk_mentor_batch_allocation_mentor_details1_idx` (`mentor_details_mentor_details_id`),
  KEY `fk_mentor_batch_allocation_batch_details1_idx` (`batch_details_batch_details_id`),
  CONSTRAINT `fk_mentor_batch_allocation_mentor_details1` FOREIGN KEY (`mentor_details_mentor_details_id`) REFERENCES `mentor_details` (`mentor_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mentor_batch_allocation_batch_details1` FOREIGN KEY (`batch_details_batch_details_id`) REFERENCES `batch_details` (`batch_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.mentor_batch_allocation: ~0 rows (approximately)
/*!40000 ALTER TABLE `mentor_batch_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentor_batch_allocation` ENABLE KEYS */;

-- Dumping structure for table mydb.mentor_details
DROP TABLE IF EXISTS `mentor_details`;
CREATE TABLE IF NOT EXISTS `mentor_details` (
  `mentor_details_id` int(11) NOT NULL,
  `person_details_person_id` int(11) NOT NULL,
  `date_of_joining` varchar(45) DEFAULT NULL,
  `status_status_id` int(11) NOT NULL,
  PRIMARY KEY (`mentor_details_id`,`person_details_person_id`,`status_status_id`),
  KEY `fk_mentor_details_person_details1_idx` (`person_details_person_id`),
  KEY `fk_mentor_details_status1_idx` (`status_status_id`),
  CONSTRAINT `fk_mentor_details_person_details1` FOREIGN KEY (`person_details_person_id`) REFERENCES `person_details` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mentor_details_status1` FOREIGN KEY (`status_status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.mentor_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `mentor_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentor_details` ENABLE KEYS */;

-- Dumping structure for table mydb.mentor_trainee_report
DROP TABLE IF EXISTS `mentor_trainee_report`;
CREATE TABLE IF NOT EXISTS `mentor_trainee_report` (
  `mentor_trainee_report_id` int(11) NOT NULL,
  `traniee_details_trainee_details_id` int(11) NOT NULL,
  `report_by_mentor` varchar(45) DEFAULT NULL,
  `report_by_hr` varchar(45) DEFAULT NULL,
  `report_status_status_id` int(11) NOT NULL,
  PRIMARY KEY (`mentor_trainee_report_id`,`traniee_details_trainee_details_id`,`report_status_status_id`),
  KEY `fk_mentor_trainee_report_traniee_details1_idx` (`traniee_details_trainee_details_id`),
  KEY `fk_mentor_trainee_report_status1_idx` (`report_status_status_id`),
  CONSTRAINT `fk_mentor_trainee_report_traniee_details1` FOREIGN KEY (`traniee_details_trainee_details_id`) REFERENCES `trainee_details` (`trainee_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mentor_trainee_report_status1` FOREIGN KEY (`report_status_status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.mentor_trainee_report: ~0 rows (approximately)
/*!40000 ALTER TABLE `mentor_trainee_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentor_trainee_report` ENABLE KEYS */;

-- Dumping structure for table mydb.person_details
DROP TABLE IF EXISTS `person_details`;
CREATE TABLE IF NOT EXISTS `person_details` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile_no` double DEFAULT NULL,
  `person_detailscol` varchar(45) DEFAULT NULL,
  `login_login_id` int(11) NOT NULL,
  `paddress_address_id` int(10) unsigned zerofill NOT NULL,
  `caddress_address_id` int(10) unsigned zerofill NOT NULL,
  `acdemic_details_academic_details_id` int(11) NOT NULL,
  `extra_activities` varchar(45) DEFAULT NULL,
  `role_role_id` int(11) NOT NULL,
  `technical_skills` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`person_id`,`login_login_id`,`paddress_address_id`,`caddress_address_id`,`acdemic_details_academic_details_id`,`role_role_id`),
  KEY `fk_person_details_login_idx` (`login_login_id`),
  KEY `fk_person_details_address1_idx` (`paddress_address_id`),
  KEY `fk_person_details_address2_idx` (`caddress_address_id`),
  KEY `fk_person_details_acdemic_details1_idx` (`acdemic_details_academic_details_id`),
  KEY `fk_person_details_role1_idx` (`role_role_id`),
  CONSTRAINT `fk_person_details_login` FOREIGN KEY (`login_login_id`) REFERENCES `login` (`login_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_details_address1` FOREIGN KEY (`paddress_address_id`) REFERENCES `address` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_details_address2` FOREIGN KEY (`caddress_address_id`) REFERENCES `address` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_details_acdemic_details1` FOREIGN KEY (`acdemic_details_academic_details_id`) REFERENCES `acdemic_details` (`academic_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_details_role1` FOREIGN KEY (`role_role_id`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.person_details: ~3 rows (approximately)
/*!40000 ALTER TABLE `person_details` DISABLE KEYS */;
INSERT INTO `person_details` (`person_id`, `person_name`, `date_of_birth`, `gender`, `email`, `mobile_no`, `person_detailscol`, `login_login_id`, `paddress_address_id`, `caddress_address_id`, `acdemic_details_academic_details_id`, `extra_activities`, `role_role_id`, `technical_skills`) VALUES
	(1, 'Abhishek', '1994-02-02', 'male', 'abhishek@gmail.com', 123456789, NULL, 1, 0000000001, 0000000001, 1, NULL, 1, NULL),
	(2, 'Uttam', '1994-04-22', 'male', 'baba@gmail.com', 12345678, NULL, 2, 0000000001, 0000000001, 1, NULL, 2, NULL),
	(3, 'Gaurav', '1994-08-04', 'male', 'gaurav@gmail.com', 45678921, NULL, 3, 0000000001, 0000000001, 1, NULL, 3, NULL);
/*!40000 ALTER TABLE `person_details` ENABLE KEYS */;

-- Dumping structure for table mydb.pg_details
DROP TABLE IF EXISTS `pg_details`;
CREATE TABLE IF NOT EXISTS `pg_details` (
  `pg_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `pg_branch_branch_id` int(11) NOT NULL,
  `pg_college_college_id` int(11) NOT NULL,
  `pg_year_year_id` int(11) NOT NULL,
  `pg_per` float DEFAULT NULL,
  PRIMARY KEY (`pg_details_id`),
  KEY `fk_pg_details_branch1_idx` (`pg_branch_branch_id`),
  KEY `fk_pg_details_college1_idx` (`pg_college_college_id`),
  KEY `fk_pg_details_year1_idx` (`pg_year_year_id`),
  CONSTRAINT `fk_pg_details_branch1` FOREIGN KEY (`pg_branch_branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pg_details_college1` FOREIGN KEY (`pg_college_college_id`) REFERENCES `college` (`college_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pg_details_year1` FOREIGN KEY (`pg_year_year_id`) REFERENCES `year` (`year_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.pg_details: ~1 rows (approximately)
/*!40000 ALTER TABLE `pg_details` DISABLE KEYS */;
INSERT INTO `pg_details` (`pg_details_id`, `pg_branch_branch_id`, `pg_college_college_id`, `pg_year_year_id`, `pg_per`) VALUES
	(1, 1, 1, 3, 75);
/*!40000 ALTER TABLE `pg_details` ENABLE KEYS */;

-- Dumping structure for table mydb.recruitment_info
DROP TABLE IF EXISTS `recruitment_info`;
CREATE TABLE IF NOT EXISTS `recruitment_info` (
  `recruitment_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) DEFAULT NULL,
  `established_year` int(11) DEFAULT NULL,
  `no_of_employees` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `package` float DEFAULT NULL,
  `rec_process` varchar(45) DEFAULT NULL,
  `recruitment_info_status_recruitment_info_status_id` int(11) NOT NULL,
  PRIMARY KEY (`recruitment_info_id`,`recruitment_info_status_recruitment_info_status_id`),
  KEY `fk_recruitment_info_recruitment_info_status1_idx` (`recruitment_info_status_recruitment_info_status_id`),
  CONSTRAINT `fk_recruitment_info_recruitment_info_status1` FOREIGN KEY (`recruitment_info_status_recruitment_info_status_id`) REFERENCES `recruitment_info_status` (`recruitment_info_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.recruitment_info: ~0 rows (approximately)
/*!40000 ALTER TABLE `recruitment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `recruitment_info` ENABLE KEYS */;

-- Dumping structure for table mydb.recruitment_info_status
DROP TABLE IF EXISTS `recruitment_info_status`;
CREATE TABLE IF NOT EXISTS `recruitment_info_status` (
  `recruitment_info_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`recruitment_info_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.recruitment_info_status: ~0 rows (approximately)
/*!40000 ALTER TABLE `recruitment_info_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `recruitment_info_status` ENABLE KEYS */;

-- Dumping structure for table mydb.recrutiment_info_batch_realation
DROP TABLE IF EXISTS `recrutiment_info_batch_realation`;
CREATE TABLE IF NOT EXISTS `recrutiment_info_batch_realation` (
  `recrutiment_info_batch_realation_id` int(11) NOT NULL AUTO_INCREMENT,
  `recruitment_info_recruitment_info_id` int(11) NOT NULL,
  `batch_details_batch_details_id` int(11) NOT NULL,
  PRIMARY KEY (`recrutiment_info_batch_realation_id`),
  KEY `fk_recrutiment_info_batch_realation_recruitment_info1_idx` (`recruitment_info_recruitment_info_id`),
  KEY `fk_recrutiment_info_batch_realation_batch_details1_idx` (`batch_details_batch_details_id`),
  CONSTRAINT `fk_recrutiment_info_batch_realation_recruitment_info1` FOREIGN KEY (`recruitment_info_recruitment_info_id`) REFERENCES `recruitment_info` (`recruitment_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recrutiment_info_batch_realation_batch_details1` FOREIGN KEY (`batch_details_batch_details_id`) REFERENCES `batch_details` (`batch_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.recrutiment_info_batch_realation: ~0 rows (approximately)
/*!40000 ALTER TABLE `recrutiment_info_batch_realation` DISABLE KEYS */;
/*!40000 ALTER TABLE `recrutiment_info_batch_realation` ENABLE KEYS */;

-- Dumping structure for table mydb.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.role: ~3 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`role_id`, `role`) VALUES
	(1, 'hr'),
	(2, 'mentor'),
	(3, 'trainee');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table mydb.school_name
DROP TABLE IF EXISTS `school_name`;
CREATE TABLE IF NOT EXISTS `school_name` (
  `school_name_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`school_name_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.school_name: ~1 rows (approximately)
/*!40000 ALTER TABLE `school_name` DISABLE KEYS */;
INSERT INTO `school_name` (`school_name_id`, `school_name`) VALUES
	(1, 'St Johns School');
/*!40000 ALTER TABLE `school_name` ENABLE KEYS */;

-- Dumping structure for table mydb.state
DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(45) DEFAULT NULL,
  `country_country_id` int(11) NOT NULL,
  PRIMARY KEY (`state_id`,`country_country_id`),
  KEY `fk_state_country1_idx` (`country_country_id`),
  CONSTRAINT `fk_state_country1` FOREIGN KEY (`country_country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.state: ~1 rows (approximately)
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`state_id`, `state`, `country_country_id`) VALUES
	(1, 'UP', 1);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;

-- Dumping structure for table mydb.status
DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.status: ~0 rows (approximately)
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;

-- Dumping structure for table mydb.trainee_assisement_report
DROP TABLE IF EXISTS `trainee_assisement_report`;
CREATE TABLE IF NOT EXISTS `trainee_assisement_report` (
  `trainee_assisement_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `traniee_details_trainee_details_id` int(11) NOT NULL,
  `assisment_details_assisment_details_id` int(11) NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `attendence_status_status_id` int(11) NOT NULL,
  PRIMARY KEY (`trainee_assisement_report_id`,`traniee_details_trainee_details_id`,`assisment_details_assisment_details_id`,`attendence_status_status_id`),
  KEY `fk_trainee_assisement_report_traniee_details1_idx` (`traniee_details_trainee_details_id`),
  KEY `fk_trainee_assisement_report_assisment_details1_idx` (`assisment_details_assisment_details_id`),
  KEY `fk_trainee_assisement_report_status1_idx` (`attendence_status_status_id`),
  CONSTRAINT `fk_trainee_assisement_report_traniee_details1` FOREIGN KEY (`traniee_details_trainee_details_id`) REFERENCES `trainee_details` (`trainee_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainee_assisement_report_assisment_details1` FOREIGN KEY (`assisment_details_assisment_details_id`) REFERENCES `assisment_details` (`assisment_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainee_assisement_report_status1` FOREIGN KEY (`attendence_status_status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.trainee_assisement_report: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainee_assisement_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_assisement_report` ENABLE KEYS */;

-- Dumping structure for table mydb.trainee_details
DROP TABLE IF EXISTS `trainee_details`;
CREATE TABLE IF NOT EXISTS `trainee_details` (
  `trainee_details_id` int(11) NOT NULL,
  `person_details_person_id` int(11) NOT NULL,
  `batch_details_batch_details_id` int(11) NOT NULL,
  `logical_rateing_status_status_id` int(11) NOT NULL,
  `technical_rating_status_status_id1` int(11) NOT NULL,
  `trainee_status_status_id` int(11) NOT NULL,
  PRIMARY KEY (`trainee_details_id`,`person_details_person_id`,`batch_details_batch_details_id`,`logical_rateing_status_status_id`,`technical_rating_status_status_id1`,`trainee_status_status_id`),
  KEY `fk_traniee_details_person_details1_idx` (`person_details_person_id`),
  KEY `fk_traniee_details_batch_details1_idx` (`batch_details_batch_details_id`),
  KEY `fk__status1_idx` (`logical_rateing_status_status_id`),
  KEY `fk__status2_idx` (`technical_rating_status_status_id1`),
  KEY `fk_trainee_details_status1_idx` (`trainee_status_status_id`),
  CONSTRAINT `fk_traniee_details_person_details1` FOREIGN KEY (`person_details_person_id`) REFERENCES `person_details` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_traniee_details_batch_details1` FOREIGN KEY (`batch_details_batch_details_id`) REFERENCES `batch_details` (`batch_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk__status1` FOREIGN KEY (`logical_rateing_status_status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk__status2` FOREIGN KEY (`technical_rating_status_status_id1`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainee_details_status1` FOREIGN KEY (`trainee_status_status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.trainee_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainee_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_details` ENABLE KEYS */;

-- Dumping structure for table mydb.trainee_feedback
DROP TABLE IF EXISTS `trainee_feedback`;
CREATE TABLE IF NOT EXISTS `trainee_feedback` (
  `trainee_feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_details_person_id` int(11) NOT NULL,
  `feedback_desc` varchar(1000) NOT NULL,
  PRIMARY KEY (`trainee_feedback_id`),
  KEY `fk_trainee_feedback_person_details1` (`person_details_person_id`),
  CONSTRAINT `fk_trainee_feedback_person_details1` FOREIGN KEY (`person_details_person_id`) REFERENCES `person_details` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.trainee_feedback: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainee_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_feedback` ENABLE KEYS */;

-- Dumping structure for table mydb.trainee_request
DROP TABLE IF EXISTS `trainee_request`;
CREATE TABLE IF NOT EXISTS `trainee_request` (
  `trainee_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `traniee_details_trainee_details_id` int(11) NOT NULL,
  `request` varchar(45) DEFAULT NULL,
  `trainee_request_status_status_id` int(11) NOT NULL,
  PRIMARY KEY (`trainee_request_id`),
  KEY `fk_trainee_request_traniee_details1_idx` (`traniee_details_trainee_details_id`),
  KEY `fk_trainee_request_status1_idx` (`trainee_request_status_status_id`),
  CONSTRAINT `fk_trainee_request_traniee_details1` FOREIGN KEY (`traniee_details_trainee_details_id`) REFERENCES `trainee_details` (`trainee_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainee_request_status1` FOREIGN KEY (`trainee_request_status_status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.trainee_request: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainee_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_request` ENABLE KEYS */;

-- Dumping structure for table mydb.twelth_sub
DROP TABLE IF EXISTS `twelth_sub`;
CREATE TABLE IF NOT EXISTS `twelth_sub` (
  `twelth_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `twelth_sub` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`twelth_sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.twelth_sub: ~1 rows (approximately)
/*!40000 ALTER TABLE `twelth_sub` DISABLE KEYS */;
INSERT INTO `twelth_sub` (`twelth_sub_id`, `twelth_sub`) VALUES
	(1, 'SCIENCE');
/*!40000 ALTER TABLE `twelth_sub` ENABLE KEYS */;

-- Dumping structure for table mydb.type_of_degree
DROP TABLE IF EXISTS `type_of_degree`;
CREATE TABLE IF NOT EXISTS `type_of_degree` (
  `type_of_degree_id` int(11) NOT NULL,
  `type_od_degree_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type_of_degree_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.type_of_degree: ~2 rows (approximately)
/*!40000 ALTER TABLE `type_of_degree` DISABLE KEYS */;
INSERT INTO `type_of_degree` (`type_of_degree_id`, `type_od_degree_name`) VALUES
	(1, 'Btech'),
	(2, 'MCA');
/*!40000 ALTER TABLE `type_of_degree` ENABLE KEYS */;

-- Dumping structure for table mydb.university
DROP TABLE IF EXISTS `university`;
CREATE TABLE IF NOT EXISTS `university` (
  `university_id` int(11) NOT NULL AUTO_INCREMENT,
  `university` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`university_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.university: ~1 rows (approximately)
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` (`university_id`, `university`) VALUES
	(1, 'UPTU');
/*!40000 ALTER TABLE `university` ENABLE KEYS */;

-- Dumping structure for table mydb.weekly_schedule
DROP TABLE IF EXISTS `weekly_schedule`;
CREATE TABLE IF NOT EXISTS `weekly_schedule` (
  `weekly_schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `weekly_schedule_desc` varchar(500) DEFAULT NULL,
  `batch_details_batch_details_id` int(11) NOT NULL,
  `week_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`weekly_schedule_id`,`batch_details_batch_details_id`),
  KEY `fk_weekly_schedule_batch_details1_idx` (`batch_details_batch_details_id`),
  CONSTRAINT `fk_weekly_schedule_batch_details1` FOREIGN KEY (`batch_details_batch_details_id`) REFERENCES `batch_details` (`batch_details_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.weekly_schedule: ~0 rows (approximately)
/*!40000 ALTER TABLE `weekly_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly_schedule` ENABLE KEYS */;

-- Dumping structure for table mydb.year
DROP TABLE IF EXISTS `year`;
CREATE TABLE IF NOT EXISTS `year` (
  `year_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table mydb.year: ~3 rows (approximately)
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
INSERT INTO `year` (`year_id`, `year`) VALUES
	(1, 2010),
	(2, 2012),
	(3, 2017);
/*!40000 ALTER TABLE `year` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
