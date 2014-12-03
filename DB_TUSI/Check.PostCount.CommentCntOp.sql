SELECT
	pc.id,
	pc.comment_cnt_op,
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
		type = 2
	AND `status` < 3
	GROUP BY
		post_id
) t ON pc.id = t.post_id
WHERE
	(
		pc.comment_cnt_op > 0
		AND t.post_id IS NULL
	)
OR (pc.comment_cnt_op <> t.num)