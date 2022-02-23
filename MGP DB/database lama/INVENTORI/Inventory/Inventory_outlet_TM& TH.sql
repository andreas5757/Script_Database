use sql_mgp_boffice;
 drop table if exists InventoryOutlet_TM;
create table InventoryOutlet_TM(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet 			char(32),
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
 drop table if exists InventoryOutlet_TT;
create table InventoryOutlet_TT (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet 			char(32),
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

drop table if exists StokMasukDocumentOutlet_TM;
create table StokMasukDocumentOutlet_TM (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet 			char(32),
no_dokumen			varchar(50),
tanggal				datetime,
keterangan			varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

 drop table if exists StokKeluarDocumentOutlet_TM;
create table StokKeluarDocumentOutlet_TM (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet 			char(32),
no_dokumen			varchar(50),
tanggal				datetime,
keterangan			varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);


drop table if exists StokOpnamkDocumentOutlet_TM;
create table StokOpnamkDocumentOutlet_TM (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet 			char(32),
no_dokumen			varchar(50),
tanggal				datetime,
keterangan			varchar(500),
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

   
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

drop table if exists StokMasukOutlet_TT;
create table StokMasukOutlet_TT (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet 			char(32),
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

drop table if exists StokKeluarOutlet_TT;
create table StokKeluarOutlet_TT (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet 			char(32),
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

drop table if exists StokOpnamOutlet_TT;
create table StokOpnamOutlet_TT (
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet 			char(32),
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

select*from InventoryOutlet_TM;
select*from InventoryOutlet_TT;
select*from StokMasukDocumentOutlet_TM;
select*from StokKeluarDocumentOutlet_TM;
select*from StokOpnamkDocumentOutlet_TM;
select*from StokMasukOutlet_TT;
select*from StokKeluarOutlet_TT;
select*from StokOpnamOutlet_TT;
