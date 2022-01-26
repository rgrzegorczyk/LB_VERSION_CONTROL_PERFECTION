--liquibase formatted sql
--changeset liquibase:JHIST_EMP_ID_ST_DATE_PK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for JHIST_EMP_ID_ST_DATE_PK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index JHIST_EMP_ID_ST_DATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LB_VERSION_CONTROL_PERFECTION"."JHIST_EMP_ID_ST_DATE_PK" ON "LB_VERSION_CONTROL_PERFECTION"."JOB_HISTORY" ("EMPLOYEE_ID", "START_DATE") 
  ;

