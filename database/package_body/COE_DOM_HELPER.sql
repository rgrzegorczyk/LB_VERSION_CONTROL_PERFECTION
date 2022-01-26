--liquibase formatted sql
--changeset liquibase:COE_DOM_HELPER runOnChange:true context:version_2 labels:jira_task_2
--comment Added comment to my package
--rollback SELECT 1 FROM DUAL
--------------------------------------------------------
--  DDL for Package Body COE_DOM_HELPER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "LB_VERSION_CONTROL_PERFECTION"."COE_DOM_HELPER" 
AS
FUNCTION raw_to_varchar(input RAW)
RETURN VARCHAR2 DETERMINISTIC
IS
BEGIN
  IF (input = hexToRaw('01')) THEN
    RETURN 'TRUE';
    --added comment here just to make a change
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

/*Comment out the following line if working with a pre 10g database...*/

  CHILD_ROOTNODE  := DBMS_XMLDOM.importNode(PARENT_DOCUMENT, CHILD_ROOTNODE, TRUE);
  PARENT_ROOTNODE := DBMS_XMLDOM.appendChild(PARENT_ROOTNODE, CHILD_ROOTNODE);
  RETURN PARENT;
END;

END;

/


