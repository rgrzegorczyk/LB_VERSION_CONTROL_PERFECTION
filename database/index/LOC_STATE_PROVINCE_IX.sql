--liquibase formatted sql
--changeset liquibase:LOC_STATE_PROVINCE_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for LOC_STATE_PROVINCE_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index LOC_STATE_PROVINCE_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."LOC_STATE_PROVINCE_IX" ON "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS" ("STATE_PROVINCE") 
  ;

