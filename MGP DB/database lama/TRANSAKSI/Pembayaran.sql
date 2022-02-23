use sql_mgp_boffice;
DROP table if exists Pembayaran_TT;
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

DROP table if exists Pembayaran_TH;
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
