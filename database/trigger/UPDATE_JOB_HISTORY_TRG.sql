--liquibase formatted sql
--changeset liquibase:UPDATE_JOB_HISTORY_TRG runOnChange:true context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for UPDATE_JOB_HISTORY_TRG
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Trigger UPDATE_JOB_HISTORY_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LB_VERSION_CONTROL_PERFECTION"."UPDATE_JOB_HISTORY_TRG" 
  AFTER UPDATE OF job_id, department_id ON employees
  FOR EACH ROW
BEGIN
  p_add_job_history(:old.employee_id, :old.hire_date, sysdate, 
                  :old.job_id, :old.department_id);
END;
/

