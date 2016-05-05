UPDATE tb_wallet_account
SET total_income = 0;

UPDATE tb_wallet_account
SET total_withdraw = 0;


UPDATE tb_wallet_account a,
 (
	SELECT
		project_uid,
		sum(fee) total
	FROM
		tb_wallet_profit
	WHERE
		project_id = 2
	AND task_id > 0
	AND `status` = 1
	GROUP BY
		project_uid
) b
SET a.total_income = b.total
WHERE
	a.project_id = 2
AND a.project_uid = b.project_uid;


UPDATE tb_wallet_account a,
 (
	SELECT
		project_uid,
		sum(total_amount) total
	FROM
		tb_weixin_redpack
	WHERE
		project_id = 2
	AND payment_status = 101
	GROUP BY
		project_uid
) b
SET a.total_withdraw = b.total
WHERE
	a.project_id = 2
AND a.project_uid = b.project_uid;

UPDATE tb_wallet_account
SET total_profit = total_income - total_withdraw;