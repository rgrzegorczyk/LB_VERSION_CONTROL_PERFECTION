--liquibase formatted sql
--changeset liquibase:COUNTRY_C_ID_PK runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for COUNTRY_C_ID_PK
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Index COUNTRY_C_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LB_VERSION_CONTROL_PERFECTION"."COUNTRY_C_ID_PK" ON "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES" ("COUNTRY_ID") 
  ;

