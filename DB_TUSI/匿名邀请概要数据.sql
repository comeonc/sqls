SELECT
	date(create_date) days,
	count(DISTINCT uid) '参与人数',
	count(uid) '发送次数',
	count(DISTINCT phone) '发送手机号'
FROM
	`tb_sms_info` s
GROUP BY
	days