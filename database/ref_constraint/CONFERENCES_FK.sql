--liquibase formatted sql
--changeset liquibase:CONFERENCES_FK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for CONFERENCES_FK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  Ref Constraints for Table CONFERENCES
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."CONFERENCES" ADD CONSTRAINT "CONF_COUNTR_FK" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES" ("COUNTRY_ID") ENABLE;

