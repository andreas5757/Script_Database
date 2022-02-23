use sql_mgp_boffice;
drop table if exists special_param_tm;
create table special_param_tm(
id 					char(32),
id_owner 			char(32),
kode				char(5),
nama				varchar(50),
deskripsi			varchar(250),
isActive			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

drop table if exists special_param_th;
create table special_param_th(
id 					char(32),
id_owner 			char(32),
kode				char(5),
nama				varchar(50),
deskripsi			varchar(250),
isActive			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

select*from special_param_tm;
select*from special_param_th;
truncate table special_param_tm;
truncate table special_param_th;


select*from grade_tt