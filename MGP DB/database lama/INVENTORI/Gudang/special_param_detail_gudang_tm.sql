use sql_mgp_boffice;
DROP TABLE IF EXISTS special_param_detail_gudang_tm;
create table special_param_detail_gudang_tm(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_barang			char(32),
id_detail_barang	char(32),
id_special			varchar(32),
value				varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

DROP TABLE IF EXISTS special_param_detail_gudang_tt;
create table special_param_detail_gudang_tt(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_barang			char(32),
id_detail_barang	char(32),
id_special			varchar(32),
value				varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

select*from special_param_detail_gudang_tt;
select*from special_param_detail_gudang_tm;
truncate table special_param_detail_gudang_tt;
truncate table special_param_detail_gudang_tm;


