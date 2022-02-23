use sql_mgp_boffice;
DROP TABLE IF EXISTS InventoryOutlet_TM;
DROP TABLE IF EXISTS InventoryOutlet_TT;
DROP TABLE IF EXISTS StokMasukDocumentOutlet_TM;
DROP TABLE IF EXISTS StokKeluarDocumentOutlet_TM;
DROP TABLE IF EXISTS StokOpnamkDocumentOutlet_TM;
DROP TABLE IF EXISTS StokMasukOutlet_TT;
DROP TABLE IF EXISTS StokKeluarOutlet_TT;
DROP TABLE IF EXISTS StokOpnamOutlet_TT;
DROP TABLE IF EXISTS Jasa_TM;
DROP TABLE IF EXISTS FotoJasa_TM;
DROP TABLE IF EXISTS ProdukOutlet_TM;
DROP TABLE IF EXISTS ProdukOutlet_TH;
DROP TABLE IF EXISTS Resep_TM;
DROP TABLE IF EXISTS FotoResep_TM;
DROP TABLE IF EXISTS Retail_TM;
DROP TABLE IF EXISTS FotoRetail_TM;
DROP TABLE IF EXISTS special_param_detail_outlet_tm;
DROP TABLE IF EXISTS special_param_detail_outlet_tt;

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
create table Jasa_TM(

row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
nama				varchar(250),
satuan				char(50),
kuantitas			decimal,
harga				decimal,
isActive			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
create table FotoJasa_TM(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
foto 				LONGTEXT,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
CREATE TABLE  ProdukOutlet_TM  (
	row_id	bigint NOT NULL AUTO_INCREMENT KEY,
   id  char(32) NOT NULL,
   id_owner  char(32) DEFAULT NULL,
   id_outlet  char(32) DEFAULT NULL,
   id_barang  char(32) DEFAULT NULL,
   id_detail  char(32) DEFAULT NULL,
   harga_jual  double DEFAULT NULL,
   modify_status  char(1) DEFAULT NULL,
   last_modified_by  varchar(50) DEFAULT NULL,
   last_modified_time  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY  uidx_id  ( id ),
  KEY  idx_id_owner  ( id_owner )
);
CREATE TABLE  ProdukOutlet_TH  (
	row_id		bigint NOT NULL AUTO_INCREMENT KEY,
	id  char(32) NOT NULL,
   id_owner  char(32) DEFAULT NULL,
   id_produk  char(32) DEFAULT NULL,
   id_outlet  char(32) DEFAULT NULL,
   id_barang  char(32) DEFAULT NULL,
   id_detail  char(32) DEFAULT NULL,
   harga_jual  double DEFAULT NULL,
   modify_status  char(1) DEFAULT NULL,
   last_modified_by  varchar(50) DEFAULT NULL,
   last_modified_time  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY  uidx_id  ( id ),
  KEY  idx_id_owner  ( id_owner )
) ;
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
create table Retail_TM(
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
create table FotoRetail_TM(
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
create table special_param_detail_outlet_tm(
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
create table special_param_detail_outlet_tt(
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


select*from InventoryOutlet_TM;
select*from InventoryOutlet_TT;
select*from StokMasukDocumentOutlet_TM;
select*from StokKeluarDocumentOutlet_TM;
select*from StokOpnamkDocumentOutlet_TM;
select*from StokMasukOutlet_TT;
select*from StokKeluarOutlet_TT;
select*from StokOpnamOutlet_TT;