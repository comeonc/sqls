SELECT
	days,
	auth_config_id,
	type,
	count(1) AS '次数',
	count(DISTINCT open_id) AS '人数'
FROM
	(
		SELECT
			date(create_date) days,
			open_id,
			auth_config_id,
			content_add,
			CASE content_add
		WHEN 'CUSTOM_QRCODE_100' THEN
			'扫描'
		WHEN 'qrscene_CUSTOM_QRCODE_100' THEN
			'关注'
		END AS type
		FROM
			`tb_wzp_receive_message`
		WHERE
			(
				content_add = 'CUSTOM_QRCODE_100'
				OR content_add = 'qrscene_CUSTOM_QRCODE_100'
			)
		AND create_date > '2016-07-22'
	) AS temp
GROUP BY
	days,
	auth_config_id,
	type
ORDER BY
	days ASC,
	auth_config_id ASC