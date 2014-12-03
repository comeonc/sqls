SELECT
	pc.id,
	pc.reply_cnt,
	t.num
FROM
	tb_post_count pc
LEFT JOIN (
	SELECT
		post_id,
		count(post_id) num
	FROM
		tb_post_comment
	WHERE
		type = 1
	AND `status` < 3
	AND parent_id > 0
	GROUP BY
		post_id
) t ON pc.id = t.post_id
WHERE
	(
		pc.reply_cnt > 0
		AND t.post_id IS NULL
	)
OR (pc.reply_cnt <> t.num)