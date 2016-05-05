SELECT
	a.project_uid,
	a.total_income '总收入',
	a.total_withdraw '总提现',
	a.total_profit '可提现',
	a.total_income - a.total_withdraw - a.total_profit '差额'
FROM
	tb_wallet_account a
WHERE
	a.project_id = 2
AND a.total_income - a.total_withdraw <> a.total_profit