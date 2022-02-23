use sql_mgp_boffice;
DROP table if exists Transaksi_TM;
DROP table if exists Transaksi_TT;
DROP table if exists Transaksi_TH;
DROP table if exists TransaksiBarang_TT;
DROP table if exists TransaksiBarang_TH;
DROP table if exists Pembayaran_TT;
DROP table if exists Pembayaran_TH;

CREATE TABLE Transaksi_TM(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
id_karyawan			char(32),
id_kasir			char(32),
id_pelanggan		char(32),
id_meja				char(32),
id_promo			char(32),
id_diskon			char(32),
id_pajak			char(32),
id_service			char(32),
user_id				char(32),
nama_pemesan		char(50),
jenis_user			char(32),
total_modal			double,
total_transaksi		double,
total_bayar			double,
diskon				double,
pajak				double,
service				double,
is_paid				bit,
waktu_transaksi 	DATETIME,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

CREATE TABLE Transaksi_TT(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
id_karyawan			char(32),
id_kasir			char(32),
id_pelanggan		char(32),
id_meja				char(32),
id_promo			char(32),
id_diskon			char(32),
id_pajak			char(32),
id_service			char(32),
user_id				char(32),
nama_pemesan		char(50),
jenis_user			char(32),
total_modal			double,
total_transaksi		double,
total_bayar			double,
diskon				double,
pajak				double,
service				double,
is_paid				bit,
waktu_transaksi 	DATETIME,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
CREATE TABLE Transaksi_TH(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_transaksi		char(32),
id_owner 			char(32),
id_outlet		 	char(32),
id_karyawan			char(32),
id_kasir			char(32),
id_pelanggan		char(32),
id_meja				char(32),
id_promo			char(32),
id_diskon			char(32),
id_pajak			char(32),
id_service			char(32),
user_id				char(32),
nama_pemesan		char(50),
jenis_user			char(32),
total_modal			double,
total_transaksi		double,
total_bayar			double,
diskon				double,
pajak				double,
service				double,
is_paid				bit,
waktu_transaksi 	DATETIME,
proses				VARCHAR(50) NULL,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
)
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
CREATE TABLE Pembayaran_TT(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
id_transaksi		char(32),
tipe_pembayaran		int,
metode_pembayaran	int,
uang_bayar			double,
kembalian			double,
pembulatan			double,
waktu_transaksi 	DATETIME,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
CREATE TABLE Pembayaran_TH(
row_id				bigint NOT NULL AUTO_INCREMENT KEY,
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
id_transaksi		char(32),
id_pembayaran		char(32),
tipe_pembayaran		int,
metode_pembayaran	int,
uang_bayar			double,
kembalian			double,
pembulatan			double,
waktu_transaksi 	DATETIME,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);



SELECT*FROM Transaksi_TM;
SELECT*FROM Transaksi_TT;
SELECT*FROM Transaksi_TH;
SELECT*FROM TransaksiBarang_TH;
SELECT*FROM Pembayaran_TT;
SELECT*FROM Pembayaran_TH;