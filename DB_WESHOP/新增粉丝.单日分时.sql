 SELECT
	HOUR (create_date) hours,
	count(DISTINCT open_id) total
FROM
	`tb_weshop_receive_message`
WHERE
	(
		type = 100
		OR (
			type = 102
			AND LOCATE('rscene_', content_add) > 0
		)
	)
AND create_date > '2016-09-12'
AND create_date < '2016-09-13'   -- 开始到结束，一天间隔
GROUP BY
	hours