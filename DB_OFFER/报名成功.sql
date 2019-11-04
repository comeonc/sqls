SELECT
	date(create_date) '日期' ,
	paramp '渠道' ,
	paramc '批次' ,
	count(DISTINCT course_user_phone) '手机去重报名'
FROM
	`tb_course_sign`
GROUP BY
	`日期` ,
	`渠道` ,
	`批次`;