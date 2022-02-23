select*from event_tm where id_owner  = 'e102a339a87349a88adf23feea64c6ad';
select*from guest_tm where id_owner  = 'e102a339a87349a88adf23feea64c6ad';
select*from quote_tm where id_owner  = 'e102a339a87349a88adf23feea64c6ad';
select*from attendance_tm where id_owner  = 'e102a339a87349a88adf23feea64c6ad';
truncate table guest_tm;

select*from event_th where id_owner  = 'e102a339a87349a88adf23feea64c6ad';
select*from guest_th where id_owner  = 'e102a339a87349a88adf23feea64c6ad';
select*from quote_th where id_owner  = 'e102a339a87349a88adf23feea64c6ad';
select*from attendance_th where id_owner  = 'e102a339a87349a88adf23feea64c6ad';

insert into event_tm 
select 2,	'c0926e8e7e1b479c9fadb07d1eb76e5b',	'e102a339a87349a88adf23feea64c6ad',	'AHMAD',	'WULAN',	'HOTEL SANTIKA',	'string',	0,	0	,'2021-04-29 00:00:00',	'0001-01-01 10:00:00',	'0001-01-01 15:00:30',	'[{"getinorder":1,"id_guest":"8d300f1969e045b0b8d3a42168c15512"},{"getinorder":2,"id_guest":"8d300f1969e045b0b8d3a42168c15512"},{"getinorder":3,"id_guest":"d776e7c860ac4e16a4f50d5998ee3871"}]','I','xxxx',	'2021-05-01 19:49:05';