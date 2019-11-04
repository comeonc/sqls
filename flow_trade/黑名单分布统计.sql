SELECT
	CASE
WHEN account_id = 0 THEN
	'全局'
ELSE
	account_id
END AS '定位' ,
 CASE type
WHEN 1 THEN
	'退订'
WHEN 2 THEN
	'投诉'
ELSE
	'未知'
END AS '类型' ,
 count(1) '计数'
FROM
	`sms_down_blacklist`
GROUP BY
	account_id ,
	type