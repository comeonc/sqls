SELECT
	a.days,
	a.total '关注',
	b.total '取消关注',
	a.total - b.total '净增关注'
FROM
	(
		SELECT
			date(create_date) days,
			count(1) total
		FROM
			`tb_weshop_receive_message`
		WHERE
			type = 100
		GROUP BY
			days
	) AS a
LEFT JOIN (
	SELECT
		date(create_date) days,
		count(1) total
	FROM
		`tb_weshop_receive_message`
	WHERE
		type = 101
	GROUP BY
		days
) AS b ON a.days = b.days
ORDER BY
	days DESC