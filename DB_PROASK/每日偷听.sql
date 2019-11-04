SELECT
	date(create_date) days ,
	count(1) '总偷听' ,
	count(DISTINCT question_id) '被偷听问题'
FROM
	tb_proask_listen
GROUP BY
	days
ORDER BY
	days DESC