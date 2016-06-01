(
	SELECT
		'封禁已提现',
		sum(a.total_withdraw)
	FROM
		DB_WESHOP.tb_weshop_user u
	INNER JOIN tb_wallet_account a ON u.id = a.project_uid
	AND a.project_id = 2
	WHERE
		u.audit_status = 5
)
UNION
	(
		SELECT
			'正常已提现',
			sum(a.total_withdraw)
		FROM
			DB_WESHOP.tb_weshop_user u
		INNER JOIN tb_wallet_account a ON u.id = a.project_uid
		AND a.project_id = 2
		WHERE
			u.audit_status <> 5
	)