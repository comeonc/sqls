SELECT
	industry.level1 ,
	industry.level1_name ,
	industry.level2 ,
	industry.level2_name,
	201809_industry_apply.apply_count ,
	/*201809_industry_apply.apply_users ,*/
	201809_industry_job.count job_count ,
	201809_industry_user.count user_count
FROM
	industry
LEFT JOIN 201809_industry_apply ON industry.level1 = 201809_industry_apply.level1 AND industry.level2 = 201809_industry_apply.level2
LEFT JOIN 201809_industry_job ON industry.level1 = 201809_industry_job.level1 AND industry.level2 = 201809_industry_job.level2
LEFT JOIN 201809_industry_user ON industry.level1 = 201809_industry_user.level1 AND industry.level2 = 201809_industry_user.level2