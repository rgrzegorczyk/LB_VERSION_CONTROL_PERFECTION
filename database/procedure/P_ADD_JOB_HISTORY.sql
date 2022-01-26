--liquibase formatted sql
--changeset liquibase:P_ADD_JOB_HISTORY runOnChange:true context:version_3 labels:version_3
--comment Small change for version_3 script for admins to run with SQLcl
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Procedure P_ADD_JOB_HISTORY
--------------------------------------------------------
  CREATE OR REPLACE EDITIONABLE PROCEDURE "LB_VERSION_CONTROL_PERFECTION"."P_ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type 
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date, 
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
    --added small comment to trigger change in object
END p_add_job_history;

/


