use sql_mgp_boffice;
DROP TABLE IF EXISTS Pelanggan_TM;
DROP TABLE IF EXISTS PointPelanggan_TM;
DROP TABLE IF EXISTS pointsetting_tm;
DROP TABLE IF EXISTS SetPointItem_TM;

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
create table pointsetting_tm(
id 					char(32),
id_owner 			char(32),
point_amount 		int,
point_by_nominal	bit,
nominal_minset		decimal,
point_by_sales		bit,
sales_item_minSet	int,
is_active 			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
create table SetPointItem_TM(
id 					char(32),
id_owner 			char(32),
point_usage			int,
setbyitem			bit,
id_detail_barang	char(32),
setbyamount			bit,
amount				double,			
isactive			bit,			
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

SELECT*FROM Pelanggan_TM;
SELECT*FROM PointPelanggan_TM;
SELECT*FROM pointsetting_tm;
SELECT*FROM SetPointItem_TM;


