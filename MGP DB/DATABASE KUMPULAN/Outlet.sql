USE sql_mgp_boffice;
DROP TABLE IF EXISTS outlet_tm;
DROP TABLE IF EXISTS outletlogo_tm;
DROP TABLE IF EXISTS kategorioutlet_tm;
DROP TABLE IF EXISTS jenisoutlet_tm;
DROP TABLE IF EXISTS outletsetting_tm;
DROP TABLE IF EXISTS RoundingOutlet_TM;


CREATE TABLE outlet_tm (
	id CHAR(32) NOT NULL,
    id_owner CHAR(32) NOT NULL,
	id_jenis_outlet CHAR(32) NOT NULL,
	nama VARCHAR(150) NULL,
    telepon VARCHAR(25) NULL,
    fax VARCHAR(20) NULL,
    email VARCHAR(150) NULL,
	alamat VARCHAR(8000) NULL,
	kelurahan VARCHAR(250) NULL,
    kecamatan VARCHAR(250) NULL,
	kota_kabupaten VARCHAR(250) NULL,
    kode_pos INT NULL,
    modify_status CHAR(1) NULL,
    last_modified_by VARCHAR(50) NULL,
    last_modified_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);
CREATE TABLE outletlogo_tm (
	id CHAR(32) NOT NULL,
    id_owner CHAR(32) NOT NULL,
	id_jenis_outlet CHAR(32) NOT NULL,
	logo_outlet longtext,
    modify_status CHAR(1) NULL,
    last_modified_by VARCHAR(50) NULL,
    last_modified_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);
CREATE TABLE kategorioutlet_tm (
	id CHAR(32) NOT NULL,
    kode VARCHAR(50) NULL,
    nama Varchar(50) NULL,
    deskripsi VARCHAR(1500) NULL,
    modify_status CHAR(1) NULL,
    last_modified_by VARCHAR(50) NULL,
    last_modified_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC)
);
CREATE TABLE jenisoutlet_tm (
	id CHAR(32) NOT NULL,
    id_kategori_outlet CHAR(32) NOT NULL,
    kode VARCHAR(50) NULL,
    nama varchar(50) NULL,
    deskripsi VARCHAR(1500) NULL,
    modify_status CHAR(1) NULL,
    last_modified_by VARCHAR(50) NULL,
    last_modified_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC)
);
Create table outletsetting_tm(
id char(32),
id_owner char(32),
id_outlet char(32),
type_setting varchar(30),
type_name varchar (250),
type_amount decimal,
is_active bit,
modify_status CHAR(1) NULL,
last_modified_by VARCHAR(50) NULL,
last_modified_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);
Create table RoundingOutlet_TM(
id char(32),
id_owner char(32),
Rounding_amount decimal,
jenis_rounding int,
is_active bit,
modify_status CHAR(1) NULL,
last_modified_by VARCHAR(50) NULL,
last_modified_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)
);

SELECT*FROM outlet_tm;
SELECT*FROM outletlogo_tm;
SELECT*FROM kategorioutlet_tm;
SELECT*FROM jenisoutlet_tm;
SELECT*FROM outletsetting_tm;
SELECT*FROM RoundingOutlet_TM;