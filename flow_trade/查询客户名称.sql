SELECT
	sms_account.id ,
	admin_id ,
	admin.real_name ,
	customer_name ,
FROM
	sms_account
LEFT JOIN admin ON sms_account.admin_id = admin.id
WHERE
	sms_account.id IN(
		104147032 ,
		106281034 ,
		106874036 ,
		108592036 ,
		109002036 ,
		109269039 ,
		109276033 ,
		109282039 ,
		109292034 ,
		109306034 ,
		109316031 ,
		109321035 ,
		109323034
	)