SELECT
	config.id, config.app_id,config.app_name,config.create_date
FROM
	`tb_weixin_auth_config` AS config
INNer JOIN(
	SELECT DISTINCT
		auth_config_id
	FROM
		`tb_wzp_menu_info`
	WHERE
		type = 8
	OR type = 7
) AS auth ON config.id = auth.auth_config_id where config.`status`=1 order by config.create_date desc