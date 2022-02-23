
use sql_mgp_boffice;
TRUNCATE TABLE kategorioutlet_tm;
insert into kategorioutlet_tm
select replace(UUID(),'-',''),'KOUT00','Jasa','SALON, LOUNDRY DLL','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),'KOUT01','Retail','Toko Kelontong,waralaba DLL','I','ADMIN',NOW() UNION
select replace(UUID(),'-',''),'KOUT02','Restaurant','cafe, coffe shop, Rumah makan dll','I','ADMIN',NOW();

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
