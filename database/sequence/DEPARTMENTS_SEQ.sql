--liquibase formatted sql
--changeset liquibase:DEPARTMENTS_SEQ runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for DEPARTMENTS_SEQ
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LB_VERSION_CONTROL_PERFECTION"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;


