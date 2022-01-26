--liquibase formatted sql
--changeset liquibase:REGIONS runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for REGIONS
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------

  CREATE TABLE "LB_VERSION_CONTROL_PERFECTION"."REGIONS" 
   (	"REGION_ID" NUMBER, 
	"REGION_NAME" VARCHAR2(255 CHAR)
   ) ;

   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."REGIONS"."REGION_ID" IS 'Primary key of regions table.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."REGIONS"."REGION_NAME" IS 'Names of regions. Locations are in the countries of these regions.';
   COMMENT ON TABLE "LB_VERSION_CONTROL_PERFECTION"."REGIONS"  IS 'Regions table that contains region numbers and names. Contains 4 rows; references with the Countries table.';

--------------------------------------------------------
--  Constraints for Table REGIONS
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."REGIONS" ADD CONSTRAINT "REGIONS_ID_PK" PRIMARY KEY ("REGION_ID")
  USING INDEX  ENABLE;




