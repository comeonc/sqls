SELECT
	a.times,
	b.corp_id,
	b.corp_name,
	CASE b.device_type
		WHEN 0 THEN
			'无效'
		WHEN 1 THEN
			'IOS'
		WHEN 2 THEN
			'android'
		WHEN 3 THEN
			'PC'
		ELSE
			'未知'
		END AS '设备类型',
 count(DISTINCT a.open_id) '扫描独立用户',
 count(DISTINCT a.focus) '扫码带关注'
FROM
	(
		SELECT
			date(create_date) times,
			open_id,
			REPLACE (content_add, "qrscene_", "") AS qrcode,
			CASE
		WHEN LOCATE('rscene_', content_add) > 0 THEN
			open_id
		ELSE
			0
		END AS focus
		FROM
			tb_weshop_receive_message
		WHERE
			create_date > '2016-09-14' and create_date < '2016-09-15	'
		AND type = 102
		AND LOCATE('special', content_add) = 0
	) a
LEFT JOIN tb_weshop_qrcode b ON a.qrcode = b.id
WHERE
	b.corp_id > 0
GROUP BY
	b.corp_id,
	a.times,
	device_type
ORDER BY
	a.times DESC,
	b.corp_id