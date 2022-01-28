-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: changelog/master.xml
-- Ran at: 14.01.22 15:25
-- Against: LB_VERSION_CONTROL_PERFECTION@jdbc:oracle:thin:@127.0.0.1:1521/XEPDB1
-- Liquibase version: 4.6.1
-- *********************************************************************

-- Lock Database
UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'DESKTOP-H61VFP7 (172.27.192.1)', LOCKGRANTED = TO_TIMESTAMP('2022-01-14 15:25:20.081', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ID = 1 AND LOCKED = 0;

-- Changeset changelog/releases/changelog_release_start.xml::START_version_2::rgrzegorczyk
-- Deployment start - version_2
Insert into APP_VERSION_LOGS(LOG_CODE, VERSION_NAME, SCRIPT_NAME) values ('VERSION_START','version_2','prowizje_version_2');

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('START_version_2', 'rgrzegorczyk', 'changelog/releases/changelog_release_start.xml', SYSTIMESTAMP, 56, '8:0edd3c4a1008023fbfb6bbc9773d6afa', 'sql', 'Deployment start - version_2', 'EXECUTED', 'version_2', 'version_2', '4.6.1', '2170321445');

-- Changeset database/table/CONFERENCES.sql::add_col_UNIVERSE_ID::rgrzegorczyk
-- Added column UNIVERSE_ID 
ALTER TABLE CONFERENCES ADD (UNIVERSE_ID NUMBER);

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_col_UNIVERSE_ID', 'rgrzegorczyk', 'database/table/CONFERENCES.sql', SYSTIMESTAMP, 57, '8:9e8e49b2292aa9a36a86dbe6268b23f8', 'sql', 'Added column UNIVERSE_ID', 'EXECUTED', 'version_2', 'jira_task_2', '4.6.1', '2170321445');

-- Changeset database/package_body/COE_DOM_HELPER.sql::COE_DOM_HELPER::liquibase
-- Added comment to my package
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "LB_VERSION_CONTROL_PERFECTION"."COE_DOM_HELPER" 
AS
FUNCTION raw_to_varchar(input RAW)
RETURN VARCHAR2 DETERMINISTIC
IS
BEGIN
  IF (input = hexToRaw('01')) THEN
    RETURN 'TRUE';
    
  END IF;
  IF (input = hexToRaw('00')) THEN
    RETURN 'FALSE';
  END IF;
  RETURN NULL;
END;

FUNCTION boolean_to_varchar(input BOOLEAN)
RETURN VARCHAR2 DETERMINISTIC
IS
BEGIN
  IF (input = TRUE) THEN
    RETURN 'TRUE';
  END IF;
  IF (input =FALSE) THEN
    RETURN 'FALSE';
  END IF;
  RETURN NULL;
END;

FUNCTION varchar_to_raw(input VARCHAR2)
RETURN RAW DETERMINISTIC
IS
BEGIN
  IF (upper(input) IN ('TRUE', 'Y', 'YES', '1')) THEN
    RETURN hexToRaw('01');
  END IF;
  IF (upper(input) IN ('FALSE', 'N', 'NO', '0')) THEN
    RETURN hexToRaw('00');
  END IF;
  RETURN NULL;
END;

FUNCTION boolean_to_raw(input BOOLEAN)
RETURN RAW DETERMINISTIC
IS
BEGIN
  IF (input = TRUE) THEN
    RETURN hexToRaw('01');
  END IF;
  IF (input = FALSE) THEN
    RETURN hexToRaw('00');
  END IF;
  RETURN NULL;
END;

FUNCTION varchar_to_boolean(input VARCHAR2)
RETURN BOOLEAN DETERMINISTIC
IS
BEGIN
  IF (upper(input) IN ('TRUE', 'Y', 'YES', '1')) THEN
    RETURN TRUE;
  END IF;
  IF (upper(input) IN ('FALSE', 'N', 'NO', '0')) THEN
    RETURN FALSE;
  END IF;
  RETURN NULL;
END;

FUNCTION raw_to_boolean(input RAW)
RETURN BOOLEAN DETERMINISTIC
IS
BEGIN
  IF (input = hexToRaw('01')) THEN
    RETURN TRUE;
  END IF;
  IF (input = hexToRaw('00')) THEN
    RETURN FALSE;
  END IF;
  RETURN NULL;
END;

FUNCTION getBooleanValue(parent DBMS_XMLDOM.DOMELEMENT, child VARCHAR2)
RETURN RAW DETERMINISTIC
AS
BEGIN
  RETURN varchar_to_raw(getTextNodeValue(parent, child));
END;

FUNCTION getTextNodeValue(parent DBMS_XMLDOM.DOMELEMENT, child VARCHAR2)
RETURN VARCHAR2 DETERMINISTIC
AS
  nodeList      DBMS_XMLDOM.DOMNODELIST;
  childNode     DBMS_XMLDOM.DOMNODE;
  value         VARCHAR2(2048) := NULL;
BEGIN
  nodeList := DBMS_XMLDOM.GETELEMENTSBYTAGNAME(parent, child);
  IF (DBMS_XMLDOM.getlength(nodeList) > 0) THEN
    childNode := DBMS_XMLDOM.ITEM(nodeList, 0);
    childNode := DBMS_XMLDOM.GETFIRSTCHILD(childNode);
    value     := DBMS_XMLDOM.GETNODEVALUE(childNode);
  END IF;
  RETURN value;
END;

FUNCTION appendElement(PARENT XMLType, Child XMLType)
RETURN XMLType DETERMINISTIC
IS
  PARENT_DOCUMENT    DBMS_XMLDOM.DOMDOCUMENT;
  PARENT_ROOTNODE    DBMS_XMLDOM.DOMNODE;

  CHILD_DOCUMENT     DBMS_XMLDOM.DOMDOCUMENT;
  CHILD_ROOTNODE     DBMS_XMLDOM.DOMNODE;
BEGIN
  PARENT_DOCUMENT := DBMS_XMLDOM.newDOMDocument(PARENT);
  PARENT_ROOTNODE := 
    DBMS_XMLDOM.makeNode(DBMS_XMLDOM.getDocumentElement(PARENT_DOCUMENT));

  CHILD_DOCUMENT  := DBMS_XMLDOM.newDOMDocument(CHILD);
  CHILD_ROOTNODE  := 
    DBMS_XMLDOM.makeNode(DBMS_XMLDOM.getDocumentElement(CHILD_DOCUMENT));



  CHILD_ROOTNODE  := DBMS_XMLDOM.importNode(PARENT_DOCUMENT, CHILD_ROOTNODE, TRUE);
  PARENT_ROOTNODE := DBMS_XMLDOM.appendChild(PARENT_ROOTNODE, CHILD_ROOTNODE);
  RETURN PARENT;
END;

END;
/

UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG SET COMMENTS = 'Added comment to my package', CONTEXTS = 'version_2', DATEEXECUTED = SYSTIMESTAMP, DEPLOYMENT_ID = '2170321445', EXECTYPE = 'RERAN', LABELS = 'jira_task_2', MD5SUM = '8:b7a9151a92b05052aad1fd3267d63f2d', ORDEREXECUTED = 58 WHERE ID = 'COE_DOM_HELPER' AND AUTHOR = 'liquibase' AND FILENAME = 'database/package_body/COE_DOM_HELPER.sql';

-- Changeset changelog/releases/changelog_release_end.xml::END_version_2::rgrzegorczyk
-- Deployment end - version_2
Insert into APP_VERSION_LOGS(LOG_CODE, VERSION_NAME, SCRIPT_NAME) values ('VERSION_END', 'version_2','prowizje_version_2');

INSERT INTO LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('END_version_2', 'rgrzegorczyk', 'changelog/releases/changelog_release_end.xml', SYSTIMESTAMP, 59, '8:c54c1fc18975a2ef8d2c77a5c7c7ccc3', 'sql', 'Deployment end - version_2', 'EXECUTED', 'version_2', 'version_2', '4.6.1', '2170321445');

-- Release Database Lock
UPDATE LB_VERSION_CONTROL_PERFECTION.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

