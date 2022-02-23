USE SQL_GB_BOFFICE;
DROP TABLE IF EXISTS event_tm;
DROP TABLE IF EXISTS guest_tm;
DROP TABLE IF EXISTS attendance_tm;
DROP TABLE IF EXISTS quote_tm;
DROP TABLE IF EXISTS quotetemplate_tm;

CREATE TABLE event_tm(
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
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

CREATE TABLE guest_tm(
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

CREATE TABLE attendance_tm(
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

CREATE TABLE quote_tm(
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

CREATE TABLE quotetemplate_tm(
row_id			bigint NOT NULL AUTO_INCREMENT KEY,
quote			varchar(200),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

insert into quotetemplate_tm (quote,modify_status,last_modified_by,last_modified_time) 
select 'Once in awhile, right in the middle of an ordinary life, love gives us a fairy tale. - Unknown','I','Administator',now() union 
select 'In the arithmetic of love, one plus one equals everything, and two minus one equals nothing.— Mignon McLaughlin','I','Administator',now() union 
select 'Nobody has ever measured, even poets, how much a heart can hold. - Zelda Fitzgerald','I','Administator',now() union 
select 'Gravitation is not responsible for people falling in love. - Albert Einstein','I','Administator',now() union 
select 'You are every reason, every hope and every dream I’ve ever had. - Albert Einstein','I','Administator',now() union 
select 'I would rather share one lifetime with you than face all the ages of this world alone. -Nicholas Sparks','I','Administator',now() union 
select 'Doubt thou the stars are fire; Doubt that the sun doth move; Doubt truth to be a liar; But never doubt I love. - William Shakespeare','I','Administator',now() union 
select 'True love stories never have endings - Richard Bach','I','Administator',now() union 
select 'If we look at the world with a love of life, the world will reveal its beauty to us. - Daisaku Ikeda','I','Administator',now() union 
select 'Marriage has no guarantees. If that’s what you’re looking for, go live with a car battery - Erma Bombeck','I','Administator',now() union 
select 'Real love amounts to withholding the truth, even when you’re offered the perfect opportunity to hurt someone’s feelings. - David Sedaris','I','Administator',now() union 
select 'Only married people understand you can be miserable and happy at the same time. - Chris Rock','I','Administator',now() union 
select 'Marriage is like twirling a baton, turning a handspring, or eating with chopsticks: It looks easy until you try it - Helen Rowlan','I','Administator',now() union 
select 'The highest happiness on earth is the happiness of marriage. - William Lyon Phelps','I','Administator',now()  
;



