--liquibase formatted sql
--changeset liquibase:COE_NAMESPACES runOnChange:true context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for COE_NAMESPACES
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Package COE_NAMESPACES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "LB_VERSION_CONTROL_PERFECTION"."COE_NAMESPACES" 
AS
    RESOURCE_NAMESPACE CONSTANT VARCHAR2(128) :=
      'http://xmlns.oracle.com/xdb/XDBResource.xsd';
    METADATA_NAMESPACE CONSTANT VARCHAR2(128) :=
      'http://xmlns.oracle.com/xdb/userMetaData';
    RESOURCE_PREFIX_R  CONSTANT VARCHAR2(128) :=
      'xmlns:r="'  || RESOURCE_NAMESPACE || '"';
    METADATA_PREFIX_M  CONSTANT VARCHAR2(128) :=
      'xmlns:m="'  || METADATA_NAMESPACE || '"';
END;

/


