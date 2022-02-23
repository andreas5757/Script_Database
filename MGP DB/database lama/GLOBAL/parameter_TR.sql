use sql_mgp_boffice;
DROP TABLE IF EXISTS parameter_TR;
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

select*from parameter_TR;
truncate table parameter_TR;

insert into parameter_TR
select (REPLACE((SELECT uuid()), '-', '')), 'urlproduk','http://localhost/Produk/v1/',true,'I','	Admin',	now();
select (REPLACE((SELECT uuid()), '-', '')), 'urlInventori','http://localhost/Persediaan/v1/',true,'I','	Admin',	now();



	
	