use sql_mgp_boffice;
DROP table if exists TransaksiBarang_TT;
CREATE TABLE TransaksiBarang_TT(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
id_transaksi		char(32),
id_detail_barang	char(32),
id_posisi			char(32),
tipe_produk			varchar(50),
jenis_posisi		varchar(50),
harga_modal			double,
harga_jual			double,
jumlah				double,
isTambah			bit,
catatan				varchar(200),
statustransaksi		int,
waktutransaksi		DATETIME,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

DROP table if exists TransaksiBarang_TH;
CREATE TABLE TransaksiBarang_TH(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_trans_barang		char(32),
id_owner 			char(32),
id_outlet		 	char(32),
id_transaksi		char(32),
id_detail_barang	char(32),
id_posisi			char(32),
tipe_produk			varchar(50),
jenis_posisi		varchar(50),
harga_modal			double,
harga_jual			double,
jumlah				double,
isTambah			bit,
catatan				varchar(200),
statustransaksi		int,
waktutransaksi		DATETIME,
proses				VARCHAR(50) NULL,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);