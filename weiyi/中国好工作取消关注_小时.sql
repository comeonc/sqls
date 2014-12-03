SELECT
	add_date AS '日期',
	add_hour AS '小时',
	CONCAT(add_date, ' ', add_hour) AS '时间',
	count(add_date) AS '粉丝数'
FROM
	(
		SELECT
			DATE(add_time) add_date,
			HOUR (add_time) add_hour
		FROM
			weixin_user_account
		WHERE
			weixin_public_account_id = 'gh_131f396b0daf'
		AND flag >= 5
	) AS a
GROUP BY
	a.add_date,
	a.add_hour
ORDER BY
	add_date ASC,
	add_hour ASC;