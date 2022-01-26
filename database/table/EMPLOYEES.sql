--liquibase formatted sql
--changeset liquibase:EMPLOYEES runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMPLOYEES
--rollback SELECT 1 FROM DUAL
-------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"FIRST_NAME" VARCHAR2(20), 
	"LAST_NAME" VARCHAR2(25), 
	"EMAIL" VARCHAR2(25), 
	"PHONE_NUMBER" VARCHAR2(20), 
	"HIRE_DATE" DATE, 
	"JOB_ID" VARCHAR2(10), 
	"SALARY" NUMBER(8,2), 
	"COMMISSION_PCT" NUMBER(2,2), 
	"MANAGER_ID" NUMBER(6,0), 
	"DEPARTMENT_ID" NUMBER(4,0)
   ) ;

   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."EMPLOYEE_ID" IS 'Primary key of employees table.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."FIRST_NAME" IS 'First name of the employee. A not null column.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."LAST_NAME" IS 'Last name of the employee. A not null column.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."EMAIL" IS 'Email id of the employee';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."PHONE_NUMBER" IS 'Phone number of the employee; includes country code and area code';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."HIRE_DATE" IS 'Date when the employee started on this job. A not null column.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."JOB_ID" IS 'Current job of the employee; foreign key to job_id column of the 
jobs table. A not null column.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."SALARY" IS 'Monthly salary of the employee. Must be greater 
than zero (enforced by constraint emp_salary_min)';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."COMMISSION_PCT" IS 'Commission percentage of the employee; Only employees in sales 
department elgible for commission percentage';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."MANAGER_ID" IS 'Manager id of the employee; has same domain as manager_id in 
departments table. Foreign key to employee_id column of employees table.
(useful for reflexive joins and CONNECT BY query)';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"."DEPARTMENT_ID" IS 'Department id where employee works; foreign key to department_id 
column of the departments table';
   COMMENT ON TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES"  IS 'employees table. Contains 107 rows. References with departments, 
jobs, job_history tables. Contains a self reference.';

--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" MODIFY ("LAST_NAME" CONSTRAINT "EMP_LAST_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" MODIFY ("EMAIL" CONSTRAINT "EMP_EMAIL_NN" NOT NULL ENABLE);
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" MODIFY ("HIRE_DATE" CONSTRAINT "EMP_HIRE_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" MODIFY ("JOB_ID" CONSTRAINT "EMP_JOB_NN" NOT NULL ENABLE);
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ADD CONSTRAINT "EMP_SALARY_MIN" CHECK (salary > 0) ENABLE;
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ADD CONSTRAINT "EMP_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX  ENABLE;
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ADD CONSTRAINT "EMP_EMP_ID_PK" PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX  ENABLE;




