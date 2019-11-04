SELECT
	category.level1 ,
	category.level2 ,
	category.level2_name ,
	category.level3 ,
	category.level3_name ,
	201806_category_apply.apply_count ,
	201806_category_apply.apply_users ,
	201806_category_job.job_count ,
	201806_category_user.count user_count
FROM
	category 
LEFT JOIN 201806_category_apply ON category.level3 = 201806_category_apply.level3
LEFT JOIN 201806_category_job ON category.level3 = 201806_category_job.level3
LEFT JOIN 201806_category_user ON category.level3 = 201806_category_user.level3