SELECT
	date(create_date) days ,
	count(1) '总查看' ,
	count(DISTINCT question_id) '被查看问题'
FROM
	tb_proask_view
GROUP BY
	days
ORDER BY
	days DESC