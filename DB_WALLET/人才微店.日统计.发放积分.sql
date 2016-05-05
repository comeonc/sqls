SELECT
	date(create_date) days,
	task_id '类型',
	sum(fee) '发放积分'
FROM
	tb_wallet_profit
WHERE
	project_id = 2
AND task_id > 0
AND create_date > '2016-05-01'
GROUP BY
	task_id,
	days
ORDER BY
	days DESC,
	task_id ASC