SELECT
	c.id,
	c.corp_id,
	c.short_name,
	i.id '行业Id',
	i.parent_id '行业父级',
	i.`name`,
	ci.create_date
FROM
	tb_company_industry ci
INNER JOIN tb_company c ON ci.company_id = c.id
INNER JOIN tb_position_industry i ON ci.industry_id = i.id
ORDER BY
	ci.create_date DESC