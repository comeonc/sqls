SELECT
	s.id ,
	s.signature ,
	s.extra_miaoxin_seq ,
	t.total_success
FROM
	sms_signature s
INNER JOIN(
	SELECT
		signature_id ,
		sum(success_count) total_success
	FROM
		`sms_supplier_signature_daily`
	WHERE
		supplier_id = 1590
	AND stat_date >= '2020-05-01'
	GROUP BY
		signature_id
	HAVING
		sum(success_count) >= 1000
	ORDER BY
		total_success DESC
) AS t ON s.id = t.signature_id