SELECT
	SUBSTRING_INDEX(content_add, "_" ,- 1) AS '公司id',
	count(1) AS '被扫描次数',
	count(DISTINCT open_id) '扫描人数'
FROM
	tb_wzp_receive_message
WHERE
	id > 145965
AND auth_config_id = 254
AND type = 102
GROUP BY
	SUBSTRING_INDEX(content_add, "_" ,- 1)
ORDER BY
	count(1) DESC