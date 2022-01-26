--liquibase formatted sql
--changeset liquibase:EMP_EMP_ID_PK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMP_EMP_ID_PK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index EMP_EMP_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LB_VERSION_CONTROL_PERFECTION"."EMP_EMP_ID_PK" ON "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ("EMPLOYEE_ID") 
  ;

