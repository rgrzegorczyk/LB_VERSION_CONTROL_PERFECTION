--liquibase formatted sql
--changeset liquibase:LOCATIONS_SEQ runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for LOCATIONS_SEQ
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;


