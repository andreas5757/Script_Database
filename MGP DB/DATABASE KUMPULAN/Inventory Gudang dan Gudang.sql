use sql_mgp_boffice;
DROP TABLE IF EXISTS InventoryGudang_TM;
DROP TABLE IF EXISTS InventoryGudang_TT;
DROP TABLE IF EXISTS StokMasukDocumentGudang_TM;
DROP TABLE IF EXISTS StokKeluarDocumentGudang_TM;
DROP TABLE IF EXISTS StokOpnamkDocumentGudang_TM;
DROP TABLE IF EXISTS StokMasukGudang_TT;
DROP TABLE IF EXISTS StokKeluarGudang_TT;
DROP TABLE IF EXISTS StokOpnamGudang_TT;
DROP TABLE IF EXISTS special_param_detail_gudang_tm;
DROP TABLE IF EXISTS special_param_detail_gudang_tt;
DROP TABLE IF EXISTS Gudang_TM;
DROP TABLE IF EXISTS JoinGudang_TM;

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
create table InventoryGudang_TM(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_gudang 			char(32),
id_barang			char(32),
id_detail_barang	char(32),
stock			    double,
netto				double,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
create table InventoryGudang_TT (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_gudang 			char(32),
id_barang 			char(32),
id_detail_barang	char(32),
id_reference		char(32),
tanggal				datetime,
jumlah				double,
stock			    double,
isLastStok			bit,
status				varchar(50),
modify_status 		CHAR(1) NULL,
createby	 	 	VARCHAR(50) NULL,
last_modified_by 	VARCHAR(50) NULL,
create_time 		DATETIME ,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
create table StokMasukDocumentGudang_TM (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_gudang 			char(32),
no_dokumen			varchar(50),
tanggal				datetime,
keterangan			varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
create table StokKeluarDocumentGudang_TM (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_gudang 			char(32),
no_dokumen			varchar(50),
tanggal				datetime,
keterangan			varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
create table StokOpnamkDocumentGudang_TM (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_gudang 			char(32),
no_dokumen			varchar(50),
tanggal				datetime,
keterangan			varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

   
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
create table StokMasukGudang_TT (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_gudang 			char(32),
id_dokumen			char(32),
id_barang 			char(32),
id_detail_barang	char(32),
harga				double,
isAverage			bit,
tanggal				datetime,
jumlah				double,
stock			    double,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
create table StokKeluarGudang_TT (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_gudang 			char(32),
id_dokumen			char(32),
id_barang 			char(32),
id_detail_barang	char(32),
tanggal				datetime,
jumlah				double,
stock			    double,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)


);
create table StokOpnamGudang_TT (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_gudang 			char(32),
id_dokumen			char(32),
id_barang 			char(32),
id_detail_barang	char(32),
tanggal				datetime,
jumlah				double,
stock			    double,
message				varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);
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

select*from InventoryGudang_TM;
select*from InventoryGudang_TT;
select*from StokMasukDocumentGudang_TM;
select*from StokKeluarDocumentGudang_TM;
select*from StokOpnamkDocumentGudang_TM;
select*from StokMasukGudang_TT;
select*from StokKeluarGudang_TT;
select*from StokOpnamGudang_TT;
select*from special_param_detail_gudang_tm;
select*from special_param_detail_gudang_tt;
select*from Gudang_TM;
select*from JoinGudang_TM;