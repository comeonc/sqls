SELECT
	CASE type
		WHEN 0 THEN
			'iOS'
		WHEN 1 THEN
			'安卓'
		ELSE
			'未知'
	END AS '客户端类型',
	CASE identityType
		WHEN 0 THEN
			'默认'
		WHEN 1 THEN
			'学生'
		WHEN 2 THEN
			'白领'
		ELSE
			'未知'
	END AS '用户身份',
	count(1) AS '数目'
FROM
	tb_user_device_token
WHERE
	client_version >= '3.5.1'
GROUP BY
	type,
	identityType