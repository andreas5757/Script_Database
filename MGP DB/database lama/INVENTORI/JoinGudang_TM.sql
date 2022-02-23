use sql_mgp_boffice;
drop table if exists JoinGudang_TM;
create table JoinGudang_TM(
id char(32),
id_owner char(32),
id_gudang char(32),
list_outlet text,
isactive bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

select*from JoinGudang_TM;
truncate table JoinGudang_TM;



