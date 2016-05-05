SELECT
	a.project_uid,
	a.total_withdraw '总提现',
	r.total_withdraw '明细提现'
FROM
	tb_wallet_account a
LEFT JOIN (
	SELECT
		project_uid,
		sum(total_amount) total_withdraw
	FROM
		`tb_weixin_redpack`
	WHERE
		project_id = 2
	AND payment_status = 101
	GROUP BY
		project_uid
) r ON a.project_uid = r.project_uid
AND a.project_id = 2
WHERE
	a.total_withdraw <> r.total_withdraw