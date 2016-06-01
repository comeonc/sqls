(
	SELECT
		'待提现',
		sum(a.total_profit)
	FROM
		DB_WESHOP.tb_weshop_user u
	INNER JOIN tb_wallet_account a ON u.id = a.project_uid
	AND a.project_id = 2
	WHERE
		u.audit_status <> 5
)
UNION
	(
		SELECT
			'待提现<0',
			sum(total_profit)
		FROM
			DB_WESHOP.tb_weshop_user u
		INNER JOIN tb_wallet_account a ON u.id = a.project_uid
		AND a.project_id = 2
		WHERE
			u.audit_status <> 5
		AND total_profit < 0
	)
UNION
	(
		SELECT
			'待提现>0',
			sum(total_profit)
		FROM
			DB_WESHOP.tb_weshop_user u
		INNER JOIN tb_wallet_account a ON u.id = a.project_uid
		AND a.project_id = 2
		WHERE
			u.audit_status <> 5
		AND total_profit > 0
	)
UNION
	(
		SELECT
			'待提现>100',
			sum(total_profit)
		FROM
			DB_WESHOP.tb_weshop_user u
		INNER JOIN tb_wallet_account a ON u.id = a.project_uid
		AND a.project_id = 2
		WHERE
			u.audit_status <> 5
		AND total_profit > 100
	)
UNION
	(
		SELECT
			'待提现>100人数',
			count(1)
		FROM
			DB_WESHOP.tb_weshop_user u
		INNER JOIN tb_wallet_account a ON u.id = a.project_uid
		AND a.project_id = 2
		WHERE
			u.audit_status <> 5
		AND total_profit > 100
	)
UNION
	(
		SELECT
			'待提现<0人数',
			count(1)
		FROM
			DB_WESHOP.tb_weshop_user u
		INNER JOIN tb_wallet_account a ON u.id = a.project_uid
		AND a.project_id = 2
		WHERE
			u.audit_status <> 5
		AND total_profit < 0
	)