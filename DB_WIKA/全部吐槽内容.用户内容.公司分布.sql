SELECT
	tb_cyl_posting_info.corp_name AS '公司名称',
	DATE(
		tb_cyl_posting_info.create_date
	) AS '日期',
	count(tb_cyl_posting_info.corp_name) AS '数目'
FROM
	tb_cyl_posting_info
WHERE
	`status` = 0
AND type = 0
GROUP BY
	tb_cyl_posting_info.corp_name,
	DATE(
		tb_cyl_posting_info.create_date
	)
HAVING
	count(*) > 1
ORDER BY
	DATE(
		tb_cyl_posting_info.create_date
	) DESC,
	tb_cyl_posting_info.corp_name ASC
	