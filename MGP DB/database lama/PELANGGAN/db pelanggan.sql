use sql_mgp_boffice;
drop table if exists Pelanggan_TM;

create table Pelanggan_TM(
id 					char(32),
id_owner 			char(32),
kode_pelanggan 		Varchar(350),
nama_pelanggan 		Varchar(350),
nomor_handphone 	varchar(12),
email 				varchar(300),
is_active 			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

drop table if exists PointPelanggan_TM;
create table PointPelanggan_TM(
id 					char(32),
id_owner 			char(32),
id_Pelanggan		char(32),
kunjungan	 		int,
point				int,
point_terpakai		int,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
); 

select*from PointPelanggan_TM;
select*from Pelanggan_TM a join PointPelanggan_TM p
on a.id = p.id_Pelanggan



