SELECT
	u.id,
	u.open_id,
	ui.total_amount,
	u.dajie_uid,
	uv.nick_name,
	uv.sex,
	uv.city
FROM
	`tb_xtj_user_income` ui
INNER JOIN `tb_wzp_user` u ON ui.open_id = u.open_id
LEFT JOIN tb_wzp_user_wei uv ON ui.open_id = uv.open_id
WHERE
	u.auth_config_id = 111;