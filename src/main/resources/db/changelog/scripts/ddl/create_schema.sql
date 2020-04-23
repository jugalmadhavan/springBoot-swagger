--liquibase formatted sql

--changeset authorID:1 logicalFilePath:/scripts/ddl/create_schema runOnChange:true
--validCheckSum: ANY
-- -----------------------------------------------------
-- Schema demo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `demo` DEFAULT CHARACTER SET utf8;

-- -----------------------------------------------------
-- Table `demo`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `demo`.`department` (
  `dept_id` INT NOT NULL,
  `dept_code` VARCHAR(10) NOT NULL,
  `dept_name` VARCHAR(50) NOT NULL,
  `dept_address` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`dept_id`));

-- -----------------------------------------------------
-- Table `demo`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS  `demo`.`employee` (
  `emp_id` INT NOT NULL,
  `dept_id` INT NOT NULL,
  `emp_name` VARCHAR(50) NOT NULL,
  `emp_designation` VARCHAR(30) NOT NULL,
  `emp_technical_skills` VARCHAR(100) NULL,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `fk_employee_department`
    FOREIGN KEY (`dept_id`)
    REFERENCES `demo`.`department` (`dept_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

