--liquibase formatted sql
--changeset liquibase:LOC_COUNTRY_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for LOC_COUNTRY_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index LOC_COUNTRY_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."LOC_COUNTRY_IX" ON "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS" ("COUNTRY_ID") 
  ;

