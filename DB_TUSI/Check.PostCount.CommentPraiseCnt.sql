SELECT
	pc.id
FROM
	tb_post_count pc
LEFT JOIN (
	SELECT
		post_id,
		count(post_id) num
	FROM
		tb_comment_praise
	WHERE
		`status` = 1
	GROUP BY
		post_id
) t ON pc.id = t.post_id
WHERE
	(
		pc.comment_praise_cnt > 0
		AND t.post_id IS NULL
	)
OR (pc.comment_praise_cnt <> t.num)