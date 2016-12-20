SELECT
	-- 日期
	a.days,
	-- 当前关注总用户数
	a.total '关注',
	-- 当前取消关注总用户数 
	b.total '取消关注',
	a.total - b.total '净增关注'
FROM
	(
		SELECT
			date(create_date) days,
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
		AND create_date > '2016-09-07' -- 最多从3天前开始
		GROUP BY
			days
	) AS a
LEFT JOIN (
	SELECT
		date(create_date) days,
		count(DISTINCT open_id) total
	FROM
		`tb_weshop_receive_message`
	WHERE
		create_date > '2016-09-07' -- 最多从3天前开始
	AND type = 101
	GROUP BY
		days
) AS b ON a.days = b.days
ORDER BY
	days DESC