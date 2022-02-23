USE sql_mgp_boffice;
drop table outlet_tm;
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

drop table outletlogo_tm;
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

drop table kategorioutlet_tm;
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

TRUNCATE TABLE kategorioutlet_tm;
insert into kategorioutlet_tm
select replace(UUID(),'-',''),'KOUT00','Jasa','SALON, LOUNDRY DLL','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),'KOUT01','Retail','Toko Kelontong,waralaba DLL','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),'KOUT02','Restaurant','cafe, coffe shop, Rumah makan dll','I','ADMIN',NOW();
select*from kategorioutlet_tm;

drop table jenisoutlet_tm;
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

TRUNCATE TABLE jenisoutlet_tm;
insert into jenisoutlet_tm
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Jasa') ,'JJOUT00','Barber Shop/Salon','Salon,potong rambut,creambath,tata rias wajah','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Jasa') ,'JJOUT01','Massage and Spa','Pijat, sauna, spa','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Jasa') ,'JJOUT02','Bengkel','jasa perbaikan kendaraan','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Jasa') ,'JJOUT03','Medical','Klinik,Rumah sakit','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Jasa') ,'JJOUT04','Laundry','Tempat Cuci baju, setrika','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Jasa') ,'JJOUT05','Kursus dan Bimbingan Belajar','Bimbingan Belajar,Kursus, Balai Pelatihan','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Jasa') ,'JJOUT06','Foto kopi dan percetakan','Klinik,Rumah sakit','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Jasa') ,'JJOUT07','Jasa Kebersihan','Pembantu, Cleaning Service','I','ADMIN',NOW() UNION

select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Retail') ,'JRTOUT00','Supermarket','Toko Retail Dengan Kapasitas Besar','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Retail') ,'JRTOUT01','Minimarket','Toko Retail Dengan Kapasitas Menengah','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Retail') ,'JRTOUT02','Toko','Toko Retail Dengan Kapasitas Kecil','I','ADMIN',NOW() UNION

select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Restaurant') ,'JRSOUT00','Restoran dan Kafe','Tempat tongkrongan yang menyediakan makanan','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Restaurant') ,'JRSOUT01','Toko Kopi','Tempat Tongkrongan yang Fokus Berjualan Kopi','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Restaurant') ,'JRSOUT02','Toko Roti Dan Kue','Toko Roti dan Kue','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Restaurant') ,'JRSOUT03','Toko Minuman dan Eskrim','Klinik,Rumah sakit','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),(select id from kategorioutlet_tm where nama ='Restaurant') ,'JRSOUT04','Katering','Penyedia makan porsi besar','I','ADMIN',NOW() ;

select*from jenisoutlet_tm;


drop table outletsetting_tm;
Create table outletsetting_tm(
id CHAR(32) NOT NULL,
id_owner char(32),
id_outlet CHAR(32),
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

select*from outletsetting_tm;


select*from jenisoutlet_tm where id_kategori_outlet = (Select id from kategorioutlet_tm where nama ='Retail')