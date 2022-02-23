use sql_mgp_boffice;
drop table if exists Gudang_TM;
create table Gudang_TM(
id char(32),
id_owner char(32),
nama VARCHAR(150) NULL,
region VARCHAR(150)  NULL,
telepon VARCHAR(25) NULL,
fax VARCHAR(20) NULL,
email VARCHAR(150) NULL,
alamat VARCHAR(8000) NULL,
kelurahan VARCHAR(250) NULL,
kecamatan VARCHAR(250) NULL,
kota_kabupaten VARCHAR(250) NULL,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

select*from Gudang_TM;
truncate table Gudang_TM;



