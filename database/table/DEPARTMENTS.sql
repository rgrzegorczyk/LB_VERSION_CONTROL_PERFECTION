--liquibase formatted sql
--changeset liquibase:DEPARTMENTS runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for DEPARTMENTS
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS" 
   (	"DEPARTMENT_ID" NUMBER(4,0), 
	"DEPARTMENT_NAME" VARCHAR2(30), 
	"MANAGER_ID" NUMBER(6,0), 
	"LOCATION_ID" NUMBER(4,0)
   ) ;

   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS"."DEPARTMENT_ID" IS 'Primary key column of departments table.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS"."DEPARTMENT_NAME" IS 'A not null column that shows name of a department. Administration, 
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public 
Relations, Sales, Finance, and Accounting. ';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS"."MANAGER_ID" IS 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS"."LOCATION_ID" IS 'Location id where a department is located. Foreign key to location_id column of locations table.';
   COMMENT ON TABLE "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS"  IS 'Departments table that shows details of departments where employees 
work. Contains 27 rows; references with locations, employees, and job_history tables.';

--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS" MODIFY ("DEPARTMENT_NAME" CONSTRAINT "DEPT_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS" ADD CONSTRAINT "DEPT_ID_PK" PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX  ENABLE;

--changeset rgrzegorczyk:add_col_EMPLOYEE_ID stripComments:false context:version_4 labels:jira_task_4
--comment New column
--rollback ALTER TABLE DEPARTMENTS DROP COLUMN EMPLOYEE_ID;
ALTER TABLE DEPARTMENTS ADD (EMPLOYEE_ID NUMBER);     


