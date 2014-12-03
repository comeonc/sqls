SELECT
	cc.id
FROM
	tb_company_count cc
LEFT JOIN (
	SELECT
		company_id,
		COUNT(company_id) num
	FROM
		tb_post_company
	WHERE
		user_type = 2
	AND `status` < 3
	AND type < 3
	GROUP BY
		company_id
) t ON cc.id = t.company_id
WHERE
	(t.num IS NULL AND cc.post_at_cnt_op > 0)
OR (cc.post_at_cnt_op <> t.num)