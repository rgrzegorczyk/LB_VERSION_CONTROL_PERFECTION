--liquibase formatted sql
--changeset liquibase:COE_DOM_HELPER runOnChange:true context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for COE_DOM_HELPER
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Package COE_DOM_HELPER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LB_VERSION_CONTROL_PERFECTION"."COE_DOM_HELPER" 
AS
  FUNCTION boolean_to_varchar(input BOOLEAN) RETURN VARCHAR2 DETERMINISTIC;
  FUNCTION raw_to_varchar(input RAW) RETURN VARCHAR2 DETERMINISTIC;
  FUNCTION varchar_to_boolean(input VARCHAR2) RETURN BOOLEAN DETERMINISTIC;
  FUNCTION raw_to_boolean(input RAW) RETURN BOOLEAN DETERMINISTIC;
  FUNCTION boolean_to_raw(input BOOLEAN) RETURN RAW DETERMINISTIC;
  FUNCTION varchar_to_raw(input VARCHAR2) RETURN RAW DETERMINISTIC;
  FUNCTION getTextNodeValue(parent DBMS_XMLDOM.DOMELEMENT, child VARCHAR2) 
    RETURN VARCHAR2 DETERMINISTIC;
  FUNCTION getBooleanValue(parent DBMS_XMLDOM.DOMELEMENT, child VARCHAR2) 
    RETURN RAW DETERMINISTIC;
  FUNCTION appendElement(Parent XMLType, Child XMLType) 
    RETURN XMLType DETERMINISTIC;
END;

/


