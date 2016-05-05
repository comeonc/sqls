SELECT
	date(create_date) days,
	count(DISTINCT project_uid) '发送人数',
	count(1) '发送次数',
	sum(total_amount) '发放金额(分)'
FROM
	`tb_weixin_redpack`
WHERE
	project_id = 1
AND payment_status = 101
GROUP BY days;