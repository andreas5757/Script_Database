use sql_mgp_boffice;

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
    
    
    insert into metodepembayaran_tm
    select (REPLACE((SELECT uuid()), '-', '')), '1','Cash',true,'I','	Admin',	now() union
    select (REPLACE((SELECT uuid()), '-', '')), '2','Debit',true,'I','	Admin',	now() union
    select (REPLACE((SELECT uuid()), '-', '')), '3','Digital Payment',true,'I','	Admin',	now() ;
    
    
    select*from metodepembayaran_tm