-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: changelog/master.xml
-- Ran at: 14.01.22 13:49
-- Against: LB_VERSION_CONTROL_PERFECTION@jdbc:oracle:thin:@127.0.0.1:1521/XEPDB1
-- Liquibase version: 4.6.1
-- *********************************************************************

-- Lock Database
UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'DESKTOP-H61VFP7 (172.27.192.1)', LOCKGRANTED = TO_TIMESTAMP('2022-01-14 13:49:39.044', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

-- Changeset changelog/releases/changelog_release_start.xml::START_version_1::rgrzegorczyk
Insert into SC_CORE.APP_VERSION_LOGS(LOG_CODE, VERSION_NAME, SCRIPT_NAME) values ('VERSION_START','version_1','prowizje_version_1');

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('START_version_1', 'rgrzegorczyk', 'changelog/releases/changelog_release_start.xml', SYSTIMESTAMP, 52, '8:b98706459e302f9158d1df7864bd0dd0', 'sql', '', 'EXECUTED', 'version_1', 'version_1', '4.6.1', '2164580208');

-- Changeset changelog/releases/changelog_release_end.xml::END_version_1::rgrzegorczyk
Insert into SC_CORE.APP_VERSION_LOGS(LOG_CODE, VERSION_NAME, SCRIPT_NAME) values ('VERSION_END', 'version_1','prowizje_version_1');

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('END_version_1', 'rgrzegorczyk', 'changelog/releases/changelog_release_end.xml', SYSTIMESTAMP, 53, '8:d1bc6abb3dee5f6380595e8d45dc1400', 'sql', '', 'EXECUTED', 'version_1', 'version_1', '4.6.1', '2164580208');

-- Release Database Lock
UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

