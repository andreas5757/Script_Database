use sql_mgp_boffice;
drop table if exists ProdukOutlet_TM;

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

drop table if exists ProdukOutlet_TH;
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

