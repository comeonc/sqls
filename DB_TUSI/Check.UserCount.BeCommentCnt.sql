SELECT
	uc.id,
	uc.comment_cnt,
	t.num
FROM
	tb_user_count uc
LEFT JOIN (
	SELECT
		tb_post.uid,
		count(tb_post.uid) num
	FROM
		tb_post_comment
	INNER JOIN tb_post
	WHERE
		tb_post_comment.`status` < 3
	GROUP BY
		tb_post.uid
) t ON uc.id = t.uid
WHERE
	(uc.comment_cnt > 0 AND t.uid IS NULL)
OR (uc.comment_cnt <> t.num)