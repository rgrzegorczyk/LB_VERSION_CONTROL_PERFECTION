--liquibase formatted sql
--changeset rgrzegorczyk:create_NEW_TABLE stripComments:false context:version_1 labels:jira_task_1 
--comment Create new table to store new data
--rollback DROP TABLE NEW_TABLE PURGE;
create table NEW_TABLE (
	id        number,
	name      varchar2(50),
	last_name varchar2(100)
);