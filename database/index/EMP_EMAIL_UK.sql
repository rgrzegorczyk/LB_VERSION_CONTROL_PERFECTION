--liquibase formatted sql
--changeset liquibase:EMP_EMAIL_UK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMP_EMAIL_UK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index EMP_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LB_VERSION_CONTROL_PERFECTION"."EMP_EMAIL_UK" ON "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES" ("EMAIL") 
  ;

