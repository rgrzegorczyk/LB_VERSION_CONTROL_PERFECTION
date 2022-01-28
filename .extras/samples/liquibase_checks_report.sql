Checks completed validation of the changelog and found the following issues:

Changeset ID:       DROP_conferences_TABLE
Changeset Filepath: database/table/CONFERENCES.sql
Check Name:         Warn when 'DROP TABLE' detected (ChangeDropTableWarn)
Check Severity:     INFO (Return code: 0)
Message:            Liquibase recommends that changesets which result in tables
                    being dropped are reviewed carefully to prevent the
                    unintentional loss of data.  Review this changeset to
                    confirm that the referenced table is being dropped safely.

Changeset ID:       add_col_CITY_ID
Changeset Filepath: database/table/COUNTRIES.sql
Check Name:         Changesets Must Have a Label Assigned (ChangesetLabelCheck)
Check Severity:     INFO (Return code: 0)
Message:            Liquibase recommends that labels be assigned to each
                    changeset to provide better deployment control and to
                    enhance traceability of efforts across changesets.  Review
                    the changeset indicated and consider adding a label to it.

Changeset ID:       add_col_EMPLOYEE_ID
Changeset Filepath: database/table/DEPARTMENTS.sql
Check Name:         Changesets Must Have a Comment Assigned (ChangesetCommentCheck)
Check Severity:     INFO (Return code: 0)
Message:            Liquibase recommends that authors include comments about the
                    purpose and impact of a changeset in <comment> elements to
                    prevent the development of tribal knowledge and ensure that
                    the purpose of a given changeset is easily understood by
                    other people who use this changelog.


