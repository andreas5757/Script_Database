use sql_mgp_boffice;

drop table outletsetting_tm;
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

select*from outletsetting_tm;