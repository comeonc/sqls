SELECT
	credit.project_id ,
	credit.uid ,
	credit.total_usable '当前积分',
	info.user_name '用户名称',
	info.email '用户邮箱'
FROM
	`tb_special_credit` credit
LEFT JOIN tb_referral_verify_info info ON credit.project_id = info.project_id
WHERE
	credit.auth_config_id = 501;