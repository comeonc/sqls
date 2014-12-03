SELECT
	uc.id,
	uc.reply_cnt,
	t.num
FROM
	tb_user_count uc
LEFT JOIN (
	SELECT
		uid,
		count(uid) num
	FROM
		tb_post_comment
	WHERE
		`status` < 3
	AND parent_id > 0
	GROUP BY
		uid
) t ON uc.id = t.uid
WHERE
	(uc.reply_cnt > 0 AND t.uid IS NULL)
OR (uc.reply_cnt <> t.num)