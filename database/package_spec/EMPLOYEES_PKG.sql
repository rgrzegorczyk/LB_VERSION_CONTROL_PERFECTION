--liquibase formatted sql
--changeset liquibase:EMPLOYEES_PKG runOnChange:true context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMPLOYEES_PKG
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Package EMPLOYEES_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES_PKG" 
as

/** Procedure to give a raise to specified employee by value specified( percentage)
*/
procedure p_give_a_raise(
  pi_employee_id in EMPLOYEES.EMPLOYEE_ID%TYPE,
  pi_raise_pct   in PLS_INTEGER
);


end EMPLOYEES_PKG;


/


