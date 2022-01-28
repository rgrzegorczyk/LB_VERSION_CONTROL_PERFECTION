-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: changelog/master.xml
-- Ran at: 14.01.22 16:12
-- Against: LB_VERSION_CONTROL_PERFECTION@jdbc:oracle:thin:@127.0.0.1:1521/XEPDB1
-- Liquibase version: 4.6.1
-- *********************************************************************

-- Lock Database
UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'DESKTOP-H61VFP7 (172.27.192.1)', LOCKGRANTED = TO_TIMESTAMP('2022-01-14 16:12:36.86', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

-- Changeset changelog/releases/changelog_release_start.xml::START_set_SqlCL_properties_version_3::rgrzegorczyk
SET DEFINE off
    rem Open log file
    spool install_db.log
/

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('START_set_SqlCL_properties_version_3', 'rgrzegorczyk', 'changelog/releases/changelog_release_start.xml', SYSTIMESTAMP, 61, '8:11a9eef59c9c5450890dd9caa4d8d32e', 'sql', '', 'EXECUTED', 'version_3', 'version_3', '4.6.1', '2173158059');

-- Changeset changelog/releases/changelog_release_start.xml::START_version_3::rgrzegorczyk
-- Deployment start - version_3
Insert into APP_VERSION_LOGS(LOG_CODE, VERSION_NAME, SCRIPT_NAME) values ('VERSION_START','version_3','prowizje_version_3');

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('START_version_3', 'rgrzegorczyk', 'changelog/releases/changelog_release_start.xml', SYSTIMESTAMP, 62, '8:76db3d39b5ffebb1831a80afe3b9927f', 'sql', 'Deployment start - version_3', 'EXECUTED', 'version_3', 'version_3', '4.6.1', '2173158059');

-- Changeset changelog/releases/changelog_release_end.xml::END_version_3::rgrzegorczyk
-- Deployment end - version_3
Insert into APP_VERSION_LOGS(LOG_CODE, VERSION_NAME, SCRIPT_NAME) values ('VERSION_END', 'version_3','prowizje_version_3');

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('END_version_3', 'rgrzegorczyk', 'changelog/releases/changelog_release_end.xml', SYSTIMESTAMP, 63, '8:01214cc0d64b5c73e42b03d4ccccd508', 'sql', 'Deployment end - version_3', 'EXECUTED', 'version_3', 'version_3', '4.6.1', '2173158059');

-- Changeset changelog/releases/changelog_release_end.xml::END_set_SqlCL_properties_version_3::rgrzegorczyk
-- Release Database Lock
    UPDATE SC_CORE.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

commit;

prompt .
    prompt END
    spool off;

prompt ...Deployment log written into install_db.log file;

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('END_set_SqlCL_properties_version_3', 'rgrzegorczyk', 'changelog/releases/changelog_release_end.xml', SYSTIMESTAMP, 64, '8:a3ab0661c1b306e6ee1325719e8c7168', 'sql', '', 'EXECUTED', 'version_3', 'version_3', '4.6.1', '2173158059');

-- Release Database Lock
UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