Changesets Validated:
  ID: START_set_SqlCL_properties_version_3; Author: rgrzegorczyk; File path: changelog/releases/changelog_release_start.xml
  ID: START_version_3; Author: rgrzegorczyk; File path: changelog/releases/changelog_release_start.xml
  ID: create_APP_VERSION_LOGS; Author: rgrzegorczyk; File path: database/table/APP_VERSION_LOGS.sql
  ID: CONFERENCES; Author: liquibase; File path: database/table/CONFERENCES.sql
  ID: add_col_UNIVERSE_ID; Author: rgrzegorczyk; File path: database/table/CONFERENCES.sql
  ID: DROP_conferences_TABLE; Author: rgrzegorczyk; File path: database/table/CONFERENCES.sql
  ID: COUNTRIES; Author: liquibase; File path: database/table/COUNTRIES.sql
  ID: add_col_CITY_ID; Author: rgrzegorczyk; File path: database/table/COUNTRIES.sql
  ID: DEPARTMENTS; Author: liquibase; File path: database/table/DEPARTMENTS.sql
  ID: add_col_EMPLOYEE_ID; Author: rgrzegorczyk; File path: database/table/DEPARTMENTS.sql
  ID: EMPLOYEES; Author: liquibase; File path: database/table/EMPLOYEES.sql
  ID: JOBS; Author: liquibase; File path: database/table/JOBS.sql
  ID: JOB_HISTORY; Author: liquibase; File path: database/table/JOB_HISTORY.sql
  ID: LOCATIONS; Author: liquibase; File path: database/table/LOCATIONS.sql
  ID: create_NEW_TABLE; Author: rgrzegorczyk; File path: database/table/NEW_TABLE.sql
  ID: REGIONS; Author: liquibase; File path: database/table/REGIONS.sql
  ID: UNIVERSES; Author: liquibase; File path: database/table/UNIVERSES.sql
  ID: CONFERENCES_FK; Author: liquibase; File path: database/ref_constraint/CONFERENCES_FK.sql
  ID: COUNTRIES_FK; Author: liquibase; File path: database/ref_constraint/COUNTRIES_FK.sql
  ID: DEPARTMENTS_FK; Author: liquibase; File path: database/ref_constraint/DEPARTMENTS_FK.sql
  ID: EMPLOYEES_FK; Author: liquibase; File path: database/ref_constraint/EMPLOYEES_FK.sql
  ID: JOB_HISTORY_FK; Author: liquibase; File path: database/ref_constraint/JOB_HISTORY_FK.sql
  ID: LOCATIONS_FK; Author: liquibase; File path: database/ref_constraint/LOCATIONS_FK.sql
  ID: DEPARTMENTS_SEQ; Author: liquibase; File path: database/sequence/DEPARTMENTS_SEQ.sql
  ID: EMPLOYEES_SEQ; Author: liquibase; File path: database/sequence/EMPLOYEES_SEQ.sql
  ID: LOCATIONS_SEQ; Author: liquibase; File path: database/sequence/LOCATIONS_SEQ.sql
  ID: CONFERENCES_ID_PK; Author: liquibase; File path: database/index/CONFERENCES_ID_PK.sql
  ID: COUNTRY_C_ID_PK; Author: liquibase; File path: database/index/COUNTRY_C_ID_PK.sql
  ID: DEPT_ID_PK; Author: liquibase; File path: database/index/DEPT_ID_PK.sql
  ID: DEPT_LOCATION_IX; Author: liquibase; File path: database/index/DEPT_LOCATION_IX.sql
  ID: EMP_DEPARTMENT_IX; Author: liquibase; File path: database/index/EMP_DEPARTMENT_IX.sql
  ID: EMP_EMAIL_UK; Author: liquibase; File path: database/index/EMP_EMAIL_UK.sql
  ID: EMP_EMP_ID_PK; Author: liquibase; File path: database/index/EMP_EMP_ID_PK.sql
  ID: EMP_JOB_IX; Author: liquibase; File path: database/index/EMP_JOB_IX.sql
  ID: EMP_MANAGER_IX; Author: liquibase; File path: database/index/EMP_MANAGER_IX.sql
  ID: EMP_NAME_IX; Author: liquibase; File path: database/index/EMP_NAME_IX.sql
  ID: JHIST_DEPARTMENT_IX; Author: liquibase; File path: database/index/JHIST_DEPARTMENT_IX.sql
  ID: JHIST_EMPLOYEE_IX; Author: liquibase; File path: database/index/JHIST_EMPLOYEE_IX.sql
  ID: JHIST_EMP_ID_ST_DATE_PK; Author: liquibase; File path: database/index/JHIST_EMP_ID_ST_DATE_PK.sql
  ID: JHIST_JOB_IX; Author: liquibase; File path: database/index/JHIST_JOB_IX.sql
  ID: JOB_ID_PK; Author: liquibase; File path: database/index/JOB_ID_PK.sql
  ID: LOC_CITY_IX; Author: liquibase; File path: database/index/LOC_CITY_IX.sql
  ID: LOC_COUNTRY_IX; Author: liquibase; File path: database/index/LOC_COUNTRY_IX.sql
  ID: LOC_ID_PK; Author: liquibase; File path: database/index/LOC_ID_PK.sql
  ID: LOC_STATE_PROVINCE_IX; Author: liquibase; File path: database/index/LOC_STATE_PROVINCE_IX.sql
  ID: REGIONS_ID_PK; Author: liquibase; File path: database/index/REGIONS_ID_PK.sql
  ID: SECURE_EMPLOYEES_TRG; Author: liquibase; File path: database/trigger/SECURE_EMPLOYEES_TRG.sql
  ID: UPDATE_JOB_HISTORY_TRG; Author: liquibase; File path: database/trigger/UPDATE_JOB_HISTORY_TRG.sql
  ID: EMP_DETAILS_VIEW; Author: liquibase; File path: database/view/EMP_DETAILS_VIEW.sql
  ID: NEW_VIEW; Author: rgrzegorczyk; File path: database/view/NEW_VIEW.sql
  ID: COE_DOM_HELPER; Author: liquibase; File path: database/package_spec/COE_DOM_HELPER.sql
  ID: COE_NAMESPACES; Author: liquibase; File path: database/package_spec/COE_NAMESPACES.sql
  ID: EMPLOYEES_PKG; Author: liquibase; File path: database/package_spec/EMPLOYEES_PKG.sql
  ID: COE_DOM_HELPER; Author: liquibase; File path: database/package_body/COE_DOM_HELPER.sql
  ID: EMPLOYEES_PKG; Author: liquibase; File path: database/package_body/EMPLOYEES_PKG.sql
  ID: P_ADD_JOB_HISTORY; Author: liquibase; File path: database/procedure/P_ADD_JOB_HISTORY.sql
  ID: P_SECURE_DML; Author: liquibase; File path: database/procedure/P_SECURE_DML.sql
  ID: END_version_3; Author: rgrzegorczyk; File path: changelog/releases/changelog_release_end.xml
  ID: END_set_SqlCL_properties_version_3; Author: rgrzegorczyk; File path: changelog/releases/changelog_release_end.xml

Checks run against each changeset:
  Warn when 'DROP TABLE' detected
  Changesets Must Have a Label Assigned
  Changesets Must Have a Context Assigned
  Changesets Must Have a Comment Assigned

