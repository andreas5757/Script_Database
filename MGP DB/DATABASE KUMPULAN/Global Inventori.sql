use sql_mgp_boffice;
drop table if exists Barang_TM;
drop table if exists BarangDetail_TM;
drop table if exists fotoBarang_tm;
drop table if exists Barang_TH;
drop table if exists BarangDetail_TH;
drop table if exists kategori_inventory_tm;
drop table if exists jenis_inventory_tm;
DROP TABLE IF EXISTS owner_parameter_TR;
drop table if exists special_param_tm;
drop table if exists special_param_th;
drop table if exists Ukuran_tm;
drop table if exists KonversiSatuan_tm;


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
create table kategori_inventory_tm(
id 					char(32),
id_owner 			char(32),
kode				varchar(30),
nama				varchar(250), 
deskripsi			varchar(500), 
isActive 			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
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
create table Ukuran_tm(
id char(32),
kode char(31),
ukuran  char(30),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC)
);
create table KonversiSatuan_tm(
id char(32),
kode char(31),
ukuran1  char(3),
ukuran2  char(3),
kuantitas1 double,
kuantitas2 double,
deskripsi char(250),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC)
);


select*from Barang_TM;
select*from Barang_TH;
select*from BarangDetail_TM;
select*from BarangDetail_TH;
select*from kategori_inventory_tm;
select*from jenis_inventory_tm;
select*from owner_parameter_TR;
select*from special_param_tm;
select*from special_param_th;
select * from KonversiSatuan_tm ;
select*from Ukuran_tm;