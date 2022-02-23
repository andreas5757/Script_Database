use sql_mgp_boffice;
 drop table if exists Resep_TM;
create table Resep_TM(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
nama				varchar(250),
list_item			longtext, 
harga_jual			double,
biaya_lain			double,
isActive			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
 drop table if exists FotoResep_TM;
create table FotoResep_TM(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
foto				LONGTEXT,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
select*from Resep_TM;
select*from FotoResep_TM;
truncate table Resep_TM;
truncate table FotoResep_TM;


