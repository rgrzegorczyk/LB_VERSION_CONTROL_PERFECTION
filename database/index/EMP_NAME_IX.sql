--liquibase formatted sql
--changeset liquibase:EMP_NAME_IX runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMP_NAME_IX
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index EMP_NAME_IX
--------------------------------------------------------

  CREATE INDEX "LB_VERSION_CONTROL_PERFECTION"."EMP_NAME_IX" ON "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ("LAST_NAME", "FIRST_NAME") 
  ;

