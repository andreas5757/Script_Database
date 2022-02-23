-- GLOBAL PARAMETER DATABASE

use sql_mgp_boffice;
print 'Drop Table'
DROP TABLE IF EXISTS parameter_TR;
DROP TABLE IF EXISTS kategori_inventory_tm;
DROP TABLE IF EXISTS metodepembayaran_tm;
DROP TABLE IF EXISTS metodedetailpembayaran_tm;

Print 'Create Table '
create table kategori_inventory_tm(
id 					bigint auto_increment not null,
id_owner 			char(32),
id_outlet		 	bigint,
kode				varchar(30),
nama				varchar(250), 
deskripsi			varchar(250), 
is_active 			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);


create table parameter_TR(
id 					char(32),
paramtype			varchar(50),
value				varchar(500),
isActive			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC)
    );

create table metodepembayaran_tm(
id 					char(32),
kode				int,
value				varchar(500),
isActive			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC)
    );
	
create table metodedetailpembayaran_tm(
id 					char(32),
id_master			char(32),
kode				int,
value				varchar(500),
isActive			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC)
    );	

print 'INSERT PATCH'
insert into parameter_TR
select (REPLACE((SELECT uuid()), '-', '')), 'urlproduk','http://localhost/Produk/v1/',true,'I','	Admin',	now();
select (REPLACE((SELECT uuid()), '-', '')), 'urlInventori','http://localhost/Persediaan/v1/',true,'I','	Admin',	now();

insert into metodepembayaran_tm
select (REPLACE((SELECT uuid()), '-', '')), '1','Cash',true,'I','	Admin',	now() union
select (REPLACE((SELECT uuid()), '-', '')), '2','Debit',true,'I','	Admin',	now() union
select (REPLACE((SELECT uuid()), '-', '')), '3','Digital Payment',true,'I','	Admin',	now() ;


set @cash = (select id from Metodepembayaran_tm where value = 'Cash');
set @debit = (select id from Metodepembayaran_tm where value = 'Debit');
set @digital = (select id from Metodepembayaran_tm where value = 'Digital Payment');

insert into metodedetailpembayaran_tm
select (REPLACE((SELECT uuid()), '-', '')),@cash, '1','Cash',true,'I','	Admin',	now() union
select (REPLACE((SELECT uuid()), '-', '')),@debit, '2','Debit',true,'I','	Admin',	now() union
select (REPLACE((SELECT uuid()), '-', '')),@debit, '3','Kredit',true,'I','	Admin',	now() union
select (REPLACE((SELECT uuid()), '-', '')),@digital, '4','OVO',true,'I','	Admin',	now() union
select (REPLACE((SELECT uuid()), '-', '')),@digital, '5','GOPAY',true,'I','	Admin',	now() union
select (REPLACE((SELECT uuid()), '-', '')),@digital, '6','DANA',true,'I','	Admin',	now() union
select (REPLACE((SELECT uuid()), '-', '')),@digital, '7','LINK AJA',true,'I','	Admin',	now() ;	
	
print 'AFTER CREATE'
select*from parameter_TR;
select*from kategori_inventory_tm;
select*from metodepembayaran_tm;

	
	