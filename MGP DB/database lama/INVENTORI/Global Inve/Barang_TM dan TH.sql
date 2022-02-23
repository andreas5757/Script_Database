use sql_mgp_boffice;
drop table if exists Barang_TM;
create table Barang_TM(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
jenis_item			varchar(50),
nama_item			varchar(200),
satuan				varchar(32),
kuantitas			decimal,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

drop table if exists BarangDetail_TM;
create table BarangDetail_TM(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_barang			char(32),
kode_barang			varchar(50),
barcode				varchar(50),
id_posisi			char(32),
posisi				Varchar(50),
harga				double,
average				double,
harga_modal			double,
isAverage			bit,
isSell				bit,
isActive			bit,
min_stock			int,
max_stock			int,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

drop table if exists  fotoBarang_tm;
CREATE TABLE fotoBarang_tm (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
	id_barang CHAR(32) NOT NULL,
    id_owner CHAR(32) NOT NULL,
	fotobarang LONGTEXT,
    modify_status CHAR(1) NULL,
    last_modified_by VARCHAR(50) NULL,
    last_modified_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

drop table if exists Barang_TH;
create table Barang_TH(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_barang			char(32),
jenis_item			varchar(50),
nama_item			varchar(200),
satuan				varchar(32),
kuantitas			double,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

drop table if exists BarangDetail_TH;
create table BarangDetail_TH(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_detail			char(32),
id_owner 			char(32),
id_barang			char(32),
kode_barang			varchar(50),
barcode				varchar(50),
id_posisi			char(32),
posisi				Varchar(50),
harga				double,
average				double,
harga_modal			double,
isAverage			bit,
isSell				bit,
isActive			bit,
min_stock			int,
max_stock			int,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

select*from Barang_TM;
select*from Barang_TH;
select*from BarangDetail_TM;
select*from BarangDetail_TH AUTO_INCREMENT ;

