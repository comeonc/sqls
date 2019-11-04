SELECT
	'2018-11-13' AS '日期',
	ca.admin_id ,
	### f.submit_count '总提交条',
	### f.error_count '驳回条',
	### f.pending_count,
	### f.success_count '成功条',
	### f.fail_count '失败条',

	f.total_submit '总提交片',
	f.total_error '驳回片',
	### f.total_pending,
	f.total_success '成功片',
	f.total_fail '失败片',

	f.total_submit-f.total_error-f.total_success-f.total_fail '未知',
	ca.total_blance '日开始账务',
	cb.total_blance '日结束账务',
	ca.total_blance - cb.total_blance AS '当日扣费',
	ca.total_recharge - cb.total_recharge AS '当日充值',
	ca.total_return - cb.total_return AS '当日返量',
	(ca.total_blance - cb.total_blance) - (ca.total_recharge - cb.total_recharge) - (ca.total_return - cb.total_return) AS '业务扣费' ,
	f.f_fee_total as '业务计费',
	(ca.total_blance - cb.total_blance) - (ca.total_recharge - cb.total_recharge) -(ca.total_return - cb.total_return) + f.f_fee_total as '计费差'
FROM (SELECT
	admin_id ,	total_blance ,	total_recharge ,	total_return
	FROM admin_capital_capture
	WHERE stat_date = '2018-11-14'
	) AS ca
LEFT JOIN(SELECT
	admin_id ,	total_blance ,	total_recharge ,	total_return
	FROM admin_capital_capture
	WHERE stat_date = '2018-11-13'
) AS cb ON ca.admin_id = cb.admin_id
LEFT JOIN( SELECT
	admin_id ,
	sum(t.submit_count) as submit_count,
	sum(t.error_count) as error_count,
	sum(t.pending_count) as pending_count,
	sum(t.success_count) as success_count,
	sum(t.fail_count) as fail_count,

	sum(t.submit_piece) as total_submit,
	sum(t.error_piece) as total_error,
	sum(t.pending_piece) as total_pending,
	sum(t.success_piece) as total_success,
	sum(t.fail_piece) as total_fail,
	sum(fee_total) f_fee_total
	FROM ( SELECT sms_account_using_daily.admin_id ,
		sms_account_using_daily.submit_count,sms_account_using_daily.error_count,sms_account_using_daily.pending_count,sms_account_using_daily.success_count,sms_account_using_daily.fail_count,
		sms_account_using_daily.submit_piece,sms_account_using_daily.error_piece,sms_account_using_daily.pending_piece,sms_account_using_daily.success_piece,sms_account_using_daily.fail_piece,
		( sms_account_using_daily.submit_piece_cmcc - sms_account_using_daily.error_piece_cmcc) * sms_account_profile.sms_price_cmcc +
		( sms_account_using_daily.submit_piece_unicom - sms_account_using_daily.error_piece_unicom ) * sms_account_profile.sms_price_unicom +
		( sms_account_using_daily.submit_piece_telecom - sms_account_using_daily.error_piece_telecom) * sms_account_profile.sms_price_telecom AS fee_total 
		FROM sms_account_using_daily LEFT JOIN sms_account_profile ON sms_account_using_daily.customer_id = sms_account_profile.id 
		left join sms_account on sms_account_using_daily.customer_id = sms_account.id 
		WHERE stat_date = '2018-11-13' 
		) AS t GROUP BY admin_id
) AS f ON ca.admin_id = f.admin_id
where abs((((ca.total_blance - cb.total_blance) - (ca.total_recharge - cb.total_recharge) - (ca.total_return - cb.total_return) + f.f_fee_total))) >10000