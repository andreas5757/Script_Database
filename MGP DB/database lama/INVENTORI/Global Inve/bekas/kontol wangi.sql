SET @sql = NULL;
SELECT
  GROUP_CONCAT(DISTINCT
    CONCAT(
      'MAX(IF(pa.nama = ''',
      nama,
      ''', p.value, NULL)) AS ',
      nama
    )
  ) INTO @sql
FROM special_param_tm;

SET @sql = CONCAT('SELECT a.*, ', @sql, ' 
                  FROM Inventory_TM a
                   JOIN special_param_tm AS pa 
                    on a.id_owner= pa.id_owner
                  JOIN special_param_detail_tm p
					on a.id=p.id_inventori
                    and pa.id= p.id_special
                   GROUP BY pa.id');
  select @sql;                 
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

     