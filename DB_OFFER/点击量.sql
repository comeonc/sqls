SELECT
	date(create_date) '日期' ,
	paramp '渠道' ,
	paramc '批次' ,
	count(DISTINCT uid) 'UVID点击'
FROM
	`tb_course_sign_wish`
GROUP BY
	`日期` ,
	`渠道` ,
	`批次`;