SELECT
	date(max(add_date)) days,
	corp_id,
	info_id '批次',
	count(1) '邀请',
	sum(has_read) '已读',
	sum(CASE operation WHEN 1 THEN 1 ELSE 0 END ) '接受',
	format(100*sum(has_read)/count(1),2) '阅读率%',
	format(100*sum(CASE operation WHEN 1 THEN 1 ELSE 0 END )/sum(has_read),2) '接受率%',
	format(100*sum(CASE operation WHEN 1 THEN 1 ELSE 0 END )/count(1),2) '总接受率%'
FROM
	tb_c2c_corp_invitation_101
WHERE 
	add_date>'2016-12-12'
GROUP BY
	info_id

order by days desc, corp_id,info_id desc