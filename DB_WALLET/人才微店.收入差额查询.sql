SELECT
	a.project_uid,
	a.total_income '总收入',
	r.total_income '明细收入'
FROM
	tb_wallet_account a
LEFT JOIN (
	SELECT
		project_uid,
		sum(fee) total_income
	FROM
		tb_wallet_profit
	WHERE
		project_id = 2
	AND task_id >0 and `status`=1
	GROUP BY
		project_uid
) r ON a.project_uid = r.project_uid
AND a.project_id = 2
WHERE
	a.total_income <> r.total_income