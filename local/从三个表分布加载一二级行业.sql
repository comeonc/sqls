INSERT IGNORE INTO industry(
	level1 ,
	level1_name ,
	level2 ,
	level2_name
) SELECT
	level1 ,
	level1_name ,
	level2 ,
	level2_name
FROM
	(
		(
			SELECT
				level1 ,
				level1_name ,
				level2 ,
				level2_name
			FROM
				`201809_industry_apply`
		)
		UNION
			(
				SELECT
					level1 ,
					level1_name ,
					level2 ,
					level2_name
				FROM
					`201809_industry_job`
			)
		UNION
			(
				SELECT
					level1 ,
					level1_name ,
					level2 ,
					level2_name
				FROM
					`201809_industry_user`
			)
	) AS t
GROUP BY
	t.level1 ,
	t.level1_name ,
	t.level2 ,
	t.level2_name
ORDER BY
	t.level1 ASC ,
	t.level2 ASC