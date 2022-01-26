--liquibase formatted sql
--changeset liquibase:COUNTRIES runOnChange:false context:liquibase_project_start labels:liquibase_project_start
--comment initial changeset for COUNTRIES
--rollback SELECT 1 FROM DUAL
-------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  CREATE TABLE "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES" 
   (	"COUNTRY_ID" CHAR(2), 
	"COUNTRY_NAME" VARCHAR2(40), 
	"REGION_ID" NUMBER, 
	"UNIVERSE_ID" NUMBER
   ) ;

   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES"."COUNTRY_ID" IS 'Primary key of countries table.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES"."COUNTRY_NAME" IS 'Country name';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES"."REGION_ID" IS 'Region ID for the country. Foreign key to region_id column in the departments table.';
   COMMENT ON COLUMN "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES"."UNIVERSE_ID" IS 'Id of the universe to which country belongs';
   COMMENT ON TABLE "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES"  IS 'country table. Contains 25 rows. References with locations table.';

--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES" MODIFY ("COUNTRY_ID" CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "LB_VERSION_CONTROL_PERFECTION"."COUNTRIES" ADD CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX  ENABLE;

--changeset rgrzegorczyk:add_col_CITY_ID stripComments:false context:version_4 labels=jira_task_4
--comment Added column CITY_ID
--rollback ALTER TABLE COUNTRIES DROP COLUMN CITY_ID;
ALTER TABLE COUNTRIES ADD (CITY_ID NUMBER);   
