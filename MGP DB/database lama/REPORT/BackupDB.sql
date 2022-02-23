CREATE DEFINER=`root`@`localhost` PROCEDURE `BackupDB`()
BEGIN
    DECLARE pnRowid long;
    DECLARE pdDate DATETIME;
    DECLARE LastID long;
	   
       
       
    -- Karyawan_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'Karyawan_TM'),0);
 	INSERT INTO Karyawan_TM (select*from sql_mgp_boffice.Karyawan_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from Karyawan_TM) ;
			SET pdDate = (SELECT last_modified_time from Karyawan_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'Karyawan_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'Karyawan_TM',pnRowid,pdDate,now() ;
    
       
    -- Barang_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'Barang_TM'),0);
 	INSERT INTO Barang_TM (select*from sql_mgp_boffice.Barang_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from Barang_TM) ;
			SET pdDate = (SELECT last_modified_time from Barang_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'Barang_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'Barang_TM',pnRowid,pdDate,now() ;
    
    -- Barang_TH
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'Barang_TH'),0);
 	INSERT INTO Barang_TH (select*from sql_mgp_boffice.Barang_TH where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from Barang_TH) ;
			SET pdDate = (SELECT last_modified_time from Barang_TH where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'Barang_TH' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'Barang_TH',pnRowid,pdDate,now() ;
    
    -- BarangDetail_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'BarangDetail_TM'),0);
 	INSERT INTO BarangDetail_TM (select*from sql_mgp_boffice.BarangDetail_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from BarangDetail_TM) ;
			SET pdDate = (SELECT last_modified_time from BarangDetail_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'BarangDetail_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'BarangDetail_TM',pnRowid,pdDate,now() ;
    
    -- BarangDetail_TH
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'BarangDetail_TH'),0);
 	INSERT INTO BarangDetail_TH (select*from sql_mgp_boffice.BarangDetail_TH where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from BarangDetail_TH) ;
			SET pdDate = (SELECT last_modified_time from BarangDetail_TH where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'BarangDetail_TH' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'BarangDetail_TH',pnRowid,pdDate,now() ;
    
    -- InventoryOutlet_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'InventoryOutlet_TM'),0);
 	INSERT INTO InventoryOutlet_TM (select*from sql_mgp_boffice.InventoryOutlet_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from InventoryOutlet_TM) ;
			SET pdDate = (SELECT last_modified_time from InventoryOutlet_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'InventoryOutlet_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'InventoryOutlet_TM',pnRowid,pdDate,now() ;
    
    -- InventoryOutlet_TT
	SET LastID = IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'InventoryOutlet_TT'),0);
 	INSERT INTO InventoryOutlet_TT (select*from sql_mgp_boffice.InventoryOutlet_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from InventoryOutlet_TT) ;
			SET pdDate = (SELECT last_modified_time from InventoryOutlet_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'InventoryOutlet_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'InventoryOutlet_TT',pnRowid,pdDate,now() ;
        
    -- InventoryGudang_TM
	SET LastID = IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'InventoryGudang_TM'),0);
 	INSERT INTO InventoryGudang_TM (select*from sql_mgp_boffice.InventoryGudang_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from InventoryGudang_TM) ;
			SET pdDate = (SELECT last_modified_time from InventoryGudang_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'InventoryGudang_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'InventoryGudang_TM',pnRowid,pdDate,now() ;
    
    -- InventoryGudang_TT
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'InventoryGudang_TT'),0);
 	INSERT INTO InventoryGudang_TT (select*from sql_mgp_boffice.InventoryGudang_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from InventoryGudang_TT) ;
			SET pdDate = (SELECT last_modified_time from InventoryGudang_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'InventoryGudang_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'InventoryGudang_TT',pnRowid,pdDate,now() ;

     -- transaksi_tt
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'transaksi_tt'),0);
 	INSERT INTO transaksi_tt (select*from sql_mgp_boffice.transaksi_tt where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from transaksi_tt) ;
			SET pdDate = (SELECT last_modified_time from transaksi_tt where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'transaksi_tt' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'transaksi_tt',pnRowid,pdDate,now() ;   
    
        -- TransaksiBarang_tt
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'TransaksiBarang_tt'),0);
 	INSERT INTO TransaksiBarang_tt (select*from sql_mgp_boffice.TransaksiBarang_tt where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from TransaksiBarang_tt) ;
			SET pdDate = (SELECT last_modified_time from TransaksiBarang_tt where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'TransaksiBarang_tt' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'TransaksiBarang_tt',pnRowid,pdDate,now() ;
    
        -- transaksi_th
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'transaksi_th'),0);
 	INSERT INTO transaksi_th (select*from sql_mgp_boffice.transaksi_th where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from transaksi_th) ;
			SET pdDate = (SELECT last_modified_time from transaksi_th where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'transaksi_th' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'transaksi_th',pnRowid,pdDate,now() ;
    
        -- TransaksiBarang_th
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'TransaksiBarang_th'),0);
 	INSERT INTO TransaksiBarang_th (select*from sql_mgp_boffice.TransaksiBarang_th where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from TransaksiBarang_th) ;
			SET pdDate = (SELECT last_modified_time from TransaksiBarang_th where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'TransaksiBarang_th' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'TransaksiBarang_th',pnRowid,pdDate,now() ;
    
        -- Pembayaran_TH
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'Pembayaran_TH'),0);
 	INSERT INTO Pembayaran_TH (select*from sql_mgp_boffice.Pembayaran_TH where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from Pembayaran_TH) ;
			SET pdDate = (SELECT last_modified_time from Pembayaran_TH where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'Pembayaran_TH' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'Pembayaran_TH',pnRowid,pdDate,now() ;
    
        -- Pembayaran_TT
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'Pembayaran_TT'),0);
 	INSERT INTO Pembayaran_TT (select*from sql_mgp_boffice.Pembayaran_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from Pembayaran_TT) ;
			SET pdDate = (SELECT last_modified_time from Pembayaran_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'Pembayaran_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'Pembayaran_TT',pnRowid,pdDate,now() ;
    
        -- StokMasukDocumentOutlet_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'StokMasukDocumentOutlet_TM'),0);
 	INSERT INTO StokMasukDocumentOutlet_TM (select*from sql_mgp_boffice.StokMasukDocumentOutlet_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokMasukDocumentOutlet_TM) ;
			SET pdDate = (SELECT last_modified_time from StokMasukDocumentOutlet_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokMasukDocumentOutlet_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokMasukDocumentOutlet_TM',pnRowid,pdDate,now() ;
    
        -- StokMasukOutlet_TT
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokMasukOutlet_TT'),0);
 	INSERT INTO StokMasukOutlet_TT (select*from sql_mgp_boffice.StokMasukOutlet_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokMasukOutlet_TT) ;
			SET pdDate = (SELECT last_modified_time from StokMasukOutlet_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokMasukOutlet_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokMasukOutlet_TT',pnRowid,pdDate,now() ;
    
        -- StokKeluarDocumentOutlet_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokKeluarDocumentOutlet_TM'),0);
 	INSERT INTO StokKeluarDocumentOutlet_TM (select*from sql_mgp_boffice.StokKeluarDocumentOutlet_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokKeluarDocumentOutlet_TM) ;
			SET pdDate = (SELECT last_modified_time from StokKeluarDocumentOutlet_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokKeluarDocumentOutlet_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokKeluarDocumentOutlet_TM',pnRowid,pdDate,now() ;
    
        -- StokKeluarOutlet_TT
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokKeluarOutlet_TT'),0);
 	INSERT INTO StokKeluarOutlet_TT (select*from sql_mgp_boffice.StokKeluarOutlet_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokKeluarOutlet_TT) ;
			SET pdDate = (SELECT last_modified_time from StokKeluarOutlet_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokKeluarOutlet_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokKeluarOutlet_TT',pnRowid,pdDate,now() ;
    
        -- StokOpnamkDocumentOutlet_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokOpnamkDocumentOutlet_TM'),0);
 	INSERT INTO StokOpnamkDocumentOutlet_TM (select*from sql_mgp_boffice.StokOpnamkDocumentOutlet_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokOpnamkDocumentOutlet_TM) ;
			SET pdDate = (SELECT last_modified_time from StokOpnamkDocumentOutlet_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokOpnamkDocumentOutlet_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokOpnamkDocumentOutlet_TM',pnRowid,pdDate,now() ;
    
        -- StokOpnamOutlet_TT
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokOpnamOutlet_TT'),0);
 	INSERT INTO StokOpnamOutlet_TT (select*from sql_mgp_boffice.StokOpnamOutlet_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokOpnamOutlet_TT) ;
			SET pdDate = (SELECT last_modified_time from StokOpnamOutlet_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokOpnamOutlet_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokOpnamOutlet_TT',pnRowid,pdDate,now() ;
    
        -- StokMasukDocumentGudang_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'StokMasukDocumentGudang_TM'),0);
 	INSERT INTO StokMasukDocumentGudang_TM (select*from sql_mgp_boffice.StokMasukDocumentGudang_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokMasukDocumentGudang_TM) ;
			SET pdDate = (SELECT last_modified_time from StokMasukDocumentGudang_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokMasukDocumentGudang_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokMasukDocumentGudang_TM',pnRowid,pdDate,now() ;
    
        -- StokMasukGudang_TT
	SET LastID = IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokMasukGudang_TT'),0);
 	INSERT INTO StokMasukGudang_TT (select*from sql_mgp_boffice.StokMasukGudang_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokMasukGudang_TT) ;
			SET pdDate = (SELECT last_modified_time from StokMasukGudang_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokMasukGudang_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokMasukGudang_TT',pnRowid,pdDate,now() ;
    
        -- StokKeluarDocumentGudang_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokKeluarDocumentGudang_TM'),0);
 	INSERT INTO StokKeluarDocumentGudang_TM (select*from sql_mgp_boffice.StokKeluarDocumentGudang_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokKeluarDocumentGudang_TM) ;
			SET pdDate = (SELECT last_modified_time from StokKeluarDocumentGudang_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokKeluarDocumentGudang_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokKeluarDocumentGudang_TM',pnRowid,pdDate,now() ;
    
        -- StokKeluarGudang_TT
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokKeluarGudang_TT'),0);
 	INSERT INTO StokKeluarGudang_TT (select*from sql_mgp_boffice.StokKeluarGudang_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokKeluarGudang_TT) ;
			SET pdDate = (SELECT last_modified_time from StokKeluarGudang_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokKeluarGudang_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokKeluarGudang_TT',pnRowid,pdDate,now() ;
    
        -- StokOpnamkDocumentGudang_TM
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name = 'StokOpnamkDocumentGudang_TM'),0);
 	INSERT INTO StokOpnamkDocumentGudang_TM (select*from sql_mgp_boffice.StokOpnamkDocumentGudang_TM where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokOpnamkDocumentGudang_TM) ;
			SET pdDate = (SELECT last_modified_time from StokOpnamkDocumentGudang_TM where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokOpnamkDocumentGudang_TM' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokOpnamkDocumentGudang_TM',pnRowid,pdDate,now() ;
    
        -- StokOpnamGudang_TT
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'StokOpnamGudang_TT'),0);
 	INSERT INTO StokOpnamGudang_TT (select*from sql_mgp_boffice.StokOpnamGudang_TT where Row_id > lastID  limit 1000 );
			SET pnRowid = (select max(row_id)from StokOpnamGudang_TT) ;
			SET pdDate = (SELECT last_modified_time from StokOpnamGudang_TT where Row_id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'StokOpnamGudang_TT' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'StokOpnamGudang_TT',pnRowid,pdDate,now() ;
       
       
       
    -- absensikaryawan_tt
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'absensikaryawan_tt'),0);
 	INSERT INTO absensikaryawan_tt (select*from sql_mgp_boffice.absensikaryawan_tt where id > lastID  limit 1000 );
			SET pnRowid = (select max(id)from absensikaryawan_tt) ;
			SET pdDate = (SELECT last_modified_time from absensikaryawan_tt where id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'absensikaryawan_tt' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'absensikaryawan_tt',pnRowid,pdDate,now() ;
    
    -- absensi_tm
	SET LastID =  IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'absensi_tm'),0);
 	INSERT INTO absensi_tm (select*from sql_mgp_boffice.absensi_tm where id > lastID  limit 1000 );
			SET pnRowid = (select max(id)from absensi_tm) ;
			SET pdDate = (SELECT last_modified_time from absensi_tm where id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'absensi_tm' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'absensi_tm',pnRowid,pdDate,now() ;
    
    -- jenisabsensi_tm
	SET LastID = IFNULL((SELECT Last_id from JobDelta_TM where Job_name  = 'jenisabsensi_tm'),0);
 	INSERT INTO jenisabsensi_tm (select*from sql_mgp_boffice.jenisabsensi_tm where id > lastID  limit 1000 );
			SET pnRowid = (select max(id)from jenisabsensi_tm) ;
			SET pdDate = (SELECT last_modified_time from jenisabsensi_tm where id = pnRowid);
	DELETE FROM JobDelta_TM WHERE job_name = 'jenisabsensi_tm' LIMIT 1; 
	INSERT INTO JobDelta_TM
	SELECT 'jenisabsensi_tm',pnRowid,pdDate,now() ;
    
  END