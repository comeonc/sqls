SELECT
	uc.id,
	uc.post_cnt,
	t.num
FROM
	tb_user_count uc
LEFT JOIN (
	SELECT
		uid,
		count(uid) num
	FROM
		tb_post
	WHERE
		`status` < 3
	GROUP BY
		uid
) t ON uc.id = t.uid
WHERE
	(uc.post_cnt > 0 AND t.uid IS NULL)
OR (uc.post_cnt <> t.num)