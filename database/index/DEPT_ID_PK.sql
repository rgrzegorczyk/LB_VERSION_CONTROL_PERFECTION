--liquibase formatted sql
--changeset liquibase:DEPT_ID_PK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for DEPT_ID_PK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index DEPT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LB_VERSION_CONTROL_PERFECTION"."DEPT_ID_PK" ON "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS" ("DEPARTMENT_ID") 
  ;

