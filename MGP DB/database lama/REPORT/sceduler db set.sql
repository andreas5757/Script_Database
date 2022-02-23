use sql_mgp_report;

drop table if exists Barang_TM;	
drop table if exists Barang_TH; 		
drop table if exists BarangDetail_TM;
drop table if exists BarangDetail_TH ;
drop table if exists InventoryOutlet_TM;
drop table if exists InventoryOutlet_TT;
drop table if exists InventoryGudang_TM;
drop table if exists InventoryGudang_TT;
drop table if exists transaksi_tt;
drop table if exists transaksi_th;
drop table if exists TransaksiBarang_th;
drop table if exists TransaksiBarang_tt;
drop table if exists Pembayaran_TH;
drop table if exists Pembayaran_TT;
drop table if exists StokMasukDocumentOutlet_TM;
drop table if exists StokMasukOutlet_TT;
drop table if exists StokKeluarDocumentOutlet_TM;
drop table if exists StokKeluarOutlet_TT;
drop table if exists StokOpnamkDocumentOutlet_TM;
drop table if exists StokOpnamOutlet_TT;
drop table if exists StokMasukDocumentGudang_TM;
drop table if exists StokMasukGudang_TT;
drop table if exists StokKeluarDocumentGudang_TM;
drop table if exists StokKeluarGudang_TT;
drop table if exists StokOpnamkDocumentGudang_TM;
drop table if exists StokOpnamGudang_TT;
drop TABLE if exists absensikaryawan_tt;
drop  TABLE if exists absensi_tm;
drop TABLE if exists jenisabsensi_tm;
drop TABLE if exists Karyawan_TM;

CREATE TABLE Barang_TM			 			 AS SELECT * FROM sql_mgp_boffice.Barang_TM 			;
CREATE TABLE Barang_TH 						 AS SELECT * FROM sql_mgp_boffice.Barang_TH 			;
CREATE TABLE BarangDetail_TM			 	 AS SELECT * FROM sql_mgp_boffice.BarangDetail_TM 			;
CREATE TABLE BarangDetail_TH 				 AS SELECT * FROM sql_mgp_boffice.BarangDetail_TH 			;
CREATE TABLE InventoryOutlet_TM 			 AS SELECT * FROM sql_mgp_boffice.InventoryOutlet_TM 			;
CREATE TABLE InventoryOutlet_TT 			 AS SELECT * FROM sql_mgp_boffice.InventoryOutlet_TT 			;
CREATE TABLE InventoryGudang_TM 			 AS SELECT * FROM sql_mgp_boffice.InventoryGudang_TM 			;
CREATE TABLE InventoryGudang_TT 			 AS SELECT * FROM sql_mgp_boffice.InventoryGudang_TT 			;
CREATE TABLE transaksi_tt 					 AS SELECT * FROM sql_mgp_boffice.transaksi_tt 					;
CREATE TABLE transaksi_th 					 AS SELECT * FROM sql_mgp_boffice.transaksi_th 					;
CREATE TABLE TransaksiBarang_th 			 AS SELECT * FROM sql_mgp_boffice.TransaksiBarang_th 			;
CREATE TABLE TransaksiBarang_tt 			 AS SELECT * FROM sql_mgp_boffice.TransaksiBarang_tt		;
CREATE TABLE Pembayaran_TH					 AS SELECT * FROM sql_mgp_boffice.Pembayaran_TH					;
CREATE TABLE Pembayaran_TT					 AS SELECT * FROM sql_mgp_boffice.Pembayaran_TT					;
CREATE TABLE StokMasukDocumentOutlet_TM		 AS SELECT * FROM sql_mgp_boffice.StokMasukDocumentOutlet_TM	;
CREATE TABLE StokMasukOutlet_TT				 AS SELECT * FROM sql_mgp_boffice.StokMasukOutlet_TT			;
CREATE TABLE StokKeluarDocumentOutlet_TM	 AS SELECT * FROM sql_mgp_boffice.StokKeluarDocumentOutlet_TM	;
CREATE TABLE StokKeluarOutlet_TT			 AS SELECT * FROM sql_mgp_boffice.StokKeluarOutlet_TT			;
CREATE TABLE StokOpnamkDocumentOutlet_TM	 AS SELECT * FROM sql_mgp_boffice.StokOpnamkDocumentOutlet_TM	;
CREATE TABLE StokOpnamOutlet_TT				 AS SELECT * FROM sql_mgp_boffice.StokOpnamOutlet_TT			;
CREATE TABLE StokMasukDocumentGudang_TM		 AS SELECT * FROM sql_mgp_boffice.StokMasukDocumentGudang_TM	;
CREATE TABLE StokMasukGudang_TT				 AS SELECT * FROM sql_mgp_boffice.StokMasukGudang_TT			;
CREATE TABLE StokKeluarDocumentGudang_TM	 AS SELECT * FROM sql_mgp_boffice.StokKeluarDocumentGudang_TM	;
CREATE TABLE StokKeluarGudang_TT			 AS SELECT * FROM sql_mgp_boffice.StokKeluarGudang_TT			;
CREATE TABLE StokOpnamkDocumentGudang_TM	 AS SELECT * FROM sql_mgp_boffice.StokOpnamkDocumentGudang_TM	;
CREATE TABLE StokOpnamGudang_TT	 			AS SELECT * FROM sql_mgp_boffice.StokOpnamGudang_TT				;
CREATE TABLE absensikaryawan_tt	 			AS SELECT * FROM sql_mgp_boffice.absensikaryawan_tt				;
CREATE TABLE absensi_tm	 					AS SELECT * FROM sql_mgp_boffice.absensi_tm				;
CREATE TABLE jenisabsensi_tm	 			AS SELECT * FROM sql_mgp_boffice.jenisabsensi_tm				;
CREATE TABLE Karyawan_TM	 			AS SELECT * FROM sql_mgp_boffice.Karyawan_TM				;


drop TABLE if exists JobDelta_TM								;
CREATE TABLE JobDelta_TM( 
job_name varchar(50), 			-- Diisi nama tabel
last_id long, 				-- diisi last id or max id disetiap tabel
last_datetime datetime, 		-- diisi last TrxDate or max TrxDate disetiap tabel
last_modified_time  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)


