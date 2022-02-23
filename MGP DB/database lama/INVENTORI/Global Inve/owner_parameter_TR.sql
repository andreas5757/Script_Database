use sql_mgp_boffice;
DROP TABLE IF EXISTS owner_parameter_TR;
create table owner_parameter_TR(
id 					char(32),
id_owner 			char(32),
list_id_outlet 		text,
paramtype			varchar(50),
value				varchar(500),
isActive			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

select*from Special_Param_Gudang_TM;
select*from owner_parameter_TR;
truncate table owner_parameter_TR;



