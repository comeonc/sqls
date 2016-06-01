SELECT
	a.days,
	a.total '新OpenID',
	b.total '新关注',
	c.total '取消关注'
FROM
	(
		SELECT
			date(create_date) days,
			count(1) total
		FROM
			tb_weshop_user
		WHERE
			create_date > '2016-05-01'
		GROUP BY
			days
	) AS a
LEFT JOIN (
	SELECT
		date(create_date) days,
		count(1) total
	FROM
		tb_weshop_user_wei
	WHERE
		create_date > '2016-05-01'
	GROUP BY
		days
) AS b ON a.days = b.days
LEFT JOIN (
	SELECT
		date(update_date) days,
		count(1) total
	FROM
		tb_weshop_user_wei
	WHERE
		update_date > '2016-05-01'
		and subscribe<>1
	GROUP BY
		days
) AS c ON a.days = c.days
ORDER BY
	a.days DESC