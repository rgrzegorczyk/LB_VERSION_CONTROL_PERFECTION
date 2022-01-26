--liquibase formatted sql
--changeset liquibase:COUNTRIES_FK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for COUNTRIES_FK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  Ref Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES" ADD CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "LB_VERSION_CONTROL_PERFECTION"."REGIONS" ("REGION_ID") ENABLE;

