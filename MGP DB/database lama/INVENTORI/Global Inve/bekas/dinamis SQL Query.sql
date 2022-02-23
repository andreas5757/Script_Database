SET @sqlJoin = NULL;
	SET @sqlColumn = NULL;

	SELECT
	  GROUP_CONCAT(DISTINCT
		CONCAT('left outer join (select *from (
	select id_inventori,IF(a.nama = ''',nama,''', b.value, NULL) AS ',nama,'  from special_param_tm a
	join special_param_detail_tm b
	on a.id = b.id_special) as param
	where param.',nama,' is not null
	) as ',nama,'param on inven.id = ',nama,'param.id_inventori
				'
		)
		SEPARATOR ' '
	  ) INTO @sqlJoin
	FROM special_param_tm;

	SELECT
	  GROUP_CONCAT(DISTINCT
		CONCAT(nama,'param.',nama
		)
	  ) INTO @sqlColumn
	FROM special_param_tm;

	SET @sql = CONCAT('select inven.id, 				
	inven.id_owner,
	inven.id_outlet,
	inven.kategori_item,
	inven.jenis_item,
	inven.nama_item,
	inven.harga,
	inven.stock,
	inven.min_stock,
	inven.max_stock
	,',@sqlColumn,' from Inventory_TM inven '
	,@sqlJoin, ';'
	);
					   
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;