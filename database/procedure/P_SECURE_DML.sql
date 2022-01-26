--liquibase formatted sql
--changeset liquibase:P_SECURE_DML runOnChange:true context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for P_SECURE_DML
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Procedure P_SECURE_DML
--------------------------------------------------------
  CREATE OR REPLACE EDITIONABLE PROCEDURE "LB_VERSION_CONTROL_PERFECTION"."P_SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205, 
		'You may only make changes during normal office hours');
  END IF;
END p_secure_dml;

/


