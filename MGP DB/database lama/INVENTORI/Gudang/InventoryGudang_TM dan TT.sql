use sql_mgp_boffice;
 drop table if exists InventoryGudang_TM;
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
 drop table if exists InventoryGudang_TT;
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

drop table if exists StokMasukDocumentGudang_TM;
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

 drop table if exists StokKeluarDocumentGudang_TM;
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


drop table if exists StokOpnamkDocumentGudang_TM;
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

drop table if exists StokMasukGudang_TT;
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

drop table if exists StokKeluarGudang_TT;
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

drop table if exists StokOpnamGudang_TT;
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

select*from InventoryGudang_TM;
select*from InventoryGudang_TT;
select*from StokMasukDocumentGudang_TM;
select*from StokKeluarDocumentGudang_TM;
select*from StokOpnamkDocumentGudang_TM;
select*from StokMasukGudang_TT;
select*from StokKeluarGudang_TT;
select*from StokOpnamGudang_TT;



