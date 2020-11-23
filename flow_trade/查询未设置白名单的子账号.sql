SELECT
	a.company_id '公司ID' ,
	c.`name` ,
	a.admin_id '登陆账号ID' ,
	m.real_name ,
	a.id '子账号id' ,
	a.app_id ,
	a.customer_name ,
	a.area_id '分区' ,
	ip_whitelist
FROM
	sms_account a
INNER JOIN sms_account_profile p ON a.id = p.id
INNER JOIN company c ON a.company_id = c.id
INNER JOIN admin m ON a.admin_id = m.id
WHERE
	a.`status` = 1
AND LENGTH(ip_whitelist) < 10
ORDER BY
	c.id ASC ,
	m.id ASC ,
	a.id ASC