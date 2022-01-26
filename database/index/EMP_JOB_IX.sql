--liquibase formatted sql
--changeset liquibase:EMP_JOB_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMP_JOB_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index EMP_JOB_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."EMP_JOB_IX" ON "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ("JOB_ID") 
  ;

