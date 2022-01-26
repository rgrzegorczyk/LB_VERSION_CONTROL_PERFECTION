--liquibase formatted sql
--changeset liquibase:SECURE_EMPLOYEES_TRG runOnChange:true context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for SECURE_EMPLOYEES_TRG
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Trigger SECURE_EMPLOYEES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LB_VERSION_CONTROL_PERFECTION"."SECURE_EMPLOYEES_TRG" 
  BEFORE INSERT OR UPDATE OR DELETE ON employees
BEGIN
  p_secure_dml;
END secure_employees_trg;
/

