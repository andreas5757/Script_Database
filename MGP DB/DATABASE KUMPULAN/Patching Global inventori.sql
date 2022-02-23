use sql_mgp_boffice;
truncate table Ukuran_tm;
INSERT INTO Ukuran_tm
select (REPLACE((SELECT uuid()), '-', '')),'L'	,'Liter','I','ADMIN',now() union
select (REPLACE((SELECT uuid()), '-', '')),'ML'	,'Mililiter','I','ADMIN',now() union
select (REPLACE((SELECT uuid()), '-', '')),'KG'	,'Kilogram','I','ADMIN',now() union
select (REPLACE((SELECT uuid()), '-', '')),'G'	,'Gram','I','ADMIN',now() union
select (REPLACE((SELECT uuid()), '-', '')),'MG'	,'Miligram','I','ADMIN',now() union
select (REPLACE((SELECT uuid()), '-', '')),'SM'	,'Sendok Makan','I','ADMIN',now() union
select (REPLACE((SELECT uuid()), '-', '')),'ST'	,'Sendok Teh','I','ADMIN',now() union
select (REPLACE((SELECT uuid()), '-', '')),'CUP','Cangkir','I','ADMIN',now() union 
select (REPLACE((SELECT uuid()), '-', '')),'Pcs','Pieces','I','ADMIN',now() ;


truncate table KonversiSatuan_tm;

INSERT INTO KonversiSatuan_tm
select (REPLACE((SELECT uuid()), '-', '')),'KGG','KG','G'		,1		,1000			,'kilogram to gram','I','Admin',now()	union
select (REPLACE((SELECT uuid()), '-', '')),'KGMG','KG','MG'		,1		,1000000		,'kilogram to miligram','I','	',now()	union
select (REPLACE((SELECT uuid()), '-', '')),'KGST','KG','ST'		,1		,200 			,'Kilogram to sendok teh		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'KGSM','KG','SM'		,1		,66.7			,'kilogram to sendok makan		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'KGCUP','KG','CUP'	,1		,5.71 			,'kilogram to cup				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'KGL','KG','L'		,1		,1 				,'kilogram to Liter				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'KGML','KG','ML'		,1		,1000 			,'Kilogram to mililiter			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'GKG','G','KG'		,1		,0.001			,'Gram to kilogram				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'GMG','G','MG'		,1		,1000 			,'gram to miligram				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'GST','G','ST'		,1		,0.2			,'gram to sendok the			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'GSM','G','SM'		,1		,0.07 			,'gram to sendok makan			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'GCUP','G','CUP'		,1		,0.005174 		,'gram to cup					','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'GL','G','L'			,1		,0.001			,'gram to liter					','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'GML','G','ML'		,1		,1 				,'gram to mililiter				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MGKG','MG','KG'		,1		,0.000001 		,'miligram to kilogram			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MGG','MG','G'		,1		,0.001 			,'miligram to gram				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MGST','MG','ST'		,1		,0.0002			,'miligram to sendok teh		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MGSM','MG','SM'		,1		,0.0000667		,'miligram to sendok makan		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MGCUP','MG','CUP'	,1		,0.000005714	,'miligram to cup				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MGL','MG','L'		,1		,0.000001 		,'miligram to liter				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MGML','MG','ML'		,1	 	,0.001 			,'miligram to mililiter			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'LKG','L','KG'		,1	 	,1 				,'liter to kilogram				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'LG','L','G'			,1		,1000 			,'liter to gram					','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'LMG','L','MG'		,1	 	,1000000 		,'liter to miligram				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'LST','L','ST'		,1	 	,200 			,'liter to sendok the			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'LSM','L','SM'		,1		,66.7			,'liter to sendok makan			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'LCUP','L','CUP'		,1	 	,5.71 			,'liter to cup					','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'LML','L','ML'		,1	 	,1000 			,'liter to mililiter			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MLKG','ML','KG'		,1	 	,1000 			,'mililiter to kilogram			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MLG','ML','G'		,1	 	,1 				,'mililiter to gram				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MLMG','ML','MG'		,1	 	,1000 			,'mililiter to miligram			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MLST','ML','ST'		,1		,0.2			,'mililiter to sendok the		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MLSM','ML','SM'		,1	 	,0.07 			,'mililiter to sendok makan		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MLCUP','ML','CUP'	,1	 	,0.005174 		,'mililiter to cup				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'MLL','ML','L'		,1		,0.001			,'mililiter to cup				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'STKG','ST','KG'		,1		,0.005			,'sendok the to kilogram		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'STG','ST','G'		,1	 	,5 				,'sendok the to gram			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'STMG','ST','MG'		,1		,5000			,'sendok the to miligram		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'STSM','ST','SM'		,1		,0.333333333	,'sendok the to sendok makan	','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'STCUP','ST','CUP'	,1	 	,0.02857 		,'sendok the to cup				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'STL','ST','L'		,1		,0.005			,'sendok the to liter			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'STML','ST','ML'		,1	 	,5 				,'sendok the to mililiter		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'SMKG','SM','KG'		,1	 	,0.015 			,'endok the to kilogram			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'SMG','SM','G'		,1	 	,15 			,'sendok the to gram			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'SMMG','SM','MG'		,1	 	,15000 			,'sendok the to miligram		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'SMST','SM','ST'		,1		,3				,'sendok makan to sendok the	','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'SMCUP','SM','CUP'	,1		,0.085714286	,'sendok makan to cup			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'SML','SM','L'		,1	 	,0.015 			,'sendok makan to liter			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'SMML','SM','ML'		,1	 	,15 			,'sendok makan to mililiter		','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'CUPKG','CUP','KG'	,1		,0.18			,'cup to kilogram				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'CUPG','CUP','G'		,1	 	,175 			,'cup to gram					','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'CUPMG','CUP','MG'	,1	 	,175000 		,'cup to miligram				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'CUPST','CUP','ST'	,1		,35				,'cup to sendok the				','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'CUPSM','CUP','SM'	,1		,11.66666667	,'cup to sendok makan			','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'CUPL','CUP','L'		,1	 	,0.18 			,'cup to liter					','I','	Admin',	now()	union
select (REPLACE((SELECT uuid()), '-', '')),'CUPML','CUP','ML'	,1	 	,175 			,'cup to mililiter				','I','	Admin',	now();
												