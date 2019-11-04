SELECT
	date(create_date) days ,
	count(1) '总提问数' ,
	count(DISTINCT project_id) '项目'
FROM
	`tb_proask_question`
GROUP BY
	days
ORDER BY
	days DESC;