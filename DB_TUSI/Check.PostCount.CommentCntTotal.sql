SELECT
	pc.id,
	pc.comment_cnt_total,
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
		 `status` < 3
	GROUP BY
		post_id
) t ON pc.id = t.post_id
WHERE
	(
		pc.comment_cnt_total > 0
		AND t.post_id IS NULL
	)
OR (pc.comment_cnt_total <> t.num)