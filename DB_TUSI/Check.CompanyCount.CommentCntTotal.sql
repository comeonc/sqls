SELECT
	cc.id,cc.comment_cnt_total,t.num
FROM
	tb_company_count cc
LEFT JOIN (
	SELECT
		tb_post_company.company_id,
		COUNT(tb_post_company.company_id) num
	FROM
		tb_post_comment
	INNER JOIN tb_post_company ON tb_post_comment.post_id = tb_post_company.post_id
	WHERE
		tb_post_comment.`status` < 3
	AND tb_post_company.`status` < 3
	GROUP BY
		tb_post_company.company_id
) t ON cc.id = t.company_id
WHERE
	(t.num IS NULL AND cc.comment_cnt_total > 0)
OR (cc.comment_cnt_total <> t.num)