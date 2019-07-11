
UPDATE act_cmmn_databasechangeloglock SET LOCKED = TRUE, LOCKEDBY = '192.168.1.5 (192.168.1.5)', LOCKGRANTED = '2019-03-13 21:24:22.692' WHERE ID = 1 AND LOCKED = FALSE;

CREATE TABLE ACT_CMMN_HI_PLAN_ITEM_INST (ID_ VARCHAR(255) NOT NULL, REV_ INT NOT NULL, NAME_ VARCHAR(255), STATE_ VARCHAR(255), CASE_DEF_ID_ VARCHAR(255), CASE_INST_ID_ VARCHAR(255), STAGE_INST_ID_ VARCHAR(255), IS_STAGE_ BOOLEAN, ELEMENT_ID_ VARCHAR(255), ITEM_DEFINITION_ID_ VARCHAR(255), ITEM_DEFINITION_TYPE_ VARCHAR(255), CREATED_TIME_ TIMESTAMP WITHOUT TIME ZONE, LAST_AVAILABLE_TIME_ TIMESTAMP WITHOUT TIME ZONE, LAST_ENABLED_TIME_ TIMESTAMP WITHOUT TIME ZONE, LAST_DISABLED_TIME_ TIMESTAMP WITHOUT TIME ZONE, LAST_STARTED_TIME_ TIMESTAMP WITHOUT TIME ZONE, LAST_SUSPENDED_TIME_ TIMESTAMP WITHOUT TIME ZONE, COMPLETED_TIME_ TIMESTAMP WITHOUT TIME ZONE, OCCURRED_TIME_ TIMESTAMP WITHOUT TIME ZONE, TERMINATED_TIME_ TIMESTAMP WITHOUT TIME ZONE, EXIT_TIME_ TIMESTAMP WITHOUT TIME ZONE, ENDED_TIME_ TIMESTAMP WITHOUT TIME ZONE, LAST_UPDATED_TIME_ TIMESTAMP WITHOUT TIME ZONE, START_USER_ID_ VARCHAR(255), REFERENCE_ID_ VARCHAR(255), REFERENCE_TYPE_ VARCHAR(255), TENANT_ID_ VARCHAR(255) DEFAULT '', CONSTRAINT PK_ACT_CMMN_HI_PLAN_ITEM_INST PRIMARY KEY (ID_));

ALTER TABLE ACT_CMMN_RU_MIL_INST ADD TENANT_ID_ VARCHAR(255) DEFAULT '';

ALTER TABLE ACT_CMMN_HI_MIL_INST ADD TENANT_ID_ VARCHAR(255) DEFAULT '';

INSERT INTO act_cmmn_databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('4', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', NOW(), 4, '7:894e6e444f72422bf34e4ade89dc8451', 'createTable tableName=ACT_CMMN_HI_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_MIL_INST; addColumn tableName=ACT_CMMN_HI_MIL_INST', '', 'EXECUTED', NULL, NULL, '3.5.3', '2508662789');

UPDATE act_cmmn_databasechangeloglock SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;
