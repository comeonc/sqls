SELECT
	-- 日期
	a.days,
	-- 当天新到访独立微信用户
	a.total '新OpenID',
	-- 当天新到访有uid
	a.uids '有uid',
	-- 当前有新关注行为用户数
	b.total '新关注',
	-- 当前新关注又取消关注用户数   
	c.total '取消关注',
	-- 当天到访，还保持挂住状态
	d.total '保持关注',
	-- 当天到访，还保持挂住状态，且有uid
	d.uids '已登录保持关注'
FROM
	(
		SELECT
			date(create_date) days,
			count(1) total,
			count(DISTINCT dajie_uid) AS uids
		FROM
			tb_weshop_user
		WHERE
			create_date > '2016-09-07' -- 最多从3天前开始
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
		create_date > '2016-09-07'
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
		update_date > '2016-09-07' -- 最多从3天前开始
	AND subscribe <> 1
	GROUP BY
		days
) AS c ON a.days = c.days
LEFT JOIN (
	SELECT
		date(create_date) days,
		count(1) total,
		count(DISTINCT dajie_uid) AS uids
	FROM
		tb_weshop_user
	WHERE
		create_date > '2016-09-07' -- 最多从3天前开始
	AND tb_weshop_user.subscribe = 1
	GROUP BY
		days
) AS d ON a.days = d.days
ORDER BY
	a.days DESC