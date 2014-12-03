SELECT
	u.id,
	u.`name`,
	u.gender,
	u.company_id,
	u.channel,
	u.create_date,
	p.num
FROM
	tb_user u
INNER JOIN (
	SELECT
		uid,
		count(uid) num
	FROM
		tb_post
	WHERE
		user_type = 1
	AND `status` < 3
	GROUP BY
		uid
	HAVING
		count(uid) > 1
) p ON u.id = p.uid
ORDER BY
	num DESC