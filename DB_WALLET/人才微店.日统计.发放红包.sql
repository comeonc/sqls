SELECT
	date(create_date) days,
	payment_status '发送状态',
	count(DISTINCT project_uid) '发送人数',
	count(1) '发送次数',
	sum(total_amount) '发放金额(分)'
FROM
	`tb_weixin_redpack`
WHERE
	project_id = 2
AND create_date > '2016-08-01'
AND payment_status <> 0
GROUP BY
	days,
	payment_status
ORDER BY
	days DESC,
	payment_status DESC