SELECT
	add_date AS '日期',
	CONCAT(add_hour, ':', add_minute) AS '时间',
	count(*) AS '留言次数'
FROM
	(
		SELECT
			DATE(add_time) add_date,
			DATE_FORMAT(add_time, "%Y-%c-%d %H") AS add_hour,
			floor(MINUTE(add_time) / 10) * 10 AS add_minute
		FROM
			weixin_user_content
		WHERE
			weixin_public_account_id = 'gh_131f396b0daf'
		AND add_time > '2013-03-11'
	) AS a
GROUP BY
	add_hour,
	add_minute