SELECT
	date(max(add_date)) days,
	corp_id,
	info_id '批次',
	count(DISTINCT uid) '邀请',
	count(DISTINCT CASE WHEN has_read = 1 THEN uid END ) '已读',
	count(DISTINCT CASE WHEN operation = 1 THEN uid END ) '接受',
	format(100*count(DISTINCT CASE WHEN has_read = 1 THEN uid END )/count(DISTINCT uid),2) '阅读率%',
	format(100*count(DISTINCT CASE WHEN operation = 1 THEN uid END )/count(DISTINCT CASE WHEN has_read = 1 THEN uid END ),2) '接受率%',
	format(100*count(DISTINCT CASE WHEN operation = 1 THEN uid END )/count(DISTINCT uid),2) '总接受率%'
FROM
	tb_c2c_corp_invitation_101
WHERE 
	add_date>'2016-12-12'
GROUP BY
	info_id

order by days desc, corp_id,info_id desc