--liquibase formatted sql
--changeset liquibase:LOC_CITY_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for LOC_CITY_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index LOC_CITY_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."LOC_CITY_IX" ON "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS" ("CITY") 
  ;

