SELECT
	pc.id
FROM
	tb_post_count pc
LEFT JOIN (
	SELECT
		post_id,
		count(post_id) num
	FROM
		tb_post_praise
	WHERE
		`status` = 1
	GROUP BY
		post_id
) t ON pc.id = t.post_id
WHERE
	(
		pc.praise_cnt > 0
		AND t.post_id IS NULL
	)
OR (pc.praise_cnt <> t.num)