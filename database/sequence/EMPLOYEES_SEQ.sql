--liquibase formatted sql
--changeset liquibase:EMPLOYEES_SEQ runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for EMPLOYEES_SEQ
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LB_VERSION_CONTROL_PERFECTION"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;


