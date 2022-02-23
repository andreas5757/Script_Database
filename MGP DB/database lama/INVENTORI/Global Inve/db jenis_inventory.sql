use sql_mgp_boffice;
drop table if exists jenis_inventory_tm;

create table jenis_inventory_tm(
id 					char(32),
id_owner 			char(32),
id_kategori			char(32),
kode 				varchar(30),
nama				varchar(250),
deskripsi 			varchar(500), 
isActive 			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC),
    INDEX `idx_id_kategori` (id_kategori ASC)
);

select*from jenis_inventory_tm;