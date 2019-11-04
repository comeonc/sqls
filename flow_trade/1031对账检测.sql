SELECT
	c1101.admin_id ,
	c1101.total_blance AS blance110 ,
	c1101.total_recharge AS recharge1101 ,
	c1101.total_return AS return1101 ,
	c1031.total_blance AS blance1031 ,
	c1031.total_recharge AS recharge1031 ,
	c1031.total_return AS return1031 ,
	u1031.sum_submit_count ,
	u1031.sum_error_count ,
	u1031.sum_success_count ,
	u1031.sum_fail_count ,
	u1031.sum_submit_piece ,
	u1031.sum_error_piece ,
	u1031.sum_success_piece ,
	u1031.sum_fail_piece ,
	a1031.sum_total_sms_mt AS a1031_total_sms_mt ,
	a1031.sum_total_sms_piece_mt AS a1031_total_sms_piece_mt ,
	a1031.sum_total_blance AS a1031_total_blance ,
	a1031.sum_using_sms_mt AS a1031_using_sms_mt ,
	a1031.sum_using_blance AS a1031_using_blance ,
	a1031.sum_using_return AS a1031_using_return ,
	f1031.f_fee_cmcc ,
	f1031.f_fee_unicom ,
	f1031.f_fee_telecom ,
	f1031.f_fee_total
FROM
	(
		SELECT
			admin_agency_id ,
			admin_id ,
			stat_date ,
			total_blance ,
			total_recharge ,
			total_return
		FROM
			admin_capital_capture
		WHERE
			stat_date = '2018-11-01'
	) AS c1101
LEFT JOIN(
	SELECT
		admin_agency_id ,
		admin_id ,
		stat_date ,
		total_blance ,
		total_recharge ,
		total_return
	FROM
		admin_capital_capture
	WHERE
		stat_date = '2018-10-31'
) AS c1031 ON c1101.admin_id = c1031.admin_id
LEFT JOIN(
	SELECT
		admin_id ,
		sum(submit_count) sum_submit_count ,
		sum(error_count) sum_error_count ,
		sum(success_count) sum_success_count ,
		sum(fail_count) sum_fail_count ,
		sum(submit_piece) sum_submit_piece ,
		sum(error_piece) sum_error_piece ,
		sum(success_piece) sum_success_piece ,
		sum(fail_piece) sum_fail_piece FROM sms_account_using_daily WHERE stat_date = '2018-10-31' GROUP BY admin_id
) AS u1031 ON c1101.admin_id = u1031.admin_id LEFT JOIN(
	SELECT admin_id ,
	sum(total_sms_mt) AS sum_total_sms_mt ,
	sum(total_sms_piece_mt) AS sum_total_sms_piece_mt ,
	sum(total_blance) AS sum_total_blance ,
	sum(using_sms_mt) AS sum_using_sms_mt ,
	sum(using_blance) AS sum_using_blance ,
	sum(using_return) AS sum_using_return FROM `sms_account_capital_daily` WHERE stat_date = '2018-10-31' GROUP BY admin_id
) AS a1031 ON c1101.admin_id = a1031.admin_id LEFT JOIN(
	SELECT admin_id ,
	sum(fee_cmcc) f_fee_cmcc ,
	sum(fee_unicom) f_fee_unicom ,
	sum(fee_telecom) f_fee_telecom ,
	sum(fee_total) f_fee_total FROM(
		SELECT sms_account_using_daily.admin_id ,
		sms_account_using_daily.customer_id ,
		sms_account_profile.sms_price_cmcc price_cmcc ,
		sms_account_profile.sms_price_unicom price_unicom ,
		sms_account_profile.sms_price_telecom price_telecom ,
		sms_account_using_daily.submit_piece_cmcc - sms_account_using_daily.error_piece_cmcc AS piece_cmcc ,
		sms_account_using_daily.submit_piece_unicom - sms_account_using_daily.error_piece_unicom AS piece_unicom ,
		sms_account_using_daily.submit_piece_telecom - sms_account_using_daily.error_piece_telecom AS piece_telecom ,
		sms_account_using_daily.submit_piece - sms_account_using_daily.error_piece AS piece_total ,
		(
			sms_account_using_daily.submit_piece_cmcc - sms_account_using_daily.error_piece_cmcc
		) * sms_account_profile.sms_price_cmcc AS fee_cmcc ,
		(
			sms_account_using_daily.submit_piece_unicom - sms_account_using_daily.error_piece_unicom
		) * sms_account_profile.sms_price_unicom AS fee_unicom ,
		(
			sms_account_using_daily.submit_piece_telecom - sms_account_using_daily.error_piece_telecom
		) * sms_account_profile.sms_price_telecom AS fee_telecom ,
		(
			sms_account_using_daily.submit_piece_cmcc - sms_account_using_daily.error_piece_cmcc
		) * sms_account_profile.sms_price_cmcc +(
			sms_account_using_daily.submit_piece_unicom - sms_account_using_daily.error_piece_unicom
		) * sms_account_profile.sms_price_unicom +(
			sms_account_using_daily.submit_piece_telecom - sms_account_using_daily.error_piece_telecom
		) * sms_account_profile.sms_price_telecom AS fee_total FROM sms_account_using_daily LEFT JOIN sms_account_profile ON sms_account_using_daily.customer_id = sms_account_profile.id WHERE stat_date = '2018-10-31'
	) AS t GROUP BY admin_id
) AS f1031  ON c1101.admin_id = f1031.admin_id