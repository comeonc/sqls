SELECT
	s.id,
	s.signature,
	s.extra_miaoxin_seq,
	t.total_success 
FROM
	sms_signature s
	INNER JOIN (
	SELECT
		signature_id,
		sum( success_count ) total_success 
	FROM
		(
			( SELECT signature_id, success_count FROM `sms_supplier_signature_daily_200713` WHERE supplier_id = 1002 ) UNION
			( SELECT signature_id, success_count FROM `sms_supplier_signature_daily_200714` WHERE supplier_id = 1002 ) UNION
			( SELECT signature_id, success_count FROM `sms_supplier_signature_daily_200715` WHERE supplier_id = 1002 ) UNION
			( SELECT signature_id, success_count FROM `sms_supplier_signature_daily_200716` WHERE supplier_id = 1002 ) 
		) AS t 
	GROUP BY
		signature_id 
	ORDER BY
	total_success DESC 
	) AS t ON s.id = t.signature_id