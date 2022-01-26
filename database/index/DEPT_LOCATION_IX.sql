--liquibase formatted sql
--changeset liquibase:DEPT_LOCATION_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for DEPT_LOCATION_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index DEPT_LOCATION_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."DEPT_LOCATION_IX" ON "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS" ("LOCATION_ID") 
  ;

