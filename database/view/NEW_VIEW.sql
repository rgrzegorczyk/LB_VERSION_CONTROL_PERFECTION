--liquibase formatted sql
--changeset rgrzegorczyk:NEW_VIEW runOnChange:true stripComments:false context:version_1 labels:jira_task_1 
--comment New view on employees data
--rollback DROP VIEW NEW_VIEW; 
create or replace editionable view NEW_VIEW as
	select e.employee_id,
	       e.job_id,
	       e.manager_id
	  from employees e;