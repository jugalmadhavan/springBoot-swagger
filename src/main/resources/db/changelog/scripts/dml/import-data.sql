--liquibase formatted sql

--changeset authorID:2 logicalFilePath:/scripts/dml/import-data runOnChange:true
--validCheckSum: ANY


-- Test data
INSERT INTO `demo`.`department` (`dept_id`,`dept_code`,`dept_name`,`dept_address`) VALUES (1,'SALES','Sales controller','Sales Ltd. ABC-123');
INSERT INTO `demo`.`department` (`dept_id`,`dept_code`,`dept_name`,`dept_address`) VALUES (2,'IT','IT department','IT Ltd. XYZ-567');
INSERT INTO `demo`.`department` (`dept_id`,`dept_code`,`dept_name`,`dept_address`) VALUES (3,'HR','HR department','HR Ltd. QWERTY-890');

INSERT INTO `demo`.`employee` (`emp_id`, `dept_id`, `emp_name`, `emp_designation`, `emp_technical_skills`) VALUES ('1', '1', 'Robert Hook', 'Sales Executive', '');
INSERT INTO `demo`.`employee` (`emp_id`, `dept_id`, `emp_name`, `emp_designation`) VALUES ('2', '1', 'Walter Sink', 'Sales Executive');
INSERT INTO `demo`.`employee` (`emp_id`, `dept_id`, `emp_name`, `emp_designation`, `emp_technical_skills`) VALUES ('3', '2', 'Chris William', 'Project Manager', 'PMP');
INSERT INTO `demo`.`employee` (`emp_id`, `dept_id`, `emp_name`, `emp_designation`) VALUES ('4', '3', 'Rudolph Fix', 'Manager');
INSERT INTO `demo`.`employee` (`emp_id`, `dept_id`, `emp_name`, `emp_designation`, `emp_technical_skills`) VALUES ('5', '2', 'Simon Clar', 'Software Architect', 'PHP,JAVA');
INSERT INTO `demo`.`employee` (`emp_id`, `dept_id`, `emp_name`, `emp_designation`) VALUES ('6', '3', 'Lucia Stefan', 'Asst. Manager');