--liquibase formatted sql
--changeset liquibase:JHIST_JOB_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for JHIST_JOB_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index JHIST_JOB_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."JHIST_JOB_IX" ON "LB_VERSION_CONTROL_PERFECTION"."JOB_HISTORY" ("JOB_ID") 
  ;

