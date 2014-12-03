SELECT DISTINCT
	pc.id
FROM
	tb_post_count pc
INNER JOIN tb_post_topic pt ON pc.id = pt.post_id
WHERE
	pc.daily_hot <> pt.daily_hot
#OR pc.weekly_hot <> pt.weekly_hot
#OR pc.monthly_hot <> pt.monthly_hot
#OR pc.total_hot <> pt.total_hot


union 


SELECT DISTINCT
	pc.id
FROM
	tb_post_count pc
INNER JOIN tb_post_company pt ON pc.id = pt.post_id
WHERE
	pc.daily_hot <> pt.daily_hot
OR pc.weekly_hot <> pt.weekly_hot
OR pc.monthly_hot <> pt.monthly_hot
OR pc.total_hot <> pt.total_hot

union 


SELECT DISTINCT
	pc.id
FROM
	tb_post_count pc
INNER JOIN tb_post_industry pt ON pc.id = pt.post_id
WHERE
	pc.daily_hot <> pt.daily_hot
OR pc.weekly_hot <> pt.weekly_hot
OR pc.monthly_hot <> pt.monthly_hot
OR pc.total_hot <> pt.total_hot

union

SELECT DISTINCT
	pc.id
FROM
	tb_post_count pc
INNER JOIN tb_post_geo pt ON pc.id = pt.id
WHERE
	pc.daily_hot <> pt.daily_hot
OR pc.weekly_hot <> pt.weekly_hot
OR pc.monthly_hot <> pt.monthly_hot
OR pc.total_hot <> pt.total_hot