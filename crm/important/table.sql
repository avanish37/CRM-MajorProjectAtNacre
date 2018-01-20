-- MySQL Script generated by MySQL Workbench
-- Wed Jan 17 23:34:34 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering
-- created by NIKHIL

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ; 

-- -----------------------------------------------------
-- Table `mydb`.`login`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`login` ;

CREATE TABLE IF NOT EXISTS `mydb`.`login` (
  `login_id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`login_id`))
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `mydb`.`country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`country` ;

CREATE TABLE IF NOT EXISTS `mydb`.`country` (
  `country_id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`state`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`state` ;

CREATE TABLE IF NOT EXISTS `mydb`.`state` (
  `state_id` INT NOT NULL AUTO_INCREMENT,
  `state` VARCHAR(45) NULL,
  `country_country_id` INT NOT NULL,
  PRIMARY KEY (`state_id`, `country_country_id`),
  INDEX `fk_state_country1_idx` (`country_country_id` ASC),
  CONSTRAINT `fk_state_country1`
    FOREIGN KEY (`country_country_id`)
    REFERENCES `mydb`.`country` (`country_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`city`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`city` ;

CREATE TABLE IF NOT EXISTS `mydb`.`city` (
  `city_id` INT NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(45) NULL,
  `state_state_id` INT NOT NULL,
  PRIMARY KEY (`city_id`, `state_state_id`),
  INDEX `fk_city_state1_idx` (`state_state_id` ASC),
  CONSTRAINT `fk_city_state1`
    FOREIGN KEY (`state_state_id`)
    REFERENCES `mydb`.`state` (`state_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`address` ;

CREATE TABLE IF NOT EXISTS `mydb`.`address` (
  `address_id` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `nearby` VARCHAR(45) NULL,
  `street` VARCHAR(45) NULL,
  `pincode` INT NULL,
  `city_city_id` INT NOT NULL,
  PRIMARY KEY (`address_id`, `city_city_id`),
  INDEX `fk_address_city1_idx` (`city_city_id` ASC),
  CONSTRAINT `fk_address_city1`
    FOREIGN KEY (`city_city_id`)
    REFERENCES `mydb`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`twelth_sub`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`twelth_sub` ;

CREATE TABLE IF NOT EXISTS `mydb`.`twelth_sub` (
  `twelth_sub_id` INT NOT NULL AUTO_INCREMENT,
  `twelth_sub` VARCHAR(45) NULL,
  PRIMARY KEY (`twelth_sub_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`school_name`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`school_name` ;

CREATE TABLE IF NOT EXISTS `mydb`.`school_name` (
  `school_name_id` INT NOT NULL AUTO_INCREMENT,
  `school_name` VARCHAR(200) NULL,
  PRIMARY KEY (`school_name_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`boards`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`boards` ;

CREATE TABLE IF NOT EXISTS `mydb`.`boards` (
  `board_id` INT NOT NULL AUTO_INCREMENT,
  `board_name` VARCHAR(100) NULL,
  PRIMARY KEY (`board_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`year`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`year` ;

CREATE TABLE IF NOT EXISTS `mydb`.`year` (
  `year_id` INT NOT NULL AUTO_INCREMENT,
  `year` INT NULL,
  PRIMARY KEY (`year_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`medium`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`medium` ;

CREATE TABLE IF NOT EXISTS `mydb`.`medium` (
  `medium_id` INT NOT NULL AUTO_INCREMENT,
  `medium` VARCHAR(45) NULL,
  PRIMARY KEY (`medium_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`university`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`university` ;

CREATE TABLE IF NOT EXISTS `mydb`.`university` (
  `university_id` INT NOT NULL AUTO_INCREMENT,
  `university` VARCHAR(100) NULL,
  PRIMARY KEY (`university_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`college`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`college` ;

CREATE TABLE IF NOT EXISTS `mydb`.`college` (
  `college_id` INT NOT NULL AUTO_INCREMENT,
  `college` VARCHAR(200) NULL,
  `university_university_id` INT NOT NULL,
  PRIMARY KEY (`college_id`, `university_university_id`),
  INDEX `fk_college_university1_idx` (`university_university_id` ASC),
  CONSTRAINT `fk_college_university1`
    FOREIGN KEY (`university_university_id`)
    REFERENCES `mydb`.`university` (`university_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`type_of_degree`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`type_of_degree` ;

CREATE TABLE IF NOT EXISTS `mydb`.`type_of_degree` (
  `type_of_degree_id` INT NOT NULL,
  `type_od_degree_name` VARCHAR(45) NULL,
  PRIMARY KEY (`type_of_degree_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`branch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`branch` ;

CREATE TABLE IF NOT EXISTS `mydb`.`branch` (
  `branch_id` INT NOT NULL AUTO_INCREMENT,
  `branch_name` VARCHAR(45) NULL,
  `type_of_degree_type_of_degree_id` INT NOT NULL,
  PRIMARY KEY (`branch_id`, `type_of_degree_type_of_degree_id`),
  INDEX `fk_branch_type_of_degree1_idx` (`type_of_degree_type_of_degree_id` ASC),
  CONSTRAINT `fk_branch_type_of_degree1`
    FOREIGN KEY (`type_of_degree_type_of_degree_id`)
    REFERENCES `mydb`.`type_of_degree` (`type_of_degree_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`acdemic_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`acdemic_details` ;

CREATE TABLE IF NOT EXISTS `mydb`.`acdemic_details` (
  `academic_details_id` INT NOT NULL AUTO_INCREMENT,
  `tenth_school_name_school_name_id` INT NOT NULL,
  `tenth_boards_board_id` INT NOT NULL,
  `tenth_year_year_id` INT NOT NULL,
  `medium_medium_id` INT NOT NULL,
  `tenth_per` FLOAT NULL,
  `twelth_sub_twelth_sub_id` INT NOT NULL,
  `twelth_year_year_id` INT NOT NULL,
  `twelth_college_college_id` INT NOT NULL,
  `twelth_medium_medium_id1` INT NOT NULL,
  `twelth_boards_board_id` INT NOT NULL,
  `twelth_per` FLOAT NULL,
  `graduation_college_college_id` INT NOT NULL,
  `graduation_per` FLOAT NULL,
  `graduation_yop_year_year_id` INT NOT NULL,
  `graduation_branch_branch_id` INT NOT NULL,
  `pg_branch_branch_id` INT NOT NULL,
  `pg_college_college_id` INT NOT NULL,
  `pg_yop_year_year_id` INT NOT NULL,
  `pg_per` FLOAT NULL,
  PRIMARY KEY (`academic_details_id`),
  INDEX `fk_acdemic_details_twelth_sub1_idx` (`twelth_sub_twelth_sub_id` ASC),
  INDEX `fk_acdemic_details_school_name1_idx` (`tenth_school_name_school_name_id` ASC),
  INDEX `fk_acdemic_details_boards1_idx` (`tenth_boards_board_id` ASC),
  INDEX `fk_acdemic_details_year4_idx` (`tenth_year_year_id` ASC),
  INDEX `fk_acdemic_details_medium1_idx` (`medium_medium_id` ASC),
  INDEX `fk_acdemic_details_year1_idx` (`twelth_year_year_id` ASC),
  INDEX `fk_acdemic_details_college1_idx` (`twelth_college_college_id` ASC),
  INDEX `fk_acdemic_details_medium2_idx` (`twelth_medium_medium_id1` ASC),
  INDEX `fk_acdemic_details_boards2_idx` (`twelth_boards_board_id` ASC),
  INDEX `fk_acdemic_details_college2_idx` (`graduation_college_college_id` ASC),
  INDEX `fk_acdemic_details_year2_idx` (`graduation_yop_year_year_id` ASC),
  INDEX `fk_acdemic_details_branch1_idx` (`graduation_branch_branch_id` ASC),
  INDEX `fk_acdemic_details_branch2_idx` (`pg_branch_branch_id` ASC),
  INDEX `fk_acdemic_details_college3_idx` (`pg_college_college_id` ASC),
  INDEX `fk_acdemic_details_year3_idx` (`pg_yop_year_year_id` ASC),
  CONSTRAINT `fk_acdemic_details_twelth_sub1`
    FOREIGN KEY (`twelth_sub_twelth_sub_id`)
    REFERENCES `mydb`.`twelth_sub` (`twelth_sub_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_school_name1`
    FOREIGN KEY (`tenth_school_name_school_name_id`)
    REFERENCES `mydb`.`school_name` (`school_name_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_boards1`
    FOREIGN KEY (`tenth_boards_board_id`)
    REFERENCES `mydb`.`boards` (`board_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_year4`
    FOREIGN KEY (`tenth_year_year_id`)
    REFERENCES `mydb`.`year` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_medium1`
    FOREIGN KEY (`medium_medium_id`)
    REFERENCES `mydb`.`medium` (`medium_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_year1`
    FOREIGN KEY (`twelth_year_year_id`)
    REFERENCES `mydb`.`year` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_college1`
    FOREIGN KEY (`twelth_college_college_id`)
    REFERENCES `mydb`.`college` (`college_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_medium2`
    FOREIGN KEY (`twelth_medium_medium_id1`)
    REFERENCES `mydb`.`medium` (`medium_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_boards2`
    FOREIGN KEY (`twelth_boards_board_id`)
    REFERENCES `mydb`.`boards` (`board_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_college2`
    FOREIGN KEY (`graduation_college_college_id`)
    REFERENCES `mydb`.`college` (`college_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_year2`
    FOREIGN KEY (`graduation_yop_year_year_id`)
    REFERENCES `mydb`.`year` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_branch1`
    FOREIGN KEY (`graduation_branch_branch_id`)
    REFERENCES `mydb`.`branch` (`branch_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_branch2`
    FOREIGN KEY (`pg_branch_branch_id`)
    REFERENCES `mydb`.`branch` (`branch_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_college3`
    FOREIGN KEY (`pg_college_college_id`)
    REFERENCES `mydb`.`college` (`college_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acdemic_details_year3`
    FOREIGN KEY (`pg_yop_year_year_id`)
    REFERENCES `mydb`.`year` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`role` ;

CREATE TABLE IF NOT EXISTS `mydb`.`role` (
  `role_id` INT NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`person_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`person_details` ;

CREATE TABLE IF NOT EXISTS `mydb`.`person_details` (
  `person_id` INT NOT NULL AUTO_INCREMENT,
  `person_name` VARCHAR(45) NULL,
  `date_of_birth` DATE NULL,
  `gender` VARCHAR(6) NULL,
  `email` VARCHAR(45) NULL,
  `mobile_no` DOUBLE NULL,
  `person_detailscol` VARCHAR(45) NULL,
  `login_login_id` INT NOT NULL,
  `paddress_address_id` INT ZEROFILL NOT NULL,
  `caddress_address_id` INT ZEROFILL NOT NULL,
  `acdemic_details_academic_details_id` INT NOT NULL,
  `extra_activities` VARCHAR(45) NULL,
  `role_role_id` INT NOT NULL,
  `technical_skills` VARCHAR(500) NULL,
  PRIMARY KEY (`person_id`, `login_login_id`, `paddress_address_id`, `caddress_address_id`, `acdemic_details_academic_details_id`, `role_role_id`),
  INDEX `fk_person_details_login_idx` (`login_login_id` ASC),
  INDEX `fk_person_details_address1_idx` (`paddress_address_id` ASC),
  INDEX `fk_person_details_address2_idx` (`caddress_address_id` ASC),
  INDEX `fk_person_details_acdemic_details1_idx` (`acdemic_details_academic_details_id` ASC),
  INDEX `fk_person_details_role1_idx` (`role_role_id` ASC),
  CONSTRAINT `fk_person_details_login`
    FOREIGN KEY (`login_login_id`)
    REFERENCES `mydb`.`login` (`login_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_details_address1`
    FOREIGN KEY (`paddress_address_id`)
    REFERENCES `mydb`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_details_address2`
    FOREIGN KEY (`caddress_address_id`)
    REFERENCES `mydb`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_details_acdemic_details1`
    FOREIGN KEY (`acdemic_details_academic_details_id`)
    REFERENCES `mydb`.`acdemic_details` (`academic_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_details_role1`
    FOREIGN KEY (`role_role_id`)
    REFERENCES `mydb`.`role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`batch_technology`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`batch_technology` ;

CREATE TABLE IF NOT EXISTS `mydb`.`batch_technology` (
  `batch_technology_id` INT NOT NULL AUTO_INCREMENT,
  `batch_technology_name` VARCHAR(45) NULL,
  PRIMARY KEY (`batch_technology_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`batch_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`batch_details` ;

CREATE TABLE IF NOT EXISTS `mydb`.`batch_details` (
  `batch_details_id` INT NOT NULL AUTO_INCREMENT,
  `batch_name` VARCHAR(45) NULL,
  `batch_duration` VARCHAR(45) NULL,
  `batch_start_date` DATE NULL,
  `batch_excepted_end_date` DATE NULL,
  `strength` INT NULL,
  `bath_technology_batch_technology_id` INT NOT NULL,
  PRIMARY KEY (`batch_details_id`, `bath_technology_batch_technology_id`),
  INDEX `fk_batch_details_bath_technology1_idx` (`bath_technology_batch_technology_id` ASC),
  CONSTRAINT `fk_batch_details_bath_technology1`
    FOREIGN KEY (`bath_technology_batch_technology_id`)
    REFERENCES `mydb`.`batch_technology` (`batch_technology_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`status` ;

CREATE TABLE IF NOT EXISTS `mydb`.`status` (
  `status_id` INT NOT NULL,
  `status_name` VARCHAR(45) NULL,
  PRIMARY KEY (`status_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`trainee_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`trainee_details` ;

CREATE TABLE IF NOT EXISTS `mydb`.`trainee_details` (
  `trainee_details_id` INT NOT NULL,
  `person_details_person_id` INT NOT NULL,
  `batch_details_batch_details_id` INT NOT NULL,
  `logical_rateing_status_status_id` INT NOT NULL,
  `technical_rating_status_status_id1` INT NOT NULL,
  `trainee_status_status_id` INT NOT NULL,
  PRIMARY KEY (`trainee_details_id`, `person_details_person_id`, `batch_details_batch_details_id`, `logical_rateing_status_status_id`, `technical_rating_status_status_id1`, `trainee_status_status_id`),
  INDEX `fk_traniee_details_person_details1_idx` (`person_details_person_id` ASC),
  INDEX `fk_traniee_details_batch_details1_idx` (`batch_details_batch_details_id` ASC),
  INDEX `fk__status1_idx` (`logical_rateing_status_status_id` ASC),
  INDEX `fk__status2_idx` (`technical_rating_status_status_id1` ASC),
  INDEX `fk_trainee_details_status1_idx` (`trainee_status_status_id` ASC),
  CONSTRAINT `fk_traniee_details_person_details1`
    FOREIGN KEY (`person_details_person_id`)
    REFERENCES `mydb`.`person_details` (`person_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_traniee_details_batch_details1`
    FOREIGN KEY (`batch_details_batch_details_id`)
    REFERENCES `mydb`.`batch_details` (`batch_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk__status1`
    FOREIGN KEY (`logical_rateing_status_status_id`)
    REFERENCES `mydb`.`status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk__status2`
    FOREIGN KEY (`technical_rating_status_status_id1`)
    REFERENCES `mydb`.`status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainee_details_status1`
    FOREIGN KEY (`trainee_status_status_id`)
    REFERENCES `mydb`.`status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`mentor_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`mentor_details` ;

CREATE TABLE IF NOT EXISTS `mydb`.`mentor_details` (
  `mentor_details_id` INT NOT NULL,
  `person_details_person_id` INT NOT NULL,
  `date_of_joining` VARCHAR(45) NULL,
  `status_status_id` INT NOT NULL,
  PRIMARY KEY (`mentor_details_id`, `person_details_person_id`, `status_status_id`),
  INDEX `fk_mentor_details_person_details1_idx` (`person_details_person_id` ASC),
  INDEX `fk_mentor_details_status1_idx` (`status_status_id` ASC),
  CONSTRAINT `fk_mentor_details_person_details1`
    FOREIGN KEY (`person_details_person_id`)
    REFERENCES `mydb`.`person_details` (`person_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mentor_details_status1`
    FOREIGN KEY (`status_status_id`)
    REFERENCES `mydb`.`status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`mentor_batch_allocation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`mentor_batch_allocation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`mentor_batch_allocation` (
  `mentor_batch_allocation_id` INT NOT NULL AUTO_INCREMENT,
  `mentor_details_mentor_details_id` INT NOT NULL,
  `batch_details_batch_details_id` INT NOT NULL,
  PRIMARY KEY (`mentor_batch_allocation_id`, `mentor_details_mentor_details_id`, `batch_details_batch_details_id`),
  INDEX `fk_mentor_batch_allocation_mentor_details1_idx` (`mentor_details_mentor_details_id` ASC),
  INDEX `fk_mentor_batch_allocation_batch_details1_idx` (`batch_details_batch_details_id` ASC),
  CONSTRAINT `fk_mentor_batch_allocation_mentor_details1`
    FOREIGN KEY (`mentor_details_mentor_details_id`)
    REFERENCES `mydb`.`mentor_details` (`mentor_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mentor_batch_allocation_batch_details1`
    FOREIGN KEY (`batch_details_batch_details_id`)
    REFERENCES `mydb`.`batch_details` (`batch_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`weekly_schedule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`weekly_schedule` ;

CREATE TABLE IF NOT EXISTS `mydb`.`weekly_schedule` (
  `weekly_schedule_id` INT NOT NULL AUTO_INCREMENT,
  `weekly_schedule_desc` VARCHAR(500) NULL,
  `batch_details_batch_details_id` INT NOT NULL,
  PRIMARY KEY (`weekly_schedule_id`, `batch_details_batch_details_id`),
  INDEX `fk_weekly_schedule_batch_details1_idx` (`batch_details_batch_details_id` ASC),
  CONSTRAINT `fk_weekly_schedule_batch_details1`
    FOREIGN KEY (`batch_details_batch_details_id`)
    REFERENCES `mydb`.`batch_details` (`batch_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`daily_schedule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`daily_schedule` ;

CREATE TABLE IF NOT EXISTS `mydb`.`daily_schedule` (
  `daily_schedule_id` INT NOT NULL AUTO_INCREMENT,
  `daily_schedule_desc` VARCHAR(500) NULL,
  `weekly_schedule_weekly_schedule_id` INT NOT NULL,
  PRIMARY KEY (`daily_schedule_id`, `weekly_schedule_weekly_schedule_id`),
  INDEX `fk_daily_schedule_weekly_schedule1_idx` (`weekly_schedule_weekly_schedule_id` ASC),
  CONSTRAINT `fk_daily_schedule_weekly_schedule1`
    FOREIGN KEY (`weekly_schedule_weekly_schedule_id`)
    REFERENCES `mydb`.`weekly_schedule` (`weekly_schedule_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`assisment_list`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`assisment_list` ;

CREATE TABLE IF NOT EXISTS `mydb`.`assisment_list` (
  `assisment_list_id` INT NOT NULL AUTO_INCREMENT,
  `assisment_name` VARCHAR(45) NULL,
  `full_marks` INT NULL,
  `duration` FLOAT NULL,
  PRIMARY KEY (`assisment_list_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`assisment_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`assisment_details` ;

CREATE TABLE IF NOT EXISTS `mydb`.`assisment_details` (
  `assisment_details_id` INT NOT NULL AUTO_INCREMENT,
  `assisment_list_assisment_list_id` INT NOT NULL,
  `date_of_assisement` DATE NULL,
  `batch_details_batch_details_id` INT NOT NULL,
  PRIMARY KEY (`assisment_details_id`, `assisment_list_assisment_list_id`, `batch_details_batch_details_id`),
  INDEX `fk_assisment_details_batch_details1_idx` (`batch_details_batch_details_id` ASC),
  INDEX `fk_assisment_details_assisment_list1_idx` (`assisment_list_assisment_list_id` ASC),
  CONSTRAINT `fk_assisment_details_batch_details1`
    FOREIGN KEY (`batch_details_batch_details_id`)
    REFERENCES `mydb`.`batch_details` (`batch_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_assisment_details_assisment_list1`
    FOREIGN KEY (`assisment_list_assisment_list_id`)
    REFERENCES `mydb`.`assisment_list` (`assisment_list_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`trainee_assisement_report`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`trainee_assisement_report` ;

CREATE TABLE IF NOT EXISTS `mydb`.`trainee_assisement_report` (
  `trainee_assisement_report_id` INT NOT NULL AUTO_INCREMENT,
  `traniee_details_trainee_details_id` INT NOT NULL,
  `assisment_details_assisment_details_id` INT NOT NULL,
  `marks` INT NULL,
  `attendence_status_status_id` INT NOT NULL,
  PRIMARY KEY (`trainee_assisement_report_id`, `traniee_details_trainee_details_id`, `assisment_details_assisment_details_id`, `attendence_status_status_id`),
  INDEX `fk_trainee_assisement_report_traniee_details1_idx` (`traniee_details_trainee_details_id` ASC),
  INDEX `fk_trainee_assisement_report_assisment_details1_idx` (`assisment_details_assisment_details_id` ASC),
  INDEX `fk_trainee_assisement_report_status1_idx` (`attendence_status_status_id` ASC),
  CONSTRAINT `fk_trainee_assisement_report_traniee_details1`
    FOREIGN KEY (`traniee_details_trainee_details_id`)
    REFERENCES `mydb`.`trainee_details` (`trainee_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainee_assisement_report_assisment_details1`
    FOREIGN KEY (`assisment_details_assisment_details_id`)
    REFERENCES `mydb`.`assisment_details` (`assisment_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainee_assisement_report_status1`
    FOREIGN KEY (`attendence_status_status_id`)
    REFERENCES `mydb`.`status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`mentor_trainee_report`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`mentor_trainee_report` ;

CREATE TABLE IF NOT EXISTS `mydb`.`mentor_trainee_report` (
  `mentor_trainee_report_id` INT NOT NULL,
  `traniee_details_trainee_details_id` INT NOT NULL,
  `report_by_mentor` VARCHAR(45) NULL,
  `report_by_hr` VARCHAR(45) NULL,
  `report_status_status_id` INT NOT NULL,
  PRIMARY KEY (`mentor_trainee_report_id`, `traniee_details_trainee_details_id`, `report_status_status_id`),
  INDEX `fk_mentor_trainee_report_traniee_details1_idx` (`traniee_details_trainee_details_id` ASC),
  INDEX `fk_mentor_trainee_report_status1_idx` (`report_status_status_id` ASC),
  CONSTRAINT `fk_mentor_trainee_report_traniee_details1`
    FOREIGN KEY (`traniee_details_trainee_details_id`)
    REFERENCES `mydb`.`trainee_details` (`trainee_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mentor_trainee_report_status1`
    FOREIGN KEY (`report_status_status_id`)
    REFERENCES `mydb`.`status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`trainee_request`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`trainee_request` ;

CREATE TABLE IF NOT EXISTS `mydb`.`trainee_request` (
  `trainee_request_id` INT NOT NULL AUTO_INCREMENT,
  `traniee_details_trainee_details_id` INT NOT NULL,
  `request` VARCHAR(45) NULL,
  `trainee_request_status_status_id` INT NOT NULL,
  PRIMARY KEY (`trainee_request_id`),
  INDEX `fk_trainee_request_traniee_details1_idx` (`traniee_details_trainee_details_id` ASC),
  INDEX `fk_trainee_request_status1_idx` (`trainee_request_status_status_id` ASC),
  CONSTRAINT `fk_trainee_request_traniee_details1`
    FOREIGN KEY (`traniee_details_trainee_details_id`)
    REFERENCES `mydb`.`trainee_details` (`trainee_details_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainee_request_status1`
    FOREIGN KEY (`trainee_request_status_status_id`)
    REFERENCES `mydb`.`status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`trainee_feedback`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`trainee_feedback` ;

CREATE TABLE IF NOT EXISTS `mydb`.`trainee_feedback` (
  `trainee_feedback_id` INT NOT NULL AUTO_INCREMENT,
  `person_details_person_id` INT NOT NULL,
  `feedback_desc` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`trainee_feedback_id`),
  CONSTRAINT `fk_trainee_feedback_person_details1`
    FOREIGN KEY (`person_details_person_id`)
    REFERENCES `mydb`.`person_details` (`person_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`leave`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`leave` ;

CREATE TABLE IF NOT EXISTS `mydb`.`leave` (
  `leave_id` INT NOT NULL AUTO_INCREMENT,
  `subject` VARCHAR(500) NULL,
  `desc` VARCHAR(500) NULL,
  `from_date` DATE NULL,
  `to_date` DATE NULL,
  `person_details_person_id` INT NOT NULL,
  PRIMARY KEY (`leave_id`),
  INDEX `fk_leave_person_details1_idx` (`person_details_person_id` ASC),
  CONSTRAINT `fk_leave_person_details1`
    FOREIGN KEY (`person_details_person_id`)
    REFERENCES `mydb`.`person_details` (`person_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`recruitment_info_status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`recruitment_info_status` ;

CREATE TABLE IF NOT EXISTS `mydb`.`recruitment_info_status` (
  `recruitment_info_status_id` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`recruitment_info_status_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`recruitment_info`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`recruitment_info` ;

CREATE TABLE IF NOT EXISTS `mydb`.`recruitment_info` (
  `recruitment_info_id` INT NOT NULL AUTO_INCREMENT,
  `company_name` VARCHAR(45) NULL,
  `established_year` INT NULL,
  `no_of_employees` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `role` VARCHAR(45) NULL,
  `package` FLOAT NULL,
  `rec_process` VARCHAR(45) NULL,
  `recruitment_info_status_recruitment_info_status_id` INT NOT NULL,
  PRIMARY KEY (`recruitment_info_id`, `recruitment_info_status_recruitment_info_status_id`),
  INDEX `fk_recruitment_info_recruitment_info_status1_idx` (`recruitment_info_status_recruitment_info_status_id` ASC),
  CONSTRAINT `fk_recruitment_info_recruitment_info_status1`
    FOREIGN KEY (`recruitment_info_status_recruitment_info_status_id`)
    REFERENCES `mydb`.`recruitment_info_status` (`recruitment_info_status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.41-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- created by Nikhil
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table mydb.acdemic_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `acdemic_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `acdemic_details` ENABLE KEYS */;

-- Dumping data for table mydb.address: ~0 rows (approximately)
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;

-- Dumping data for table mydb.assisment_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `assisment_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `assisment_details` ENABLE KEYS */;

-- Dumping data for table mydb.assisment_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `assisment_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `assisment_list` ENABLE KEYS */;

-- Dumping data for table mydb.batch_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `batch_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_details` ENABLE KEYS */;

-- Dumping data for table mydb.batch_technology: ~0 rows (approximately)
/*!40000 ALTER TABLE `batch_technology` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_technology` ENABLE KEYS */;

-- Dumping data for table mydb.branch: ~0 rows (approximately)
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;

-- Dumping data for table mydb.city: ~0 rows (approximately)
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;

-- Dumping data for table mydb.country: ~0 rows (approximately)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Dumping data for table mydb.daily_schedule: ~0 rows (approximately)
/*!40000 ALTER TABLE `daily_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_schedule` ENABLE KEYS */;

-- Dumping data for table mydb.graduation_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `graduation_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `graduation_type` ENABLE KEYS */;

-- Dumping data for table mydb.leave: ~0 rows (approximately)
/*!40000 ALTER TABLE `leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave` ENABLE KEYS */;

-- Dumping data for table mydb.login: ~0 rows (approximately)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Dumping data for table mydb.mentor_batch_allocation: ~0 rows (approximately)
/*!40000 ALTER TABLE `mentor_batch_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentor_batch_allocation` ENABLE KEYS */;

-- Dumping data for table mydb.mentor_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `mentor_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentor_details` ENABLE KEYS */;

-- Dumping data for table mydb.mentor_trainee_report: ~0 rows (approximately)
/*!40000 ALTER TABLE `mentor_trainee_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentor_trainee_report` ENABLE KEYS */;

-- Dumping data for table mydb.person_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `person_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_details` ENABLE KEYS */;

-- Dumping data for table mydb.recruitment_info: ~0 rows (approximately)
/*!40000 ALTER TABLE `recruitment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `recruitment_info` ENABLE KEYS */;

-- Dumping data for table mydb.recruitment_info_status: ~0 rows (approximately)
/*!40000 ALTER TABLE `recruitment_info_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `recruitment_info_status` ENABLE KEYS */;

-- Dumping data for table mydb.role: ~0 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping data for table mydb.state: ~0 rows (approximately)
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;

-- Dumping data for table mydb.status: ~20 rows (approximately)
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`status_id`, `status_name`) VALUES
	(1, 'GOOD'),
	(2, 'AVERAGE'),
	(3, 'POOR'),
	(4, 'MENTOR_AVAILABLE'),
	(5, 'MENTOR_UNAVAILABLE'),
	(6, 'ABSENT'),
	(7, 'PRESENT'),
	(8, 'TRAINEE_AVAILABLE'),
	(9, 'TRAINEE_UNAVAILABLE'),
	(10, 'REQUEST_VIEWED'),
	(11, 'REQUEST_PENDING'),
	(12, 'REQUEST_UNACCEPTED'),
	(13, 'REQUEST_ACCEPTED'),
	(14, 'REPORTED'),
	(15, 'REPORT_VIEWED_BY_HR'),
	(16, 'REPORT_WAITING_FOR_MENTOR_RESPONSE'),
	(17, 'TRAINEE_SHIFTED'),
	(18, 'TRAINEE_FIRED'),
	(19, 'TRAINEE_TAKING_LEAVE'),
	(20, 'REQUESTED');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;

-- Dumping data for table mydb.trainee_assisement_report: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainee_assisement_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_assisement_report` ENABLE KEYS */;

-- Dumping data for table mydb.trainee_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainee_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_details` ENABLE KEYS */;

-- Dumping data for table mydb.trainee_feedback: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainee_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_feedback` ENABLE KEYS */;

-- Dumping data for table mydb.trainee_request: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainee_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_request` ENABLE KEYS */;

-- Dumping data for table mydb.twelth_sub: ~0 rows (approximately)
/*!40000 ALTER TABLE `twelth_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `twelth_sub` ENABLE KEYS */;

-- Dumping data for table mydb.type_of_degree: ~0 rows (approximately)
/*!40000 ALTER TABLE `type_of_degree` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_of_degree` ENABLE KEYS */;

-- Dumping data for table mydb.weekly_schedule: ~0 rows (approximately)
/*!40000 ALTER TABLE `weekly_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly_schedule` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


