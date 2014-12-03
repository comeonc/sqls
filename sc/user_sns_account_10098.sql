SELECT user_sns_account.u_id, 
	user_sns_account.sina_access_token, 
	user_sns_account.sina_access_token_expired, 
	user_sns_account.sina_access_token_secret, 
	user_sns_account.sina_access_token_created
FROM user_sns_account
WHERE u_id=10098