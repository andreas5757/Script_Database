use sql_mgp_boffice;
drop table if exists pointsetting_tm;

create table pointsetting_tm
(
id 					char(32),
id_owner 			char(32),
point_amount 		int,
point_by_nominal	bit,
nominal_minset		decimal,
point_by_sales		bit,
sales_item_minSet	int,
is_active 			bit,
modify_status 		CHAR(1) NULL,
last_modified_by 	VARCHAR(50) NULL,
last_modified_time 	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),
	UNIQUE INDEX `uidx_id` (id ASC),
    INDEX `idx_id_owner` (id_owner ASC)

);
select*from outlet_tm;
select*from pointsetting_tm;


-- insert into pointsetting_tm
-- select '08693b637fbc4f1aa19c7ee64048d474','92a46e07f0384b2bbd189b97523faff0',0,0,0,0,0,0,'I','798eeafbb0f24f1ea8ed8eeffaf47bf9',now() union
-- select '35d37744dd684dc69e47e8d02e301a7b','92a46e07f0384b2bbd189b97523faff0',0,0,0,0,0,0,'U','798eeafbb0f24f1ea8ed8eeffaf47bf9',now() union
-- select '518d23b382574bf2993229ee39f34855','92a46e07f0384b2bbd189b97523faff0',0,0,0,0,0,0,'D','798eeafbb0f24f1ea8ed8eeffaf47bf9',now() union
-- select '86035c61ec284397a2caf402544c5edb','92a46e07f0384b2bbd189b97523faff0',0,0,0,0,0,0,'D','798eeafbb0f24f1ea8ed8eeffaf47bf9',now() union
-- select 'dfe06149ebfe44e78344c01349db2ce7','92a46e07f0384b2bbd189b97523faff0',0,0,0,0,0,0,'D','798eeafbb0f24f1ea8ed8eeffaf47bf9',now() union
-- select 'e7c0d68fad1d47ac92c056c550411d97','880c9087643a4d9a85c5a4697646df44',0,0,0,0,0,0,'I','798eeafbb0f24f1ea8ed8eeffaf47bf9',now()





