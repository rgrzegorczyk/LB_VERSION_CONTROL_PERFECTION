--liquibase formatted sql
--changeset liquibase:LOCATIONS_FK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for LOCATIONS_FK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS" ADD CONSTRAINT "LOC_C_ID_FK" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES" ("COUNTRY_ID") ENABLE;

