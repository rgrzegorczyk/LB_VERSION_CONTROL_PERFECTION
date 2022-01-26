--liquibase formatted sql
--changeset liquibase:JHIST_DEPARTMENT_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for JHIST_DEPARTMENT_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index JHIST_DEPARTMENT_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."JHIST_DEPARTMENT_IX" ON "LB_VERSION_CONTROL_PERFECTION"."JOB_HISTORY" ("DEPARTMENT_ID") 
  ;

