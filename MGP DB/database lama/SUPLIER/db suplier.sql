use sql_mgp_boffice;
DROP table suplier_tm;

CREATE TABLE suplier_tm(
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
nama_suplier		varchar(100),
alamat_suplier		varchar(250),
NPWP				varchar(25),
nomor_handphone		varchar(12),
email				varchar(100),
is_active			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

)