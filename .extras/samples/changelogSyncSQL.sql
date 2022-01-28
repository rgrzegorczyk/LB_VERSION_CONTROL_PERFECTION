-- *********************************************************************
-- SQL to add all changesets to database history table
-- *********************************************************************
-- Change Log: changelog/master.xml
-- Ran at: 13.01.22 14:36
-- Against: LB_VERSION_CONTROL_PERFECTION@jdbc:oracle:thin:@127.0.0.1:1521/XEPDB1
-- Liquibase version: 4.6.1
-- *********************************************************************

-- Create Database Lock Table
CREATE TABLE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK (ID INTEGER NOT NULL, LOCKED NUMBER(1) NOT NULL, LOCKGRANTED TIMESTAMP, LOCKEDBY VARCHAR2(255), CONSTRAINT PK_DATABASECHANGELOGLOCK PRIMARY KEY (ID));

-- Initialize Database Lock Table
DELETE FROM LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK;

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK (ID, LOCKED) VALUES (1, 0);

-- Lock Database
UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'DESKTOP-H61VFP7 (172.27.192.1)', LOCKGRANTED = TO_TIMESTAMP('2022-01-13 14:36:54.503', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

-- Create Database Change Log Table
create table LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (
	ID            varchar2(255) not null,
	AUTHOR        varchar2(255) not null,
	FILENAME      varchar2(255) not null,
	DATEEXECUTED  timestamp not null,
	ORDEREXECUTED integer not null,
	EXECTYPE      varchar2(10) not null,
	MD5SUM        varchar2(35),
	DESCRIPTION   varchar2(255),
	COMMENTS      varchar2(255),
	TAG           varchar2(255),
	LIQUIBASE     varchar2(20),
	CONTEXTS      varchar2(255),
	LABELS        varchar2(255),
	DEPLOYMENT_ID varchar2(10)
);

insert into LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (
	ID,
	AUTHOR,
	FILENAME,
	DATEEXECUTED,
	ORDEREXECUTED,
	MD5SUM,
	DESCRIPTION,
	COMMENTS,
	EXECTYPE,
	CONTEXTS,
	LABELS,
	LIQUIBASE,
	DEPLOYMENT_ID
) values (
	'raw',
	'includeAll',
	'database/table/CONFERENCES.sql',
	SYSTIMESTAMP,
	1,
	'8:0ab2f7aead0c5f3d1ef7376d78de9226',
	'sql',
	'',
	'EXECUTED',
	null,
	null,
	'4.6.1',
	'2081015111'
);

/*and more insert statements like this for all other objects - tables, packages etc.*/

-- Release Database Lock
UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

