SELECT
	id ,
	orig_id ,
	admin_id ,
	sms_price_cmcc ,
	sms_price_unicom ,
	sms_price_telecom ,
	create_date
FROM
	backup_sms_account_profile
WHERE
	orig_id = 108899031
ORDER BY
	id DESC
LIMIT 300