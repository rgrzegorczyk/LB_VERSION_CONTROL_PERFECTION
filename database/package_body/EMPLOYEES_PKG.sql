--liquibase formatted sql
--changeset liquibase:EMPLOYEES_PKG runOnChange:true context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMPLOYEES_PKG
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Package Body EMPLOYEES_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES_PKG" 
AS
procedure p_give_a_raise(
  pi_employee_id in EMPLOYEES.EMPLOYEE_ID%TYPE,
  pi_raise_pct   in PLS_INTEGER)
as
begin

  UPDATE employees
     SET salary = (salary * pi_raise_pct * 1.3) / 100
   WHERE employee_id =  pi_employee_id;

end p_give_a_raise;


END EMPLOYEES_PKG;

/


