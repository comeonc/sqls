SELECT
	focus,
	login,
	count(1) num
FROM
	(
		SELECT
			CASE focus_status
		WHEN 0 THEN
			'未关注'
		WHEN 1 THEN
			'已关注'
		WHEN 2 THEN
			'取消关注'
		END AS focus,
		CASE
	WHEN dajie_uid > 0 THEN
		'已登录'
	ELSE
		'未登录'
	END AS login
	FROM
		tb_wzp_user
	) AS tmp
GROUP BY
	focus,
	login
ORDER BY
	focus,
	login