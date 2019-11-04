INSERT IGNORE INTO category(
	level1 ,
	level2 ,
	level2_name ,
	level3 ,
	level3_name
) 
		SELECT
			201806_category_apply.level1 ,
			201806_category_apply.level2 ,
			201806_category_apply.level2_name ,
			201806_category_apply.level3 ,
			201806_category_apply.level3_name
		FROM
			201806_category_apply
		UNION
			SELECT
				201806_category_job.level1 ,
				201806_category_job.level2 ,
				201806_category_job.level2_name ,
				201806_category_job.level3 ,
				201806_category_job.level3_name
			FROM
				201806_category_job
			UNION
				SELECT
					201806_category_user.level1 ,
					201806_category_user.level2 ,
					201806_category_user.level2_name ,
					201806_category_user.level3 ,
					201806_category_user.level3_name
				FROM
					201806_category_user
