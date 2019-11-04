SELECT
	date(sign_date) '日期' ,
	c.city_id '城市' ,
	s.schedule_id '宣讲会' ,
	count(1) '数目'
FROM
	`tb_schedule_sign` s
LEFT JOIN tb_schedule_config c ON s.schedule_config_id = c.id
GROUP BY
	c.city_id ,
	s.schedule_id ,
	date(sign_date)
ORDER BY
	`日期` DESC ,
	`城市` ASC ,
	`宣讲会` ASC;