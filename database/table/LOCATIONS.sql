--liquibase formatted sql
--changeset liquibase:LOCATIONS runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for LOCATIONS
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  CREATE TABLE "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS" 
   (	"LOCATION_ID" NUMBER(4,0), 
	"STREET_ADDRESS" VARCHAR2(40), 
	"POSTAL_CODE" VARCHAR2(12), 
	"CITY" VARCHAR2(30), 
	"STATE_PROVINCE" VARCHAR2(25), 
	"COUNTRY_ID" CHAR(2)
   ) ;

   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS"."LOCATION_ID" IS 'Primary key of locations table';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS"."STREET_ADDRESS" IS 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS"."POSTAL_CODE" IS 'Postal code of the location of an office, warehouse, or production site 
of a company. ';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS"."CITY" IS 'A not null column that shows city where an office, warehouse, or 
production site of a company is located. ';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS"."STATE_PROVINCE" IS 'State or Province where an office, warehouse, or production site of a 
company is located.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS"."COUNTRY_ID" IS 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';
   COMMENT ON TABLE "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS"  IS 'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows; references with the
departments and countries tables. ';

--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS" MODIFY ("CITY" CONSTRAINT "LOC_CITY_NN" NOT NULL ENABLE);
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."LOCATIONS" ADD CONSTRAINT "LOC_ID_PK" PRIMARY KEY ("LOCATION_ID")
  USING INDEX  ENABLE;




