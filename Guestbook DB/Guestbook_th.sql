USE SQL_GB_BOFFICE;
DROP TABLE IF EXISTS event_th;
DROP TABLE IF EXISTS guest_th;
DROP TABLE IF EXISTS attendance_th;
DROP TABLE IF EXISTS quote_th;
DROP TABLE IF EXISTS quotetemplate_th;

CREATE TABLE event_th(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
man					varchar(50),
woman				varchar(50),
location			varchar(500),
status				CHAR(1),
image				text,
coordinatex			float,
coordinatey			float,
eventdate 			datetime,
eventstart 			datetime,
eventend			datetime,
doorprize			text,
isDone				varchar(50),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

CREATE TABLE guest_th(
row_id			bigint NOT NULL AUTO_INCREMENT KEY,
id 				char(32),
id_owner 		char(32),
id_event		char(32),
name 			varchar(50),
organitation 	varchar(50),
phone 		    varchar(50),
email 		    varchar(50),
address 		varchar(50),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

CREATE TABLE attendance_th(
row_id			bigint NOT NULL AUTO_INCREMENT KEY,
id 				char(32),
id_owner 		char(32),
id_event		char(32),
id_guest		char(32),
checkin			datetime,
checkout		datetime,
device			varchar(32),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

CREATE TABLE quote_th(
row_id			bigint NOT NULL AUTO_INCREMENT KEY,
id 				char(32),
id_owner 		char(32),
id_event		char(32),
quote			varchar(200),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);
