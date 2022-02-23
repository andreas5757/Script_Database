use sql_mgp_boffice;
DROP table if exists discount_tm;
DROP table if exists promo_tm;

CREATE TABLE discount_tm(
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
nama_discount	 	varchar(50),
discount_amount		decimal,
start_date 			datetime,
end_date			datetime,
is_active 			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
CREATE TABLE promo_tm(
id 					char(32),
id_owner 			char(32),
id_outlet		 	char(32),
nama_promo	 		varchar(50),
promo_type			int,
item_x				char(32),
jenis_itemx 		varchar(10),
item_y				char(32),
jenis_itemy 		varchar(10),
is_active 			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);

SELECT*fROM discount_tm;
SELECT*fROM promo_tm;