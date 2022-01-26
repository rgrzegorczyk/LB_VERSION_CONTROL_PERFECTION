--liquibase formatted sql
--changeset liquibase:DEPARTMENTS_FK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for DEPARTMENTS_FK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS" ADD CONSTRAINT "DEPT_LOC_FK" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS" ("LOCATION_ID") ENABLE;
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS" ADD CONSTRAINT "DEPT_MGR_FK" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;

