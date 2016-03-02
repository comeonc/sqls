SELECT
	'活动二维码扫描',
	count(open_id) AS '次数',
	count(DISTINCT open_id) AS '人数'
FROM
	tb_wzp_receive_message
WHERE
	id > 145965
AND (
	content_add = 'qrscene_region_i_660002'
	OR content_add = 'region_i_660002'
)