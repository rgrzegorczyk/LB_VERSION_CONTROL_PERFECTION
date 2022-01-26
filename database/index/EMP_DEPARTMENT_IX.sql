--liquibase formatted sql
--changeset liquibase:EMP_DEPARTMENT_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMP_DEPARTMENT_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index EMP_DEPARTMENT_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."EMP_DEPARTMENT_IX" ON "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ("DEPARTMENT_ID") 
  ;

