--liquibase formatted sql
--changeset liquibase:JOB_ID_PK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for JOB_ID_PK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index JOB_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LB_VERSION_CONTROL_PERFECTION"."JOB_ID_PK" ON "LB_VERSION_CONTROL_PERFECTION"."JOBS" ("JOB_ID") 
  ;

